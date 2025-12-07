uint64_t sub_2698CEBFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2698D313C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2698CEC2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2698D40E0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2698CEC5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2698D4D4C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2698CECEC@<X0>(uint64_t *a1@<X8>)
{
  result = CrossDeviceCommandExecution.FailureReason.rawValue.getter();
  *a1 = result;
  return result;
}

void sub_2698CED14(uint64_t a1)
{
  [*(a1 + 40) invalidate];
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
}

uint64_t sub_2698CED5C()
{
  v1 = *(type metadata accessor for CrossDeviceCommandExecution(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_5;
    }

    v5 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E400, &unk_2699062F0) + 64);
  }

  sub_2699037DC();
  OUTLINED_FUNCTION_8();
  (*(v7 + 8))(v5);
LABEL_5:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2698CEE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_13();
  sub_2699037DC();
  OUTLINED_FUNCTION_24();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v9 = *(v3 + *(a3 + 24));
    if (v9 <= 4)
    {
      v10 = 4;
    }

    else
    {
      v10 = *(v3 + *(a3 + 24));
    }

    v11 = v10 - 4;
    if (v9 >= 4)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }
}

void sub_2698CEF38()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_21();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24)) = v0 + 4;
  }
}

uint64_t sub_2698CF064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_13();
  sub_2699037DC();
  OUTLINED_FUNCTION_24();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v9 = *(v3 + *(a3 + 20));
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

void sub_2698CF114()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_21();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0;
  }
}

