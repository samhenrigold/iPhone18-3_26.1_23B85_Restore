uint64_t sub_264B15CF8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_264B15D84(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_264B15D98(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_264B15EEC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v19 = *v17;
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = v19;
      v11[1] = v18;
      if (v14 == v10)
      {
        v23 = v18;
        goto LABEL_24;
      }

      v11 += 2;
      v20 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_264B16058()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264B160D0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_264B1612C()
{
  sub_2649CB5C0(v0 + 16, v19);
  v1 = __swift_mutable_project_boxed_opaque_existential_1(v19, v19[3]);
  MEMORY[0x28223BE20](v1, v1);
  v3 = (&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v3);
  v5 = *v3;
  v6 = type metadata accessor for SpringBoardUIServicesBackedSceneInteractor();
  v18[3] = v6;
  v18[4] = &off_28765B720;
  v18[0] = v5;
  type metadata accessor for SpringBoardBackedSystemEventConsumer();
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v18, v6);
  MEMORY[0x28223BE20](v8, v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v16 = v6;
  v17 = &off_28765B720;
  *&v15 = v12;
  swift_defaultActor_initialize();
  sub_2649D2AAC(&v15, v7 + 112);
  __swift_destroy_boxed_opaque_existential_0(v18);
  __swift_destroy_boxed_opaque_existential_0(v19);
  sub_264B16330();
  return v7;
}

uint64_t sub_264B16304@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264B1612C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_264B16330()
{
  result = qword_27FF8CBE0;
  if (!qword_27FF8CBE0)
  {
    type metadata accessor for SpringBoardBackedSystemEventConsumer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CBE0);
  }

  return result;
}

uint64_t static ControlMessageSession.SessionError.== infix(_:_:)(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
LABEL_16:
        if (v3 <= 4)
        {
          goto LABEL_14;
        }

        goto LABEL_12;
      }

      if (v3 == 1)
      {
        goto LABEL_12;
      }
    }

    else if (!v3)
    {
      goto LABEL_12;
    }

LABEL_14:
    v4 = 0;
    goto LABEL_15;
  }

  if (v2 == 2)
  {
    if (v3 == 2)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (v2 == 3)
  {
    goto LABEL_14;
  }

  if (v2 != 4)
  {
    goto LABEL_16;
  }

  if (v3 != 4)
  {
    goto LABEL_14;
  }

LABEL_12:
  v4 = 1;
LABEL_15:
  sub_264A78FDC(*a1);
  sub_264A78FDC(v3);
  sub_264A78FEC(v2);
  sub_264A78FEC(v3);
  return v4;
}

uint64_t sub_264B16440(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 != 1)
        {
          goto LABEL_14;
        }

        goto LABEL_12;
      }

LABEL_16:
      if (v3 < 5)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    if (!v3)
    {
      goto LABEL_12;
    }

LABEL_14:
    v4 = 0;
    goto LABEL_15;
  }

  if (v2 == 2)
  {
    if (v3 == 2)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (v2 == 3)
  {
    goto LABEL_14;
  }

  if (v2 != 4)
  {
    goto LABEL_16;
  }

  if (v3 != 4)
  {
    goto LABEL_14;
  }

LABEL_12:
  v4 = 1;
LABEL_15:
  sub_264A78FDC(*a1);
  sub_264A78FDC(v3);
  sub_264A78FEC(v2);
  sub_264A78FEC(v3);
  return v4;
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit21ControlMessageSessionC0F5ErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_264B16510(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264B16568(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

__n128 sub_264B165F4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_264B40E64();
  sub_264B40C64();
  v7 = sub_264B40D94();
  *a3 = sub_264B16974;
  *(a3 + 8) = v6;
  *(a3 + 80) = v13;
  *(a3 + 96) = v14;
  *(a3 + 112) = v15;
  *(a3 + 16) = v9;
  *(a3 + 32) = v10;
  result = v12;
  *(a3 + 48) = v11;
  *(a3 + 64) = v12;
  *(a3 + 128) = v7;
  return result;
}

uint64_t sub_264B166D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_264B40C24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v11[1] = a2;
  swift_getKeyPath();
  (*(v5 + 16))(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88B28, &qword_264B57EE0);
  sub_2649CB4C8(&qword_27FF8CBE8, &qword_27FF88B28, &qword_264B57EE0, MEMORY[0x277D83980]);
  sub_264A10B60();
  sub_2649E22F0();
  return sub_264B40E54();
}

void *sub_264B168B4@<X0>(double *a2@<X8>)
{
  sub_264B40C14();
  v4 = v3;
  v6 = v5;
  type metadata accessor for Stroke(0);

  result = sub_264B40E24();
  *a2 = v8;
  *(a2 + 1) = v9;
  *(a2 + 2) = v4;
  *(a2 + 3) = v6;
  return result;
}

uint64_t sub_264B1693C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264B1697C()
{
  v1 = sub_264B40C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void *sub_264B16A04@<X0>(double *a2@<X8>)
{
  sub_264B40C24();

  return sub_264B168B4(a2);
}

unint64_t sub_264B16A88()
{
  result = qword_27FF8CBF0;
  if (!qword_27FF8CBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8CBF8, &qword_264B57EE8);
    sub_264B16B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CBF0);
  }

  return result;
}

unint64_t sub_264B16B14()
{
  result = qword_27FF8CC00;
  if (!qword_27FF8CC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8CC08, &qword_264B57EF0);
    sub_264B16BA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CC00);
  }

  return result;
}

unint64_t sub_264B16BA0()
{
  result = qword_27FF8CC10;
  if (!qword_27FF8CC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8CC18, &qword_264B57EF8);
    sub_2649CB4C8(&qword_27FF8CC20, &qword_27FF8CC28, &unk_264B57F00, MEMORY[0x277CDF7D8]);
    sub_264A347C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CC10);
  }

  return result;
}

Swift::UInt64_optional __swiftcall TelemetryProvider.signpostEventIfNeeded(_:_:)(ScreenSharingKit::SignpostCode a1, UIEvent a2)
{
  v3 = OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_signpostConsumer;
  v4 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_signpostConsumer);
  if (v4)
  {
    v5 = *a1;
    [(objc_class *)a2.super.isa timestamp];
    v6 = sub_264B403F4();
    v7 = *(v2 + v3);
    if (v7 && v6)
    {
      v8 = v6;
      __swift_project_boxed_opaque_existential_1((v7 + 24), *(v7 + 48));
      v10 = v5;

      sub_264A560D4(&v10, v8, 0, 0, 0);

      v6 = v8;
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = v4 == 0;
  result.value = v6;
  result.is_nil = v9;
  return result;
}

Swift::UInt64 __swiftcall UIEvent.extractEventID()()
{
  [v0 timestamp];

  return sub_264B403F4();
}

uint64_t Stroke.__allocating_init(id:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__points) = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__clearStroke) = 0;
  sub_264B401A4();
  v3 = OBJC_IVAR____TtC16ScreenSharingKit6Stroke_id;
  v4 = sub_264B40104();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t Stroke.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16ScreenSharingKit6Stroke_id;
  v4 = sub_264B40104();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_264B16E9C()
{
  swift_getKeyPath();
  sub_264B17F1C(&qword_27FF88B20, type metadata accessor for Stroke, &protocol conformance descriptor for Stroke);
  sub_264B40174();
}

uint64_t sub_264B16F48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_264B17F1C(&qword_27FF88B20, type metadata accessor for Stroke, &protocol conformance descriptor for Stroke);
  sub_264B40174();

  *a2 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__points);
}

uint64_t sub_264B16FFC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_264B17F1C(&qword_27FF88B20, type metadata accessor for Stroke, &protocol conformance descriptor for Stroke);
  sub_264B40164();
}

uint64_t sub_264B170C8()
{
  swift_getKeyPath();
  sub_264B17F1C(&qword_27FF88B20, type metadata accessor for Stroke, &protocol conformance descriptor for Stroke);
  sub_264B40174();

  return *(v0 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__clearStroke);
}

uint64_t sub_264B17170@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_264B17F1C(&qword_27FF88B20, type metadata accessor for Stroke, &protocol conformance descriptor for Stroke);
  sub_264B40174();

  *a2 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__clearStroke);
  return result;
}

uint64_t sub_264B17248(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__clearStroke) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__clearStroke) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_264B17F1C(&qword_27FF88B20, type metadata accessor for Stroke, &protocol conformance descriptor for Stroke);
    sub_264B40164();
  }

  return result;
}

uint64_t Stroke.init(id:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__points) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__clearStroke) = 0;
  sub_264B401A4();
  v3 = OBJC_IVAR____TtC16ScreenSharingKit6Stroke_id;
  v4 = sub_264B40104();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

CGMutablePathRef sub_264B17410()
{
  v1 = sub_264B40C44();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Mutable = CGPathCreateMutable();
  swift_getKeyPath();
  v7 = OBJC_IVAR____TtC16ScreenSharingKit6Stroke___observationRegistrar;
  v35 = v0;
  v8 = sub_264B17F1C(&qword_27FF88B20, type metadata accessor for Stroke, &protocol conformance descriptor for Stroke);
  sub_264B40174();

  v33 = OBJC_IVAR____TtC16ScreenSharingKit6Stroke__points;
  if (!*(*(v0 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__points) + 16))
  {
    return Mutable;
  }

  v9 = type metadata accessor for IdentifiablePoint(0);
  v24 = *(v9 - 8);
  v10 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v25 = v9;
  v11 = *MEMORY[0x277CDFA88];
  v12 = *(v2 + 104);
  v29 = v2 + 104;
  v30 = v12;
  v12(v5, v11, v1);
  CGPoint.locationFromPointPercentage(in:layoutDirection:)(v5);
  v13 = *(v2 + 8);
  v31 = v2 + 8;
  v23 = v13;
  v13(v5, v1);
  v35 = 0x3FF0000000000000;
  v36 = 0;
  v37 = 0;
  v38 = 0x3FF0000000000000;
  v39 = 0;
  v40 = 0;
  sub_264B414D4();
  swift_getKeyPath();
  v34 = v0;
  v26 = v7;
  v32 = v8;
  sub_264B40174();

  v22 = *(*(v0 + v33) + 16);
  if (v22 == 1)
  {
LABEL_8:
    swift_getKeyPath();
    v34 = v0;
    sub_264B40174();

    if (*(*(v0 + v33) + 16))
    {
      v30(v5, v11, v1);
      CGPoint.locationFromPointPercentage(in:layoutDirection:)(v5);
      v23(v5, v1);
      sub_264B414E4();
    }

    return Mutable;
  }

  if (v22)
  {
    v15 = 1;
    v21 = Mutable;
    v20 = v10;
    while (1)
    {
      v16 = v11;
      v28 = v15;
      v17 = v15 - 1;
      swift_getKeyPath();
      v34 = v0;
      sub_264B40174();

      if (v17 >= *(*(v0 + v33) + 16))
      {
        break;
      }

      v27 = *(v24 + 72);
      v30(v5, v16, v1);
      CGPoint.locationFromPointPercentage(in:layoutDirection:)(v5);
      v18 = v23;
      v23(v5, v1);
      swift_getKeyPath();
      v34 = v0;
      sub_264B40174();

      if (v28 >= *(*(v0 + v33) + 16))
      {
        goto LABEL_12;
      }

      v19 = v28 + 1;
      v30(v5, v16, v1);
      CGPoint.locationFromPointPercentage(in:layoutDirection:)(v5);
      v18(v5, v1);
      Mutable = v21;
      sub_264B414C4();
      v15 = v19;
      v11 = v16;
      if (v22 == v19)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for Stroke(uint64_t a1)
{
  result = qword_27FF8CC48;
  if (!qword_27FF8CC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264B17A40(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for IdentifiablePoint(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v23 - v14;
  sub_264B400F4();
  v16 = &v15[*(v7 + 28)];
  *v16 = a1;
  v16[1] = a2;
  sub_2649D86F8(v15, v12);
  swift_getKeyPath();
  v24 = v3;
  sub_264B17F1C(&qword_27FF88B20, type metadata accessor for Stroke, &protocol conformance descriptor for Stroke);
  sub_264B40174();

  v24 = v3;
  swift_getKeyPath();
  sub_264B40194();

  v17 = OBJC_IVAR____TtC16ScreenSharingKit6Stroke__points;
  v18 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__points);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v17) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_2649D7C40(0, v18[2] + 1, 1, v18);
    *(v3 + v17) = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_2649D7C40((v20 > 1), v21 + 1, 1, v18);
  }

  v18[2] = v21 + 1;
  sub_2649D875C(v12, v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v21);
  *(v3 + v17) = v18;
  v24 = v3;
  swift_getKeyPath();
  sub_264B40184();

  return sub_2649D8910(v15);
}

uint64_t Stroke.deinit()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit6Stroke_id;
  v2 = sub_264B40104();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC16ScreenSharingKit6Stroke___observationRegistrar;
  v4 = sub_264B401B4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t Stroke.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit6Stroke_id;
  v2 = sub_264B40104();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC16ScreenSharingKit6Stroke___observationRegistrar;
  v4 = sub_264B401B4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_264B17E58@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16ScreenSharingKit6Stroke_id;
  v5 = sub_264B40104();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_264B17F1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264B17F6C(uint64_t a1)
{
  result = sub_264B40104();
  if (v2 <= 0x3F)
  {
    result = sub_264B401B4();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_264B18108()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__points) = *(v0 + 24);
}

uint64_t sub_264B1814C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_264B181A8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 16);
  type metadata accessor for AccessibilityBackedDrawEventConsumer(0);
  swift_allocObject();
  v4 = v3;
  v5 = sub_264A5F37C(v3);
  result = sub_264B1820C();
  *a1 = v5;
  a1[1] = result;
  return result;
}

unint64_t sub_264B1820C()
{
  result = qword_27FF8A1B8;
  if (!qword_27FF8A1B8)
  {
    type metadata accessor for AccessibilityBackedDrawEventConsumer(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A1B8);
  }

  return result;
}

uint64_t DemoModeUserDefaultsPrimitives.__allocating_init()()
{
  v0 = swift_allocObject();
  DemoModeUserDefaultsPrimitives.init()();
  return v0;
}

uint64_t DemoModeUserDefaultsPrimitives.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B46DF0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x8000000264B5A6C0;
  v2 = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 72) = v2;
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x8000000264B5A720;
  *(inited + 96) = 0;
  *(inited + 120) = v2;
  *(inited + 128) = 0xD000000000000019;
  *(inited + 136) = 0x8000000264B5A700;
  *(inited + 168) = v2;
  *(inited + 144) = 0;
  v3 = sub_264A24308(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89220, &qword_264B48430);
  swift_arrayDestroy();
  *(v0 + 16) = v3;
  return v0;
}

uint64_t sub_264B183A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16))
  {

    v6 = sub_264A20ACC(a1, a2);
    if (v7)
    {
      sub_2649C964C(*(v5 + 56) + 32 * v6, v10);

      if (swift_dynamicCast())
      {
        return v9;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_264B1846C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_264A20ACC(a1, a2);
  if ((v7 & 1) == 0)
  {

    return 0;
  }

  sub_2649C964C(*(v5 + 56) + 32 * v6, v10);

  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t DemoModeUserDefaultsPrimitives.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_264B18600(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16))
  {

    v6 = sub_264A20ACC(a1, a2);
    if (v7)
    {
      sub_2649C964C(*(v5 + 56) + 32 * v6, v10);

      if (swift_dynamicCast())
      {
        return v9;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t NetworkMonitorStatus.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

unint64_t sub_264B1882C()
{
  result = qword_27FF8CC58;
  if (!qword_27FF8CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CC58);
  }

  return result;
}

uint64_t dispatch thunk of ControlTransport.send(_:reliability:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 40) + **(a5 + 40));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2649CD850;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t SignpostConsumer.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  return v0;
}

uint64_t SignpostConsumer.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return swift_deallocClassInstance();
}

void __swiftcall MobileGestaltBackedLocalDeviceInformationPrimitives.init()(ScreenSharingKit::MobileGestaltBackedLocalDeviceInformationPrimitives *__return_ptr retstr)
{
  v2 = sub_264B41014();
  v3 = MGGetSInt32Answer();

  v4 = sub_264B41014();
  v5 = MGGetStringAnswer();

  if (!v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = sub_264B41044();
  v8 = v7;

  v9 = sub_264B41014();
  v10 = MGGetStringAnswer();

  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = sub_264B41044();
  v13 = v12;

  v14 = sub_264B41014();
  v15 = MGGetStringAnswer();

  if (!v15)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v16 = sub_264B41044();
  v18 = v17;

  if (v16 == 0x312C393163614D69 && v18 == 0xE800000000000000 || (sub_264B41AA4() & 1) != 0 || v16 == 0x322C393163614D69 && v18 == 0xE800000000000000)
  {

    v19 = 0;
  }

  else
  {
    v21 = sub_264B41AA4();

    v19 = v21 ^ 1;
  }

  v20 = 2 * (v3 == 1);
  if (v3 == 9)
  {
    v20 = ScreenSharingKit_Platform_mac;
  }

  retstr->platform = v20;
  retstr->osBuild._countAndFlagsBits = v6;
  retstr->osBuild._object = v8;
  retstr->userAssignedDeviceName._countAndFlagsBits = v11;
  retstr->userAssignedDeviceName._object = v13;
  retstr->isDeviceSupported = v19 & 1;
}

uint64_t MobileGestaltBackedLocalDeviceInformationPrimitives.osBuild.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t MobileGestaltBackedLocalDeviceInformationPrimitives.userAssignedDeviceName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_264B18DE8()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_264B18E20()
{
  v1 = *(v0 + 24);

  return v1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_264B18E64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_264B18EAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id AnnotationServicesClient.__allocating_init(interruptionHandler:)(uint64_t a1, uint64_t a2)
{
  v13[3] = &type metadata for ConcreteAXUIClientProvider;
  v13[4] = &off_287657A80;
  v5 = objc_allocWithZone(v2);
  __swift_mutable_project_boxed_opaque_existential_1(v13, &type metadata for ConcreteAXUIClientProvider);
  v12[3] = &type metadata for ConcreteAXUIClientProvider;
  v12[4] = &off_287657A80;
  v6 = &v5[OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_serviceName];
  *v6 = 0xD000000000000020;
  *(v6 + 1) = 0x8000000264B5CE30;
  v7 = &v5[OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_screenSharingClient];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v8 = &v5[OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_interruptionHandler];
  *v8 = a1;
  *(v8 + 1) = a2;
  sub_2649CB5C0(v12, &v5[OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_screenSharingClientProvider]);
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v12);
  __swift_destroy_boxed_opaque_existential_0(v13);
  return v9;
}

uint64_t sub_264B19024()
{
  v1 = *(v0 + 184);
  v2 = OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_screenSharingClient;
  *(v0 + 192) = OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_screenSharingClient;
  swift_beginAccess();
  sub_264B198A4(v1 + v2, v0 + 16);
  v3 = *(v0 + 40);
  sub_2649D04D4(v0 + 16, &qword_27FF8CC80, &unk_264B58268);
  if (v3)
  {
    if (qword_27FF883F0 != -1)
    {
      swift_once();
    }

    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FF8AE28);
    v5 = sub_264B40944();
    v6 = sub_264B41494();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2649C6000, v5, v6, "Annotation service already started", v7, 2u);
      MEMORY[0x266749940](v7, -1, -1);
    }

    sub_2649E24BC();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
LABEL_13:
    v21 = *(v0 + 8);

    return v21();
  }

  v9 = *(v0 + 184);
  v10 = type metadata accessor for ConcreteAXUIClient();
  v11 = [objc_allocWithZone(v10) init];
  *(v0 + 80) = v10;
  *(v0 + 88) = &off_28765D808;
  *(v0 + 56) = v11;
  __swift_project_boxed_opaque_existential_1((v0 + 56), v10);
  sub_264AB0DC4(*(v9 + OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_interruptionHandler), *(v9 + OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_interruptionHandler + 8));
  v23 = *(*__swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80)) + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_screenSharingClient);
  *(v0 + 200) = v23;
  if (!v23)
  {
    sub_2649E24BC();
    v25 = swift_allocError();
    *v26 = 8;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    if (qword_27FF883F0 != -1)
    {
      swift_once();
    }

    v12 = sub_264B40964();
    __swift_project_value_buffer(v12, qword_27FF8AE28);
    v13 = v25;
    v14 = sub_264B40944();
    v15 = sub_264B41494();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      v18 = v25;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_2649C6000, v14, v15, "Failed to start Annotation Service: %{public}@", v16, 0xCu);
      sub_2649D04D4(v17, &unk_27FF89880, &unk_264B46B20);
      MEMORY[0x266749940](v17, -1, -1);
      MEMORY[0x266749940](v16, -1, -1);
    }

    sub_2649E24BC();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();

    goto LABEL_13;
  }

  *(v0 + 224) = 0;
  v23;
  v24 = swift_task_alloc();
  *(v0 + 208) = v24;
  *v24 = v0;
  v24[1] = sub_264B19464;

  return sub_264AB130C((v0 + 224), 0);
}

uint64_t sub_264B19464()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_264B196D8;
  }

  else
  {
    v2 = sub_264B19578;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264B19578()
{
  if (qword_27FF883F0 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FF8AE28);
  v2 = sub_264B40944();
  v3 = sub_264B41484();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Client received Screen sharing start success callback", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v6 = *(v0 + 184);
  v5 = *(v0 + 192);

  sub_2649CB5C0(v0 + 56, v0 + 96);
  swift_beginAccess();
  sub_264B1B900(v0 + 96, v6 + v5);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_264B196D8()
{
  v1 = *(v0 + 216);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  if (qword_27FF883F0 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AE28);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to start Annotation Service: %{public}@", v6, 0xCu);
    sub_2649D04D4(v7, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  sub_2649E24BC();
  swift_allocError();
  *v10 = 0;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_264B198A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CC80, &unk_264B58268);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264B19934()
{
  v1 = *(v0 + 184);
  v2 = OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_screenSharingClient;
  swift_beginAccess();
  sub_264B198A4(v1 + v2, v0 + 56);
  if (*(v0 + 80))
  {
    sub_2649D2AAC((v0 + 56), v0 + 16);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    swift_beginAccess();
    sub_264B1B900(v0 + 96, v1 + v2);
    swift_endAccess();
    v3 = *(*__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_screenSharingClient);
    *(v0 + 192) = v3;
    if (v3)
    {
      *(v0 + 232) = 1;
      v3;
      v4 = swift_task_alloc();
      *(v0 + 200) = v4;
      *v4 = v0;
      v4[1] = sub_264B19CAC;

      return sub_264AB130C((v0 + 232), 0);
    }

    sub_2649E24BC();
    v7 = swift_allocError();
    *v8 = 8;
    swift_willThrow();
    if (qword_27FF883F0 != -1)
    {
      swift_once();
    }

    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FF8AE28);
    v10 = v7;
    v11 = sub_264B40944();
    v12 = sub_264B41494();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      v15 = v7;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_2649C6000, v11, v12, "Failed to stop Annotation Service: %{public}@", v13, 0xCu);
      sub_2649D04D4(v14, &unk_27FF89880, &unk_264B46B20);
      MEMORY[0x266749940](v14, -1, -1);
      MEMORY[0x266749940](v13, -1, -1);
    }

    swift_allocError();
    *v17 = 2;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  else
  {
    sub_2649D04D4(v0 + 56, &qword_27FF8CC80, &unk_264B58268);
    sub_2649E24BC();
    swift_allocError();
    *v6 = 4;
    swift_willThrow();
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_264B19CAC()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_264B19F78;
  }

  else
  {
    v2 = sub_264B19DC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264B19DC0()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_264B19E64;

  return sub_264AB0FB0();
}

uint64_t sub_264B19E64()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_264B1A268;
  }

  else
  {
    v2 = sub_264B1A148;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264B19F78()
{
  v1 = *(v0 + 208);
  if (qword_27FF883F0 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AE28);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to stop Annotation Service: %{public}@", v6, 0xCu);
    sub_2649D04D4(v7, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  sub_2649E24BC();
  swift_allocError();
  *v10 = 2;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_264B1A148()
{
  if (qword_27FF883F0 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FF8AE28);
  v2 = sub_264B40944();
  v3 = sub_264B41484();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Client received Screen Sharing Service stop success callback", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_264B1A268()
{
  v1 = v0[28];
  if (qword_27FF883F0 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AE28);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to stop Annotation Service: %{public}@", v6, 0xCu);
    sub_2649D04D4(v7, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  sub_2649E24BC();
  swift_allocError();
  *v10 = 2;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v11 = v0[1];

  return v11();
}

uint64_t AnnotationServicesClient.sendTapEvent(_:_:)(uint64_t a1, double a2, double a3)
{
  *(v4 + 432) = a1;
  *(v4 + 440) = v3;
  *(v4 + 416) = a2;
  *(v4 + 424) = a3;
  return MEMORY[0x2822009F8](sub_264B1A454, 0, 0);
}

uint64_t sub_264B1A454()
{
  v1 = *(v0 + 440);
  v2 = OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_screenSharingClient;
  swift_beginAccess();
  sub_264B198A4(v1 + v2, v0 + 304);
  if (*(v0 + 328))
  {
    sub_2649D2AAC((v0 + 304), v0 + 264);
    if (qword_27FF883F0 != -1)
    {
      swift_once();
    }

    v3 = sub_264B40964();
    *(v0 + 448) = __swift_project_value_buffer(v3, qword_27FF8AE28);
    v4 = sub_264B40944();
    v5 = sub_264B414B4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 432);
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v6;
      _os_log_impl(&dword_2649C6000, v4, v5, "Sending a tap, eventID = %llu", v7, 0xCu);
      MEMORY[0x266749940](v7, -1, -1);
    }

    v8 = *(v0 + 432);
    v10 = *(v0 + 416);
    v9 = *(v0 + 424);

    v11 = __swift_project_boxed_opaque_existential_1((v0 + 264), *(v0 + 288));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89188, &unk_264B46F70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_264B46DF0;
    *(v0 + 368) = 0xD000000000000012;
    *(v0 + 376) = 0x8000000264B59970;
    sub_264B416F4();
    v13 = MEMORY[0x277D85048];
    *(inited + 96) = MEMORY[0x277D85048];
    *(inited + 72) = v10;
    *(v0 + 384) = 0xD000000000000012;
    *(v0 + 392) = 0x8000000264B59990;
    sub_264B416F4();
    *(inited + 168) = v13;
    *(inited + 144) = v9;
    *(v0 + 400) = 0x656449746E657665;
    *(v0 + 408) = 0xEF7265696669746ELL;
    sub_264B416F4();
    *(inited + 240) = MEMORY[0x277D84D38];
    *(inited + 216) = v8;
    v14 = sub_264A240D0(inited);
    *(v0 + 456) = v14;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89190, &qword_264B48240);
    swift_arrayDestroy();
    v15 = *(*v11 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_screenSharingClient);
    *(v0 + 464) = v15;
    if (v15)
    {
      *(v0 + 488) = 2;
      v15;
      v16 = swift_task_alloc();
      *(v0 + 472) = v16;
      *v16 = v0;
      v16[1] = sub_264B1A968;

      return sub_264AB130C((v0 + 488), v14);
    }

    sub_2649E24BC();
    v19 = swift_allocError();
    *v20 = 8;
    swift_willThrow();
    v21 = v19;
    v22 = sub_264B40944();
    v23 = sub_264B41494();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      v26 = v19;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_2649C6000, v22, v23, "Annotation Service failed to send tap gesture: %{public}@", v24, 0xCu);
      sub_2649D04D4(v25, &unk_27FF89880, &unk_264B46B20);
      MEMORY[0x266749940](v25, -1, -1);
      MEMORY[0x266749940](v24, -1, -1);
    }

    swift_allocError();
    *v28 = 5;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0((v0 + 264));
  }

  else
  {
    sub_2649D04D4(v0 + 304, &qword_27FF8CC80, &unk_264B58268);
    sub_2649E24BC();
    swift_allocError();
    *v18 = 4;
    swift_willThrow();
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_264B1A968()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_264B1AAF8;
  }

  else
  {
    v2 = sub_264B1AA8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264B1AA8C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 264));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264B1AAF8()
{
  v1 = *(v0 + 480);
  v2 = v1;
  v3 = sub_264B40944();
  v4 = sub_264B41494();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2649C6000, v3, v4, "Annotation Service failed to send tap gesture: %{public}@", v5, 0xCu);
    sub_2649D04D4(v6, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  sub_2649E24BC();
  swift_allocError();
  *v9 = 5;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_0((v0 + 264));
  v10 = *(v0 + 8);

  return v10();
}

uint64_t AnnotationServicesClient.sendDragEvent(_:point:telemetryEventID:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v6 + 544) = v5;
  *(v6 + 536) = a3;
  *(v6 + 528) = a5;
  *(v6 + 520) = a4;
  *(v6 + 504) = a1;
  *(v6 + 512) = a2;
  return MEMORY[0x2822009F8](sub_264B1ACB4, 0, 0);
}

uint64_t sub_264B1ACB4()
{
  v1 = *(v0 + 544);
  v2 = OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_screenSharingClient;
  swift_beginAccess();
  sub_264B198A4(v1 + v2, v0 + 376);
  if (*(v0 + 400))
  {
    sub_2649D2AAC((v0 + 376), v0 + 336);
    if (qword_27FF883F0 != -1)
    {
      swift_once();
    }

    v3 = sub_264B40964();
    *(v0 + 552) = __swift_project_value_buffer(v3, qword_27FF8AE28);
    v4 = sub_264B40944();
    v5 = sub_264B414B4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 536);
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v6;
      _os_log_impl(&dword_2649C6000, v4, v5, "Sending a drag, eventID = %llu", v7, 0xCu);
      MEMORY[0x266749940](v7, -1, -1);
    }

    v8 = *(v0 + 536);
    v9 = *(v0 + 528);
    v10 = *(v0 + 520);
    v12 = *(v0 + 504);
    v11 = *(v0 + 512);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89188, &unk_264B46F70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_264B54770;
    *(v0 + 440) = 0xD000000000000010;
    *(v0 + 448) = 0x8000000264B599B0;
    v14 = MEMORY[0x277D837D0];
    sub_264B416F4();
    *(inited + 96) = v14;
    *(inited + 72) = v12;
    *(inited + 80) = v11;
    *(v0 + 456) = 0xD000000000000012;
    *(v0 + 464) = 0x8000000264B59970;

    sub_264B416F4();
    v15 = MEMORY[0x277D85048];
    *(inited + 168) = MEMORY[0x277D85048];
    *(inited + 144) = v10;
    *(v0 + 472) = 0xD000000000000012;
    *(v0 + 480) = 0x8000000264B59990;
    sub_264B416F4();
    *(inited + 240) = v15;
    *(inited + 216) = v9;
    *(v0 + 488) = 0x656449746E657665;
    *(v0 + 496) = 0xEF7265696669746ELL;
    sub_264B416F4();
    *(inited + 312) = MEMORY[0x277D84D38];
    *(inited + 288) = v8;
    v16 = sub_264A240D0(inited);
    *(v0 + 560) = v16;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89190, &qword_264B48240);
    swift_arrayDestroy();
    v17 = *(*__swift_project_boxed_opaque_existential_1((v0 + 336), *(v0 + 360)) + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_screenSharingClient);
    *(v0 + 568) = v17;
    if (v17)
    {
      *(v0 + 592) = 3;
      v17;
      v18 = swift_task_alloc();
      *(v0 + 576) = v18;
      *v18 = v0;
      v18[1] = sub_264B1B208;

      return sub_264AB130C((v0 + 592), v16);
    }

    sub_2649E24BC();
    v21 = swift_allocError();
    *v22 = 8;
    swift_willThrow();
    v23 = v21;
    v24 = sub_264B40944();
    v25 = sub_264B41494();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138543362;
      v28 = v21;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_2649C6000, v24, v25, "Annotation Service failed to send drag gesture: %{public}@", v26, 0xCu);
      sub_2649D04D4(v27, &unk_27FF89880, &unk_264B46B20);
      MEMORY[0x266749940](v27, -1, -1);
      MEMORY[0x266749940](v26, -1, -1);
    }

    swift_allocError();
    *v30 = 6;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  }

  else
  {
    sub_2649D04D4(v0 + 376, &qword_27FF8CC80, &unk_264B58268);
    sub_2649E24BC();
    swift_allocError();
    *v20 = 4;
    swift_willThrow();
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_264B1B208()
{
  *(*v1 + 584) = v0;

  if (v0)
  {
    v2 = sub_264B1B398;
  }

  else
  {
    v2 = sub_264B1B32C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264B1B32C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264B1B398()
{
  v1 = *(v0 + 584);
  v2 = v1;
  v3 = sub_264B40944();
  v4 = sub_264B41494();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2649C6000, v3, v4, "Annotation Service failed to send drag gesture: %{public}@", v5, 0xCu);
    sub_2649D04D4(v6, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  sub_2649E24BC();
  swift_allocError();
  *v9 = 6;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  v10 = *(v0 + 8);

  return v10();
}

id AnnotationServicesClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AnnotationServicesClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264B1B668()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649E0EE4;

  return AnnotationServicesClient.startAnnotationService()();
}

uint64_t sub_264B1B6F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  return AnnotationServicesClient.stopAnnotationService()();
}

uint64_t sub_264B1B788(uint64_t a1, double a2, double a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2649E0EE4;

  return AnnotationServicesClient.sendTapEvent(_:_:)(a1, a2, a3);
}

uint64_t sub_264B1B838(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2649E0EE4;

  return AnnotationServicesClient.sendDragEvent(_:point:telemetryEventID:)(a1, a2, a3, a4, a5);
}

uint64_t sub_264B1B900(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CC80, &unk_264B58268);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PlaybackServer.invalidate(waitsForSession:)(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 121) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A940, &qword_264B4CAE0);
  *(v2 + 48) = v3;
  *(v2 + 56) = *(v3 - 8);
  *(v2 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B1BA7C, 0, 0);
}

uint64_t sub_264B1BA7C()
{
  v1 = v0[5];
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_outgoingStatusEventSubscription))
  {

    sub_264B40994();

    v1 = v0[5];
  }

  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_outgoingAccessibilityMessageSubscription))
  {

    sub_264B40994();

    v1 = v0[5];
  }

  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventCancellationHandle))
  {

    sub_264B41304();

    v1 = v0[5];
  }

  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventCancellationHandle))
  {

    sub_264B41304();

    v1 = v0[5];
  }

  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemEventCancellationHandle))
  {

    sub_264B41304();

    v1 = v0[5];
  }

  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventCancellationHandle))
  {

    sub_264B41304();

    v1 = v0[5];
  }

  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityEventCancellationHandle))
  {

    sub_264B41304();

    v1 = v0[5];
  }

  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventEventCancellationHandle))
  {

    sub_264B41304();

    v1 = v0[5];
  }

  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiEventCancellationHandle))
  {

    sub_264B41304();

    v1 = v0[5];
  }

  v3 = v0[6];
  v2 = v0[7];
  v4 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_bufferedSendingContinuation;
  swift_beginAccess();
  if (!(*(v2 + 48))(v1 + v4, 1, v3))
  {
    v6 = v0[7];
    v5 = v0[8];
    v7 = v0[6];
    (*(v6 + 16))(v5, v1 + v4, v7);
    sub_264B412B4();
    (*(v6 + 8))(v5, v7);
  }

  v8 = v0[5];
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v9 = swift_task_alloc();
  v0[9] = v9;
  *(v9 + 16) = v8;
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_264B1BE04;

  return MEMORY[0x282200740]();
}

