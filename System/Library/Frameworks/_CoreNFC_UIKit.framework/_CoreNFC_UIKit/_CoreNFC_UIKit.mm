unint64_t NFCWindowSceneEvent.description.getter()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_23B6B6FB8()
{
  if (*v0)
  {
    return 0x61746E6573657270;
  }

  else
  {
    return 0x6544726564616572;
  }
}

uint64_t sub_23B6B7008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6544726564616572 && a2 == 0xEE00646574636574;
  if (v6 || (sub_23B6B873C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x61746E6573657270 && a2 == 0xEC0000006E6F6974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23B6B873C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23B6B7108(uint64_t a1)
{
  v2 = sub_23B6B75F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B6B7144(uint64_t a1)
{
  v2 = sub_23B6B75F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B6B718C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_23B6B71C8(uint64_t a1)
{
  v2 = sub_23B6B7648();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B6B7204(uint64_t a1)
{
  v2 = sub_23B6B7648();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B6B7240(uint64_t a1)
{
  v2 = sub_23B6B769C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B6B727C(uint64_t a1)
{
  v2 = sub_23B6B769C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NFCWindowSceneEvent.encode(to:)(void *a1)
{
  v3 = sub_23B6B7568(&qword_27E178BD0, &qword_23B6B8860);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20]();
  v18 = &v16 - v4;
  v5 = sub_23B6B7568(&qword_27E178BD8, &qword_23B6B8868);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20]();
  v7 = &v16 - v6;
  v8 = sub_23B6B7568(&qword_27E178BE0, &qword_23B6B8870);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v11 = &v16 - v10;
  v12 = *v1;
  sub_23B6B75B0(a1, a1[3]);
  sub_23B6B75F4();
  sub_23B6B878C();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_23B6B7648();
    v14 = v18;
    sub_23B6B872C();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_23B6B769C();
    sub_23B6B872C();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t sub_23B6B7568(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_23B6B75B0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23B6B75F4()
{
  result = qword_27E178BE8;
  if (!qword_27E178BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E178BE8);
  }

  return result;
}

unint64_t sub_23B6B7648()
{
  result = qword_27E178BF0;
  if (!qword_27E178BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E178BF0);
  }

  return result;
}

unint64_t sub_23B6B769C()
{
  result = qword_27E178BF8;
  if (!qword_27E178BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E178BF8);
  }

  return result;
}

uint64_t NFCWindowSceneEvent.hashValue.getter()
{
  v1 = *v0;
  sub_23B6B874C();
  MEMORY[0x23EEA2DD0](v1);
  return sub_23B6B876C();
}

uint64_t NFCWindowSceneEvent.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = sub_23B6B7568(&qword_27E178C00, &qword_23B6B8878);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x28223BE20]();
  v6 = &v24 - v5;
  v7 = sub_23B6B7568(&qword_27E178C08, &qword_23B6B8880);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20]();
  v9 = &v24 - v8;
  v10 = sub_23B6B7568(&qword_27E178C10, &qword_23B6B8888);
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20]();
  v12 = &v24 - v11;
  sub_23B6B75B0(a1, a1[3]);
  sub_23B6B75F4();
  v13 = v31;
  sub_23B6B877C();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_23B6B871C();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_23B6B86EC();
    swift_allocError();
    v21 = v20;
    sub_23B6B7568(&qword_27E178C18, &qword_23B6B8890);
    *v21 = &type metadata for NFCWindowSceneEvent;
    sub_23B6B870C();
    sub_23B6B86DC();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return sub_23B6B7C44(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_23B6B7648();
    sub_23B6B86FC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_23B6B769C();
    sub_23B6B86FC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return sub_23B6B7C44(v22);
}

uint64_t sub_23B6B7BB8()
{
  v1 = *v0;
  sub_23B6B874C();
  MEMORY[0x23EEA2DD0](v1);
  return sub_23B6B876C();
}

uint64_t sub_23B6B7C00(uint64_t a1)
{
  v2 = *v1;
  sub_23B6B874C();
  MEMORY[0x23EEA2DD0](v2);
  return sub_23B6B876C();
}

uint64_t sub_23B6B7C44(void *a1)
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

unint64_t sub_23B6B7CC0()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t UISceneConnectionOptions.nfcEvent.getter()
{
  v0 = sub_23B6B7D4C();

  return MEMORY[0x2821DDDF8](&type metadata for NFCEventSceneConnectionOptionDefinition, &type metadata for NFCEventSceneConnectionOptionDefinition, &type metadata for NFCWindowSceneEvent, v0);
}

unint64_t sub_23B6B7D4C()
{
  result = qword_27E178C20;
  if (!qword_27E178C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E178C20);
  }

  return result;
}

uint64_t sub_23B6B7DBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_23B6B8508(a1, v5);
  v3 = swift_allocObject();
  sub_23B6B85A4(v5, v3 + 16);
  result = swift_allocObject();
  *(result + 16) = sub_23B6B85BC;
  *(result + 24) = v3;
  *a2 = sub_23B6B8634;
  a2[1] = result;
  return result;
}

uint64_t sub_23B6B7E4C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  sub_23B6B86BC();
}

unint64_t sub_23B6B7F58()
{
  result = qword_27E178C28;
  if (!qword_27E178C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E178C28);
  }

  return result;
}

uint64_t sub_23B6B7FF8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23B6B808C(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23B6B8184()
{
  result = qword_27E178C30;
  if (!qword_27E178C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E178C30);
  }

  return result;
}

unint64_t sub_23B6B81DC()
{
  result = qword_27E178C38;
  if (!qword_27E178C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E178C38);
  }

  return result;
}

unint64_t sub_23B6B8234()
{
  result = qword_27E178C40;
  if (!qword_27E178C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E178C40);
  }

  return result;
}

unint64_t sub_23B6B828C()
{
  result = qword_27E178C48;
  if (!qword_27E178C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E178C48);
  }

  return result;
}

unint64_t sub_23B6B82E4()
{
  result = qword_27E178C50;
  if (!qword_27E178C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E178C50);
  }

  return result;
}

unint64_t sub_23B6B833C()
{
  result = qword_27E178C58;
  if (!qword_27E178C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E178C58);
  }

  return result;
}

unint64_t sub_23B6B8394()
{
  result = qword_27E178C60;
  if (!qword_27E178C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E178C60);
  }

  return result;
}

unint64_t sub_23B6B83EC()
{
  result = qword_27E178C68;
  if (!qword_27E178C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E178C68);
  }

  return result;
}

unint64_t sub_23B6B8444()
{
  result = qword_27E178C70;
  if (!qword_27E178C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E178C70);
  }

  return result;
}

uint64_t sub_23B6B8498()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B6B84D0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_23B6B8508(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23B6B856C()
{
  sub_23B6B7C44((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23B6B85A4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_23B6B85BC(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = v2[5];
  v6 = v2[6];
  sub_23B6B75B0(v2 + 2, v5);
  v8 = v4;
  return (*(v6 + 8))(a1, &v8, v5, v6);
}