uint64_t sub_2698CF198()
{

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2698CF1F8()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2698CF29C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2698CF348()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2698CF3A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SVDProximity.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2698CF3DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2698E1E2C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2698CF46C()
{
  v1 = OUTLINED_FUNCTION_44_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2698CF4A4()
{
  sub_2699037DC();
  OUTLINED_FUNCTION_4_4();

  v1 = OUTLINED_FUNCTION_15_1();
  v2(v1);
  v3 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_2698CF548()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2698CF59C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2698CF614()
{
  OUTLINED_FUNCTION_49();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2698CF648()
{

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2698CF67C()
{

  v0 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2698CF6BC()
{

  v0 = OUTLINED_FUNCTION_44_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2698CF6EC()
{

  v0 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2698CF744()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E918, &qword_2699077F0);
  OUTLINED_FUNCTION_4_4();

  v1 = OUTLINED_FUNCTION_15_1();
  v2(v1);
  v3 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_2698CF7F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E918, &qword_2699077F0);
  OUTLINED_FUNCTION_17_1();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
  v2 = OUTLINED_FUNCTION_53();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2698CF88C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E920, &unk_2699077F8);
  OUTLINED_FUNCTION_17_1();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  v2 = OUTLINED_FUNCTION_53();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2698CF934()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E930, &unk_269907808);
  OUTLINED_FUNCTION_4_4();

  v1 = OUTLINED_FUNCTION_15_1();
  v2(v1);
  v3 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_2698CFA1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E940, &qword_269907818);
  OUTLINED_FUNCTION_4_4();

  v1 = OUTLINED_FUNCTION_15_1();
  v2(v1);
  v3 = OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_2698CFB18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E968, &qword_269907838);
  OUTLINED_FUNCTION_4_4();
  v2 = *(v1 + 80);
  v4 = (*(v3 + 64) + ((v2 + 24) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = OUTLINED_FUNCTION_15_1();
  v6(v5);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_2698CFBE4()
{

  v1 = OUTLINED_FUNCTION_44_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2698CFC1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E968, &qword_269907838);
  OUTLINED_FUNCTION_17_1();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  v4 = OUTLINED_FUNCTION_53();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_2698CFD0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2698FA308();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2698CFD3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2698FAF48();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2698CFD6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2698FBBBC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2698CFD9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2698FC828();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2698CFDCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2698FD494();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_2698CFE08(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_2698CFE70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269900000();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2698CFF2C()
{
  v1 = (v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability_key);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_2698CFFF4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability_key);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2698D0054@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2698CFF2C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2698D0080(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2698CFFF4(v1, v2);
}

unint64_t sub_2698D0124(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_26990396C();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_2699039AC();

      return v7;
    }
  }

  __break(1u);
  return result;
}

id VoiceTriggerCapability.init(status:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v10.receiver = v1;
  v10.super_class = OUTLINED_FUNCTION_1(OBJC_IVAR____TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability_key);
  v4 = objc_msgSendSuper2(&v10, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E1A8, qword_269905F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269905F20;
  *(inited + 32) = 0xD000000000000025;
  *(inited + 40) = 0x8000000269907EA0;
  objc_allocWithZone(type metadata accessor for BooleanCapabilityPrimitive());
  v6 = v4;
  *(inited + 48) = sub_2698DBE0C(a1);
  v7 = sub_2699038BC();
  v8 = sub_2698D0418(v7);

  sub_2698D0AF4(5, v8, &OBJC_IVAR____TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability_key, &OBJC_IVAR____TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability_primitivesMap);

  return v6;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2698D0418(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E278, &qword_269906008);
    OUTLINED_FUNCTION_4();
    v2 = sub_269903EFC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_2();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v9 = 0;
  while (v5)
  {
    v10 = v9;
LABEL_10:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (a1[6] + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a1[7] + 8 * v12);

    v17 = v16;
    result = sub_2698D1D34(v15, v14);
    v18 = result;
    if (v19)
    {
      v20 = (v2[6] + 16 * result);
      *v20 = v15;
      v20[1] = v14;

      v21 = (v2[7] + 16 * v18);
      *v21 = v17;
      v21[1] = &off_287A56EB8;
      result = swift_unknownObjectRelease();
      v9 = v10;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_17;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = (v2[6] + 16 * result);
      *v22 = v15;
      v22[1] = v14;
      v23 = (v2[7] + 16 * result);
      *v23 = v17;
      v23[1] = &off_287A56EB8;
      v24 = v2[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_18;
      }

      v2[2] = v26;
      v9 = v10;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v5 = a1[v10 + 8];
    ++v9;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2698D0604(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E260, &qword_269905FF0);
    OUTLINED_FUNCTION_4();
    v2 = sub_269903EFC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v5 &= v5 - 1;
    v20 = *(*(a1 + 48) + v11);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E268, &qword_269905FF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E270, &qword_269906000);
    swift_dynamicCast();
    sub_26990404C();
    switch(v20)
    {
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 9:
      case 10:
        OUTLINED_FUNCTION_0();
        break;
      default:
        break;
    }

    sub_26990394C();

    result = sub_26990408C();
    v12 = -1 << *(v2 + 32);
    v13 = result & ~v12;
    v14 = v13 >> 6;
    if (((-1 << v13) & ~*(v7 + 8 * (v13 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v12) >> 6;
      while (++v14 != v17 || (v16 & 1) == 0)
      {
        v18 = v14 == v17;
        if (v14 == v17)
        {
          v14 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v14);
        if (v19 != -1)
        {
          v15 = __clz(__rbit64(~v19)) + (v14 << 6);
          goto LABEL_23;
        }
      }

      goto LABEL_27;
    }

    v15 = __clz(__rbit64((-1 << v13) & ~*(v7 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v7 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    *(*(v2 + 48) + v15) = v20;
    *(*(v2 + 56) + 8 * v15) = v21;
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2698D0AF4(char a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v7 = v4;
  v9 = CapabilityKey.rawValue.getter();
  v11 = v10;
  v12 = (v7 + *a3);
  swift_beginAccess();
  *v12 = v9;
  v12[1] = v11;

  *(v7 + *a4) = a2;
}

uint64_t sub_2698D0BEC()
{
  v1 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability_primitivesMap);

  v2 = sub_2698D0C90(0xD000000000000025, 0x8000000269907EA0, v1);

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for BooleanCapabilityPrimitive();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus);
  }

  else
  {
    v4 = 0;
  }

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_2698D0C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_2698D1D34(a1, a2), (v3 & 1) != 0))
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2698D0CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_2698D1D34(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for RequestAnalyticsContext(0);
    sub_2698D20E0(v9 + *(*(v10 - 8) + 72) * v8, a4);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = type metadata accessor for RequestAnalyticsContext(0);
    v11 = a4;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

void sub_2698D0E08(unint64_t a1)
{
  v2 = sub_2698D1C94(a1);
  v3 = 0;
  v15 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability_primitivesMap;
  v17 = v2;
  do
  {
    v4 = v3;
    if (v17 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D6482B0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v7 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
    v8 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8];

    OUTLINED_FUNCTION_3();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_3();
    if ((sub_26990399C() & 1) == 0 || (OUTLINED_FUNCTION_3(), v9 = sub_26990395C(), , v10 = sub_2698D0124(v9, v7, v8), MEMORY[0x26D647E90](v10), , v11 = sub_269903F0C(), , v11))
    {

      return;
    }

    if (!*(*(v16 + v15) + 16) || (, sub_2698D1D34(v7, v8), v13 = v12, , (v13 & 1) == 0))
    {
LABEL_18:

      return;
    }

    swift_unknownObjectRetain();

    type metadata accessor for BooleanCapabilityPrimitive();
    if (!swift_dynamicCastClass())
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRetain();
    v14 = sub_2698DBF48(v6);
    swift_unknownObjectRelease_n();

    v3 = v4 + 1;
  }

  while (v14);
}

char *VoiceTriggerCapability.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v6.receiver = v1;
  v6.super_class = OUTLINED_FUNCTION_1(OBJC_IVAR____TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability_key);
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2698D11EC(a1, &OBJC_IVAR____TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability_key, &OBJC_IVAR____TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability_primitivesMap);

  if (!*(*&v4[OBJC_IVAR____TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability_primitivesMap] + 16))
  {

    return 0;
  }

  return v4;
}

uint64_t sub_2698D11EC(uint64_t a1, void *a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E228, &qword_269905FC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_269905F20;
  v7 = sub_2698D23FC(0, &qword_28131C820, 0x277CCACA8);
  *(v6 + 32) = v7;
  sub_269903BCC();

  if (!v36)
  {
    return sub_2698D2394(v35);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v29 = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_269905F30;
  *(v9 + 32) = sub_2698D23FC(0, &qword_28033E240, 0x277CBEA60);
  *(v9 + 40) = v7;
  sub_269903BCC();

  if (!v36)
  {

    return sub_2698D2394(v35);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E248, &qword_269905FD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v10 = (v3 + *a2);
  swift_beginAccess();
  *v10 = v33;
  v10[1] = v34;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  v11 = sub_2699038BC();
  v12 = *(v33 + 16);
  if (!v12)
  {
LABEL_20:

    *(v3 + *v29) = v11;
  }

  v31 = type metadata accessor for BooleanCapabilityPrimitive();
  v30 = type metadata accessor for ContinuousNumericCapabilityPrimitive();
  v13 = (v33 + 40);
  while (1)
  {
    v14 = *(v13 - 1);
    v15 = *v13;
    OUTLINED_FUNCTION_6();
    v35[0] = v16;
    OUTLINED_FUNCTION_5();
    v35[1] = v17;

    MEMORY[0x26D647ED0](v14, v15);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_269905F30;
    *(v18 + 32) = v31;
    *(v18 + 40) = v30;
    sub_269903BCC();

    if (!v36)
    {

      sub_2698D2394(v35);
      goto LABEL_19;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_19;
    }

    swift_unknownObjectRetain();
    swift_isUniquelyReferenced_nonNull_native();
    v35[0] = v11;
    v19 = sub_2698D1D34(v14, v15);
    if (__OFADD__(v11[2], (v20 & 1) == 0))
    {
      break;
    }

    v21 = v19;
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E250, &qword_269905FD8);
    if (sub_269903DEC())
    {
      v23 = sub_2698D1D34(v14, v15);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_27;
      }

      v21 = v23;
    }

    if (v22)
    {

      v11 = v35[0];
      *(*(v35[0] + 56) + 16 * v21) = v32;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = v35[0];
      *(v35[0] + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v25 = (v11[6] + 16 * v21);
      *v25 = v14;
      v25[1] = v15;
      *(v11[7] + 16 * v21) = v32;
      swift_unknownObjectRelease();
      v26 = v11[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_26;
      }

      v11[2] = v28;
    }

LABEL_19:
    v13 += 2;
    if (!--v12)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_269903FEC();
  __break(1u);
  return result;
}

void sub_2698D1864(void *a1, void *a2, uint64_t *a3)
{
  swift_beginAccess();

  v6 = sub_2699038FC();

  v7 = sub_2699038FC();
  [a1 encodeObject:v6 forKey:v7];

  v8 = *a3;

  sub_2698D1C04(v9);
  v10 = sub_2699039FC();

  v11 = sub_2699038FC();
  [a1 encodeObject:v10 forKey:v11];

  v12 = *(v3 + v8);
  OUTLINED_FUNCTION_2();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;

  v18 = 0;
  while (v15)
  {
    v19 = v18;
LABEL_7:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = (v19 << 10) | (16 * v20);
    v22 = (*(v12 + 48) + v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(*(v12 + 56) + v21);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_5();
    swift_unknownObjectRetain();
    MEMORY[0x26D647ED0](v23, v24);
    swift_unknownObjectRetain();
    v26 = sub_2699038FC();

    [a1 encodeObject:v25 forKey:v26];
    swift_unknownObjectRelease_n();
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      return;
    }

    v15 = *(v12 + 64 + 8 * v19);
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_7;
    }
  }

  __break(1u);
}

id VoiceTriggerCapability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VoiceTriggerCapability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceTriggerCapability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_2698D1C04(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_2698D1CB8(*(a1 + 16), 0);
  v4 = sub_2698D28D0(&v6, v3 + 4, v2, a1);
  sub_2698D2A2C(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_2698D1C94(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_269903CAC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void *sub_2698D1CB8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E258, &unk_269905FE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

unint64_t sub_2698D1D34(uint64_t a1, uint64_t a2)
{
  sub_26990404C();
  sub_26990394C();
  v4 = sub_26990408C();

  return sub_2698D2208(a1, a2, v4);
}

uint64_t sub_2698D1F48(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 255) >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 255) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        return 0;
      }

      return (*a1 | (v4 << 8)) - 255;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  return 0;
}

_BYTE *sub_2698D1FB4(_BYTE *result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v6 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
        goto LABEL_19;
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
        break;
      case 2:
        *(result + 1) = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *(result + 1) = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void type metadata accessor for atomic_flag()
{
  if (!qword_28033E1B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_28033E1B8);
    }
  }
}

uint64_t sub_2698D20E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestAnalyticsContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2698D2144()
{
  sub_269903BDC();
  v0 = OUTLINED_FUNCTION_4();

  return sub_2698D22BC(v0, v1);
}

unint64_t sub_2698D2184(uint64_t a1)
{
  v2 = a1;
  v3 = sub_2698D2BD8(*(v1 + 40));

  return sub_2698D243C(v2, v3);
}

unint64_t sub_2698D21C8()
{
  sub_269903BDC();
  v0 = OUTLINED_FUNCTION_4();

  return sub_2698D2810(v0, v1);
}

unint64_t sub_2698D2208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_269903FAC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2698D22BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_2698D23FC(0, &qword_28033E220, 0x277CEF240);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_269903BEC();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2698D2394(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E238, &qword_269905FC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2698D23FC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_2698D243C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xED00007974696C69;
      v8 = 0x626170614358554DLL;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000017;
          v7 = 0x8000000269907D70;
          break;
        case 2:
          v8 = 0xD000000000000013;
          v7 = 0x8000000269907D90;
          break;
        case 3:
          v8 = 0xD000000000000018;
          v7 = 0x8000000269907DB0;
          break;
        case 4:
          v8 = 0xD000000000000011;
          v7 = 0x8000000269907DD0;
          break;
        case 5:
          v8 = 0xD000000000000016;
          v7 = 0x8000000269905F20;
          break;
        case 6:
          v8 = 0xD000000000000023;
          v7 = 0x8000000269907DF0;
          break;
        case 7:
          v8 = 0xD00000000000001ALL;
          v7 = 0x8000000269907E20;
          break;
        case 8:
          break;
        case 9:
          v8 = 0xD00000000000001ALL;
          v7 = 0x8000000269907E50;
          break;
        case 0xA:
          v8 = 0xD000000000000019;
          v7 = 0x8000000269907E70;
          break;
        case 0xB:
          v8 = 0x6669636570736E55;
          v7 = 0xEB00000000646569;
          break;
        default:
          v8 = 0xD000000000000017;
          v7 = 0x8000000269907D50;
          break;
      }

      v9 = 0x626170614358554DLL;
      v10 = 0xED00007974696C69;
      switch(a1)
      {
        case 1:
          v9 = 0xD000000000000017;
          v10 = 0x8000000269907D70;
          break;
        case 2:
          v9 = 0xD000000000000013;
          v10 = 0x8000000269907D90;
          break;
        case 3:
          v9 = 0xD000000000000018;
          v10 = 0x8000000269907DB0;
          break;
        case 4:
          v9 = 0xD000000000000011;
          v10 = 0x8000000269907DD0;
          break;
        case 5:
          v9 = 0xD000000000000016;
          v10 = 0x8000000269905F20;
          break;
        case 6:
          v9 = 0xD000000000000023;
          v10 = 0x8000000269907DF0;
          break;
        case 7:
          v9 = 0xD00000000000001ALL;
          v10 = 0x8000000269907E20;
          break;
        case 8:
          break;
        case 9:
          v9 = 0xD00000000000001ALL;
          v10 = 0x8000000269907E50;
          break;
        case 10:
          v9 = 0xD000000000000019;
          v10 = 0x8000000269907E70;
          break;
        case 11:
          v9 = 0x6669636570736E55;
          v10 = 0xEB00000000646569;
          break;
        default:
          v9 = 0xD000000000000017;
          v10 = 0x8000000269907D50;
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_269903FAC();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2698D2810(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    type metadata accessor for DeviceUnit();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_269903BEC();

    if (v8)
    {
      break;
    }
  }

  return i;
}

void *sub_2698D28D0(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_1@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *v3 = 0x6669636570736E55;
  v3[1] = 0xEB00000000646569;

  return type metadata accessor for VoiceTriggerCapability();
}

uint64_t sub_2698D2ADC(unsigned __int8 a1)
{
  sub_26990404C();
  MEMORY[0x26D6485B0](a1);
  return sub_26990408C();
}

uint64_t sub_2698D2B30(uint64_t a1)
{
  sub_26990404C();
  MEMORY[0x26D6485B0](a1);
  return sub_26990408C();
}

uint64_t sub_2698D2B78(uint64_t a1)
{
  CapabilityKey.rawValue.getter();
  sub_26990394C();
}

uint64_t sub_2698D2BD8(uint64_t a1)
{
  sub_26990404C();
  CapabilityKey.rawValue.getter();
  sub_26990394C();

  return sub_26990408C();
}

uint64_t sub_2698D2C3C(uint64_t a1, unsigned __int8 a2)
{
  sub_26990404C();
  MEMORY[0x26D6485B0](a2);
  return sub_26990408C();
}

uint64_t sub_2698D2C80(uint64_t a1, uint64_t a2)
{
  sub_26990404C();
  MEMORY[0x26D6485B0](a2);
  return sub_26990408C();
}

unint64_t sub_2698D2CC4(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

unint64_t sub_2698D2D04@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2698D2CC4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2698D2D30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2698D2CD4(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_2698D2D5C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return v2;
}

BOOL sub_2698D2D6C(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = atomic_flag_test_and_set((v2 + 16));
  swift_endAccess();
  if (!v4)
  {
    v5 = *(v2 + 24);
    if (v5)
    {
      v6 = *(v2 + 32);

      v5(a1);
      sub_2698D3034(v5, v6);
      v7 = *(v2 + 24);
      v8 = *(v2 + 32);
      *(v2 + 24) = 0;
      *(v2 + 32) = 0;
      sub_2698D3034(v7, v8);
    }
  }

  return !v4;
}

uint64_t sub_2698D2E18()
{
  sub_2698D3034(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t getEnumTagSinglePayload for SafetyBlockSignal(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SafetyBlockSignal(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2698D2FE0()
{
  result = qword_28033E340;
  if (!qword_28033E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E340);
  }

  return result;
}

uint64_t sub_2698D3034(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t SpeakerQualityReference.init(rawValue:)(uint64_t result)
{
  if (result == 3000)
  {
    v1 = 3000;
  }

  else
  {
    v1 = 0;
  }

  if (result == 2000)
  {
    v1 = 2000;
  }

  if (result == 1000)
  {
    v1 = 1000;
  }

  if (result)
  {
    return v1;
  }

  return result;
}

uint64_t sub_2698D30BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SpeakerQualityReference.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2698D313C()
{
  v1 = (v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution17SpeakerCapability_key);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_2698D3204(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution17SpeakerCapability_key);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2698D3264(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2698D3204(v1, v2);
}

id SpeakerCapability.init(status:qualityScore:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution17SpeakerCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v2[v5] = sub_2699038BC();
  v12.receiver = v2;
  v12.super_class = OUTLINED_FUNCTION_0_0(OBJC_IVAR____TtC27SiriVirtualDeviceResolution17SpeakerCapability_key);
  v6 = objc_msgSendSuper2(&v12, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E3C8, &qword_269906128);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269905F30;
  *(inited + 32) = 0xD000000000000020;
  *(inited + 40) = 0x8000000269908090;
  objc_allocWithZone(type metadata accessor for BooleanCapabilityPrimitive());
  v8 = v6;
  *(inited + 48) = sub_2698DBE0C(a1);
  *(inited + 56) = &off_287A56EB8;
  *(inited + 64) = 0xD00000000000001FLL;
  *(inited + 72) = 0x80000002699080C0;
  v9 = objc_allocWithZone(type metadata accessor for ContinuousNumericCapabilityPrimitive());
  *(inited + 80) = sub_2698DC330(v9, a2);
  *(inited + 88) = &off_287A56EA8;
  v10 = sub_2699038BC();
  sub_2698D0A2C(4, v10);

  return v8;
}

uint64_t sub_2698D3580()
{
  v1 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution17SpeakerCapability_primitivesMap);

  v2 = sub_2698D0C90(0xD000000000000020, 0x8000000269908090, v1);

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for BooleanCapabilityPrimitive();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus);
  }

  else
  {
    v4 = 0;
  }

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_2698D3658()
{
  if (!*(*(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution17SpeakerCapability_primitivesMap) + 16))
  {
    return 0;
  }

  sub_2698D1D34(0xD00000000000001FLL, 0x80000002699080C0);
  if ((v1 & 1) == 0)
  {

    return 0;
  }

  swift_unknownObjectRetain();

  type metadata accessor for ContinuousNumericCapabilityPrimitive();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v3 = *(v2 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution36ContinuousNumericCapabilityPrimitive_value);
  result = swift_unknownObjectRelease();
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v3 > -9.22337204e18)
  {
    if (v3 < 9.22337204e18)
    {
      return v3;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

char *sub_2698D3864(uint64_t a1)
{
  result = sub_2698D2A38();
  v3 = 0;
  v16 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution17SpeakerCapability_primitivesMap;
  v18 = result;
  while (1)
  {
    if (v18 == v3)
    {
      return (v18 == v3);
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D6482B0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      result = *(a1 + 8 * v3 + 32);
    }

    v4 = result;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    v6 = *&result[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
    v5 = *&result[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8];
    OUTLINED_FUNCTION_1_0();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_1_0();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_1_0();
    v7 = sub_26990395C();
    v8 = sub_2698D0124(v7, v6, v5);
    MEMORY[0x26D647E90](v8);

    v9 = sub_269903F0C();

    if (v9)
    {
      if (v9 != 1 || !*(*(v17 + v16) + 16))
      {
LABEL_22:

        return (v18 == v3);
      }

      v10 = sub_2698D1D34(v6, v5);
      if ((v11 & 1) == 0)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_2_0(v10);

      type metadata accessor for ContinuousNumericCapabilityPrimitive();
      if (!swift_dynamicCastClass())
      {
LABEL_24:

        swift_unknownObjectRelease();
        return (v18 == v3);
      }

      v12 = sub_2698DC404(v4);

      result = swift_unknownObjectRelease();
      if (!v12)
      {
        return (v18 == v3);
      }
    }

    else
    {
      if (!*(*(v17 + v16) + 16))
      {
        goto LABEL_22;
      }

      v13 = sub_2698D1D34(v6, v5);
      if ((v14 & 1) == 0)
      {
LABEL_23:

        return (v18 == v3);
      }

      OUTLINED_FUNCTION_2_0(v13);

      type metadata accessor for BooleanCapabilityPrimitive();
      if (!swift_dynamicCastClass())
      {
        goto LABEL_24;
      }

      swift_unknownObjectRetain();
      v15 = sub_2698DBF48(v4);

      result = swift_unknownObjectRelease_n();
      if (!v15)
      {
        return (v18 == v3);
      }
    }

    ++v3;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

char *SpeakerCapability.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution17SpeakerCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v6.receiver = v1;
  v6.super_class = OUTLINED_FUNCTION_0_0(OBJC_IVAR____TtC27SiriVirtualDeviceResolution17SpeakerCapability_key);
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2698D11D8(a1);

  if (!*(*&v4[OBJC_IVAR____TtC27SiriVirtualDeviceResolution17SpeakerCapability_primitivesMap] + 16))
  {

    return 0;
  }

  return v4;
}

id SpeakerCapability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SpeakerCapability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpeakerCapability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2698D3DF8()
{
  result = qword_28033E3D0;
  if (!qword_28033E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E3D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *v3 = 0x6669636570736E55;
  v3[1] = 0xEB00000000646569;

  return type metadata accessor for SpeakerCapability();
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t a1)
{

  return swift_unknownObjectRetain();
}

uint64_t sub_2698D40E0()
{
  v1 = (v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution26ProfileSwitchingCapability_key);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_2698D41A8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution26ProfileSwitchingCapability_key);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2698D4208(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2698D41A8(v1, v2);
}

id ProfileSwitchingCapability.init(status:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution26ProfileSwitchingCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v10.receiver = v1;
  v10.super_class = OUTLINED_FUNCTION_0_1(OBJC_IVAR____TtC27SiriVirtualDeviceResolution26ProfileSwitchingCapability_key);
  v4 = objc_msgSendSuper2(&v10, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E1A8, qword_269905F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269905F20;
  *(inited + 32) = 0xD000000000000029;
  *(inited + 40) = 0x8000000269908190;
  objc_allocWithZone(type metadata accessor for BooleanCapabilityPrimitive());
  v6 = v4;
  *(inited + 48) = sub_2698DBE0C(a1);
  v7 = sub_2699038BC();
  v8 = sub_2698D0418(v7);

  sub_2698D0A40(7, v8);

  return v6;
}

uint64_t sub_2698D44C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution26ProfileSwitchingCapability_primitivesMap);

  v2 = sub_2698D0C90(0xD000000000000029, 0x8000000269908190, v1);

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for BooleanCapabilityPrimitive();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus);
  }

  else
  {
    v4 = 0;
  }

  swift_unknownObjectRelease();
  return v4;
}

void sub_2698D45E0(uint64_t a1)
{
  v2 = sub_2698D2A38();
  v3 = 0;
  v15 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution26ProfileSwitchingCapability_primitivesMap;
  v17 = v2;
  do
  {
    v4 = v3;
    if (v17 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D6482B0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v7 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
    v8 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8];

    OUTLINED_FUNCTION_1_1();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_1_1();
    if ((sub_26990399C() & 1) == 0 || (OUTLINED_FUNCTION_1_1(), v9 = sub_26990395C(), , v10 = sub_2698D0124(v9, v7, v8), MEMORY[0x26D647E90](v10), , v11 = sub_269903F0C(), , v11))
    {

      return;
    }

    if (!*(*(v16 + v15) + 16) || (, sub_2698D1D34(v7, v8), v13 = v12, , (v13 & 1) == 0))
    {
LABEL_18:

      return;
    }

    swift_unknownObjectRetain();

    type metadata accessor for BooleanCapabilityPrimitive();
    if (!swift_dynamicCastClass())
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRetain();
    v14 = sub_2698DBF48(v6);
    swift_unknownObjectRelease_n();

    v3 = v4 + 1;
  }

  while (v14);
}

char *ProfileSwitchingCapability.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution26ProfileSwitchingCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v6.receiver = v1;
  v6.super_class = OUTLINED_FUNCTION_0_1(OBJC_IVAR____TtC27SiriVirtualDeviceResolution26ProfileSwitchingCapability_key);
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2698D1698(a1);

  if (!*(*&v4[OBJC_IVAR____TtC27SiriVirtualDeviceResolution26ProfileSwitchingCapability_primitivesMap] + 16))
  {

    return 0;
  }

  return v4;
}

id ProfileSwitchingCapability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProfileSwitchingCapability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileSwitchingCapability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_1@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *v3 = 0x6669636570736E55;
  v3[1] = 0xEB00000000646569;

  return type metadata accessor for ProfileSwitchingCapability();
}

uint64_t sub_2698D4D4C()
{
  v1 = (v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23AudioPlaybackCapability_key);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_2698D4E14(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23AudioPlaybackCapability_key);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2698D4E74(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2698D4E14(v1, v2);
}

id AudioPlaybackCapability.init(status:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23AudioPlaybackCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v10.receiver = v1;
  v10.super_class = OUTLINED_FUNCTION_0_2(OBJC_IVAR____TtC27SiriVirtualDeviceResolution23AudioPlaybackCapability_key);
  v4 = objc_msgSendSuper2(&v10, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E1A8, qword_269905F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269905F20;
  *(inited + 32) = 0xD000000000000026;
  *(inited + 40) = 0x8000000269908280;
  objc_allocWithZone(type metadata accessor for BooleanCapabilityPrimitive());
  v6 = v4;
  *(inited + 48) = sub_2698DBE0C(a1);
  v7 = sub_2699038BC();
  v8 = sub_2698D0418(v7);

  sub_2698D0A54(0, v8);

  return v6;
}

uint64_t sub_2698D5130()
{
  v1 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23AudioPlaybackCapability_primitivesMap);

  v2 = sub_2698D0C90(0xD000000000000026, 0x8000000269908280, v1);

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for BooleanCapabilityPrimitive();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus);
  }

  else
  {
    v4 = 0;
  }

  swift_unknownObjectRelease();
  return v4;
}

void sub_2698D524C(uint64_t a1)
{
  v2 = sub_2698D2A38();
  v3 = 0;
  v15 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23AudioPlaybackCapability_primitivesMap;
  v17 = v2;
  do
  {
    v4 = v3;
    if (v17 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D6482B0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v7 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
    v8 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8];

    OUTLINED_FUNCTION_1_2();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_1_2();
    if ((sub_26990399C() & 1) == 0 || (OUTLINED_FUNCTION_1_2(), v9 = sub_26990395C(), , v10 = sub_2698D0124(v9, v7, v8), MEMORY[0x26D647E90](v10), , v11 = sub_269903F0C(), , v11))
    {

      return;
    }

    if (!*(*(v16 + v15) + 16) || (, sub_2698D1D34(v7, v8), v13 = v12, , (v13 & 1) == 0))
    {
LABEL_18:

      return;
    }

    swift_unknownObjectRetain();

    type metadata accessor for BooleanCapabilityPrimitive();
    if (!swift_dynamicCastClass())
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRetain();
    v14 = sub_2698DBF48(v6);
    swift_unknownObjectRelease_n();

    v3 = v4 + 1;
  }

  while (v14);
}

char *AudioPlaybackCapability.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23AudioPlaybackCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v6.receiver = v1;
  v6.super_class = OUTLINED_FUNCTION_0_2(OBJC_IVAR____TtC27SiriVirtualDeviceResolution23AudioPlaybackCapability_key);
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2698D16AC(a1);

  if (!*(*&v4[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23AudioPlaybackCapability_primitivesMap] + 16))
  {

    return 0;
  }

  return v4;
}

id AudioPlaybackCapability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudioPlaybackCapability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioPlaybackCapability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_2@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *v3 = 0x6669636570736E55;
  v3[1] = 0xEB00000000646569;

  return type metadata accessor for AudioPlaybackCapability();
}

uint64_t sub_2698D596C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E4D0, &qword_269906800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for RequestAnalyticsContext(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v14) == 1)
  {
    sub_2698DBAE8(a1, &qword_28033E4D0, &qword_269906800);
    sub_2698DB0AC(a2, a3, v10);

    return sub_2698DBAE8(v10, &qword_28033E4D0, &qword_269906800);
  }

  else
  {
    sub_2698DB04C(a1, v13, type metadata accessor for RequestAnalyticsContext);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_2698DB1F4(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v4 = v18;
  }

  return result;
}

SiriVirtualDeviceResolution::ExecutionInfo::Action_optional __swiftcall ExecutionInfo.Action.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 4;
  switch(rawValue)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v2 = 1;
      goto LABEL_11;
    case 2:
      v2 = 2;
      goto LABEL_11;
    case 3:
      v2 = 3;
LABEL_11:
      v3 = v2;
      break;
    case 4:
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    case 20:
      v3 = 20;
      break;
    case 21:
      v3 = 21;
      break;
    default:
      v3 = 22;
      break;
  }

  *v1 = v3;
  return rawValue;
}

uint64_t ExecutionInfo.executionId.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2699037DC();
  OUTLINED_FUNCTION_8();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t ExecutionInfo.executionId.setter()
{
  OUTLINED_FUNCTION_13();
  sub_2699037DC();
  OUTLINED_FUNCTION_8();
  v0 = OUTLINED_FUNCTION_16();

  return v1(v0);
}

uint64_t ExecutionInfo.action.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ExecutionInfo(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ExecutionInfo.action.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ExecutionInfo(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

void (*ExecutionInfo.action.modify())()
{
  v0 = OUTLINED_FUNCTION_13();
  type metadata accessor for ExecutionInfo(v0);
  return nullsub_1;
}

uint64_t ExecutionInfo.quickStopActionResult.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ExecutionInfo(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ExecutionInfo.quickStopActionResult.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ExecutionInfo(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

void (*ExecutionInfo.quickStopActionResult.modify())()
{
  v0 = OUTLINED_FUNCTION_13();
  type metadata accessor for ExecutionInfo(v0);
  return nullsub_1;
}

uint64_t ExecutionInfo.init(executionId:action:quickStopActionResult:)@<X0>(char *a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = type metadata accessor for ExecutionInfo(0);
  v7 = *(v6 + 24);
  *(a3 + v7) = 4;
  sub_2699037DC();
  OUTLINED_FUNCTION_8();
  v8 = OUTLINED_FUNCTION_16();
  result = v9(v8);
  *(a3 + *(v6 + 20)) = v4;
  *(a3 + v7) = v5;
  return result;
}

uint64_t CrossDeviceCommandExecution.Result.hashValue.getter()
{
  v1 = *v0;
  sub_26990404C();
  MEMORY[0x26D6485B0](v1);
  return sub_26990408C();
}

uint64_t sub_2698D5F7C(uint64_t a1)
{
  v2 = *v1;
  sub_26990404C();
  MEMORY[0x26D6485B0](v2);
  return sub_26990408C();
}

SiriVirtualDeviceResolution::CrossDeviceCommandExecution::FailureReason_optional __swiftcall CrossDeviceCommandExecution.FailureReason.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

SiriVirtualDeviceResolution::HomeKitTarget_optional __swiftcall HomeKitTarget.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DeviceResolutionAnalytics.logCommandExecution(_:)()
{
  v0 = sub_2699037FC();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_22();
  if (qword_28033E178 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_28033E178);
  }

  __swift_project_value_buffer(v0, qword_280340D98);
  v2 = OUTLINED_FUNCTION_14();
  v3(v2);
  v4 = sub_2699037EC();
  v5 = sub_269903B0C();
  if (os_log_type_enabled(v4, v5))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_25(&dword_2698CD000, v6, v7, "DeviceResolutionAnalytics#logCommandExecution() default implementation should not be used");
    OUTLINED_FUNCTION_20();
  }

  v8 = OUTLINED_FUNCTION_16();
  return v9(v8);
}

Swift::Void __swiftcall DeviceResolutionAnalytics.selectHomeKitTarget(_:for:)(SiriVirtualDeviceResolution::HomeKitTarget _, Swift::String a2)
{
  v2 = sub_2699037FC();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_22();
  if (qword_28033E178 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_28033E178);
  }

  __swift_project_value_buffer(v2, qword_280340D98);
  v4 = OUTLINED_FUNCTION_14();
  v5(v4);
  v6 = sub_2699037EC();
  v7 = sub_269903B0C();
  if (os_log_type_enabled(v6, v7))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_25(&dword_2698CD000, v8, v9, "DeviceResolutionAnalytics#selectHomeKitTarget() default implementation should not be used");
    OUTLINED_FUNCTION_20();
  }

  v10 = OUTLINED_FUNCTION_16();
  v11(v10);
}

uint64_t sub_2698D62B0()
{
  v1 = *(v0 + *(type metadata accessor for RequestAnalyticsContext(0) + 20));
  if (v1 && (v21 = *(v1 + 16)) != 0)
  {
    v2 = 0;
    v3 = MEMORY[0x277D84F98];
    v4 = v1 + 40;
    while (v2 < *(v1 + 16))
    {
      v5 = *(v4 - 8);
      v6 = sub_269903AEC();
      if ((v3 & 0xC000000000000001) != 0)
      {
        if (v3 >= 0)
        {
          v3 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v7 = sub_269903CAC();
        if (__OFADD__(v7, 1))
        {
          goto LABEL_24;
        }

        sub_2698F7324(v3, v7 + 1);
        v3 = v8;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v9 = sub_2698D2144();
      if (__OFADD__(*(v3 + 16), (v10 & 1) == 0))
      {
        goto LABEL_23;
      }

      v11 = v9;
      v12 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E538, &unk_269906850);
      if (sub_269903DEC())
      {
        v13 = sub_2698D2144();
        if ((v12 & 1) != (v14 & 1))
        {
          goto LABEL_26;
        }

        v11 = v13;
      }

      if (v12)
      {
        v15 = *(v3 + 56);
        v16 = *(v15 + 8 * v11);
        *(v15 + 8 * v11) = v6;
      }

      else
      {
        *(v3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
        *(*(v3 + 48) + 8 * v11) = v5;
        *(*(v3 + 56) + 8 * v11) = v6;
        v17 = *(v3 + 16);
        v18 = __OFADD__(v17, 1);
        v19 = v17 + 1;
        if (v18)
        {
          goto LABEL_25;
        }

        *(v3 + 16) = v19;
      }

      ++v2;
      v4 += 16;
      if (v21 == v2)
      {
        return v3;
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
    sub_2698D23FC(0, &qword_28033E220, 0x277CEF240);
    result = sub_269903FEC();
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_2698D64A8()
{
  v1 = *(v0 + 40);
  v2 = v1;
  if (!v1)
  {
    v3 = [objc_opt_self() currentContext];
    v4 = objc_opt_self();
    v5 = [v4 serviceName];
    if (!v5)
    {
      sub_26990390C();
      v5 = sub_2699038FC();
    }

    v2 = [v3 createXPCConnectionWithMachServiceName:v5 options:0];

    if (v2)
    {
      v6 = v2;
      v7 = [v4 xpcInterface];
      v8 = OUTLINED_FUNCTION_23();
      [v8 v9];

      v24 = sub_2698DB8F8;
      v25 = v0;
      v20 = MEMORY[0x277D85DD0];
      v21 = 1107296256;
      v22 = sub_2698D670C;
      v23 = &block_descriptor_83;
      v10 = _Block_copy(&v20);
      v11 = v6;

      v12 = OUTLINED_FUNCTION_23();
      [v12 v13];
      _Block_release(v10);

      v24 = sub_2698DB938;
      v25 = v0;
      v20 = MEMORY[0x277D85DD0];
      v21 = 1107296256;
      v22 = sub_2698D670C;
      v23 = &block_descriptor_86;
      v14 = _Block_copy(&v20);
      v15 = v11;

      v16 = OUTLINED_FUNCTION_23();
      [v16 v17];
      _Block_release(v14);

      [v15 resume];
    }
  }

  v18 = v1;
  return v2;
}

uint64_t sub_2698D670C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_2698D6750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_15();
  v7 = v6;
  v30 = v8;
  v31 = v9;
  v11 = v10;
  sub_26990382C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  sub_26990384C();
  OUTLINED_FUNCTION_3_0();
  v32 = v14;
  v33 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_18();
  v15 = sub_2699037FC();
  OUTLINED_FUNCTION_3_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_22();
  if (qword_28033E178 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_28033E178);
  }

  v19 = __swift_project_value_buffer(v15, qword_280340D98);
  (*(v17 + 16))(v4, v19, v15);
  v20 = sub_2699037EC();
  v21 = sub_269903B0C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2698CD000, v20, v21, v30, v22, 2u);
    OUTLINED_FUNCTION_20();
  }

  (*(v17 + 8))(v4, v15);
  v34[4] = v31;
  v34[5] = v11;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v34[2] = v23;
  v34[3] = v7;
  v24 = _Block_copy(v34);

  sub_26990383C();
  OUTLINED_FUNCTION_2_1();
  sub_2698DB980(v25, v26, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  sub_2698DB9C8(&qword_28131C468, &unk_28033E410, &qword_2699074C0);
  OUTLINED_FUNCTION_9();
  sub_269903C5C();
  v27 = OUTLINED_FUNCTION_11();
  MEMORY[0x26D6480A0](v27);
  _Block_release(v24);
  v28 = OUTLINED_FUNCTION_12();
  v29(v28);
  (*(v32 + 8))(v5, v33);

  OUTLINED_FUNCTION_17();
}

void sub_2698D6A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_15();
  v6 = v5;
  v8 = v7;
  v9 = sub_26990382C();
  OUTLINED_FUNCTION_3_0();
  v63 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  v61 = v13 - v12;
  v62 = sub_26990384C();
  OUTLINED_FUNCTION_3_0();
  v60 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_0();
  v59 = v17 - v16;
  type metadata accessor for CrossDeviceCommandExecution(0);
  OUTLINED_FUNCTION_3_0();
  v57 = v18;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v53 - v23;
  v25 = sub_2699037FC();
  OUTLINED_FUNCTION_3_0();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_22();
  if (qword_28033E178 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_28033E178);
  }

  __swift_project_value_buffer(v25, qword_280340D98);
  v29 = OUTLINED_FUNCTION_14();
  v30(v29);
  OUTLINED_FUNCTION_7();
  sub_2698DAF98(v8, v24, v31);
  v32 = sub_2699037EC();
  v33 = sub_269903AFC();
  v56 = v25;
  v34 = v33;
  if (os_log_type_enabled(v32, v33))
  {
    v35 = swift_slowAlloc();
    v55 = v5;
    v36 = v35;
    v37 = swift_slowAlloc();
    v54 = v8;
    v38 = v37;
    v65[0] = v37;
    *v36 = 136315138;
    OUTLINED_FUNCTION_7();
    sub_2698DAF98(v24, v22, v39);
    v40 = sub_26990391C();
    v53 = v9;
    v42 = v41;
    OUTLINED_FUNCTION_10();
    v43 = sub_2698D9D70(v40, v42, v65);
    v9 = v53;

    *(v36 + 4) = v43;
    _os_log_impl(&dword_2698CD000, v32, v34, "#hal logCommandExecution with execution: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    v8 = v54;
    OUTLINED_FUNCTION_20();
    v6 = v55;
    OUTLINED_FUNCTION_20();
  }

  else
  {

    OUTLINED_FUNCTION_10();
  }

  (*(v27 + 8))(v5, v56);
  OUTLINED_FUNCTION_7();
  sub_2698DAF98(v8, v22, v44);
  v45 = (*(v57 + 80) + 24) & ~*(v57 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = v6;
  sub_2698DB04C(v22, v46 + v45, type metadata accessor for CrossDeviceCommandExecution);
  v65[4] = sub_2698D9CAC;
  v65[5] = v46;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v65[2] = v47;
  v65[3] = &block_descriptor;
  v48 = _Block_copy(v65);

  v49 = v59;
  sub_26990383C();
  v64 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_1();
  sub_2698DB980(v50, v51, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  sub_2698DB9C8(&qword_28131C468, &unk_28033E410, &qword_2699074C0);
  v52 = v61;
  sub_269903C5C();
  MEMORY[0x26D6480A0](0, v49, v52, v48);
  _Block_release(v48);
  (*(v63 + 8))(v52, v9);
  (*(v60 + 8))(v49, v62);

  OUTLINED_FUNCTION_17();
}

uint64_t sub_2698D6F98(uint64_t a1, uint64_t a2)
{
  v122 = a2;
  v3 = sub_2699037DC();
  v116 = *(v3 - 8);
  v117 = v3;
  MEMORY[0x28223BE20](v3);
  v115 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E4D0, &qword_269906800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v110 - v6;
  v113 = type metadata accessor for RequestAnalyticsContext(0);
  MEMORY[0x28223BE20](v113);
  v114 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for ExecutionInfo(0);
  v9 = MEMORY[0x28223BE20](v121);
  v120 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v118 = &v110 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v110 - v13;
  v15 = type metadata accessor for CrossDeviceCommandExecution(0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_2699037FC();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v119 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v112 = &v110 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v111 = &v110 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v110 - v26;
  v123 = a1;
  v28 = sub_2698D64A8();
  if (v28)
  {
    v29 = v28;
    v126 = sub_2698D7F18;
    v127 = 0;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v125 = sub_2698E6978;
    *(&v125 + 1) = &block_descriptor_98;
    v30 = v18;
    v31 = v19;
    v32 = _Block_copy(&aBlock);
    v33 = [v29 remoteObjectProxyWithErrorHandler_];
    v34 = v32;
    v19 = v31;
    v18 = v30;
    _Block_release(v34);

    sub_269903C3C();
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0u;
    v125 = 0u;
  }

  sub_2698DBA78(&aBlock, v129);
  if (v129[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E520, &unk_269907790);
    if (swift_dynamicCast())
    {
      v35 = v128;
      sub_2698DAF98(v122, v17, type metadata accessor for CrossDeviceCommandExecution);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_2698DB04C(v17, v118, type metadata accessor for ExecutionInfo);
          v37 = sub_2699037AC();
          v39 = v38;
          v40 = v123;
          swift_beginAccess();
          v41 = *(v40 + 24);

          sub_2698D0CE0(v37, v39, v41, v7);

          if (__swift_getEnumTagSinglePayload(v7, 1, v113) == 1)
          {
            sub_2698DBAE8(v7, &qword_28033E4D0, &qword_269906800);
            if (qword_28033E178 != -1)
            {
              swift_once();
            }

            v42 = __swift_project_value_buffer(v18, qword_280340D98);
            v43 = v112;
            (*(v19 + 16))(v112, v42, v18);

            v44 = sub_2699037EC();
            v45 = sub_269903B0C();

            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              v47 = v18;
              v48 = v19;
              v49 = swift_slowAlloc();
              v128 = v49;
              *v46 = 136315138;
              v50 = sub_2698D9D70(v37, v39, &v128);

              *(v46 + 4) = v50;
              _os_log_impl(&dword_2698CD000, v44, v45, "#hal logCrossDeviceCommandEnded Failed to find analytics context in cache - logCrossDeviceCommandStarted was not called for requestId: %s. Returning.", v46, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v49);
              MEMORY[0x26D648C80](v49, -1, -1);
              MEMORY[0x26D648C80](v46, -1, -1);
              swift_unknownObjectRelease();

              (*(v48 + 8))(v112, v47);
            }

            else
            {

              swift_unknownObjectRelease();

              (*(v19 + 8))(v43, v18);
            }
          }

          else
          {
            v119 = v37;
            v120 = v19;
            v87 = v18;
            v88 = v114;
            sub_2698DB04C(v7, v114, type metadata accessor for RequestAnalyticsContext);
            v89 = sub_269903AEC();
            (*(v116 + 16))(v115, v88, v117);
            sub_2698D62B0();
            sub_2699037AC();
            v90 = sub_2699038FC();

            v91 = sub_269903AEC();
            v92 = sub_269903AEC();
            sub_2698D23FC(0, &qword_28033E220, 0x277CEF240);
            sub_2698D23FC(0, &qword_28131C410, 0x277CCABB0);
            sub_2698DB4BC();
            v93 = sub_26990388C();

            v122 = v35;
            [v35 logCrossDeviceCommandEnded:v90 action:v89 actionResult:v91 homeKitTarget:v92 contextProximityPairs:v93];

            if (qword_28033E178 != -1)
            {
              swift_once();
            }

            v94 = __swift_project_value_buffer(v87, qword_280340D98);
            v95 = v120;
            v96 = v111;
            (*(v120 + 16))(v111, v94, v87);

            v97 = v89;
            v98 = sub_2699037EC();
            v99 = sub_269903AFC();

            if (os_log_type_enabled(v98, v99))
            {
              v100 = swift_slowAlloc();
              v101 = swift_slowAlloc();
              v102 = swift_slowAlloc();
              v121 = v87;
              v103 = v102;
              v128 = v102;
              *v100 = 136315394;
              v104 = v119;
              *(v100 + 4) = sub_2698D9D70(v119, v39, &v128);
              *(v100 + 12) = 2112;
              *(v100 + 14) = v97;
              *v101 = v97;
              v105 = v97;
              _os_log_impl(&dword_2698CD000, v98, v99, "#hal logCrossDeviceCommandEnded for request: %s action:%@", v100, 0x16u);
              sub_2698DBAE8(v101, &qword_28033E530, &unk_269906C90);
              MEMORY[0x26D648C80](v101, -1, -1);
              __swift_destroy_boxed_opaque_existential_0(v103);
              MEMORY[0x26D648C80](v103, -1, -1);
              MEMORY[0x26D648C80](v100, -1, -1);

              (*(v95 + 8))(v96, v121);
            }

            else
            {

              (*(v95 + 8))(v96, v87);
              v104 = v119;
            }

            sub_2698D914C(v104, v39, v106, v107, v108);

            swift_unknownObjectRelease();
            (*(v116 + 8))(v115, v117);
            sub_2698DAFF8();
          }
        }

        else
        {
          v64 = v18;
          v65 = v19;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E528, &unk_269906840);
          sub_2698DB04C(v17, v120, type metadata accessor for ExecutionInfo);
          v66 = sub_2699037AC();
          v68 = v67;
          v69 = sub_269903AEC();
          v70 = sub_2699038FC();
          v71 = sub_269903AEC();
          [v35 logCrossDeviceCommandFailed:v70 action:v69 reason:v71];

          if (qword_28033E178 != -1)
          {
            swift_once();
          }

          v72 = __swift_project_value_buffer(v64, qword_280340D98);
          v73 = v65;
          v74 = v119;
          (*(v65 + 16))(v119, v72, v64);

          v75 = v69;
          v76 = sub_2699037EC();
          v77 = sub_269903AFC();

          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            v122 = v35;
            v80 = v73;
            v81 = v79;
            v82 = swift_slowAlloc();
            v129[0] = v82;
            *v78 = 136315394;
            *(v78 + 4) = sub_2698D9D70(v66, v68, v129);
            *(v78 + 12) = 2112;
            *(v78 + 14) = v75;
            *v81 = v75;
            v83 = v75;
            _os_log_impl(&dword_2698CD000, v76, v77, "#hal logCrossDeviceCommandFailed for request: %s action:%@", v78, 0x16u);
            sub_2698DBAE8(v81, &qword_28033E530, &unk_269906C90);
            MEMORY[0x26D648C80](v81, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v82);
            MEMORY[0x26D648C80](v82, -1, -1);
            MEMORY[0x26D648C80](v78, -1, -1);

            (*(v80 + 8))(v119, v64);
          }

          else
          {

            (*(v73 + 8))(v74, v64);
          }

          sub_2698D914C(v66, v68, v84, v85, v86);

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v55 = *v17;
        v56 = v17[1];
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E400, &unk_2699062F0);
        sub_2698DB04C(v17 + *(v57 + 64), v14, type metadata accessor for ExecutionInfo);
        v58 = sub_2699037AC();
        v60 = v59;
        v61 = sub_269903AEC();
        LOBYTE(v129[0]) = 8;
        v62 = swift_allocObject();
        v62[2] = v123;
        v62[3] = v58;
        v62[4] = v60;
        v62[5] = v35;
        v62[6] = v61;
        v62[7] = v55;
        v62[8] = v56;

        swift_unknownObjectRetain();
        v63 = v61;
        sub_2698D9458(v58, v60, 0, v129, sub_2698DBB40);

        swift_unknownObjectRelease();
      }

      sub_2698DAFF8();
      return sub_2698DBAE8(&aBlock, &qword_28033E238, &qword_269905FC8);
    }
  }

  else
  {
    sub_2698DBAE8(v129, &qword_28033E238, &qword_269905FC8);
  }

  if (qword_28033E178 != -1)
  {
    swift_once();
  }

  v51 = __swift_project_value_buffer(v18, qword_280340D98);
  (*(v19 + 16))(v27, v51, v18);
  v52 = sub_2699037EC();
  v53 = sub_269903B0C();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_2698CD000, v52, v53, "#hal logCommandExecution Failed to get remote object", v54, 2u);
    MEMORY[0x26D648C80](v54, -1, -1);
  }

  (*(v19 + 8))(v27, v18);
  return sub_2698DBAE8(&aBlock, &qword_28033E238, &qword_269905FC8);
}

uint64_t sub_2698D7F18(void *a1)
{
  v2 = sub_2699037FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28033E178 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280340D98);
  (*(v3 + 16))(v5, v6, v2);
  v7 = a1;
  v8 = sub_2699037EC();
  v9 = sub_269903B0C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_269903FFC();
    v14 = sub_2698D9D70(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2698CD000, v8, v9, "#hal logCommandExecution Error reaching remote: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x26D648C80](v11, -1, -1);
    MEMORY[0x26D648C80](v10, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2698D813C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v52 = a5;
  v53 = a7;
  v56 = a4;
  v11 = sub_2699037FC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v55 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E4D0, &qword_269906800);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v51 - v18;
  v20 = type metadata accessor for RequestAnalyticsContext(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v54 = a1;
  v23 = *(a1 + 24);

  sub_2698D0CE0(a2, a3, v23, v19);

  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_2698DBAE8(v19, &qword_28033E4D0, &qword_269906800);
    if (qword_28033E178 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v11, qword_280340D98);
    (*(v12 + 16))(v16, v24, v11);
    v25 = sub_2699037EC();
    v26 = sub_269903B0C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2698CD000, v25, v26, "#hal logCommandExecution Failed to create analyticsContext for request.", v27, 2u);
      MEMORY[0x26D648C80](v27, -1, -1);
    }

    return (*(v12 + 8))(v16, v11);
  }

  else
  {
    v51 = a6;
    v29 = v12;
    v30 = v11;
    sub_2698DB04C(v19, v22, type metadata accessor for RequestAnalyticsContext);
    v31 = a2;
    v32 = sub_2699038FC();
    sub_2699037AC();
    v33 = sub_2699038FC();

    v34 = v56;
    [v56 logCrossDeviceRequestLink:v32 halRequestId:v33];

    sub_2699037AC();
    v35 = sub_2699038FC();

    v36 = v52;
    [v34 logCrossDeviceCommandStarted:v35 action:v52];

    if (qword_28033E178 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v30, qword_280340D98);
    v38 = v55;
    (*(v29 + 16))(v55, v37, v30);

    v39 = v36;
    v40 = sub_2699037EC();
    v41 = sub_269903AFC();

    v42 = a3;
    if (os_log_type_enabled(v40, v41))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v52 = v42;
      v46 = v45;
      v57 = v45;
      *v43 = 136315394;
      *(v43 + 4) = sub_2698D9D70(v31, v52, &v57);
      *(v43 + 12) = 2112;
      *(v43 + 14) = v39;
      *v44 = v39;
      v47 = v39;
      _os_log_impl(&dword_2698CD000, v40, v41, "#hal logCrossDeviceCommandStarted for request: %s action:%@", v43, 0x16u);
      sub_2698DBAE8(v44, &qword_28033E530, &unk_269906C90);
      MEMORY[0x26D648C80](v44, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v46);
      v48 = v46;
      v42 = v52;
      MEMORY[0x26D648C80](v48, -1, -1);
      MEMORY[0x26D648C80](v43, -1, -1);

      (*(v29 + 8))(v55, v30);
    }

    else
    {

      (*(v29 + 8))(v38, v30);
    }

    if (v51)
    {
      v49 = v51;
    }

    else
    {
      v49 = MEMORY[0x277D84F90];
    }

    if (v53)
    {
      v50 = v53;
    }

    else
    {
      v50 = MEMORY[0x277D84F90];
    }

    sub_2698D8988(v31, v42, v49, v50, v56);

    return sub_2698DAFF8();
  }
}

