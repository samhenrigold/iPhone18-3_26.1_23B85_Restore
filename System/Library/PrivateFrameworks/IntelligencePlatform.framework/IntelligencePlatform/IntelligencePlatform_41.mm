void sub_1ABD96FB0()
{
  sub_1ABA7E2A8();
  v2 = v1;
  v3 = sub_1ABF23784();
  sub_1ABA7BB64();
  v21 = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BC58();
  v8 = v7 - v6;
  v9 = sub_1ABF23744();
  sub_1ABA7BB64();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  v13 = sub_1ABAA29E0();
  type metadata accessor for LogSignpost(v13);
  v14 = *v2;
  v15 = *(v2 + 16);
  v16 = sub_1ABF23764();
  sub_1ABF23794();
  v20 = sub_1ABF24704();
  if ((sub_1ABF247D4() & 1) == 0)
  {
LABEL_13:

    (*(v11 + 8))(v0, v9);
    sub_1ABA7BC1C();
    return;
  }

  if ((v15 & 1) == 0)
  {
    if (v14)
    {
LABEL_9:

      sub_1ABF237C4();

      if ((*(v21 + 88))(v8, v3) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v21 + 8))(v8, v3);
        v17 = "";
      }

      sub_1ABA8179C();
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v16, v20, v19, v14, v17, v18, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v14 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v14 & 0xFFFFF800) != 0xD800)
  {
    if (v14 >> 16 <= 0x10)
    {
      v14 = &v22;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_1ABD97210@<X0>(void *a3@<X8>)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = *(v3 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  v8 = sub_1ABF23BD4();
  v14[0] = 0;
  v9 = [v7 requestAssertionForViewName:v8 error:v14];

  if (v9)
  {
    sub_1ABA7D384(OBJC_IVAR___GDSwiftViewService_databaseCache);
    v10 = sub_1ABA7D3C4();
    result = v5(v10);
    if (v4)
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      *a3 = 0x735F797469746E65;
      a3[1] = 0xEF68706172676275;
      a3[2] = v9;
      a3[3] = result;
      a3[4] = v12;
    }
  }

  else
  {
    v13 = v14[0];
    sub_1ABF21BE4();

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1ABD9735C@<X0>(void *a3@<X8>)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = *(v3 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  v8 = sub_1ABF23BD4();
  v14[0] = 0;
  v9 = [v7 requestAssertionForViewName:v8 error:v14];

  if (v9)
  {
    sub_1ABA7D384(OBJC_IVAR___GDSwiftViewService_databaseCache);
    v10 = sub_1ABA7D3C4();
    result = v5(v10);
    if (v4)
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      *a3 = 0xD000000000000010;
      a3[1] = 0x80000001ABF8F290;
      a3[2] = v9;
      a3[3] = result;
      a3[4] = v12;
    }
  }

  else
  {
    v13 = v14[0];
    sub_1ABF21BE4();

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1ABD97558(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1ABA7BBB0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1ABD975DC()
{
  result = qword_1ED86BA18;
  if (!qword_1ED86BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86BA18);
  }

  return result;
}

unint64_t sub_1ABD97670()
{
  result = qword_1EB4D0170;
  if (!qword_1EB4D0170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0170);
  }

  return result;
}

uint64_t sub_1ABD97720(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_16;
  }

  result = sub_1ABAC9278((v11 + 32 + 16 * a2), v14 - a2, &v12[2 * a3]);
  v15 = *(v11 + 16);
  v16 = __OFADD__(v15, v13);
  v17 = v15 + v13;
  if (v16)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v11 + 16) = v17;
LABEL_7:
  if (a3 < 1)
  {
  }

  else
  {
    *v12 = a4;
    v12[1] = a5;
    if (v12 + 2 < &v12[2 * a3])
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1ABD97940(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1ABA7BBB0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1ABD97998(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ABD979EC()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1ABA978EC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

unint64_t sub_1ABD97A30()
{
  result = qword_1EB4D9568;
  if (!qword_1EB4D9568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9568);
  }

  return result;
}

uint64_t sub_1ABD97A84(uint64_t a1, uint64_t a2)
{
  Context = type metadata accessor for QueryContext(0);
  (*(*(Context - 8) + 32))(a2, a1, Context);
  return a2;
}

uint64_t KTSContextRepresentationProtocol.description.getter(uint64_t a1, uint64_t a2)
{
  sub_1ABF24AB4();
  sub_1ABAA119C();
  MEMORY[0x1AC5A9410]();
  v5 = (*(a2 + 40))(a1, a2);
  v6 = type metadata accessor for CustomGraphPerson(0);
  v7 = MEMORY[0x1AC5A9750](v5, v6);
  sub_1ABA8B73C();
  MEMORY[0x1AC5A9410](v7, v2);

  sub_1ABAA119C();
  MEMORY[0x1AC5A9410](0xD000000000000010);
  v8 = sub_1ABA8C2E0();
  v9(v8);
  v10 = MEMORY[0x1AC5A9750]();
  sub_1ABA8B73C();
  MEMORY[0x1AC5A9410](v10, v2);

  sub_1ABAA119C();
  MEMORY[0x1AC5A9410]();
  v11 = sub_1ABA8C2E0();
  v13 = v12(v11);
  v14 = type metadata accessor for CustomGraphActivityEvent(0);
  MEMORY[0x1AC5A9750](v13, v14);
  sub_1ABAB5160();
  sub_1ABD9CD7C();

  MEMORY[0x1AC5A9410](0x656C706F65700A2CLL, 0xE90000000000003ALL);
  v15 = sub_1ABA8C2E0();
  v16(v15);
  MEMORY[0x1AC5A9750]();
  sub_1ABAB5160();
  sub_1ABD9CD7C();

  MEMORY[0x1AC5A9410](0x736563616C700A2CLL, 0xE90000000000003ALL);
  v17 = sub_1ABA8C2E0();
  v18(v17);
  MEMORY[0x1AC5A9750]();
  sub_1ABAB5160();
  sub_1ABD9CD7C();

  MEMORY[0x1AC5A9410](0x6976697463610A2CLL, 0xED00003A73656974);
  v19 = sub_1ABA8C2E0();
  v20(v19);
  MEMORY[0x1AC5A9750]();
  sub_1ABAB5160();
  sub_1ABD9CD7C();

  sub_1ABAA119C();
  MEMORY[0x1AC5A9410]();
  v21 = sub_1ABA8C2E0();
  v22(v21);
  v23 = MEMORY[0x1AC5A9750]();
  sub_1ABA8B73C();
  MEMORY[0x1AC5A9410](v23, v2);

  sub_1ABAA119C();
  MEMORY[0x1AC5A9410]();
  v24 = sub_1ABA8C2E0();
  v25(v24);
  v26 = MEMORY[0x1AC5A9750]();
  sub_1ABA8B73C();
  MEMORY[0x1AC5A9410](v26, v2);

  sub_1ABAA119C();
  MEMORY[0x1AC5A9410]();
  v27 = sub_1ABA8C2E0();
  v28(v27);
  MEMORY[0x1AC5A9750]();
  sub_1ABA8BD30();
  MEMORY[0x1AC5A9410](0, a1);

  sub_1ABA83AA4();
  return 0;
}

uint64_t sub_1ABD9809C()
{
  sub_1ABA8BB34();
  v2 = sub_1ABAB6654();
  v4 = v4 && v0 == v3;
  if (v4 || (sub_1ABA8A940(v2, v3) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = sub_1ABAB67EC();
    v8 = v4 && v0 == v7;
    if (v8 || (sub_1ABA8A940(v6, 0xEA00000000007478) & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0xD000000000000012 && 0x80000001ABF8F4A0 == v0)
    {

      return 2;
    }

    else
    {
      v10 = sub_1ABA8A940(0xD000000000000012, 0x80000001ABF8F4A0);

      if (v10)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABD98174(char a1)
{
  if (!a1)
  {
    return sub_1ABAA13D0();
  }

  if (a1 == 1)
  {
    return 0x65746E6F4373746BLL;
  }

  return 0xD000000000000012;
}

uint64_t sub_1ABD981F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABD9809C();
  *a1 = result;
  return result;
}

uint64_t sub_1ABD98218(uint64_t a1)
{
  v2 = sub_1ABD9BF44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD98254(uint64_t a1)
{
  v2 = sub_1ABD9BF44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t KTSContextRepresentation.__allocating_init(originContext:ktsContext:destinationContext:graphLifeEventContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ABA9803C();
  v8 = swift_allocObject();
  KTSContextRepresentation.init(originContext:ktsContext:destinationContext:graphLifeEventContext:)(a1, a2, a3, a4);
  return v8;
}

uint64_t KTSContextRepresentation.__allocating_init(from:)(uint64_t a1)
{
  sub_1ABA9803C();
  v2 = swift_allocObject();
  KTSContextRepresentation.init(from:)(a1, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  return v2;
}

void KTSContextRepresentation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v14 = v13;
  sub_1ABAD219C(&qword_1EB4D9578, &unk_1ABF60FA8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABAA29F0();
  sub_1ABA93E20(v14, v14[3]);
  v16 = sub_1ABD9BF44();
  sub_1ABAA0AE8(&type metadata for KTSContextRepresentation.CodingKeys, v17, v16);
  if (v11)
  {
    sub_1ABA925A4(v12, &qword_1EB4D9570, &qword_1ABF60F98);
    v22 = type metadata accessor for KTSContextRepresentation();
    sub_1ABA8B934(v22);
  }

  else
  {
    v18 = sub_1ABAD219C(&qword_1EB4D1730, &qword_1ABF338C0);
    v25 = 0;
    sub_1ABA7ADF0();
    sub_1ABD9BFBC(v19, v20, v21, MEMORY[0x1E69E6330]);
    sub_1ABAA35F4(v18, &v25);
    v10[2] = a10;
    sub_1ABA93738(1);
    sub_1ABF24E64();
    v10[3] = a10;
    sub_1ABA93738(2);
    sub_1ABF24E64();
    v23 = sub_1ABA80ECC();
    v24(v23);
    v10[4] = a10;
  }

  sub_1ABA84B54(v14);
  sub_1ABA7BC90();
}

uint64_t sub_1ABD985BC()
{
  sub_1ABAA04AC();
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD000000000000023, 0x80000001ABF8F3D0);
  v1 = type metadata accessor for CustomGraphActivityEvent(0);

  MEMORY[0x1AC5A9750](v2, v1);
  sub_1ABA94BE8();
  sub_1ABA95564();

  sub_1ABAABD10();

  MEMORY[0x1AC5A9750](v3, v1);
  sub_1ABA94BE8();
  sub_1ABA95564();

  sub_1ABA8C7D8();

  MEMORY[0x1AC5A9750](v4, v1);
  sub_1ABA8BD30();
  MEMORY[0x1AC5A9410](v1, v0);

  sub_1ABA83AA4();
  return v6;
}

uint64_t KTSContextRepresentation.__deallocating_deinit()
{
  KTSContextRepresentation.deinit();
  sub_1ABA9803C();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABD98884@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = KTSContextRepresentation.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ABD988D4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  sub_1ABD9BDF4(v1 + 40, &v11);
  v5 = v12;
  sub_1ABA925A4(&v11, &qword_1EB4D9570, &qword_1ABF60F98);
  if (!v5)
  {
    v7 = type metadata accessor for ViewService();
    v8 = static ViewService.clientService.getter(v7);
    v9 = sub_1ABAD219C(&qword_1EB4D6388, &unk_1ABF50490);
    swift_allocObject();
    result = CustomLifeEventContext.init<>(viewService:)(v8);
    if (v2)
    {
      return result;
    }

    v10 = result;
    v12 = v9;
    v13 = sub_1ABC79C44();
    *&v11 = v10;
    swift_beginAccess();
    sub_1ABD9BE64(&v11, v3 + 40);
    swift_endAccess();
  }

  result = sub_1ABD9BDF4(v3 + 40, &v11);
  if (v12)
  {
    return sub_1ABA946C0(&v11, a1);
  }

  __break(1u);
  return result;
}

void sub_1ABD98A30()
{
  sub_1ABA7BCA8();
  sub_1ABAA05D8(v2);
  v3 = sub_1ABAD219C(&qword_1EB4D6200, &unk_1ABF6CC00);
  sub_1ABA7AB80(v3);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - v5;
  v7 = type metadata accessor for CustomGraphActivityEvent(0);
  sub_1ABA7BB64();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA94BCC();
  v11 = *(v1 + 24);
  v42 = *(v11 + 16);
  if (!v42)
  {
LABEL_18:
    sub_1ABA7BC90();
    return;
  }

  v12 = *(v7 + 40);
  sub_1ABA7AB74();
  v14 = v11 + v13;

  v15 = 0;
  v45 = v0;
  v46 = v7;
  v40 = v12;
  v41 = v9;
  v44 = v11;
  v39 = v14;
  while (2)
  {
    if (v15 < *(v11 + 16))
    {
      v16 = v15;
      sub_1ABC47DD4(v14 + *(v9 + 72) * v15, v0);
      v17 = 0;
      v43 = v16 + 1;
      v18 = *(v0 + v12);
      v19 = *(v18 + 16);
      v47 = v18;
      v48 = v19;
      for (i = (v18 + 64); ; i += 40)
      {
        sub_1ABAA07AC();
        if (v21)
        {
          break;
        }

        sub_1ABA978F8();
        if (v22)
        {
          __break(1u);
          goto LABEL_20;
        }

        v23 = v6;
        v24 = *(i - 1);
        v25 = *i;

        sub_1ABAB5D54();
        v26();
        if (v9)
        {

LABEL_17:
          sub_1ABC71AB4(v45);
          goto LABEL_18;
        }

        v49 = v17;
        v50 = 0;
        v28 = v53;
        v27 = v54;
        v29 = sub_1ABA93E20(v52, v53);
        if (v25)
        {

          sub_1ABA84B54(v52);
          v6 = v23;
          v30 = sub_1ABAB11B0();
          sub_1ABA7B9B4(v30, v31, 1, v46);
        }

        else
        {
          v32 = v29;
          v51 = v24;
          v33 = sub_1ABAD219C(&qword_1EB4D66C8, &qword_1ABF50BA0);
          v6 = v23;
          v9 = v50;
          TypedEntityIdentifier.graphObject<A>(from:)(v32, v33, v28, v27, v34, v35, v36, v37);

          if (v9)
          {

            sub_1ABA84B54(v52);
            goto LABEL_17;
          }

          sub_1ABA84B54(v52);
          sub_1ABA7E1E0(v23, 1, v46);
        }

        sub_1ABA925A4(v6, &qword_1EB4D6200, &unk_1ABF6CC00);
        v17 = v49 + 1;
      }

      v0 = v45;
      sub_1ABC71AB4(v45);
      sub_1ABD7E7F8(MEMORY[0x1E69E7CC0]);
      v15 = v43;
      v12 = v40;
      v9 = v41;
      v11 = v44;
      v14 = v39;
      if (v43 != v42)
      {
        continue;
      }

      goto LABEL_18;
    }

    break;
  }

LABEL_20:
  __break(1u);
}

void sub_1ABD98D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  sub_1ABAA05D8(v13);
  v14 = sub_1ABAD219C(&qword_1EB4D2920, &qword_1ABF6CB70);
  sub_1ABA7AB80(v14);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1ABA81A3C();
  v54 = type metadata accessor for CustomGraphPerson(v16);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7C068();
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA96A84(v19, v20, v21, v22, v23, v24, v25, v26, v46);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA94BCC();
  v28 = *(v10 + 16);
  sub_1ABA7FD2C(MEMORY[0x1E69E7CC0]);
  v49 = v30;
  if (!v30)
  {
LABEL_21:
    sub_1ABD9CDA4(v29);
    sub_1ABA7BC90();
    return;
  }

  sub_1ABA7AB74();
  v32 = v28 + v31;

  sub_1ABA902C0();
  while (2)
  {
    sub_1ABA97CC4();
    if (!v33)
    {
      sub_1ABA90D88();
      sub_1ABAA6170();
      v53 = MEMORY[0x1E69E7CC0];
LABEL_5:
      for (v32 += v12 << 6; ; v32 += 64)
      {
        sub_1ABAA07AC();
        if (v34)
        {
          break;
        }

        sub_1ABA978F8();
        if (v33)
        {
          __break(1u);
          goto LABEL_23;
        }

        sub_1ABAA3D70();

        sub_1ABAB5D54();
        v35();
        if (v28)
        {
          sub_1ABA8CD50();

          sub_1ABC71AB4(v52);

          goto LABEL_21;
        }

        sub_1ABAB5358();
        if (v11)
        {

          sub_1ABAA2D74();
        }

        else
        {
          v36 = sub_1ABAD219C(&qword_1EB4D6F88, &qword_1ABF50FB0);
          sub_1ABAA4FA4(v36, v37, v38, v39, v40, v41, v42, v43);

          sub_1ABA84B54(v56);
          v44 = sub_1ABAB11B0();
          if (sub_1ABA7E1E0(v44, v45, v54) != 1)
          {
            sub_1ABD9BEDC(v11, v48, type metadata accessor for CustomGraphPerson);
            sub_1ABAA092C();
            v12 = v55;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABA7BEF0();
              sub_1ABADBB08();
            }

            sub_1ABAA1D1C();
            if (v33)
            {
              sub_1ABA96DC0();
              sub_1ABADBB08();
            }

            sub_1ABA7C52C();
            goto LABEL_5;
          }
        }

        sub_1ABA925A4(v11, &qword_1EB4D2920, &qword_1ABF6CB70);
        v12 = v55 + 1;
      }

      sub_1ABC71AB4(v52);
      sub_1ABD7E724(v53);
      v28 = v51;
      v32 = v47;
      if (v50 != v49)
      {
        continue;
      }

      v29 = a10;
      goto LABEL_21;
    }

    break;
  }

LABEL_23:
  __break(1u);
}

void sub_1ABD99120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  sub_1ABA9703C(v15);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7BC58();
  sub_1ABA964A4();
  v17 = *(v10 + 16);
  sub_1ABA7FD2C(MEMORY[0x1E69E7CC0]);
  v38 = v20;
  if (!v20)
  {
LABEL_23:
    sub_1ABA82B1C(v19);
    sub_1ABA7BC90();
    return;
  }

  sub_1ABAA4A94(v18);
  v40 = v17;
  v41 = v11;
  while (2)
  {
    sub_1ABA97CC4();
    if (!v21)
    {
      sub_1ABAA23A0();
      sub_1ABA995C4();
      v42 = MEMORY[0x1E69E7CC0];
      v37 = v22;
LABEL_5:
      v23 = v22 + (v12 << 6);
      while (v43 != v12)
      {
        sub_1ABD9CDB4();
        if (v21)
        {
          __break(1u);
          goto LABEL_25;
        }

        sub_1ABA828C0();

        sub_1ABA973AC();
        v24();
        if (v17)
        {
          sub_1ABD9CDC4();

          sub_1ABC71AB4(v41);

          goto LABEL_23;
        }

        v25 = sub_1ABAA1814();
        if (v14)
        {

          sub_1ABA82EE8();
        }

        else
        {
          v46 = v13;
          v13 = v25;
          v26 = sub_1ABAD219C(&qword_1EB4D6640, &qword_1ABF60FA0);
          sub_1ABAA31FC(v26, v27, v28, v29, v30, v31, v32, v33);

          sub_1ABA84B54(v45);
        }

        sub_1ABA8C5E4();
        v12 = v44;
        if (sub_1ABC7830C(&v46) != 1)
        {
          memcpy(v45, v47, sizeof(v45));
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1ABA7BEF0();
            sub_1ABADBBE0();
            v42 = v35;
          }

          sub_1ABAA599C();
          if (v21)
          {
            sub_1ABA96DC0();
            sub_1ABADBBE0();
            v42 = v36;
          }

          sub_1ABA88730();
          sub_1ABAA39E4();
          v22 = v37;
          goto LABEL_5;
        }

        memcpy(v45, v47, sizeof(v45));
        sub_1ABA925A4(v45, &qword_1EB4D6348, &qword_1ABF50318);
        v23 += 64;
        v12 = v44 + 1;
      }

      sub_1ABC71AB4(v41);
      sub_1ABD7E750(v42);
      v17 = v40;
      if (v39 != v38)
      {
        continue;
      }

      v19 = a10;
      goto LABEL_23;
    }

    break;
  }

LABEL_25:
  __break(1u);
}

void sub_1ABD99418()
{
  sub_1ABA7BCA8();
  v36 = v3;
  v4 = sub_1ABAD219C(&qword_1EB4D6200, &unk_1ABF6CC00);
  sub_1ABA7AB80(v4);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1ABA81A3C();
  v35 = type metadata accessor for CustomGraphActivityEvent(v6);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7C068();
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABAA26B0(v9, v10, v11, v12, v13, v14, v15, v16, v32);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA9610C();
  v18 = *(v0 + 16);
  if (!*(v18 + 16))
  {
LABEL_18:
    sub_1ABAB6974();
    sub_1ABA7BC90();
    return;
  }

  sub_1ABAA41A0();
  v34 = v18;
  while (*(v18 + 16))
  {
    sub_1ABAA0F64();
    sub_1ABA8CB88();
    v19 = v1;
    if (v1)
    {
    }

    v1 = 0;
    v36(v37);
    sub_1ABAB5540();
    if (v19)
    {
      sub_1ABC71AB4(v2);
      sub_1ABA975E0();
    }

    else
    {
      v20 = sub_1ABAD219C(&qword_1EB4D66C8, &qword_1ABF50BA0);
      sub_1ABAA5440(v20, v21, v22, v23, v24, v25, v26, v27);
      sub_1ABC71AB4(v2);
      sub_1ABA84B54(v37);
      v28 = sub_1ABAB11B0();
      v18 = v34;
      if (sub_1ABA7E1E0(v28, v29, v35) != 1)
      {
        sub_1ABD9BEDC(0, v33, type metadata accessor for CustomGraphActivityEvent);
        sub_1ABAA0C04();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7BEF0();
          sub_1ABADBCB0();
        }

        sub_1ABAA599C();
        if (v31)
        {
          sub_1ABA96DC0();
          sub_1ABADBCB0();
        }

        sub_1ABA8EB34();
        goto LABEL_10;
      }
    }

    sub_1ABA925A4(v19, &qword_1EB4D6200, &unk_1ABF6CC00);
LABEL_10:
    sub_1ABAB2B9C();
    if (v30)
    {

      goto LABEL_18;
    }
  }

  __break(1u);
}

void sub_1ABD9971C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  sub_1ABAA05D8(v13);
  v14 = sub_1ABAD219C(&qword_1EB4D2920, &qword_1ABF6CB70);
  sub_1ABA7AB80(v14);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1ABA81A3C();
  v54 = type metadata accessor for CustomGraphPerson(v16);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7C068();
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA96A84(v19, v20, v21, v22, v23, v24, v25, v26, v46);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA94BCC();
  v28 = *(v10 + 24);
  sub_1ABA7FD2C(MEMORY[0x1E69E7CC0]);
  v49 = v30;
  if (!v30)
  {
LABEL_21:
    sub_1ABD9CDA4(v29);
    sub_1ABA7BC90();
    return;
  }

  sub_1ABA7AB74();
  v32 = v28 + v31;

  sub_1ABA902C0();
  while (2)
  {
    sub_1ABA97CC4();
    if (!v33)
    {
      sub_1ABA90D88();
      sub_1ABAA6170();
      v53 = MEMORY[0x1E69E7CC0];
LABEL_5:
      for (v32 += v12 << 6; ; v32 += 64)
      {
        sub_1ABAA07AC();
        if (v34)
        {
          break;
        }

        sub_1ABA978F8();
        if (v33)
        {
          __break(1u);
          goto LABEL_23;
        }

        sub_1ABAA3D70();

        sub_1ABAB5D54();
        v35();
        if (v28)
        {
          sub_1ABA8CD50();

          sub_1ABC71AB4(v52);

          goto LABEL_21;
        }

        sub_1ABAB5358();
        if (v11)
        {

          sub_1ABAA2D74();
        }

        else
        {
          v36 = sub_1ABAD219C(&qword_1EB4D6F88, &qword_1ABF50FB0);
          sub_1ABAA4FA4(v36, v37, v38, v39, v40, v41, v42, v43);

          sub_1ABA84B54(v56);
          v44 = sub_1ABAB11B0();
          if (sub_1ABA7E1E0(v44, v45, v54) != 1)
          {
            sub_1ABD9BEDC(v11, v48, type metadata accessor for CustomGraphPerson);
            sub_1ABAA092C();
            v12 = v55;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABA7BEF0();
              sub_1ABADBB08();
            }

            sub_1ABAA1D1C();
            if (v33)
            {
              sub_1ABA96DC0();
              sub_1ABADBB08();
            }

            sub_1ABA7C52C();
            goto LABEL_5;
          }
        }

        sub_1ABA925A4(v11, &qword_1EB4D2920, &qword_1ABF6CB70);
        v12 = v55 + 1;
      }

      sub_1ABC71AB4(v52);
      sub_1ABD7E724(v53);
      v28 = v51;
      v32 = v47;
      if (v50 != v49)
      {
        continue;
      }

      v29 = a10;
      goto LABEL_21;
    }

    break;
  }

LABEL_23:
  __break(1u);
}

void sub_1ABD99AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  sub_1ABA9703C(v15);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7BC58();
  sub_1ABA964A4();
  v17 = *(v10 + 24);
  sub_1ABA7FD2C(MEMORY[0x1E69E7CC0]);
  v38 = v20;
  if (!v20)
  {
LABEL_23:
    sub_1ABA82B1C(v19);
    sub_1ABA7BC90();
    return;
  }

  sub_1ABAA4A94(v18);
  v40 = v17;
  v41 = v11;
  while (2)
  {
    sub_1ABA97CC4();
    if (!v21)
    {
      sub_1ABAA23A0();
      sub_1ABA995C4();
      v42 = MEMORY[0x1E69E7CC0];
      v37 = v22;
LABEL_5:
      v23 = v22 + (v12 << 6);
      while (v43 != v12)
      {
        sub_1ABD9CDB4();
        if (v21)
        {
          __break(1u);
          goto LABEL_25;
        }

        sub_1ABA828C0();

        sub_1ABA973AC();
        v24();
        if (v17)
        {
          sub_1ABD9CDC4();

          sub_1ABC71AB4(v41);

          goto LABEL_23;
        }

        v25 = sub_1ABAA1814();
        if (v14)
        {

          sub_1ABA82EE8();
        }

        else
        {
          v46 = v13;
          v13 = v25;
          v26 = sub_1ABAD219C(&qword_1EB4D6640, &qword_1ABF60FA0);
          sub_1ABAA31FC(v26, v27, v28, v29, v30, v31, v32, v33);

          sub_1ABA84B54(v45);
        }

        sub_1ABA8C5E4();
        v12 = v44;
        if (sub_1ABC7830C(&v46) != 1)
        {
          memcpy(v45, v47, sizeof(v45));
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1ABA7BEF0();
            sub_1ABADBBE0();
            v42 = v35;
          }

          sub_1ABAA599C();
          if (v21)
          {
            sub_1ABA96DC0();
            sub_1ABADBBE0();
            v42 = v36;
          }

          sub_1ABA88730();
          sub_1ABAA39E4();
          v22 = v37;
          goto LABEL_5;
        }

        memcpy(v45, v47, sizeof(v45));
        sub_1ABA925A4(v45, &qword_1EB4D6348, &qword_1ABF50318);
        v23 += 64;
        v12 = v44 + 1;
      }

      sub_1ABC71AB4(v41);
      sub_1ABD7E750(v42);
      v17 = v40;
      if (v39 != v38)
      {
        continue;
      }

      v19 = a10;
      goto LABEL_23;
    }

    break;
  }

LABEL_25:
  __break(1u);
}

void sub_1ABD99DEC()
{
  sub_1ABA7BCA8();
  v36 = v3;
  v4 = sub_1ABAD219C(&qword_1EB4D6200, &unk_1ABF6CC00);
  sub_1ABA7AB80(v4);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1ABA81A3C();
  v35 = type metadata accessor for CustomGraphActivityEvent(v6);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7C068();
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABAA26B0(v9, v10, v11, v12, v13, v14, v15, v16, v32);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA9610C();
  v18 = *(v0 + 24);
  if (!*(v18 + 16))
  {
LABEL_18:
    sub_1ABAB6974();
    sub_1ABA7BC90();
    return;
  }

  sub_1ABAA41A0();
  v34 = v18;
  while (*(v18 + 16))
  {
    sub_1ABAA0F64();
    sub_1ABA8CB88();
    v19 = v1;
    if (v1)
    {
    }

    v1 = 0;
    v36(v37);
    sub_1ABAB5540();
    if (v19)
    {
      sub_1ABC71AB4(v2);
      sub_1ABA975E0();
    }

    else
    {
      v20 = sub_1ABAD219C(&qword_1EB4D66C8, &qword_1ABF50BA0);
      sub_1ABAA5440(v20, v21, v22, v23, v24, v25, v26, v27);
      sub_1ABC71AB4(v2);
      sub_1ABA84B54(v37);
      v28 = sub_1ABAB11B0();
      v18 = v34;
      if (sub_1ABA7E1E0(v28, v29, v35) != 1)
      {
        sub_1ABD9BEDC(0, v33, type metadata accessor for CustomGraphActivityEvent);
        sub_1ABAA0C04();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7BEF0();
          sub_1ABADBCB0();
        }

        sub_1ABAA599C();
        if (v31)
        {
          sub_1ABA96DC0();
          sub_1ABADBCB0();
        }

        sub_1ABA8EB34();
        goto LABEL_10;
      }
    }

    sub_1ABA925A4(v19, &qword_1EB4D6200, &unk_1ABF6CC00);
LABEL_10:
    sub_1ABAB2B9C();
    if (v30)
    {

      goto LABEL_18;
    }
  }

  __break(1u);
}

void sub_1ABD9A0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  sub_1ABAA05D8(v13);
  v14 = sub_1ABAD219C(&qword_1EB4D2920, &qword_1ABF6CB70);
  sub_1ABA7AB80(v14);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1ABA81A3C();
  v54 = type metadata accessor for CustomGraphPerson(v16);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7C068();
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA96A84(v19, v20, v21, v22, v23, v24, v25, v26, v46);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA94BCC();
  v28 = *(v10 + 32);
  sub_1ABA7FD2C(MEMORY[0x1E69E7CC0]);
  v49 = v30;
  if (!v30)
  {
LABEL_21:
    sub_1ABD9CDA4(v29);
    sub_1ABA7BC90();
    return;
  }

  sub_1ABA7AB74();
  v32 = v28 + v31;

  sub_1ABA902C0();
  while (2)
  {
    sub_1ABA97CC4();
    if (!v33)
    {
      sub_1ABA90D88();
      sub_1ABAA6170();
      v53 = MEMORY[0x1E69E7CC0];
LABEL_5:
      for (v32 += v12 << 6; ; v32 += 64)
      {
        sub_1ABAA07AC();
        if (v34)
        {
          break;
        }

        sub_1ABA978F8();
        if (v33)
        {
          __break(1u);
          goto LABEL_23;
        }

        sub_1ABAA3D70();

        sub_1ABAB5D54();
        v35();
        if (v28)
        {
          sub_1ABA8CD50();

          sub_1ABC71AB4(v52);

          goto LABEL_21;
        }

        sub_1ABAB5358();
        if (v11)
        {

          sub_1ABAA2D74();
        }

        else
        {
          v36 = sub_1ABAD219C(&qword_1EB4D6F88, &qword_1ABF50FB0);
          sub_1ABAA4FA4(v36, v37, v38, v39, v40, v41, v42, v43);

          sub_1ABA84B54(v56);
          v44 = sub_1ABAB11B0();
          if (sub_1ABA7E1E0(v44, v45, v54) != 1)
          {
            sub_1ABD9BEDC(v11, v48, type metadata accessor for CustomGraphPerson);
            sub_1ABAA092C();
            v12 = v55;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABA7BEF0();
              sub_1ABADBB08();
            }

            sub_1ABAA1D1C();
            if (v33)
            {
              sub_1ABA96DC0();
              sub_1ABADBB08();
            }

            sub_1ABA7C52C();
            goto LABEL_5;
          }
        }

        sub_1ABA925A4(v11, &qword_1EB4D2920, &qword_1ABF6CB70);
        v12 = v55 + 1;
      }

      sub_1ABC71AB4(v52);
      sub_1ABD7E724(v53);
      v28 = v51;
      v32 = v47;
      if (v50 != v49)
      {
        continue;
      }

      v29 = a10;
      goto LABEL_21;
    }

    break;
  }

LABEL_23:
  __break(1u);
}

void sub_1ABD9A4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  sub_1ABA9703C(v15);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7BC58();
  sub_1ABA964A4();
  v17 = *(v10 + 32);
  sub_1ABA7FD2C(MEMORY[0x1E69E7CC0]);
  v38 = v20;
  if (!v20)
  {
LABEL_23:
    sub_1ABA82B1C(v19);
    sub_1ABA7BC90();
    return;
  }

  sub_1ABAA4A94(v18);
  v40 = v17;
  v41 = v11;
  while (2)
  {
    sub_1ABA97CC4();
    if (!v21)
    {
      sub_1ABAA23A0();
      sub_1ABA995C4();
      v42 = MEMORY[0x1E69E7CC0];
      v37 = v22;
LABEL_5:
      v23 = v22 + (v12 << 6);
      while (v43 != v12)
      {
        sub_1ABD9CDB4();
        if (v21)
        {
          __break(1u);
          goto LABEL_25;
        }

        sub_1ABA828C0();

        sub_1ABA973AC();
        v24();
        if (v17)
        {
          sub_1ABD9CDC4();

          sub_1ABC71AB4(v41);

          goto LABEL_23;
        }

        v25 = sub_1ABAA1814();
        if (v14)
        {

          sub_1ABA82EE8();
        }

        else
        {
          v46 = v13;
          v13 = v25;
          v26 = sub_1ABAD219C(&qword_1EB4D6640, &qword_1ABF60FA0);
          sub_1ABAA31FC(v26, v27, v28, v29, v30, v31, v32, v33);

          sub_1ABA84B54(v45);
        }

        sub_1ABA8C5E4();
        v12 = v44;
        if (sub_1ABC7830C(&v46) != 1)
        {
          memcpy(v45, v47, sizeof(v45));
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1ABA7BEF0();
            sub_1ABADBBE0();
            v42 = v35;
          }

          sub_1ABAA599C();
          if (v21)
          {
            sub_1ABA96DC0();
            sub_1ABADBBE0();
            v42 = v36;
          }

          sub_1ABA88730();
          sub_1ABAA39E4();
          v22 = v37;
          goto LABEL_5;
        }

        memcpy(v45, v47, sizeof(v45));
        sub_1ABA925A4(v45, &qword_1EB4D6348, &qword_1ABF50318);
        v23 += 64;
        v12 = v44 + 1;
      }

      sub_1ABC71AB4(v41);
      sub_1ABD7E750(v42);
      v17 = v40;
      if (v39 != v38)
      {
        continue;
      }

      v19 = a10;
      goto LABEL_23;
    }

    break;
  }

LABEL_25:
  __break(1u);
}

