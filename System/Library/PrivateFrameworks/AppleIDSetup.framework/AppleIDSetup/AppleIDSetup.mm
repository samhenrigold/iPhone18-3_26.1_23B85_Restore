uint64_t sub_24057B470@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24075A0B4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_24057B4B4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_24057B4C0(id *a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a1;

  *a2 = v3;
}

id sub_24057B4FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = v2;
  return v2;
}

void sub_24057B508(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  v5 = *a1;

  *(a2 + 16) = v3;
}

uint64_t sub_24057B5BC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24057B644@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_24057B87C()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

unint64_t sub_24057B8A8()
{
  v1 = *v0;
  v2 = 0x676E654C65646F63;
  v3 = 0x657463656C6C6F63;
  v4 = 0x666E49726F727265;
  if (v1 != 3)
  {
    v4 = 0x726F727265;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24057B958@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2405B7E00(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24057B9A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24057BA30@<X0>(_BYTE *a1@<X8>)
{
  result = AuthenticationModel.isAlertPresented.getter();
  *a1 = result & 1;
  return result;
}

id sub_24057BA88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = v2;
  return v2;
}

void sub_24057BA94(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 40);
  v5 = *a1;

  *(a2 + 40) = v3;
}

id sub_24057BAD0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 56);
  *a2 = v2;
  return v2;
}

void sub_24057BADC(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 56);
  v5 = *a1;

  *(a2 + 56) = v3;
}

id sub_24057BB18@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_24057BB24(id *a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a1;

  *a2 = v3;
}

id sub_24057BB60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 72);
  *a2 = v2;
  return v2;
}

void sub_24057BB6C(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 72);
  v5 = *a1;

  *(a2 + 72) = v3;
}

id sub_24057BBA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  *a2 = v2;
  return v2;
}

void sub_24057BBB4(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 32);
  v5 = *a1;

  *(a2 + 32) = v3;
}

id sub_24057BBF0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_24057BBFC(id *a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a1;

  *a2 = v3;
}

id sub_24057BC38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = v2;
  return v2;
}

void sub_24057BC44(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  v5 = *a1;

  *(a2 + 8) = v3;
}

id sub_24057BC80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = v2;
  return v2;
}

void sub_24057BC8C(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  v5 = *a1;

  *(a2 + 16) = v3;
}

id sub_24057BCC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = v2;
  return v2;
}

void sub_24057BCD4(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 24);
  v5 = *a1;

  *(a2 + 24) = v3;
}

id sub_24057BD10@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_24057BD1C(id *a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a1;

  *a2 = v3;
}

id sub_24057BD58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = v2;
  return v2;
}

void sub_24057BD64(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  v5 = *a1;

  *(a2 + 8) = v3;
}

id sub_24057BDA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = v2;
  return v2;
}

void sub_24057BDAC(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  v5 = *a1;

  *(a2 + 16) = v3;
}

id sub_24057BDE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = v2;
  return v2;
}

void sub_24057BDF4(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 24);
  v5 = *a1;

  *(a2 + 24) = v3;
}

id sub_24057BE30@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_24057BE3C(id *a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a1;

  *a2 = v3;
}

id sub_24057BE78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AuthenticationModel.PreflightRepair(0) + 24));
  *a2 = v3;

  return v3;
}

uint64_t sub_24057BEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for AuthenticationModel.State(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24057BFF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for AuthenticationModel.State(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_24057C124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 48);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24057C1E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 48) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24057C2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IdMSAccount(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24057C380(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IdMSAccount(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_24057C564()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24057C5B4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24057C5EC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24057C624()
{
  v1 = sub_2407597B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24057C71C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24057C754()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24057C79C()
{
  v1 = sub_2407597B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24057C868()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24057C8A8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24057C8E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24057CB40()
{
  sub_2405AEA70(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  sub_2405AEA70(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));

  return MEMORY[0x2821FE8E8](v0, 121, 7);
}

uint64_t sub_24057CBA0()
{
  v1 = 0x7953726961706572;
  if (*v0 != 1)
  {
    v1 = 0x64656873696E6966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_24057CC0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2405F6F08(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24057CC3C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24057CC74()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24057CCC0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24057CD00()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24057CD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IdMSAccount(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24057CE50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IdMSAccount(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_24057CF0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8B38, &qword_240777010);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24057CF84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8B38, &qword_240777010);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id sub_24057D018@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 160);
  *a2 = v2;
  return v2;
}

void sub_24057D024(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 160);
  v5 = *a1;

  *(a2 + 160) = v3;
}

uint64_t sub_24057D060@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 904);
  v4 = *(a1 + 912);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240768D88;
  a2[1] = v5;
}

uint64_t sub_24057D0D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 920);
  v4 = *(a1 + 928);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240768D78;
  a2[1] = v5;
}

uint64_t sub_24057D148@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 936);
  v4 = *(a1 + 944);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240768D68;
  a2[1] = v5;
}

uint64_t sub_24057D1BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 952);
  v4 = *(a1 + 960);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240768D58;
  a2[1] = v5;
}

uint64_t sub_24057D230@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 968);
  v4 = *(a1 + 976);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240768D38;
  a2[1] = v5;
}

uint64_t sub_24057D2DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24057D354()
{

  return MEMORY[0x2821FE8E8](v0, 1000, 7);
}

uint64_t sub_24057D574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RepairModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24057D640(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RepairModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t sub_24057D714@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for IdMSAccount(0);
  v5 = (a1 + *(result + 36));
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_24057D75C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for IdMSAccount(0);
  v5 = a2 + *(result + 36);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

id sub_24057D798@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_24057D7A4(id *a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a1;

  *a2 = v3;
}

id sub_24057D7E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = v2;
  return v2;
}

void sub_24057D7EC(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  v5 = *a1;

  *(a2 + 8) = v3;
}

id sub_24057D828@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_24057D834(id *a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a1;

  *a2 = v3;
}

uint64_t sub_24057D870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2407595A4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24057D91C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2407595A4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24057D9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IdMSAccount(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24057DA88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IdMSAccount(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24057DB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IdMSAccount(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24057DC00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IdMSAccount(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24057DCB8(unsigned __int8 a1)
{
  v1 = 1868983913;
  v2 = 0x654B63696C627570;
  if (a1 != 2)
  {
    v2 = 0x697274656D6D7973;
  }

  if (a1)
  {
    v1 = 0x4B65746176697270;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24057DD40()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24057DD78()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24057DDB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_anisetteClient;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_24057DE18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 56) & ~v2;
  v24 = *(*(v1 - 8) + 64);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v4 = *(v26 - 8);
  v5 = *(v4 + 80);
  v25 = *(v4 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v6 = v0 + v3 + *(v1 + 32);
  v7 = type metadata accessor for IdMSAccount(0);
  if (!(*(*(v7 - 1) + 48))(v6, 1, v7))
  {

    v8 = v7[5];
    v9 = sub_2407595A4();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
    v10 = v6 + v7[6];
    sub_240604B08(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 72), *(v10 + 80), *(v10 + 88), *(v10 + 96), *(v10 + 104), *(v10 + 112), *(v10 + 120), *(v10 + 128), *(v10 + 136), *(v10 + 144), *(v10 + 152));

    v11 = (v6 + v7[8]);
    if (*v11 != 1)
    {
    }
  }

  v12 = type metadata accessor for AgeMigrationModel(0);
  v13 = v6 + v12[5];
  sub_240604AB8(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24) | ((*(v13 + 28) | (*(v13 + 30) << 16)) << 32));
  v14 = v6 + v12[6];

  sub_240604AE0(*(v14 + 88), *(v14 + 96), *(v14 + 104), *(v14 + 112));

  sub_240604AE0(*(v14 + 144), *(v14 + 152), *(v14 + 160), *(v14 + 168));

  v15 = *(v14 + 192);
  if (v15 != 1)
  {

    v16 = *(v14 + 208);
    if (v16 >> 60 != 15)
    {
      sub_2405BCD98(*(v14 + 200), v16);
    }
  }

  if (*(v14 + 232))
  {
  }

  v17 = v6 + v12[7];
  type metadata accessor for AgeMigrationModel.State(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      if (*(v17 + 8) >= 0x14uLL)
      {
      }

      break;
    case 1:

      if (*(v17 + 96) != 255)
      {
        sub_240604E54(*(v17 + 80), *(v17 + 88));
      }

      break;
    case 0:

      v19 = *(type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo(0) + 28);
      v20 = sub_240759744();
      (*(*(v20 - 8) + 8))(v17 + v19, v20);
      break;
  }

  v21 = (v24 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + v5 + 8) & ~v5;

  (*(v4 + 8))(v0 + v22, v26);

  return MEMORY[0x2821FE8E8](v0, v22 + v25, v2 | v5 | 7);
}

uint64_t sub_24057E298()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8);
  v2 = *(*(v1 - 8) + 80);
  v24 = *(*(v1 - 8) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v23 = *(v4 + 64);

  v25 = (v2 + 24) & ~v2;
  v6 = v0 + v25 + *(v1 + 32);
  v7 = type metadata accessor for IdMSAccount(0);
  if (!(*(*(v7 - 1) + 48))(v6, 1, v7))
  {

    v8 = v7[5];
    v9 = sub_2407595A4();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
    v10 = v6 + v7[6];
    sub_240604B08(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 72), *(v10 + 80), *(v10 + 88), *(v10 + 96), *(v10 + 104), *(v10 + 112), *(v10 + 120), *(v10 + 128), *(v10 + 136), *(v10 + 144), *(v10 + 152));

    v11 = (v6 + v7[8]);
    if (*v11 != 1)
    {
    }
  }

  v12 = type metadata accessor for AgeMigrationModel(0);
  v13 = v6 + v12[5];
  sub_240604AB8(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24) | ((*(v13 + 28) | (*(v13 + 30) << 16)) << 32));
  v14 = v6 + v12[6];

  sub_240604AE0(*(v14 + 88), *(v14 + 96), *(v14 + 104), *(v14 + 112));

  sub_240604AE0(*(v14 + 144), *(v14 + 152), *(v14 + 160), *(v14 + 168));

  v15 = *(v14 + 192);
  if (v15 != 1)
  {

    v16 = *(v14 + 208);
    if (v16 >> 60 != 15)
    {
      sub_2405BCD98(*(v14 + 200), v16);
    }
  }

  if (*(v14 + 232))
  {
  }

  v17 = v6 + v12[7];
  type metadata accessor for AgeMigrationModel.State(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      if (*(v17 + 8) >= 0x14uLL)
      {
      }

      break;
    case 1:

      if (*(v17 + 96) != 255)
      {
        sub_240604E54(*(v17 + 80), *(v17 + 88));
      }

      break;
    case 0:

      v19 = *(type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo(0) + 28);
      v20 = sub_240759744();
      (*(*(v20 - 8) + 8))(v17 + v19, v20);
      break;
  }

  v21 = (v25 + v24 + v5) & ~v5;

  (*(v4 + 8))(v0 + v21, v3);

  return MEMORY[0x2821FE8E8](v0, v21 + v23, v2 | v5 | 7);
}

uint64_t sub_24057E6F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8);
  v45 = *(*(v1 - 8) + 80);
  v2 = (v45 + 16) & ~v45;
  v3 = *(*(v1 - 8) + 64);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AD0, &unk_24076CCE0);
  v46 = *(*(v39 - 8) + 80);
  v44 = *(*(v39 - 8) + 64);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v42 = *(v43 - 8);
  v40 = *(v42 + 80);
  v41 = *(v42 + 64);
  v4 = v0 + v2 + *(v1 + 32);
  v5 = type metadata accessor for IdMSAccount(0);
  v6 = *(*(v5 - 1) + 48);
  if (!v6(v4, 1, v5))
  {

    v7 = v5[5];
    v8 = sub_2407595A4();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
    v9 = v4 + v5[6];
    sub_240604B08(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32), *(v9 + 40), *(v9 + 48), *(v9 + 56), *(v9 + 64), *(v9 + 72), *(v9 + 80), *(v9 + 88), *(v9 + 96), *(v9 + 104), *(v9 + 112), *(v9 + 120), *(v9 + 128), *(v9 + 136), *(v9 + 144), *(v9 + 152));

    v10 = (v4 + v5[8]);
    if (*v10 != 1)
    {
    }
  }

  v11 = v3 + v46;
  v12 = type metadata accessor for AgeMigrationModel(0);
  v13 = v4 + v12[5];
  sub_240604AB8(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24) | ((*(v13 + 28) | (*(v13 + 30) << 16)) << 32));
  v14 = v4 + v12[6];

  sub_240604AE0(*(v14 + 88), *(v14 + 96), *(v14 + 104), *(v14 + 112));

  sub_240604AE0(*(v14 + 144), *(v14 + 152), *(v14 + 160), *(v14 + 168));

  v15 = *(v14 + 192);
  if (v15 != 1)
  {

    v16 = *(v14 + 208);
    if (v16 >> 60 != 15)
    {
      sub_2405BCD98(*(v14 + 200), v16);
    }
  }

  v17 = v2 + v11;
  if (*(v14 + 232))
  {
  }

  v18 = v17 & ~v46;

  v19 = v4 + v12[7];
  type metadata accessor for AgeMigrationModel.State(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v21 = v0;
    if (*(v19 + 8) >= 0x14uLL)
    {
    }
  }

  else
  {
    v21 = v0;
    if (EnumCaseMultiPayload == 1)
    {

      if (*(v19 + 96) != 255)
      {
        sub_240604E54(*(v19 + 80), *(v19 + 88));
      }
    }

    else if (!EnumCaseMultiPayload)
    {

      v22 = *(type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo(0) + 28);
      v23 = sub_240759744();
      (*(*(v23 - 8) + 8))(v19 + v22, v23);
    }
  }

  v24 = v21 + v18 + *(v39 + 32);
  if (!v6(v24, 1, v5))
  {

    v25 = v5[5];
    v26 = sub_2407595A4();
    (*(*(v26 - 8) + 8))(v24 + v25, v26);
    v27 = v24 + v5[6];
    sub_240604B08(*v27, *(v27 + 8), *(v27 + 16), *(v27 + 24), *(v27 + 32), *(v27 + 40), *(v27 + 48), *(v27 + 56), *(v27 + 64), *(v27 + 72), *(v27 + 80), *(v27 + 88), *(v27 + 96), *(v27 + 104), *(v27 + 112), *(v27 + 120), *(v27 + 128), *(v27 + 136), *(v27 + 144), *(v27 + 152));

    v28 = (v24 + v5[8]);
    if (*v28 != 1)
    {
    }
  }

  v29 = v24 + v12[5];
  sub_240604AB8(*v29, *(v29 + 8), *(v29 + 16), *(v29 + 24) | ((*(v29 + 28) | (*(v29 + 30) << 16)) << 32));
  v30 = v24 + v12[6];

  sub_240604AE0(*(v30 + 88), *(v30 + 96), *(v30 + 104), *(v30 + 112));

  sub_240604AE0(*(v30 + 144), *(v30 + 152), *(v30 + 160), *(v30 + 168));

  v31 = *(v30 + 192);
  if (v31 != 1)
  {

    v32 = *(v30 + 208);
    if (v32 >> 60 != 15)
    {
      sub_2405BCD98(*(v30 + 200), v32);
    }
  }

  if (*(v30 + 232))
  {
  }

  v33 = v24 + v12[7];
  v34 = swift_getEnumCaseMultiPayload();
  switch(v34)
  {
    case 2:
      if (*(v33 + 8) >= 0x14uLL)
      {
      }

      break;
    case 1:

      if (*(v33 + 96) != 255)
      {
        sub_240604E54(*(v33 + 80), *(v33 + 88));
      }

      break;
    case 0:

      v35 = *(type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo(0) + 28);
      v36 = sub_240759744();
      (*(*(v36 - 8) + 8))(v33 + v35, v36);
      break;
  }

  v37 = (v18 + v44 + v40) & ~v40;
  (*(v42 + 8))(v21 + v37, v43);

  return MEMORY[0x2821FE8E8](v21, v37 + v41, v45 | v46 | v40 | 7);
}

uint64_t sub_24057EEA0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B88, &qword_24076CD08) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for AgeMigrationContext(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(*(v5 - 8) + 64);

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = v0 + v7;
  v12 = type metadata accessor for IdMSAccount(0);
  if (!(*(*(v12 - 1) + 48))(v0 + v7, 1, v12))
  {

    v13 = v12[5];
    v14 = sub_2407595A4();
    (*(*(v14 - 8) + 8))(v11 + v13, v14);
    v15 = v11 + v12[6];
    sub_240604B08(*v15, *(v15 + 8), *(v15 + 16), *(v15 + 24), *(v15 + 32), *(v15 + 40), *(v15 + 48), *(v15 + 56), *(v15 + 64), *(v15 + 72), *(v15 + 80), *(v15 + 88), *(v15 + 96), *(v15 + 104), *(v15 + 112), *(v15 + 120), *(v15 + 128), *(v15 + 136), *(v15 + 144), *(v15 + 152));

    v16 = (v11 + v12[8]);
    if (*v16 != 1)
    {
    }
  }

  v17 = type metadata accessor for AgeMigrationModel(0);
  v18 = v11 + v17[5];
  sub_240604AB8(*v18, *(v18 + 8), *(v18 + 16), *(v18 + 24) | ((*(v18 + 28) | (*(v18 + 30) << 16)) << 32));
  v19 = v11 + v17[6];

  sub_240604AE0(*(v19 + 88), *(v19 + 96), *(v19 + 104), *(v19 + 112));

  sub_240604AE0(*(v19 + 144), *(v19 + 152), *(v19 + 160), *(v19 + 168));

  v20 = *(v19 + 192);
  if (v20 != 1)
  {

    v21 = *(v19 + 208);
    if (v21 >> 60 != 15)
    {
      sub_2405BCD98(*(v19 + 200), v21);
    }
  }

  if (*(v19 + 232))
  {
  }

  v22 = v11 + v17[7];
  type metadata accessor for AgeMigrationModel.State(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      if (*(v22 + 8) >= 0x14uLL)
      {
      }

      break;
    case 1:

      if (*(v22 + 96) != 255)
      {
        sub_240604E54(*(v22 + 80), *(v22 + 88));
      }

      break;
    case 0:

      v24 = *(type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo(0) + 28);
      v25 = sub_240759744();
      (*(*(v25 - 8) + 8))(v22 + v24, v25);
      break;
  }

  v26 = (v11 + *(v5 + 20));
  if (v26[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v2 | v6 | 7);
}

uint64_t sub_24057F33C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B88, &qword_24076CD08) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24057F460()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B80, &qword_24076CD00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + v5));

  return MEMORY[0x2821FE8E8](v0, v5 + 40, v3 | 7);
}

