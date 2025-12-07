uint64_t sub_21C53ECA4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C53ECE4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C53ED1C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21C53EF18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD520, &qword_21C55E248);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C53EF80(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD538, &qword_21C55E258);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21C53F03C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD538, &qword_21C55E258);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C53F0EC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD520, &qword_21C55E248);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD490, &qword_21C55DF40);
  sub_21C54E2B0();
  sub_21C54E5C0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C53F17C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD540, &qword_21C55E260);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C53F204@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_21C55C694();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21C53F284@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21C55C764();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21C53F3A8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C53F3E0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21C53F430()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C53F4B8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD720, &qword_21C55E5D8);
  sub_21C54EDD8(&qword_27CDDD780, &qword_27CDDD720, &qword_21C55E5D8, MEMORY[0x277CDE5A0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C53F564()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C53F59C()
{
  swift_getKeyPath();
  sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
  sub_21C55C604();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_21C53F64C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
  sub_21C55C604();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_21C53F6F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_21C53F738(v1, v2);
}

uint64_t sub_21C53F738(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 16) == a1 && v5 == a2;
      if (v6 || (sub_21C55CE44() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
    sub_21C55C5F4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_21C53F8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
}

uint64_t sub_21C53F8E4()
{
  swift_getKeyPath();
  sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
  sub_21C55C604();

  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_21C53F994@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
  sub_21C55C604();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_21C53FA58(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_21C55CE44() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
    sub_21C55C5F4();
  }
}

uint64_t sub_21C53FBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
}

uint64_t sub_21C53FBF4()
{
  swift_getKeyPath();
  sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
  sub_21C55C604();

  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_21C53FCA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
  sub_21C55C604();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_21C53FD68(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_21C53FDB0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48) == a1 && *(v2 + 56) == a2;
  if (v5 || (sub_21C55CE44() & 1) != 0)
  {
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
    sub_21C55C5F4();
  }
}

uint64_t sub_21C53FF10()
{
  v1 = v0;
  swift_getKeyPath();
  sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
  sub_21C55C604();

  v2 = *(v0 + 64);
  if (v2 && (v2 = [v2 bundleIdentifier]) != 0)
  {
    v3 = v2;
    v4 = sub_21C55CAC4();
    v6 = v5;

    v7 = v6;
    v2 = v4;
  }

  else
  {
    v7 = 0;
  }

  sub_21C53F738(v2, v7);
  swift_getKeyPath();
  sub_21C55C604();

  v8 = *(v1 + 64);
  if (v8)
  {
    v9 = [v8 localizedName];
    v10 = sub_21C55CAC4();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  return sub_21C53FA58(v10, v12);
}

void *sub_21C540080()
{
  swift_getKeyPath();
  sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
  sub_21C55C604();

  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

id sub_21C540128@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
  sub_21C55C604();

  v4 = *(v3 + 64);
  *a2 = v4;

  return v4;
}

void sub_21C5401E0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21C540210(v1);
}

void sub_21C540210(void *a1)
{
  v3 = *(v1 + 64);
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      v5 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
    sub_21C55C5F4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_21C541784();
  v4 = v3;
  v5 = a1;
  v6 = sub_21C55CD14();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(v1 + 64);
LABEL_8:
  *(v1 + 64) = a1;
  v9 = v5;

  sub_21C53FF10();
}

uint64_t sub_21C5403B0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 64);
  *(a1 + 64) = a2;
  v3 = a2;

  return sub_21C53FF10();
}

uint64_t sub_21C5403F4(void *a1)
{
  v2 = v1;
  v4 = sub_21C55C5B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_21C55C5A4();
  v8 = sub_21C55C584();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  *(v2 + 48) = v8;
  *(v2 + 56) = v10;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 3;
  sub_21C55C634();
  sub_21C540210(a1);
  return v2;
}

uint64_t sub_21C540514(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 80);
  if (v3 == 3)
  {
    if (result == 3)
    {
      goto LABEL_27;
    }

LABEL_5:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
    sub_21C55C5F4();
  }

  if (result == 3)
  {
    goto LABEL_5;
  }

  v5 = &unk_21C55E9E0;
  v6 = 0xD000000000000016;
  if (v3 == 1)
  {
    v6 = 0xD000000000000010;
    v7 = "RelayCallingNotApplicable";
  }

  else
  {
    v7 = "RelayCallingNone";
  }

  if (*(v1 + 80))
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xD000000000000019;
  }

  if (*(v1 + 80))
  {
    v9 = v7;
  }

  else
  {
    v9 = &unk_21C55E9E0;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v10 = 0xD000000000000010;
    }

    else
    {
      v10 = 0xD000000000000016;
    }

    if (v2 == 1)
    {
      v5 = "RelayCallingNotApplicable";
    }

    else
    {
      v5 = "RelayCallingNone";
    }
  }

  else
  {
    v10 = 0xD000000000000019;
  }

  if (v8 == v10 && (v9 | 0x8000000000000000) == (v5 | 0x8000000000000000))
  {
  }

  else
  {
    v11 = sub_21C55CE44();

    if ((v11 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

LABEL_27:
  *(v1 + 80) = v2;
  return result;
}

uint64_t sub_21C540700()
{
  swift_getKeyPath();
  sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
  sub_21C55C604();

  return *(v0 + 80);
}

uint64_t sub_21C5407A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21C55C5B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_21C55C5A4();
  v8 = sub_21C55C584();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  *(v2 + 48) = v8;
  *(v2 + 56) = v10;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 3;
  sub_21C55C634();
  if (a1)
  {
    v11 = sub_21C55CE44();

    if (v11)
    {

      return 0;
    }

    else
    {
      sub_21C540514(a1);
      v12 = sub_21C55BF98(a1);
      sub_21C53FA58(v12, v13);
      if (a1 == 2)
      {
        v14 = "RelayCallingNone";
      }

      else
      {
        v14 = "RelayCallingNotApplicable";
      }

      if (a1 == 2)
      {
        v15 = 0xD000000000000016;
      }

      else
      {
        v15 = 0xD000000000000010;
      }

      sub_21C53FDB0(v15, v14 | 0x8000000000000000);
    }
  }

  else
  {

    return 0;
  }

  return v2;
}

uint64_t AppRecord.deinit()
{

  v1 = OBJC_IVAR____TtC21DefaultAppsSettingsUI9AppRecord___observationRegistrar;
  v2 = sub_21C55C644();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AppRecord.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC21DefaultAppsSettingsUI9AppRecord___observationRegistrar;
  v2 = sub_21C55C644();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t AppRecord.id.getter()
{
  swift_getKeyPath();
  sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
  sub_21C55C604();

  if (v0[3])
  {
    v1 = v0[2];
  }

  else
  {
    swift_getKeyPath();
    sub_21C55C604();

    v1 = v0[6];
  }

  return v1;
}

uint64_t type metadata accessor for AppRecord(uint64_t a1)
{
  result = qword_27CDDD3E8;
  if (!qword_27CDDD3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C540C24@<X0>(uint64_t *a1@<X8>)
{
  result = AppRecord.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AppRecord.hash(into:)(uint64_t a1)
{
  swift_getKeyPath();
  sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
  sub_21C55C604();

  if (!*(v1 + 24))
  {
    swift_getKeyPath();
    sub_21C55C604();
  }

  sub_21C55CBC4();
}

uint64_t AppRecord.hashValue.getter()
{
  sub_21C55CE64();
  AppRecord.hash(into:)(v1);
  return sub_21C55CE84();
}

uint64_t sub_21C540DBC()
{
  sub_21C55CE64();
  AppRecord.hash(into:)(v1);
  return sub_21C55CE84();
}

uint64_t sub_21C540E24(uint64_t a1)
{
  sub_21C55CE64();
  AppRecord.hash(into:)(v2);
  return sub_21C55CE84();
}

uint64_t sub_21C540E6C(uint64_t a1, id *a2)
{
  result = sub_21C55CAA4();
  *a2 = 0;
  return result;
}

uint64_t sub_21C540EE4(uint64_t a1, id *a2)
{
  v3 = sub_21C55CAB4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21C540F64@<X0>(uint64_t *a1@<X8>)
{
  sub_21C55CAC4();
  v2 = sub_21C55CA94();

  *a1 = v2;
  return result;
}

void *sub_21C540FA8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21C540FB8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_21C55CA94();

  *a2 = v3;
  return result;
}

uint64_t sub_21C541000@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C55CAC4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21C54102C(uint64_t a1)
{
  v2 = sub_21C541604(&qword_27CDDD428, type metadata accessor for URLResourceKey, &unk_21C55DBF4);
  v3 = sub_21C541604(&qword_27CDDD430, type metadata accessor for URLResourceKey, &unk_21C55DB94);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21C5410E8()
{
  v0 = sub_21C55CAC4();
  v1 = MEMORY[0x21CF0B420](v0);

  return v1;
}

uint64_t sub_21C541124(uint64_t a1)
{
  sub_21C55CAC4();
  sub_21C55CBC4();
}

uint64_t sub_21C541178(uint64_t a1)
{
  sub_21C55CAC4();
  sub_21C55CE64();
  sub_21C55CBC4();
  v1 = sub_21C55CE84();

  return v1;
}

uint64_t sub_21C5411EC(void *a1, uint64_t *a2)
{
  v2 = sub_21C55CAC4();
  v4 = v3;
  if (v2 == sub_21C55CAC4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_21C55CE44();
  }

  return v7 & 1;
}

uint64_t _s21DefaultAppsSettingsUI9AppRecordC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_21C541604(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
  sub_21C55C604();

  if (*(a1 + 80) != 3)
  {
    swift_getKeyPath();
    sub_21C55C604();

    if (*(a2 + 80) != 3)
    {
      swift_getKeyPath();
      sub_21C55C604();

      v8 = *(a1 + 80);
      swift_getKeyPath();
      sub_21C55C604();

      v9 = *(a2 + 80);
      v7 = v9 == 3 && v8 == 3;
      if (v8 == 3 || v9 == 3)
      {
        return v7 & 1;
      }

      v10 = 0xD000000000000010;
      v11 = &unk_21C55E9E0;
      if (v8)
      {
        if (v8 == 1)
        {
          v12 = 0xD000000000000010;
          v13 = 0x800000021C55EA00;
          if (!v9)
          {
            goto LABEL_23;
          }

LABEL_20:
          if (v9 == 1)
          {
            v11 = "RelayCallingNotApplicable";
          }

          else
          {
            v11 = "RelayCallingNone";
            v10 = 0xD000000000000016;
          }

LABEL_25:
          if (v12 == v10 && v13 == (v11 | 0x8000000000000000))
          {

            v7 = 1;
          }

          else
          {
            v7 = sub_21C55CE44();
          }

          goto LABEL_29;
        }

        v12 = 0xD000000000000016;
        v13 = 0x800000021C55EA20;
        if (v9)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v12 = 0xD000000000000019;
        v13 = 0x800000021C55E9E0;
        if (v9)
        {
          goto LABEL_20;
        }
      }

LABEL_23:
      v10 = 0xD000000000000019;
      goto LABEL_25;
    }
  }

  swift_getKeyPath();
  sub_21C55C604();

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getKeyPath();

  sub_21C55C604();

  v6 = *(a2 + 24);
  v7 = v6 == 0;
  if (v4)
  {
    if (v6)
    {
      if (v5 == *(a2 + 16) && v4 == v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = sub_21C55CE44();
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_29:
  }

  return v7 & 1;
}

uint64_t sub_21C541604(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C541654(uint64_t a1)
{
  result = sub_21C55C644();
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

uint64_t sub_21C54173C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 64);
  *(v2 + 64) = v1;
  v4 = v1;

  return sub_21C53FF10();
}

unint64_t sub_21C541784()
{
  result = qword_27CDDD8A0;
  if (!qword_27CDDD8A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDDD8A0);
  }

  return result;
}

uint64_t sub_21C5417D0()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

uint64_t sub_21C541810()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_21C541860()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
}

uint64_t sub_21C5418C4(uint64_t a1, int a2)
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

uint64_t sub_21C5418E4(uint64_t result, int a2, int a3)
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

void sub_21C541920(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_21C541A4C()
{
  type metadata accessor for DefaultAppsSettingsModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27CDDE790 = result;
  return result;
}

void *static DefaultAppsPerAppSettings.orderedProviders(for:)(uint64_t a1, void *a2)
{
  if (qword_27CDDD3A8 != -1)
  {
    v3 = a1;
    v4 = a2;
    swift_once();
    a1 = v3;
    a2 = v4;
  }

  return sub_21C544484(a1, a2);
}

uint64_t sub_21C541B98()
{
  swift_getKeyPath();
  sub_21C543E40(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup, &unk_21C55DD08);
  sub_21C55C604();

  return *(v0 + OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__isVisible);
}

uint64_t sub_21C541C40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C543E40(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup, &unk_21C55DD08);
  sub_21C55C604();

  *a2 = *(v3 + OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__isVisible);
  return result;
}

uint64_t sub_21C541D18(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__isVisible) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__isVisible) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C543E40(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup, &unk_21C55DD08);
    sub_21C55C5F4();
  }

  return result;
}

uint64_t sub_21C541E44(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_21C543E40(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup, &unk_21C55DD08);
  sub_21C55C604();

  swift_beginAccess();
}

uint64_t sub_21C541EFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C543E40(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup, &unk_21C55DD08);
  sub_21C55C604();

  v4 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__idToProvider;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21C541FC4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_21C543E40(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup, &unk_21C55DD08);
  sub_21C55C5F4();
}

uint64_t sub_21C542090(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
}

uint64_t sub_21C5420FC(uint64_t a1)
{
  v2 = v1;
  sub_21C55C5A4();
  *(v2 + OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__isVisible) = 0;
  v4 = 0x27CDDD000uLL;
  *(v2 + OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__idToProvider) = sub_21C55BBCC(MEMORY[0x277D84F90]);
  v5 = 0x27CDDD000uLL;
  sub_21C55C634();
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = MEMORY[0x277D84F90];
    v8 = a1 + 32;
    do
    {
      sub_21C543D24(v8, &v57);
      v52 = v57;
      v53 = v58;
      v54 = v59;
      if (*(&v58 + 1))
      {
        sub_21C543DDC(&v52, &v55);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_21C54A5C8(0, v7[2] + 1, 1, v7);
        }

        v10 = v7[2];
        v9 = v7[3];
        if (v10 >= v9 >> 1)
        {
          v7 = sub_21C54A5C8((v9 > 1), v10 + 1, 1, v7);
        }

        v7[2] = v10 + 1;
        sub_21C543DDC(&v55, &v7[5 * v10 + 4]);
      }

      else
      {
        sub_21C544404(&v52, &unk_27CDDDA40, &qword_21C55DD60);
      }

      v8 += 40;
      --v6;
    }

    while (v6);

    v4 = 0x27CDDD000;
    v5 = 0x27CDDD000;
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v11 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__providers;
  *(v2 + OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__providers) = v7;
  swift_getKeyPath();
  v12 = *(v5 + 1104);
  *&v57 = v2;
  sub_21C543E40(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup, &unk_21C55DD08);
  v13 = v12;
  sub_21C55C604();

  swift_beginAccess();
  v14 = *(v2 + v11);
  v51 = *(v14 + 16);
  if (!v51)
  {
LABEL_40:
    sub_21C542854();
    return v2;
  }

  sub_21C55CCA4();
  v50 = *(v4 + 1096);
  v15 = v14 + 32;

  v16 = 0;
  v49 = v14;
  while (v16 < *(v14 + 16))
  {
    sub_21C543EA8(v15, &v57);
    sub_21C55CC94();
    sub_21C55CC54();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
    v22 = sub_21C55C694();
    v24 = v23;
    sub_21C543EA8(&v57, &v55);
    swift_getKeyPath();
    *&v52 = v2;
    sub_21C55C604();

    *&v52 = v2;
    v19 = v13;
    swift_getKeyPath();
    sub_21C55C624();

    swift_beginAccess();
    if (!v56)
    {
      sub_21C544404(&v55, &unk_27CDDDA40, &qword_21C55DD60);
      v39 = sub_21C559DE8(v22, v24);
      if (v40)
      {
        v41 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = *(v2 + v50);
        *(v2 + v50) = 0x8000000000000000;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C55B1CC();
        }

        sub_21C543DDC((*(v43 + 56) + 40 * v41), &v52);
        sub_21C55A824(v41, v43);
        *(v2 + v50) = v43;
      }

      else
      {
        v54 = 0;
        v52 = 0u;
        v53 = 0u;
      }

      sub_21C544404(&v52, &unk_27CDDDA40, &qword_21C55DD60);
      v14 = v49;
      goto LABEL_17;
    }

    v25 = v13;
    sub_21C543DDC(&v55, &v52);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(v2 + v50);
    *(v2 + v50) = 0x8000000000000000;
    v28 = v22;
    v29 = v22;
    v30 = v24;
    v32 = sub_21C559DE8(v29, v24);
    v33 = v27[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_42;
    }

    v36 = v31;
    if (v27[3] >= v35)
    {
      if (v26)
      {
        if ((v31 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_21C55B1CC();
        if ((v36 & 1) == 0)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      sub_21C55A114(v35, v26);
      v37 = sub_21C559DE8(v28, v30);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_44;
      }

      v32 = v37;
      if ((v36 & 1) == 0)
      {
LABEL_33:
        v17 = v27;
        v27[(v32 >> 6) + 8] |= 1 << v32;
        v44 = (v27[6] + 16 * v32);
        *v44 = v28;
        v44[1] = v30;
        sub_21C543DDC(&v52, v27[7] + 40 * v32);
        v45 = v27[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_43;
        }

        v27[2] = v47;
        goto LABEL_16;
      }
    }

    v17 = v27;
    v18 = (v27[7] + 40 * v32);
    __swift_destroy_boxed_opaque_existential_1(v18);
    sub_21C543DDC(&v52, v18);
LABEL_16:
    *(v2 + v50) = v17;

    v19 = v25;
    v14 = v49;
LABEL_17:
    ++v16;
    swift_endAccess();
    *&v52 = v2;
    swift_getKeyPath();
    v13 = v19;
    sub_21C55C614();

    __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
    v20 = sub_21C55C694();
    v21 = MEMORY[0x28223BE20](v20);
    MEMORY[0x28223BE20](v21);
    sub_21C55C5E4();

    __swift_destroy_boxed_opaque_existential_1(&v57);
    v15 += 40;
    if (v51 == v16)
    {

      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_21C55CE54();
  __break(1u);
  return result;
}

uint64_t sub_21C542854()
{
  v1 = v0;
  swift_getKeyPath();
  v12[0] = v0;
  sub_21C543E40(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup, &unk_21C55DD08);
  sub_21C55C604();

  v2 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__providers;
  swift_beginAccess();
  v3 = *(v12[0] + v2);
  v4 = *(v3 + 16);

  result = v3 + 32;
  v6 = -v4;
  v7 = -1;
  do
  {
    v8 = v6 + v7;
    if (v6 + v7 == -1)
    {
      break;
    }

    if (++v7 >= *(v3 + 16))
    {
      __break(1u);
      return result;
    }

    v9 = result + 40;
    sub_21C543EA8(result, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v10 = sub_21C55C6C4();
    __swift_destroy_boxed_opaque_existential_1(v12);
    result = v9;
  }

  while ((v10 & 1) == 0);

  if (((v8 != -1) ^ *(v1 + OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__isVisible)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12[0] = v1;
    sub_21C55C5F4();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__isVisible) = v8 != -1;
  }

  return result;
}

uint64_t sub_21C542A6C(void *a1)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21C55C6C4();
}

uint64_t (*sub_21C542B2C(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  return sub_21C5440FC;
}

uint64_t sub_21C542BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD478, &qword_21C55DDE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_21C55CCC4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  sub_21C55CCA4();

  v10 = sub_21C55CC94();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  v11[5] = a2;
  v11[6] = a3;

  sub_21C54F0F0(0, 0, v7, &unk_21C55DDF0, v11);
}

uint64_t sub_21C542D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  sub_21C55CCA4();
  v6[11] = sub_21C55CC94();
  v8 = sub_21C55CC54();

  return MEMORY[0x2822009F8](sub_21C542DB4, v8, v7);
}

uint64_t sub_21C542DB4()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21C542854();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21C542E80(v0[9], v0[10]);
  }

  v1 = v0[1];

  return v1();
}

uint64_t sub_21C542E80(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v13[0] = v2;
  sub_21C543E40(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup, &unk_21C55DD08);
  sub_21C55C604();

  v5 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__idToProvider;
  result = swift_beginAccess();
  v7 = *(v13[0] + v5);
  if (*(v7 + 16))
  {

    v8 = sub_21C559DE8(a1, a2);
    if (v9)
    {
      sub_21C543EA8(*(v7 + 56) + 40 * v8, v12);

      sub_21C543DDC(v12, v13);
      __swift_project_boxed_opaque_existential_1(v13, v13[3]);
      v10 = sub_21C55C694();
      v11 = MEMORY[0x28223BE20](v10);
      MEMORY[0x28223BE20](v11);
      sub_21C55C5E4();

      return __swift_destroy_boxed_opaque_existential_1(v13);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21C543064(uint64_t a1)
{
  v2 = v1;
  sub_21C543D24(a1, &v14);
  if (!v15)
  {
    return sub_21C544404(&v14, &unk_27CDDDA40, &qword_21C55DD60);
  }

  sub_21C543DDC(&v14, v16);
  sub_21C543EA8(v16, &v14);
  swift_getKeyPath();
  sub_21C543E40(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup, &unk_21C55DD08);
  sub_21C55C604();

  swift_getKeyPath();
  sub_21C55C624();

  v3 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__providers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v3) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_21C54A5C8(0, v4[2] + 1, 1, v4);
    *(v2 + v3) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_21C54A5C8((v6 > 1), v7 + 1, 1, v4);
  }

  v4[2] = v7 + 1;
  sub_21C543DDC(&v14, &v4[5 * v7 + 4]);
  *(v2 + v3) = v4;
  swift_endAccess();
  swift_getKeyPath();
  sub_21C55C614();

  __swift_project_boxed_opaque_existential_1(v16, v17);
  v8 = sub_21C55C694();
  v10 = v9;
  sub_21C543EA8(v16, &v14);
  swift_getKeyPath();
  sub_21C55C604();

  swift_getKeyPath();
  sub_21C55C624();

  swift_beginAccess();
  sub_21C5599E0(&v14, v8, v10);
  swift_endAccess();
  swift_getKeyPath();
  sub_21C55C614();

  __swift_project_boxed_opaque_existential_1(v16, v17);
  v11 = sub_21C55C694();
  v12 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  sub_21C55C5E4();

  sub_21C542854();
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_21C54342C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_21C543D24(a1, &v23);
  if (!v24)
  {
    return sub_21C544404(&v23, &unk_27CDDDA40, &qword_21C55DD60);
  }

  sub_21C543DDC(&v23, v25);
  sub_21C543D24(a2, &v21);
  if (v22)
  {
    sub_21C543DDC(&v21, &v23);
    swift_getKeyPath();
    *&v21 = v3;
    sub_21C543E40(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup, &unk_21C55DD08);
    sub_21C55C604();

    v5 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__providers;
    v6 = swift_beginAccess();
    v7 = *(v3 + v5);
    MEMORY[0x28223BE20](v6);

    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = (v7 + 32);
      while (1)
      {
        v11 = sub_21C543E88(v10);
        if (v11)
        {
          break;
        }

        ++v9;
        v10 += 5;
        if (v8 == v9)
        {
          v9 = 0;
          break;
        }
      }

      v12 = v11 ^ 1;
    }

    else
    {
      v9 = 0;
      v12 = 1;
    }

    v14 = v12 & 1;

    if (v14)
    {
      goto LABEL_17;
    }

    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      *&v21 = v3;
      sub_21C55C604();

      *&v21 = v3;
      swift_getKeyPath();
      sub_21C55C624();

      result = swift_beginAccess();
      if (*(*(v3 + v5) + 16) >= v15)
      {
        if ((v15 & 0x8000000000000000) == 0)
        {
          sub_21C543EA8(v25, &v21);
          sub_21C543FB8(v9 + 1, v9 + 1, &v21);
          swift_endAccess();
          *&v21 = v3;
          swift_getKeyPath();
          sub_21C55C614();

          __swift_project_boxed_opaque_existential_1(v25, v26);
          v16 = sub_21C55C694();
          v18 = v17;
          sub_21C543EA8(v25, &v21);
          swift_getKeyPath();
          sub_21C55C604();

          swift_getKeyPath();
          sub_21C55C624();

          swift_beginAccess();
          sub_21C5599E0(&v21, v16, v18);
          swift_endAccess();
          swift_getKeyPath();
          sub_21C55C614();

          __swift_project_boxed_opaque_existential_1(v25, v26);
          v19 = sub_21C55C694();
          v20 = MEMORY[0x28223BE20](v19);
          MEMORY[0x28223BE20](v20);
          sub_21C55C5E4();

          sub_21C542854();
LABEL_17:
          __swift_destroy_boxed_opaque_existential_1(&v23);
          return __swift_destroy_boxed_opaque_existential_1(v25);
        }

LABEL_22:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  sub_21C544404(&v21, &unk_27CDDDA40, &qword_21C55DD60);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_21C5438F4(void *a1, void *a2)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_21C55C694();
  v6 = v5;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (v4 == sub_21C55C694() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21C55CE44();
  }

  return v9 & 1;
}

uint64_t sub_21C543A2C()
{
  v1 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup_id;
  v2 = sub_21C55C5B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup___observationRegistrar;
  v4 = sub_21C55C644();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for DefaultAppsSettingsGroup(uint64_t a1)
{
  result = qword_27CDDD458;
  if (!qword_27CDDD458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C543B7C(uint64_t a1)
{
  result = sub_21C55C5B4();
  if (v2 <= 0x3F)
  {
    result = sub_21C55C644();
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

uint64_t sub_21C543CA8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup_id;
  v5 = sub_21C55C5B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21C543D24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDDDA40, &qword_21C55DD60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t sub_21C543DDC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_21C543E40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C543EA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

double sub_21C543F0C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_21C559DE8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21C55B1CC();
      v10 = v12;
    }

    sub_21C543DDC((*(v10 + 56) + 40 * v8), a3);
    sub_21C55A824(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

unint64_t sub_21C543FB8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_21C54A5C8(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_21C5442E8(v7, a2, 1, a3);
  *v3 = v5;
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

uint64_t sub_21C544108(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C5441D0;

  return sub_21C542D18(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21C5441D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_21C5442E8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD480, &qword_21C55DDF8);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 40 * a3;
      v15 = (v9 + 32 + 40 * a2);
      if (result != v15 || result >= v15 + 40 * v14)
      {
        result = memmove(result, v15, 40 * v14);
      }

      v16 = *(v9 + 16);
      v11 = __OFADD__(v16, v12);
      v17 = v16 + v12;
      if (!v11)
      {
        *(v9 + 16) = v17;
        goto LABEL_10;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  if (a3 < 1)
  {
    return sub_21C544404(a4, &qword_27CDDD488, &unk_21C55DE00);
  }

  result = sub_21C543EA8(a4, v10);
  if (a3 == 1)
  {
    return sub_21C544404(a4, &qword_27CDDD488, &unk_21C55DE00);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_21C544404(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_21C544484(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  v43[0] = v2;
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C604();

  v37 = v2;
  v4 = *(v2 + 16);
  if (v4 >> 62)
  {
    goto LABEL_57;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v36 = a2;

  if (v5)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x21CF0B5C0](v6, v4);
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
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
LABEL_57:
          v5 = sub_21C55CDC4();
          goto LABEL_3;
        }

        v8 = *(v4 + 8 * v6 + 32);

        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_27;
        }
      }

      sub_21C55CCA4();
      sub_21C55CC94();
      sub_21C55CC54();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      swift_getKeyPath();
      v43[0] = v8;
      sub_21C54A898(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup, &unk_21C55DD08);
      sub_21C55C604();

      v10 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__providers;
      swift_beginAccess();
      v11 = *(v8 + v10);

      v12 = *(v11 + 16);
      a2 = v7[2];
      v13 = a2 + v12;
      if (__OFADD__(a2, v12))
      {
        goto LABEL_52;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v13 <= v7[3] >> 1)
      {
        if (!*(v11 + 16))
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (a2 <= v13)
        {
          v15 = a2 + v12;
        }

        else
        {
          v15 = a2;
        }

        v7 = sub_21C54A5C8(isUniquelyReferenced_nonNull_native, v15, 1, v7);
        if (!*(v11 + 16))
        {
LABEL_5:

          if (v12)
          {
            goto LABEL_53;
          }

          goto LABEL_6;
        }
      }

      v16 = v7[2];
      if ((v7[3] >> 1) - v16 < v12)
      {
        goto LABEL_54;
      }

      a2 = &v7[5 * v16];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD480, &qword_21C55DDF8);
      swift_arrayInitWithCopy();

      if (v12)
      {
        v17 = v7[2];
        v18 = __OFADD__(v17, v12);
        v19 = v17 + v12;
        if (v18)
        {
          goto LABEL_56;
        }

        v7[2] = v19;
      }

LABEL_6:
      ++v6;
      if (v9 == v5)
      {
        goto LABEL_29;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_29:

  v20 = v36;
  if (v36)
  {
    swift_getKeyPath();
    v43[0] = v37;

    sub_21C55C604();

    swift_beginAccess();
    v21 = *(v37 + 352);
    if (*(v21 + 16))
    {

      v22 = sub_21C559DE8(a1, v36);
      if (v23)
      {
        v24 = v22;

        v7 = *(*(v21 + 56) + 8 * v24);

        return v7;
      }
    }

    v25 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    v4 = 0;
    v26 = sub_21C54A3E8(a1, v36, 1);
    if (v26)
    {
      v39 = v26;
      LOBYTE(v26) = [v26 supportedDefaultAppCategories];
      v27 = 0;
    }

    else
    {
      v39 = 0;
      v27 = 1;
    }

    v28 = sub_21C54AB64(v26, v27);
    v29 = v7[2];
    if (v29)
    {
      v30 = 0;
      v31 = MEMORY[0x277D84F90];
      a2 = v7 + 4;
      while (v30 < v7[2])
      {
        sub_21C543EA8(a2, v43);
        sub_21C54979C(v43, v28, v37, &v40);
        __swift_destroy_boxed_opaque_existential_1(v43);
        if (v41)
        {
          sub_21C543DDC(&v40, v42);
          sub_21C543DDC(v42, &v40);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_21C54A5C8(0, v31[2] + 1, 1, v31);
          }

          v33 = v31[2];
          v32 = v31[3];
          if (v33 >= v32 >> 1)
          {
            v31 = sub_21C54A5C8((v32 > 1), v33 + 1, 1, v31);
          }

          v31[2] = v33 + 1;
          sub_21C543DDC(&v40, &v31[5 * v33 + 4]);
          v20 = v36;
        }

        else
        {
          sub_21C544404(&v40, &unk_27CDDDA40, &qword_21C55DD60);
        }

        ++v30;
        a2 += 5;
        if (v29 == v30)
        {
          goto LABEL_48;
        }
      }

      goto LABEL_55;
    }

    v31 = MEMORY[0x277D84F90];
LABEL_48:

    swift_getKeyPath();
    v43[0] = v37;

    sub_21C55C604();

    v43[0] = v37;
    swift_getKeyPath();
    sub_21C55C624();

    swift_beginAccess();
    v34 = swift_isUniquelyReferenced_nonNull_native();
    *&v42[0] = *(v37 + 352);
    *(v37 + 352) = 0x8000000000000000;
    sub_21C55ACC4(v31, a1, v20, v34);

    *(v37 + 352) = *&v42[0];
    swift_endAccess();
    v43[0] = v37;
    swift_getKeyPath();
    sub_21C55C614();

    return v31;
  }

  return v7;
}

uint64_t sub_21C544B60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup, &unk_21C55DD08);
  sub_21C55C604();

  v4 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__providers;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21C544C28(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup, &unk_21C55DD08);
  sub_21C55C5F4();
}

void *sub_21C544CF4()
{
  type metadata accessor for DefaultAppsSettingsModel(0);
  v0 = swift_allocObject();
  result = sub_21C5464EC();
  qword_27CDDE7A0 = v0;
  return result;
}

uint64_t sub_21C544D34()
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C604();
}

uint64_t sub_21C544DD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C604();

  *a2 = *(v3 + 16);
}

uint64_t sub_21C544E84(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C5F4();
}

uint64_t sub_21C544F50@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v1 + 24, a1);
}

uint64_t sub_21C545010@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v3 + 24, a2);
}

uint64_t sub_21C5450D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21C54AA40(a2, a1 + 24);
  return swift_endAccess();
}