void sub_264B1BE04()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
  }

  else
  {
    swift_unownedRelease();
    swift_unownedRelease();

    MEMORY[0x2822009F8](sub_264B1BF5C, 0, 0);
  }
}

uint64_t sub_264B1BF5C()
{
  if (*(v0 + 121) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 96) = v1;
    *v1 = v0;
    v1[1] = sub_264B1C0A8;

    return MEMORY[0x2822007B8]();
  }

  else
  {
    sub_264B41244();
    *(v0 + 112) = sub_264B41234();
    v3 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264B1C344, v3, v2);
  }
}

uint64_t sub_264B1C0A8()
{

  return MEMORY[0x2822009F8](sub_264B1C1A4, 0, 0);
}

uint64_t sub_264B1C1A4()
{
  sub_264B41244();
  *(v0 + 104) = sub_264B41234();
  v2 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B1C238, v2, v1);
}

void sub_264B1C238()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);

  sub_264B22330(v2);
  if (v1)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_264B1C2E4, 0, 0);
  }
}

uint64_t sub_264B1C2E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264B1C344()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 120) = 0;

  sub_264B40A94();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PlaybackServer.targetedDisplayIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  v5 = v2 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventConsumerProvider;
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  (*(v7 + 24))(a1, a2, v6, v7);
  return swift_endAccess();
}

uint64_t PlaybackServer.changeInteractionState(_:)(uint64_t *a1)
{
  *(v2 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v4 = swift_task_alloc();
  v5 = *a1;
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;
  *(v2 + 64) = *(a1 + 8);

  return MEMORY[0x2822009F8](sub_264B1C58C, 0, 0);
}

uint64_t sub_264B1C58C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = sub_264B41274();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_264B41244();

  v6 = sub_264B41234();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v1;
  v9 = sub_2649CD944(0, 0, v2, &unk_264B496B8, v7);
  *(v0 + 40) = v9;
  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
  *v10 = v0;
  v10[1] = sub_264B1C720;
  v12 = MEMORY[0x277D84950];
  v13 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v11, v9, v13, v11, v12);
}

uint64_t sub_264B1C720()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_264B1C8A4;
  }

  else
  {
    v2 = sub_264B1C834;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264B1C834()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264B1C8A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264B1C914(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CEC0, &qword_264B58728);
  v3 = *(v2 - 8);
  v20[0] = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CEC8, &qword_264B58730);
  v8 = *(v7 - 8);
  v22 = v7;
  v23 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v21 = v20 - v10;
  v24 = sub_264A74384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDC8, &qword_264B585C0);
  sub_2649CB4C8(&qword_27FF8CDD0, &qword_27FF8CDC8, &qword_264B585C0, MEMORY[0x277CBCD90]);
  sub_264B40AC4();

  v11 = *(v3 + 16);
  v12 = a1;
  v20[1] = a1;
  v11(v6, a1, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  v15 = *(v3 + 32);
  v15(v14 + v13, v6, v2);
  v11(v6, v12, v2);
  v16 = swift_allocObject();
  v15(v16 + v13, v6, v2);
  sub_2649CB4C8(&qword_27FF8CED0, &qword_27FF8CEC8, &qword_264B58730, MEMORY[0x277CBCB10]);
  v18 = v21;
  v17 = v22;
  sub_264B40B04();

  (*(v23 + 8))(v18, v17);
  return sub_264B41294();
}

uint64_t sub_264B1CC74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE10, &qword_264B58640);
  v3 = *(v2 - 8);
  v20[0] = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE18, &qword_264B58648);
  v8 = *(v7 - 8);
  v22 = v7;
  v23 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v21 = v20 - v10;
  v24 = sub_264A74384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDC8, &qword_264B585C0);
  sub_2649CB4C8(&qword_27FF8CDD0, &qword_27FF8CDC8, &qword_264B585C0, MEMORY[0x277CBCD90]);
  sub_264B40AC4();

  v11 = *(v3 + 16);
  v12 = a1;
  v20[1] = a1;
  v11(v6, a1, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  v15 = *(v3 + 32);
  v15(v14 + v13, v6, v2);
  v11(v6, v12, v2);
  v16 = swift_allocObject();
  v15(v16 + v13, v6, v2);
  sub_2649CB4C8(&qword_27FF8CE20, &qword_27FF8CE18, &qword_264B58648, MEMORY[0x277CBCB10]);
  v18 = v21;
  v17 = v22;
  sub_264B40B04();

  (*(v23 + 8))(v18, v17);
  return sub_264B41294();
}

uint64_t sub_264B1CFD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE30, &qword_264B58670);
  v3 = *(v2 - 8);
  v20[0] = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE38, &qword_264B58678);
  v8 = *(v7 - 8);
  v22 = v7;
  v23 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v21 = v20 - v10;
  v24 = sub_264A74384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDC8, &qword_264B585C0);
  sub_2649CB4C8(&qword_27FF8CDD0, &qword_27FF8CDC8, &qword_264B585C0, MEMORY[0x277CBCD90]);
  sub_264B40AC4();

  v11 = *(v3 + 16);
  v12 = a1;
  v20[1] = a1;
  v11(v6, a1, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  v15 = *(v3 + 32);
  v15(v14 + v13, v6, v2);
  v11(v6, v12, v2);
  v16 = swift_allocObject();
  v15(v16 + v13, v6, v2);
  sub_2649CB4C8(&qword_27FF8CE40, &qword_27FF8CE38, &qword_264B58678, MEMORY[0x277CBCB10]);
  v18 = v21;
  v17 = v22;
  sub_264B40B04();

  (*(v23 + 8))(v18, v17);
  return sub_264B41294();
}

uint64_t sub_264B1D334(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDF0, &qword_264B58600);
  v3 = *(v2 - 8);
  v22 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDF8, &qword_264B58608);
  v8 = *(v7 - 8);
  v23 = v7;
  v24 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v21 = &v18 - v10;
  v25 = sub_264A74384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDC8, &qword_264B585C0);
  type metadata accessor for RTIMessage(0);
  sub_2649CB4C8(&qword_27FF8CDD0, &qword_27FF8CDC8, &qword_264B585C0, MEMORY[0x277CBCD90]);
  sub_264B40AC4();

  v11 = *(v3 + 16);
  v20 = a1;
  v11(v6, a1, v2);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v19 = swift_allocObject();
  v13 = *(v3 + 32);
  v13(v19 + v12, v6, v2);
  v11(v6, a1, v2);
  v14 = swift_allocObject();
  v13(v14 + v12, v6, v2);
  sub_2649CB4C8(&qword_27FF8CE00, &qword_27FF8CDF8, &qword_264B58608, MEMORY[0x277CBCB10]);
  v15 = v23;
  v16 = v21;
  sub_264B40B04();

  (*(v24 + 8))(v16, v15);
  return sub_264B41294();
}

uint64_t sub_264B1D6A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDB8, &qword_264B585B0);
  v3 = *(v2 - 8);
  v20[0] = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDC0, &qword_264B585B8);
  v8 = *(v7 - 8);
  v22 = v7;
  v23 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v21 = v20 - v10;
  v24 = sub_264A74384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDC8, &qword_264B585C0);
  sub_2649CB4C8(&qword_27FF8CDD0, &qword_27FF8CDC8, &qword_264B585C0, MEMORY[0x277CBCD90]);
  sub_264B40AC4();

  v11 = *(v3 + 16);
  v12 = a1;
  v20[1] = a1;
  v11(v6, a1, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  v15 = *(v3 + 32);
  v15(v14 + v13, v6, v2);
  v11(v6, v12, v2);
  v16 = swift_allocObject();
  v15(v16 + v13, v6, v2);
  sub_2649CB4C8(&qword_27FF8CDD8, &qword_27FF8CDC0, &qword_264B585B8, MEMORY[0x277CBCB10]);
  v18 = v21;
  v17 = v22;
  sub_264B40B04();

  (*(v23 + 8))(v18, v17);
  return sub_264B41294();
}

uint64_t sub_264B1DA00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CEA0, &qword_264B586F8);
  v3 = *(v2 - 8);
  v22 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CEA8, &qword_264B58700);
  v8 = *(v7 - 8);
  v23 = v7;
  v24 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v21 = &v18 - v10;
  v25 = sub_264A74384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDC8, &qword_264B585C0);
  type metadata accessor for HIDMessage(0);
  sub_2649CB4C8(&qword_27FF8CDD0, &qword_27FF8CDC8, &qword_264B585C0, MEMORY[0x277CBCD90]);
  sub_264B40AC4();

  v11 = *(v3 + 16);
  v20 = a1;
  v11(v6, a1, v2);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v19 = swift_allocObject();
  v13 = *(v3 + 32);
  v13(v19 + v12, v6, v2);
  v11(v6, a1, v2);
  v14 = swift_allocObject();
  v13(v14 + v12, v6, v2);
  sub_2649CB4C8(&qword_27FF8CEB0, &qword_27FF8CEA8, &qword_264B58700, MEMORY[0x277CBCB10]);
  v15 = v23;
  v16 = v21;
  sub_264B40B04();

  (*(v24 + 8))(v16, v15);
  return sub_264B41294();
}

uint64_t sub_264B1DD6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE68, &qword_264B586B0);
  v3 = *(v2 - 8);
  v20[0] = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE70, &qword_264B586B8);
  v8 = *(v7 - 8);
  v22 = v7;
  v23 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v21 = v20 - v10;
  v24 = sub_264A74384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDC8, &qword_264B585C0);
  sub_2649CB4C8(&qword_27FF8CDD0, &qword_27FF8CDC8, &qword_264B585C0, MEMORY[0x277CBCD90]);
  sub_264B40AC4();

  v11 = *(v3 + 16);
  v12 = a1;
  v20[1] = a1;
  v11(v6, a1, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  v15 = *(v3 + 32);
  v15(v14 + v13, v6, v2);
  v11(v6, v12, v2);
  v16 = swift_allocObject();
  v15(v16 + v13, v6, v2);
  sub_2649CB4C8(&qword_27FF8CE78, &qword_27FF8CE70, &qword_264B586B8, MEMORY[0x277CBCB10]);
  v18 = v21;
  v17 = v22;
  sub_264B40B04();

  (*(v23 + 8))(v18, v17);
  return sub_264B41294();
}

uint64_t sub_264B1E0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ControlMessage(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264B3C4B0(a1, v7, type metadata accessor for ControlMessage);
  result = swift_getEnumCaseMultiPayload();
  if (result == 3)
  {
    v9 = *(v7 + 2);
    v10 = *(v7 + 3);
    v11 = *(v7 + 4);
    v12 = *(v7 + 5);
    v13 = *(v7 + 12);
    v14 = *(v7 + 1);
    *a2 = *v7;
    *(a2 + 16) = v14;
  }

  else
  {
    result = sub_264B3C518(v7, type metadata accessor for ControlMessage);
    v13 = 0;
    v9 = 0uLL;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v10 = xmmword_264B582F0;
    v11 = 0uLL;
    v12 = 0uLL;
  }

  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  *(a2 + 64) = v11;
  *(a2 + 80) = v12;
  *(a2 + 96) = v13;
  return result;
}

uint64_t sub_264B1E1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ControlMessage(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264B3C4B0(a1, v7, type metadata accessor for ControlMessage);
  result = swift_getEnumCaseMultiPayload();
  if (result == 5)
  {
    v9 = *v7;
    v10 = *(v7 + 2);
    v11 = *(v7 + 3);
    v12 = v7[33];
    *(a2 + 32) = v7[32];
    *(a2 + 33) = v12;
  }

  else
  {
    result = sub_264B3C518(v7, type metadata accessor for ControlMessage);
    v10 = 0;
    v11 = 0;
    *(a2 + 32) = 0;
    v9 = 0uLL;
  }

  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_264B1E2D8@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v4 = type metadata accessor for ControlMessage(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_264B3C4B0(a1, v7, type metadata accessor for ControlMessage);
  result = swift_getEnumCaseMultiPayload();
  if (result == 4)
  {
    v9 = *v7;
  }

  else
  {
    result = sub_264B3C518(v7, type metadata accessor for ControlMessage);
    v9 = xmmword_264B58300;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_264B1E3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ControlMessage(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264B3C4B0(a1, v7, type metadata accessor for ControlMessage);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_264B3C650(v7, a2, type metadata accessor for RTIMessage);
    v8 = 0;
  }

  else
  {
    sub_264B3C518(v7, type metadata accessor for ControlMessage);
    v8 = 1;
  }

  v9 = type metadata accessor for RTIMessage(0);
  return (*(*(v9 - 8) + 56))(a2, v8, 1, v9);
}

uint64_t sub_264B1E4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HIDMessage(0);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for ControlMessage(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264B3C4B0(a1, v16, type metadata accessor for ControlMessage);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_264B3C650(v16, v9, type metadata accessor for HIDMessage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v18 = type metadata accessor for HIDReportMessage;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v18 = type metadata accessor for HIDUpdateInputDevicesMessage;
    }

    sub_264B3C650(v9, v12, v18);
LABEL_8:
    swift_storeEnumTagMultiPayload();
    sub_264B3C650(v12, a2, type metadata accessor for HIDMessage);
    v19 = 0;
    return (*(v5 + 56))(a2, v19, 1, v4);
  }

  sub_264B3C518(v16, type metadata accessor for ControlMessage);
  v19 = 1;
  return (*(v5 + 56))(a2, v19, 1, v4);
}

uint64_t sub_264B1E72C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v4 = type metadata accessor for ControlMessage(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_264B3C4B0(a1, v7, type metadata accessor for ControlMessage);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v9 = *v7;
    v10 = v7[1];
  }

  else
  {
    result = sub_264B3C518(v7, type metadata accessor for ControlMessage);
    v9 = xmmword_264B58310;
    v10 = 0uLL;
  }

  *a2 = v9;
  a2[1] = v10;
  return result;
}

uint64_t sub_264B1E810(uint64_t a1)
{
  v2 = type metadata accessor for RTIMessage(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE08, &qword_264B58610);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v12 - v9;
  sub_264B3C4B0(a1, v5, type metadata accessor for RTIMessage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDF0, &qword_264B58600);
  sub_264B412A4();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_264B1E968(uint64_t a1)
{
  v2 = type metadata accessor for HIDMessage(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CEB8, &qword_264B58708);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v12 - v9;
  sub_264B3C4B0(a1, v5, type metadata accessor for HIDMessage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CEA0, &qword_264B586F8);
  sub_264B412A4();
  return (*(v7 + 8))(v10, v6);
}

uint64_t PlaybackServer.targetedDisplayIdentifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_264B1EB0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  v5 = v4 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventConsumerProvider;
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  v8 = *(v7 + 24);

  v8(v2, v3, v6, v7);
  return swift_endAccess();
}

uint64_t (*PlaybackServer.targetedDisplayIdentifier.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_264B1EC3C;
}

uint64_t sub_264B1EC3C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    v8 = v5 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventConsumerProvider;
    swift_beginAccess();
    v9 = *(v8 + 24);
    v10 = *(v8 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
    v11 = *(v10 + 24);

    v11(v6, v7, v9, v10);

    return swift_endAccess();
  }

  return result;
}

uint64_t PlaybackServer.interactionState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();
}

uint64_t sub_264B1ED90@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_264B1EE18(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

uint64_t sub_264B1EEB8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CD98, &qword_264B584D0);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E50, &qword_264B495B0);
  sub_264B40A64();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t PlaybackServer.isActive.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

uint64_t sub_264B1F0B0@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v4;
  return result;
}

uint64_t sub_264B1F130(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

uint64_t sub_264B1F1A4(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89F00, &unk_264B48E00);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  sub_264B40A64();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t PlaybackServer.__allocating_init(session:interruptionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a1;
  v61 = a3;
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v59 = &v56 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  v6 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v7);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E50, &qword_264B495B0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v56 - v13;
  v15 = sub_264AF0CF8();
  *(&v81 + 1) = 0;
  *&v82 = 0;
  *(&v78 + 1) = 0;
  *&v79 = 0;
  v16 = type metadata accessor for AccessibilityBackedDrawEventConsumerVendor();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *&v81 = v17;
  *(&v82 + 1) = v16;
  v83 = &off_281EE5BF8;
  v62 = v15;
  v57 = v15;
  v18 = type metadata accessor for UHIDBackedSystemEventConsumerVendor();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *&v78 = v19;
  *(&v79 + 1) = v18;
  v80 = &off_281EE1908;
  if (v16)
  {
    sub_2649CB5C0(&v81, &v75);
    v18 = *(&v79 + 1);
  }

  else
  {
    v75 = v81;
    v76 = v82;
    v77 = v83;
  }

  v20 = type metadata accessor for UHIDKitBackedControlEventConsumerVendor();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 40) = 0;
  *(v21 + 48) = 0;
  *(v21 + 32) = v62;
  if (v18)
  {
    sub_2649CB5C0(&v78, &v72);
  }

  else
  {
    v72 = v78;
    v73 = v79;
    v74 = v80;
  }

  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v65[3] = v20;
  v65[4] = &off_287660300;
  v65[0] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v23 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer__interactionState;
  v63 = 0;
  v64 = 1;
  sub_264B40A44();
  (*(v11 + 32))(v22 + v23, v14, v10);
  v24 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer__isActive;
  LOBYTE(v63) = 0;
  sub_264B40A44();
  (*(v6 + 32))(v22 + v24, v9, v56);
  *(v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_startupEventsQueue) = MEMORY[0x277D84F90];
  v25 = (v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDrawEventConsumer);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentControlEventConsumer);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentSystemEventConsumer);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDragAndDropEventConsumer);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentRTIMessageConsumer);
  *v29 = 0;
  v29[1] = 0;
  v30 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_bufferedSendingContinuation;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A940, &qword_264B4CAE0);
  (*(*(v31 - 8) + 56))(v22 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_sessionInvalidationContinuation;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  (*(*(v33 - 8) + 56))(v22 + v32, 1, 1, v33);
  *(v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventCancellationHandle) = 0;
  *(v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventCancellationHandle) = 0;
  *(v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemEventCancellationHandle) = 0;
  *(v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventCancellationHandle) = 0;
  *(v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityEventCancellationHandle) = 0;
  *(v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventEventCancellationHandle) = 0;
  *(v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiEventCancellationHandle) = 0;
  *(v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_outgoingStatusEventSubscription) = 0;
  *(v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_outgoingAccessibilityMessageSubscription) = 0;
  *(v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_session) = v60;
  v34 = v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventConsumerProvider;
  if (*(&v76 + 1))
  {
    sub_2649CB5C0(&v75, v34);
  }

  else
  {
    v35 = v76;
    *v34 = v75;
    *(v34 + 16) = v35;
    *(v34 + 32) = v77;
  }

  sub_2649CB5C0(v65, v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventConsumerProvider);
  v36 = v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemGestureEventConsumerProvider;
  if (*(&v73 + 1))
  {
    sub_2649CB5C0(&v72, v36);
  }

  else
  {
    v37 = v73;
    *v36 = v72;
    *(v36 + 16) = v37;
    *(v36 + 32) = v74;
  }

  v38 = v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventConsumerProvider;
  if (*(&v70 + 1))
  {
    sub_2649CB5C0(&v69, v38);
  }

  else
  {
    v39 = v70;
    *v38 = v69;
    *(v38 + 16) = v39;
    *(v38 + 32) = v71;
  }

  v40 = (v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventConsumer);
  *v40 = 0;
  v40[1] = 0;
  v41 = (v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_statusEventProducer);
  *v41 = 0;
  v41[1] = 0;
  *(v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_telemetry) = v62;
  v42 = (v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageConsumer);
  *v42 = 0;
  v42[1] = 0;
  v43 = (v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageProducer);
  *v43 = 0;
  v43[1] = 0;
  v44 = v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiMessageConsumerProvider;
  if (*(&v67 + 1))
  {
    sub_2649CB5C0(&v66, v44);
  }

  else
  {
    v45 = v67;
    *v44 = v66;
    *(v44 + 16) = v45;
    *(v44 + 32) = v68;
  }

  v46 = (v22 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler);
  v47 = v61;
  *v46 = v58;
  v46[1] = v47;
  v48 = v57;

  v49 = v59;
  sub_264B41254();
  v50 = sub_264B41274();
  (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
  v51 = swift_allocObject();
  swift_weakInit();
  sub_264B41244();

  v52 = sub_264B41234();
  v53 = swift_allocObject();
  v54 = MEMORY[0x277D85700];
  v53[2] = v52;
  v53[3] = v54;
  v53[4] = v51;

  sub_264A10C20(0, 0, v49, &unk_264B49610, v53);

  if (*(&v67 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v66);
  }

  if (*(&v70 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v69);
  }

  if (*(&v73 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v72);
  }

  if (*(&v76 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v75);
  }

  if (*(&v79 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v78);
  }

  if (*(&v82 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v81);
  }

  __swift_destroy_boxed_opaque_existential_0(v65);
  return v22;
}

uint64_t PlaybackServer.__allocating_init(session:telemetry:interruptionHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v61 = a1;
  v62 = a4;
  v59 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v60 = &v57 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  v8 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v9);
  v11 = &v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E50, &qword_264B495B0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v57 - v15;
  *(&v82 + 1) = 0;
  *&v83 = 0;
  *(&v79 + 1) = 0;
  *&v80 = 0;
  v17 = type metadata accessor for AccessibilityBackedDrawEventConsumerVendor();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *&v82 = v18;
  *(&v83 + 1) = v17;
  v84 = &off_281EE5BF8;
  v63 = a2;
  v58 = a2;
  v19 = type metadata accessor for UHIDBackedSystemEventConsumerVendor();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *&v79 = v20;
  *(&v80 + 1) = v19;
  v81 = &off_281EE1908;
  if (v17)
  {
    sub_2649CB5C0(&v82, &v76);
    v19 = *(&v80 + 1);
  }

  else
  {
    v76 = v82;
    v77 = v83;
    v78 = v84;
  }

  v21 = type metadata accessor for UHIDKitBackedControlEventConsumerVendor();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 40) = 0;
  *(v22 + 48) = 0;
  *(v22 + 32) = v63;
  if (v19)
  {
    sub_2649CB5C0(&v79, &v73);
  }

  else
  {
    v73 = v79;
    v74 = v80;
    v75 = v81;
  }

  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  v66[3] = v21;
  v66[4] = &off_287660300;
  v66[0] = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  v24 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer__interactionState;
  v64 = 0;
  v65 = 1;
  sub_264B40A44();
  (*(v13 + 32))(v23 + v24, v16, v12);
  v25 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer__isActive;
  LOBYTE(v64) = 0;
  sub_264B40A44();
  (*(v8 + 32))(v23 + v25, v11, v57);
  *(v23 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_startupEventsQueue) = MEMORY[0x277D84F90];
  v26 = (v23 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDrawEventConsumer);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v23 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentControlEventConsumer);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v23 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentSystemEventConsumer);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v23 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDragAndDropEventConsumer);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v23 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentRTIMessageConsumer);
  *v30 = 0;
  v30[1] = 0;
  v31 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_bufferedSendingContinuation;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A940, &qword_264B4CAE0);
  (*(*(v32 - 8) + 56))(v23 + v31, 1, 1, v32);
  v33 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_sessionInvalidationContinuation;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  (*(*(v34 - 8) + 56))(v23 + v33, 1, 1, v34);
  *(v23 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventCancellationHandle) = 0;
  *(v23 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventCancellationHandle) = 0;
  *(v23 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemEventCancellationHandle) = 0;
  *(v23 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventCancellationHandle) = 0;
  *(v23 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityEventCancellationHandle) = 0;
  *(v23 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventEventCancellationHandle) = 0;
  *(v23 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiEventCancellationHandle) = 0;
  *(v23 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_outgoingStatusEventSubscription) = 0;
  *(v23 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_outgoingAccessibilityMessageSubscription) = 0;
  *(v23 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_session) = v61;
  v35 = v23 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventConsumerProvider;
  if (*(&v77 + 1))
  {
    sub_2649CB5C0(&v76, v35);
  }

  else
  {
    v36 = v77;
    *v35 = v76;
    *(v35 + 16) = v36;
    *(v35 + 32) = v78;
  }

  sub_2649CB5C0(v66, v23 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventConsumerProvider);
  v37 = v23 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemGestureEventConsumerProvider;
  if (*(&v74 + 1))
  {
    sub_2649CB5C0(&v73, v37);
  }

  else
  {
    v38 = v74;
    *v37 = v73;
    *(v37 + 16) = v38;
    *(v37 + 32) = v75;
  }

  v39 = v23 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventConsumerProvider;
  if (*(&v71 + 1))
  {
    sub_2649CB5C0(&v70, v39);
  }

  else
  {
    v40 = v71;
    *v39 = v70;
    *(v39 + 16) = v40;
    *(v39 + 32) = v72;
  }

  v41 = (v23 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventConsumer);
  *v41 = 0;
  v41[1] = 0;
  v42 = (v23 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_statusEventProducer);
  *v42 = 0;
  v42[1] = 0;
  *(v23 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_telemetry) = v63;
  v43 = (v23 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageConsumer);
  *v43 = 0;
  v43[1] = 0;
  v44 = (v23 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageProducer);
  *v44 = 0;
  v44[1] = 0;
  v45 = v23 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiMessageConsumerProvider;
  if (*(&v68 + 1))
  {
    sub_2649CB5C0(&v67, v45);
  }

  else
  {
    v46 = v68;
    *v45 = v67;
    *(v45 + 16) = v46;
    *(v45 + 32) = v69;
  }

  v47 = (v23 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler);
  v48 = v62;
  *v47 = v59;
  v47[1] = v48;
  v49 = v58;

  v50 = v60;
  sub_264B41254();
  v51 = sub_264B41274();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  v52 = swift_allocObject();
  swift_weakInit();
  sub_264B41244();

  v53 = sub_264B41234();
  v54 = swift_allocObject();
  v55 = MEMORY[0x277D85700];
  v54[2] = v53;
  v54[3] = v55;
  v54[4] = v52;

  sub_264A10C20(0, 0, v50, &unk_264B58400, v54);

  if (*(&v68 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v67);
  }

  if (*(&v71 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v70);
  }

  if (*(&v74 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v73);
  }

  if (*(&v77 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v76);
  }

  if (*(&v80 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v79);
  }

  if (*(&v83 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v82);
  }

  __swift_destroy_boxed_opaque_existential_0(v66);
  return v23;
}

uint64_t sub_264B202B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v3[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B20350, 0, 0);
}

uint64_t sub_264B20350()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_264B41274();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;
  swift_unownedRetain();
  sub_264B20AE4(v1, &unk_264B58788, v5);
  sub_2649D04D4(v1, &qword_27FF898C0, &unk_264B44190);
  v4(v1, 1, 1, v3);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;
  swift_unownedRetain();
  sub_264B20AE4(v1, &unk_264B58798, v6);
  sub_2649D04D4(v1, &qword_27FF898C0, &unk_264B44190);
  v4(v1, 1, 1, v3);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  swift_unownedRetain();
  sub_264B20AE4(v1, &unk_264B587A8, v7);
  sub_2649D04D4(v1, &qword_27FF898C0, &unk_264B44190);
  v4(v1, 1, 1, v3);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  swift_unownedRetain();
  sub_264B20AE4(v1, &unk_264B587B8, v8);
  sub_2649D04D4(v1, &qword_27FF898C0, &unk_264B44190);
  v4(v1, 1, 1, v3);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  swift_unownedRetain();
  sub_264B20AE4(v1, &unk_264B587C8, v9);
  sub_2649D04D4(v1, &qword_27FF898C0, &unk_264B44190);
  v4(v1, 1, 1, v3);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  swift_unownedRetain();
  sub_264B20AE4(v1, &unk_264B587D8, v10);
  sub_2649D04D4(v1, &qword_27FF898C0, &unk_264B44190);
  v4(v1, 1, 1, v3);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v2;
  swift_unownedRetain();
  sub_264B20AE4(v1, &unk_264B587E8, v11);
  sub_2649D04D4(v1, &qword_27FF898C0, &unk_264B44190);

  v12 = v0[1];

  return v12();
}

uint64_t sub_264B20740(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2649CD850;

  return sub_264B202B4(a1, a2, v6);
}

uint64_t sub_264B20818()
{
  v1 = (swift_unownedRetainStrong() + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDrawEventConsumer);
  v2 = *v1;
  v0[3] = *v1;
  if (v2)
  {
    v3 = v1[1];
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v8 = (*(v3 + 24) + **(v3 + 24));
    v5 = swift_task_alloc();
    v0[4] = v5;
    *v5 = v0;
    v5[1] = sub_264B209A8;

    return v8(ObjectType, v3);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_264B209A8()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_264B3D208, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_264B20AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v19 - v9;
  sub_2649D046C(a1, v19 - v9, &qword_27FF898C0, &unk_264B44190);
  v11 = sub_264B41274();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2649D04D4(v10, &qword_27FF898C0, &unk_264B44190);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_264B411C4();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_264B41264();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t sub_264B20CF4()
{
  v1 = (swift_unownedRetainStrong() + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentControlEventConsumer);
  v2 = *v1;
  v0[3] = *v1;
  if (v2)
  {
    v3 = v1[1];
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v8 = (*(v3 + 24) + **(v3 + 24));
    v5 = swift_task_alloc();
    v0[4] = v5;
    *v5 = v0;
    v5[1] = sub_264B20E84;

    return v8(ObjectType, v3);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_264B20E84()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_264B20FC0, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_264B20FC0()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264B21044()
{
  v1 = (swift_unownedRetainStrong() + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentSystemEventConsumer);
  v2 = *v1;
  v0[3] = *v1;
  if (v2)
  {
    v3 = v1[1];
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v8 = (*(v3 + 24) + **(v3 + 24));
    v5 = swift_task_alloc();
    v0[4] = v5;
    *v5 = v0;
    v5[1] = sub_264B209A8;

    return v8(ObjectType, v3);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_264B211F4()
{
  v1 = v0[2];
  swift_unownedRetainStrong();
  v2 = v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventConsumer;
  v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventConsumer);
  v0[3] = v3;
  v4 = *(v2 + 8);
  swift_unknownObjectRetain();

  if (v3)
  {
    ObjectType = swift_getObjectType();
    v9 = (*(v4 + 24) + **(v4 + 24));
    v6 = swift_task_alloc();
    v0[4] = v6;
    *v6 = v0;
    v6[1] = sub_264B209A8;

    return v9(ObjectType, v4);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_264B2139C()
{
  v1 = v0[2];
  swift_unownedRetainStrong();
  v2 = v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageConsumer;
  v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageConsumer);
  v0[3] = v3;
  v4 = *(v2 + 8);
  swift_unknownObjectRetain();

  if (v3)
  {
    ObjectType = swift_getObjectType();
    v9 = (*(v4 + 24) + **(v4 + 24));
    v6 = swift_task_alloc();
    v0[4] = v6;
    *v6 = v0;
    v6[1] = sub_264B209A8;

    return v9(ObjectType, v4);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_264B21544()
{
  v1 = (swift_unownedRetainStrong() + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDragAndDropEventConsumer);
  v2 = *v1;
  v0[3] = *v1;
  if (v2)
  {
    v3 = v1[1];
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v8 = (*(v3 + 24) + **(v3 + 24));
    v5 = swift_task_alloc();
    v0[4] = v5;
    *v5 = v0;
    v5[1] = sub_264B209A8;

    return v8(ObjectType, v3);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_264B216F4()
{
  v1 = (swift_unownedRetainStrong() + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentRTIMessageConsumer);
  v2 = *v1;
  v0[3] = *v1;
  if (v2)
  {
    v3 = v1[1];
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v8 = (*(v3 + 24) + **(v3 + 24));
    v5 = swift_task_alloc();
    v0[4] = v5;
    *v5 = v0;
    v5[1] = sub_264B209A8;

    return v8(ObjectType, v3);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_264B21884(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v19 - v10;
  v12 = sub_264B41274();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v7, a1, v3);
  sub_264B41244();

  v14 = sub_264B41234();
  v15 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 2) = v14;
  *(v16 + 3) = v17;
  *(v16 + 4) = v13;
  (*(v4 + 32))(&v16[v15], v7, v3);

  sub_264A10C20(0, 0, v11, &unk_264B58778, v16);
}

uint64_t sub_264B21AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  v5[18] = swift_task_alloc();
  sub_264B41244();
  v5[19] = sub_264B41234();
  v8 = sub_264B411C4();
  v5[20] = v8;
  v5[21] = v7;

  return MEMORY[0x2822009F8](sub_264B21BF8, v8, v7);
}

uint64_t sub_264B21BF8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[22] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[18];
    v4 = v0[15];
    v5 = v0[16];
    v6 = v0[14];
    v7 = *(v5 + 16);
    v0[23] = v7;
    v0[24] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v7(v3, v6, v4);
    v8 = *(v5 + 56);
    v0[25] = v8;
    v0[26] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v8(v3, 0, 1, v4);
    v9 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_sessionInvalidationContinuation;
    v0[27] = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_sessionInvalidationContinuation;
    swift_beginAccess();
    sub_2649FECCC(v3, v2 + v9, &unk_27FF899E0, &qword_264B53440);
    swift_endAccess();
    v10 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_session);
    v0[28] = v10;

    return MEMORY[0x2822009F8](sub_264B21E4C, v10, 0);
  }

  else
  {

    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v11 = sub_264B40964();
    __swift_project_value_buffer(v11, qword_27FFA71B8);
    v12 = sub_264B40944();
    v13 = sub_264B41494();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2649C6000, v12, v13, "Self disappeared before the invalidaiton continuation could be retrieved", v14, 2u);
      MEMORY[0x266749940](v14, -1, -1);
    }

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_264B21E4C()
{
  sub_264A750BC();
  v0[29] = 0;

  v1 = v0[20];
  v2 = v0[21];

  return MEMORY[0x2822009F8](sub_264B21EDC, v1, v2);
}

uint64_t sub_264B21EDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264B21F58()
{
  v1 = *(v0 + 232);

  *(v0 + 88) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_4;
  }

  v3 = *(v0 + 96);
  if (v3)
  {
    sub_264A78FEC(v3);
    sub_264A78FEC(0);
LABEL_4:
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 232);
    v5 = sub_264B40964();
    __swift_project_value_buffer(v5, qword_27FFA71B8);
    v6 = v4;
    v7 = sub_264B40944();
    v8 = sub_264B41494();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 232);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138543362;
      v12 = v9;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_2649C6000, v7, v8, "Failed to invalidate underlying session, resuming: %{public}@", v10, 0xCu);
      sub_2649D04D4(v11, &unk_27FF89880, &unk_264B46B20);
      MEMORY[0x266749940](v11, -1, -1);
      MEMORY[0x266749940](v10, -1, -1);
    }

    goto LABEL_8;
  }

  sub_264A78FEC(0);
  sub_264A78FEC(0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v28 = sub_264B40964();
  __swift_project_value_buffer(v28, qword_27FFA71B8);
  v7 = sub_264B40944();
  v29 = sub_264B41484();
  if (os_log_type_enabled(v7, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2649C6000, v7, v29, "ControlMessageSession is already invalid, resuming continuation", v30, 2u);
    MEMORY[0x266749940](v30, -1, -1);
    sub_264A78FEC(0);
  }

LABEL_8:
  v14 = *(v0 + 216);
  v15 = *(v0 + 176);
  v16 = *(v0 + 120);
  v17 = *(v0 + 128);

  v18 = (*(v17 + 48))(v15 + v14, 1, v16);
  v19 = *(v0 + 232);
  if (v18)
  {
  }

  else
  {
    v21 = *(v0 + 128);
    v20 = *(v0 + 136);
    v22 = *(v0 + 120);
    (*(v0 + 184))(v20, *(v0 + 176) + *(v0 + 216), v22);
    sub_264B411E4();

    (*(v21 + 8))(v20, v22);
  }

  v23 = *(v0 + 216);
  v24 = *(v0 + 176);
  v25 = *(v0 + 144);
  (*(v0 + 200))(v25, 1, 1, *(v0 + 120));
  swift_beginAccess();
  sub_2649FECCC(v25, v24 + v23, &unk_27FF899E0, &qword_264B53440);
  swift_endAccess();

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_264B22330(uint64_t a1)
{
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FFA71B8);
  v2 = sub_264B40944();
  v3 = sub_264B41484();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Lowering isActive flag", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

uint64_t sub_264B2245C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 26) = a6;
  *(v6 + 96) = a4;
  *(v6 + 104) = a5;
  v7 = sub_264B40964();
  *(v6 + 112) = v7;
  *(v6 + 120) = *(v7 - 8);
  *(v6 + 128) = swift_task_alloc();
  sub_264B41244();
  *(v6 + 136) = sub_264B41234();
  v9 = sub_264B411C4();
  *(v6 + 144) = v9;
  *(v6 + 152) = v8;

  return MEMORY[0x2822009F8](sub_264B22554, v9, v8);
}

uint64_t sub_264B22554()
{
  v30 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  if (*(v0 + 25) == 1)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 120);
    v1 = *(v0 + 128);
    v3 = *(v0 + 112);
    v4 = *(v0 + 26);
    v5 = __swift_project_value_buffer(v3, qword_27FFA71B8);
    (*(v2 + 16))(v1, v5, v3);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264B40A84();

    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    if (v4)
    {
      v8 = *(v0 + 104);
      if (v8)
      {
        if (v6 == 0.0)
        {
          v7 = 0;
        }

        if ((v7 & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_20;
      }

      if (v6 == 0.0)
      {
        v12 = *(v0 + 24);
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
LABEL_20:

        v13 = sub_264B40944();
        v14 = sub_264B41484();
        v15 = os_log_type_enabled(v13, v14);
        v17 = *(v0 + 120);
        v16 = *(v0 + 128);
        v18 = *(v0 + 112);
        if (v15)
        {
          v19 = *(v0 + 26);
          v20 = *(v0 + 104);
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v29 = v22;
          *v21 = 136446210;
          *(v0 + 80) = v20;
          *(v0 + 88) = v19 & 1;
          v23 = sub_264B41064();
          v25 = sub_2649CC004(v23, v24, &v29);

          *(v21 + 4) = v25;
          _os_log_impl(&dword_2649C6000, v13, v14, "Ignoring duplicate interaction state change to %{public}s", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v22);
          MEMORY[0x266749940](v22, -1, -1);
          MEMORY[0x266749940](v21, -1, -1);
        }

        (*(v17 + 8))(v16, v18);

        v10 = *(v0 + 8);
        goto LABEL_23;
      }

      v8 = 0;
    }

    else
    {
      if (*(v0 + 104) == v6)
      {
        v11 = *(v0 + 24);
      }

      else
      {
        v11 = 1;
      }

      if ((v11 & 1) == 0)
      {
        goto LABEL_20;
      }

      v8 = *(v0 + 104);
    }

LABEL_27:
    v27 = *(v0 + 26);
    *(v0 + 32) = v8;
    *(v0 + 40) = v27 & 1;
    v28 = swift_task_alloc();
    *(v0 + 160) = v28;
    *v28 = v0;
    v28[1] = sub_264B2290C;

    return sub_264B22CD8((v0 + 32));
  }

  sub_264B3CA90();
  swift_allocError();
  *v9 = 0;
  swift_willThrow();

  v10 = *(v0 + 8);
LABEL_23:

  return v10();
}

uint64_t sub_264B2290C()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_264B22C24;
  }

  else
  {
    v5 = sub_264B22A20;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_264B22A20()
{
  v21 = v0;
  v1 = *(v0 + 26);
  v2 = *(v0 + 104);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 48) = v2;
  *(v0 + 56) = v1 & 1;

  sub_264B40A94();
  v3 = sub_264B40944();
  v4 = sub_264B41474();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);
    v7 = *(v0 + 26);
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446210;
    *(v0 + 64) = v9;
    *(v0 + 72) = v7 & 1;
    v12 = sub_264B41064();
    v14 = sub_2649CC004(v12, v13, &v20);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2649C6000, v3, v4, "Changed interactionState to: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);

    (*(v6 + 8))(v5, v8);
  }

  else
  {
    v16 = *(v0 + 120);
    v15 = *(v0 + 128);
    v17 = *(v0 + 112);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_264B22C24()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[15];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_264B22CD8(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 144) = v1;
  *(v2 + 152) = v3;
  *(v2 + 121) = *(a1 + 8);
  return MEMORY[0x2822009F8](sub_264B22D04, 0, 0);
}