uint64_t sub_24057F544()
{
  v1 = sub_240759C44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v31 = type metadata accessor for AgeMigrationContext(0);
  v6 = *(*(v31 - 8) + 80);
  v7 = (v4 + v5 + v6) & ~v6;
  v30 = *(*(v31 - 8) + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v29 = *(v9 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v11 = v0 + v7;
  v12 = type metadata accessor for IdMSAccount(0);
  if (!(*(*(v12 - 1) + 48))(v0 + v7, 1, v12))
  {

    v13 = v12[5];
    v14 = sub_2407595A4();
    (*(*(v14 - 8) + 8))(v11 + v13, v14);
    v15 = v11 + v12[6];
    sub_240604B08(*v15, *(v15 + 8), *(v15 + 16), *(v15 + 24), *(v15 + 32), *(v15 + 40), *(v15 + 48), *(v15 + 56), *(v15 + 64), *(v15 + 72), *(v15 + 80), *(v15 + 88), *(v15 + 96), *(v15 + 104), *(v15 + 112), *(v15 + 120), *(v15 + 128), *(v15 + 136), *(v15 + 144), *(v15 + 152));

    v16 = (v11 + v12[8]);
    if (*v16 != 1)
    {
    }
  }

  v17 = type metadata accessor for AgeMigrationModel(0);
  v18 = v11 + v17[5];
  sub_240604AB8(*v18, *(v18 + 8), *(v18 + 16), *(v18 + 24) | ((*(v18 + 28) | (*(v18 + 30) << 16)) << 32));
  v19 = v11 + v17[6];

  sub_240604AE0(*(v19 + 88), *(v19 + 96), *(v19 + 104), *(v19 + 112));

  sub_240604AE0(*(v19 + 144), *(v19 + 152), *(v19 + 160), *(v19 + 168));

  v20 = *(v19 + 192);
  if (v20 != 1)
  {

    v21 = *(v19 + 208);
    if (v21 >> 60 != 15)
    {
      sub_2405BCD98(*(v19 + 200), v21);
    }
  }

  if (*(v19 + 232))
  {
  }

  v22 = v11 + v17[7];
  type metadata accessor for AgeMigrationModel.State(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      if (*(v22 + 8) >= 0x14uLL)
      {
      }

      break;
    case 1:

      if (*(v22 + 96) != 255)
      {
        sub_240604E54(*(v22 + 80), *(v22 + 88));
      }

      break;
    case 0:

      v24 = *(type metadata accessor for AgeMigrationModel.State.ChildMigrationInfo(0) + 28);
      v25 = sub_240759744();
      (*(*(v25 - 8) + 8))(v22 + v24, v25);
      break;
  }

  v26 = (v11 + *(v31 + 20));
  if (v26[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v27 = (v7 + v30 + v10) & ~v10;
  (*(v9 + 8))(v0 + v27, v8);

  return MEMORY[0x2821FE8E8](v0, v27 + v29, v3 | v6 | v10 | 7);
}

uint64_t sub_24057FA28()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24057FAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C58, &qword_24076CFE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24057FB64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C58, &qword_24076CFE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24057FC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AgeMigrationModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24057FCE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AgeMigrationModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t sub_24057FDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AnyCancellableID(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24057FE64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AnyCancellableID(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24057FF20()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_240580004()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24058003C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240580074@<X0>(_DWORD *a1@<X8>)
{
  result = sub_240644D24();
  *a1 = result;
  return result;
}

__n128 sub_2405800D4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_2405800E0@<X0>(void *a1@<X8>)
{
  v2 = sub_24064E9E8();
  *a1 = v2;

  return v2;
}

void sub_24058011C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24064EA4C(v1);
}

uint64_t sub_240580220()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240580258()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240580290()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA1E0, &qword_24076E1B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_240580340()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_240580390()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240580450()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_240580498@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_completed;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2405804F0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12AppleIDSetup11AISFlowTask_completed;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_240580544()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240580588()
{
  MEMORY[0x245CC7760](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2405805C0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240580604()
{
  swift_unknownObjectRelease();
  if (*(v0 + 48))
  {
  }

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_240580664()
{
  if (*(v0 + 32))
  {
  }

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2405806BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t get_enum_tag_for_layout_string_xq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyxxIsegHirzo_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_24058071C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_240580728(id *a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a1;

  *a2 = v3;
}

uint64_t sub_240580764@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_240580770(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_2405807CC()
{

  return MEMORY[0x2821FE8E8](v0, 920, 7);
}

uint64_t sub_2405809C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SetupModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_240580A90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SetupModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t sub_240580B4C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_240580B94()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240580BCC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71C8, &unk_240762450);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

void *sub_240580C88(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71C8, &unk_240762450);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_240580D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = type metadata accessor for RapportTransport(0, v7, v8, a4);
  v11 = *(v9 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = v9;
    v13 = *(v11 + 48);
    v14 = a1;
LABEL_8:

    return v13(v14, a2, v12);
  }

  v15 = type metadata accessor for MessagePacker(0, v7, v8, v10);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v12 = v15;
    v17 = *(v15 - 8);
    v18 = *(a3 + 36);
LABEL_7:
    v13 = *(v17 + 48);
    v14 = a1 + v18;
    goto LABEL_8;
  }

  v19 = type metadata accessor for MessageUnpacker(0, v7, v8, v16);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v12 = v19;
    v17 = *(v19 - 8);
    v18 = *(a3 + 40);
    goto LABEL_7;
  }

  v21 = *(a1 + *(a3 + 48));
  if (v21 >= 0xFFFFFFFF)
  {
    LODWORD(v21) = -1;
  }

  v22 = v21 - 1;
  if (v22 < 0)
  {
    v22 = -1;
  }

  return (v22 + 1);
}

uint64_t sub_240580EC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(a4 + 24);
  v10 = type metadata accessor for RapportTransport(0, v8, v9, a4);
  v12 = *(v10 - 8);
  if (*(v12 + 84) == a3)
  {
    v13 = v10;
    v14 = *(v12 + 56);
    v15 = a1;
  }

  else
  {
    v16 = type metadata accessor for MessagePacker(0, v8, v9, v11);
    if (*(*(v16 - 8) + 84) == a3)
    {
      v13 = v16;
      v18 = *(v16 - 8);
      v19 = *(a4 + 36);
    }

    else
    {
      result = type metadata accessor for MessageUnpacker(0, v8, v9, v17);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + *(a4 + 48)) = a2;
        return result;
      }

      v13 = result;
      v18 = *(result - 8);
      v19 = *(a4 + 40);
    }

    v14 = *(v18 + 56);
    v15 = a1 + v19;
  }

  return v14(v15, a2, a2, v13);
}

uint64_t sub_240581038()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAD90, &unk_240774ED0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2405810CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for MessageUnpacker(0, v5, v6, a4);
  v39 = *(*(v7 - 8) + 80);
  v8 = (v39 + 32) & ~v39;
  v9 = (*(*(v7 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = type metadata accessor for MessagePacker(0, v5, v6, v10);
  v37 = *(*(v38 - 8) + 64);
  v34 = v9;
  v35 = *(*(v38 - 8) + 80);
  v36 = (v9 + v35 + 17) & ~v35;

  v11 = v4 + v8 + *(v7 + 36);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  v13 = *(*(v12 - 1) + 48);
  if (!v13(v11, 1, v12))
  {

    v14 = v12[9];
    v15 = sub_240759DC4();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v11 + v14, 1, v15))
    {
      (*(v16 + 8))(v11 + v14, v15);
    }

    v17 = v12[10];
    v18 = sub_240759E04();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v11 + v17, 1, v18))
    {
      (*(v19 + 8))(v11 + v17, v18);
    }

    v20 = v12[11];
    v21 = sub_240759E54();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v11 + v20, 1, v21))
    {
      (*(v22 + 8))(v11 + v20, v21);
    }
  }

  sub_2406718EC(*(v4 + v34), *(v4 + v34 + 8));

  v23 = v4 + v36 + *(v38 + 36);
  if (!v13(v23, 1, v12))
  {

    v24 = v12[9];
    v25 = sub_240759DC4();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v23 + v24, 1, v25))
    {
      (*(v26 + 8))(v23 + v24, v25);
    }

    v27 = v12[10];
    v28 = sub_240759E04();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v23 + v27, 1, v28))
    {
      (*(v29 + 8))(v23 + v27, v28);
    }

    v30 = v12[11];
    v31 = sub_240759E54();
    v32 = *(v31 - 8);
    if (!(*(v32 + 48))(v23 + v30, 1, v31))
    {
      (*(v32 + 8))(v23 + v30, v31);
    }
  }

  return MEMORY[0x2821FE8E8](v4, v36 + v37, v39 | v35 | 7);
}

uint64_t sub_240581620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for RapportTransport(0, *(v4 + 16), *(v4 + 24), a4);
  v32 = *(*(v5 - 8) + 80);
  v30 = *(*(v5 - 8) + 64);
  v31 = (v32 + 32) & ~v32;
  v6 = v4 + v31;

  if (*(v4 + v31 + 32))
  {
  }

  if (*(v6 + 48))
  {
  }

  if (*(v6 + 64))
  {
  }

  v7 = v6 + *(v5 + 56);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  v9 = *(*(v8 - 1) + 48);
  if (!v9(v7, 1, v8))
  {

    v10 = v8[9];
    v11 = sub_240759DC4();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v7 + v10, 1, v11))
    {
      (*(v12 + 8))(v7 + v10, v11);
    }

    v13 = v8[10];
    v14 = sub_240759E04();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v7 + v13, 1, v14))
    {
      (*(v15 + 8))(v7 + v13, v14);
    }

    v16 = v8[11];
    v17 = sub_240759E54();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v7 + v16, 1, v17))
    {
      (*(v18 + 8))(v7 + v16, v17);
    }
  }

  v19 = v6 + *(v5 + 60);
  if (!v9(v19, 1, v8))
  {

    v20 = v8[9];
    v21 = sub_240759DC4();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v19 + v20, 1, v21))
    {
      (*(v22 + 8))(v19 + v20, v21);
    }

    v23 = v8[10];
    v24 = sub_240759E04();
    v25 = *(v24 - 8);
    if (!(*(v25 + 48))(v19 + v23, 1, v24))
    {
      (*(v25 + 8))(v19 + v23, v24);
    }

    v26 = v8[11];
    v27 = sub_240759E54();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v19 + v26, 1, v27))
    {
      (*(v28 + 8))(v19 + v26, v27);
    }
  }

  return MEMORY[0x2821FE8E8](v4, v31 + v30, v32 | 7);
}

uint64_t sub_240581AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for RapportTransport(0, *(v4 + 16), *(v4 + 24), a4);
  v32 = *(*(v5 - 8) + 80);
  v30 = *(*(v5 - 8) + 64);

  v31 = (v32 + 40) & ~v32;
  v6 = v4 + v31;

  if (*(v4 + v31 + 32))
  {
  }

  if (*(v6 + 48))
  {
  }

  if (*(v6 + 64))
  {
  }

  v7 = v6 + *(v5 + 56);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  v9 = *(*(v8 - 1) + 48);
  if (!v9(v7, 1, v8))
  {

    v10 = v8[9];
    v11 = sub_240759DC4();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v7 + v10, 1, v11))
    {
      (*(v12 + 8))(v7 + v10, v11);
    }

    v13 = v8[10];
    v14 = sub_240759E04();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v7 + v13, 1, v14))
    {
      (*(v15 + 8))(v7 + v13, v14);
    }

    v16 = v8[11];
    v17 = sub_240759E54();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v7 + v16, 1, v17))
    {
      (*(v18 + 8))(v7 + v16, v17);
    }
  }

  v19 = v6 + *(v5 + 60);
  if (!v9(v19, 1, v8))
  {

    v20 = v8[9];
    v21 = sub_240759DC4();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v19 + v20, 1, v21))
    {
      (*(v22 + 8))(v19 + v20, v21);
    }

    v23 = v8[10];
    v24 = sub_240759E04();
    v25 = *(v24 - 8);
    if (!(*(v25 + 48))(v19 + v23, 1, v24))
    {
      (*(v25 + 8))(v19 + v23, v24);
    }

    v26 = v8[11];
    v27 = sub_240759E54();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v19 + v26, 1, v27))
    {
      (*(v28 + 8))(v19 + v26, v27);
    }
  }

  return MEMORY[0x2821FE8E8](v4, v31 + v30, v32 | 7);
}

uint64_t sub_240581FBC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240581FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = type metadata accessor for MessageUnpacker(0, v5, v6, a4);
  v40 = *(*(v7 - 8) + 80);
  v8 = (v40 + 56) & ~v40;
  v9 = (((*(*(v7 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = type metadata accessor for MessagePacker(0, v5, v6, v10);
  v35 = v9;
  v38 = *(*(v11 - 8) + 80);
  v39 = v11;
  v37 = (v9 + v38 + 17) & ~v38;
  v36 = *(*(v11 - 8) + 64);
  swift_unknownObjectRelease();

  v12 = v4 + v8 + *(v7 + 36);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  v14 = *(*(v13 - 1) + 48);
  if (!v14(v12, 1, v13))
  {

    v15 = v13[9];
    v16 = sub_240759DC4();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v12 + v15, 1, v16))
    {
      (*(v17 + 8))(v12 + v15, v16);
    }

    v18 = v13[10];
    v19 = sub_240759E04();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v12 + v18, 1, v19))
    {
      (*(v20 + 8))(v12 + v18, v19);
    }

    v21 = v13[11];
    v22 = sub_240759E54();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(v12 + v21, 1, v22))
    {
      (*(v23 + 8))(v12 + v21, v22);
    }
  }

  sub_2406718EC(*(v4 + v35), *(v4 + v35 + 8));

  v24 = v4 + v37 + *(v39 + 36);
  if (!v14(v24, 1, v13))
  {

    v25 = v13[9];
    v26 = sub_240759DC4();
    v27 = *(v26 - 8);
    if (!(*(v27 + 48))(v24 + v25, 1, v26))
    {
      (*(v27 + 8))(v24 + v25, v26);
    }

    v28 = v13[10];
    v29 = sub_240759E04();
    v30 = *(v29 - 8);
    if (!(*(v30 + 48))(v24 + v28, 1, v29))
    {
      (*(v30 + 8))(v24 + v28, v29);
    }

    v31 = v13[11];
    v32 = sub_240759E54();
    v33 = *(v32 - 8);
    if (!(*(v33 + 48))(v24 + v31, 1, v32))
    {
      (*(v33 + 8))(v24 + v31, v32);
    }
  }

  return MEMORY[0x2821FE8E8](v4, ((v36 + v37 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v40 | v38 | 7);
}

uint64_t sub_240582588()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2405825C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240582604()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24058264C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24058268C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_240582760()
{
  v1 = 0x646572696170;
  if (*v0 != 2)
  {
    v1 = 0x676E69736F6F6863;
  }

  if (*v0 <= 1u)
  {
    return 0x7265766F63736964;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2405827D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24068A6D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_240582800()
{
  v1 = *(v0 + 40);
  if (v1 <= 0xFB)
  {
    sub_240604AE0(*(v0 + 16), *(v0 + 24), *(v0 + 32), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_240582858()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2405828B4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240582988()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2405829C8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240582A10()
{
  v36 = type metadata accessor for SetupContext(0);
  v1 = *(*(v36 - 8) + 80);
  v34 = *(*(v36 - 8) + 64);
  swift_unknownObjectRelease();

  v35 = (v1 + 40) & ~v1;
  v2 = v0 + v35;
  sub_240604AB8(*(v0 + v35 + 8), *(v0 + v35 + 16), *(v0 + v35 + 24), *(v0 + v35 + 32) | ((*(v0 + v35 + 36) | (*(v0 + v35 + 38) << 16)) << 32));
  v3 = *(v0 + v35 + 88);
  if (v3 <= 0xF9)
  {
    sub_2405AEA70(*(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), v3);
  }

  sub_240604AE0(*(v2 + 184), *(v2 + 192), *(v2 + 200), *(v2 + 208));

  sub_240604AE0(*(v2 + 240), *(v2 + 248), *(v2 + 256), *(v2 + 264));

  v4 = *(v2 + 288);
  if (v4 != 1)
  {

    v5 = *(v2 + 304);
    if (v5 >> 60 != 15)
    {
      sub_2405BCD98(*(v2 + 296), v5);
    }
  }

  if (*(v2 + 328))
  {
  }

  v6 = type metadata accessor for SetupModel(0);
  v7 = v2 + *(v6 + 36);
  v8 = type metadata accessor for IdMSAccount(0);
  v9 = *(*(v8 - 1) + 48);
  if (!v9(v7, 1, v8))
  {

    v10 = v8[5];
    v11 = sub_2407595A4();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
    v12 = v7 + v8[6];
    sub_240604B08(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32), *(v12 + 40), *(v12 + 48), *(v12 + 56), *(v12 + 64), *(v12 + 72), *(v12 + 80), *(v12 + 88), *(v12 + 96), *(v12 + 104), *(v12 + 112), *(v12 + 120), *(v12 + 128), *(v12 + 136), *(v12 + 144), *(v12 + 152));

    v13 = (v7 + v8[8]);
    if (*v13 != 1)
    {
    }
  }

  v14 = type metadata accessor for AuthenticationModel(0);
  if (*(v7 + v14[5] + 8))
  {
  }

  v15 = v7 + v14[10];
  type metadata accessor for AuthenticationModel.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      v33 = v1;

      v16 = v8[5];
      v17 = sub_2407595A4();
      (*(*(v17 - 8) + 8))(v15 + v16, v17);
      v18 = v15 + v8[6];
      sub_240604B08(*v18, *(v18 + 8), *(v18 + 16), *(v18 + 24), *(v18 + 32), *(v18 + 40), *(v18 + 48), *(v18 + 56), *(v18 + 64), *(v18 + 72), *(v18 + 80), *(v18 + 88), *(v18 + 96), *(v18 + 104), *(v18 + 112), *(v18 + 120), *(v18 + 128), *(v18 + 136), *(v18 + 144), *(v18 + 152));

      v19 = (v15 + v8[8]);
      if (*v19 != 1)
      {
      }

      v1 = v33;
      break;
    case 2u:
    case 3u:

      v20 = *(v15 + 96);
      if (v20 != 255)
      {
        sub_2405B0558(*(v15 + 64), *(v15 + 72), *(v15 + 80), *(v15 + 88), v20);
      }

      break;
    case 4u:
    case 5u:
    case 6u:

      if (*(v15 + 40) != 1)
      {
      }

      break;
    case 7u:
    case 8u:

      break;
    case 9u:
    case 0xAu:

      break;
    case 0xBu:

      break;
    case 0xCu:
    case 0xDu:

      break;
    default:
      break;
  }

  if (*(v7 + v14[11]))
  {
  }

  v21 = v2 + *(v6 + 40);
  if (!v9(v21, 1, v8))
  {

    v22 = v8[5];
    v23 = sub_2407595A4();
    (*(*(v23 - 8) + 8))(v21 + v22, v23);
    v24 = v21 + v8[6];
    sub_240604B08(*v24, *(v24 + 8), *(v24 + 16), *(v24 + 24), *(v24 + 32), *(v24 + 40), *(v24 + 48), *(v24 + 56), *(v24 + 64), *(v24 + 72), *(v24 + 80), *(v24 + 88), *(v24 + 96), *(v24 + 104), *(v24 + 112), *(v24 + 120), *(v24 + 128), *(v24 + 136), *(v24 + 144), *(v24 + 152));

    v25 = (v21 + v8[8]);
    if (*v25 != 1)
    {
    }
  }

  v26 = type metadata accessor for SignInModel(0);
  v27 = (v21 + v26[5]);
  if (v27[1])
  {

    v28 = v27[11];
    if (v28 >> 60 != 15)
    {
      sub_2405BCD98(v27[10], v28);
    }
  }

  if (*(v21 + v26[10] + 8))
  {
  }

  v29 = (v34 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_240604C7C(*(v21 + v26[16]), *(v21 + v26[16] + 8), *(v21 + v26[16] + 16));

  v30 = v21 + v26[19];
  sub_240604C90(*v30, *(v30 + 8), *(v30 + 16), *(v30 + 24), *(v30 + 32), *(v30 + 40), *(v30 + 48), *(v30 + 56), *(v30 + 64), *(v30 + 72), *(v30 + 80), *(v30 + 88), *(v30 + 96));
  v31 = (v2 + *(v36 + 20));
  if (v31[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  if (*(v0 + v29))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v29 + 16, v1 | 7);
}

uint64_t sub_2405831F8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240583230()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB860, &unk_2407749A0);
  v2 = *(*(v1 - 8) + 80);
  v40 = *(*(v1 - 8) + 64);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998);
  v3 = *(v43 - 8);
  v39 = *(v3 + 80);
  v42 = *(v3 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v41 = (v2 + 56) & ~v2;
  v4 = v0 + v41 + *(v1 + 32);
  sub_240604AB8(*(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32) | ((*(v4 + 36) | (*(v4 + 38) << 16)) << 32));
  v5 = *(v4 + 88);
  if (v5 <= 0xF9)
  {
    sub_2405AEA70(*(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 80), v5);
  }

  sub_240604AE0(*(v4 + 184), *(v4 + 192), *(v4 + 200), *(v4 + 208));

  sub_240604AE0(*(v4 + 240), *(v4 + 248), *(v4 + 256), *(v4 + 264));

  v6 = *(v4 + 288);
  if (v6 != 1)
  {

    v7 = *(v4 + 304);
    if (v7 >> 60 != 15)
    {
      sub_2405BCD98(*(v4 + 296), v7);
    }
  }

  if (*(v4 + 328))
  {
  }

  v8 = type metadata accessor for SetupModel(0);
  v9 = v4 + *(v8 + 36);
  v10 = type metadata accessor for IdMSAccount(0);
  v11 = (*(v10 - 1) + 48);
  v38 = *v11;
  if (!(*v11)(v9, 1, v10))
  {

    v12 = v2;
    v13 = v10[5];
    v14 = sub_2407595A4();
    v15 = v9 + v13;
    v2 = v12;
    (*(*(v14 - 8) + 8))(v15, v14);
    v16 = v9 + v10[6];
    sub_240604B08(*v16, *(v16 + 8), *(v16 + 16), *(v16 + 24), *(v16 + 32), *(v16 + 40), *(v16 + 48), *(v16 + 56), *(v16 + 64), *(v16 + 72), *(v16 + 80), *(v16 + 88), *(v16 + 96), *(v16 + 104), *(v16 + 112), *(v16 + 120), *(v16 + 128), *(v16 + 136), *(v16 + 144), *(v16 + 152));

    v17 = (v9 + v10[8]);
    if (*v17 != 1)
    {
    }
  }

  v18 = type metadata accessor for AuthenticationModel(0);
  if (*(v9 + v18[5] + 8))
  {
  }

  v19 = v9 + v18[10];
  type metadata accessor for AuthenticationModel.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      v37 = v2;

      v20 = v10[5];
      v21 = sub_2407595A4();
      (*(*(v21 - 8) + 8))(v19 + v20, v21);
      v22 = v19 + v10[6];
      sub_240604B08(*v22, *(v22 + 8), *(v22 + 16), *(v22 + 24), *(v22 + 32), *(v22 + 40), *(v22 + 48), *(v22 + 56), *(v22 + 64), *(v22 + 72), *(v22 + 80), *(v22 + 88), *(v22 + 96), *(v22 + 104), *(v22 + 112), *(v22 + 120), *(v22 + 128), *(v22 + 136), *(v22 + 144), *(v22 + 152));

      v23 = (v19 + v10[8]);
      if (*v23 != 1)
      {
      }

      v2 = v37;
      break;
    case 2u:
    case 3u:

      v24 = *(v19 + 96);
      if (v24 != 255)
      {
        sub_2405B0558(*(v19 + 64), *(v19 + 72), *(v19 + 80), *(v19 + 88), v24);
      }

      break;
    case 4u:
    case 5u:
    case 6u:

      if (*(v19 + 40) != 1)
      {
      }

      break;
    case 7u:
    case 8u:

      break;
    case 9u:
    case 0xAu:

      break;
    case 0xBu:

      break;
    case 0xCu:
    case 0xDu:

      break;
    default:
      break;
  }

  if (*(v9 + v18[11]))
  {
  }

  v25 = v4 + *(v8 + 40);
  if (!v38(v25, 1, v10))
  {

    v26 = v10[5];
    v27 = sub_2407595A4();
    (*(*(v27 - 8) + 8))(v25 + v26, v27);
    v28 = v25 + v10[6];
    sub_240604B08(*v28, *(v28 + 8), *(v28 + 16), *(v28 + 24), *(v28 + 32), *(v28 + 40), *(v28 + 48), *(v28 + 56), *(v28 + 64), *(v28 + 72), *(v28 + 80), *(v28 + 88), *(v28 + 96), *(v28 + 104), *(v28 + 112), *(v28 + 120), *(v28 + 128), *(v28 + 136), *(v28 + 144), *(v28 + 152));

    v29 = (v25 + v10[8]);
    if (*v29 != 1)
    {
    }
  }

  v30 = type metadata accessor for SignInModel(0);
  v31 = (v25 + v30[5]);
  if (v31[1])
  {

    v32 = v31[11];
    if (v32 >> 60 != 15)
    {
      sub_2405BCD98(v31[10], v32);
    }
  }

  if (*(v25 + v30[10] + 8))
  {
  }

  v33 = v2 | v39;
  v34 = (v41 + v40 + v39) & ~v39;

  sub_240604C7C(*(v25 + v30[16]), *(v25 + v30[16] + 8), *(v25 + v30[16] + 16));

  v35 = v25 + v30[19];
  sub_240604C90(*v35, *(v35 + 8), *(v35 + 16), *(v35 + 24), *(v35 + 32), *(v35 + 40), *(v35 + 48), *(v35 + 56), *(v35 + 64), *(v35 + 72), *(v35 + 80), *(v35 + 88), *(v35 + 96));

  (*(v3 + 8))(v0 + v34, v43);

  return MEMORY[0x2821FE8E8](v0, v34 + v42, v33 | 7);
}

uint64_t sub_240583ABC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB860, &unk_2407749A0);
  v38 = *(*(v2 - 8) + 80);
  v36 = *(*(v2 - 8) + 64);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998);
  v3 = *(v40 - 8);
  v35 = *(v3 + 80);
  v39 = *(v3 + 64);
  v37 = (v38 + 16) & ~v38;
  v4 = v0 + v37 + *(v2 + 32);
  sub_240604AB8(*(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32) | ((*(v4 + 36) | (*(v4 + 38) << 16)) << 32));
  v5 = *(v4 + 88);
  if (v5 <= 0xF9)
  {
    sub_2405AEA70(*(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 80), v5);
  }

  sub_240604AE0(*(v4 + 184), *(v4 + 192), *(v4 + 200), *(v4 + 208));

  sub_240604AE0(*(v4 + 240), *(v4 + 248), *(v4 + 256), *(v4 + 264));

  v6 = *(v4 + 288);
  if (v6 != 1)
  {

    v7 = *(v4 + 304);
    if (v7 >> 60 != 15)
    {
      sub_2405BCD98(*(v4 + 296), v7);
    }
  }

  if (*(v4 + 328))
  {
  }

  v8 = type metadata accessor for SetupModel(0);
  v9 = v4 + *(v8 + 36);
  v10 = type metadata accessor for IdMSAccount(0);
  v11 = *(*(v10 - 1) + 48);
  if (!v11(v9, 1, v10))
  {

    v12 = v10[5];
    v13 = sub_2407595A4();
    (*(*(v13 - 8) + 8))(v9 + v12, v13);
    v14 = v9 + v10[6];
    sub_240604B08(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), *(v14 + 48), *(v14 + 56), *(v14 + 64), *(v14 + 72), *(v14 + 80), *(v14 + 88), *(v14 + 96), *(v14 + 104), *(v14 + 112), *(v14 + 120), *(v14 + 128), *(v14 + 136), *(v14 + 144), *(v14 + 152));

    v15 = (v9 + v10[8]);
    if (*v15 != 1)
    {
    }
  }

  v16 = type metadata accessor for AuthenticationModel(0);
  if (*(v9 + v16[5] + 8))
  {
  }

  v17 = v9 + v16[10];
  type metadata accessor for AuthenticationModel.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      v34 = v1;

      v18 = v10[5];
      v19 = sub_2407595A4();
      (*(*(v19 - 8) + 8))(v17 + v18, v19);
      v20 = v17 + v10[6];
      sub_240604B08(*v20, *(v20 + 8), *(v20 + 16), *(v20 + 24), *(v20 + 32), *(v20 + 40), *(v20 + 48), *(v20 + 56), *(v20 + 64), *(v20 + 72), *(v20 + 80), *(v20 + 88), *(v20 + 96), *(v20 + 104), *(v20 + 112), *(v20 + 120), *(v20 + 128), *(v20 + 136), *(v20 + 144), *(v20 + 152));

      v21 = (v17 + v10[8]);
      if (*v21 != 1)
      {
      }

      v1 = v34;
      break;
    case 2u:
    case 3u:

      v22 = *(v17 + 96);
      if (v22 != 255)
      {
        sub_2405B0558(*(v17 + 64), *(v17 + 72), *(v17 + 80), *(v17 + 88), v22);
      }

      break;
    case 4u:
    case 5u:
    case 6u:

      if (*(v17 + 40) != 1)
      {
      }

      break;
    case 7u:
    case 8u:

      break;
    case 9u:
    case 0xAu:

      break;
    case 0xBu:

      break;
    case 0xCu:
    case 0xDu:

      break;
    default:
      break;
  }

  if (*(v9 + v16[11]))
  {
  }

  v23 = v4 + *(v8 + 40);
  if (!v11(v23, 1, v10))
  {

    v24 = v10[5];
    v25 = sub_2407595A4();
    (*(*(v25 - 8) + 8))(v23 + v24, v25);
    v26 = v23 + v10[6];
    sub_240604B08(*v26, *(v26 + 8), *(v26 + 16), *(v26 + 24), *(v26 + 32), *(v26 + 40), *(v26 + 48), *(v26 + 56), *(v26 + 64), *(v26 + 72), *(v26 + 80), *(v26 + 88), *(v26 + 96), *(v26 + 104), *(v26 + 112), *(v26 + 120), *(v26 + 128), *(v26 + 136), *(v26 + 144), *(v26 + 152));

    v27 = (v23 + v10[8]);
    if (*v27 != 1)
    {
    }
  }

  v28 = type metadata accessor for SignInModel(0);
  v29 = (v23 + v28[5]);
  if (v29[1])
  {

    v30 = v29[11];
    if (v30 >> 60 != 15)
    {
      sub_2405BCD98(v29[10], v30);
    }
  }

  if (*(v23 + v28[10] + 8))
  {
  }

  v31 = (v37 + v36 + v35) & ~v35;

  sub_240604C7C(*(v23 + v28[16]), *(v23 + v28[16] + 8), *(v23 + v28[16] + 16));

  v32 = v23 + v28[19];
  sub_240604C90(*v32, *(v32 + 8), *(v32 + 16), *(v32 + 24), *(v32 + 32), *(v32 + 40), *(v32 + 48), *(v32 + 56), *(v32 + 64), *(v32 + 72), *(v32 + 80), *(v32 + 88), *(v32 + 96));

  (*(v3 + 8))(v1 + v31, v40);

  return MEMORY[0x2821FE8E8](v1, v31 + v39, v38 | v35 | 7);
}