void sub_2698D870C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_15();
  v7 = v5;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_26990382C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_0();
  v27 = sub_26990384C();
  OUTLINED_FUNCTION_3_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_18();
  v18 = *v13;
  v19 = swift_allocObject();
  *(v19 + 16) = v7;
  *(v19 + 24) = v11;
  *(v19 + 32) = v9;
  *(v19 + 40) = v18;
  v28[4] = sub_2698DA32C;
  v28[5] = v19;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v28[2] = v20;
  v28[3] = &block_descriptor_6;
  v21 = _Block_copy(v28);

  sub_26990383C();
  OUTLINED_FUNCTION_2_1();
  sub_2698DB980(v22, v23, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  sub_2698DB9C8(&qword_28131C468, &unk_28033E410, &qword_2699074C0);
  OUTLINED_FUNCTION_9();
  sub_269903C5C();
  v24 = OUTLINED_FUNCTION_11();
  MEMORY[0x26D6480A0](v24);
  _Block_release(v21);
  v25 = OUTLINED_FUNCTION_12();
  v26(v25);
  (*(v16 + 8))(v6, v27);

  OUTLINED_FUNCTION_17();
}

void sub_2698D8988(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  if (a3 >> 62)
  {
    v10 = sub_269903CAC();
  }

  else
  {
    v10 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {
    aBlock[0] = MEMORY[0x277D84F90];
    sub_269903DAC();
    if (v10 < 0)
    {
      __break(1u);
      return;
    }

    v11 = 0;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x26D6482B0](v11, a3);
      }

      else
      {
        v12 = *(a3 + 8 * v11 + 32);
      }

      v13 = v12;
      ++v11;
      [objc_allocWithZone(SVDDeviceUnit) initWithDeviceUnit_];

      sub_269903D8C();
      sub_269903DBC();
      sub_269903DCC();
      sub_269903D9C();
    }

    while (v10 != v11);
  }

  if (a5)
  {
    sub_2698D23FC(0, &qword_28131C450, off_279C71310);
    v14 = sub_2699039FC();

    sub_2698D23FC(0, &qword_28033E4E8, 0x277CEF390);
    v15 = sub_2699039FC();
    v16 = swift_allocObject();
    v16[2] = v6;
    v16[3] = a1;
    v16[4] = a2;
    aBlock[4] = sub_2698DB4B0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2698D9094;
    aBlock[3] = &block_descriptor_80;
    v17 = _Block_copy(aBlock);

    [a5 getContextAndProximitySnapshotForCurrentRequestForDeviceUnits:v14 serviceContexts:v15 completion:v17];
    _Block_release(v17);
  }

  else
  {
  }
}