uint64_t sub_264B22D04(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 144);
  v4 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventConsumer);
  if (v4 && !*(v3 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventCancellationHandle))
  {
    v6 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventConsumer + 8);
    swift_unknownObjectRetain();
    v5 = sub_2649D85C4(0, 1, 1, MEMORY[0x277D84F90]);
    v8 = v5[2];
    v7 = v5[3];
    if (v8 >= v7 >> 1)
    {
      v5 = sub_2649D85C4((v7 > 1), v8 + 1, 1, v5);
    }

    v5[2] = v8 + 1;
    v9 = &v5[2 * v8];
    v9[4] = v4;
    v9[5] = v6;
    v3 = *(v2 + 144);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  *(v2 + 160) = v5;
  v10 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventCancellationHandle;
  if (*(v3 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventCancellationHandle))
  {

    sub_264B41304();

    v11 = *(v2 + 144);
  }

  else
  {
    v11 = v3;
  }

  *(v3 + v10) = 0;

  v12 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventCancellationHandle;
  if (*(v11 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventCancellationHandle))
  {

    sub_264B41304();
  }

  v13 = *(v2 + 144);
  *(v11 + v12) = 0;

  v14 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemEventCancellationHandle;
  if (*(v13 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemEventCancellationHandle))
  {

    sub_264B41304();
  }

  v15 = *(v2 + 144);
  *(v13 + v14) = 0;

  v16 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventEventCancellationHandle;
  if (*(v15 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventEventCancellationHandle))
  {

    sub_264B41304();
  }

  v17 = *(v2 + 144);
  *(v15 + v16) = 0;

  v18 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiEventCancellationHandle;
  v112 = v5;
  if (*(v17 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiEventCancellationHandle))
  {

    sub_264B41304();
  }

  v19 = *(v2 + 121);
  v20 = *(v2 + 144);
  *(v17 + v18) = 0;

  v21 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDrawEventConsumer;
  *(v2 + 168) = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDrawEventConsumer;
  v22 = (v20 + v21);
  v23 = *(v20 + v21);
  *(v2 + 176) = v23;
  v24 = *(v20 + v21 + 8);
  v25 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentControlEventConsumer;
  *(v2 + 184) = v24;
  *(v2 + 192) = v25;
  v26 = (v20 + v25);
  v27 = *(v20 + v25);
  *(v2 + 200) = v27;
  v28 = *(v20 + v25 + 8);
  v29 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentSystemEventConsumer;
  *(v2 + 208) = v28;
  *(v2 + 216) = v29;
  v30 = (v20 + v29);
  v31 = *(v20 + v29);
  *(v2 + 224) = v31;
  v32 = *(v20 + v29 + 8);
  v33 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDragAndDropEventConsumer;
  *(v2 + 232) = v32;
  *(v2 + 240) = v33;
  v34 = (v20 + v33);
  v35 = *(v20 + v33);
  *(v2 + 248) = v35;
  v36 = *(v20 + v33 + 8);
  v37 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentRTIMessageConsumer;
  *(v2 + 256) = v36;
  *(v2 + 264) = v37;
  v38 = (v20 + v37);
  v39 = *v38;
  *(v2 + 272) = *v38;
  v40 = v38[1];
  *(v2 + 280) = v40;
  if (v19 == 1)
  {
    v109 = v24;
    v110 = v22;
    v106 = v28;
    v107 = v32;
    v108 = v36;
    v105 = v40;
    v41 = v23;
    v42 = *(v2 + 152);
    v43 = qword_27FF883E0;
    v111 = v41;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    if (v42)
    {
      if (v43 != -1)
      {
        swift_once();
      }

      v44 = sub_264B40964();
      __swift_project_value_buffer(v44, qword_27FFA71B8);
      v45 = sub_264B40944();
      v46 = sub_264B41474();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_2649C6000, v45, v46, "Playback switched to control", v47, 2u);
        MEMORY[0x266749940](v47, -1, -1);
      }

      *v110 = 0;
      v110[1] = 0;
      swift_unknownObjectRelease();
      if (v111)
      {
        swift_unknownObjectRetain();
        v48 = sub_2649D85C4(0, 1, 1, MEMORY[0x277D84F90]);
        v50 = v48[2];
        v49 = v48[3];
        if (v50 >= v49 >> 1)
        {
          v48 = sub_2649D85C4((v49 > 1), v50 + 1, 1, v48);
        }

        v48[2] = v50 + 1;
        v51 = &v48[2 * v50];
        v51[4] = v111;
        v51[5] = v109;
      }

      else
      {
        v48 = MEMORY[0x277D84F90];
      }

      *(v2 + 296) = v48;
      sub_264B41244();
      *(v2 + 304) = sub_264B41234();
      v59 = sub_264B411C4();
      v61 = v76;
      v62 = sub_264B23E84;
      goto LABEL_52;
    }

    v103 = v35;
    if (v43 != -1)
    {
      swift_once();
    }

    v104 = v39;
    v63 = sub_264B40964();
    __swift_project_value_buffer(v63, qword_27FFA71B8);
    v64 = sub_264B40944();
    v65 = sub_264B41474();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_2649C6000, v64, v65, "Playback paused locally", v66, 2u);
      MEMORY[0x266749940](v66, -1, -1);
    }

    *v110 = 0;
    v110[1] = 0;
    swift_unknownObjectRelease();
    *v26 = 0;
    v26[1] = 0;
    swift_unknownObjectRelease();
    *v30 = 0;
    v30[1] = 0;
    swift_unknownObjectRelease();
    *v34 = 0;
    v34[1] = 0;
    swift_unknownObjectRelease();
    if (v111)
    {
      swift_unknownObjectRetain();
      v67 = sub_2649D85C4(0, 1, 1, MEMORY[0x277D84F90]);
      v69 = v67[2];
      v68 = v67[3];
      if (v69 >= v68 >> 1)
      {
        v67 = sub_2649D85C4((v68 > 1), v69 + 1, 1, v67);
      }

      v67[2] = v69 + 1;
      v70 = &v67[2 * v69];
      v70[4] = v111;
      v70[5] = v109;
      if (!v27)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v67 = MEMORY[0x277D84F90];
      if (!v27)
      {
LABEL_61:
        if (v31)
        {
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v67 = sub_2649D85C4(0, v67[2] + 1, 1, v67);
          }

          v81 = v107;
          v83 = v67[2];
          v82 = v67[3];
          if (v83 >= v82 >> 1)
          {
            v101 = sub_2649D85C4((v82 > 1), v83 + 1, 1, v67);
            v81 = v107;
            v67 = v101;
          }

          v67[2] = v83 + 1;
          v84 = &v67[2 * v83];
          v84[4] = v31;
          v84[5] = v81;
        }

        v85 = (*(v2 + 144) + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageConsumer);
        v86 = *v85;
        if (*v85)
        {
          v87 = v85[1];
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v67 = sub_2649D85C4(0, v67[2] + 1, 1, v67);
          }

          v89 = v67[2];
          v88 = v67[3];
          if (v89 >= v88 >> 1)
          {
            v67 = sub_2649D85C4((v88 > 1), v89 + 1, 1, v67);
          }

          v67[2] = v89 + 1;
          v90 = &v67[2 * v89];
          v90[4] = v86;
          v90[5] = v87;
        }

        if (v103)
        {
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v67 = sub_2649D85C4(0, v67[2] + 1, 1, v67);
          }

          v91 = v108;
          v93 = v67[2];
          v92 = v67[3];
          if (v93 >= v92 >> 1)
          {
            v102 = sub_2649D85C4((v92 > 1), v93 + 1, 1, v67);
            v91 = v108;
            v67 = v102;
          }

          v67[2] = v93 + 1;
          v94 = &v67[2 * v93];
          v94[4] = v103;
          v94[5] = v91;
        }

        if (v104)
        {
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v67 = sub_2649D85C4(0, v67[2] + 1, 1, v67);
          }

          v96 = v67[2];
          v95 = v67[3];
          if (v96 >= v95 >> 1)
          {
            v67 = sub_2649D85C4((v95 > 1), v96 + 1, 1, v67);
          }

          v67[2] = v96 + 1;
          v97 = &v67[2 * v96];
          v97[4] = v104;
          v97[5] = v105;
        }

        *(v2 + 312) = v112;
        *(v2 + 320) = v67;
        v98 = *(v2 + 121);
        *(v2 + 112) = *(v2 + 152);
        *(v2 + 120) = v98;
        v99 = swift_task_alloc();
        *(v2 + 328) = v99;
        *v99 = v2;
        v99[1] = sub_264B242DC;

        return sub_264B381F8((v2 + 112), v67, v112);
      }
    }

    swift_unknownObjectRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v67 = sub_2649D85C4(0, v67[2] + 1, 1, v67);
    }

    v77 = v106;
    v79 = v67[2];
    v78 = v67[3];
    if (v79 >= v78 >> 1)
    {
      v100 = sub_2649D85C4((v78 > 1), v79 + 1, 1, v67);
      v77 = v106;
      v67 = v100;
    }

    v67[2] = v79 + 1;
    v80 = &v67[2 * v79];
    v80[4] = v27;
    v80[5] = v77;
    goto LABEL_61;
  }

  v52 = qword_27FF883E0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (v52 != -1)
  {
    swift_once();
  }

  v53 = sub_264B40964();
  __swift_project_value_buffer(v53, qword_27FFA71B8);
  v54 = sub_264B40944();
  v55 = sub_264B41474();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_2649C6000, v54, v55, "Playback switched to draw", v56, 2u);
    MEMORY[0x266749940](v56, -1, -1);
  }

  v57 = *(v2 + 144);

  v58 = v57 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventConsumerProvider;
  if (*(v57 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventConsumerProvider + 24))
  {
    sub_2649CB5C0(v58, v2 + 56);
    if (*(v2 + 80))
    {
LABEL_34:
      sub_2649D2AAC((v2 + 56), v2 + 16);
      sub_264B41244();
      *(v2 + 288) = sub_264B41234();
      v59 = sub_264B411C4();
      v61 = v60;
      v62 = sub_264B238BC;
LABEL_52:

      return MEMORY[0x2822009F8](v62, v59, v61);
    }
  }

  else
  {
    v71 = *v58;
    v72 = *(v58 + 16);
    *(v2 + 88) = *(v58 + 32);
    *(v2 + 72) = v72;
    *(v2 + 56) = v71;
    if (*(v2 + 80))
    {
      goto LABEL_34;
    }
  }

  if (*(v2 + 80))
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  }

  sub_264B3CA90();
  swift_allocError();
  *v73 = 1;
  swift_willThrow();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v74 = *(v2 + 8);

  return v74();
}

uint64_t sub_264B238BC()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return MEMORY[0x2822009F8](sub_264B23974, 0, 0);
}

uint64_t sub_264B23974()
{
  if ((*(v0 + 136) & 1) == 0 && *(v0 + 128) == 2.0 && (v1 = *(v0 + 176), v2 = (*(v0 + 144) + *(v0 + 168)), *v2 = 0, v2[1] = 0, swift_unknownObjectRelease(), v1))
  {
    v3 = *(v0 + 184);
    swift_unknownObjectRetain();
    v4 = sub_2649D85C4(0, 1, 1, MEMORY[0x277D84F90]);
    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_2649D85C4((v5 > 1), v6 + 1, 1, v4);
    }

    v7 = *(v0 + 176);
    v4[2] = v6 + 1;
    v8 = &v4[2 * v6];
    v8[4] = v7;
    v8[5] = v3;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v9 = *(v0 + 200);
  v10 = *(v0 + 144);
  v11 = (v10 + *(v0 + 240));
  v12 = (v10 + *(v0 + 216));
  v13 = (v10 + *(v0 + 192));
  *v13 = 0;
  v13[1] = 0;
  swift_unknownObjectRelease();
  *v12 = 0;
  v12[1] = 0;
  swift_unknownObjectRelease();
  *v11 = 0;
  v11[1] = 0;
  swift_unknownObjectRelease();
  if (v9)
  {
    v14 = *(v0 + 208);
    swift_unknownObjectRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_2649D85C4(0, v4[2] + 1, 1, v4);
    }

    v16 = v4[2];
    v15 = v4[3];
    if (v16 >= v15 >> 1)
    {
      v4 = sub_2649D85C4((v15 > 1), v16 + 1, 1, v4);
    }

    v17 = *(v0 + 200);
    v4[2] = v16 + 1;
    v18 = &v4[2 * v16];
    v18[4] = v17;
    v18[5] = v14;
  }

  if (*(v0 + 224))
  {
    v19 = *(v0 + 232);
    swift_unknownObjectRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_2649D85C4(0, v4[2] + 1, 1, v4);
    }

    v21 = v4[2];
    v20 = v4[3];
    if (v21 >= v20 >> 1)
    {
      v4 = sub_2649D85C4((v20 > 1), v21 + 1, 1, v4);
    }

    v22 = *(v0 + 224);
    v4[2] = v21 + 1;
    v23 = &v4[2 * v21];
    v23[4] = v22;
    v23[5] = v19;
  }

  v24 = (*(v0 + 144) + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageConsumer);
  v25 = *v24;
  if (*v24)
  {
    v26 = v24[1];
    swift_unknownObjectRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_2649D85C4(0, v4[2] + 1, 1, v4);
    }

    v28 = v4[2];
    v27 = v4[3];
    if (v28 >= v27 >> 1)
    {
      v4 = sub_2649D85C4((v27 > 1), v28 + 1, 1, v4);
    }

    v4[2] = v28 + 1;
    v29 = &v4[2 * v28];
    v29[4] = v25;
    v29[5] = v26;
  }

  if (*(v0 + 248))
  {
    v30 = *(v0 + 256);
    swift_unknownObjectRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_2649D85C4(0, v4[2] + 1, 1, v4);
    }

    v32 = v4[2];
    v31 = v4[3];
    if (v32 >= v31 >> 1)
    {
      v4 = sub_2649D85C4((v31 > 1), v32 + 1, 1, v4);
    }

    v33 = *(v0 + 248);
    v4[2] = v32 + 1;
    v34 = &v4[2 * v32];
    v34[4] = v33;
    v34[5] = v30;
  }

  if (*(v0 + 272))
  {
    v35 = *(v0 + 280);
    swift_unknownObjectRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_2649D85C4(0, v4[2] + 1, 1, v4);
    }

    v37 = v4[2];
    v36 = v4[3];
    if (v37 >= v36 >> 1)
    {
      v4 = sub_2649D85C4((v36 > 1), v37 + 1, 1, v4);
    }

    v38 = *(v0 + 272);
    v4[2] = v37 + 1;
    v39 = &v4[2 * v37];
    v39[4] = v38;
    v39[5] = v35;
  }

  v40 = *(v0 + 168);
  v41 = *(v0 + 144);
  v42 = *(v0 + 40);
  v43 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v42);
  (*(v43 + 16))(v42, v43);
  v44 = *(v0 + 96);
  *(v41 + v40) = v44;
  v52 = v44;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = *(v0 + 160);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v46 = sub_2649D85C4(0, v46[2] + 1, 1, *(v0 + 160));
  }

  v48 = v46[2];
  v47 = v46[3];
  if (v48 >= v47 >> 1)
  {
    v46 = sub_2649D85C4((v47 > 1), v48 + 1, 1, v46);
  }

  swift_unknownObjectRelease();
  v46[2] = v48 + 1;
  *&v46[2 * v48 + 4] = v52;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  *(v0 + 312) = v46;
  *(v0 + 320) = v4;
  v49 = *(v0 + 121);
  *(v0 + 112) = *(v0 + 152);
  *(v0 + 120) = v49;
  v50 = swift_task_alloc();
  *(v0 + 328) = v50;
  *v50 = v0;
  v50[1] = sub_264B242DC;

  return sub_264B381F8((v0 + 112), v4, v46);
}

uint64_t sub_264B23E84()
{
  v1 = *(v0 + 144);

  sub_264B37F5C(v1);

  return MEMORY[0x2822009F8](sub_264B23F30, 0, 0);
}

uint64_t sub_264B23F30(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 144);
  v4 = (v3 + *(v2 + 192));
  v5 = *v4;
  v6 = *(v2 + 160);
  if (*v4)
  {
    v7 = v4[1];
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v2 + 160);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_2649D85C4(0, v6[2] + 1, 1, *(v2 + 160));
    }

    v10 = v6[2];
    v9 = v6[3];
    if (v10 >= v9 >> 1)
    {
      v6 = sub_2649D85C4((v9 > 1), v10 + 1, 1, v6);
    }

    swift_unknownObjectRelease();
    v6[2] = v10 + 1;
    v11 = &v6[2 * v10];
    v11[4] = v5;
    v11[5] = v7;
    v3 = *(v2 + 144);
  }

  v12 = (v3 + *(v2 + 216));
  v13 = *v12;
  if (*v12)
  {
    v14 = v12[1];
    swift_unknownObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2649D85C4(0, v6[2] + 1, 1, v6);
    }

    v16 = v6[2];
    v15 = v6[3];
    if (v16 >= v15 >> 1)
    {
      v6 = sub_2649D85C4((v15 > 1), v16 + 1, 1, v6);
    }

    swift_unknownObjectRelease();
    v6[2] = v16 + 1;
    v17 = &v6[2 * v16];
    v17[4] = v13;
    v17[5] = v14;
    v3 = *(v2 + 144);
  }

  v18 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageConsumer);
  if (v18)
  {
    v19 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageConsumer + 8);
    swift_unknownObjectRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2649D85C4(0, v6[2] + 1, 1, v6);
    }

    v21 = v6[2];
    v20 = v6[3];
    if (v21 >= v20 >> 1)
    {
      v6 = sub_2649D85C4((v20 > 1), v21 + 1, 1, v6);
    }

    v6[2] = v21 + 1;
    v22 = &v6[2 * v21];
    v22[4] = v18;
    v22[5] = v19;
    v3 = *(v2 + 144);
  }

  v23 = (v3 + *(v2 + 240));
  v24 = *v23;
  if (*v23)
  {
    v25 = v23[1];
    swift_unknownObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2649D85C4(0, v6[2] + 1, 1, v6);
    }

    v27 = v6[2];
    v26 = v6[3];
    if (v27 >= v26 >> 1)
    {
      v6 = sub_2649D85C4((v26 > 1), v27 + 1, 1, v6);
    }

    swift_unknownObjectRelease();
    v6[2] = v27 + 1;
    v28 = &v6[2 * v27];
    v28[4] = v24;
    v28[5] = v25;
    v3 = *(v2 + 144);
  }

  v29 = (v3 + *(v2 + 264));
  v30 = *v29;
  if (*v29)
  {
    v31 = v29[1];
    swift_unknownObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2649D85C4(0, v6[2] + 1, 1, v6);
    }

    v33 = v6[2];
    v32 = v6[3];
    if (v33 >= v32 >> 1)
    {
      v6 = sub_2649D85C4((v32 > 1), v33 + 1, 1, v6);
    }

    swift_unknownObjectRelease();
    v6[2] = v33 + 1;
    v34 = &v6[2 * v33];
    v34[4] = v30;
    v34[5] = v31;
  }

  v35 = *(v2 + 296);
  *(v2 + 312) = v6;
  *(v2 + 320) = v35;
  v36 = *(v2 + 121);
  *(v2 + 112) = *(v2 + 152);
  *(v2 + 120) = v36;
  v37 = swift_task_alloc();
  *(v2 + 328) = v37;
  *v37 = v2;
  v37[1] = sub_264B242DC;

  return sub_264B381F8((v2 + 112), v35, v6);
}

uint64_t sub_264B242DC()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_264B2449C;
  }

  else
  {

    v2 = sub_264B24400;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264B24400()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264B2449C()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264B24554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A5D8, &qword_264B4BB50);
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F98, &unk_264B468F0);
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = sub_264B41244();
  v4[29] = sub_264B41234();
  v9 = sub_264B411C4();
  v4[30] = v9;
  v4[31] = v8;

  return MEMORY[0x2822009F8](sub_264B2476C, v9, v8);
}

uint64_t sub_264B2476C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[32] = Strong;
  if (Strong)
  {
    v2 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264B40A84();

    v3 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_session);
    v0[33] = v3;

    return MEMORY[0x2822009F8](sub_264B24984, v3, 0);
  }

  else
  {

    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FFA71B8);
    v5 = sub_264B40944();
    v6 = sub_264B41484();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2649C6000, v5, v6, "Self went away before session could activate, drop events", v7, 2u);
      MEMORY[0x266749940](v7, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_264B24984()
{
  sub_264A74A68(v0[27]);
  v0[34] = 0;

  v1 = v0[30];
  v2 = v0[31];

  return MEMORY[0x2822009F8](sub_264B24A18, v1, v2);
}

uint64_t sub_264B24A18()
{
  sub_264B412C4();
  v1 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_sessionInvalidationContinuation;
  v0[35] = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler;
  v0[36] = v1;
  swift_beginAccess();
  v2 = sub_264B41234();
  v0[37] = v2;
  v3 = swift_task_alloc();
  v0[38] = v3;
  *v3 = v0;
  v3[1] = sub_264B24B0C;
  v4 = v0[22];
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 15, v2, v5, v4);
}

uint64_t sub_264B24B0C()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return MEMORY[0x2822009F8](sub_264B24C50, v3, v2);
}

uint64_t sub_264B24C50()
{
  v1 = *(v0 + 120);
  *(v0 + 312) = v1;
  if (v1 <= 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_264B40A84();

        v2 = *(v0 + 96);
        *(v0 + 104) = *(v0 + 88);
        *(v0 + 112) = v2;
        v3 = swift_task_alloc();
        *(v0 + 336) = v3;
        *v3 = v0;
        v3[1] = sub_264B25550;

        return sub_264B22CD8((v0 + 104));
      }

      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v1 == 2)
  {
LABEL_12:
    v12 = *(v0 + 152);
    v13 = *(v0 + 160);
    v14 = *(v0 + 144);
    sub_2649D046C(*(v0 + 256) + *(v0 + 288), v14, &unk_27FF899E0, &qword_264B53440);
    if ((*(v13 + 48))(v14, 1, v12) == 1)
    {
      sub_2649D04D4(*(v0 + 144), &unk_27FF899E0, &qword_264B53440);
      v15 = swift_task_alloc();
      *(v0 + 360) = v15;
      *v15 = v0;
      v15[1] = sub_264B25894;

      return PlaybackServer.invalidate(waitsForSession:)(0);
    }

    else
    {
      (*(*(v0 + 160) + 32))(*(v0 + 168), *(v0 + 144), *(v0 + 152));
      if (qword_27FF883E0 != -1)
      {
        swift_once();
      }

      v16 = sub_264B40964();
      __swift_project_value_buffer(v16, qword_27FFA71B8);
      v17 = sub_264B40944();
      v18 = sub_264B41484();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_2649C6000, v17, v18, "Session is invalidated, resuming continuation", v19, 2u);
        MEMORY[0x266749940](v19, -1, -1);
      }

      v20 = *(v0 + 288);
      v21 = *(v0 + 256);
      v23 = *(v0 + 160);
      v22 = *(v0 + 168);
      v24 = *(v0 + 152);
      v25 = *(v0 + 136);

      sub_264B411E4();
      sub_264A794B4(v1);
      (*(v23 + 8))(v22, v24);
      (*(v23 + 56))(v25, 1, 1, v24);
      swift_beginAccess();
      sub_2649FECCC(v25, v21 + v20, &unk_27FF899E0, &qword_264B53440);
      swift_endAccess();
      v26 = sub_264B41234();
      *(v0 + 296) = v26;
      v27 = swift_task_alloc();
      *(v0 + 304) = v27;
      *v27 = v0;
      v27[1] = sub_264B24B0C;
      v28 = *(v0 + 176);
      v29 = MEMORY[0x277D85700];

      return MEMORY[0x2822003E8](v0 + 120, v26, v29, v28);
    }
  }

  if (v1 != 3)
  {
LABEL_16:
    sub_264A1EE08(v1);

    return MEMORY[0x2822009F8](sub_264B25194, 0, 0);
  }

  v6 = *(v0 + 208);
  v5 = *(v0 + 216);
  v8 = *(v0 + 192);
  v7 = *(v0 + 200);
  v9 = *(v0 + 176);
  v10 = *(v0 + 184);

  (*(v10 + 8))(v8, v9);
  (*(v6 + 8))(v5, v7);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_264B25194(double a1)
{
  *(v1 + 320) = sub_264B41234();
  v3 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B25220, v3, v2);
}

uint64_t sub_264B25220()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 99) = 0;

  sub_264B40A94();
  v1 = swift_task_alloc();
  *(v0 + 328) = v1;
  *v1 = v0;
  v1[1] = sub_264B2530C;

  return PlaybackServer.invalidate(waitsForSession:)(0);
}

uint64_t sub_264B2530C()
{

  return MEMORY[0x2822009F8](sub_264B25408, 0, 0);
}

uint64_t sub_264B25408()
{
  (*(v0[32] + v0[35]))(v0[39]);
  v1 = v0[30];
  v2 = v0[31];

  return MEMORY[0x2822009F8](sub_264B25480, v1, v2);
}

uint64_t sub_264B25480()
{
  v1 = v0[39];
  sub_264A794B4(v1);
  sub_264A794B4(v1);
  v2 = sub_264B41234();
  v0[37] = v2;
  v3 = swift_task_alloc();
  v0[38] = v3;
  *v3 = v0;
  v3[1] = sub_264B24B0C;
  v4 = v0[22];
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 15, v2, v5, v4);
}

uint64_t sub_264B25550()
{
  v2 = *v1;
  v2[43] = v0;

  if (v0)
  {
    v3 = v2[30];
    v4 = v2[31];

    return MEMORY[0x2822009F8](sub_264B25E40, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[44] = v5;
    *v5 = v2;
    v5[1] = sub_264B256B8;

    return sub_264B25EE4();
  }
}

uint64_t sub_264B256B8()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return MEMORY[0x2822009F8](sub_264B257D8, v3, v2);
}

uint64_t sub_264B257D8(double a1)
{
  v2 = sub_264B41234();
  v1[37] = v2;
  v3 = swift_task_alloc();
  v1[38] = v3;
  *v3 = v1;
  v3[1] = sub_264B24B0C;
  v4 = v1[22];
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v1 + 15, v2, v5, v4);
}

uint64_t sub_264B25894()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return MEMORY[0x2822009F8](sub_264B259B4, v3, v2);
}

uint64_t sub_264B259B4()
{
  sub_264A794B4(*(v0 + 312));
  v1 = sub_264B41234();
  *(v0 + 296) = v1;
  v2 = swift_task_alloc();
  *(v0 + 304) = v2;
  *v2 = v0;
  v2[1] = sub_264B24B0C;
  v3 = *(v0 + 176);
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 120, v1, v4, v3);
}

uint64_t sub_264B25A78(double a1)
{
  *(v1 + 376) = sub_264B41234();
  v3 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B25B04, v3, v2);
}

uint64_t sub_264B25B04()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 98) = 0;

  sub_264B40A94();
  v1 = swift_task_alloc();
  *(v0 + 384) = v1;
  *v1 = v0;
  v1[1] = sub_264B25BF0;

  return PlaybackServer.invalidate(waitsForSession:)(0);
}

uint64_t sub_264B25BF0()
{

  return MEMORY[0x2822009F8](sub_264B25CEC, 0, 0);
}

uint64_t sub_264B25CEC()
{
  (*(v0[32] + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler))(v0[46]);
  v1 = v0[30];
  v2 = v0[31];

  return MEMORY[0x2822009F8](sub_264B25D68, v1, v2);
}

uint64_t sub_264B25D68()
{
  v1 = *(v0 + 368);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264B25E40()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v2 + 8))(v1, v3);
  v0[46] = v0[43];

  return MEMORY[0x2822009F8](sub_264B25A78, 0, 0);
}

uint64_t sub_264B25F04()
{
  *(v0 + 24) = sub_264B41244();
  *(v0 + 32) = sub_264B41234();
  v2 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B25F9C, v2, v1);
}

uint64_t sub_264B25F9C()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return MEMORY[0x2822009F8](sub_264B26054, 0, 0);
}

uint64_t sub_264B26054()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_264B26120;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x277D84F78] + 8;
  v4 = MEMORY[0x277D84F78] + 8;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v1, v3, v4, 0, 0, &unk_264B584F0, v2, v5);
}

uint64_t sub_264B26120()
{

  return MEMORY[0x2822009F8](sub_264B2621C, 0, 0);
}

uint64_t sub_264B2621C(double a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  if (*(v4 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_statusEventProducer))
  {
    v5 = *(v4 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_statusEventProducer + 8);
    v6 = swift_unknownObjectRetain();
    sub_264B27BA0(v6, v5, sub_264B3B300, &OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_outgoingStatusEventSubscription);
    swift_unknownObjectRelease();
    v4 = *(v3 + 16);
  }

  if (*(v4 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageProducer))
  {
    v7 = *(v4 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageProducer + 8);
    v8 = swift_unknownObjectRetain();
    sub_264B27BA0(v8, v7, sub_264B3D274, &OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_outgoingAccessibilityMessageSubscription);
    swift_unknownObjectRelease();
  }

  *(v3 + 48) = sub_264B41234();
  v10 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B26350, v10, v9);
}

uint64_t sub_264B26350()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 57) = 1;

  sub_264B40A94();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264B26404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v3[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B264A0, 0, 0);
}

uint64_t sub_264B264A0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_264B41274();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;
  sub_264B01A0C(v1, &unk_264B58528, v5);
  sub_2649D04D4(v1, &qword_27FF898C0, &unk_264B44190);
  v4(v1, 1, 1, v3);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;
  sub_264B01A0C(v1, &unk_264B58538, v6);
  sub_2649D04D4(v1, &qword_27FF898C0, &unk_264B44190);
  v4(v1, 1, 1, v3);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  sub_264B01A0C(v1, &unk_264B58548, v7);
  sub_2649D04D4(v1, &qword_27FF898C0, &unk_264B44190);

  v8 = v0[1];

  return v8();
}

uint64_t sub_264B266E0()
{
  swift_unownedRetainStrong();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_264B26778;

  return sub_264B26888();
}