uint64_t sub_240584340()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 32))
  {

    if (*(v0 + 80))
    {
    }
  }

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2405843C8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_240584414()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24058444C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8B8, &qword_2407749F8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v40 = type metadata accessor for SetupContext(0);
  v42 = *(*(v40 - 8) + 80);
  v5 = (v3 + v4 + v42) & ~v42;
  v39 = *(*(v40 - 8) + 64);

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998);
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = v0 + v5;
  sub_240604AB8(*(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v5 + 24), *(v0 + v5 + 32) | ((*(v0 + v5 + 36) | (*(v0 + v5 + 38) << 16)) << 32));
  v9 = *(v0 + v5 + 88);
  if (v9 <= 0xF9)
  {
    sub_2405AEA70(*(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72), *(v8 + 80), v9);
  }

  sub_240604AE0(*(v8 + 184), *(v8 + 192), *(v8 + 200), *(v8 + 208));

  sub_240604AE0(*(v8 + 240), *(v8 + 248), *(v8 + 256), *(v8 + 264));

  v10 = *(v8 + 288);
  if (v10 != 1)
  {

    v11 = *(v8 + 304);
    if (v11 >> 60 != 15)
    {
      sub_2405BCD98(*(v8 + 296), v11);
    }
  }

  v41 = v5;
  if (*(v8 + 328))
  {
  }

  v12 = type metadata accessor for SetupModel(0);
  v13 = v8 + *(v12 + 36);
  v14 = type metadata accessor for IdMSAccount(0);
  v15 = *(*(v14 - 1) + 48);
  if (!v15(v13, 1, v14))
  {

    v16 = v14[5];
    v17 = sub_2407595A4();
    (*(*(v17 - 8) + 8))(v13 + v16, v17);
    v18 = v13 + v14[6];
    sub_240604B08(*v18, *(v18 + 8), *(v18 + 16), *(v18 + 24), *(v18 + 32), *(v18 + 40), *(v18 + 48), *(v18 + 56), *(v18 + 64), *(v18 + 72), *(v18 + 80), *(v18 + 88), *(v18 + 96), *(v18 + 104), *(v18 + 112), *(v18 + 120), *(v18 + 128), *(v18 + 136), *(v18 + 144), *(v18 + 152));

    v19 = (v13 + v14[8]);
    if (*v19 != 1)
    {
    }
  }

  v20 = type metadata accessor for AuthenticationModel(0);
  if (*(v13 + v20[5] + 8))
  {
  }

  v21 = v13 + v20[10];
  type metadata accessor for AuthenticationModel.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      v38 = v2;

      v22 = v14[5];
      v23 = sub_2407595A4();
      (*(*(v23 - 8) + 8))(v21 + v22, v23);
      v24 = v21 + v14[6];
      sub_240604B08(*v24, *(v24 + 8), *(v24 + 16), *(v24 + 24), *(v24 + 32), *(v24 + 40), *(v24 + 48), *(v24 + 56), *(v24 + 64), *(v24 + 72), *(v24 + 80), *(v24 + 88), *(v24 + 96), *(v24 + 104), *(v24 + 112), *(v24 + 120), *(v24 + 128), *(v24 + 136), *(v24 + 144), *(v24 + 152));

      v25 = (v21 + v14[8]);
      if (*v25 != 1)
      {
      }

      v2 = v38;
      break;
    case 2u:
    case 3u:

      v26 = *(v21 + 96);
      if (v26 != 255)
      {
        sub_2405B0558(*(v21 + 64), *(v21 + 72), *(v21 + 80), *(v21 + 88), v26);
      }

      break;
    case 4u:
    case 5u:
    case 6u:

      if (*(v21 + 40) != 1)
      {
      }

      break;
    case 7u:
    case 8u:

      break;
    case 9u:
    case 0xAu:

      break;
    case 0xBu:

      break;
    case 0xCu:
    case 0xDu:

      break;
    default:
      break;
  }

  if (*(v13 + v20[11]))
  {
  }

  v27 = v8 + *(v12 + 40);
  if (!v15(v27, 1, v14))
  {

    v28 = v14[5];
    v29 = sub_2407595A4();
    (*(*(v29 - 8) + 8))(v27 + v28, v29);
    v30 = v27 + v14[6];
    sub_240604B08(*v30, *(v30 + 8), *(v30 + 16), *(v30 + 24), *(v30 + 32), *(v30 + 40), *(v30 + 48), *(v30 + 56), *(v30 + 64), *(v30 + 72), *(v30 + 80), *(v30 + 88), *(v30 + 96), *(v30 + 104), *(v30 + 112), *(v30 + 120), *(v30 + 128), *(v30 + 136), *(v30 + 144), *(v30 + 152));

    v31 = (v27 + v14[8]);
    if (*v31 != 1)
    {
    }
  }

  v32 = type metadata accessor for SignInModel(0);
  v33 = (v27 + v32[5]);
  if (v33[1])
  {

    v34 = v33[11];
    if (v34 >> 60 != 15)
    {
      sub_2405BCD98(v33[10], v34);
    }
  }

  if (*(v27 + v32[10] + 8))
  {
  }

  sub_240604C7C(*(v27 + v32[16]), *(v27 + v32[16] + 8), *(v27 + v32[16] + 16));

  v35 = v27 + v32[19];
  sub_240604C90(*v35, *(v35 + 8), *(v35 + 16), *(v35 + 24), *(v35 + 32), *(v35 + 40), *(v35 + 48), *(v35 + 56), *(v35 + 64), *(v35 + 72), *(v35 + 80), *(v35 + 88), *(v35 + 96));
  v36 = (v8 + *(v40 + 20));
  if (v36[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  return MEMORY[0x2821FE8E8](v0, v41 + v39, v2 | v42 | 7);
}

uint64_t sub_240584CF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8C8, &qword_240774A08);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_240584DDC()
{
  v1 = sub_240759C44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v45 = type metadata accessor for SetupContext(0);
  v47 = *(*(v45 - 8) + 80);
  v6 = (v4 + v5 + v47) & ~v47;
  v44 = *(*(v45 - 8) + 64);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998);
  v7 = *(v43 - 8);
  v41 = *(v7 + 80);
  v42 = *(v7 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v46 = v6;
  v8 = v0 + v6;
  sub_240604AB8(*(v0 + v6 + 8), *(v0 + v6 + 16), *(v0 + v6 + 24), *(v0 + v6 + 32) | ((*(v0 + v6 + 36) | (*(v0 + v6 + 38) << 16)) << 32));
  v9 = *(v0 + v6 + 88);
  if (v9 <= 0xF9)
  {
    sub_2405AEA70(*(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72), *(v8 + 80), v9);
  }

  sub_240604AE0(*(v8 + 184), *(v8 + 192), *(v8 + 200), *(v8 + 208));

  sub_240604AE0(*(v8 + 240), *(v8 + 248), *(v8 + 256), *(v8 + 264));

  v10 = *(v8 + 288);
  if (v10 != 1)
  {

    v11 = *(v8 + 304);
    if (v11 >> 60 != 15)
    {
      sub_2405BCD98(*(v8 + 296), v11);
    }
  }

  if (*(v8 + 328))
  {
  }

  v12 = type metadata accessor for SetupModel(0);
  v13 = v8 + *(v12 + 36);
  v14 = type metadata accessor for IdMSAccount(0);
  v15 = (*(v14 - 1) + 48);
  v40 = *v15;
  if (!(*v15)(v13, 1, v14))
  {

    v16 = v14[5];
    v17 = sub_2407595A4();
    (*(*(v17 - 8) + 8))(v13 + v16, v17);
    v18 = v13 + v14[6];
    sub_240604B08(*v18, *(v18 + 8), *(v18 + 16), *(v18 + 24), *(v18 + 32), *(v18 + 40), *(v18 + 48), *(v18 + 56), *(v18 + 64), *(v18 + 72), *(v18 + 80), *(v18 + 88), *(v18 + 96), *(v18 + 104), *(v18 + 112), *(v18 + 120), *(v18 + 128), *(v18 + 136), *(v18 + 144), *(v18 + 152));

    v19 = (v13 + v14[8]);
    if (*v19 != 1)
    {
    }
  }

  v20 = type metadata accessor for AuthenticationModel(0);
  if (*(v13 + v20[5] + 8))
  {
  }

  v21 = v13 + v20[10];
  type metadata accessor for AuthenticationModel.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      v39 = v3;

      v22 = v14[5];
      v23 = sub_2407595A4();
      (*(*(v23 - 8) + 8))(v21 + v22, v23);
      v24 = v21 + v14[6];
      sub_240604B08(*v24, *(v24 + 8), *(v24 + 16), *(v24 + 24), *(v24 + 32), *(v24 + 40), *(v24 + 48), *(v24 + 56), *(v24 + 64), *(v24 + 72), *(v24 + 80), *(v24 + 88), *(v24 + 96), *(v24 + 104), *(v24 + 112), *(v24 + 120), *(v24 + 128), *(v24 + 136), *(v24 + 144), *(v24 + 152));

      v25 = (v21 + v14[8]);
      if (*v25 != 1)
      {
      }

      v3 = v39;
      break;
    case 2u:
    case 3u:

      v26 = *(v21 + 96);
      if (v26 != 255)
      {
        sub_2405B0558(*(v21 + 64), *(v21 + 72), *(v21 + 80), *(v21 + 88), v26);
      }

      break;
    case 4u:
    case 5u:
    case 6u:

      if (*(v21 + 40) != 1)
      {
      }

      break;
    case 7u:
    case 8u:

      break;
    case 9u:
    case 0xAu:

      break;
    case 0xBu:

      break;
    case 0xCu:
    case 0xDu:

      break;
    default:
      break;
  }

  if (*(v13 + v20[11]))
  {
  }

  v27 = v8 + *(v12 + 40);
  if (!v40(v27, 1, v14))
  {

    v28 = v14[5];
    v29 = sub_2407595A4();
    (*(*(v29 - 8) + 8))(v27 + v28, v29);
    v30 = v27 + v14[6];
    sub_240604B08(*v30, *(v30 + 8), *(v30 + 16), *(v30 + 24), *(v30 + 32), *(v30 + 40), *(v30 + 48), *(v30 + 56), *(v30 + 64), *(v30 + 72), *(v30 + 80), *(v30 + 88), *(v30 + 96), *(v30 + 104), *(v30 + 112), *(v30 + 120), *(v30 + 128), *(v30 + 136), *(v30 + 144), *(v30 + 152));

    v31 = (v27 + v14[8]);
    if (*v31 != 1)
    {
    }
  }

  v32 = type metadata accessor for SignInModel(0);
  v33 = (v27 + v32[5]);
  if (v33[1])
  {

    v34 = v33[11];
    if (v34 >> 60 != 15)
    {
      sub_2405BCD98(v33[10], v34);
    }
  }

  if (*(v27 + v32[10] + 8))
  {
  }

  sub_240604C7C(*(v27 + v32[16]), *(v27 + v32[16] + 8), *(v27 + v32[16] + 16));

  v35 = v27 + v32[19];
  sub_240604C90(*v35, *(v35 + 8), *(v35 + 16), *(v35 + 24), *(v35 + 32), *(v35 + 40), *(v35 + 48), *(v35 + 56), *(v35 + 64), *(v35 + 72), *(v35 + 80), *(v35 + 88), *(v35 + 96));
  v36 = (v8 + *(v45 + 20));
  if (v36[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v37 = (v46 + v44 + v41) & ~v41;
  (*(v7 + 8))(v0 + v37, v43);

  return MEMORY[0x2821FE8E8](v0, v37 + v42, v3 | v47 | v41 | 7);
}

uint64_t sub_240585728()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240585760()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_240585844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for MessageUnpacker(0, v5, v6, a4);
  v38 = *(*(v7 - 8) + 80);
  v8 = (v38 + 32) & ~v38;
  v9 = (*(*(v7 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = type metadata accessor for MessagePacker(0, v5, v6, v10);
  v36 = *(*(v37 - 8) + 64);
  v34 = *(*(v37 - 8) + 80);
  v35 = (v9 + v34 + 16) & ~v34;

  v11 = v4 + v8 + *(v7 + 36);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  v13 = *(*(v12 - 1) + 48);
  if (!v13(v11, 1, v12))
  {

    v14 = v12[9];
    v15 = sub_240759DC4();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v11 + v14, 1, v15))
    {
      (*(v16 + 8))(v11 + v14, v15);
    }

    v17 = v12[10];
    v18 = sub_240759E04();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v11 + v17, 1, v18))
    {
      (*(v19 + 8))(v11 + v17, v18);
    }

    v20 = v12[11];
    v21 = sub_240759E54();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v11 + v20, 1, v21))
    {
      (*(v22 + 8))(v11 + v20, v21);
    }
  }

  v23 = v4 + v35 + *(v37 + 36);
  if (!v13(v23, 1, v12))
  {

    v24 = v12[9];
    v25 = sub_240759DC4();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v23 + v24, 1, v25))
    {
      (*(v26 + 8))(v23 + v24, v25);
    }

    v27 = v12[10];
    v28 = sub_240759E04();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v23 + v27, 1, v28))
    {
      (*(v29 + 8))(v23 + v27, v28);
    }

    v30 = v12[11];
    v31 = sub_240759E54();
    v32 = *(v31 - 8);
    if (!(*(v32 + 48))(v23 + v30, 1, v31))
    {
      (*(v32 + 8))(v23 + v30, v31);
    }
  }

  return MEMORY[0x2821FE8E8](v4, v35 + v36, v38 | v34 | 7);
}

uint64_t sub_240585D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MessageSessionTransport(0, *(v4 + 16), *(v4 + 24), a4);
  v32 = *(*(v5 - 8) + 80);
  v30 = *(*(v5 - 8) + 64);
  v31 = (v32 + 32) & ~v32;
  v6 = v4 + v31;

  if (*(v4 + v31 + 32))
  {
  }

  if (*(v6 + 48))
  {
  }

  v7 = v6 + *(v5 + 52);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  v9 = *(*(v8 - 1) + 48);
  if (!v9(v7, 1, v8))
  {

    v10 = v8[9];
    v11 = sub_240759DC4();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v7 + v10, 1, v11))
    {
      (*(v12 + 8))(v7 + v10, v11);
    }

    v13 = v8[10];
    v14 = sub_240759E04();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v7 + v13, 1, v14))
    {
      (*(v15 + 8))(v7 + v13, v14);
    }

    v16 = v8[11];
    v17 = sub_240759E54();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v7 + v16, 1, v17))
    {
      (*(v18 + 8))(v7 + v16, v17);
    }
  }

  v19 = v6 + *(v5 + 56);
  if (!v9(v19, 1, v8))
  {

    v20 = v8[9];
    v21 = sub_240759DC4();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v19 + v20, 1, v21))
    {
      (*(v22 + 8))(v19 + v20, v21);
    }

    v23 = v8[10];
    v24 = sub_240759E04();
    v25 = *(v24 - 8);
    if (!(*(v25 + 48))(v19 + v23, 1, v24))
    {
      (*(v25 + 8))(v19 + v23, v24);
    }

    v26 = v8[11];
    v27 = sub_240759E54();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v19 + v26, 1, v27))
    {
      (*(v28 + 8))(v19 + v26, v27);
    }
  }

  return MEMORY[0x2821FE8E8](v4, v31 + v30, v32 | 7);
}

uint64_t sub_240586244(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71C8, &unk_240762450);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