uint64_t sub_21C545134@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v1 + 72, a1);
}

uint64_t sub_21C5451F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v3 + 72, a2);
}

uint64_t sub_21C5452B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_21C543D24(a1, v7);
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C5F4();

  return sub_21C544404(v7, &unk_27CDDDA40, &qword_21C55DD60);
}

uint64_t sub_21C5453A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21C54AA40(a2, a1 + 72);
  return swift_endAccess();
}

uint64_t sub_21C545404@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v1 + 112, a1);
}

uint64_t sub_21C5454C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v3 + 112, a2);
}

uint64_t sub_21C545584(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21C54AA40(a2, a1 + 112);
  return swift_endAccess();
}

uint64_t sub_21C5455E8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v1 + 152, a1);
}

uint64_t sub_21C5456A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v3 + 152, a2);
}

uint64_t sub_21C545768(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21C54AA40(a2, a1 + 152);
  return swift_endAccess();
}

uint64_t sub_21C5457CC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v1 + 216, a1);
}

uint64_t sub_21C54588C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v3 + 216, a2);
}

uint64_t sub_21C54594C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21C54AA40(a2, a1 + 216);
  return swift_endAccess();
}

uint64_t sub_21C5459B0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v1 + 256, a1);
}

uint64_t sub_21C545A70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v3 + 256, a2);
}

uint64_t sub_21C545B30(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21C54AA40(a2, a1 + 256);
  return swift_endAccess();
}

uint64_t sub_21C545B94@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v1 + 296, a1);
}

uint64_t sub_21C545C54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C604();

  swift_beginAccess();
  return sub_21C543D24(v3 + 296, a2);
}

uint64_t sub_21C545D14(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21C54AA40(a2, a1 + 296);
  return swift_endAccess();
}

uint64_t sub_21C545D78()
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C604();

  swift_beginAccess();
}

uint64_t sub_21C545E30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C604();

  swift_beginAccess();
  *a2 = *(v3 + 336);
}

uint64_t sub_21C545EF0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C5F4();
}

uint64_t sub_21C545FBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 336) = a2;
}

uint64_t sub_21C546024()
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C604();
}

uint64_t sub_21C5460C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C604();

  *a2 = *(v3 + 344);
}

uint64_t sub_21C546174(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C5F4();
}

uint64_t sub_21C546240()
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C604();

  swift_beginAccess();
}

uint64_t sub_21C5462F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C604();

  swift_beginAccess();
  *a2 = *(v3 + 352);
}

uint64_t sub_21C5463B8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C5F4();
}

uint64_t sub_21C546484(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 352) = a2;
}