uint64_t sub_264B26778()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264B268A8(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v3 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventConsumer;
  v5 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventConsumer);
  v2[3] = v5;
  if (!v5)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v11 = sub_264B40964();
    __swift_project_value_buffer(v11, qword_27FFA71B8);
    v8 = sub_264B40944();
    v12 = sub_264B41484();
    if (os_log_type_enabled(v8, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2649C6000, v8, v12, "Caller did not provide a client status consumer, skipping monitoring", v13, 2u);
      MEMORY[0x266749940](v13, -1, -1);
    }

    goto LABEL_12;
  }

  if (*(v3 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventCancellationHandle))
  {
    v6 = qword_27FF883E0;
    swift_unknownObjectRetain();
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_264B40964();
    __swift_project_value_buffer(v7, qword_27FFA71B8);
    v8 = sub_264B40944();
    v9 = sub_264B41484();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2649C6000, v8, v9, "Already monitoring client status events, skipping", v10, 2u);
      MEMORY[0x266749940](v10, -1, -1);
    }

    swift_unknownObjectRelease();
LABEL_12:

    v14 = v2[1];

    return v14();
  }

  v16 = *(v4 + 8);
  v17 = swift_task_alloc();
  v2[4] = v17;
  v17[2] = v3;
  v17[3] = v5;
  v17[4] = v16;
  swift_unknownObjectRetain();
  v18 = swift_task_alloc();
  v2[5] = v18;
  *v18 = v2;
  v18[1] = sub_264B26B90;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264B26B90()
{

  return MEMORY[0x2822009F8](sub_264B3D270, 0, 0);
}

uint64_t sub_264B26CC8()
{
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();
  sub_264B41244();
  *(v0 + 56) = sub_264B41234();
  v2 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B26D68, v2, v1);
}

uint64_t sub_264B26D68()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  v1 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v1;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_264B26E6C;

  return sub_264B26F7C(v0 + 32);
}

uint64_t sub_264B26E6C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264B26F7C(uint64_t a1)
{
  *(v2 + 16) = v1;
  if (*(a1 + 8) != 1)
  {
    v3 = sub_264B26FD4;
    return MEMORY[0x2822009F8](v3, 0, 0);
  }

  if (*a1)
  {
    v3 = sub_264B271A4;
    return MEMORY[0x2822009F8](v3, 0, 0);
  }

  return (*(v2 + 8))();
}

uint64_t sub_264B26FD4()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_264B270A8;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264B270A8()
{

  return MEMORY[0x2822009F8](sub_2649F5338, 0, 0);
}

uint64_t sub_264B271A4()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_264B27278;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264B27278()
{

  return MEMORY[0x2822009F8](sub_264B27374, 0, 0);
}

uint64_t sub_264B27374()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_264B27448;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264B27448()
{

  return MEMORY[0x2822009F8](sub_264B27544, 0, 0);
}

uint64_t sub_264B27544()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_264B275D4;

  return sub_264B27EB4();
}

uint64_t sub_264B275D4()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v2;
  v3[1] = sub_264B27714;

  return sub_264B281BC();
}

uint64_t sub_264B27714()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v2;
  v3[1] = sub_264B27854;

  return sub_264B284C4();
}

uint64_t sub_264B27854()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264B27968()
{
  swift_unownedRetainStrong();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_264B27A44;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264B27A44()
{

  return MEMORY[0x2822009F8](sub_264B27B40, 0, 0);
}

uint64_t sub_264B27B40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264B27BA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20[2] = a3;
  v21 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DE0, &qword_264B4BC00);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AA60, &unk_264B58500);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v20 - v12;
  ObjectType = swift_getObjectType();
  v23 = (*(a2 + 8))(ObjectType, a2);
  sub_2649CB2F0();
  v15 = sub_264B41554();
  v22 = v15;
  v16 = sub_264B41514();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AA68, &unk_264B4CC00);
  sub_2649CB4C8(&unk_27FF8AA70, &qword_27FF8AA68, &unk_264B4CC00, MEMORY[0x277CBCD90]);
  sub_264B3B85C(&qword_27FF887B8, sub_2649CB2F0, MEMORY[0x277D85228]);
  sub_264B40B14();
  sub_2649D04D4(v8, &qword_27FF89DE0, &qword_264B4BC00);

  swift_allocObject();
  v17 = v20[1];
  swift_weakInit();
  sub_2649CB4C8(&unk_27FF8AA80, &qword_27FF8AA60, &unk_264B58500, MEMORY[0x277CBCD60]);
  v18 = sub_264B40B54();

  (*(v10 + 8))(v13, v9);
  *(v17 + *v21) = v18;
}

uint64_t sub_264B27ED4(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v3 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageConsumer;
  v5 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageConsumer);
  v2[3] = v5;
  if (!v5)
  {
    if (qword_27FF88400 != -1)
    {
      swift_once();
    }

    v11 = sub_264B40964();
    __swift_project_value_buffer(v11, qword_27FF8AE58);
    v8 = sub_264B40944();
    v12 = sub_264B41484();
    if (os_log_type_enabled(v8, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2649C6000, v8, v12, "Caller did not provide an accessibility message consumer, skipping monitoring", v13, 2u);
      MEMORY[0x266749940](v13, -1, -1);
    }

    goto LABEL_12;
  }

  if (*(v3 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityEventCancellationHandle))
  {
    v6 = qword_27FF88400;
    swift_unknownObjectRetain();
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_264B40964();
    __swift_project_value_buffer(v7, qword_27FF8AE58);
    v8 = sub_264B40944();
    v9 = sub_264B41484();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2649C6000, v8, v9, "Already monitoring accessibility messages, skipping", v10, 2u);
      MEMORY[0x266749940](v10, -1, -1);
    }

    swift_unknownObjectRelease();
LABEL_12:

    v14 = v2[1];

    return v14();
  }

  v16 = *(v4 + 8);
  v17 = swift_task_alloc();
  v2[4] = v17;
  v17[2] = v3;
  v17[3] = v5;
  v17[4] = v16;
  swift_unknownObjectRetain();
  v18 = swift_task_alloc();
  v2[5] = v18;
  *v18 = v2;
  v18[1] = sub_264B26B90;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264B281DC(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v3 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDragAndDropEventConsumer;
  v5 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDragAndDropEventConsumer);
  v2[3] = v5;
  if (!v5)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v11 = sub_264B40964();
    __swift_project_value_buffer(v11, qword_27FFA71B8);
    v8 = sub_264B40944();
    v12 = sub_264B41484();
    if (os_log_type_enabled(v8, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2649C6000, v8, v12, "Caller did not provide a drag and drop event consumer, skipping monitoring", v13, 2u);
      MEMORY[0x266749940](v13, -1, -1);
    }

    goto LABEL_12;
  }

  if (*(v3 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventEventCancellationHandle))
  {
    v6 = qword_27FF883E0;
    swift_unknownObjectRetain();
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_264B40964();
    __swift_project_value_buffer(v7, qword_27FFA71B8);
    v8 = sub_264B40944();
    v9 = sub_264B41484();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2649C6000, v8, v9, "Already monitoring drag and drop events, skipping", v10, 2u);
      MEMORY[0x266749940](v10, -1, -1);
    }

    swift_unknownObjectRelease();
LABEL_12:

    v14 = v2[1];

    return v14();
  }

  v16 = *(v4 + 8);
  v17 = swift_task_alloc();
  v2[4] = v17;
  v17[2] = v3;
  v17[3] = v5;
  v17[4] = v16;
  swift_unknownObjectRetain();
  v18 = swift_task_alloc();
  v2[5] = v18;
  *v18 = v2;
  v18[1] = sub_264B26B90;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264B284E4(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v3 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentRTIMessageConsumer;
  v5 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentRTIMessageConsumer);
  v2[3] = v5;
  if (!v5)
  {
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v11 = sub_264B40964();
    __swift_project_value_buffer(v11, qword_27FF8AEB8);
    v8 = sub_264B40944();
    v12 = sub_264B414B4();
    if (os_log_type_enabled(v8, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2649C6000, v8, v12, "currentRTIMessageConsumer is missing, we don't have a vendor - skipping monitoring", v13, 2u);
      MEMORY[0x266749940](v13, -1, -1);
    }

    goto LABEL_12;
  }

  if (*(v3 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiEventCancellationHandle))
  {
    v6 = qword_27FF883E0;
    swift_unknownObjectRetain();
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_264B40964();
    __swift_project_value_buffer(v7, qword_27FFA71B8);
    v8 = sub_264B40944();
    v9 = sub_264B41484();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2649C6000, v8, v9, "Already monitoring RTI events, skipping", v10, 2u);
      MEMORY[0x266749940](v10, -1, -1);
    }

    swift_unknownObjectRelease();
LABEL_12:

    v14 = v2[1];

    return v14();
  }

  v16 = *(v4 + 8);
  v17 = swift_task_alloc();
  v2[4] = v17;
  v17[2] = v3;
  v17[3] = v5;
  v17[4] = v16;
  swift_unknownObjectRetain();
  v18 = swift_task_alloc();
  v2[5] = v18;
  *v18 = v2;
  v18[1] = sub_264B287CC;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264B287CC()
{

  return MEMORY[0x2822009F8](sub_264B288E4, 0, 0);
}

uint64_t sub_264B288E4()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264B28944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDA0, &qword_264B58598);
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDA8, &qword_264B585A0);
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDB0, &qword_264B585A8);
  v5[25] = v8;
  v5[26] = *(v8 - 8);
  v5[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B28AE0, 0, 0);
}

uint64_t sub_264B28AE0()
{
  v1 = *(*(v0 + 136) + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_session);
  *(v0 + 224) = v1;
  return MEMORY[0x2822009F8](sub_264B28B0C, v1, 0);
}

uint64_t sub_264B28B0C()
{
  (*(v0[23] + 104))(v0[24], *MEMORY[0x277D85778], v0[22]);
  sub_264B412E4();

  return MEMORY[0x2822009F8](sub_264B28BD0, 0, 0);
}

uint64_t sub_264B28BD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  sub_264B412C4();
  v0[29] = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDrawEventConsumer;
  v1 = swift_task_alloc();
  v0[30] = v1;
  *v1 = v0;
  v1[1] = sub_264B28CC8;
  v2 = v0[19];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v2);
}

uint64_t sub_264B28CC8()
{

  return MEMORY[0x2822009F8](sub_264B28DC4, 0, 0);
}

uint64_t sub_264B28DC4()
{
  v30 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 88);
  if (v2 == 255)
  {
    v15 = *(v0 + 208);
    v14 = *(v0 + 216);
    v16 = *(v0 + 200);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    (*(v15 + 8))(v14, v16);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    v6 = (*(v0 + 136) + *(v0 + 232));
    v7 = *v6;
    *(v0 + 248) = *v6;
    if (v7)
    {
      v8 = v6[1];
      ObjectType = swift_getObjectType();
      *(v0 + 40) = &type metadata for DrawEvent;
      *(v0 + 48) = &off_28765B2B0;
      v10 = swift_allocObject();
      *(v0 + 16) = v10;
      *(v10 + 16) = v1;
      *(v10 + 24) = v3;
      *(v10 + 32) = v4;
      *(v10 + 40) = v5;
      *(v10 + 48) = v2 & 1;
      v11 = *(v8 + 32);
      swift_unknownObjectRetain();
      v27 = (v11 + *v11);
      v12 = swift_task_alloc();
      *(v0 + 256) = v12;
      *v12 = v0;
      v12[1] = sub_264B291C8;

      return v27(v0 + 16, ObjectType, v8);
    }

    else
    {
      if (qword_27FF883E0 != -1)
      {
        swift_once();
      }

      v18 = sub_264B40964();
      __swift_project_value_buffer(v18, qword_27FFA71B8);
      v19 = sub_264B40944();
      v20 = sub_264B41484();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = v28;
        *v21 = 136315138;
        *(v0 + 96) = v1;
        *(v0 + 104) = v3;
        *(v0 + 112) = v4;
        *(v0 + 120) = v5;
        *(v0 + 128) = v2 & 1;
        v22 = sub_264B41064();
        v24 = sub_2649CC004(v22, v23, &v29);

        *(v21 + 4) = v24;
        _os_log_impl(&dword_2649C6000, v19, v20, "Received draw event %s, but consumer is not available. Dropping event.", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x266749940](v28, -1, -1);
        MEMORY[0x266749940](v21, -1, -1);
      }

      v25 = swift_task_alloc();
      *(v0 + 240) = v25;
      *v25 = v0;
      v25[1] = sub_264B28CC8;
      v26 = *(v0 + 152);

      return MEMORY[0x2822003E8](v0 + 56, 0, 0, v26);
    }
  }
}

uint64_t sub_264B291C8()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_264B29394;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v3 = sub_264B292E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264B292E4()
{
  swift_unknownObjectRelease();
  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_264B28CC8;
  v2 = *(v0 + 152);

  return MEMORY[0x2822003E8](v0 + 56, 0, 0, v2);
}

uint64_t sub_264B29394()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[33];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to consume draw event, interrupting: %{public}@", v7, 0xCu);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  sub_264B41244();
  v0[34] = sub_264B41234();
  v12 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B29564, v12, v11);
}

uint64_t sub_264B29564()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 89) = 0;

  sub_264B40A94();
  v1 = swift_task_alloc();
  *(v0 + 280) = v1;
  *v1 = v0;
  v1[1] = sub_264B29650;

  return PlaybackServer.invalidate(waitsForSession:)(0);
}

uint64_t sub_264B29650()
{

  return MEMORY[0x2822009F8](sub_264B2974C, 0, 0);
}

uint64_t sub_264B2974C()
{
  v1 = v0[33];
  (*(v0[17] + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler))(v1);
  swift_unknownObjectRelease();

  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_264B29840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = type metadata accessor for HIDMessage(0);
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B590, &qword_264B50D78);
  v5[14] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE88, &qword_264B586E0);
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE90, &qword_264B586E8);
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE98, &qword_264B586F0);
  v5[21] = v9;
  v5[22] = *(v9 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B29A88, 0, 0);
}

uint64_t sub_264B29A88()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_session);
  *(v0 + 192) = v1;
  return MEMORY[0x2822009F8](sub_264B29AB4, v1, 0);
}

uint64_t sub_264B29AB4()
{
  (*(v0[19] + 104))(v0[20], *MEMORY[0x277D85778], v0[18]);
  sub_264B412E4();

  return MEMORY[0x2822009F8](sub_264B29B78, 0, 0);
}

uint64_t sub_264B29B78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  sub_264B412C4();
  v0[25] = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentControlEventConsumer;
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_264B29C6C;
  v2 = v0[14];
  v3 = v0[15];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_264B29C6C()
{

  return MEMORY[0x2822009F8](sub_264B29D68, 0, 0);
}

uint64_t sub_264B29D68()
{
  v37 = v0;
  v1 = v0[14];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    v3 = v0[22];
    v2 = v0[23];
    v4 = v0[21];
    (*(v0[16] + 8))(v0[17], v0[15]);
    (*(v3 + 8))(v2, v4);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[25];
    v8 = v0[7];
    sub_264B3C650(v1, v0[13], type metadata accessor for HIDMessage);
    v9 = *(v8 + v7);
    v0[27] = v9;
    if (v9)
    {
      v10 = v0[13];
      v11 = v0[9];
      v12 = *(v0[7] + v0[25] + 8);
      ObjectType = swift_getObjectType();
      v0[5] = v11;
      v0[6] = &off_28765E6C8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
      sub_264B3C4B0(v10, boxed_opaque_existential_1, type metadata accessor for HIDMessage);
      v15 = *(v12 + 32);
      swift_unknownObjectRetain();
      v35 = (v15 + *v15);
      v16 = swift_task_alloc();
      v0[28] = v16;
      *v16 = v0;
      v16[1] = sub_264B2A25C;

      return (v35)(v0 + 2, ObjectType, v12);
    }

    else
    {
      if (qword_27FF883E0 != -1)
      {
        swift_once();
      }

      v17 = v0[12];
      v18 = v0[13];
      v19 = sub_264B40964();
      __swift_project_value_buffer(v19, qword_27FFA71B8);
      sub_264B3C4B0(v18, v17, type metadata accessor for HIDMessage);
      v20 = sub_264B40944();
      v21 = sub_264B41484();
      v22 = os_log_type_enabled(v20, v21);
      v24 = v0[12];
      v23 = v0[13];
      if (v22)
      {
        v25 = v0[11];
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v36 = v27;
        *v26 = 136315138;
        sub_264B3C4B0(v24, v25, type metadata accessor for HIDMessage);
        v28 = sub_264B41064();
        v30 = v29;
        sub_264B3C518(v24, type metadata accessor for HIDMessage);
        v31 = sub_2649CC004(v28, v30, &v36);

        *(v26 + 4) = v31;
        _os_log_impl(&dword_2649C6000, v20, v21, "Received control event %s, but consumer is not available. Dropping event.", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x266749940](v27, -1, -1);
        MEMORY[0x266749940](v26, -1, -1);
      }

      else
      {

        sub_264B3C518(v24, type metadata accessor for HIDMessage);
      }

      sub_264B3C518(v23, type metadata accessor for HIDMessage);
      v32 = swift_task_alloc();
      v0[26] = v32;
      *v32 = v0;
      v32[1] = sub_264B29C6C;
      v33 = v0[14];
      v34 = v0[15];

      return MEMORY[0x2822003E8](v33, 0, 0, v34);
    }
  }
}

uint64_t sub_264B2A25C()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_264B2A444;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v3 = sub_264B2A378;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264B2A378()
{
  v1 = v0[13];
  swift_unknownObjectRelease();
  sub_264B3C518(v1, type metadata accessor for HIDMessage);
  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_264B29C6C;
  v3 = v0[14];
  v4 = v0[15];

  return MEMORY[0x2822003E8](v3, 0, 0, v4);
}

uint64_t sub_264B2A444()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[29];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to consume control event, interrupting: %{public}@", v7, 0xCu);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  sub_264B41244();
  v0[30] = sub_264B41234();
  v12 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B2A614, v12, v11);
}

uint64_t sub_264B2A614()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 256) = 0;

  sub_264B40A94();
  v1 = swift_task_alloc();
  *(v0 + 248) = v1;
  *v1 = v0;
  v1[1] = sub_264B2A6FC;

  return PlaybackServer.invalidate(waitsForSession:)(0);
}

uint64_t sub_264B2A6FC()
{

  return MEMORY[0x2822009F8](sub_264B2A7F8, 0, 0);
}

uint64_t sub_264B2A7F8()
{
  v1 = v0[29];
  v2 = v0[13];
  (*(v0[7] + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler))(v1);
  swift_unknownObjectRelease();

  sub_264B3C518(v2, type metadata accessor for HIDMessage);
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_264B2A944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v22 - v16;
  v18 = sub_264B41274();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v10 + 16))(v13, a1, v9);
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = a2;
  (*(v10 + 32))(&v20[v19], v13, v9);

  *(a2 + *a5) = sub_264A10C20(0, 0, v17, a4, v20);
}

uint64_t sub_264B2AB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE50, &qword_264B58698);
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE58, &qword_264B586A0);
  v5[24] = v7;
  v5[25] = *(v7 - 8);
  v5[26] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE60, &qword_264B586A8);
  v5[27] = v8;
  v5[28] = *(v8 - 8);
  v5[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B2ACDC, 0, 0);
}

uint64_t sub_264B2ACDC()
{
  v1 = *(*(v0 + 152) + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_session);
  *(v0 + 240) = v1;
  return MEMORY[0x2822009F8](sub_264B2AD08, v1, 0);
}

uint64_t sub_264B2AD08()
{
  (*(v0[25] + 104))(v0[26], *MEMORY[0x277D85778], v0[24]);
  sub_264B412E4();

  return MEMORY[0x2822009F8](sub_264B2ADCC, 0, 0);
}

uint64_t sub_264B2ADCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  sub_264B412C4();
  v0[31] = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentSystemEventConsumer;
  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_264B2AEC4;
  v2 = v0[21];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v2);
}

uint64_t sub_264B2AEC4()
{

  return MEMORY[0x2822009F8](sub_264B2AFC0, 0, 0);
}

uint64_t sub_264B2AFC0(uint64_t a1, uint64_t a2)
{
  v45 = v2;
  v4 = v2[7];
  v3 = v2[8];
  v5 = v2[9];
  v6 = v2[10];
  v2[33] = v4;
  v2[34] = v3;
  v2[35] = v5;
  v2[36] = v6;
  if (v3 == 4)
  {
    v8 = v2[28];
    v7 = v2[29];
    v9 = v2[27];
    (*(v2[22] + 8))(v2[23], v2[21]);
    (*(v8 + 8))(v7, v9);

    v10 = v2[1];

    return v10();
  }

  else
  {
    v12 = (v2[19] + v2[31]);
    v13 = *v12;
    v2[37] = *v12;
    if (v13)
    {
      v14 = v12[1];
      v15 = qword_27FF883E0;
      swift_unknownObjectRetain();
      if (v15 != -1)
      {
        swift_once();
      }

      v16 = sub_264B40964();
      v2[38] = __swift_project_value_buffer(v16, qword_27FFA71B8);
      sub_264A18774(v4, v3, v5, v6);
      v17 = sub_264B40944();
      v18 = sub_264B41484();
      sub_264A187C4(v4, v3, v5, v6);
      if (os_log_type_enabled(v17, v18))
      {
        v42 = v18;
        buf = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v44 = v39;
        *buf = 136315138;
        v2[15] = v4;
        v2[16] = v3;
        v2[17] = v5;
        v2[18] = v6;
        sub_264A18774(v4, v3, v5, v6);
        v19 = sub_264B41064();
        v21 = v17;
        v22 = v14;
        v23 = sub_2649CC004(v19, v20, &v44);

        *(buf + 4) = v23;
        v14 = v22;
        _os_log_impl(&dword_2649C6000, v21, v42, "system event consumer available, consuming event: %s", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x266749940](v39, -1, -1);
        MEMORY[0x266749940](buf, -1, -1);
      }

      else
      {
      }

      ObjectType = swift_getObjectType();
      v2[5] = &type metadata for SystemGestureEvent;
      v2[6] = &off_28765C718;
      v33 = swift_allocObject();
      v2[2] = v33;
      v33[2] = v4;
      v33[3] = v3;
      v33[4] = v5;
      v33[5] = v6;
      v34 = *(v14 + 32);
      sub_264A18774(v4, v3, v5, v6);
      v41 = v34 + *v34;
      v35 = swift_task_alloc();
      v2[39] = v35;
      *v35 = v2;
      v35[1] = sub_264B2B5D4;

      return (v41)(v2 + 2, ObjectType, v14);
    }

    else
    {
      if (qword_27FF883E0 != -1)
      {
        swift_once();
      }

      v24 = sub_264B40964();
      __swift_project_value_buffer(v24, qword_27FFA71B8);
      sub_264A18774(v4, v3, v5, v6);
      v25 = sub_264B40944();
      v26 = sub_264B41484();
      sub_264A187C4(v4, v3, v5, v6);
      if (os_log_type_enabled(v25, v26))
      {
        v40 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v44 = v43;
        *v40 = 136315138;
        v2[11] = v4;
        v2[12] = v3;
        v2[13] = v5;
        v2[14] = v6;
        sub_264A18774(v4, v3, v5, v6);
        v27 = sub_264B41064();
        v29 = v25;
        v30 = v26;
        v31 = sub_2649CC004(v27, v28, &v44);

        *(v40 + 4) = v31;
        _os_log_impl(&dword_2649C6000, v29, v30, "Received system event %s, but consumer is not available. Dropping event.", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x266749940](v43, -1, -1);
        MEMORY[0x266749940](v40, -1, -1);
        sub_264A187C4(v4, v3, v5, v6);
      }

      else
      {

        sub_264A187C4(v4, v3, v5, v6);
      }

      v36 = swift_task_alloc();
      v2[32] = v36;
      *v36 = v2;
      v36[1] = sub_264B2AEC4;
      v37 = v2[21];

      return MEMORY[0x2822003E8](v2 + 7, 0, 0, v37);
    }
  }
}

uint64_t sub_264B2B5D4()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_264B2B7C4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v3 = sub_264B2B6F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264B2B6F0()
{
  v1 = v0[36];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  swift_unknownObjectRelease();
  sub_264A187C4(v4, v3, v2, v1);
  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_264B2AEC4;
  v6 = v0[21];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v6);
}

uint64_t sub_264B2B7C4()
{
  v1 = v0[40];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v1;
  v3 = sub_264B40944();
  v4 = sub_264B41494();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[40];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2649C6000, v3, v4, "Failed to consume system event, interrupting: %{public}@", v6, 0xCu);
    sub_2649D04D4(v7, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  sub_264B41244();
  v0[41] = sub_264B41234();
  v11 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B2B950, v11, v10);
}

uint64_t sub_264B2B950()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 344) = 0;

  sub_264B40A94();
  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  *v1 = v0;
  v1[1] = sub_264B2BA38;

  return PlaybackServer.invalidate(waitsForSession:)(0);
}

uint64_t sub_264B2BA38()
{

  return MEMORY[0x2822009F8](sub_264B2BB34, 0, 0);
}

uint64_t sub_264B2BB34()
{
  v1 = v0[40];
  v2 = v0[36];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[33];
  (*(v0[19] + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler))(v1);
  swift_unknownObjectRelease();

  sub_264A187C4(v5, v4, v3, v2);
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[27];
  (*(v0[22] + 8))(v0[23], v0[21]);
  (*(v7 + 8))(v6, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_264B2BC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[139] = a7;
  v7[138] = a6;
  v7[137] = a5;
  v7[136] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8B0, &qword_264B51958);
  v7[140] = v8;
  v7[141] = *(v8 - 8);
  v7[142] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8B8, &qword_264B51960);
  v7[143] = v9;
  v7[144] = *(v9 - 8);
  v7[145] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8C0, &qword_264B51968);
  v7[146] = v10;
  v7[147] = *(v10 - 8);
  v7[148] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B2BDF4, 0, 0);
}

uint64_t sub_264B2BDF4()
{
  v1 = *(*(v0 + 1088) + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_session);
  *(v0 + 1192) = v1;
  return MEMORY[0x2822009F8](sub_264B2BE20, v1, 0);
}

uint64_t sub_264B2BE20()
{
  (*(v0[144] + 104))(v0[145], *MEMORY[0x277D85778], v0[143]);
  sub_264B412E4();

  return MEMORY[0x2822009F8](sub_264B2BEEC, 0, 0);
}

uint64_t sub_264B2BEEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  sub_264B412C4();
  v1 = swift_task_alloc();
  *(v0 + 1200) = v1;
  *v1 = v0;
  v1[1] = sub_264B2BFD8;
  v2 = *(v0 + 1120);

  return MEMORY[0x2822003E8](v0 + 120, 0, 0, v2);
}

uint64_t sub_264B2BFD8()
{

  return MEMORY[0x2822009F8](sub_264B2C0D4, 0, 0);
}

uint64_t sub_264B2C0D4()
{
  v44 = v0;
  v1 = *(v0 + 168);
  v2 = (v0 + 952);
  v3 = *(v0 + 200);
  *(v0 + 80) = *(v0 + 184);
  *(v0 + 96) = v3;
  *(v0 + 112) = *(v0 + 216);
  v4 = *(v0 + 120);
  v5 = *(v0 + 136);
  *(v0 + 16) = v4;
  *(v0 + 32) = v5;
  v6 = *(v0 + 152);
  *(v0 + 48) = v6;
  *(v0 + 64) = v1;
  *(v0 + 968) = v5;
  *(v0 + 984) = v6;
  *(v0 + 952) = v4;
  v7 = *(v0 + 72);
  *(v0 + 1000) = *(v0 + 64);
  *(v0 + 1040) = *(v0 + 112);
  v8 = *(v0 + 96);
  *(v0 + 1008) = *(v0 + 80);
  *(v0 + 1024) = v8;
  if ((v7 & 0x3FFFFFFFFFFFFF1ELL) == 0xFFFFFFF1ELL)
  {
    v9 = *(v0 + 1184);
    v10 = *(v0 + 1176);
    v11 = *(v0 + 1168);
    (*(*(v0 + 1128) + 8))(*(v0 + 1136), *(v0 + 1120));
    (*(v10 + 8))(v9, v11);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v14 = (v0 + 1008);
    v15 = sub_264B40964();
    *(v0 + 1208) = __swift_project_value_buffer(v15, qword_27FFA71B8);
    v16 = *(v0 + 96);
    *(v0 + 288) = *(v0 + 80);
    *(v0 + 304) = v16;
    *(v0 + 320) = *(v0 + 112);
    v17 = *(v0 + 32);
    *(v0 + 224) = *(v0 + 16);
    *(v0 + 240) = v17;
    v18 = *(v0 + 64);
    *(v0 + 256) = *(v0 + 48);
    *(v0 + 272) = v18;
    sub_264A7D664(v0 + 224, v0 + 328);
    v19 = sub_264B40944();
    v20 = sub_264B41484();
    sub_2649D04D4(v0 + 16, &qword_27FF8B8C8, &qword_264B51970);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v43 = v41;
      *v21 = 136315138;
      v22 = *(v0 + 968);
      *(v0 + 744) = *v2;
      *(v0 + 760) = v22;
      *(v0 + 776) = *(v0 + 984);
      *(v0 + 792) = *(v0 + 1000);
      *(v0 + 800) = v7;
      v23 = *(v0 + 1024);
      *(v0 + 808) = *v14;
      *(v0 + 824) = v23;
      *(v0 + 840) = *(v0 + 1040);
      v24 = *(v0 + 96);
      *(v0 + 704) = *(v0 + 80);
      *(v0 + 720) = v24;
      *(v0 + 736) = *(v0 + 112);
      v25 = *(v0 + 32);
      *(v0 + 640) = *(v0 + 16);
      *(v0 + 656) = v25;
      v26 = *(v0 + 64);
      *(v0 + 672) = *(v0 + 48);
      *(v0 + 688) = v26;
      sub_264A7D664(v0 + 640, v0 + 848);
      v27 = sub_264B41064();
      v29 = sub_2649CC004(v27, v28, &v43);

      *(v21 + 4) = v29;
      _os_log_impl(&dword_2649C6000, v19, v20, "Consuming client status event: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x266749940](v41, -1, -1);
      MEMORY[0x266749940](v21, -1, -1);
    }

    v42 = *(v0 + 1112);
    ObjectType = swift_getObjectType();
    *(v0 + 1072) = &type metadata for StatusEvent;
    *(v0 + 1080) = &off_28765B558;
    v31 = swift_allocObject();
    *(v0 + 1048) = v31;
    v32 = *(v0 + 968);
    *(v31 + 16) = *v2;
    *(v31 + 32) = v32;
    *(v31 + 48) = *(v0 + 984);
    *(v31 + 64) = *(v0 + 1000);
    *(v31 + 72) = v7;
    v33 = *(v0 + 1024);
    *(v31 + 80) = *v14;
    *(v31 + 96) = v33;
    *(v31 + 112) = *(v0 + 1040);
    v34 = *(v42 + 32);
    v35 = *(v0 + 32);
    *(v0 + 432) = *(v0 + 16);
    *(v0 + 448) = v35;
    *(v0 + 528) = *(v0 + 112);
    v36 = *(v0 + 96);
    *(v0 + 496) = *(v0 + 80);
    *(v0 + 512) = v36;
    v37 = *(v0 + 64);
    *(v0 + 464) = *(v0 + 48);
    *(v0 + 480) = v37;
    sub_264A7D664(v0 + 432, v0 + 536);
    v40 = (v34 + *v34);
    v38 = swift_task_alloc();
    *(v0 + 1216) = v38;
    *v38 = v0;
    v38[1] = sub_264B2C570;
    v39 = *(v0 + 1112);

    return v40(v0 + 1048, ObjectType, v39);
  }
}

uint64_t sub_264B2C570()
{
  v2 = *v1;
  *(*v1 + 1224) = v0;

  if (v0)
  {
    v3 = sub_264B2C74C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 1048));
    v3 = sub_264B2C68C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264B2C68C()
{
  sub_2649D04D4(v0 + 16, &qword_27FF8B8C8, &qword_264B51970);
  v1 = swift_task_alloc();
  *(v0 + 1200) = v1;
  *v1 = v0;
  v1[1] = sub_264B2BFD8;
  v2 = *(v0 + 1120);

  return MEMORY[0x2822003E8](v0 + 120, 0, 0, v2);
}

uint64_t sub_264B2C74C()
{
  v1 = v0[153];
  __swift_destroy_boxed_opaque_existential_0(v0 + 131);
  v2 = v1;
  v3 = sub_264B40944();
  v4 = sub_264B41494();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[153];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2649C6000, v3, v4, "Failed to consume client status event, interrupting: %{public}@", v6, 0xCu);
    sub_2649D04D4(v7, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  sub_264B41244();
  v0[154] = sub_264B41234();
  v11 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B2C8D8, v11, v10);
}

uint64_t sub_264B2C8D8()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 1248) = 0;

  sub_264B40A94();
  v1 = swift_task_alloc();
  *(v0 + 1240) = v1;
  *v1 = v0;
  v1[1] = sub_264B2C9C0;

  return PlaybackServer.invalidate(waitsForSession:)(0);
}

uint64_t sub_264B2C9C0()
{

  return MEMORY[0x2822009F8](sub_264B2CABC, 0, 0);
}

uint64_t sub_264B2CABC()
{
  v1 = v0[153];
  (*(v0[136] + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler))(v1);

  sub_2649D04D4((v0 + 2), &qword_27FF8B8C8, &qword_264B51970);
  v2 = v0[148];
  v3 = v0[147];
  v4 = v0[146];
  (*(v0[141] + 8))(v0[142], v0[140]);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_264B2CBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B880, &qword_264B51908);
  v7[15] = v8;
  v7[16] = *(v8 - 8);
  v7[17] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B888, &qword_264B51910);
  v7[18] = v9;
  v7[19] = *(v9 - 8);
  v7[20] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B890, &qword_264B51918);
  v7[21] = v10;
  v7[22] = *(v10 - 8);
  v7[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B2CD68, 0, 0);
}

uint64_t sub_264B2CD68()
{
  v1 = *(*(v0 + 88) + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_session);
  *(v0 + 192) = v1;
  return MEMORY[0x2822009F8](sub_264B2CD94, v1, 0);
}

uint64_t sub_264B2CD94()
{
  (*(v0[19] + 104))(v0[20], *MEMORY[0x277D85778], v0[18]);
  sub_264B412E4();

  return MEMORY[0x2822009F8](sub_264B2CE58, 0, 0);
}

uint64_t sub_264B2CE58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  sub_264B412C4();
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_264B2CF44;
  v2 = *(v0 + 120);

  return MEMORY[0x2822003E8](v0 + 56, 0, 0, v2);
}

uint64_t sub_264B2CF44()
{

  return MEMORY[0x2822009F8](sub_264B2D040, 0, 0);
}

uint64_t sub_264B2D040()
{
  v23 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v0[26] = v1;
  v0[27] = v2;
  if ((~v2 & 0x3000000000000000) != 0)
  {
    if (qword_27FF88400 != -1)
    {
      swift_once();
    }

    v8 = sub_264B40964();
    v0[28] = __swift_project_value_buffer(v8, qword_27FF8AE58);
    sub_264A5448C(v1, v2);
    v9 = sub_264B40944();
    v10 = sub_264B41484();
    sub_264ACCBB4(v1, v2);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      v0[9] = v1;
      v0[10] = v2;
      sub_264A5448C(v1, v2);
      v13 = sub_264B41064();
      v15 = sub_2649CC004(v13, v14, &v22);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_2649C6000, v9, v10, "Consuming accessibility message: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x266749940](v12, -1, -1);
      MEMORY[0x266749940](v11, -1, -1);
    }

    v21 = v0[14];
    ObjectType = swift_getObjectType();
    v0[5] = &type metadata for AccessibilityMessage;
    v0[6] = &off_28765A468;
    v0[2] = v1;
    v0[3] = v2;
    v17 = *(v21 + 32);
    sub_264A5448C(v1, v2);
    v20 = (v17 + *v17);
    v18 = swift_task_alloc();
    v0[29] = v18;
    *v18 = v0;
    v18[1] = sub_264B2D394;
    v19 = v0[14];

    return (v20)(v0 + 2, ObjectType, v19);
  }

  else
  {
    v4 = v0[22];
    v3 = v0[23];
    v5 = v0[21];
    (*(v0[16] + 8))(v0[17], v0[15]);
    (*(v4 + 8))(v3, v5);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_264B2D394()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_264B2D560;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v3 = sub_264B2D4B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264B2D4B0()
{
  sub_264ACCBB4(v0[26], v0[27]);
  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_264B2CF44;
  v2 = v0[15];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v2);
}