void *sub_240586300(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71C8, &unk_240762450);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2405863B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = type metadata accessor for MessageSessionTransport(0, v7, v8, a4);
  v11 = *(v9 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = v9;
    v13 = *(v11 + 48);
    v14 = a1;
  }

  else
  {
    v15 = type metadata accessor for MessagePacker(0, v7, v8, v10);
    if (*(*(v15 - 8) + 84) == a2)
    {
      v12 = v15;
      v17 = *(v15 - 8);
      v18 = *(a3 + 36);
    }

    else
    {
      v19 = type metadata accessor for MessageUnpacker(0, v7, v8, v16);
      if (*(*(v19 - 8) + 84) == a2)
      {
        v12 = v19;
        v17 = *(v19 - 8);
        v18 = *(a3 + 40);
      }

      else
      {
        v20 = sub_2407597B4();
        if (*(*(v20 - 8) + 84) != a2)
        {
          v22 = *(a1 + *(a3 + 48));
          if (v22 >= 2)
          {
            return ((v22 + 2147483646) & 0x7FFFFFFF) + 1;
          }

          else
          {
            return 0;
          }
        }

        v12 = v20;
        v17 = *(v20 - 8);
        v18 = *(a3 + 44);
      }
    }

    v13 = *(v17 + 48);
    v14 = a1 + v18;
  }

  return v13(v14, a2, v12);
}

uint64_t sub_240586584(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(a4 + 24);
  v10 = type metadata accessor for MessageSessionTransport(0, v8, v9, a4);
  v12 = *(v10 - 8);
  if (*(v12 + 84) == a3)
  {
    v13 = v10;
    v14 = *(v12 + 56);
    v15 = a1;
  }

  else
  {
    v16 = type metadata accessor for MessagePacker(0, v8, v9, v11);
    if (*(*(v16 - 8) + 84) == a3)
    {
      v13 = v16;
      v18 = *(v16 - 8);
      v19 = *(a4 + 36);
    }

    else
    {
      v20 = type metadata accessor for MessageUnpacker(0, v8, v9, v17);
      if (*(*(v20 - 8) + 84) == a3)
      {
        v13 = v20;
        v18 = *(v20 - 8);
        v19 = *(a4 + 40);
      }

      else
      {
        result = sub_2407597B4();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + *(a4 + 48)) = a2 + 1;
          return result;
        }

        v13 = result;
        v18 = *(result - 8);
        v19 = *(a4 + 44);
      }
    }

    v14 = *(v18 + 56);
    v15 = a1 + v19;
  }

  return v14(v15, a2, a2, v13);
}

uint64_t sub_240586744()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAD90, &unk_240774ED0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2405867D8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240586810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = type metadata accessor for MessageUnpacker(0, v5, v6, a4);
  v39 = *(*(v7 - 8) + 80);
  v8 = (v39 + 48) & ~v39;
  v9 = (((*(*(v7 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = type metadata accessor for MessagePacker(0, v5, v6, v10);
  v37 = *(*(v11 - 8) + 80);
  v38 = v11;
  v36 = (v9 + v37 + 16) & ~v37;
  v35 = *(*(v11 - 8) + 64);
  swift_unknownObjectRelease();

  v12 = v4 + v8 + *(v7 + 36);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  v14 = *(*(v13 - 1) + 48);
  if (!v14(v12, 1, v13))
  {

    v15 = v13[9];
    v16 = sub_240759DC4();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v12 + v15, 1, v16))
    {
      (*(v17 + 8))(v12 + v15, v16);
    }

    v18 = v13[10];
    v19 = sub_240759E04();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v12 + v18, 1, v19))
    {
      (*(v20 + 8))(v12 + v18, v19);
    }

    v21 = v13[11];
    v22 = sub_240759E54();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(v12 + v21, 1, v22))
    {
      (*(v23 + 8))(v12 + v21, v22);
    }
  }

  v24 = v4 + v36 + *(v38 + 36);
  if (!v14(v24, 1, v13))
  {

    v25 = v13[9];
    v26 = sub_240759DC4();
    v27 = *(v26 - 8);
    if (!(*(v27 + 48))(v24 + v25, 1, v26))
    {
      (*(v27 + 8))(v24 + v25, v26);
    }

    v28 = v13[10];
    v29 = sub_240759E04();
    v30 = *(v29 - 8);
    if (!(*(v30 + 48))(v24 + v28, 1, v29))
    {
      (*(v30 + 8))(v24 + v28, v29);
    }

    v31 = v13[11];
    v32 = sub_240759E54();
    v33 = *(v32 - 8);
    if (!(*(v33 + 48))(v24 + v31, 1, v32))
    {
      (*(v33 + 8))(v24 + v31, v32);
    }
  }

  return MEMORY[0x2821FE8E8](v4, ((v35 + v36 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v39 | v37 | 7);
}

uint64_t sub_240586DE8()
{

  if (*(v0 + 96) >= 5uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 105, 7);
}

uint64_t sub_240586E78()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v1 = sub_24075A374();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

__n128 sub_240586F3C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_240586F48()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_240586F8C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240586FCC()
{

  return MEMORY[0x2821FE8E8](v0, 1000, 7);
}

uint64_t sub_24058722C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240587264()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0);
  v46 = *(*(v2 - 8) + 80);
  v44 = *(*(v2 - 8) + 64);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8);
  v3 = *(v47 - 8);
  v42 = *(v3 + 80);
  v43 = *(v3 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v45 = (v46 + 56) & ~v46;
  v4 = v0 + v45 + *(v2 + 32);

  v41 = type metadata accessor for RepairModel(0);
  v5 = v4 + *(v41 + 20);
  sub_240604AB8(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32) | ((*(v5 + 36) | (*(v5 + 38) << 16)) << 32));
  v6 = *(v5 + 88);
  if (v6 <= 0xF9)
  {
    sub_2405AEA70(*(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 80), v6);
  }

  sub_240604AE0(*(v5 + 184), *(v5 + 192), *(v5 + 200), *(v5 + 208));

  sub_240604AE0(*(v5 + 240), *(v5 + 248), *(v5 + 256), *(v5 + 264));

  v7 = *(v5 + 288);
  if (v7 != 1)
  {

    v8 = *(v5 + 304);
    if (v8 >> 60 != 15)
    {
      sub_2405BCD98(*(v5 + 296), v8);
    }
  }

  if (*(v5 + 328))
  {
  }

  v9 = type metadata accessor for SetupModel(0);
  v10 = v5 + *(v9 + 36);
  v11 = type metadata accessor for IdMSAccount(0);
  v12 = (*(v11 - 1) + 48);
  v40 = *v12;
  if (!(*v12)(v10, 1, v11))
  {

    v13 = v1;
    v14 = v11[5];
    v15 = sub_2407595A4();
    v16 = v10 + v14;
    v1 = v13;
    (*(*(v15 - 8) + 8))(v16, v15);
    v17 = v10 + v11[6];
    sub_240604B08(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24), *(v17 + 32), *(v17 + 40), *(v17 + 48), *(v17 + 56), *(v17 + 64), *(v17 + 72), *(v17 + 80), *(v17 + 88), *(v17 + 96), *(v17 + 104), *(v17 + 112), *(v17 + 120), *(v17 + 128), *(v17 + 136), *(v17 + 144), *(v17 + 152));

    v18 = (v10 + v11[8]);
    if (*v18 != 1)
    {
    }
  }

  v19 = type metadata accessor for AuthenticationModel(0);
  if (*(v10 + v19[5] + 8))
  {
  }

  v20 = v10 + v19[10];
  type metadata accessor for AuthenticationModel.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      v39 = v1;

      v21 = v11[5];
      v22 = sub_2407595A4();
      (*(*(v22 - 8) + 8))(v20 + v21, v22);
      v23 = v20 + v11[6];
      sub_240604B08(*v23, *(v23 + 8), *(v23 + 16), *(v23 + 24), *(v23 + 32), *(v23 + 40), *(v23 + 48), *(v23 + 56), *(v23 + 64), *(v23 + 72), *(v23 + 80), *(v23 + 88), *(v23 + 96), *(v23 + 104), *(v23 + 112), *(v23 + 120), *(v23 + 128), *(v23 + 136), *(v23 + 144), *(v23 + 152));

      v24 = (v20 + v11[8]);
      if (*v24 != 1)
      {
      }

      v1 = v39;
      break;
    case 2u:
    case 3u:

      v25 = *(v20 + 96);
      if (v25 != 255)
      {
        sub_2405B0558(*(v20 + 64), *(v20 + 72), *(v20 + 80), *(v20 + 88), v25);
      }

      break;
    case 4u:
    case 5u:
    case 6u:

      if (*(v20 + 40) != 1)
      {
      }

      break;
    case 7u:
    case 8u:

      break;
    case 9u:
    case 0xAu:

      break;
    case 0xBu:

      break;
    case 0xCu:
    case 0xDu:

      break;
    default:
      break;
  }

  if (*(v10 + v19[11]))
  {
  }

  v26 = v5 + *(v9 + 40);
  if (!v40(v26, 1, v11))
  {

    v27 = v11[5];
    v28 = sub_2407595A4();
    (*(*(v28 - 8) + 8))(v26 + v27, v28);
    v29 = v26 + v11[6];
    sub_240604B08(*v29, *(v29 + 8), *(v29 + 16), *(v29 + 24), *(v29 + 32), *(v29 + 40), *(v29 + 48), *(v29 + 56), *(v29 + 64), *(v29 + 72), *(v29 + 80), *(v29 + 88), *(v29 + 96), *(v29 + 104), *(v29 + 112), *(v29 + 120), *(v29 + 128), *(v29 + 136), *(v29 + 144), *(v29 + 152));

    v30 = (v26 + v11[8]);
    if (*v30 != 1)
    {
    }
  }

  v31 = type metadata accessor for SignInModel(0);
  v32 = (v26 + v31[5]);
  if (v32[1])
  {

    v33 = v32[11];
    if (v33 >> 60 != 15)
    {
      sub_2405BCD98(v32[10], v33);
    }
  }

  if (*(v26 + v31[10] + 8))
  {
  }

  sub_240604C7C(*(v26 + v31[16]), *(v26 + v31[16] + 8), *(v26 + v31[16] + 16));

  v34 = v26 + v31[19];
  sub_240604C90(*v34, *(v34 + 8), *(v34 + 16), *(v34 + 24), *(v34 + 32), *(v34 + 40), *(v34 + 48), *(v34 + 56), *(v34 + 64), *(v34 + 72), *(v34 + 80), *(v34 + 88), *(v34 + 96));
  v35 = v4 + *(v41 + 24);
  v36 = *(v35 + 40);
  if (v36 <= 0xFA)
  {
    sub_2405EE680(*v35, *(v35 + 8), *(v35 + 16), *(v35 + 24), *(v35 + 32), v36);
  }

  v37 = (v45 + v44 + v42) & ~v42;

  (*(v3 + 8))(v1 + v37, v47);

  return MEMORY[0x2821FE8E8](v1, v37 + v43, v46 | v42 | 7);
}

uint64_t sub_240587B60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0);
  v44 = *(*(v1 - 8) + 80);
  v42 = *(*(v1 - 8) + 64);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8);
  v2 = *(v45 - 8);
  v40 = *(v2 + 80);
  v41 = *(v2 + 64);
  v46 = v0;
  v43 = (v44 + 16) & ~v44;
  v3 = v0 + v43 + *(v1 + 32);

  v39 = type metadata accessor for RepairModel(0);
  v4 = v3 + *(v39 + 20);
  sub_240604AB8(*(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32) | ((*(v4 + 36) | (*(v4 + 38) << 16)) << 32));
  v5 = *(v4 + 88);
  if (v5 <= 0xF9)
  {
    sub_2405AEA70(*(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 80), v5);
  }

  sub_240604AE0(*(v4 + 184), *(v4 + 192), *(v4 + 200), *(v4 + 208));

  sub_240604AE0(*(v4 + 240), *(v4 + 248), *(v4 + 256), *(v4 + 264));

  v6 = *(v4 + 288);
  if (v6 != 1)
  {

    v7 = *(v4 + 304);
    if (v7 >> 60 != 15)
    {
      sub_2405BCD98(*(v4 + 296), v7);
    }
  }

  if (*(v4 + 328))
  {
  }

  v8 = type metadata accessor for SetupModel(0);
  v9 = v4 + *(v8 + 36);
  v10 = type metadata accessor for IdMSAccount(0);
  v11 = *(*(v10 - 1) + 48);
  if (!v11(v9, 1, v10))
  {

    v12 = v11;
    v13 = v10[5];
    v14 = sub_2407595A4();
    v15 = v9 + v13;
    v11 = v12;
    (*(*(v14 - 8) + 8))(v15, v14);
    v16 = v9 + v10[6];
    sub_240604B08(*v16, *(v16 + 8), *(v16 + 16), *(v16 + 24), *(v16 + 32), *(v16 + 40), *(v16 + 48), *(v16 + 56), *(v16 + 64), *(v16 + 72), *(v16 + 80), *(v16 + 88), *(v16 + 96), *(v16 + 104), *(v16 + 112), *(v16 + 120), *(v16 + 128), *(v16 + 136), *(v16 + 144), *(v16 + 152));

    v17 = (v9 + v10[8]);
    if (*v17 != 1)
    {
    }
  }

  v18 = type metadata accessor for AuthenticationModel(0);
  if (*(v9 + v18[5] + 8))
  {
  }

  v19 = v9 + v18[10];
  type metadata accessor for AuthenticationModel.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      v38 = v11;

      v20 = v10[5];
      v21 = sub_2407595A4();
      (*(*(v21 - 8) + 8))(v19 + v20, v21);
      v22 = v19 + v10[6];
      sub_240604B08(*v22, *(v22 + 8), *(v22 + 16), *(v22 + 24), *(v22 + 32), *(v22 + 40), *(v22 + 48), *(v22 + 56), *(v22 + 64), *(v22 + 72), *(v22 + 80), *(v22 + 88), *(v22 + 96), *(v22 + 104), *(v22 + 112), *(v22 + 120), *(v22 + 128), *(v22 + 136), *(v22 + 144), *(v22 + 152));

      v23 = (v19 + v10[8]);
      if (*v23 != 1)
      {
      }

      v11 = v38;
      break;
    case 2u:
    case 3u:

      v24 = *(v19 + 96);
      if (v24 != 255)
      {
        sub_2405B0558(*(v19 + 64), *(v19 + 72), *(v19 + 80), *(v19 + 88), v24);
      }

      break;
    case 4u:
    case 5u:
    case 6u:

      if (*(v19 + 40) != 1)
      {
      }

      break;
    case 7u:
    case 8u:

      break;
    case 9u:
    case 0xAu:

      break;
    case 0xBu:

      break;
    case 0xCu:
    case 0xDu:

      break;
    default:
      break;
  }

  if (*(v9 + v18[11]))
  {
  }

  v25 = v4 + *(v8 + 40);
  if (!v11(v25, 1, v10))
  {

    v26 = v10[5];
    v27 = sub_2407595A4();
    (*(*(v27 - 8) + 8))(v25 + v26, v27);
    v28 = v25 + v10[6];
    sub_240604B08(*v28, *(v28 + 8), *(v28 + 16), *(v28 + 24), *(v28 + 32), *(v28 + 40), *(v28 + 48), *(v28 + 56), *(v28 + 64), *(v28 + 72), *(v28 + 80), *(v28 + 88), *(v28 + 96), *(v28 + 104), *(v28 + 112), *(v28 + 120), *(v28 + 128), *(v28 + 136), *(v28 + 144), *(v28 + 152));

    v29 = (v25 + v10[8]);
    if (*v29 != 1)
    {
    }
  }

  v30 = type metadata accessor for SignInModel(0);
  v31 = (v25 + v30[5]);
  if (v31[1])
  {

    v32 = v31[11];
    if (v32 >> 60 != 15)
    {
      sub_2405BCD98(v31[10], v32);
    }
  }

  if (*(v25 + v30[10] + 8))
  {
  }

  sub_240604C7C(*(v25 + v30[16]), *(v25 + v30[16] + 8), *(v25 + v30[16] + 16));

  v33 = v25 + v30[19];
  sub_240604C90(*v33, *(v33 + 8), *(v33 + 16), *(v33 + 24), *(v33 + 32), *(v33 + 40), *(v33 + 48), *(v33 + 56), *(v33 + 64), *(v33 + 72), *(v33 + 80), *(v33 + 88), *(v33 + 96));
  v34 = v3 + *(v39 + 24);
  v35 = *(v34 + 40);
  if (v35 <= 0xFA)
  {
    sub_2405EE680(*v34, *(v34 + 8), *(v34 + 16), *(v34 + 24), *(v34 + 32), v35);
  }

  v36 = (v43 + v42 + v40) & ~v40;

  (*(v2 + 8))(v46 + v36, v45);

  return MEMORY[0x2821FE8E8](v46, v36 + v41, v44 | v40 | 7);
}