void *sub_21C5464EC()
{
  v1 = v0;
  v280 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD490, &qword_21C55DF40);
  MEMORY[0x28223BE20](v2 - 8);
  v269 = &v235 - v3;
  v4 = sub_21C55C534();
  v267 = *(v4 - 8);
  v268 = v4;
  MEMORY[0x28223BE20](v4);
  v266 = &v235 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = sub_21C55C574();
  v249 = *(v258 - 8);
  v6 = MEMORY[0x28223BE20](v258);
  v260 = &v235 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v252 = &v235 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v239 = &v235 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v261 = &v235 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v237 = &v235 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v256 = &v235 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v263 = &v235 - v19;
  MEMORY[0x28223BE20](v18);
  v241 = &v235 - v20;
  v21 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  v22 = type metadata accessor for DefaultLSAppsSettingsProvider(0);
  *(v0 + 24) = 0u;
  v242 = v0 + 24;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  swift_allocObject();
  v23 = sub_21C55181C(2);
  *(v0 + 72) = 0u;
  v243 = v0 + 72;
  *(v0 + 64) = v23;
  *(v0 + 152) = 0u;
  v244 = v0 + 152;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0;
  swift_allocObject();
  *(v0 + 192) = sub_21C55181C(5);
  swift_allocObject();
  *(v0 + 200) = sub_21C55181C(1);
  swift_allocObject();
  *(v0 + 208) = sub_21C55181C(6);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 328) = 0;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  v246 = v0 + 216;
  *(v0 + 336) = sub_21C55BBCC(v21);
  *(v0 + 344) = sub_21C55BBCC(v21);
  *(v0 + 352) = sub_21C55BD00(v21);
  v257 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsModel___observationRegistrar;
  sub_21C55C634();
  type metadata accessor for DefaultAppsSettingsGroup(0);
  swift_allocObject();
  v254 = sub_21C5420FC(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD498, &qword_21C55DF48);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_21C55DE10;
  v25 = v1[8];
  *(v24 + 56) = v22;
  v26 = sub_21C54A898(&qword_27CDDD4A0, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E55C);
  *(v24 + 64) = v26;
  *(v24 + 32) = v25;
  swift_allocObject();

  v27 = sub_21C5420FC(v24);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_21C55DE20;
  *(v28 + 56) = v22;
  *(v28 + 64) = v26;
  v29 = v1[25];
  *(v28 + 32) = v1[24];
  *(v28 + 96) = v22;
  *(v28 + 104) = v26;
  *(v28 + 72) = v29;
  v30 = v1[26];
  v245 = v22;
  *(v28 + 136) = v22;
  *(v28 + 144) = v26;
  v250 = v26;
  *(v28 + 112) = v30;
  swift_allocObject();

  v31 = sub_21C5420FC(v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD4A8, &qword_21C55DF50);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_21C55DE30;
  *(v32 + 32) = v254;
  *(v32 + 40) = v27;
  *(v32 + 48) = v31;
  swift_getKeyPath();
  v271 = v1;
  v272 = v32;
  v277[0] = v1;
  v33 = sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);

  v253 = v27;

  v240 = v31;

  v262 = v1;
  sub_21C55C5F4();

  (*(v267 + 104))(v266, *MEMORY[0x277CC91C0], v268);
  v34 = v258;
  (*(v249 + 56))(v269, 1, 1, v258);
  sub_21C55C564();
  v35 = [objc_opt_self() defaultManager];
  v36 = sub_21C55C554();
  type metadata accessor for URLResourceKey(0);
  v37 = sub_21C55CC04();
  v277[0] = 0;
  v38 = [v35 contentsOfDirectoryAtURL:v36 includingPropertiesForKeys:v37 options:4 error:v277];

  v39 = v277[0];
  v251 = v33;
  if (v38)
  {
    v255 = 0;
    v40 = sub_21C55CC14();
    v41 = v39;

    v43 = *(v40 + 16);
    if (v43)
    {
      v44 = v34;
      v268 = *(v249 + 16);
      v269 = (v249 + 16);
      v45 = (*(v249 + 80) + 32) & ~*(v249 + 80);
      v236 = v40;
      v46 = v40 + v45;
      v264 = *(v249 + 72);
      v265 = (v249 + 8);
      *&v42 = 136446210;
      v259 = v42;
      *&v42 = 136446466;
      v238 = v42;
      *&v42 = 136315394;
      v235 = v42;
      v47 = v262;
      v48 = v263;
      (v268)(v263, v40 + v45, v44);
      while (1)
      {
        sub_21C55C544();
        v50 = sub_21C55CAF4();
        v52 = v51;

        v267 = v46;
        if (v50 == 0x6E6967756C70 && v52 == 0xE600000000000000)
        {
        }

        else
        {
          v53 = sub_21C55CE44();

          if ((v53 & 1) == 0)
          {
            v266 = v43;
            if (qword_27CDDD3C0 != -1)
            {
              swift_once();
            }

            v79 = sub_21C55C714();
            __swift_project_value_buffer(v79, qword_27CDDE7A8);
            v66 = v260;
            (v268)(v260, v48, v44);
            v67 = sub_21C55C6F4();
            v80 = sub_21C55CCF4();
            if (!os_log_type_enabled(v67, v80))
            {
              goto LABEL_4;
            }

            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v277[0] = v70;
            *v69 = v259;
            sub_21C54A898(&qword_27CDDD4B8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
            v81 = sub_21C55CE34();
            v83 = v82;
            v74 = *v265;
            (*v265)(v260, v44);
            v84 = sub_21C556F20(v81, v83, v277);

            *(v69 + 4) = v84;
            v76 = v80;
            v77 = v67;
            v78 = "File extension is not plugin. Ignoring:\n %{public}s";
LABEL_28:
            _os_log_impl(&dword_21C53D000, v77, v76, v78, v69, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v70);
            v85 = v70;
            v47 = v262;
            MEMORY[0x21CF0BC40](v85, -1, -1);
            MEMORY[0x21CF0BC40](v69, -1, -1);

            v74(v263, v44);
            v48 = v263;
LABEL_5:
            v43 = v266;
            v46 = v267;
            goto LABEL_6;
          }
        }

        v54 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
        v55 = sub_21C55C554();
        v56 = [v54 initWithURL_];

        if (!v56)
        {
          v266 = v43;
          if (qword_27CDDD3C0 != -1)
          {
            swift_once();
          }

          v65 = sub_21C55C714();
          __swift_project_value_buffer(v65, qword_27CDDE7A8);
          v66 = v256;
          (v268)(v256, v48, v44);
          v67 = sub_21C55C6F4();
          v68 = sub_21C55CCF4();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v277[0] = v70;
            *v69 = v259;
            sub_21C54A898(&qword_27CDDD4B8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
            v71 = sub_21C55CE34();
            v73 = v72;
            v74 = *v265;
            (*v265)(v66, v44);
            v75 = sub_21C556F20(v71, v73, v277);

            *(v69 + 4) = v75;
            v76 = v68;
            v77 = v67;
            v78 = "Could not create bundle from URL: %{public}s";
            goto LABEL_28;
          }

LABEL_4:

          v49 = *v265;
          (*v265)(v66, v44);
          v49(v48, v44);
          goto LABEL_5;
        }

        v57 = [v56 load];
        v58 = v261;
        if (v57)
        {
          if ([v56 principalClass])
          {
            ObjCClassMetadata = swift_getObjCClassMetadata();
            v60 = swift_conformsToProtocol2();
            if (v60)
            {
              if (ObjCClassMetadata)
              {
                v278 = ObjCClassMetadata;
                v279 = v60;
                __swift_allocate_boxed_opaque_existential_1(v277);
                sub_21C55C6A4();
                v61 = sub_21C55C694();
                v63 = v62;
                if (sub_21C55CB94() == v61 && v64 == v63)
                {
LABEL_70:

                  goto LABEL_48;
                }

                v133 = sub_21C55CE44();

                if (v133)
                {
                  goto LABEL_48;
                }

                if (sub_21C55CB64() == v61 && v137 == v63)
                {
                  goto LABEL_70;
                }

                v138 = sub_21C55CE44();

                if (v138)
                {
                  goto LABEL_48;
                }

                if (sub_21C55CB24() == v61 && v139 == v63)
                {
                  goto LABEL_70;
                }

                v140 = sub_21C55CE44();

                if (v140)
                {
                  goto LABEL_48;
                }

                if (sub_21C55CB54() == v61 && v141 == v63)
                {

                  goto LABEL_61;
                }

                v142 = sub_21C55CE44();

                if (v142)
                {
LABEL_61:

                  v274 = &type metadata for Feature;
                  v275 = sub_21C54A998();
                  v143 = sub_21C55C654();
                  __swift_destroy_boxed_opaque_existential_1(&v273);
                  if (v143)
                  {
                    goto LABEL_62;
                  }

                  v44 = v258;
                  (*v265)(v48, v258);

LABEL_50:
                  __swift_destroy_boxed_opaque_existential_1(v277);
                  goto LABEL_6;
                }

                if (sub_21C55CBA4() == v61 && v145 == v63)
                {
                  goto LABEL_70;
                }

                v146 = sub_21C55CE44();

                if (v146)
                {
                  goto LABEL_48;
                }

                if (sub_21C55CBB4() == v61 && v147 == v63)
                {
                  goto LABEL_70;
                }

                v148 = sub_21C55CE44();

                if (v148)
                {
LABEL_48:

                  sub_21C543EA8(v277, &v273);
                  KeyPath = swift_getKeyPath();
                  MEMORY[0x28223BE20](KeyPath);
                  *(&v235 - 2) = v47;
                  *(&v235 - 1) = &v273;
                  v276[0] = v47;
                }

                else
                {
                  if (sub_21C55CB14() == v61 && v149 == v63)
                  {
                  }

                  else
                  {
                    v150 = sub_21C55CE44();

                    if ((v150 & 1) == 0)
                    {
                      v248 = v56;
                      v266 = v43;
                      if (qword_27CDDD3C0 != -1)
                      {
                        swift_once();
                      }

                      v151 = sub_21C55C714();
                      __swift_project_value_buffer(v151, qword_27CDDE7A8);
                      sub_21C543EA8(v277, &v273);
                      (v268)(v237, v263, v258);
                      v152 = sub_21C55C6F4();
                      v153 = sub_21C55CCE4();
                      if (os_log_type_enabled(v152, v153))
                      {
                        v154 = swift_slowAlloc();
                        v247 = swift_slowAlloc();
                        v276[0] = v247;
                        *v154 = v235;
                        __swift_project_boxed_opaque_existential_1(&v273, v274);
                        v155 = sub_21C55C694();
                        v157 = v156;
                        __swift_destroy_boxed_opaque_existential_1(&v273);
                        v158 = sub_21C556F20(v155, v157, v276);

                        *(v154 + 4) = v158;
                        *(v154 + 12) = 2082;
                        sub_21C54A898(&qword_27CDDD4B8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
                        v159 = v237;
                        v160 = v258;
                        v161 = sub_21C55CE34();
                        v163 = v162;
                        v164 = *v265;
                        (*v265)(v159, v160);
                        v165 = sub_21C556F20(v161, v163, v276);

                        *(v154 + 14) = v165;
                        _os_log_impl(&dword_21C53D000, v152, v153, "Unknown provider ID (%s). Ignoring plugin at %{public}s", v154, 0x16u);
                        v166 = v247;
                        swift_arrayDestroy();
                        MEMORY[0x21CF0BC40](v166, -1, -1);
                        v167 = v154;
                        v44 = v160;
                        MEMORY[0x21CF0BC40](v167, -1, -1);

                        v168 = v263;
                        v164(v263, v160);
                        v48 = v168;
                      }

                      else
                      {

                        v169 = *v265;
                        v44 = v258;
                        (*v265)(v237, v258);
                        v48 = v263;
                        v169(v263, v44);
                        __swift_destroy_boxed_opaque_existential_1(&v273);
                      }

                      v47 = v262;
                      v43 = v266;
                      v46 = v267;
                      goto LABEL_50;
                    }
                  }

LABEL_62:
                  sub_21C543EA8(v277, &v273);
                  v144 = swift_getKeyPath();
                  MEMORY[0x28223BE20](v144);
                  *(&v235 - 2) = v47;
                  *(&v235 - 1) = &v273;
                  v276[0] = v47;
                }

                v135 = v255;
                sub_21C55C5F4();
                v255 = v135;

                v136 = v258;
                (*v265)(v48, v258);
                v44 = v136;
                sub_21C544404(&v273, &unk_27CDDDA40, &qword_21C55DD60);
                goto LABEL_50;
              }
            }
          }

          if (qword_27CDDD3C0 != -1)
          {
            swift_once();
          }

          v98 = sub_21C55C714();
          v99 = __swift_project_value_buffer(v98, qword_27CDDE7A8);
          (v268)(v58, v48, v44);
          v100 = v56;
          v101 = v58;
          v247 = v99;
          v102 = sub_21C55C6F4();
          v103 = sub_21C55CCF4();

          if (os_log_type_enabled(v102, v103))
          {
            v266 = v43;
            v104 = swift_slowAlloc();
            v105 = v44;
            v106 = swift_slowAlloc();
            v277[0] = v106;
            *v104 = v238;
            sub_21C54A898(&qword_27CDDD4B8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
            v107 = sub_21C55CE34();
            v109 = v108;
            v248 = *v265;
            (v248)(v101, v105);
            v110 = sub_21C556F20(v107, v109, v277);

            *(v104 + 4) = v110;
            *(v104 + 12) = 2080;
            v111 = [v100 principalClass];
            if (v111)
            {
              v111 = swift_getObjCClassMetadata();
            }

            v43 = v266;
            v46 = v267;
            *&v273 = v111;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD4C0, &qword_21C55E120);
            v112 = sub_21C55CAE4();
            v114 = sub_21C556F20(v112, v113, v277);

            *(v104 + 14) = v114;
            _os_log_impl(&dword_21C53D000, v102, v103, "Could not load provider class from bundle URL: %{public}s, bundle principal class: %s", v104, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x21CF0BC40](v106, -1, -1);
            MEMORY[0x21CF0BC40](v104, -1, -1);

            v44 = v258;
            v115 = v248;
          }

          else
          {

            v115 = *v265;
            (*v265)(v58, v44);
            v46 = v267;
          }

          v117 = [v100 unload];
          v48 = v263;
          if (v117)
          {
            v115(v263, v44);

            v47 = v262;
          }

          else
          {
            v118 = v239;
            (v268)(v239, v263, v44);
            v119 = sub_21C55C6F4();
            v120 = sub_21C55CCF4();
            if (os_log_type_enabled(v119, v120))
            {
              v121 = swift_slowAlloc();
              v122 = v115;
              v248 = v115;
              v123 = v121;
              v124 = swift_slowAlloc();
              v266 = v43;
              v247 = v124;
              v277[0] = v124;
              *v123 = v259;
              sub_21C54A898(&qword_27CDDD4B8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
              v125 = v119;
              v126 = sub_21C55CE34();
              v128 = v127;
              v122(v118, v44);
              v129 = sub_21C556F20(v126, v128, v277);
              v48 = v263;

              *(v123 + 4) = v129;
              v130 = v125;
              _os_log_impl(&dword_21C53D000, v125, v120, "Could not unload bundle at URL: %{public}s", v123, 0xCu);
              v131 = v247;
              __swift_destroy_boxed_opaque_existential_1(v247);
              v132 = v131;
              v43 = v266;
              v46 = v267;
              MEMORY[0x21CF0BC40](v132, -1, -1);
              MEMORY[0x21CF0BC40](v123, -1, -1);

              (v248)(v48, v44);
            }

            else
            {

              v115(v118, v44);
              v115(v48, v44);
            }

            v47 = v262;
          }
        }

        else
        {
          v86 = v47;
          v266 = v43;
          v87 = v252;
          if (qword_27CDDD3C0 != -1)
          {
            swift_once();
          }

          v88 = sub_21C55C714();
          __swift_project_value_buffer(v88, qword_27CDDE7A8);
          (v268)(v87, v48, v44);
          v89 = sub_21C55C6F4();
          v90 = sub_21C55CCF4();
          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            v247 = swift_slowAlloc();
            v277[0] = v247;
            *v91 = v259;
            sub_21C54A898(&qword_27CDDD4B8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
            v92 = sub_21C55CE34();
            v94 = v93;
            v248 = v56;
            v95 = *v265;
            (*v265)(v87, v44);
            v96 = sub_21C556F20(v92, v94, v277);
            v48 = v263;

            *(v91 + 4) = v96;
            _os_log_impl(&dword_21C53D000, v89, v90, "Could not load bundle at URL: %{public}s", v91, 0xCu);
            v97 = v247;
            __swift_destroy_boxed_opaque_existential_1(v247);
            v47 = v262;
            MEMORY[0x21CF0BC40](v97, -1, -1);
            MEMORY[0x21CF0BC40](v91, -1, -1);

            v95(v48, v44);
            goto LABEL_5;
          }

          v116 = *v265;
          (*v265)(v87, v44);
          v116(v48, v44);
          v43 = v266;
          v46 = v267;
          v47 = v86;
        }

LABEL_6:
        v46 += v264;
        if (!--v43)
        {

          goto LABEL_88;
        }

        (v268)(v48, v46, v44);
      }
    }

    v47 = v262;
LABEL_88:
    v177 = v245;
  }

  else
  {
    v170 = v277[0];
    v171 = sub_21C55C504();

    swift_willThrow();
    if (qword_27CDDD3C0 != -1)
    {
      swift_once();
    }

    v172 = sub_21C55C714();
    __swift_project_value_buffer(v172, qword_27CDDE7A8);
    v173 = v171;
    v174 = sub_21C55C6F4();
    v175 = sub_21C55CCE4();

    v176 = os_log_type_enabled(v174, v175);
    v47 = v262;
    v177 = v245;
    if (v176)
    {
      v178 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      *v178 = 138543362;
      v180 = v171;
      v181 = _swift_stdlib_bridgeErrorToNSError();
      *(v178 + 4) = v181;
      *v179 = v181;
      _os_log_impl(&dword_21C53D000, v174, v175, "Error reading plugin path: %{public}@", v178, 0xCu);
      sub_21C544404(v179, &qword_27CDDD890, &qword_21C55E860);
      MEMORY[0x21CF0BC40](v179, -1, -1);
      MEMORY[0x21CF0BC40](v178, -1, -1);
    }

    else
    {
    }

    v255 = 0;
  }

  swift_getKeyPath();
  v277[0] = v47;
  sub_21C55C604();

  v182 = v242;
  swift_beginAccess();
  sub_21C543D24(v182, v277);
  sub_21C543064(v277);
  sub_21C544404(v277, &unk_27CDDDA40, &qword_21C55DD60);
  swift_getKeyPath();
  v277[0] = v47;
  sub_21C55C604();

  v183 = v243;
  swift_beginAccess();
  sub_21C543D24(v183, v277);
  v184 = v47[8];
  v274 = v177;
  v275 = v250;
  *&v273 = v184;

  sub_21C54342C(v277, &v273);
  sub_21C544404(v277, &unk_27CDDDA40, &qword_21C55DD60);
  sub_21C544404(&v273, &unk_27CDDDA40, &qword_21C55DD60);
  swift_getKeyPath();
  v277[0] = v47;
  sub_21C55C604();

  swift_beginAccess();
  sub_21C543D24((v47 + 14), v277);
  v185 = v278;
  sub_21C544404(v277, &unk_27CDDDA40, &qword_21C55DD60);
  if (!v185)
  {
    swift_allocObject();
    v186 = sub_21C55181C(4);
    v278 = v177;
    v279 = v250;
    v277[0] = v186;
    v187 = swift_getKeyPath();
    MEMORY[0x28223BE20](v187);
    *(&v235 - 2) = v47;
    *(&v235 - 1) = v277;
    *&v273 = v47;
    v188 = v255;
    sub_21C55C5F4();
    v255 = v188;

    sub_21C544404(v277, &unk_27CDDDA40, &qword_21C55DD60);
  }

  swift_getKeyPath();
  v277[0] = v47;
  sub_21C55C604();

  sub_21C543D24((v47 + 14), v277);
  sub_21C543064(v277);
  sub_21C544404(v277, &unk_27CDDDA40, &qword_21C55DD60);
  swift_getKeyPath();
  v277[0] = v47;
  sub_21C55C604();

  v189 = v244;
  swift_beginAccess();
  sub_21C543D24(v189, v277);
  sub_21C543064(v277);
  sub_21C544404(v277, &unk_27CDDDA40, &qword_21C55DD60);
  swift_getKeyPath();
  v277[0] = v47;
  sub_21C55C604();

  v190 = v246;
  swift_beginAccess();
  sub_21C543D24(v190, v277);
  sub_21C543064(v277);
  sub_21C544404(v277, &unk_27CDDDA40, &qword_21C55DD60);
  swift_getKeyPath();
  v277[0] = v47;
  sub_21C55C604();

  swift_beginAccess();
  sub_21C543D24((v47 + 32), v277);
  sub_21C543064(v277);
  sub_21C544404(v277, &unk_27CDDDA40, &qword_21C55DD60);
  swift_getKeyPath();
  v277[0] = v47;
  sub_21C55C604();

  swift_beginAccess();
  sub_21C543D24((v47 + 37), v277);
  sub_21C543064(v277);
  sub_21C544404(v277, &unk_27CDDDA40, &qword_21C55DD60);
  swift_getKeyPath();
  v277[0] = v47;
  sub_21C55C604();

  sub_21C543D24(v242, v277);
  swift_getKeyPath();
  *&v273 = v47;
  sub_21C55C604();

  *&v273 = v47;
  swift_getKeyPath();
  sub_21C55C624();

  swift_beginAccess();
  sub_21C5599E0(v277, 0x6174736E49707041, 0xEF6E6F6974616C6CLL);
  swift_endAccess();
  *&v273 = v47;
  swift_getKeyPath();
  sub_21C55C614();

  v191 = v47[8];
  v192 = v250;
  v193 = v245;
  v278 = v245;
  v279 = v250;
  v277[0] = v191;
  swift_getKeyPath();
  *&v273 = v47;

  sub_21C55C604();

  *&v273 = v47;
  swift_getKeyPath();
  sub_21C55C624();

  swift_beginAccess();
  sub_21C5599E0(v277, 0x6C69616D45, 0xE500000000000000);
  swift_endAccess();
  *&v273 = v47;
  swift_getKeyPath();
  sub_21C55C614();

  swift_getKeyPath();
  v277[0] = v47;
  sub_21C55C604();

  sub_21C543D24(v243, v277);
  swift_getKeyPath();
  *&v273 = v47;
  sub_21C55C604();

  *&v273 = v47;
  swift_getKeyPath();
  sub_21C55C624();

  swift_beginAccess();
  sub_21C5599E0(v277, 0x6E6967617373654DLL, 0xE900000000000067);
  swift_endAccess();
  *&v273 = v47;
  swift_getKeyPath();
  sub_21C55C614();

  swift_getKeyPath();
  v277[0] = v47;
  sub_21C55C604();

  sub_21C543D24((v47 + 14), v277);
  swift_getKeyPath();
  *&v273 = v47;
  sub_21C55C604();

  *&v273 = v47;
  swift_getKeyPath();
  sub_21C55C624();

  swift_beginAccess();
  sub_21C5599E0(v277, 0x676E696C6C6143, 0xE700000000000000);
  swift_endAccess();
  *&v273 = v47;
  swift_getKeyPath();
  sub_21C55C614();

  swift_getKeyPath();
  v277[0] = v47;
  sub_21C55C604();

  sub_21C543D24(v244, v277);
  swift_getKeyPath();
  *&v273 = v47;
  sub_21C55C604();

  *&v273 = v47;
  swift_getKeyPath();
  sub_21C55C624();

  swift_beginAccess();
  sub_21C5599E0(v277, 0x746C69466C6C6143, 0xED0000676E697265);
  swift_endAccess();
  *&v273 = v47;
  swift_getKeyPath();
  sub_21C55C614();

  v194 = v47[24];
  v278 = v193;
  v279 = v192;
  v277[0] = v194;
  swift_getKeyPath();
  *&v273 = v47;

  sub_21C55C604();

  *&v273 = v47;
  swift_getKeyPath();
  sub_21C55C624();

  swift_beginAccess();
  sub_21C5599E0(v277, 0x697461676976614ELL, 0xEA00000000006E6FLL);
  swift_endAccess();
  *&v273 = v47;
  swift_getKeyPath();
  sub_21C55C614();

  v195 = v47[25];
  v278 = v193;
  v279 = v192;
  v277[0] = v195;
  swift_getKeyPath();
  *&v273 = v47;

  sub_21C55C604();

  *&v273 = v47;
  swift_getKeyPath();
  sub_21C55C624();

  swift_beginAccess();
  sub_21C5599E0(v277, 0x41726573776F7242, 0xEA00000000007070);
  swift_endAccess();
  *&v273 = v47;
  swift_getKeyPath();
  sub_21C55C614();

  v196 = v47[26];
  v278 = v193;
  v279 = v192;
  v277[0] = v196;
  swift_getKeyPath();
  *&v273 = v47;

  sub_21C55C604();

  *&v273 = v47;
  swift_getKeyPath();
  sub_21C55C624();

  swift_beginAccess();
  sub_21C5599E0(v277, 0x74616C736E617254, 0xEB000000006E6F69);
  swift_endAccess();
  *&v273 = v47;
  swift_getKeyPath();
  sub_21C55C614();

  swift_getKeyPath();
  v277[0] = v47;
  sub_21C55C604();

  sub_21C543D24(v246, v277);
  swift_getKeyPath();
  *&v273 = v47;
  sub_21C55C604();

  *&v273 = v47;
  swift_getKeyPath();
  sub_21C55C624();

  swift_beginAccess();
  sub_21C5599E0(v277, 0xD000000000000011, 0x800000021C55EE90);
  swift_endAccess();
  *&v273 = v47;
  swift_getKeyPath();
  sub_21C55C614();

  swift_getKeyPath();
  v277[0] = v47;
  sub_21C55C604();

  sub_21C543D24((v47 + 32), v277);
  swift_getKeyPath();
  *&v273 = v47;
  sub_21C55C604();

  *&v273 = v47;
  swift_getKeyPath();
  sub_21C55C624();

  swift_beginAccess();
  sub_21C5599E0(v277, 0x6C746361746E6F43, 0xEE00707041737365);
  swift_endAccess();
  *&v273 = v47;
  swift_getKeyPath();
  sub_21C55C614();

  swift_getKeyPath();
  v277[0] = v47;
  sub_21C55C604();

  sub_21C543D24((v47 + 37), v277);
  swift_getKeyPath();
  *&v273 = v47;
  sub_21C55C604();

  *&v273 = v47;
  swift_getKeyPath();
  sub_21C55C624();

  swift_beginAccess();
  sub_21C5599E0(v277, 0x6472616F6279654BLL, 0xE900000000000073);
  swift_endAccess();
  *&v273 = v47;
  swift_getKeyPath();
  sub_21C55C614();

  swift_getKeyPath();
  v277[0] = v47;
  sub_21C55C604();

  v197 = v47[2];
  if (v197 >> 62)
  {
    goto LABEL_149;
  }

  v198 = *((v197 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_95:

  if (v198)
  {
    v199 = 0;
    v269 = (v197 & 0xC000000000000001);
    v200 = MEMORY[0x277D84F90];
    v268 = v197 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v269)
      {
        v201 = MEMORY[0x21CF0B5C0](v199, v197);
        v202 = v199 + 1;
        if (__OFADD__(v199, 1))
        {
LABEL_119:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v199 >= *(v268 + 16))
        {
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          v198 = sub_21C55CDC4();
          goto LABEL_95;
        }

        v201 = *(v197 + 8 * v199 + 32);

        v202 = v199 + 1;
        if (__OFADD__(v199, 1))
        {
          goto LABEL_119;
        }
      }

      sub_21C55CCA4();
      sub_21C55CC94();
      sub_21C55CC54();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      swift_getKeyPath();
      v277[0] = v201;
      sub_21C54A898(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup, &unk_21C55DD08);
      sub_21C55C604();

      v203 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__providers;
      swift_beginAccess();
      v204 = *&v201[v203];

      v205 = *(v204 + 16);
      v206 = v200[2];
      v207 = v206 + v205;
      if (__OFADD__(v206, v205))
      {
        goto LABEL_142;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v207 <= v200[3] >> 1)
      {
        if (!*(v204 + 16))
        {
          goto LABEL_97;
        }
      }

      else
      {
        if (v206 <= v207)
        {
          v209 = v206 + v205;
        }

        else
        {
          v209 = v206;
        }

        v200 = sub_21C54A5C8(isUniquelyReferenced_nonNull_native, v209, 1, v200);
        if (!*(v204 + 16))
        {
LABEL_97:

          if (v205)
          {
            goto LABEL_143;
          }

          goto LABEL_98;
        }
      }

      if ((v200[3] >> 1) - v200[2] < v205)
      {
        goto LABEL_146;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD480, &qword_21C55DDF8);
      swift_arrayInitWithCopy();

      if (v205)
      {
        v210 = v200[2];
        v211 = __OFADD__(v210, v205);
        v212 = v210 + v205;
        if (v211)
        {
          goto LABEL_148;
        }

        v200[2] = v212;
      }

LABEL_98:
      ++v199;
      if (v202 == v198)
      {
        goto LABEL_121;
      }
    }
  }

  v200 = MEMORY[0x277D84F90];
LABEL_121:
  v268 = v200;

  v267 = *(v268 + 16);
  if (v267)
  {
    v266 = sub_21C55CCA4();
    v213 = v268;
    v214 = 0;
    v215 = v268 + 32;
    v216 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v214 >= *(v213 + 16))
      {
        goto LABEL_144;
      }

      sub_21C543EA8(v215, v277);
      v269 = sub_21C55CC94();
      sub_21C55CC54();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      __swift_project_boxed_opaque_existential_1(v277, v278);
      v218 = sub_21C55C694();
      v220 = v219;
      sub_21C543EA8(v277, &v273);
      v221 = swift_isUniquelyReferenced_nonNull_native();
      v270 = v216;
      v223 = sub_21C559DE8(v218, v220);
      v224 = v216[2];
      v225 = (v222 & 1) == 0;
      v226 = v224 + v225;
      if (__OFADD__(v224, v225))
      {
        goto LABEL_145;
      }

      v197 = v222;
      if (v216[3] >= v226)
      {
        if (v221)
        {
          if (v222)
          {
            goto LABEL_123;
          }
        }

        else
        {
          sub_21C55B1CC();
          if (v197)
          {
            goto LABEL_123;
          }
        }
      }

      else
      {
        sub_21C55A114(v226, v221);
        v227 = sub_21C559DE8(v218, v220);
        if ((v197 & 1) != (v228 & 1))
        {
          result = sub_21C55CE54();
          __break(1u);
          return result;
        }

        v223 = v227;
        if (v197)
        {
LABEL_123:

          v216 = v270;
          v217 = (v270[7] + 40 * v223);
          __swift_destroy_boxed_opaque_existential_1(v217);
          sub_21C543DDC(&v273, v217);
          goto LABEL_124;
        }
      }

      v216 = v270;
      v270[(v223 >> 6) + 8] |= 1 << v223;
      v229 = (v216[6] + 16 * v223);
      *v229 = v218;
      v229[1] = v220;
      sub_21C543DDC(&v273, v216[7] + 40 * v223);
      v230 = v216[2];
      v211 = __OFADD__(v230, 1);
      v231 = v230 + 1;
      if (v211)
      {
        goto LABEL_147;
      }

      v216[2] = v231;
LABEL_124:
      ++v214;

      __swift_destroy_boxed_opaque_existential_1(v277);
      v215 += 40;
      v213 = v268;
      if (v267 == v214)
      {
        goto LABEL_140;
      }
    }
  }

  v216 = MEMORY[0x277D84F98];
LABEL_140:

  v232 = swift_getKeyPath();
  MEMORY[0x28223BE20](v232);
  v233 = v262;
  *(&v235 - 2) = v262;
  *(&v235 - 1) = v216;
  v277[0] = v233;
  sub_21C55C5F4();

  (*(v249 + 8))(v241, v258);
  return v233;
}