uint64_t sub_264B2D560()
{
  v1 = v0[30];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v1;
  v3 = sub_264B40944();
  v4 = sub_264B41494();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[30];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2649C6000, v3, v4, "Failed to consume accessibility message, interrupting: %{public}@", v6, 0xCu);
    sub_2649D04D4(v7, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  sub_264B41244();
  v0[31] = sub_264B41234();
  v11 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B2D6EC, v11, v10);
}

uint64_t sub_264B2D6EC()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 264) = 0;

  sub_264B40A94();
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_264B2D7D4;

  return PlaybackServer.invalidate(waitsForSession:)(0);
}

uint64_t sub_264B2D7D4()
{

  return MEMORY[0x2822009F8](sub_264B2D8D0, 0, 0);
}

uint64_t sub_264B2D8D0()
{
  v1 = v0[30];
  v3 = v0[26];
  v2 = v0[27];
  (*(v0[11] + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler))(v1);

  sub_264ACCBB4(v3, v2);
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_264B2D9C8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A940, &qword_264B4CAE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v19[-v6 - 8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A960, &unk_264B58510);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v19[-v10 - 8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_bufferedSendingContinuation;
    swift_beginAccess();
    if (!(*(v4 + 48))(v13 + v14, 1, v3))
    {
      (*(v4 + 16))(v7, v13 + v14, v3);

      sub_2649CB5C0(a1, v19);
      sub_264B412A4();
      (*(v4 + 8))(v7, v3);
      v15 = 0;
      goto LABEL_6;
    }
  }

  v15 = 1;
LABEL_6:
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8A968, &qword_264B4CB00);
  (*(*(v16 - 8) + 56))(v11, v15, 1, v16);
  return sub_2649D04D4(v11, &qword_27FF8A960, &unk_264B58510);
}

uint64_t sub_264B2DC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B898, &unk_264B51930);
  v7[21] = v8;
  v7[22] = *(v8 - 8);
  v7[23] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8A0, &unk_264B58630);
  v7[24] = v9;
  v7[25] = *(v9 - 8);
  v7[26] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8A8, &qword_264B51940);
  v7[27] = v10;
  v7[28] = *(v10 - 8);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B2DDB4, 0, 0);
}

uint64_t sub_264B2DDB4()
{
  v1 = *(*(v0 + 136) + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_session);
  *(v0 + 240) = v1;
  return MEMORY[0x2822009F8](sub_264B2DDE0, v1, 0);
}

uint64_t sub_264B2DDE0()
{
  (*(v0[25] + 104))(v0[26], *MEMORY[0x277D85778], v0[24]);
  sub_264B412E4();

  return MEMORY[0x2822009F8](sub_264B2DEA4, 0, 0);
}

uint64_t sub_264B2DEA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  sub_264B412C4();
  v1 = swift_task_alloc();
  *(v0 + 248) = v1;
  *v1 = v0;
  v1[1] = sub_264B2DF90;
  v2 = *(v0 + 168);

  return MEMORY[0x2822003E8](v0 + 56, 0, 0, v2);
}

uint64_t sub_264B2DF90()
{

  return MEMORY[0x2822009F8](sub_264B2E08C, 0, 0);
}

uint64_t sub_264B2E08C()
{
  v31 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  *(v0 + 256) = v1;
  *(v0 + 264) = v2;
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  *(v0 + 272) = v4;
  *(v0 + 280) = v3;
  v5 = *(v0 + 88);
  *(v0 + 90) = v5;
  if (v3)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v6 = v5 & 0x100;
    v7 = sub_264B40964();
    *(v0 + 288) = __swift_project_value_buffer(v7, qword_27FFA71B8);
    sub_2649DEF18(v1, v2);

    v8 = sub_264B40944();
    v9 = sub_264B41484();
    sub_264ACCD54(v1, v2, v4, v3);
    if (os_log_type_enabled(v8, v9))
    {
      v14 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30 = v27;
      *v14 = 136446210;
      *(v0 + 96) = v1;
      *(v0 + 104) = v2;
      *(v0 + 112) = v4;
      *(v0 + 120) = v3;
      *(v0 + 128) = v5 & 1;
      v26 = v6 >> 8;
      *(v0 + 129) = BYTE1(v6);
      sub_2649DEF18(v1, v2);

      v10 = sub_264B41064();
      v12 = sub_2649CC004(v10, v11, &v30);

      *(v14 + 4) = v12;
      _os_log_impl(&dword_2649C6000, v8, v9, "Consuming drag and drop event: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x266749940](v27, -1, -1);
      v13 = v14;
      LOBYTE(v14) = v26;
      MEMORY[0x266749940](v13, -1, -1);

      v15 = v5 & 1;
    }

    else
    {

      v15 = v5 & 1;
      LODWORD(v14) = v6 >> 8;
    }

    v29 = *(v0 + 160);
    ObjectType = swift_getObjectType();
    *(v0 + 40) = &type metadata for DragAndDropEvent;
    *(v0 + 48) = &off_28765F610;
    v22 = swift_allocObject();
    *(v0 + 16) = v22;
    *(v22 + 16) = v1;
    *(v22 + 24) = v2;
    *(v22 + 32) = v4;
    *(v22 + 40) = v3;
    *(v22 + 48) = v15;
    *(v22 + 49) = v14;
    v23 = *(v29 + 32);
    sub_2649DEF18(v1, v2);

    v28 = (v23 + *v23);
    v24 = swift_task_alloc();
    *(v0 + 296) = v24;
    *v24 = v0;
    v24[1] = sub_264B2E468;
    v25 = *(v0 + 160);

    return v28(v0 + 16, ObjectType, v25);
  }

  else
  {
    v17 = *(v0 + 224);
    v16 = *(v0 + 232);
    v18 = *(v0 + 216);
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    (*(v17 + 8))(v16, v18);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_264B2E468()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_264B2E63C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v3 = sub_264B2E584;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264B2E584()
{
  sub_264ACCD54(v0[32], v0[33], v0[34], v0[35]);
  v1 = swift_task_alloc();
  v0[31] = v1;
  *v1 = v0;
  v1[1] = sub_264B2DF90;
  v2 = v0[21];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v2);
}

uint64_t sub_264B2E63C()
{
  v1 = v0[38];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v1;
  v3 = sub_264B40944();
  v4 = sub_264B41494();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[38];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2649C6000, v3, v4, "Failed to consume drag and drop event, interrupting: %{public}@", v6, 0xCu);
    sub_2649D04D4(v7, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  sub_264B41244();
  v0[39] = sub_264B41234();
  v11 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B2E7C8, v11, v10);
}

uint64_t sub_264B2E7C8()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 92) = 0;

  sub_264B40A94();
  v1 = swift_task_alloc();
  *(v0 + 320) = v1;
  *v1 = v0;
  v1[1] = sub_264B2E8B4;

  return PlaybackServer.invalidate(waitsForSession:)(0);
}

uint64_t sub_264B2E8B4()
{

  return MEMORY[0x2822009F8](sub_264B2E9B0, 0, 0);
}

uint64_t sub_264B2E9B0()
{
  v1 = v0[38];
  v3 = v0[34];
  v2 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  (*(v0[17] + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler))(v1);

  sub_264ACCD54(v5, v4, v3, v2);
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[27];
  (*(v0[22] + 8))(v0[23], v0[21]);
  (*(v7 + 8))(v6, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_264B2EAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v30 = a6;
  v31 = a7;
  v29 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v28 - v18;
  v20 = sub_264B41274();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v11 + 16))(v15, a1, v10);
  v21 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v22 = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = a2;
  (*(v11 + 32))(&v23[v21], v15, v10);
  v24 = &v23[v22];
  v25 = v29;
  *v24 = a3;
  *(v24 + 1) = v25;

  swift_unknownObjectRetain();
  v26 = sub_264A10C20(0, 0, v19, v30, v23);
  *(a2 + *v31) = v26;
}

uint64_t sub_264B2ECEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = type metadata accessor for RTIMessage(0);
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A330, &qword_264B4A7A0);
  v7[16] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDE8, &qword_264B585E8);
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8E0, &unk_264B585F0);
  v7[20] = v10;
  v7[21] = *(v10 - 8);
  v7[22] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A08, &qword_264B449F0);
  v7[23] = v11;
  v7[24] = *(v11 - 8);
  v7[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B2EF38, 0, 0);
}

uint64_t sub_264B2EF38()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_session);
  *(v0 + 208) = v1;
  return MEMORY[0x2822009F8](sub_264B2EF64, v1, 0);
}

uint64_t sub_264B2EF64()
{
  (*(v0[21] + 104))(v0[22], *MEMORY[0x277D85778], v0[20]);
  sub_264B412E4();

  return MEMORY[0x2822009F8](sub_264B2F028, 0, 0);
}

uint64_t sub_264B2F028()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  sub_264B412C4();
  v1 = swift_task_alloc();
  v0[27] = v1;
  *v1 = v0;
  v1[1] = sub_264B2F110;
  v2 = v0[16];
  v3 = v0[17];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_264B2F110()
{

  return MEMORY[0x2822009F8](sub_264B2F20C, 0, 0);
}

uint64_t sub_264B2F20C()
{
  v30 = v0;
  v1 = v0[16];
  if ((*(v0[12] + 48))(v1, 1, v0[11]) == 1)
  {
    v3 = v0[24];
    v2 = v0[25];
    v4 = v0[23];
    (*(v0[18] + 8))(v0[19], v0[17]);
    (*(v3 + 8))(v2, v4);

    v5 = v0[1];

    return v5();
  }

  else
  {
    sub_264B3C650(v1, v0[15], type metadata accessor for RTIMessage);
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v7 = v0[14];
    v8 = v0[15];
    v9 = sub_264B40964();
    v0[28] = __swift_project_value_buffer(v9, qword_27FFA71B8);
    sub_264B3C4B0(v8, v7, type metadata accessor for RTIMessage);
    v10 = sub_264B40944();
    v11 = sub_264B41484();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[14];
    if (v12)
    {
      v14 = v0[13];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136446210;
      sub_264B3C4B0(v13, v14, type metadata accessor for RTIMessage);
      v17 = sub_264B41064();
      v19 = v18;
      sub_264B3C518(v13, type metadata accessor for RTIMessage);
      v20 = sub_2649CC004(v17, v19, &v29);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_2649C6000, v10, v11, "Consuming RTI event: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x266749940](v16, -1, -1);
      MEMORY[0x266749940](v15, -1, -1);
    }

    else
    {

      sub_264B3C518(v13, type metadata accessor for RTIMessage);
    }

    v21 = v0[15];
    v22 = v0[11];
    v28 = v0[10];
    ObjectType = swift_getObjectType();
    v0[5] = v22;
    v0[6] = &off_28765CD50;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    sub_264B3C4B0(v21, boxed_opaque_existential_1, type metadata accessor for RTIMessage);
    v27 = (*(v28 + 32) + **(v28 + 32));
    v25 = swift_task_alloc();
    v0[29] = v25;
    *v25 = v0;
    v25[1] = sub_264B2F634;
    v26 = v0[10];

    return v27(v0 + 2, ObjectType, v26);
  }
}

uint64_t sub_264B2F634()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_264B2F810;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v3 = sub_264B2F750;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264B2F750()
{
  sub_264B3C518(v0[15], type metadata accessor for RTIMessage);
  v1 = swift_task_alloc();
  v0[27] = v1;
  *v1 = v0;
  v1[1] = sub_264B2F110;
  v2 = v0[16];
  v3 = v0[17];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_264B2F810()
{
  v1 = v0[30];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v1;
  v3 = sub_264B40944();
  v4 = sub_264B41494();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[30];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2649C6000, v3, v4, "Failed to consume RTI event, interrupting: %{public}@", v6, 0xCu);
    sub_2649D04D4(v7, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  sub_264B41244();
  v0[31] = sub_264B41234();
  v11 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B2F99C, v11, v10);
}

uint64_t sub_264B2F99C()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 264) = 0;

  sub_264B40A94();
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_264B2FA84;

  return PlaybackServer.invalidate(waitsForSession:)(0);
}

uint64_t sub_264B2FA84()
{

  return MEMORY[0x2822009F8](sub_264B2FB80, 0, 0);
}

uint64_t sub_264B2FB80()
{
  v1 = v0[30];
  v2 = v0[15];
  (*(v0[7] + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler))(v1);

  sub_264B3C518(v2, type metadata accessor for RTIMessage);
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  (*(v0[18] + 8))(v0[19], v0[17]);
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_264B2FCC0(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v51 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v52 = *(v2 - 8);
  v53 = v2;
  v54 = *(v52 + 64);
  MEMORY[0x28223BE20](v2, v3);
  v50 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v56 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA00, &unk_264B4CBA0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AA18, &qword_264B4CBD0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v43 - v15;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A940, &qword_264B4CAE0);
  v17 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v18);
  v20 = &v43 - v19;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA20, &unk_264B4CBD8);
  v21 = *(v46 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x28223BE20](v46, v23);
  v45 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v57 = &v43 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA30, &qword_264B44EE0);
  (*(v13 + 104))(v16, *MEMORY[0x277D85778], v12);
  v48 = v20;
  sub_264B41284();
  (*(v13 + 8))(v16, v12);
  v47 = v17;
  v27 = v55;
  (*(v17 + 16))(v11, v20, v55);
  (*(v17 + 56))(v11, 0, 1, v27);
  v28 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_bufferedSendingContinuation;
  v29 = v49;
  swift_beginAccess();
  sub_2649FECCC(v11, v29 + v28, &unk_27FF8AA00, &unk_264B4CBA0);
  swift_endAccess();
  v30 = v56;
  sub_264B41254();
  v31 = sub_264B41274();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  v44 = swift_allocObject();
  swift_weakInit();
  v32 = v52;
  v33 = v50;
  v34 = v53;
  (*(v52 + 16))(v50, v51, v53);
  v35 = v45;
  v36 = v46;
  (*(v21 + 16))(v45, v57, v46);
  v37 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v38 = (v54 + *(v21 + 80) + v37) & ~*(v21 + 80);
  v39 = (v22 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  (*(v32 + 32))(v40 + v37, v33, v34);
  (*(v21 + 32))(v40 + v38, v35, v36);
  *(v40 + v39) = v44;
  v41 = v56;
  sub_2649F62D0(0, 0, v56, &unk_264B58560, v40);

  sub_2649D04D4(v41, &qword_27FF898C0, &unk_264B44190);
  (*(v47 + 8))(v48, v55);
  return (*(v21 + 8))(v57, v36);
}

uint64_t sub_264B3029C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  v6[21] = type metadata accessor for ControlMessage(0);
  v6[22] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA40, &qword_264B4CBF8);
  v6[23] = v7;
  v6[24] = *(v7 - 8);
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B3039C, 0, 0);
}

uint64_t sub_264B3039C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA20, &unk_264B4CBD8);
  sub_264B412C4();
  swift_beginAccess();
  v0[26] = 0;
  v1 = swift_task_alloc();
  v0[27] = v1;
  *v1 = v0;
  v1[1] = sub_264B304AC;
  v2 = v0[23];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v2);
}

uint64_t sub_264B304AC()
{

  return MEMORY[0x2822009F8](sub_264B305A8, 0, 0);
}

uint64_t sub_264B305A8()
{
  if (*(v0 + 40))
  {
    sub_2649D2AAC((v0 + 16), v0 + 56);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v2 = *(Strong + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_session);
      *(v0 + 224) = v2;

      return MEMORY[0x2822009F8](sub_264B3073C, v2, 0);
    }

    else
    {
      v4 = *(v0 + 208);
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
      *(v0 + 208) = v4;
      v5 = swift_task_alloc();
      *(v0 + 216) = v5;
      *v5 = v0;
      v5[1] = sub_264B304AC;
      v6 = *(v0 + 184);

      return MEMORY[0x2822003E8](v0 + 16, 0, 0, v6);
    }
  }

  else
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_264B3073C()
{
  v1 = *(v0 + 224);
  v2 = *(v1 + 128);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 32))(ObjectType, v2);
  if (!*(v4 + 16) || (v5 = v4, sub_264B41B84(), MEMORY[0x266748E90](0), v6 = sub_264B41BB4(), v7 = -1 << *(v5 + 32), v8 = v6 & ~v7, ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0))
  {
LABEL_6:

    sub_264A78FFC();
    v10 = swift_allocError();
    *v11 = 3;
    swift_willThrow();
LABEL_7:

    *(v0 + 264) = v10;

    return MEMORY[0x2822009F8](sub_264B30D70, 0, 0);
  }

  v9 = ~v7;
  while ((*(*(v5 + 48) + v8) & 1) != 0)
  {
    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v12 = *(v0 + 208);

  v13 = *(v0 + 80);
  v14 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v13);
  (*(v14 + 8))(v13, v14);
  sub_264B3B85C(&qword_27FF8A5E0, type metadata accessor for ControlMessage, &unk_264B4D110);
  v16 = sub_264B3FF44();
  *(v0 + 232) = v16;
  *(v0 + 240) = v15;
  v17 = *(v0 + 176);
  if (v12)
  {
    v10 = v12;
    sub_264B3C518(v17, type metadata accessor for ControlMessage);
    goto LABEL_7;
  }

  v18 = v16;
  v19 = v15;
  sub_264B3C518(v17, type metadata accessor for ControlMessage);
  v20 = *(v1 + 128);
  v21 = swift_getObjectType();
  *(v0 + 297) = 0;
  v24 = (*(v20 + 40) + **(v20 + 40));
  v22 = swift_task_alloc();
  *(v0 + 248) = v22;
  *v22 = v0;
  v22[1] = sub_264B30AAC;

  return v24(v18, v19, v0 + 297, v21, v20);
}

uint64_t sub_264B30AAC()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 224);
  if (v0)
  {
    v4 = sub_264B30CF0;
  }

  else
  {
    v4 = sub_264B30BC4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264B30BC4()
{
  sub_2649DEF6C(*(v0 + 232), *(v0 + 240));

  return MEMORY[0x2822009F8](sub_264B30C38, 0, 0);
}

uint64_t sub_264B30C38()
{
  v1 = v0[32];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v0[26] = v1;
  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = sub_264B304AC;
  v3 = v0[23];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v3);
}

uint64_t sub_264B30CF0()
{
  v1 = v0[29];
  v2 = v0[30];

  sub_2649DEF6C(v1, v2);
  v0[33] = v0[32];

  return MEMORY[0x2822009F8](sub_264B30D70, 0, 0);
}

uint64_t sub_264B30D70()
{
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 264);
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 264);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to send event, interrupting for: %{public}@", v7, 0xCu);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 272) = Strong;
  if (Strong)
  {
    sub_264B41244();
    *(v0 + 280) = sub_264B41234();
    v13 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264B30FDC, v13, v12);
  }

  else
  {
    v15 = *(v0 + 192);
    v14 = *(v0 + 200);
    v16 = *(v0 + 184);

    (*(v15 + 8))(v14, v16);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_264B30FDC()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 296) = 0;

  sub_264B40A94();
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  *v1 = v0;
  v1[1] = sub_264B310C0;

  return PlaybackServer.invalidate(waitsForSession:)(0);
}

uint64_t sub_264B310C0()
{

  return MEMORY[0x2822009F8](sub_264B311BC, 0, 0);
}

uint64_t sub_264B311BC()
{
  (*(*(v0 + 272) + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler))(*(v0 + 264));

  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_264B31284(uint64_t a1)
{
  v2[63] = a1;
  v2[64] = v1;
  v2[65] = type metadata accessor for RTIMessage(0);
  v2[66] = swift_task_alloc();
  v2[67] = type metadata accessor for HIDMessage(0);
  v2[68] = swift_task_alloc();
  v2[69] = type metadata accessor for ControlMessage(0);
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B31384, 0, 0);
}

uint64_t sub_264B31384()
{
  v1 = *(*(v0 + 504) + 16);
  *(v0 + 576) = v1;
  if (!v1)
  {
LABEL_27:

    v50 = *(v0 + 8);

    return v50();
  }

  v2 = 0;
  *(v0 + 584) = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentRTIMessageConsumer;
  *(v0 + 592) = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDragAndDropEventConsumer;
  *(v0 + 600) = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_accessibilityMessageConsumer;
  *(v0 + 608) = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_clientStatusEventConsumer;
  *(v0 + 616) = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentControlEventConsumer;
  *(v0 + 624) = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentSystemEventConsumer;
  *(v0 + 632) = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDrawEventConsumer;
  while (1)
  {
    *(v0 + 640) = v2;
    v4 = *(v0 + 568);
    v5 = *(v0 + 560);
    v6 = (*(v0 + 504) + 40 * v2);
    v7 = v6[7];
    v8 = v6[8];
    __swift_project_boxed_opaque_existential_1(v6 + 4, v7);
    (*(v8 + 8))(v7, v8);
    sub_264B3C4B0(v4, v5, type metadata accessor for ControlMessage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          v37 = *(v0 + 616);
          v38 = *(v0 + 512);
          sub_264B3C650(*(v0 + 560), *(v0 + 544), type metadata accessor for HIDMessage);
          v39 = *(v38 + v37);
          *(v0 + 728) = v39;
          if (v39)
          {
            v60 = *(v0 + 544);
            v61 = *(v0 + 536);
            v54 = *(*(v0 + 512) + *(v0 + 616) + 8);
            ObjectType = swift_getObjectType();
            *(v0 + 408) = v61;
            *(v0 + 416) = &off_28765E6C8;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 384));
            sub_264B3C4B0(v60, boxed_opaque_existential_1, type metadata accessor for HIDMessage);
            v63 = *(v54 + 32);
            swift_unknownObjectRetain();
            v96 = (v63 + *v63);
            v64 = swift_task_alloc();
            *(v0 + 736) = v64;
            *v64 = v0;
            v64[1] = sub_264B33950;
            v59 = v0 + 384;
            goto LABEL_37;
          }

          v26 = *(v0 + 568);
          v40 = *(v0 + 544);
          v41 = type metadata accessor for HIDMessage;
          goto LABEL_3;
        }

        v18 = *(v0 + 624);
        v19 = *(v0 + 560);
        v20 = *(v0 + 512);
        v21 = *v19;
        *(v0 + 672) = *v19;
        v22 = v19[1];
        *(v0 + 680) = v22;
        v23 = v19[2];
        *(v0 + 688) = v23;
        v24 = v19[3];
        *(v0 + 696) = v24;
        v25 = *(v20 + v18);
        *(v0 + 704) = v25;
        if (v25)
        {
          v54 = *(v20 + v18 + 8);
          v65 = v21;
          v66 = v22;
          v67 = v23;
          v68 = v24;
          ObjectType = swift_getObjectType();
          *(v0 + 448) = &type metadata for SystemGestureEvent;
          *(v0 + 456) = &off_28765C718;
          v69 = swift_allocObject();
          *&v70 = v65;
          *(&v70 + 1) = v66;
          *&v71 = v67;
          *(&v71 + 1) = v68;
          *(v0 + 424) = v69;
          *(v69 + 16) = v70;
          *(v69 + 32) = v71;
          v72 = *(v54 + 32);
          swift_unknownObjectRetain();
          sub_264A18774(v65, v66, v67, v68);
          v96 = (v72 + *v72);
          v73 = swift_task_alloc();
          *(v0 + 712) = v73;
          *v73 = v0;
          v73[1] = sub_264B32C6C;
          v59 = v0 + 424;
          goto LABEL_37;
        }

        v26 = *(v0 + 568);
        sub_264A187D4(v21, v22, v23, v24);
LABEL_4:
        v3 = v26;
      }

      else
      {
        v34 = *(v0 + 632);
        v35 = *(v0 + 512);
        v36 = *(v35 + v34);
        *(v0 + 648) = v36;
        if (v36)
        {
          v83 = *(v0 + 560);
          v54 = *(v35 + v34 + 8);
          v84 = *(v83 + 32);
          ObjectType = swift_getObjectType();
          v97 = v83[1];
          v98 = *v83;
          *(v0 + 488) = &type metadata for DrawEvent;
          *(v0 + 496) = &off_28765B2B0;
          v85 = swift_allocObject();
          *(v0 + 464) = v85;
          *(v85 + 16) = v98;
          *(v85 + 32) = v97;
          *(v85 + 48) = v84;
          v86 = *(v54 + 32);
          swift_unknownObjectRetain();
          v96 = (v86 + *v86);
          v87 = swift_task_alloc();
          *(v0 + 656) = v87;
          *v87 = v0;
          v87[1] = sub_264B31F98;
          v59 = v0 + 464;
          goto LABEL_37;
        }

        v3 = *(v0 + 568);
      }

      sub_264B3C518(v3, type metadata accessor for ControlMessage);
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload > 4)
    {
      break;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v10 = *(v0 + 608);
      v11 = *(v0 + 560);
      v12 = *(v0 + 512);
      v14 = v11[1];
      v13 = v11[2];
      *(v0 + 16) = *v11;
      *(v0 + 32) = v14;
      *(v0 + 48) = v13;
      v16 = v11[4];
      v15 = v11[5];
      v17 = v11[3];
      *(v0 + 112) = *(v11 + 12);
      *(v0 + 80) = v16;
      *(v0 + 96) = v15;
      *(v0 + 64) = v17;
      if (*(v12 + v10))
      {
        v54 = *(v12 + v10 + 8);
        ObjectType = swift_getObjectType();
        *(v0 + 368) = &type metadata for StatusEvent;
        *(v0 + 376) = &off_28765B558;
        v74 = swift_allocObject();
        *(v0 + 344) = v74;
        memmove((v74 + 16), v11, 0x68uLL);
        v75 = *(v54 + 32);
        sub_264A7D664(v0 + 16, v0 + 120);
        v96 = (v75 + *v75);
        v76 = swift_task_alloc();
        *(v0 + 752) = v76;
        *v76 = v0;
        v76[1] = sub_264B34620;
        v59 = v0 + 344;
        goto LABEL_37;
      }

      sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
      sub_264A7DB74(v0 + 16);
    }

    else
    {
      v42 = *(v0 + 600);
      v43 = *(v0 + 560);
      v44 = *(v0 + 512);
      v45 = *v43;
      *(v0 + 768) = *v43;
      v46 = v43[1];
      *(v0 + 776) = v46;
      if (*(v44 + v42))
      {
        v77 = *(v44 + v42 + 8);
        v78 = swift_getObjectType();
        *(v0 + 328) = &type metadata for AccessibilityMessage;
        *(v0 + 336) = &off_28765A468;
        *(v0 + 304) = v45;
        *(v0 + 312) = v46;
        v79 = *(v77 + 32);
        sub_264A5448C(v45, v46);
        v96 = (v79 + *v79);
        v80 = swift_task_alloc();
        *(v0 + 784) = v80;
        *v80 = v0;
        v80[1] = sub_264B35324;
        v59 = v0 + 304;
        v81 = v78;
        v82 = v77;
        goto LABEL_38;
      }

      sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
      sub_2649E7004(v45, v46);
    }

LABEL_6:
    v2 = *(v0 + 640) + 1;
    if (v2 == *(v0 + 576))
    {
      goto LABEL_27;
    }
  }

  if (EnumCaseMultiPayload != 5)
  {
    v47 = *(v0 + 584);
    v48 = *(v0 + 512);
    sub_264B3C650(*(v0 + 560), *(v0 + 528), type metadata accessor for RTIMessage);
    v49 = *(v48 + v47);
    *(v0 + 848) = v49;
    if (v49)
    {
      v52 = *(v0 + 528);
      v53 = *(v0 + 520);
      v54 = *(*(v0 + 512) + *(v0 + 584) + 8);
      ObjectType = swift_getObjectType();
      *(v0 + 248) = v53;
      *(v0 + 256) = &off_28765CD50;
      v56 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
      sub_264B3C4B0(v52, v56, type metadata accessor for RTIMessage);
      v57 = *(v54 + 32);
      swift_unknownObjectRetain();
      v96 = (v57 + *v57);
      v58 = swift_task_alloc();
      *(v0 + 856) = v58;
      *v58 = v0;
      v58[1] = sub_264B36D10;
      v59 = v0 + 224;
      goto LABEL_37;
    }

    v26 = *(v0 + 568);
    v40 = *(v0 + 528);
    v41 = type metadata accessor for RTIMessage;
LABEL_3:
    sub_264B3C518(v40, v41);
    goto LABEL_4;
  }

  v27 = *(v0 + 592);
  v28 = *(v0 + 560);
  v29 = *(v0 + 512);
  v30 = *v28;
  *(v0 + 800) = *v28;
  v31 = *(v28 + 8);
  *(v0 + 808) = v31;
  v32 = *(v28 + 24);
  *(v0 + 816) = v32;
  v33 = *(v29 + v27);
  *(v0 + 824) = v33;
  if (!v33)
  {
    v26 = *(v0 + 568);
    sub_2649DEF6C(v30, v31);

    goto LABEL_4;
  }

  v54 = *(v29 + v27 + 8);
  v88 = *(v28 + 33);
  v89 = *(v28 + 32);
  v90 = *(v28 + 16);
  v91 = v30;
  v92 = v31;
  ObjectType = swift_getObjectType();
  *(v0 + 288) = &type metadata for DragAndDropEvent;
  *(v0 + 296) = &off_28765F610;
  v93 = swift_allocObject();
  *(v0 + 264) = v93;
  *(v93 + 16) = v91;
  *(v93 + 24) = v92;
  *(v93 + 32) = v90;
  *(v93 + 40) = v32;
  *(v93 + 48) = v89;
  *(v93 + 49) = v88;
  v94 = *(v54 + 32);
  swift_unknownObjectRetain();
  sub_2649DEF18(v91, v92);

  v96 = (v94 + *v94);
  v95 = swift_task_alloc();
  *(v0 + 832) = v95;
  *v95 = v0;
  v95[1] = sub_264B3602C;
  v59 = v0 + 264;
LABEL_37:
  v81 = ObjectType;
  v82 = v54;
LABEL_38:

  return v96(v59, v81, v82);
}