uint64_t sub_24058843C()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2405884A0()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 40))
  {

    if (*(v0 + 128))
    {
    }
  }

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_240588538()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240588570()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC3A0, &qword_240776B10) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v45 = type metadata accessor for RepairContext(0);
  v47 = *(*(v45 - 8) + 80);
  v5 = (v3 + v4 + v47) & ~v47;
  v44 = *(*(v45 - 8) + 64);

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8);
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = v0 + v5;

  v43 = type metadata accessor for RepairModel(0);
  v9 = v0 + v5 + *(v43 + 20);
  sub_240604AB8(*(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32) | ((*(v9 + 36) | (*(v9 + 38) << 16)) << 32));
  v10 = *(v9 + 88);
  if (v10 <= 0xF9)
  {
    sub_2405AEA70(*(v9 + 40), *(v9 + 48), *(v9 + 56), *(v9 + 64), *(v9 + 72), *(v9 + 80), v10);
  }

  sub_240604AE0(*(v9 + 184), *(v9 + 192), *(v9 + 200), *(v9 + 208));

  sub_240604AE0(*(v9 + 240), *(v9 + 248), *(v9 + 256), *(v9 + 264));

  v11 = *(v9 + 288);
  if (v11 != 1)
  {

    v12 = *(v9 + 304);
    if (v12 >> 60 != 15)
    {
      sub_2405BCD98(*(v9 + 296), v12);
    }
  }

  v46 = v5;
  if (*(v9 + 328))
  {
  }

  v13 = type metadata accessor for SetupModel(0);
  v14 = v9 + *(v13 + 36);
  v15 = type metadata accessor for IdMSAccount(0);
  v16 = (*(v15 - 1) + 48);
  v42 = *v16;
  if (!(*v16)(v14, 1, v15))
  {

    v17 = v15[5];
    v18 = sub_2407595A4();
    (*(*(v18 - 8) + 8))(v14 + v17, v18);
    v19 = v14 + v15[6];
    sub_240604B08(*v19, *(v19 + 8), *(v19 + 16), *(v19 + 24), *(v19 + 32), *(v19 + 40), *(v19 + 48), *(v19 + 56), *(v19 + 64), *(v19 + 72), *(v19 + 80), *(v19 + 88), *(v19 + 96), *(v19 + 104), *(v19 + 112), *(v19 + 120), *(v19 + 128), *(v19 + 136), *(v19 + 144), *(v19 + 152));

    v20 = (v14 + v15[8]);
    if (*v20 != 1)
    {
    }
  }

  v21 = type metadata accessor for AuthenticationModel(0);
  if (*(v14 + v21[5] + 8))
  {
  }

  v22 = v14 + v21[10];
  type metadata accessor for AuthenticationModel.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      v41 = v2;

      v23 = v15[5];
      v24 = sub_2407595A4();
      (*(*(v24 - 8) + 8))(v22 + v23, v24);
      v25 = v22 + v15[6];
      sub_240604B08(*v25, *(v25 + 8), *(v25 + 16), *(v25 + 24), *(v25 + 32), *(v25 + 40), *(v25 + 48), *(v25 + 56), *(v25 + 64), *(v25 + 72), *(v25 + 80), *(v25 + 88), *(v25 + 96), *(v25 + 104), *(v25 + 112), *(v25 + 120), *(v25 + 128), *(v25 + 136), *(v25 + 144), *(v25 + 152));

      v26 = (v22 + v15[8]);
      if (*v26 != 1)
      {
      }

      v2 = v41;
      break;
    case 2u:
    case 3u:

      v27 = *(v22 + 96);
      if (v27 != 255)
      {
        sub_2405B0558(*(v22 + 64), *(v22 + 72), *(v22 + 80), *(v22 + 88), v27);
      }

      break;
    case 4u:
    case 5u:
    case 6u:

      if (*(v22 + 40) != 1)
      {
      }

      break;
    case 7u:
    case 8u:

      break;
    case 9u:
    case 0xAu:

      break;
    case 0xBu:

      break;
    case 0xCu:
    case 0xDu:

      break;
    default:
      break;
  }

  if (*(v14 + v21[11]))
  {
  }

  v28 = v9 + *(v13 + 40);
  if (!v42(v28, 1, v15))
  {

    v29 = v15[5];
    v30 = sub_2407595A4();
    (*(*(v30 - 8) + 8))(v28 + v29, v30);
    v31 = v28 + v15[6];
    sub_240604B08(*v31, *(v31 + 8), *(v31 + 16), *(v31 + 24), *(v31 + 32), *(v31 + 40), *(v31 + 48), *(v31 + 56), *(v31 + 64), *(v31 + 72), *(v31 + 80), *(v31 + 88), *(v31 + 96), *(v31 + 104), *(v31 + 112), *(v31 + 120), *(v31 + 128), *(v31 + 136), *(v31 + 144), *(v31 + 152));

    v32 = (v28 + v15[8]);
    if (*v32 != 1)
    {
    }
  }

  v33 = type metadata accessor for SignInModel(0);
  v34 = (v28 + v33[5]);
  if (v34[1])
  {

    v35 = v34[11];
    if (v35 >> 60 != 15)
    {
      sub_2405BCD98(v34[10], v35);
    }
  }

  if (*(v28 + v33[10] + 8))
  {
  }

  sub_240604C7C(*(v28 + v33[16]), *(v28 + v33[16] + 8), *(v28 + v33[16] + 16));

  v36 = v28 + v33[19];
  sub_240604C90(*v36, *(v36 + 8), *(v36 + 16), *(v36 + 24), *(v36 + 32), *(v36 + 40), *(v36 + 48), *(v36 + 56), *(v36 + 64), *(v36 + 72), *(v36 + 80), *(v36 + 88), *(v36 + 96));
  v37 = v8 + *(v43 + 24);
  v38 = *(v37 + 40);
  if (v38 <= 0xFA)
  {
    sub_2405EE680(*v37, *(v37 + 8), *(v37 + 16), *(v37 + 24), *(v37 + 32), v38);
  }

  v39 = (v8 + *(v45 + 20));
  if (v39[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  return MEMORY[0x2821FE8E8](v0, v46 + v44, v2 | v47 | 7);
}

uint64_t sub_240588E88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC3B0, &qword_240776B20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_240588F70()
{
  v1 = sub_240759C44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v48 = type metadata accessor for RepairContext(0);
  v50 = *(*(v48 - 8) + 80);
  v47 = *(*(v48 - 8) + 64);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8);
  v45 = *(v46 - 8);
  v43 = *(v45 + 80);
  v44 = *(v45 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v49 = (v4 + v5 + v50) & ~v50;
  v6 = v0 + v49;

  v42 = type metadata accessor for RepairModel(0);
  v7 = v0 + v49 + *(v42 + 20);
  sub_240604AB8(*(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32) | ((*(v7 + 36) | (*(v7 + 38) << 16)) << 32));
  v8 = *(v7 + 88);
  if (v8 <= 0xF9)
  {
    sub_2405AEA70(*(v7 + 40), *(v7 + 48), *(v7 + 56), *(v7 + 64), *(v7 + 72), *(v7 + 80), v8);
  }

  sub_240604AE0(*(v7 + 184), *(v7 + 192), *(v7 + 200), *(v7 + 208));

  sub_240604AE0(*(v7 + 240), *(v7 + 248), *(v7 + 256), *(v7 + 264));

  v9 = *(v7 + 288);
  if (v9 != 1)
  {

    v10 = *(v7 + 304);
    if (v10 >> 60 != 15)
    {
      sub_2405BCD98(*(v7 + 296), v10);
    }
  }

  if (*(v7 + 328))
  {
  }

  v11 = type metadata accessor for SetupModel(0);
  v12 = v7 + *(v11 + 36);
  v13 = type metadata accessor for IdMSAccount(0);
  v14 = (*(v13 - 1) + 48);
  v41 = *v14;
  if (!(*v14)(v12, 1, v13))
  {

    v15 = v13[5];
    v16 = sub_2407595A4();
    (*(*(v16 - 8) + 8))(v12 + v15, v16);
    v17 = v12 + v13[6];
    sub_240604B08(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24), *(v17 + 32), *(v17 + 40), *(v17 + 48), *(v17 + 56), *(v17 + 64), *(v17 + 72), *(v17 + 80), *(v17 + 88), *(v17 + 96), *(v17 + 104), *(v17 + 112), *(v17 + 120), *(v17 + 128), *(v17 + 136), *(v17 + 144), *(v17 + 152));

    v18 = (v12 + v13[8]);
    if (*v18 != 1)
    {
    }
  }

  v19 = type metadata accessor for AuthenticationModel(0);
  if (*(v12 + v19[5] + 8))
  {
  }

  v20 = v12 + v19[10];
  type metadata accessor for AuthenticationModel.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      v40 = v3;

      v21 = v13[5];
      v22 = sub_2407595A4();
      (*(*(v22 - 8) + 8))(v20 + v21, v22);
      v23 = v20 + v13[6];
      sub_240604B08(*v23, *(v23 + 8), *(v23 + 16), *(v23 + 24), *(v23 + 32), *(v23 + 40), *(v23 + 48), *(v23 + 56), *(v23 + 64), *(v23 + 72), *(v23 + 80), *(v23 + 88), *(v23 + 96), *(v23 + 104), *(v23 + 112), *(v23 + 120), *(v23 + 128), *(v23 + 136), *(v23 + 144), *(v23 + 152));

      v24 = (v20 + v13[8]);
      if (*v24 != 1)
      {
      }

      v3 = v40;
      break;
    case 2u:
    case 3u:

      v25 = *(v20 + 96);
      if (v25 != 255)
      {
        sub_2405B0558(*(v20 + 64), *(v20 + 72), *(v20 + 80), *(v20 + 88), v25);
      }

      break;
    case 4u:
    case 5u:
    case 6u:

      if (*(v20 + 40) != 1)
      {
      }

      break;
    case 7u:
    case 8u:

      break;
    case 9u:
    case 0xAu:

      break;
    case 0xBu:

      break;
    case 0xCu:
    case 0xDu:

      break;
    default:
      break;
  }

  if (*(v12 + v19[11]))
  {
  }

  v26 = v7 + *(v11 + 40);
  if (!v41(v26, 1, v13))
  {

    v27 = v13[5];
    v28 = sub_2407595A4();
    (*(*(v28 - 8) + 8))(v26 + v27, v28);
    v29 = v26 + v13[6];
    sub_240604B08(*v29, *(v29 + 8), *(v29 + 16), *(v29 + 24), *(v29 + 32), *(v29 + 40), *(v29 + 48), *(v29 + 56), *(v29 + 64), *(v29 + 72), *(v29 + 80), *(v29 + 88), *(v29 + 96), *(v29 + 104), *(v29 + 112), *(v29 + 120), *(v29 + 128), *(v29 + 136), *(v29 + 144), *(v29 + 152));

    v30 = (v26 + v13[8]);
    if (*v30 != 1)
    {
    }
  }

  v31 = type metadata accessor for SignInModel(0);
  v32 = (v26 + v31[5]);
  if (v32[1])
  {

    v33 = v32[11];
    if (v33 >> 60 != 15)
    {
      sub_2405BCD98(v32[10], v33);
    }
  }

  if (*(v26 + v31[10] + 8))
  {
  }

  sub_240604C7C(*(v26 + v31[16]), *(v26 + v31[16] + 8), *(v26 + v31[16] + 16));

  v34 = v26 + v31[19];
  sub_240604C90(*v34, *(v34 + 8), *(v34 + 16), *(v34 + 24), *(v34 + 32), *(v34 + 40), *(v34 + 48), *(v34 + 56), *(v34 + 64), *(v34 + 72), *(v34 + 80), *(v34 + 88), *(v34 + 96));
  v35 = v6 + *(v42 + 24);
  v36 = *(v35 + 40);
  if (v36 <= 0xFA)
  {
    sub_2405EE680(*v35, *(v35 + 8), *(v35 + 16), *(v35 + 24), *(v35 + 32), v36);
  }

  v37 = (v6 + *(v48 + 20));
  if (v37[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  v38 = (v49 + v47 + v43) & ~v43;
  (*(v45 + 8))(v0 + v38, v46);

  return MEMORY[0x2821FE8E8](v0, v38 + v44, v3 | v50 | v43 | 7);
}

uint64_t sub_2405898D4()
{
  v1 = *v0;
  v2 = 0x6B616873646E6168;
  v3 = 0x69746E6568747561;
  v4 = 0x726961706572;
  if (v1 != 4)
  {
    v4 = 0x617267694D656761;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E496E676973;
  if (v1 != 1)
  {
    v5 = 0x6574746573696E61;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24058999C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2406E0260(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2405899C4()
{
  sub_2406DCA8C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_2406DCA8C(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

id sub_240589A6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___AISConfigurationStore_cachedChildCutOffResponse;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_240589AD8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240589B5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_240589BA4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_240589C40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_completedSetup;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_240589C98(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_completedSetup;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_240589D64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_flowType;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_240589DC0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_flowType;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_240589E20@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_name);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

id sub_240589E7C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_240589E88(id *a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a1;

  *a2 = v3;
}

id sub_240589EC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 56);
  *a2 = v2;
  return v2;
}

void sub_240589ED0(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 56);
  v5 = *a1;

  *(a2 + 56) = v3;
}

id sub_240589F54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SignInModel(0) + 52));
  *a2 = v3;

  return v3;
}

uint64_t sub_240589FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24058A068(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24058A12C()
{
  v1 = 0x6C61636974697263;
  if (*v0 == 2)
  {
    v1 = 0x2932282068676968;
  }

  v2 = 0x29302820776F6CLL;
  if (*v0)
  {
    v2 = 0x28206D756964656DLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_24058A1C4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24058A210()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24058A25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    v11 = (v10 >> 24) & 0xFFFF0000 | WORD1(v10);
    if (v11 > 0x80000000)
    {
      return -v11;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v12 = type metadata accessor for AgeMigrationModel.State(0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_24058A398(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    v11 = a1 + *(a4 + 20);
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = (-a2 << 24) & 0xFFFF0000000000 | (-a2 << 16);
    *(v11 + 30) = 0;
    *(v11 + 28) = 0;
    *(v11 + 24) = 0;
  }

  else
  {
    v12 = type metadata accessor for AgeMigrationModel.State(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_24058A4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_240759744();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24058A594(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_240759744();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24058A648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_240759744();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24058A6F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_240759744();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24058A79C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_240712660(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24058A7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SetupModel(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24058A87C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SetupModel(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 sub_24058A988(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24058A9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = (*(a1 + 24) >> 24) & 0xFFFF0000 | WORD1(*(a1 + 24));
    if (v4 > 0x80000000)
    {
      return -v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for AuthenticationModel(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SignInModel(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24058AAD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = (-a2 << 24) & 0xFFFF0000000000 | (-a2 << 16);
    *(result + 38) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
  }

  else
  {
    v8 = type metadata accessor for AuthenticationModel(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SignInModel(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24058AC1C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24058AC54()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24058AC94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BA650, &qword_24076ED10);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 6)
  {
    return v5 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24058AD0C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 5);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BA650, &qword_24076ED10);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24058AD9C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24058ADDC()
{

  if (v0[5])
  {

    if (v0[9])
    {
    }
  }

  if (v0[14])
  {
  }

  return MEMORY[0x2821FE8E8](v0, 192, 7);
}

uint64_t sub_24058AE8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double sub_24058AEC4@<D0>(_OWORD *a1@<X8>)
{
  sub_2407598E4();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_24058AF64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240783158;
  a2[1] = v5;
}

uint64_t sub_24058AFD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058AFE0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_24058B024@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240783138;
  a2[1] = v5;
}

uint64_t sub_24058B094@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058B0A0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 48) = v4;
  *(a2 + 56) = v3;
  return result;
}

uint64_t sub_24058B0E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 64);
  v3 = *(a1 + 72);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240783118;
  a2[1] = v5;
}

uint64_t sub_24058B154@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058B160(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 80) = v4;
  *(a2 + 88) = v3;
  return result;
}

uint64_t sub_24058B1A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 96);
  v3 = *(a1 + 104);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_2407830F8;
  a2[1] = v5;
}

uint64_t sub_24058B214@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 112);
  v3 = *(a1 + 120);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_2407830E8;
  a2[1] = v5;
}

uint64_t sub_24058B284@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 128);
  v3 = *(a1 + 136);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_2407830D8;
  a2[1] = v5;
}

uint64_t sub_24058B2F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 144);
  v3 = *(a1 + 152);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_2407830B8;
  a2[1] = v5;
}

uint64_t sub_24058B364@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 168);
  v3 = *(a1 + 176);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240783098;
  a2[1] = v5;
}

uint64_t sub_24058B3D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 184);
  v3 = *(a1 + 192);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058B3E0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 184) = v4;
  *(a2 + 192) = v3;
  return result;
}

uint64_t sub_24058B424@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 200);
  v3 = *(a1 + 208);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240783078;
  a2[1] = v5;
}

uint64_t sub_24058B494@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 216);
  v3 = *(a1 + 224);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058B4A0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 216) = v4;
  *(a2 + 224) = v3;
  return result;
}

uint64_t sub_24058B4E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 232);
  v3 = *(a1 + 240);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240783058;
  a2[1] = v5;
}

uint64_t sub_24058B554@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 248);
  v3 = *(a1 + 256);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240783048;
  a2[1] = v5;
}

uint64_t sub_24058B5C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 264);
  v3 = *(a1 + 272);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058B5D0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 264) = v4;
  *(a2 + 272) = v3;
  return result;
}

uint64_t sub_24058B614@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 280);
  v3 = *(a1 + 288);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240783028;
  a2[1] = v5;
}

uint64_t sub_24058B684@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 296);
  v3 = *(a1 + 304);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240783018;
  a2[1] = v5;
}

uint64_t sub_24058B6F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 312);
  v3 = *(a1 + 320);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058B700(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 312) = v4;
  *(a2 + 320) = v3;
  return result;
}

uint64_t sub_24058B744@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 328);
  v3 = *(a1 + 336);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240782FF8;
  a2[1] = v5;
}

uint64_t sub_24058B7B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 344);
  v3 = *(a1 + 352);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240782FE8;
  a2[1] = v5;
}

uint64_t sub_24058B824@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 360);
  v3 = *(a1 + 368);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240782FD8;
  a2[1] = v5;
}

uint64_t sub_24058B894@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 376);
  v3 = *(a1 + 384);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240782FC8;
  a2[1] = v5;
}

uint64_t sub_24058B904@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 392);
  v3 = *(a1 + 400);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240782FB8;
  a2[1] = v5;
}

uint64_t sub_24058B974@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 408);
  v3 = *(a1 + 416);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240782FA8;
  a2[1] = v5;
}

uint64_t sub_24058B9E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 424);
  v3 = *(a1 + 432);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058B9F0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 424) = v4;
  *(a2 + 432) = v3;
  return result;
}

uint64_t sub_24058BA34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 440);
  v3 = *(a1 + 448);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240782F88;
  a2[1] = v5;
}

uint64_t sub_24058BAA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 456);
  v3 = *(a1 + 464);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058BAB0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 456) = v4;
  *(a2 + 464) = v3;
  return result;
}

uint64_t sub_24058BAF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 472);
  v3 = *(a1 + 480);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240782F68;
  a2[1] = v5;
}

uint64_t sub_24058BB64@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 488);
  v3 = *(a1 + 496);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058BB70(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 488) = v4;
  *(a2 + 496) = v3;
  return result;
}

uint64_t sub_24058BBB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 504);
  v3 = *(a1 + 512);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_240782F48;
  a2[1] = v5;
}

uint64_t sub_24058BC24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 520);
  v3 = *(a1 + 528);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058BC34(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 520) = v4;
  *(a2 + 528) = v3;
  return result;
}

uint64_t sub_24058BC7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 536);
  v4 = *(a1 + 544);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782F28;
  a2[1] = v5;
}

uint64_t sub_24058BCF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 552);
  v3 = *(a1 + 560);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058BD00(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 552) = v4;
  *(a2 + 560) = v3;
  return result;
}

uint64_t sub_24058BD48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 568);
  v4 = *(a1 + 576);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782F08;
  a2[1] = v5;
}

uint64_t sub_24058BDBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 584);
  v3 = *(a1 + 592);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058BDCC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 584) = v4;
  *(a2 + 592) = v3;
  return result;
}

uint64_t sub_24058BE14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 600);
  v4 = *(a1 + 608);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782EE8;
  a2[1] = v5;
}

uint64_t sub_24058BE88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 616);
  v3 = *(a1 + 624);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058BE98(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 616) = v4;
  *(a2 + 624) = v3;
  return result;
}

uint64_t sub_24058BEE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 632);
  v4 = *(a1 + 640);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782EC8;
  a2[1] = v5;
}

uint64_t sub_24058BF54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 648);
  v3 = *(a1 + 656);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058BF64(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 648) = v4;
  *(a2 + 656) = v3;
  return result;
}

uint64_t sub_24058BFAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 664);
  v4 = *(a1 + 672);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782EA8;
  a2[1] = v5;
}

uint64_t sub_24058C020@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 680);
  v3 = *(a1 + 688);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058C030(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 680) = v4;
  *(a2 + 688) = v3;
  return result;
}

uint64_t sub_24058C078@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 696);
  v4 = *(a1 + 704);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782E88;
  a2[1] = v5;
}

uint64_t sub_24058C0EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 712);
  v4 = *(a1 + 720);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782E78;
  a2[1] = v5;
}

uint64_t sub_24058C160@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 728);
  v3 = *(a1 + 736);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058C170(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 728) = v4;
  *(a2 + 736) = v3;
  return result;
}

uint64_t sub_24058C1B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 744);
  v4 = *(a1 + 752);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782E58;
  a2[1] = v5;
}

uint64_t sub_24058C22C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 760);
  v4 = *(a1 + 768);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782E48;
  a2[1] = v5;
}

uint64_t sub_24058C2A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 776);
  v4 = *(a1 + 784);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782E38;
  a2[1] = v5;
}

uint64_t sub_24058C314@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 792);
  v3 = *(a1 + 800);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058C324(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 792) = v4;
  *(a2 + 800) = v3;
  return result;
}

uint64_t sub_24058C36C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 808);
  v4 = *(a1 + 816);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782E18;
  a2[1] = v5;
}

uint64_t sub_24058C3E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 824);
  v4 = *(a1 + 832);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782E08;
  a2[1] = v5;
}

uint64_t sub_24058C454@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 840);
  v4 = *(a1 + 848);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782DE8;
  a2[1] = v5;
}

uint64_t sub_24058C4C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 856);
  v4 = *(a1 + 864);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782DC8;
  a2[1] = v5;
}

uint64_t sub_24058C53C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 872);
  v3 = *(a1 + 880);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24058C54C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 872) = v4;
  *(a2 + 880) = v3;
  return result;
}

uint64_t sub_24058C594@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 888);
  v4 = *(a1 + 896);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = &unk_240782DA8;
  a2[1] = v5;
}

uint64_t sub_24058C608()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24058C824()
{
  sub_2405AEA70(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  sub_2405AEA70(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));

  return MEMORY[0x2821FE8E8](v0, 121, 7);
}

uint64_t sub_24058C87C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_name);

  return v1;
}