void sub_2698D8C38(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v44 = a2;
  v7 = sub_2699037FC();
  v8 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2698DB6EC(a1);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
LABEL_17:
    LOBYTE(v49[0]) = 8;
    sub_2698D9458(a3, a4, v12, v49, 0);

    if (qword_28033E178 == -1)
    {
LABEL_18:
      v32 = __swift_project_value_buffer(v7, qword_280340D98);
      v8[2](v10, v32, v7);

      v33 = sub_2699037EC();
      v34 = sub_269903AFC();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = a3;
        v38 = v36;
        v49[0] = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_2698D9D70(v37, a4, v49);
        _os_log_impl(&dword_2698CD000, v33, v34, "#hal fetched and cached context snapshot and proximity for request: %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x26D648C80](v38, -1, -1);
        MEMORY[0x26D648C80](v35, -1, -1);
      }

      (v8[1])(v10, v7);
      return;
    }

LABEL_22:
    swift_once();
    goto LABEL_18;
  }

  v13 = v11;
  v53 = MEMORY[0x277D84F90];
  sub_2698F81FC(0, v11 & ~(v11 >> 63), 0);
  v12 = v53;
  v50 = sub_2698DB68C(a1);
  v51 = v14;
  v52 = v15 & 1;
  if ((v13 & 0x8000000000000000) == 0)
  {
    v39 = a3;
    v40 = a4;
    v41 = v10;
    v42 = v8;
    v43 = v7;
    a4 = 0;
    v46 = v13;
    v47 = a1 & 0xC000000000000001;
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v16 = a1;
    }

    v45 = v16;
    while (!__OFADD__(a4, 1))
    {
      v48 = a4 + 1;
      v17 = v50;
      v18 = v51;
      v19 = v52;
      v10 = a1;
      sub_2698DB70C(v49, v50, v51, v52, a1);
      v7 = v20;
      v21 = v49[0];
      v8 = [v49[0] integerValue];

      v22 = v12;
      v53 = v12;
      v23 = *(v12 + 16);
      v24 = *(v22 + 24);
      if (v23 >= v24 >> 1)
      {
        sub_2698F81FC((v24 > 1), v23 + 1, 1);
        v22 = v53;
      }

      *(v22 + 16) = v23 + 1;
      v25 = v22 + 16 * v23;
      *(v25 + 32) = v7;
      *(v25 + 40) = v8;
      if (v47)
      {
        if (!v19)
        {
          goto LABEL_24;
        }

        v12 = v22;
        if (sub_269903E3C())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v30 = v46;
        a3 = v48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E4F8, &qword_269906810);
        v31 = sub_2699038CC();
        sub_269903EAC();
        v31(v49, 0);
      }

      else
      {
        v12 = v22;
        sub_2698DB524(v17, v18, v19, a1);
        v27 = v26;
        v7 = v28;
        v8 = v29;
        sub_2698DB8EC(v17, v18, v19);
        v50 = v27;
        v51 = v7;
        v52 = v8 & 1;
        v30 = v46;
        a3 = v48;
      }

      ++a4;
      if (a3 == v30)
      {
        sub_2698DB8EC(v50, v51, v52);
        v8 = v42;
        v7 = v43;
        a4 = v40;
        v10 = v41;
        a3 = v39;
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_2698D9094(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_2698D23FC(0, &qword_28033E220, 0x277CEF240);
  sub_2698D23FC(0, &qword_28131C410, 0x277CCABB0);
  sub_2698DB4BC();
  v3 = sub_26990389C();

  v2(v3);
}

void sub_2698D914C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_15();
  v8 = v5;
  v10 = v9;
  v12 = v11;
  v13 = sub_26990382C();
  OUTLINED_FUNCTION_3_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_0();
  v26 = sub_26990384C();
  OUTLINED_FUNCTION_3_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_18();
  v20 = swift_allocObject();
  v20[2] = v8;
  v20[3] = v12;
  v20[4] = v10;
  v27[4] = sub_2698DB45C;
  v27[5] = v20;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v27[2] = v21;
  v27[3] = &block_descriptor_74;
  v22 = _Block_copy(v27);

  sub_26990383C();
  OUTLINED_FUNCTION_2_1();
  sub_2698DB980(v23, v24, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  sub_2698DB9C8(&qword_28131C468, &unk_28033E410, &qword_2699074C0);
  OUTLINED_FUNCTION_9();
  sub_269903C5C();
  v25 = OUTLINED_FUNCTION_11();
  MEMORY[0x26D6480A0](v25);
  _Block_release(v22);
  (*(v15 + 8))(v6, v13);
  (*(v18 + 8))(v7, v26);

  OUTLINED_FUNCTION_17();
}

uint64_t sub_2698D9380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E4D0, &qword_269906800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  v8 = type metadata accessor for RequestAnalyticsContext(0);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  swift_beginAccess();

  sub_2698D596C(v7, a2, a3);
  return swift_endAccess();
}

void sub_2698D9458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_15();
  v7 = v5;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_26990382C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_0();
  sub_26990384C();
  OUTLINED_FUNCTION_3_0();
  v31 = v22;
  v32 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_18();
  LOBYTE(v13) = *v13;
  v23 = swift_allocObject();
  *(v23 + 16) = v7;
  *(v23 + 24) = v19;
  *(v23 + 32) = v17;
  *(v23 + 40) = v15;
  *(v23 + 48) = v13;
  *(v23 + 56) = v11;
  *(v23 + 64) = v9;
  v33[4] = sub_2698DAF74;
  v33[5] = v23;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v33[2] = v24;
  v33[3] = &block_descriptor_68;
  v25 = _Block_copy(v33);

  sub_2698DAF88(v11, v9);
  sub_26990383C();
  OUTLINED_FUNCTION_2_1();
  sub_2698DB980(v26, v27, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E410, &qword_2699074C0);
  sub_2698DB9C8(&qword_28131C468, &unk_28033E410, &qword_2699074C0);
  sub_269903C5C();
  v28 = OUTLINED_FUNCTION_11();
  MEMORY[0x26D6480A0](v28);
  _Block_release(v25);
  v29 = OUTLINED_FUNCTION_12();
  v30(v29);
  (*(v31 + 8))(v6, v32);

  OUTLINED_FUNCTION_17();
}

uint64_t sub_2698D96C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(uint64_t), uint64_t a7)
{
  v25 = a7;
  v26 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E4D0, &qword_269906800);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  v18 = type metadata accessor for RequestAnalyticsContext(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v21 = *(a1 + 24);

  sub_2698D0CE0(a2, a3, v21, v17);

  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_2699037CC();
    *&v20[v18[5]] = 0;
    v20[v18[6]] = 8;
    v20[v18[7]] = 22;
    if (__swift_getEnumTagSinglePayload(v17, 1, v18) != 1)
    {
      sub_2698DBAE8(v17, &qword_28033E4D0, &qword_269906800);
    }
  }

  else
  {
    sub_2698DB04C(v17, v20, type metadata accessor for RequestAnalyticsContext);
  }

  if (a4)
  {
    v22 = v18[5];

    *&v20[v22] = a4;
  }

  if (a5 != 8)
  {
    v20[v18[6]] = a5;
  }

  sub_2698DAF98(v20, v15, type metadata accessor for RequestAnalyticsContext);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v18);
  swift_beginAccess();

  sub_2698D596C(v15, a2, a3);
  v23 = swift_endAccess();
  if (v26)
  {
    v26(v23);
  }

  return sub_2698DAFF8();
}

id *DeviceResolutionAnalyticsImpl.deinit()
{

  return v0;
}

