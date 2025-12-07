uint64_t sub_2698FD844()
{
  v1 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23VideoPlaybackCapability_primitivesMap);

  v2 = sub_2698D0C90(0xD000000000000026, 0x8000000269909290, v1);

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

void sub_2698FD960(uint64_t a1)
{
  v2 = sub_2698D2A38();
  v3 = 0;
  v15 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23VideoPlaybackCapability_primitivesMap;
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

char *VideoPlaybackCapability.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23VideoPlaybackCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v6.receiver = v1;
  v6.super_class = OUTLINED_FUNCTION_0_16(OBJC_IVAR____TtC27SiriVirtualDeviceResolution23VideoPlaybackCapability_key);
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2698D1724(a1);

  if (!*(*&v4[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23VideoPlaybackCapability_primitivesMap] + 16))
  {

    return 0;
  }

  return v4;
}

id VideoPlaybackCapability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VideoPlaybackCapability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoPlaybackCapability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_16@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *v3 = 0x6669636570736E55;
  v3[1] = 0xEB00000000646569;

  return type metadata accessor for VideoPlaybackCapability();
}

uint64_t sub_2698FE070()
{
  v0 = CapabilityKey.rawValue.getter();
  v2 = v1;
  if (v0 == CapabilityKey.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_269903FAC();
  }

  return v5 & 1;
}

SiriVirtualDeviceResolution::DeviceUnitCategory_optional __swiftcall DeviceUnitCategory.init(accessoryType:)(Swift::String accessoryType)
{
  object = accessoryType._object;
  countAndFlagsBits = accessoryType._countAndFlagsBits;
  v4 = v1;
  if (qword_28033E180 != -1)
  {
    swift_once();
  }

  v5 = off_28033EB20;
  if (!*(off_28033EB20 + 2))
  {

    goto LABEL_7;
  }

  v6 = sub_2698D1D34(countAndFlagsBits, object);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_7:
    v12 = 0;
    v11 = 1;
    goto LABEL_8;
  }

  v11 = 0;
  v12 = *(v5[7] + 8 * v6);
LABEL_8:
  *v4 = v12;
  *(v4 + 8) = v11;
  result.value.rawValue = v9;
  result.is_nil = v10;
  return result;
}

void sub_2698FE1C4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

uint64_t sub_2698FE21C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v29 = MEMORY[0x277D84FA0];
  if (*v2)
  {
    v17 = sub_26990390C();
    OUTLINED_FUNCTION_0_17(v17, v18, v19, v20);

    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v25 = sub_26990390C();
      OUTLINED_FUNCTION_0_17(v25, v26, v27, v28);

      if ((v3 & 8) == 0)
      {
        return v29;
      }

      goto LABEL_5;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v21 = sub_26990390C();
  OUTLINED_FUNCTION_0_17(v21, v22, v23, v24);

  if ((v3 & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v3 & 8) != 0)
  {
LABEL_5:
    v4 = sub_26990390C();
    OUTLINED_FUNCTION_0_17(v4, v5, v6, v7);

    v8 = sub_26990390C();
    OUTLINED_FUNCTION_0_17(v8, v9, v10, v11);

    v12 = sub_26990390C();
    OUTLINED_FUNCTION_0_17(v12, v13, v14, v15);
  }

  return v29;
}

void *sub_2698FE32C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033EB70, "'");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269907A20;
  *(inited + 32) = sub_26990390C();
  *(inited + 40) = v1;
  *(inited + 48) = 4;
  *(inited + 56) = sub_26990390C();
  *(inited + 64) = v2;
  *(inited + 72) = 1;
  *(inited + 80) = sub_26990390C();
  *(inited + 88) = v3;
  *(inited + 96) = 2;
  *(inited + 104) = sub_26990390C();
  *(inited + 112) = v4;
  *(inited + 120) = 8;
  *(inited + 128) = sub_26990390C();
  *(inited + 136) = v5;
  *(inited + 144) = 8;
  *(inited + 152) = sub_26990390C();
  *(inited + 160) = v6;
  *(inited + 168) = 8;
  result = sub_2699038BC();
  off_28033EB20 = result;
  return result;
}