uint64_t sub_24058C8BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24075A9B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24058C928(uint64_t a1, uint64_t a2)
{
  v4 = sub_24075A9B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24058C9C0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24058C9E4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2405BCD98(result, a2);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup11IdMSAccountV10DeviceInfoVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24058CA60(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t static Result<>.catching<A>(_:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v8 = (a2 + *a2);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_24058E2A0;

  return v8(a1);
}

uint64_t sub_24058E2A0()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_24058E44C;
  }

  else
  {
    v2 = sub_24058E3B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24058E3B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24075AEE4();
  swift_storeEnumTagMultiPayload();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24058E44C()
{
  **(v0 + 16) = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24075AEE4();
  swift_storeEnumTagMultiPayload();
  v1 = *(v0 + 8);

  return v1();
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24058E5E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24058E604(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_24058E660(uint64_t a1, int a2)
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

uint64_t sub_24058E680(uint64_t result, int a2, int a3)
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

uint64_t sub_24058E6E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
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
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_24058E750()
{
  v1 = *v0;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v1);
  return sub_24075AED4();
}

uint64_t sub_24058E7C4(uint64_t a1)
{
  v2 = *v1;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v2);
  return sub_24075AED4();
}

void *sub_24058E808@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_24058E85C(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_24058E88C@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_24058E8B8@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t sub_24058E990()
{
  sub_24075AE64();
  sub_24075AE94();
  return sub_24075AED4();
}

uint64_t sub_24058EA04(uint64_t a1)
{
  sub_24075AE64();
  sub_24075AE94();
  return sub_24075AED4();
}

_DWORD *sub_24058EA48@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_24058EA64()
{
  v0 = sub_24075A0B4();
  v1 = MEMORY[0x245CC5EC0](v0);

  return v1;
}

uint64_t sub_24058EAA0(uint64_t a1)
{
  sub_24075A0B4();
  sub_24075A114();
}

uint64_t sub_24058EAF4(uint64_t a1)
{
  sub_24075A0B4();
  sub_24075AE64();
  sub_24075A114();
  v1 = sub_24075AED4();

  return v1;
}

uint64_t sub_24058EB68(uint64_t a1, id *a2)
{
  result = sub_24075A094();
  *a2 = 0;
  return result;
}

uint64_t sub_24058EBE0(uint64_t a1, id *a2)
{
  v3 = sub_24075A0A4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24058EC60@<X0>(uint64_t *a2@<X8>)
{
  sub_24075A0B4();
  v3 = sub_24075A084();

  *a2 = v3;
  return result;
}

uint64_t sub_24058ECA4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_24075A084();

  *a2 = v3;
  return result;
}

uint64_t sub_24058ECEC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_24058F2E0(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_24058ED38(void *a1, uint64_t *a2)
{
  v2 = sub_24075A0B4();
  v4 = v3;
  if (v2 == sub_24075A0B4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_24075ACF4();
  }

  return v7 & 1;
}

uint64_t sub_24058EDC0(uint64_t a1)
{
  v2 = sub_24058EF0C(&qword_280FAD720, type metadata accessor for AIDAServiceType, &unk_24075D60C);
  v3 = sub_24058EF0C(&qword_27E4B6300, type metadata accessor for AIDAServiceType, &unk_24075D124);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24058EF0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24058EF9C(uint64_t a1)
{
  v2 = sub_24058EF0C(&qword_27E4B62E8, type metadata accessor for AATermsEntry, &unk_24075D31C);
  v3 = sub_24058EF0C(&unk_27E4B62F0, type metadata accessor for AATermsEntry, &unk_24075D2C4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24058F2E0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

void sub_24058F32C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

id FindMyRequest.account.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *FindMyRequest.error.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t (*FindMyRequest.error.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24058F504();
  return sub_24058F4B8;
}

void sub_24058F4B8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t FindMyRequest.init(avoidUI:account:success:error:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 8) = result;
  *a5 = a2;
  *(a5 + 9) = a3;
  *(a5 + 16) = a4;
  return result;
}

uint64_t _s12AppleIDSetup19AuthenticationModelV13BindableStateV8SubstateO9hashValueSivg_0()
{
  v1 = *v0;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v1);
  return sub_24075AED4();
}

uint64_t sub_24058F584(uint64_t a1)
{
  v2 = *v1;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v2);
  return sub_24075AED4();
}

uint64_t sub_24058F5C8()
{
  v1 = 0x746E756F636361;
  v2 = 0x73736563637573;
  if (*v0 != 2)
  {
    v2 = 0x726F727265;
  }

  if (*v0)
  {
    v1 = 0x495564696F7661;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24058F640@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_240590634(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24058F674(uint64_t a1)
{
  v2 = sub_240590088();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24058F6B0(uint64_t a1)
{
  v2 = sub_240590088();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FindMyRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6370, &qword_24075D678);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v16 = *(v1 + 9);
  v17 = v9;
  v15 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240590088();
  v10 = v8;
  sub_24075AF74();
  v19 = v8;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6380, &qword_24077A650);
  sub_240590128(&qword_27E4B6388, &qword_27E4B6380, &qword_24077A650, &protocol conformance descriptor for _objcCodable<A>);
  sub_24075ABE4();

  if (!v2)
  {
    v11 = v15;
    LOBYTE(v19) = 1;
    sub_24075ABC4();
    LOBYTE(v19) = 2;
    sub_24075ABC4();
    v19 = v11;
    v18 = 3;
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    sub_240590128(&qword_27E4B6398, &qword_27E4B6390, &qword_24075DBE0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075ABE4();
  }

  return (*(v5 + 8))(v7, v4);
}

void FindMyRequest.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  if (*v1)
  {
    sub_24075AE94();
    v4 = v2;
    sub_24075A6E4();
  }

  else
  {
    sub_24075AE94();
  }

  sub_24075AE94();
  sub_24075AE94();
  if (v3)
  {
    sub_24075AE94();
    v5 = v3;
    sub_24075A6E4();
  }

  else
  {
    sub_24075AE94();
  }
}

uint64_t FindMyRequest.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v3 = *(v0 + 16);
  v5[9] = *v0;
  v6 = v1;
  v7 = v2;
  v8 = v3;
  sub_24075AE64();
  FindMyRequest.hash(into:)(v5);
  return sub_24075AED4();
}

void FindMyRequest.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B63A0, &qword_24075D680);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240590088();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6380, &qword_24077A650);
    v17 = 0;
    sub_240590128(&qword_27E4B63A8, &qword_27E4B6380, &qword_24077A650, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    v9 = v18;
    LOBYTE(v18) = 1;
    v16 = sub_24075AAD4();
    LOBYTE(v18) = 2;
    HIDWORD(v15) = sub_24075AAD4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    v17 = 3;
    sub_240590128(&qword_27E4B63B0, &qword_27E4B6390, &qword_24075DBE0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    v10 = v16 & 1;
    v11 = BYTE4(v15) & 1;
    (*(v6 + 8))(v8, v5);
    v12 = v18;
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 9) = v11;
    *(a2 + 16) = v12;
    v13 = v12;
    v14 = v9;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_24058FE14()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v3 = *(v0 + 16);
  v5[9] = *v0;
  v6 = v1;
  v7 = v2;
  v8 = v3;
  sub_24075AE64();
  FindMyRequest.hash(into:)(v5);
  return sub_24075AED4();
}

uint64_t sub_24058FE7C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  v4 = *(v1 + 16);
  v6[9] = *v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  sub_24075AE64();
  FindMyRequest.hash(into:)(v6);
  return sub_24075AED4();
}

BOOL _s12AppleIDSetup13FindMyRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v3 = *a1;
  v4 = *(a1 + 9);
  v5 = *(a1 + 16);
  v6 = *a2;
  v7 = *(a2 + 9);
  v8 = *(a2 + 16);
  if (!*a1)
  {
    result = 0;
    if (v6)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (!v6)
  {
    return 0;
  }

  sub_240590794(0, &qword_27E4B63F8, 0x277CB8F30);
  v9 = v6;
  v10 = v3;
  v11 = sub_24075A6D4();

  result = 0;
  if (v11)
  {
LABEL_9:
    if (((v4 ^ v7) & 1) == 0)
    {
      result = (v5 | v8) == 0;
      if (v5)
      {
        if (v8)
        {
          sub_240590794(0, &qword_27E4B63F0, 0x277CCA9B8);
          v12 = v8;
          v13 = v5;
          v14 = sub_24075A6D4();

          return v14 & 1;
        }
      }
    }
  }

  return result;
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_240590088()
{
  result = qword_27E4B6378;
  if (!qword_27E4B6378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6378);
  }

  return result;
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

uint64_t sub_240590128(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_240590170(void *a1)
{
  a1[1] = sub_2405901A8();
  a1[2] = sub_2405901FC();
  result = sub_240590250();
  a1[3] = result;
  return result;
}

unint64_t sub_2405901A8()
{
  result = qword_27E4B63B8;
  if (!qword_27E4B63B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B63B8);
  }

  return result;
}

unint64_t sub_2405901FC()
{
  result = qword_27E4B63C0;
  if (!qword_27E4B63C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B63C0);
  }

  return result;
}

unint64_t sub_240590250()
{
  result = qword_27E4B63C8;
  if (!qword_27E4B63C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B63C8);
  }

  return result;
}

unint64_t sub_2405902A8()
{
  result = qword_27E4B63D0;
  if (!qword_27E4B63D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B63D0);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_240590310(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_24059036C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FindMyRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FindMyRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_240590530()
{
  result = qword_27E4B63D8;
  if (!qword_27E4B63D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B63D8);
  }

  return result;
}

unint64_t sub_240590588()
{
  result = qword_27E4B63E0;
  if (!qword_27E4B63E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B63E0);
  }

  return result;
}

unint64_t sub_2405905E0()
{
  result = qword_27E4B63E8;
  if (!qword_27E4B63E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B63E8);
  }

  return result;
}

uint64_t sub_240590634(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x495564696F7661 && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73736563637573 && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_240590794(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_240590814(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AuthenticationModel.candidateAccountID.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AuthenticationModel(0) + 20));
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_2405B044C(v10, &v9, &qword_27E4B6420, &qword_240768F00);
}

__n128 AuthenticationModel.candidateAccountID.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for AuthenticationModel(0) + 20));
  v4 = v3[3];
  v8[2] = v3[2];
  v8[3] = v4;
  v8[4] = v3[4];
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  sub_2405B8A50(v8, &qword_27E4B6420, &qword_240768F00);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  v3[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

uint64_t AuthenticationModel.userInteraction.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AuthenticationModel(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AuthenticationModel.userInteraction.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AuthenticationModel(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t AuthenticationModel.idmsData.getter()
{
  v1 = *(v0 + *(type metadata accessor for AuthenticationModel(0) + 28));

  return v1;
}

uint64_t AuthenticationModel.idmsData.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AuthenticationModel(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AuthenticationModel.currentServices.getter()
{
  type metadata accessor for AuthenticationModel(0);
}

uint64_t AuthenticationModel.currentServices.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AuthenticationModel(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AuthenticationModel.supportsSplitAccounts.setter(char a1)
{
  result = type metadata accessor for AuthenticationModel(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_240590D10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationModel.BindableState(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240594008(a1, v6, type metadata accessor for AuthenticationModel.BindableState);
  v7 = *(type metadata accessor for AuthenticationModel(0) + 40);
  sub_240593D7C(a2 + v7, type metadata accessor for AuthenticationModel.State);
  sub_2405937E0((a2 + v7));
  return sub_240593D7C(v6, type metadata accessor for AuthenticationModel.BindableState);
}

uint64_t AuthenticationModel.bindableState.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AuthenticationModel(0) + 40);
  sub_240593D7C(v1 + v3, type metadata accessor for AuthenticationModel.State);
  sub_2405937E0((v1 + v3));
  return sub_240593D7C(a1, type metadata accessor for AuthenticationModel.BindableState);
}

double sub_240590E6C@<D0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v411 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IdMSAccount(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v411 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for AuthenticationModel.State(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v411 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v411 - v14;
  sub_240594008(v2, &v411 - v14, type metadata accessor for AuthenticationModel.State);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2405AE39C(v15, v6, type metadata accessor for AuthenticationModel.PreflightRepair);
      v16 = type metadata accessor for AuthenticationModel.BindableState(0);
      sub_240594008(v6, &a1[v16[5]], type metadata accessor for AuthenticationModel.PreflightRepair);
      sub_24059BBA4(&v439);
      v424 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v434) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v258 = v434;
      v259 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v428) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v260 = v428;
      sub_24059BC20(&v449);
      v261 = v451;
      v262 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      sub_240593D7C(v6, type metadata accessor for AuthenticationModel.PreflightRepair);
      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      *a1 = 2;
      v263 = &a1[v16[6]];
      v264 = v444;
      *(v263 + 4) = v443;
      *(v263 + 5) = v264;
      v263[96] = v445;
      v265 = v440;
      *v263 = v439;
      *(v263 + 1) = v265;
      v266 = v442;
      *(v263 + 2) = v441;
      *(v263 + 3) = v266;
      v267 = &a1[v16[7]];
      *v267 = v424;
      *(v267 + 8) = xmmword_24075D8D0;
      v267[24] = v258;
      v26 = 0uLL;
      *(v267 + 2) = xmmword_24075D8E0;
      *(v267 + 3) = 0u;
      *(v267 + 4) = 0u;
      v268 = &a1[v16[8]];
      *v268 = v259;
      *(v268 + 8) = xmmword_24075D8D0;
      v268[24] = v260;
      *(v268 + 2) = xmmword_24075D8E0;
      *(v268 + 3) = 0u;
      *(v268 + 4) = 0u;
      v269 = &a1[v16[9]];
      v29 = v450;
      *v269 = v449;
      *(v269 + 1) = v29;
      *(v269 + 4) = v261;
      v270 = &a1[v16[10]];
      *v270 = 0u;
      *(v270 + 1) = 0u;
      v271 = &a1[v16[11]];
      *v271 = 0u;
      *(v271 + 1) = 0u;
      v272 = &a1[v16[12]];
      *v272 = v262;
      *(v272 + 1) = 0;
      *(v272 + 2) = 0xE000000000000000;
      v272[24] = 2;
      v33 = &a1[v16[13]];
      *v33 = 0;
      *(v33 + 1) = 0xE000000000000000;
      *(v33 + 2) = 0;
      *(v33 + 3) = 0xE000000000000000;
      goto LABEL_32;
    case 2u:
      v424 = v4;
      v165 = *(v15 + 5);
      v453 = *(v15 + 4);
      v454 = v165;
      v455 = v15[96];
      v166 = *(v15 + 1);
      v449 = *v15;
      v450 = v166;
      v167 = *(v15 + 3);
      v451 = *(v15 + 2);
      v452 = v167;
      v34 = type metadata accessor for AuthenticationModel.BindableState(0);
      v168 = &a1[v34[5]];
      sub_2405AE958(&v449, &v439);
      if (qword_27E4B5F10 != -1)
      {
        swift_once();
      }

      v436 = xmmword_27E4B8DA0;
      v437 = xmmword_27E4B8DB0;
      v438 = xmmword_27E4B8DC0;
      v434 = xmmword_27E4B8D80;
      v435 = xmmword_27E4B8D90;
      sub_2405AF99C(&v434, &v439);
      sub_240759594();
      sub_2405AF9F8(&v439);
      v169 = (v9 + v7[8]);
      v423 = xmmword_24075D8C0;
      *v169 = xmmword_24075D8C0;
      v170 = v9 + v7[9];
      *v170 = 0;
      v170[8] = 1;
      v171 = v437;
      v9[2] = v436;
      v9[3] = v171;
      v172 = v439;
      v9[4] = v438;
      v173 = v435;
      *v9 = v434;
      v9[1] = v173;
      v174 = (v9 + v7[6]);
      v175 = v446;
      v176 = v447;
      v177 = v444;
      v174[6] = v445;
      v174[7] = v175;
      v178 = v448;
      v174[8] = v176;
      v174[9] = v178;
      v179 = v442;
      v180 = v443;
      v181 = v440;
      v174[2] = v441;
      v174[3] = v179;
      v174[4] = v180;
      v174[5] = v177;
      *v174 = v172;
      v174[1] = v181;
      *(v9 + v7[7]) = MEMORY[0x277D84FA0];
      sub_2405AFA1C(*v169, v169[1]);
      *v169 = v423;
      *v170 = 0;
      v170[8] = 0;
      v182 = v424;
      v183 = *(v424 + 6);
      *&v168[v183] = 0;
      sub_2405AE39C(v9, v168, type metadata accessor for IdMSAccount);
      v168[*(v182 + 5)] = 0;

      *&v168[v183] = 0;
      v424 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v425) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v51 = v425;
      v52 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      v433 = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v53 = v433;
      sub_24059BC20(&v428);
      v54 = v430;
      v55 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      sub_2405AE36C(&v449);
      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      v184 = 4;
      goto LABEL_25;
    case 3u:
      v424 = v4;
      v201 = *(v15 + 5);
      v453 = *(v15 + 4);
      v454 = v201;
      v455 = v15[96];
      v202 = *(v15 + 1);
      v449 = *v15;
      v450 = v202;
      v203 = *(v15 + 3);
      v451 = *(v15 + 2);
      v452 = v203;
      v34 = type metadata accessor for AuthenticationModel.BindableState(0);
      v204 = &a1[v34[5]];
      sub_2405AE958(&v449, &v439);
      if (qword_27E4B5F10 != -1)
      {
        swift_once();
      }

      v436 = xmmword_27E4B8DA0;
      v437 = xmmword_27E4B8DB0;
      v438 = xmmword_27E4B8DC0;
      v434 = xmmword_27E4B8D80;
      v435 = xmmword_27E4B8D90;
      sub_2405AF99C(&v434, &v439);
      sub_240759594();
      sub_2405AF9F8(&v439);
      v205 = (v9 + v7[8]);
      v423 = xmmword_24075D8C0;
      *v205 = xmmword_24075D8C0;
      v206 = v9 + v7[9];
      *v206 = 0;
      v206[8] = 1;
      v207 = v437;
      v9[2] = v436;
      v9[3] = v207;
      v208 = v439;
      v9[4] = v438;
      v209 = v435;
      *v9 = v434;
      v9[1] = v209;
      v210 = (v9 + v7[6]);
      v211 = v446;
      v212 = v447;
      v213 = v444;
      v210[6] = v445;
      v210[7] = v211;
      v214 = v448;
      v210[8] = v212;
      v210[9] = v214;
      v215 = v442;
      v216 = v443;
      v217 = v440;
      v210[2] = v441;
      v210[3] = v215;
      v210[4] = v216;
      v210[5] = v213;
      *v210 = v208;
      v210[1] = v217;
      *(v9 + v7[7]) = MEMORY[0x277D84FA0];
      sub_2405AFA1C(*v205, v205[1]);
      *v205 = v423;
      *v206 = 0;
      v206[8] = 0;
      v218 = v424;
      v219 = *(v424 + 6);
      *&v204[v219] = 0;
      sub_2405AE39C(v9, v204, type metadata accessor for IdMSAccount);
      v204[*(v218 + 5)] = 0;

      *&v204[v219] = 0;
      v424 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v425) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v51 = v425;
      v52 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      v433 = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v53 = v433;
      sub_24059BC20(&v428);
      v54 = v430;
      v55 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      sub_2405AE36C(&v449);
      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      v184 = 5;
      goto LABEL_25;
    case 4u:
      v424 = v4;
      v93 = *(v15 + 3);
      v430 = *(v15 + 2);
      v431 = v93;
      v432 = *(v15 + 4);
      v94 = *(v15 + 1);
      v428 = *v15;
      v429 = v94;
      v34 = type metadata accessor for AuthenticationModel.BindableState(0);
      v95 = &a1[v34[5]];
      sub_2405AE9EC(&v428, &v439);
      if (qword_27E4B5F10 != -1)
      {
        swift_once();
      }

      v436 = xmmword_27E4B8DA0;
      v437 = xmmword_27E4B8DB0;
      v438 = xmmword_27E4B8DC0;
      v434 = xmmword_27E4B8D80;
      v435 = xmmword_27E4B8D90;
      sub_2405AF99C(&v434, &v439);
      sub_240759594();
      sub_2405AF9F8(&v439);
      v96 = (v9 + v7[8]);
      v423 = xmmword_24075D8C0;
      *v96 = xmmword_24075D8C0;
      v97 = v9 + v7[9];
      *v97 = 0;
      v97[8] = 1;
      v98 = v437;
      v9[2] = v436;
      v9[3] = v98;
      v99 = v439;
      v9[4] = v438;
      v100 = v435;
      *v9 = v434;
      v9[1] = v100;
      v101 = (v9 + v7[6]);
      v102 = v446;
      v103 = v447;
      v104 = v444;
      v101[6] = v445;
      v101[7] = v102;
      v105 = v448;
      v101[8] = v103;
      v101[9] = v105;
      v106 = v442;
      v107 = v443;
      v108 = v440;
      v101[2] = v441;
      v101[3] = v106;
      v101[4] = v107;
      v101[5] = v104;
      *v101 = v99;
      v101[1] = v108;
      *(v9 + v7[7]) = MEMORY[0x277D84FA0];
      sub_2405AFA1C(*v96, v96[1]);
      *v96 = v423;
      *v97 = 0;
      v97[8] = 0;
      v109 = v424;
      v110 = *(v424 + 6);
      *&v95[v110] = 0;
      sub_2405AE39C(v9, v95, type metadata accessor for IdMSAccount);
      v95[*(v109 + 5)] = 0;

      *&v95[v110] = 0;
      sub_24059BBA4(&v449);
      v111 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      v433 = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v112 = v433;
      sub_24059BC20(&v425);
      v113 = v427;
      v114 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      sub_2405AE30C(&v428);
      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      v115 = 6;
      goto LABEL_41;
    case 5u:
      v424 = v4;
      v274 = *(v15 + 3);
      v430 = *(v15 + 2);
      v431 = v274;
      v432 = *(v15 + 4);
      v275 = *(v15 + 1);
      v428 = *v15;
      v429 = v275;
      v34 = type metadata accessor for AuthenticationModel.BindableState(0);
      v276 = &a1[v34[5]];
      sub_2405AEA24(&v428, &v439);
      if (qword_27E4B5F10 != -1)
      {
        swift_once();
      }

      v436 = xmmword_27E4B8DA0;
      v437 = xmmword_27E4B8DB0;
      v438 = xmmword_27E4B8DC0;
      v434 = xmmword_27E4B8D80;
      v435 = xmmword_27E4B8D90;
      sub_2405AF99C(&v434, &v439);
      sub_240759594();
      sub_2405AF9F8(&v439);
      v277 = (v9 + v7[8]);
      v423 = xmmword_24075D8C0;
      *v277 = xmmword_24075D8C0;
      v278 = v9 + v7[9];
      *v278 = 0;
      v278[8] = 1;
      v279 = v437;
      v9[2] = v436;
      v9[3] = v279;
      v280 = v439;
      v9[4] = v438;
      v281 = v435;
      *v9 = v434;
      v9[1] = v281;
      v282 = (v9 + v7[6]);
      v283 = v446;
      v284 = v447;
      v285 = v444;
      v282[6] = v445;
      v282[7] = v283;
      v286 = v448;
      v282[8] = v284;
      v282[9] = v286;
      v287 = v442;
      v288 = v443;
      v289 = v440;
      v282[2] = v441;
      v282[3] = v287;
      v282[4] = v288;
      v282[5] = v285;
      *v282 = v280;
      v282[1] = v289;
      *(v9 + v7[7]) = MEMORY[0x277D84FA0];
      sub_2405AFA1C(*v277, v277[1]);
      *v277 = v423;
      *v278 = 0;
      v278[8] = 0;
      v290 = v424;
      v291 = *(v424 + 6);
      *&v276[v291] = 0;
      sub_2405AE39C(v9, v276, type metadata accessor for IdMSAccount);
      v276[*(v290 + 5)] = 0;

      *&v276[v291] = 0;
      sub_24059BBA4(&v449);
      v292 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      v433 = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v293 = v433;
      sub_24059BC20(&v425);
      v294 = v427;
      v295 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      sub_2405AE33C(&v428);
      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      *a1 = 8;
      v296 = &a1[v34[6]];
      v297 = v454;
      *(v296 + 4) = v453;
      *(v296 + 5) = v297;
      v296[96] = v455;
      v298 = v450;
      *v296 = v449;
      *(v296 + 1) = v298;
      v29 = v452;
      *(v296 + 2) = v451;
      *(v296 + 3) = v29;
      v299 = &a1[v34[7]];
      *v299 = v292;
      *(v299 + 8) = xmmword_24075D8D0;
      v299[24] = v293;
      *(v299 + 2) = xmmword_24075D8E0;
      *(v299 + 3) = 0u;
      *(v299 + 4) = 0u;
      v300 = &a1[v34[8]];
      v301 = v432;
      *(v300 + 3) = v431;
      *(v300 + 4) = v301;
      v302 = v430;
      *(v300 + 1) = v429;
      *(v300 + 2) = v302;
      *v300 = v428;
      v303 = &a1[v34[9]];
      *&v29 = v425;
      v304 = v426;
      *v303 = v425;
      *(v303 + 1) = v304;
      *(v303 + 4) = v294;
      v305 = &a1[v34[10]];
      *v305 = 0u;
      *(v305 + 1) = 0u;
      v306 = &a1[v34[11]];
      *v306 = 0u;
      *(v306 + 1) = 0u;
      v307 = &a1[v34[12]];
      *v307 = v295;
      *(v307 + 1) = 0;
      *(v307 + 2) = 0xE000000000000000;
      v307[24] = 2;
      v92 = &a1[v34[13]];
      *v92 = 0;
      *(v92 + 1) = 0xE000000000000000;
      *(v92 + 2) = 0;
      *(v92 + 3) = 0xE000000000000000;
      *(v92 + 2) = 0u;
      *(v92 + 3) = 0u;
      *(v92 + 4) = 0u;
      goto LABEL_42;
    case 6u:
      v424 = v4;
      v309 = *(v15 + 3);
      v430 = *(v15 + 2);
      v431 = v309;
      v432 = *(v15 + 4);
      v310 = *(v15 + 1);
      v428 = *v15;
      v429 = v310;
      v34 = type metadata accessor for AuthenticationModel.BindableState(0);
      v311 = &a1[v34[5]];
      sub_2405AE9EC(&v428, &v439);
      if (qword_27E4B5F10 != -1)
      {
        swift_once();
      }

      v436 = xmmword_27E4B8DA0;
      v437 = xmmword_27E4B8DB0;
      v438 = xmmword_27E4B8DC0;
      v434 = xmmword_27E4B8D80;
      v435 = xmmword_27E4B8D90;
      sub_2405AF99C(&v434, &v439);
      sub_240759594();
      sub_2405AF9F8(&v439);
      v312 = (v9 + v7[8]);
      v423 = xmmword_24075D8C0;
      *v312 = xmmword_24075D8C0;
      v313 = v9 + v7[9];
      *v313 = 0;
      v313[8] = 1;
      v314 = v437;
      v9[2] = v436;
      v9[3] = v314;
      v315 = v439;
      v9[4] = v438;
      v316 = v435;
      *v9 = v434;
      v9[1] = v316;
      v317 = (v9 + v7[6]);
      v318 = v446;
      v319 = v447;
      v320 = v444;
      v317[6] = v445;
      v317[7] = v318;
      v321 = v448;
      v317[8] = v319;
      v317[9] = v321;
      v322 = v442;
      v323 = v443;
      v324 = v440;
      v317[2] = v441;
      v317[3] = v322;
      v317[4] = v323;
      v317[5] = v320;
      *v317 = v315;
      v317[1] = v324;
      *(v9 + v7[7]) = MEMORY[0x277D84FA0];
      sub_2405AFA1C(*v312, v312[1]);
      *v312 = v423;
      *v313 = 0;
      v313[8] = 0;
      v325 = v424;
      v326 = *(v424 + 6);
      *&v311[v326] = 0;
      sub_2405AE39C(v9, v311, type metadata accessor for IdMSAccount);
      v311[*(v325 + 5)] = 0;

      *&v311[v326] = 0;
      sub_24059BBA4(&v449);
      v111 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      v433 = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v112 = v433;
      sub_24059BC20(&v425);
      v113 = v427;
      v114 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      sub_2405AE30C(&v428);
      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      v115 = 7;
LABEL_41:
      *a1 = v115;
      v327 = &a1[v34[6]];
      v328 = v454;
      *(v327 + 4) = v453;
      *(v327 + 5) = v328;
      v327[96] = v455;
      v329 = v450;
      *v327 = v449;
      *(v327 + 1) = v329;
      v330 = v452;
      *(v327 + 2) = v451;
      *(v327 + 3) = v330;
      v331 = &a1[v34[7]];
      v332 = v431;
      *(v331 + 2) = v430;
      *(v331 + 3) = v332;
      *(v331 + 4) = v432;
      v29 = v429;
      *v331 = v428;
      *(v331 + 1) = v29;
      v333 = &a1[v34[8]];
      *v333 = v111;
      *(v333 + 8) = xmmword_24075D8D0;
      v333[24] = v112;
      *(v333 + 3) = 0u;
      *(v333 + 4) = 0u;
      *(v333 + 2) = xmmword_24075D8E0;
      v334 = &a1[v34[9]];
      *&v29 = v425;
      v335 = v426;
      *v334 = v425;
      *(v334 + 1) = v335;
      *(v334 + 4) = v113;
      v336 = &a1[v34[10]];
      *v336 = 0u;
      *(v336 + 1) = 0u;
      v337 = &a1[v34[11]];
      *v337 = 0u;
      *(v337 + 1) = 0u;
      v338 = &a1[v34[12]];
      *v338 = v114;
      *(v338 + 1) = 0;
      *(v338 + 2) = 0xE000000000000000;
      v338[24] = 2;
      v92 = &a1[v34[13]];
      *v92 = 0;
      *(v92 + 1) = 0xE000000000000000;
      *(v92 + 2) = 0;
      *(v92 + 3) = 0xE000000000000000;
      *(v92 + 3) = 0u;
      *(v92 + 4) = 0u;
      *(v92 + 2) = 0u;
      goto LABEL_42;
    case 7u:
      v230 = *v15;
      v231 = *(v15 + 1);
      v232 = *(v15 + 2);
      v233 = *(v15 + 3);
      v234 = *(v15 + 4);
      v419 = type metadata accessor for AuthenticationModel.BindableState(0);
      v235 = v419[5];
      v424 = a1;
      v413 = &a1[v235];
      v236 = qword_27E4B5F10;
      *&v423 = v230;
      v417 = v230;
      v422 = v231;
      v416 = v231;
      v421 = v232;
      v415 = v232;
      v420 = v233;
      *&v414 = v233;
      *&v418 = v234;
      v412 = v234;
      if (v236 != -1)
      {
        swift_once();
      }

      v436 = xmmword_27E4B8DA0;
      v437 = xmmword_27E4B8DB0;
      v438 = xmmword_27E4B8DC0;
      v434 = xmmword_27E4B8D80;
      v435 = xmmword_27E4B8D90;
      sub_2405AF99C(&v434, &v439);
      sub_240759594();
      sub_2405AF9F8(&v439);
      v237 = (v9 + v7[8]);
      v411 = xmmword_24075D8C0;
      *v237 = xmmword_24075D8C0;
      v238 = v9 + v7[9];
      *v238 = 0;
      v238[8] = 1;
      v239 = v437;
      v9[2] = v436;
      v9[3] = v239;
      v240 = v439;
      v9[4] = v438;
      v241 = v435;
      *v9 = v434;
      v9[1] = v241;
      v242 = (v9 + v7[6]);
      v243 = v446;
      v244 = v447;
      v245 = v444;
      v242[6] = v445;
      v242[7] = v243;
      v246 = v448;
      v242[8] = v244;
      v242[9] = v246;
      v247 = v442;
      v248 = v443;
      v249 = v440;
      v242[2] = v441;
      v242[3] = v247;
      v242[4] = v248;
      v242[5] = v245;
      *v242 = v240;
      v242[1] = v249;
      *(v9 + v7[7]) = MEMORY[0x277D84FA0];
      sub_2405AFA1C(*v237, v237[1]);
      *v237 = v411;
      *v238 = 0;
      v238[8] = 0;
      v250 = *(v4 + 24);
      v251 = v413;
      *&v413[v250] = 0;
      sub_2405AE39C(v9, v251, type metadata accessor for IdMSAccount);
      *(v251 + *(v4 + 20)) = 0;

      *(v251 + v250) = 0;
      sub_24059BBA4(&v449);
      v252 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v428) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v253 = v428;
      v254 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v425) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v255 = v425;
      v256 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];

      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      v257 = 9;
      goto LABEL_51;
    case 8u:
      v374 = *v15;
      v375 = *(v15 + 1);
      v376 = *(v15 + 2);
      v377 = *(v15 + 3);
      v378 = *(v15 + 4);
      v419 = type metadata accessor for AuthenticationModel.BindableState(0);
      v379 = v419[5];
      v424 = a1;
      v413 = &a1[v379];
      v380 = qword_27E4B5F10;
      *&v423 = v374;
      v417 = v374;
      v422 = v375;
      v416 = v375;
      v421 = v376;
      v415 = v376;
      v420 = v377;
      *&v414 = v377;
      *&v418 = v378;
      v412 = v378;
      if (v380 != -1)
      {
        swift_once();
      }

      v436 = xmmword_27E4B8DA0;
      v437 = xmmword_27E4B8DB0;
      v438 = xmmword_27E4B8DC0;
      v434 = xmmword_27E4B8D80;
      v435 = xmmword_27E4B8D90;
      sub_2405AF99C(&v434, &v439);
      sub_240759594();
      sub_2405AF9F8(&v439);
      v381 = (v9 + v7[8]);
      v411 = xmmword_24075D8C0;
      *v381 = xmmword_24075D8C0;
      v382 = v9 + v7[9];
      *v382 = 0;
      v382[8] = 1;
      v383 = v437;
      v9[2] = v436;
      v9[3] = v383;
      v384 = v439;
      v9[4] = v438;
      v385 = v435;
      *v9 = v434;
      v9[1] = v385;
      v386 = (v9 + v7[6]);
      v387 = v446;
      v388 = v447;
      v389 = v444;
      v386[6] = v445;
      v386[7] = v387;
      v390 = v448;
      v386[8] = v388;
      v386[9] = v390;
      v391 = v442;
      v392 = v443;
      v393 = v440;
      v386[2] = v441;
      v386[3] = v391;
      v386[4] = v392;
      v386[5] = v389;
      *v386 = v384;
      v386[1] = v393;
      *(v9 + v7[7]) = MEMORY[0x277D84FA0];
      sub_2405AFA1C(*v381, v381[1]);
      *v381 = v411;
      *v382 = 0;
      v382[8] = 0;
      v394 = *(v4 + 24);
      v395 = v413;
      *&v413[v394] = 0;
      sub_2405AE39C(v9, v395, type metadata accessor for IdMSAccount);
      *(v395 + *(v4 + 20)) = 0;

      *(v395 + v394) = 0;
      sub_24059BBA4(&v449);
      v252 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v428) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v253 = v428;
      v254 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v425) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v255 = v425;
      v256 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];

      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      v257 = 10;