uint64_t DeviceResolutionAnalyticsImpl.__deallocating_deinit()
{
  DeviceResolutionAnalyticsImpl.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

void sub_2698D99E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_15();
  v13 = sub_269903B3C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_0();
  sub_269903B2C();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_18();
  v11 = sub_26990384C();
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_5_0();
  v12 = MEMORY[0x277D84F98];
  v5[2] = 0;
  v5[3] = v12;
  sub_2698D23FC(0, &qword_28131C430, 0x277D85C78);
  sub_26990383C();
  sub_2698DB980(&qword_28131C438, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E500, &qword_269906818);
  sub_2698DB9C8(&unk_28131C458, &unk_28033E500, &qword_269906818);
  sub_269903C5C();
  (*(v8 + 104))(v6, *MEMORY[0x277D85260], v13);
  v5[4] = sub_269903B5C();
  v5[5] = 0;
  OUTLINED_FUNCTION_17();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2698D9CAC()
{
  v1 = *(type metadata accessor for CrossDeviceCommandExecution(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_2698D6F98(v2, v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2698D9D70(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2698D9E34(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2698DBA1C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2698D9E34(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2698D9F34(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_269903D7C();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2698D9F34(uint64_t a1, unint64_t a2)
{
  v3 = sub_2698D9F80(a1, a2);
  sub_2698DA098(&unk_287A56318);
  return v3;
}

uint64_t sub_2698D9F80(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_26990398C())
  {
    result = sub_2698DA17C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_269903D3C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_269903D7C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2698DA098(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_2698DA1EC(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2698DA17C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E510, qword_269906820);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2698DA1EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E510, qword_269906820);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_2698DA340()
{
  result = qword_28033E420;
  if (!qword_28033E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E420);
  }

  return result;
}

unint64_t sub_2698DA398()
{
  result = qword_28033E428;
  if (!qword_28033E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E428);
  }

  return result;
}

unint64_t sub_2698DA3F0()
{
  result = qword_28033E430;
  if (!qword_28033E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E430);
  }

  return result;
}

unint64_t sub_2698DA448()
{
  result = qword_28033E438;
  if (!qword_28033E438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E438);
  }

  return result;
}

unint64_t sub_2698DA4A0()
{
  result = qword_28033E440;
  if (!qword_28033E440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E440);
  }

  return result;
}

void sub_2698DA544(uint64_t a1)
{
  sub_2699037DC();
  if (v1 <= 0x3F)
  {
    sub_2698DAF28(319, &qword_28033E460, &type metadata for ExecutionInfo.QuickStopActionResult);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for ExecutionInfo.Action(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEB)
  {
    if (a2 + 21 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 21) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 22;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v5 = v6 - 22;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ExecutionInfo.Action(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

void sub_2698DA75C(uint64_t a1)
{
  sub_2698DA814(319);
  if (v1 <= 0x3F)
  {
    sub_2698DA8B8(319, &qword_28033E490);
    if (v2 <= 0x3F)
    {
      sub_2698DA8B8(319, &qword_28033E498);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2698DA814(uint64_t a1)
{
  if (!qword_28033E478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033E480, &qword_2699066F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033E488, &qword_2699066F8);
    type metadata accessor for ExecutionInfo(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_28033E478);
    }
  }
}

void sub_2698DA8B8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for ExecutionInfo(255);
    OUTLINED_FUNCTION_23();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CrossDeviceCommandExecution.Result(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2698DA9FC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2698DAA84(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeKitTarget(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HomeKitTarget(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2698DADB8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2698DADF0(uint64_t a1)
{
  sub_2699037DC();
  if (v1 <= 0x3F)
  {
    sub_2698DAEC4(319);
    if (v2 <= 0x3F)
    {
      sub_2698DAF28(319, &qword_28033E4C0, &type metadata for HomeKitTarget);
      if (v3 <= 0x3F)
      {
        sub_2698DAF28(319, &qword_28033E4C8, &type metadata for ExecutionInfo.Action);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2698DAEC4(uint64_t a1)
{
  if (!qword_28033E4B0)
  {
    v1 = sub_269903C0C();
    if (!v2)
    {
      atomic_store(v1, &qword_28033E4B0);
    }
  }
}

void sub_2698DAF28(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_269903C0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2698DAF88(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2698DAF98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2698DAFF8()
{
  v1 = OUTLINED_FUNCTION_13();
  v2(v1);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_2698DB04C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2698DB0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_2698D1D34(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E4D8, &qword_269906808);
    sub_269903DEC();

    v8 = *(v14 + 56);
    v9 = type metadata accessor for RequestAnalyticsContext(0);
    sub_2698DB04C(v8 + *(*(v9 - 8) + 72) * v7, a3, type metadata accessor for RequestAnalyticsContext);
    sub_269903DFC();
    *v3 = v14;
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = type metadata accessor for RequestAnalyticsContext(0);
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_2698DB1F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_2698D1D34(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E4D8, &qword_269906808);
  if ((sub_269903DEC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_2698D1D34(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_269903FEC();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for RequestAnalyticsContext(0) - 8) + 72) * v12;

    return sub_2698DB3F8(a1, v18);
  }

  else
  {
    sub_2698DB34C(v12, a2, a3, a1, v16);
  }
}

uint64_t sub_2698DB34C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for RequestAnalyticsContext(0);
  result = sub_2698DB04C(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for RequestAnalyticsContext);
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

uint64_t sub_2698DB3F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestAnalyticsContext(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_2Tm()
{

  v0 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2821FE8E8](v0, v1, 7);
}

unint64_t sub_2698DB4BC()
{
  result = qword_28033E4F0;
  if (!qword_28033E4F0)
  {
    sub_2698D23FC(255, &qword_28033E220, 0x277CEF240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E4F0);
  }

  return result;
}

void sub_2698DB524(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_269903E4C() == *(a4 + 36))
    {
      sub_269903E5C();
      sub_2698D23FC(0, &qword_28033E220, 0x277CEF240);
      swift_dynamicCast();
      sub_2698D2144();
      v5 = v4;

      if (v5)
      {
        sub_269903E2C();
        sub_269903E7C();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*(a4 + 36) == a2)
  {
    sub_269903C7C();
    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_2698DB68C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_269903E0C();
  }

  else
  {
    return sub_269903C6C();
  }
}

uint64_t sub_2698DB6EC(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_269903CAC();
  }

  else
  {
    return *(a1 + 16);
  }
}

void sub_2698DB70C(void *a1, unint64_t a2, void *a3, char a4, uint64_t a5)
{
  v6 = a3;
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_269903E8C();
      sub_2698D23FC(0, &qword_28033E220, 0x277CEF240);
      swift_dynamicCast();
      sub_2698D23FC(0, &qword_28131C410, 0x277CCABB0);
      swift_dynamicCast();
      *a1 = v14;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == v6)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_269903E4C() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_269903E5C();
  sub_2698D23FC(0, &qword_28033E220, 0x277CEF240);
  swift_dynamicCast();
  v6 = v14;
  a2 = sub_2698D2144();
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v11 = *(*(a5 + 48) + 8 * a2);
  v12 = *(*(a5 + 56) + 8 * a2);
  *a1 = v12;
  v11;
  v13 = v12;
}

uint64_t sub_2698DB8EC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_2698DB980(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2698DB9C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2698DBA1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2698DBA78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E238, &qword_269905FC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2698DBAE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_8();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10()
{

  return sub_2698DAFF8();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return sub_2699037DC();
}

void OUTLINED_FUNCTION_20()
{

  JUMPOUT(0x26D648C80);
}

void OUTLINED_FUNCTION_25(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

char *sub_2698DBE0C(uint64_t a1)
{
  *&v1[OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus] = 0;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for BooleanCapabilityPrimitive();
  result = objc_msgSendSuper2(&v4, sel_init);
  *&result[OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus] = a1;
  return result;
}

id sub_2698DBE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E558, &qword_2699068F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269906860;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  if (sub_2698D2A38())
  {
    sub_2698DC724(inited);
  }

  else
  {
    swift_setDeallocating();
    sub_2698DC6DC();
  }

  objc_allocWithZone(type metadata accessor for CapabilityDescription());

  return CapabilityDescription.init(key:valueSet:)();
}

BOOL sub_2698DBF48(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueSet);
  if (!v2)
  {
    return 0;
  }

  v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v4 = sub_2698DC004(v3, v2);

  if (v4)
  {
    return 1;
  }

  v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v7 = sub_2698DC004(v6, v2);

  return v7;
}

BOOL sub_2698DC004(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_269903CDC();

    return v4 & 1;
  }

  else
  {
    if (!*(a2 + 16))
    {
      return 0;
    }

    sub_2698DC698();
    v6 = sub_269903BDC();
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v10 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v11 = *(*(a2 + 48) + 8 * v8);
      v12 = sub_269903BEC();

      v6 = v8 + 1;
    }

    while ((v12 & 1) == 0);
    return v10;
  }
}

void sub_2698DC11C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus);
  v4 = OUTLINED_FUNCTION_0_4();
  [a1 encodeInteger:v3 forKey:v4];
}

id sub_2698DC1EC(void *a1)
{
  v3 = OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus;
  *&v1[OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus] = 0;
  v4 = OUTLINED_FUNCTION_0_4();
  v5 = [a1 decodeIntegerForKey_];

  v6 = CapabilitySupportStatus.init(rawValue:)(v5);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  *&v1[v3] = v8;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for BooleanCapabilityPrimitive();
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

char *sub_2698DC330(uint64_t a1, double a2)
{
  *&v2[OBJC_IVAR____TtC27SiriVirtualDeviceResolution36ContinuousNumericCapabilityPrimitive_value] = 0;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for ContinuousNumericCapabilityPrimitive();
  result = objc_msgSendSuper2(&v5, sel_init);
  *&result[OBJC_IVAR____TtC27SiriVirtualDeviceResolution36ContinuousNumericCapabilityPrimitive_value] = a2;
  return result;
}

void sub_2698DC38C(uint64_t result, uint64_t a2, double a3, double a4)
{
  if (a3 > a4)
  {
    __break(1u);
  }

  else
  {
    objc_allocWithZone(type metadata accessor for CapabilityDescription());

    CapabilityDescription.init(key:valueRange:)();
  }
}

BOOL sub_2698DC404(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange);
  if (*(a1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange + 16))
  {
    return 0;
  }

  v3 = *(v1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution36ContinuousNumericCapabilityPrimitive_value);
  return *v2 <= v3 && v3 <= v2[1];
}

void sub_2698DC454(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution36ContinuousNumericCapabilityPrimitive_value);
  v4 = OUTLINED_FUNCTION_1_4();
  [a1 encodeDouble:v4 forKey:v3];
}

id sub_2698DC52C(void *a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution36ContinuousNumericCapabilityPrimitive_value;
  *&v1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution36ContinuousNumericCapabilityPrimitive_value] = 0;
  v4 = OUTLINED_FUNCTION_1_4();
  [a1 decodeDoubleForKey_];
  v6 = v5;

  *&v1[v3] = v6;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ContinuousNumericCapabilityPrimitive();
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

id sub_2698DC63C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2698DC698()
{
  result = qword_28131C3F0;
  if (!qword_28131C3F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131C3F0);
  }

  return result;
}

uint64_t sub_2698DC6DC()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2698DC724(uint64_t a1)
{
  if (sub_2698CEAE8())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E560, &unk_269906900);
    v2 = sub_269903D2C();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v18 = sub_2698D2A38();
  if (v18)
  {
    v3 = 0;
    v4 = v2 + 56;
    v17 = a1 & 0xC000000000000001;
    while (1)
    {
      sub_2698F72FC(v3, v17 == 0, a1);
      result = v17 ? MEMORY[0x26D6482B0](v3, a1) : *(a1 + 32 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = sub_269903BDC();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_2698DC698();
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = sub_269903BEC();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v15 = *(v2 + 16);
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v16;
LABEL_17:
      if (v3 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return sub_2699038FC();
}

uint64_t OUTLINED_FUNCTION_1_4()
{

  return sub_2699038FC();
}

uint64_t static DeviceUnit.supportsSecureCoding.setter(uint64_t a1)
{
  v1 = a1;
  result = OUTLINED_FUNCTION_46(a1);
  byte_28033E570 = v1;
  return result;
}

uint64_t sub_2698DCA08@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_28033E570;
  return result;
}

uint64_t sub_2698DCA54(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_28033E570 = v1;
  return result;
}

id sub_2698DCAF8(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  a3(a1, a2);
  sub_2699038FC();
  OUTLINED_FUNCTION_35();

  return a1;
}

id sub_2698DCCC0(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v3 = a1;
  a3(a1, a2);
  if (v4)
  {
    sub_2699038FC();
    OUTLINED_FUNCTION_35();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id DeviceUnit.init(identifier:assistantId:builder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v7 = &v5[OBJC_IVAR___SVDDeviceUnitSwift_identifier];
  *v7 = a1;
  v7[1] = a2;
  v8 = &v5[OBJC_IVAR___SVDDeviceUnitSwift_assistantId];
  *v8 = a3;
  v8[1] = a4;
  if (a5)
  {
    type metadata accessor for MutableDeviceUnit();
    v9 = swift_allocObject();
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0u;
    *(v9 + 57) = 0u;
    *(v9 + 80) = 0;
    *(v9 + 88) = 0;
    a5();
    v10 = *(v9 + 24);
    v11 = &v5[OBJC_IVAR___SVDDeviceUnitSwift_name];
    *v11 = *(v9 + 16);
    v11[1] = v10;
    v12 = *(v9 + 40);
    v13 = &v5[OBJC_IVAR___SVDDeviceUnitSwift_roomName];
    *v13 = *(v9 + 32);
    v13[1] = v12;
    v14 = *(v9 + 56);
    *&v5[OBJC_IVAR___SVDDeviceUnitSwift_proximity] = *(v9 + 48);
    v15 = *(v9 + 64);
    v16 = &v5[OBJC_IVAR___SVDDeviceUnitSwift_mediaRouteIdentifier];
    *v16 = v14;
    v16[1] = v15;
    v5[OBJC_IVAR___SVDDeviceUnitSwift_isCommunalDevice] = *(v9 + 72);
    v18 = *(v9 + 80);
    v17 = *(v9 + 88);

    v19 = &v5[OBJC_IVAR___SVDDeviceUnitSwift_homeKitAccessoryIdentifier];
    *v19 = v18;
    v19[1] = v17;
  }

  else
  {
    OUTLINED_FUNCTION_32(OBJC_IVAR___SVDDeviceUnitSwift_name);
    OUTLINED_FUNCTION_32(OBJC_IVAR___SVDDeviceUnitSwift_roomName);
    *&v5[OBJC_IVAR___SVDDeviceUnitSwift_proximity] = 0;
    OUTLINED_FUNCTION_32(OBJC_IVAR___SVDDeviceUnitSwift_mediaRouteIdentifier);
    v5[OBJC_IVAR___SVDDeviceUnitSwift_isCommunalDevice] = 0;
    OUTLINED_FUNCTION_32(OBJC_IVAR___SVDDeviceUnitSwift_homeKitAccessoryIdentifier);
  }

  v24.receiver = v5;
  v24.super_class = type metadata accessor for DeviceUnit();
  v20 = objc_msgSendSuper2(&v24, sel_init);
  v21 = OUTLINED_FUNCTION_12_0();
  sub_2698D3034(v21, v22);
  return v20;
}

id DeviceUnit.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_35();
  return DeviceUnit.init(coder:)(v2);
}

id DeviceUnit.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E228, &qword_269905FC0);
  *(OUTLINED_FUNCTION_26(v4) + 16) = xmmword_269905F20;
  v5 = sub_2698DEE50();
  OUTLINED_FUNCTION_23_0(v5);
  sub_269903BCC();

  if (v209[3])
  {
    if (OUTLINED_FUNCTION_7_0(v6, v7, v8, MEMORY[0x277D837D0], v9, v10, v11, v12, v118, v129, v140, v151, v162, v173, v184, v195))
    {
      v13 = OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_10_0(v13, v14, v15, v16, v17, v18, v19, v20, v21, v119, v130, v141, v152, v163, v174, v185, v196, v22);
      OUTLINED_FUNCTION_20_0();
      sub_269903BCC();

      if (OUTLINED_FUNCTION_7_0(v23, v24, v25, MEMORY[0x277D837D0], v26, v27, v28, v29, v120, v131, v142, v153, v164, v175, v186, v197))
      {
        v30 = v208;
        v31 = OUTLINED_FUNCTION_19_0();
        OUTLINED_FUNCTION_10_0(v31, v32, v33, v34, v35, v36, v37, v38, v39, v121, v132, v143, v154, v165, v176, v187, v198, v40);
        sub_269903BCC();

        if (OUTLINED_FUNCTION_7_0(v41, v42, v43, MEMORY[0x277D837D0], v44, v45, v46, v47, v122, v133, v144, v155, v166, v177, v188, v199))
        {
          v48 = v208;
          v49 = OUTLINED_FUNCTION_19_0();
          OUTLINED_FUNCTION_10_0(v49, v50, v51, v52, v53, v54, v55, v56, v57, v123, v134, v145, v156, v167, v207, v207, v200, v58);
          OUTLINED_FUNCTION_33();
          sub_269903BCC();

          if (OUTLINED_FUNCTION_7_0(v59, v60, v61, MEMORY[0x277D837D0], v62, v63, v64, v65, v124, v135, v146, v157, v168, v178, v189, v201))
          {
            v66 = v208;
            v67 = OUTLINED_FUNCTION_5_1();
            v68 = [a1 decodeIntegerForKey_];

            v69 = Proximity.init(rawValue:)(v68);
            if ((v70 & 1) == 0)
            {
              v71 = v69;
              v72 = OUTLINED_FUNCTION_19_0();
              OUTLINED_FUNCTION_10_0(v72, v73, v74, v75, v76, v77, v78, v79, v80, v125, v136, v147, v207, v207, v179, v190, v208, v81);
              sub_269903BCC();

              if (OUTLINED_FUNCTION_7_0(v82, v83, v84, MEMORY[0x277D837D0], v85, v86, v87, v88, v126, v137, v148, v158, v169, v180, v191, v202))
              {
                v91 = OUTLINED_FUNCTION_19_0();
                OUTLINED_FUNCTION_10_0(v91, v92, v93, v94, v95, v96, v97, v98, v99, v127, v207, v208, v159, v170, v181, v192, v203, v100);
                sub_269903BCC();

                if (OUTLINED_FUNCTION_7_0(v101, v102, v103, MEMORY[0x277D837D0], v104, v105, v106, v107, v128, v138, v149, v160, v171, v182, v193, v204))
                {
                  v108 = v207;
                  v109 = v208;
                  v110 = &v2[OBJC_IVAR___SVDDeviceUnitSwift_identifier];
                  *v110 = v172;
                  v110[1] = v66;
                  v111 = &v2[OBJC_IVAR___SVDDeviceUnitSwift_assistantId];
                  *v111 = v194;
                  v111[1] = v30;
                  v112 = &v2[OBJC_IVAR___SVDDeviceUnitSwift_name];
                  *v112 = v183;
                  v112[1] = v48;
                  v113 = &v2[OBJC_IVAR___SVDDeviceUnitSwift_roomName];
                  *v113 = v161;
                  v113[1] = v205;
                  *&v2[OBJC_IVAR___SVDDeviceUnitSwift_proximity] = v71;
                  v114 = &v2[OBJC_IVAR___SVDDeviceUnitSwift_mediaRouteIdentifier];
                  *v114 = v139;
                  v114[1] = v150;
                  v115 = OUTLINED_FUNCTION_42();
                  v116 = [a1 decodeBoolForKey_];

                  v2[OBJC_IVAR___SVDDeviceUnitSwift_isCommunalDevice] = v116;
                  v117 = &v2[OBJC_IVAR___SVDDeviceUnitSwift_homeKitAccessoryIdentifier];
                  *v117 = v108;
                  v117[1] = v109;
                  v206.receiver = v2;
                  v206.super_class = type metadata accessor for DeviceUnit();
                  v89 = objc_msgSendSuper2(&v206, sel_init);

                  return v89;
                }
              }

              else
              {
              }

              goto LABEL_18;
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {
      }

LABEL_18:

      goto LABEL_19;
    }
  }

  else
  {

    sub_2698D2394(v209);
  }

LABEL_19:
  type metadata accessor for DeviceUnit();
  OUTLINED_FUNCTION_40();
  swift_deallocPartialClassInstance();
  return 0;
}

id DeviceUnit.__allocating_init(deviceUnitObjC:)(void *a1)
{
  if ([a1 respondsToSelector_])
  {
    v2 = [a1 identifier];
    v3 = sub_26990390C();
    v5 = v4;

    v6 = [a1 assistantId];
    v7 = sub_26990390C();
    v9 = v8;

    *(swift_allocObject() + 16) = a1;
    v10 = objc_allocWithZone(type metadata accessor for DeviceUnit());
    return DeviceUnit.init(identifier:assistantId:builder:)(v3, v5, v7, v9, sub_2698DEE94);
  }

  else
  {

    return 0;
  }
}

id sub_2698DD658(void *a1, void *a2)
{
  sub_2698E0D54(a2, &selRef_name);
  if (v4)
  {
    v5 = sub_2699038FC();

    [a1 setName_];
  }

  sub_2698E0D54(a2, &selRef_roomName);
  if (v6)
  {
    v7 = sub_2699038FC();

    [a1 setRoomName_];
  }

  v8 = Proximity.init(rawValue:)([a2 proximity]);
  if ((v9 & 1) == 0)
  {
    [a1 setProximity_];
  }

  sub_2698E0D54(a2, &selRef_mediaRouteIdentifier);
  if (v10)
  {
    v11 = sub_2699038FC();

    [a1 setMediaRouteIdentifier_];
  }

  sub_2698F8820(a2);
  if (v12)
  {
    v13 = sub_2699038FC();

    [a1 setHomeKitAccessoryIdentifier_];
  }

  v14 = [a2 isCommunalDevice];

  return [a1 setIsCommunalDevice_];
}

void sub_2698DD7D8(void *a1)
{
  v3 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_15_0();
  v4 = sub_2699038FC();
  OUTLINED_FUNCTION_4_1();

  v5 = OUTLINED_FUNCTION_48();
  v6 = OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_3_1(v6);

  OUTLINED_FUNCTION_25_0();
  if (v7)
  {
    sub_2699038FC();
  }

  v8 = sub_2699038FC();
  OUTLINED_FUNCTION_3_1(v8);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_25_0();
  if (v9)
  {
    sub_2699038FC();
  }

  v10 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_3_1(v10);
  swift_unknownObjectRelease();

  v11 = *(v1 + OBJC_IVAR___SVDDeviceUnitSwift_proximity);
  v12 = OUTLINED_FUNCTION_5_1();
  [a1 encodeInteger:v11 forKey:v12];

  OUTLINED_FUNCTION_25_0();
  if (v13)
  {
    sub_2699038FC();
  }

  v14 = sub_2699038FC();
  OUTLINED_FUNCTION_3_1(v14);
  swift_unknownObjectRelease();

  v15 = *(v1 + OBJC_IVAR___SVDDeviceUnitSwift_isCommunalDevice);
  v16 = OUTLINED_FUNCTION_42();
  [a1 encodeBool:v15 forKey:v16];

  OUTLINED_FUNCTION_25_0();
  if (v17)
  {
    v18 = sub_2699038FC();
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_2699038FC();
  [a1 encodeObject:v18 forKey:v19];
  swift_unknownObjectRelease();
}

uint64_t sub_2698DDAE4()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for DeviceUnit();
  v2 = objc_msgSendSuper2(&v14, sel_description);
  v3 = sub_26990390C();

  sub_269903D4C();
  MEMORY[0x26D647ED0](0x6669746E65646928, 0xEC0000003A726569);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_16_0(OBJC_IVAR___SVDDeviceUnitSwift_name);

  OUTLINED_FUNCTION_31();

  v4 = OUTLINED_FUNCTION_36();
  MEMORY[0x26D647ED0](v4, 0xEB000000003A656DLL);
  OUTLINED_FUNCTION_16_0(OBJC_IVAR___SVDDeviceUnitSwift_roomName);

  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_21_0();
  v5 = Proximity.description.getter(*&v1[OBJC_IVAR___SVDDeviceUnitSwift_proximity]);
  MEMORY[0x26D647ED0](v5);

  MEMORY[0x26D647ED0](0x52616964656D202CLL, 0xEF3A64496574756FLL);
  OUTLINED_FUNCTION_16_0(OBJC_IVAR___SVDDeviceUnitSwift_mediaRouteIdentifier);

  OUTLINED_FUNCTION_31();

  MEMORY[0x26D647ED0](0xD000000000000013, 0x80000002699085D0);
  if (v1[OBJC_IVAR___SVDDeviceUnitSwift_isCommunalDevice])
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___SVDDeviceUnitSwift_isCommunalDevice])
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x26D647ED0](v6, v7);

  MEMORY[0x26D647ED0](0x694B656D6F68202CLL, 0xEC0000003A644974);
  v9 = OUTLINED_FUNCTION_16_0(OBJC_IVAR___SVDDeviceUnitSwift_homeKitAccessoryIdentifier);
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  if (v8)
  {
    v12 = 0xE000000000000000;
  }

  else
  {
    v12 = v9;
  }

  MEMORY[0x26D647ED0](v11, v12);

  MEMORY[0x26D647ED0](41, 0xE100000000000000);

  MEMORY[0x26D647ED0](0, 0xE000000000000000);

  return v3;
}

uint64_t sub_2698DDD94(uint64_t a1)
{
  sub_2698DBA78(a1, v11);
  if (!v12)
  {
    sub_2698D2394(v11);
    goto LABEL_14;
  }

  v1 = type metadata accessor for DeviceUnit();
  if ((OUTLINED_FUNCTION_41(v1) & 1) == 0)
  {
LABEL_14:
    v8 = 0;
    return v8 & 1;
  }

  OUTLINED_FUNCTION_9_0(OBJC_IVAR___SVDDeviceUnitSwift_assistantId);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_269903FAC() & 1) == 0)
  {

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_9_0(OBJC_IVAR___SVDDeviceUnitSwift_identifier);
  if (v4 && v5 == v6)
  {

    v8 = 1;
  }

  else
  {
    v8 = sub_269903FAC();
  }

  return v8 & 1;
}

uint64_t sub_2698DDEA4()
{
  sub_26990409C();
  sub_26990394C();
  return sub_26990407C();
}

id DeviceUnit.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2698DDF64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_269903FAC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E61747369737361 && a2 == 0xEB00000000644974;
    if (v6 || (sub_269903FAC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (sub_269903FAC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000;
        if (v8 || (sub_269903FAC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x74696D69786F7270 && a2 == 0xE900000000000079;
          if (v9 || (sub_269903FAC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x8000000269908700 == a2;
            if (v10 || (sub_269903FAC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x80000002699085B0 == a2;
              if (v11 || (sub_269903FAC() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD00000000000001ALL && 0x8000000269908720 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_269903FAC();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_2698DE210(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x6E61747369737361;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x656D614E6D6F6F72;
      break;
    case 4:
      result = 0x74696D69786F7270;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2698DE31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2698DDF64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2698DE364@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2698DE1FC();
  *a1 = result;
  return result;
}

uint64_t sub_2698DE38C(uint64_t a1)
{
  v2 = sub_2698E04D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2698DE3C8(uint64_t a1)
{
  v2 = sub_2698E04D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2698DE4AC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E5C0, &qword_269906910);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_2698E04D0();
  OUTLINED_FUNCTION_43(&type metadata for DeviceUnit.CodingKeys, v12, v11);
  OUTLINED_FUNCTION_24_0(OBJC_IVAR___SVDDeviceUnitSwift_identifier);
  LOBYTE(v15) = 0;
  OUTLINED_FUNCTION_14_0();
  sub_269903F6C();
  if (!v2)
  {
    OUTLINED_FUNCTION_24_0(OBJC_IVAR___SVDDeviceUnitSwift_assistantId);
    OUTLINED_FUNCTION_2_2(1);
    sub_269903F6C();
    OUTLINED_FUNCTION_24_0(OBJC_IVAR___SVDDeviceUnitSwift_name);
    OUTLINED_FUNCTION_2_2(2);
    sub_269903F5C();
    OUTLINED_FUNCTION_24_0(OBJC_IVAR___SVDDeviceUnitSwift_roomName);
    OUTLINED_FUNCTION_2_2(3);
    sub_269903F5C();
    v15 = *(v3 + OBJC_IVAR___SVDDeviceUnitSwift_proximity);
    v14[7] = 4;
    sub_2698E0524();
    sub_269903F8C();
    OUTLINED_FUNCTION_24_0(OBJC_IVAR___SVDDeviceUnitSwift_mediaRouteIdentifier);
    OUTLINED_FUNCTION_2_2(5);
    sub_269903F5C();
    LOBYTE(v15) = 6;
    sub_269903F7C();
    OUTLINED_FUNCTION_24_0(OBJC_IVAR___SVDDeviceUnitSwift_homeKitAccessoryIdentifier);
    OUTLINED_FUNCTION_2_2(7);
    sub_269903F5C();
  }

  return (*(v7 + 8))(v10, v5);
}

void *DeviceUnit.init(from:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E5D8, &qword_269906918);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2698E04D0();
  sub_2699040AC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for DeviceUnit();
    OUTLINED_FUNCTION_40();
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_34();
    v6 = sub_269903F2C();
    OUTLINED_FUNCTION_17_0(v6, v8, OBJC_IVAR___SVDDeviceUnitSwift_identifier);
    OUTLINED_FUNCTION_0_5(1);
    v9 = sub_269903F2C();
    OUTLINED_FUNCTION_17_0(v9, v10, OBJC_IVAR___SVDDeviceUnitSwift_assistantId);
    OUTLINED_FUNCTION_0_5(2);
    v11 = sub_269903F1C();
    OUTLINED_FUNCTION_17_0(v11, v12, OBJC_IVAR___SVDDeviceUnitSwift_name);
    OUTLINED_FUNCTION_0_5(3);
    v13 = sub_269903F1C();
    OUTLINED_FUNCTION_17_0(v13, v14, OBJC_IVAR___SVDDeviceUnitSwift_roomName);
    v22 = 4;
    sub_2698E0578();
    OUTLINED_FUNCTION_29();
    sub_269903F4C();
    *(v1 + OBJC_IVAR___SVDDeviceUnitSwift_proximity) = v23;
    OUTLINED_FUNCTION_0_5(5);
    v15 = sub_269903F1C();
    OUTLINED_FUNCTION_17_0(v15, v16, OBJC_IVAR___SVDDeviceUnitSwift_mediaRouteIdentifier);
    OUTLINED_FUNCTION_0_5(6);
    *(v1 + OBJC_IVAR___SVDDeviceUnitSwift_isCommunalDevice) = sub_269903F3C() & 1;
    OUTLINED_FUNCTION_0_5(7);
    v17 = sub_269903F1C();
    OUTLINED_FUNCTION_17_0(v17, v18, OBJC_IVAR___SVDDeviceUnitSwift_homeKitAccessoryIdentifier);
    v21.receiver = v1;
    v21.super_class = type metadata accessor for DeviceUnit();
    v3 = objc_msgSendSuper2(&v21, sel_init);
    v19 = OUTLINED_FUNCTION_1_5();
    v20(v19);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

void *sub_2698DEB00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = DeviceUnit.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_2698DEE50()
{
  result = qword_28131C820;
  if (!qword_28131C820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28131C820);
  }

  return result;
}

void *sub_2698DEE9C()
{

  return v0;
}

uint64_t sub_2698DEED4()
{
  v0 = sub_2698DEE9C();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t static SVDDeviceUnit.supportsSecureCoding.setter(uint64_t a1)
{
  v1 = a1;
  result = OUTLINED_FUNCTION_46(a1);
  byte_28033E571 = v1;
  return result;
}

uint64_t sub_2698DEFF0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_28033E571;
  return result;
}

uint64_t sub_2698DF03C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_28033E571 = v1;
  return result;
}

id SVDDeviceUnit.init(identifier:assistantId:name:roomName:proximity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = &v9[OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_identifier];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_assistantId];
  *v11 = a3;
  *(v11 + 1) = a4;
  v12 = &v9[OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_name];
  *v12 = a5;
  *(v12 + 1) = a6;
  v13 = &v9[OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_roomName];
  *v13 = a7;
  *(v13 + 1) = a8;
  *&v9[OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_proximity] = a9;
  v15.receiver = v9;
  v15.super_class = type metadata accessor for SVDDeviceUnit();
  return objc_msgSendSuper2(&v15, sel_init);
}

id SVDDeviceUnit.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_35();
  return SVDDeviceUnit.init(coder:)(v2);
}

id SVDDeviceUnit.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E228, &qword_269905FC0);
  *(OUTLINED_FUNCTION_26(v4) + 16) = xmmword_269905F20;
  v5 = sub_2698DEE50();
  OUTLINED_FUNCTION_23_0(v5);
  sub_269903BCC();

  if (!v97)
  {

LABEL_6:
    sub_2698D2394(v96);
LABEL_23:
    type metadata accessor for SVDDeviceUnit();
    OUTLINED_FUNCTION_40();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if ((OUTLINED_FUNCTION_13_0(v6, v7, v8, MEMORY[0x277D837D0], v9, v10, v11, v12, v79, v86) & 1) == 0)
  {

    goto LABEL_23;
  }

  v13 = v95;
  v14 = OUTLINED_FUNCTION_26(v4);
  OUTLINED_FUNCTION_27(v14, v15, v16, v17, v18, v19, v20, v21, v22, v80, v87, v23);
  OUTLINED_FUNCTION_20_0();
  sub_269903BCC();

  if (!OUTLINED_FUNCTION_13_0(v24, v25, v26, MEMORY[0x277D837D0], v27, v28, v29, v30, v81, v88))
  {

LABEL_22:

    goto LABEL_23;
  }

  v32 = v94;
  v31 = v95;
  v33 = OUTLINED_FUNCTION_26(v4);
  OUTLINED_FUNCTION_27(v33, v34, v35, v36, v37, v38, v39, v40, v41, v82, v89, v42);
  sub_269903BCC();

  if (!v97)
  {

    goto LABEL_6;
  }

  if ((OUTLINED_FUNCTION_13_0(v43, v44, v45, MEMORY[0x277D837D0], v46, v47, v48, v49, v83, v90) & 1) == 0)
  {

LABEL_21:

    goto LABEL_22;
  }

  v50 = v95;
  v51 = OUTLINED_FUNCTION_26(v4);
  OUTLINED_FUNCTION_27(v51, v52, v53, v54, v55, v56, v57, v58, v59, v84, v94, v60);
  OUTLINED_FUNCTION_33();
  sub_269903BCC();

  if (v97)
  {
    if (!OUTLINED_FUNCTION_13_0(v61, v62, v63, MEMORY[0x277D837D0], v64, v65, v66, v67, v85, v91))
    {

      goto LABEL_21;
    }

    v68 = v95;
    v92 = v94;
  }

  else
  {
    sub_2698D2394(v96);
    v92 = 0;
    v68 = 0;
  }

  v69 = OUTLINED_FUNCTION_5_1();
  v70 = [a1 decodeIntegerForKey_];

  v71 = SVDProximity.init(rawValue:)(v70);
  if (v72)
  {

    goto LABEL_21;
  }

  v73 = &v2[OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_identifier];
  *v73 = v94;
  *(v73 + 1) = v13;
  v74 = &v2[OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_assistantId];
  *v74 = v32;
  v74[1] = v31;
  v75 = &v2[OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_name];
  *v75 = v91;
  v75[1] = v50;
  v76 = &v2[OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_roomName];
  *v76 = v92;
  v76[1] = v68;
  *&v2[OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_proximity] = v71;
  v93.receiver = v2;
  v93.super_class = type metadata accessor for SVDDeviceUnit();
  v77 = objc_msgSendSuper2(&v93, sel_init);

  return v77;
}

void sub_2698DF5BC(void *a1)
{
  v3 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_15_0();
  v4 = sub_2699038FC();
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_25_0();
  if (v5)
  {
    sub_2699038FC();
  }

  v6 = OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_3_1(v6);
  swift_unknownObjectRelease();

  v7 = OUTLINED_FUNCTION_48();
  v8 = sub_2699038FC();
  OUTLINED_FUNCTION_3_1(v8);

  OUTLINED_FUNCTION_25_0();
  if (v9)
  {
    sub_2699038FC();
  }

  v10 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_3_1(v10);
  swift_unknownObjectRelease();

  v11 = *(v1 + OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_proximity);
  v12 = OUTLINED_FUNCTION_5_1();
  [a1 encodeInteger:v11 forKey:v12];
}

uint64_t sub_2698DF76C()
{
  sub_269903D4C();
  v1 = OUTLINED_FUNCTION_15_0();
  MEMORY[0x26D647ED0](v1, 0xEB000000003A7265);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_47();
  v2 = OUTLINED_FUNCTION_36();
  MEMORY[0x26D647ED0](v2, 0xEB000000003A656DLL);
  v3 = OUTLINED_FUNCTION_38(OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_roomName);
  if (v4)
  {
    v5 = 0xE000000000000000;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x26D647ED0](0xEB000000003A656DLL, v5);

  OUTLINED_FUNCTION_18_0();
  v6 = OUTLINED_FUNCTION_38(OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_assistantId);
  if (v4)
  {
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = v6;
  }

  MEMORY[0x26D647ED0](0xEB000000003A656DLL, v7);

  OUTLINED_FUNCTION_21_0();
  v8 = SVDProximity.description.getter(*(v0 + OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_proximity));
  MEMORY[0x26D647ED0](v8);

  return 0;
}

uint64_t sub_2698DF898(uint64_t a1)
{
  sub_2698DBA78(a1, v12);
  if (!v13)
  {
    sub_2698D2394(v12);
    goto LABEL_18;
  }

  v2 = type metadata accessor for SVDDeviceUnit();
  if ((OUTLINED_FUNCTION_41(v2) & 1) == 0)
  {
LABEL_18:
    v9 = 0;
    return v9 & 1;
  }

  v3 = *(v1 + OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_assistantId + 8);
  v4 = *&v11[OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_assistantId + 8];
  if (v3)
  {
    if (v4)
    {
      v5 = *(v1 + OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_assistantId) == *&v11[OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_assistantId] && v3 == v4;
      if (v5 || (sub_269903FAC() & 1) != 0)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_17;
  }

  if (v4)
  {
LABEL_17:

    goto LABEL_18;
  }

LABEL_10:
  OUTLINED_FUNCTION_9_0(OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_identifier);
  if (v5 && v6 == v7)
  {

    v9 = 1;
  }

  else
  {
    v9 = sub_269903FAC();
  }

  return v9 & 1;
}

uint64_t sub_2698DF998(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_269903C3C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_2698D2394(v10);
  return v8 & 1;
}

uint64_t sub_2698DFA54()
{
  sub_26990409C();
  if (*(v0 + OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_assistantId + 8))
  {
    sub_26990406C();
    sub_26990394C();
  }

  else
  {
    sub_26990406C();
  }

  return sub_26990407C();
}

uint64_t sub_2698DFB14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_269903FAC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E61747369737361 && a2 == 0xEB00000000644974;
    if (v6 || (sub_269903FAC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (sub_269903FAC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000;
        if (v8 || (sub_269903FAC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x74696D69786F7270 && a2 == 0xE900000000000079)
        {

          return 4;
        }

        else
        {
          v10 = sub_269903FAC();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_2698DFCD0(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x6E61747369737361;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x656D614E6D6F6F72;
      break;
    case 4:
      result = 0x74696D69786F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2698DFD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2698DFB14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2698DFDA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2698DFCC8();
  *a1 = result;
  return result;
}

uint64_t sub_2698DFDCC(uint64_t a1)
{
  v2 = sub_2698E05F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2698DFE08(uint64_t a1)
{
  v2 = sub_2698E05F0();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_2698DFE5C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2698DFF04(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E610, &qword_269906920);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_2698E05F0();
  OUTLINED_FUNCTION_43(&type metadata for SVDDeviceUnit.CodingKeys, v12, v11);
  OUTLINED_FUNCTION_37(OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_identifier);
  v19 = 0;
  OUTLINED_FUNCTION_14_0();
  sub_269903F6C();
  if (!v2)
  {
    OUTLINED_FUNCTION_37(OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_assistantId);
    v18 = 1;
    OUTLINED_FUNCTION_14_0();
    sub_269903F5C();
    OUTLINED_FUNCTION_37(OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_name);
    v17 = 2;
    OUTLINED_FUNCTION_14_0();
    sub_269903F6C();
    OUTLINED_FUNCTION_37(OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_roomName);
    v16 = 3;
    OUTLINED_FUNCTION_14_0();
    sub_269903F5C();
    v15 = *(v3 + OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_proximity);
    v14[15] = 4;
    sub_2698E0644();
    sub_269903F8C();
  }

  return (*(v7 + 8))(v10, v5);
}

void *SVDDeviceUnit.init(from:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E628, &qword_269906928);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2698E05F0();
  sub_2699040AC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for SVDDeviceUnit();
    OUTLINED_FUNCTION_40();
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_34();
    v6 = sub_269903F2C();
    v8 = (v1 + OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_identifier);
    *v8 = v6;
    v8[1] = v9;
    OUTLINED_FUNCTION_0_5(1);
    v10 = sub_269903F1C();
    OUTLINED_FUNCTION_17_0(v10, v11, OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_assistantId);
    OUTLINED_FUNCTION_0_5(2);
    v12 = sub_269903F2C();
    OUTLINED_FUNCTION_17_0(v12, v13, OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_name);
    OUTLINED_FUNCTION_0_5(3);
    v14 = sub_269903F1C();
    OUTLINED_FUNCTION_17_0(v14, v15, OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_roomName);
    v19 = 4;
    sub_2698E0698();
    OUTLINED_FUNCTION_29();
    sub_269903F4C();
    *(v1 + OBJC_IVAR___SVDDeviceUnitSwiftDeprecated_proximity) = v20;
    v18.receiver = v1;
    v18.super_class = type metadata accessor for SVDDeviceUnit();
    v3 = objc_msgSendSuper2(&v18, sel_init);
    v16 = OUTLINED_FUNCTION_1_5();
    v17(v16);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

void *sub_2698E043C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SVDDeviceUnit.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2698E04D0()
{
  result = qword_28033E5C8;
  if (!qword_28033E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E5C8);
  }

  return result;
}

unint64_t sub_2698E0524()
{
  result = qword_28033E5D0;
  if (!qword_28033E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E5D0);
  }

  return result;
}

unint64_t sub_2698E0578()
{
  result = qword_28033E5E0;
  if (!qword_28033E5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E5E0);
  }

  return result;
}

unint64_t sub_2698E05F0()
{
  result = qword_28033E618;
  if (!qword_28033E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E618);
  }

  return result;
}

unint64_t sub_2698E0644()
{
  result = qword_28033E620;
  if (!qword_28033E620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E620);
  }

  return result;
}

unint64_t sub_2698E0698()
{
  result = qword_28033E630;
  if (!qword_28033E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E630);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SVDDeviceUnit.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SVDDeviceUnit.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceUnit.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2698E0B34()
{
  result = qword_28033E640;
  if (!qword_28033E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E640);
  }

  return result;
}

unint64_t sub_2698E0B8C()
{
  result = qword_28033E648;
  if (!qword_28033E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E648);
  }

  return result;
}

unint64_t sub_2698E0BE4()
{
  result = qword_28033E650;
  if (!qword_28033E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E650);
  }

  return result;
}

unint64_t sub_2698E0C3C()
{
  result = qword_28033E658;
  if (!qword_28033E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E658);
  }

  return result;
}

unint64_t sub_2698E0C94()
{
  result = qword_28033E660;
  if (!qword_28033E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E660);
  }

  return result;
}

unint64_t sub_2698E0CEC()
{
  result = qword_28033E668;
  if (!qword_28033E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E668);
  }

  return result;
}

uint64_t sub_2698E0D54(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_26990390C();
  }

  return OUTLINED_FUNCTION_12_0();
}

id OUTLINED_FUNCTION_3_1(uint64_t a1)
{

  return [v1 (v3 + 3842)];
}

id OUTLINED_FUNCTION_4_1()
{

  return [v0 (v3 + 3842)];
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return sub_2699038FC();
}

uint64_t OUTLINED_FUNCTION_7_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_10_0(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a17, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a18)
{
  result = a18;
  a1[1] = a18;
  a1[2].n128_u64[0] = v18;
  return result;
}

double OUTLINED_FUNCTION_11_0()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_13_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_17_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

void OUTLINED_FUNCTION_18_0()
{

  JUMPOUT(0x26D647ED0);
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_21_0()
{

  JUMPOUT(0x26D647ED0);
}

uint64_t OUTLINED_FUNCTION_22_0()
{

  return sub_2699038FC();
}

uint64_t OUTLINED_FUNCTION_26(uint64_t a1)
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_27(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, uint64_t a9, uint64_t a10, __n128 a12)
{
  result = a12;
  a1[1] = a12;
  a1[2].n128_u64[0] = v12;
  return result;
}

void OUTLINED_FUNCTION_28()
{

  JUMPOUT(0x26D647ED0);
}

uint64_t OUTLINED_FUNCTION_30()
{

  return sub_2699038FC();
}

void OUTLINED_FUNCTION_31()
{

  JUMPOUT(0x26D647ED0);
}

void OUTLINED_FUNCTION_32(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_41(uint64_t a3, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_42()
{

  return sub_2699038FC();
}

uint64_t OUTLINED_FUNCTION_43(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821FE508](a1, a1, a3, v3, v4);
}

uint64_t OUTLINED_FUNCTION_44()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_45(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_46(uint64_t a1, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_47()
{

  JUMPOUT(0x26D647ED0);
}

uint64_t OUTLINED_FUNCTION_48()
{

  return sub_2699038FC();
}

uint64_t static ObjCCompatibility.capabilities(from:)(uint64_t a1)
{
  v2 = sub_2699037FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2698D2A38();
  if (!v6)
  {
    v41 = MEMORY[0x277D84F98];
LABEL_32:
    v36 = sub_2698D0604(v41);

    type metadata accessor for Capabilities();
    result = swift_allocObject();
    *(result + 16) = v36;
    return result;
  }

  v8 = v6;
  if (v6 < 1)
  {
    goto LABEL_35;
  }

  v9 = 0;
  v47 = a1 & 0xC000000000000001;
  v48 = sel__swiftBacking;
  v45 = (v3 + 16);
  v41 = MEMORY[0x277D84F98];
  v44 = (v3 + 8);
  *&v7 = 138412290;
  v40 = v7;
  v42 = v6;
  v43 = v2;
  v39 = a1;
  while (1)
  {
    if (v47)
    {
      v10 = MEMORY[0x26D6482B0](v9, a1);
    }

    else
    {
      v10 = *(a1 + 8 * v9 + 32);
    }

    v11 = v10;
    if (![v10 respondsToSelector_])
    {
      if (qword_28131C480 != -1)
      {
        swift_once();
      }

      v16 = __swift_project_value_buffer(v2, qword_28131C988);
      (*v45)(v5, v16, v2);
      v17 = v11;
      v18 = sub_2699037EC();
      v19 = sub_269903B0C();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = v40;
        *(v20 + 4) = v17;
        *v21 = v17;
        v22 = v17;
        _os_log_impl(&dword_2698CD000, v18, v19, "#hal Unable to convert svdCapability into capability: %@", v20, 0xCu);
        sub_2698E175C(v21);
        v23 = v21;
        v8 = v42;
        MEMORY[0x26D648C80](v23, -1, -1);
        v24 = v20;
        v2 = v43;
        MEMORY[0x26D648C80](v24, -1, -1);
      }

      else
      {
        v22 = v18;
        v18 = v17;
      }

      (*v44)(v5, v2);
      goto LABEL_29;
    }

    v12 = [v11 _swiftBacking];
    sub_269903C3C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E268, &qword_269905FF8);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_29:
    if (v8 == ++v9)
    {
      goto LABEL_32;
    }
  }

  v46 = v49;
  ObjectType = swift_getObjectType();
  v14._countAndFlagsBits = (*(*(&v46 + 1) + 32))(ObjectType);
  CapabilityKey.init(rawValue:)(v14);
  v15 = v50[0];
  if (v50[0] == 12)
  {

    goto LABEL_25;
  }

  swift_unknownObjectRetain();
  v25 = v41;
  swift_isUniquelyReferenced_nonNull_native();
  *v50 = v25;
  v26 = sub_2698D2184(v15);
  if (!__OFADD__(*(v25 + 16), (v27 & 1) == 0))
  {
    v28 = v26;
    v29 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E670, &unk_269906CA0);
    if (sub_269903DEC())
    {
      v30 = sub_2698D2184(v15);
      v8 = v42;
      v2 = v43;
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_36;
      }

      v28 = v30;
    }

    else
    {
      v8 = v42;
      v2 = v43;
    }

    v32 = *v50;
    v41 = *v50;
    if ((v29 & 1) == 0)
    {
      *(*v50 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v32[6] + v28) = v15;
      *(v32[7] + 16 * v28) = v46;
      v33 = v32[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_34;
      }

      v32[2] = v35;
      swift_unknownObjectRelease();

      goto LABEL_28;
    }

    *(*(*v50 + 56) + 16 * v28) = v46;
    swift_unknownObjectRelease();

LABEL_25:
    swift_unknownObjectRelease();
LABEL_28:
    a1 = v39;
    goto LABEL_29;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_269903FEC();
  __break(1u);
  return result;
}

uint64_t sub_2698E175C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E530, &unk_269906C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ObjCCompatibility(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for ObjCCompatibility(_BYTE *result, int a2, int a3)
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

uint64_t SVDProximity.init(rawValue:)(uint64_t result)
{
  if (result == 4000)
  {
    v1 = 4000;
  }

  else
  {
    v1 = 0;
  }

  if (result == 3000)
  {
    v1 = 3000;
  }

  if (result == 2000)
  {
    v1 = 2000;
  }

  if (result == 1000)
  {
    v1 = 1000;
  }

  if (result)
  {
    return v1;
  }

  return result;
}

uint64_t sub_2698E1A04(uint64_t a1, uint64_t a2)
{
  switch(a1)
  {
    case 0:
      return 0x6E776F6E6B6E75;
    case 4000:
      return 0x7972616D697270;
    case 2000:
      return 1918985582;
    case 3000:
      return 0x74616964656D6D69;
    case 1000:
      return 7496038;
  }

  result = sub_269903FCC();
  __break(1u);
  return result;
}

unint64_t sub_2698E1AE0()
{
  result = qword_28033E678;
  if (!qword_28033E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E678);
  }

  return result;
}

unint64_t sub_2698E1B68()
{
  result = qword_28033E690;
  if (!qword_28033E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E690);
  }

  return result;
}

uint64_t sub_2698E1BEC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_2698E1D28()
{
  result = qword_28033E6A8;
  if (!qword_28033E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E6A8);
  }

  return result;
}

unint64_t sub_2698E1D7C()
{
  result = qword_28033E6B0;
  if (!qword_28033E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033E6B0);
  }

  return result;
}

uint64_t sub_2698E1E2C()
{
  v1 = (v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution35AlarmTimerIntentsHandlingCapability_key);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_2698E1EF4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution35AlarmTimerIntentsHandlingCapability_key);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2698E1F54(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2698E1EF4(v1, v2);
}

id AlarmTimerIntentsHandlingCapability.init(status:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution35AlarmTimerIntentsHandlingCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v10.receiver = v1;
  v10.super_class = OUTLINED_FUNCTION_0_6(OBJC_IVAR____TtC27SiriVirtualDeviceResolution35AlarmTimerIntentsHandlingCapability_key);
  v4 = objc_msgSendSuper2(&v10, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E1A8, qword_269905F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269905F20;
  *(inited + 32) = 0xD000000000000032;
  *(inited + 40) = 0x8000000269908900;
  objc_allocWithZone(type metadata accessor for BooleanCapabilityPrimitive());
  v6 = v4;
  *(inited + 48) = sub_2698DBE0C(a1);
  v7 = sub_2699038BC();
  v8 = sub_2698D0418(v7);

  sub_2698D0A68(6, v8);

  return v6;
}

uint64_t sub_2698E2210()
{
  v1 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution35AlarmTimerIntentsHandlingCapability_primitivesMap);

  v2 = sub_2698D0C90(0xD000000000000032, 0x8000000269908900, v1);

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for BooleanCapabilityPrimitive();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus);
  }

  else
  {
    v4 = 0;
  }

  swift_unknownObjectRelease();
  return v4;
}

void sub_2698E232C(uint64_t a1)
{
  v2 = sub_2698D2A38();
  v3 = 0;
  v15 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution35AlarmTimerIntentsHandlingCapability_primitivesMap;
  v17 = v2;
  do
  {
    v4 = v3;
    if (v17 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D6482B0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v7 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
    v8 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8];

    OUTLINED_FUNCTION_1_6();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_1_6();
    if ((sub_26990399C() & 1) == 0 || (OUTLINED_FUNCTION_1_6(), v9 = sub_26990395C(), , v10 = sub_2698D0124(v9, v7, v8), MEMORY[0x26D647E90](v10), , v11 = sub_269903F0C(), , v11))
    {

      return;
    }

    if (!*(*(v16 + v15) + 16) || (, sub_2698D1D34(v7, v8), v13 = v12, , (v13 & 1) == 0))
    {
LABEL_18:

      return;
    }

    swift_unknownObjectRetain();

    type metadata accessor for BooleanCapabilityPrimitive();
    if (!swift_dynamicCastClass())
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRetain();
    v14 = sub_2698DBF48(v6);
    swift_unknownObjectRelease_n();

    v3 = v4 + 1;
  }

  while (v14);
}

char *AlarmTimerIntentsHandlingCapability.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution35AlarmTimerIntentsHandlingCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v6.receiver = v1;
  v6.super_class = OUTLINED_FUNCTION_0_6(OBJC_IVAR____TtC27SiriVirtualDeviceResolution35AlarmTimerIntentsHandlingCapability_key);
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2698D16C0(a1);

  if (!*(*&v4[OBJC_IVAR____TtC27SiriVirtualDeviceResolution35AlarmTimerIntentsHandlingCapability_primitivesMap] + 16))
  {

    return 0;
  }

  return v4;
}

id AlarmTimerIntentsHandlingCapability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AlarmTimerIntentsHandlingCapability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlarmTimerIntentsHandlingCapability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_6@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *v3 = 0x6669636570736E55;
  v3[1] = 0xEB00000000646569;

  return type metadata accessor for AlarmTimerIntentsHandlingCapability();
}

uint64_t sub_2698E2AEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2698E2B78;

  return DeviceResolutionProviding.pairedCompanionDevice()();
}

uint64_t sub_2698E2B78(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_2698E2CE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2698E3C98;

  return DeviceResolutionProviding.meDevice()();
}

uint64_t sub_2698E2DE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2698E3C98;

  return DeviceResolutionProviding.devicesMatching(capabilityDescriptions:)();
}

uint64_t sub_2698E2EE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2698E3C98;

  return DeviceResolutionProviding.devices(matchingAny:)();
}

uint64_t sub_2698E2FDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2698E3C98;

  return DeviceResolutionProviding.devicesWithProximity(closerBound:fartherBound:)();
}

uint64_t sub_2698E30D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2698E3C98;

  return DeviceResolutionProviding.sourceDevices(for:)();
}

uint64_t sub_2698E32C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2698E3C98;

  return DeviceResolutionProviding.homeAutomationAccessories(matchingAny:checkForReachability:)();
}

uint64_t dispatch thunk of DeviceResolutionProviding.pairedCompanionDevice()()
{
  OUTLINED_FUNCTION_9_1();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_4_2();
  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_7_1(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_5_2(v6);

  return v9(v3, v1);
}

uint64_t sub_2698E3530(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of DeviceResolutionProviding.meDevice()()
{
  OUTLINED_FUNCTION_9_1();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_4_2();
  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_7_1(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_5_2(v6);

  return v9(v3, v1);
}

uint64_t dispatch thunk of DeviceResolutionProviding.devicesMatching(capabilityDescriptions:)()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_3_2(v0, v1, v2);
  OUTLINED_FUNCTION_8_1();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_3(v4);

  return v7(v6);
}

uint64_t dispatch thunk of DeviceResolutionProviding.devices(matchingAny:)()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_3_2(v0, v1, v2);
  OUTLINED_FUNCTION_8_1();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_3(v4);

  return v7(v6);
}

uint64_t dispatch thunk of DeviceResolutionProviding.devicesWithProximity(closerBound:fartherBound:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4_2();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_7_1(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_5_2(v10);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DeviceResolutionProviding.sourceDevices(for:)()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_3_2(v0, v1, v2);
  OUTLINED_FUNCTION_8_1();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_3(v4);

  return v7(v6);
}

uint64_t dispatch thunk of DeviceResolutionProviding.homeAutomationAccessories(matchingAny:checkForReachability:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4_2();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_7_1(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_5_2(v10);

  return v13(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_1_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{

  return MEMORY[0x2821FD720](a1, 11, 2, 0xD00000000000002DLL, a3 | 0x8000000000000000, a2, 59, 2);
}

id CapabilityDescription.__allocating_init(key:valueRange:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_0_8());
  OUTLINED_FUNCTION_2_4();
  return CapabilityDescription.init(key:valueRange:)();
}

uint64_t CapabilityDescription.key.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key);

  return v1;
}

uint64_t CapabilityDescription.capabilityKey.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2698E42D4();
  v4 = sub_269903C1C();
  if (*(v4 + 16))
  {
    v5 = *(v4 + 32);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id CapabilityDescription.valueRangeLowerBound.getter()
{
  OUTLINED_FUNCTION_3_3();
  if (v1)
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }
}

id CapabilityDescription.valueRangeUpperBound.getter()
{
  OUTLINED_FUNCTION_3_3();
  if (v1)
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }
}

id CapabilityDescription.init(key:valueSet:)()
{
  OUTLINED_FUNCTION_6_2();
  ObjectType = swift_getObjectType();
  v5 = &v1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
  *v5 = v3;
  *(v5 + 1) = v2;
  *&v1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueSet] = v0;
  v6 = &v1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id CapabilityDescription.init(key:valueRange:)()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  v6 = &v1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
  *v6 = v2;
  *(v6 + 1) = v0;
  v7 = &v1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange];
  *v7 = v4;
  *(v7 + 1) = v3;
  v7[16] = 0;
  *&v1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueSet] = 0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

unint64_t sub_2698E42D4()
{
  result = qword_28131C470;
  if (!qword_28131C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131C470);
  }

  return result;
}

void CapabilityDescription.__allocating_init(key:lowerbound:upperbound:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_0_8());
  v1 = OUTLINED_FUNCTION_2_4();
  CapabilityDescription.init(key:lowerbound:upperbound:)(v1, v2);
}