double sub_21C549694@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C604();

  v7 = *(v3 + 344);
  if (*(v7 + 16))
  {

    v8 = sub_21C559DE8(a1, a2);
    if (v9)
    {
      sub_21C543EA8(*(v7 + 56) + 40 * v8, a3);

      return result;
    }
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_21C54979C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X8>)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  sub_21C543EA8(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD480, &qword_21C55DDF8);
  type metadata accessor for DefaultLSAppsSettingsProvider(0);
  if (!swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v14 = sub_21C55C694();
    v16 = v15;
    if (sub_21C55CB94() == v14 && v17 == v16)
    {

      goto LABEL_12;
    }

    v18 = sub_21C55CE44();

    if (v18)
    {
LABEL_12:

      swift_getKeyPath();
      sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
      sub_21C55C604();

      swift_beginAccess();
      sub_21C543D24(a3 + 24, &v35);
      if (*(&v36 + 1))
      {
LABEL_13:
        sub_21C543DDC(&v35, v38);
        __swift_project_boxed_opaque_existential_1(v38, v38[3]);
        *(&v36 + 1) = swift_getDynamicType();
        v37 = v38[4];
        __swift_allocate_boxed_opaque_existential_1(&v35);

        sub_21C55C6A4();
        __swift_destroy_boxed_opaque_existential_1(v38);
        sub_21C544404(&v39, &unk_27CDDDA40, &qword_21C55DD60);
        v39 = v35;
        v40 = v36;
        v41 = v37;
        goto LABEL_20;
      }

      sub_21C544404(&v35, &unk_27CDDDA40, &qword_21C55DD60);
      if (qword_27CDDD3C0 != -1)
      {
        swift_once();
      }

      v19 = sub_21C55C714();
      __swift_project_value_buffer(v19, qword_27CDDE7A8);
      v20 = sub_21C55C6F4();
      v21 = sub_21C55CCE4();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        v23 = "Could not find default marketplace provider.";
LABEL_18:
        _os_log_impl(&dword_21C53D000, v20, v21, v23, v22, 2u);
        MEMORY[0x21CF0BC40](v22, -1, -1);
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    if (sub_21C55CBB4() == v14 && v26 == v16)
    {
    }

    else
    {
      v27 = sub_21C55CE44();

      if ((v27 & 1) == 0)
      {
        if (sub_21C55CB24() == v14 && v29 == v16)
        {
        }

        else
        {
          v30 = sub_21C55CE44();

          if ((v30 & 1) == 0)
          {
            if (sub_21C55CB54() == v14 && v32 == v16)
            {
            }

            else
            {
              v33 = sub_21C55CE44();

              if ((v33 & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            swift_getKeyPath();
            sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
            sub_21C55C604();

            swift_beginAccess();
            sub_21C543D24(a3 + 112, &v35);
            if (*(&v36 + 1))
            {
              goto LABEL_13;
            }

            sub_21C544404(&v35, &unk_27CDDDA40, &qword_21C55DD60);
            if (qword_27CDDD3C0 != -1)
            {
              swift_once();
            }

            v34 = sub_21C55C714();
            __swift_project_value_buffer(v34, qword_27CDDE7A8);
            v20 = sub_21C55C6F4();
            v21 = sub_21C55CCE4();
            if (os_log_type_enabled(v20, v21))
            {
              v22 = swift_slowAlloc();
              *v22 = 0;
              v23 = "Could not find default phone calls provider.";
              goto LABEL_18;
            }

            goto LABEL_19;
          }
        }

        swift_getKeyPath();
        sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
        sub_21C55C604();

        swift_beginAccess();
        sub_21C543D24(a3 + 72, &v35);
        if (*(&v36 + 1))
        {
          goto LABEL_13;
        }

        sub_21C544404(&v35, &unk_27CDDDA40, &qword_21C55DD60);
        if (qword_27CDDD3C0 != -1)
        {
          swift_once();
        }

        v31 = sub_21C55C714();
        __swift_project_value_buffer(v31, qword_27CDDE7A8);
        v20 = sub_21C55C6F4();
        v21 = sub_21C55CCE4();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          v23 = "Could not find default messaging provider.";
          goto LABEL_18;
        }

LABEL_19:

        goto LABEL_20;
      }
    }

    swift_getKeyPath();
    sub_21C54A898(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
    sub_21C55C604();

    swift_beginAccess();
    sub_21C543D24(a3 + 256, &v35);
    if (*(&v36 + 1))
    {
      goto LABEL_13;
    }

    sub_21C544404(&v35, &unk_27CDDDA40, &qword_21C55DD60);
    if (qword_27CDDD3C0 != -1)
    {
      swift_once();
    }

    v28 = sub_21C55C714();
    __swift_project_value_buffer(v28, qword_27CDDE7A8);
    v20 = sub_21C55C6F4();
    v21 = sub_21C55CCE4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Could not find default contactless payment provider.";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  sub_21C543EA8(a1, v38);
  swift_dynamicCast();
  v10 = *(v35 + 88);

  v11 = *(a2 + 16);
  v12 = (a2 + 32);
  while (v11)
  {
    v13 = *v12++;
    --v11;
    if (v13 == v10)
    {
      sub_21C544404(&v39, &unk_27CDDDA40, &qword_21C55DD60);
      sub_21C543EA8(a1, &v39);
      break;
    }
  }

LABEL_20:
  v24 = v40;
  *a6 = v39;
  *(a6 + 16) = v24;
  *(a6 + 32) = v41;
}

char *sub_21C54A06C()
{

  sub_21C544404(v0 + 24, &unk_27CDDDA40, &qword_21C55DD60);

  sub_21C544404(v0 + 72, &unk_27CDDDA40, &qword_21C55DD60);
  sub_21C544404(v0 + 112, &unk_27CDDDA40, &qword_21C55DD60);
  sub_21C544404(v0 + 152, &unk_27CDDDA40, &qword_21C55DD60);

  sub_21C544404(v0 + 216, &unk_27CDDDA40, &qword_21C55DD60);
  sub_21C544404(v0 + 256, &unk_27CDDDA40, &qword_21C55DD60);
  sub_21C544404(v0 + 296, &unk_27CDDDA40, &qword_21C55DD60);

  v1 = OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsModel___observationRegistrar;
  v2 = sub_21C55C644();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_21C54A194()
{
  sub_21C54A06C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for DefaultAppsSettingsModel(uint64_t a1)
{
  result = qword_28120F480;
  if (!qword_28120F480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C54A240(uint64_t a1)
{
  result = sub_21C55C644();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_21C54A314()
{
  sub_21C55CE64();
  MEMORY[0x21CF0B6B0](0);
  return sub_21C55CE84();
}

uint64_t sub_21C54A380(uint64_t a1)
{
  sub_21C55CE64();
  MEMORY[0x21CF0B6B0](0);
  return sub_21C55CE84();
}

id sub_21C54A3E8(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_21C55CA94();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_21C55C504();

    swift_willThrow();
  }

  return v6;
}

char *sub_21C54A4C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD4D8, &qword_21C55E130);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_21C54A5C8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD4D0, &qword_21C55E128);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD480, &qword_21C55DDF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21C54A710(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD4E0, &qword_21C55E160);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21C54A898(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_21C54A998()
{
  result = qword_27CDDD4C8;
  if (!qword_27CDDD4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD4C8);
  }

  return result;
}

uint64_t sub_21C54AA40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDDDA40, &qword_21C55DD60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C54AAB0()
{
  *(*(v0 + 16) + 344) = *(v0 + 24);
}

uint64_t sub_21C54AB28()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

char *sub_21C54AB64(char a1, char a2)
{
  if (a2)
  {
    return MEMORY[0x277D84F90];
  }

  if ((a1 & 2) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((a1 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v2 = sub_21C54A710(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v5 = *(v2 + 3);
  v6 = v4 + 1;
  if (v4 >= v5 >> 1)
  {
    v41 = v4 + 1;
    v23 = v2;
    v24 = *(v2 + 2);
    v25 = sub_21C54A710((v5 > 1), v4 + 1, 1, v23);
    v4 = v24;
    v6 = v41;
    v2 = v25;
  }

  *(v2 + 2) = v6;
  *&v2[8 * v4 + 32] = 1;
  if ((a1 & 4) != 0)
  {
LABEL_9:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_21C54A710(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v8 = *(v2 + 3);
    v9 = v7 + 1;
    if (v7 >= v8 >> 1)
    {
      v42 = v7 + 1;
      v26 = v2;
      v27 = *(v2 + 2);
      v28 = sub_21C54A710((v8 > 1), v7 + 1, 1, v26);
      v7 = v27;
      v9 = v42;
      v2 = v28;
    }

    *(v2 + 2) = v9;
    *&v2[8 * v7 + 32] = 2;
  }

LABEL_14:
  if ((a1 & 8) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_21C54A710(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v11 = *(v2 + 3);
    v12 = v10 + 1;
    if (v10 >= v11 >> 1)
    {
      v43 = v10 + 1;
      v29 = v2;
      v30 = *(v2 + 2);
      v31 = sub_21C54A710((v11 > 1), v10 + 1, 1, v29);
      v10 = v30;
      v12 = v43;
      v2 = v31;
    }

    *(v2 + 2) = v12;
    *&v2[8 * v10 + 32] = 3;
    if ((a1 & 0x10) == 0)
    {
LABEL_16:
      if ((a1 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  else if ((a1 & 0x10) == 0)
  {
    goto LABEL_16;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21C54A710(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v14 = *(v2 + 3);
  v15 = v13 + 1;
  if (v13 >= v14 >> 1)
  {
    v44 = v13 + 1;
    v32 = v2;
    v33 = *(v2 + 2);
    v34 = sub_21C54A710((v14 > 1), v13 + 1, 1, v32);
    v13 = v33;
    v15 = v44;
    v2 = v34;
  }

  *(v2 + 2) = v15;
  *&v2[8 * v13 + 32] = 4;
  if ((a1 & 0x20) == 0)
  {
LABEL_17:
    if ((a1 & 0x40) == 0)
    {
      return v2;
    }

    goto LABEL_34;
  }

LABEL_29:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21C54A710(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v17 = *(v2 + 3);
  v18 = v16 + 1;
  if (v16 >= v17 >> 1)
  {
    v45 = v16 + 1;
    v35 = v2;
    v36 = *(v2 + 2);
    v37 = sub_21C54A710((v17 > 1), v16 + 1, 1, v35);
    v16 = v36;
    v18 = v45;
    v2 = v37;
  }

  *(v2 + 2) = v18;
  *&v2[8 * v16 + 32] = 5;
  if ((a1 & 0x40) != 0)
  {
LABEL_34:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_21C54A710(0, *(v2 + 2) + 1, 1, v2);
    }

    v19 = *(v2 + 2);
    v20 = *(v2 + 3);
    v21 = v19 + 1;
    if (v19 >= v20 >> 1)
    {
      v38 = v2;
      v39 = *(v2 + 2);
      v40 = sub_21C54A710((v20 > 1), v19 + 1, 1, v38);
      v19 = v39;
      v2 = v40;
    }

    *(v2 + 2) = v21;
    *&v2[8 * v19 + 32] = 6;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for Feature(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Feature(_WORD *result, int a2, int a3)
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

unint64_t sub_21C54AFB4()
{
  result = qword_27CDDD4E8;
  if (!qword_27CDDD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD4E8);
  }

  return result;
}

uint64_t DefaultAppsSettingsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v92 = a1;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD490, &qword_21C55DF40);
  MEMORY[0x28223BE20](v90);
  v91 = &v64 - v3;
  v85 = sub_21C55C7A4();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for DefaultAppsSettingsView(0);
  v88 = *(v93 - 8);
  v5 = *(v88 + 64);
  MEMORY[0x28223BE20](v93);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD4F0, &qword_21C55E218);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v64 - v8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD4F8, &qword_21C55E220);
  v66 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v11 = &v64 - v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD500, &qword_21C55E228);
  v70 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v68 = &v64 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD508, &qword_21C55E230);
  v69 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v67 = &v64 - v13;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD510, &qword_21C55E238);
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v71 = &v64 - v14;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD518, &qword_21C55E240);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v64 - v15;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD520, &qword_21C55E248);
  MEMORY[0x28223BE20](v86);
  v87 = &v64 - v16;
  v94 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD528, &qword_21C55E250);
  sub_21C54EDD8(&qword_27CDDD530, &qword_27CDDD528, &qword_21C55E250, MEMORY[0x277CE14C0]);
  sub_21C55C804();
  v89 = v2;
  sub_21C54D278(v2, &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v78 = *(v88 + 80);
  v77 = v17 + v5;
  v18 = swift_allocObject();
  v79 = v17;
  v88 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C54D2DC(v88, v18 + v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD540, &qword_21C55E260);
  v20 = sub_21C54EDD8(&qword_27CDDD548, &qword_27CDDD4F0, &qword_21C55E218, MEMORY[0x277CDE5A0]);
  v21 = sub_21C54D3C0();
  v22 = MEMORY[0x277D837E0];
  v65 = v11;
  sub_21C55C8E4();

  (*(v7 + 8))(v9, v6);
  sub_21C55C7B4();
  if (qword_27CDDD3A0 != -1)
  {
    swift_once();
  }

  v23 = qword_27CDDE790;
  v24 = sub_21C55C814();
  v26 = v25;
  v28 = v27;
  v97 = v6;
  v98 = MEMORY[0x277D837D0];
  v99 = v19;
  v100 = v20;
  v101 = v22;
  v102 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v68;
  v31 = v72;
  v32 = v65;
  sub_21C55C8C4();
  sub_21C54D4D8(v24, v26, v28 & 1);

  (*(v66 + 8))(v32, v31);
  v33 = v84;
  v34 = v83;
  v35 = v85;
  (*(v84 + 104))(v83, *MEMORY[0x277CDDDC0], v85);
  v97 = v31;
  v98 = OpaqueTypeConformance2;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v67;
  v38 = v73;
  sub_21C55C8F4();
  (*(v33 + 8))(v34, v35);
  (*(v70 + 8))(v30, v38);
  v97 = v38;
  v98 = v36;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = v71;
  v41 = v75;
  sub_21C55C844();
  (*(v69 + 8))(v37, v41);
  v42 = v89;
  v43 = (v89 + *(v93 + 28));
  v45 = *v43;
  v44 = v43[1];
  v97 = v45;
  v98 = v44;
  v95 = v41;
  v96 = v39;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = sub_21C54D484();
  v48 = v80;
  v49 = v76;
  v50 = MEMORY[0x277D837D0];
  sub_21C55C854();
  v51 = (*(v74 + 8))(v40, v49);
  MEMORY[0x28223BE20](v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD560, &qword_21C55E268);
  v97 = v49;
  v98 = v50;
  v99 = v46;
  v100 = v47;
  swift_getOpaqueTypeConformance2();
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD568, &qword_21C55E270);
  v53 = sub_21C54EDD8(&qword_27CDDD570, &qword_27CDDD568, &qword_21C55E270, MEMORY[0x277CDD7A8]);
  v97 = v52;
  v98 = v53;
  swift_getOpaqueTypeConformance2();
  v54 = v87;
  v55 = v82;
  sub_21C55C904();
  (*(v81 + 8))(v48, v55);
  v56 = v88;
  sub_21C54D278(v42, v88);
  v57 = swift_allocObject();
  v58 = v79;
  sub_21C54D2DC(v56, v57 + v79);
  v59 = (v54 + *(v86 + 36));
  *v59 = sub_21C54DCE4;
  v59[1] = v57;
  v59[2] = 0;
  v59[3] = 0;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD538, &qword_21C55E258);
  v61 = v91;
  MEMORY[0x21CF0B1C0](v60);
  sub_21C54D278(v42, v56);
  v62 = swift_allocObject();
  sub_21C54D2DC(v56, v62 + v58);
  sub_21C54E2B0();
  sub_21C54E5C0();
  sub_21C55C914();

  sub_21C544404(v61, &qword_27CDDD490, &qword_21C55DF40);
  return sub_21C53EF18(v54);
}

uint64_t type metadata accessor for DefaultAppsSettingsView(uint64_t a1)
{
  result = qword_28120F528;
  if (!qword_28120F528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C54BDC0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD5B8, &qword_21C55E310);
  v35 = *(v38 - 8);
  v3 = MEMORY[0x28223BE20](v38);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - v5;
  v33 = sub_21C55CA14();
  v7 = *(v33 - 8);
  v8 = MEMORY[0x28223BE20](v33);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  sub_21C55CCA4();
  v34 = sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for DefaultAppsSettingsView(0);

  v32 = v12;
  sub_21C55CA04();
  v13 = a1[1];
  v40 = *a1;
  v41 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD5B0, &unk_21C55E300);
  sub_21C55C944();
  v14 = v39;
  swift_getKeyPath();
  v40 = v14;
  sub_21C54EFC8(&qword_27CDDD4B0, type metadata accessor for DefaultAppsSettingsModel, &unk_21C55DF18);
  sub_21C55C604();

  v15 = *(v14 + 16);

  v40 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD5C0, &qword_21C55E340);
  sub_21C55C5B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD5C8, &qword_21C55E348);
  sub_21C54EDD8(&qword_27CDDD5D0, &qword_27CDDD5C0, &qword_21C55E340, MEMORY[0x277D83980]);
  sub_21C54EB88();
  sub_21C54EFC8(&qword_27CDDD620, type metadata accessor for DefaultAppsSettingsGroup, &unk_21C55DD24);
  v16 = v6;
  v31 = v6;
  sub_21C55C9D4();
  v17 = *(v7 + 16);
  v18 = v10;
  v19 = v10;
  v20 = v33;
  v17(v19, v12, v33);
  v22 = v35;
  v21 = v36;
  v30 = *(v35 + 16);
  v23 = v16;
  v24 = v38;
  v30(v36, v23, v38);
  v25 = v37;
  v17(v37, v18, v20);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD628, &qword_21C55E370);
  v30(&v25[*(v26 + 48)], v21, v24);
  v27 = *(v22 + 8);
  v27(v31, v24);
  v28 = *(v7 + 8);
  v28(v32, v20);
  v27(v21, v24);
  v28(v18, v20);
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

uint64_t sub_21C54C30C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD5E8, &qword_21C55E350);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD5C8, &qword_21C55E348);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v14 - v9;
  v11 = *a1;
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  v14[1] = v11;
  sub_21C54EFC8(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup, &unk_21C55DD08);
  sub_21C55C604();

  if (*(v11 + OBJC_IVAR____TtC21DefaultAppsSettingsUI24DefaultAppsSettingsGroup__isVisible) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD5F8, &qword_21C55E358);
    sub_21C54EC9C();
    sub_21C55C9E4();
    (*(v5 + 32))(v10, v7, v4);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  (*(v5 + 56))(v10, v12, 1, v4);
  sub_21C54EE20(v10, a2, &qword_27CDDD5C8, &qword_21C55E348);
}

uint64_t sub_21C54C5B4(uint64_t a1)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_21C54EFC8(&qword_27CDDD470, type metadata accessor for DefaultAppsSettingsGroup, &unk_21C55DD08);
  sub_21C55C604();

  swift_beginAccess();
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD630, &qword_21C55E3F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD608, &qword_21C55E360);
  sub_21C54EDD8(&qword_27CDDD638, &qword_27CDDD630, &qword_21C55E3F0, MEMORY[0x277D83980]);
  sub_21C54ED20();
  sub_21C55C9B4();
}

uint64_t sub_21C54C7AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD618, &qword_21C55E368);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD608, &qword_21C55E360);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v13 - v9;
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_21C55C6C4())
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13[0] = sub_21C55C694();
    v13[1] = v11;
    MEMORY[0x28223BE20](v13[0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD640, &qword_21C55E3F8);
    sub_21C54EE90();
    sub_21C55C754();
    (*(v5 + 32))(v10, v7, v4);
    (*(v5 + 56))(v10, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v10, 1, 1, v4);
  }

  sub_21C54EE20(v10, a2, &qword_27CDDD608, &qword_21C55E360);
}