uint64_t sub_264B31F98()
{
  v2 = *v1;
  *(*v1 + 664) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    v3 = sub_264B379E0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 464));
    v3 = sub_264B320C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264B320C4()
{
LABEL_1:
  v1 = *(v0 + 568);
  while (2)
  {
    sub_264B3C518(v1, type metadata accessor for ControlMessage);
    while (1)
    {
      while (1)
      {
        v2 = *(v0 + 640) + 1;
        if (v2 == *(v0 + 576))
        {

          v57 = *(v0 + 8);

          return v57();
        }

        *(v0 + 640) = v2;
        v3 = *(v0 + 568);
        v4 = *(v0 + 560);
        v5 = (*(v0 + 504) + 40 * v2);
        v6 = v5[7];
        v7 = v5[8];
        __swift_project_boxed_opaque_existential_1(v5 + 4, v6);
        (*(v7 + 8))(v6, v7);
        sub_264B3C4B0(v3, v4, type metadata accessor for ControlMessage);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 3)
        {
          break;
        }

        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v30 = *(v0 + 624);
            v31 = *(v0 + 560);
            v32 = *(v0 + 512);
            v33 = *v31;
            *(v0 + 672) = *v31;
            v34 = v31[1];
            *(v0 + 680) = v34;
            v35 = v31[2];
            *(v0 + 688) = v35;
            v36 = v31[3];
            *(v0 + 696) = v36;
            v37 = *(v32 + v30);
            *(v0 + 704) = v37;
            if (!v37)
            {
              v29 = *(v0 + 568);
              sub_264A187D4(v33, v34, v35, v36);
              goto LABEL_3;
            }

            v50 = *(v32 + v30 + 8);
            v73 = v33;
            v74 = v34;
            v75 = v35;
            v76 = v36;
            ObjectType = swift_getObjectType();
            *(v0 + 448) = &type metadata for SystemGestureEvent;
            *(v0 + 456) = &off_28765C718;
            v77 = swift_allocObject();
            *&v78 = v73;
            *(&v78 + 1) = v74;
            *&v79 = v75;
            *(&v79 + 1) = v76;
            *(v0 + 424) = v77;
            *(v77 + 16) = v78;
            *(v77 + 32) = v79;
            v80 = *(v50 + 32);
            swift_unknownObjectRetain();
            sub_264A18774(v73, v74, v75, v76);
            v96 = (v80 + *v80);
            v81 = swift_task_alloc();
            *(v0 + 712) = v81;
            *v81 = v0;
            v81[1] = sub_264B32C6C;
            v56 = v0 + 424;
            goto LABEL_35;
          }

          v46 = *(v0 + 632);
          v47 = *(v0 + 512);
          v48 = *(v47 + v46);
          *(v0 + 648) = v48;
          if (v48)
          {
            v49 = *(v0 + 560);
            v50 = *(v47 + v46 + 8);
            v51 = *(v49 + 32);
            ObjectType = swift_getObjectType();
            v95 = v49[1];
            v97 = *v49;
            *(v0 + 488) = &type metadata for DrawEvent;
            *(v0 + 496) = &off_28765B2B0;
            v53 = swift_allocObject();
            *(v0 + 464) = v53;
            *(v53 + 16) = v97;
            *(v53 + 32) = v95;
            *(v53 + 48) = v51;
            v54 = *(v50 + 32);
            swift_unknownObjectRetain();
            v96 = (v54 + *v54);
            v55 = swift_task_alloc();
            *(v0 + 656) = v55;
            *v55 = v0;
            v55[1] = sub_264B31F98;
            v56 = v0 + 464;
            goto LABEL_35;
          }

          goto LABEL_1;
        }

        if (EnumCaseMultiPayload == 2)
        {
          v43 = *(v0 + 616);
          v44 = *(v0 + 512);
          sub_264B3C650(*(v0 + 560), *(v0 + 544), type metadata accessor for HIDMessage);
          v45 = *(v44 + v43);
          *(v0 + 728) = v45;
          if (v45)
          {
            v82 = *(v0 + 544);
            v83 = *(v0 + 536);
            v50 = *(*(v0 + 512) + *(v0 + 616) + 8);
            ObjectType = swift_getObjectType();
            *(v0 + 408) = v83;
            *(v0 + 416) = &off_28765E6C8;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 384));
            sub_264B3C4B0(v82, boxed_opaque_existential_1, type metadata accessor for HIDMessage);
            v85 = *(v50 + 32);
            swift_unknownObjectRetain();
            v96 = (v85 + *v85);
            v86 = swift_task_alloc();
            *(v0 + 736) = v86;
            *v86 = v0;
            v86[1] = sub_264B33950;
            v56 = v0 + 384;
            goto LABEL_35;
          }

          v29 = *(v0 + 568);
          v41 = *(v0 + 544);
          v42 = type metadata accessor for HIDMessage;
          goto LABEL_2;
        }

        v9 = *(v0 + 608);
        v10 = *(v0 + 560);
        v11 = *(v0 + 512);
        v13 = v10[1];
        v12 = v10[2];
        *(v0 + 16) = *v10;
        *(v0 + 32) = v13;
        *(v0 + 48) = v12;
        v15 = v10[4];
        v14 = v10[5];
        v16 = v10[3];
        *(v0 + 112) = *(v10 + 12);
        *(v0 + 80) = v15;
        *(v0 + 96) = v14;
        *(v0 + 64) = v16;
        if (*(v11 + v9))
        {
          v50 = *(v11 + v9 + 8);
          ObjectType = swift_getObjectType();
          *(v0 + 368) = &type metadata for StatusEvent;
          *(v0 + 376) = &off_28765B558;
          v59 = swift_allocObject();
          *(v0 + 344) = v59;
          memmove((v59 + 16), v10, 0x68uLL);
          v60 = *(v50 + 32);
          sub_264A7D664(v0 + 16, v0 + 120);
          v96 = (v60 + *v60);
          v61 = swift_task_alloc();
          *(v0 + 752) = v61;
          *v61 = v0;
          v61[1] = sub_264B34620;
          v56 = v0 + 344;
          goto LABEL_35;
        }

        sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
        sub_264A7DB74(v0 + 16);
      }

      if (EnumCaseMultiPayload != 4)
      {
        break;
      }

      v17 = *(v0 + 600);
      v18 = *(v0 + 560);
      v19 = *(v0 + 512);
      v20 = *v18;
      *(v0 + 768) = *v18;
      v21 = v18[1];
      *(v0 + 776) = v21;
      if (*(v19 + v17))
      {
        v62 = *(v19 + v17 + 8);
        v63 = swift_getObjectType();
        *(v0 + 328) = &type metadata for AccessibilityMessage;
        *(v0 + 336) = &off_28765A468;
        *(v0 + 304) = v20;
        *(v0 + 312) = v21;
        v64 = *(v62 + 32);
        sub_264A5448C(v20, v21);
        v96 = (v64 + *v64);
        v65 = swift_task_alloc();
        *(v0 + 784) = v65;
        *v65 = v0;
        v65[1] = sub_264B35324;
        v56 = v0 + 304;
        v66 = v63;
        v67 = v62;
        goto LABEL_36;
      }

      sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
      sub_2649E7004(v20, v21);
    }

    if (EnumCaseMultiPayload != 5)
    {
      v38 = *(v0 + 584);
      v39 = *(v0 + 512);
      sub_264B3C650(*(v0 + 560), *(v0 + 528), type metadata accessor for RTIMessage);
      v40 = *(v39 + v38);
      *(v0 + 848) = v40;
      if (v40)
      {
        v68 = *(v0 + 528);
        v69 = *(v0 + 520);
        v50 = *(*(v0 + 512) + *(v0 + 584) + 8);
        ObjectType = swift_getObjectType();
        *(v0 + 248) = v69;
        *(v0 + 256) = &off_28765CD50;
        v70 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
        sub_264B3C4B0(v68, v70, type metadata accessor for RTIMessage);
        v71 = *(v50 + 32);
        swift_unknownObjectRetain();
        v96 = (v71 + *v71);
        v72 = swift_task_alloc();
        *(v0 + 856) = v72;
        *v72 = v0;
        v72[1] = sub_264B36D10;
        v56 = v0 + 224;
        goto LABEL_35;
      }

      v29 = *(v0 + 568);
      v41 = *(v0 + 528);
      v42 = type metadata accessor for RTIMessage;
LABEL_2:
      sub_264B3C518(v41, v42);
LABEL_3:
      v1 = v29;
      continue;
    }

    break;
  }

  v22 = *(v0 + 592);
  v23 = *(v0 + 560);
  v24 = *(v0 + 512);
  v25 = *v23;
  *(v0 + 800) = *v23;
  v26 = *(v23 + 8);
  *(v0 + 808) = v26;
  v27 = *(v23 + 24);
  *(v0 + 816) = v27;
  v28 = *(v24 + v22);
  *(v0 + 824) = v28;
  if (!v28)
  {
    v29 = *(v0 + 568);
    sub_2649DEF6C(v25, v26);

    goto LABEL_3;
  }

  v50 = *(v24 + v22 + 8);
  v87 = *(v23 + 33);
  v88 = *(v23 + 32);
  v89 = *(v23 + 16);
  v90 = v25;
  v91 = v26;
  ObjectType = swift_getObjectType();
  *(v0 + 288) = &type metadata for DragAndDropEvent;
  *(v0 + 296) = &off_28765F610;
  v92 = swift_allocObject();
  *(v0 + 264) = v92;
  *(v92 + 16) = v90;
  *(v92 + 24) = v91;
  *(v92 + 32) = v89;
  *(v92 + 40) = v27;
  *(v92 + 48) = v88;
  *(v92 + 49) = v87;
  v93 = *(v50 + 32);
  swift_unknownObjectRetain();
  sub_2649DEF18(v90, v91);

  v96 = (v93 + *v93);
  v94 = swift_task_alloc();
  *(v0 + 832) = v94;
  *v94 = v0;
  v94[1] = sub_264B3602C;
  v56 = v0 + 264;
LABEL_35:
  v66 = ObjectType;
  v67 = v50;
LABEL_36:

  return v96(v56, v66, v67);
}

uint64_t sub_264B32C6C()
{
  v2 = *v1;
  *(*v1 + 720) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    v3 = sub_264B37A94;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 424));
    v3 = sub_264B32D98;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264B32D98()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  do
  {
    v5 = *(v0 + 568);
    sub_264A187D4(v4, v3, v2, v1);
LABEL_4:
    v6 = v5;
    while (2)
    {
      sub_264B3C518(v6, type metadata accessor for ControlMessage);
      while (1)
      {
        while (1)
        {
          v7 = *(v0 + 640) + 1;
          if (v7 == *(v0 + 576))
          {

            v61 = *(v0 + 8);

            return v61();
          }

          *(v0 + 640) = v7;
          v8 = *(v0 + 568);
          v9 = *(v0 + 560);
          v10 = (*(v0 + 504) + 40 * v7);
          v11 = v10[7];
          v12 = v10[8];
          __swift_project_boxed_opaque_existential_1(v10 + 4, v11);
          (*(v12 + 8))(v11, v12);
          sub_264B3C4B0(v8, v9, type metadata accessor for ControlMessage);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload <= 3)
          {
            break;
          }

          if (EnumCaseMultiPayload != 4)
          {
            if (EnumCaseMultiPayload != 5)
            {
              v37 = *(v0 + 584);
              v38 = *(v0 + 512);
              sub_264B3C650(*(v0 + 560), *(v0 + 528), type metadata accessor for RTIMessage);
              v39 = *(v38 + v37);
              *(v0 + 848) = v39;
              if (v39)
              {
                v72 = *(v0 + 528);
                v73 = *(v0 + 520);
                v49 = *(*(v0 + 512) + *(v0 + 584) + 8);
                ObjectType = swift_getObjectType();
                *(v0 + 248) = v73;
                *(v0 + 256) = &off_28765CD50;
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
                sub_264B3C4B0(v72, boxed_opaque_existential_1, type metadata accessor for RTIMessage);
                v75 = *(v49 + 32);
                swift_unknownObjectRetain();
                v95 = (v75 + *v75);
                v76 = swift_task_alloc();
                *(v0 + 856) = v76;
                *v76 = v0;
                v76[1] = sub_264B36D10;
                v60 = v0 + 224;
                goto LABEL_36;
              }

              v5 = *(v0 + 568);
              v40 = *(v0 + 528);
              v41 = type metadata accessor for RTIMessage;
LABEL_3:
              sub_264B3C518(v40, v41);
              goto LABEL_4;
            }

            v30 = *(v0 + 592);
            v31 = *(v0 + 560);
            v32 = *(v0 + 512);
            v33 = *v31;
            *(v0 + 800) = *v31;
            v34 = *(v31 + 8);
            *(v0 + 808) = v34;
            v35 = *(v31 + 24);
            *(v0 + 816) = v35;
            v36 = *(v32 + v30);
            *(v0 + 824) = v36;
            if (v36)
            {
              v49 = *(v32 + v30 + 8);
              v82 = *(v31 + 33);
              v83 = *(v31 + 32);
              v84 = *(v31 + 16);
              v85 = v33;
              v86 = v34;
              ObjectType = swift_getObjectType();
              *(v0 + 288) = &type metadata for DragAndDropEvent;
              *(v0 + 296) = &off_28765F610;
              v87 = swift_allocObject();
              *(v0 + 264) = v87;
              *(v87 + 16) = v85;
              *(v87 + 24) = v86;
              *(v87 + 32) = v84;
              *(v87 + 40) = v35;
              *(v87 + 48) = v83;
              *(v87 + 49) = v82;
              v88 = *(v49 + 32);
              swift_unknownObjectRetain();
              sub_2649DEF18(v85, v86);

              v95 = (v88 + *v88);
              v89 = swift_task_alloc();
              *(v0 + 832) = v89;
              *v89 = v0;
              v89[1] = sub_264B3602C;
              v60 = v0 + 264;
              goto LABEL_36;
            }

            v5 = *(v0 + 568);
            sub_2649DEF6C(v33, v34);

            goto LABEL_4;
          }

          v22 = *(v0 + 600);
          v23 = *(v0 + 560);
          v24 = *(v0 + 512);
          v25 = *v23;
          *(v0 + 768) = *v23;
          v26 = v23[1];
          *(v0 + 776) = v26;
          if (*(v24 + v22))
          {
            v66 = *(v24 + v22 + 8);
            v67 = swift_getObjectType();
            *(v0 + 328) = &type metadata for AccessibilityMessage;
            *(v0 + 336) = &off_28765A468;
            *(v0 + 304) = v25;
            *(v0 + 312) = v26;
            v68 = *(v66 + 32);
            sub_264A5448C(v25, v26);
            v95 = (v68 + *v68);
            v69 = swift_task_alloc();
            *(v0 + 784) = v69;
            *v69 = v0;
            v69[1] = sub_264B35324;
            v60 = v0 + 304;
            v70 = v67;
            v71 = v66;
            goto LABEL_37;
          }

          sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
          sub_2649E7004(v25, v26);
        }

        if (EnumCaseMultiPayload <= 1)
        {
          break;
        }

        if (EnumCaseMultiPayload == 2)
        {
          v42 = *(v0 + 616);
          v43 = *(v0 + 512);
          sub_264B3C650(*(v0 + 560), *(v0 + 544), type metadata accessor for HIDMessage);
          v44 = *(v43 + v42);
          *(v0 + 728) = v44;
          if (v44)
          {
            v77 = *(v0 + 544);
            v78 = *(v0 + 536);
            v49 = *(*(v0 + 512) + *(v0 + 616) + 8);
            ObjectType = swift_getObjectType();
            *(v0 + 408) = v78;
            *(v0 + 416) = &off_28765E6C8;
            v79 = __swift_allocate_boxed_opaque_existential_1((v0 + 384));
            sub_264B3C4B0(v77, v79, type metadata accessor for HIDMessage);
            v80 = *(v49 + 32);
            swift_unknownObjectRetain();
            v95 = (v80 + *v80);
            v81 = swift_task_alloc();
            *(v0 + 736) = v81;
            *v81 = v0;
            v81[1] = sub_264B33950;
            v60 = v0 + 384;
            goto LABEL_36;
          }

          v5 = *(v0 + 568);
          v40 = *(v0 + 544);
          v41 = type metadata accessor for HIDMessage;
          goto LABEL_3;
        }

        v14 = *(v0 + 608);
        v15 = *(v0 + 560);
        v16 = *(v0 + 512);
        v18 = v15[1];
        v17 = v15[2];
        *(v0 + 16) = *v15;
        *(v0 + 32) = v18;
        *(v0 + 48) = v17;
        v20 = v15[4];
        v19 = v15[5];
        v21 = v15[3];
        *(v0 + 112) = *(v15 + 12);
        *(v0 + 80) = v20;
        *(v0 + 96) = v19;
        *(v0 + 64) = v21;
        if (*(v16 + v14))
        {
          v49 = *(v16 + v14 + 8);
          ObjectType = swift_getObjectType();
          *(v0 + 368) = &type metadata for StatusEvent;
          *(v0 + 376) = &off_28765B558;
          v63 = swift_allocObject();
          *(v0 + 344) = v63;
          memmove((v63 + 16), v15, 0x68uLL);
          v64 = *(v49 + 32);
          sub_264A7D664(v0 + 16, v0 + 120);
          v95 = (v64 + *v64);
          v65 = swift_task_alloc();
          *(v0 + 752) = v65;
          *v65 = v0;
          v65[1] = sub_264B34620;
          v60 = v0 + 344;
          goto LABEL_36;
        }

        sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
        sub_264A7DB74(v0 + 16);
      }

      if (!EnumCaseMultiPayload)
      {
        v27 = *(v0 + 632);
        v28 = *(v0 + 512);
        v29 = *(v28 + v27);
        *(v0 + 648) = v29;
        if (v29)
        {
          v90 = *(v0 + 560);
          v49 = *(v28 + v27 + 8);
          v91 = *(v90 + 32);
          ObjectType = swift_getObjectType();
          v96 = v90[1];
          v97 = *v90;
          *(v0 + 488) = &type metadata for DrawEvent;
          *(v0 + 496) = &off_28765B2B0;
          v92 = swift_allocObject();
          *(v0 + 464) = v92;
          *(v92 + 16) = v97;
          *(v92 + 32) = v96;
          *(v92 + 48) = v91;
          v93 = *(v49 + 32);
          swift_unknownObjectRetain();
          v95 = (v93 + *v93);
          v94 = swift_task_alloc();
          *(v0 + 656) = v94;
          *v94 = v0;
          v94[1] = sub_264B31F98;
          v60 = v0 + 464;
          goto LABEL_36;
        }

        v6 = *(v0 + 568);
        continue;
      }

      break;
    }

    v45 = *(v0 + 624);
    v46 = *(v0 + 560);
    v47 = *(v0 + 512);
    v4 = *v46;
    *(v0 + 672) = *v46;
    v3 = v46[1];
    *(v0 + 680) = v3;
    v2 = v46[2];
    *(v0 + 688) = v2;
    v1 = v46[3];
    *(v0 + 696) = v1;
    v48 = *(v47 + v45);
    *(v0 + 704) = v48;
  }

  while (!v48);
  v49 = *(v47 + v45 + 8);
  v50 = v4;
  v51 = v1;
  v52 = v2;
  v53 = v3;
  ObjectType = swift_getObjectType();
  *(v0 + 448) = &type metadata for SystemGestureEvent;
  *(v0 + 456) = &off_28765C718;
  v55 = swift_allocObject();
  *&v56 = v50;
  *(&v56 + 1) = v53;
  *&v57 = v52;
  *(&v57 + 1) = v51;
  *(v0 + 424) = v55;
  *(v55 + 16) = v56;
  *(v55 + 32) = v57;
  v58 = *(v49 + 32);
  swift_unknownObjectRetain();
  sub_264A18774(v50, v53, v52, v51);
  v95 = (v58 + *v58);
  v59 = swift_task_alloc();
  *(v0 + 712) = v59;
  *v59 = v0;
  v59[1] = sub_264B32C6C;
  v60 = v0 + 424;
LABEL_36:
  v70 = ObjectType;
  v71 = v49;
LABEL_37:

  return v95(v60, v70, v71);
}

uint64_t sub_264B33950()
{
  v2 = *v1;
  *(*v1 + 744) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    v3 = sub_264B37B60;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 384));
    v3 = sub_264B33A7C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264B33A7C()
{
LABEL_1:
  v1 = *(v0 + 568);
  v2 = *(v0 + 544);
  v3 = type metadata accessor for HIDMessage;
LABEL_2:
  sub_264B3C518(v2, v3);
LABEL_3:
  v4 = v1;
LABEL_4:
  sub_264B3C518(v4, type metadata accessor for ControlMessage);
  while (1)
  {
    v5 = *(v0 + 640) + 1;
    if (v5 == *(v0 + 576))
    {
      break;
    }

    *(v0 + 640) = v5;
    v6 = *(v0 + 568);
    v7 = *(v0 + 560);
    v8 = (*(v0 + 504) + 40 * v5);
    v9 = v8[7];
    v10 = v8[8];
    __swift_project_boxed_opaque_existential_1(v8 + 4, v9);
    (*(v10 + 8))(v9, v10);
    sub_264B3C4B0(v6, v7, type metadata accessor for ControlMessage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        if (EnumCaseMultiPayload == 5)
        {
          v28 = *(v0 + 592);
          v29 = *(v0 + 560);
          v30 = *(v0 + 512);
          v31 = *v29;
          *(v0 + 800) = *v29;
          v32 = *(v29 + 8);
          *(v0 + 808) = v32;
          v33 = *(v29 + 24);
          *(v0 + 816) = v33;
          v34 = *(v30 + v28);
          *(v0 + 824) = v34;
          if (!v34)
          {
            v1 = *(v0 + 568);
            sub_2649DEF6C(v31, v32);

            goto LABEL_3;
          }

          v51 = *(v30 + v28 + 8);
          v68 = *(v29 + 33);
          v69 = *(v29 + 32);
          v70 = *(v29 + 16);
          v71 = v31;
          v72 = v32;
          ObjectType = swift_getObjectType();
          *(v0 + 288) = &type metadata for DragAndDropEvent;
          *(v0 + 296) = &off_28765F610;
          v73 = swift_allocObject();
          *(v0 + 264) = v73;
          *(v73 + 16) = v71;
          *(v73 + 24) = v72;
          *(v73 + 32) = v70;
          *(v73 + 40) = v33;
          *(v73 + 48) = v69;
          *(v73 + 49) = v68;
          v74 = *(v51 + 32);
          swift_unknownObjectRetain();
          sub_2649DEF18(v71, v72);

          v95 = (v74 + *v74);
          v75 = swift_task_alloc();
          *(v0 + 832) = v75;
          *v75 = v0;
          v75[1] = sub_264B3602C;
          v56 = v0 + 264;
        }

        else
        {
          v43 = *(v0 + 584);
          v44 = *(v0 + 512);
          sub_264B3C650(*(v0 + 560), *(v0 + 528), type metadata accessor for RTIMessage);
          v45 = *(v44 + v43);
          *(v0 + 848) = v45;
          if (!v45)
          {
            v1 = *(v0 + 568);
            v2 = *(v0 + 528);
            v3 = type metadata accessor for RTIMessage;
            goto LABEL_2;
          }

          v85 = *(v0 + 528);
          v86 = *(v0 + 520);
          v51 = *(*(v0 + 512) + *(v0 + 584) + 8);
          ObjectType = swift_getObjectType();
          *(v0 + 248) = v86;
          *(v0 + 256) = &off_28765CD50;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
          sub_264B3C4B0(v85, boxed_opaque_existential_1, type metadata accessor for RTIMessage);
          v88 = *(v51 + 32);
          swift_unknownObjectRetain();
          v95 = (v88 + *v88);
          v89 = swift_task_alloc();
          *(v0 + 856) = v89;
          *v89 = v0;
          v89[1] = sub_264B36D10;
          v56 = v0 + 224;
        }

        goto LABEL_35;
      }

      v20 = *(v0 + 600);
      v21 = *(v0 + 560);
      v22 = *(v0 + 512);
      v23 = *v21;
      *(v0 + 768) = *v21;
      v24 = v21[1];
      *(v0 + 776) = v24;
      if (*(v22 + v20))
      {
        v59 = *(v22 + v20 + 8);
        v60 = swift_getObjectType();
        *(v0 + 328) = &type metadata for AccessibilityMessage;
        *(v0 + 336) = &off_28765A468;
        *(v0 + 304) = v23;
        *(v0 + 312) = v24;
        v61 = *(v59 + 32);
        sub_264A5448C(v23, v24);
        v95 = (v61 + *v61);
        v62 = swift_task_alloc();
        *(v0 + 784) = v62;
        *v62 = v0;
        v62[1] = sub_264B35324;
        v56 = v0 + 304;
        v63 = v60;
        v64 = v59;
LABEL_36:

        return v95(v56, v63, v64);
      }

      sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
      sub_2649E7004(v23, v24);
    }

    else
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v35 = *(v0 + 624);
          v36 = *(v0 + 560);
          v37 = *(v0 + 512);
          v38 = *v36;
          *(v0 + 672) = *v36;
          v39 = v36[1];
          *(v0 + 680) = v39;
          v40 = v36[2];
          *(v0 + 688) = v40;
          v41 = v36[3];
          *(v0 + 696) = v41;
          v42 = *(v37 + v35);
          *(v0 + 704) = v42;
          if (!v42)
          {
            v1 = *(v0 + 568);
            sub_264A187D4(v38, v39, v40, v41);
            goto LABEL_3;
          }

          v51 = *(v37 + v35 + 8);
          v76 = v38;
          v77 = v39;
          v78 = v40;
          v79 = v41;
          ObjectType = swift_getObjectType();
          *(v0 + 448) = &type metadata for SystemGestureEvent;
          *(v0 + 456) = &off_28765C718;
          v80 = swift_allocObject();
          *&v81 = v76;
          *(&v81 + 1) = v77;
          *&v82 = v78;
          *(&v82 + 1) = v79;
          *(v0 + 424) = v80;
          *(v80 + 16) = v81;
          *(v80 + 32) = v82;
          v83 = *(v51 + 32);
          swift_unknownObjectRetain();
          sub_264A18774(v76, v77, v78, v79);
          v95 = (v83 + *v83);
          v84 = swift_task_alloc();
          *(v0 + 712) = v84;
          *v84 = v0;
          v84[1] = sub_264B32C6C;
          v56 = v0 + 424;
        }

        else
        {
          v25 = *(v0 + 632);
          v26 = *(v0 + 512);
          v27 = *(v26 + v25);
          *(v0 + 648) = v27;
          if (!v27)
          {
            v4 = *(v0 + 568);
            goto LABEL_4;
          }

          v90 = *(v0 + 560);
          v51 = *(v26 + v25 + 8);
          v91 = *(v90 + 32);
          ObjectType = swift_getObjectType();
          v96 = v90[1];
          v97 = *v90;
          *(v0 + 488) = &type metadata for DrawEvent;
          *(v0 + 496) = &off_28765B2B0;
          v92 = swift_allocObject();
          *(v0 + 464) = v92;
          *(v92 + 16) = v97;
          *(v92 + 32) = v96;
          *(v92 + 48) = v91;
          v93 = *(v51 + 32);
          swift_unknownObjectRetain();
          v95 = (v93 + *v93);
          v94 = swift_task_alloc();
          *(v0 + 656) = v94;
          *v94 = v0;
          v94[1] = sub_264B31F98;
          v56 = v0 + 464;
        }

        goto LABEL_35;
      }

      if (EnumCaseMultiPayload != 3)
      {
        v46 = *(v0 + 616);
        v47 = *(v0 + 512);
        sub_264B3C650(*(v0 + 560), *(v0 + 544), type metadata accessor for HIDMessage);
        v48 = *(v47 + v46);
        *(v0 + 728) = v48;
        if (!v48)
        {
          goto LABEL_1;
        }

        v49 = *(v0 + 544);
        v50 = *(v0 + 536);
        v51 = *(*(v0 + 512) + *(v0 + 616) + 8);
        ObjectType = swift_getObjectType();
        *(v0 + 408) = v50;
        *(v0 + 416) = &off_28765E6C8;
        v53 = __swift_allocate_boxed_opaque_existential_1((v0 + 384));
        sub_264B3C4B0(v49, v53, type metadata accessor for HIDMessage);
        v54 = *(v51 + 32);
        swift_unknownObjectRetain();
        v95 = (v54 + *v54);
        v55 = swift_task_alloc();
        *(v0 + 736) = v55;
        *v55 = v0;
        v55[1] = sub_264B33950;
        v56 = v0 + 384;
        goto LABEL_35;
      }

      v12 = *(v0 + 608);
      v13 = *(v0 + 560);
      v14 = *(v0 + 512);
      v16 = v13[1];
      v15 = v13[2];
      *(v0 + 16) = *v13;
      *(v0 + 32) = v16;
      *(v0 + 48) = v15;
      v18 = v13[4];
      v17 = v13[5];
      v19 = v13[3];
      *(v0 + 112) = *(v13 + 12);
      *(v0 + 80) = v18;
      *(v0 + 96) = v17;
      *(v0 + 64) = v19;
      if (*(v14 + v12))
      {
        v51 = *(v14 + v12 + 8);
        ObjectType = swift_getObjectType();
        *(v0 + 368) = &type metadata for StatusEvent;
        *(v0 + 376) = &off_28765B558;
        v65 = swift_allocObject();
        *(v0 + 344) = v65;
        memmove((v65 + 16), v13, 0x68uLL);
        v66 = *(v51 + 32);
        sub_264A7D664(v0 + 16, v0 + 120);
        v95 = (v66 + *v66);
        v67 = swift_task_alloc();
        *(v0 + 752) = v67;
        *v67 = v0;
        v67[1] = sub_264B34620;
        v56 = v0 + 344;
LABEL_35:
        v63 = ObjectType;
        v64 = v51;
        goto LABEL_36;
      }

      sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
      sub_264A7DB74(v0 + 16);
    }
  }

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_264B34620()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v3 = sub_264B37C34;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 344));
    v3 = sub_264B3473C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264B3473C()
{
  v1 = *(v0 + 568);
  sub_264A7DB74(v0 + 16);
  sub_264B3C518(v1, type metadata accessor for ControlMessage);
  v2 = *(v0 + 640) + 1;
  if (v2 == *(v0 + 576))
  {
LABEL_2:

    v3 = *(v0 + 8);

    return v3();
  }

  while (1)
  {
    *(v0 + 640) = v2;
    v6 = *(v0 + 568);
    v7 = *(v0 + 560);
    v8 = (*(v0 + 504) + 40 * v2);
    v9 = v8[7];
    v10 = v8[8];
    __swift_project_boxed_opaque_existential_1(v8 + 4, v9);
    (*(v10 + 8))(v9, v10);
    sub_264B3C4B0(v6, v7, type metadata accessor for ControlMessage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          v39 = *(v0 + 616);
          v40 = *(v0 + 512);
          sub_264B3C650(*(v0 + 560), *(v0 + 544), type metadata accessor for HIDMessage);
          v41 = *(v40 + v39);
          *(v0 + 728) = v41;
          if (v41)
          {
            v60 = *(v0 + 544);
            v61 = *(v0 + 536);
            v54 = *(*(v0 + 512) + *(v0 + 616) + 8);
            ObjectType = swift_getObjectType();
            *(v0 + 408) = v61;
            *(v0 + 416) = &off_28765E6C8;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 384));
            sub_264B3C4B0(v60, boxed_opaque_existential_1, type metadata accessor for HIDMessage);
            v63 = *(v54 + 32);
            swift_unknownObjectRetain();
            v96 = (v63 + *v63);
            v64 = swift_task_alloc();
            *(v0 + 736) = v64;
            *v64 = v0;
            v64[1] = sub_264B33950;
            v59 = v0 + 384;
            goto LABEL_37;
          }

          v28 = *(v0 + 568);
          v42 = *(v0 + 544);
          v43 = type metadata accessor for HIDMessage;
          goto LABEL_6;
        }

        v20 = *(v0 + 624);
        v21 = *(v0 + 560);
        v22 = *(v0 + 512);
        v23 = *v21;
        *(v0 + 672) = *v21;
        v24 = v21[1];
        *(v0 + 680) = v24;
        v25 = v21[2];
        *(v0 + 688) = v25;
        v26 = v21[3];
        *(v0 + 696) = v26;
        v27 = *(v22 + v20);
        *(v0 + 704) = v27;
        if (v27)
        {
          v54 = *(v22 + v20 + 8);
          v65 = v23;
          v66 = v24;
          v67 = v25;
          v68 = v26;
          ObjectType = swift_getObjectType();
          *(v0 + 448) = &type metadata for SystemGestureEvent;
          *(v0 + 456) = &off_28765C718;
          v69 = swift_allocObject();
          *&v70 = v65;
          *(&v70 + 1) = v66;
          *&v71 = v67;
          *(&v71 + 1) = v68;
          *(v0 + 424) = v69;
          *(v69 + 16) = v70;
          *(v69 + 32) = v71;
          v72 = *(v54 + 32);
          swift_unknownObjectRetain();
          sub_264A18774(v65, v66, v67, v68);
          v96 = (v72 + *v72);
          v73 = swift_task_alloc();
          *(v0 + 712) = v73;
          *v73 = v0;
          v73[1] = sub_264B32C6C;
          v59 = v0 + 424;
          goto LABEL_37;
        }

        v28 = *(v0 + 568);
        sub_264A187D4(v23, v24, v25, v26);
LABEL_7:
        v5 = v28;
      }

      else
      {
        v36 = *(v0 + 632);
        v37 = *(v0 + 512);
        v38 = *(v37 + v36);
        *(v0 + 648) = v38;
        if (v38)
        {
          v83 = *(v0 + 560);
          v54 = *(v37 + v36 + 8);
          v84 = *(v83 + 32);
          ObjectType = swift_getObjectType();
          v97 = v83[1];
          v98 = *v83;
          *(v0 + 488) = &type metadata for DrawEvent;
          *(v0 + 496) = &off_28765B2B0;
          v85 = swift_allocObject();
          *(v0 + 464) = v85;
          *(v85 + 16) = v98;
          *(v85 + 32) = v97;
          *(v85 + 48) = v84;
          v86 = *(v54 + 32);
          swift_unknownObjectRetain();
          v96 = (v86 + *v86);
          v87 = swift_task_alloc();
          *(v0 + 656) = v87;
          *v87 = v0;
          v87[1] = sub_264B31F98;
          v59 = v0 + 464;
          goto LABEL_37;
        }

        v5 = *(v0 + 568);
      }

      sub_264B3C518(v5, type metadata accessor for ControlMessage);
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload > 4)
    {
      break;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v12 = *(v0 + 608);
      v13 = *(v0 + 560);
      v14 = *(v0 + 512);
      v16 = v13[1];
      v15 = v13[2];
      *(v0 + 16) = *v13;
      *(v0 + 32) = v16;
      *(v0 + 48) = v15;
      v18 = v13[4];
      v17 = v13[5];
      v19 = v13[3];
      *(v0 + 112) = *(v13 + 12);
      *(v0 + 80) = v18;
      *(v0 + 96) = v17;
      *(v0 + 64) = v19;
      if (*(v14 + v12))
      {
        v54 = *(v14 + v12 + 8);
        ObjectType = swift_getObjectType();
        *(v0 + 368) = &type metadata for StatusEvent;
        *(v0 + 376) = &off_28765B558;
        v74 = swift_allocObject();
        *(v0 + 344) = v74;
        memmove((v74 + 16), v13, 0x68uLL);
        v75 = *(v54 + 32);
        sub_264A7D664(v0 + 16, v0 + 120);
        v96 = (v75 + *v75);
        v76 = swift_task_alloc();
        *(v0 + 752) = v76;
        *v76 = v0;
        v76[1] = sub_264B34620;
        v59 = v0 + 344;
        goto LABEL_37;
      }

      sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
      sub_264A7DB74(v0 + 16);
    }

    else
    {
      v44 = *(v0 + 600);
      v45 = *(v0 + 560);
      v46 = *(v0 + 512);
      v47 = *v45;
      *(v0 + 768) = *v45;
      v48 = v45[1];
      *(v0 + 776) = v48;
      if (*(v46 + v44))
      {
        v77 = *(v46 + v44 + 8);
        v78 = swift_getObjectType();
        *(v0 + 328) = &type metadata for AccessibilityMessage;
        *(v0 + 336) = &off_28765A468;
        *(v0 + 304) = v47;
        *(v0 + 312) = v48;
        v79 = *(v77 + 32);
        sub_264A5448C(v47, v48);
        v96 = (v79 + *v79);
        v80 = swift_task_alloc();
        *(v0 + 784) = v80;
        *v80 = v0;
        v80[1] = sub_264B35324;
        v59 = v0 + 304;
        v81 = v78;
        v82 = v77;
        goto LABEL_38;
      }

      sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
      sub_2649E7004(v47, v48);
    }

LABEL_9:
    v2 = *(v0 + 640) + 1;
    if (v2 == *(v0 + 576))
    {
      goto LABEL_2;
    }
  }

  if (EnumCaseMultiPayload != 5)
  {
    v49 = *(v0 + 584);
    v50 = *(v0 + 512);
    sub_264B3C650(*(v0 + 560), *(v0 + 528), type metadata accessor for RTIMessage);
    v51 = *(v50 + v49);
    *(v0 + 848) = v51;
    if (v51)
    {
      v52 = *(v0 + 528);
      v53 = *(v0 + 520);
      v54 = *(*(v0 + 512) + *(v0 + 584) + 8);
      ObjectType = swift_getObjectType();
      *(v0 + 248) = v53;
      *(v0 + 256) = &off_28765CD50;
      v56 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
      sub_264B3C4B0(v52, v56, type metadata accessor for RTIMessage);
      v57 = *(v54 + 32);
      swift_unknownObjectRetain();
      v96 = (v57 + *v57);
      v58 = swift_task_alloc();
      *(v0 + 856) = v58;
      *v58 = v0;
      v58[1] = sub_264B36D10;
      v59 = v0 + 224;
      goto LABEL_37;
    }

    v28 = *(v0 + 568);
    v42 = *(v0 + 528);
    v43 = type metadata accessor for RTIMessage;
LABEL_6:
    sub_264B3C518(v42, v43);
    goto LABEL_7;
  }

  v29 = *(v0 + 592);
  v30 = *(v0 + 560);
  v31 = *(v0 + 512);
  v32 = *v30;
  *(v0 + 800) = *v30;
  v33 = *(v30 + 8);
  *(v0 + 808) = v33;
  v34 = *(v30 + 24);
  *(v0 + 816) = v34;
  v35 = *(v31 + v29);
  *(v0 + 824) = v35;
  if (!v35)
  {
    v28 = *(v0 + 568);
    sub_2649DEF6C(v32, v33);

    goto LABEL_7;
  }

  v54 = *(v31 + v29 + 8);
  v88 = *(v30 + 33);
  v89 = *(v30 + 32);
  v90 = *(v30 + 16);
  v91 = v32;
  v92 = v33;
  ObjectType = swift_getObjectType();
  *(v0 + 288) = &type metadata for DragAndDropEvent;
  *(v0 + 296) = &off_28765F610;
  v93 = swift_allocObject();
  *(v0 + 264) = v93;
  *(v93 + 16) = v91;
  *(v93 + 24) = v92;
  *(v93 + 32) = v90;
  *(v93 + 40) = v34;
  *(v93 + 48) = v89;
  *(v93 + 49) = v88;
  v94 = *(v54 + 32);
  swift_unknownObjectRetain();
  sub_2649DEF18(v91, v92);

  v96 = (v94 + *v94);
  v95 = swift_task_alloc();
  *(v0 + 832) = v95;
  *v95 = v0;
  v95[1] = sub_264B3602C;
  v59 = v0 + 264;
LABEL_37:
  v81 = ObjectType;
  v82 = v54;
LABEL_38:

  return v96(v59, v81, v82);
}