void sub_1ABD9A7C0()
{
  sub_1ABA7BCA8();
  v36 = v3;
  v4 = sub_1ABAD219C(&qword_1EB4D6200, &unk_1ABF6CC00);
  sub_1ABA7AB80(v4);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1ABA81A3C();
  v35 = type metadata accessor for CustomGraphActivityEvent(v6);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7C068();
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABAA26B0(v9, v10, v11, v12, v13, v14, v15, v16, v32);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA9610C();
  v18 = *(v0 + 32);
  if (!*(v18 + 16))
  {
LABEL_18:
    sub_1ABAB6974();
    sub_1ABA7BC90();
    return;
  }

  sub_1ABAA41A0();
  v34 = v18;
  while (*(v18 + 16))
  {
    sub_1ABAA0F64();
    sub_1ABA8CB88();
    v19 = v1;
    if (v1)
    {
    }

    v1 = 0;
    v36(v37);
    sub_1ABAB5540();
    if (v19)
    {
      sub_1ABC71AB4(v2);
      sub_1ABA975E0();
    }

    else
    {
      v20 = sub_1ABAD219C(&qword_1EB4D66C8, &qword_1ABF50BA0);
      sub_1ABAA5440(v20, v21, v22, v23, v24, v25, v26, v27);
      sub_1ABC71AB4(v2);
      sub_1ABA84B54(v37);
      v28 = sub_1ABAB11B0();
      v18 = v34;
      if (sub_1ABA7E1E0(v28, v29, v35) != 1)
      {
        sub_1ABD9BEDC(0, v33, type metadata accessor for CustomGraphActivityEvent);
        sub_1ABAA0C04();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7BEF0();
          sub_1ABADBCB0();
        }

        sub_1ABAA599C();
        if (v31)
        {
          sub_1ABA96DC0();
          sub_1ABADBCB0();
        }

        sub_1ABA8EB34();
        goto LABEL_10;
      }
    }

    sub_1ABA925A4(v19, &qword_1EB4D6200, &unk_1ABF6CC00);
LABEL_10:
    sub_1ABAB2B9C();
    if (v30)
    {

      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_1ABD9AAA8()
{
  sub_1ABA8BB34();
  v2 = sub_1ABAB6654();
  v4 = v4 && v0 == v3;
  if (v4 || (sub_1ABA8A940(v2, v3) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = sub_1ABAB67EC();
    v8 = v4 && v0 == v7;
    if (v8 || (sub_1ABA8A940(v6, v7) & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0xD000000000000013 && 0x80000001ABF8F530 == v0)
    {

      return 2;
    }

    else
    {
      v10 = sub_1ABA8A940(0xD000000000000013, 0x80000001ABF8F530);

      if (v10)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABD9AB7C(char a1)
{
  if (!a1)
  {
    return sub_1ABAA13D0();
  }

  if (a1 == 1)
  {
    return 0x65746E6F4373746BLL;
  }

  return 0xD000000000000013;
}

uint64_t sub_1ABD9ABF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABD9AC48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABD9AAA8();
  *a1 = result;
  return result;
}

uint64_t sub_1ABD9AC70(uint64_t a1)
{
  v2 = sub_1ABD9C05C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD9ACAC(uint64_t a1)
{
  v2 = sub_1ABD9C05C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *_s20IntelligencePlatform24KTSContextRepresentationC13originContext03ktsF0011destinationF0014graphLifeEventF0ACSayAA019CustomGraphActivityK0VG_A2jA0ljkF0CyAA0m6ObjectF0CyAA12SubgraphViewCAA0O26SynthesisDictionaryMappingVGGSgtcfc_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABAA29F0();
  if (v8)
  {
    v9 = v8;
    v11[3] = sub_1ABAD219C(&qword_1EB4D6388, &unk_1ABF50490);
    v11[4] = sub_1ABC79C44();
    v11[0] = v9;
    swift_beginAccess();
    sub_1ABD9BE64(v11, v4);
    swift_endAccess();
  }

  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t KTSContextAggregateRepresentation.__allocating_init(from:)(uint64_t a1)
{
  sub_1ABA9803C();
  v2 = swift_allocObject();
  KTSContextAggregateRepresentation.init(from:)(a1, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  return v2;
}

void KTSContextAggregateRepresentation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v14 = v13;
  sub_1ABAD219C(&qword_1EB4D95B0, &qword_1ABF60FC0);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABAA29F0();
  sub_1ABA93E20(v14, v14[3]);
  v16 = sub_1ABD9C05C();
  sub_1ABAA0AE8(&type metadata for KTSContextAggregateRepresentation.CodingKeys, v17, v16);
  if (v11)
  {
    sub_1ABA925A4(v12, &qword_1EB4D9570, &qword_1ABF60F98);
    v22 = type metadata accessor for KTSContextAggregateRepresentation();
    sub_1ABA8B934(v22);
  }

  else
  {
    v18 = sub_1ABAD219C(&qword_1EB4D1730, &qword_1ABF338C0);
    v25 = 0;
    sub_1ABA7ADF0();
    sub_1ABD9BFBC(v19, v20, v21, MEMORY[0x1E69E6330]);
    sub_1ABAA35F4(v18, &v25);
    v10[2] = a10;
    sub_1ABA93738(1);
    sub_1ABF24E64();
    v10[3] = a10;
    sub_1ABA93738(2);
    sub_1ABF24E64();
    v23 = sub_1ABA80ECC();
    v24(v23);
    v10[4] = a10;
  }

  sub_1ABA84B54(v14);
  sub_1ABA7BC90();
}

void sub_1ABD9B054()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v14 = v0;
  v4 = v3;
  v7 = sub_1ABAD219C(v5, v6);
  sub_1ABA7BB64();
  v9 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - v11;
  sub_1ABA93E20(v4, v4[3]);
  v2();
  sub_1ABF252E4();
  v15 = 0;
  sub_1ABAD219C(&qword_1EB4D1730, &qword_1ABF338C0);
  sub_1ABD9BFBC(&qword_1EB4D95A0, &qword_1EB4D95A8, &protocol conformance descriptor for CustomGraphActivityEvent, MEMORY[0x1E69E6300]);
  sub_1ABA8428C();
  v13 = v14;
  sub_1ABF24F84();
  if (!v13)
  {
    v15 = 1;
    sub_1ABA8428C();
    sub_1ABF24F84();
    v15 = 2;
    sub_1ABA8428C();
    sub_1ABF24F84();
  }

  (*(v9 + 8))(v12, v7);
  sub_1ABA7BC90();
}

uint64_t sub_1ABD9B218()
{
  sub_1ABAA04AC();
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000002CLL, 0x80000001ABF8F420);
  v1 = type metadata accessor for CustomGraphActivityEvent(0);

  MEMORY[0x1AC5A9750](v2, v1);
  sub_1ABA94BE8();
  sub_1ABA95564();

  sub_1ABAABD10();

  MEMORY[0x1AC5A9750](v3, v1);
  sub_1ABA94BE8();
  sub_1ABA95564();

  sub_1ABA8C7D8();

  MEMORY[0x1AC5A9750](v4, v1);
  sub_1ABA8BD30();
  MEMORY[0x1AC5A9410](v1, v0);

  sub_1ABA83AA4();
  return v6;
}

uint64_t _s20IntelligencePlatform24KTSContextRepresentationCfd_0()
{

  sub_1ABA925A4(v0 + 40, &qword_1EB4D9570, &qword_1ABF60F98);
  return v0;
}

uint64_t sub_1ABD9B4F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = KTSContextAggregateRepresentation.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1ABD9B548(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v140 = a2;
  v141 = v2;
  v4 = a1 + 32;
  sub_1ABA93E64(a1 + 32, v154);
  v5 = MEMORY[0x1E69E7CC0];
  v6 = v4;
  v145 = v3;
  do
  {
    v7 = sub_1ABA93E64(v6, v153);
    v15 = sub_1ABD9CD98(v7, v8, v9, v10, v11, v12, v13, v14, v138, v140, v141, v142, v145, v147, v148, v149, v150, v151, v152, v153[0]);
    sub_1ABA93E64(v15, v16);
    sub_1ABAD219C(&qword_1EB4D1540, &qword_1ABF336D0);
    type metadata accessor for KTSContextRepresentation();
    sub_1ABA8E384();
    v147 = v17;
    v18 = swift_dynamicCast();
    if (v18)
    {
      v26 = v157[2];

      sub_1ABA84B54(v153);
    }

    else
    {
      v27 = sub_1ABD9CD98(v18, v19, v20, v21, v22, v23, v24, v25, v138, v140, v141, v142, v145, v147, v148, v149, v150, v151, v152, v153[0]);
      sub_1ABA946C0(v27, v28);
      type metadata accessor for KTSContextAggregateRepresentation();
      sub_1ABA8E384();
      if (!swift_dynamicCast())
      {
        goto LABEL_12;
      }

      v26 = v157[2];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1ABA7BEF0();
      sub_1ABADBE60(v31, v32, v33, v5);
      v5 = v34;
    }

    v30 = *(v5 + 16);
    v29 = *(v5 + 24);
    if (v30 >= v29 >> 1)
    {
      v35 = sub_1ABA7DC80(v29);
      sub_1ABADBE60(v35, v36, v37, v5);
      v5 = v38;
    }

    *(v5 + 16) = v30 + 1;
    *(v5 + 8 * v30 + 32) = v26;
LABEL_12:
    v6 += 40;
    --v3;
  }

  while (v3);
  v39 = 0;
  v143 = *(v5 + 16);
  v40 = MEMORY[0x1E69E7CC0];
  while (v143 != v39)
  {
    if (v39 >= *(v5 + 16))
    {
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
      return;
    }

    v41 = *(v5 + 8 * v39 + 32);
    v42 = *(v41 + 16);
    v43 = *(v40 + 16);
    if (__OFADD__(v43, v42))
    {
      goto LABEL_88;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v43 + v42 > *(v40 + 24) >> 1)
    {
      sub_1ABADBCB0();
      v40 = v44;
    }

    if (*(v41 + 16))
    {
      v45 = v40;
      v46 = (*(v40 + 24) >> 1) - *(v40 + 16);
      type metadata accessor for CustomGraphActivityEvent(0);
      if (v46 < v42)
      {
        goto LABEL_96;
      }

      swift_arrayInitWithCopy();

      v40 = v45;
      if (v42)
      {
        v47 = *(v45 + 16);
        v48 = __OFADD__(v47, v42);
        v49 = v47 + v42;
        if (v48)
        {
          goto LABEL_99;
        }

        *(v45 + 16) = v49;
      }
    }

    else
    {

      if (v42)
      {
        goto LABEL_89;
      }
    }

    ++v39;
  }

  v50 = MEMORY[0x1E69E7CC0];
  v51 = v4;
  v52 = v145;
  while (2)
  {
    v53 = sub_1ABA93E64(v51, v153);
    v61 = sub_1ABD9CD98(v53, v54, v55, v56, v57, v58, v59, v60, v138, v140, v141, v143, v145, v147, v148, v149, v150, v151, v152, v153[0]);
    sub_1ABA93E64(v61, v62);
    sub_1ABA8E384();
    v63 = swift_dynamicCast();
    if (v63)
    {
      v71 = v157[3];

      sub_1ABA84B54(v153);
      goto LABEL_32;
    }

    v72 = sub_1ABD9CD98(v63, v64, v65, v66, v67, v68, v69, v70, v138, v140, v141, v143, v145, v147, v148, v149, v150, v151, v152, v153[0]);
    sub_1ABA946C0(v72, v73);
    type metadata accessor for KTSContextAggregateRepresentation();
    sub_1ABA8E384();
    if (swift_dynamicCast())
    {
      v71 = v157[3];

LABEL_32:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = sub_1ABA7BEF0();
        sub_1ABADBE60(v76, v77, v78, v50);
        v50 = v79;
      }

      v75 = *(v50 + 16);
      v74 = *(v50 + 24);
      if (v75 >= v74 >> 1)
      {
        v80 = sub_1ABA7DC80(v74);
        sub_1ABADBE60(v80, v81, v82, v50);
        v50 = v83;
      }

      *(v50 + 16) = v75 + 1;
      *(v50 + 8 * v75 + 32) = v71;
    }

    v51 += 40;
    if (--v52)
    {
      continue;
    }

    break;
  }

  v84 = 0;
  v144 = *(v50 + 16);
  v85 = MEMORY[0x1E69E7CC0];
  v139 = v40;
  while (v144 != v84)
  {
    if (v84 >= *(v50 + 16))
    {
      goto LABEL_90;
    }

    v86 = *(v50 + 8 * v84 + 32);
    v87 = *(v86 + 16);
    v88 = *(v85 + 16);
    if (__OFADD__(v88, v87))
    {
      goto LABEL_91;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v88 + v87 > *(v85 + 24) >> 1)
    {
      sub_1ABADBCB0();
      v85 = v89;
    }

    if (*(v86 + 16))
    {
      v90 = (*(v85 + 24) >> 1) - *(v85 + 16);
      type metadata accessor for CustomGraphActivityEvent(0);
      if (v90 < v87)
      {
        goto LABEL_97;
      }

      swift_arrayInitWithCopy();

      if (v87)
      {
        v91 = *(v85 + 16);
        v48 = __OFADD__(v91, v87);
        v92 = v91 + v87;
        if (v48)
        {
          goto LABEL_100;
        }

        *(v85 + 16) = v92;
      }
    }

    else
    {

      if (v87)
      {
        goto LABEL_92;
      }
    }

    ++v84;
  }

  v93 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v94 = sub_1ABA93E64(v4, v153);
    v102 = sub_1ABD9CD98(v94, v95, v96, v97, v98, v99, v100, v101, v139, v140, v141, v144, v145, v147, v148, v149, v150, v151, v152, v153[0]);
    sub_1ABA93E64(v102, v103);
    sub_1ABA8E384();
    v104 = swift_dynamicCast();
    if (v104)
    {
      v112 = v157[4];

      sub_1ABA84B54(v153);
      goto LABEL_57;
    }

    v113 = sub_1ABD9CD98(v104, v105, v106, v107, v108, v109, v110, v111, v139, v140, v141, v144, v146, v147, v148, v149, v150, v151, v152, v153[0]);
    sub_1ABA946C0(v113, v114);
    type metadata accessor for KTSContextAggregateRepresentation();
    sub_1ABA8E384();
    if (swift_dynamicCast())
    {
      v112 = v157[4];

LABEL_57:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v117 = sub_1ABA7BEF0();
        sub_1ABADBE60(v117, v118, v119, v93);
        v93 = v120;
      }

      v116 = *(v93 + 16);
      v115 = *(v93 + 24);
      if (v116 >= v115 >> 1)
      {
        v121 = sub_1ABA7DC80(v115);
        sub_1ABADBE60(v121, v122, v123, v93);
        v93 = v124;
      }

      *(v93 + 16) = v116 + 1;
      *(v93 + 8 * v116 + 32) = v112;
    }

    v4 += 40;
    v145 = v146 - 1;
    if (v145)
    {
      continue;
    }

    break;
  }

  v125 = 0;
  v126 = *(v93 + 16);
  v127 = MEMORY[0x1E69E7CC0];
  while (v126 != v125)
  {
    if (v125 >= *(v93 + 16))
    {
      goto LABEL_93;
    }

    v128 = *(v93 + 8 * v125 + 32);
    v129 = *(v128 + 16);
    v130 = *(v127 + 16);
    if (__OFADD__(v130, v129))
    {
      goto LABEL_94;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v130 + v129 > *(v127 + 24) >> 1)
    {
      sub_1ABADBCB0();
      v127 = v131;
    }

    if (*(v128 + 16))
    {
      v132 = (*(v127 + 24) >> 1) - *(v127 + 16);
      type metadata accessor for CustomGraphActivityEvent(0);
      if (v132 < v129)
      {
        goto LABEL_98;
      }

      swift_arrayInitWithCopy();

      if (v129)
      {
        v133 = *(v127 + 16);
        v48 = __OFADD__(v133, v129);
        v134 = v133 + v129;
        if (v48)
        {
          goto LABEL_101;
        }

        *(v127 + 16) = v134;
      }
    }

    else
    {

      if (v129)
      {
        goto LABEL_95;
      }
    }

    ++v125;
  }

  if (v140)
  {
    v135 = v140;
    goto LABEL_79;
  }

  v136 = v155;
  v137 = v156;
  sub_1ABA93E20(v154, v155);
  (*(v137 + 24))(v153, v136, v137);
  if (v141)
  {

    sub_1ABA84B54(v154);
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D9618, &qword_1ABF613B0);
    sub_1ABAD219C(&qword_1EB4D6388, &unk_1ABF50490);
    if (swift_dynamicCast())
    {
      v135 = v148;

LABEL_79:
      type metadata accessor for KTSContextAggregateRepresentation();
      swift_allocObject();
      swift_retain_n();
      KTSContextRepresentation.init(originContext:ktsContext:destinationContext:graphLifeEventContext:)(v139, v85, v127, v135);
    }

    else
    {
    }

    sub_1ABA84B54(v154);
  }
}

double static KTSContextAggregateRepresentation.emptyRepresentation.getter(uint64_t a1)
{
  type metadata accessor for KTSContextAggregateRepresentation();
  v1 = swift_allocObject();
  result = 0.0;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = v3;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_1ABD9BDF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D9570, &qword_1ABF60F98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABD9BE64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D9570, &qword_1ABF60F98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABD9BEDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1ABD9BF44()
{
  result = qword_1EB4D9580;
  if (!qword_1EB4D9580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9580);
  }

  return result;
}

uint64_t sub_1ABD9BFBC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D1730, &qword_1ABF338C0);
    sub_1ABD9C1DC(a2, 255, type metadata accessor for CustomGraphActivityEvent, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABD9C05C()
{
  result = qword_1EB4D95B8;
  if (!qword_1EB4D95B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D95B8);
  }

  return result;
}

uint64_t sub_1ABD9C0D4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1ABD9C1DC(&qword_1EB4D95C8, a2, type metadata accessor for KTSContextRepresentation, &protocol conformance descriptor for KTSContextRepresentation);
  result = sub_1ABD9C1DC(&qword_1EB4D95D0, v3, type metadata accessor for KTSContextRepresentation, &protocol conformance descriptor for KTSContextRepresentation);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1ABD9C158(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1ABD9C1DC(&qword_1EB4D95D8, a2, type metadata accessor for KTSContextAggregateRepresentation, &protocol conformance descriptor for KTSContextAggregateRepresentation);
  result = sub_1ABD9C1DC(&qword_1EB4D95E0, v3, type metadata accessor for KTSContextAggregateRepresentation, &protocol conformance descriptor for KTSContextAggregateRepresentation);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1ABD9C1DC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_1ABD9CA40(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABD9CB20()
{
  result = qword_1EB4D95E8;
  if (!qword_1EB4D95E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D95E8);
  }

  return result;
}

unint64_t sub_1ABD9CB78()
{
  result = qword_1EB4D95F0;
  if (!qword_1EB4D95F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D95F0);
  }

  return result;
}

unint64_t sub_1ABD9CBD0()
{
  result = qword_1EB4D95F8;
  if (!qword_1EB4D95F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D95F8);
  }

  return result;
}

unint64_t sub_1ABD9CC28()
{
  result = qword_1EB4D9600;
  if (!qword_1EB4D9600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9600);
  }

  return result;
}

unint64_t sub_1ABD9CC80()
{
  result = qword_1EB4D9608;
  if (!qword_1EB4D9608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9608);
  }

  return result;
}

unint64_t sub_1ABD9CCD8()
{
  result = qword_1EB4D9610;
  if (!qword_1EB4D9610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9610);
  }

  return result;
}

void sub_1ABD9CD7C()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABD9CDC4()
{
}

uint64_t sub_1ABD9CDDC(uint64_t a1, double a2, double a3)
{
  v6 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  result = sub_1ABAAB7C8(a1);
  v11 = result;
  v12 = 0;
  v25 = a1 & 0xC000000000000001;
  v24 = a1;
  v13 = a1 & 0xFFFFFFFFFFFFFF8;
  v14 = (v7 + 16);
  v15 = (v7 + 8);
  while (v11 != v12)
  {
    if (v25)
    {
      result = MEMORY[0x1AC5AA170](v12, v24);
      v16 = result;
    }

    else
    {
      if (v12 >= *(v13 + 16))
      {
        goto LABEL_11;
      }

      v16 = *(v24 + 8 * v12 + 32);
    }

    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    v17 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
    swift_beginAccess();
    v18 = *(v16 + v17);
    v19 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceInMeters;
    swift_beginAccess();
    (*v14)(v9, v16 + v19, v6);
    sub_1ABF218C4();
    v21 = v20;
    (*v15)(v9, v6);

    v22 = a2 * a3;
    a3 = a3 + v21;
    a2 = v22 / a3 + v18 * v21 / a3;
    ++v12;
  }

  return result;
}

char *sub_1ABD9CFEC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1ABF24CA4())
  {
    v3 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      return v3;
    }

    v12 = MEMORY[0x1E69E7CC0];
    result = sub_1ABADE01C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v5 = 0;
    v3 = v12;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1AC5AA170](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v5 + 32);
      }

      v8 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
      swift_beginAccess();
      v9 = *(v7 + v8);

      v11 = *(v12 + 16);
      v10 = *(v12 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1ABADE01C((v10 > 1), v11 + 1, 1);
      }

      *(v12 + 16) = v11 + 1;
      *(v12 + 8 * v11 + 32) = v9;
      ++v5;
      if (v6 == i)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  __break(1u);
  return result;
}

void sub_1ABD9D174()
{
  sub_1ABA7BCA8();
  v33 = v1;
  v2 = v0;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D15B0, &qword_1ABF33740);
  sub_1ABA7BB64();
  v7 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  if (v4 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1ABF24CA4())
  {
    if (!i)
    {
LABEL_15:
      sub_1ABA80BE4();
      sub_1ABA7BC90();
      return;
    }

    v34 = MEMORY[0x1E69E7CC0];
    v12 = sub_1ABDBFBD8();
    sub_1ABADE514(v12, v13, v14);
    if (i < 0)
    {
      break;
    }

    v29 = v10;
    v30 = v5;
    v15 = 0;
    v31 = v4;
    v32 = v4 & 0xC000000000000001;
    v25 = v2;
    v26 = v4 & 0xFFFFFFFFFFFFFF8;
    v27 = v7 + 32;
    v28 = (v7 + 16);
    while (1)
    {
      v10 = i;
      v16 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v32)
      {
        v17 = sub_1ABA82DAC();
        v18 = MEMORY[0x1AC5AA170](v17);
      }

      else
      {
        if (v15 >= *(v26 + 16))
        {
          goto LABEL_17;
        }

        v18 = *(v4 + 8 * v15 + 32);
      }

      v19 = *v33;
      sub_1ABA7EF0C();
      swift_beginAccess();
      v5 = v29;
      v20 = v30;
      (*v28)(v29, v18 + v19, v30);

      v22 = *(v34 + 16);
      v21 = *(v34 + 24);
      v2 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        sub_1ABADE514(v21 > 1, v22 + 1, 1);
      }

      *(v34 + 16) = v2;
      sub_1ABA7AB74();
      (*(v7 + 32))(v34 + v23 + *(v7 + 72) * v22, v5, v20);
      ++v15;
      v24 = v16 == v10;
      i = v10;
      v4 = v31;
      if (v24)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
}

void sub_1ABD9D3B4(unint64_t a1, uint64_t *a2, __n128 a3)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1ABF24CA4())
  {
    if (!i)
    {
LABEL_14:
      sub_1ABA80BE4();
      return;
    }

    v19 = MEMORY[0x1E69E7CC0];
    v6 = sub_1ABDBFBD8();
    sub_1ABADE07C(v6, v7, v8);
    if (i < 0)
    {
      break;
    }

    v9 = 0;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = sub_1ABA7BC4C();
        v3 = MEMORY[0x1AC5AA170](v11);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        sub_1ABA8B954(a1 + 8 * v9);
      }

      v12 = *a2;
      sub_1ABA7EF0C();
      swift_beginAccess();
      v13 = *(v3 + v12);

      v14 = *(v19 + 16);
      v3 = v14 + 1;
      if (v14 >= *(v19 + 24) >> 1)
      {
        sub_1ABAA0DB0();
        sub_1ABADE07C(v15, v16, v17);
      }

      *(v19 + 16) = v3;
      *(v19 + 8 * v14 + 32) = v13;
      ++v9;
      if (v10 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  __break(1u);
}