uint64_t sub_21C54CA78(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD658, &qword_21C55E400);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v7 = MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v9 - 2) = a1;
  MEMORY[0x28223BE20](v7);
  *(&v9 - 2) = a1;
  sub_21C55C744();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21C55C694();
  sub_21C54EF4C();
  sub_21C55C8A4();

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_21C54CCA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21C55C674();
  sub_21C54D484();
  v4 = sub_21C55C824();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_21C54CDB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21C55C664();
  sub_21C54D484();
  v4 = sub_21C55C824();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_21C54CEAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD5A8, &qword_21C55E2F8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD540, &qword_21C55E260);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = *a1;
  v14 = a1[1];
  sub_21C55CCA4();
  v22 = sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = a2[1];
  v23 = *a2;
  v24 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD5B0, &unk_21C55E300);
  sub_21C55C944();
  sub_21C549694(v13, v14, &v25);

  if (v26)
  {
    v21 = a3;
    sub_21C543DDC(&v25, v27);
    __swift_project_boxed_opaque_existential_1(v27, v28);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v20 = &v20;
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    sub_21C55C6B4();
    swift_getAssociatedConformanceWitness();
    v23 = sub_21C55C974();
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v17 = sub_21C55C684();
    if (!v18)
    {
      __swift_project_boxed_opaque_existential_1(v27, v28);
      v17 = sub_21C55C664();
    }

    *&v25 = v17;
    *(&v25 + 1) = v18;
    sub_21C54D484();
    sub_21C55C8D4();

    (*(v7 + 32))(v12, v9, v6);
    (*(v7 + 56))(v12, 0, 1, v6);
    __swift_destroy_boxed_opaque_existential_1(v27);
    a3 = v21;
  }

  else
  {
    sub_21C544404(&v25, &unk_27CDDDA40, &qword_21C55DD60);
    (*(v7 + 56))(v12, 1, 1, v6);
  }

  sub_21C53F17C(v12, a3);
}

uint64_t sub_21C54D278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultAppsSettingsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C54D2DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultAppsSettingsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C54D340@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DefaultAppsSettingsView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_21C54CEAC(a1, v6, a2);
}

unint64_t sub_21C54D3C0()
{
  result = qword_27CDDD550;
  if (!qword_27CDDD550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD540, &qword_21C55E260);
    sub_21C54D484();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD550);
  }

  return result;
}

unint64_t sub_21C54D484()
{
  result = qword_27CDDD558;
  if (!qword_27CDDD558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD558);
  }

  return result;
}

uint64_t sub_21C54D4D8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21C54D4E8(uint64_t a1)
{
  v2 = sub_21C55C7E4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD568, &qword_21C55E270);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_21C55C7D4();
  MEMORY[0x28223BE20](v7);
  *(&v10 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD590, &qword_21C55E2E8);
  sub_21C54EB04();
  sub_21C55C724();
  v8 = sub_21C54EDD8(&qword_27CDDD570, &qword_27CDDD568, &qword_21C55E270, MEMORY[0x277CDD7A8]);
  MEMORY[0x21CF0B030](v6, v3, v8);
  (*(v4 + 8))(v6, v3);
}

double sub_21C54D734@<D0>(uint64_t a2@<X8>)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21C55C7B4();
  if (qword_27CDDD3A0 != -1)
  {
    swift_once();
  }

  v3 = qword_27CDDE790;
  v4 = sub_21C55C814();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  type metadata accessor for DefaultAppsSettingsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD5A0, &qword_21C55E2F0);
  sub_21C55C944();

  result = v12;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  return result;
}

uint64_t sub_21C54D8E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD490, &qword_21C55DF40);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v24 - v1;
  v3 = sub_21C55C574();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  sub_21C55CCA4();
  v10 = sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for DefaultAppsSettingsView(0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD538, &qword_21C55E258);
  MEMORY[0x21CF0B1C0](v11);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_21C544404(v2, &qword_27CDDD490, &qword_21C55DF40);
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    if (qword_27CDDD3C0 != -1)
    {
      swift_once();
    }

    v12 = sub_21C55C714();
    __swift_project_value_buffer(v12, qword_27CDDE7A8);
    (*(v4 + 16))(v7, v9, v3);
    v13 = sub_21C55C6F4();
    v14 = sub_21C55CCF4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v10;
      v27 = v25;
      *v15 = 136380675;
      sub_21C54EFC8(&qword_27CDDD4B8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v16 = sub_21C55CE34();
      v18 = v17;
      v19 = *(v4 + 8);
      v19(v7, v3);
      v20 = sub_21C556F20(v16, v18, &v27);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_21C53D000, v13, v14, "Received deep link request on appear with URL: %{private}s", v15, 0xCu);
      v21 = v25;
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x21CF0BC40](v21, -1, -1);
      MEMORY[0x21CF0BC40](v15, -1, -1);

      v19(v9, v3);
    }

    else
    {

      v22 = *(v4 + 8);
      v22(v7, v3);
      v22(v9, v3);
    }
  }
}

uint64_t sub_21C54DCE4()
{
  type metadata accessor for DefaultAppsSettingsView(0);

  return sub_21C54D8E8();
}

void sub_21C54DD44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD490, &qword_21C55DF40);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v28 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  sub_21C55CCA4();
  v13 = sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27CDDD3C0 != -1)
  {
    swift_once();
  }

  v14 = sub_21C55C714();
  __swift_project_value_buffer(v14, qword_27CDDE7A8);
  sub_21C54EA8C(a1, v12);
  sub_21C54EA8C(a2, v10);
  v15 = sub_21C55C6F4();
  v16 = sub_21C55CCF4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = v18;
    *v17 = 136380931;
    sub_21C54EA8C(v12, v7);
    v19 = sub_21C55CAE4();
    v28 = v13;
    v20 = v19;
    v22 = v21;
    sub_21C544404(v12, &qword_27CDDD490, &qword_21C55DF40);
    v23 = sub_21C556F20(v20, v22, &v29);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2081;
    sub_21C54EA8C(v10, v7);
    v24 = sub_21C55CAE4();
    v26 = v25;
    sub_21C544404(v10, &qword_27CDDD490, &qword_21C55DF40);
    v27 = sub_21C556F20(v24, v26, &v29);

    *(v17 + 14) = v27;
    _os_log_impl(&dword_21C53D000, v15, v16, "Deep link URL changed from %{private}s to %{private}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF0BC40](v18, -1, -1);
    MEMORY[0x21CF0BC40](v17, -1, -1);
  }

  else
  {

    sub_21C544404(v10, &qword_27CDDD490, &qword_21C55DF40);
    sub_21C544404(v12, &qword_27CDDD490, &qword_21C55DF40);
  }
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for DefaultAppsSettingsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 20);

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD538, &qword_21C55E258) + 32);
  v7 = sub_21C55C574();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_21C54E230(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DefaultAppsSettingsView(0);

  sub_21C54DD44(a1, a2);
}

unint64_t sub_21C54E2B0()
{
  result = qword_27CDDD578;
  if (!qword_27CDDD578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD520, &qword_21C55E248);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD518, &qword_21C55E240);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD560, &qword_21C55E268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD510, &qword_21C55E238);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD508, &qword_21C55E230);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD500, &qword_21C55E228);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD4F8, &qword_21C55E220);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD4F0, &qword_21C55E218);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD540, &qword_21C55E260);
    sub_21C54EDD8(&qword_27CDDD548, &qword_27CDDD4F0, &qword_21C55E218, MEMORY[0x277CDE5A0]);
    sub_21C54D3C0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C54D484();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD568, &qword_21C55E270);
    sub_21C54EDD8(&qword_27CDDD570, &qword_27CDDD568, &qword_21C55E270, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD578);
  }

  return result;
}

unint64_t sub_21C54E5C0()
{
  result = qword_27CDDD580;
  if (!qword_27CDDD580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD490, &qword_21C55DF40);
    sub_21C54EFC8(&qword_27CDDD588, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD580);
  }

  return result;
}

uint64_t DefaultAppsSettingsView.init(deepLinkURL:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for DefaultAppsSettingsModel(0);
  swift_allocObject();
  sub_21C5464EC();
  sub_21C55C934();
  *a2 = v21;
  a2[1] = v22;
  v4 = type metadata accessor for DefaultAppsSettingsView(0);
  v5 = (a2 + v4[6]);
  sub_21C55C934();
  *v5 = v21;
  v5[1] = v22;
  v6 = v4[7];
  if (qword_27CDDD3A0 != -1)
  {
    swift_once();
  }

  v7 = (a2 + v6);
  v8 = qword_27CDDE790;
  v9 = sub_21C55CA94();
  v10 = [v8 localizedStringForKey:v9 value:0 table:0];

  v11 = sub_21C55CAC4();
  v13 = v12;

  *v7 = v11;
  v7[1] = v13;
  v14 = (a2 + v4[8]);
  v15 = sub_21C55CA94();
  v16 = [v8 localizedStringForKey:v15 value:0 table:0];

  v17 = sub_21C55CAC4();
  v19 = v18;

  *v14 = v17;
  v14[1] = v19;
  return sub_21C54EE20(a1, a2 + v4[5], &qword_27CDDD538, &qword_21C55E258);
}