void *sub_2698FE46C()
{
  sub_2698FFCDC();
  result = sub_2699038BC();
  off_28033EB28 = result;
  return result;
}

unint64_t DeviceUnitCategory.description.getter()
{
  v1 = *v0;
  v21 = MEMORY[0x277D84FA0];
  if (qword_28033E188 != -1)
  {
LABEL_17:
    swift_once();
  }

  v2 = off_28033EB28;
  v3 = off_28033EB28 + 64;
  v4 = 1 << *(off_28033EB28 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(off_28033EB28 + 8);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_10:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v8 << 6);
    if ((*(v2[6] + 8 * v11) & ~v1) == 0)
    {
      v12 = (v2[7] + 16 * v11);
      v14 = *v12;
      v13 = v12[1];

      sub_2698FE928(&v19, v14, v13);
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *&v3[8 * v9];
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  sub_269903D4C();

  v19 = 0xD000000000000015;
  v20 = 0x8000000269909380;
  if (*(v21 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033EB30, &qword_269907A40);
    sub_2698FEA74();
    sub_2698E42D4();
    v15 = sub_2699039BC();
    v17 = v16;
  }

  else
  {

    v17 = 0xE300000000000000;
    v15 = 7104878;
  }

  MEMORY[0x26D647ED0](v15, v17);

  MEMORY[0x26D647ED0](32032, 0xE200000000000000);
  return v19;
}

uint64_t sub_2698FE748@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_2698FE778@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

SiriVirtualDeviceResolution::DeviceUnitCategory sub_2698FE84C@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = DeviceUnitCategory.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2698FE88C@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceUnitCategory.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2698FE8C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_269907A30;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_2698FE928(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_26990404C();
  sub_26990394C();
  v8 = sub_26990408C();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_269903FAC() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_2698FF550(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

unint64_t sub_2698FEA74()
{
  result = qword_28033EB38;
  if (!qword_28033EB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033EB30, &qword_269907A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033EB38);
  }

  return result;
}

unint64_t sub_2698FEADC()
{
  result = qword_28033EB40;
  if (!qword_28033EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033EB40);
  }

  return result;
}

unint64_t sub_2698FEB34()
{
  result = qword_28033EB48;
  if (!qword_28033EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033EB48);
  }

  return result;
}

unint64_t sub_2698FEB88()
{
  result = qword_28033EB50;
  if (!qword_28033EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033EB50);
  }

  return result;
}