uint64_t sub_264B35324()
{
  v2 = *v1;
  *(*v1 + 792) = v0;

  if (v0)
  {
    v3 = sub_264B37CF4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 304));
    v3 = sub_264B35440;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264B35440()
{
  v1 = *(v0 + 568);
  sub_2649E7004(*(v0 + 768), *(v0 + 776));
  sub_264B3C518(v1, type metadata accessor for ControlMessage);
  v2 = *(v0 + 640) + 1;
  if (v2 == *(v0 + 576))
  {
LABEL_2:

    v3 = *(v0 + 8);

    return v3();
  }

  while (1)
  {
    *(v0 + 640) = v2;
    v6 = *(v0 + 568);
    v7 = *(v0 + 560);
    v8 = (*(v0 + 504) + 40 * v2);
    v9 = v8[7];
    v10 = v8[8];
    __swift_project_boxed_opaque_existential_1(v8 + 4, v9);
    (*(v10 + 8))(v9, v10);
    sub_264B3C4B0(v6, v7, type metadata accessor for ControlMessage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          v39 = *(v0 + 616);
          v40 = *(v0 + 512);
          sub_264B3C650(*(v0 + 560), *(v0 + 544), type metadata accessor for HIDMessage);
          v41 = *(v40 + v39);
          *(v0 + 728) = v41;
          if (v41)
          {
            v60 = *(v0 + 544);
            v61 = *(v0 + 536);
            v54 = *(*(v0 + 512) + *(v0 + 616) + 8);
            ObjectType = swift_getObjectType();
            *(v0 + 408) = v61;
            *(v0 + 416) = &off_28765E6C8;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 384));
            sub_264B3C4B0(v60, boxed_opaque_existential_1, type metadata accessor for HIDMessage);
            v63 = *(v54 + 32);
            swift_unknownObjectRetain();
            v96 = (v63 + *v63);
            v64 = swift_task_alloc();
            *(v0 + 736) = v64;
            *v64 = v0;
            v64[1] = sub_264B33950;
            v59 = v0 + 384;
            goto LABEL_37;
          }

          v28 = *(v0 + 568);
          v42 = *(v0 + 544);
          v43 = type metadata accessor for HIDMessage;
          goto LABEL_6;
        }

        v20 = *(v0 + 624);
        v21 = *(v0 + 560);
        v22 = *(v0 + 512);
        v23 = *v21;
        *(v0 + 672) = *v21;
        v24 = v21[1];
        *(v0 + 680) = v24;
        v25 = v21[2];
        *(v0 + 688) = v25;
        v26 = v21[3];
        *(v0 + 696) = v26;
        v27 = *(v22 + v20);
        *(v0 + 704) = v27;
        if (v27)
        {
          v54 = *(v22 + v20 + 8);
          v65 = v23;
          v66 = v24;
          v67 = v25;
          v68 = v26;
          ObjectType = swift_getObjectType();
          *(v0 + 448) = &type metadata for SystemGestureEvent;
          *(v0 + 456) = &off_28765C718;
          v69 = swift_allocObject();
          *&v70 = v65;
          *(&v70 + 1) = v66;
          *&v71 = v67;
          *(&v71 + 1) = v68;
          *(v0 + 424) = v69;
          *(v69 + 16) = v70;
          *(v69 + 32) = v71;
          v72 = *(v54 + 32);
          swift_unknownObjectRetain();
          sub_264A18774(v65, v66, v67, v68);
          v96 = (v72 + *v72);
          v73 = swift_task_alloc();
          *(v0 + 712) = v73;
          *v73 = v0;
          v73[1] = sub_264B32C6C;
          v59 = v0 + 424;
          goto LABEL_37;
        }

        v28 = *(v0 + 568);
        sub_264A187D4(v23, v24, v25, v26);
LABEL_7:
        v5 = v28;
      }

      else
      {
        v36 = *(v0 + 632);
        v37 = *(v0 + 512);
        v38 = *(v37 + v36);
        *(v0 + 648) = v38;
        if (v38)
        {
          v83 = *(v0 + 560);
          v54 = *(v37 + v36 + 8);
          v84 = *(v83 + 32);
          ObjectType = swift_getObjectType();
          v97 = v83[1];
          v98 = *v83;
          *(v0 + 488) = &type metadata for DrawEvent;
          *(v0 + 496) = &off_28765B2B0;
          v85 = swift_allocObject();
          *(v0 + 464) = v85;
          *(v85 + 16) = v98;
          *(v85 + 32) = v97;
          *(v85 + 48) = v84;
          v86 = *(v54 + 32);
          swift_unknownObjectRetain();
          v96 = (v86 + *v86);
          v87 = swift_task_alloc();
          *(v0 + 656) = v87;
          *v87 = v0;
          v87[1] = sub_264B31F98;
          v59 = v0 + 464;
          goto LABEL_37;
        }

        v5 = *(v0 + 568);
      }

      sub_264B3C518(v5, type metadata accessor for ControlMessage);
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload > 4)
    {
      break;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v12 = *(v0 + 608);
      v13 = *(v0 + 560);
      v14 = *(v0 + 512);
      v16 = v13[1];
      v15 = v13[2];
      *(v0 + 16) = *v13;
      *(v0 + 32) = v16;
      *(v0 + 48) = v15;
      v18 = v13[4];
      v17 = v13[5];
      v19 = v13[3];
      *(v0 + 112) = *(v13 + 12);
      *(v0 + 80) = v18;
      *(v0 + 96) = v17;
      *(v0 + 64) = v19;
      if (*(v14 + v12))
      {
        v54 = *(v14 + v12 + 8);
        ObjectType = swift_getObjectType();
        *(v0 + 368) = &type metadata for StatusEvent;
        *(v0 + 376) = &off_28765B558;
        v74 = swift_allocObject();
        *(v0 + 344) = v74;
        memmove((v74 + 16), v13, 0x68uLL);
        v75 = *(v54 + 32);
        sub_264A7D664(v0 + 16, v0 + 120);
        v96 = (v75 + *v75);
        v76 = swift_task_alloc();
        *(v0 + 752) = v76;
        *v76 = v0;
        v76[1] = sub_264B34620;
        v59 = v0 + 344;
        goto LABEL_37;
      }

      sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
      sub_264A7DB74(v0 + 16);
    }

    else
    {
      v44 = *(v0 + 600);
      v45 = *(v0 + 560);
      v46 = *(v0 + 512);
      v47 = *v45;
      *(v0 + 768) = *v45;
      v48 = v45[1];
      *(v0 + 776) = v48;
      if (*(v46 + v44))
      {
        v77 = *(v46 + v44 + 8);
        v78 = swift_getObjectType();
        *(v0 + 328) = &type metadata for AccessibilityMessage;
        *(v0 + 336) = &off_28765A468;
        *(v0 + 304) = v47;
        *(v0 + 312) = v48;
        v79 = *(v77 + 32);
        sub_264A5448C(v47, v48);
        v96 = (v79 + *v79);
        v80 = swift_task_alloc();
        *(v0 + 784) = v80;
        *v80 = v0;
        v80[1] = sub_264B35324;
        v59 = v0 + 304;
        v81 = v78;
        v82 = v77;
        goto LABEL_38;
      }

      sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
      sub_2649E7004(v47, v48);
    }

LABEL_9:
    v2 = *(v0 + 640) + 1;
    if (v2 == *(v0 + 576))
    {
      goto LABEL_2;
    }
  }

  if (EnumCaseMultiPayload != 5)
  {
    v49 = *(v0 + 584);
    v50 = *(v0 + 512);
    sub_264B3C650(*(v0 + 560), *(v0 + 528), type metadata accessor for RTIMessage);
    v51 = *(v50 + v49);
    *(v0 + 848) = v51;
    if (v51)
    {
      v52 = *(v0 + 528);
      v53 = *(v0 + 520);
      v54 = *(*(v0 + 512) + *(v0 + 584) + 8);
      ObjectType = swift_getObjectType();
      *(v0 + 248) = v53;
      *(v0 + 256) = &off_28765CD50;
      v56 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
      sub_264B3C4B0(v52, v56, type metadata accessor for RTIMessage);
      v57 = *(v54 + 32);
      swift_unknownObjectRetain();
      v96 = (v57 + *v57);
      v58 = swift_task_alloc();
      *(v0 + 856) = v58;
      *v58 = v0;
      v58[1] = sub_264B36D10;
      v59 = v0 + 224;
      goto LABEL_37;
    }

    v28 = *(v0 + 568);
    v42 = *(v0 + 528);
    v43 = type metadata accessor for RTIMessage;
LABEL_6:
    sub_264B3C518(v42, v43);
    goto LABEL_7;
  }

  v29 = *(v0 + 592);
  v30 = *(v0 + 560);
  v31 = *(v0 + 512);
  v32 = *v30;
  *(v0 + 800) = *v30;
  v33 = *(v30 + 8);
  *(v0 + 808) = v33;
  v34 = *(v30 + 24);
  *(v0 + 816) = v34;
  v35 = *(v31 + v29);
  *(v0 + 824) = v35;
  if (!v35)
  {
    v28 = *(v0 + 568);
    sub_2649DEF6C(v32, v33);

    goto LABEL_7;
  }

  v54 = *(v31 + v29 + 8);
  v88 = *(v30 + 33);
  v89 = *(v30 + 32);
  v90 = *(v30 + 16);
  v91 = v32;
  v92 = v33;
  ObjectType = swift_getObjectType();
  *(v0 + 288) = &type metadata for DragAndDropEvent;
  *(v0 + 296) = &off_28765F610;
  v93 = swift_allocObject();
  *(v0 + 264) = v93;
  *(v93 + 16) = v91;
  *(v93 + 24) = v92;
  *(v93 + 32) = v90;
  *(v93 + 40) = v34;
  *(v93 + 48) = v89;
  *(v93 + 49) = v88;
  v94 = *(v54 + 32);
  swift_unknownObjectRetain();
  sub_2649DEF18(v91, v92);

  v96 = (v94 + *v94);
  v95 = swift_task_alloc();
  *(v0 + 832) = v95;
  *v95 = v0;
  v95[1] = sub_264B3602C;
  v59 = v0 + 264;
LABEL_37:
  v81 = ObjectType;
  v82 = v54;
LABEL_38:

  return v96(v59, v81, v82);
}

uint64_t sub_264B3602C()
{
  v2 = *v1;
  *(*v1 + 840) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    v3 = sub_264B37DB8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 264));
    v3 = sub_264B36158;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264B36158()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 800);
  while (2)
  {
    v3 = *(v0 + 568);
    sub_2649DEF6C(v2, v1);

LABEL_6:
    v9 = v3;
LABEL_7:
    sub_264B3C518(v9, type metadata accessor for ControlMessage);
    while (1)
    {
      v10 = *(v0 + 640) + 1;
      if (v10 == *(v0 + 576))
      {

        v61 = *(v0 + 8);

        return v61();
      }

      *(v0 + 640) = v10;
      v11 = *(v0 + 568);
      v12 = *(v0 + 560);
      v13 = (*(v0 + 504) + 40 * v10);
      v14 = v13[7];
      v15 = v13[8];
      __swift_project_boxed_opaque_existential_1(v13 + 4, v14);
      (*(v15 + 8))(v14, v15);
      sub_264B3C4B0(v11, v12, type metadata accessor for ControlMessage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v33 = *(v0 + 624);
            v34 = *(v0 + 560);
            v35 = *(v0 + 512);
            v36 = *v34;
            *(v0 + 672) = *v34;
            v37 = v34[1];
            *(v0 + 680) = v37;
            v38 = v34[2];
            *(v0 + 688) = v38;
            v39 = v34[3];
            *(v0 + 696) = v39;
            v40 = *(v35 + v33);
            *(v0 + 704) = v40;
            if (!v40)
            {
              v3 = *(v0 + 568);
              sub_264A187D4(v36, v37, v38, v39);
              goto LABEL_6;
            }

            v49 = *(v35 + v33 + 8);
            v72 = v36;
            v73 = v37;
            v74 = v38;
            v75 = v39;
            ObjectType = swift_getObjectType();
            *(v0 + 448) = &type metadata for SystemGestureEvent;
            *(v0 + 456) = &off_28765C718;
            v76 = swift_allocObject();
            *&v77 = v72;
            *(&v77 + 1) = v73;
            *&v78 = v74;
            *(&v78 + 1) = v75;
            *(v0 + 424) = v76;
            *(v76 + 16) = v77;
            *(v76 + 32) = v78;
            v79 = *(v49 + 32);
            swift_unknownObjectRetain();
            sub_264A18774(v72, v73, v74, v75);
            v96 = (v79 + *v79);
            v80 = swift_task_alloc();
            *(v0 + 712) = v80;
            *v80 = v0;
            v80[1] = sub_264B32C6C;
            v59 = v0 + 424;
          }

          else
          {
            v4 = *(v0 + 616);
            v5 = *(v0 + 512);
            sub_264B3C650(*(v0 + 560), *(v0 + 544), type metadata accessor for HIDMessage);
            v6 = *(v5 + v4);
            *(v0 + 728) = v6;
            if (!v6)
            {
              v3 = *(v0 + 568);
              v7 = *(v0 + 544);
              v8 = type metadata accessor for HIDMessage;
LABEL_5:
              sub_264B3C518(v7, v8);
              goto LABEL_6;
            }

            v81 = *(v0 + 544);
            v82 = *(v0 + 536);
            v49 = *(*(v0 + 512) + *(v0 + 616) + 8);
            ObjectType = swift_getObjectType();
            *(v0 + 408) = v82;
            *(v0 + 416) = &off_28765E6C8;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 384));
            sub_264B3C4B0(v81, boxed_opaque_existential_1, type metadata accessor for HIDMessage);
            v84 = *(v49 + 32);
            swift_unknownObjectRetain();
            v96 = (v84 + *v84);
            v85 = swift_task_alloc();
            *(v0 + 736) = v85;
            *v85 = v0;
            v85[1] = sub_264B33950;
            v59 = v0 + 384;
          }
        }

        else
        {
          v30 = *(v0 + 632);
          v31 = *(v0 + 512);
          v32 = *(v31 + v30);
          *(v0 + 648) = v32;
          if (!v32)
          {
            v9 = *(v0 + 568);
            goto LABEL_7;
          }

          v91 = *(v0 + 560);
          v49 = *(v31 + v30 + 8);
          v92 = *(v91 + 32);
          ObjectType = swift_getObjectType();
          v97 = v91[1];
          v98 = *v91;
          *(v0 + 488) = &type metadata for DrawEvent;
          *(v0 + 496) = &off_28765B2B0;
          v93 = swift_allocObject();
          *(v0 + 464) = v93;
          *(v93 + 16) = v98;
          *(v93 + 32) = v97;
          *(v93 + 48) = v92;
          v94 = *(v49 + 32);
          swift_unknownObjectRetain();
          v96 = (v94 + *v94);
          v95 = swift_task_alloc();
          *(v0 + 656) = v95;
          *v95 = v0;
          v95[1] = sub_264B31F98;
          v59 = v0 + 464;
        }

        goto LABEL_36;
      }

      if (EnumCaseMultiPayload > 4)
      {
        break;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v17 = *(v0 + 608);
        v18 = *(v0 + 560);
        v19 = *(v0 + 512);
        v21 = v18[1];
        v20 = v18[2];
        *(v0 + 16) = *v18;
        *(v0 + 32) = v21;
        *(v0 + 48) = v20;
        v23 = v18[4];
        v22 = v18[5];
        v24 = v18[3];
        *(v0 + 112) = *(v18 + 12);
        *(v0 + 80) = v23;
        *(v0 + 96) = v22;
        *(v0 + 64) = v24;
        if (*(v19 + v17))
        {
          v49 = *(v19 + v17 + 8);
          ObjectType = swift_getObjectType();
          *(v0 + 368) = &type metadata for StatusEvent;
          *(v0 + 376) = &off_28765B558;
          v64 = swift_allocObject();
          *(v0 + 344) = v64;
          memmove((v64 + 16), v18, 0x68uLL);
          v65 = *(v49 + 32);
          sub_264A7D664(v0 + 16, v0 + 120);
          v96 = (v65 + *v65);
          v66 = swift_task_alloc();
          *(v0 + 752) = v66;
          *v66 = v0;
          v66[1] = sub_264B34620;
          v59 = v0 + 344;
          goto LABEL_36;
        }

        sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
        sub_264A7DB74(v0 + 16);
      }

      else
      {
        v25 = *(v0 + 600);
        v26 = *(v0 + 560);
        v27 = *(v0 + 512);
        v28 = *v26;
        *(v0 + 768) = *v26;
        v29 = v26[1];
        *(v0 + 776) = v29;
        if (*(v27 + v25))
        {
          v67 = *(v27 + v25 + 8);
          v68 = swift_getObjectType();
          *(v0 + 328) = &type metadata for AccessibilityMessage;
          *(v0 + 336) = &off_28765A468;
          *(v0 + 304) = v28;
          *(v0 + 312) = v29;
          v69 = *(v67 + 32);
          sub_264A5448C(v28, v29);
          v96 = (v69 + *v69);
          v70 = swift_task_alloc();
          *(v0 + 784) = v70;
          *v70 = v0;
          v70[1] = sub_264B35324;
          v59 = v0 + 304;
          v60 = v68;
          v71 = v67;
          goto LABEL_38;
        }

        sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
        sub_2649E7004(v28, v29);
      }
    }

    if (EnumCaseMultiPayload == 6)
    {
      v41 = *(v0 + 584);
      v42 = *(v0 + 512);
      sub_264B3C650(*(v0 + 560), *(v0 + 528), type metadata accessor for RTIMessage);
      v43 = *(v42 + v41);
      *(v0 + 848) = v43;
      if (!v43)
      {
        v3 = *(v0 + 568);
        v7 = *(v0 + 528);
        v8 = type metadata accessor for RTIMessage;
        goto LABEL_5;
      }

      v86 = *(v0 + 528);
      v87 = *(v0 + 520);
      v49 = *(*(v0 + 512) + *(v0 + 584) + 8);
      ObjectType = swift_getObjectType();
      *(v0 + 248) = v87;
      *(v0 + 256) = &off_28765CD50;
      v88 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
      sub_264B3C4B0(v86, v88, type metadata accessor for RTIMessage);
      v89 = *(v49 + 32);
      swift_unknownObjectRetain();
      v96 = (v89 + *v89);
      v90 = swift_task_alloc();
      *(v0 + 856) = v90;
      *v90 = v0;
      v90[1] = sub_264B36D10;
      v59 = v0 + 224;
LABEL_36:
      v60 = ObjectType;
      goto LABEL_37;
    }

    v44 = *(v0 + 592);
    v45 = *(v0 + 560);
    v46 = *(v0 + 512);
    v2 = *v45;
    *(v0 + 800) = *v45;
    v1 = *(v45 + 8);
    *(v0 + 808) = v1;
    v47 = *(v45 + 24);
    *(v0 + 816) = v47;
    v48 = *(v46 + v44);
    *(v0 + 824) = v48;
    if (!v48)
    {
      continue;
    }

    break;
  }

  v49 = *(v46 + v44 + 8);
  v50 = *(v45 + 33);
  v51 = *(v45 + 32);
  v52 = *(v45 + 16);
  v53 = v2;
  v54 = v1;
  v55 = swift_getObjectType();
  *(v0 + 288) = &type metadata for DragAndDropEvent;
  *(v0 + 296) = &off_28765F610;
  v56 = swift_allocObject();
  *(v0 + 264) = v56;
  *(v56 + 16) = v53;
  *(v56 + 24) = v54;
  *(v56 + 32) = v52;
  *(v56 + 40) = v47;
  *(v56 + 48) = v51;
  *(v56 + 49) = v50;
  v57 = *(v49 + 32);
  swift_unknownObjectRetain();
  sub_2649DEF18(v53, v54);

  v96 = (v57 + *v57);
  v58 = swift_task_alloc();
  *(v0 + 832) = v58;
  *v58 = v0;
  v58[1] = sub_264B3602C;
  v59 = v0 + 264;
  v60 = v55;
LABEL_37:
  v71 = v49;
LABEL_38:

  return v96(v59, v60, v71);
}

uint64_t sub_264B36D10()
{
  v2 = *v1;
  *(*v1 + 864) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    v3 = sub_264B37E88;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 224));
    v3 = sub_264B36E3C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264B36E3C()
{
LABEL_1:
  v1 = *(v0 + 568);
  v2 = *(v0 + 528);
  v3 = type metadata accessor for RTIMessage;
LABEL_2:
  sub_264B3C518(v2, v3);
LABEL_3:
  v4 = v1;
LABEL_4:
  sub_264B3C518(v4, type metadata accessor for ControlMessage);
  while (1)
  {
    v5 = *(v0 + 640) + 1;
    if (v5 == *(v0 + 576))
    {
      break;
    }

    *(v0 + 640) = v5;
    v6 = *(v0 + 568);
    v7 = *(v0 + 560);
    v8 = (*(v0 + 504) + 40 * v5);
    v9 = v8[7];
    v10 = v8[8];
    __swift_project_boxed_opaque_existential_1(v8 + 4, v9);
    (*(v10 + 8))(v9, v10);
    sub_264B3C4B0(v6, v7, type metadata accessor for ControlMessage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v28 = *(v0 + 624);
          v29 = *(v0 + 560);
          v30 = *(v0 + 512);
          v31 = *v29;
          *(v0 + 672) = *v29;
          v32 = v29[1];
          *(v0 + 680) = v32;
          v33 = v29[2];
          *(v0 + 688) = v33;
          v34 = v29[3];
          *(v0 + 696) = v34;
          v35 = *(v30 + v28);
          *(v0 + 704) = v35;
          if (!v35)
          {
            v1 = *(v0 + 568);
            sub_264A187D4(v31, v32, v33, v34);
            goto LABEL_3;
          }

          v51 = *(v30 + v28 + 8);
          v68 = v31;
          v69 = v32;
          v70 = v33;
          v71 = v34;
          ObjectType = swift_getObjectType();
          *(v0 + 448) = &type metadata for SystemGestureEvent;
          *(v0 + 456) = &off_28765C718;
          v72 = swift_allocObject();
          *&v73 = v68;
          *(&v73 + 1) = v69;
          *&v74 = v70;
          *(&v74 + 1) = v71;
          *(v0 + 424) = v72;
          *(v72 + 16) = v73;
          *(v72 + 32) = v74;
          v75 = *(v51 + 32);
          swift_unknownObjectRetain();
          sub_264A18774(v68, v69, v70, v71);
          v95 = (v75 + *v75);
          v76 = swift_task_alloc();
          *(v0 + 712) = v76;
          *v76 = v0;
          v76[1] = sub_264B32C6C;
          v56 = v0 + 424;
        }

        else
        {
          v43 = *(v0 + 616);
          v44 = *(v0 + 512);
          sub_264B3C650(*(v0 + 560), *(v0 + 544), type metadata accessor for HIDMessage);
          v45 = *(v44 + v43);
          *(v0 + 728) = v45;
          if (!v45)
          {
            v1 = *(v0 + 568);
            v2 = *(v0 + 544);
            v3 = type metadata accessor for HIDMessage;
            goto LABEL_2;
          }

          v77 = *(v0 + 544);
          v78 = *(v0 + 536);
          v51 = *(*(v0 + 512) + *(v0 + 616) + 8);
          ObjectType = swift_getObjectType();
          *(v0 + 408) = v78;
          *(v0 + 416) = &off_28765E6C8;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 384));
          sub_264B3C4B0(v77, boxed_opaque_existential_1, type metadata accessor for HIDMessage);
          v80 = *(v51 + 32);
          swift_unknownObjectRetain();
          v95 = (v80 + *v80);
          v81 = swift_task_alloc();
          *(v0 + 736) = v81;
          *v81 = v0;
          v81[1] = sub_264B33950;
          v56 = v0 + 384;
        }
      }

      else
      {
        v25 = *(v0 + 632);
        v26 = *(v0 + 512);
        v27 = *(v26 + v25);
        *(v0 + 648) = v27;
        if (!v27)
        {
          v4 = *(v0 + 568);
          goto LABEL_4;
        }

        v90 = *(v0 + 560);
        v51 = *(v26 + v25 + 8);
        v91 = *(v90 + 32);
        ObjectType = swift_getObjectType();
        v96 = v90[1];
        v97 = *v90;
        *(v0 + 488) = &type metadata for DrawEvent;
        *(v0 + 496) = &off_28765B2B0;
        v92 = swift_allocObject();
        *(v0 + 464) = v92;
        *(v92 + 16) = v97;
        *(v92 + 32) = v96;
        *(v92 + 48) = v91;
        v93 = *(v51 + 32);
        swift_unknownObjectRetain();
        v95 = (v93 + *v93);
        v94 = swift_task_alloc();
        *(v0 + 656) = v94;
        *v94 = v0;
        v94[1] = sub_264B31F98;
        v56 = v0 + 464;
      }

      goto LABEL_35;
    }

    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v36 = *(v0 + 592);
        v37 = *(v0 + 560);
        v38 = *(v0 + 512);
        v39 = *v37;
        *(v0 + 800) = *v37;
        v40 = *(v37 + 8);
        *(v0 + 808) = v40;
        v41 = *(v37 + 24);
        *(v0 + 816) = v41;
        v42 = *(v38 + v36);
        *(v0 + 824) = v42;
        if (!v42)
        {
          v1 = *(v0 + 568);
          sub_2649DEF6C(v39, v40);

          goto LABEL_3;
        }

        v51 = *(v38 + v36 + 8);
        v82 = *(v37 + 33);
        v83 = *(v37 + 32);
        v84 = *(v37 + 16);
        v85 = v39;
        v86 = v40;
        ObjectType = swift_getObjectType();
        *(v0 + 288) = &type metadata for DragAndDropEvent;
        *(v0 + 296) = &off_28765F610;
        v87 = swift_allocObject();
        *(v0 + 264) = v87;
        *(v87 + 16) = v85;
        *(v87 + 24) = v86;
        *(v87 + 32) = v84;
        *(v87 + 40) = v41;
        *(v87 + 48) = v83;
        *(v87 + 49) = v82;
        v88 = *(v51 + 32);
        swift_unknownObjectRetain();
        sub_2649DEF18(v85, v86);

        v95 = (v88 + *v88);
        v89 = swift_task_alloc();
        *(v0 + 832) = v89;
        *v89 = v0;
        v89[1] = sub_264B3602C;
        v56 = v0 + 264;
      }

      else
      {
        v46 = *(v0 + 584);
        v47 = *(v0 + 512);
        sub_264B3C650(*(v0 + 560), *(v0 + 528), type metadata accessor for RTIMessage);
        v48 = *(v47 + v46);
        *(v0 + 848) = v48;
        if (!v48)
        {
          goto LABEL_1;
        }

        v49 = *(v0 + 528);
        v50 = *(v0 + 520);
        v51 = *(*(v0 + 512) + *(v0 + 584) + 8);
        ObjectType = swift_getObjectType();
        *(v0 + 248) = v50;
        *(v0 + 256) = &off_28765CD50;
        v53 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
        sub_264B3C4B0(v49, v53, type metadata accessor for RTIMessage);
        v54 = *(v51 + 32);
        swift_unknownObjectRetain();
        v95 = (v54 + *v54);
        v55 = swift_task_alloc();
        *(v0 + 856) = v55;
        *v55 = v0;
        v55[1] = sub_264B36D10;
        v56 = v0 + 224;
      }

      goto LABEL_35;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v12 = *(v0 + 608);
      v13 = *(v0 + 560);
      v14 = *(v0 + 512);
      v16 = v13[1];
      v15 = v13[2];
      *(v0 + 16) = *v13;
      *(v0 + 32) = v16;
      *(v0 + 48) = v15;
      v18 = v13[4];
      v17 = v13[5];
      v19 = v13[3];
      *(v0 + 112) = *(v13 + 12);
      *(v0 + 80) = v18;
      *(v0 + 96) = v17;
      *(v0 + 64) = v19;
      if (*(v14 + v12))
      {
        v51 = *(v14 + v12 + 8);
        ObjectType = swift_getObjectType();
        *(v0 + 368) = &type metadata for StatusEvent;
        *(v0 + 376) = &off_28765B558;
        v65 = swift_allocObject();
        *(v0 + 344) = v65;
        memmove((v65 + 16), v13, 0x68uLL);
        v66 = *(v51 + 32);
        sub_264A7D664(v0 + 16, v0 + 120);
        v95 = (v66 + *v66);
        v67 = swift_task_alloc();
        *(v0 + 752) = v67;
        *v67 = v0;
        v67[1] = sub_264B34620;
        v56 = v0 + 344;
LABEL_35:
        v63 = ObjectType;
        v64 = v51;
        goto LABEL_36;
      }

      sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
      sub_264A7DB74(v0 + 16);
    }

    else
    {
      v20 = *(v0 + 600);
      v21 = *(v0 + 560);
      v22 = *(v0 + 512);
      v23 = *v21;
      *(v0 + 768) = *v21;
      v24 = v21[1];
      *(v0 + 776) = v24;
      if (*(v22 + v20))
      {
        v59 = *(v22 + v20 + 8);
        v60 = swift_getObjectType();
        *(v0 + 328) = &type metadata for AccessibilityMessage;
        *(v0 + 336) = &off_28765A468;
        *(v0 + 304) = v23;
        *(v0 + 312) = v24;
        v61 = *(v59 + 32);
        sub_264A5448C(v23, v24);
        v95 = (v61 + *v61);
        v62 = swift_task_alloc();
        *(v0 + 784) = v62;
        *v62 = v0;
        v62[1] = sub_264B35324;
        v56 = v0 + 304;
        v63 = v60;
        v64 = v59;
LABEL_36:

        return v95(v56, v63, v64);
      }

      sub_264B3C518(*(v0 + 568), type metadata accessor for ControlMessage);
      sub_2649E7004(v23, v24);
    }
  }

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_264B379E0()
{
  sub_264B3C518(v0[71], type metadata accessor for ControlMessage);
  __swift_destroy_boxed_opaque_existential_0(v0 + 58);

  v1 = v0[1];

  return v1();
}

uint64_t sub_264B37A94()
{
  v1 = v0[71];
  sub_264A187D4(v0[84], v0[85], v0[86], v0[87]);
  sub_264B3C518(v1, type metadata accessor for ControlMessage);
  __swift_destroy_boxed_opaque_existential_0(v0 + 53);

  v2 = v0[1];

  return v2();
}

uint64_t sub_264B37B60()
{
  v1 = v0[71];
  sub_264B3C518(v0[68], type metadata accessor for HIDMessage);
  sub_264B3C518(v1, type metadata accessor for ControlMessage);
  __swift_destroy_boxed_opaque_existential_0(v0 + 48);

  v2 = v0[1];

  return v2();
}

uint64_t sub_264B37C34()
{
  v1 = v0[71];
  sub_264A7DB74((v0 + 2));
  sub_264B3C518(v1, type metadata accessor for ControlMessage);
  __swift_destroy_boxed_opaque_existential_0(v0 + 43);

  v2 = v0[1];

  return v2();
}

uint64_t sub_264B37CF4()
{
  v1 = v0[71];
  sub_2649E7004(v0[96], v0[97]);
  sub_264B3C518(v1, type metadata accessor for ControlMessage);
  __swift_destroy_boxed_opaque_existential_0(v0 + 38);

  v2 = v0[1];

  return v2();
}

uint64_t sub_264B37DB8()
{
  v1 = v0[71];
  sub_2649DEF6C(v0[100], v0[101]);

  sub_264B3C518(v1, type metadata accessor for ControlMessage);
  __swift_destroy_boxed_opaque_existential_0(v0 + 33);

  v2 = v0[1];

  return v2();
}

uint64_t sub_264B37E88()
{
  v1 = v0[71];
  sub_264B3C518(v0[66], type metadata accessor for RTIMessage);
  sub_264B3C518(v1, type metadata accessor for ControlMessage);
  __swift_destroy_boxed_opaque_existential_0(v0 + 28);

  v2 = v0[1];

  return v2();
}

uint64_t sub_264B37F5C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventConsumerProvider;
  swift_beginAccess();
  sub_2649CB5C0(a1 + v2, &v25);
  v4 = *(&v26 + 1);
  v3 = v27;
  __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
  (*(*(v3 + 8) + 16))(&v24, v4);
  *(a1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentControlEventConsumer) = v24;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(&v25);
  v5 = a1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemGestureEventConsumerProvider;
  if (*(a1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemGestureEventConsumerProvider + 24))
  {
    sub_2649CB5C0(v5, &v25);
    v6 = *(&v26 + 1);
    if (*(&v26 + 1))
    {
LABEL_3:
      v7 = v27;
      __swift_project_boxed_opaque_existential_1(&v25, v6);
      (*(v7 + 16))(&v24, v6, v7);
      v21 = v24;
      __swift_destroy_boxed_opaque_existential_0(&v25);
      v8 = v21;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = *(v5 + 16);
    v25 = *v5;
    v26 = v9;
    v27 = *(v5 + 32);
    v6 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
      goto LABEL_3;
    }
  }

  v8 = 0uLL;
LABEL_6:
  *(a1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentSystemEventConsumer) = v8;
  swift_unknownObjectRelease();
  v10 = a1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventConsumerProvider;
  if (*(a1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventConsumerProvider + 24))
  {
    sub_2649CB5C0(v10, &v25);
    v11 = *(&v26 + 1);
    if (*(&v26 + 1))
    {
LABEL_8:
      v12 = v27;
      __swift_project_boxed_opaque_existential_1(&v25, v11);
      (*(v12 + 16))(&v24, v11, v12);
      v22 = v24;
      __swift_destroy_boxed_opaque_existential_0(&v25);
      v13 = v22;
      goto LABEL_11;
    }
  }

  else
  {
    v14 = *(v10 + 16);
    v25 = *v10;
    v26 = v14;
    v27 = *(v10 + 32);
    v11 = *(&v14 + 1);
    if (*(&v14 + 1))
    {
      goto LABEL_8;
    }
  }

  v13 = 0uLL;
LABEL_11:
  *(a1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentDragAndDropEventConsumer) = v13;
  swift_unknownObjectRelease();
  v15 = a1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiMessageConsumerProvider;
  if (!*(a1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiMessageConsumerProvider + 24))
  {
    v19 = *(v15 + 16);
    v25 = *v15;
    v26 = v19;
    v27 = *(v15 + 32);
    v16 = *(&v19 + 1);
    if (*(&v19 + 1))
    {
      goto LABEL_13;
    }

LABEL_15:
    v18 = 0uLL;
    goto LABEL_16;
  }

  sub_2649CB5C0(v15, &v25);
  v16 = *(&v26 + 1);
  if (!*(&v26 + 1))
  {
    goto LABEL_15;
  }

LABEL_13:
  v17 = v27;
  __swift_project_boxed_opaque_existential_1(&v25, v16);
  (*(v17 + 16))(&v24, v16, v17);
  v23 = v24;
  __swift_destroy_boxed_opaque_existential_0(&v25);
  v18 = v23;
LABEL_16:
  *(a1 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_currentRTIMessageConsumer) = v18;
  return swift_unknownObjectRelease();
}

uint64_t sub_264B381F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 104) = a2;
  *(v4 + 112) = a3;
  v5 = *a1;
  *(v4 + 120) = v3;
  *(v4 + 128) = v5;
  *(v4 + 81) = *(a1 + 8);
  return MEMORY[0x2822009F8](sub_264B38228, 0, 0);
}