uint64_t sub_1ABD9D520(unint64_t a1, unint64_t a2, uint64_t *a3, __n128 a4)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1ABF24CA4())
  {
    if (!i)
    {
      return sub_1ABA80BE4();
    }

    v18 = MEMORY[0x1E69E7CC0];
    v7 = sub_1ABDBFBD8();
    result = (a2)(v7);
    if (i < 0)
    {
      break;
    }

    v16 = a2;
    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = sub_1ABA8A354();
        v12 = MEMORY[0x1AC5AA170](v11);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v12 = *(a1 + 8 * j + 32);
      }

      v13 = *a3;
      sub_1ABA7EF0C();
      swift_beginAccess();
      v14 = *(v12 + v13);

      a2 = *(v18 + 16);
      v15 = *(v18 + 24);
      if (a2 >= v15 >> 1)
      {
        v16(v15 > 1, a2 + 1, 1);
      }

      *(v18 + 16) = a2 + 1;
      *(v18 + 8 * a2 + 32) = v14;
      if (v10 == i)
      {
        return sub_1ABA80BE4();
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABD9D6B0(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v13 = MEMORY[0x1E69E7CC0];
  sub_1ABADE3D4(0, v3, 0);
  v4 = v13;
  for (i = (a1 + 32); ; ++i)
  {
    v11 = *i;

    sub_1ABDB383C(&v11, &v12);
    if (v2)
    {
      break;
    }

    v2 = 0;

    v7 = v12;
    v13 = v4;
    v9 = *(v4 + 16);
    v8 = *(v4 + 24);
    if (v9 >= v8 >> 1)
    {
      sub_1ABADE3D4(v8 > 1, v9 + 1, 1);
      v4 = v13;
    }

    *(v4 + 16) = v9 + 1;
    *(v4 + 8 * v9 + 32) = v7;
    if (!--v3)
    {
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABD9D7C4(uint64_t a1, uint64_t *a2, uint64_t (*a3)(BOOL, unint64_t, uint64_t, uint64_t))
{
  result = sub_1ABAAB7C8(a1);
  v5 = result;
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v5 == v6)
    {
      return v7;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v16 = sub_1ABA7BC4C();
      result = MEMORY[0x1AC5AA170](v16);
      v8 = result;
    }

    else
    {
      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    if (__OFADD__(v6, 1))
    {
      break;
    }

    v9 = *a2;
    sub_1ABA7EF0C();
    swift_beginAccess();
    v10 = *(v8 + v9);
    v11 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
    sub_1ABA7EF0C();
    swift_beginAccess();
    v12 = *(v8 + v11);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      v17 = sub_1ABA83F84();
      result = (a3)(v17);
      v7 = result;
    }

    v14 = *(v7 + 16);
    v13 = *(v7 + 24);
    if (v14 >= v13 >> 1)
    {
      result = a3(v13 > 1, v14 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v14 + 1;
    v15 = v7 + 16 * v14;
    *(v15 + 32) = v10;
    *(v15 + 40) = v12;
    ++v6;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_1ABD9D950(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CodableLocation(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = sub_1ABAAB7C8(a1);
  v12 = 0;
  v37 = a1 & 0xFFFFFFFFFFFFFF8;
  v38 = a1 & 0xC000000000000001;
  v33 = MEMORY[0x1E69E7CC0];
  while (v11 != v12)
  {
    if (v38)
    {
      v13 = MEMORY[0x1AC5AA170](v12, a1);
    }

    else
    {
      if (v12 >= *(v37 + 16))
      {
        goto LABEL_22;
      }

      v13 = *(a1 + 8 * v12 + 32);
    }

    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v36 = v12 + 1;
    v14 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_route;
    swift_beginAccess();
    v15 = *(v13 + v14);
    if (v15)
    {
      v32 = v7;
      v16 = *(v15 + 16);
      if (v16)
      {
        v28 = v11;
        v30 = a1;
        v31 = v2;
        v39 = MEMORY[0x1E69E7CC0];

        sub_1ABF24BC4();
        v17 = sub_1ABAFF390(0, &qword_1EB4D1F98, 0x1E6985C40);
        v18 = v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
        v29 = v5;
        v34 = *(v5 + 72);
        v35 = v17;
        v19 = v32;
        do
        {
          sub_1ABAFEEF4(v18, v10);
          sub_1ABAFEEF4(v10, v19);
          CLLocation.init(model:)(v19);
          sub_1ABAFEF58(v10);
          sub_1ABF24B94();
          sub_1ABF24BD4();
          sub_1ABF24BE4();
          sub_1ABF24BA4();
          v18 += v34;
          --v16;
        }

        while (v16);

        v20 = v39;
        a1 = v30;
        v2 = v31;
        v11 = v28;
        v5 = v29;
      }

      else
      {

        v20 = MEMORY[0x1E69E7CC0];
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = v32;
      v22 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ABADBE84(0, *(v33 + 16) + 1, 1, v33);
        v33 = v26;
      }

      v24 = *(v33 + 16);
      v23 = *(v33 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1ABADBE84(v23 > 1, v24 + 1, 1, v33);
        v33 = v27;
      }

      v25 = v33;
      *(v33 + 16) = v24 + 1;
      *(v25 + 8 * v24 + 32) = v20;
      v12 = v36;
      v11 = v22;
    }

    else
    {

      ++v12;
    }
  }
}

uint64_t sub_1ABD9DC70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(BOOL, unint64_t, uint64_t, uint64_t), double a7)
{
  v62 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BB64();
  v13 = v12;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7FBE0();
  v56 = v15;
  v61 = a4;
  v60 = sub_1ABAD219C(a3, a4);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7C068();
  v53 = v17;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA88E50();
  v54 = v19;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA9E360();
  sub_1ABA7D32C();
  v23 = v22 & v21;
  v25 = (v24 + 63) >> 6;
  v59 = v13;
  v57 = (v13 + 8);

  v26 = 0;
  v55 = MEMORY[0x1E69E7CC0];
  while (v23)
  {
LABEL_8:
    v29 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v30 = v29 | (v26 << 6);
    v31 = *(*(a1 + 48) + v30);
    v32 = *(v59 + 72);
    v33 = *(v59 + 16);
    v33(&v7[*(v60 + 48)], *(a1 + 56) + v32 * v30, v62);
    *v7 = v31;
    if (*(a2 + 16) && (v34 = a5(v31), (v35 & 1) != 0) && (v33(v56, *(a2 + 56) + v34 * v32, v62), sub_1ABF218C4(), v37 = v36, v38 = *v57, v39 = sub_1ABAA030C(), (v38)(v39), v37 != 0.0))
    {
      sub_1ABBD88DC(v7, v54, a3, v61);
      v51 = *v54;
      v50 = *(v60 + 48);
      sub_1ABAB0FB8();
      sub_1ABBD88DC(v40, v41, v42, v61);
      v49 = *(v60 + 48);
      sub_1ABF218C4();
      v44 = v43;
      v38(v53 + v49, v62);
      v38(&v54[v50], v62);
      sub_1ABAB480C(v7, a3, v61);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_1ABA83F84();
        v55 = (a6)(v48);
      }

      v46 = *(v55 + 16);
      v45 = *(v55 + 24);
      if (v46 >= v45 >> 1)
      {
        v55 = a6(v45 > 1, v46 + 1, 1, v55);
      }

      *(v55 + 16) = v46 + 1;
      v47 = v55 + 16 * v46;
      *(v47 + 32) = v51;
      *(v47 + 40) = v44 * a7 / v37;
    }

    else
    {
      sub_1ABAB480C(v7, a3, v61);
    }
  }

  result = a2;
  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v25)
    {

      return v55;
    }

    v23 = *(a1 + 64 + 8 * v28);
    ++v26;
    if (v23)
    {
      v26 = v28;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABD9E04C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, void *, uint64_t))
{
  v12 = a1;
  v7 = *(a2 + 16);
  v8 = (a2 + 40);
  if (v7)
  {
    while (1)
    {
      v9 = *v8;
      v11[0] = *(v8 - 1);
      v11[1] = v9;

      a4(&v12, v11, a3);
      if (v4)
      {
        break;
      }

      v8 += 2;
      if (!--v7)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:

    return v12;
  }
}

uint64_t sub_1ABD9E114(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1ABD9E158(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void, uint64_t, uint64_t *))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = a2;
  a4(a1, a3, 0, isUniquelyReferenced_nonNull_native, &v11);
  if (v4)
  {
  }

  return sub_1ABA80BE4();
}

void sub_1ABD9E1DC(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_1ABAD219C(&qword_1EB4D3748, &unk_1ABF3D7B0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v40 - v3;
  v5 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - v7;
  v9 = sub_1ABAD219C(&qword_1EB4D3740, &qword_1ABF3D7A8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - v12;
  v16 = *v1;
  v15 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v41 = v4;
  v43 = v17;
  if (v19)
  {
    v42 = &v40 - v12;
    v20 = v8;
    v21 = v18;
LABEL_7:
    v22 = __clz(__rbit64(v19)) | (v21 << 6);
    v23 = *(v16 + 56);
    v24 = *(*(v16 + 48) + v22);
    v25 = v16;
    v26 = (v19 - 1) & v19;
    (*(v6 + 16))(v20, v23 + *(v6 + 72) * v22, v5, v13);
    v27 = *(v2 + 48);
    v28 = v42;
    *v42 = v24;
    v29 = v26;
    v16 = v25;
    v30 = v20;
    v14 = v28;
    (*(v6 + 32))(&v28[v27], v30, v5);
    v31 = 0;
LABEL_8:
    v32 = 1;
    sub_1ABA7B9B4(v14, v31, 1, v2);
    *v1 = v16;
    v1[1] = v15;
    v33 = v44;
    v1[2] = v43;
    v1[3] = v18;
    v1[4] = v29;
    v34 = v1[5];
    sub_1ABBD898C(v14, v33, &qword_1EB4D3740, &qword_1ABF3D7A8);
    v35 = sub_1ABA7E1E0(v33, 1, v2);
    v36 = v45;
    if (v35 != 1)
    {
      v37 = v33;
      v38 = v41;
      sub_1ABBD898C(v37, v41, &qword_1EB4D3748, &unk_1ABF3D7B0);
      v34(v38);
      sub_1ABAB480C(v38, &qword_1EB4D3748, &unk_1ABF3D7B0);
      v32 = 0;
    }

    v39 = sub_1ABAD219C(&qword_1EB4D13B8, &qword_1ABF33540);
    sub_1ABA7B9B4(v36, v32, 1, v39);
  }

  else
  {
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= ((v17 + 64) >> 6))
      {
        v29 = 0;
        v31 = 1;
        goto LABEL_8;
      }

      v19 = *(v15 + 8 * v21);
      ++v18;
      if (v19)
      {
        v42 = &v40 - v12;
        v20 = v8;
        v18 = v21;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1ABD9E524(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_1ABAD219C(&qword_1EB4D3758, &unk_1ABF3D7C0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v40 - v3;
  v5 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - v7;
  v9 = sub_1ABAD219C(&qword_1EB4D3750, &unk_1ABF61910);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - v12;
  v16 = *v1;
  v15 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v41 = v4;
  v43 = v17;
  if (v19)
  {
    v42 = &v40 - v12;
    v20 = v8;
    v21 = v18;
LABEL_7:
    v22 = __clz(__rbit64(v19)) | (v21 << 6);
    v23 = *(v16 + 56);
    v24 = *(*(v16 + 48) + v22);
    v25 = v16;
    v26 = (v19 - 1) & v19;
    (*(v6 + 16))(v20, v23 + *(v6 + 72) * v22, v5, v13);
    v27 = *(v2 + 48);
    v28 = v42;
    *v42 = v24;
    v29 = v26;
    v16 = v25;
    v30 = v20;
    v14 = v28;
    (*(v6 + 32))(&v28[v27], v30, v5);
    v31 = 0;
LABEL_8:
    v32 = 1;
    sub_1ABA7B9B4(v14, v31, 1, v2);
    *v1 = v16;
    v1[1] = v15;
    v33 = v44;
    v1[2] = v43;
    v1[3] = v18;
    v1[4] = v29;
    v34 = v1[5];
    sub_1ABBD898C(v14, v33, &qword_1EB4D3750, &unk_1ABF61910);
    v35 = sub_1ABA7E1E0(v33, 1, v2);
    v36 = v45;
    if (v35 != 1)
    {
      v37 = v33;
      v38 = v41;
      sub_1ABBD898C(v37, v41, &qword_1EB4D3758, &unk_1ABF3D7C0);
      v34(v38);
      sub_1ABAB480C(v38, &qword_1EB4D3758, &unk_1ABF3D7C0);
      v32 = 0;
    }

    v39 = sub_1ABAD219C(&qword_1EB4D13D8, &qword_1ABF33560);
    sub_1ABA7B9B4(v36, v32, 1, v39);
  }

  else
  {
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= ((v17 + 64) >> 6))
      {
        v29 = 0;
        v31 = 1;
        goto LABEL_8;
      }

      v19 = *(v15 + 8 * v21);
      ++v18;
      if (v19)
      {
        v42 = &v40 - v12;
        v20 = v8;
        v18 = v21;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1ABD9E86C(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_1ABAD219C(&qword_1EB4D99E8, &qword_1ABF61888);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v40 - v3;
  v5 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - v7;
  v9 = sub_1ABAD219C(&qword_1EB4D9A10, &unk_1ABF61930);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - v12;
  v16 = *v1;
  v15 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v41 = v4;
  v43 = v17;
  if (v19)
  {
    v42 = &v40 - v12;
    v20 = v8;
    v21 = v18;
LABEL_7:
    v22 = __clz(__rbit64(v19)) | (v21 << 6);
    v23 = *(v16 + 56);
    v24 = *(*(v16 + 48) + v22);
    v25 = v16;
    v26 = (v19 - 1) & v19;
    (*(v6 + 16))(v20, v23 + *(v6 + 72) * v22, v5, v13);
    v27 = *(v2 + 48);
    v28 = v42;
    *v42 = v24;
    v29 = v26;
    v16 = v25;
    v30 = v20;
    v14 = v28;
    (*(v6 + 32))(&v28[v27], v30, v5);
    v31 = 0;
LABEL_8:
    v32 = 1;
    sub_1ABA7B9B4(v14, v31, 1, v2);
    *v1 = v16;
    v1[1] = v15;
    v33 = v44;
    v1[2] = v43;
    v1[3] = v18;
    v1[4] = v29;
    v34 = v1[5];
    sub_1ABBD898C(v14, v33, &qword_1EB4D9A10, &unk_1ABF61930);
    v35 = sub_1ABA7E1E0(v33, 1, v2);
    v36 = v45;
    if (v35 != 1)
    {
      v37 = v33;
      v38 = v41;
      sub_1ABBD898C(v37, v41, &qword_1EB4D99E8, &qword_1ABF61888);
      v34(v38);
      sub_1ABAB480C(v38, &qword_1EB4D99E8, &qword_1ABF61888);
      v32 = 0;
    }

    v39 = sub_1ABAD219C(&qword_1EB4D13F8, &qword_1ABF33580);
    sub_1ABA7B9B4(v36, v32, 1, v39);
  }

  else
  {
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= ((v17 + 64) >> 6))
      {
        v29 = 0;
        v31 = 1;
        goto LABEL_8;
      }

      v19 = *(v15 + 8 * v21);
      ++v18;
      if (v19)
      {
        v42 = &v40 - v12;
        v20 = v8;
        v18 = v21;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1ABD9EBB4(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_1ABAD219C(&qword_1EB4D99E0, &unk_1ABF61878);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v40 - v3;
  v5 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - v7;
  v9 = sub_1ABAD219C(&qword_1EB4D9A20, &unk_1ABF61950);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - v12;
  v16 = *v1;
  v15 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v41 = v4;
  v43 = v17;
  if (v19)
  {
    v42 = &v40 - v12;
    v20 = v8;
    v21 = v18;
LABEL_7:
    v22 = __clz(__rbit64(v19)) | (v21 << 6);
    v23 = *(v16 + 56);
    v24 = *(*(v16 + 48) + v22);
    v25 = v16;
    v26 = (v19 - 1) & v19;
    (*(v6 + 16))(v20, v23 + *(v6 + 72) * v22, v5, v13);
    v27 = *(v2 + 48);
    v28 = v42;
    *v42 = v24;
    v29 = v26;
    v16 = v25;
    v30 = v20;
    v14 = v28;
    (*(v6 + 32))(&v28[v27], v30, v5);
    v31 = 0;
LABEL_8:
    v32 = 1;
    sub_1ABA7B9B4(v14, v31, 1, v2);
    *v1 = v16;
    v1[1] = v15;
    v33 = v44;
    v1[2] = v43;
    v1[3] = v18;
    v1[4] = v29;
    v34 = v1[5];
    sub_1ABBD898C(v14, v33, &qword_1EB4D9A20, &unk_1ABF61950);
    v35 = sub_1ABA7E1E0(v33, 1, v2);
    v36 = v45;
    if (v35 != 1)
    {
      v37 = v33;
      v38 = v41;
      sub_1ABBD898C(v37, v41, &qword_1EB4D99E0, &unk_1ABF61878);
      v34(v38);
      sub_1ABAB480C(v38, &qword_1EB4D99E0, &unk_1ABF61878);
      v32 = 0;
    }

    v39 = sub_1ABAD219C(&qword_1EB4D13E8, &qword_1ABF33570);
    sub_1ABA7B9B4(v36, v32, 1, v39);
  }

  else
  {
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= ((v17 + 64) >> 6))
      {
        v29 = 0;
        v31 = 1;
        goto LABEL_8;
      }

      v19 = *(v15 + 8 * v21);
      ++v18;
      if (v19)
      {
        v42 = &v40 - v12;
        v20 = v8;
        v18 = v21;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1ABD9EEFC(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_1ABAD219C(&qword_1EB4D3768, &qword_1ABF3D7D8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v40 - v3;
  v5 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - v7;
  v9 = sub_1ABAD219C(&qword_1EB4D3760, &qword_1ABF3D7D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - v12;
  v16 = *v1;
  v15 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v41 = v4;
  v43 = v17;
  if (v19)
  {
    v42 = &v40 - v12;
    v20 = v8;
    v21 = v18;
LABEL_7:
    v22 = __clz(__rbit64(v19)) | (v21 << 6);
    v23 = *(v16 + 56);
    v24 = *(*(v16 + 48) + v22);
    v25 = v16;
    v26 = (v19 - 1) & v19;
    (*(v6 + 16))(v20, v23 + *(v6 + 72) * v22, v5, v13);
    v27 = *(v2 + 48);
    v28 = v42;
    *v42 = v24;
    v29 = v26;
    v16 = v25;
    v30 = v20;
    v14 = v28;
    (*(v6 + 32))(&v28[v27], v30, v5);
    v31 = 0;
LABEL_8:
    v32 = 1;
    sub_1ABA7B9B4(v14, v31, 1, v2);
    *v1 = v16;
    v1[1] = v15;
    v33 = v44;
    v1[2] = v43;
    v1[3] = v18;
    v1[4] = v29;
    v34 = v1[5];
    sub_1ABBD898C(v14, v33, &qword_1EB4D3760, &qword_1ABF3D7D0);
    v35 = sub_1ABA7E1E0(v33, 1, v2);
    v36 = v45;
    if (v35 != 1)
    {
      v37 = v33;
      v38 = v41;
      sub_1ABBD898C(v37, v41, &qword_1EB4D3768, &qword_1ABF3D7D8);
      v34(v38);
      sub_1ABAB480C(v38, &qword_1EB4D3768, &qword_1ABF3D7D8);
      v32 = 0;
    }

    v39 = sub_1ABAD219C(&qword_1EB4D1408, &qword_1ABF33590);
    sub_1ABA7B9B4(v36, v32, 1, v39);
  }

  else
  {
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= ((v17 + 64) >> 6))
      {
        v29 = 0;
        v31 = 1;
        goto LABEL_8;
      }

      v19 = *(v15 + 8 * v21);
      ++v18;
      if (v19)
      {
        v42 = &v40 - v12;
        v20 = v8;
        v18 = v21;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1ABD9F244(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_1ABAD219C(&qword_1EB4D37B0, &qword_1ABF3D818);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v40 - v3;
  v5 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - v7;
  v9 = sub_1ABAD219C(&qword_1EB4D37A8, &qword_1ABF3D810);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - v12;
  v16 = *v1;
  v15 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v41 = v4;
  v43 = v17;
  if (v19)
  {
    v42 = &v40 - v12;
    v20 = v8;
    v21 = v18;
LABEL_7:
    v22 = __clz(__rbit64(v19)) | (v21 << 6);
    v23 = *(v16 + 56);
    v24 = *(*(v16 + 48) + v22);
    v25 = v16;
    v26 = (v19 - 1) & v19;
    (*(v6 + 16))(v20, v23 + *(v6 + 72) * v22, v5, v13);
    v27 = *(v2 + 48);
    v28 = v42;
    *v42 = v24;
    v29 = v26;
    v16 = v25;
    v30 = v20;
    v14 = v28;
    (*(v6 + 32))(&v28[v27], v30, v5);
    v31 = 0;
LABEL_8:
    v32 = 1;
    sub_1ABA7B9B4(v14, v31, 1, v2);
    *v1 = v16;
    v1[1] = v15;
    v33 = v44;
    v1[2] = v43;
    v1[3] = v18;
    v1[4] = v29;
    v34 = v1[5];
    sub_1ABBD898C(v14, v33, &qword_1EB4D37A8, &qword_1ABF3D810);
    v35 = sub_1ABA7E1E0(v33, 1, v2);
    v36 = v45;
    if (v35 != 1)
    {
      v37 = v33;
      v38 = v41;
      sub_1ABBD898C(v37, v41, &qword_1EB4D37B0, &qword_1ABF3D818);
      v34(v38);
      sub_1ABAB480C(v38, &qword_1EB4D37B0, &qword_1ABF3D818);
      v32 = 0;
    }

    v39 = sub_1ABAD219C(&qword_1EB4D1458, &qword_1ABF335E0);
    sub_1ABA7B9B4(v36, v32, 1, v39);
  }

  else
  {
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= ((v17 + 64) >> 6))
      {
        v29 = 0;
        v31 = 1;
        goto LABEL_8;
      }

      v19 = *(v15 + 8 * v21);
      ++v18;
      if (v19)
      {
        v42 = &v40 - v12;
        v20 = v8;
        v18 = v21;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1ABD9F58C(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_1ABAD219C(&qword_1EB4D37F0, &unk_1ABF61890);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v40 - v3;
  v5 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - v7;
  v9 = sub_1ABAD219C(&qword_1EB4D37E8, &qword_1ABF3D850);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - v12;
  v16 = *v1;
  v15 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v41 = v4;
  v43 = v17;
  if (v19)
  {
    v42 = &v40 - v12;
    v20 = v8;
    v21 = v18;
LABEL_7:
    v22 = __clz(__rbit64(v19)) | (v21 << 6);
    v23 = *(v16 + 56);
    v24 = *(*(v16 + 48) + v22);
    v25 = v16;
    v26 = (v19 - 1) & v19;
    (*(v6 + 16))(v20, v23 + *(v6 + 72) * v22, v5, v13);
    v27 = *(v2 + 48);
    v28 = v42;
    *v42 = v24;
    v29 = v26;
    v16 = v25;
    v30 = v20;
    v14 = v28;
    (*(v6 + 32))(&v28[v27], v30, v5);
    v31 = 0;
LABEL_8:
    v32 = 1;
    sub_1ABA7B9B4(v14, v31, 1, v2);
    *v1 = v16;
    v1[1] = v15;
    v33 = v44;
    v1[2] = v43;
    v1[3] = v18;
    v1[4] = v29;
    v34 = v1[5];
    sub_1ABBD898C(v14, v33, &qword_1EB4D37E8, &qword_1ABF3D850);
    v35 = sub_1ABA7E1E0(v33, 1, v2);
    v36 = v45;
    if (v35 != 1)
    {
      v37 = v33;
      v38 = v41;
      sub_1ABBD898C(v37, v41, &qword_1EB4D37F0, &unk_1ABF61890);
      v34(v38);
      sub_1ABAB480C(v38, &qword_1EB4D37F0, &unk_1ABF61890);
      v32 = 0;
    }

    v39 = sub_1ABAD219C(&qword_1EB4D1468, &qword_1ABF335F0);
    sub_1ABA7B9B4(v36, v32, 1, v39);
  }

  else
  {
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= ((v17 + 64) >> 6))
      {
        v29 = 0;
        v31 = 1;
        goto LABEL_8;
      }

      v19 = *(v15 + 8 * v21);
      ++v18;
      if (v19)
      {
        v42 = &v40 - v12;
        v20 = v8;
        v18 = v21;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1ABD9F8D4(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_1ABAD219C(&qword_1EB4D37C0, &unk_1ABF61990);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v40 - v3;
  v5 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - v7;
  v9 = sub_1ABAD219C(&qword_1EB4D37B8, &unk_1ABF3D820);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - v12;
  v16 = *v1;
  v15 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v41 = v4;
  v43 = v17;
  if (v19)
  {
    v42 = &v40 - v12;
    v20 = v8;
    v21 = v18;
LABEL_7:
    v22 = __clz(__rbit64(v19)) | (v21 << 6);
    v23 = *(v16 + 56);
    v24 = *(*(v16 + 48) + v22);
    v25 = v16;
    v26 = (v19 - 1) & v19;
    (*(v6 + 16))(v20, v23 + *(v6 + 72) * v22, v5, v13);
    v27 = *(v2 + 48);
    v28 = v42;
    *v42 = v24;
    v29 = v26;
    v16 = v25;
    v30 = v20;
    v14 = v28;
    (*(v6 + 32))(&v28[v27], v30, v5);
    v31 = 0;
LABEL_8:
    v32 = 1;
    sub_1ABA7B9B4(v14, v31, 1, v2);
    *v1 = v16;
    v1[1] = v15;
    v33 = v44;
    v1[2] = v43;
    v1[3] = v18;
    v1[4] = v29;
    v34 = v1[5];
    sub_1ABBD898C(v14, v33, &qword_1EB4D37B8, &unk_1ABF3D820);
    v35 = sub_1ABA7E1E0(v33, 1, v2);
    v36 = v45;
    if (v35 != 1)
    {
      v37 = v33;
      v38 = v41;
      sub_1ABBD898C(v37, v41, &qword_1EB4D37C0, &unk_1ABF61990);
      v34(v38);
      sub_1ABAB480C(v38, &qword_1EB4D37C0, &unk_1ABF61990);
      v32 = 0;
    }

    v39 = sub_1ABAD219C(&qword_1EB4D1438, &qword_1ABF335C0);
    sub_1ABA7B9B4(v36, v32, 1, v39);
  }

  else
  {
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= ((v17 + 64) >> 6))
      {
        v29 = 0;
        v31 = 1;
        goto LABEL_8;
      }

      v19 = *(v15 + 8 * v21);
      ++v18;
      if (v19)
      {
        v42 = &v40 - v12;
        v20 = v8;
        v18 = v21;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1ABD9FC1C(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_1ABAD219C(&qword_1EB4D37E0, &unk_1ABF61830);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v40 - v3;
  v5 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - v7;
  v9 = sub_1ABAD219C(&qword_1EB4D37D8, &unk_1ABF3D840);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - v12;
  v16 = *v1;
  v15 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v41 = v4;
  v43 = v17;
  if (v19)
  {
    v42 = &v40 - v12;
    v20 = v8;
    v21 = v18;
LABEL_7:
    v22 = __clz(__rbit64(v19)) | (v21 << 6);
    v23 = *(v16 + 56);
    v24 = *(*(v16 + 48) + v22);
    v25 = v16;
    v26 = (v19 - 1) & v19;
    (*(v6 + 16))(v20, v23 + *(v6 + 72) * v22, v5, v13);
    v27 = *(v2 + 48);
    v28 = v42;
    *v42 = v24;
    v29 = v26;
    v16 = v25;
    v30 = v20;
    v14 = v28;
    (*(v6 + 32))(&v28[v27], v30, v5);
    v31 = 0;
LABEL_8:
    v32 = 1;
    sub_1ABA7B9B4(v14, v31, 1, v2);
    *v1 = v16;
    v1[1] = v15;
    v33 = v44;
    v1[2] = v43;
    v1[3] = v18;
    v1[4] = v29;
    v34 = v1[5];
    sub_1ABBD898C(v14, v33, &qword_1EB4D37D8, &unk_1ABF3D840);
    v35 = sub_1ABA7E1E0(v33, 1, v2);
    v36 = v45;
    if (v35 != 1)
    {
      v37 = v33;
      v38 = v41;
      sub_1ABBD898C(v37, v41, &qword_1EB4D37E0, &unk_1ABF61830);
      v34(v38);
      sub_1ABAB480C(v38, &qword_1EB4D37E0, &unk_1ABF61830);
      v32 = 0;
    }

    v39 = sub_1ABAD219C(&qword_1EB4D1448, &qword_1ABF335D0);
    sub_1ABA7B9B4(v36, v32, 1, v39);
  }

  else
  {
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= ((v17 + 64) >> 6))
      {
        v29 = 0;
        v31 = 1;
        goto LABEL_8;
      }

      v19 = *(v15 + 8 * v21);
      ++v18;
      if (v19)
      {
        v42 = &v40 - v12;
        v20 = v8;
        v18 = v21;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1ABD9FF64(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_1ABAD219C(&qword_1EB4D3730, &qword_1ABF3D7A0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v40 - v3;
  v5 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - v7;
  v9 = sub_1ABAD219C(&qword_1EB4D3728, &qword_1ABF618E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - v12;
  v16 = *v1;
  v15 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v41 = v4;
  v43 = v17;
  if (v19)
  {
    v42 = &v40 - v12;
    v20 = v8;
    v21 = v18;
LABEL_7:
    v22 = __clz(__rbit64(v19)) | (v21 << 6);
    v23 = *(v16 + 56);
    v24 = *(*(v16 + 48) + v22);
    v25 = v16;
    v26 = (v19 - 1) & v19;
    (*(v6 + 16))(v20, v23 + *(v6 + 72) * v22, v5, v13);
    v27 = *(v2 + 48);
    v28 = v42;
    *v42 = v24;
    v29 = v26;
    v16 = v25;
    v30 = v20;
    v14 = v28;
    (*(v6 + 32))(&v28[v27], v30, v5);
    v31 = 0;
LABEL_8:
    v32 = 1;
    sub_1ABA7B9B4(v14, v31, 1, v2);
    *v1 = v16;
    v1[1] = v15;
    v33 = v44;
    v1[2] = v43;
    v1[3] = v18;
    v1[4] = v29;
    v34 = v1[5];
    sub_1ABBD898C(v14, v33, &qword_1EB4D3728, &qword_1ABF618E0);
    v35 = sub_1ABA7E1E0(v33, 1, v2);
    v36 = v45;
    if (v35 != 1)
    {
      v37 = v33;
      v38 = v41;
      sub_1ABBD898C(v37, v41, &qword_1EB4D3730, &qword_1ABF3D7A0);
      v34(v38);
      sub_1ABAB480C(v38, &qword_1EB4D3730, &qword_1ABF3D7A0);
      v32 = 0;
    }

    v39 = sub_1ABAD219C(&qword_1EB4D13C8, &qword_1ABF33550);
    sub_1ABA7B9B4(v36, v32, 1, v39);
  }

  else
  {
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= ((v17 + 64) >> 6))
      {
        v29 = 0;
        v31 = 1;
        goto LABEL_8;
      }

      v19 = *(v15 + 8 * v21);
      ++v18;
      if (v19)
      {
        v42 = &v40 - v12;
        v20 = v8;
        v18 = v21;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1ABDA02AC(uint64_t a1@<X8>)
{
  v39 = sub_1ABAD219C(&qword_1EB4D3790, &unk_1ABF61850);
  MEMORY[0x1EEE9AC00](v39);
  v35 = &v35 - v3;
  v4 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - v6;
  v8 = sub_1ABAD219C(&qword_1EB4D3788, &unk_1ABF3D7F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - v12;
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v40 = v17;
  if (v19)
  {
    v37 = v10;
    v38 = a1;
    v20 = v4;
    v21 = v18;
LABEL_7:
    v36 = (v19 - 1) & v19;
    v22 = __clz(__rbit64(v19)) | (v21 << 6);
    v23 = (*(v15 + 48) + 16 * v22);
    v24 = *v23;
    v25 = v23[1];
    (*(v5 + 16))(v7, *(v15 + 56) + *(v5 + 72) * v22, v20, v13);
    v26 = v39;
    v27 = *(v39 + 48);
    *v14 = v24;
    *(v14 + 1) = v25;
    v28 = v7;
    v29 = v26;
    (*(v5 + 32))(&v14[v27], v28, v20);
    sub_1ABA7B9B4(v14, 0, 1, v29);

    v30 = v36;
    v10 = v37;
    a1 = v38;
LABEL_8:
    *v1 = v15;
    v1[1] = v16;
    v1[2] = v40;
    v1[3] = v18;
    v1[4] = v30;
    v31 = v1[5];
    sub_1ABBD898C(v14, v10, &qword_1EB4D3788, &unk_1ABF3D7F0);
    v32 = 1;
    if (sub_1ABA7E1E0(v10, 1, v29) != 1)
    {
      v33 = v35;
      sub_1ABBD898C(v10, v35, &qword_1EB4D3790, &unk_1ABF61850);
      v31(v33);
      sub_1ABAB480C(v33, &qword_1EB4D3790, &unk_1ABF61850);
      v32 = 0;
    }

    v34 = sub_1ABAD219C(&qword_1EB4D1D60, &qword_1ABF34628);
    sub_1ABA7B9B4(a1, v32, 1, v34);
  }

  else
  {
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= ((v17 + 64) >> 6))
      {
        v29 = v39;
        sub_1ABA7B9B4(&v35 - v12, 1, 1, v39);
        v30 = 0;
        goto LABEL_8;
      }

      v19 = *(v16 + 8 * v21);
      ++v18;
      if (v19)
      {
        v37 = v10;
        v38 = a1;
        v20 = v4;
        v18 = v21;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1ABDA060C(uint64_t a1@<X8>)
{
  v39 = sub_1ABAD219C(&qword_1EB4D3780, &unk_1ABF61800);
  MEMORY[0x1EEE9AC00](v39);
  v35 = &v35 - v3;
  v4 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - v6;
  v8 = sub_1ABAD219C(&qword_1EB4D3778, &unk_1ABF3D7E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - v12;
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v40 = v17;
  if (v19)
  {
    v37 = v10;
    v38 = a1;
    v20 = v4;
    v21 = v18;
LABEL_7:
    v36 = (v19 - 1) & v19;
    v22 = __clz(__rbit64(v19)) | (v21 << 6);
    v23 = (*(v15 + 48) + 16 * v22);
    v24 = *v23;
    v25 = v23[1];
    (*(v5 + 16))(v7, *(v15 + 56) + *(v5 + 72) * v22, v20, v13);
    v26 = v39;
    v27 = *(v39 + 48);
    *v14 = v24;
    *(v14 + 1) = v25;
    v28 = v7;
    v29 = v26;
    (*(v5 + 32))(&v14[v27], v28, v20);
    sub_1ABA7B9B4(v14, 0, 1, v29);

    v30 = v36;
    v10 = v37;
    a1 = v38;
LABEL_8:
    *v1 = v15;
    v1[1] = v16;
    v1[2] = v40;
    v1[3] = v18;
    v1[4] = v30;
    v31 = v1[5];
    sub_1ABBD898C(v14, v10, &qword_1EB4D3778, &unk_1ABF3D7E0);
    v32 = 1;
    if (sub_1ABA7E1E0(v10, 1, v29) != 1)
    {
      v33 = v35;
      sub_1ABBD898C(v10, v35, &qword_1EB4D3780, &unk_1ABF61800);
      v31(v33);
      sub_1ABAB480C(v33, &qword_1EB4D3780, &unk_1ABF61800);
      v32 = 0;
    }

    v34 = sub_1ABAD219C(&qword_1EB4D1D58, &qword_1ABF34620);
    sub_1ABA7B9B4(a1, v32, 1, v34);
  }

  else
  {
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= ((v17 + 64) >> 6))
      {
        v29 = v39;
        sub_1ABA7B9B4(&v35 - v12, 1, 1, v39);
        v30 = 0;
        goto LABEL_8;
      }

      v19 = *(v16 + 8 * v21);
      ++v18;
      if (v19)
      {
        v37 = v10;
        v38 = a1;
        v20 = v4;
        v18 = v21;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

double sub_1ABDA096C()
{
  sub_1ABA7EF0C();
  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_1ABDA099C(double a1)
{
  sub_1ABAA0948();
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

double sub_1ABDA0A28()
{
  sub_1ABA7EF0C();
  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t sub_1ABDA0A58(double a1)
{
  sub_1ABAA0948();
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1ABDA0BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  sub_1ABAD219C(a5, a6);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = sub_1ABA7BE8C();
  v12(v11);
  return a7(v10);
}

double sub_1ABDA1228()
{
  v1 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
  sub_1ABA9F7E4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1ABDA1264(double a1)
{
  v3 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
  sub_1ABA9F7E4();
  sub_1ABAA0948();
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1ABDA1398@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABAD219C(a2, a3);
  sub_1ABA7BBB0();
  return (*(v9 + 16))(a4, v4 + v8);
}

uint64_t sub_1ABDA1440(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_1ABAD219C(a3, a4);
  sub_1ABA7BBB0();
  (*(v9 + 40))(v4 + v8, a1);
  return swift_endAccess();
}

uint64_t sub_1ABDA1524()
{
  v1 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numBrakingEvents;
  sub_1ABA9F7E4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1ABDA1560(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numBrakingEvents;
  result = sub_1ABA8C600(a1);
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1ABDA15EC()
{
  v1 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numAccelEvents;
  sub_1ABA9F7E4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1ABDA1628(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numAccelEvents;
  result = sub_1ABA8C600(a1);
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1ABDA16B4()
{
  v1 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numHighSpeedEvents;
  sub_1ABA9F7E4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1ABDA16F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numHighSpeedEvents;
  result = sub_1ABA8C600(a1);
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1ABDA1CC4()
{
  sub_1ABA9F7E4();
  sub_1ABA7EF0C();
  swift_beginAccess();
}

uint64_t sub_1ABDA1D0C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_1ABA8C600(a1);
  *(v2 + v4) = a1;
}

uint64_t sub_1ABDA1F4C()
{
  v1 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_lifeEventIds;
  sub_1ABA9F7E4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    return *(v2 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t KTSDataRepresentation.__allocating_init(startTime:endTime:distanceInMeters:elevationGainInMeters:distanceBuckets:durationInSeconds:expectedDurationInSecondsNoTraffic:distanceSpentInTrafficBuckets:timeSpentInTrafficBuckets:distanceSpentAtSpeedBuckets:timeSpentAtSpeedBuckets:distanceSpentAtRelativeSpeeds:timeSpentAtRelativeSpeeds:distancePerRoadType:timePerRoadType:distancePerWeatherType:timePerWeatherType:distancePerTerrainType:timePerTerrainType:averageSpeedInMetersPerSecond:score:usageKwh:optimalUsageKwh:numBrakingEvents:numAccelEvents:numHighSpeedEvents:roadDistancesInMeters:roadSpeedBuckets:roadRelativeSpeedBuckets:roadTimes:lifeEventIds:ktsSegmentIds:route:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_1ABAA0CE8();
  v30 = swift_allocObject();
  sub_1ABA8EF78();
  sub_1ABA8CEDC();
  KTSDataRepresentation.init(startTime:endTime:distanceInMeters:elevationGainInMeters:distanceBuckets:durationInSeconds:expectedDurationInSecondsNoTraffic:distanceSpentInTrafficBuckets:timeSpentInTrafficBuckets:distanceSpentAtSpeedBuckets:timeSpentAtSpeedBuckets:distanceSpentAtRelativeSpeeds:timeSpentAtRelativeSpeeds:distancePerRoadType:timePerRoadType:distancePerWeatherType:timePerWeatherType:distancePerTerrainType:timePerTerrainType:averageSpeedInMetersPerSecond:score:usageKwh:optimalUsageKwh:numBrakingEvents:numAccelEvents:numHighSpeedEvents:roadDistancesInMeters:roadSpeedBuckets:roadRelativeSpeedBuckets:roadTimes:lifeEventIds:ktsSegmentIds:route:)(v31, v32, v33, v34, v35, v36, v37, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a27, a28, a25, a26, a23, a24, a21, a22, a19, a20, a17, a18, a15, a16, a13, a14, a11, a12, a9, a10);
  return v30;
}

void KTSDataRepresentation.init(startTime:endTime:distanceInMeters:elevationGainInMeters:distanceBuckets:durationInSeconds:expectedDurationInSecondsNoTraffic:distanceSpentInTrafficBuckets:timeSpentInTrafficBuckets:distanceSpentAtSpeedBuckets:timeSpentAtSpeedBuckets:distanceSpentAtRelativeSpeeds:timeSpentAtRelativeSpeeds:distancePerRoadType:timePerRoadType:distancePerWeatherType:timePerWeatherType:distancePerTerrainType:timePerTerrainType:averageSpeedInMetersPerSecond:score:usageKwh:optimalUsageKwh:numBrakingEvents:numAccelEvents:numHighSpeedEvents:roadDistancesInMeters:roadSpeedBuckets:roadRelativeSpeedBuckets:roadTimes:lifeEventIds:ktsSegmentIds:route:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_1ABA9F710();
  a27 = v51;
  a28 = v52;
  v161 = v53;
  v160 = v54;
  v159 = v55;
  v57 = v56;
  v59 = v58;
  v155 = v60;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v181 = a40;
  v180 = a39;
  v169 = a50;
  v179 = a49;
  v182 = a38;
  v177 = a37;
  v176 = a35;
  v174 = a36;
  v175 = a33;
  v173 = a34;
  v178 = a48;
  v172 = a47;
  v170 = a46;
  v168 = a45;
  v167 = a44;
  v165 = a43;
  v163 = a42;
  v162 = a41;
  v171 = a32;
  v158 = a31;
  v157 = a30;
  v156 = a29;
  type metadata accessor for CodableLocation(0);
  sub_1ABA7BB64();
  v183 = v72;
  v184 = v71;
  MEMORY[0x1EEE9AC00](v71);
  v74 = (&v149 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  v154 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_route;
  *(v50 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_route) = 0;
  v164 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_lifeEventIds;
  *(v50 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_lifeEventIds) = 0;
  v166 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_ktsSegmentIds;
  *(v50 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_ktsSegmentIds) = 0;
  *(v50 + 16) = v70;
  *(v50 + 24) = v68;
  v75 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA826B4();
  v151 = v76;
  v77 = *(v76 + 16);
  v186 = v66;
  sub_1ABDBF9A8();
  v77();
  v185 = v64;
  v152 = v75;
  (v77)(v50 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_elevationGainInMeters, v64, v75);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceBuckets);
  v78 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  sub_1ABA826B4();
  v150 = v79;
  v80 = *(v79 + 16);
  v155 = v59;
  sub_1ABAB0FB8();
  v80();
  v153 = v57;
  (v80)(v50 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_expectedDurationInSecondsNoTraffic, v57, v78);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentInTrafficBuckets);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentInTrafficBuckets);
  v81 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_averageSpeedInMetersPerSecond;
  v82 = sub_1ABAD219C(&qword_1EB4D1680, &qword_1ABF33810);
  sub_1ABA826B4();
  v160 = v83;
  (*(v83 + 16))(v50 + v81, v182, v82);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtSpeedBuckets);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentAtSpeedBuckets);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtRelativeSpeeds);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentAtRelativeSpeeds);
  *(v50 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score) = v62;
  v84 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_usageKwh;
  v85 = sub_1ABAD219C(&qword_1EB4D15B0, &qword_1ABF33740);
  sub_1ABA826B4();
  v87 = v86;
  v88 = *(v86 + 16);
  v89 = v50 + v84;
  v90 = v180;
  v88(v89, v180, v85);
  v88(v50 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_optimalUsageKwh, v181, v85);
  v91 = v169;
  v92 = v50;
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numBrakingEvents);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numAccelEvents);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numHighSpeedEvents);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadDistancesInMeters);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadSpeedBuckets);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadRelativeSpeedBuckets);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadTimes);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerRoadType);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerWeatherType);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerTerrainType);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerRoadType);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerWeatherType);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerTerrainType);
  v93 = v164;
  sub_1ABAA0948();
  swift_beginAccess();
  *(v92 + v93) = v178;
  v94 = v166;
  sub_1ABAA0948();
  swift_beginAccess();
  *(v92 + v94) = v179;
  if (!v91)
  {
    v135 = *(v87 + 8);
    v136 = sub_1ABA9F1D4(&a25);
    v135(v136);
    (v135)(v90, v85);
    v137 = sub_1ABA8C7FC();
    v138(v137, v82);
    v139 = sub_1ABA8D2A8();
    (v135)(v139, v78);
    (v135)(v155, v78);
    v140 = sub_1ABA8A9C4();
    v135(v140);
    (v135)(v186, v90);
    v101 = 0;
LABEL_14:
    v148 = v154;
    sub_1ABAA0948();
    swift_beginAccess();
    *(v92 + v148) = v101;

    sub_1ABA8A204();
    return;
  }

  v176 = v87;
  v177 = v85;
  v178 = v82;
  v179 = v78;
  v95 = sub_1ABAAB7C8(v91);
  if (!v95)
  {

    v141 = *(v176 + 8);
    v141(v181, v177);
    v142 = sub_1ABA7E79C();
    (v141)(v142);
    v143 = sub_1ABA8C7FC();
    v144(v143, v178);
    v145 = *(v150 + 8);
    v146 = v179;
    v145(v153, v179);
    v145(v155, v146);
    v147 = sub_1ABA8A9C4();
    (v145)(v147);
    v145(v186, v146);
    v101 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v96 = v95;
  v187 = MEMORY[0x1E69E7CC0];
  v97 = sub_1ABDBFBD8();
  sub_1ABADE33C(v97, v98, v99);
  if ((v96 & 0x8000000000000000) == 0)
  {
    v175 = v92;
    v100 = 0;
    v101 = v187;
    v102 = v91;
    v103 = v91 & 0xC000000000000001;
    do
    {
      if (v103)
      {
        v104 = MEMORY[0x1AC5AA170](v100, v102);
      }

      else
      {
        v104 = *(v102 + 8 * v100 + 32);
      }

      v105 = v104;
      [v104 coordinate];
      v107 = v106;
      [v105 coordinate];
      v109 = v108;
      [v105 altitude];
      v111 = v110;
      [v105 horizontalAccuracy];
      v113 = v112;
      [v105 verticalAccuracy];
      v115 = v114;
      [v105 course];
      v117 = v116;
      [v105 speed];
      v119 = v118;
      v120 = [v105 timestamp];
      sub_1ABF21E64();

      *v74 = v109;
      v74[1] = v107;
      v74[2] = v111;
      v74[3] = v113;
      v74[5] = v119;
      v74[6] = v117;
      v74[4] = v115;
      v187 = v101;
      v122 = *(v101 + 16);
      v121 = *(v101 + 24);
      if (v122 >= v121 >> 1)
      {
        v126 = sub_1ABA7BBEC(v121);
        sub_1ABADE33C(v126, v122 + 1, 1);
        v101 = v187;
      }

      ++v100;
      *(v101 + 16) = v122 + 1;
      sub_1ABA7AD90();
      sub_1ABB5E1C0(v74, v101 + v123 + *(v124 + 72) * v122);
      v125 = v185;
    }

    while (v96 != v100);

    v127 = *(v176 + 8);
    v128 = v177;
    v127(v181, v177);
    v127(v180, v128);
    v129 = sub_1ABA8C7FC();
    v130(v129, v178);
    v131 = sub_1ABA8D2A8();
    v132 = v179;
    v127(v131, v179);
    v127(v155, v132);
    v133 = *(v151 + 8);
    v133(v125, v152);
    v134 = sub_1ABA7BE8C();
    (v133)(v134);
    v92 = v175;
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_1ABDA2AD0()
{
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4D15B0, &qword_1ABF33740);
  sub_1ABA7BB64();
  v93 = v3;
  v94 = v2;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7FBE0();
  v92 = v5;
  sub_1ABAD219C(&qword_1EB4D1680, &qword_1ABF33810);
  sub_1ABA7BB64();
  v90 = v7;
  v91 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7FBE0();
  v89 = v9;
  v95 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  sub_1ABA7BB64();
  v88 = v10;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7FBE0();
  v86 = v12;
  v13 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BB64();
  v15 = v14;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v86 - v17;
  v106 = 0;
  v107 = 0xE000000000000000;
  sub_1ABF24AB4();
  v108 = v106;
  v109 = v107;
  MEMORY[0x1AC5A9410](0xD000000000000022, 0x80000001ABF8F550);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABF24344();
  MEMORY[0x1AC5A9410](0x6D6954646E650A20, 0xEB00000000203A65);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABF24344();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8F580);
  sub_1ABA7EF0C();
  swift_beginAccess();
  v19 = *(v15 + 16);
  v20 = sub_1ABDBFACC();
  v19(v20);
  sub_1ABAA01F4();
  v97 = v21;
  sub_1ABD1044C(v22);
  sub_1ABF24FF4();
  sub_1ABDBFAB4();

  v23 = *(v15 + 8);
  v23(v18, v13);
  sub_1ABA9FC74();
  MEMORY[0x1AC5A9410](v24 + 2, v25 | 0x8000000000000000);
  sub_1ABA7EF0C();
  swift_beginAccess();
  v26 = sub_1ABDBFACC();
  v19(v26);
  v96 = v13;
  sub_1ABF24FF4();
  sub_1ABAA91E0();

  v23(v18, v13);
  sub_1ABA890BC();
  v98 = v13 - 3;
  MEMORY[0x1AC5A9410]();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDB4878();

  sub_1ABF23984();
  sub_1ABA9F8B8();
  v27 = sub_1ABA8AF68();
  MEMORY[0x1AC5A9410](v27);

  v87 = v13 - 5;
  MEMORY[0x1AC5A9410]();
  v28 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_durationInSeconds;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v29 = v88;
  v30 = v88 + 16;
  v31 = *(v88 + 16);
  v31(v86, v1 + v28, v95);
  sub_1ABD1044C(&unk_1EB4D9630);
  sub_1ABAA3928();
  sub_1ABF24FF4();
  sub_1ABDBFAB4();

  v32 = *(v29 + 8);
  v33 = sub_1ABA97F40();
  v32(v33);
  sub_1ABA9FC74();
  v88 = v34 - 2;
  MEMORY[0x1AC5A9410]();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v35 = sub_1ABDBFACC();
  (v31)(v35);
  sub_1ABF24FF4();
  sub_1ABAA91E0();

  v36 = sub_1ABA97F40();
  v32(v36);
  sub_1ABA890BC();
  MEMORY[0x1AC5A9410](v30 + 6, v37 | 0x8000000000000000);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDB48CC();

  v38 = v96;
  v39 = sub_1ABF23984();
  v41 = v40;

  MEMORY[0x1AC5A9410](v39, v41);

  MEMORY[0x1AC5A9410](v30 + 4, 0x80000001ABF8F640);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDB4920();

  v42 = v38;
  v43 = sub_1ABF23984();
  v45 = v44;

  MEMORY[0x1AC5A9410](v43, v45);

  MEMORY[0x1AC5A9410](0xD00000000000001DLL, 0x80000001ABF8F660);
  sub_1ABA7EF0C();
  swift_beginAccess();
  v86 = sub_1ABDB4974();

  sub_1ABF23984();
  sub_1ABDBF9FC();
  v46 = sub_1ABA8B114();
  MEMORY[0x1AC5A9410](v46);

  MEMORY[0x1AC5A9410](0xD000000000000019, 0x80000001ABF8F680);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA89174();
  sub_1ABF23984();
  sub_1ABDBF9FC();
  v47 = sub_1ABA8B114();
  MEMORY[0x1AC5A9410](v47);

  sub_1ABA8C9B8();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA89174();
  sub_1ABF23984();
  sub_1ABA9F8B8();
  v48 = sub_1ABA8AF68();
  MEMORY[0x1AC5A9410](v48);

  MEMORY[0x1AC5A9410](0xD000000000000018, 0x80000001ABF8F6C0);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDB49C8();

  sub_1ABF23984();
  sub_1ABA9F8B8();
  v49 = sub_1ABA8AF68();
  MEMORY[0x1AC5A9410](v49);

  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8F6E0);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDB4A1C();

  sub_1ABF23984();
  sub_1ABDBF9FC();
  v50 = sub_1ABA8B114();
  MEMORY[0x1AC5A9410](v50);

  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8F700);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDB4A70();

  sub_1ABDBFB44();
  sub_1ABF23984();

  v51 = sub_1ABA8EF78();
  MEMORY[0x1AC5A9410](v51);

  sub_1ABA7F0D0();
  MEMORY[0x1AC5A9410](v98);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA89174();
  sub_1ABF23984();

  v52 = sub_1ABA894A0();
  MEMORY[0x1AC5A9410](v52);

  sub_1ABA8C9B8();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA89174();
  sub_1ABF23984();
  sub_1ABA9F8B8();
  v53 = sub_1ABA8AF68();
  MEMORY[0x1AC5A9410](v53);

  sub_1ABA8C9B8();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA89174();
  sub_1ABF23984();
  sub_1ABA9F8B8();
  v54 = sub_1ABA8AF68();
  MEMORY[0x1AC5A9410](v54);

  sub_1ABA890BC();
  MEMORY[0x1AC5A9410](v42 + 2, v55 | 0x8000000000000000);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA89174();
  sub_1ABF23984();
  sub_1ABA9F8B8();
  v56 = sub_1ABA8AF68();
  MEMORY[0x1AC5A9410](v56);

  MEMORY[0x1AC5A9410](v42 - 6, 0x80000001ABF8F7A0);
  v57 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_averageSpeedInMetersPerSecond;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v59 = v89;
  v58 = v90;
  v60 = v91;
  (*(v90 + 16))(v89, v1 + v57, v91);
  sub_1ABD1044C(&unk_1EB4D9668);
  sub_1ABF24FF4();
  sub_1ABAA91E0();

  (*(v58 + 8))(v59, v60);
  MEMORY[0x1AC5A9410](0x65726F63730A202CLL, 0xEA0000000000203ALL);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABF24344();
  MEMORY[0x1AC5A9410](0x65676173750A202CLL, 0xED0000203A68774BLL);
  v61 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_usageKwh;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v62 = v93;
  v63 = *(v93 + 16);
  v63(v92, v1 + v61, v94);
  sub_1ABD1044C(&unk_1EB4D9670);
  sub_1ABAA3928();
  sub_1ABF24FF4();
  sub_1ABDBFAB4();

  v64 = *(v62 + 8);
  v65 = sub_1ABA97F40();
  v64(v65);
  sub_1ABA7F0D0();
  MEMORY[0x1AC5A9410](v98);
  sub_1ABA7EF0C();
  swift_beginAccess();
  v66 = sub_1ABDBFACC();
  (v63)(v66);
  sub_1ABAA3928();
  sub_1ABF24FF4();
  sub_1ABAA91E0();

  v67 = sub_1ABA97F40();
  v64(v67);
  sub_1ABA7F0D0();
  v68 = v88;
  MEMORY[0x1AC5A9410](v88);
  v69 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numBrakingEvents;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v105 = *(v1 + v69);
  sub_1ABA894EC();
  sub_1ABF24FF4();
  sub_1ABDBFAB4();

  sub_1ABA9FC74();
  MEMORY[0x1AC5A9410](v70 - 4, v71 | 0x8000000000000000);
  v72 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numAccelEvents;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v104 = *(v1 + v72);
  sub_1ABA894EC();
  sub_1ABF24FF4();
  sub_1ABDBFAB4();

  sub_1ABA8C9B8();
  v73 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numHighSpeedEvents;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v103 = *(v1 + v73);
  sub_1ABA894EC();
  sub_1ABF24FF4();
  sub_1ABAA91E0();

  sub_1ABA7F0D0();
  v74 = v87;
  MEMORY[0x1AC5A9410]();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA89174();
  sub_1ABF23984();
  sub_1ABDBFA18();
  sub_1ABAAD2A0();

  sub_1ABA7F0D0();
  MEMORY[0x1AC5A9410](v68);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA89174();
  sub_1ABAD219C(&qword_1EB4D16C0, &qword_1ABF33850);
  sub_1ABA8C744();
  sub_1ABF23984();
  sub_1ABDBFA18();
  sub_1ABAAD2A0();

  sub_1ABA8C9B8();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA89174();
  sub_1ABAD219C(&qword_1EB4D16E0, &qword_1ABF33870);
  sub_1ABA8C744();
  sub_1ABF23984();
  sub_1ABDBFA18();
  sub_1ABAAD2A0();

  MEMORY[0x1AC5A9410](0x5464616F720A202CLL, 0xEE00203A73656D69);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA89174();
  sub_1ABF23984();

  v75 = sub_1ABA894EC();
  MEMORY[0x1AC5A9410](v75);

  sub_1ABA9FC74();
  MEMORY[0x1AC5A9410](v76 + 7, v77 | 0x8000000000000000);
  v78 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_route;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v79 = *(v1 + v78);
  if (v79)
  {
    v80 = *(v79 + 16);
  }

  else
  {
    v80 = 0;
  }

  v101 = v80;
  v102 = v79 == 0;
  sub_1ABAD219C(&qword_1EB4D4C68, &unk_1ABF478A0);
  v81 = sub_1ABF23C74();
  MEMORY[0x1AC5A9410](v81);

  sub_1ABA7F0D0();
  MEMORY[0x1AC5A9410](v74);
  v82 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_lifeEventIds;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v100[0] = *(v1 + v82);

  sub_1ABAD219C(&qword_1EB4D9678, &qword_1ABF613B8);
  sub_1ABF23C74();
  sub_1ABAA91E0();

  sub_1ABA7F0D0();
  MEMORY[0x1AC5A9410](v74);
  v83 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_ktsSegmentIds;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v99 = *(v1 + v83);

  v84 = sub_1ABF23C74();
  MEMORY[0x1AC5A9410](v84);

  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return v108;
}

uint64_t sub_1ABDA3B58(uint64_t a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4D15B0, &qword_1ABF33740);
  sub_1ABA7BB64();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7AC18();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA972D4();
  v133 = v11;
  sub_1ABAD219C(&qword_1EB4D1680, &qword_1ABF33810);
  sub_1ABA7BB64();
  v136 = v13;
  v137 = v12;
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7C068();
  v135 = v14;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA972D4();
  v134 = v16;
  sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  sub_1ABA7BB64();
  v140 = v17;
  v141 = v18;
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7C068();
  v139 = v19;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA972D4();
  v138 = v21;
  v22 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BB64();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7AC18();
  v28 = (v26 - v27);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v127 - v30;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v32 = *(v1 + 16);
  sub_1ABA7EF0C();
  swift_beginAccess();
  if (v32 != *(a1 + 16))
  {
    goto LABEL_26;
  }

  sub_1ABA7EF0C();
  swift_beginAccess();
  v33 = *(v1 + 24);
  sub_1ABA7EF0C();
  swift_beginAccess();
  if (v33 != *(a1 + 24))
  {
    goto LABEL_26;
  }

  v127 = v9;
  v128 = v5;
  v129 = v3;
  v34 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceInMeters;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v35 = *(v24 + 16);
  v132 = v1;
  v35(v31, v1 + v34, v22);
  v36 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceInMeters;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v131 = v35;
  v35(v28, a1 + v36, v22);
  sub_1ABAFF390(0, &qword_1EB4CE6D8, 0x1E696B058);
  sub_1ABA8EF78();
  LOBYTE(v36) = sub_1ABF21894();
  v37 = *(v24 + 8);
  v38 = sub_1ABA8C53C();
  v37(v38);
  v39 = sub_1ABA8A354();
  v37(v39);
  if ((v36 & 1) == 0)
  {
    goto LABEL_26;
  }

  v40 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_elevationGainInMeters;
  v130 = a1;
  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v41 = v130;
  v131(v31, a1 + v40, v22);
  v42 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_elevationGainInMeters;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v131(v28, v41 + v42, v22);
  sub_1ABA8EF78();
  LOBYTE(v42) = sub_1ABF21894();
  v43 = sub_1ABA8C53C();
  v37(v43);
  v44 = sub_1ABA8A354();
  v37(v44);
  if ((v42 & 1) == 0)
  {
    goto LABEL_26;
  }

  v45 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_durationInSeconds;
  v46 = v132;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v48 = v140;
  v47 = v141;
  v49 = v130;
  v50 = *(v141 + 16);
  v51 = v138;
  v50(v138, v46 + v45, v140);
  v52 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_durationInSeconds;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v53 = v49 + v52;
  v54 = v50;
  v55 = v139;
  v54(v139, v53, v48);
  sub_1ABAFF390(0, &qword_1EB4CE6B8, 0x1E696B008);
  LOBYTE(v52) = sub_1ABF21894();
  v58 = *(v47 + 8);
  v57 = v47 + 8;
  v56 = v58;
  v58(v55, v48);
  v59 = sub_1ABA82ED0();
  (v58)(v59);
  if ((v52 & 1) == 0)
  {
    goto LABEL_26;
  }

  v141 = v57;
  v60 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_expectedDurationInSecondsNoTraffic;
  v61 = v51;
  v62 = v132;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v63 = v62 + v60;
  v64 = v130;
  v54(v61, v63, v48);
  v65 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_expectedDurationInSecondsNoTraffic;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v54(v55, v64 + v65, v48);
  sub_1ABA894A0();
  LOBYTE(v65) = sub_1ABF21894();
  v56(v55, v48);
  v66 = sub_1ABA95870();
  (v56)(v66);
  if ((v65 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBF9E4();

  sub_1ABA7E79C();
  sub_1ABB599B8();
  sub_1ABA89CAC();

  if ((v56 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBF9E4();

  sub_1ABA7E79C();
  sub_1ABB59C20();
  sub_1ABA89CAC();

  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBF9E4();

  sub_1ABA7E79C();
  sub_1ABB59E88();
  sub_1ABA89CAC();

  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBF9E4();

  sub_1ABA7E79C();
  sub_1ABB5A0F0();
  sub_1ABA89CAC();

  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBF9E4();

  sub_1ABA7E79C();
  sub_1ABB5A358();
  sub_1ABA89CAC();

  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBF9E4();

  sub_1ABA7E79C();
  sub_1ABB5A5C0();
  sub_1ABA89CAC();

  v67 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_averageSpeedInMetersPerSecond;
  v68 = v132;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v69 = v136;
  v70 = v136 + 16;
  v71 = *(v136 + 16);
  v72 = v68 + v67;
  v73 = v134;
  v74 = v137;
  v71(v134, v72, v137);
  v75 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_averageSpeedInMetersPerSecond;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v76 = v64 + v75;
  v77 = v135;
  v71(v135, v76, v74);
  sub_1ABAFF390(0, &qword_1EB4CE6F0, 0x1E696B078);
  sub_1ABA82DAC();
  LOBYTE(v67) = sub_1ABF21894();
  v78 = *(v69 + 8);
  v78(v77, v74);
  v78(v73, v74);
  if ((v67 & 1) == 0)
  {
    goto LABEL_26;
  }

  v79 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v80 = *(v70 + v79);
  v81 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
  v82 = v130;
  sub_1ABA7EF0C();
  swift_beginAccess();
  if (v80 != *(v82 + v81))
  {
    goto LABEL_26;
  }

  v83 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_usageKwh;
  v84 = v132;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v85 = v128;
  v86 = v129;
  v87 = *(v128 + 16);
  v88 = v133;
  v87(v133, v84 + v83, v129);
  v89 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_usageKwh;
  sub_1ABDBFB7C();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v90 = v127;
  v87(v127, v83 + v89, v86);
  v91 = sub_1ABAFF390(0, &qword_1EB4CE6E0, 0x1E696B030);
  sub_1ABA7BC4C();
  LOBYTE(v89) = sub_1ABF21894();
  v92 = *(v85 + 8);
  v93 = sub_1ABDBFBAC();
  v92(v93);
  v94 = sub_1ABA95870();
  v92(v94);
  if ((v89 & 1) == 0)
  {
    goto LABEL_26;
  }

  v141 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_optimalUsageKwh;
  v95 = v132;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v87(v88, v95 + v141, v86);
  v96 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_optimalUsageKwh;
  v141 = v87;
  v97 = v130;
  sub_1ABA7EF0C();
  swift_beginAccess();
  (v141)(v90, v97 + v96, v86);
  sub_1ABA7BC4C();
  LOBYTE(v96) = sub_1ABF21894();
  v98 = sub_1ABDBFBAC();
  v92(v98);
  v99 = sub_1ABA95870();
  v92(v99);
  if ((v96 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA9F024();
  if (!v100)
  {
    goto LABEL_26;
  }

  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA9F024();
  if (!v100)
  {
    goto LABEL_26;
  }

  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA9F024();
  if (!v100)
  {
    goto LABEL_26;
  }

  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA88C9C();

  sub_1ABA7E79C();
  sub_1ABB5A828();
  sub_1ABA89CAC();

  if ((v90 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA88C9C();

  v101 = sub_1ABA7E79C();
  sub_1ABB5AB38(v101, v102);
  sub_1ABA89CAC();

  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA88C9C();

  v103 = sub_1ABA7E79C();
  sub_1ABB5AB50(v103, v104);
  sub_1ABA89CAC();

  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA88C9C();

  sub_1ABA7E79C();
  sub_1ABB5ACA8();
  sub_1ABA89CAC();

  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA88C9C();

  sub_1ABA7E79C();
  sub_1ABB5AFB8();
  sub_1ABA89CAC();

  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA88C9C();

  sub_1ABA7E79C();
  sub_1ABB5B220();
  sub_1ABA89CAC();

  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA88C9C();

  sub_1ABA7E79C();
  sub_1ABB5B488();
  sub_1ABA89CAC();

  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA88C9C();

  sub_1ABA7E79C();
  sub_1ABB5B6F0();
  sub_1ABA89CAC();

  v105 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_route;
  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v106 = *(v91 + v105);
  v107 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_route;
  v108 = v130;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v109 = *(v108 + v107);
  if (!v106)
  {
    if (!v109)
    {
      goto LABEL_22;
    }

LABEL_26:
    v125 = 0;
    return v125 & 1;
  }

  if (!v109)
  {
    goto LABEL_26;
  }

  sub_1ABB494DC(v110, v109, v111, v112, v113, v114, v115, v116, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
  v118 = v117;

  if ((v118 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_22:
  v119 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_lifeEventIds;
  v120 = v132;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v121 = *(v120 + v119);
  v122 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_lifeEventIds;
  v123 = v130;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v124 = *(v123 + v122);
  v125 = (v121 | v124) == 0;
  if (v121 && v124)
  {
    v125 = sub_1ABB4F410();
  }

  return v125 & 1;
}

uint64_t static KTSDataRepresentation.== infix(_:_:)(uint64_t a1, void *a2)
{
  if (*a1 == *a2)
  {
    return (*(*a1 + 1160))(a2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABDA4AA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D6954646E65 && a2 == 0xE700000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001ABF8FFF0 == a2;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65636E6174736964 && a2 == 0xEF7374656B637542;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x80000001ABF90020 == a2;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x80000001ABF90040 == a2;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000022 && 0x80000001ABF90060 == a2;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000001DLL && 0x80000001ABF90090 == a2;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000019 && 0x80000001ABF900B0 == a2;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD00000000000001BLL && 0x80000001ABF900D0 == a2;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000017 && 0x80000001ABF900F0 == a2;
                      if (v15 || (sub_1ABF25054() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001DLL && 0x80000001ABF90110 == a2;
                        if (v16 || (sub_1ABF25054() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000019 && 0x80000001ABF90130 == a2;
                          if (v17 || (sub_1ABF25054() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD00000000000001DLL && 0x80000001ABF90150 == a2;
                            if (v18 || (sub_1ABF25054() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
                              if (v19 || (sub_1ABF25054() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x68774B6567617375 && a2 == 0xE800000000000000;
                                if (v20 || (sub_1ABF25054() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x556C616D6974706FLL && a2 == 0xEF68774B65676173;
                                  if (v21 || (sub_1ABF25054() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000010 && 0x80000001ABF90190 == a2;
                                    if (v22 || (sub_1ABF25054() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x6C656363416D756ELL && a2 == 0xEE0073746E657645;
                                      if (v23 || (sub_1ABF25054() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000012 && 0x80000001ABF901B0 == a2;
                                        if (v24 || (sub_1ABF25054() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000015 && 0x80000001ABF901D0 == a2;
                                          if (v25 || (sub_1ABF25054() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000010 && 0x80000001ABF901F0 == a2;
                                            if (v26 || (sub_1ABF25054() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000018 && 0x80000001ABF90210 == a2;
                                              if (v27 || (sub_1ABF25054() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x656D695464616F72 && a2 == 0xE900000000000073;
                                                if (v28 || (sub_1ABF25054() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000013 && 0x80000001ABF90240 == a2;
                                                  if (v29 || (sub_1ABF25054() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD000000000000016 && 0x80000001ABF90260 == a2;
                                                    if (v30 || (sub_1ABF25054() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD000000000000016 && 0x80000001ABF90280 == a2;
                                                      if (v31 || (sub_1ABF25054() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x52726550656D6974 && a2 == 0xEF6570795464616FLL;
                                                        if (v32 || (sub_1ABF25054() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD000000000000012 && 0x80000001ABF902B0 == a2;
                                                          if (v33 || (sub_1ABF25054() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000012 && 0x80000001ABF902D0 == a2;
                                                            if (v34 || (sub_1ABF25054() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0x6574756F72 && a2 == 0xE500000000000000;
                                                              if (v35 || (sub_1ABF25054() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0x6E6576456566696CLL && a2 == 0xEC00000073644974;
                                                                if (v36 || (sub_1ABF25054() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else if (a1 == 0x656D67655373746BLL && a2 == 0xED0000736449746ELL)
                                                                {

                                                                  return 32;
                                                                }

                                                                else
                                                                {
                                                                  v38 = sub_1ABF25054();

                                                                  if (v38)
                                                                  {
                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    return 33;
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ABDA54C4(char a1)
{
  result = 0x6D69547472617473;
  switch(a1)
  {
    case 1:
      return 0x656D6954646E65;
    case 2:
      return 0xD000000000000010;
    case 3:
      return 0x65636E6174736964;
    case 4:
    case 20:
      v4 = 5;
      return v4 | 0xD000000000000010;
    case 5:
      return 0xD000000000000011;
    case 6:
      return 0xD000000000000022;
    case 7:
    case 11:
    case 13:
      v4 = 13;
      return v4 | 0xD000000000000010;
    case 8:
    case 12:
      v4 = 9;
      return v4 | 0xD000000000000010;
    case 9:
      v4 = 11;
      return v4 | 0xD000000000000010;
    case 10:
      return 0xD000000000000017;
    case 14:
      v3 = 1919902579;
      goto LABEL_24;
    case 15:
      return 0x68774B6567617375;
    case 16:
      return 0x556C616D6974706FLL;
    case 17:
      return 0xD000000000000010;
    case 18:
      return 0x6C656363416D756ELL;
    case 19:
    case 28:
    case 29:
      return 0xD000000000000012;
    case 21:
      return 0xD000000000000010;
    case 22:
      return 0xD000000000000018;
    case 23:
      return 0x656D695464616F72;
    case 24:
      return 0xD000000000000013;
    case 25:
    case 26:
      return 0xD000000000000016;
    case 27:
      return 0x52726550656D6974;
    case 30:
      v3 = 1953853298;
LABEL_24:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 31:
      result = 0x6E6576456566696CLL;
      break;
    case 32:
      result = 0x656D67655373746BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABDA5830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABDA4AA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABDA5858@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABDA54BC();
  *a1 = result;
  return result;
}

uint64_t sub_1ABDA5880(uint64_t a1)
{
  v2 = sub_1ABDB4AC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABDA58BC(uint64_t a1)
{
  v2 = sub_1ABDB4AC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t KTSDataRepresentation.deinit()
{
  sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BBB0();
  v2 = *(v1 + 8);
  v3 = sub_1ABAB5B2C();
  v2(v3);

  v4 = sub_1ABA8A56C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_elevationGainInMeters);
  v2(v4);
  sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  sub_1ABA7BBB0();
  v6 = *(v5 + 8);
  v7 = sub_1ABAB5B2C();
  v6(v7);
  v8 = sub_1ABA8A56C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_expectedDurationInSecondsNoTraffic);
  v6(v8);

  v9 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_averageSpeedInMetersPerSecond;
  sub_1ABAD219C(&qword_1EB4D1680, &qword_1ABF33810);
  sub_1ABA7BBB0();
  (*(v10 + 8))(v0 + v9);
  sub_1ABAD219C(&qword_1EB4D15B0, &qword_1ABF33740);
  sub_1ABA7BBB0();
  v12 = *(v11 + 8);
  v13 = sub_1ABAB5B2C();
  v12(v13);
  v14 = sub_1ABA8A56C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_optimalUsageKwh);
  v12(v14);

  return v0;
}

void sub_1ABDA5BD8()
{
  sub_1ABA7BCA8();
  v115 = v1;
  v149 = v0;
  v3 = v2;
  sub_1ABAD219C(&qword_1EB4D15B0, &qword_1ABF33740);
  sub_1ABA7BB64();
  v104 = v4;
  v105 = v5;
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7C068();
  v102 = v6;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA972D4();
  v103 = v8;
  sub_1ABAD219C(&qword_1EB4D1680, &qword_1ABF33810);
  sub_1ABA7BB64();
  v107 = v10;
  v108 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7FBE0();
  v106 = v12;
  sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  sub_1ABA7BB64();
  v111 = v13;
  v112 = v14;
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7C068();
  v109 = v15;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA972D4();
  v110 = v17;
  sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BB64();
  v113 = v18;
  v114 = v19;
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7AC18();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v96 - v24;
  v26 = sub_1ABAD219C(&qword_1EB4D9680, &unk_1ABF613C0);
  sub_1ABA7BB64();
  v28 = v27;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  v31 = v96 - v30;
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABDB4AC4();
  sub_1ABF252E4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v148[0] = 0;
  v32 = v115;
  sub_1ABF24F54();
  if (v32)
  {
    v33 = sub_1ABDBFBAC();
    v34(v33);
  }

  else
  {
    v100 = v22;
    v35 = v114;
    v115 = v28;
    sub_1ABA7EF0C();
    swift_beginAccess();
    v147[0] = 1;
    sub_1ABF24F54();
    v101 = 0;
    v36 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceInMeters;
    sub_1ABA7EF0C();
    swift_beginAccess();
    v98 = v31;
    v37 = v35[2];
    v38 = v149 + v36;
    v39 = v25;
    v40 = v113;
    v37(v25, v38, v113);
    v146[0] = 2;
    sub_1ABA8E394();
    v42 = sub_1ABD1044C(v41);
    v99 = v26;
    v43 = v101;
    sub_1ABF24F84();
    v101 = v43;
    if (v43)
    {
      v44 = sub_1ABA894EC();
      v45(v44);
      v46 = sub_1ABA8B474();
      v47(v46, v99);
    }

    else
    {
      v96[1] = v42;
      v96[2] = v35 + 2;
      v97 = v37;
      v48 = v39;
      v49 = v35[1];
      (v49)(v48, v40);
      v50 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceBuckets;
      sub_1ABA7EF0C();
      swift_beginAccess();
      v145[0] = *(v149 + v50);
      v144 = 3;
      sub_1ABAD219C(&qword_1EB4D1700, &qword_1ABF33890);
      sub_1ABDB4B18();
      v51 = v101;
      sub_1ABF24F84();
      if (v51)
      {
        v52 = sub_1ABA8B474();
        v54 = v99;
      }

      else
      {
        v55 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_elevationGainInMeters;
        sub_1ABA7EF0C();
        swift_beginAccess();
        v97(v100, v149 + v55, v40);
        v144 = 4;
        sub_1ABF24F84();
        v56 = sub_1ABA894EC();
        v49(v56);
        v57 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_durationInSeconds;
        sub_1ABA7EF0C();
        swift_beginAccess();
        v59 = v111;
        v58 = v112;
        v114 = *(v112 + 16);
        (v114)(v110, v149 + v57, v111);
        v143[0] = 5;
        sub_1ABA8E394();
        sub_1ABD1044C(v60);
        sub_1ABF24F84();
        v61 = *(v58 + 8);
        v112 = v58 + 8;
        v113 = v61;
        v62 = sub_1ABA8B114();
        v63(v62);
        v64 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_expectedDurationInSecondsNoTraffic;
        sub_1ABA7EF0C();
        swift_beginAccess();
        v65 = v109;
        (v114)(v109, v149 + v64, v59);
        v142[0] = 6;
        sub_1ABF24F84();
        v113(v65, v59);
        v66 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentInTrafficBuckets;
        sub_1ABA7EF0C();
        swift_beginAccess();
        v141[3] = *(v149 + v66);
        LOBYTE(v141[0]) = 7;
        sub_1ABAD219C(&qword_1EB4D16A0, &qword_1ABF33830);
        sub_1ABDB4BF8();
        sub_1ABF24F84();
        v67 = v115;
        v68 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentInTrafficBuckets;
        sub_1ABA7EF0C();
        swift_beginAccess();
        v141[0] = *(v149 + v68);
        LOBYTE(v140[0]) = 8;
        sub_1ABAD219C(&qword_1EB4D1690, &qword_1ABF33820);
        sub_1ABDB4D04();
        sub_1ABA89E0C(v141, v140);
        v69 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtSpeedBuckets;
        sub_1ABA7EF0C();
        swift_beginAccess();
        v140[0] = *(v149 + v69);
        LOBYTE(v139[0]) = 9;
        sub_1ABAD219C(&qword_1EB4D16C0, &qword_1ABF33850);
        sub_1ABDB4DBC();
        sub_1ABA89E0C(v140, v139);
        v70 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentAtSpeedBuckets;
        sub_1ABA7EF0C();
        swift_beginAccess();
        v139[0] = *(v149 + v70);
        LOBYTE(v138[0]) = 10;
        sub_1ABAD219C(&qword_1EB4D16B0, &qword_1ABF33840);
        sub_1ABDB4EC8();
        sub_1ABA89E0C(v139, v138);
        v71 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtRelativeSpeeds;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v138[0] = *(v67 + v71);
        LOBYTE(v137) = 11;
        sub_1ABAD219C(&qword_1EB4D16E0, &qword_1ABF33870);
        sub_1ABDB4F80();
        sub_1ABA7AE08();
        sub_1ABF24F84();
        v72 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentAtRelativeSpeeds;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v137 = *(v67 + v72);
        v136[0] = 12;
        sub_1ABAD219C(&qword_1EB4D16D0, &qword_1ABF33860);
        sub_1ABDB508C();
        sub_1ABA7AE08();
        sub_1ABF24F84();
        v73 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_averageSpeedInMetersPerSecond;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        (*(v107 + 16))(v106, v67 + v73, v108);
        v136[0] = 13;
        sub_1ABA8E394();
        sub_1ABD1044C(v74);
        sub_1ABF24F84();
        (*(v107 + 8))(v106, v108);
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v135[0] = 14;
        sub_1ABF24F54();
        v75 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_usageKwh;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v76 = *(v105 + 16);
        v76(v103, v67 + v75, v104);
        v134[0] = 15;
        sub_1ABA8E394();
        v78 = sub_1ABD1044C(v77);
        sub_1ABF24F84();
        v79 = v104;
        v80 = *(v105 + 8);
        v105 += 8;
        v114 = v80;
        (v80)(v103, v104);
        v81 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_optimalUsageKwh;
        sub_1ABA7EF0C();
        swift_beginAccess();
        v76(v102, v149 + v81, v79);
        v133 = 16;
        sub_1ABA8BB48();
        sub_1ABF24F84();
        (v114)(v102, v104);
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v132 = 17;
        sub_1ABF24F74();
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v131[0] = 18;
        sub_1ABF24F74();
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v130[0] = 19;
        sub_1ABF24F74();
        v82 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadDistancesInMeters;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v129 = *(v78 + v82);
        LOBYTE(v128) = 20;
        sub_1ABAD219C(&qword_1EB4D15A0, &qword_1ABF33730);
        sub_1ABDB5144();
        sub_1ABA7AE08();
        sub_1ABF24F84();
        v83 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadSpeedBuckets;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v128 = *(v78 + v83);
        LOBYTE(v127) = 21;
        sub_1ABAD219C(&qword_1EB4D1590, &qword_1ABF33720);
        sub_1ABDB5F78(&unk_1EB4D9710);
        sub_1ABA7AE08();
        sub_1ABF24F84();
        v84 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadRelativeSpeedBuckets;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v127 = *(v78 + v84);
        LOBYTE(v126) = 22;
        sub_1ABAD219C(&qword_1EB4D1580, &qword_1ABF33710);
        sub_1ABDB51FC(&unk_1EB4D9718);
        sub_1ABA7AE08();
        sub_1ABF24F84();
        v85 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadTimes;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v126 = *(v78 + v85);
        LOBYTE(v125) = 23;
        sub_1ABAD219C(&qword_1EB4D1570, &qword_1ABF33700);
        sub_1ABDB5270();
        sub_1ABA7AE08();
        sub_1ABF24F84();
        v86 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerRoadType;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v125 = *(v78 + v86);
        LOBYTE(v124) = 24;
        sub_1ABAD219C(&qword_1EB4D1670, &qword_1ABF33800);
        sub_1ABDB5328();
        sub_1ABA7AE08();
        sub_1ABF24F84();
        v87 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerWeatherType;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v124 = *(v78 + v87);
        LOBYTE(v123) = 25;
        sub_1ABAD219C(&qword_1EB4D1650, &qword_1ABF337E0);
        sub_1ABDB5434();
        sub_1ABA7AE08();
        sub_1ABF24F84();
        v88 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerTerrainType;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v123 = *(v78 + v88);
        LOBYTE(v122) = 26;
        sub_1ABAD219C(&qword_1EB4D1660, &qword_1ABF337F0);
        sub_1ABDB5540();
        sub_1ABA7AE08();
        sub_1ABF24F84();
        v89 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerRoadType;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v122 = *(v78 + v89);
        LOBYTE(v121) = 27;
        sub_1ABAD219C(&qword_1EB4D1640, &qword_1ABF337D0);
        sub_1ABDB564C();
        sub_1ABA7AE08();
        sub_1ABF24F84();
        v90 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerWeatherType;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v121 = *(v78 + v90);
        LOBYTE(v120) = 28;
        sub_1ABAD219C(&qword_1EB4D1620, &qword_1ABF337B0);
        sub_1ABDB5704();
        sub_1ABA7AE08();
        sub_1ABF24F84();
        v91 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerTerrainType;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v120 = *(v78 + v91);
        LOBYTE(v119) = 29;
        sub_1ABAD219C(&qword_1EB4D1630, &qword_1ABF337C0);
        sub_1ABDB57BC();
        sub_1ABA7AE08();
        sub_1ABF24F84();
        v92 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_route;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v119 = *(v78 + v92);
        LOBYTE(v118[0]) = 30;
        sub_1ABAD219C(&qword_1EB4D9770, &unk_1ABF613D0);
        sub_1ABDB65F0(&unk_1EB4D9778);
        sub_1ABA7AE08();
        sub_1ABF24F14();
        v93 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_lifeEventIds;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v118[0] = *(v78 + v93);
        LOBYTE(v117) = 31;
        sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
        sub_1ABDB66A4(&qword_1EB4D41A0);
        sub_1ABF24F14();
        v94 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_ktsSegmentIds;
        sub_1ABA7EF0C();
        swift_beginAccess();
        v117 = *(v149 + v94);
        v116 = 32;
        v95 = v99;
        sub_1ABF24F14();
        v52 = sub_1ABA8B474();
        v54 = v95;
      }

      v53(v52, v54);
    }
  }

  sub_1ABA7BC90();
}

void KTSDataRepresentation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  v141 = v21;
  v23 = v22;
  v132 = sub_1ABAD219C(&qword_1EB4D15B0, &qword_1ABF33740);
  sub_1ABA7BB64();
  v131 = v24;
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7C068();
  v127 = v26;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA972D4();
  sub_1ABA8147C(v28);
  v134 = sub_1ABAD219C(&qword_1EB4D1680, &qword_1ABF33810);
  sub_1ABA7BB64();
  v133 = v29;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v31);
  sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  sub_1ABA7BB64();
  v135 = v33;
  v136 = v32;
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA7C068();
  v130 = v34;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v115 - v36;
  v38 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BB64();
  v137 = v39;
  MEMORY[0x1EEE9AC00](v40);
  sub_1ABA7AC18();
  v43 = v41 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v115 - v45;
  sub_1ABAD219C(&qword_1EB4D9788, &unk_1ABF613E0);
  sub_1ABA7BB64();
  v138 = v48;
  v139 = v47;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v115 - v50;
  v142 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_route;
  *(v20 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_route) = 0;
  v143 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_lifeEventIds;
  *(v20 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_lifeEventIds) = 0;
  v144 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_ktsSegmentIds;
  v145 = v23;
  v146 = v20;
  *(v20 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_ktsSegmentIds) = 0;
  sub_1ABA93E20(v23, v23[3]);
  sub_1ABDB4AC4();
  v140 = v51;
  v52 = v141;
  sub_1ABF252C4();
  if (v52)
  {
    v55 = v145;
    goto LABEL_4;
  }

  v53 = v46;
  v54 = v43;
  v126 = v38;
  LOBYTE(v149) = 0;
  sub_1ABF24E34();
  v57 = v146;
  *(v146 + 16) = v58;
  LOBYTE(v149) = 1;
  sub_1ABF24E34();
  *(v57 + 24) = v59;
  LOBYTE(v149) = 2;
  sub_1ABAA41CC(&unk_1EB4D9790, &qword_1EB4D1710, &qword_1ABF338A0);
  v60 = v126;
  sub_1ABF24E64();
  v141 = *(v137 + 32);
  v141(v57 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceInMeters, v53, v60);
  sub_1ABAD219C(&qword_1EB4D1700, &qword_1ABF33890);
  LOBYTE(v148) = 3;
  sub_1ABDB5894();
  sub_1ABAA4FD4();
  sub_1ABDBFBA0();
  sub_1ABF24E64();
  *(v57 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceBuckets) = v149;
  LOBYTE(v149) = 4;
  v61 = v54;
  v62 = v126;
  v116 = 0;
  sub_1ABF24E64();
  v141(v57 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_elevationGainInMeters, v61, v62);
  LOBYTE(v149) = 5;
  sub_1ABAA41CC(&unk_1EB4D97A8, &qword_1EB4D16F0, &qword_1ABF33880);
  v63 = v37;
  v64 = v136;
  sub_1ABDBFB30();
  sub_1ABF24E64();
  v76 = *(v135 + 32);
  (v76)(v57 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_durationInSeconds, v63, v64);
  LOBYTE(v149) = 6;
  v77 = v130;
  sub_1ABDBFB30();
  sub_1ABF24E64();
  (v76)(v57 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_expectedDurationInSecondsNoTraffic, v77, v64);
  sub_1ABAD219C(&qword_1EB4D16A0, &qword_1ABF33830);
  LOBYTE(v148) = 7;
  sub_1ABDB5974();
  sub_1ABAA4FD4();
  v78 = v139;
  sub_1ABDBFBA0();
  sub_1ABF24E64();
  v79 = v138;
  *(v57 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentInTrafficBuckets) = v149;
  sub_1ABAD219C(&qword_1EB4D1690, &qword_1ABF33820);
  LOBYTE(v148) = 8;
  sub_1ABDB5A80();
  sub_1ABAA4FD4();
  sub_1ABDBFBA0();
  sub_1ABF24E64();
  v141 = 0;
  *(v57 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentInTrafficBuckets) = v149;
  sub_1ABAD219C(&qword_1EB4D16C0, &qword_1ABF33850);
  LOBYTE(v148) = 9;
  sub_1ABDB5B38();
  sub_1ABAA4FD4();
  sub_1ABDBFBA0();
  v80 = v141;
  sub_1ABF24E64();
  v141 = v80;
  if (v80)
  {
    v81 = sub_1ABAA2DA8();
    v82(v81);
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 0;
    v122 = 0;
    sub_1ABA8F7F8();
    sub_1ABA90A50();
  }

  else
  {
    sub_1ABA8BD4C(v149);
    sub_1ABAD219C(&qword_1EB4D16B0, &qword_1ABF33840);
    LOBYTE(v148) = 10;
    sub_1ABDB5C44();
    sub_1ABAA4FD4();
    sub_1ABA96AAC();
    sub_1ABF24E64();
    v141 = 0;
    sub_1ABA8BD4C(v149);
    sub_1ABAD219C(&qword_1EB4D16E0, &qword_1ABF33870);
    LOBYTE(v148) = 11;
    sub_1ABDB5CFC();
    sub_1ABAA4FD4();
    sub_1ABA96AAC();
    sub_1ABF24E64();
    v141 = 0;
    sub_1ABA8BD4C(v149);
    sub_1ABAD219C(&qword_1EB4D16D0, &qword_1ABF33860);
    LOBYTE(v148) = 12;
    sub_1ABDB5E08();
    sub_1ABAA4FD4();
    sub_1ABA96AAC();
    sub_1ABF24E64();
    v141 = 0;
    sub_1ABA8BD4C(v149);
    LOBYTE(v149) = 13;
    sub_1ABAA41CC(&unk_1EB4D97F8, &qword_1EB4D1680, &qword_1ABF33810);
    v83 = v141;
    sub_1ABF24E64();
    v141 = v83;
    if (v83)
    {
      v84 = sub_1ABAA2DA8();
      v85(v84);
      v121 = 0;
      v122 = 0;
      sub_1ABA8F7F8();
      sub_1ABA80EE0();
    }

    else
    {
      (*(v133 + 32))(v146 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_averageSpeedInMetersPerSecond, v129, v134);
      sub_1ABDBF950(14);
      sub_1ABF24E34();
      v141 = 0;
      *(v146 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score) = v88;
      LOBYTE(v149) = 15;
      v79 = sub_1ABAA41CC(&unk_1EB4D9800, &qword_1EB4D15B0, &qword_1ABF33740);
      v89 = v141;
      sub_1ABF24E64();
      v141 = v89;
      if (v89)
      {
        v90 = sub_1ABAA2DA8();
        v91(v90);
        v122 = 0;
        sub_1ABA8F7F8();
        sub_1ABA80EE0();
        *(v92 - 256) = v86;
        v87 = &v150;
      }

      else
      {
        v78 = v131 + 32;
        v94 = *(v131 + 32);
        v95 = sub_1ABDBFB10(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_usageKwh);
        v94(v95, v128, v132);
        LOBYTE(v149) = 16;
        v96 = v141;
        sub_1ABF24E64();
        v141 = v96;
        if (!v96)
        {
          v99 = sub_1ABDBFB10(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_optimalUsageKwh);
          v94(v99, v127, v132);
          sub_1ABDBF950(17);
          v100 = sub_1ABF24E54();
          v141 = 0;
          *(v146 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numBrakingEvents) = v100;
          sub_1ABDBF950(18);
          v101 = sub_1ABF24E54();
          v141 = 0;
          *(v146 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numAccelEvents) = v101;
          sub_1ABDBF950(19);
          v102 = sub_1ABF24E54();
          v141 = 0;
          *(v146 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numHighSpeedEvents) = v102;
          sub_1ABAD219C(&qword_1EB4D15A0, &qword_1ABF33730);
          LOBYTE(v148) = 20;
          sub_1ABDB5EC0();
          sub_1ABAA4FD4();
          sub_1ABA96AAC();
          sub_1ABF24E64();
          v141 = 0;
          sub_1ABA8BD4C(v149);
          sub_1ABAD219C(&qword_1EB4D1590, &qword_1ABF33720);
          LOBYTE(v148) = 21;
          sub_1ABDB5F78(&unk_1EB4D9810);
          sub_1ABAA4FD4();
          sub_1ABA96AAC();
          sub_1ABF24E64();
          v141 = 0;
          sub_1ABA8BD4C(v149);
          sub_1ABAD219C(&qword_1EB4D1580, &qword_1ABF33710);
          LOBYTE(v148) = 22;
          sub_1ABDB51FC(&unk_1EB4D9818);
          sub_1ABAA4FD4();
          sub_1ABA96AAC();
          sub_1ABF24E64();
          v141 = 0;
          sub_1ABA8BD4C(v149);
          sub_1ABAD219C(&qword_1EB4D1570, &qword_1ABF33700);
          LOBYTE(v148) = 23;
          sub_1ABDB5FEC();
          sub_1ABAA4FD4();
          sub_1ABA96AAC();
          sub_1ABF24E64();
          v141 = 0;
          sub_1ABA8BD4C(v149);
          sub_1ABAD219C(&qword_1EB4D1670, &qword_1ABF33800);
          LOBYTE(v148) = 24;
          sub_1ABDB60A4();
          sub_1ABAA4FD4();
          sub_1ABA96AAC();
          sub_1ABF24E64();
          v141 = 0;
          sub_1ABA8BD4C(v149);
          sub_1ABAD219C(&qword_1EB4D1650, &qword_1ABF337E0);
          LOBYTE(v148) = 25;
          sub_1ABDB61B0();
          sub_1ABAA4FD4();
          sub_1ABA96AAC();
          sub_1ABF24E64();
          v141 = 0;
          sub_1ABA8BD4C(v149);
          sub_1ABAD219C(&qword_1EB4D1660, &qword_1ABF337F0);
          LOBYTE(v148) = 26;
          sub_1ABDB62BC();
          sub_1ABAA4FD4();
          sub_1ABA96AAC();
          sub_1ABF24E64();
          v141 = 0;
          sub_1ABA8BD4C(v149);
          sub_1ABAD219C(&qword_1EB4D1640, &qword_1ABF337D0);
          LOBYTE(v148) = 27;
          sub_1ABDB63C8();
          sub_1ABAA4FD4();
          sub_1ABA96AAC();
          sub_1ABF24E64();
          v141 = 0;
          sub_1ABA8BD4C(v149);
          sub_1ABAD219C(&qword_1EB4D1620, &qword_1ABF337B0);
          LOBYTE(v148) = 28;
          sub_1ABDB6480();
          sub_1ABAA4FD4();
          sub_1ABA96AAC();
          sub_1ABF24E64();
          v141 = 0;
          sub_1ABA8BD4C(v149);
          sub_1ABAD219C(&qword_1EB4D1630, &qword_1ABF337C0);
          LOBYTE(v148) = 29;
          sub_1ABDB6538();
          sub_1ABAA4FD4();
          sub_1ABA96AAC();
          sub_1ABF24E64();
          v141 = 0;
          sub_1ABA8BD4C(v149);
          sub_1ABAD219C(&qword_1EB4D9770, &unk_1ABF613D0);
          LOBYTE(v149) = 30;
          sub_1ABDB65F0(&unk_1EB4D9870);
          sub_1ABA96AAC();
          sub_1ABF24DF4();
          v103 = v148;
          v104 = v142;
          v105 = v146;
          sub_1ABAA0948();
          swift_beginAccess();
          *(v105 + v104) = v103;

          sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
          LOBYTE(v148) = 31;
          v106 = sub_1ABDB66A4(&qword_1EB4D41F0);
          sub_1ABDBFA34(v106, &v148);
          v107 = v146;
          v108 = v147;
          v109 = v143;
          sub_1ABAA0948();
          swift_beginAccess();
          *(v107 + v109) = v108;

          LOBYTE(v147) = 32;
          sub_1ABDBFA34(v110, &v147);
          v111 = sub_1ABAA2DA8();
          v112(v111);
          v113 = v144;
          v114 = v146;
          sub_1ABAA0948();
          swift_beginAccess();
          *(v114 + v113) = a10;

          v56 = v145;
          goto LABEL_5;
        }

        v97 = sub_1ABAA2DA8();
        v98(v97);
        sub_1ABA8F7F8();
        sub_1ABA7F678();
      }
    }

    *(v87 - 64) = v86;
  }

  v93 = v146;
  v65 = v116;
  v66 = *(v137 + 8);
  v66(v146 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceInMeters, v126);
  if (v65)
  {
    if (v64)
    {
LABEL_8:
      v66(v93 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_elevationGainInMeters, v126);
    }
  }

  else
  {

    if (v64)
    {
      goto LABEL_8;
    }
  }

  v67 = v135;
  if (v79)
  {
    v67 = (v135 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (*(v135 + 8))(v93 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_expectedDurationInSecondsNoTraffic, v136);
    if ((v78 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (!v78)
  {
LABEL_14:
    v68 = v134;
    if (v76)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

  v68 = v134;
  if (v76)
  {
LABEL_15:

    sub_1ABA89904();
    if ((v69 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

LABEL_25:
  sub_1ABA89904();
  if (!v73)
  {
LABEL_16:
    sub_1ABDBFB1C();
    if (v70)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

LABEL_26:

  sub_1ABDBFB1C();
  if (v74)
  {
LABEL_17:

    if ((v119 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_27:
  if (!v119)
  {
LABEL_18:
    if (v120)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_28:

  if (v120)
  {
LABEL_19:

    if ((v121 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }

LABEL_29:
  if (!v121)
  {
LABEL_20:
    if (v122)
    {
      goto LABEL_21;
    }

LABEL_31:
    if (!v123)
    {
      goto LABEL_43;
    }

    v71 = *(v67 + 8);
LABEL_33:
    v75 = sub_1ABDBFB10(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_optimalUsageKwh);
    v71(v75, v93);
    if (v124)
    {
      goto LABEL_44;
    }

LABEL_34:
    v55 = v145;
    if (!v125)
    {
      goto LABEL_45;
    }

LABEL_35:

    if (v127)
    {
      goto LABEL_46;
    }

LABEL_36:
    if (!v128)
    {
      goto LABEL_47;
    }

LABEL_37:

    if (v129)
    {
      goto LABEL_48;
    }

LABEL_38:
    if (!v130)
    {
      goto LABEL_49;
    }

LABEL_39:

    if (v138)
    {
      goto LABEL_50;
    }

LABEL_40:
    if (!v139)
    {
      goto LABEL_51;
    }

LABEL_41:

    if (v140)
    {
      goto LABEL_52;
    }

    goto LABEL_4;
  }

LABEL_30:
  (*(v76 + 8))(v146 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_averageSpeedInMetersPerSecond, v68);
  if ((v122 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v71 = *(v67 + 8);
  v72 = sub_1ABDBFB10(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_usageKwh);
  v71(v72, v93);
  if (v123)
  {
    goto LABEL_33;
  }

LABEL_43:
  if (!v124)
  {
    goto LABEL_34;
  }

LABEL_44:

  v55 = v145;
  if (v125)
  {
    goto LABEL_35;
  }

LABEL_45:
  if (!v127)
  {
    goto LABEL_36;
  }

LABEL_46:

  if (v128)
  {
    goto LABEL_37;
  }

LABEL_47:
  if (!v129)
  {
    goto LABEL_38;
  }

LABEL_48:

  if (v130)
  {
    goto LABEL_39;
  }

LABEL_49:
  if (!v138)
  {
    goto LABEL_40;
  }

LABEL_50:

  if (v139)
  {
    goto LABEL_41;
  }

LABEL_51:
  if (v140)
  {
LABEL_52:
  }

LABEL_4:

  type metadata accessor for KTSDataRepresentation(0);
  swift_deallocPartialClassInstance();
  v56 = v55;
LABEL_5:
  sub_1ABA84B54(v56);
  sub_1ABA7BC90();
}

uint64_t sub_1ABDA8730@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 1176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1ABDA8858@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BBB0();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

unint64_t sub_1ABDA89E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1ABF250B4();

  if (v2 >= 0x1B)
  {
    return 27;
  }

  else
  {
    return v2;
  }
}

void sub_1ABDA8A3C(char a1)
{
  switch(a1)
  {
    case 16:
    case 20:
    case 21:
    case 22:
      sub_1ABA7F0D0();
      break;
    case 26:
      return;
    default:
      sub_1ABDBFA88();
      break;
  }
}

unint64_t sub_1ABDA8D1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABDA89E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1ABDA8D4C(void *a1@<X8>)
{
  sub_1ABDA8A3C(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1ABDA8D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABDA8A38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABDA8DB4(uint64_t a1)
{
  v2 = sub_1ABDBD1D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABDA8DF0(uint64_t a1)
{
  v2 = sub_1ABDBD1D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABDA9D30(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

void sub_1ABDA9D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  sub_1ABA7BCA8();
  v88 = v11;
  v91 = v10;
  v14 = v13;
  sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BB64();
  v89 = v16;
  v90 = v15;
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7AC18();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v79[-v21];
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA88D88();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v79[-v25];
  v27 = sub_1ABAD219C(&qword_1EB4D9940, &qword_1ABF617B8);
  sub_1ABA7BB64();
  v86 = v28;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v79[-v30];
  v32 = v14[3];
  v87 = v14;
  v33 = sub_1ABA8C744();
  v35 = sub_1ABA93E20(v33, v34);
  sub_1ABDBD1D8();
  v36 = v88;
  sub_1ABF252C4();
  v37 = v36;
  if (v36)
  {
    v88 = v36;
    *&v79[4] = 0;
    v39 = 0;
    LODWORD(v40) = 0;
    v41 = 0;
    sub_1ABAB11BC();
    *&v79[12] = 0;
    *&v79[20] = 0;
    a10 = 0;
    sub_1ABA83ACC();
  }

  else
  {
    v88 = v12;
    v85 = v19;
    LOBYTE(v92[0]) = 0;
    sub_1ABAA41CC(&unk_1EB4D9790, &qword_1EB4D1710, &qword_1ABF338A0);
    v38 = v90;
    sub_1ABDBF964();
    v35 = v31;
    sub_1ABF24E64();
    v84 = *(v89 + 32);
    v84(v91 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_maxTripDistanceInMeters, v26, v38);
    LOBYTE(v92[0]) = 1;
    v44 = v88;
    sub_1ABDBF964();
    sub_1ABF24E64();
    v45 = v44;
    v46 = v84;
    v84(v91 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgTripDistanceInMeters, v45, v38);
    LOBYTE(v92[0]) = 2;
    sub_1ABDBF964();
    sub_1ABF24E64();
    v46(v91 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_maxElevationGainInMeters, v22, v38);
    LOBYTE(v92[0]) = 3;
    v47 = v85;
    sub_1ABDBF964();
    sub_1ABF24E64();
    v40 = v91;
    v46(v91 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgElevationGainInMeters, v47, v38);
    v48 = v27;
    v39 = sub_1ABAD219C(&qword_1EB4D9890, &qword_1ABF613F8);
    LODWORD(v22) = sub_1ABDBF2F4();
    sub_1ABDBF990();
    sub_1ABF24E64();
    *(v40 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtSpeedBuckets) = v92[0];
    v49 = sub_1ABAD219C(&qword_1EB4D98A0, &qword_1ABF61400);
    v32 = sub_1ABDBF380();
    sub_1ABDBF990();
    sub_1ABF24E64();
    v84 = v49;
    v85 = v32;
    *(v40 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtTrafficBuckets) = v92[0];
    LODWORD(v32) = sub_1ABAD219C(&qword_1EB4D98B0, &qword_1ABF61408);
    v50 = sub_1ABDBF40C();
    sub_1ABDBF990();
    sub_1ABA892E8();
    sub_1ABF24E64();
    v83 = v50;
    *(v40 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtRelativeSpeeds) = v92[0];
    v51 = sub_1ABAD219C(&qword_1EB4D98C0, &qword_1ABF61410);
    sub_1ABDBF498();
    sub_1ABDBF990();
    v82 = v52;
    sub_1ABF24E64();
    v81 = v51;
    *(v91 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtRoadTypes) = v92[0];
    v19 = sub_1ABAD219C(&qword_1EB4D98D0, &qword_1ABF61418);
    sub_1ABDBF524();
    sub_1ABDBF990();
    v80 = v19;
    LOBYTE(v19) = v53;
    sub_1ABF24E64();
    v88 = 0;
    *(v91 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentInWeatherTypes) = v92[0];
    v54 = sub_1ABAD219C(&qword_1EB4D98E0, &qword_1ABF61420);
    sub_1ABDBF5B0();
    sub_1ABDBF990();
    v37 = v48;
    v41 = v54;
    *&v79[24] = v55;
    LODWORD(v26) = v35;
    v56 = v88;
    sub_1ABF24E64();
    v88 = v56;
    if (v56)
    {
      v57 = sub_1ABAA4AC4();
      v58(v57);
      memset(&v79[8], 0, 20);
      a10 = 0;
      sub_1ABA8EB6C();
      *&v79[4] = v59;
      sub_1ABA81A50();
    }

    else
    {
      *(v91 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentInTerrainTypes) = v92[0];
      sub_1ABAA2008(10);
      sub_1ABDBF99C();
      sub_1ABF24E64();
      v88 = 0;
      *(v91 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtSpeedBuckets) = v92[0];
      sub_1ABAA2008(11);
      sub_1ABA89A50();
      sub_1ABDBF99C();
      sub_1ABF24E64();
      v88 = 0;
      *(v91 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtTrafficBuckets) = v92[0];
      sub_1ABAA2008(12);
      sub_1ABDBF99C();
      sub_1ABF24E64();
      v88 = 0;
      *(v91 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtRelativeSpeeds) = v92[0];
      sub_1ABAA2008(13);
      sub_1ABA89A50();
      sub_1ABDBF99C();
      sub_1ABF24E64();
      v88 = 0;
      *(v91 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledForRoadTypes) = v92[0];
      sub_1ABAA2008(14);
      sub_1ABA89A50();
      sub_1ABDBF99C();
      sub_1ABF24E64();
      v88 = 0;
      *(v91 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledInWeatherTypes) = v92[0];
      sub_1ABAA2008(15);
      sub_1ABDBF99C();
      sub_1ABF24E64();
      v88 = 0;
      *(v91 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledInTerrainTypes) = v92[0];
      sub_1ABAA2008(16);
      sub_1ABDBF99C();
      sub_1ABF24E64();
      v88 = 0;
      *(v91 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerSpeedBucket) = v92[0];
      sub_1ABAA2008(17);
      sub_1ABA89A50();
      sub_1ABDBF99C();
      sub_1ABF24E64();
      v88 = 0;
      *(v91 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerTrafficBucket) = v92[0];
      sub_1ABAA2008(18);
      sub_1ABDBF99C();
      sub_1ABF24E64();
      v88 = 0;
      *(v91 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerRelativeSpeed) = v92[0];
      sub_1ABAA2008(19);
      sub_1ABA89A50();
      sub_1ABDBF99C();
      sub_1ABF24E64();
      v88 = 0;
      *(v91 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerRoadType) = v92[0];
      sub_1ABAA2008(20);
      sub_1ABA89A50();
      sub_1ABDBF99C();
      sub_1ABF24E64();
      v88 = 0;
      *(v91 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerWeatherType) = v92[0];
      sub_1ABAA2008(21);
      sub_1ABDBF99C();
      sub_1ABF24E64();
      v88 = 0;
      *(v91 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerTerrainType) = v92[0];
      sub_1ABAB6804(22);
      v88 = 0;
      sub_1ABDBFAE4(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgNumBrakingEvents, v60);
      sub_1ABAB6804(23);
      v88 = 0;
      sub_1ABDBFAE4(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgNumAccelEvents, v61);
      sub_1ABAB6804(24);
      v88 = 0;
      sub_1ABDBFAE4(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgNumHighSpeedEvents, v62);
      sub_1ABAB6804(25);
      v88 = 0;
      sub_1ABDBFAE4(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_mostEfficientDriveScore, v63);
      sub_1ABAD219C(&qword_1EB4D9908, &qword_1ABF61430);
      sub_1ABDBF63C();
      sub_1ABDBF990();
      sub_1ABDBF99C();
      sub_1ABF24DF4();
      v88 = 0;
      v35 = v91;
      *(v91 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_routeHeatMap) = v92[0];
      sub_1ABA93E64(v87, v92);
      v64 = v88;
      KTSDataRepresentation.init(from:)(v92, v65, v66, v67, v68, v69, v70, v71, *v79, *&v79[8], *&v79[16], *&v79[24], v80, v81, v82, v83, v84, v85, v86, v87);
      v88 = v64;
      if (!v64)
      {
        v77 = sub_1ABAA4AC4();
        v78(v77);
        sub_1ABA84B54(v87);
        goto LABEL_44;
      }

      v72 = sub_1ABAA4AC4();
      v73(v72);
      sub_1ABA93758();
      sub_1ABAA2A08(v74);
      sub_1ABA9E580(v75);
      LODWORD(v86) = v76;
      LOBYTE(v19) = 1;
    }
  }

  sub_1ABA84B54(v87);
  if ((v19 & 1) == 0)
  {
    v42 = v91;
    if (*&v79[4])
    {
      (*(v89 + 8))(v91 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_maxTripDistanceInMeters, v90);
    }

    if (v39)
    {
      (*(v89 + 8))(v42 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgTripDistanceInMeters, v90);
    }

    v43 = v90;
    if (v40)
    {
      (*(v89 + 8))(v42 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_maxElevationGainInMeters, v90);
      if (!v41)
      {
        goto LABEL_11;
      }
    }

    else if (!v41)
    {
LABEL_11:
      if (v26)
      {
        goto LABEL_12;
      }

      goto LABEL_47;
    }

    (*(v89 + 8))(v42 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgElevationGainInMeters, v43);
    if (v26)
    {
LABEL_12:

      if (!v35)
      {
        goto LABEL_13;
      }

      goto LABEL_48;
    }

LABEL_47:
    if (!v35)
    {
LABEL_13:
      if (v37)
      {
        goto LABEL_14;
      }

      goto LABEL_49;
    }

LABEL_48:

    if (v37)
    {
LABEL_14:

      if (!v32)
      {
        goto LABEL_15;
      }

      goto LABEL_50;
    }

LABEL_49:
    if (!v32)
    {
LABEL_15:
      if (!v22)
      {
LABEL_17:
        if (*&v79[8])
        {
        }

        if (*&v79[12])
        {
        }

        if (*&v79[16])
        {
        }

        if (*&v79[20])
        {
        }

        if (a10)
        {
        }

        if (*&v79[24])
        {
        }

        if (v80)
        {
        }

        if (v81)
        {
        }

        if (v82)
        {
        }

        if (v83)
        {
        }

        if (v84)
        {
        }

        if (v85)
        {
        }

        if (v86)
        {
        }

        type metadata accessor for KTSDataAggregateRepresentation(0);
        swift_deallocPartialClassInstance();
        goto LABEL_44;
      }

LABEL_16:

      goto LABEL_17;
    }

LABEL_50:

    if (!v22)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_44:
  sub_1ABA7BC90();
}

uint64_t sub_1ABDAADB8()
{
  sub_1ABDA2AD0();
  sub_1ABF23D84();
  v0 = sub_1ABF23EC4();
  v53 = v1;
  v54 = v0;
  v51 = v3;
  v52 = v2;

  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0x72546D756E0A202CLL, 0xED0000203A737069);
  sub_1ABDA1F4C();
  sub_1ABF24FF4();
  sub_1ABA88B9C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410](0xD000000000000010);
  v4 = sub_1ABA7ABE4();
  sub_1ABAD219C(v4, v5);
  sub_1ABAA01F4();
  sub_1ABD1044C(v6);
  sub_1ABA7E79C();
  sub_1ABF24FF4();
  sub_1ABA8923C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410](0xD000000000000010);
  sub_1ABA7E79C();
  v7 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v7);

  sub_1ABA88750();
  MEMORY[0x1AC5A9410](0xD000000000000015);
  sub_1ABA7E79C();
  v8 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v8);

  sub_1ABA88750();
  MEMORY[0x1AC5A9410](0xD000000000000015);
  sub_1ABA7E79C();
  sub_1ABF24FF4();
  sub_1ABA88B9C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  sub_1ABDB4920();
  sub_1ABF23984();
  sub_1ABA88B9C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  sub_1ABDB48CC();
  sub_1ABAA030C();
  sub_1ABF23984();
  sub_1ABA88B9C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  v48 = sub_1ABDB4974();
  sub_1ABDBFB94();
  sub_1ABF23984();
  sub_1ABA88B9C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  v45 = sub_1ABDB49C8();
  sub_1ABDBFB94();
  v9 = sub_1ABF23984();
  MEMORY[0x1AC5A9410](v9);

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  v10 = sub_1ABDB4A1C();
  sub_1ABDBFB94();
  sub_1ABF23984();
  sub_1ABA8923C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  v40 = sub_1ABDB4A70();
  sub_1ABDBFB94();
  sub_1ABF23984();
  sub_1ABA8923C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  sub_1ABF23984();
  sub_1ABA8923C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  sub_1ABF23984();
  sub_1ABA8923C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  sub_1ABF23984();
  sub_1ABA8923C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  sub_1ABF23984();
  sub_1ABA8923C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  sub_1ABF23984();
  sub_1ABA8923C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  sub_1ABF23984();
  sub_1ABA8923C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  sub_1ABF23984();
  sub_1ABA8923C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  sub_1ABF23984();
  sub_1ABA8923C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  v11 = sub_1ABF23984();
  MEMORY[0x1AC5A9410](v11);

  sub_1ABA88750();
  MEMORY[0x1AC5A9410](0xD000000000000015);
  sub_1ABF23984();
  sub_1ABA88B9C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  sub_1ABF23984();
  sub_1ABA88B9C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  sub_1ABF23984();
  sub_1ABA88B9C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  sub_1ABF24344();
  sub_1ABA88750();
  v12 = MEMORY[0x1AC5A9410]();
  sub_1ABA9F3B0(v12, v13, v14, v15, v16, v17, v18, v19, v37, v40, v10, v45, v48);
  sub_1ABA88750();
  v20 = MEMORY[0x1AC5A9410]();
  sub_1ABA9F3B0(v20, v21, v22, v23, v24, v25, v26, v27, v38, v41, v43, v46, v49);
  sub_1ABA88750();
  v28 = MEMORY[0x1AC5A9410]();
  sub_1ABA9F3B0(v28, v29, v30, v31, v32, v33, v34, v35, v39, v42, v44, v47, v50);
  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  sub_1ABDAB640(0, 0xE000000000000000, v54, v53, v52, v51);

  return sub_1ABA8CD18();
}

uint64_t sub_1ABDAB640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1ABD5A7DC();

  v7 = sub_1ABF23EB4();
  sub_1ABF23D94();
  return v7;
}

uint64_t sub_1ABDAB6C4(uint64_t a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D15B0, &qword_1ABF33740);
  sub_1ABA7BB64();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7C068();
  v159 = v8;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA972D4();
  v158 = v10;
  sub_1ABAD219C(&qword_1EB4D1680, &qword_1ABF33810);
  sub_1ABA7BB64();
  v162 = v12;
  v163 = v11;
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7C068();
  v161 = v13;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA972D4();
  v160 = v15;
  sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  sub_1ABA7BB64();
  v166 = v16;
  v167 = v17;
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7C068();
  v165 = v18;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA972D4();
  v164 = v20;
  v21 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BB64();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7AC18();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA9E360();
  type metadata accessor for KTSDataAggregateRepresentation(0);
  v29 = swift_dynamicCastClass();
  if (!v29)
  {
    goto LABEL_65;
  }

  v30 = v29;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v31 = *(v1 + 16);
  sub_1ABA7EF0C();
  swift_beginAccess();
  if (v31 != *(v30 + 16))
  {
    goto LABEL_65;
  }

  sub_1ABA7EF0C();
  swift_beginAccess();
  v32 = *(v1 + 24);
  sub_1ABA7EF0C();
  swift_beginAccess();
  if (v32 != *(v30 + 24))
  {
    goto LABEL_65;
  }

  v149 = v4;
  v150 = v6;
  v33 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceInMeters;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v155 = a1;
  v156 = v23;
  v34 = *(v23 + 16);
  v153 = v1;
  v34(v2, v1 + v33, v21);
  v35 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceInMeters;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v154 = v30;
  v34(v27, v30 + v35, v21);
  v36 = sub_1ABAFF390(0, &qword_1EB4CE6D8, 0x1E696B058);

  LOBYTE(v33) = sub_1ABAB666C();
  v37 = *(v156 + 8);
  v37(v27, v21);
  v38 = sub_1ABA894A0();
  (v37)(v38);
  if ((v33 & 1) == 0)
  {
    goto LABEL_64;
  }

  v39 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_elevationGainInMeters;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v34(v2, v153 + v39, v21);
  v40 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_elevationGainInMeters;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v34(v27, v30 + v40, v21);
  LOBYTE(v40) = sub_1ABAB666C();
  v37(v27, v21);
  v41 = sub_1ABA894A0();
  (v37)(v41);
  if ((v40 & 1) == 0)
  {
    goto LABEL_64;
  }

  v152 = v36;
  v42 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_durationInSeconds;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v43 = *(v167 + 16);
  v43(v164, v153 + v42, v166);
  v44 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_durationInSeconds;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v157 = v43;
  v43(v165, v30 + v44, v166);
  sub_1ABAFF390(0, &qword_1EB4CE6B8, 0x1E696B008);
  LOBYTE(v43) = sub_1ABAB666C();
  v45 = *(v167 + 8);
  v45(v165, v166);
  v46 = sub_1ABA8C53C();
  (v45)(v46);
  if ((v43 & 1) == 0)
  {
    goto LABEL_64;
  }

  v47 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_expectedDurationInSecondsNoTraffic;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v157(v164, v153 + v47, v166);
  v48 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_expectedDurationInSecondsNoTraffic;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v157(v165, v30 + v48, v166);
  v49 = sub_1ABAB666C();
  v50 = sub_1ABA82ED0();
  (v45)(v50);
  v51 = sub_1ABA95870();
  (v45)(v51);
  if ((v49 & 1) == 0)
  {
    goto LABEL_64;
  }

  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBFA70();

  sub_1ABA8CD18();
  sub_1ABB599B8();
  sub_1ABDBFA58();

  if ((v48 & 1) == 0)
  {
    goto LABEL_64;
  }

  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBFA70();

  sub_1ABA8CD18();
  sub_1ABB59C20();
  sub_1ABDBFA58();

  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBFA70();

  sub_1ABA8CD18();
  sub_1ABB59E88();
  sub_1ABDBFA58();

  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBFA70();

  sub_1ABA8CD18();
  sub_1ABB5A0F0();
  sub_1ABDBFA58();

  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBFA70();

  sub_1ABA8CD18();
  sub_1ABB5A358();
  sub_1ABDBFA58();

  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBFA70();

  sub_1ABA8CD18();
  sub_1ABB5A5C0();
  sub_1ABDBFA58();

  v52 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_averageSpeedInMetersPerSecond;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v53 = *(v162 + 16);
  v53(v160, v153 + v52, v163);
  v54 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_averageSpeedInMetersPerSecond;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v53(v161, v30 + v54, v163);
  sub_1ABAFF390(0, &qword_1EB4CE6F0, 0x1E696B078);
  v55 = sub_1ABF21894();
  v56 = *(v162 + 8);
  v57 = sub_1ABA954F0();
  v56(v57);
  (v56)(v160, v163);
  if ((v55 & 1) == 0)
  {
    goto LABEL_64;
  }

  v58 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v59 = *(v153 + v58);
  v60 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
  sub_1ABA7EF0C();
  swift_beginAccess();
  if (v59 != *(v154 + v60))
  {
    goto LABEL_64;
  }

  v61 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_usageKwh;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v62 = *(v150 + 16);
  v63 = v158;
  v62(v158, v153 + v61, v149);
  v64 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_usageKwh;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v62(v159, v154 + v64, v149);
  sub_1ABAFF390(0, &qword_1EB4CE6E0, 0x1E696B030);
  LOBYTE(v61) = sub_1ABF21894();
  v65 = *(v150 + 8);
  v65(v159, v149);
  v66 = sub_1ABA8AF68();
  v151 = v150 + 8;
  (v65)(v66);
  if ((v61 & 1) == 0)
  {
    goto LABEL_64;
  }

  v67 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_optimalUsageKwh;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v62(v158, v153 + v67, v149);
  v68 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_optimalUsageKwh;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v62(v159, v154 + v68, v149);
  sub_1ABA7BE8C();
  v69 = sub_1ABF21894();
  v65(v159, v149);
  v65(v158, v149);
  if ((v69 & 1) == 0)
  {
    goto LABEL_64;
  }

  sub_1ABDBFB7C();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA9F024();
  if (!v70)
  {
    goto LABEL_64;
  }

  sub_1ABDBFB7C();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA9F024();
  if (!v70)
  {
    goto LABEL_64;
  }

  sub_1ABDBFB7C();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v71 = v154;
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA9F024();
  if (!v70)
  {
    goto LABEL_64;
  }

  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA9FDE4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA90FFC();

  sub_1ABA8CD18();
  sub_1ABB5A828();
  sub_1ABA9E118();

  if ((v158 & 1) == 0)
  {
    goto LABEL_64;
  }

  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA9FDE4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA90FFC();

  v72 = sub_1ABA8CD18();
  sub_1ABB5AB38(v72, v73);
  sub_1ABA9E118();

  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA9FDE4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA90FFC();

  v74 = sub_1ABA8CD18();
  sub_1ABB5AB50(v74, v75);
  sub_1ABA9E118();

  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA9FDE4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA90FFC();

  sub_1ABA8CD18();
  sub_1ABB5ACA8();
  sub_1ABA9E118();

  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA9FDE4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA90FFC();

  sub_1ABA8CD18();
  sub_1ABB5AFB8();
  sub_1ABA9E118();

  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA9FDE4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA90FFC();

  sub_1ABA8CD18();
  sub_1ABB5B220();
  sub_1ABA9E118();

  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA9FDE4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA90FFC();

  sub_1ABA8CD18();
  sub_1ABB5B488();
  sub_1ABA9E118();

  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA9FDE4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA90FFC();

  sub_1ABA8CD18();
  sub_1ABB5B6F0();
  sub_1ABA9E118();

  v76 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_route;
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v77 = *(v154 + v76);
  v78 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_route;
  sub_1ABA9FDE4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v79 = *(v154 + v78);
  if (v77)
  {
    if (!v79)
    {
      goto LABEL_64;
    }

    sub_1ABB494DC(v80, v79, v81, v82, v83, v84, v85, v86, v149, v151, v152, v153, v154, v155, v157, v158, v159, v160, v161, v162);
    sub_1ABA9E118();

    if ((v63 & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  else if (v79)
  {
    goto LABEL_64;
  }

  v87 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_lifeEventIds;
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v88 = *(v71 + v87);
  v89 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_lifeEventIds;
  sub_1ABA9FDE4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v90 = *(v71 + v89);
  if (!v88)
  {
    if (!v90)
    {
      goto LABEL_31;
    }

LABEL_64:

LABEL_65:
    v147 = 0;
    return v147 & 1;
  }

  if (!v90 || (sub_1ABB4F410() & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_31:
  if ((sub_1ABA953B8() & 1) == 0)
  {
    goto LABEL_64;
  }

  if ((sub_1ABA953B8() & 1) == 0)
  {
    goto LABEL_64;
  }

  if ((sub_1ABA953B8() & 1) == 0)
  {
    goto LABEL_64;
  }

  if ((sub_1ABA953B8() & 1) == 0)
  {
    goto LABEL_64;
  }

  v91 = sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtSpeedBuckets);
  sub_1ABB5B958(v91, v92);
  if ((v93 & 1) == 0)
  {
    goto LABEL_64;
  }

  v94 = sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtTrafficBuckets);
  sub_1ABB5BA20(v94, v95);
  if ((v96 & 1) == 0)
  {
    goto LABEL_64;
  }

  v97 = sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtRelativeSpeeds);
  sub_1ABB5BA38(v97, v98);
  if ((v99 & 1) == 0)
  {
    goto LABEL_64;
  }

  v100 = sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtRoadTypes);
  sub_1ABB5BB00(v100, v101);
  if ((v102 & 1) == 0)
  {
    goto LABEL_64;
  }

  v103 = sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentInWeatherTypes);
  sub_1ABB5BBC8(v103, v104);
  if ((v105 & 1) == 0)
  {
    goto LABEL_64;
  }

  v106 = sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentInTerrainTypes);
  sub_1ABB5BA20(v106, v107);
  if ((v108 & 1) == 0)
  {
    goto LABEL_64;
  }

  v109 = sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtSpeedBuckets);
  sub_1ABB5B958(v109, v110);
  if ((v111 & 1) == 0)
  {
    goto LABEL_64;
  }

  v112 = sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtTrafficBuckets);
  sub_1ABB5BA20(v112, v113);
  if ((v114 & 1) == 0)
  {
    goto LABEL_64;
  }

  v115 = sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtRelativeSpeeds);
  sub_1ABB5BA38(v115, v116);
  if ((v117 & 1) == 0)
  {
    goto LABEL_64;
  }

  v118 = sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledForRoadTypes);
  sub_1ABB5BB00(v118, v119);
  if ((v120 & 1) == 0)
  {
    goto LABEL_64;
  }

  v121 = sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledInWeatherTypes);
  sub_1ABB5BBC8(v121, v122);
  if ((v123 & 1) == 0)
  {
    goto LABEL_64;
  }

  v124 = sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledInTerrainTypes);
  sub_1ABB5BA20(v124, v125);
  if ((v126 & 1) == 0)
  {
    goto LABEL_64;
  }

  v127 = sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerSpeedBucket);
  sub_1ABB5B958(v127, v128);
  if ((v129 & 1) == 0)
  {
    goto LABEL_64;
  }

  v130 = sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerTrafficBucket);
  sub_1ABB5BA20(v130, v131);
  if ((v132 & 1) == 0)
  {
    goto LABEL_64;
  }

  v133 = sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerRelativeSpeed);
  sub_1ABB5BA38(v133, v134);
  if ((v135 & 1) == 0)
  {
    goto LABEL_64;
  }

  v136 = sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerRoadType);
  sub_1ABB5BB00(v136, v137);
  if ((v138 & 1) == 0)
  {
    goto LABEL_64;
  }

  v139 = sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerWeatherType);
  sub_1ABB5BBC8(v139, v140);
  if ((v141 & 1) == 0)
  {
    goto LABEL_64;
  }

  v142 = sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerTerrainType);
  sub_1ABB5BA20(v142, v143);
  if ((v144 & 1) == 0)
  {
    goto LABEL_64;
  }

  sub_1ABA7FD38(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgNumBrakingEvents);
  if (!v70)
  {
    goto LABEL_64;
  }

  sub_1ABA7FD38(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgNumAccelEvents);
  if (!v70)
  {
    goto LABEL_64;
  }

  sub_1ABA7FD38(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgNumHighSpeedEvents);
  if (!v70)
  {
    goto LABEL_64;
  }

  sub_1ABA7FD38(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_mostEfficientDriveScore);
  if (!v70)
  {
    goto LABEL_64;
  }

  v145 = *(v154 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_routeHeatMap);
  if (!*(v153 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_routeHeatMap))
  {

    if (!v145)
    {
      v147 = 1;
      return v147 & 1;
    }

    goto LABEL_65;
  }

  if (!v145)
  {
    goto LABEL_64;
  }

  sub_1ABA8CD18();
  sub_1ABB5BD84();
  v147 = v146;

  return v147 & 1;
}

void sub_1ABDAC7D4()
{
  sub_1ABA7BCA8();
  v28 = v1;
  v2 = v0;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D9880, &qword_1ABF613F0);
  sub_1ABA7BB64();
  v7 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - v9;
  sub_1ABA93E20(v4, v4[3]);
  sub_1ABDBD1D8();
  sub_1ABF252E4();
  v11 = sub_1ABA8A40C();
  sub_1ABAD219C(v11, v12);
  sub_1ABA8E394();
  sub_1ABD1044C(v13);
  sub_1ABA88F00();
  v14 = v28;
  sub_1ABF24F84();
  if (v14)
  {
    v15 = sub_1ABA8C744();
    v16(v15);
  }

  else
  {
    v27[11] = v4;
    v28 = v7;
    sub_1ABA9E230(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgTripDistanceInMeters);
    sub_1ABA88F00();
    sub_1ABF24F84();
    sub_1ABA9E230(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_maxElevationGainInMeters);
    v17 = v5;
    sub_1ABA88F00();
    sub_1ABF24F84();
    sub_1ABA9E230(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgElevationGainInMeters);
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA8A0CC(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtSpeedBuckets);
    v29 = 4;
    v18 = sub_1ABAD219C(&qword_1EB4D9890, &qword_1ABF613F8);
    sub_1ABDBD22C();
    sub_1ABA95928();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    v27[10] = v18;
    sub_1ABA8A0CC(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtTrafficBuckets);
    v29 = 5;
    v19 = sub_1ABAD219C(&qword_1EB4D98A0, &qword_1ABF61400);
    v20 = sub_1ABDBD2B8();
    sub_1ABA95928();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    v27[8] = v19;
    v27[9] = v20;
    sub_1ABA8A0CC(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtRelativeSpeeds);
    v29 = 6;
    v21 = sub_1ABAD219C(&qword_1EB4D98B0, &qword_1ABF61408);
    v22 = sub_1ABDBD344();
    sub_1ABA95928();
    sub_1ABA892E8();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    v27[6] = v22;
    v27[7] = v21;
    sub_1ABA8A0CC(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtRoadTypes);
    v29 = 7;
    v23 = sub_1ABAD219C(&qword_1EB4D98C0, &qword_1ABF61410);
    v24 = sub_1ABDBD3D0();
    sub_1ABA95928();
    sub_1ABA892E8();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    v27[4] = v24;
    v27[5] = v23;
    sub_1ABA8A0CC(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentInWeatherTypes);
    v29 = 8;
    sub_1ABAD219C(&qword_1EB4D98D0, &qword_1ABF61418);
    sub_1ABDBD45C();
    sub_1ABA95928();
    sub_1ABA892E8();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA8A0CC(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentInTerrainTypes);
    v29 = 9;
    v25 = sub_1ABAD219C(&qword_1EB4D98E0, &qword_1ABF61420);
    sub_1ABDBD4E8();
    sub_1ABA95928();
    v27[2] = v26;
    v27[3] = v25;
    sub_1ABA88A3C();
    sub_1ABF24F84();
    v27[1] = v2;
    sub_1ABA8A0CC(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtSpeedBuckets);
    sub_1ABAA4670(10);
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA97908(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtTrafficBuckets);
    sub_1ABAA4670(11);
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA97908(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtRelativeSpeeds);
    sub_1ABAA4670(12);
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA97908(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledForRoadTypes);
    sub_1ABAA4670(13);
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA97908(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledInWeatherTypes);
    sub_1ABAA4670(14);
    sub_1ABA892E8();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABAA4670(15);
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA97908(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerSpeedBucket);
    sub_1ABAA4670(16);
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA97908(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerTrafficBucket);
    sub_1ABAA4670(17);
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA97908(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerRelativeSpeed);
    sub_1ABAA4670(18);
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA97908(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerRoadType);
    sub_1ABAA4670(19);
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA97908(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerWeatherType);
    sub_1ABAA4670(20);
    sub_1ABA892E8();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABAA4670(21);
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABDBFB50(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgNumBrakingEvents);
    sub_1ABA88A3C();
    sub_1ABF24F54();
    sub_1ABDBFB50(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgNumAccelEvents);
    sub_1ABA88A3C();
    sub_1ABF24F54();
    sub_1ABDBFB50(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgNumHighSpeedEvents);
    sub_1ABA88A3C();
    sub_1ABF24F54();
    sub_1ABDBFB50(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_mostEfficientDriveScore);
    sub_1ABA88A3C();
    sub_1ABF24F54();
    sub_1ABA97908(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_routeHeatMap);
    v29 = 26;
    sub_1ABAD219C(&qword_1EB4D98F0, &qword_1ABF61428);
    sub_1ABDBD574();
    sub_1ABA95928();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABDA5BD8();
    (*(v28 + 8))(v10, v17);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABDACF28()
{
  sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BBB0();
  v1 = *(v0 + 8);
  v2 = sub_1ABAB5B2C();
  v1(v2);
  v3 = sub_1ABA8A56C(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgTripDistanceInMeters);
  v1(v3);
  v4 = sub_1ABA8A56C(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_maxElevationGainInMeters);
  v1(v4);
  v5 = sub_1ABA8A56C(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgElevationGainInMeters);
  v1(v5);
}

uint64_t KTSDataAggregateRepresentation.deinit()
{
  KTSDataRepresentation.deinit();
  sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BBB0();
  v2 = *(v1 + 8);
  v3 = sub_1ABAB5B2C();
  v2(v3);
  v4 = sub_1ABA8A56C(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgTripDistanceInMeters);
  v2(v4);
  v5 = sub_1ABA8A56C(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_maxElevationGainInMeters);
  v2(v5);
  v6 = sub_1ABA8A56C(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgElevationGainInMeters);
  v2(v6);

  return v0;
}

uint64_t sub_1ABDAD324(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void (*sub_1ABDAD380(unint64_t a1))(uint64_t, uint64_t)
{
  v4 = sub_1ABAD219C(&qword_1EB4D15B0, &qword_1ABF33740);
  sub_1ABA7BB64();
  v1030 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7AC18();
  j = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA88D88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA88E50();
  v1026 = v12;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA88E50();
  v1044 = v14;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA88E50();
  v1031 = v16;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v1005 - v18;
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA88E50();
  v1027 = v21;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA88E50();
  v1034 = v23;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA88E50();
  v1032 = v25;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA9E360();
  v1048 = sub_1ABAD219C(&qword_1EB4D1680, &qword_1ABF33810);
  sub_1ABA7BB64();
  v1042 = v27;
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA7AC18();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA88E50();
  v1047 = v33;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v34);
  sub_1ABA88E50();
  v1028 = v35;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v36);
  sub_1ABA88E50();
  v1033 = v37;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v38);
  sub_1ABA88E50();
  v1035 = v39;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v40);
  sub_1ABA88E50();
  v1029 = v41;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v42);
  sub_1ABA972D4();
  v1036 = v43;
  v1067 = sub_1ABAD219C(&qword_1EB4D37A0, &unk_1ABF617C0);
  sub_1ABA7BBB0();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v44);
  sub_1ABA7FBE0();
  v1057 = v45;
  v46 = sub_1ABAD219C(&qword_1EB4D3798, &unk_1ABF3D800);
  v47 = sub_1ABA7AB80(v46);
  MEMORY[0x1EEE9AC00](v47);
  sub_1ABA7C068();
  v1063 = v48;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v49);
  sub_1ABA972D4();
  v1066 = v50;
  v51 = sub_1ABAD219C(&qword_1EB4D9980, &qword_1ABF617D0);
  sub_1ABA7AB80(v51);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v52);
  sub_1ABA7FBE0();
  v1065 = v53;
  v1083 = sub_1ABAD219C(&qword_1EB4D37D0, &qword_1ABF3D838);
  sub_1ABA7BBB0();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v54);
  sub_1ABA7FBE0();
  v1074 = v55;
  v56 = sub_1ABAD219C(&qword_1EB4D37C8, &qword_1ABF3D830);
  v57 = sub_1ABA7AB80(v56);
  MEMORY[0x1EEE9AC00](v57);
  sub_1ABA7C068();
  v1089 = v58;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v59);
  sub_1ABA972D4();
  v1090 = v60;
  v61 = sub_1ABAD219C(&qword_1EB4D9988, &qword_1ABF617D8);
  sub_1ABA7AB80(v61);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v62);
  sub_1ABA7FBE0();
  v1087 = v63;
  v1081 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  sub_1ABA7BB64();
  v1077 = v64;
  MEMORY[0x1EEE9AC00](v65);
  sub_1ABA7C068();
  v1056 = v66;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v67);
  sub_1ABA88E50();
  v1068 = v68;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v69);
  sub_1ABA88E50();
  v1062 = v70;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v71);
  sub_1ABA88E50();
  v1053 = v72;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v73);
  sub_1ABA88E50();
  v1085 = v74;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v75);
  sub_1ABA88E50();
  v1064 = v76;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v77);
  sub_1ABA88E50();
  v1075 = v78;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v79);
  sub_1ABA88E50();
  v1041 = v80;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v81);
  sub_1ABA88E50();
  v1092 = v82;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v83);
  sub_1ABA88E50();
  v1059 = v84;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v85);
  sub_1ABA88E50();
  v1076 = v86;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v87);
  sub_1ABA88E50();
  v1069 = v88;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v89);
  sub_1ABA972D4();
  v1043 = v90;
  v91 = sub_1ABAD219C(&qword_1EB4D9990, &unk_1ABF617E0);
  v92 = sub_1ABA7AB80(v91);
  MEMORY[0x1EEE9AC00](v92);
  sub_1ABA7C068();
  v1073 = v93;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v94);
  sub_1ABA972D4();
  v1079 = v95;
  v1102 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BB64();
  v1099 = v96;
  MEMORY[0x1EEE9AC00](v97);
  sub_1ABA7AC18();
  MEMORY[0x1EEE9AC00](v98);
  MEMORY[0x1EEE9AC00](v99);
  MEMORY[0x1EEE9AC00](v100);
  MEMORY[0x1EEE9AC00](v101);
  sub_1ABA88E50();
  v1072 = v102;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v103);
  sub_1ABA88E50();
  k = v104;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v105);
  v107 = &v1005 - v106;
  MEMORY[0x1EEE9AC00](v108);
  MEMORY[0x1EEE9AC00](&v1005 - v109);
  sub_1ABA88E50();
  v1093 = v110;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v111);
  MEMORY[0x1EEE9AC00](v112);
  MEMORY[0x1EEE9AC00](v113);
  MEMORY[0x1EEE9AC00](v114);
  MEMORY[0x1EEE9AC00](v115);
  MEMORY[0x1EEE9AC00](v116);
  sub_1ABA88E50();
  v1088 = v117;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v118);
  MEMORY[0x1EEE9AC00](v119);
  sub_1ABA88E50();
  v1078 = v120;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v121);
  sub_1ABA88E50();
  v1082 = v122;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v123);
  sub_1ABA88E50();
  v1084 = v124;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v125);
  sub_1ABA88E50();
  v1052 = v126;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v127);
  sub_1ABA972D4();
  v1097 = v139;
  if (!(a1 >> 62))
  {
    v140 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v140)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_611:
  v1037 = v138;
  v1038 = v136;
  v1022 = v107;
  v1023 = v137;
  v1021 = v128;
  v1011 = v129;
  v1014 = v131;
  v1015 = v130;
  v1013 = v132;
  v996 = v133;
  v1051 = v134;
  v1071 = v135;
  v997 = sub_1ABF24CA4();
  v135 = v1071;
  v134 = v1051;
  v133 = v996;
  v132 = v1013;
  v131 = v1014;
  v130 = v1015;
  v129 = v1011;
  v140 = v997;
  v128 = v1021;
  v107 = v1022;
  v138 = v1037;
  v136 = v1038;
  v137 = v1023;
  if (!v140)
  {
    return 0;
  }

LABEL_3:
  v1071 = v135;
  v1051 = v134;
  v1070 = v133;
  v1013 = v132;
  v1014 = v131;
  v1015 = v130;
  v1016 = v19;
  v1011 = v129;
  v1012 = j;
  v1021 = v128;
  v1022 = v107;
  v1037 = v138;
  v1038 = v136;
  v1023 = v137;
  v1019 = v4;
  v1020 = v31;
  v1017 = v2;
  v1018 = v1;
  v1101 = a1;
  v141 = sub_1ABAAB7C8(a1);
  v142 = MEMORY[0x1E69E7CC0];
  v143 = v141 & ~(v141 >> 63);
  v1098 = v141;
  if (v141)
  {
    v144 = v141;
    v1125 = MEMORY[0x1E69E7CC0];
    sub_1ABADE01C(0, v143, 0);
    if (v144 < 0)
    {
LABEL_615:
      __break(1u);
      goto LABEL_616;
    }

    v145 = 0;
    v146 = v1125;
    v147 = v1101 & 0xC000000000000001;
    do
    {
      if (v147)
      {
        v31 = MEMORY[0x1AC5AA170](v145, v1101);
      }

      else
      {
        sub_1ABA8B954(v1101 + 8 * v145);
      }

      sub_1ABA7EF0C();
      swift_beginAccess();
      v148 = *(v31 + 16);

      v1125 = v146;
      v150 = *(v146 + 16);
      v149 = *(v146 + 24);
      v31 = v150 + 1;
      if (v150 >= v149 >> 1)
      {
        sub_1ABA7BBEC(v149);
        sub_1ABAA0DB0();
        sub_1ABADE01C(v152, v153, v154);
        v146 = v1125;
      }

      ++v145;
      *(v146 + 16) = v31;
      *(v146 + 8 * v150 + 32) = v148;
      sub_1ABA89B74();
    }

    while (!v151);
  }

  else
  {
    v146 = MEMORY[0x1E69E7CC0];
  }

  j = sub_1ABD9E114(v146);
  v156 = v155;

  v31 = v1098;
  v1009 = j;
  HIDWORD(v1010) = v156;
  if (v1098)
  {
    v1124 = v142;
    sub_1ABADE01C(0, v143, 0);
    if ((v31 & 0x8000000000000000) != 0)
    {
LABEL_616:
      __break(1u);
      goto LABEL_617;
    }

    v157 = 0;
    v158 = v1124;
    v159 = v1101;
    v1100 = v1101 & 0xC000000000000001;
    do
    {
      if (v1100)
      {
        v160 = MEMORY[0x1AC5AA170](v157, v159);
      }

      else
      {
        v160 = *(v159 + 8 * v157 + 32);
      }

      sub_1ABA7EF0C();
      swift_beginAccess();
      v161 = *(v160 + 24);

      v1124 = v158;
      v163 = *(v158 + 16);
      v162 = *(v158 + 24);
      j = v163 + 1;
      if (v163 >= v162 >> 1)
      {
        v164 = sub_1ABA7BBEC(v162);
        sub_1ABADE01C(v164, v163 + 1, 1);
        v158 = v1124;
      }

      ++v157;
      *(v158 + 16) = j;
      *(v158 + 8 * v163 + 32) = v161;
    }

    while (v31 != v157);
  }

  else
  {
    v159 = v1101;
    v1100 = v1101 & 0xC000000000000001;
    v158 = MEMORY[0x1E69E7CC0];
  }

  v1007 = sub_1ABD23888(v158);
  HIDWORD(v1008) = v165;

  v166 = 0;
  v167 = v159 & 0xFFFFFFFFFFFFFF8;
  v19 = MEMORY[0x1E69E7CC0];
  v168 = &unk_1EB549000;
  v1055 = v167;
  while (v140 != v166)
  {
    if (v1100)
    {
      v31 = MEMORY[0x1AC5AA170](v166, v1101);
    }

    else
    {
      if (v166 >= *(v167 + 16))
      {
        goto LABEL_250;
      }

      sub_1ABA8B954(v1101 + 8 * v166);
    }

    if (__OFADD__(v166, 1))
    {
      goto LABEL_249;
    }

    v169 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_lifeEventIds;
    sub_1ABA7EF0C();
    swift_beginAccess();
    j = *(v31 + v169);

    ++v166;
    if (j)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v171 = sub_1ABA80F18();
        sub_1ABADBF80(v171, v172, v173, v174);
        v19 = v175;
      }

      v167 = *(v19 + 16);
      v170 = *(v19 + 24);
      v166 = v167 + 1;
      if (v167 >= v170 >> 1)
      {
        v176 = sub_1ABA7BBEC(v170);
        sub_1ABADBF80(v176, v167 + 1, 1, v19);
        v19 = v177;
      }

      sub_1ABA8D40C();
    }
  }

  v1123 = MEMORY[0x1E69E7CC0];
  j = sub_1ABA8DEE8(v19);
  for (i = 0; j != i; i = v179)
  {
    if (i >= *(v19 + 16))
    {
      goto LABEL_251;
    }

    v179 = i + 1;

    sub_1ABD7DAF4(v180);
  }

  v181 = 0;
  v1049 = v1123;
  v19 = MEMORY[0x1E69E7CC0];
  v168 = &unk_1EB549000;
  while (v140 != v181)
  {
    if (v1100)
    {
      v31 = MEMORY[0x1AC5AA170](v181, v1101);
    }

    else
    {
      if (v181 >= *(v167 + 16))
      {
        goto LABEL_253;
      }

      sub_1ABA8B954(v1101 + 8 * v181);
    }

    if (__OFADD__(v181, 1))
    {
      goto LABEL_252;
    }

    v182 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_ktsSegmentIds;
    sub_1ABA7EF0C();
    swift_beginAccess();
    j = *(v31 + v182);

    ++v181;
    if (j)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v184 = sub_1ABA80F18();
        sub_1ABADBF80(v184, v185, v186, v187);
        v19 = v188;
      }

      v167 = *(v19 + 16);
      v183 = *(v19 + 24);
      v181 = v167 + 1;
      if (v167 >= v183 >> 1)
      {
        v189 = sub_1ABA7BBEC(v183);
        sub_1ABADBF80(v189, v167 + 1, 1, v19);
        v19 = v190;
      }

      sub_1ABA8D40C();
    }
  }

  v1122 = MEMORY[0x1E69E7CC0];
  j = sub_1ABA8DEE8(v19);
  v191 = 0;
  v31 = v1098;
  while (j != v191)
  {
    if (v191 >= *(v19 + 16))
    {
      goto LABEL_254;
    }

    v192 = v191 + 1;

    sub_1ABD7DAF4(v193);
    v191 = v192;
  }

  v1025 = v1122;
  v194 = sub_1ABA8DEE8(v1049);
  v19 = MEMORY[0x1E69E7CC0];
  v1039 = v140;
  v1061 = v194;
  if (v31)
  {
    v1121 = MEMORY[0x1E69E7CC0];
    sub_1ABA95190();
    v195 = &v1121;
    sub_1ABDB47E8(v31, v196);
    if ((v31 & 0x8000000000000000) != 0)
    {
LABEL_617:
      __break(1u);
LABEL_618:
      __break(1u);
LABEL_619:
      __break(1u);
LABEL_620:
      __break(1u);
LABEL_621:
      __break(1u);
LABEL_622:
      __break(1u);
LABEL_623:
      __break(1u);
LABEL_624:
      __break(1u);
LABEL_625:
      __break(1u);
LABEL_626:
      __break(1u);
LABEL_627:
      __break(1u);
LABEL_628:
      __break(1u);
LABEL_629:
      __break(1u);
LABEL_630:
      __break(1u);
LABEL_631:
      __break(1u);
LABEL_632:
      v999 = sub_1ABA7ABE4();
      sub_1ABDB445C(v999, v1000);
      __break(1u);
LABEL_633:
      __break(1u);
LABEL_634:
      __break(1u);
LABEL_635:
      __break(1u);
      goto LABEL_636;
    }

    v197 = 0;
    v198 = (v1099 + 16);
    do
    {
      if (v1100)
      {
        v195 = MEMORY[0x1AC5AA170](v197, v1101);
      }

      else
      {
        sub_1ABA842C4();
      }

      v199 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceInMeters;
      sub_1ABA7EF0C();
      swift_beginAccess();
      (*v198)(v1097, &v195[v199], v1102);

      v195 = v1121;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA9F048();
        v200 = sub_1ABA83F84();
        sub_1ABADE914(v200, v201, v202);
        v195 = v1121;
      }

      v204 = *(v195 + 2);
      v203 = *(v195 + 3);
      if (v204 >= v203 >> 1)
      {
        sub_1ABA7BBEC(v203);
        sub_1ABAA0DB0();
        sub_1ABADE914(v207, v208, v209);
        v195 = v1121;
      }

      ++v197;
      *(v195 + 2) = v204 + 1;
      sub_1ABA7AD90();
      (*(v206 + 32))(&v195[v205 + *(v206 + 72) * v204], v1097, v1102);
      sub_1ABA89B74();
    }

    while (!v151);
    v1054 = v195;
    v1120[0] = v19;
    v210 = v1120;
    sub_1ABDB47E8(v1098, sub_1ABADE8D4);
    v211 = 0;
    v168 = &unk_1EB549000;
    v140 = v1058;
    do
    {
      if (v1100)
      {
        v210 = MEMORY[0x1AC5AA170](v211, v1101);
      }

      else
      {
        sub_1ABA842C4();
      }

      v212 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceBuckets;
      sub_1ABA7EF0C();
      swift_beginAccess();
      v213 = *(v210 + v212);

      v19 = v1120[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v210 = v1120;
        v214 = sub_1ABA83F84();
        sub_1ABADE8D4(v214, v215, v216);
        v19 = v1120[0];
      }

      v218 = *(v19 + 16);
      v217 = *(v19 + 24);
      v31 = v218 + 1;
      if (v218 >= v217 >> 1)
      {
        sub_1ABA7BBEC(v217);
        v210 = v1120;
        sub_1ABAA0DB0();
        sub_1ABADE8D4(v219, v220, v221);
        v19 = v1120[0];
      }

      ++v211;
      *(v19 + 16) = v31;
      *(v19 + 8 * v218 + 32) = v213;
      sub_1ABA89B74();
    }

    while (!v151);
  }

  else
  {
    v1054 = MEMORY[0x1E69E7CC0];
    v140 = v1058;
  }

  sub_1ABDB4878();
  v222 = sub_1ABF239C4();
  v223 = sub_1ABA8DEE8(v19);
  for (j = 0; v223 != j; ++j)
  {
    v224 = sub_1ABACFA90();
    sub_1ABC43DF0();
    if (v224)
    {
      v225 = *(v19 + 8 * j + 32);
    }

    else
    {
      v225 = sub_1ABDB4684(j, v19);
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_255;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1120[0] = v222;
    v107 = v140;
    sub_1ABDB914C(v225, sub_1ABDBF6E4, 0, isUniquelyReferenced_nonNull_native, v1120);
    if (v140)
    {
      goto LABEL_673;
    }

    v222 = v1120[0];
  }

  v227 = objc_opt_self();
  v228 = [v227 meters];
  v229 = sub_1ABAFF390(0, &qword_1EB4CE6D8, 0x1E696B058);
  v230 = v1084;
  v1086 = v229;
  sub_1ABF218B4();
  v231 = v1099;
  v233 = v1099 + 16;
  v232 = *(v1099 + 16);
  v234 = v1082;
  v232(v1082, v230, v1102);
  v235 = sub_1ABA8DEE8(v1054);
  v1091 = v233;
  v1097 = v232;
  v1024 = v222;
  v1060 = v227;
  if (v235)
  {
    v236 = v235;
    if (v235 < 1)
    {
      goto LABEL_618;
    }

    v1058 = v140;
    sub_1ABA7AB74();
    v238 = v1054 + v237;
    v1096 = v231[9];
    v239 = (v231 + 1);
    v240 = v1102;
    v1095 = (v231 + 4);
    v1080 = (v231 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v241 = v1078;
    do
    {
      v1097(v241, v238, v240);
      sub_1ABF218D4();
      v242 = *v239;
      (*v239)(v241, v240);
      v242(v234, v240);
      v243 = sub_1ABA90200();
      v244(v243);
      v238 += v1096;
      --v236;
    }

    while (v236);
    v245 = v240;
    v246 = v1080;
    v140 = v1058;
    v231 = v1099;
  }

  else
  {
    v242 = v231[1];
    v246 = (v231 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v245 = v1102;
  }

  v1080 = v246;
  v1078 = v242;
  v242(v1084, v245);
  v248 = (v231 + 4);
  v247 = v231[4];
  v249 = sub_1ABA954F0();
  v247(v249);
  v250 = v1079;
  sub_1ABD23910();
  if (sub_1ABA7E1E0(v250, 1, v245) == 1)
  {

    sub_1ABAB480C(v250, &qword_1EB4D9990, &unk_1ABF617E0);
    v251 = 0x80000001ABF90350;
    sub_1ABDBF718();
    v252 = swift_allocError();
    sub_1ABA9E970(v252, v253, v254, v255, v256, v257, v258, v259);
    v1078(v1052, v245);
    return v251;
  }

  v260 = v250;
  v261 = v245;
  v1095 = v247;
  (v247)(v1037, v260, v245);
  sub_1ABF21874();
  v1096 = v248;
  v262 = v1098;
  v1058 = v140;
  if (v1098)
  {
    v1119[0] = MEMORY[0x1E69E7CC0];
    sub_1ABA95190();
    v263 = v1119;
    sub_1ABDB47E8(v262, v264);
    if (v262 < 0)
    {
LABEL_636:
      __break(1u);
      goto LABEL_637;
    }

    v265 = 0;
    v266 = v1101;
    v267 = v1095;
    do
    {
      if (v1100)
      {
        v263 = MEMORY[0x1AC5AA170](v265, v266);
      }

      else
      {
        sub_1ABA842C4();
      }

      v268 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_elevationGainInMeters;
      sub_1ABA7EF0C();
      swift_beginAccess();
      v1097(v1093, &v263[v268], v245);

      v140 = v1119[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v263 = v1119;
        v269 = sub_1ABA83F84();
        sub_1ABADE914(v269, v270, v271);
        v140 = v1119[0];
      }

      v273 = *(v140 + 16);
      v272 = *(v140 + 24);
      if (v273 >= v272 >> 1)
      {
        sub_1ABA7BBEC(v272);
        v263 = v1119;
        sub_1ABAA04C0();
        sub_1ABADE914(v277, v278, v279);
        v140 = v1119[0];
      }

      ++v265;
      *(v140 + 16) = v273 + 1;
      sub_1ABA7AD90();
      v276 = v140 + v274 + *(v275 + 72) * v273;
      v245 = v261;
      v267(v276, v1093, v261);
      sub_1ABA89B74();
      v266 = v1101;
    }

    while (!v151);
    v280 = v1099;
  }

  else
  {
    v140 = MEMORY[0x1E69E7CC0];
    v280 = v1099;
  }

  v281 = [v1060 meters];
  v282 = v1071;
  sub_1ABF218B4();
  v1097(v1070, v282, v245);
  v283 = sub_1ABA8DEE8(v140);
  v1006 = v140;
  if (v283)
  {
    v284 = v283;
    if (v283 < 1)
    {
LABEL_637:
      __break(1u);
LABEL_638:
      v1001 = sub_1ABA7ABE4();
      sub_1ABDB445C(v1001, v1002);
      __break(1u);
LABEL_639:
      __break(1u);
LABEL_640:
      __break(1u);
LABEL_641:
      __break(1u);
LABEL_642:
      v1003 = sub_1ABA7ABE4();
      sub_1ABDB445C(v1003, v1004);
      __break(1u);
LABEL_643:
      __break(1u);
LABEL_644:
      __break(1u);
LABEL_645:
      __break(1u);
LABEL_646:
      __break(1u);
LABEL_647:
      __break(1u);
LABEL_648:
      __break(1u);
      goto LABEL_649;
    }

    sub_1ABA7AB74();
    v286 = (v140 + v285);
    v1093 = *(v280 + 72);
    v287 = v1070;
    v288 = v1051;
    v289 = v1078;
    do
    {
      v1097(v288, v286, v261);
      sub_1ABF218D4();
      v289(v288, v261);
      v290 = sub_1ABA8EF78();
      (v289)(v290);
      v291 = sub_1ABA8A354();
      v1095(v291);
      v286 += v1093;
      --v284;
    }

    while (v284);
  }

  else
  {
    v261 = v245;
    v287 = v1070;
  }

  v1078(v1071, v261);
  v292 = v1023;
  v293 = v1095;
  (v1095)(v1023, v287, v261);
  v294 = v1073;
  sub_1ABD23910();
  if (sub_1ABA7E1E0(v294, 1, v261) == 1)
  {

    sub_1ABAB480C(v294, &qword_1EB4D9990, &unk_1ABF617E0);
    sub_1ABDBF718();
    v295 = swift_allocError();
    sub_1ABA9E970(v295, v296, v297, v298, v299, v300, v301, v302);
    v251 = v1078;
    v1078(v292, v261);
    v251(v1038, v261);
    v251(v1037, v261);
    v251(v1052, v261);
    return v251;
  }

  sub_1ABAB0FB8();
  v293();
  sub_1ABF21874();
  v303 = v1098;
  if (v1098)
  {
    v1118 = MEMORY[0x1E69E7CC0];
    sub_1ABAA006C();
    v304 = &v1118;
    v306 = sub_1ABDB47E8(v303, v305);
    v307 = v1081;
    v140 = v1062;
    if (v303 < 0)
    {
LABEL_649:
      __break(1u);
      goto LABEL_650;
    }

    v308 = 0;
    v309 = (v1077 + 16);
    v310 = v1101;
    do
    {
      if (v1100)
      {
        v304 = MEMORY[0x1AC5AA170](v308, v310);
      }

      else
      {
        sub_1ABA82B2C(v306, v310);
      }

      v311 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_durationInSeconds;
      sub_1ABA7EF0C();
      swift_beginAccess();
      (*v309)(v1092, &v304[v311], v307);

      v304 = v1118;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA9F048();
        v312 = sub_1ABA83F84();
        sub_1ABADE894(v312, v313, v314);
        v304 = v1118;
      }

      v316 = *(v304 + 2);
      v315 = *(v304 + 3);
      if (v316 >= v315 >> 1)
      {
        v320 = sub_1ABA7BBEC(v315);
        sub_1ABADE894(v320, v316 + 1, 1);
        v304 = v1118;
      }

      ++v308;
      *(v304 + 2) = v316 + 1;
      sub_1ABA7AD90();
      v318 = sub_1ABA9DFD8(v317);
      v306 = (*(v319 + 32))(v318, v1092, v307);
      v303 = v1098;
      v310 = v1101;
    }

    while (v1098 != v308);
  }

  else
  {
    v304 = sub_1ABAE8EC4(0);
    v140 = v1062;
  }

  v321 = objc_opt_self();
  v322 = [v321 seconds];
  v1061 = sub_1ABAFF390(0, &qword_1EB4CE6B8, 0x1E696B008);
  v323 = v1069;
  sub_1ABF218B4();
  v324 = v1077;
  v325 = v1077 + 16;
  v326 = *(v1077 + 16);
  v326(v1076, v323, v1081);
  v327 = sub_1ABA8DEE8(v304);
  v1071 = v325;
  v1070 = v326;
  v1084 = v321;
  if (v327)
  {
    v328 = v327;
    if (v327 < 1)
    {
LABEL_650:
      __break(1u);
      goto LABEL_651;
    }

    sub_1ABA7AD90();
    v1082 = v304;
    v330 = &v304[v329];
    v1093 = *(v331 + 72);
    v332 = (v331 + 8);
    v1092 = (v331 + 32);
    v1060 = ((v331 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v333 = v1081;
    v334 = v1059;
    do
    {
      sub_1ABDBFB70();
      v335();
      sub_1ABF218D4();
      v336 = *v332;
      (*v332)(v334, v333);
      v337 = sub_1ABA95870();
      v336(v337);
      v338 = sub_1ABDBFBB8();
      v339(v338);
      v330 += v1093;
      --v328;
    }

    while (v328);

    v340 = v333;
    v341 = v1060;
    v325 = v1071;
    v326 = v1070;
    v303 = v1098;
    v324 = v1077;
    v140 = v1062;
  }

  else
  {

    v336 = *(v324 + 8);
    v341 = ((v324 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v340 = v1081;
  }

  v1059 = v336;
  v1060 = v341;
  (v336)(v1069, v340);
  v1079 = *(v324 + 32);
  v1062 = v324 + 32;
  v1079(v1043, v1076, v340);
  if (v303)
  {
    v1117 = MEMORY[0x1E69E7CC0];
    sub_1ABAA006C();
    v342 = &v1117;
    sub_1ABDB47E8(v303, v343);
    if (v303 < 0)
    {
LABEL_651:
      __break(1u);
      goto LABEL_652;
    }

    v344 = 0;
    v345 = v1101;
    v346 = v1081;
    do
    {
      if (v1100)
      {
        v342 = MEMORY[0x1AC5AA170](v344, v345);
      }

      else
      {
        sub_1ABA842C4();
      }

      v347 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_expectedDurationInSecondsNoTraffic;
      sub_1ABA7EF0C();
      swift_beginAccess();
      v326(v140, v342 + v347, v346);

      v342 = v1117;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA9F048();
        v348 = sub_1ABA83F84();
        sub_1ABADE894(v348, v349, v350);
        v342 = v1117;
      }

      v352 = v342[2];
      v351 = v342[3];
      if (v352 >= v351 >> 1)
      {
        sub_1ABA7BBEC(v351);
        sub_1ABAA04C0();
        sub_1ABADE894(v355, v356, v357);
        v342 = v1117;
      }

      ++v344;
      v342[2] = v352 + 1;
      sub_1ABA7AD90();
      sub_1ABA9DFD8(v353);
      v346 = v1081;
      sub_1ABA88FE0();
      v354();
      sub_1ABA89B74();
      v345 = v1101;
    }

    while (!v151);
  }

  else
  {
    v342 = sub_1ABAE8EC4(0);
    v346 = v1081;
  }

  v358 = [v1084 seconds];
  sub_1ABF218B4();
  sub_1ABAB0FB8();
  (v326)();
  v359 = sub_1ABA8DEE8(v342);
  v1092 = v342;
  if (v359)
  {
    v325 = v359;
    if (v359 < 1)
    {
LABEL_652:
      __break(1u);
      goto LABEL_653;
    }

    sub_1ABA7AD90();
    v361 = v342 + v360;
    v1093 = *(v362 + 72);
    v346 = v1081;
    do
    {
      sub_1ABAB0FB8();
      sub_1ABDBFB70();
      v363();
      sub_1ABF218D4();
      v364 = sub_1ABA82DAC();
      v365 = v1059;
      v1059(v364);
      v366 = sub_1ABA8A40C();
      v365(v366);
      sub_1ABA954F0();
      sub_1ABA88FE0();
      v367();
      v361 += v1093;
      --v325;
    }

    while (v325);
  }

  (v1059)(v1064, v346);
  sub_1ABA88FE0();
  v368();
  v168 = v1098;
  if (v1098)
  {
    v1116 = MEMORY[0x1E69E7CC0];
    sub_1ABDB47E8(v1098, sub_1ABADE854);
    v140 = v1058;
    if (v168 < 0)
    {
LABEL_653:
      __break(1u);
LABEL_654:
      __break(1u);
      goto LABEL_655;
    }

    sub_1ABDBFAD8();
    v31 = v1083;
    do
    {
      if (v1100)
      {
        MEMORY[0x1AC5AA170](v325);
      }

      else
      {
        sub_1ABA82B2C(v369, v370);
      }

      v371 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtRelativeSpeeds;
      sub_1ABA7EF0C();
      swift_beginAccess();
      sub_1ABA9E87C();

      v372 = v1116;
      v369 = swift_isUniquelyReferenced_nonNull_native();
      if ((v369 & 1) == 0)
      {
        sub_1ABA9F048();
        v373 = sub_1ABA83F84();
        sub_1ABADE854(v373, v374, v375);
        v372 = v1116;
      }

      v370 = v1101;
      v377 = *(v372 + 16);
      v376 = *(v372 + 24);
      v378 = v372;
      if (v377 >= v376 >> 1)
      {
        sub_1ABA7BBEC(v376);
        sub_1ABAA04C0();
        sub_1ABADE854(v380, v381, v382);
        v370 = v1101;
        v378 = v1116;
      }

      ++v325;
      *(v378 + 16) = v377 + 1;
      *(v378 + 8 * v377 + 32) = v371;
      v379 = v1099;
      j = v1096;
    }

    while (v168 != v325);
    v383 = v378;
  }

  else
  {
    v383 = sub_1ABAE8E58(0);
    v140 = v1058;
    v31 = v1083;
    v379 = v1099;
    j = v1096;
  }

  v1045 = sub_1ABA8DEE8(v383);
  v1046 = v383;
  v1053 = 0;
  v1040 = v383 + 32;
  v384 = MEMORY[0x1E69E7CC8];
  v1069 = (v379 + 40);
  v385 = v1101;
  while (1)
  {
    v386 = v1053;
    if (v1053 == v1045)
    {
      goto LABEL_204;
    }

    v387 = sub_1ABACFA90();
    sub_1ABC43DF0();
    if (v387)
    {
      v388 = *(v1040 + 8 * v386);
    }

    else
    {
      v388 = sub_1ABDB4570(v386, v1046);
    }

    v385 = v1090;
    v389 = __OFADD__(v386, 1);
    v390 = v386 + 1;
    if (v389)
    {
      __break(1u);
      goto LABEL_615;
    }

    v1053 = v390;
    v1058 = v140;
    LODWORD(v1093) = swift_isUniquelyReferenced_nonNull_native();
    v1116 = v384;
    sub_1ABAB4C0C(v388, sub_1ABDBCFD8, 0, v1126);
    v107 = v1126[1];
    v1082 = v1126[0];
    v391 = v1128;
    v392 = v1129;
    v1073 = v1130;
    v1076 = v1131;
    v1050 = v1127;
    v1051 = v388;
    v1064 = ((v1127 + 64) >> 6);

    v1084 = v107;
LABEL_178:
    v1085 = v392;
    if (v392)
    {
      v393 = v384;
      v394 = v391;
      goto LABEL_185;
    }

    v168 = v391;
    v140 = v1087;
LABEL_181:
    v394 = v168 + 1;
    if (__OFADD__(v168, 1))
    {
      break;
    }

    if (v394 >= v1064)
    {
      v1092 = 0;
      v403 = 1;
      goto LABEL_186;
    }

    ++v168;
    if (!*&v107[8 * v394])
    {
      goto LABEL_181;
    }

    v393 = v384;
LABEL_185:
    sub_1ABDBFAFC();
    v1092 = v395;
    v397 = v396 | (v394 << 6);
    v398 = *(v1082[6] + v397);
    v399 = v1088;
    v400 = v1102;
    v1097(v1088, v1082[7] + *(v1099 + 72) * v397, v1102);
    v401 = *(v31 + 48);
    v402 = v1090;
    *v1090 = v398;
    v385 = v402;
    (v1095)(v402 + v401, v399, v400);
    v403 = 0;
    v168 = v394;
    v384 = v393;
    v140 = v1087;
LABEL_186:
    v404 = 1;
    sub_1ABA7B9B4(v385, v403, 1, v31);
    v405 = v385;
    v406 = v1089;
    sub_1ABBD898C(v405, v1089, &qword_1EB4D37C8, &qword_1ABF3D830);
    if (sub_1ABA7E1E0(v406, 1, v31) != 1)
    {
      v407 = v1074;
      sub_1ABBD898C(v1089, v1074, &qword_1EB4D37D0, &qword_1ABF3D838);
      (v1073)(v407);
      sub_1ABAB480C(v407, &qword_1EB4D37D0, &qword_1ABF3D838);
      v404 = 0;
    }

    v408 = sub_1ABAD219C(&qword_1EB4D1428, &qword_1ABF335B0);
    sub_1ABA7B9B4(v140, v404, 1, v408);
    v409 = sub_1ABA7BC4C();
    v411 = sub_1ABAD219C(v409, v410);
    if (sub_1ABA7E1E0(v140, 1, v411) != 1)
    {
      v19 = *v140;
      v31 = v1095;
      j = v1096;
      (v1095)(k, v140 + *(v411 + 48), v1102);
      v413 = sub_1ABAFF5B8();
      v414 = v384[2];
      v415 = (v412 & 1) == 0;
      v416 = v414 + v415;
      if (__OFADD__(v414, v415))
      {
        __break(1u);
        goto LABEL_218;
      }

      v140 = v412;
      if (v384[3] < v416)
      {
        sub_1ABC05850(v416, v1093 & 1);
        v417 = sub_1ABAFF5B8();
        if ((v140 & 1) == (v418 & 1))
        {
          v413 = v417;
          goto LABEL_195;
        }

LABEL_672:
        sub_1ABF25104();
        __break(1u);
LABEL_673:

        goto LABEL_674;
      }

      if ((v1093 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D55E0, &qword_1ABF617F0);
        sub_1ABF24C74();
      }

LABEL_195:
      v384 = v1116;
      if (v140)
      {
        v419 = *(v1116 + 56) + *(v1099 + 72) * v413;
        v1085 = v1116;
        v420 = v1102;
        v1097(v1072, v419, v1102);
        v421 = k;
        sub_1ABF218D4();
        v422 = sub_1ABA90200();
        v423 = v1078;
        (v1078)(v422);
        v423(v421, v420);
        v384 = v1085;
        j = v1096;
        sub_1ABDBF9A8();
        v424();
        goto LABEL_199;
      }

      *(v1116 + 8 * (v413 >> 6) + 64) |= 1 << v413;
      *(v384[6] + v413) = v19;
      (v31)(v384[7] + *(v1099 + 72) * v413, k, v1102);
      v425 = v384[2];
      v389 = __OFADD__(v425, 1);
      v426 = v425 + 1;
      if (v389)
      {
        __break(1u);
LABEL_270:
        __break(1u);
        goto LABEL_271;
      }

      v384[2] = v426;
LABEL_199:
      LODWORD(v1093) = 1;
      v391 = v168;
      v392 = v1092;
      v31 = v1083;
      v385 = v1090;
      v107 = v1084;
      goto LABEL_178;
    }

    sub_1ABAB4C48(v1082);

    v385 = v1101;
    v140 = v1058;
    v168 = v1098;
    j = v1096;
  }

  __break(1u);
LABEL_204:

  v1085 = v384;
  if (!v168)
  {
LABEL_218:

    v429 = sub_1ABAE8E44(0);
    v1 = v1062;
    goto LABEL_219;
  }

  v1115 = MEMORY[0x1E69E7CC0];

  v427 = sub_1ABDB47E8(v168, sub_1ABADE814);
  if (v168 < 0)
  {
    goto LABEL_654;
  }

  v428 = v385;
  do
  {
    if (v1100)
    {
      MEMORY[0x1AC5AA170](0, v428);
    }

    else
    {
      sub_1ABA82B2C(v427, v428);
    }

    j = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentAtRelativeSpeeds;
    sub_1ABA7EF0C();
    swift_beginAccess();
    sub_1ABA9E87C();

    v429 = v1115;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA9F048();
      v430 = sub_1ABA83F84();
      sub_1ABADE814(v430, v431, v432);
      v429 = v1115;
    }

    v31 = v429[2];
    v433 = v429[3];
    if (v31 >= v433 >> 1)
    {
      sub_1ABA7BBEC(v433);
      sub_1ABAA04C0();
      sub_1ABADE814(v434, v435, v436);
      v429 = v1115;
    }

    sub_1ABAA3D9C();
    v1 = v1062;
  }

  while (!v151);
LABEL_219:
  v1074 = sub_1ABA8DEE8(v429);
  v19 = 0;
  v1073 = (v429 + 4);
  v1099 = MEMORY[0x1E69E7CC8];
  v1086 = v1077 + 40;
  v1069 = v429;
LABEL_220:
  if (v19 == v1074)
  {
    goto LABEL_256;
  }

  v437 = sub_1ABACFA90();
  sub_1ABC43DF0();
  if (v437)
  {
    j = *(v1073 + 8 * v19);
  }

  else
  {
    j = sub_1ABDB4570(v19, v1069);
  }

  v1058 = v140;
  v1083 = v19 + 1;
  if (__OFADD__(v19, 1))
  {
    goto LABEL_619;
  }

  v438 = v1099;
  LODWORD(v31) = swift_isUniquelyReferenced_nonNull_native();
  v1115 = v438;
  sub_1ABAB4C0C(j, sub_1ABDBCF58, 0, v1132);
  v107 = v1132[1];
  v1090 = v1132[0];
  v19 = v1134;
  v439 = v1135;
  v1087 = v1136;
  v1089 = v1137;
  v1076 = v1133;
  v1084 = ((v1133 + 64) >> 6);
  v1082 = j;

  v140 = v1065;
  for (k = v107; ; v107 = k)
  {
    v440 = v1066;
    v441 = v1067;
    LODWORD(v1096) = v31;
    v1093 = v19;
    v1092 = v439;
    if (!v439)
    {
      break;
    }

    v442 = v19;
LABEL_230:
    sub_1ABDBFAFC();
    v1095 = v443;
    v445 = *(*(v1090 + 48) + (v444 | (v442 << 6)));
    v446 = v1075;
    v447 = v1081;
    sub_1ABDBFB70();
    v448();
    v450 = v1066;
    v449 = v1067;
    v451 = *(v1067 + 48);
    *v1066 = v445;
    v1079(&v450[v451], v446, v447);
    v440 = v450;
    v441 = v449;
    v452 = 0;
    v19 = v442;
    v168 = v1098;
    v140 = v1065;
LABEL_231:
    v453 = 1;
    v454 = v440;
    sub_1ABA7B9B4(v440, v452, 1, v441);
    v455 = v454;
    v456 = v1063;
    sub_1ABBD898C(v455, v1063, &qword_1EB4D3798, &unk_1ABF3D800);
    if (sub_1ABA7E1E0(v456, 1, v441) != 1)
    {
      v457 = v1057;
      j = v1;
      sub_1ABBD898C(v1063, v1057, &qword_1EB4D37A0, &unk_1ABF617C0);
      (v1087)(v457);
      v458 = sub_1ABA894A0();
      sub_1ABAB480C(v458, v459, &unk_1ABF617C0);
      v453 = 0;
    }

    v31 = &qword_1ABF335A0;
    v460 = sub_1ABAD219C(&qword_1EB4D1418, &qword_1ABF335A0);
    sub_1ABA7B9B4(v140, v453, 1, v460);
    v461 = sub_1ABA894A0();
    v463 = sub_1ABAD219C(v461, v462);
    if (sub_1ABA7E1E0(v140, 1, v463) == 1)
    {
      sub_1ABAB4C48(v1090);

      v140 = v1058;
      v19 = v1083;
      goto LABEL_220;
    }

    v2 = *v140;
    v1079(v1068, v140 + *(v463 + 48), v1081);
    v4 = v1099;
    j = sub_1ABAFF5B8();
    v465 = v4[2];
    v466 = (v464 & 1) == 0;
    v467 = v465 + v466;
    if (__OFADD__(v465, v466))
    {
      goto LABEL_270;
    }

    v140 = v464;
    if (v4[3] >= v467)
    {
      if ((v1096 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D55D0, &qword_1ABF4ABC0);
        v4 = &v1115;
        sub_1ABF24C74();
      }
    }

    else
    {
      sub_1ABC0582C(v467, v1096 & 1);
      v4 = v1115;
      v468 = sub_1ABAFF5B8();
      if ((v140 & 1) != (v469 & 1))
      {
        goto LABEL_672;
      }

      j = v468;
    }

    a1 = v1115;
    v1099 = v1115;
    if (v140)
    {
      v470 = v1077;
      v1096 = *(v1077 + 72) * j;
      j = v1081;
      sub_1ABDBFB70();
      v471();
      v472 = v1075;
      sub_1ABF218D4();
      v473 = sub_1ABA7BC4C();
      v474 = v1059;
      v1059(v473);
      v475 = sub_1ABAA030C();
      v474(v475);
      v476 = *(v470 + 40);
      v1 = v1062;
      v476(*(a1 + 56) + v1096, v472, j);
    }

    else
    {
      *(v1115 + 8 * (j >> 6) + 64) |= 1 << j;
      *(*(a1 + 48) + j) = v2;
      v128 = (v1079)(*(a1 + 56) + *(v1077 + 72) * j, v1068, v1081);
      v477 = *(a1 + 16);
      v389 = __OFADD__(v477, 1);
      v478 = v477 + 1;
      if (v389)
      {
        __break(1u);
        goto LABEL_611;
      }

      *(a1 + 16) = v478;
    }

    LODWORD(v31) = 1;
    v439 = v1095;
    v168 = v1098;
    v140 = v1065;
  }

  while (1)
  {
    v442 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v442 >= v1084)
    {
      v1095 = 0;
      v452 = 1;
      goto LABEL_231;
    }

    ++v19;
    if (*&v107[8 * v442])
    {
      goto LABEL_230;
    }
  }

  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  __break(1u);
LABEL_251:
  __break(1u);
LABEL_252:
  __break(1u);
LABEL_253:
  __break(1u);
LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:

  if (v168)
  {
    v1114 = MEMORY[0x1E69E7CC0];
    sub_1ABDB47E8(v168, sub_1ABADE7D4);
    if ((v168 & 0x8000000000000000) == 0)
    {
      sub_1ABDBFAD8();
      do
      {
        if (v1100)
        {
          MEMORY[0x1AC5AA170](v19);
        }

        else
        {
          sub_1ABA82B2C(v479, v480);
        }

        j = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtSpeedBuckets;
        sub_1ABA7EF0C();
        swift_beginAccess();
        sub_1ABA9E87C();

        v481 = v1114;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA9F048();
          v482 = sub_1ABA83F84();
          sub_1ABADE7D4(v482, v483, v484);
          v481 = v1114;
        }

        sub_1ABA8ADCC();
        if (v486)
        {
          sub_1ABA7BBEC(v485);
          sub_1ABAA04C0();
          sub_1ABADE7D4(v487, v488, v489);
          v481 = v1114;
        }

        sub_1ABA8CBA4();
      }

      while (!v151);
      goto LABEL_272;
    }

LABEL_655:
    __break(1u);
LABEL_656:
    __break(1u);
LABEL_657:
    __break(1u);
LABEL_658:
    __break(1u);
LABEL_659:
    __break(1u);
LABEL_660:
    __break(1u);
LABEL_661:
    __break(1u);
LABEL_662:
    __break(1u);
LABEL_663:
    __break(1u);
LABEL_664:
    __break(1u);
LABEL_665:
    __break(1u);
LABEL_666:
    __break(1u);
LABEL_667:
    __break(1u);
LABEL_668:
    __break(1u);
LABEL_669:
    __break(1u);
LABEL_670:
    __break(1u);
LABEL_671:
    __break(1u);
    goto LABEL_672;
  }

LABEL_271:
  v481 = sub_1ABAE8E30(0);
LABEL_272:
  sub_1ABA8DEE8(v481);
  sub_1ABA8A418();
  v1096 = MEMORY[0x1E69E7CC8];
  while (v19 != j)
  {
    sub_1ABACFA90();
    sub_1ABAA3228();
    sub_1ABC43DF0();
    if (v31)
    {
      sub_1ABAA05E4();
    }

    else
    {
      v496 = sub_1ABA8B354();
      LOBYTE(v31) = sub_1ABDB4570(v496, v497);
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_620;
    }

    v490 = v1096;
    swift_isUniquelyReferenced_nonNull_native();
    v1114 = v490;
    v491 = sub_1ABA9804C();
    sub_1ABDB8CDC(v491, v492, v493, v494, v495);
    v140 = v107;
    if (v107)
    {
LABEL_678:

      goto LABEL_674;
    }

    v1096 = v1114;
    ++j;
  }

  if (v168)
  {
    v1113 = MEMORY[0x1E69E7CC0];

    v498 = sub_1ABDB47E8(v168, sub_1ABADE794);
    if (v168 < 0)
    {
      goto LABEL_656;
    }

    v19 = 0;
    v499 = v1101;
    do
    {
      if (v1100)
      {
        MEMORY[0x1AC5AA170](0, v499);
      }

      else
      {
        sub_1ABA82B2C(v498, v499);
      }

      j = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentAtSpeedBuckets;
      sub_1ABA7EF0C();
      swift_beginAccess();
      sub_1ABA9E87C();

      v500 = v1113;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA9F048();
        v501 = sub_1ABA83F84();
        sub_1ABADE794(v501, v502, v503);
        v500 = v1113;
      }

      sub_1ABA96DCC();
      if (v486)
      {
        sub_1ABA7BBEC(v504);
        sub_1ABAA04C0();
        sub_1ABADE794(v505, v506, v507);
        v500 = v1113;
      }

      sub_1ABAA3D9C();
    }

    while (!v151);
  }

  else
  {

    v500 = sub_1ABAE8E1C(0);
  }

  sub_1ABA8DEE8(v500);
  sub_1ABA8A418();
  k = MEMORY[0x1E69E7CC8];
  while (v19 != j)
  {
    sub_1ABACFA90();
    sub_1ABAA3228();
    sub_1ABC43DF0();
    if (v31)
    {
      sub_1ABAA05E4();
    }

    else
    {
      v514 = sub_1ABA8B354();
      LOBYTE(v31) = sub_1ABDB4570(v514, v515);
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_621;
    }

    v508 = k;
    swift_isUniquelyReferenced_nonNull_native();
    v1113 = v508;
    v509 = sub_1ABA9804C();
    sub_1ABDB886C(v509, v510, v511, v512, v513);
    v140 = v107;
    if (v107)
    {
      goto LABEL_678;
    }

    k = v1113;
    ++j;
  }

  if (v168)
  {
    v1112 = MEMORY[0x1E69E7CC0];
    sub_1ABDB47E8(v168, sub_1ABADE754);
    if (v168 < 0)
    {
      goto LABEL_657;
    }

    sub_1ABDBFAD8();
    do
    {
      if (v1100)
      {
        MEMORY[0x1AC5AA170](v19);
      }

      else
      {
        sub_1ABA82B2C(v516, v517);
      }

      j = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentInTrafficBuckets;
      sub_1ABA7EF0C();
      swift_beginAccess();
      sub_1ABA9E87C();

      v518 = v1112;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA9F048();
        v519 = sub_1ABA83F84();
        sub_1ABADE754(v519, v520, v521);
        v518 = v1112;
      }

      sub_1ABA8ADCC();
      if (v486)
      {
        sub_1ABA7BBEC(v522);
        sub_1ABAA04C0();
        sub_1ABADE754(v523, v524, v525);
        v518 = v1112;
      }

      sub_1ABA8CBA4();
    }

    while (!v151);
  }

  else
  {
    v518 = sub_1ABAE8E08(0);
  }

  sub_1ABA8DEE8(v518);
  sub_1ABA8A418();
  v1095 = MEMORY[0x1E69E7CC8];
  while (v19 != j)
  {
    sub_1ABACFA90();
    sub_1ABAA3228();
    sub_1ABC43DF0();
    if (v31)
    {
      sub_1ABAA05E4();
    }

    else
    {
      v532 = sub_1ABA8B354();
      LOBYTE(v31) = sub_1ABDB4570(v532, v533);
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_622;
    }

    v526 = v1095;
    swift_isUniquelyReferenced_nonNull_native();
    v1112 = v526;
    v527 = sub_1ABA9804C();
    sub_1ABDB83FC(v527, v528, v529, v530, v531);
    v140 = v107;
    if (v107)
    {
      goto LABEL_678;
    }

    v1095 = v1112;
    ++j;
  }

  if (v168)
  {
    v1111 = MEMORY[0x1E69E7CC0];

    v534 = sub_1ABDB47E8(v168, sub_1ABADE714);
    if (v168 < 0)
    {
      goto LABEL_658;
    }

    v19 = 0;
    v535 = v1101;
    do
    {
      if (v1100)
      {
        MEMORY[0x1AC5AA170](0, v535);
      }

      else
      {
        sub_1ABA82B2C(v534, v535);
      }

      j = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentInTrafficBuckets;
      sub_1ABA7EF0C();
      swift_beginAccess();
      sub_1ABA9E87C();

      v536 = v1111;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA9F048();
        v537 = sub_1ABA83F84();
        sub_1ABADE714(v537, v538, v539);
        v536 = v1111;
      }

      sub_1ABA96DCC();
      if (v486)
      {
        sub_1ABA7BBEC(v540);
        sub_1ABAA04C0();
        sub_1ABADE714(v541, v542, v543);
        v536 = v1111;
      }

      sub_1ABAA3D9C();
    }

    while (!v151);
  }

  else
  {

    v536 = sub_1ABAE8DF4(0);
  }

  sub_1ABA8DEE8(v536);
  sub_1ABA8A418();
  v1092 = MEMORY[0x1E69E7CC8];
  while (v19 != j)
  {
    sub_1ABACFA90();
    sub_1ABAA3228();
    sub_1ABC43DF0();
    if (v31)
    {
      sub_1ABAA05E4();
    }

    else
    {
      v550 = sub_1ABA8B354();
      LOBYTE(v31) = sub_1ABDB4570(v550, v551);
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_623;
    }

    v544 = v1092;
    swift_isUniquelyReferenced_nonNull_native();
    v1111 = v544;
    v545 = sub_1ABA9804C();
    sub_1ABDB7F8C(v545, v546, v547, v548, v549);
    v140 = v107;
    if (v107)
    {
      goto LABEL_678;
    }

    v1092 = v1111;
    ++j;
  }

  if (v168)
  {
    v1110 = MEMORY[0x1E69E7CC0];
    v552 = &v1110;
    v553 = sub_1ABDB47E8(v168, sub_1ABADE6D4);
    if (v168 < 0)
    {
      goto LABEL_659;
    }

    v554 = 0;
    v555 = (v1042 + 16);
    v556 = v1101;
    do
    {
      if (v1100)
      {
        v552 = MEMORY[0x1AC5AA170](v554, v556);
      }

      else
      {
        sub_1ABA82B2C(v553, v556);
      }

      v557 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_averageSpeedInMetersPerSecond;
      sub_1ABA7EF0C();
      swift_beginAccess();
      (*v555)(v1047, &v552[v557], v1048);

      v552 = v1110;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA9F048();
        v558 = sub_1ABA83F84();
        sub_1ABADE6D4(v558, v559, v560);
        v552 = v1110;
      }

      v562 = *(v552 + 2);
      v561 = *(v552 + 3);
      if (v562 >= v561 >> 1)
      {
        v566 = sub_1ABA7BBEC(v561);
        sub_1ABADE6D4(v566, v562 + 1, 1);
        v552 = v1110;
      }

      ++v554;
      *(v552 + 2) = v562 + 1;
      sub_1ABA7AD90();
      v564 = sub_1ABA9DFD8(v563);
      v553 = (*(v565 + 32))(v564, v1047, v1048);
      v168 = v1098;
      v556 = v1101;
    }

    while (v1098 != v554);
  }

  else
  {
    v552 = sub_1ABAE8DE0(0);
  }

  v567 = [objc_opt_self() metersPerSecond];
  v1093 = sub_1ABAFF390(0, &qword_1EB4CE6F0, 0x1E696B078);
  sub_1ABF218B4();
  v568 = v1042;
  v569 = v1042 + 16;
  v570 = sub_1ABA8C53C();
  v572 = v571;
  v571(v570);
  v573 = sub_1ABA8DEE8(v552);
  v1076 = v569;
  v1074 = v572;
  if (v573)
  {
    v574 = v573;
    v1058 = v140;
    if (v573 < 1)
    {
      goto LABEL_660;
    }

    sub_1ABA7AB74();
    v1087 = v552;
    v576 = &v552[v575];
    v1090 = *(v568 + 72);
    v577 = v568 + 8;
    v1089 = v578 + 32;
    v1067 = v577 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v579 = v1048;
    v580 = v1028;
    do
    {
      v1074(v580, v576, v579);
      sub_1ABA8B114();
      sub_1ABF218D4();
      v581 = *v577;
      v582 = sub_1ABA82ED0();
      v581(v582);
      v583 = sub_1ABA95870();
      v581(v583);
      v584 = sub_1ABDBFBB8();
      v585(v584);
      v576 += v1090;
      --v574;
    }

    while (v574);

    v140 = v1058;
    v168 = v1098;
    LOBYTE(v568) = v1042;
    v586 = v1067;
  }

  else
  {

    v581 = *(v568 + 8);
    v586 = (v568 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v587 = v586;
  (v581)(v1035, v1048);
  v588 = v568 + 32;
  v589 = v1029;
  v590 = sub_1ABA8AF68();
  v591(v590);
  sub_1ABF21874();
  v592 = sub_1ABA8B354();
  v1067 = v587;
  v1064 = v581;
  v581(v592);
  if (v168)
  {
    v1109 = MEMORY[0x1E69E7CC0];
    sub_1ABDB47E8(v168, sub_1ABADE694);
    if (v168 < 0)
    {
      goto LABEL_661;
    }

    sub_1ABDBFAD8();
    do
    {
      if (v1100)
      {
        MEMORY[0x1AC5AA170](v581);
      }

      else
      {
        sub_1ABA82B2C(v593, v594);
      }

      v589 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerRoadType;
      sub_1ABA7EF0C();
      swift_beginAccess();
      sub_1ABA9E87C();

      v595 = v1109;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA9F048();
        v596 = sub_1ABA83F84();
        sub_1ABADE694(v596, v597, v598);
        v595 = v1109;
      }

      sub_1ABA8ADCC();
      if (v486)
      {
        sub_1ABA7BBEC(v599);
        sub_1ABAA04C0();
        sub_1ABADE694(v600, v601, v602);
        v595 = v1109;
      }

      sub_1ABA8CBA4();
    }

    while (!v151);
  }

  else
  {
    v595 = sub_1ABAE8DCC(0);
  }

  sub_1ABA8DEE8(v595);
  sub_1ABA8A418();
  v1093 = MEMORY[0x1E69E7CC8];
  while (v581 != v589)
  {
    sub_1ABACFA90();
    sub_1ABAA3228();
    sub_1ABC43DF0();
    if (v588)
    {
      sub_1ABAA05E4();
    }

    else
    {
      v609 = sub_1ABA8B354();
      v588 = sub_1ABDB4570(v609, v610);
    }

    if (__OFADD__(v589, 1))
    {
      goto LABEL_624;
    }

    v603 = v1093;
    swift_isUniquelyReferenced_nonNull_native();
    v1109 = v603;
    v604 = sub_1ABA9804C();
    sub_1ABDB7B1C(v604, v605, v606, v607, v608);
    v140 = v107;
    if (v107)
    {
      goto LABEL_678;
    }

    v1093 = v1109;
    ++v589;
  }

  if (v168)
  {
    v1108 = MEMORY[0x1E69E7CC0];

    v611 = sub_1ABDB47E8(v168, sub_1ABADE654);
    if (v168 < 0)
    {
      goto LABEL_662;
    }

    v581 = 0;
    v612 = v1101;
    do
    {
      if (v1100)
      {
        MEMORY[0x1AC5AA170](0, v612);
      }

      else
      {
        sub_1ABA82B2C(v611, v612);
      }

      v589 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerTerrainType;
      sub_1ABA7EF0C();
      swift_beginAccess();
      sub_1ABA9E87C();

      v613 = v1108;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA9F048();
        v614 = sub_1ABA83F84();
        sub_1ABADE654(v614, v615, v616);
        v613 = v1108;
      }

      sub_1ABA96DCC();
      if (v486)
      {
        sub_1ABA7BBEC(v617);
        sub_1ABAA04C0();
        sub_1ABADE654(v618, v619, v620);
        v613 = v1108;
      }

      sub_1ABAA3D9C();
    }

    while (!v151);
  }

  else
  {

    v613 = sub_1ABAE8DB8(0);
  }

  sub_1ABA8DEE8(v613);
  sub_1ABA8A418();
  v1090 = MEMORY[0x1E69E7CC8];
  while (v581 != v589)
  {
    sub_1ABACFA90();
    sub_1ABAA3228();
    sub_1ABC43DF0();
    if (v588)
    {
      sub_1ABAA05E4();
    }

    else
    {
      v627 = sub_1ABA8B354();
      v588 = sub_1ABDB4570(v627, v628);
    }

    if (__OFADD__(v589, 1))
    {
      goto LABEL_625;
    }

    v621 = v1090;
    swift_isUniquelyReferenced_nonNull_native();
    v1108 = v621;
    v622 = sub_1ABA9804C();
    sub_1ABDB76AC(v622, v623, v624, v625, v626);
    v140 = v107;
    if (v107)
    {
      goto LABEL_678;
    }

    v1090 = v1108;
    ++v589;
  }

  if (v168)
  {
    v1107 = MEMORY[0x1E69E7CC0];

    v629 = sub_1ABDB47E8(v168, sub_1ABADE614);
    if (v168 < 0)
    {
      goto LABEL_663;
    }

    v581 = 0;
    v630 = v1101;
    do
    {
      if (v1100)
      {
        MEMORY[0x1AC5AA170](0, v630);
      }

      else
      {
        sub_1ABA82B2C(v629, v630);
      }

      v589 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerWeatherType;
      sub_1ABA7EF0C();
      swift_beginAccess();
      sub_1ABA9E87C();

      v631 = v1107;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA9F048();
        v632 = sub_1ABA83F84();
        sub_1ABADE614(v632, v633, v634);
        v631 = v1107;
      }

      sub_1ABA96DCC();
      if (v486)
      {
        sub_1ABA7BBEC(v635);
        sub_1ABAA04C0();
        sub_1ABADE614(v636, v637, v638);
        v631 = v1107;
      }

      sub_1ABAA3D9C();
    }

    while (!v151);
  }

  else
  {

    v631 = sub_1ABAE8DA4(0);
  }

  sub_1ABA8DEE8(v631);
  sub_1ABA8A418();
  v1089 = MEMORY[0x1E69E7CC8];
  while (v581 != v589)
  {
    sub_1ABACFA90();
    sub_1ABAA3228();
    sub_1ABC43DF0();
    if (v588)
    {
      sub_1ABAA05E4();
    }

    else
    {
      v645 = sub_1ABA8B354();
      v588 = sub_1ABDB4570(v645, v646);
    }

    if (__OFADD__(v589, 1))
    {
      goto LABEL_626;
    }

    v639 = v1089;
    swift_isUniquelyReferenced_nonNull_native();
    v1107 = v639;
    v640 = sub_1ABA9804C();
    sub_1ABDB723C(v640, v641, v642, v643, v644);
    v140 = v107;
    if (v107)
    {
      goto LABEL_678;
    }

    v1089 = v1107;
    ++v589;
  }

  if (v168)
  {
    v1106 = MEMORY[0x1E69E7CC0];

    v647 = sub_1ABDB47E8(v168, sub_1ABADE5D4);
    if (v168 < 0)
    {
      goto LABEL_664;
    }

    v581 = 0;
    v648 = v1101;
    do
    {
      if (v1100)
      {
        MEMORY[0x1AC5AA170](0, v648);
      }

      else
      {
        sub_1ABA82B2C(v647, v648);
      }

      v589 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerRoadType;
      sub_1ABA7EF0C();
      swift_beginAccess();
      sub_1ABA9E87C();

      v649 = v1106;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA9F048();
        v650 = sub_1ABA83F84();
        sub_1ABADE5D4(v650, v651, v652);
        v649 = v1106;
      }

      sub_1ABA96DCC();
      if (v486)
      {
        sub_1ABA7BBEC(v653);
        sub_1ABAA04C0();
        sub_1ABADE5D4(v654, v655, v656);
        v649 = v1106;
      }

      sub_1ABAA3D9C();
    }

    while (!v151);
  }

  else
  {

    v649 = sub_1ABAE8D90(0);
  }

  sub_1ABA8DEE8(v649);
  sub_1ABA8A418();
  v1087 = MEMORY[0x1E69E7CC8];
  while (v581 != v589)
  {
    sub_1ABACFA90();
    sub_1ABAA3228();
    sub_1ABC43DF0();
    if (v588)
    {
      sub_1ABAA05E4();
    }

    else
    {
      v663 = sub_1ABA8B354();
      v588 = sub_1ABDB4570(v663, v664);
    }

    if (__OFADD__(v589, 1))
    {
      goto LABEL_627;
    }

    v657 = v1087;
    swift_isUniquelyReferenced_nonNull_native();
    v1106 = v657;
    v658 = sub_1ABA9804C();
    sub_1ABDB6DCC(v658, v659, v660, v661, v662);
    v140 = v107;
    if (v107)
    {
      goto LABEL_678;
    }

    v1087 = v1106;
    ++v589;
  }

  if (v168)
  {
    v1105 = MEMORY[0x1E69E7CC0];
    v665 = sub_1ABDB47E8(v168, sub_1ABADE594);
    if (v168 < 0)
    {
      goto LABEL_665;
    }

    v581 = 0;
    v666 = v1101;
    do
    {
      if (v1100)
      {
        MEMORY[0x1AC5AA170](0, v666);
      }

      else
      {
        sub_1ABA82B2C(v665, v666);
      }

      v589 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerTerrainType;
      sub_1ABA7EF0C();
      swift_beginAccess();
      sub_1ABA9E87C();

      v667 = v1105;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA9F048();
        v668 = sub_1ABA83F84();
        sub_1ABADE594(v668, v669, v670);
        v667 = v1105;
      }

      sub_1ABA96DCC();
      if (v486)
      {
        sub_1ABA7BBEC(v671);
        sub_1ABAA04C0();
        sub_1ABADE594(v672, v673, v674);
        v667 = v1105;
      }

      sub_1ABAA3D9C();
    }

    while (!v151);
  }

  else
  {
    v667 = sub_1ABAE8D7C(0);
  }

  sub_1ABA8DEE8(v667);
  sub_1ABA8A418();
  v1086 = MEMORY[0x1E69E7CC8];
  while (v581 != v589)
  {
    sub_1ABACFA90();
    sub_1ABAA3228();
    sub_1ABC43DF0();
    if (v588)
    {
      sub_1ABAA05E4();
    }

    else
    {
      v681 = sub_1ABA8B354();
      v588 = sub_1ABDB4570(v681, v682);
    }

    if (__OFADD__(v589, 1))
    {
      goto LABEL_628;
    }

    v675 = v1086;
    swift_isUniquelyReferenced_nonNull_native();
    v1105 = v675;
    v676 = sub_1ABA9804C();
    sub_1ABDB695C(v676, v677, v678, v679, v680);
    v140 = v107;
    if (v107)
    {
      goto LABEL_678;
    }

    v1086 = v1105;
    ++v589;
  }

  if (v168)
  {
    v1104[0] = MEMORY[0x1E69E7CC0];
    v683 = v1104;
    sub_1ABDB47E8(v168, sub_1ABADE554);
    if (v168 < 0)
    {
      goto LABEL_666;
    }

    v684 = 0;
    v685 = v1101;
    do
    {
      if (v1100)
      {
        v683 = MEMORY[0x1AC5AA170](v684, v685);
      }

      else
      {
        sub_1ABA842C4();
      }

      v686 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerWeatherType;
      sub_1ABA7EF0C();
      swift_beginAccess();
      v687 = *(v683 + v686);

      v688 = v1104[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v683 = v1104;
        v689 = sub_1ABA83F84();
        sub_1ABADE554(v689, v690, v691);
        v688 = v1104[0];
      }

      v693 = *(v688 + 16);
      v692 = *(v688 + 24);
      if (v693 >= v692 >> 1)
      {
        v694 = sub_1ABA7BBEC(v692);
        v683 = v1104;
        sub_1ABADE554(v694, v693 + 1, 1);
        v688 = v1104[0];
      }

      ++v684;
      *(v688 + 16) = v693 + 1;
      *(v688 + 8 * v693 + 32) = v687;
      sub_1ABA89B74();
      v685 = v1101;
    }

    while (!v151);
  }

  else
  {
    v688 = sub_1ABAE8D68(0);
  }

  v695 = sub_1ABA8DEE8(v688);
  v696 = 0;
  v1098 = MEMORY[0x1E69E7CC8];
  while (v695 != v696)
  {
    v697 = sub_1ABACFA90();
    sub_1ABC43DF0();
    if (v697)
    {
      v698 = *(v688 + 8 * v696 + 32);
    }

    else
    {
      v698 = sub_1ABDB4570(v696, v688);
    }

    if (__OFADD__(v696, 1))
    {
      goto LABEL_629;
    }

    v699 = v1098;
    v700 = swift_isUniquelyReferenced_nonNull_native();
    v1104[0] = v699;
    sub_1ABDB9B0C(v698, sub_1ABDBD058, 0, v700, v1104);
    if (v140)
    {

      goto LABEL_674;
    }

    v1098 = v1104[0];
    ++v696;
  }

  v702 = &v1005;
  MEMORY[0x1EEE9AC00](v701);
  sub_1ABA8BB48();
  sub_1ABDB6714(v703, v704, v705, v706, v707, &qword_1EB4D5680, &qword_1ABF4AC78, v708, v1005, v1006, v1007, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016);
  v1063 = v709;
  sub_1ABAB5D64();
  MEMORY[0x1EEE9AC00](v710);
  sub_1ABAA3A10();
  sub_1ABA8BB48();
  sub_1ABDB6714(v711, v712, v713, v714, v715, v716, &unk_1ABF618C0, v717, v1005, v1006, v1007, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016);
  v1062 = v718;
  sub_1ABAB5D64();
  MEMORY[0x1EEE9AC00](v719);
  sub_1ABAA3A10();
  sub_1ABA8BB48();
  sub_1ABDB6714(v720, v721, v722, v723, v724, v725, v726, v727, v1005, v1006, v1007, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016);
  v1061 = v728;
  sub_1ABAB5D64();
  MEMORY[0x1EEE9AC00](v729);
  sub_1ABAA3A10();
  sub_1ABA8BB48();
  sub_1ABDB6714(v730, v731, v732, v733, v734, v735, v736, v737, v1005, v1006, v1007, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016);
  v1057 = v738;
  sub_1ABAB5D64();
  MEMORY[0x1EEE9AC00](v739);
  sub_1ABAA3A10();
  sub_1ABA8BB48();
  sub_1ABDB6714(v740, v741, v742, v743, v744, v745, v746, v747, v1005, v1006, v1007, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016);
  v1053 = v748;
  sub_1ABAB5D64();
  MEMORY[0x1EEE9AC00](v749);
  sub_1ABAA3A10();
  sub_1ABA8BB48();
  sub_1ABDB6714(v750, v751, v752, v753, v754, v755, v756, v757, v1005, v1006, v1007, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016);
  v1051 = v758;
  sub_1ABAB5D64();
  MEMORY[0x1EEE9AC00](v759);
  v760 = &qword_1EB4D1710;
  v761 = &qword_1ABF338A0;
  sub_1ABA8BB48();
  sub_1ABDB6714(v762, v763, v764, v765, v766, &qword_1EB4D5680, &qword_1ABF4AC78, v767, v1005, v1006, v1007, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016);
  v1050 = v768;
  sub_1ABDBFA9C();
  sub_1ABAB5D64();
  MEMORY[0x1EEE9AC00](v769);
  sub_1ABAA3A10();
  sub_1ABA8BB48();
  sub_1ABDB6714(v770, v771, v772, v773, v774, &qword_1EB4D5690, &unk_1ABF618C0, v775, v1005, v1006, v1007, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016);
  v1047 = v776;

  sub_1ABAB5D64();
  MEMORY[0x1EEE9AC00](v777);
  sub_1ABAA3A10();
  sub_1ABAB517C();
  sub_1ABDB6714(v778, v779, v780, v781, v782, &qword_1EB4D5670, &qword_1ABF4AC68, v783, v1005, v1006, v1007, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016);
  v1046 = v784;
  sub_1ABDBFA9C();
  sub_1ABAB5D64();
  MEMORY[0x1EEE9AC00](v785);
  sub_1ABAA3A10();
  sub_1ABAB517C();
  sub_1ABDB6714(v786, v787, v788, v789, v790, &qword_1EB4D5660, &unk_1ABF618B0, v791, v1005, v1006, v1007, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016);
  v1045 = v792;
  sub_1ABDBFA9C();
  sub_1ABAB5D64();
  MEMORY[0x1EEE9AC00](v793);
  sub_1ABAA3A10();
  sub_1ABAB517C();
  sub_1ABDB6714(v794, v795, v796, v797, v798, &qword_1EB4D5650, &qword_1ABF4AC48, v799, v1005, v1006, v1007, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016);
  v1042 = v800;
  sub_1ABDBFA9C();
  sub_1ABAB5D64();
  MEMORY[0x1EEE9AC00](v801);
  sub_1ABAA3A10();
  v802 = v1090;
  sub_1ABAB517C();
  sub_1ABDB6714(v803, v804, v805, v806, v807, &qword_1EB4D5640, &unk_1ABF618A0, v808, v1005, v1006, v1007, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016);
  v1040 = v809;
  v810 = &qword_1ABF4AC78;

  sub_1ABAE8D54(0);
  sub_1ABA9FA94();
  v140 = v1039;
  while (v140 != &qword_1ABF4AC78)
  {
    if (v1100)
    {
      v813 = sub_1ABA8A40C();
      v802 = MEMORY[0x1AC5AA170](v813);
    }

    else
    {
      sub_1ABDBFAF0();
      if (v486)
      {
        goto LABEL_631;
      }

      sub_1ABA9F0F8();
    }

    if (__OFADD__(&qword_1ABF4AC78, 1))
    {
      goto LABEL_630;
    }

    v811 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentInTrafficBuckets;
    sub_1ABA7EF0C();
    swift_beginAccess();
    v761 = *(v802 + v811);
    v702 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
    sub_1ABA7EF0C();
    swift_beginAccess();
    sub_1ABDBFC04();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA80F18();
      sub_1ABADBF5C();
      v760 = v814;
    }

    sub_1ABA9FB90();
    if (v486)
    {
      sub_1ABAA1A68(v812);
      sub_1ABADBF5C();
      v760 = v815;
    }

    sub_1ABA82F24();
  }

  sub_1ABA8DEE8(v760);
  sub_1ABA9DE94();
  v1084 = MEMORY[0x1E69E7CC8];
  v816 = &qword_1EB4D37F0;
  while (v761 != &qword_1ABF4AC78)
  {
    sub_1ABACFA90();
    sub_1ABA9F970();
    sub_1ABC43DF0();
    if ((v140 & 1) == 0)
    {
      goto LABEL_632;
    }

    if (__OFADD__(&qword_1ABF4AC78, 1))
    {
      goto LABEL_633;
    }

    v140 = *(v702 - 1);
    v817 = v1095;

    v823 = sub_1ABA8AB44(v818, v822, v819, v820, v821, sub_1ABAFF5B8, sub_1ABADBFCC);
    v810 = v817;
    v824 = sub_1ABBFA5AC(v823);
    v1084 = sub_1ABD9E158(v824, v1084, sub_1ABDBF94C, sub_1ABDB989C);

    sub_1ABA9E6C0();
  }

  sub_1ABAE8D40(0);
  sub_1ABA9FA94();
  while (v140 != &qword_1ABF4AC78)
  {
    if (v1100)
    {
      v827 = sub_1ABA8A40C();
      v816 = MEMORY[0x1AC5AA170](v827);
    }

    else
    {
      sub_1ABDBFAF0();
      if (v486)
      {
        goto LABEL_635;
      }

      sub_1ABA9F0F8();
    }

    if (__OFADD__(&qword_1ABF4AC78, 1))
    {
      goto LABEL_634;
    }

    v825 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtSpeedBuckets;
    sub_1ABA7EF0C();
    swift_beginAccess();
    v761 = *(v816 + v825);
    v702 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
    sub_1ABA7EF0C();
    swift_beginAccess();
    sub_1ABDBFC04();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA80F18();
      sub_1ABADBF38();
      v760 = v828;
    }

    sub_1ABA9FB90();
    if (v486)
    {
      sub_1ABAA1A68(v826);
      sub_1ABADBF38();
      v760 = v829;
    }

    sub_1ABA82F24();
  }

  sub_1ABA8DEE8(v760);
  sub_1ABA9DE94();
  v1083 = MEMORY[0x1E69E7CC8];
  v830 = &qword_1EB4D37E0;
  while (v761 != &qword_1ABF4AC78)
  {
    sub_1ABACFA90();
    sub_1ABA9F970();
    sub_1ABC43DF0();
    if ((v140 & 1) == 0)
    {
      goto LABEL_638;
    }

    if (__OFADD__(&qword_1ABF4AC78, 1))
    {
      goto LABEL_639;
    }

    v140 = *(v702 - 1);
    v831 = v1096;

    v837 = sub_1ABA8AB44(v832, v836, v833, v834, v835, sub_1ABAFF5B8, sub_1ABADBFB8);
    v810 = v831;
    v838 = sub_1ABBFA5D4(v837);
    v1083 = sub_1ABD9E158(v838, v1083, sub_1ABDBF94C, sub_1ABDB962C);

    sub_1ABA9E6C0();
  }

  sub_1ABAE8D2C(0);
  sub_1ABA9FA94();
  while (v140 != &qword_1ABF4AC78)
  {
    if (v1100)
    {
      v841 = sub_1ABA8A40C();
      v830 = MEMORY[0x1AC5AA170](v841);
    }

    else
    {
      sub_1ABDBFAF0();
      if (v486)
      {
        goto LABEL_641;
      }

      sub_1ABA9F0F8();
    }

    if (__OFADD__(&qword_1ABF4AC78, 1))
    {
      goto LABEL_640;
    }

    v839 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtRelativeSpeeds;
    sub_1ABA7EF0C();
    swift_beginAccess();
    v761 = *(v830 + v839);
    v702 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
    sub_1ABA7EF0C();
    swift_beginAccess();
    sub_1ABDBFC04();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA80F18();
      sub_1ABADBF14();
      v760 = v842;
    }

    sub_1ABA9FB90();
    if (v486)
    {
      sub_1ABAA1A68(v840);
      sub_1ABADBF14();
      v760 = v843;
    }

    sub_1ABA82F24();
  }

  sub_1ABA8DEE8(v760);
  sub_1ABA9DE94();
  v1082 = MEMORY[0x1E69E7CC8];
  while (v761 != &qword_1ABF4AC78)
  {
    sub_1ABACFA90();
    sub_1ABA9F970();
    sub_1ABC43DF0();
    if ((v140 & 1) == 0)
    {
      goto LABEL_642;
    }

    if (__OFADD__(&qword_1ABF4AC78, 1))
    {
      goto LABEL_643;
    }

    v140 = *(v702 - 1);
    v844 = v1085;

    v850 = sub_1ABA8AB44(v845, v849, v846, v847, v848, sub_1ABAFF5B8, sub_1ABADBFA4);
    v810 = v844;
    v851 = sub_1ABBFA690(v850);
    v1082 = sub_1ABD9E158(v851, v1082, sub_1ABDBF94C, sub_1ABDB93BC);

    sub_1ABA9E6C0();
  }

  sub_1ABAE8D18(0);
  sub_1ABA9FA94();
  while (1)
  {
    v852 = v1044;
    if (v140 == &qword_1ABF4AC78)
    {
      break;
    }

    if (v1100)
    {
      v854 = sub_1ABA8A40C();
      MEMORY[0x1AC5AA170](v854);
    }

    else
    {
      sub_1ABDBFAF0();
      if (v486)
      {
        goto LABEL_645;
      }

      sub_1ABA9F0F8();
    }

    if (__OFADD__(&qword_1ABF4AC78, 1))
    {
      goto LABEL_644;
    }

    sub_1ABA7EF0C();
    swift_beginAccess();
    sub_1ABA7EF0C();
    swift_beginAccess();
    sub_1ABDBFC04();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA80F18();
      sub_1ABADBEF0();
    }

    sub_1ABA9FB90();
    if (v486)
    {
      sub_1ABAA1A68(v853);
      sub_1ABADBEF0();
    }

    sub_1ABA82F24();
  }

  v855 = v1093;

  v856 = sub_1ABA7ABE4();
  v1039 = sub_1ABD9E04C(v856, v857, v855, v858);

  sub_1ABD9D7C4(&qword_1ABF3D838, &OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerWeatherType, sub_1ABADBECC);
  v859 = v1089;

  v860 = sub_1ABA7ABE4();
  v1035 = sub_1ABD9E04C(v860, v861, v859, v862);

  sub_1ABD9D7C4(&qword_1ABF3D838, &OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerTerrainType, sub_1ABADBEA8);
  v863 = v1090;

  v864 = sub_1ABA7ABE4();
  v1033 = sub_1ABD9E04C(v864, v865, v863, v866);

  v867 = sub_1ABA8D010();
  v868 = sub_1ABD9CFEC(v867);
  sub_1ABD23888(v868);

  sub_1ABD9CDDC(&qword_1ABF3D838, 0.0, 0.0);
  sub_1ABD9D174();
  v140 = v869;
  v1065 = v810;
  v1058 = objc_opt_self();
  v870 = [v1058 kilowattHours];
  v1077 = sub_1ABAFF390(0, &qword_1EB4CE6E0, 0x1E696B030);
  v871 = v1032;
  sub_1ABF218B4();
  v872 = v1030;
  v873 = (v1030 + 2);
  v874 = v1030[2];
  v874(v1034, v871, v1019);
  v875 = sub_1ABA8DEE8(v140);
  v1100 = v873;
  v1079 = v874;
  if (v875)
  {
    v876 = v875;
    if (v875 < 1)
    {
      goto LABEL_667;
    }

    sub_1ABA7AB74();
    v1066 = v140;
    v878 = v140 + v877;
    v1073 = v872[9];
    v879 = (v872 + 1);
    v1068 = (v872 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v1069 = (v872 + 4);
    v880 = v1019;
    v881 = v1027;
    do
    {
      v882 = sub_1ABA82DAC();
      (v1079)(v882);
      sub_1ABDBFBAC();
      sub_1ABF218D4();
      v883 = *v879;
      (*v879)(v881, v880);
      v884 = sub_1ABA8AF68();
      (v883)(v884);
      v885 = sub_1ABA8B354();
      v886(v885);
      v878 += v1073;
      --v876;
    }

    while (v876);

    v852 = v1044;
    v872 = v1030;
    v140 = v1068;
    v874 = v1079;
  }

  else
  {

    v883 = v872[1];
    v140 = (v872 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v1066 = v883;
  v887 = v1019;
  (v883)(v1032, v1019);
  v888 = v872[4];
  v1073 = (v872 + 4);
  v1069 = v888;
  v888(v1017, v1034, v887);
  v889 = v1065;
  sub_1ABD9D174();
  v891 = v890;
  v1055 = v889;
  v892 = [v1058 kilowattHours];
  v893 = v1031;
  sub_1ABF218B4();
  v894 = sub_1ABA90200();
  (v874)(v894);
  v1065 = v891;
  v895 = sub_1ABA8DEE8(v891);
  v896 = v1066;
  if (v895)
  {
    v897 = v895;
    if (v895 < 1)
    {
      goto LABEL_668;
    }

    sub_1ABA7AB74();
    v896 = v1066;
    v899 = v1065 + v898;
    v1068 = v872[9];
    v900 = v1018;
    v887 = v1019;
    v852 = v1044;
    v893 = v1026;
    do
    {
      v1079(v893, v899, v887);
      sub_1ABA90200();
      sub_1ABF218D4();
      (v896)(v893, v887);
      (v896)(v852, v887);
      v1069(v852, v900, v887);
      v899 += v1068;
      --v897;
    }

    while (v897);
  }

  (v896)(v1031, v887);
  v901.n128_f64[0] = (v1069)(v1016, v852, v887);
  v902 = v1055;
  sub_1ABD9D3B4(v1101, &OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numBrakingEvents, v901);
  sub_1ABDBFB88();
  v904 = sub_1ABA8DEE8(v903);
  if (v904)
  {
    if (v904 < 1)
    {
      goto LABEL_669;
    }

    v905 = 0;
    v906 = 32;
    do
    {
      v907 = *(v893 + v906);
      v389 = __OFADD__(v905, v907);
      v905 += v907;
      if (v389)
      {
        goto LABEL_646;
      }

      v906 += 8;
      --v904;
    }

    while (v904);
  }

  else
  {

    v905 = 0;
  }

  v908 = sub_1ABA8D010();
  sub_1ABD9D3B4(v908, v909, v910);
  sub_1ABDBFB88();
  v912 = sub_1ABA8DEE8(v911);
  if (v912)
  {
    if (v912 < 1)
    {
      goto LABEL_670;
    }

    v913 = 0;
    v914 = 32;
    do
    {
      v915 = *(v893 + v914);
      v389 = __OFADD__(v913, v915);
      v913 += v915;
      if (v389)
      {
        goto LABEL_647;
      }

      v914 += 8;
      --v912;
    }

    while (v912);
  }

  else
  {

    v913 = 0;
  }

  v916 = sub_1ABA8D010();
  sub_1ABD9D3B4(v916, v917, v918);
  sub_1ABDBFB88();
  v920 = sub_1ABA8DEE8(v919);
  if (v920)
  {
    if (v920 < 1)
    {
      goto LABEL_671;
    }

    v921 = 0;
    v922 = 32;
    do
    {
      v923 = *(v893 + v922);
      v389 = __OFADD__(v921, v923);
      v921 += v923;
      if (v389)
      {
        goto LABEL_648;
      }

      v922 += 8;
      --v920;
    }

    while (v920);
  }

  else
  {

    v921 = 0;
  }

  v1073 = v905;
  v1069 = v913;
  v1065 = v921;
  v924 = sub_1ABA8D010();
  sub_1ABD9D520(v924, v925, v926, v927);
  sub_1ABDBFB88();
  sub_1ABAE8D04(0);
  v1077 = sub_1ABF239C4();
  v928 = *(v893 + 16);
  v929 = 32;
  if (v928)
  {
    while (1)
    {
      swift_bridgeObjectRetain_n();
      v930 = v1077;

      swift_isUniquelyReferenced_nonNull_native();
      v1103 = v930;
      sub_1ABDBF9B4();
      sub_1ABDBFBCC();
      sub_1ABDBA6CC(v931, v932, v933, v934, v935);
      if (v902)
      {
        break;
      }

      v929 += 8;
      if (!--v928)
      {
        goto LABEL_594;
      }
    }

    while (1)
    {
LABEL_674:

      __break(1u);
LABEL_675:
      __break(1u);
LABEL_676:
      __break(1u);
    }
  }

LABEL_594:

  v936 = sub_1ABA8D010();
  v940 = v902;
  v941 = *(sub_1ABD9D520(v936, v937, v938, v939) + 16);
  v942 = MEMORY[0x1E69E7CC8];
  v943 = 32;
  if (v941)
  {
    do
    {
      swift_bridgeObjectRetain_n();

      swift_isUniquelyReferenced_nonNull_native();
      v1103 = v942;
      sub_1ABDBF9B4();
      sub_1ABDBFBCC();
      sub_1ABDBAB64(v944, v945, v946, v947, v948);
      if (v902)
      {
        goto LABEL_674;
      }

      sub_1ABDBFA9C();

      v942 = v1103;
      v943 += 8;
    }

    while (--v941);
  }

  v1055 = v942;
  v1068 = v140;

  v949 = v1101;
  v951 = *(sub_1ABD9D520(v1101, sub_1ABADE454, &OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadRelativeSpeedBuckets, v950) + 16);
  v952 = MEMORY[0x1E69E7CC8];
  for (m = 32; v951; v949 = v1101)
  {
    swift_bridgeObjectRetain_n();

    swift_isUniquelyReferenced_nonNull_native();
    v1103 = v952;
    sub_1ABDBF9B4();
    sub_1ABDBFBCC();
    sub_1ABDBB6A4(v954, v955, v956, v957, v958);
    if (v902)
    {
      goto LABEL_674;
    }

    v940 = 0;

    v952 = v1103;
    m += 8;
    --v951;
  }

  v959 = v940;
  v961 = sub_1ABD9D520(v949, sub_1ABADE414, &OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadTimes, v960);
  sub_1ABAE8CF0(0);
  v962 = sub_1ABF239C4();
  v963 = *(v961 + 16);
  v964 = 32;
  if (v963)
  {
    do
    {

      swift_isUniquelyReferenced_nonNull_native();
      v1103 = v962;
      sub_1ABDBF9B4();
      sub_1ABDBFBCC();
      sub_1ABDBC1E4(v965, v966, v967, v968, v969);
      if (v959)
      {
        goto LABEL_674;
      }

      v940 = 0;
      v962 = v1103;
      v964 += 8;
    }

    while (--v963);
  }

  v970 = v940;
  sub_1ABD9D950(v1101);
  v972 = sub_1ABD9D6B0(v971);
  v1058 = v970;

  sub_1ABAE8CDC(0);
  sub_1ABAFF390(0, &qword_1EB4D1F98, 0x1E6985C40);
  sub_1ABDBF828();
  sub_1ABA82ED0();
  v973 = sub_1ABF239C4();
  v974 = v972;
  v975 = *(v972 + 16);
  for (n = 32; ; n += 8)
  {
    v977 = v1075;
    if (!v975)
    {
      break;
    }

    v978 = *(v974 + n);
    swift_bridgeObjectRetain_n();

    swift_isUniquelyReferenced_nonNull_native();
    v1103 = v973;
    sub_1ABDBF9B4();
    v979 = v1058;
    sub_1ABDBC67C(v978, v980, 0, v981, v982);
    v1058 = v979;
    if (v979)
    {
      goto LABEL_674;
    }

    --v975;
  }

  if ((v1010 & 0x100000000) != 0)
  {
    goto LABEL_675;
  }

  v983 = v1102;
  v984 = v1081;
  if ((v1008 & 0x100000000) != 0)
  {
    goto LABEL_676;
  }

  v985 = v1097;
  v1097(v1088, v1052, v983);
  v985(v1072, v1023, v983);
  v986 = v1070;
  (v1070)(v977, v1043, v984);
  v986(v1056, v1041, v984);
  v1074(v1020, v1036, v1048);
  v987 = v1019;
  v988 = v1079;
  v1079(v1018, v1017, v1019);
  v988(v1012, v1016, v987);
  v989 = v1102;
  v985(v1013, v1037, v1102);
  v985(v1014, v1038, v989);
  v985(v1015, v1021, v989);
  v990 = v1011;
  v985(v1011, v1022, v989);
  type metadata accessor for KTSDataAggregateRepresentation(0);
  v251 = swift_allocObject();
  KTSDataAggregateRepresentation.init(startTime:endTime:distanceInMeters:elevationGainInMeters:distanceBuckets:durationInSeconds:expectedDurationInSecondsNoTraffic:distanceSpentInTrafficBuckets:timeSpentInTrafficBuckets:distanceSpentAtSpeedBuckets:timeSpentAtSpeedBuckets:distanceSpentAtRelativeSpeeds:timeSpentAtRelativeSpeeds:distancePerRoadType:timePerRoadType:distancePerWeatherType:timePerWeatherType:distancePerTerrainType:timePerTerrainType:averageSpeedInMetersPerSecond:score:usageKwh:optimalUsageKwh:numBrakingEvents:numAccelEvents:numHighSpeedEvents:roadDistancesInMeters:roadSpeedBuckets:roadRelativeSpeedBuckets:roadTimes:lifeEventIds:ktsSegmentIds:maxTripDistanceInMeters:avgTripDistanceInMeters:maxElevationGainInMeters:avgElevationGainInMeters:percentTimeSpentAtSpeedBuckets:percentTimeSpentAtTrafficBuckets:percentTimeSpentAtRelativeSpeeds:percentTimeSpentAtRoadTypes:percentTimeSpentInWeatherTypes:percentTimeSpentInTerrainTypes:percentDistanceTraveledAtSpeedBuckets:percentDistanceTraveledAtTrafficBuckets:p(v1088, v1072, v1024, v1075, v1056, v1095, v1092, v1096, k, v1085, v1099, v1093, v1087, v1089, v1098, v1090, v1086, v1020, v1018, v1012, v1073, v1069, v1065, v1077, v1055, v952, v962, v1049, v1025, v1013, v1014, v1015, v990, v1062, v1063, v1061, v1057, v1053, v1051, v1047, v1050, v1046, v1045, v1042, v1040, v1083, v1084, v1082, v1039, v1035, v1033, v973, v1005, v1006, v1007, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015);
  v991 = v1019;
  v992 = v1066;
  (v1066)(v1016, v1019);
  (v992)(v1017, v991);
  v1064(v1036, v1048);
  v993 = v1081;
  v994 = v1059;
  (v1059)(v1041, v1081);
  v995 = v1078;
  v1078(v1022, v989);
  v995(v1021, v989);
  v995(v1023, v989);
  v995(v1038, v989);
  v995(v1037, v989);
  v994(v1043, v993);
  v995(v1052, v989);
  return v251;
}