unint64_t sub_2698FEBE0()
{
  result = qword_28033EB58;
  if (!qword_28033EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033EB58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceUnitCategory(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DeviceUnitCategory(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_2698FEC8C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_269903CBC();

    if (v9)
    {

      sub_2698DC698();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
    }

    else
    {
      result = sub_269903CAC();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_2698FEE90(v7, result + 1);
        v17 = *(v16 + 16);
        if (*(v16 + 24) <= v17)
        {
          sub_2698FF2A8(v17 + 1);
        }

        v18 = v8;
        sub_2698FF4CC(v18, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    sub_2698DC698();
    v11 = sub_269903BDC();
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *v3;
        v18 = a2;
        sub_2698FF6B8(v18, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v23;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = sub_269903BEC();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v20 = *(*(v6 + 48) + 8 * v13);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  return result;
}

uint64_t sub_2698FEE90(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E560, &unk_269906900);
    v2 = sub_269903D1C();
    v15 = v2;
    sub_269903C9C();
    while (1)
    {
      if (!sub_269903CCC())
      {

        return v2;
      }

      sub_2698DC698();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_2698FF2A8(v3 + 1);
      }

      v2 = v15;
      result = sub_269903BDC();
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2698FF04C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033EB60, " '");
  result = sub_269903D0C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_2698FE8C4(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_26990404C();
    sub_26990394C();
    result = sub_26990408C();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2698FF2A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E560, &unk_269906900);
  result = sub_269903D0C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_2698FE8C4(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_269903BDC();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_2698FF4CC(uint64_t a1, uint64_t a2)
{
  sub_269903BDC();
  result = sub_269903C8C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_2698FF550(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2698FF04C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_2698FFAA8(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_26990404C();
      sub_26990394C();
      v16 = sub_26990408C();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_269903FAC() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_2698FF800();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_269903FDC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

unint64_t sub_2698FF6B8(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2698FF2A8(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_2698FFD30(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = sub_269903BDC();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_2698DC698();
        v14 = *(*(v12 + 48) + 8 * a2);
        v15 = sub_269903BEC();

        if (v15)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_2698FF958();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_269903FDC();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void sub_2698FF800()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033EB60, " '");
  v2 = *v0;
  v3 = sub_269903CFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

id sub_2698FF958()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E560, &unk_269906900);
  v2 = *v0;
  v3 = sub_269903CFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2698FFAA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033EB60, " '");
  result = sub_269903D0C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_26990404C();

        sub_26990394C();
        result = sub_26990408C();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_2698FFCDC()
{
  result = qword_28033EB68;
  if (!qword_28033EB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033EB68);
  }

  return result;
}

uint64_t sub_2698FFD30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E560, &unk_269906900);
  result = sub_269903D0C();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_269903BDC();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v24;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

BOOL OUTLINED_FUNCTION_0_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_2698FE928(va, a1, a2);
}

uint64_t sub_269900000()
{
  v1 = (v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution24SeymourRoutingCapability_key);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_2699000C8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution24SeymourRoutingCapability_key);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

double sub_269900128(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2699000C8(v1, v2);
}

id SeymourRoutingCapability.init(status:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution24SeymourRoutingCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v10.receiver = v1;
  v10.super_class = OUTLINED_FUNCTION_0_18(OBJC_IVAR____TtC27SiriVirtualDeviceResolution24SeymourRoutingCapability_key);
  v4 = objc_msgSendSuper2(&v10, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E1A8, qword_269905F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269905F20;
  *(inited + 32) = 0xD000000000000027;
  *(inited + 40) = 0x80000002699093A0;
  objc_allocWithZone(type metadata accessor for BooleanCapabilityPrimitive());
  v6 = v4;
  *(inited + 48) = sub_2698DBE0C(a1);
  v7 = sub_2699038BC();
  v8 = sub_2698D0418(v7);

  sub_2698D0AA4(3, v8);

  return v6;
}

uint64_t sub_2699003B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution24SeymourRoutingCapability_primitivesMap);

  v2 = sub_2698D0C90(0xD000000000000027, 0x80000002699093A0, v1);

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

void sub_2699004CC(uint64_t a1)
{
  v2 = sub_2698D2A38();
  v3 = 0;
  v15 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution24SeymourRoutingCapability_primitivesMap;
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

    OUTLINED_FUNCTION_1_15();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_1_15();
    if ((sub_26990399C() & 1) == 0 || (OUTLINED_FUNCTION_1_15(), v9 = sub_26990395C(), , v10 = sub_2698D0124(v9, v7, v8), MEMORY[0x26D647E90](v10), , v11 = sub_269903F0C(), , v11))
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

char *SeymourRoutingCapability.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution24SeymourRoutingCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v6.receiver = v1;
  v6.super_class = OUTLINED_FUNCTION_0_18(OBJC_IVAR____TtC27SiriVirtualDeviceResolution24SeymourRoutingCapability_key);
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2698D1738(a1);

  if (!*(*&v4[OBJC_IVAR____TtC27SiriVirtualDeviceResolution24SeymourRoutingCapability_primitivesMap] + 16))
  {

    return 0;
  }

  return v4;
}

id SeymourRoutingCapability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SeymourRoutingCapability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeymourRoutingCapability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_18@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *v3 = 0x6669636570736E55;
  v3[1] = 0xEB00000000646569;

  return type metadata accessor for SeymourRoutingCapability();
}

id SVDCapabilityDescriptionsGroupedByCapabilityKey(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 capabilityKey];
        if ([v9 length])
        {
          v10 = [v2 objectForKey:v9];
          if (!v10)
          {
            v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v2 setObject:v10 forKey:v9];
          }

          [v10 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}