void CapabilityDescription.init(key:lowerbound:upperbound:)(double a1, double a2)
{
  if (a1 > a2)
  {
    __break(1u);
  }

  else
  {
    v2 = objc_allocWithZone(swift_getObjectType());
    CapabilityDescription.init(key:valueRange:)();
    swift_getObjectType();
    swift_deallocPartialClassInstance();
  }
}

uint64_t static CapabilityDescription.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_28033E6D0 = a1;
  return result;
}

uint64_t sub_2698E455C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_28033E6D0;
  return result;
}

uint64_t sub_2698E45A8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_28033E6D0 = v1;
  return result;
}

Swift::Void __swiftcall CapabilityDescription.encode(with:)(NSCoder with)
{
  v2 = sub_2699038FC();
  v3 = sub_2699038FC();
  v4 = OUTLINED_FUNCTION_5_3();
  [v4 v5];

  v6 = *(v1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueSet);
  if (v6)
  {
    sub_2698D23FC(0, &qword_28131C3F0, 0x277D82BB8);
    sub_2698E47B8();
    v6 = sub_269903A9C();
  }

  v7 = sub_2699038FC();
  v8 = OUTLINED_FUNCTION_5_3();
  [v8 v9];

  OUTLINED_FUNCTION_3_3();
  if ((v11 & 1) == 0)
  {
    v12 = v10[1];
    v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v14 = OUTLINED_FUNCTION_7_2();
    v15 = OUTLINED_FUNCTION_5_3();
    [v15 v16];

    v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v20 = OUTLINED_FUNCTION_7_2();
    v18 = OUTLINED_FUNCTION_5_3();
    [v18 v19];
  }
}