uint64_t sub_264B38228(uint64_t a1, uint64_t a2)
{
  v41 = v2;
  v3 = v2[13];
  v4 = v3[2];
  v2[17] = v4;
  if (v4)
  {
    v2[18] = 0;
    v5 = v3[4];
    v2[19] = v5;
    v6 = v3[5];
    v7 = qword_27FF883E0;
    swift_unknownObjectRetain();
    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_264B40964();
    __swift_project_value_buffer(v8, qword_27FFA71B8);
    swift_unknownObjectRetain();
    v9 = sub_264B40944();
    v10 = sub_264B41484();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v40 = v12;
      *v11 = 136446210;
      v2[7] = v5;
      v2[8] = v6;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AC0, &qword_264B44EB0);
      v13 = sub_264B41064();
      v15 = sub_2649CC004(v13, v14, &v40);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_2649C6000, v9, v10, "invalidating consumer: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x266749940](v12, -1, -1);
      MEMORY[0x266749940](v11, -1, -1);
    }

    ObjectType = swift_getObjectType();
    v39 = (*(v6 + 24) + **(v6 + 24));
    v17 = swift_task_alloc();
    v2[20] = v17;
    *v17 = v2;
    v17[1] = sub_264B38800;

    return v39(ObjectType, v6);
  }

  else
  {
    v19 = v2[14];
    v20 = v19[2];
    v2[22] = v20;
    if (v20)
    {
      v2[23] = 0;
      v21 = v19[4];
      v2[24] = v21;
      v22 = v19[5];
      v23 = qword_27FF883E0;
      swift_unknownObjectRetain();
      if (v23 != -1)
      {
        swift_once();
      }

      v24 = sub_264B40964();
      __swift_project_value_buffer(v24, qword_27FFA71B8);
      swift_unknownObjectRetain();
      v25 = sub_264B40944();
      v26 = sub_264B41484();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v40 = v28;
        *v27 = 136446210;
        v2[5] = v21;
        v2[6] = v22;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AC0, &qword_264B44EB0);
        v29 = sub_264B41064();
        v31 = sub_2649CC004(v29, v30, &v40);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_2649C6000, v25, v26, "activating consumer: %{public}s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x266749940](v28, -1, -1);
        MEMORY[0x266749940](v27, -1, -1);
      }

      v32 = swift_getObjectType();
      v33 = swift_allocObject();
      v2[25] = v33;
      swift_weakInit();
      v34 = *(v22 + 16);

      v38 = (v34 + *v34);
      v35 = swift_task_alloc();
      v2[26] = v35;
      *v35 = v2;
      v35[1] = sub_264B38F04;

      return v38(sub_264B3CAE4, v33, v32, v22);
    }

    else
    {
      v2[28] = sub_264B41244();
      v2[29] = sub_264B41234();
      v37 = sub_264B411C4();

      return MEMORY[0x2822009F8](sub_264B393CC, v37, v36);
    }
  }
}

uint64_t sub_264B38800()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_264B399F8;
  }

  else
  {
    v2 = sub_264B38914;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264B38914()
{
  v41 = v0;
  v1 = v0[18];
  v2 = v0[17];
  swift_unknownObjectRelease();
  if (v1 + 1 == v2)
  {
    v3 = v0[14];
    v4 = v3[2];
    v0[22] = v4;
    if (v4)
    {
      v0[23] = 0;
      v5 = v3[4];
      v0[24] = v5;
      v6 = v3[5];
      v7 = qword_27FF883E0;
      swift_unknownObjectRetain();
      if (v7 != -1)
      {
        swift_once();
      }

      v8 = sub_264B40964();
      __swift_project_value_buffer(v8, qword_27FFA71B8);
      swift_unknownObjectRetain();
      v9 = sub_264B40944();
      v10 = sub_264B41484();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v40 = v12;
        *v11 = 136446210;
        v0[5] = v5;
        v0[6] = v6;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AC0, &qword_264B44EB0);
        v13 = sub_264B41064();
        v15 = sub_2649CC004(v13, v14, &v40);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_2649C6000, v9, v10, "activating consumer: %{public}s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x266749940](v12, -1, -1);
        MEMORY[0x266749940](v11, -1, -1);
      }

      ObjectType = swift_getObjectType();
      v17 = swift_allocObject();
      v0[25] = v17;
      swift_weakInit();
      v18 = *(v6 + 16);

      v38 = (v18 + *v18);
      v19 = swift_task_alloc();
      v0[26] = v19;
      *v19 = v0;
      v19[1] = sub_264B38F04;

      return v38(sub_264B3CAE4, v17, ObjectType, v6);
    }

    else
    {
      v0[28] = sub_264B41244();
      v0[29] = sub_264B41234();
      v37 = sub_264B411C4();

      return MEMORY[0x2822009F8](sub_264B393CC, v37, v36);
    }
  }

  else
  {
    v21 = v0[18] + 1;
    v0[18] = v21;
    v22 = v0[13] + 16 * v21;
    v23 = *(v22 + 32);
    v0[19] = v23;
    v24 = *(v22 + 40);
    v25 = qword_27FF883E0;
    swift_unknownObjectRetain();
    if (v25 != -1)
    {
      swift_once();
    }

    v26 = sub_264B40964();
    __swift_project_value_buffer(v26, qword_27FFA71B8);
    swift_unknownObjectRetain();
    v27 = sub_264B40944();
    v28 = sub_264B41484();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40 = v30;
      *v29 = 136446210;
      v0[7] = v23;
      v0[8] = v24;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AC0, &qword_264B44EB0);
      v31 = sub_264B41064();
      v33 = sub_2649CC004(v31, v32, &v40);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_2649C6000, v27, v28, "invalidating consumer: %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x266749940](v30, -1, -1);
      MEMORY[0x266749940](v29, -1, -1);
    }

    v34 = swift_getObjectType();
    v39 = (*(v24 + 24) + **(v24 + 24));
    v35 = swift_task_alloc();
    v0[20] = v35;
    *v35 = v0;
    v35[1] = sub_264B38800;

    return v39(v34, v24);
  }
}

uint64_t sub_264B38F04()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_264B39A5C;
  }

  else
  {

    v2 = sub_264B39044;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264B39044()
{
  v25 = v0;
  v1 = v0[23];
  v2 = v0[22];
  swift_unknownObjectRelease();
  if (v1 + 1 == v2)
  {
    v0[28] = sub_264B41244();
    v0[29] = sub_264B41234();
    v4 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264B393CC, v4, v3);
  }

  else
  {
    v5 = v0[23] + 1;
    v0[23] = v5;
    v6 = v0[14] + 16 * v5;
    v7 = *(v6 + 32);
    v0[24] = v7;
    v8 = *(v6 + 40);
    v9 = qword_27FF883E0;
    swift_unknownObjectRetain();
    if (v9 != -1)
    {
      swift_once();
    }

    v10 = sub_264B40964();
    __swift_project_value_buffer(v10, qword_27FFA71B8);
    swift_unknownObjectRetain();
    v11 = sub_264B40944();
    v12 = sub_264B41484();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136446210;
      v0[5] = v7;
      v0[6] = v8;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AC0, &qword_264B44EB0);
      v15 = sub_264B41064();
      v17 = sub_2649CC004(v15, v16, &v24);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_2649C6000, v11, v12, "activating consumer: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x266749940](v14, -1, -1);
      MEMORY[0x266749940](v13, -1, -1);
    }

    ObjectType = swift_getObjectType();
    v19 = swift_allocObject();
    v0[25] = v19;
    swift_weakInit();
    v20 = *(v8 + 16);

    v23 = (v20 + *v20);
    v21 = swift_task_alloc();
    v0[26] = v21;
    *v21 = v0;
    v21[1] = sub_264B38F04;

    return v23(sub_264B3CAE4, v19, ObjectType, v8);
  }
}

uint64_t sub_264B393CC()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return MEMORY[0x2822009F8](sub_264B39484, 0, 0);
}

uint64_t sub_264B39484(double a1)
{
  v2 = *(v1 + 81);
  v3 = *(v1 + 128);
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v1 + 81);
  }

  v5 = *(v1 + 80) == 1 && *(v1 + 72) == 0;
  if (!v5 || (v4 & 1) != 0)
  {
    *(v1 + 88) = v3;
    *(v1 + 96) = v2;
    v8 = swift_task_alloc();
    *(v1 + 288) = v8;
    *v8 = v1;
    v8[1] = sub_264B39900;

    return sub_264B26F7C(v1 + 88);
  }

  else
  {
    *(v1 + 240) = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_startupEventsQueue;
    *(v1 + 248) = sub_264B41234();
    v7 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264B395BC, v7, v6);
  }
}

uint64_t sub_264B395BC()
{
  v1 = v0[30];
  v2 = v0[15];

  swift_beginAccess();
  v3 = *(v2 + v1);
  v0[32] = v3;

  v4 = swift_task_alloc();
  v0[33] = v4;
  *v4 = v0;
  v4[1] = sub_264B3968C;

  return sub_264B31284(v3);
}

uint64_t sub_264B3968C()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_264B39AC8;
  }

  else
  {

    v2 = sub_264B397A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264B397A8(double a1)
{
  *(v1 + 280) = sub_264B41234();
  v3 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B39834, v3, v2);
}

uint64_t sub_264B39834()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 120);

  *(v2 + v1) = MEMORY[0x277D84F90];

  v3 = *(v0 + 81);
  *(v0 + 88) = *(v0 + 128);
  *(v0 + 96) = v3;
  v4 = swift_task_alloc();
  *(v0 + 288) = v4;
  *v4 = v0;
  v4[1] = sub_264B39900;

  return sub_264B26F7C(v0 + 88);
}

uint64_t sub_264B39900()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264B399F8()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264B39A5C()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264B39AC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264B39B2C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_264B39BA8(a1, a2, a3);
  }

  return result;
}

uint64_t sub_264B39BA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v26 - v8;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v10 = sub_264B40964();
  __swift_project_value_buffer(v10, qword_27FFA71B8);
  swift_unknownObjectRetain();
  v11 = a3;
  v12 = sub_264B40944();
  v13 = sub_264B41484();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136446466;
    swift_getObjectType();
    v16 = sub_264B41C44();
    v18 = sub_2649CC004(v16, v17, &v27);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v26 = a3;
    v19 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v20 = sub_264B41064();
    v22 = sub_2649CC004(v20, v21, &v27);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_2649C6000, v12, v13, "%{public}s interrupted with error %{public}s, switching interaction state to pause", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v15, -1, -1);
    MEMORY[0x266749940](v14, -1, -1);
  }

  v23 = sub_264B41274();
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v4;

  sub_264A10C20(0, 0, v9, &unk_264B58760, v24);
}

uint64_t sub_264B39E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264B39F08, 0, 0);
}

uint64_t sub_264B39F08()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_264B41274();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v0[4] = sub_264B41244();

  v4 = sub_264B41234();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  *(v5 + 32) = v2;
  *(v5 + 40) = 0;
  *(v5 + 48) = 1;
  v7 = sub_2649CD944(0, 0, v1, &unk_264B58768, v5);
  v0[5] = v7;
  v8 = swift_task_alloc();
  v0[6] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
  *v8 = v0;
  v8[1] = sub_264B3A094;
  v10 = MEMORY[0x277D84950];
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v9, v7, v11, v9, v10);
}

uint64_t sub_264B3A094()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_264B3A210;
  }

  else
  {
    v2 = sub_264B3A1A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264B3A1A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264B3A210()
{

  *(v0 + 64) = sub_264B41234();
  v2 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264B3A2A0, v2, v1);
}

uint64_t sub_264B3A2A0()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = 0;

  sub_264B40A94();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_264B3A38C;

  return PlaybackServer.invalidate(waitsForSession:)(0);
}

uint64_t sub_264B3A38C()
{

  return MEMORY[0x2822009F8](sub_264B3A488, 0, 0);
}

uint64_t sub_264B3A488()
{
  v1 = v0[7];
  (*(v0[2] + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_interruptionHandler))(v1);

  v2 = v0[1];

  return v2();
}

uint64_t PlaybackServer.deinit()
{

  v1 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer__interactionState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E50, &qword_264B495B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer__isActive;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventConsumerProvider + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_drawEventConsumerProvider));
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_controlEventConsumerProvider));
  if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemGestureEventConsumerProvider + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_systemGestureEventConsumerProvider));
  }

  if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventConsumerProvider + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_dragAndDropEventConsumerProvider));
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiMessageConsumerProvider + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_rtiMessageConsumerProvider));
  }

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_2649D04D4(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_bufferedSendingContinuation, &unk_27FF8AA00, &unk_264B4CBA0);
  sub_2649D04D4(v0 + OBJC_IVAR____TtC16ScreenSharingKit14PlaybackServer_sessionInvalidationContinuation, &unk_27FF899E0, &qword_264B53440);

  return v0;
}

uint64_t PlaybackServer.__deallocating_deinit()
{
  PlaybackServer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_264B3A840(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CED8, &qword_264B58738);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v16[-v5 - 8];
  v7 = a1[3];
  v8 = a1[5];
  v26 = a1[4];
  v27 = v8;
  v9 = a1[1];
  v23[0] = *a1;
  v23[1] = v9;
  v10 = a1[3];
  v12 = *a1;
  v11 = a1[1];
  v24 = a1[2];
  v25 = v10;
  v13 = a1[5];
  v20 = v26;
  v21 = v13;
  *&v16[104] = v12;
  v17 = v11;
  v28 = *(a1 + 12);
  v22 = *(a1 + 12);
  v18 = v24;
  v19 = v7;
  sub_264A7D664(v23, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CEC0, &qword_264B58728);
  sub_264B412A4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_264B3A998(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE28, &qword_264B58650);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v10 - v5;
  v7 = *(a1 + 24);
  LOBYTE(v5) = *(a1 + 32);
  v8 = *(a1 + 33);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = v7;
  v14 = v5;
  v15 = v8;
  sub_2649DEF18(v11, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE10, &qword_264B58640);
  sub_264B412A4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_264B3AAC8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE48, &qword_264B58680);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v9 - v5;
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  sub_264A5448C(v9[0], v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE30, &qword_264B58670);
  sub_264B412A4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_264B3ABCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ControlMessage(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264B3C4B0(a1, v7, type metadata accessor for ControlMessage);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    result = sub_264B3C518(v7, type metadata accessor for ControlMessage);
    v9 = 0uLL;
    v10 = -1;
    v11 = 0uLL;
  }

  else
  {
    v9 = *v7;
    v11 = *(v7 + 1);
    v10 = v7[32];
  }

  *a2 = v9;
  *(a2 + 16) = v11;
  *(a2 + 32) = v10;
  return result;
}

uint64_t sub_264B3ACB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDE0, &qword_264B585C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v9 - v5;
  LOBYTE(v5) = *(a1 + 32);
  v7 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v7;
  v10 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDB8, &qword_264B585B0);
  sub_264B412A4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_264B3ADBC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE80, &qword_264B586C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v11 - v5;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v11[0] = *a1;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  sub_264A18774(v11[0], v7, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE68, &qword_264B586B0);
  sub_264B412A4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_264B3AEC8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264B3AF1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t type metadata accessor for PlaybackServer(uint64_t a1)
{
  result = qword_27FF8CD80;
  if (!qword_27FF8CD80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264B3B028(uint64_t a1)
{
  sub_2649DC850(319, &qword_27FF8CD90, &type metadata for InteractionState);
  if (v1 <= 0x3F)
  {
    sub_2649DC850(319, &qword_27FF8A990, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      sub_264A2C814(319, &qword_27FF8A998, &qword_27FF8A940, &qword_264B4CAE0);
      if (v3 <= 0x3F)
      {
        sub_264A2C814(319, &unk_27FF897E0, &qword_27FF893A0, &unk_264B44E60);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_264B3B254(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2649E0EE4;

  return sub_264B26404(a1, a2, v2);
}

uint64_t sub_264B3B31C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264B266C0(a1, v4, v5, v6);
}

uint64_t sub_264B3B3D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264B26CA8(a1, v4, v5, v6);
}

uint64_t sub_264B3B484(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264B27948(a1, v4, v5, v6);
}

uint64_t sub_264B3B540()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA20, &unk_264B4CBD8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_264B3B6BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA20, &unk_264B4CBD8) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2649E0EE4;

  return sub_264B3029C(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_264B3B85C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264B3B964(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649E0EE4;

  return sub_264B28944(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_264B3BAA8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CDB8, &qword_264B585B0);

  return sub_264B3ACB4(a1);
}

uint64_t sub_264B3BB68(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2649E0EE4;

  return sub_264B2ECEC(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_264B3BD48(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2649E0EE4;

  return sub_264B2DC14(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_264B3BE90()
{
  sub_2649DEF6C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 50, 7);
}

uint64_t sub_264B3BEF8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE10, &qword_264B58640);

  return sub_264B3A998(a1);
}

uint64_t sub_264B3BFB8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2649E0EE4;

  return sub_264B2CBC8(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_264B3C128(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE30, &qword_264B58670);

  return sub_264B3AAC8(a1);
}

uint64_t sub_264B3C1AC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649E0EE4;

  return sub_264B2AB40(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_264B3C2B8()
{
  if (v0[3] >= 4uLL)
  {

    sub_2649DEF6C(v0[4], v0[5]);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264B3C328(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CE68, &qword_264B586B0);

  return sub_264B3ADBC(a1);
}

uint64_t sub_264B3C3A4(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649E0EE4;

  return sub_264B29840(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_264B3C4B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264B3C518(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264B3C5C8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_264B3C650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_92Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_264B3C7E8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2649E0EE4;

  return sub_264B2BC4C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_264B3C930()
{
  sub_264A52680(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_264B3CA14(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CEC0, &qword_264B58728);

  return sub_264B3A840(a1);
}

unint64_t sub_264B3CA90()
{
  result = qword_27FF8CEE0;
  if (!qword_27FF8CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8CEE0);
  }

  return result;
}

uint64_t sub_264B3CAEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264B39E6C(a1, v4, v5, v6);
}

uint64_t sub_264B3CBA0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_264B21AC0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_264B3CCC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264B207F8(a1, v4, v5, v6);
}

uint64_t sub_264B3CD74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264B20CD4(a1, v4, v5, v6);
}

uint64_t sub_264B3CE28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264B21024(a1, v4, v5, v6);
}

uint64_t sub_264B3CEDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264B211D4(a1, v4, v5, v6);
}

uint64_t sub_264B3CF90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264B2137C(a1, v4, v5, v6);
}

uint64_t sub_264B3D044(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264B21524(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_5(void (*a1)(void), uint64_t a2)
{
  swift_unknownObjectRelease();
  a1(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_264B3D154(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264B216D4(a1, v4, v5, v6);
}

uint64_t sub_264B3D2CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

uint64_t sub_264B3D340()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit32MockAccessibilityStatePrimitives__currentStateNeedsAccessibility;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MockAccessibilityStatePrimitives(uint64_t a1)
{
  result = qword_27FF8CEF0;
  if (!qword_27FF8CEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264B3D43C(uint64_t a1)
{
  sub_264A361A8();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_264B3D4CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89F00, &unk_264B48E00);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - v3;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  sub_264B40A54();
  swift_endAccess();
  sub_264A35F48();
  v5 = sub_264B40AB4();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_264B3D5FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

uint64_t sub_264B3D674@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v4;
  return result;
}

uint64_t sub_264B3D6F8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

void sub_264B3D7A8(void *a1, uint64_t *a2, void *a3, const char **a4)
{
  v7 = *a2;
  v8 = *(v4 + *a2);
  *(v4 + *a2) = a1;
  v13 = a1;

  v9 = *(v4 + *a3);
  if (v9)
  {
    v10 = *(v4 + v7);
    v11 = *a4;
    v12 = v9;
    [v12 v11];
  }
}

id sub_264B3D848()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v2 = OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeLayer;
  v3 = *&v0[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeLayer];
  *&v0[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeLayer] = v1;
  v4 = v1;

  if (v4)
  {
    [v0 bounds];
    [v4 setFrame_];
  }

  result = *&v0[v2];
  if (result && ([result setLineWidth_], (result = *&v0[v2]) != 0) && (result = objc_msgSend(result, sel_setLineCap_, *MEMORY[0x277CDA780]), (v6 = *&v0[v2]) != 0) && (v7 = objc_opt_self(), v8 = v6, v9 = objc_msgSend(v7, sel_whiteColor), v10 = objc_msgSend(v9, sel_CGColor), v9, objc_msgSend(v8, sel_setStrokeColor_, v10), v8, v10, (result = *&v0[v2]) != 0) && (result = objc_msgSend(result, sel_setFillColor_, 0), *&v0[v2]))
  {
    [v0 addSublayer_];
    v11 = [objc_allocWithZone(MEMORY[0x277CD9E80]) init];
    v12 = OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterCell;
    v13 = *&v0[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterCell];
    *&v0[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterCell] = v11;
    v14 = v11;

    if (v14)
    {
      if (qword_27FF88428 != -1)
      {
        swift_once();
      }

      v16 = qword_27FFA7218;
      v17 = sub_264B41014();
      v18 = [objc_opt_self() imageNamed:v17 inBundle:v16 compatibleWithTraitCollection:0];

      if (v18)
      {
        v19 = [v18 CGImage];

        if (v19)
        {
          type metadata accessor for CGImage(0);
          v18 = sub_264B41A94();
        }

        else
        {
          v18 = 0;
        }
      }

      [v14 setContents_];

      swift_unknownObjectRelease();
    }

    result = *&v0[v12];
    if (result)
    {
      LODWORD(v15) = 1067030938;
      [result setLifetime_];
      result = *&v0[v12];
      if (result)
      {
        LODWORD(v20) = 1.0;
        [result setLifetimeRange_];
        result = *&v0[v12];
        if (result)
        {
          [result setEmissionRange_];
          result = *&v0[v12];
          if (result)
          {
            [result setVelocity_];
            result = *&v0[v12];
            if (result)
            {
              return [result setVelocityRange_];
            }
          }
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_264B3DB7C()
{
  [v0 bounds];
  Width = CGRectGetWidth(v17);
  [v0 bounds];
  Height = CGRectGetHeight(v18);
  v3 = &v0[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds];
  *v3 = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = Width;
  *(v3 + 3) = Height;
  v4 = OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeLayer;
  v5 = *&v0[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeLayer];
  if (v5)
  {
    [v5 setFrame_];
    v6 = *&v0[v4];
    if (v6)
    {
      [v6 setPath_];
    }
  }

  v7 = OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterLayer;
  v8 = *&v0[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterLayer];
  if (v8)
  {
    v9 = v8;
    [v0 bounds];
    [v9 setFrame_];

    v10 = *&v0[v7];
    if (v10)
    {
      v11 = v10;
      [v0 bounds];
      MidX = CGRectGetMidX(v19);
      [v0 bounds];
      [v11 setEmitterPosition_];

      v13 = *&v0[v7];
      if (v13)
      {
        v15 = v13;
        [v0 bounds];
        v14 = CGRectGetWidth(v21);
        [v0 bounds];
        [v15 setEmitterSize_];
      }
    }
  }
}

uint64_t sub_264B3DD88(float a1)
{
  v3 = sub_264B40EB4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264B40EE4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2649D8B90(0, &qword_27FF89DF0, 0x277D85C78);
  v13 = sub_264B41554();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = a1;
  aBlock[4] = sub_264B3F044;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2649D68F4;
  aBlock[3] = &block_descriptor_26;
  v15 = _Block_copy(aBlock);
  v16 = v1;

  sub_264B40EC4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_264A1EF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A78, &qword_264B473A0);
  sub_264AD8AC8();
  sub_264B41684();
  MEMORY[0x266748860](0, v12, v7, v15);
  _Block_release(v15);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

void sub_264B3E02C(float a1)
{
  v2 = v1;
  v4 = sub_264B40EB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264B40EE4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_264B40F04();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = *&v1[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterCell];
  if (v23)
  {
    v87 = &v83 - v22;
    v86 = v15;
    v94 = v21;
    v88 = v13;
    v89 = v10;
    v90 = v8;
    v91 = v9;
    v92 = v5;
    v24 = objc_allocWithZone(MEMORY[0x277CD9E88]);
    v25 = v23;
    v26 = [v24 init];
    v27 = OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterLayer;
    v28 = *&v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterLayer];
    *&v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterLayer] = v26;
    v29 = v26;

    if (v29)
    {
      [v29 setFrame_];
    }

    v30 = *&v2[v27];
    if (v30 && ([v30 setEmitterShape_], (v31 = *&v2[v27]) != 0) && (objc_msgSend(v31, sel_setEmitterPath_, *&v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_normalizedPath]), (v32 = *&v2[v27]) != 0) && (objc_msgSend(v32, sel_setEmitterMode_, *MEMORY[0x277CDA208]), (v33 = *&v2[v27]) != 0) && (v34 = &v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds], v35 = *&v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds], v36 = *&v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds + 8], v37 = *&v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds + 16], v38 = *&v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds + 24], v39 = v33, v97.origin.x = v35, v97.origin.y = v36, v97.size.width = v37, v97.size.height = v38, v40 = CGRectGetMidX(v97), objc_msgSend(v39, sel_setEmitterPosition_, v40, CGRectGetMidY(*v34)), v39, (v41 = *&v2[v27]) != 0) && (v42 = &v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds], v43 = *&v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds], v44 = *&v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds + 8], v45 = *&v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds + 16], v46 = *&v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds + 24], v47 = v41, v98.origin.x = v43, v98.origin.y = v44, v98.size.width = v45, v98.size.height = v46, Width = CGRectGetWidth(v98), objc_msgSend(v47, sel_setEmitterSize_, Width, CGRectGetHeight(*v42)), v47, (v49 = *&v2[v27]) != 0) && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB50, &unk_264B520F0), v50 = swift_allocObject(), *(v50 + 16) = xmmword_264B44CE0, *(v50 + 32) = v25, sub_2649D8B90(0, &qword_27FF8CF30, 0x277CD9E80), v93 = v25, v51 = v49, v52 = sub_264B41144(), , objc_msgSend(v51, sel_setEmitterCells_, v52), v51, v52, (v53 = *&v2[v27]) != 0) && (aBlock[0] = 0, v54 = v53, MEMORY[0x266749950](aBlock, 8), objc_msgSend(v54, sel_setSeed_, LODWORD(aBlock[0])), v54, *&v2[v27]))
    {
      [v2 addSublayer_];
      v55 = MEMORY[0x277D84F90];
      v96 = MEMORY[0x277D84F90];
      sub_264A2ECE8(&unk_287655DB0);
      MEMORY[0x266748430]();
      if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_264B41174();
      }

      v84 = v19;
      sub_264B41194();
      sub_264A2ED08(&unk_287655DE8);
      MEMORY[0x266748430]();
      if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_264B41174();
      }

      sub_264B41194();
      v56 = *&v2[v27];
      if (v56)
      {
        sub_2649D8B90(0, &qword_27FF8CF38, 0x277CD9E78);
        v57 = v56;
        v58 = sub_264B41144();

        [v57 setEmitterBehaviors_];
      }

      else
      {
      }

      v59 = swift_allocObject();
      *(v59 + 16) = v55;
      v60 = (v59 + 16);
      v61 = &v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds];
      MidX = CGRectGetMidX(*&v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds]);
      MidY = CGRectGetMidY(*v61);
      sub_264A2EE18(MidX, MidY);
      MEMORY[0x266748430]();
      if (*((*v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_264B41174();
      }

      sub_264B41194();
      v64 = [objc_allocWithZone(MEMORY[0x277CD9E78]) initWithType_];
      v65 = sub_264B413F4();
      v66 = sub_264B41014();
      [v64 setValue:v65 forKey:v66];

      MEMORY[0x266748430]();
      if (*((*v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_264B41174();
      }

      v85 = v4;
      sub_264B41194();
      sub_2649D8B90(0, &qword_27FF8CF38, 0x277CD9E78);

      v67 = sub_264B41144();

      v68 = v93;
      [v93 asc_279B7A0F8];

      [v68 setBeginTime_];
      *&v69 = a1 * 100.0;
      [v68 setBirthRate_];
      v70 = objc_opt_self();
      [v70 begin];
      [v70 setAnimationDuration_];
      v71 = *&v2[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeLayer];
      if (v71)
      {
        [v71 setOpacity_];
      }

      [v70 commit];
      [v70 begin];
      [v70 setAnimationDuration_];
      v73 = *&v2[v27];
      if (v73)
      {
        LODWORD(v72) = 1.0;
        [v73 setOpacity_];
      }

      [v70 commit];
      sub_2649D8B90(0, &qword_27FF89DF0, 0x277D85C78);
      v74 = sub_264B41554();
      v75 = v84;
      sub_264B40EF4();
      v76 = v87;
      sub_264B40F24();
      v86 = *(v86 + 8);
      (v86)(v75, v94);
      v77 = swift_allocObject();
      *(v77 + 16) = v59;
      *(v77 + 24) = v2;
      aBlock[4] = sub_264B3EFEC;
      aBlock[5] = v77;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2649D68F4;
      aBlock[3] = &block_descriptor_18;
      v78 = _Block_copy(aBlock);

      v79 = v2;

      v80 = v88;
      sub_264B40EC4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_264A1EF14();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A78, &qword_264B473A0);
      sub_264AD8AC8();
      v81 = v90;
      v82 = v85;
      sub_264B41684();
      MEMORY[0x266748800](v76, v80, v81, v78);
      _Block_release(v78);

      (*(v92 + 8))(v81, v82);
      (*(v89 + 8))(v80, v91);
      (v86)(v76, v94);
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_264B3EA70(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CD9E78]) initWithType_];
  v5 = sub_264B413F4();
  v6 = sub_264B41014();
  [v4 setValue:v5 forKey:v6];

  v7 = swift_beginAccess();
  MEMORY[0x266748430](v7);
  if (*((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_264B41174();
  }

  sub_264B41194();
  swift_endAccess();
  v8 = *(a2 + OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterCell);
  if (v8)
  {
    sub_2649D8B90(0, &qword_27FF8CF38, 0x277CD9E78);
    v9 = v8;

    v10 = sub_264B41144();

    [v9 setEmitterBehaviors_];
  }

  result = *(a2 + OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterLayer);
  if (result)
  {
    return [result setBirthRate_];
  }

  return result;
}

void *sub_264B3ECA4(void *a1)
{
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterLayer] = 0;
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterCell] = 0;
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeLayer] = 0;
  v3 = &v1[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_path] = 0;
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_normalizedPath] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_264B41A94();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for StrokeLayer();
  v5 = objc_msgSendSuper2(&v7, sel_initWithLayer_, v4);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

id sub_264B3EDC0(void *a1)
{
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterLayer] = 0;
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterCell] = 0;
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeLayer] = 0;
  v3 = &v1[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_path] = 0;
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_normalizedPath] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for StrokeLayer();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_264B3EEA0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StrokeLayer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_264B3EF74()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264B3EFAC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_264B3F00C()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

void sub_264B3F07C(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    v5 = *&a1[OBJC_IVAR____TtC16ScreenSharingKit24CaptureGestureRecognizer_eventHandler];
    v7 = a1;
    v6 = a4;

    v5(v6);
  }
}

id sub_264B3F160(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CaptureGestureRecognizer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_264B3F1DC()
{
  v1 = v0;
  if (*(v0 + 24))
  {

    sub_264B40994();
  }

  v2 = OBJC_IVAR____TtC16ScreenSharingKit22ServerPolicyApplicator_generationIdentifier;
  v3 = sub_264B40104();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ServerPolicyApplicator(uint64_t a1)
{
  result = qword_27FF8CF50;
  if (!qword_27FF8CF50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264B3F304(uint64_t a1)
{
  result = sub_264B40104();
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

uint64_t sub_264B3F3BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DE0, &qword_264B4BC00);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CF60, &qword_264B58958);
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v33 - v7;
  v9 = sub_264B40104();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  result = MEMORY[0x28223BE20](v12, v13);
  v17 = &v33 - v16;
  if (!*(v0 + 24))
  {
    v39 = v15;
    v40 = v5;
    v18 = OBJC_IVAR____TtC16ScreenSharingKit22ServerPolicyApplicator_generationIdentifier;
    v36 = v9;
    swift_beginAccess();
    v37 = *(v10 + 16);
    v33 = v10 + 16;
    v37(v17, v0 + v18, v9);
    v38 = v10;
    v43 = *(v0 + 16);
    sub_2649CB2F0();

    v34 = v0;
    v19 = sub_264B41554();
    v42 = v19;
    v20 = sub_264B41514();
    (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
    v35 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8CF68, &unk_264B58960);
    sub_2649CB4C8(&qword_27FF8CF70, &qword_27FF8CF68, &unk_264B58960, MEMORY[0x277CBCD90]);
    sub_2649CB384();
    sub_264B40B14();
    sub_2649CB3DC(v4);

    v21 = swift_allocObject();
    v22 = v34;
    swift_weakInit();
    v23 = v39;
    v24 = v17;
    v25 = v17;
    v26 = v36;
    v37(v39, v25, v36);
    v27 = v38;
    v28 = (*(v38 + 80) + 24) & ~*(v38 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v21;
    (*(v27 + 32))(v29 + v28, v23, v26);
    sub_2649CB4C8(&qword_27FF8CF78, &qword_27FF8CF60, &qword_264B58958, MEMORY[0x277CBCD60]);
    v30 = v40;
    v31 = v35;
    v32 = sub_264B40B54();

    (*(v41 + 8))(v31, v30);
    (*(v27 + 8))(v24, v26);
    *(v22 + 24) = v32;
  }

  return result;
}

uint64_t sub_264B3F800(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = v4;
    v8 = v5;
    sub_264B3F9A4(&v7, a3);
  }

  return result;
}

uint64_t sub_264B3F87C()
{
  v1 = v0;
  v2 = sub_264B40104();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 24))
  {

    sub_264B40994();
  }

  *(v0 + 24) = 0;

  sub_264B400F4();
  v7 = OBJC_IVAR____TtC16ScreenSharingKit22ServerPolicyApplicator_generationIdentifier;
  swift_beginAccess();
  (*(v3 + 40))(v1 + v7, v6, v2);
  return swift_endAccess();
}

void sub_264B3F9A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_264B40104();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = OBJC_IVAR____TtC16ScreenSharingKit22ServerPolicyApplicator_generationIdentifier;
  swift_beginAccess();
  (*(v6 + 16))(v9, v2 + v12, v5);
  v13 = sub_264B400C4();
  (*(v6 + 8))(v9, v5);
  if (v13)
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v14 = sub_264B40964();
    __swift_project_value_buffer(v14, qword_27FF8AE70);
    sub_2649E124C(v10, v11);
    v15 = sub_264B40944();
    v16 = sub_264B414B4();
    sub_2649E1290(v10, v11);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = v18;
      *v17 = 136446210;
      if (v11 <= 0xFB)
      {
        v25 = 0;
        v26 = 0xE000000000000000;
        sub_264B41754();
        MEMORY[0x266748390](0xD000000000000013, 0x8000000264B59720);
        v23 = v10;
        v24 = v11;
        sub_264B41864();
        v20 = v25;
        v19 = v26;
      }

      else
      {
        v19 = 0xE700000000000000;
        v20 = 0x64656D75736572;
      }

      v21 = sub_2649CC004(v20, v19, &v27);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_2649C6000, v15, v16, "Policy applicator: Applying policy result %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x266749940](v18, -1, -1);
      MEMORY[0x266749940](v17, -1, -1);
    }

    if (v11 <= 0xFB)
    {
      v22 = *(v3 + 32);
      v25 = v10;
      LOBYTE(v26) = v11;
      v22(&v25);
    }
  }
}

uint64_t sub_264B3FCA0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264B3FCD8()
{
  v1 = sub_264B40104();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264B3FD9C(uint64_t *a1)
{
  v3 = *(sub_264B40104() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_264B3F800(a1, v4, v5);
}