LABEL_51:
      v396 = v424;
      *v424 = v257;
      v397 = v419;
      v398 = &v396[v419[6]];
      v399 = v454;
      *(v398 + 4) = v453;
      *(v398 + 5) = v399;
      v398[96] = v455;
      v400 = v450;
      *v398 = v449;
      *(v398 + 1) = v400;
      v29 = v452;
      *(v398 + 2) = v451;
      *(v398 + 3) = v29;
      v401 = &v396[v397[7]];
      *v401 = v252;
      *&v29 = 6;
      *(v401 + 8) = xmmword_24075D8D0;
      v401[24] = v253;
      *(v401 + 2) = xmmword_24075D8E0;
      *(v401 + 3) = 0u;
      *(v401 + 4) = 0u;
      v402 = &v396[v397[8]];
      *v402 = v254;
      *(v402 + 8) = xmmword_24075D8D0;
      v402[24] = v255;
      *(v402 + 3) = 0u;
      *(v402 + 4) = 0u;
      *(v402 + 2) = xmmword_24075D8E0;
      v403 = &v396[v397[9]];
      v404 = v422;
      *v403 = v423;
      *(v403 + 1) = v404;
      v405 = v420;
      *(v403 + 2) = v421;
      *(v403 + 3) = v405;
      *(v403 + 4) = v418;
      v406 = &v396[v397[10]];
      *v406 = 0u;
      *(v406 + 1) = 0u;
      v407 = &v396[v397[11]];
      *v407 = 0u;
      *(v407 + 1) = 0u;
      v408 = &v396[v397[12]];
      *v408 = v256;
      *(v408 + 1) = 0;
      *(v408 + 2) = 0xE000000000000000;
      v408[24] = 2;
      v409 = &v396[v397[13]];
      *v409 = 0;
      *(v409 + 1) = 0xE000000000000000;
      *(v409 + 2) = 0;
      *(v409 + 3) = 0xE000000000000000;
      *(v409 + 3) = 0u;
      *(v409 + 4) = 0u;
      *(v409 + 2) = 0u;
      *(v409 + 40) = 511;
      v396[v397[14]] = 0;
      v396[v397[15]] = 0;
      return *&v29;
    case 9u:
      v129 = *v15;
      v130 = *(v15 + 1);
      v132 = *(v15 + 2);
      v131 = *(v15 + 3);
      v420 = type metadata accessor for AuthenticationModel.BindableState(0);
      v416 = &a1[*(v420 + 20)];
      v133 = qword_27E4B5F10;
      v424 = v129;
      v419 = v129;
      *&v423 = v130;
      *&v418 = v130;
      v422 = v132;
      v417 = v132;
      v421 = v131;
      v415 = v131;
      if (v133 != -1)
      {
        swift_once();
      }

      v436 = xmmword_27E4B8DA0;
      v437 = xmmword_27E4B8DB0;
      v438 = xmmword_27E4B8DC0;
      v434 = xmmword_27E4B8D80;
      v435 = xmmword_27E4B8D90;
      sub_2405AF99C(&v434, &v439);
      sub_240759594();
      sub_2405AF9F8(&v439);
      v134 = (v9 + v7[8]);
      v414 = xmmword_24075D8C0;
      *v134 = xmmword_24075D8C0;
      v135 = v9 + v7[9];
      *v135 = 0;
      v135[8] = 1;
      v136 = v437;
      v9[2] = v436;
      v9[3] = v136;
      v137 = v439;
      v9[4] = v438;
      v138 = v435;
      *v9 = v434;
      v9[1] = v138;
      v139 = (v9 + v7[6]);
      v140 = v446;
      v141 = v447;
      v142 = v444;
      v139[6] = v445;
      v139[7] = v140;
      v143 = v448;
      v139[8] = v141;
      v139[9] = v143;
      v144 = v442;
      v145 = v443;
      v146 = v440;
      v139[2] = v441;
      v139[3] = v144;
      v139[4] = v145;
      v139[5] = v142;
      *v139 = v137;
      v139[1] = v146;
      *(v9 + v7[7]) = MEMORY[0x277D84FA0];
      sub_2405AFA1C(*v134, v134[1]);
      *v134 = v414;
      *v135 = 0;
      v135[8] = 0;
      v147 = *(v4 + 24);
      v148 = v416;
      *&v416[v147] = 0;
      sub_2405AE39C(v9, v148, type metadata accessor for IdMSAccount);
      v148[*(v4 + 20)] = 0;

      *&v148[v147] = 0;
      sub_24059BBA4(&v449);
      v416 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v425) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      LOBYTE(v148) = v425;
      v149 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      v433 = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      LOBYTE(v134) = v433;
      sub_24059BC20(&v428);
      v150 = v430;
      v151 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];

      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      *a1 = 11;
      v152 = v420;
      v153 = &a1[*(v420 + 24)];
      v154 = v454;
      *(v153 + 4) = v453;
      *(v153 + 5) = v154;
      v153[96] = v455;
      v155 = v450;
      *v153 = v449;
      *(v153 + 1) = v155;
      v156 = v452;
      *(v153 + 2) = v451;
      *(v153 + 3) = v156;
      v157 = &a1[v152[7]];
      *v157 = v416;
      *(v157 + 8) = xmmword_24075D8D0;
      v157[24] = v148;
      v158 = 0uLL;
      *(v157 + 2) = xmmword_24075D8E0;
      *(v157 + 3) = 0u;
      *(v157 + 4) = 0u;
      v159 = &a1[v152[8]];
      *v159 = v149;
      *(v159 + 8) = xmmword_24075D8D0;
      v159[24] = v134;
      *(v159 + 2) = xmmword_24075D8E0;
      *(v159 + 3) = 0u;
      *(v159 + 4) = 0u;
      v160 = &a1[v152[9]];
      v29 = v429;
      *v160 = v428;
      *(v160 + 1) = v29;
      *(v160 + 4) = v150;
      v161 = &a1[v152[10]];
      v162 = v423;
      *v161 = v424;
      *(v161 + 1) = v162;
      v163 = v421;
      *(v161 + 2) = v422;
      *(v161 + 3) = v163;
      v164 = &a1[v152[11]];
      *v164 = 0u;
      *(v164 + 1) = 0u;
      goto LABEL_47;
    case 0xAu:
      v339 = *v15;
      v340 = *(v15 + 1);
      v342 = *(v15 + 2);
      v341 = *(v15 + 3);
      v420 = type metadata accessor for AuthenticationModel.BindableState(0);
      v416 = &a1[*(v420 + 20)];
      v343 = qword_27E4B5F10;
      v424 = v339;
      v419 = v339;
      *&v423 = v340;
      *&v418 = v340;
      v422 = v342;
      v417 = v342;
      v421 = v341;
      v415 = v341;
      if (v343 != -1)
      {
        swift_once();
      }

      v436 = xmmword_27E4B8DA0;
      v437 = xmmword_27E4B8DB0;
      v438 = xmmword_27E4B8DC0;
      v434 = xmmword_27E4B8D80;
      v435 = xmmword_27E4B8D90;
      sub_2405AF99C(&v434, &v439);
      sub_240759594();
      sub_2405AF9F8(&v439);
      v344 = (v9 + v7[8]);
      v414 = xmmword_24075D8C0;
      *v344 = xmmword_24075D8C0;
      v345 = v9 + v7[9];
      *v345 = 0;
      v345[8] = 1;
      v346 = v437;
      v9[2] = v436;
      v9[3] = v346;
      v347 = v439;
      v9[4] = v438;
      v348 = v435;
      *v9 = v434;
      v9[1] = v348;
      v349 = (v9 + v7[6]);
      v350 = v446;
      v351 = v447;
      v352 = v444;
      v349[6] = v445;
      v349[7] = v350;
      v353 = v448;
      v349[8] = v351;
      v349[9] = v353;
      v354 = v442;
      v355 = v443;
      v356 = v440;
      v349[2] = v441;
      v349[3] = v354;
      v349[4] = v355;
      v349[5] = v352;
      *v349 = v347;
      v349[1] = v356;
      *(v9 + v7[7]) = MEMORY[0x277D84FA0];
      sub_2405AFA1C(*v344, v344[1]);
      *v344 = v414;
      *v345 = 0;
      v345[8] = 0;
      v357 = *(v4 + 24);
      v358 = v416;
      *&v416[v357] = 0;
      sub_2405AE39C(v9, v358, type metadata accessor for IdMSAccount);
      v358[*(v4 + 20)] = 0;

      *&v358[v357] = 0;
      sub_24059BBA4(&v449);
      v416 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v425) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      LOBYTE(v358) = v425;
      v359 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      v433 = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      LOBYTE(v344) = v433;
      sub_24059BC20(&v428);
      v360 = v430;
      v151 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];

      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      *a1 = 12;
      v152 = v420;
      v361 = &a1[*(v420 + 24)];
      v362 = v454;
      *(v361 + 4) = v453;
      *(v361 + 5) = v362;
      v361[96] = v455;
      v363 = v450;
      *v361 = v449;
      *(v361 + 1) = v363;
      v364 = v452;
      *(v361 + 2) = v451;
      *(v361 + 3) = v364;
      v365 = &a1[v152[7]];
      *v365 = v416;
      *(v365 + 8) = xmmword_24075D8D0;
      v365[24] = v358;
      v158 = 0uLL;
      *(v365 + 2) = xmmword_24075D8E0;
      *(v365 + 3) = 0u;
      *(v365 + 4) = 0u;
      v366 = &a1[v152[8]];
      *v366 = v359;
      *(v366 + 8) = xmmword_24075D8D0;
      v366[24] = v344;
      *(v366 + 2) = xmmword_24075D8E0;
      *(v366 + 3) = 0u;
      *(v366 + 4) = 0u;
      v367 = &a1[v152[9]];
      v29 = v429;
      *v367 = v428;
      *(v367 + 1) = v29;
      *(v367 + 4) = v360;
      v368 = &a1[v152[10]];
      *v368 = 0u;
      *(v368 + 1) = 0u;
      v369 = &a1[v152[11]];
      v370 = v423;
      *v369 = v424;
      *(v369 + 1) = v370;
      v371 = v421;
      *(v369 + 2) = v422;
      *(v369 + 3) = v371;