void sub_21C54E8D4(uint64_t a1)
{
  sub_21C54E980(319);
  if (v1 <= 0x3F)
  {
    sub_21C54E9D8(319);
    if (v2 <= 0x3F)
    {
      sub_21C54EA3C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21C54E980(uint64_t a1)
{
  if (!qword_28120F360)
  {
    type metadata accessor for DefaultAppsSettingsModel(255);
    v1 = sub_21C55C954();
    if (!v2)
    {
      atomic_store(v1, &qword_28120F360);
    }
  }
}

void sub_21C54E9D8(uint64_t a1)
{
  if (!qword_28120F350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD490, &qword_21C55DF40);
    v1 = sub_21C55C9A4();
    if (!v2)
    {
      atomic_store(v1, &qword_28120F350);
    }
  }
}

void sub_21C54EA3C()
{
  if (!qword_28120F358)
  {
    v0 = sub_21C55C954();
    if (!v1)
    {
      atomic_store(v0, &qword_28120F358);
    }
  }
}

uint64_t sub_21C54EA8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD490, &qword_21C55DF40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C54EB04()
{
  result = qword_27CDDD598;
  if (!qword_27CDDD598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD590, &qword_21C55E2E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD598);
  }

  return result;
}

unint64_t sub_21C54EB88()
{
  result = qword_27CDDD5D8;
  if (!qword_27CDDD5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD5C8, &qword_21C55E348);
    sub_21C54EC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD5D8);
  }

  return result;
}

unint64_t sub_21C54EC0C()
{
  result = qword_27CDDD5E0;
  if (!qword_27CDDD5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD5E8, &qword_21C55E350);
    sub_21C54EC9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD5E0);
  }

  return result;
}

unint64_t sub_21C54EC9C()
{
  result = qword_27CDDD5F0;
  if (!qword_27CDDD5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD5F8, &qword_21C55E358);
    sub_21C54ED20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD5F0);
  }

  return result;
}

unint64_t sub_21C54ED20()
{
  result = qword_27CDDD600;
  if (!qword_27CDDD600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD608, &qword_21C55E360);
    sub_21C54EDD8(&qword_27CDDD610, &qword_27CDDD618, &qword_21C55E368, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD600);
  }

  return result;
}

uint64_t sub_21C54EDD8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_21C54EE20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_21C54EE90()
{
  result = qword_27CDDD648;
  if (!qword_27CDDD648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD640, &qword_21C55E3F8);
    sub_21C54EF4C();
    sub_21C54EFC8(&unk_27CDDD660, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD648);
  }

  return result;
}

unint64_t sub_21C54EF4C()
{
  result = qword_27CDDD650;
  if (!qword_27CDDD650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD658, &qword_21C55E400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD650);
  }

  return result;
}

uint64_t sub_21C54EFC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C54F020@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
  sub_21C55C604();

  *a2 = *(v3 + 80);
  return result;
}

uint64_t sub_21C54F0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD478, &qword_21C55DDE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21C5591A8(a3, v25 - v10, &qword_27CDDD478, &qword_21C55DDE0);
  v12 = sub_21C55CCC4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21C544404(v11, &qword_27CDDD478, &qword_21C55DDE0);
  }

  else
  {
    sub_21C55CCB4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21C55CC54();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21C55CB04() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_21C544404(a3, &qword_27CDDD478, &qword_21C55DDE0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21C544404(a3, &qword_27CDDD478, &qword_21C55DDE0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21C54F3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD478, &qword_21C55DDE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21C5591A8(a3, v25 - v10, &qword_27CDDD478, &qword_21C55DDE0);
  v12 = sub_21C55CCC4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21C544404(v11, &qword_27CDDD478, &qword_21C55DDE0);
  }

  else
  {
    sub_21C55CCB4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21C55CC54();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21C55CB04() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD888, &qword_21C55E850);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_21C544404(a3, &qword_27CDDD478, &qword_21C55DDE0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21C544404(a3, &qword_27CDDD478, &qword_21C55DDE0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD888, &qword_21C55E850);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21C54F704()
{
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
  sub_21C55C604();

  return *(v0 + 32);
}

uint64_t sub_21C54F7A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
  sub_21C55C604();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_21C54F84C(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
    sub_21C55C5F4();
  }

  return result;
}

uint64_t sub_21C54F95C()
{
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
  sub_21C55C604();

  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_21C54FA0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
  sub_21C55C604();

  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t sub_21C54FAB8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 56) == a1 && v5 == a2;
      if (v6 || (sub_21C55CE44() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
    sub_21C55C5F4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t sub_21C54FC28()
{
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
  sub_21C55C604();

  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_21C54FCD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
  sub_21C55C604();

  v4 = *(v3 + 104);
  *a2 = *(v3 + 96);
  a2[1] = v4;
}

uint64_t sub_21C54FD84(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 96) == a1 && v5 == a2;
      if (v6 || (sub_21C55CE44() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
    sub_21C55C5F4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t sub_21C54FEF4()
{
  v1 = v0;
  v2 = sub_21C55C5D4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_21C55CA84();
  MEMORY[0x28223BE20](v3 - 8);
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
  sub_21C55C604();

  v4 = *(v0 + 112);
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);

  sub_21C55C604();

  v5 = *(v4 + 32);
  v6 = *(v4 + 40);

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    swift_getKeyPath();
    sub_21C55C604();

    v8 = *(v1 + 112);
    swift_getKeyPath();

    sub_21C55C604();

    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
  }

  else
  {
    sub_21C55CA24();
    if (qword_27CDDD3A0 != -1)
    {
      swift_once();
    }

    v11 = qword_27CDDE790;
    sub_21C55C5C4();
    v9 = sub_21C55CAD4();
    v10 = v12;
  }

  sub_21C54FAB8(v9, v10);
  return sub_21C550298();
}

uint64_t sub_21C5501F4()
{
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
  sub_21C55C604();
}

uint64_t sub_21C550298()
{
  v1 = v0;
  v2 = sub_21C55CA64();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_21C55C5D4();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_21C55CA84();
  MEMORY[0x28223BE20](v4 - 8);
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
  sub_21C55C604();

  if ((*(v0 + 128) & 1) == 0)
  {
    v6 = *(v0 + 88);
    if (v6 <= 3)
    {
      if (v6 == 1)
      {
        swift_getKeyPath();
        sub_21C55C604();

        v10 = *(v0 + 112);
        swift_getKeyPath();
        sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);

        sub_21C55C604();

        v11 = *(v10 + 64);
        v9 = v11;

        if (v11)
        {
          goto LABEL_17;
        }

        goto LABEL_22;
      }

      if (v6 == 2)
      {
        swift_getKeyPath();
        sub_21C55C604();

        v17 = *(v0 + 112);
        swift_getKeyPath();
        sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);

        sub_21C55C604();

        v18 = *(v17 + 64);
        v9 = v18;

        if (v18)
        {
LABEL_17:

          sub_21C55CA54();
          sub_21C55CA44();
          swift_getKeyPath();
          sub_21C55C604();

          swift_getKeyPath();

          sub_21C55C604();

          sub_21C55CA34();

          goto LABEL_20;
        }

LABEL_22:
        sub_21C55CA24();
        if (qword_27CDDD3A0 == -1)
        {
LABEL_23:
          v21 = qword_27CDDE790;
          sub_21C55C5C4();
          v22 = sub_21C55CAD4();
          return sub_21C54FD84(v22, v23);
        }

LABEL_25:
        swift_once();
        goto LABEL_23;
      }
    }

    else
    {
      switch(v6)
      {
        case 4:
          swift_getKeyPath();
          sub_21C55C604();

          v12 = *(v0 + 112);
          swift_getKeyPath();
          sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);

          sub_21C55C604();

          v13 = *(v12 + 64);
          v14 = v13;

          if (v13)
          {
          }

          else
          {
            swift_getKeyPath();
            sub_21C55C604();

            v19 = *(v1 + 112);
            swift_getKeyPath();

            sub_21C55C604();

            v20 = *(v19 + 80);

            if (v20 == 3)
            {
              goto LABEL_22;
            }
          }

          sub_21C55CA54();
          sub_21C55CA44();
          swift_getKeyPath();
          sub_21C55C604();

          swift_getKeyPath();

          sub_21C55C604();

          sub_21C55CA34();

LABEL_20:
          sub_21C55CA44();
          sub_21C55CA74();
          if (qword_27CDDD3A0 == -1)
          {
            goto LABEL_23;
          }

          goto LABEL_25;
        case 5:
          swift_getKeyPath();
          sub_21C55C604();

          v7 = *(v0 + 112);
          swift_getKeyPath();
          sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);

          sub_21C55C604();

          v8 = *(v7 + 64);
          v9 = v8;

          if (v8)
          {
            goto LABEL_17;
          }

          goto LABEL_22;
        case 6:
          swift_getKeyPath();
          sub_21C55C604();

          v15 = *(v0 + 112);
          swift_getKeyPath();
          sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);

          sub_21C55C604();

          v16 = *(v15 + 64);
          v9 = v16;

          if (v16)
          {
            goto LABEL_17;
          }

          goto LABEL_22;
      }
    }

    result = sub_21C55CDB4();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C550EEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
  sub_21C55C604();

  *a2 = *(v3 + 112);
}

uint64_t sub_21C550F98(uint64_t a1)
{

  v4 = _s21DefaultAppsSettingsUI9AppRecordC2eeoiySbAC_ACtFZ_0(v3, a1);

  if (v4)
  {
    *(v1 + 112) = a1;

    sub_21C54FEF4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
    sub_21C55C5F4();
  }
}

uint64_t sub_21C551104()
{
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
  sub_21C55C604();
}

uint64_t sub_21C5511A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
  sub_21C55C604();

  *a2 = *(v3 + 120);
}

uint64_t sub_21C551254(unint64_t a1)
{

  v4 = sub_21C558BF8(v3, a1);

  if (v4)
  {
    *(v1 + 120) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
    sub_21C55C5F4();
  }
}

uint64_t sub_21C5513A8()
{
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
  sub_21C55C604();

  return *(v0 + 128);
}

uint64_t sub_21C551448@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
  sub_21C55C604();

  *a2 = *(v3 + 128);
  return result;
}

uint64_t sub_21C5514F0(uint64_t result)
{
  if (*(v1 + 128) == (result & 1))
  {
    *(v1 + 128) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
    sub_21C55C5F4();
  }

  return result;
}

uint64_t sub_21C551600()
{
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
  sub_21C55C604();

  return swift_unknownObjectRetain();
}

uint64_t sub_21C5516A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
  sub_21C55C604();

  *a2 = *(v3 + 136);
  return swift_unknownObjectRetain();
}

uint64_t sub_21C551750(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
  sub_21C55C5F4();
}

uint64_t sub_21C55181C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21C55C5D4();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_21C55CA84();
  MEMORY[0x28223BE20](v5 - 8);
  *(v1 + 32) = 0;
  type metadata accessor for AppRecord(0);
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  swift_allocObject();
  v6 = sub_21C5403F4(0);
  v7 = MEMORY[0x277D84F90];
  *(v1 + 112) = v6;
  *(v1 + 120) = v7;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  sub_21C55C634();
  *(v1 + 88) = a1;
  if (a1 > 3)
  {
    if (a1 != 4)
    {
      if (a1 == 5)
      {
        *(v1 + 16) = sub_21C55CB44();
        *(v1 + 24) = v8;
        sub_21C55CA24();
        if (qword_27CDDD3A0 == -1)
        {
          goto LABEL_22;
        }

        goto LABEL_33;
      }

      if (a1 == 6)
      {
        *(v1 + 16) = sub_21C55CB84();
        *(v1 + 24) = v25;
        sub_21C55CA24();
        if (qword_27CDDD3A0 == -1)
        {
          goto LABEL_22;
        }

        goto LABEL_33;
      }

      goto LABEL_36;
    }

    *(v1 + 16) = sub_21C55CB54();
    *(v1 + 24) = v17;
    sub_21C55CA24();
    if (qword_27CDDD3A0 != -1)
    {
      swift_once();
    }

    v18 = qword_27CDDE790;
    sub_21C55C5C4();
    v19 = v18;
    *(v2 + 40) = sub_21C55CAD4();
    *(v2 + 48) = v20;
    sub_21C55CA24();
    sub_21C55C5C4();
    *(v2 + 72) = sub_21C55CAD4();
    *(v2 + 80) = v21;
    v22 = [objc_opt_self() sharedConnection];
    if (v22)
    {
      v23 = v22;
      v52 = v19;
      v24 = [v22 isDefaultCallingAppModificationAllowed];

      if ((v24 ^ 1) == *(v2 + 128))
      {
        *(v2 + 128) = v24 ^ 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v54 = v2;
        sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
        sub_21C55C5F4();
      }

      swift_getKeyPath();
      v54 = v2;
      sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
      sub_21C55C604();

      if (*(v2 + 128) == 1)
      {
        sub_21C55CA24();
        v32 = v52;
        sub_21C55C5C4();
        v33 = sub_21C55CAD4();
        sub_21C54FD84(v33, v34);
      }

      v35 = swift_allocObject();
      swift_weakInit();
      v36 = type metadata accessor for DefaultLSAppsSettingsProvider.CallCapabilitiesMonitor();
      v37 = objc_allocWithZone(v36);
      v38 = &v37[OBJC_IVAR____TtCC21DefaultAppsSettingsUI29DefaultLSAppsSettingsProviderP33_6339B278615E8A6CFC693041365478EF23CallCapabilitiesMonitor_notify];
      *v38 = sub_21C55968C;
      v38[1] = v35;
      v53.receiver = v37;
      v53.super_class = v36;
      swift_retain_n();
      v39 = objc_msgSendSuper2(&v53, sel_init);
      v40 = objc_opt_self();
      sub_21C5596F8(0, &qword_27CDDD898, 0x277D85C78);
      v41 = v39;
      v42 = sub_21C55CD04();
      [v40 addDelegate:v41 queue:v42];

      v43 = swift_getKeyPath();
      MEMORY[0x28223BE20](v43);
      v54 = v2;
      sub_21C55C5F4();

      v44 = CFNotificationCenterGetDarwinNotifyCenter();
      if (qword_27CDDD3B0 != -1)
      {
        swift_once();
      }

      CFNotificationCenterAddObserver(v44, v2, sub_21C5530C0, qword_27CDDD670, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      goto LABEL_32;
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (a1 == 1)
  {
    *(v1 + 16) = sub_21C55CB74();
    *(v1 + 24) = v9;
    sub_21C55CA24();
    if (qword_27CDDD3A0 != -1)
    {
      swift_once();
    }

    v10 = qword_27CDDE790;
    sub_21C55C5C4();
    v11 = v10;
    *(v2 + 40) = sub_21C55CAD4();
    *(v2 + 48) = v12;
    sub_21C55CA24();
    sub_21C55C5C4();
    *(v2 + 72) = sub_21C55CAD4();
    *(v2 + 80) = v13;
    v14 = [objc_opt_self() sharedConnection];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 isDefaultBrowserModificationAllowed];

      if ((v16 ^ 1) == *(v2 + 128))
      {
        *(v2 + 128) = v16 ^ 1;
      }

      else
      {
        v45 = swift_getKeyPath();
        v52 = &v51;
        MEMORY[0x28223BE20](v45);
        v54 = v2;
        sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
        sub_21C55C5F4();
      }

      swift_getKeyPath();
      v54 = v2;
      sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
      sub_21C55C604();

      if (*(v2 + 128) == 1)
      {
        sub_21C55CA24();
        v46 = v11;
        sub_21C55C5C4();
        v47 = sub_21C55CAD4();
        sub_21C54FD84(v47, v48);
      }

      goto LABEL_32;
    }

    goto LABEL_35;
  }

  if (a1 == 2)
  {
    *(v1 + 16) = sub_21C55CB34();
    *(v1 + 24) = v26;
    sub_21C55CA24();
    if (qword_27CDDD3A0 == -1)
    {
LABEL_22:
      v27 = qword_27CDDE790;
      sub_21C55C5C4();
      v28 = v27;
      *(v1 + 40) = sub_21C55CAD4();
      *(v1 + 48) = v29;
      sub_21C55CA24();
      sub_21C55C5C4();
      *(v1 + 72) = sub_21C55CAD4();
      *(v1 + 80) = v30;
LABEL_32:
      sub_21C5531B0();
      sub_21C552514();
      sub_21C552D58();
      sub_21C550298();
      v49 = swift_allocObject();
      swift_weakInit();

      sub_21C55B9D0(v2, sub_21C559684, v49);

      return v2;
    }

LABEL_33:
    swift_once();
    goto LABEL_22;
  }

LABEL_36:
  result = sub_21C55CDB4();
  __break(1u);
  return result;
}

uint64_t sub_21C55248C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21C552514();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C552D58();
  }

  return result;
}

uint64_t sub_21C552514()
{
  v44 = sub_21C55C5B4();
  v1 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21C55C524();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x277D84F90];
  v7 = objc_opt_self();
  v40 = *(v0 + 88);
  v8 = [v7 enumeratorForViableDefaultAppsForCategory:v0 options:?];
  sub_21C55CCD4();

  v45 = v6;
  sub_21C55C514();
  if (v49)
  {
    v43 = (v1 + 8);
    do
    {
      sub_21C5596E8(v48, &v47);
      sub_21C5596F8(0, &qword_27CDDD8A0, 0x277CC1E70);
      if (swift_dynamicCast())
      {
        v9 = v46;
      }

      else
      {
        v9 = 0;
      }

      type metadata accessor for AppRecord(0);
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 0xE000000000000000;
      sub_21C55C5A4();
      v11 = sub_21C55C584();
      v13 = v12;
      (*v43)(v3, v44);
      *(v10 + 48) = v11;
      *(v10 + 56) = v13;
      *(v10 + 64) = 0;
      *(v10 + 72) = 0;
      *(v10 + 80) = 3;
      sub_21C55C634();
      if (*(v10 + 64))
      {
        if (v9)
        {
          v14 = *(v10 + 64);
          v15 = v9;
          v16 = sub_21C55CD14();

          if (v16)
          {
            v17 = *(v10 + 64);
LABEL_13:
            *(v10 + 64) = v9;
            v20 = v15;

            swift_getKeyPath();
            v46 = v10;
            sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
            sub_21C55C604();

            v21 = *(v10 + 64);
            if (v21 && (v22 = [v21 bundleIdentifier]) != 0)
            {
              v23 = v22;
              v24 = sub_21C55CAC4();
              v26 = v25;

              v27 = *(v10 + 24);
              if (!v27)
              {
                goto LABEL_16;
              }

LABEL_19:
              if (v26 && (*(v10 + 16) == v24 && v27 == v26 || (sub_21C55CE44() & 1) != 0))
              {
                goto LABEL_23;
              }

LABEL_24:
              KeyPath = swift_getKeyPath();
              MEMORY[0x28223BE20](KeyPath);
              *(&v39 - 4) = v10;
              *(&v39 - 3) = v24;
              *(&v39 - 2) = v26;
              v46 = v10;
              sub_21C55C5F4();
            }

            else
            {
              v24 = 0;
              v26 = 0;
              v27 = *(v10 + 24);
              if (v27)
              {
                goto LABEL_19;
              }

LABEL_16:
              if (v26)
              {
                goto LABEL_24;
              }

LABEL_23:
              *(v10 + 16) = v24;
              *(v10 + 24) = v26;
            }

            swift_getKeyPath();
            v46 = v10;
            sub_21C55C604();

            v29 = *(v10 + 64);
            if (v29)
            {
              v30 = [v29 localizedName];
              v31 = sub_21C55CAC4();
              v33 = v32;
            }

            else
            {
              v31 = 0;
              v33 = 0xE000000000000000;
            }

            if (*(v10 + 32) == v31 && *(v10 + 40) == v33 || (sub_21C55CE44() & 1) != 0)
            {
              *(v10 + 32) = v31;
              *(v10 + 40) = v33;
            }

            else
            {
              v34 = swift_getKeyPath();
              MEMORY[0x28223BE20](v34);
              *(&v39 - 4) = v10;
              *(&v39 - 3) = v31;
              *(&v39 - 2) = v33;
              v46 = v10;
              sub_21C55C5F4();
            }

            goto LABEL_32;
          }
        }
      }

      else if (!v9)
      {
        v17 = 0;
        v15 = 0;
        goto LABEL_13;
      }

      v18 = swift_getKeyPath();
      MEMORY[0x28223BE20](v18);
      *(&v39 - 2) = v10;
      *(&v39 - 1) = v9;
      v46 = v10;
      sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
      sub_21C55C5F4();

LABEL_32:
      MEMORY[0x21CF0B430](v19);
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21C55CC24();
      }

      sub_21C55CC44();
      sub_21C55C514();
    }

    while (v49);
  }

  (*(v41 + 8))(v45, v42);
  sub_21C553654(&v50, 124);
  if (v40 != 4)
  {
    return sub_21C551254(v50);
  }

  v35 = [objc_opt_self() currentDevice];
  v36 = [v35 userInterfaceIdiom];

  if (v36 != 1)
  {
    return sub_21C551254(v50);
  }

  v37 = objc_opt_self();
  if (([v37 isThumperCallingEnabled] & 1) != 0 || objc_msgSend(v37, sel_isRelayCallingEnabled))
  {
    type metadata accessor for AppRecord(0);
    swift_allocObject();
    result = sub_21C5407A0(2);
    if (!result)
    {
      goto LABEL_51;
    }

    MEMORY[0x21CF0B430]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21C55CC24();
    }

    sub_21C55CC44();
    sub_21C553654(&v50, 129);
  }

  type metadata accessor for AppRecord(0);
  swift_allocObject();
  result = sub_21C5407A0(1);
  if (result)
  {
    MEMORY[0x21CF0B430]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21C55CC24();
    }

    sub_21C55CC44();
    return sub_21C551254(v50);
  }

  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