unint64_t sub_2698E47B8()
{
  result = qword_28131C400;
  if (!qword_28131C400)
  {
    sub_2698D23FC(255, &qword_28131C3F0, 0x277D82BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131C400);
  }

  return result;
}

void CapabilityDescription.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E228, &qword_269905FC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_269905F20;
  v6 = sub_2698D23FC(0, &qword_28131C820, 0x277CCACA8);
  *(v5 + 32) = v6;
  sub_269903BCC();

  if (!v67)
  {

    sub_2698D2394(v66);
LABEL_8:
    swift_deallocPartialClassInstance();
    return;
  }

  OUTLINED_FUNCTION_1_8(v7, v8, v9, MEMORY[0x277D837D0], v10, v11, v12, v13, 1, 2, v63.receiver, v63.super_class, v64);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_8;
  }

  v14 = v65;
  v15 = &v2[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
  *v15 = v64;
  *(v15 + 1) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2699070F0;
  *(v16 + 32) = v6;
  v17 = sub_2698D23FC(0, &qword_28131C410, 0x277CCABB0);
  *(v16 + 40) = v17;
  *(v16 + 48) = sub_2698D23FC(0, &unk_28131C418, 0x277CBEB98);
  sub_269903BCC();

  if (v67)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E6F0, &qword_269907100);
    OUTLINED_FUNCTION_1_8(v18, v19, v20, v18, v21, v22, v23, v24, v62, *(&v62 + 1), v63.receiver, v63.super_class, v64);
    if (swift_dynamicCast())
    {
      v25 = v64;
      goto LABEL_11;
    }
  }

  else
  {
    sub_2698D2394(v66);
  }

  v25 = 0;