LABEL_47:
      v372 = &a1[v152[12]];
      *v372 = v151;
      *(v372 + 1) = 0;
      *(v372 + 2) = 0xE000000000000000;
      v372[24] = 2;
      v373 = &a1[v152[13]];
      *v373 = 0;
      *(v373 + 1) = 0xE000000000000000;
      *(v373 + 2) = 0;
      *(v373 + 3) = 0xE000000000000000;
      *(v373 + 2) = v158;
      *(v373 + 3) = v158;
      *(v373 + 4) = v158;
      *(v373 + 40) = 511;
      a1[v152[14]] = 0;
      v273 = v152[15];
      break;
    case 0xBu:
      v424 = v4;
      v56 = *v15;
      v421 = *(v15 + 1);
      v57 = *(v15 + 2);
      LODWORD(v420) = v15[24];
      v34 = type metadata accessor for AuthenticationModel.BindableState(0);
      v58 = &a1[v34[5]];
      v59 = qword_27E4B5F10;
      *&v423 = v56;
      v419 = v56;
      v422 = v57;

      if (v59 != -1)
      {
        swift_once();
      }

      v436 = xmmword_27E4B8DA0;
      v437 = xmmword_27E4B8DB0;
      v438 = xmmword_27E4B8DC0;
      v434 = xmmword_27E4B8D80;
      v435 = xmmword_27E4B8D90;
      sub_2405AF99C(&v434, &v439);
      sub_240759594();
      sub_2405AF9F8(&v439);
      v60 = (v9 + v7[8]);
      v418 = xmmword_24075D8C0;
      *v60 = xmmword_24075D8C0;
      v61 = v9 + v7[9];
      *v61 = 0;
      v61[8] = 1;
      v62 = v437;
      v9[2] = v436;
      v9[3] = v62;
      v63 = v439;
      v9[4] = v438;
      v64 = v435;
      *v9 = v434;
      v9[1] = v64;
      v65 = (v9 + v7[6]);
      v66 = v446;
      v67 = v447;
      v68 = v444;
      v65[6] = v445;
      v65[7] = v66;
      v69 = v448;
      v65[8] = v67;
      v65[9] = v69;
      v70 = v442;
      v71 = v443;
      v72 = v440;
      v65[2] = v441;
      v65[3] = v70;
      v65[4] = v71;
      v65[5] = v68;
      *v65 = v63;
      v65[1] = v72;
      *(v9 + v7[7]) = MEMORY[0x277D84FA0];
      sub_2405AFA1C(*v60, v60[1]);
      *v60 = v418;
      *v61 = 0;
      v61[8] = 0;
      v73 = v424;
      v74 = *(v424 + 6);
      *&v58[v74] = 0;
      sub_2405AE39C(v9, v58, type metadata accessor for IdMSAccount);
      v58[*(v73 + 5)] = 0;

      *&v58[v74] = 0;
      sub_24059BBA4(&v449);
      v75 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v425) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      LOBYTE(v74) = v425;
      v76 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      v433 = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v77 = v433;
      sub_24059BC20(&v428);
      v78 = v430;
      v79 = v422;

      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      *a1 = 13;
      v80 = &a1[v34[6]];
      v81 = v454;
      *(v80 + 4) = v453;
      *(v80 + 5) = v81;
      v80[96] = v455;
      v82 = v450;
      *v80 = v449;
      *(v80 + 1) = v82;
      v83 = v452;
      *(v80 + 2) = v451;
      *(v80 + 3) = v83;
      v84 = &a1[v34[7]];
      *v84 = v75;
      *(v84 + 8) = xmmword_24075D8D0;
      v84[24] = v74;
      v85 = 0uLL;
      *(v84 + 2) = xmmword_24075D8E0;
      *(v84 + 3) = 0u;
      *(v84 + 4) = 0u;
      v86 = &a1[v34[8]];
      *v86 = v76;
      *(v86 + 8) = xmmword_24075D8D0;
      v86[24] = v77;
      *(v86 + 2) = xmmword_24075D8E0;
      *(v86 + 3) = 0u;
      *(v86 + 4) = 0u;
      v87 = &a1[v34[9]];
      v29 = v429;
      *v87 = v428;
      *(v87 + 1) = v29;
      *(v87 + 4) = v78;
      v88 = &a1[v34[10]];
      *v88 = 0u;
      *(v88 + 1) = 0u;
      v89 = &a1[v34[11]];
      *v89 = 0u;
      *(v89 + 1) = 0u;
      v90 = &a1[v34[12]];
      v91 = v421;
      *v90 = v423;
      *(v90 + 1) = v91;
      *(v90 + 2) = v79;
      v90[24] = v420;
      v92 = &a1[v34[13]];
      goto LABEL_27;
    case 0xCu:
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64B0, &qword_240774850);
      v117 = swift_projectBox();
      v118 = *(v117 + 32);
      v119 = *(v117 + 48);
      v120 = *(v117 + 64);
      LOWORD(v454) = *(v117 + 80);
      v452 = v119;
      v453 = v120;
      v121 = *(v117 + 16);
      v449 = *v117;
      v450 = v121;
      v451 = v118;
      sub_240594008(v117 + *(v116 + 48), v13, type metadata accessor for AuthenticationModel.State);
      sub_2405AE2A4(&v449, &v439);
      sub_240590E6C(a1);
      sub_240593D7C(v13, type metadata accessor for AuthenticationModel.State);
      v122 = type metadata accessor for AuthenticationModel.BindableState(0);
      v123 = &a1[*(v122 + 52)];
      v124 = *(v123 + 4);
      v442 = *(v123 + 3);
      v443 = v124;
      LOWORD(v444) = *(v123 + 40);
      v125 = *(v123 + 2);
      v440 = *(v123 + 1);
      v441 = v125;
      v439 = *v123;
      sub_2405AE2DC(&v439);

      v126 = v452;
      *(v123 + 2) = v451;
      *(v123 + 3) = v126;
      *(v123 + 4) = v453;
      *(v123 + 40) = v454;
      *&v29 = v449;
      v127 = v450;
      *v123 = v449;
      *(v123 + 1) = v127;
      v128 = *(v122 + 56);
      goto LABEL_37;
    case 0xDu:
      v308 = swift_projectBox();
      sub_240594008(v308, v13, type metadata accessor for AuthenticationModel.State);
      sub_240590E6C(a1);
      sub_240593D7C(v13, type metadata accessor for AuthenticationModel.State);

      v128 = *(type metadata accessor for AuthenticationModel.BindableState(0) + 60);
LABEL_37:
      a1[v128] = 1;
      return *&v29;
    case 0xEu:
      v424 = v4;
      v34 = type metadata accessor for AuthenticationModel.BindableState(0);
      v35 = &a1[v34[5]];
      if (qword_27E4B5F10 != -1)
      {
        swift_once();
      }

      v436 = xmmword_27E4B8DA0;
      v437 = xmmword_27E4B8DB0;
      v438 = xmmword_27E4B8DC0;
      v434 = xmmword_27E4B8D80;
      v435 = xmmword_27E4B8D90;
      sub_2405AF99C(&v434, &v439);
      sub_240759594();
      sub_2405AF9F8(&v439);
      v36 = (v9 + v7[8]);
      v423 = xmmword_24075D8C0;
      *v36 = xmmword_24075D8C0;
      v37 = v9 + v7[9];
      *v37 = 0;
      v37[8] = 1;
      v38 = v437;
      v9[2] = v436;
      v9[3] = v38;
      v39 = v439;
      v9[4] = v438;
      v40 = v435;
      *v9 = v434;
      v9[1] = v40;
      v41 = (v9 + v7[6]);
      v42 = v446;
      v43 = v447;
      v44 = v444;
      v41[6] = v445;
      v41[7] = v42;
      v45 = v448;
      v41[8] = v43;
      v41[9] = v45;
      v46 = v442;
      v47 = v443;
      v48 = v440;
      v41[2] = v441;
      v41[3] = v46;
      v41[4] = v47;
      v41[5] = v44;
      *v41 = v39;
      v41[1] = v48;
      *(v9 + v7[7]) = MEMORY[0x277D84FA0];
      sub_2405AFA1C(*v36, v36[1]);
      *v36 = v423;
      *v37 = 0;
      v37[8] = 0;
      v49 = v424;
      v50 = *(v424 + 6);
      *&v35[v50] = 0;
      sub_2405AE39C(v9, v35, type metadata accessor for IdMSAccount);
      v35[*(v49 + 5)] = 0;

      *&v35[v50] = 0;
      sub_24059BBA4(&v449);
      v424 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v425) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v51 = v425;
      v52 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      v433 = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v53 = v433;
      sub_24059BC20(&v428);
      v54 = v430;
      v55 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      *a1 = 0;
      goto LABEL_26;
    case 0xFu:
      v424 = v4;
      v34 = type metadata accessor for AuthenticationModel.BindableState(0);
      v185 = &a1[v34[5]];
      if (qword_27E4B5F10 != -1)
      {
        swift_once();
      }

      v436 = xmmword_27E4B8DA0;
      v437 = xmmword_27E4B8DB0;
      v438 = xmmword_27E4B8DC0;
      v434 = xmmword_27E4B8D80;
      v435 = xmmword_27E4B8D90;
      sub_2405AF99C(&v434, &v439);
      sub_240759594();
      sub_2405AF9F8(&v439);
      v186 = (v9 + v7[8]);
      v423 = xmmword_24075D8C0;
      *v186 = xmmword_24075D8C0;
      v187 = v9 + v7[9];
      *v187 = 0;
      v187[8] = 1;
      v188 = v437;
      v9[2] = v436;
      v9[3] = v188;
      v189 = v439;
      v9[4] = v438;
      v190 = v435;
      *v9 = v434;
      v9[1] = v190;
      v191 = (v9 + v7[6]);
      v192 = v446;
      v193 = v447;
      v194 = v444;
      v191[6] = v445;
      v191[7] = v192;
      v195 = v448;
      v191[8] = v193;
      v191[9] = v195;
      v196 = v442;
      v197 = v443;
      v198 = v440;
      v191[2] = v441;
      v191[3] = v196;
      v191[4] = v197;
      v191[5] = v194;
      *v191 = v189;
      v191[1] = v198;
      *(v9 + v7[7]) = MEMORY[0x277D84FA0];
      sub_2405AFA1C(*v186, v186[1]);
      *v186 = v423;
      *v187 = 0;
      v187[8] = 0;
      v199 = v424;
      v200 = *(v424 + 6);
      *&v185[v200] = 0;
      sub_2405AE39C(v9, v185, type metadata accessor for IdMSAccount);
      v185[*(v199 + 5)] = 0;

      *&v185[v200] = 0;
      sub_24059BBA4(&v449);
      v424 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v425) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v51 = v425;
      v52 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      v433 = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v53 = v433;
      sub_24059BC20(&v428);
      v54 = v430;
      v55 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      v184 = 3;
LABEL_25:
      *a1 = v184;
LABEL_26:
      v220 = &a1[v34[6]];
      v221 = v454;
      *(v220 + 4) = v453;
      *(v220 + 5) = v221;
      v220[96] = v455;
      v222 = v450;
      *v220 = v449;
      *(v220 + 1) = v222;
      v223 = v452;
      *(v220 + 2) = v451;
      *(v220 + 3) = v223;
      v224 = &a1[v34[7]];
      *v224 = v424;
      *(v224 + 8) = xmmword_24075D8D0;
      v224[24] = v51;
      v85 = 0uLL;
      *(v224 + 2) = xmmword_24075D8E0;
      *(v224 + 3) = 0u;
      *(v224 + 4) = 0u;
      v225 = &a1[v34[8]];
      *v225 = v52;
      *(v225 + 8) = xmmword_24075D8D0;
      v225[24] = v53;
      *(v225 + 2) = xmmword_24075D8E0;
      *(v225 + 3) = 0u;
      *(v225 + 4) = 0u;
      v226 = &a1[v34[9]];
      v29 = v429;
      *v226 = v428;
      *(v226 + 1) = v29;
      *(v226 + 4) = v54;
      v227 = &a1[v34[10]];
      *v227 = 0u;
      *(v227 + 1) = 0u;
      v228 = &a1[v34[11]];
      *v228 = 0u;
      *(v228 + 1) = 0u;
      v229 = &a1[v34[12]];
      *v229 = v55;
      *(v229 + 1) = 0;
      *(v229 + 2) = 0xE000000000000000;
      v229[24] = 2;
      v92 = &a1[v34[13]];
LABEL_27:
      *v92 = 0;
      *(v92 + 1) = 0xE000000000000000;
      *(v92 + 2) = 0;
      *(v92 + 3) = 0xE000000000000000;
      *(v92 + 2) = v85;
      *(v92 + 3) = v85;
      *(v92 + 4) = v85;
LABEL_42:
      *(v92 + 40) = 511;
      a1[v34[14]] = 0;
      v273 = v34[15];
      break;
    default:
      sub_2405AE39C(v15, v6, type metadata accessor for AuthenticationModel.PreflightRepair);
      v16 = type metadata accessor for AuthenticationModel.BindableState(0);
      sub_240594008(v6, &a1[v16[5]], type metadata accessor for AuthenticationModel.PreflightRepair);
      sub_24059BBA4(&v439);
      v424 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v434) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      LODWORD(v423) = v434;
      v17 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      LOBYTE(v428) = 1;
      sub_2405AE990(0, 1, 0, 0, 0);
      v18 = v428;
      sub_24059BC20(&v449);
      v19 = v451;
      v20 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
      sub_240593D7C(v6, type metadata accessor for AuthenticationModel.PreflightRepair);
      sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
      *a1 = 1;
      v21 = &a1[v16[6]];
      v22 = v444;
      *(v21 + 4) = v443;
      *(v21 + 5) = v22;
      v21[96] = v445;
      v23 = v440;
      *v21 = v439;
      *(v21 + 1) = v23;
      v24 = v442;
      *(v21 + 2) = v441;
      *(v21 + 3) = v24;
      v25 = &a1[v16[7]];
      *v25 = v424;
      *(v25 + 8) = xmmword_24075D8D0;
      v25[24] = v423;
      v26 = 0uLL;
      *(v25 + 2) = xmmword_24075D8E0;
      *(v25 + 3) = 0u;
      *(v25 + 4) = 0u;
      v27 = &a1[v16[8]];
      *v27 = v17;
      *(v27 + 8) = xmmword_24075D8D0;
      v27[24] = v18;
      *(v27 + 2) = xmmword_24075D8E0;
      *(v27 + 3) = 0u;
      *(v27 + 4) = 0u;
      v28 = &a1[v16[9]];
      v29 = v450;
      *v28 = v449;
      *(v28 + 1) = v29;
      *(v28 + 4) = v19;
      v30 = &a1[v16[10]];
      *v30 = 0u;
      *(v30 + 1) = 0u;
      v31 = &a1[v16[11]];
      *v31 = 0u;
      *(v31 + 1) = 0u;
      v32 = &a1[v16[12]];
      *v32 = v20;
      *(v32 + 1) = 0;
      *(v32 + 2) = 0xE000000000000000;
      v32[24] = 2;
      v33 = &a1[v16[13]];
      *v33 = 0;
      *(v33 + 1) = 0xE000000000000000;
      *(v33 + 2) = 0;
      *(v33 + 3) = 0xE000000000000000;
LABEL_32:
      *(v33 + 2) = v26;
      *(v33 + 3) = v26;
      *(v33 + 4) = v26;
      *(v33 + 40) = 511;
      a1[v16[14]] = 0;
      v273 = v16[15];
      break;
  }

  a1[v273] = 0;
  return *&v29;
}

uint64_t sub_2405937E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for AuthenticationModel.State(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v62[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  switch(*v1)
  {
    case 1:
    case 2:
      v16 = type metadata accessor for AuthenticationModel.BindableState(0);
      sub_240594008(&v1[*(v16 + 20)], v5, type metadata accessor for AuthenticationModel.PreflightRepair);
      swift_storeEnumTagMultiPayload();
      break;
    case 4:
    case 5:
      v17 = &v1[*(type metadata accessor for AuthenticationModel.BindableState(0) + 24)];
      v18 = *(v17 + 5);
      v67 = *(v17 + 4);
      v68 = v18;
      v69 = v17[96];
      v19 = v69;
      v20 = *(v17 + 3);
      v65 = *(v17 + 2);
      v21 = v65;
      v66 = v20;
      v22 = *(v17 + 1);
      v63 = *v17;
      v23 = v63;
      v64 = v22;
      *(v5 + 4) = v67;
      *(v5 + 5) = v18;
      *(v5 + 2) = v21;
      *(v5 + 3) = v20;
      v5[96] = v19;
      *v5 = v23;
      *(v5 + 1) = v22;
      swift_storeEnumTagMultiPayload();
      sub_2405AE958(&v63, v62);
      break;
    case 6:
    case 7:
      v28 = &v1[*(type metadata accessor for AuthenticationModel.BindableState(0) + 28)];
      v29 = v28[3];
      v65 = v28[2];
      v66 = v29;
      v67 = v28[4];
      v30 = v67;
      v31 = v28[1];
      v63 = *v28;
      v32 = v63;
      v64 = v31;
      *(v5 + 2) = v65;
      *(v5 + 3) = v29;
      *(v5 + 4) = v30;
      *v5 = v32;
      *(v5 + 1) = v31;
      swift_storeEnumTagMultiPayload();
      sub_2405AE9EC(&v63, v62);
      break;
    case 8:
      v44 = &v1[*(type metadata accessor for AuthenticationModel.BindableState(0) + 32)];
      v45 = v44[3];
      v65 = v44[2];
      v66 = v45;
      v67 = v44[4];
      v46 = v67;
      v47 = v44[1];
      v63 = *v44;
      v48 = v63;
      v64 = v47;
      *(v5 + 2) = v65;
      *(v5 + 3) = v45;
      *(v5 + 4) = v46;
      *v5 = v48;
      *(v5 + 1) = v47;
      swift_storeEnumTagMultiPayload();
      sub_2405AEA24(&v63, v62);
      break;
    case 9:
    case 0xA:
      v33 = &v1[*(type metadata accessor for AuthenticationModel.BindableState(0) + 36)];
      v34 = *v33;
      v35 = *(v33 + 1);
      v36 = *(v33 + 2);
      v37 = *(v33 + 3);
      v38 = *(v33 + 4);
      *v5 = *v33;
      *(v5 + 1) = v35;
      *(v5 + 2) = v36;
      *(v5 + 3) = v37;
      *(v5 + 4) = v38;
      swift_storeEnumTagMultiPayload();
      v39 = v38;
      v40 = v34;
      v41 = v35;
      v42 = v36;
      v43 = v37;
      break;
    case 0xB:
      v6 = &v1[*(type metadata accessor for AuthenticationModel.BindableState(0) + 40)];
      v7 = *v6;
      v8 = *(v6 + 1);
      v9 = *(v6 + 2);
      v10 = *(v6 + 3);
      *v5 = *v6;
      *(v5 + 1) = v8;
      *(v5 + 2) = v9;
      *(v5 + 3) = v10;
      goto LABEL_5;
    case 0xC:
      v11 = &v1[*(type metadata accessor for AuthenticationModel.BindableState(0) + 44)];
      v7 = *v11;
      v8 = *(v11 + 1);
      v9 = *(v11 + 2);
      v10 = *(v11 + 3);
      *v5 = *v11;
      *(v5 + 1) = v8;
      *(v5 + 2) = v9;
      *(v5 + 3) = v10;
LABEL_5:
      swift_storeEnumTagMultiPayload();
      v12 = v10;
      v13 = v7;
      v14 = v8;
      v15 = v9;
      break;
    case 0xD:
      v24 = &v1[*(type metadata accessor for AuthenticationModel.BindableState(0) + 48)];
      v25 = *(v24 + 2);
      v26 = v24[24];
      v61 = *v24;
      *v5 = v61;
      *(v5 + 2) = v25;
      v5[24] = v26;
      swift_storeEnumTagMultiPayload();
      v27 = v61;

      break;
    default:
      swift_storeEnumTagMultiPayload();
      break;
  }

  sub_2405AE39C(v5, a1, type metadata accessor for AuthenticationModel.State);
  result = type metadata accessor for AuthenticationModel.BindableState(0);
  v50 = result;
  if (v1[*(result + 56)] == 1)
  {
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64B0, &qword_240774850);
    v52 = swift_allocBox();
    v54 = v53;
    v55 = *(v51 + 48);
    v56 = &v1[*(v50 + 52)];
    v57 = v56[4];
    v66 = v56[3];
    v67 = v57;
    LOWORD(v68) = *(v56 + 40);
    v58 = v56[1];
    v65 = v56[2];
    v63 = *v56;
    v64 = v58;
    memmove(v54, v56, 0x52uLL);
    sub_2405AE39C(a1, v54 + v55, type metadata accessor for AuthenticationModel.State);
    *a1 = v52;
    swift_storeEnumTagMultiPayload();
    return sub_2405AE2A4(&v63, v62);
  }

  else if (v1[*(result + 60)] == 1)
  {
    v59 = swift_allocBox();
    sub_2405AE39C(a1, v60, type metadata accessor for AuthenticationModel.State);
    *a1 = v59;
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_240593D7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void (*AuthenticationModel.bindableState.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for AuthenticationModel.BindableState(0) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    *(a1 + 8) = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *(a1 + 8) = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(type metadata accessor for AuthenticationModel(0) + 40);
  sub_240590E6C(v5);
  return sub_240593EC0;
}

void sub_240593EC0(uint64_t *a1, char a2)
{
  v2 = *(a1 + 6);
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (a2)
  {
    sub_240594008(a1[2], v3, type metadata accessor for AuthenticationModel.BindableState);
    sub_240593D7C(v5 + v2, type metadata accessor for AuthenticationModel.State);
    sub_2405937E0((v5 + v2));
    sub_240593D7C(v3, type metadata accessor for AuthenticationModel.BindableState);
  }

  else
  {
    sub_240593D7C(v5 + v2, type metadata accessor for AuthenticationModel.State);
    sub_2405937E0((v5 + v2));
  }

  sub_240593D7C(v4, type metadata accessor for AuthenticationModel.BindableState);
  free(v4);

  free(v3);
}

uint64_t sub_240594008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_240594104@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AuthenticationModel(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2405B8B4C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_24057B5BC(v4, v5);
}

uint64_t sub_240594198(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2405B8928;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for AuthenticationModel(0) + 44));
  v8 = *v7;
  v9 = v7[1];
  sub_24057B5BC(v3, v4);
  result = sub_24058CA60(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t AuthenticationModel.contextModifier.getter()
{
  v1 = (v0 + *(type metadata accessor for AuthenticationModel(0) + 44));
  v2 = *v1;
  sub_24057B5BC(*v1, v1[1]);
  return v2;
}

uint64_t AuthenticationModel.contextModifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AuthenticationModel(0) + 44));
  result = sub_24058CA60(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AuthenticationModel.init(account:userInteraction:state:idmsData:supportsSplitAccounts:currentServices:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *a2;
  v14 = type metadata accessor for IdMSAccount(0);
  (*(*(v14 - 8) + 56))(a8, 1, 1, v14);
  v15 = type metadata accessor for AuthenticationModel(0);
  v16 = (a8 + v15[5]);
  v16[3] = 0u;
  v16[4] = 0u;
  v16[1] = 0u;
  v16[2] = 0u;
  *v16 = 0u;
  v17 = v15[8];
  v18 = (a8 + v15[7]);
  v19 = v15[9];
  v20 = (a8 + v15[11]);
  *v20 = 0;
  v20[1] = 0;
  sub_240590814(a1, a8);
  *(a8 + v15[6]) = v13;
  result = sub_2405AE39C(a3, a8 + v15[10], type metadata accessor for AuthenticationModel.State);
  *v18 = a4;
  v18[1] = a5;
  *(a8 + v19) = a6;
  *(a8 + v17) = a7;
  return result;
}

uint64_t sub_240594458(unsigned __int8 a1)
{
  sub_24075AE64();
  sub_24075A114();

  return sub_24075AED4();
}

uint64_t sub_240594578(uint64_t a1)
{
  sub_24075A114();
}

unint64_t sub_240594688@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2405AC514(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2405946B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746E756F636361;
  v5 = 0xE800000000000000;
  v6 = 0x61746144736D6469;
  v7 = 0x8000000240785DD0;
  v8 = 0xD000000000000015;
  if (v2 != 4)
  {
    v8 = 0x53746E6572727563;
    v7 = 0xEF73656369767265;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEF6E6F6974636172;
  v10 = 0x65746E4972657375;
  if (v2 != 1)
  {
    v10 = 0x6574617473;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_240594790()
{
  v1 = *v0;
  v2 = 0x746E756F636361;
  v3 = 0x61746144736D6469;
  v4 = 0xD000000000000015;
  if (v1 != 4)
  {
    v4 = 0x53746E6572727563;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65746E4972657375;
  if (v1 != 1)
  {
    v5 = 0x6574617473;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_240594864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2405AC514(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24059488C(uint64_t a1)
{
  v2 = sub_240594C94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405948C8(uint64_t a1)
{
  v2 = sub_240594C94();

  return MEMORY[0x2821FE720](a1, v2);
}