void sub_21C552D58()
{
  v1 = v0;
  v29[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() defaultWorkspace];
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  v4 = *(v1 + 88);
  v29[0] = 0;
  v5 = [v2 defaultApplicationForCategory:v4 error:v29];

  v6 = v29[0];
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = v6;
    v9 = sub_21C55C504();

    swift_willThrow();
    if (qword_27CDDD3C0 != -1)
    {
      swift_once();
    }

    v10 = sub_21C55C714();
    __swift_project_value_buffer(v10, qword_27CDDE7A8);

    v11 = v9;
    v12 = sub_21C55C6F4();
    v13 = sub_21C55CCE4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29[0] = v28;
      *v14 = 136446466;
      type metadata accessor for LSDefaultAppCategory(0);
      v16 = sub_21C55CAE4();
      v18 = sub_21C556F20(v16, v17, v29);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2112;
      v19 = v9;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v20;
      *v15 = v20;
      _os_log_impl(&dword_21C53D000, v12, v13, "Could not fetch default app for category %{public}s. Error: %@", v14, 0x16u);
      sub_21C544404(v15, &qword_27CDDD890, &qword_21C55E860);
      MEMORY[0x21CF0BC40](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x21CF0BC40](v28, -1, -1);
      MEMORY[0x21CF0BC40](v14, -1, -1);
    }

    else
    {
    }

    v7 = 0;
  }

  type metadata accessor for AppRecord(0);
  swift_allocObject();
  v21 = v5;
  v22 = sub_21C5403F4(v7);
  sub_21C550F98(v22);
  if (v4 == 4)
  {
    v23 = [objc_opt_self() currentDevice];
    v24 = [v23 userInterfaceIdiom];

    if (v24 == 1)
    {
      v25 = defaultAppRelayTelephonySetting();
      if (v25 <= 2)
      {
        v26 = v25;
        swift_allocObject();
        v27 = sub_21C5407A0(v26);
        if (v27)
        {
          sub_21C550F98(v27);
        }
      }
    }
  }
}

uint64_t sub_21C5530C0(uint64_t a1, uint64_t a2)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    type metadata accessor for DefaultLSAppsSettingsProvider(0);
    swift_unknownObjectRetain();
    if (swift_dynamicCastClass())
    {
      sub_21C552D58();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_21C5531B0()
{
  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 canChangeDefaultAppForCategory_];

    if (v3 == *(v0 + 32))
    {
      *(v0 + 32) = v3;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
      sub_21C55C5F4();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21C553300(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21C5531B0();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21C552514();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C552D58();
  }

  return result;
}

char *sub_21C5533B8()
{
  sub_21C55B7F4(v0);
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_27CDDD3B8 != -1)
  {
    swift_once();
  }

  CFNotificationCenterRemoveObserver(v1, v0, qword_27CDDD678, 0);

  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC21DefaultAppsSettingsUI29DefaultLSAppsSettingsProvider___observationRegistrar;
  v3 = sub_21C55C644();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  return v0;
}

uint64_t sub_21C5534BC()
{
  sub_21C5533B8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for DefaultLSAppsSettingsProvider(uint64_t a1)
{
  result = qword_27CDDD690;
  if (!qword_27CDDD690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C553568(uint64_t a1)
{
  result = sub_21C55C644();
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

uint64_t sub_21C553654(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
  {
    v4 = sub_21C558E74(v4);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v7[0] = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
  v7[1] = v5;
  result = sub_21C5574C8(v7, a2);
  *a1 = v4;
  return result;
}

BOOL sub_21C5536D4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
  sub_21C55C604();

  swift_getKeyPath();

  sub_21C55C604();

  sub_21C54D484();
  v3 = sub_21C55CD24();

  return v3 == -1;
}

uint64_t sub_21C553884(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD478, &qword_21C55DDE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;

  sub_21C550F98(v6);
  v7 = *(v1 + 88);
  if (v7 != 4)
  {
    goto LABEL_18;
  }

  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (v9 != 1)
  {
    goto LABEL_18;
  }

  swift_getKeyPath();
  v21 = a1;
  sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
  sub_21C55C604();

  v10 = *(a1 + 80);
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      v13 = 1;
      goto LABEL_16;
    }
  }

  else
  {
    v11 = sub_21C55CE44();

    if ((v11 & 1) == 0)
    {
LABEL_10:
      if (!v10)
      {
        v13 = 0;
        goto LABEL_16;
      }

      if (v10 != 1)
      {
        v13 = 0;
        goto LABEL_16;
      }

      goto LABEL_12;
    }
  }

  v12 = objc_opt_self();
  if (([v12 isThumperCallingEnabled] & 1) != 0 || objc_msgSend(v12, sel_isRelayCallingEnabled))
  {
    goto LABEL_10;
  }

LABEL_12:
  v13 = 0;
LABEL_16:
  setDefaultAppRelayTelephonySetting();
  swift_getKeyPath();
  v21 = a1;
  sub_21C55C604();

  if ((v13 & 1) != 0 || *(a1 + 64))
  {
LABEL_18:
    v15 = sub_21C55CCC4();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    v16 = swift_allocObject();
    swift_weakInit();
    sub_21C55CCA4();

    v17 = sub_21C55CC94();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v7;
    v18[5] = a1;
    v18[6] = v16;

    sub_21C54F0F0(0, 0, v5, &unk_21C55E7D0, v18);
  }

  return result;
}

uint64_t sub_21C553C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[25] = a5;
  v6[26] = a6;
  v6[24] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD478, &qword_21C55DDE0);
  v6[27] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD870, &qword_21C55E818);
  v6[28] = v7;
  v6[29] = *(v7 - 8);
  v6[30] = swift_task_alloc();
  v6[31] = sub_21C55CCA4();
  v6[32] = sub_21C55CC94();
  v9 = sub_21C55CC54();
  v6[33] = v9;
  v6[34] = v8;

  return MEMORY[0x2822009F8](sub_21C553D48, v9, v8);
}

uint64_t sub_21C553D48()
{
  v1 = [objc_opt_self() defaultWorkspace];
  v0[35] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[29];
    v10 = v0[30];
    v4 = v0[28];
    v5 = v0[25];
    v11 = v0[24];
    swift_getKeyPath();
    v0[21] = v5;
    sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
    sub_21C55C604();

    v6 = *(v5 + 64);
    v0[36] = v6;
    v0[2] = v0;
    v0[7] = v0 + 38;
    v0[3] = sub_21C553FB8;
    swift_continuation_init();
    v0[17] = v4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
    v8 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD878, &qword_21C55E820);
    sub_21C55CC64();
    (*(v3 + 32))(boxed_opaque_existential_1, v10, v4);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21C5544D8;
    v0[13] = &block_descriptor;
    [v2 setDefaultApplicationForCategory:v11 toApplicationRecord:v8 completionHandler:?];
    (*(v3 + 8))(boxed_opaque_existential_1, v4);
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v1);
}

uint64_t sub_21C553FB8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  v3 = *(v1 + 272);
  v4 = *(v1 + 264);
  if (v2)
  {
    v5 = sub_21C554168;
  }

  else
  {
    v5 = sub_21C5540E8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21C5540E8()
{
  v1 = v0[35];
  v2 = v0[36];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21C554168()
{
  v30 = v0;
  v1 = v0[36];
  v2 = v0[35];

  swift_willThrow();

  if (qword_27CDDD3C0 != -1)
  {
    swift_once();
  }

  v3 = v0[37];
  v4 = sub_21C55C714();
  __swift_project_value_buffer(v4, qword_27CDDE7A8);
  v5 = v3;
  v6 = sub_21C55C6F4();
  v7 = sub_21C55CCE4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[24];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29[0] = v10;
    *v9 = 136446466;
    v0[22] = v8;
    type metadata accessor for LSDefaultAppCategory(0);
    v11 = sub_21C55CAE4();
    v13 = sub_21C556F20(v11, v12, v29);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v14 = *(v0[19] - 8);
    v15 = swift_task_alloc();
    (*(v14 + 16))(v15);
    v16 = sub_21C55CAE4();
    v18 = v17;

    v19 = sub_21C556F20(v16, v18, v29);

    *(v9 + 14) = v19;
    _os_log_impl(&dword_21C53D000, v6, v7, "Could not change default app for category %{public}s. Error: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF0BC40](v10, -1, -1);
    MEMORY[0x21CF0BC40](v9, -1, -1);
  }

  v20 = v0[37];
  v22 = v0[26];
  v21 = v0[27];
  v23 = sub_21C55CCC4();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);

  v24 = sub_21C55CC94();
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  v25[2] = v24;
  v25[3] = v26;
  v25[4] = v22;
  sub_21C54F3F0(0, 0, v21, &unk_21C55E830, v25);

  v27 = v0[1];

  return v27();
}

void sub_21C5544D8(uint64_t a1, char a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD870, &qword_21C55E818);
    sub_21C55CC74();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD870, &qword_21C55E818);
    sub_21C55CC84();
  }
}

uint64_t sub_21C55457C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_21C55CCA4();
  v4[7] = sub_21C55CC94();
  v6 = sub_21C55CC54();

  return MEMORY[0x2822009F8](sub_21C554614, v6, v5);
}

uint64_t sub_21C554614()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_21C552D58();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21C5546B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_21C5561EC(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD788, &qword_21C55E610);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD768, &qword_21C55E600);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD748, &qword_21C55E5F0);
  sub_21C55C794();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD750, &qword_21C55E5F8);
  sub_21C54EDD8(&qword_27CDDD758, &qword_27CDDD750, &qword_21C55E5F8, MEMORY[0x277CDF038]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21C556C10();
  sub_21C55C9F4();
  swift_getKeyPath();
  v9[0] = a1;
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
  sub_21C55C604();

  v4 = *(a1 + 128);
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD728, &qword_21C55E5E0);
  v8 = (a2 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = sub_21C558748;
  v8[2] = v6;
  return result;
}

uint64_t sub_21C55496C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_21C55C794();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD750, &qword_21C55E5F8);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD748, &qword_21C55E5F0);
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  sub_21C55CCA4();
  v12 = sub_21C55CC94();
  v13 = MEMORY[0x277D85700];
  v25[3] = v12;
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = sub_21C55C7B4();
  v25[1] = v15;
  v25[2] = v14;
  v25[0] = v16;

  v17 = sub_21C55CC94();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = v13;
  v18[4] = a1;

  v19 = sub_21C55CC94();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v13;
  v20[4] = a1;
  type metadata accessor for AppRecord(0);
  sub_21C55C994();
  v32 = v34;
  v33 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD7A0, &qword_21C55E698);
  sub_21C558B40(&qword_27CDDD7A8, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
  sub_21C5587D0();
  sub_21C55C964();
  v21 = sub_21C54EDD8(&qword_27CDDD758, &qword_27CDDD750, &qword_21C55E5F8, MEMORY[0x277CDF038]);
  sub_21C55C894();
  (*(v26 + 8))(v8, v6);
  sub_21C55C784();
  v34 = v6;
  *&v35 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v28;
  v23 = v31;
  sub_21C55C884();
  (*(v30 + 8))(v5, v23);
  (*(v27 + 8))(v11, v22);
}

uint64_t sub_21C554DF0@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
  sub_21C55C604();

  v4 = *(a1 + 112);

  *a2 = v4;
  return result;
}

uint64_t sub_21C554F0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
  sub_21C55C604();

  v7 = _s21DefaultAppsSettingsUI9AppRecordC2eeoiySbAC_ACtFZ_0(v6, v5);

  if ((v7 & 1) == 0)
  {
    sub_21C553884(v5);
  }
}

uint64_t sub_21C555048(uint64_t a1)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
  sub_21C55C604();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD7C8, &qword_21C55E6D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD7C0, &qword_21C55E6A0);
  type metadata accessor for AppRecord(0);
  sub_21C54EDD8(&qword_27CDDD7D0, &qword_27CDDD7C8, &qword_21C55E6D0, MEMORY[0x277D83980]);
  sub_21C54EDD8(&qword_27CDDD7B8, &qword_27CDDD7C0, &qword_21C55E6A0, MEMORY[0x277CDD7E8]);
  sub_21C558B40(&qword_27CDDD7D8, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
  sub_21C55C9C4();
}

uint64_t sub_21C555290(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v11 = v3;
  MEMORY[0x28223BE20](isCurrentExecutor);
  v10[2] = v3;
  v10[3] = a2;
  v5 = type metadata accessor for AppRecord(0);

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD7E0, &qword_21C55E6D8);
  v7 = sub_21C558B40(&qword_27CDDD7A8, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
  v8 = sub_21C54EDD8(&qword_27CDDD7E8, &qword_27CDDD7E0, &qword_21C55E6D8, MEMORY[0x277CDEFF0]);
  MEMORY[0x21CF0AF70](&v11, sub_21C558888, v10, v5, v6, v7, v8);
}

uint64_t sub_21C555438(uint64_t a1, uint64_t a2)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD7F0, &qword_21C55E6E0);
  sub_21C558984(&qword_27CDDD7F8, &qword_27CDDD7F0, &qword_21C55E6E0, sub_21C5588A0);
  sub_21C55C924();
}

uint64_t sub_21C555598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
  sub_21C55C604();

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_21C5556C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD848, &qword_21C55E708);
  MEMORY[0x28223BE20](v44);
  v46 = &v37 - v5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD838, &qword_21C55E700);
  MEMORY[0x28223BE20](v41);
  v38 = &v37 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD850, &qword_21C55E710);
  MEMORY[0x28223BE20](v39);
  v40 = &v37 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD828, &qword_21C55E6F8);
  MEMORY[0x28223BE20](v45);
  v42 = &v37 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD858, &qword_21C55E718);
  MEMORY[0x28223BE20](v49);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD808, &qword_21C55E6E8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD818, &qword_21C55E6F0);
  MEMORY[0x28223BE20](v50);
  v43 = &v37 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD7F0, &qword_21C55E6E0);
  MEMORY[0x28223BE20](v16 - 8);
  v48 = &v37 - v17;
  sub_21C55CCA4();
  v47 = sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  v52 = a1;
  sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
  sub_21C55C604();

  if (!*(a1 + 24))
  {
    if (*(a2 + 88) != 4 || (v22 = [objc_opt_self() currentDevice], v23 = objc_msgSend(v22, sel_userInterfaceIdiom), v22, v23 != 1))
    {
      v27 = [objc_opt_self() genericApplicationIcon];
      v28 = [objc_opt_self() imageDescriptorNamed_];
      sub_21C55C6E4();
      (*(v12 + 16))(v46, v14, v11);
      swift_storeEnumTagMultiPayload();
      sub_21C558984(&qword_27CDDD820, &qword_27CDDD828, &qword_21C55E6F8, sub_21C558A34);
      sub_21C54EDD8(&qword_27CDDD800, &qword_27CDDD808, &qword_21C55E6E8, MEMORY[0x277D7EA70]);
      v26 = v43;
      sub_21C55C7C4();
      (*(v12 + 8))(v14, v11);
      v21 = v48;
LABEL_16:
      sub_21C5591A8(v26, v10, &qword_27CDDD818, &qword_21C55E6F0);
      swift_storeEnumTagMultiPayload();
      sub_21C54EDD8(&qword_27CDDD800, &qword_27CDDD808, &qword_21C55E6E8, MEMORY[0x277D7EA70]);
      sub_21C5588A0();
      sub_21C55C7C4();
      sub_21C544404(v26, &qword_27CDDD818, &qword_21C55E6F0);
      goto LABEL_17;
    }

    swift_getKeyPath();
    v52 = a1;
    sub_21C55C604();

    v24 = *(a1 + 80);
    if (v24 > 1)
    {
      v21 = v48;
      v26 = v43;
      if (v24 != 2)
      {
LABEL_14:
        v33 = [objc_opt_self() genericApplicationIcon];
        v34 = [objc_opt_self() imageDescriptorNamed_];
        v35 = v38;
        sub_21C55C6E4();
        sub_21C5591A8(v35, v40, &qword_27CDDD838, &qword_21C55E700);
        swift_storeEnumTagMultiPayload();
        sub_21C54EDD8(&qword_27CDDD800, &qword_27CDDD808, &qword_21C55E6E8, MEMORY[0x277D7EA70]);
        sub_21C558A34();
        v32 = v42;
        sub_21C55C7C4();
        sub_21C544404(v35, &qword_27CDDD838, &qword_21C55E700);
        goto LABEL_15;
      }
    }

    else
    {
      v25 = sub_21C55CE44();

      v21 = v48;
      v26 = v43;
      if ((v25 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v29 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v30 = sub_21C55CA94();
    [v29 initWithBundleIdentifier_];

    v31 = [objc_opt_self() imageDescriptorNamed_];
    sub_21C55C6E4();
    (*(v12 + 16))(v40, v14, v11);
    swift_storeEnumTagMultiPayload();
    sub_21C54EDD8(&qword_27CDDD800, &qword_27CDDD808, &qword_21C55E6E8, MEMORY[0x277D7EA70]);
    sub_21C558A34();
    v32 = v42;
    sub_21C55C7C4();
    (*(v12 + 8))(v14, v11);
LABEL_15:
    sub_21C5591A8(v32, v46, &qword_27CDDD828, &qword_21C55E6F8);
    swift_storeEnumTagMultiPayload();
    sub_21C558984(&qword_27CDDD820, &qword_27CDDD828, &qword_21C55E6F8, sub_21C558A34);
    sub_21C54EDD8(&qword_27CDDD800, &qword_27CDDD808, &qword_21C55E6E8, MEMORY[0x277D7EA70]);
    sub_21C55C7C4();
    sub_21C544404(v32, &qword_27CDDD828, &qword_21C55E6F8);
    goto LABEL_16;
  }

  v18 = objc_allocWithZone(MEMORY[0x277D1B1A8]);

  v19 = sub_21C55CA94();

  [v18 initWithBundleIdentifier_];

  v20 = [objc_opt_self() imageDescriptorNamed_];
  sub_21C55C6E4();
  (*(v12 + 16))(v10, v14, v11);
  swift_storeEnumTagMultiPayload();
  sub_21C54EDD8(&qword_27CDDD800, &qword_27CDDD808, &qword_21C55E6E8, MEMORY[0x277D7EA70]);
  sub_21C5588A0();
  v21 = v48;
  sub_21C55C7C4();
  (*(v12 + 8))(v14, v11);
LABEL_17:
  sub_21C558B88(v21, v51);
}

uint64_t sub_21C5561EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_21C55CCA4();
  sub_21C55CC94();
  sub_21C55CC54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
  sub_21C55C604();

  v4 = *(a1 + 104);
  if (v4)
  {
    sub_21C54D484();

    v4 = sub_21C55C824();
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v12 = v8 & 1;
  }

  else
  {

    v6 = 0;
    v12 = 0;
    v10 = 0;
  }

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v12;
  a2[3] = v10;
  return result;
}

id sub_21C556360()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21C5563AC(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtCC21DefaultAppsSettingsUI29DefaultLSAppsSettingsProviderP33_6339B278615E8A6CFC693041365478EF23CallCapabilitiesMonitor_notify];
  v3 = a1;

  v1(v2);
}