LABEL_11:
  *&v2[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueSet] = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = v62;
  *(v26 + 32) = v17;
  OUTLINED_FUNCTION_4_3(v26, v27, v28, v29, v30, v31);

  if (v67)
  {
    OUTLINED_FUNCTION_1_8(v32, v33, v34, v35, v36, v37, v38, v39, v62, *(&v62 + 1), v63.receiver, v63.super_class, v64);
    if (!swift_dynamicCast())
    {
LABEL_25:
      v61 = &v2[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange];
      *v61 = 0;
      *(v61 + 1) = 0;
      v61[16] = 1;
      goto LABEL_26;
    }

    v40 = v64;
  }

  else
  {
    sub_2698D2394(v66);
    v40 = 0;
  }

  v41 = swift_allocObject();
  *(v41 + 16) = v62;
  *(v41 + 32) = v17;
  OUTLINED_FUNCTION_4_3(v41, v42, v43, v44, v45, v46);

  if (!v67)
  {
    sub_2698D2394(v66);
    if (v40)
    {
      goto LABEL_22;
    }

    v55 = 0;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_1_8(v47, v48, v49, v50, v51, v52, v53, v54, v62, *(&v62 + 1), v63.receiver, v63.super_class, v64);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:

    goto LABEL_25;
  }

  v55 = v64;
  if (!v40)
  {
LABEL_24:

    goto LABEL_25;
  }

  if (!v64)
  {
    goto LABEL_22;
  }

  [v40 doubleValue];
  v57 = v56;
  [v64 doubleValue];
  v59 = v58;

  if (v57 <= v59)
  {
    v60 = &v2[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueRange];
    *v60 = v57;
    v60[1] = v59;
    *(v60 + 16) = 0;
LABEL_26:
    v63.receiver = v2;
    v63.super_class = ObjectType;
    objc_msgSendSuper2(&v63, sel_init);

    return;
  }

  __break(1u);
}

id CapabilityDescription.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = ObjectType;
  if (*(v1 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueSet))
  {
    objc_allocWithZone(ObjectType);
  }

  else
  {
    OUTLINED_FUNCTION_3_3();
    if ((v5 & 1) == 0)
    {
      objc_allocWithZone(v4);

      result = CapabilityDescription.init(key:valueRange:)();
      goto LABEL_6;
    }

    sub_2698E4D94(MEMORY[0x277D84F90]);
    v6 = objc_allocWithZone(v4);
  }

  result = CapabilityDescription.init(key:valueSet:)();
LABEL_6:
  a1[3] = v4;
  *a1 = result;
  return result;
}

void sub_2698E4D94(uint64_t a1)
{
  v2 = sub_2698CEAE8();
  v3 = sub_2698D23FC(0, &qword_28131C3F0, 0x277D82BB8);
  v4 = sub_2698E47B8();
  v8[1] = MEMORY[0x26D648020](v2, v3, v4);
  v5 = sub_2698D2A38();
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D6482B0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_2698FEC8C(v8, v7);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t CapabilityDescription.description.getter()
{
  if (*(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_valueSet))
  {
    sub_2698D23FC(0, &qword_28131C3F0, 0x277D82BB8);
    sub_2698E47B8();
    v1 = sub_269903ABC();
LABEL_6:
    v6 = v1;
    v5 = v2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_3();
  if ((v4 & 1) == 0)
  {
    v1 = sub_2698E513C(*v3, v3[1]);
    goto LABEL_6;
  }

  v5 = 0xE500000000000000;
  v6 = 0x3E6C696E3CLL;
LABEL_7:
  v8 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key);

  MEMORY[0x26D647ED0](58, 0xE100000000000000);
  MEMORY[0x26D647ED0](v6, v5);

  return v8;
}

id CapabilityDescription.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CapabilityDescription.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2698E513C(double a1, double a2)
{
  sub_269903DDC();
  MEMORY[0x26D647ED0](3026478, 0xE300000000000000);
  sub_269903DDC();
  return 0;
}

void *OUTLINED_FUNCTION_4_3(uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return sub_269903BCC();
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return sub_2699038FC();
}

unint64_t CapabilityKey.rawValue.getter()
{
  result = 0x626170614358554DLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      OUTLINED_FUNCTION_3_4();
      result = v3 - 4;
      break;
    case 3:
      OUTLINED_FUNCTION_3_4();
      result = v4 + 1;
      break;
    case 4:
      OUTLINED_FUNCTION_3_4();
      result = v2 - 6;
      break;
    case 5:
      OUTLINED_FUNCTION_3_4();
      result = v6 - 1;
      break;
    case 6:
      OUTLINED_FUNCTION_3_4();
      result = v7 + 12;
      break;
    case 7:
    case 9:
      OUTLINED_FUNCTION_3_4();
      result = v5 + 3;
      break;
    case 8:
      return result;
    case 0xA:
      OUTLINED_FUNCTION_3_4();
      result = v8 + 2;
      break;
    case 0xB:
      result = 0x6669636570736E55;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

SiriVirtualDeviceResolution::CapabilityKey_optional __swiftcall CapabilityKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_269903F0C();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2698E5524@<X0>(unint64_t *a1@<X8>)
{
  result = CapabilityKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2698E560C()
{
  if (*(*(v0 + 16) + 16))
  {

    sub_2698D2184(4);
    if (v1)
    {
      swift_unknownObjectRetain();

      type metadata accessor for SpeakerCapability();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return 0;
}

uint64_t (*sub_2698E57B0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void)))(void)
{
  if (*(*(v3 + 16) + 16))
  {

    sub_2698D2184(a1);
    if (v7)
    {
      swift_unknownObjectRetain();

      a2(0);
      if (swift_dynamicCastClass())
      {
        a3();
        OUTLINED_FUNCTION_1_9();
        swift_unknownObjectRelease();
        return a3;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return 0;
}

uint64_t Capabilities.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t CapabilitiesBuilder.audioPlaybackSupportStatus.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t CapabilitiesBuilder.videoPlaybackSupportStatus.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t CapabilitiesBuilder.appLaunchSupportStatus.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t CapabilitiesBuilder.seymourRoutingSupportStatus.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t CapabilitiesBuilder.speakerSupportStatusAndQuality.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 64) = result;
  *(v3 + 72) = a2;
  *(v3 + 80) = a3 & 1;
  return result;
}

uint64_t CapabilitiesBuilder.voiceTriggerSupportStatus.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}