uint64_t sub_21C55657C()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_21C5565B0()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
  sub_21C55C604();

  return *(v1 + 32);
}

uint64_t sub_21C556650()
{
  v1 = *(*v0 + 40);

  return v1;
}

uint64_t sub_21C556684()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_21C558B40(&unk_27CDDD790, type metadata accessor for DefaultLSAppsSettingsProvider, &unk_21C55E508);
  sub_21C55C604();

  v2 = *(v1 + 56);

  return v2;
}

uint64_t sub_21C556734()
{
  v1 = *(*v0 + 72);

  return v1;
}

uint64_t sub_21C556768()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD720, &qword_21C55E5D8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD728, &qword_21C55E5E0);
  sub_21C5569F4();
  sub_21C55C804();
  sub_21C54EDD8(&qword_27CDDD780, &qword_27CDDD720, &qword_21C55E5D8, MEMORY[0x277CDE5A0]);
  sub_21C55C834();
  return (*(v1 + 8))(v3, v0);
}

void sub_21C5568CC()
{
  swift_allocObject();
  type metadata accessor for AppRecord(0);
  swift_allocObject();
  sub_21C5403F4(0);
  sub_21C55C634();
  sub_21C55CDB4();
  __break(1u);
}

uint64_t sub_21C556978@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

unint64_t sub_21C5569F4()
{
  result = qword_27CDDD730;
  if (!qword_27CDDD730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD728, &qword_21C55E5E0);
    sub_21C556AAC();
    sub_21C54EDD8(&qword_27CDDD770, &qword_27CDDD778, &qword_21C55E608, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD730);
  }

  return result;
}

unint64_t sub_21C556AAC()
{
  result = qword_27CDDD738;
  if (!qword_27CDDD738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD740, &qword_21C55E5E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD748, &qword_21C55E5F0);
    sub_21C55C794();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD750, &qword_21C55E5F8);
    sub_21C54EDD8(&qword_27CDDD758, &qword_27CDDD750, &qword_21C55E5F8, MEMORY[0x277CDF038]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C556C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD738);
  }

  return result;
}

unint64_t sub_21C556C10()
{
  result = qword_27CDDD760;
  if (!qword_27CDDD760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDD768, &qword_21C55E600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDDD760);
  }

  return result;
}

uint64_t sub_21C556C94()
{
  result = sub_21C55CA94();
  qword_27CDDD670 = result;
  return result;
}

id sub_21C556CCC()
{
  if (qword_27CDDD3B0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CDDD670;
  qword_27CDDD678 = qword_27CDDD670;

  return v1;
}

uint64_t sub_21C556D30(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21C556E28;

  return v6(a1);
}

uint64_t sub_21C556E28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_21C556F20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21C556FEC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_21C5592D8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_21C556FEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21C5570F8(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_21C55CDA4();
    a6 = v11;
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

void *sub_21C5570F8(uint64_t a1, unint64_t a2)
{
  v3 = sub_21C557144(a1, a2);
  sub_21C557274(&unk_282E2E1B8);
  return v3;
}

void *sub_21C557144(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_21C557360(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_21C55CDA4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_21C55CBD4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21C557360(v10, 0);
        result = sub_21C55CD74();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_21C557274(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_21C5573D4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21C557360(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD880, &qword_21C55E838);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21C5573D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDD880, &qword_21C55E838);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_21C5574C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = sub_21C55CE24();
  if (result < v3)
  {
    if (v3 >= -1)
    {
      v5 = result;
      v6 = v3 / 2;
      if (v3 <= 1)
      {
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for AppRecord(0);
        v7 = sub_21C55CC34();
        *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
      }

      v18 = v7 & 0xFFFFFFFFFFFFFF8;
      v26 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
      v27 = v6;
      sub_21C5577B4(&v26, v25, a1, v5, a2);
      *(v18 + 16) = 0;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v3 < 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  if (v3 >= 2)
  {
    v8 = *a1;
    sub_21C55CCA4();
    v24 = v8;
    v9 = -1;
    v10 = 1;
    v19 = v3;
    do
    {
      v21 = v10;
      v22 = v9;
      v11 = *&v24[8 * v10];
      v20 = v8;
      do
      {
        v12 = *v8;

        v28 = sub_21C55CC94();
        sub_21C55CC54();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        swift_getKeyPath();
        v26 = v11;
        sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
        sub_21C55C604();

        v13 = *(v11 + 40);
        v26 = *(v11 + 32);
        v27 = v13;
        swift_getKeyPath();
        v25[0] = v12;

        sub_21C55C604();

        v14 = *(v12 + 40);
        v25[0] = *(v12 + 32);
        v25[1] = v14;
        sub_21C54D484();
        v15 = sub_21C55CD24();

        if (v15 != -1)
        {
          break;
        }

        if (!v24)
        {
          goto LABEL_22;
        }

        v16 = *v8;
        v11 = *(v8 + 1);
        *v8 = v11;
        *(v8 + 1) = v16;
        v8 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      v10 = v21 + 1;
      v8 = v20 + 8;
      v9 = v22 - 1;
    }

    while (v21 + 1 != v19);
  }

  return result;
}

uint64_t sub_21C5577B4(uint64_t result, uint64_t a2, char **a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v87 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_96:
    v6 = *v87;
    if (!*v87)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_98;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v88 = v9;
    if (v9 + 1 >= v8)
    {
      v8 = v9 + 1;
    }

    else
    {
      v6 = *a3;
      v103 = *&(*a3)[8 * v9 + 8];
      v101 = *(v6 + 8 * v9);

      v99 = sub_21C5536D4(&v103, &v101, a5);
      if (v7)
      {
      }

      v11 = v9 + 2;
      v98 = 8 * v9;
      v12 = (v6 + 8 * v9 + 16);
      v92 = v10;
      v95 = v8;
      while (v8 != v11)
      {
        v16 = *(v12 - 1);
        v15 = *v12;
        sub_21C55CCA4();

        sub_21C55CC94();
        sub_21C55CC54();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        swift_getKeyPath();
        v103 = v15;
        sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
        sub_21C55C604();

        v6 = *(v15 + 40);
        v103 = *(v15 + 32);
        v104 = v6;
        swift_getKeyPath();
        v101 = v16;

        sub_21C55C604();

        v13 = *(v16 + 40);
        v101 = *(v16 + 32);
        v102 = v13;
        sub_21C54D484();
        v14 = sub_21C55CD24();

        ++v11;
        ++v12;
        v10 = v92;
        v8 = v95;
        if (((v99 ^ (v14 != -1)) & 1) == 0)
        {
          v8 = v11 - 1;
          break;
        }
      }

      v7 = 0;
      v17 = v98;
      if (v99)
      {
        v18 = v88;
        if (v8 < v88)
        {
          goto LABEL_128;
        }

        if (v88 < v8)
        {
          v19 = 8 * v8 - 8;
          v20 = v8;
          do
          {
            if (v18 != --v20)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_132;
              }

              v22 = *&v21[v17];
              *&v21[v17] = *&v21[v19];
              *&v21[v19] = v22;
            }

            ++v18;
            v19 -= 8;
            v17 += 8;
          }

          while (v18 < v20);
        }
      }
    }

    v23 = a3[1];
    if (v8 < v23)
    {
      if (__OFSUB__(v8, v88))
      {
        goto LABEL_125;
      }

      if (v8 - v88 < a4)
      {
        break;
      }
    }

    v9 = v8;
LABEL_33:
    if (v9 < v88)
    {
      goto LABEL_124;
    }

LABEL_34:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21C54A4C4(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v26 = *(v10 + 2);
    v25 = *(v10 + 3);
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      result = sub_21C54A4C4((v25 > 1), v26 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v27;
    v28 = &v10[16 * v26];
    *(v28 + 4) = v88;
    *(v28 + 5) = v9;
    v29 = *v87;
    if (!*v87)
    {
      goto LABEL_134;
    }

    if (v26)
    {
      while (1)
      {
        v30 = v27 - 1;
        if (v27 >= 4)
        {
          break;
        }

        if (v27 == 3)
        {
          v31 = *(v10 + 4);
          v32 = *(v10 + 5);
          v41 = __OFSUB__(v32, v31);
          v33 = v32 - v31;
          v34 = v41;
LABEL_53:
          if (v34)
          {
            goto LABEL_113;
          }

          v47 = &v10[16 * v27];
          v49 = *v47;
          v48 = *(v47 + 1);
          v50 = __OFSUB__(v48, v49);
          v51 = v48 - v49;
          v52 = v50;
          if (v50)
          {
            goto LABEL_116;
          }

          v53 = &v10[16 * v30 + 32];
          v55 = *v53;
          v54 = *(v53 + 1);
          v41 = __OFSUB__(v54, v55);
          v56 = v54 - v55;
          if (v41)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v51, v56))
          {
            goto LABEL_120;
          }

          if (v51 + v56 >= v33)
          {
            if (v33 < v56)
            {
              v30 = v27 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v57 = &v10[16 * v27];
        v59 = *v57;
        v58 = *(v57 + 1);
        v41 = __OFSUB__(v58, v59);
        v51 = v58 - v59;
        v52 = v41;
LABEL_67:
        if (v52)
        {
          goto LABEL_115;
        }

        v60 = &v10[16 * v30];
        v62 = *(v60 + 4);
        v61 = *(v60 + 5);
        v41 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v41)
        {
          goto LABEL_118;
        }

        if (v63 < v51)
        {
          goto LABEL_3;
        }

LABEL_74:
        v68 = v30 - 1;
        if (v30 - 1 >= v27)
        {
          __break(1u);
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
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
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

        if (!*a3)
        {
          goto LABEL_131;
        }

        v69 = *&v10[16 * v68 + 32];
        v6 = *&v10[16 * v30 + 40];
        sub_21C558114(&(*a3)[8 * v69], &(*a3)[8 * *&v10[16 * v30 + 32]], &(*a3)[8 * v6], v29, a5);
        if (v7)
        {
        }

        if (v6 < v69)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_21C558734(v10);
        }

        if (v68 >= *(v10 + 2))
        {
          goto LABEL_110;
        }

        v70 = &v10[16 * v68];
        *(v70 + 4) = v69;
        *(v70 + 5) = v6;
        v105 = v10;
        result = sub_21C5586A8(v30);
        v10 = v105;
        v27 = *(v105 + 2);
        if (v27 <= 1)
        {
          goto LABEL_3;
        }
      }

      v35 = &v10[16 * v27 + 32];
      v36 = *(v35 - 64);
      v37 = *(v35 - 56);
      v41 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      if (v41)
      {
        goto LABEL_111;
      }

      v40 = *(v35 - 48);
      v39 = *(v35 - 40);
      v41 = __OFSUB__(v39, v40);
      v33 = v39 - v40;
      v34 = v41;
      if (v41)
      {
        goto LABEL_112;
      }

      v42 = &v10[16 * v27];
      v44 = *v42;
      v43 = *(v42 + 1);
      v41 = __OFSUB__(v43, v44);
      v45 = v43 - v44;
      if (v41)
      {
        goto LABEL_114;
      }

      v41 = __OFADD__(v33, v45);
      v46 = v33 + v45;
      if (v41)
      {
        goto LABEL_117;
      }

      if (v46 >= v38)
      {
        v64 = &v10[16 * v30 + 32];
        v66 = *v64;
        v65 = *(v64 + 1);
        v41 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v41)
        {
          goto LABEL_121;
        }

        if (v33 < v67)
        {
          v30 = v27 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v8 = a3[1];
    if (v9 >= v8)
    {
      goto LABEL_96;
    }
  }

  if (__OFADD__(v88, a4))
  {
    goto LABEL_126;
  }

  if (v88 + a4 >= v23)
  {
    v24 = a3[1];
  }

  else
  {
    v24 = v88 + a4;
  }

  if (v24 < v88)
  {
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    result = sub_21C558734(v10);
    v10 = result;
LABEL_98:
    v81 = v7;
    v105 = v10;
    v82 = *(v10 + 2);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = *&v10[16 * v82];
        v7 = *&v10[16 * v82 + 24];
        sub_21C558114(&(*a3)[8 * v83], &(*a3)[8 * *&v10[16 * v82 + 16]], &(*a3)[8 * v7], v6, a5);
        if (v81)
        {
        }

        if (v7 < v83)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_21C558734(v10);
        }

        if (v82 - 2 >= *(v10 + 2))
        {
          goto LABEL_123;
        }

        v84 = &v10[16 * v82];
        *v84 = v83;
        *(v84 + 1) = v7;
        v105 = v10;
        result = sub_21C5586A8(v82 - 1);
        v10 = v105;
        v82 = *(v105 + 2);
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  if (v8 == v24)
  {
    v9 = v8;
    if (v8 < v88)
    {
      goto LABEL_124;
    }

    goto LABEL_34;
  }

  v93 = v10;
  v86 = v7;
  v71 = *a3;
  sub_21C55CCA4();
  v100 = v71;
  v72 = &v71[8 * v8 - 8];
  v73 = v88 - v8;
  v89 = v24;
LABEL_85:
  v96 = v8;
  v74 = *&v100[8 * v8];
  v90 = v73;
  v91 = v72;
  while (1)
  {
    v75 = *v72;

    sub_21C55CC94();
    sub_21C55CC54();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    swift_getKeyPath();
    v6 = 0x27CDDD000uLL;
    v103 = v74;
    sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
    sub_21C55C604();

    v76 = *(v74 + 40);
    v103 = *(v74 + 32);
    v104 = v76;
    swift_getKeyPath();
    v101 = v75;

    sub_21C55C604();

    v77 = *(v75 + 40);
    v101 = *(v75 + 32);
    v102 = v77;
    sub_21C54D484();
    v78 = sub_21C55CD24();

    if (v78 != -1)
    {
LABEL_84:
      v8 = v96 + 1;
      v72 = v91 + 1;
      v73 = v90 - 1;
      v9 = v89;
      if (v96 + 1 != v89)
      {
        goto LABEL_85;
      }

      v7 = v86;
      v10 = v93;
      goto LABEL_33;
    }

    if (!v100)
    {
      break;
    }

    v79 = *v72;
    v74 = v72[1];
    *v72 = v74;
    v72[1] = v79;
    --v72;
    if (__CFADD__(v73++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_21C558114(char *__src, char *__dst, char *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v9 = __dst - __src;
  v10 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v10 = __dst - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - __dst;
  v13 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v13 = a3 - __dst;
  }

  v14 = v13 >> 3;
  if (v11 >= v13 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v14] <= a4)
    {
      memmove(a4, __dst, 8 * v14);
    }

    v30 = &v5[8 * v14];
    if (v12 >= 8 && v7 > __src)
    {
      sub_21C55CCA4();
      v29 = v5;
LABEL_28:
      v26 = v7;
      v19 = v7 - 8;
      v6 -= 8;
      v20 = v30;
      v24 = v19;
      do
      {
        v20 -= 8;

        sub_21C55CC94();
        sub_21C55CC54();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        swift_getKeyPath();
        sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
        sub_21C55C604();

        swift_getKeyPath();

        sub_21C55C604();

        sub_21C54D484();
        v21 = sub_21C55CD24();

        if (v21 == -1)
        {
          v5 = v29;
          if (v6 + 8 != v26)
          {
            *v6 = *v24;
          }

          if (v30 <= v29 || (v7 = v24, v24 <= __src))
          {
            v7 = v24;
            goto LABEL_42;
          }

          goto LABEL_28;
        }

        v5 = v29;
        if (v6 + 8 != v30)
        {
          *v6 = *v20;
        }

        v6 -= 8;
        v30 = v20;
      }

      while (v20 > v29);
      v30 = v20;
      v7 = v26;
    }
  }

  else
  {
    if (a4 != __src || &__src[8 * v11] <= a4)
    {
      memmove(a4, __src, 8 * v11);
    }

    v15 = __src;
    v30 = &v5[8 * v11];
    if (v9 >= 8 && v7 < v6)
    {
      sub_21C55CCA4();
      v27 = v6;
      while (1)
      {
        v25 = v7;
        v28 = v5;

        sub_21C55CC94();
        sub_21C55CC54();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        swift_getKeyPath();
        sub_21C558B40(&unk_27CDDD860, type metadata accessor for AppRecord, &protocol conformance descriptor for AppRecord);
        sub_21C55C604();

        swift_getKeyPath();

        sub_21C55C604();

        sub_21C54D484();
        v16 = sub_21C55CD24();

        if (v16 != -1)
        {
          break;
        }

        v17 = v7;
        v25 = v7 + 8;
        v18 = v27;
        if (v15 != v7)
        {
          goto LABEL_16;
        }

LABEL_17:
        v15 += 8;
        if (v5 < v30)
        {
          v7 = v25;
          if (v25 < v18)
          {
            continue;
          }
        }

        goto LABEL_40;
      }

      v17 = v5;
      v5 += 8;
      v18 = v27;
      if (v15 == v28)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v15 = *v17;
      goto LABEL_17;
    }

LABEL_40:
    v7 = v15;
  }

LABEL_42:
  if (v7 != v5 || v7 >= &v5[(v30 - v5 + (v30 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v7, v5, 8 * ((v30 - v5) / 8));
  }

  return 1;
}