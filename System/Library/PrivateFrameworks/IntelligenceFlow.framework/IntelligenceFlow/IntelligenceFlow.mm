uint64_t sub_1DD6DDD98(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SessionClient.__allocating_init(configuration:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  type metadata accessor for SessionClient.ReverseServer();
  sub_1DD6E2848();
  v5 = swift_allocObject();
  sub_1DD6DE128();
  v10 = v3;
  v11 = v4;
  v6 = *(v1 + 168);

  v8 = v6(v7, &v10);
  if (v2)
  {
  }

  else
  {
    *(v8 + 56) = v5;
    swift_unknownObjectRelease();
  }

  return v8;
}

uint64_t sub_1DD6DDF08()
{

  return swift_slowAlloc();
}

uint64_t sub_1DD6DDF20()
{
  v3 = *(v1 - 120);

  return sub_1DD6E5E68(v0, 0, 1, v3);
}

void *sub_1DD6DDF58()
{

  return memcpy((v0 + 352), (v0 + 88), 0x58uLL);
}

uint64_t sub_1DD6DDF78()
{

  return sub_1DD8748F0();
}

uint64_t sub_1DD6DDFD0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_1DD6DE00C()
{

  return sub_1DD785BBC(v0, type metadata accessor for SearchOverrides_OverrideBehavior);
}

void sub_1DD6DE034()
{
  v0[v1[9]] = 2;
  *&v0[v1[10]] = 512;
  *&v0[v1[11]] = 0;
  v3 = &v0[v1[12]];
  *v3 = 0;
  *(v3 + 1) = 0;
  *(v3 + 4) = 0;
  *&v0[v1[13]] = 4;
  v0[v1[14]] = 2;
  v4 = &v0[v1[15]];
  *v4 = 0;
  v4[1] = 0;
  *v0 = v2;
}

uint64_t sub_1DD6DE0F4()
{

  return sub_1DD875110();
}

__n128 sub_1DD6DE114()
{
  result = *(v0 + 16);
  v3 = *(v0 + 32);
  *(v1 - 128) = result;
  *(v1 - 112) = v3;
  *(v1 - 96) = *(v0 + 48);
  return result;
}

uint64_t sub_1DD6DE128()
{
  sub_1DD8745E0();
  sub_1DD6DE2C8();
  swift_allocObject();
  *(v0 + 16) = sub_1DD8745D0();
  sub_1DD710A9C(&qword_1ECD16778, &unk_1DD8B1700);
  v1 = swift_allocObject();
  *(v1 + 48) = 0;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v0 + 24) = v1;
  return v0;
}

uint64_t sub_1DD6DE22C()
{

  return swift_slowAlloc();
}

uint64_t sub_1DD6DE250()
{
}

void *sub_1DD6DE2A8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return memcpy(va, (v9 + 88), 0x58uLL);
}

void sub_1DD6DE3B8()
{
  v2 = v0[2];
  *(v1 - 112) = v0[3];
  *(v1 - 104) = v2;
  v3 = v0[4];
  *(v1 - 128) = v0[5];
  *(v1 - 120) = v3;
}

uint64_t sub_1DD6DE3CC()
{
  *(v0 + 48) = *(v0 + 64);

  return MEMORY[0x1EEE12310](0);
}

uint64_t sub_1DD6DE3F0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t SessionClient.__allocating_init(localObject:configuration:)()
{
  sub_1DD6FABA4();
  sub_1DD6E6B30();
  swift_allocObject();
  v1 = sub_1DD6DEB18();
  SessionClient.init(localObject:configuration:)(v1, v2);
  return v0;
}

void sub_1DD6DE474()
{

  JUMPOUT(0x1E12B5DE0);
}

void sub_1DD6DE4D0()
{

  JUMPOUT(0x1E12B4C10);
}

uint64_t sub_1DD6DE4EC(uint64_t result)
{
  *v1 = result;
  *(result + 528) = v2;
  return result;
}

uint64_t sub_1DD6DE550@<X0>(uint64_t a1@<X8>, uint64_t *a2@<X2>, uint64_t *a3@<X3>)
{

  return sub_1DD75EF08(v3, v4 + a1, a2, a3);
}

uint64_t sub_1DD6DE59C()
{

  return sub_1DD785BBC(v0, type metadata accessor for OverridesCommon_OverrideDialog);
}

uint64_t sub_1DD6DE5DC(uint64_t a1)
{

  return sub_1DD875860();
}

uint64_t sub_1DD6DE618(uint64_t a1, uint64_t a2)
{

  return sub_1DD875910();
}

void SessionClient.init(localObject:configuration:)(uint64_t a1, uint64_t a2)
{
  sub_1DD6DED2C();
  v4 = v2;
  v6 = v5;
  v8 = *v7;
  v9 = *(v7 + 8);
  sub_1DD874610();
  *(v2 + 16) = 0u;
  v10 = v2 + 16;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  sub_1DD6DE2C8();
  swift_allocObject();
  *(v2 + 64) = sub_1DD874600();
  sub_1DD8745E0();
  sub_1DD6DE2C8();
  swift_allocObject();
  v11 = sub_1DD8745D0();
  *(v2 + 56) = v6;
  *(v2 + 72) = v11;
  *(v2 + 80) = v8;
  *(v2 + 88) = v9;
  sub_1DD6DEC94(qword_1EE0159F0, v12, type metadata accessor for SessionClient, &protocol conformance descriptor for SessionClient);
  v13 = sub_1DD710A9C(&qword_1ECD16700, &qword_1DD8B10A0);
  sub_1DD6DE2C8();
  swift_allocObject();
  swift_unknownObjectRetain_n();

  v14 = sub_1DD874DA0();
  if (v3)
  {

    swift_unknownObjectRelease();

LABEL_10:
    sub_1DD6E0C78();
    return;
  }

  v15 = v14;
  *(&v22 + 1) = v13;
  v23 = sub_1DD6DF59C(&unk_1EE013A80, &qword_1ECD16700, &qword_1DD8B10A0, MEMORY[0x1E69C5B20]);
  *&v21 = v15;
  swift_beginAccess();
  if (*(v4 + 40))
  {
    sub_1DD6E1EC8(v10);
  }

  sub_1DD6DF5E4(&v21, v10);
  swift_endAccess();
  *&v21 = v8;
  BYTE8(v21) = v9;
  sub_1DD6DF5FC();
  sub_1DD8745F0();
  if (*(v4 + 40))
  {
    sub_1DD6E0F0C(v10, &v21);
  }

  else
  {
    v16 = *(v10 + 16);
    v21 = *v10;
    v22 = v16;
    v23 = *(v10 + 32);
  }

  if (*(&v22 + 1))
  {

    v17 = sub_1DD6DEA7C(&v21, *(&v22 + 1));
    MEMORY[0x1EEE9AC00](v17);
    sub_1DD6E0EC8();
    sub_1DD874D80();
    v18 = sub_1DD6DFF24();
    sub_1DD6E6658(v18, v19);
    swift_unknownObjectRelease();

    sub_1DD6E1EC8(&v21);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1DD6DEB50()
{

  return swift_task_alloc();
}

uint64_t sub_1DD6DEB68(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_1DD6DEBC8(uint64_t a1, uint64_t a2)
{

  return sub_1DD875800();
}

uint64_t sub_1DD6DEBFC(uint64_t a1)
{

  return sub_1DD8758D0();
}

uint64_t sub_1DD6DEC30(uint64_t a1, uint64_t a2)
{

  return sub_1DD8759D0();
}

uint64_t sub_1DD6DEC94(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_1DD6DED44(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0x58uLL);
}

uint64_t sub_1DD6DED78(uint64_t a1, uint64_t a2)
{

  return sub_1DD875800();
}

uint64_t sub_1DD6DEDA4()
{

  return sub_1DD875B20();
}

uint64_t sub_1DD6DEE4C()
{
  v0 = sub_1DD874B40();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69A90B0], v0, v2);
  sub_1DD874B30();
  return (*(v1 + 8))(v4, v0);
}

id sub_1DD6DEF68(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

uint64_t sub_1DD6DEFDC(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

id static SessionXPCServerService.customize(serverInterface:)()
{
  sub_1DD874EE0();
  v0 = sub_1DD6DF1B8();
  [v0 v1];
  sub_1DD874EE0();
  v2 = sub_1DD6DF1B8();

  return [v2 v3];
}

uint64_t sub_1DD6DF100(uint64_t a1)
{

  return sub_1DD875730();
}

uint64_t sub_1DD6DF12C()
{

  return sub_1DD875730();
}

uint64_t sub_1DD6DF19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1DD8758D0();
}

void *sub_1DD6DF224(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1DD6DF2FC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1DD6DF374()
{

  return sub_1DD73C43C();
}

uint64_t sub_1DD6DF48C(uint64_t a1, uint64_t a2)
{

  return sub_1DD8758D0();
}

uint64_t sub_1DD6DF59C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1DD717E88(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD6DF5E4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_1DD6DF5FC()
{
  result = qword_1EE015198[0];
  if (!qword_1EE015198[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE015198);
  }

  return result;
}

uint64_t SessionClientConfiguration.encode(to:)(void *a1)
{
  v4 = sub_1DD710A9C(&qword_1ECD10810, &qword_1DD886DA0);
  sub_1DD6DDEAC();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  v10 = *v1;
  v12[2] = *(v1 + 8);
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD6DF84C();

  sub_1DD875BB0();
  v15 = v10;
  v14 = 0;
  sub_1DD710A9C(&qword_1ECD10818, &qword_1DD886DA8);
  sub_1DD6DF8A0(&qword_1EE013A18, &qword_1EE015AD0, &protocol conformance descriptor for ClientAction.Definition, MEMORY[0x1E69E6300]);
  sub_1DD8759D0();

  if (!v2)
  {
    v13 = 1;
    sub_1DD875980();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1DD6DF84C()
{
  result = qword_1EE016DD0[0];
  if (!qword_1EE016DD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE016DD0);
  }

  return result;
}

uint64_t sub_1DD6DF8A0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1DD717E88(&qword_1ECD10818, &qword_1DD886DA8);
    sub_1DD6E87D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD6DF928(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    v4 = v3;
    sub_1DD717E88(&qword_1ECD10818, &qword_1DD886DA8);
    sub_1DD6E881C(v4);
    sub_1DD6E5CB8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionClientConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1DD6DFA84);
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

uint64_t getEnumTagSinglePayload for ClientIdentityPack.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void ClientAction.Definition.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD163E0, &qword_1DD8AF000);
  sub_1DD6DDEAC();
  v5 = v4;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  sub_1DD6DF224(v2, v2[3]);
  sub_1DD6DFE7C();
  sub_1DD875BB0();
  sub_1DD6DE334();
  sub_1DD875970();
  if (!v0)
  {
    sub_1DD6DE334();
    sub_1DD875970();
    v11 = 2;
    sub_1DD710A9C(&qword_1ECD163E8, &qword_1DD8AF008);
    sub_1DD6E00FC(&unk_1EE013A28);
    sub_1DD6DEA94();
    sub_1DD6DE334();
    sub_1DD8759D0();
    type metadata accessor for ClientAction.Definition(0);
    sub_1DD874FC0();
    sub_1DD6E1518();
    sub_1DD6E1588(v9);
    sub_1DD6DE334();
    sub_1DD8759D0();
    sub_1DD6DE334();
    sub_1DD875980();
    v11 = 5;
    sub_1DD710A9C(&qword_1ECD163F0, &qword_1DD8AF010);
    sub_1DD6E1748(&unk_1EE013A38);
    sub_1DD6DEA94();
    sub_1DD6DE334();
    sub_1DD8759D0();
    v11 = 6;
    sub_1DD6DEA94();
    sub_1DD6DE334();
    sub_1DD8759D0();
    sub_1DD6DE334();
    sub_1DD875980();
  }

  (*(v5 + 8))(v8, v3);
  sub_1DD6E0C78();
}

unint64_t sub_1DD6DFE7C()
{
  result = qword_1EE018BB8[0];
  if (!qword_1EE018BB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE018BB8);
  }

  return result;
}

void *sub_1DD6DFEE8()
{

  return memcpy((v0 + 160), (v0 + 80), 0x50uLL);
}

uint64_t sub_1DD6DFF80()
{
  *(v0 - 65) = 0;

  return sub_1DD875970();
}

unint64_t sub_1DD6DFFDC(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x7470697263736564;
      break;
    case 2:
      result = 0x6574656D61726170;
      break;
    case 3:
      result = 0x795474757074756FLL;
      break;
    case 4:
      result = 0x62616F646E557369;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0x5358697269537369;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DD6E00FC(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    v4 = v3;
    sub_1DD717E88(&qword_1ECD163E8, &qword_1DD8AF008);
    sub_1DD6E1588(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClientAction.Definition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1DD6E0280);
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

uint64_t ClientAction.Definition.ParameterDefinition.encode(to:)(void *a1)
{
  v4 = sub_1DD710A9C(&qword_1ECD163B0, &qword_1DD8AEFD8);
  sub_1DD6DDEAC();
  v6 = v5;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DE340();
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD6E11C0();
  sub_1DD875BB0();
  sub_1DD875970();
  if (!v1)
  {
    sub_1DD875970();
    type metadata accessor for ClientAction.Definition.ParameterDefinition(0);
    sub_1DD874FC0();
    sub_1DD6E1518();
    sub_1DD6E1588(v8);
    sub_1DD8759D0();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_1DD6E0494@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2;
  *(result + 40) = 0xEB00000000656761;
  return result;
}

uint64_t sub_1DD6E0514()
{
  v4 = v0[7];
  v0[10] = v0[6];
  v0[11] = v4;
  v5 = v0[5];
  v0[8] = v0[4];
  v0[9] = v5;

  return sub_1DD6EE7DC((v0 + 8), v1, v2);
}

uint64_t sub_1DD6E0600(uint64_t a1, uint64_t a2)
{

  return sub_1DD8759D0();
}

uint64_t sub_1DD6E0628(uint64_t a1, uint64_t a2, void (*a3)(void))
{

  return sub_1DD7018D0(v4, v3, a3);
}

uint64_t sub_1DD6E0640()
{

  return sub_1DD6E2098(v0, type metadata accessor for ClientAction);
}

uint64_t getEnumTagSinglePayload for IntelligenceEngineAsset(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1DD6E073C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DD6E074C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DD6E076C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DD6E077C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DD6E078C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DD6E079C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DD6E07AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_1DD6E07FC()
{
  v1 = *(v0 + 80);
  *(v0 + 256) = *(v0 + 64);
  *(v0 + 272) = v1;
  result = *(v0 + 96);
  v3 = *(v0 + 112);
  *(v0 + 288) = result;
  *(v0 + 304) = v3;
  return result;
}

uint64_t sub_1DD6E0868()
{

  return sub_1DD755E70();
}

uint64_t sub_1DD6E0918(uint64_t a1)
{

  return sub_1DD875BB0();
}

uint64_t sub_1DD6E0954()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1DD6E098C(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_1DD6E0B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD875B90();
}

uint64_t sub_1DD6E0B90()
{
  *(v4 - 112) = v1;
  *(v4 - 104) = v0;
  *(v4 - 96) = v2;
  *(v4 - 88) = v3;
  return 0;
}

uint64_t sub_1DD6E0BB4(uint64_t a1)
{

  return sub_1DD8745F0();
}

uint64_t type metadata accessor for SessionClientID(uint64_t a1)
{
  result = qword_1EE015628;
  if (!qword_1EE015628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 *sub_1DD6E0C9C(__n128 *result, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  result[4] = a5;
  result[5] = a4;
  result[6] = a3;
  result[7] = a2;
  return result;
}

uint64_t sub_1DD6E0D34(uint64_t a1)
{

  return sub_1DD722F80(a1, type metadata accessor for SessionServerDebuggerEvent.Payload);
}

uint64_t sub_1DD6E0D74(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD874AA0();
}

uint64_t sub_1DD6E0D94(void x0_0, void x1_0, void a3, void a4, void a5, void a6, void a7, void a8, uint64_t a2)
{

  return sub_1DD7533B8();
}

uint64_t sub_1DD6E0E50()
{

  return sub_1DD6E2098(v0, type metadata accessor for MessagePayload.ClientEffectResolved.Result);
}

id sub_1DD6E0E8C(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1DD6E0EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD875BB0();
}

unint64_t sub_1DD6E0EC8()
{
  result = qword_1EE018CD8;
  if (!qword_1EE018CD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE018CD8);
  }

  return result;
}

uint64_t sub_1DD6E0F0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1DD6E0F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(v9, &a9, 0x50uLL);
}

uint64_t sub_1DD6E0FC0(uint64_t a1)
{

  return swift_once();
}

void sub_1DD6E1018()
{
  v1 = *(v0 - 184);
  *(v0 - 144) = *(v0 - 192);
  *(v0 - 136) = v1;
  v2 = *(v0 - 208);
  *(v0 - 128) = *(v0 - 176);
  *(v0 - 120) = v2;
}

uint64_t sub_1DD6E1030(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD875B90();
}

uint64_t sub_1DD6E1054(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0x7470697263736564;
  }

  return 0x70795465756C6176;
}

void *sub_1DD6E10DC(void *a1)
{

  return memcpy(a1, (v1 + 352), 0x58uLL);
}

uint64_t sub_1DD6E113C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 - 120) = v3;

  return sub_1DD875B90();
}

uint64_t sub_1DD6E1164()
{

  return sub_1DD8750C0();
}

uint64_t sub_1DD6E1198()
{

  return sub_1DD833690();
}

unint64_t sub_1DD6E11C0()
{
  result = qword_1EE018C68;
  if (!qword_1EE018C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018C68);
  }

  return result;
}

uint64_t sub_1DD6E1224(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1DD6E12F0()
{

  return sub_1DD6E5A64(v0, type metadata accessor for SessionServerMessage);
}

uint64_t sub_1DD6E1530(uint64_t a1)
{

  return swift_once();
}

unint64_t sub_1DD6E1588(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClientAction.Definition.ParameterDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1DD6E1698);
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

uint64_t getEnumTagSinglePayload for SiriXResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1DD6E1748(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    v4 = v3;
    sub_1DD717E88(&qword_1ECD163F0, &qword_1DD8AF010);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

__n128 *sub_1DD6E17BC(__n128 *result, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  result[2] = a4;
  result[3] = a5;
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t sub_1DD6E1808(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD875BB0();
}

uint64_t sub_1DD6E1828(uint64_t a1, uint64_t a2)
{

  return sub_1DD875910();
}

void sub_1DD6E18A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, SEL *a9)
{
  sub_1DD6E2848();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  v15 = sub_1DD874750();
  v18[4] = a7;
  v18[5] = v14;
  sub_1DD6ED704();
  sub_1DD6E0BD4();
  v18[2] = v16;
  v18[3] = a8;
  v17 = _Block_copy(v18);

  [a1 *a9];
  _Block_release(v17);
}

uint64_t sub_1DD6E198C(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x6341746E65696C63;
  }
}

uint64_t SessionReverseClient.__allocating_init(existingConnection:localObject:)()
{
  sub_1DD6FABA4();
  sub_1DD6E2848();
  swift_allocObject();
  sub_1DD6DEB18();
  SessionReverseClient.init(existingConnection:localObject:)();
  return v0;
}

uint64_t sub_1DD6E1A70@<X0>(uint64_t *a1@<X8>)
{
  result = SessionReverseClient.__allocating_init(existingConnection:localObject:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void *QueryDecoration.init()()
{
  type metadata accessor for QueryDecorationClient();
  swift_allocObject();
  v0[2] = sub_1DD6E4348();
  type metadata accessor for ContextClient();
  swift_allocObject();
  v0[3] = sub_1DD6E6B78();
  sub_1DD874610();
  sub_1DD6DE2C8();
  swift_allocObject();
  v0[4] = sub_1DD874600();
  sub_1DD8745E0();
  sub_1DD6DE2C8();
  swift_allocObject();
  v0[5] = sub_1DD8745D0();
  return v0;
}

void sub_1DD6E1B38(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1DD6E1BD0()
{

  return sub_1DD730620(v0 + 288, v0 + 360, v1, v2);
}

void *sub_1DD6E1C3C()
{

  return memcpy((v0 + 744), (v1 - 192), 0x68uLL);
}

uint64_t sub_1DD6E1C9C(uint64_t a1, uint64_t a2)
{

  return sub_1DD875910();
}

uint64_t sub_1DD6E1CE0(uint64_t a1)
{
  sub_1DD875B20();
  sub_1DD874820();
  sub_1DD6E1DAC(&qword_1EE015D90, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

uint64_t sub_1DD6E1D64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD6E1DAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD6E1DF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD6E1E3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DD6E1E84(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1DD6E1EC8(void *a1)
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

uint64_t sub_1DD6E2014()
{
}

uint64_t sub_1DD6E2040(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1DD6DF448();
  v4 = sub_1DD6DDEFC();
  v5(v4);
  return a2;
}

uint64_t sub_1DD6E2098(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1DD6DE1C4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DD6E2124(uint64_t a1)
{

  return sub_1DD8750F0();
}

uint64_t sub_1DD6E2158()
{

  return sub_1DD755E70();
}

uint64_t sub_1DD6E2250()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1DD6E2270(uint64_t a1)
{

  return sub_1DD8745C0();
}

uint64_t sub_1DD6E22B0(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_1DD6E22D0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
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

uint64_t initializeBufferWithCopyOfBuffer for MessagePayload.RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1DD6E2324(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void ClientAction.Definition.ParameterDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1DD6DED2C();
  v26 = v25;
  v45 = v27;
  v46 = sub_1DD874FC0();
  sub_1DD6DDEAC();
  v44 = v28;
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6DE4A8();
  v32 = v31 - v30;
  sub_1DD710A9C(&qword_1ECD163C0, &qword_1DD8AEFE0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v33);
  v34 = type metadata accessor for ClientAction.Definition.ParameterDefinition(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD6DE4A8();
  v38 = (v37 - v36);
  sub_1DD6DF224(v26, v26[3]);
  sub_1DD6E11C0();
  sub_1DD875B90();
  if (v24)
  {
    sub_1DD6E1EC8(v26);
  }

  else
  {
    *v38 = sub_1DD875870();
    v38[1] = v39;
    v38[2] = sub_1DD875870();
    v38[3] = v40;
    sub_1DD6E1518();
    sub_1DD6E1588(v41);
    sub_1DD8758D0();
    v42 = sub_1DD6E4A18();
    v43(v42);
    (*(v44 + 32))(v38 + *(v34 + 24), v32, v46);
    sub_1DD6E2040(v38, v45, type metadata accessor for ClientAction.Definition.ParameterDefinition);
    sub_1DD6E1EC8(v26);
    sub_1DD6E2098(v38, type metadata accessor for ClientAction.Definition.ParameterDefinition);
  }

  sub_1DD6E0C78();
}

uint64_t sub_1DD6E26C8(uint64_t result)
{
  *v1 = result;
  *(result + 384) = v2;
  return result;
}

uint64_t sub_1DD6E2718(uint64_t a1, uint64_t a2)
{

  return sub_1DD7533B8();
}

uint64_t sub_1DD6E2778(uint64_t a1, uint64_t a2)
{

  return sub_1DD875910();
}

uint64_t sub_1DD6E27F8(uint64_t a1)
{

  return MEMORY[0x1EEE6AE10](a1, v1);
}

uint64_t sub_1DD6E2828()
{

  return swift_task_alloc();
}

uint64_t sub_1DD6E2888@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1DD874ED0();
  v7 = sub_1DD6E1224(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t ClientIdentityPack.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  MEMORY[0x1E12B4C10](a1, a2);
  MEMORY[0x1E12B4C10](124, 0xE100000000000000);
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    a3 = 7104878;
    v6 = 0xE300000000000000;
  }

  MEMORY[0x1E12B4C10](a3, v6);

  MEMORY[0x1E12B4C10](62, 0xE100000000000000);
  return 0x7C4449433CLL;
}

uint64_t SessionReverseClient.init(existingConnection:localObject:)()
{
  sub_1DD874610();
  sub_1DD6DE2C8();
  swift_allocObject();
  *(v0 + 16) = sub_1DD874600();
  *(v0 + 24) = 0;
  sub_1DD6DEC94(&qword_1EE015430, v2, type metadata accessor for SessionReverseClient, &protocol conformance descriptor for SessionReverseClient);
  sub_1DD710A9C(&qword_1ECD16718, qword_1DD8B10B8);
  sub_1DD6DE2C8();
  swift_allocObject();

  sub_1DD6DDEDC();
  v3 = sub_1DD874D90();
  if (!v1)
  {
    *(v0 + 24) = v3;
  }

  return v0;
}

uint64_t SessionClientConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1DD710A9C(&qword_1ECD10820, &qword_1DD886DB0);
  sub_1DD6DDEAC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD6DF84C();
  sub_1DD875B90();
  if (v2)
  {
    return sub_1DD6E1EC8(a1);
  }

  sub_1DD710A9C(&qword_1ECD10818, &qword_1DD886DA8);
  v14[15] = 0;
  sub_1DD6DF8A0(&qword_1EE013A10, &qword_1EE015AC8, &protocol conformance descriptor for ClientAction.Definition, MEMORY[0x1E69E6330]);
  sub_1DD8758D0();
  v11 = v15;
  v14[14] = 1;
  v12 = sub_1DD875880();
  (*(v7 + 8))(v10, v5);
  *a2 = v11;
  *(a2 + 8) = v12 & 1;

  sub_1DD6E1EC8(a1);
}

void ClientAction.Definition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  v22 = v21;
  v41 = v23;
  sub_1DD874FC0();
  sub_1DD6DDEAC();
  v42 = v25;
  v43 = v24;
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6DE4A8();
  v28 = v27 - v26;
  sub_1DD710A9C(&qword_1ECD163F8, &unk_1DD8AF018);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  v44 = type metadata accessor for ClientAction.Definition(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD6DE4A8();
  v33 = (v32 - v31);
  sub_1DD6DF224(v22, v22[3]);
  sub_1DD6DFE7C();
  sub_1DD875B90();
  if (v20)
  {
    sub_1DD6E1EC8(v22);
  }

  else
  {
    LOBYTE(a10) = 0;
    *v33 = sub_1DD875870();
    v33[1] = v34;
    sub_1DD6E2814(1);
    v33[2] = sub_1DD875870();
    v33[3] = v35;
    sub_1DD710A9C(&qword_1ECD163E8, &qword_1DD8AF008);
    sub_1DD6E00FC(&unk_1EE013A20);
    sub_1DD8758D0();
    v33[4] = a10;
    LOBYTE(a10) = 3;
    sub_1DD6E1518();
    sub_1DD6E1588(v36);
    sub_1DD8758D0();
    (*(v42 + 32))(v33 + v44[7], v28, v43);
    sub_1DD6E2814(4);
    *(v33 + v44[8]) = sub_1DD875880() & 1;
    sub_1DD710A9C(&qword_1ECD163F0, &qword_1DD8AF010);
    sub_1DD6E1748(&unk_1EE013A30);
    sub_1DD6EE2E0();
    *(v33 + v44[9]) = a10;
    sub_1DD6EE2E0();
    *(v33 + v44[10]) = a10;
    sub_1DD6E2814(7);
    v37 = sub_1DD875880();
    v38 = sub_1DD6DE684();
    v39(v38);
    *(v33 + v44[11]) = v37 & 1;
    sub_1DD6E093C();
    sub_1DD6E2040(v33, v41, v40);
    sub_1DD6E1EC8(v22);
    sub_1DD6E2098(v33, type metadata accessor for ClientAction.Definition);
  }

  sub_1DD6E0C78();
}

uint64_t QueryDecoration.__deallocating_deinit()
{
  QueryDecoration.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

void *QueryDecoration.deinit()
{

  return v0;
}

uint64_t QueryDecorationClient.__deallocating_deinit()
{
  QueryDecorationClient.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

void *QueryDecorationClient.deinit()
{

  return v0;
}

uint64_t sub_1DD6E33A4()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1DD6E3410(uint64_t a1, uint64_t a2)
{
  sub_1DD6ED2E8();
  swift_beginAccess();
  if (*(v2 + 40))
  {
    sub_1DD6E0F0C(v2 + 16, &v6);
  }

  else
  {
    sub_1DD6E6D08();
  }

  if (v7)
  {
    v4 = sub_1DD6DEA7C(&v6, v7);
    MEMORY[0x1EEE9AC00](v4);
    sub_1DD6E0EC8();
    sub_1DD7032C4();
    if (!v3)
    {
    }

    sub_1DD6E1EC8(&v6);
    sub_1DD6E1868();
  }

  else
  {
    __break(1u);
  }
}

void sub_1DD6E34FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  sub_1DD6E2848();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  v15 = sub_1DD8747C0();
  v18[4] = a6;
  v18[5] = v14;
  sub_1DD6ED704();
  sub_1DD6E0BD4();
  v18[2] = v16;
  v18[3] = a7;
  v17 = _Block_copy(v18);

  [a1 *a8];
  _Block_release(v17);
}

uint64_t sub_1DD6E3640()
{
  v0 = sub_1DD6E0A5C();
  v1(v0);
  sub_1DD6DE1C4();
  v2 = sub_1DD6DDEFC();

  return v3(v2);
}

uint64_t sub_1DD6E36C0()
{
  v0 = sub_1DD825000();
  v1(v0);
  sub_1DD826944();
  return sub_1DD6E5870();
}

uint64_t sub_1DD6E372C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
}

uint64_t sub_1DD6E3770()
{
  sub_1DD76D0F4(v1, v0);
  sub_1DD76D0F4(v3, v2);
  return v1;
}

uint64_t sub_1DD6E37B0()
{
  v0 = sub_1DD826B18();
  v1(v0);
  sub_1DD6E9B14();
  return sub_1DD6DDEFC();
}

uint64_t sub_1DD6E3824(void x0_0, void x1_0, void a3, void a4, void a5, void a6, void a7, void a8, uint64_t a2)
{

  return sub_1DD7533B8();
}

uint64_t sub_1DD6E3850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1DD6E5E68(a1, 1, 1, a4);
}

void sub_1DD6E3880(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_1DD6E38A4()
{
  type metadata accessor for ClientAction.Definition.ParameterDefinition(0);

  return sub_1DD874FC0();
}

uint64_t SessionServerMessage.init(sessionId:eventId:queryEventId:clientRequestId:clientSessionId:timestamp:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1DD826528();
  v50 = v29;
  v51 = v30;
  v49 = v31;
  v33 = v32;
  sub_1DD825B54();
  v34 = sub_1DD874820();
  sub_1DD6DE1C4();
  v36 = *(v35 + 32);
  v36(v25, v28, v34);
  type metadata accessor for SessionServerMessage(0);
  sub_1DD827658();
  v36(v25 + v37, v27, v34);
  sub_1DD6E3A64();
  sub_1DD6E27BC();
  sub_1DD6E59B8();
  v38 = (v25 + *(v28 + 28));
  *v38 = v26;
  v38[1] = v33;
  v39 = (v25 + *(v28 + 36));
  *v39 = v49;
  v39[1] = v50;
  sub_1DD874790();
  sub_1DD6DF448();
  sub_1DD8264FC();

  return v43(v40, v41, v42, v43, v44, v45, v46, v47, a9, v49, v50, v51, a13, a14, a15, a16);
}

uint64_t sub_1DD6E3A64()
{
  sub_1DD6E1F34();
  sub_1DD8278A8(v1, v2, v3, v4);
  sub_1DD6DF448();
  v5 = sub_1DD6DDEFC();
  v6(v5);
  return v0;
}

uint64_t SessionID.hash(into:)(uint64_t a1)
{
  sub_1DD874820();
  sub_1DD6E1394();
  sub_1DD6E1DF4(v1, v2, MEMORY[0x1E69695B8]);

  return sub_1DD8750C0();
}

uint64_t SessionID.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DD874820();
  sub_1DD6DE1C4();
  v6 = *(v5 + 32);

  return v6(a2, a1, v4);
}

uint64_t IntelligenceFlowClient.__deallocating_deinit()
{
  SessionClient.deinit();
  v0 = sub_1DD6E6B30();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *SessionClient.deinit()
{
  _s16IntelligenceFlow13SessionClientC40xpcBidirectionalConnectionWasInvalidatedyyF_0();
  if (*(v0 + 40))
  {
    sub_1DD6E1EC8((v0 + 16));
  }

  swift_unknownObjectRelease();

  return v0;
}

uint64_t _s16IntelligenceFlow13SessionClientC40xpcBidirectionalConnectionWasInvalidatedyyF_0()
{
  v3[4] = nullsub_1;
  v3[5] = 0;
  sub_1DD6ED704();
  sub_1DD6E0BD4();
  v3[2] = v0;
  v3[3] = &unk_1F58E67F8;
  v1 = _Block_copy(v3);
  [swift_unknownObjectRetain() connectionClosedWith_];
  _Block_release(v1);
  return swift_unknownObjectRelease();
}

void sub_1DD6E3D08(uint64_t a1, void (**a2)(void, void, void))
{
  v22 = sub_1DD710A9C(&qword_1ECD10300, &qword_1DD884D20);
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = *(a1 + 24);
  os_unfair_lock_lock((v10 + 48));
  *(v10 + 24) = 1;
  v11 = *(v10 + 16);
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  os_unfair_lock_unlock((v10 + 48));
  v12 = *(v11 + 16);
  if (v12)
  {
    v20 = v11;
    v21 = a2;
    v13 = *(v22 + 48);
    v14 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v15 = *(v4 + 72);
    do
    {
      sub_1DD6E7A88(v14, v9, &qword_1ECD10300, &qword_1DD884D20);
      v16 = *(v22 + 48);
      v17 = sub_1DD874820();
      (*(*(v17 - 8) + 32))(v6, v9, v17);
      v18 = sub_1DD710A9C(&qword_1ECD166F0, &unk_1DD8B1090);
      (*(*(v18 - 8) + 32))(&v6[v16], &v9[v13], v18);
      sub_1DD864664();
      v23 = swift_allocError();
      sub_1DD8753C0();
      sub_1DD6FC560(v6, &qword_1ECD10300, &qword_1DD884D20);
      v14 += v15;
      --v12;
    }

    while (v12);

    a2 = v21;
  }

  else
  {
  }

  sub_1DD6E0EC8();
  v19 = sub_1DD875590();
  (a2)[2](a2, v19, 0);

  _Block_release(a2);
}

uint64_t sub_1DD6E3FA0()
{
  sub_1DD6E3FD0();
  sub_1DD6E2848();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DD6E3FD0()
{

  return v0;
}

uint64_t sub_1DD6E3FF8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1DD6E4050(void *a1)
{

  return memcpy(a1, v1, 0x58uLL);
}

uint64_t sub_1DD6E4090()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_1DD6E40A8(uint64_t a1)
{

  return sub_1DD8758D0();
}

uint64_t sub_1DD6E40E4(uint64_t result)
{
  *(v2 - 400) = v1;
  *(v2 - 224) = result;
  return result;
}

uint64_t sub_1DD6E4110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1DD875910();
}

uint64_t sub_1DD6E413C()
{
  v1 = sub_1DD6E0CA8();
  type metadata accessor for ActionSuccess.FollowUpAction.ExecutableAction.LinkAction(v1);
  v2 = sub_1DD6E492C();

  return sub_1DD6E5ED0(v2, v0, v3);
}

uint64_t sub_1DD6E4198()
{
}

uint64_t sub_1DD6E41BC(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t sub_1DD6E422C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      return sub_1DD6DEAA4(*a1 + 2147483646);
    }

    sub_1DD6F9A8C();
  }

  else
  {
    v3 = -1;
  }

  return sub_1DD6DEAA4(v3);
}

void *sub_1DD6E4278(void *a1)
{

  return memcpy(a1, (v1 + 320), 0x50uLL);
}

uint64_t sub_1DD6E42B4()
{

  return sub_1DD8336E4(v1, v0);
}

uint64_t sub_1DD6E42D0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

void *sub_1DD6E4348()
{
  sub_1DD874ED0();
  sub_1DD6DDEAC();
  v42 = v2;
  v43 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v41 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1DD874E40();
  sub_1DD6DDEAC();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v12 = sub_1DD874E60();
  sub_1DD6DDEAC();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  v0[2] = 0;
  v21 = sub_1DD874610();
  sub_1DD6DE3F0(v21);
  v0[3] = sub_1DD874600();
  v22 = sub_1DD8745E0();
  sub_1DD6DE3F0(v22);
  v23 = sub_1DD8745D0();
  v45 = v0;
  v0[4] = v23;
  sub_1DD874B50();
  sub_1DD874B50();
  sub_1DD874E50();
  sub_1DD874E20();
  v24 = *(v14 + 8);
  v24(v17, v12);
  v25 = sub_1DD874E50();
  v26 = sub_1DD875530();
  if (sub_1DD8755B0())
  {
    v27 = swift_slowAlloc();
    v40 = v12;
    v28 = v8;
    v29 = v27;
    *v27 = 0;
    v30 = sub_1DD874E30();
    _os_signpost_emit_with_name_impl(&dword_1DD6DC000, v25, v26, v30, "QueryDecorationClient.init", "", v29, 2u);
    v31 = v29;
    v8 = v28;
    v12 = v40;
    MEMORY[0x1E12B5DE0](v31, -1, -1);
  }

  v32 = v44;
  (*(v5 + 16))(v8, v11, v44);
  v33 = sub_1DD874EA0();
  sub_1DD6DE3F0(v33);
  v34 = sub_1DD874E90();
  (*(v5 + 8))(v11, v32);
  v24(v20, v12);
  sub_1DD6E4A38(qword_1EE017168, v35, type metadata accessor for QueryDecorationClient, &protocol conformance descriptor for QueryDecorationClient);
  v36 = sub_1DD710A9C(&qword_1ECD166E0, &qword_1DD8B1070);
  sub_1DD6DE3F0(v36);
  v37 = v45;

  v37[2] = sub_1DD874D10();

  sub_1DD710A9C(&qword_1ECD166E8, &qword_1DD8B1078);
  sub_1DD874CE0();

  sub_1DD6E4E70(v34);

  return v37;
}

uint64_t sub_1DD6E48EC()
{
}

uint64_t sub_1DD6E4938()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_1DD6E49DC(uint64_t a1, uint64_t a2)
{

  return sub_1DD8758D0();
}

uint64_t sub_1DD6E4A38(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1DD6E4A98()
{
  v0 = sub_1DD874B40();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69A90B0], v0, v2);
  sub_1DD874B30();
  return (*(v1 + 8))(v4, v0);
}

uint64_t static QueryDecorationXPCService.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE019088 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD874ED0();
  v3 = sub_1DD6E1224(v2, qword_1EE019090);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id static QueryDecorationXPCService.interface.getter()
{
  if (qword_1EE019078 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE019080;

  return v1;
}

uint64_t static QueryDecorationXPCService.selectorClasses.getter()
{
  if (qword_1EE0190B0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DD6E4D64@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1DD85FD88;
  *(v5 + 24) = v4;
  *a2 = sub_1DD85FD98;
  a2[1] = v5;

  return swift_unknownObjectRetain();
}

uint64_t sub_1DD6E4DFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD6E4E34()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD6E4E70(uint64_t a1)
{
  v1 = sub_1DD874E70();
  v19 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_1DD874E40();
  v4 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1DD874E60();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DD874B50();
  v11 = sub_1DD874E50();
  sub_1DD874E80();
  v18 = sub_1DD875520();
  if (sub_1DD8755B0())
  {

    sub_1DD874EB0();

    v12 = v19;
    if ((*(v19 + 88))(v3, v1) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v12 + 8))(v3, v1);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1DD874E30();
    _os_signpost_emit_with_name_impl(&dword_1DD6DC000, v11, v18, v15, "QueryDecorationClient.init", v13, v14, 2u);
    MEMORY[0x1E12B5DE0](v14, -1, -1);
  }

  (*(v4 + 8))(v6, v20);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1DD6E5180(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD6E5250(uint64_t a1)
{

  return sub_1DD874CB0();
}

void sub_1DD6E5278()
{
  v1 = v0[7];
  v0[2] = v0[6];
  v0[3] = v1;
}

uint64_t UUID.init(namespace:name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1DD875190();

  v5 = sub_1DD875310();
  *(v5 + 16) = 20;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  v14[0] = v5;
  memset(&c, 0, sizeof(c));
  CC_SHA1_Init(&c);
  v6 = sub_1DD874800();
  sub_1DD6E5668(v6, v7, v4, v14, &c);
  v8 = v14[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD85E8D0();
    v8 = v12;
  }

  v9 = *(v8 + 16);
  if (v9 < 7)
  {
    __break(1u);
    goto LABEL_14;
  }

  *(v8 + 38) = *(v8 + 38) & 0xF | 0x50;
  if (v9 < 9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v8 + 40) = *(v8 + 40) & 0x3F | 0x80;
  if (v9 == 9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v9 < 0xB)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v9 == 11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v9 < 0xD)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v9 == 13)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v9 < 0xF)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  if (v9 == 15)
  {
    goto LABEL_21;
  }

  sub_1DD8747F0();
  v10 = sub_1DD874820();
  (*(*(v10 - 8) + 8))(a1, v10);
}

uint64_t sub_1DD6E5668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, CC_SHA1_CTX *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  data[0] = a1;
  data[1] = a2;
  v8 = *(a3 + 16);
  v9 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DD85E8D0();
    v9 = v12;
    *a4 = v12;
  }

  sub_1DD6E5758(v9 + 32, v9 + 32 + *(v9 + 16), a5, data, &v14, (a3 + 32), a3 + 32 + v8);
  *a4 = v9;
}

uint64_t sub_1DD6E5758(uint64_t result, int a2, CC_SHA1_CTX *c, void *data, uint64_t a5, const void *a6, uint64_t a7)
{
  if (data)
  {
    v10 = a5 - data;
  }

  else
  {
    v10 = 0;
  }

  if (result)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v10))
    {
      v11 = result;
      result = CC_SHA1_Update(c, data, v10);
      v12 = a7 - a6;
      if (!a6)
      {
        v12 = 0;
      }

      v13 = v12 - 1;
      if (!__OFSUB__(v12, 1))
      {
        if ((v13 & 0x8000000000000000) == 0)
        {
          if (!HIDWORD(v13))
          {
            CC_SHA1_Update(c, a6, v13);
            v14 = v11;
            return CC_SHA1_Final(v14, c);
          }

          goto LABEL_26;
        }

LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_24;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (HIDWORD(v10))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  result = CC_SHA1_Update(c, data, v10);
  v15 = a7 - a6;
  if (!a6)
  {
    v15 = 0;
  }

  v16 = v15 - 1;
  if (__OFSUB__(v15, 1))
  {
    goto LABEL_29;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!HIDWORD(v16))
  {
    CC_SHA1_Update(c, a6, v16);
    v14 = 0;
    return CC_SHA1_Final(v14, c);
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1DD6E5870()
{
  sub_1DD6E1F34();
  v1(0);
  sub_1DD6DF448();
  v2 = sub_1DD6DDEFC();
  v3(v2);
  return v0;
}

uint64_t sub_1DD6E59B8()
{
  sub_1DD6E1F34();
  v1(0);
  sub_1DD6DF448();
  v2 = sub_1DD6DDEFC();
  v3(v2);
  return v0;
}

uint64_t sub_1DD6E5A0C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1DD6DF448();
  v4 = sub_1DD6DDEFC();
  v5(v4);
  return a2;
}

uint64_t sub_1DD6E5A64(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1DD6DE1C4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DD6E5ABC()
{
  v1 = sub_1DD6DE290();
  v2(v1);
  sub_1DD6DE1C4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1DD6E5B50()
{

  return sub_1DD6E59B8();
}

void SessionClientMessage.init(sessionId:clientRequestId:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DD827764();
  sub_1DD8257B8();
  sub_1DD6E0A5C();
  sub_1DD874820();
  sub_1DD6DDEAC();
  v7 = sub_1DD701470();
  v8(v7);
  v9 = type metadata accessor for SessionClientMessage(0);
  sub_1DD6E5344();
  sub_1DD826B70();
  sub_1DD6E5870();
  if (!v5)
  {
    v6 = 0;
    v5 = 0xE000000000000000;
  }

  sub_1DD6E5ABC();
  v10 = sub_1DD6EFF74();
  v11(v10);
  v12 = (v4 + *(v9 + 20));
  *v12 = v6;
  v12[1] = v5;
  sub_1DD827720();
}

void *sub_1DD6E5C88(void *a1)
{

  return memcpy(a1, (v1 + 384), 0x48uLL);
}

void *sub_1DD6E5CE4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 - 256);
  *v3 = a1;
  v3[1] = v1;
  return v3;
}

void *sub_1DD6E5CF8(void *a1)
{

  return memcpy(a1, (v1 + 1768), 0x58uLL);
}

uint64_t sub_1DD6E5D90()
{

  return sub_1DD7533B8();
}

uint64_t sub_1DD6E5DF8()
{
  *(v0 - 104) = 1;

  return sub_1DD8758D0();
}

void sub_1DD6E5E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  *(v7 - 84) = a7;
  *(v7 - 104) = a4;
  *(v7 - 96) = a5;
  *(v7 - 112) = a3;
}

uint64_t sub_1DD6E5E90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 20))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1DD6E5F10()
{
}

uint64_t sub_1DD6E6008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1DD8758D0();
}

uint64_t sub_1DD6E6048(uint64_t a1, uint64_t a2)
{

  return sub_1DD875910();
}

uint64_t sub_1DD6E6068()
{

  return swift_beginAccess();
}

uint64_t sub_1DD6E6098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1DD8759D0();
}

void *sub_1DD6E60B4()
{

  return memcpy((v0 + 288), (v0 + 72), 0x48uLL);
}

uint64_t sub_1DD6E6130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 - 136) = v5;

  return sub_1DD8758D0();
}

uint64_t sub_1DD6E6198()
{
}

__n128 sub_1DD6E61E0()
{
  v2 = *(v1 - 112) + *(v0 + 24);
  *v2 = *(v1 - 104);
  result = *(v1 - 96);
  *(v2 + 8) = result;
  return result;
}

uint64_t sub_1DD6E6240(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD875BB0();
}

uint64_t sub_1DD6E6260()
{

  return sub_1DD8757A0();
}

uint64_t sub_1DD6E6298(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1DD6E62D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1DD6E6320(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return memcpy(va, (v9 + 72), 0x48uLL);
}

uint64_t sub_1DD6E6340()
{

  return sub_1DD7533B8();
}

uint64_t sub_1DD6E63BC(uint64_t a1, uint64_t a2)
{

  return sub_1DD875800();
}

uint64_t sub_1DD6E6448(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1DD6E64D4(uint64_t a1, uint64_t a2)
{

  return sub_1DD875800();
}

uint64_t sub_1DD6E64F4(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void *sub_1DD6E650C()
{

  return memcpy((v0 + 320), (v0 + 80), 0x50uLL);
}

uint64_t sub_1DD6E658C(uint64_t a1, uint64_t a2)
{

  return sub_1DD875800();
}

uint64_t sub_1DD6E65AC(uint64_t a1, uint64_t a2)
{

  return sub_1DD875800();
}

uint64_t sub_1DD6E6628()
{

  return sub_1DD8758D0();
}

uint64_t sub_1DD6E6658(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void SessionConfiguration.init()(uint64_t a1@<X8>)
{
  *a1 = 5;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 2;
  v2 = type metadata accessor for SessionConfiguration(0);
  sub_1DD6ED288();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v3, v4, v5, v6);
  *(a1 + v2[9]) = 2;
  *(a1 + v2[10]) = 512;
  *(a1 + v2[11]) = 0;
  sub_1DD6E3880(a1 + v2[12]);
  *(a1 + v2[13]) = 4;
  *(a1 + v2[14]) = 2;
  v7 = (a1 + v2[15]);
  *v7 = 0;
  v7[1] = 0;
}

uint64_t _s16IntelligenceFlow10AuditTokenV8rawValueACSo13audit_token_ta_tcfC_0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD874C20();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1DD6E67B4(uint64_t a1, uint64_t a2)
{
  sub_1DD6E0D28();
  v4 = sub_1DD874890();

  return sub_1DD6E5ED0(v2, a2, v4);
}

uint64_t type metadata accessor for SessionID(uint64_t a1)
{
  result = qword_1EE013B28;
  if (!qword_1EE013B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SessionIdentityPack(uint64_t a1)
{
  result = qword_1EE0154F0;
  if (!qword_1EE0154F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SessionIdentityPack.description.getter()
{
  sub_1DD8756B0();

  v2 = MEMORY[0x1E12B41F0](v1);
  MEMORY[0x1E12B4C10](v2);

  sub_1DD6DE4D0();
  v3 = (v0 + *(type metadata accessor for SessionIdentityPack(0) + 20));
  MEMORY[0x1E12B4C10](*v3, v3[1]);
  sub_1DD6DE4D0();
  MEMORY[0x1E12B4C10](v3[2], v3[3]);
  sub_1DD6DE4D0();
  if (v3[5])
  {
    v4 = v3[4];
    v5 = v3[5];
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x1E12B4C10](v4, v5);

  MEMORY[0x1E12B4C10](62, 0xE100000000000000);
  return 0x7C4449533CLL;
}

uint64_t sub_1DD6E69B8()
{
}

uint64_t sub_1DD6E69F8()
{

  return type metadata accessor for SessionIdentityPack(0);
}

uint64_t sub_1DD6E6A14(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1DD6E6A44(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD875A30();
}

uint64_t sub_1DD6E6A74@<X0>(uint64_t a1@<X8>, uint64_t *a2@<X2>, uint64_t *a3@<X3>)
{

  return sub_1DD75EE80(v4 + a1, v3, a2, a3);
}

unint64_t sub_1DD6E6B0C()
{
  v2 = v0[11];
  v0[2] = v0[10];
  v0[3] = v2;

  return sub_1DD6EF294();
}

uint64_t sub_1DD6E6B78()
{
  *(v0 + 16) = 0;
  sub_1DD6E5180(&qword_1EE0188C8, type metadata accessor for ContextClient, &unk_1DD87AB70);
  sub_1DD710A9C(&qword_1ECD0E900, qword_1DD87ABD0);
  swift_allocObject();

  *(v0 + 16) = sub_1DD874D10();

  return v0;
}

void sub_1DD6E6C28(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *v3 = 0;
  v3[1] = 0xE000000000000000;

  sub_1DD6FE380(v1);
}

void *sub_1DD6E6C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, (v9 + 80), 0x50uLL);
}

uint64_t sub_1DD6E6CD4(uint64_t a1, uint64_t a2)
{

  return sub_1DD875910();
}

__n128 sub_1DD6E6D08()
{
  result = *(v0 + 16);
  v3 = *(v0 + 32);
  *(v1 - 112) = result;
  *(v1 - 96) = v3;
  *(v1 - 80) = *(v0 + 48);
  return result;
}

uint64_t sub_1DD6E6D1C()
{

  return sub_1DD875110();
}

uint64_t sub_1DD6E6D64(uint64_t a1, uint64_t a2)
{
  sub_1DD6E0D28();
  v4 = sub_1DD874890();

  return sub_1DD6E5E68(v2, a2, a2, v4);
}

_BYTE *storeEnumTagSinglePayload for SessionConfiguration.PlannerType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1DD6E6E84);
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

uint64_t sub_1DD6E6EC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_1DD6E6EEC()
{
  sub_1DD6E72DC();
  if (v4)
  {
    sub_1DD6E1FA0();
    if (v5 != v6)
    {
      sub_1DD6FF9A0();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1DD6E88C8();
    }
  }

  sub_1DD6E9604();
  if (v3)
  {
    sub_1DD710A9C(&qword_1ECD10320, &qword_1DD884D40);
    v7 = swift_allocObject();
    v8 = j__malloc_size_0(v7);
    *(v7 + 2) = v2;
    *(v7 + 3) = 2 * ((v8 - 32) / 48);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[48 * v2] <= v9)
    {
      memmove(v9, v10, 48 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

IntelligenceFlow::ClientIdentityChain __swiftcall ClientIdentityChain.init(identities:appendingCurrentProcess:)(IntelligenceFlow::ClientIdentityChain identities, Swift::Bool appendingCurrentProcess)
{
  rawValue = identities.identities._rawValue;
  v4 = v2;
  if (appendingCurrentProcess)
  {
    v5 = sub_1DD874C10();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    sub_1DD874CA0();
    v12 = sub_1DD874C60();
    identities.identities._rawValue = swift_isUniquelyReferenced_nonNull_native();
    if ((identities.identities._rawValue & 1) == 0)
    {
      sub_1DD6E6EEC();
      rawValue = identities.identities._rawValue;
    }

    v13 = rawValue[2];
    if (v13 >= rawValue[3] >> 1)
    {
      sub_1DD6E6EEC();
      rawValue = identities.identities._rawValue;
    }

    rawValue[2] = v13 + 1;
    v14 = &rawValue[6 * v13];
    *(v14 + 4) = v5;
    *(v14 + 5) = v7;
    *(v14 + 6) = v9;
    *(v14 + 7) = v11;
    v14[64] = 0;
    *(v14 + 9) = v12;
  }

  *v4 = rawValue;
  return identities;
}

uint64_t sub_1DD6E7130()
{

  return sub_1DD730620(v0 + 320, v0 + 400, v1, v2);
}

uint64_t sub_1DD6E7150(uint64_t a1, uint64_t a2)
{

  return sub_1DD875800();
}

unint64_t sub_1DD6E7174()
{
  v4 = v0 + *(v1 + 24);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  *(v2 - 104) = *v4;
  *(v2 - 96) = v5;
  *(v2 - 88) = v6;
  *(v2 - 65) = 2;

  return sub_1DD70396C();
}

uint64_t sub_1DD6E71A4(uint64_t a1, uint64_t a2)
{

  return sub_1DD8759D0();
}

uint64_t sub_1DD6E71FC()
{

  return sub_1DD875110();
}

void *sub_1DD6E722C(void *a1)
{

  return memcpy(a1, (v1 + 1520), 0x50uLL);
}

uint64_t sub_1DD6E7268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1DD8759D0();
}

__n128 sub_1DD6E7284()
{
  v3 = v1 + *(v0 + 24);
  *v3 = *(v2 - 104);
  result = *(v2 - 96);
  *(v3 + 8) = result;
  *(v2 - 104) = 3;
  return result;
}

uint64_t sub_1DD6E72C0()
{

  return swift_unknownObjectRelease();
}

uint64_t SessionConfiguration.identityChain.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for SessionConfiguration(0) + 44);

  *(v1 + v3) = v2;
  return result;
}

uint64_t LocaleSettings.init(deviceLocale:userLocale:responseLocale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1DD874890();
  sub_1DD6DE1C4();
  v13 = *(v9 + 32);
  v13(a4, a1, v8);
  v10 = type metadata accessor for LocaleSettings(0);
  v13(a4 + *(v10 + 20), a2, v8);
  v11 = a4 + *(v10 + 24);

  return (v13)(v11, a3, v8);
}

uint64_t sub_1DD6E7470(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD0E358, &unk_1DD878670);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SessionConfiguration.initialLocaleSettings.setter()
{
  v2 = sub_1DD6DE290();
  v3 = v1 + *(type metadata accessor for SessionConfiguration(v2) + 32);

  return sub_1DD6E7470(v0, v3);
}

uint64_t SessionConfiguration.genderSettings.setter(__int16 *a1)
{
  v2 = *a1;
  result = type metadata accessor for SessionConfiguration(0);
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t storeEnumTagSinglePayload for GenderSettings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
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
    v6 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1DD6E761CLL);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t SessionConfiguration.crossAPIAssociationKey.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for SessionConfiguration(0) + 60));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_1DD6E769C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1DD710A9C(&qword_1ECD0E358, &unk_1DD878670);
    v8 = v5 + *(a4 + 32);

    return sub_1DD6E5E68(v8, a2, a2, v7);
  }

  return result;
}

void sub_1DD6E7728()
{
  sub_1DD6DED2C();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v35[2] = v9;
  v10 = sub_1DD710A9C(&qword_1ECD16708, &qword_1DD8B10A8);
  sub_1DD6DEA10(v10);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v35 - v12;
  v14 = type metadata accessor for SessionConfiguration(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DE4A8();
  v18 = v17 - v16;
  sub_1DD6E7A88(v4, v13, &qword_1ECD16708, &qword_1DD8B10A8);
  if (sub_1DD6E5ED0(v13, 1, v14) == 1)
  {
    *v18 = 5;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *(v18 + 24) = 2;
    v19 = v14[8];
    v20 = type metadata accessor for LocaleSettings(0);
    sub_1DD6E5E68(v18 + v19, 1, 1, v20);
    *(v18 + v14[9]) = 2;
    *(v18 + v14[10]) = 512;
    *(v18 + v14[11]) = 0;
    v21 = v18 + v14[12];
    *v21 = 0;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    *(v18 + v14[13]) = 4;
    *(v18 + v14[14]) = 2;
    v22 = (v18 + v14[15]);
    *v22 = 0;
    v22[1] = 0;
    if (sub_1DD6E5ED0(v13, 1, v14) != 1)
    {
      sub_1DD6FC560(v13, &qword_1ECD16708, &qword_1DD8B10A8);
    }
  }

  else
  {
    sub_1DD6E7B9C(v13, v18);
  }

  if (v6)
  {
    v23 = v8;
  }

  else
  {
    v23 = 0;
  }

  if (v6)
  {
    v24 = v6;
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  sub_1DD6FC500();
  sub_1DD6DEC94(v25, 255, v26, &protocol conformance descriptor for SessionConfiguration);

  v27 = sub_1DD8745F0();
  if (v1)
  {
    sub_1DD6DF518();
    sub_1DD6EEEFC(v18, v29);

LABEL_18:
    sub_1DD6E0C78();
    return;
  }

  v30 = v27;
  v31 = v28;
  empty = xpc_dictionary_create_empty();
  sub_1DD6EF494();
  sub_1DD6ED2E8();
  swift_beginAccess();
  if (*(v2 + 40))
  {
    sub_1DD6E0F0C(v2 + 16, &v36);
  }

  else
  {
    v32 = *(v2 + 32);
    v36 = *(v2 + 16);
    v37 = v32;
    v38 = *(v2 + 48);
  }

  if (*(&v37 + 1))
  {
    v35[0] = v38;
    v33 = sub_1DD6DEA7C(&v36, *(&v37 + 1));
    v35[1] = v35;
    MEMORY[0x1EEE9AC00](v33);
    v35[-6] = v23;
    v35[-5] = v24;
    v35[-4] = v30;
    v35[-3] = v31;
    v35[-2] = empty;
    sub_1DD874820();
    sub_1DD874D80();
    sub_1DD6DF518();
    sub_1DD6EEEFC(v18, v34);

    sub_1DD6E6658(v30, v31);
    swift_unknownObjectRelease();
    sub_1DD6E1EC8(&v36);
    goto LABEL_18;
  }

  __break(1u);
}

uint64_t sub_1DD6E7A88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1DD710A9C(a3, a4);
  sub_1DD6DE1C4();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD6E7AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1DD710A9C(&qword_1ECD0E358, &unk_1DD878670);
    v10 = a1 + *(a3 + 32);

    return sub_1DD6E5ED0(v10, a2, v9);
  }
}

uint64_t sub_1DD6E7B9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SessionConfiguration.encode(to:)(void *a1)
{
  sub_1DD710A9C(&qword_1ECD10848, &qword_1DD886F98);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEA6C();
  sub_1DD6DEA7C(a1, a1[3]);
  sub_1DD6E80A8();
  sub_1DD6E17D8();
  sub_1DD6F0A68();
  sub_1DD875BB0();
  sub_1DD6E8120();
  sub_1DD6E5334();
  sub_1DD875960();
  if (!v1)
  {
    sub_1DD6FF8F4();
    sub_1DD710A9C(&qword_1ECD10850, &unk_1DD886FA0);
    sub_1DD6E86F0(&unk_1EE0139F8);
    sub_1DD6E0AD4();
    sub_1DD6DE334();
    sub_1DD875960();
    sub_1DD6EFF88();
    sub_1DD710A9C(&qword_1ECD10818, &qword_1DD886DA8);
    sub_1DD6DF928(&qword_1EE013A18);
    sub_1DD6E0AD4();
    sub_1DD6DE334();
    sub_1DD875960();
    sub_1DD6E5334();
    sub_1DD875930();
    type metadata accessor for SessionConfiguration(0);
    type metadata accessor for LocaleSettings(0);
    sub_1DD6E88EC();
    sub_1DD6E881C(v4);
    sub_1DD6DE334();
    sub_1DD875960();
    sub_1DD6E8D50();
    sub_1DD6E5334();
    sub_1DD875960();
    sub_1DD6E8DAC();
    sub_1DD6E5334();
    sub_1DD875960();
    v5 = sub_1DD6E8E4C();

    sub_1DD6E0AD4();
    sub_1DD6DE334();
    sub_1DD875960();
    if (!v5)
    {

      v6 = sub_1DD6ED8E0();

      sub_1DD6E0AD4();
      sub_1DD6DE334();
      sub_1DD875960();

      if (v6)
      {
        goto LABEL_13;
      }

      sub_1DD6E99E8();
      sub_1DD6E5334();
      sub_1DD875960();
      sub_1DD6E5334();
      sub_1DD875930();
      sub_1DD6EF294();

      sub_1DD6E0AD4();
      sub_1DD6DE334();
      sub_1DD875960();
    }
  }

LABEL_13:
  v7 = sub_1DD6DEA04();
  return v8(v7);
}

unint64_t sub_1DD6E80A8()
{
  result = qword_1EE0173A8[0];
  if (!qword_1EE0173A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0173A8);
  }

  return result;
}

unint64_t sub_1DD6E8120()
{
  result = qword_1EE015460;
  if (!qword_1EE015460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015460);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetsUsageKey(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SessionConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
        JUMPOUT(0x1DD6E82C8);
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1DD6E83C8()
{
  result = qword_1EE017390;
  if (!qword_1EE017390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE017390);
  }

  return result;
}

uint64_t sub_1DD6E841C@<X0>(uint64_t *a1@<X8>)
{
  result = SessionConfiguration.PlannerType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SessionConfiguration.PlannerType.rawValue.getter()
{
  result = 0x647261646E617473;
  switch(*v0)
  {
    case 1:
      result = 0x796D6D7564;
      break;
    case 2:
      result = 0x676E6974736574;
      break;
    case 3:
      result = 7169123;
      break;
    case 4:
      result = 0x506369746E656761;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DD6E84F8(char a1)
{
  result = 0x5472656E6E616C70;
  switch(a1)
  {
    case 1:
      result = 0x6645746E65696C63;
      break;
    case 2:
      result = 0x6341746E65696C63;
      break;
    case 3:
      result = 0x436D726177657270;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x797469746E656469;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x65537265646E6567;
      break;
    case 10:
      result = 0xD000000000000028;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DD6E86F0(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    v4 = v3;
    sub_1DD717E88(&qword_1ECD10850, &unk_1DD886FA0);
    v4();
    sub_1DD6E5CB8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1DD6E875C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = a16;

  return sub_1DD6F388C(v17, a2, &a11);
}

uint64_t sub_1DD6E8794()
{

  return sub_1DD755E70();
}

uint64_t sub_1DD6E87C4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  result = a1[1];
  v4 = *(a1 + 4);
  *v1 = v3;
  *(v1 + 8) = result;
  *(v1 + 16) = v4;
  return result;
}

uint64_t sub_1DD6E87D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ClientAction.Definition(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD6E881C(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void *sub_1DD6E887C()
{

  return memcpy((v0 + 176), (v0 + 88), 0x58uLL);
}

uint64_t sub_1DD6E8940()
{

  return sub_1DD86766C(v1, v0);
}

void LocaleSettings.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1DD6DED2C();
  a23 = v27;
  a24 = v28;
  v29 = v24;
  v31 = v30;
  v32 = sub_1DD710A9C(&qword_1ECD108D0, &qword_1DD887000);
  sub_1DD6DDEAC();
  v34 = v33;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD6DE340();
  sub_1DD6DEA7C(v31, v31[3]);
  sub_1DD6E8B14();
  sub_1DD6F0A68();
  sub_1DD875BB0();
  a14 = 0;
  sub_1DD874890();
  sub_1DD6DF414();
  sub_1DD6E881C(v36);
  sub_1DD6DEC30(v29, &a14);
  if (!v25)
  {
    v37 = type metadata accessor for LocaleSettings(0);
    v38 = *(v37 + 20);
    a13 = 1;
    sub_1DD6DEC30(v29 + v38, &a13);
    v39 = *(v37 + 24);
    a12 = 2;
    sub_1DD6DEC30(v29 + v39, &a12);
  }

  (*(v34 + 8))(v26, v32);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

unint64_t sub_1DD6E8B14()
{
  result = qword_1EE018650;
  if (!qword_1EE018650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018650);
  }

  return result;
}

_BYTE *sub_1DD6E8B70(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1DD6EE784(result, v6);
        break;
      case 2:
        result = sub_1DD6E3744(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1DD6E8C2CLL);
      case 4:
        result = sub_1DD6E991C(result, v6);
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
          result = sub_1DD6E5904(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD6E8C54(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1DD6DEAA4(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 3);
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

      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1DD6DEAA4(v8);
}

uint64_t sub_1DD6E8CE0(char a1)
{
  if (!a1)
  {
    return 0x6F4C656369766564;
  }

  if (a1 == 1)
  {
    return 0x61636F4C72657375;
  }

  return 0x65736E6F70736572;
}

unint64_t sub_1DD6E8D50()
{
  result = qword_1EE015448;
  if (!qword_1EE015448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015448);
  }

  return result;
}

unint64_t sub_1DD6E8DAC()
{
  result = qword_1EE0155C8;
  if (!qword_1EE0155C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0155C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DebuggerSettings(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 4))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 1);
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

unint64_t sub_1DD6E8E4C()
{
  result = qword_1EE015528;
  if (!qword_1EE015528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015528);
  }

  return result;
}

void ClientIdentityChain.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  v22 = v21;
  v23 = sub_1DD710A9C(&qword_1ECD10A18, &qword_1DD8870E0);
  sub_1DD6DDEAC();
  v25 = v24;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6DE340();
  sub_1DD6DEA7C(v22, v22[3]);
  sub_1DD6E902C();

  sub_1DD6DFF18();
  sub_1DD875BB0();
  sub_1DD710A9C(&qword_1ECD10A20, &qword_1DD8870E8);
  sub_1DD7982D4(&unk_1EE013A08);
  sub_1DD8759D0();

  (*(v25 + 8))(v20, v23);
  sub_1DD6E0C78();
}

unint64_t sub_1DD6E902C()
{
  result = qword_1EE017478;
  if (!qword_1EE017478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE017478);
  }

  return result;
}

_BYTE *sub_1DD6E9088(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x1DD6E9124);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void ClientIdentity.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1DD6DED2C();
  v25 = v24;
  sub_1DD710A9C(&qword_1ECD10A30, &qword_1DD8870F8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6DEA6C();
  sub_1DD6DEA7C(v25, v25[3]);
  sub_1DD6E9318();
  sub_1DD6E17D8();
  sub_1DD6DFF18();
  sub_1DD875BB0();
  sub_1DD6E936C();
  sub_1DD875960();
  if (!v23)
  {
    sub_1DD6FF8F4();

    sub_1DD710A9C(&qword_1ECD10A38, &qword_1DD887100);
    sub_1DD6E9994(&unk_1EE015860);
    sub_1DD6DE334();
    sub_1DD8759D0();
  }

  v27 = sub_1DD6DEA04();
  v28(v27);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

unint64_t sub_1DD6E9318()
{
  result = qword_1EE018770[0];
  if (!qword_1EE018770[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE018770);
  }

  return result;
}

unint64_t sub_1DD6E936C()
{
  result = qword_1EE015BA8;
  if (!qword_1EE015BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015BA8);
  }

  return result;
}

uint64_t sub_1DD6E93C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1DD6E93E0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1DD6EE784(result, v6);
        break;
      case 2:
        result = sub_1DD6E3744(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1DD6E949CLL);
      case 4:
        result = sub_1DD6E991C(result, v6);
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
          result = sub_1DD6E5904(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD6E94D0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1DD6DEAA4(-1);
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
      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 2);
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

      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 2);
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

  return sub_1DD6DEAA4(v8);
}

uint64_t sub_1DD6E95A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = a20;

  return sub_1DD72F3CC(v21, a2, &a12);
}

uint64_t sub_1DD6E9614(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD875800();
}

uint64_t sub_1DD6E9658()
{

  return swift_getWitnessTable();
}

uint64_t sub_1DD6E9684()
{

  return sub_1DD78FC8C();
}

__n128 sub_1DD6E96EC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t AuditToken.encode(to:)(void *a1)
{
  sub_1DD710A9C(&qword_1ECD10A08, &qword_1DD8870D0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DEBA0();
  sub_1DD6DEA7C(a1, a1[3]);
  sub_1DD6E9838();
  sub_1DD6E4218();
  sub_1DD6F0A68();
  sub_1DD875BB0();
  sub_1DD6E989C();
  sub_1DD8759D0();
  v3 = sub_1DD6ED4B8();
  return v4(v3);
}

unint64_t sub_1DD6E9838()
{
  result = qword_1EE018C90;
  if (!qword_1EE018C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018C90);
  }

  return result;
}

unint64_t sub_1DD6E989C()
{
  result = qword_1EE013AA8;
  if (!qword_1EE013AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE013AA8);
  }

  return result;
}

uint64_t sub_1DD6E994C(char a1)
{
  if (a1)
  {
    return 0x7469746E6564695FLL;
  }

  else
  {
    return 0xD000000000000013;
  }
}

unint64_t sub_1DD6E9994(uint64_t a1)
{
  result = sub_1DD6E0CF4(a1);
  if (!result)
  {
    sub_1DD717E88(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD6E99E8()
{
  result = qword_1EE015840;
  if (!qword_1EE015840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015840);
  }

  return result;
}

uint64_t sub_1DD6E9A54()
{

  return sub_1DD719110();
}

uint64_t sub_1DD6E9A74()
{

  return sub_1DD753360(v0, type metadata accessor for ResponseGenerationOverrides_ListPredicate);
}

uint64_t sub_1DD6E9AA8(uint64_t a1)
{

  return sub_1DD8750F0();
}

uint64_t sub_1DD6E9B14()
{
}

void MessagePayload.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v24;
  a20 = v25;
  v537 = v21;
  v27 = v26;
  v28 = sub_1DD710A9C(&qword_1ECD11B18, &qword_1DD889920);
  sub_1DD6DF3FC(v28, &v543);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6E0C6C();
  v31 = sub_1DD6ED230(v30);
  v32 = type metadata accessor for ActionExecutionOutcome(v31);
  v33 = sub_1DD6DEDE0(v32, &v542[80]);
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v34);
  v35 = sub_1DD710A9C(&qword_1ECD11B20, &qword_1DD889928);
  sub_1DD6DF3FC(v35, &v542[72]);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v37);
  v38 = sub_1DD710A9C(&qword_1ECD11B28, &qword_1DD889930);
  sub_1DD6DF3FC(v38, &v542[56]);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD8253F8(v40, v480);
  v41 = sub_1DD710A9C(&qword_1ECD11B30, &qword_1DD889938);
  sub_1DD6DF3FC(v41, &v542[48]);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1DD82538C(v43);
  v44 = sub_1DD710A9C(&qword_1ECD11B38, &qword_1DD889940);
  sub_1DD6DF3FC(v44, &v542[24]);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1DD6E0C6C();
  v47 = sub_1DD6ED230(v46);
  v48 = type metadata accessor for SessionServerDebuggerEvent(v47);
  v49 = sub_1DD6DEDE0(v48, v542);
  MEMORY[0x1EEE9AC00](v49);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v50);
  v51 = sub_1DD710A9C(&qword_1ECD11B40, &qword_1DD889948);
  sub_1DD6DF3FC(v51, &v541);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v52);
  sub_1DD6E0C6C();
  v54 = sub_1DD6ED230(v53);
  v55 = type metadata accessor for SessionClientDebuggerEvent(v54);
  v56 = sub_1DD6DEDE0(v55, &v540[80]);
  MEMORY[0x1EEE9AC00](v56);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v57);
  v58 = sub_1DD710A9C(&qword_1ECD11B48, &qword_1DD889950);
  sub_1DD6DF3FC(v58, &v540[72]);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v59);
  sub_1DD6E0C6C();
  v61 = sub_1DD6ED230(v60);
  v62 = type metadata accessor for MessagePayload.ActionSummaryUpdate(v61);
  v63 = sub_1DD6DEDE0(v62, &v540[48]);
  MEMORY[0x1EEE9AC00](v63);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v64);
  v65 = sub_1DD710A9C(&qword_1ECD11B50, &qword_1DD889958);
  sub_1DD6DF3FC(v65, &v540[40]);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v66);
  sub_1DD6E0C6C();
  v68 = sub_1DD6ED230(v67);
  v69 = type metadata accessor for MessagePayload.ClientUndoRedoRequest(v68);
  v70 = sub_1DD6DEDE0(v69, &v540[16]);
  MEMORY[0x1EEE9AC00](v70);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v71);
  v72 = sub_1DD710A9C(&qword_1ECD11B58, &qword_1DD889960);
  sub_1DD6DF3FC(v72, &v540[8]);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v73);
  sub_1DD8253C8(v74, v481);
  v75 = sub_1DD710A9C(&qword_1ECD11B60, &qword_1DD889968);
  sub_1DD6DF3FC(v75, &v539);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v76);
  sub_1DD8254B0(v77, v482);
  v78 = sub_1DD710A9C(&qword_1ECD11B68, &qword_1DD889970);
  sub_1DD6DF3FC(v78, &v537);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v79);
  sub_1DD6E0C6C();
  v81 = sub_1DD6ED230(v80);
  v82 = type metadata accessor for MessagePayload.ExternalAgentOutcome(v81);
  v83 = sub_1DD6DEDE0(v82, &v534);
  MEMORY[0x1EEE9AC00](v83);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v84);
  v85 = sub_1DD710A9C(&qword_1ECD11B70, &qword_1DD889978);
  sub_1DD6DF3FC(v85, &v533);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v86);
  sub_1DD6E0C6C();
  v88 = sub_1DD6ED230(v87);
  v89 = type metadata accessor for MessagePayload.ExternalAgentRequest(v88);
  v90 = sub_1DD6DEDE0(v89, &v532);
  MEMORY[0x1EEE9AC00](v90);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v91);
  v92 = sub_1DD710A9C(&qword_1ECD11B78, &qword_1DD889980);
  sub_1DD6DF3FC(v92, &v531);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v93);
  sub_1DD6E0C6C();
  v95 = sub_1DD6ED230(v94);
  v96 = type metadata accessor for MessagePayload.ExternalAgentSpeechQuery(v95);
  v97 = sub_1DD6DEDE0(v96, &v530);
  MEMORY[0x1EEE9AC00](v97);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v98);
  v99 = sub_1DD710A9C(&qword_1ECD11B80, &qword_1DD889988);
  sub_1DD6DF3FC(v99, &v529);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v100);
  sub_1DD6E0C6C();
  v102 = sub_1DD6ED230(v101);
  v103 = type metadata accessor for MessagePayload.ExternalAgentTextQuery(v102);
  v104 = sub_1DD6DEDE0(v103, &v528);
  MEMORY[0x1EEE9AC00](v104);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v105);
  v106 = sub_1DD710A9C(&qword_1ECD11B88, &qword_1DD889990);
  sub_1DD6DF3FC(v106, &v527);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v107);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v108);
  v109 = sub_1DD710A9C(&qword_1ECD11B90, &qword_1DD889998);
  sub_1DD6DF3FC(v109, &v526);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v110);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v111);
  v112 = sub_1DD710A9C(&qword_1ECD11B98, &qword_1DD8899A0);
  sub_1DD6DF3FC(v112, &v525);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v113);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v114);
  v115 = sub_1DD710A9C(&qword_1ECD11BA0, &qword_1DD8899A8);
  sub_1DD6DF3FC(v115, &v524);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v116);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v117);
  v118 = sub_1DD710A9C(&qword_1ECD11BA8, &qword_1DD8899B0);
  sub_1DD6DF3FC(v118, &v523);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v119);
  sub_1DD6E0C6C();
  v121 = sub_1DD6ED230(v120);
  v122 = type metadata accessor for IntermediateSystemResponseRendered(v121);
  v123 = sub_1DD6DEDE0(v122, &v522);
  MEMORY[0x1EEE9AC00](v123);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v124);
  v125 = sub_1DD710A9C(&qword_1ECD11BB0, &qword_1DD8899B8);
  sub_1DD6DF3FC(v125, &v521);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v126);
  sub_1DD6E0C6C();
  v128 = sub_1DD6ED230(v127);
  v129 = type metadata accessor for IntermediateSystemResponse(v128);
  v130 = sub_1DD6DEDE0(v129, &v520);
  MEMORY[0x1EEE9AC00](v130);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v131);
  v132 = sub_1DD710A9C(&qword_1ECD11BB8, &qword_1DD8899C0);
  sub_1DD6DF3FC(v132, &v519);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v133);
  sub_1DD6E0C6C();
  v135 = sub_1DD6ED230(v134);
  v136 = type metadata accessor for SystemResponse(v135);
  v137 = sub_1DD6DEDE0(v136, &v518);
  MEMORY[0x1EEE9AC00](v137);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v138);
  v139 = sub_1DD710A9C(&qword_1ECD11BC0, &qword_1DD8899C8);
  sub_1DD6DF3FC(v139, &v517);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v140);
  sub_1DD6E0C6C();
  v142 = sub_1DD6ED230(v141);
  v143 = type metadata accessor for ActionResponse(v142);
  v144 = sub_1DD6DEDE0(v143, &v516);
  MEMORY[0x1EEE9AC00](v144);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v145);
  v146 = sub_1DD710A9C(&qword_1ECD11BC8, &qword_1DD8899D0);
  sub_1DD6DF3FC(v146, &v515);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v147);
  sub_1DD6E0C6C();
  v149 = sub_1DD6ED230(v148);
  v150 = type metadata accessor for SystemPromptResolution(v149);
  v151 = sub_1DD6DEDE0(v150, &v514);
  MEMORY[0x1EEE9AC00](v151);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v152);
  v153 = sub_1DD710A9C(&qword_1ECD11BD0, &qword_1DD8899D8);
  sub_1DD6DF3FC(v153, &v513);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v154);
  sub_1DD6E0C6C();
  v156 = sub_1DD6ED230(v155);
  v157 = type metadata accessor for SystemPrompt(v156);
  v158 = sub_1DD6DEDE0(v157, &v512);
  MEMORY[0x1EEE9AC00](v158);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v159);
  v160 = sub_1DD710A9C(&qword_1ECD11BD8, &qword_1DD8899E0);
  sub_1DD6DF3FC(v160, &v511);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v161);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v162);
  v163 = sub_1DD710A9C(&qword_1ECD11BE0, &qword_1DD8899E8);
  sub_1DD6DF3FC(v163, &v510);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v164);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v165);
  v166 = sub_1DD710A9C(&qword_1ECD11BE8, &qword_1DD8899F0);
  sub_1DD6DF3FC(v166, &v509);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v167);
  sub_1DD6E0C6C();
  v169 = sub_1DD6ED230(v168);
  v170 = type metadata accessor for MessagePayload.ClientActionResult(v169);
  v171 = sub_1DD6DEDE0(v170, &v508);
  MEMORY[0x1EEE9AC00](v171);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v172);
  v173 = sub_1DD710A9C(&qword_1ECD11BF0, &qword_1DD8899F8);
  sub_1DD6DF3FC(v173, &v507);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v174);
  sub_1DD6E0C6C();
  v176 = sub_1DD6ED230(v175);
  v177 = type metadata accessor for MessagePayload.ClientAction(v176);
  v178 = sub_1DD6DEDE0(v177, &v506);
  MEMORY[0x1EEE9AC00](v178);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v179);
  v180 = sub_1DD710A9C(&qword_1ECD11BF8, &qword_1DD889A00);
  sub_1DD6DF3FC(v180, &v505);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v181);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v182);
  v183 = sub_1DD710A9C(&qword_1ECD11C00, &qword_1DD889A08);
  sub_1DD6DF3FC(v183, &v504);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v184);
  sub_1DD6E0C6C();
  v186 = sub_1DD6ED230(v185);
  v187 = type metadata accessor for MessagePayload.ClientEffectResolved(v186);
  v188 = sub_1DD6DEDE0(v187, &v503);
  MEMORY[0x1EEE9AC00](v188);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v189);
  v190 = sub_1DD710A9C(&qword_1ECD11C08, &qword_1DD889A10);
  sub_1DD6DF3FC(v190, &v502);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v191);
  sub_1DD6E0C6C();
  v193 = sub_1DD6ED230(v192);
  v194 = type metadata accessor for MessagePayload.ClientEffectInvocation(v193);
  v195 = sub_1DD6DEDE0(v194, &v501);
  MEMORY[0x1EEE9AC00](v195);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v196);
  v197 = sub_1DD710A9C(&qword_1ECD11C10, &qword_1DD889A18);
  sub_1DD6DF3FC(v197, &v500);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v198);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v199);
  v200 = sub_1DD710A9C(&qword_1ECD11C18, &qword_1DD889A20);
  sub_1DD6DF3FC(v200, &v499);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v201);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v202);
  v203 = sub_1DD710A9C(&qword_1ECD11C20, &qword_1DD889A28);
  sub_1DD6DF3FC(v203, &v498);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v204);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v205);
  v206 = sub_1DD710A9C(&qword_1ECD11C28, &qword_1DD889A30);
  sub_1DD6DF3FC(v206, &v497);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v207);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v208);
  v209 = sub_1DD710A9C(&qword_1ECD11C30, &qword_1DD889A38);
  sub_1DD6DF3FC(v209, &v496);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v210);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v211);
  v212 = sub_1DD710A9C(&qword_1ECD11C38, &qword_1DD889A40);
  sub_1DD6DF3FC(v212, &v495);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v213);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v214);
  v215 = sub_1DD710A9C(&qword_1ECD11C40, &qword_1DD889A48);
  sub_1DD6DF3FC(v215, v494);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v216);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v217);
  v218 = sub_1DD710A9C(&qword_1ECD11C48, &qword_1DD889A50);
  sub_1DD6DF3FC(v218, &v493);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v219);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v220);
  v221 = sub_1DD710A9C(&qword_1ECD11C50, &qword_1DD889A58);
  sub_1DD6DF3FC(v221, &v492);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v222);
  sub_1DD6E0C6C();
  v224 = sub_1DD6ED230(v223);
  v225 = type metadata accessor for MessagePayload.StepExecutedWithReturnedValue(v224);
  v226 = sub_1DD6DEDE0(v225, &v491);
  MEMORY[0x1EEE9AC00](v226);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v227);
  v228 = sub_1DD710A9C(&qword_1ECD11C58, &qword_1DD889A60);
  sub_1DD6DF3FC(v228, &v490);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v229);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v230);
  v231 = sub_1DD710A9C(&qword_1ECD11C60, &qword_1DD889A68);
  sub_1DD6DF3FC(v231, &v489);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v232);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v233);
  v234 = sub_1DD710A9C(&qword_1ECD11C68, &qword_1DD889A70);
  sub_1DD6DF3FC(v234, &v488);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v235);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v236);
  v237 = sub_1DD710A9C(&qword_1ECD11C70, &qword_1DD889A78);
  sub_1DD6DF3FC(v237, &v487);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v238);
  sub_1DD6E0C6C();
  v240 = sub_1DD6ED230(v239);
  v241 = type metadata accessor for MessagePayload.Request(v240);
  v242 = sub_1DD6DEDE0(v241, &v486);
  MEMORY[0x1EEE9AC00](v242);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v243);
  v244 = sub_1DD710A9C(&qword_1ECD11C78, &qword_1DD889A80);
  sub_1DD6DF3FC(v244, &v485);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v245);
  sub_1DD6E7258();
  v246 = type metadata accessor for MessagePayload.UserTurnStarted(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v247);
  sub_1DD6ED3C0();
  type metadata accessor for MessagePayload(0);
  sub_1DD8247B4();
  MEMORY[0x1EEE9AC00](v248);
  sub_1DD824734();
  v249 = sub_1DD710A9C(&qword_1ECD11C80, &qword_1DD889A88);
  sub_1DD6DF3FC(v249, &a12);
  v536 = v250;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v251);
  sub_1DD6F0A58();
  v252 = *(v27 + 32);
  sub_1DD6E1C64();
  sub_1DD6FAA1C();
  v538 = v23;
  sub_1DD6EF0F4();
  sub_1DD875BB0();
  sub_1DD6E5344();
  sub_1DD826894();
  sub_1DD6E5870();
  sub_1DD6E0F70();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6E5B50();
      v542[0] = 1;
      sub_1DD8028FC();
      sub_1DD6E6CD4(&type metadata for MessagePayload.RequestCodingKeys, v542);
      sub_1DD825F98();
      sub_1DD6E1E84(v353);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v354 = sub_1DD6FC4B0();
      v355(v354);
      goto LABEL_55;
    case 2u:
      v542[0] = 2;
      sub_1DD6F9C40();
      sub_1DD6E6CD4(&type metadata for MessagePayload.TerminateCodingKeys, v542);
      sub_1DD6F9C94();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      goto LABEL_52;
    case 3u:
      v542[0] = 3;
      sub_1DD802854();
      sub_1DD6E6CD4(&type metadata for MessagePayload.SessionSuspendedCodingKeys, v542);
      sub_1DD8028A8();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      goto LABEL_52;
    case 4u:
      v542[0] = 4;
      sub_1DD8027AC();
      sub_1DD6E6CD4(&type metadata for MessagePayload.EndOfPlanCodingKeys, v542);
      sub_1DD802800();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      goto LABEL_52;
    case 5u:
      sub_1DD6E5B50();
      v542[0] = 5;
      sub_1DD802758();
      sub_1DD6E6CD4(&type metadata for MessagePayload.StepExecutedWithReturnedValueCodingKeys, v542);
      sub_1DD825EF0();
      sub_1DD6E1E84(v373);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v374 = sub_1DD6FC4B0();
      v375(v374);
      goto LABEL_55;
    case 6u:
      v384 = *v22;
      v385 = *(v22 + 8);
      v386 = *(v22 + 16);
      v542[0] = 6;
      sub_1DD8026B0();
      sub_1DD825698();
      sub_1DD6F0A74();
      sub_1DD82708C(v387, v388, v389, v390);
      *v542 = v384;
      v542[8] = v385;
      *&v542[16] = v386;
      sub_1DD802704();
      sub_1DD826DD4(v542, v391, v483, &type metadata for MessagePayload.SessionError);
      v392 = sub_1DD824BFC();
      v393(v392);
      v394 = sub_1DD824880();
      v395(v394, v22);
      sub_1DD71900C(v384);
      goto LABEL_50;
    case 7u:
      v342 = *v22;
      v341 = *(v22 + 8);
      v343 = *(v22 + 16);
      v344 = *(v22 + 24);
      v542[0] = 7;
      sub_1DD802608();
      sub_1DD825698();
      sub_1DD6F0A74();
      sub_1DD875910();
      *v542 = v342;
      *&v542[8] = v341;
      v542[16] = v343;
      *&v542[24] = v344;
      sub_1DD80265C();
      sub_1DD6FAC4C();
      sub_1DD826DD4(v345, v346, v347, v348);
      goto LABEL_24;
    case 8u:
      v409 = *(v22 + 8);
      v537 = *v22;
      v410 = *(v22 + 16);
      v411 = *(v22 + 24);
      v413 = *(v22 + 32);
      v412 = *(v22 + 40);
      v542[0] = 8;
      sub_1DD802560();
      sub_1DD825CA4();
      sub_1DD6F0A74();
      sub_1DD827830(v414, v415, v416, v417);
      *v542 = v537;
      *&v542[8] = v409;
      v535 = v409;
      v537 = v410;
      *&v542[16] = v410;
      v542[24] = v411;
      *&v542[32] = v413;
      *&v542[40] = v412;
      sub_1DD8025B4();
      sub_1DD826A40(v542, v418, v484, &type metadata for MessagePayload.Query);
      v419 = sub_1DD6E1858();
      v420(v419);
      v421 = sub_1DD6FA9F4();
      v422(v421, v22);

      sub_1DD826894();
      goto LABEL_38;
    case 9u:
      v324 = *v22;
      v325 = *(v22 + 8);
      v327 = *(v22 + 16);
      v326 = *(v22 + 24);
      v542[0] = 9;
      sub_1DD8024B8();
      sub_1DD825698();
      sub_1DD6F0A74();
      sub_1DD875910();
      *v542 = v324;
      v542[8] = v325;
      *&v542[16] = v327;
      *&v542[24] = v326;
      sub_1DD80250C();
      sub_1DD6FAC4C();
      sub_1DD826DD4(v328, v329, v330, v331);
LABEL_24:
      v349 = sub_1DD6FAC78();
      v350(v349);
      v351 = sub_1DD6E1858();
      goto LABEL_37;
    case 0xAu:
      sub_1DD8273D8();
      v542[0] = 10;
      sub_1DD802410();
      sub_1DD825CA4();
      sub_1DD6F0A74();
      sub_1DD82708C(v399, v400, v401, v402);
      sub_1DD8273CC();
      sub_1DD802464();
      sub_1DD6FAC4C();
      sub_1DD826A40(v403, v404, v405, v406);
      goto LABEL_36;
    case 0xBu:
      v290 = *v22;
      v311 = *(v22 + 8);
      v542[0] = 11;
      sub_1DD802368();
      sub_1DD6F9BEC();
      sub_1DD6F0A74();
      sub_1DD6E4110(v312, v313, v314, v315);
      *v542 = v290;
      *&v542[8] = v311;
      sub_1DD8023BC();
      sub_1DD6FE84C();
      goto LABEL_48;
    case 0xCu:
      v290 = *v22;
      v319 = *(v22 + 8);
      v542[0] = 12;
      sub_1DD8022C0();
      sub_1DD6F9BEC();
      sub_1DD6F0A74();
      sub_1DD6E4110(v320, v321, v322, v323);
      *v542 = v290;
      *&v542[8] = v319;
      sub_1DD802314();
      sub_1DD6FE84C();
      goto LABEL_48;
    case 0xDu:
      v379 = *v22;
      v542[0] = 13;
      sub_1DD802218();
      sub_1DD6F9BEC();
      sub_1DD6F3128();
      sub_1DD875910();
      *v542 = v379;
      sub_1DD80226C();
      sub_1DD8255D0();
      sub_1DD8759D0();
      v380 = sub_1DD6DF174();
      v381(v380);
      v382 = sub_1DD6E6CB0();
      goto LABEL_49;
    case 0xEu:
      sub_1DD6E5B50();
      v542[0] = 14;
      sub_1DD8021C4();
      sub_1DD6E6CD4(&type metadata for MessagePayload.ClientEffectInvocationCodingKeys, v542);
      sub_1DD826028();
      sub_1DD6E1E84(v305);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v306 = sub_1DD6FC4B0();
      v307(v306);
      goto LABEL_55;
    case 0xFu:
      sub_1DD6E5B50();
      v542[0] = 15;
      sub_1DD802170();
      sub_1DD6E6CD4(&type metadata for MessagePayload.ClientEffectResolvedCodingKeys, v542);
      sub_1DD825FB0();
      sub_1DD6E1E84(v338);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v339 = sub_1DD6FC4B0();
      v340(v339);
      goto LABEL_55;
    case 0x10u:
      memcpy(v542, v22, sizeof(v542));
      v540[0] = 16;
      sub_1DD8020C8();
      sub_1DD6E6CD4(&type metadata for MessagePayload.ActionWillExecuteCodingKeys, v540);
      memcpy(v540, v542, sizeof(v540));
      sub_1DD80211C();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v298 = sub_1DD6FC4B0();
      v299(v298);
      v300 = sub_1DD702E84();
      v301(v300, v20);
      sub_1DD800214(v542);
      goto LABEL_58;
    case 0x11u:
      sub_1DD6E5B50();
      v542[0] = 17;
      sub_1DD802074();
      sub_1DD6E6CD4(&type metadata for MessagePayload.ClientActionCodingKeys, v542);
      sub_1DD825F50();
      sub_1DD6E1E84(v359);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v360 = sub_1DD6FC4B0();
      v361(v360);
      goto LABEL_55;
    case 0x12u:
      sub_1DD6E5B50();
      v542[0] = 18;
      sub_1DD802020();
      sub_1DD6E6CD4(&type metadata for MessagePayload.ClientActionResultCodingKeys, v542);
      sub_1DD825EC0();
      sub_1DD6E1E84(v396);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v397 = sub_1DD6FC4B0();
      v398(v397);
      goto LABEL_55;
    case 0x13u:
      v437 = *v22;
      v533 = *(v22 + 8);
      v438 = *(v22 + 16);
      v439 = *(v22 + 24);
      v441 = *(v22 + 32);
      v440 = *(v22 + 40);
      v542[0] = 19;
      sub_1DD801F78();
      sub_1DD8269BC();
      sub_1DD6F0A74();
      sub_1DD827830(v442, v443, v444, v445);
      v534 = v437;
      *v542 = v437;
      v446 = v533;
      *&v542[8] = v533;
      *&v542[16] = v438;
      v535 = v438;
      *&v542[24] = v439;
      *&v542[32] = v441;
      v537 = v440;
      *&v542[40] = v440;
      sub_1DD801FCC();
      sub_1DD827280(v542, v447, v494[1], &type metadata for MessagePayload.ClientCustom);
      sub_1DD6DEDD4();
      v448 = sub_1DD825980();
      v449(v448);
      v450 = sub_1DD6FA9F4();
      v451(v450, v22);
      sub_1DD6E6658(v534, v446);
      sub_1DD6E6658(v535, v439);
      sub_1DD826894();
      goto LABEL_50;
    case 0x14u:
      v290 = *v22;
      v368 = *(v22 + 8);
      v542[0] = 20;
      sub_1DD801ED0();
      sub_1DD6F9BEC();
      sub_1DD6F0A74();
      sub_1DD6E4110(v369, v370, v371, v372);
      *v542 = v290;
      *&v542[8] = v368;
      sub_1DD801F24();
      sub_1DD6FE84C();
      goto LABEL_48;
    case 0x15u:
      sub_1DD6E5B50();
      v542[0] = 21;
      sub_1DD801E7C();
      sub_1DD6E6CD4(&type metadata for MessagePayload.SystemPromptRequestedCodingKeys, v542);
      sub_1DD825ED8();
      sub_1DD6E1E84(v376);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v377 = sub_1DD6FC4B0();
      v378(v377);
      goto LABEL_55;
    case 0x16u:
      sub_1DD6E5B50();
      v542[0] = 22;
      sub_1DD801E28();
      sub_1DD6E6CD4(&type metadata for MessagePayload.SystemPromptResolvedCodingKeys, v542);
      sub_1DD6FAD50();
      sub_1DD6E1E84(v431);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v432 = sub_1DD6FC4B0();
      v433(v432);
      goto LABEL_55;
    case 0x17u:
      sub_1DD6E5B50();
      v542[0] = 23;
      sub_1DD801DD4();
      sub_1DD6E6CD4(&type metadata for MessagePayload.ActionResponseCodingKeys, v542);
      sub_1DD825E90();
      sub_1DD6E1E84(v462);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v463 = sub_1DD6FC4B0();
      v464(v463);
      goto LABEL_55;
    case 0x18u:
      sub_1DD6E5B50();
      v542[0] = 24;
      sub_1DD801D80();
      sub_1DD6E6CD4(&type metadata for MessagePayload.SystemResponseCodingKeys, v542);
      sub_1DD825FC8();
      sub_1DD6E1E84(v335);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v336 = sub_1DD6FC4B0();
      v337(v336);
      goto LABEL_55;
    case 0x19u:
      sub_1DD6E5B50();
      v542[0] = 25;
      sub_1DD801D2C();
      sub_1DD6E6CD4(&type metadata for MessagePayload.IntermediateSystemResponseCodingKeys, v542);
      sub_1DD825FE0();
      sub_1DD6E1E84(v332);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v333 = sub_1DD6FC4B0();
      v334(v333);
      goto LABEL_55;
    case 0x1Au:
      sub_1DD6E5B50();
      v542[0] = 26;
      sub_1DD801CD8();
      sub_1DD6E6CD4(&type metadata for MessagePayload.IntermediateSystemResponseRenderedCodingKeys, v542);
      sub_1DD825E60();
      sub_1DD6E1E84(v477);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v478 = sub_1DD6FC4B0();
      v479(v478);
      goto LABEL_55;
    case 0x1Bu:
      v290 = *v22;
      v289 = *(v22 + 8);
      v542[0] = 27;
      sub_1DD801C30();
      sub_1DD6F9BEC();
      sub_1DD6F0A74();
      sub_1DD6E4110(v291, v292, v293, v294);
      *v542 = v290;
      *&v542[8] = v289;
      sub_1DD801C84();
      sub_1DD6FE84C();
      goto LABEL_48;
    case 0x1Cu:
      v290 = *v22;
      v465 = *(v22 + 8);
      v542[0] = 28;
      sub_1DD801B88();
      sub_1DD6F9BEC();
      sub_1DD6F0A74();
      sub_1DD6E4110(v466, v467, v468, v469);
      *v542 = v290;
      *&v542[8] = v465;
      sub_1DD801BDC();
      sub_1DD6FE84C();
      goto LABEL_48;
    case 0x1Du:
      v542[0] = 29;
      sub_1DD801AE0();
      sub_1DD6E6CD4(&type metadata for MessagePayload.SafetyModeReleaseCodingKeys, v542);
      sub_1DD801B34();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
LABEL_52:
      v472 = sub_1DD6FC4B0();
      v473(v472);
      goto LABEL_56;
    case 0x1Eu:
      v290 = *v22;
      v423 = *(v22 + 8);
      v542[0] = 30;
      sub_1DD801A38();
      sub_1DD6F9BEC();
      sub_1DD6F0A74();
      sub_1DD6E4110(v424, v425, v426, v427);
      *v542 = v290;
      *&v542[8] = v423;
      sub_1DD801A8C();
      sub_1DD6FE84C();
LABEL_48:
      v470 = sub_1DD824880();
      v471(v470, v290);
      v382 = sub_1DD6FC4B0();
LABEL_49:
      v383(v382);
      goto LABEL_50;
    case 0x1Fu:
      sub_1DD6E5B50();
      v542[0] = 31;
      sub_1DD8019E4();
      sub_1DD6E6CD4(&type metadata for MessagePayload.ExternalAgentTextQueryCodingKeys, v542);
      sub_1DD825F80();
      sub_1DD6E1E84(v356);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v357 = sub_1DD6FC4B0();
      v358(v357);
      goto LABEL_55;
    case 0x20u:
      sub_1DD6E5B50();
      v542[0] = 32;
      sub_1DD801990();
      sub_1DD6E6CD4(&type metadata for MessagePayload.ExternalAgentSpeechQueryCodingKeys, v542);
      sub_1DD6FF5DC();
      sub_1DD6E1E84(v428);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v429 = sub_1DD6FC4B0();
      v430(v429);
      goto LABEL_55;
    case 0x21u:
      sub_1DD6E5B50();
      v542[0] = 33;
      sub_1DD6FDB5C();
      sub_1DD6E6CD4(&type metadata for MessagePayload.ExternalAgentRequestCodingKeys, v542);
      sub_1DD826010();
      sub_1DD6E1E84(v308);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v309 = sub_1DD6FC4B0();
      v310(v309);
      goto LABEL_55;
    case 0x22u:
      sub_1DD6E5B50();
      v542[0] = 34;
      sub_1DD703164();
      sub_1DD6E6CD4(&type metadata for MessagePayload.ExternalAgentOutcomeCodingKeys, v542);
      sub_1DD826058();
      sub_1DD6E1E84(v295);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v296 = sub_1DD6FC4B0();
      v297(v296);
      goto LABEL_55;
    case 0x23u:
      sub_1DD8273D8();
      v542[0] = 35;
      sub_1DD80193C();
      sub_1DD825CA4();
      sub_1DD6F0A74();
      sub_1DD82708C(v273, v274, v275, v276);
      sub_1DD8273CC();
      sub_1DD800760();
      sub_1DD6FAC4C();
      sub_1DD826A40(v277, v278, v279, v280);
      goto LABEL_36;
    case 0x24u:
      sub_1DD8273D8();
      v542[0] = 36;
      sub_1DD8018E8();
      sub_1DD825CA4();
      sub_1DD6F0A74();
      sub_1DD82708C(v281, v282, v283, v284);
      sub_1DD8273CC();
      sub_1DD6FF638();
      sub_1DD6FAC4C();
      sub_1DD826A40(v285, v286, v287, v288);
      goto LABEL_36;
    case 0x25u:
      sub_1DD6E5B50();
      v542[0] = 37;
      sub_1DD801894();
      sub_1DD6E6CD4(&type metadata for MessagePayload.ClientUndoRedoRequestCodingKeys, v542);
      sub_1DD826070();
      sub_1DD6E1E84(v270);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v271 = sub_1DD6FC4B0();
      v272(v271);
      goto LABEL_55;
    case 0x26u:
      sub_1DD6E5B50();
      v542[0] = 38;
      sub_1DD801840();
      sub_1DD6E6CD4(&type metadata for MessagePayload.ActionSummaryUpdateCodingKeys, v542);
      sub_1DD825E78();
      sub_1DD6E1E84(v474);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v475 = sub_1DD6FC4B0();
      v476(v475);
      goto LABEL_55;
    case 0x27u:
      sub_1DD6E5B50();
      v542[0] = 39;
      sub_1DD8017EC();
      sub_1DD6E6CD4(&type metadata for MessagePayload.ClientDebuggerEventCodingKeys, v542);
      sub_1DD825EA8();
      sub_1DD6E1E84(v434);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v435 = sub_1DD6FC4B0();
      v436(v435);
      goto LABEL_55;
    case 0x28u:
      sub_1DD6E5B50();
      v542[0] = 40;
      sub_1DD801798();
      sub_1DD6E6CD4(&type metadata for MessagePayload.ServerDebuggerEventCodingKeys, v542);
      sub_1DD7014A0();
      sub_1DD6E1E84(v316);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v317 = sub_1DD6FC4B0();
      v318(v317);
      goto LABEL_55;
    case 0x29u:
      v362 = *(v22 + 16);
      *v542 = *v22;
      *&v542[16] = v362;
      v363 = *(v22 + 48);
      *&v542[32] = *(v22 + 32);
      *&v542[48] = v363;
      v540[0] = 41;
      sub_1DD8016F0();
      sub_1DD6E6CD4(&type metadata for MessagePayload.StatusUpdateCodingKeys, v540);
      *v540 = *v542;
      *&v540[16] = *&v542[16];
      *&v540[32] = *&v542[32];
      *&v540[48] = *&v542[48];
      sub_1DD801744();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v364 = sub_1DD6FC4B0();
      v365(v364);
      v366 = sub_1DD702E84();
      v367(v366, v20);
      sub_1DD801448(v542);
      goto LABEL_58;
    case 0x2Au:
      v452 = *v22;
      v453 = *(v22 + 8);
      v542[0] = 42;
      sub_1DD801648();
      sub_1DD825CA4();
      sub_1DD6F0A74();
      sub_1DD6E4110(v454, v455, v456, v457);
      *v542 = v452;
      *&v542[8] = v453;
      sub_1DD80169C();
      v458 = v531;
      sub_1DD826A40(v542, v459, v531, &type metadata for PlannerPromptData);
      v460 = sub_1DD6E1858();
      v461(v460, v458);
      v351 = sub_1DD6E5DE8();
      goto LABEL_37;
    case 0x2Bu:
      sub_1DD8273D8();
      v542[0] = 43;
      sub_1DD8015A0();
      sub_1DD825CA4();
      sub_1DD6F0A74();
      sub_1DD82708C(v262, v263, v264, v265);
      sub_1DD8273CC();
      sub_1DD8015F4();
      sub_1DD6FAC4C();
      sub_1DD826A40(v266, v267, v268, v269);
LABEL_36:
      v407 = sub_1DD6E1858();
      v408(v407, v252);
      v351 = sub_1DD824880();
LABEL_37:
      v352(v351, v22);
LABEL_38:

LABEL_50:

      goto LABEL_58;
    case 0x2Cu:
      sub_1DD6E5B50();
      v542[0] = 44;
      sub_1DD80154C();
      sub_1DD6E6CD4(&type metadata for MessagePayload.ActionExecutedCodingKeys, v542);
      sub_1DD826040();
      sub_1DD6E1E84(v302);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD8255A4();
      sub_1DD8759D0();
      v303 = sub_1DD6FC4B0();
      v304(v303);
LABEL_55:
      sub_1DD6E5ABC();
LABEL_56:
      v259 = sub_1DD702E84();
      v260 = v20;
      goto LABEL_57;
    default:
      sub_1DD6E40D8();
      sub_1DD6E59B8();
      v542[0] = 0;
      sub_1DD802950();
      sub_1DD6F3128();
      sub_1DD875910();
      sub_1DD826088();
      sub_1DD6E1E84(v253);
      sub_1DD8276C8();
      sub_1DD6FAC4C();
      sub_1DD826A40(v254, v255, v256, v246);
      v257 = sub_1DD6E1858();
      v258(v257, v252);
      sub_1DD7061EC();
      sub_1DD6E5ABC();
      v259 = sub_1DD6E6CB0();
LABEL_57:
      v261(v259, v260);
LABEL_58:
      sub_1DD825AC0();
      sub_1DD6E0C78();
      return;
  }
}

uint64_t sub_1DD6ED13C(uint64_t a1)
{

  return sub_1DD8750F0();
}

uint64_t _s16IntelligenceFlow14ResponseVisualV6UITypeO20PluginSnippetPayloadV15pluginModelData8bundleIdAG10Foundation0K0V_SStcfC_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1DD6ED1B4(uint64_t a1, uint64_t a2)
{

  return sub_1DD875800();
}

uint64_t sub_1DD6ED1D4(uint64_t a1, uint64_t a2)
{

  return sub_1DD875800();
}

uint64_t sub_1DD6ED240()
{

  return sub_1DD730620(v0 + 256, v0 + 320, v1, v2);
}

uint64_t sub_1DD6ED2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD875B90();
}

uint64_t sub_1DD6ED37C()
{

  return sub_1DD710A9C(v0, v1);
}

uint64_t sub_1DD6ED3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);

  return sub_1DD843248(va, &a25);
}

uint64_t sub_1DD6ED414()
{

  return swift_task_alloc();
}

uint64_t sub_1DD6ED4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1DD8759D0();
}

uint64_t sub_1DD6ED54C()
{

  return swift_allocObject();
}

uint64_t sub_1DD6ED588(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 16) = v2;

  return type metadata accessor for SessionIdentityPack(0);
}

__n128 sub_1DD6ED5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, __int128 a9, __int128 a10, __n128 a12, __int128 a13)
{
  *v13 = a9;
  v13[1] = a10;
  result = a12;
  v13[2] = a12;
  v13[3] = a13;
  return result;
}

uint64_t sub_1DD6ED6C0(uint64_t a1)
{

  return swift_getAssociatedConformanceWitness();
}

void sub_1DD6ED6DC()
{

  JUMPOUT(0x1E12B4C10);
}

uint64_t sub_1DD6ED724()
{

  return sub_1DD8759D0();
}

void *sub_1DD6ED760(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(__srca, a9);
  __src = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);

  return memcpy(a1, __srca, 0x58uLL);
}

uint64_t sub_1DD6ED778()
{

  return sub_1DD753308();
}

uint64_t sub_1DD6ED7B4()
{

  return sub_1DD874910();
}

uint64_t sub_1DD6ED7E8(uint64_t a1, uint64_t a2)
{

  return sub_1DD875800();
}

uint64_t getEnumTagSinglePayload for GenderSettings(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 65283 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65283 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65284;
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

unint64_t sub_1DD6ED8E0()
{
  result = qword_1EE015AA8;
  if (!qword_1EE015AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015AA8);
  }

  return result;
}

void GenderSettings.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  sub_1DD710A9C(&qword_1ECD10948, &qword_1DD887060);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DEA6C();
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD6EDAA4();
  sub_1DD6E17D8();
  sub_1DD6F0A68();
  sub_1DD875BB0();
  sub_1DD6EDAF8();
  sub_1DD6DE334();
  sub_1DD8759D0();
  if (!v0)
  {
    sub_1DD6DE334();
    sub_1DD8759D0();
  }

  v4 = sub_1DD6DEA04();
  v5(v4);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

unint64_t sub_1DD6EDAA4()
{
  result = qword_1EE018670;
  if (!qword_1EE018670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018670);
  }

  return result;
}

unint64_t sub_1DD6EDAF8()
{
  result = qword_1EE015850;
  if (!qword_1EE015850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015850);
  }

  return result;
}

void GenderSettings.Gender.encode(to:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  sub_1DD710A9C(&qword_1ECD108E8, &qword_1DD887010);
  sub_1DD6DDEAC();
  v37 = v6;
  v38 = v5;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E0C6C();
  v36 = v8;
  sub_1DD710A9C(&qword_1ECD108F0, &qword_1DD887018);
  sub_1DD6DDEAC();
  v34 = v10;
  v35 = v9;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6E0C6C();
  v33 = v12;
  sub_1DD710A9C(&qword_1ECD108F8, &qword_1DD887020);
  sub_1DD6DDEAC();
  v31 = v14;
  v32 = v13;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6E0C6C();
  v30 = v16;
  sub_1DD710A9C(&qword_1ECD10900, &qword_1DD887028);
  sub_1DD6DDEAC();
  v28 = v18;
  v29 = v17;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DEBA0();
  v20 = sub_1DD710A9C(&qword_1ECD10908, &qword_1DD887030);
  sub_1DD6DDEAC();
  v22 = v21;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1DD6E7258();
  v24 = *v0;
  sub_1DD6DEA7C(v4, v4[3]);
  sub_1DD6EDF28();
  sub_1DD875BB0();
  switch(v24)
  {
    case 1:
      sub_1DD6E4104();
      sub_1DD6EF100();
      v25 = v30;
      sub_1DD6E710C();
      sub_1DD875910();
      v27 = v31;
      v26 = v32;
      goto LABEL_6;
    case 2:
      sub_1DD797F38();
      v25 = v33;
      sub_1DD6E710C();
      sub_1DD875910();
      v27 = v34;
      v26 = v35;
      goto LABEL_6;
    case 3:
      sub_1DD797EE4();
      v25 = v36;
      sub_1DD6E710C();
      sub_1DD875910();
      v27 = v37;
      v26 = v38;
LABEL_6:
      (*(v27 + 8))(v25, v26);
      break;
    default:
      sub_1DD6EF240();
      sub_1DD6E710C();
      sub_1DD875910();
      (*(v28 + 8))(v1, v29);
      break;
  }

  (*(v22 + 8))(v2, v20);
  sub_1DD6E0C78();
}

unint64_t sub_1DD6EDF28()
{
  result = qword_1EE0186D8[0];
  if (!qword_1EE0186D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0186D8);
  }

  return result;
}

void sub_1DD6EDF7C()
{
  v2 = v0[2];
  *(v1 - 120) = v0[3];
  *(v1 - 112) = v2;
  v3 = v0[4];
  *(v1 - 136) = v0[5];
  *(v1 - 128) = v3;
}

uint64_t sub_1DD6EDF90(uint64_t a1, uint64_t a2)
{

  return sub_1DD76DFE0(a1, a2, v2, v3);
}

uint64_t sub_1DD6EDFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1DD8758D0();
}

uint64_t SessionIdentityPack.clientGroupId.getter()
{
  type metadata accessor for SessionIdentityPack(0);
  sub_1DD6E0508();

  return sub_1DD6DDEFC();
}

uint64_t ClientAction.Definition.ParameterDefinition.valueType.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1DD6E38A4();
  sub_1DD6DE1C4();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v2, v4);
}

uint64_t ClientAction.Definition.outputType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClientAction.Definition(0) + 28);
  sub_1DD874FC0();
  sub_1DD6DE1C4();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t ClientAction.Definition.positiveExampleInvocations.getter()
{
  type metadata accessor for ClientAction.Definition(0);
}

uint64_t ClientAction.Definition.negativeExampleInvocations.getter()
{
  type metadata accessor for ClientAction.Definition(0);
}

uint64_t sub_1DD6EE234()
{

  return sub_1DD75DBD4(v1, v0);
}

uint64_t sub_1DD6EE2A4(uint64_t a1, uint64_t a2)
{

  return sub_1DD875800();
}

uint64_t sub_1DD6EE2E0()
{

  return sub_1DD8758D0();
}

uint64_t SessionIdentityPack.clientSessionId.getter()
{
  type metadata accessor for SessionIdentityPack(0);
  sub_1DD6E0508();

  return sub_1DD6DDEFC();
}

uint64_t SessionIdentityPack.clientApplicationId.getter()
{
  type metadata accessor for SessionIdentityPack(0);
  sub_1DD6E0508();

  return sub_1DD6DDEFC();
}

uint64_t sub_1DD6EE398()
{
  v0 = sub_1DD6EE3EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DD6EE3EC()
{
  v1 = *(*v0 + 96);
  v2 = sub_1DD8755C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1DD6EE5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 72);
  if (!v3)
  {
    v10 = 0u;
    v11 = 0u;
LABEL_11:
    sub_1DD6EE7DC(&v10, &qword_1ECD0E838, &unk_1DD87AA30);
    return 0;
  }

  v4 = sub_1DD875110();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_1DD8755F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_11;
  }

  sub_1DD6EE7DC(&v10, &qword_1ECD0E838, &unk_1DD87AA30);
  v6 = sub_1DD875110();
  [v3 integerForKey_];

  sub_1DD710A9C(&qword_1ECD0E858, &qword_1DD88A080);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD6EE70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_1DD718F6C(v13);
}

uint64_t sub_1DD6EE744()
{

  return sub_1DD753360(v0, type metadata accessor for OverridesCommon_StringPredicate);
}

uint64_t sub_1DD6EE7DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1DD710A9C(a2, a3);
  sub_1DD6E0540();
  (*(v4 + 8))(a1);
  return a1;
}

void *sub_1DD6EE838()
{

  return memcpy((v0 + 144), (v0 + 72), 0x48uLL);
}

uint64_t sub_1DD6EE86C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, char a4@<W8>)
{
  *v5 = a1;
  *(v5 + 8) = *a2;
  *(v5 + 24) = a4;
  *(v5 + 32) = *a3;
  *(v5 + 48) = v4;
  return type metadata accessor for ResponseOutput(0);
}

char *sub_1DD6EE91C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 80);
  v6 = sub_1DD8755C0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  (*(*(v4 + 88) + 8))(v5, v8);
  v11 = sub_1DD874C50();
  (*(*(v11 - 8) + 8))(a1, v11);
  (*(v7 + 32))(&v2[*(*v2 + 96)], v10, v6);
  return v2;
}

uint64_t static Preferences.subscript.getter(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  if (qword_1EE015B18 != -1)
  {
    sub_1DD6E6A14(&qword_1EE015B18);
  }

  swift_beginAccess();
  memcpy(__dst, &unk_1EE0267D8, sizeof(__dst));
  memcpy(v2, &unk_1EE0267D8, sizeof(v2));
  sub_1DD6EEC9C(__dst, v4);
  swift_getAtKeyPath();
  memcpy(v4, v2, sizeof(v4));
  return sub_1DD6EED04(v4);
}

uint64_t sub_1DD6EECD4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD6EECF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = a1;
}

uint64_t sub_1DD6EED74(uint64_t a1)
{

  return sub_1DD8758D0();
}

uint64_t sub_1DD6EEDF4()
{

  return swift_allocObject();
}

__n128 sub_1DD6EEE24(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1DD6EEE50(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1DD6DE1C4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DD6EEEA8()
{
  v1 = sub_1DD6DE290();
  v2(v1);
  sub_1DD6DE1C4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1DD6EEEFC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1DD6DE1C4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DD6EEF84(char a1)
{
  result = 0x6669636570736E75;
  switch(a1)
  {
    case 1:
      result = 0x656C616D6566;
      break;
    case 2:
      result = 1701601645;
      break;
    case 3:
      result = 0x6C61727475656ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD6EF024(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1DD6DEAA4(-1);
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
      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 4);
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

      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 4);
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

  return sub_1DD6DEAA4(v8);
}

uint64_t sub_1DD6EF0B0(char a1)
{
  if (a1)
  {
    return 0x646E654772657375;
  }

  else
  {
    return 0x6E65476563696F76;
  }
}

unint64_t sub_1DD6EF100()
{
  result = qword_1EE0186B0;
  if (!qword_1EE0186B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0186B0);
  }

  return result;
}

_BYTE *sub_1DD6EF15C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1DD6EE784(result, v6);
        break;
      case 2:
        result = sub_1DD6E3744(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1DD6EF218);
      case 4:
        result = sub_1DD6E991C(result, v6);
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
          result = sub_1DD6E5904(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD6EF240()
{
  result = qword_1EE018688;
  if (!qword_1EE018688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE018688);
  }

  return result;
}

unint64_t sub_1DD6EF294()
{
  result = qword_1EE015340;
  if (!qword_1EE015340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015340);
  }

  return result;
}

uint64_t CrossAPIAssociationKey.encode(to:)(void *a1)
{
  sub_1DD710A9C(&qword_1ECD0E018, &qword_1DD876B80);
  sub_1DD6E125C();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD6EF42C();
  sub_1DD875BB0();
  sub_1DD875970();
  return (*(v4 + 8))(v7, v1);
}

unint64_t sub_1DD6EF42C()
{
  result = qword_1EE017018[0];
  if (!qword_1EE017018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE017018);
  }

  return result;
}

uint64_t sub_1DD6EF494()
{
  v2 = sub_1DD6DE290();
  result = type metadata accessor for SessionConfiguration(v2);
  v4 = *(v1 + *(result + 44));
  if (!v4)
  {
    return result;
  }

  empty = xpc_array_create_empty();
  v6 = *(v4 + 16);
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1DD6EF668(0, v6, 0);
    v7 = v17;
    v8 = *(v17 + 16);
    v9 = (v4 + 72);
    do
    {
      v11 = *v9;
      v9 += 6;
      v10 = v11;
      v12 = v8 + 1;
      v13 = *(v17 + 24);

      if (v8 >= v13 >> 1)
      {
        sub_1DD6EF668((v13 > 1), v8 + 1, 1);
      }

      *(v17 + 16) = v12;
      *(v17 + 8 * v8++ + 32) = v10;
      --v6;
    }

    while (v6);
    goto LABEL_10;
  }

  v7 = MEMORY[0x1E69E7CC0];
  v12 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v12)
  {
LABEL_10:
    v14 = 32;
    do
    {
      if (*(v7 + v14))
      {

        v15 = sub_1DD874C90();
      }

      else
      {
        v15 = xpc_null_create();
      }

      xpc_array_append_value(empty, v15);

      swift_unknownObjectRelease();
      v14 += 8;
      --v12;
    }

    while (v12);
  }

  v16 = sub_1DD875190();
  swift_unknownObjectRetain();
  xpc_dictionary_set_value(v0, (v16 + 32), empty);
  swift_unknownObjectRelease_n();
}

void *sub_1DD6EF668(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD6EF688(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DD6EF688(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1DD710A9C(&qword_1ECD0FA38, &qword_1DD881438);
      v10 = swift_allocObject();
      v11 = j__malloc_size_0(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1DD785054((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1DD710A9C(&qword_1ECD0FA40, &qword_1DD881440);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1DD6EF7A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = sub_1DD875110();
  v13 = sub_1DD874750();
  v15[4] = a2;
  v15[5] = a3;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1DD6FC2C0;
  v15[3] = &unk_1F58E6708;
  v14 = _Block_copy(v15);

  [a1 startSessionWithId:v12 configData:v13 xpcData:a8 with:v14];
  _Block_release(v14);
}

void SessionConfiguration.init(from:)()
{
  sub_1DD6DED2C();
  v54 = v0;
  v56 = v2;
  v44 = v3;
  sub_1DD710A9C(&qword_1ECD0E358, &unk_1DD878670);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6E0C6C();
  v51 = v5;
  v53 = sub_1DD710A9C(&qword_1ECD10858, &qword_1DD886FB0);
  sub_1DD6DDEAC();
  v50 = v6;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E7258();
  v8 = type metadata accessor for SessionConfiguration(0);
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = 5;
  *(v11 + 1) = 0;
  v12 = v11 + 8;
  *(v11 + 2) = 0;
  v11[24] = 2;
  v13 = v9[10];
  v14 = type metadata accessor for LocaleSettings(0);
  v48 = v13;
  v49 = v14;
  sub_1DD6E0C90();
  sub_1DD6E5E68(v15, v16, v17, v18);
  v47 = v9[11];
  v11[v47] = 2;
  v19 = v9[12];
  *&v11[v19] = 512;
  v45 = v9[13];
  v46 = v19;
  *&v11[v45] = 0;
  v20 = &v11[v9[14]];
  *v20 = 0;
  *(v20 + 1) = 0;
  *(v20 + 4) = 0;
  v21 = v9[15];
  *&v11[v21] = 4;
  v22 = v9[16];
  v11[v22] = 2;
  v23 = v9[17];
  v55 = v11;
  v24 = &v11[v23];
  *v24 = 0;
  *(v24 + 1) = 0;
  sub_1DD6DEA7C(v56, v56[3]);
  sub_1DD6E80A8();
  v52 = v1;
  v25 = v54;
  sub_1DD875B90();
  if (v25)
  {
    sub_1DD6E1EC8(v56);
  }

  else
  {
    v54 = v20;
    v42 = v22;
    v43 = v21;
    v41 = v24;
    v26 = v51;
    sub_1DD6EFEF0();
    sub_1DD6E40F8();
    sub_1DD875860();
    v27 = v55;
    *v55 = v57;
    sub_1DD710A9C(&qword_1ECD10850, &unk_1DD886FA0);
    sub_1DD6FF8F4();
    sub_1DD6E86F0(&unk_1EE0139F0);
    sub_1DD6E40F8();
    sub_1DD875860();
    *v12 = v57;
    sub_1DD710A9C(&qword_1ECD10818, &qword_1DD886DA8);
    sub_1DD6EFF88();
    sub_1DD6DF928(&qword_1EE013A10);
    sub_1DD6E40F8();
    sub_1DD875860();
    *(v27 + 2) = v57;
    LOBYTE(v57) = 3;
    v27[24] = sub_1DD875830();
    LOBYTE(v57) = 4;
    sub_1DD6E88EC();
    sub_1DD6E881C(v28);
    sub_1DD875860();
    sub_1DD6E7470(v26, &v27[v48]);
    sub_1DD6F0510();
    sub_1DD6DE5DC(&type metadata for SessionConfiguration.ParticipantSettings);
    v27[v47] = v57;
    sub_1DD6F0570();
    sub_1DD6DE5DC(&type metadata for DebuggerSettings);
    *&v27[v46] = v57;
    sub_1DD6F0604();
    sub_1DD6DE5DC(&type metadata for ClientIdentityChain);
    v29 = v57;
    v30 = v45;

    *&v27[v30] = v29;
    sub_1DD6F0D50();
    sub_1DD6DE5DC(&type metadata for DeviceDetails);
    v31 = v57;
    v32 = v58;
    v33 = v59;
    v34 = v54;

    *v34 = v31;
    *(v34 + 1) = v32;
    *(v34 + 4) = v33;
    sub_1DD6F0DE4();
    sub_1DD6DE5DC(&type metadata for GenderSettings);
    *&v55[v43] = v57;
    LOBYTE(v57) = 10;
    v55[v42] = sub_1DD875830();
    sub_1DD6F17DC();
    sub_1DD6E40F8();
    sub_1DD79A3A4();
    sub_1DD875860();
    v35 = sub_1DD6E21D0();
    v36(v35);
    v37 = v57;
    v38 = v58;
    v39 = v41;

    *v39 = v37;
    *(v39 + 1) = v38;
    sub_1DD6F04B8(v55, v44);
    sub_1DD6E1EC8(v56);
    sub_1DD6DDEFC();
  }

  sub_1DD6EEEA8();
  sub_1DD6E0C78();
}

unint64_t sub_1DD6EFEF0()
{
  result = qword_1EE015450;
  if (!qword_1EE015450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015450);
  }

  return result;
}

uint64_t sub_1DD6EFF5C()
{

  return sub_1DD874910();
}

IntelligenceFlow::SessionConfiguration::PlannerType_optional __swiftcall SessionConfiguration.PlannerType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD8757F0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void LocaleSettings.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1DD6DED2C();
  v27 = v26;
  v59 = v28;
  v62 = sub_1DD874890();
  sub_1DD6DDEAC();
  v60 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v55 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v55 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v61 = &v55 - v37;
  sub_1DD710A9C(&qword_1ECD108E0, &qword_1DD887008);
  sub_1DD6DDEAC();
  v63 = v39;
  v64 = v38;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1DD6DE340();
  v41 = type metadata accessor for LocaleSettings(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v55 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD6DEA7C(v27, v27[3]);
  sub_1DD6E8B14();
  v65 = v25;
  sub_1DD875B90();
  if (v24)
  {
    sub_1DD6E1EC8(v27);
  }

  else
  {
    v57 = v41;
    v58 = v35;
    v66 = v27;
    v56 = v32;
    sub_1DD6DF414();
    v46 = sub_1DD6E881C(v45);
    v47 = v61;
    v48 = v62;
    sub_1DD8758D0();
    v49 = v44;
    v55 = *(v60 + 32);
    v55(v44, v47, v48);
    sub_1DD6DEC54();
    v50 = v58;
    v61 = v46;
    sub_1DD8758D0();
    v51 = v50;
    v52 = v57;
    v53 = v55;
    v55(&v44[*(v57 + 20)], v51, v48);
    sub_1DD8758D0();
    v54 = v66;
    (*(v63 + 8))(v65, v64);
    v53(v49 + *(v52 + 24), v56, v48);
    sub_1DD6F04B8(v49, v59);
    sub_1DD6E1EC8(v54);
    sub_1DD6EEEA8();
  }

  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

uint64_t sub_1DD6F04B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DD6E0D28();
  v4(v3);
  sub_1DD6DE1C4();
  v5 = sub_1DD6DDEFC();
  v6(v5);
  return a2;
}

unint64_t sub_1DD6F0510()
{
  result = qword_1EE015440;
  if (!qword_1EE015440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015440);
  }

  return result;
}

unint64_t sub_1DD6F0570()
{
  result = qword_1EE0155C0;
  if (!qword_1EE0155C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0155C0);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for DebuggerSettings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1DD6F0604()
{
  result = qword_1EE015520;
  if (!qword_1EE015520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015520);
  }

  return result;
}

void ClientIdentityChain.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD6DED2C();
  sub_1DD6E1C58();
  sub_1DD710A9C(&qword_1ECD10A28, &qword_1DD8870F0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DEBA0();
  sub_1DD6DE568();
  sub_1DD6E902C();
  sub_1DD6E4218();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (!v11)
  {
    sub_1DD710A9C(&qword_1ECD10A20, &qword_1DD8870E8);
    sub_1DD7982D4(&unk_1EE013A00);
    sub_1DD8758D0();
    v14 = sub_1DD6E21F4();
    v15(v14);
    *v12 = a10;
  }

  sub_1DD6E1EC8(v10);
  sub_1DD6E0C78();
}

void ClientIdentity.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1DD6DED2C();
  sub_1DD6E1C58();
  sub_1DD710A9C(&qword_1ECD10A40, &qword_1DD887108);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  v28 = sub_1DD6E9318();
  sub_1DD6FC48C(&type metadata for ClientIdentity.CodingKeys, v29, v28);
  if (v25)
  {
    sub_1DD6E1EC8(v24);
  }

  else
  {
    sub_1DD6F0AC8();
    sub_1DD6E6CC4();
    sub_1DD875860();
    sub_1DD710A9C(&qword_1ECD10A38, &qword_1DD887100);
    sub_1DD6FF8F4();
    sub_1DD6E9994(&unk_1EE015858);
    sub_1DD6F178C();
    sub_1DD8758D0();
    v30 = sub_1DD6DEA2C();
    v31(v30);
    *v26 = v32;
    *(v26 + 16) = v33;
    *(v26 + 32) = v34;
    *(v26 + 40) = v32;

    sub_1DD6E1EC8(v24);
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD6F09F8(uint64_t a1)
{

  return sub_1DD874AD0();
}

uint64_t sub_1DD6F0A9C()
{

  return swift_task_alloc();
}

unint64_t sub_1DD6F0AC8()
{
  result = qword_1EE015BA0;
  if (!qword_1EE015BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015BA0);
  }

  return result;
}

void AuditToken.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD6E1C58();
  sub_1DD710A9C(&qword_1ECD10A10, &qword_1DD8870D8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  v4 = sub_1DD6E9838();
  sub_1DD6FC48C(&type metadata for AuditToken.CodingKeys, v5, v4);
  if (!v1)
  {
    sub_1DD6F0C40();
    sub_1DD6E6CC4();
    sub_1DD8758D0();
    v6 = sub_1DD6DEA2C();
    v7(v6);
    *v2 = v8;
    v2[1] = v9;
  }

  sub_1DD6E1EC8(v0);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

unint64_t sub_1DD6F0C40()
{
  result = qword_1EE013AA0;
  if (!qword_1EE013AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE013AA0);
  }

  return result;
}

uint64_t sub_1DD6F0C94@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DD6E1EC8(a1);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v5, v6, v7, a2);
  sub_1DD8755C0();
  sub_1DD6DE1C4();
  (*(v8 + 8))(a3);
  sub_1DD6E0C90();
  return sub_1DD6E5E68(v9, v10, v11, a2);
}

__n128 sub_1DD6F0D3C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

unint64_t sub_1DD6F0D50()
{
  result = qword_1EE015AA0;
  if (!qword_1EE015AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015AA0);
  }

  return result;
}

uint64_t sub_1DD6F0DA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DD6F0DE4()
{
  result = qword_1EE015838;
  if (!qword_1EE015838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015838);
  }

  return result;
}

void GenderSettings.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14)
{
  sub_1DD6DED2C();
  sub_1DD6E1C58();
  sub_1DD710A9C(&qword_1ECD10950, &qword_1DD887068);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  v18 = sub_1DD6EDAA4();
  sub_1DD6FC48C(&type metadata for GenderSettings.CodingKeys, v19, v18);
  if (!v15)
  {
    sub_1DD6F0FB0();
    sub_1DD6E710C();
    sub_1DD6F178C();
    sub_1DD8758D0();
    sub_1DD6E710C();
    sub_1DD6F178C();
    sub_1DD8758D0();
    v20 = sub_1DD6DEA2C();
    v21(v20);
    *v16 = a14;
    v16[1] = a12;
  }

  sub_1DD6E1EC8(v14);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

unint64_t sub_1DD6F0FB0()
{
  result = qword_1EE015848;
  if (!qword_1EE015848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015848);
  }

  return result;
}

void GenderSettings.Gender.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1DD6DED2C();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  v61 = v30;
  v64 = sub_1DD710A9C(&qword_1ECD10920, &qword_1DD887038);
  sub_1DD6DDEAC();
  v60 = v31;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6E0C6C();
  v63 = v33;
  sub_1DD710A9C(&qword_1ECD10928, &qword_1DD887040);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD6E0C6C();
  sub_1DD710A9C(&qword_1ECD10930, &qword_1DD887048);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD6DDFE4();
  v36 = sub_1DD710A9C(&qword_1ECD10938, &qword_1DD887050);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD6DEBA0();
  v38 = sub_1DD710A9C(&qword_1ECD10940, &qword_1DD887058);
  sub_1DD6DDEAC();
  v62 = v39;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1DD6DEA6C();
  sub_1DD6DEA7C(v29, v29[3]);
  sub_1DD6EDF28();
  sub_1DD6E17D8();
  sub_1DD875B90();
  if (v24)
  {
    goto LABEL_8;
  }

  v65 = v29;
  v41 = v25;
  sub_1DD875900();
  sub_1DD6ED750();
  if (v43 == v42 >> 1)
  {
    goto LABEL_7;
  }

  sub_1DD6E6120();
  if (v47 >= (v46 >> 1))
  {
    __break(1u);
    JUMPOUT(0x1DD6F15B0);
  }

  v48 = *(v45 + v44);
  sub_1DD6ED830();
  v50 = v49;
  v52 = v51;
  swift_unknownObjectRelease();
  if (v50 != v52 >> 1)
  {
LABEL_7:
    v56 = sub_1DD875740();
    swift_allocError();
    v58 = v57;
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v58 = &type metadata for GenderSettings.Gender;
    v59 = sub_1DD875810();
    sub_1DD6DF100(v59);
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x1E69E6AF8], v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v62 + 8))(v41, v38);
    v29 = v65;
LABEL_8:
    sub_1DD6E1EC8(v29);
    goto LABEL_9;
  }

  switch(v48)
  {
    case 1:
      sub_1DD6E4104();
      sub_1DD6EF100();
      sub_1DD6ED1B4(&type metadata for GenderSettings.Gender.FemaleCodingKeys, &a12);
      swift_unknownObjectRelease();
      goto LABEL_13;
    case 2:
      a13 = 2;
      sub_1DD797F38();
      sub_1DD6ED1B4(&type metadata for GenderSettings.Gender.MaleCodingKeys, &a13);
      swift_unknownObjectRelease();
LABEL_13:
      v53 = sub_1DD6DED98();
      goto LABEL_14;
    case 3:
      a14 = 3;
      sub_1DD797EE4();
      sub_1DD875800();
      swift_unknownObjectRelease();
      (*(v60 + 8))(v63, v64);
      goto LABEL_15;
    default:
      a11 = 0;
      sub_1DD6EF240();
      sub_1DD6ED1B4(&type metadata for GenderSettings.Gender.UnspecifiedCodingKeys, &a11);
      swift_unknownObjectRelease();
      v53 = sub_1DD6DED98();
      v55 = v36;
LABEL_14:
      v54(v53, v55);
LABEL_15:
      (*(v62 + 8))(v41, v38);
      *v61 = v48;
      sub_1DD6E1EC8(v65);
      break;
  }

LABEL_9:
  sub_1DD6E0C78();
}

uint64_t sub_1DD6F15D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DD6F1600(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DD6F1600(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6669636570736E75 && a2 == 0xEB00000000646569;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C616D6566 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701601645 && a2 == 0xE400000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C61727475656ELL && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD875A30();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1DD6F17DC()
{
  result = qword_1EE015338;
  if (!qword_1EE015338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015338);
  }

  return result;
}

uint64_t CrossAPIAssociationKey.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DD710A9C(&qword_1ECD0E020, &qword_1DD876B88);
  sub_1DD6E125C();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD6EF42C();
  sub_1DD875B90();
  if (!v2)
  {
    v11 = sub_1DD875870();
    v13 = v12;
    (*(v7 + 8))(v10, v3);
    *a2 = v11;
    a2[1] = v13;
  }

  return sub_1DD6E1EC8(a1);
}

_BYTE *storeEnumTagSinglePayload for CrossAPIAssociationKey.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x1DD6F1A48);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SessionConfiguration.identityChain.getter()
{
  v2 = sub_1DD6E0A5C();
  *v0 = *(v1 + *(type metadata accessor for SessionConfiguration(v2) + 44));
}

void __swiftcall ClientSessionIdentityPack.init(clientSessionId:clientApplicationId:clientGroupId:)(IntelligenceFlow::ClientSessionIdentityPack *__return_ptr retstr, IntelligenceFlow::ClientSessionID clientSessionId, IntelligenceFlow::ClientApplicationID clientApplicationId, IntelligenceFlow::ClientGroupID_optional clientGroupId)
{
  retstr->clientSessionId = clientSessionId;
  retstr->clientApplicationId = clientApplicationId;
  retstr->clientGroupId.value.value._countAndFlagsBits = clientGroupId.value.value._countAndFlagsBits;
  retstr->clientGroupId.value.value._object = clientGroupId.value.value._object;
}

uint64_t sub_1DD6F1B94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD874820();

  return sub_1DD6E5E68(a1, a2, a2, v4);
}

uint64_t sub_1DD6F1BF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD874820();

  return sub_1DD6E5ED0(a1, a2, v4);
}

uint64_t sub_1DD6F1C3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 SessionIdentityPack.init(sessionId:clientIdentity:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DD6F1C3C(a1, a3);
  type metadata accessor for SessionIdentityPack(0);
  sub_1DD6E0508();
  v4 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v4;
  result = *(a2 + 32);
  *(v5 + 32) = result;
  return result;
}

uint64_t SessionConfiguration.participantSettings.getter()
{
  v2 = sub_1DD6E0A5C();
  result = type metadata accessor for SessionConfiguration(v2);
  *v0 = *(v1 + *(result + 36));
  return result;
}

uint64_t SessionConfiguration.debuggerSettings.getter()
{
  v2 = sub_1DD6E0A5C();
  result = type metadata accessor for SessionConfiguration(v2);
  *v0 = *(v1 + *(result + 40));
  return result;
}

uint64_t static IntelligenceFlowPreferencesDomain.userDefaultsContainer.getter()
{
  if (qword_1EE015BD8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE015BE0;
  v1 = qword_1EE015BE0;
  return v0;
}

uint64_t sub_1DD6F1DD8@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v27 = a5;
  v28 = a2;
  v29 = a1;
  v26 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v23, v19);
  if (sub_1DD6E5ED0(v21, 1, v13) == 1)
  {
    return sub_1DD6E5E68(a6, 1, 1, a4);
  }

  (*(v14 + 32))(v17, v21, v13);
  v29(v17, v11);
  result = (*(v14 + 8))(v17, v13);
  if (v6)
  {
    return (*(v26 + 32))(v27, v11, a3);
  }

  return result;
}

uint64_t Preference.userDefaultsValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (v2 + *(a1 + 56));
  v5 = v4[1];
  v11 = *v4;
  v12 = v5;
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);

  sub_1DD710A9C(&qword_1ECD0E848, &qword_1DD87A870);
  sub_1DD6F1DD8(sub_1DD6F2678, v8, MEMORY[0x1E69E73E0], v10, v6, a2);
}

uint64_t sub_1DD6F210C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a6;
  v10 = sub_1DD710A9C(&qword_1ECD16C10, &qword_1DD878230);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v16 = sub_1DD8755C0();
  v48 = *(v16 - 8);
  v49 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v47 = &v46 - v17;
  v18 = *(a2 + *(type metadata accessor for Preference(0, a3, a4, a5) + 60));
  if (!v18)
  {
    v53 = 0u;
    v54 = 0u;
LABEL_9:
    sub_1DD6FDBEC(&v53);
    return sub_1DD6E5E68(v50, 1, 1, a4);
  }

  v19 = sub_1DD875110();
  v20 = [v18 objectForKey_];

  if (v20)
  {
    sub_1DD8755F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
  }

  v53 = v51;
  v54 = v52;
  if (!*(&v52 + 1))
  {
    goto LABEL_9;
  }

  sub_1DD730C48(&v53, v55);
  if (swift_dynamicCastMetatype())
  {
    v21 = sub_1DD875110();
    v22 = [v18 BOOLForKey_];

    sub_1DD6E1EC8(v55);
    LOBYTE(v53) = v22;
    v23 = qword_1ECD0E860;
    v24 = &unk_1DD87A860;
  }

  else if (swift_dynamicCastMetatype())
  {
    v26 = sub_1DD875110();
    v27 = [v18 integerForKey_];

    sub_1DD6E1EC8(v55);
    *&v53 = v27;
    BYTE8(v53) = 0;
    v23 = &qword_1ECD0E858;
    v24 = &qword_1DD88A080;
  }

  else if (swift_dynamicCastMetatype())
  {
    v28 = sub_1DD875110();
    [v18 floatForKey_];
    v30 = v29;

    sub_1DD6E1EC8(v55);
    LODWORD(v53) = v30;
    BYTE4(v53) = 0;
    v23 = &qword_1ECD0E850;
    v24 = &unk_1DD87A850;
  }

  else if (swift_dynamicCastMetatype())
  {
    v31 = sub_1DD875110();
    [v18 doubleForKey_];
    v33 = v32;

    sub_1DD6E1EC8(v55);
    *&v53 = v33;
    BYTE8(v53) = 0;
    v23 = &qword_1ECD0E840;
    v24 = &unk_1DD87A840;
  }

  else
  {
    v37 = sub_1DD874740();
    if (swift_dynamicCastMetatype())
    {
      v38 = sub_1DD875110();
      v39 = [v18 URLForKey_];

      if (v39)
      {
        sub_1DD874700();

        v40 = 0;
      }

      else
      {
        v40 = 1;
      }

      sub_1DD6E1EC8(v55);
      sub_1DD6E5E68(v12, v40, 1, v37);
      sub_1DD6FB7B4(v12, v15);
      v34 = v47;
      if (swift_dynamicCast())
      {
        v36 = v34;
        v35 = 0;
      }

      else
      {
        v36 = v34;
        v35 = 1;
      }

      goto LABEL_18;
    }

    if (!swift_dynamicCastMetatype())
    {
      sub_1DD730C48(v55, &v53);
      goto LABEL_17;
    }

    v41 = sub_1DD875110();
    v42 = [v18 stringForKey_];

    if (v42)
    {
      v43 = sub_1DD875140();
      v45 = v44;
    }

    else
    {
      v43 = 0;
      v45 = 0;
    }

    sub_1DD6E1EC8(v55);
    *&v53 = v43;
    *(&v53 + 1) = v45;
    v23 = &qword_1ECD0E848;
    v24 = &qword_1DD87A870;
  }

  sub_1DD710A9C(v23, v24);
LABEL_17:
  v34 = v47;
  v35 = swift_dynamicCast() ^ 1;
  v36 = v34;
LABEL_18:
  sub_1DD6E5E68(v36, v35, 1, a4);
  return (*(v48 + 32))(v50, v34, v49);
}

uint64_t sub_1DD6F26FC()
{
  sub_1DD6E48E0();
  type metadata accessor for SessionServerMessage(0);
  sub_1DD6F3284();
  sub_1DD6DEC94(v1, 255, v2, &protocol conformance descriptor for SessionServerMessage);
  v3 = sub_1DD8745F0();
  v0[5] = v3;
  v0[6] = v4;
  v5 = *(v0[4] + 24);
  v0[7] = v5;
  if (v5)
  {
    v6 = v3;
    v7 = v4;
    v8 = swift_task_alloc();
    v0[8] = v8;
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;

    v9 = swift_task_alloc();
    v0[9] = v9;
    sub_1DD6E0EC8();
    *v9 = v0;
    v9[1] = sub_1DD6FA448;
    sub_1DD702AA0();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2EEA0](v3);
}

uint64_t Preference.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 32);
  v40 = *(a1 + 16);
  v41 = v6;
  swift_getAssociatedTypeWitness();
  v7 = sub_1DD8755C0();
  sub_1DD6DF290();
  v39 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v12 = *(a1 + 24);
  v13 = sub_1DD8755C0();
  sub_1DD6DF290();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v36 - v22;
  v24 = *(a1 + 52);
  v42 = v25;
  (*(v25 + 16))(&v36 - v22, v3 + v24, v13, v21);
  sub_1DD6DF31C(v23);
  if (v26)
  {
    v37 = a2;
    v38 = v13;
    Preference.userDefaultsValue.getter(a1, v19);
    sub_1DD6DF31C(v19);
    if (v26)
    {
      v27 = sub_1DD7317E4(a1, v11);
      v36 = &v36;
      *&v28 = MEMORY[0x1EEE9AC00](v27);
      v29 = v41;
      *(&v36 - 6) = v40;
      *(&v36 - 5) = v12;
      *(&v36 - 4) = v29;
      *(&v36 - 3) = v28;
      sub_1DD6F1DD8(sub_1DD731A60, (&v36 - 8), MEMORY[0x1E69E73E0], v12, v30, v16);
      (*(v39 + 8))(v11, v7);
      sub_1DD6DF31C(v16);
      if (v26)
      {
        (*(*(v12 - 8) + 16))(v37, v3 + *(a1 + 48), v12);
        sub_1DD6DF31C(v16);
        v34 = v38;
        if (!v26)
        {
          (*(v42 + 8))(v16, v38);
        }
      }

      else
      {
        sub_1DD6E0540();
        (*(v35 + 32))(v37, v16, v12);
        v34 = v38;
      }

      sub_1DD6DF31C(v19);
      if (!v26)
      {
        (*(v42 + 8))(v19, v34);
      }
    }

    else
    {
      sub_1DD6E0540();
      (*(v33 + 32))(v37, v19, v12);
      v34 = v38;
    }

    result = sub_1DD6DF31C(v23);
    if (!v26)
    {
      return (*(v42 + 8))(v23, v34);
    }
  }

  else
  {
    sub_1DD6E0540();
    return (*(v31 + 32))(a2, v23, v12);
  }

  return result;
}

uint64_t dispatch thunk of SessionReverseClient.send(message:)()
{
  sub_1DD6E1F54();
  v2 = v1;
  sub_1DD6DE6BC();
  v6 = (*(v3 + 128) + **(v3 + 128));
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v4[1] = sub_1DD6FA5C4;

  return v6(v2);
}

uint64_t sub_1DD6F2D9C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return sub_1DD6E13F8();
}

void SessionServerMessage.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6FE1BC();
  sub_1DD710A9C(&qword_1ECD10BD8, &qword_1DD8890F8);
  sub_1DD6E49A8();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v3 = sub_1DD6F3014();
  sub_1DD6E1808(&type metadata for SessionServerMessage.CodingKeys, v4, v3);
  sub_1DD825C8C();
  sub_1DD874820();
  sub_1DD6E14DC();
  sub_1DD6E1E84(v5);
  sub_1DD6E5FDC();
  sub_1DD8759D0();
  if (!v0)
  {
    type metadata accessor for SessionServerMessage(0);
    sub_1DD825AA8();
    sub_1DD6E5FDC();
    sub_1DD8759D0();
    sub_1DD6E5FDC();
    sub_1DD875960();
    sub_1DD82595C(*(v1 + 28));
    sub_1DD6E6174();
    sub_1DD824BDC();
    sub_1DD875970();
    sub_1DD82636C();
    type metadata accessor for MessagePayload(0);
    sub_1DD6E3758();
    sub_1DD6E1E84(v6);
    sub_1DD8265F0();
    sub_1DD6E63A8();
    sub_1DD8759D0();
    sub_1DD82595C(*(v1 + 36));
    sub_1DD8267FC();
    sub_1DD824BDC();
    sub_1DD875970();
    sub_1DD827548();
    sub_1DD874790();
    sub_1DD826214();
    sub_1DD6E1E84(v7);
    sub_1DD6E63A8();
    sub_1DD8759D0();
  }

  v8 = sub_1DD6DEA04();
  v9(v8);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

unint64_t sub_1DD6F3014()
{
  result = qword_1EE0172C0[0];
  if (!qword_1EE0172C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0172C0);
  }

  return result;
}

uint64_t sub_1DD6F309C()
{

  return sub_1DD730620(v0 + 352, v0 + 440, v1, v2);
}

uint64_t sub_1DD6F30D0()
{

  return sub_1DD7533B8();
}

uint64_t sub_1DD6F30F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DD710A9C(a3, a4);
}

uint64_t sub_1DD6F3168()
{
  *v0 = 5;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 2;
  v3 = type metadata accessor for SessionConfiguration(0);
  v4 = v3[8];
  v5 = type metadata accessor for LocaleSettings(0);
  sub_1DD6E5E68(v0 + v4, 1, 1, v5);
  *(v0 + v3[9]) = 2;
  *(v0 + v3[10]) = 512;
  *(v0 + v3[11]) = 0;
  v6 = v0 + v3[12];
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *(v0 + v3[13]) = 4;
  *(v0 + v3[14]) = 2;
  v7 = (v0 + v3[15]);
  *v7 = 0;
  v7[1] = 0;
  *v0 = v2;

  return sub_1DD6E7470(v1, v0 + v4);
}

void *sub_1DD6F3270(void *result)
{
  *(v1 + 136) = result;
  result[2] = v3;
  result[3] = v2;
  result[4] = v4;
  result[5] = v5;
  return result;
}

_BYTE *sub_1DD6F32B8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result = sub_1DD6EE784(result, v6);
        break;
      case 2:
        result = sub_1DD6E3744(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1DD6F3374);
      case 4:
        result = sub_1DD6E991C(result, v6);
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
          result = sub_1DD6E5904(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD6F33A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1DD6DEAA4(-1);
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 7);
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

      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 7);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1DD6DEAA4((*a1 | (v4 << 8)) - 7);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1DD6DEAA4(v8);
}

uint64_t sub_1DD6F3430(char a1)
{
  result = 0x496E6F6973736573;
  switch(a1)
  {
    case 1:
      v3 = 0x49746E657665;
      goto LABEL_4;
    case 2:
      result = 0x6576457972657571;
      break;
    case 3:
      result = 0x6552746E65696C63;
      break;
    case 4:
      v3 = 0x616F6C796170;
LABEL_4:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    case 5:
      result = 0x6553746E65696C63;
      break;
    case 6:
      result = 0x6D617473656D6974;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1DD6F3588()
{
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 1;
}

uint64_t SessionReverseClient.__deallocating_deinit()
{
  SessionReverseClient.deinit();
  sub_1DD6E2848();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t SessionReverseClient.deinit()
{

  return v0;
}

uint64_t sub_1DD6F35F0(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1DD875B20();
  sub_1DD875B50();
  sub_1DD875B40();
  if (v2)
  {
    _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
  }

  return sub_1DD875B60();
}

__n128 sub_1DD6F366C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DD6F3680(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_1DD6F3810(uint64_t a1@<X8>, void (*a2)(void)@<X3>)
{

  sub_1DD785184(v2 + a1, v4, v3 + a1, a2);
}

uint64_t sub_1DD6F3868(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E5E38];

  return sub_1DD83C2BC(a1, a2, a3, v4);
}

uint64_t sub_1DD6F388C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 56);
  if (!v3)
  {
    v10 = 0u;
    v11 = 0u;
LABEL_10:
    sub_1DD6EE7DC(&v10, &qword_1ECD0E838, &unk_1DD87AA30);
    return 2;
  }

  v4 = sub_1DD875110();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_1DD8755F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_10;
  }

  sub_1DD6EE7DC(&v10, &qword_1ECD0E838, &unk_1DD87AA30);
  v6 = sub_1DD875110();
  [v3 BOOLForKey_];

  sub_1DD710A9C(qword_1ECD0E860, &unk_1DD87A860);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 2;
  }
}

uint64_t LocaleSettings.userLocale.getter()
{
  v2 = sub_1DD6E0A5C();
  v3 = *(type metadata accessor for LocaleSettings(v2) + 20);
  sub_1DD874890();
  sub_1DD6DE1C4();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t LocaleSettings.responseLocale.getter()
{
  v2 = sub_1DD6E0A5C();
  v3 = *(type metadata accessor for LocaleSettings(v2) + 24);
  sub_1DD874890();
  sub_1DD6DE1C4();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t LocaleSettings.deviceLocale.getter()
{
  sub_1DD6E0A5C();
  sub_1DD874890();
  sub_1DD6DE1C4();
  v0 = sub_1DD6DDEFC();

  return v1(v0);
}

uint64_t Collection.indexed()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1DD6DDEAC();
  v8 = v7;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - v10;
  v12 = *(swift_getAssociatedConformanceWitness() + 8);
  v13 = *(a2 + 8);
  v18[0] = AssociatedTypeWitness;
  v18[1] = a1;
  v18[2] = v12;
  v18[3] = v13;
  sub_1DD875700();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v18 - v15;
  sub_1DD875490();
  sub_1DD875A60();
  (*(v8 + 8))(v11, AssociatedTypeWitness);
  return IndexedElements.init(inner:)(v16, a3);
}

uint64_t sub_1DD6F3D74@<X0>(uint64_t a1@<X0>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = sub_1DD6E53B0();
  a4(v8);
  sub_1DD6DF448();
  return (*(v9 + 32))(a5, a1);
}

uint64_t IndexedElements.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  sub_1DD6ED6C0(v4);
  sub_1DD6E0B90();
  v5 = sub_1DD875700();
  sub_1DD6DDEAC();
  v7 = v6;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16[-v9];
  sub_1DD6E0B90();
  sub_1DD8756F0();
  sub_1DD6DDED0();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v16[-v13];
  (*(v7 + 16))(v10, v2, v5, v12);
  sub_1DD8756D0();
  return IndexedElements.Iterator.init(inner:)(v14, a2);
}

uint64_t sub_1DD6F3FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  IndexedElements.makeIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t IndexedElements.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = sub_1DD6E2250();
  v5 = *(v3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = v4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = sub_1DD8755C0();
  sub_1DD6DDEAC();
  v10 = v9;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = sub_1DD6E2250();
  v15 = *(swift_getAssociatedConformanceWitness() + 8);
  v28 = v14;
  v29 = v2;
  v30 = v15;
  v31 = v5;
  sub_1DD8756F0();
  sub_1DD8756E0();
  if (sub_1DD6E5ED0(v13, 1, TupleTypeMetadata2) == 1)
  {
    (*(v10 + 8))(v13, v8);
    v16 = swift_getTupleTypeMetadata2();
    v17 = v27;
    v18 = 1;
  }

  else
  {
    v19 = *(TupleTypeMetadata2 + 48);
    v20 = v26;
    v21 = swift_getTupleTypeMetadata2();
    v22 = *(v21 + 48);
    v23 = v27;
    (*(*(v20 - 8) + 32))(v27, v13, v20);
    (*(*(AssociatedTypeWitness - 8) + 32))(v23 + v22, &v13[v19], AssociatedTypeWitness);
    v17 = v23;
    v18 = 0;
    v16 = v21;
  }

  return sub_1DD6E5E68(v17, v18, 1, v16);
}

unint64_t sub_1DD6F436C()
{
  result = qword_1EE015820;
  if (!qword_1EE015820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015820);
  }

  return result;
}

uint64_t sub_1DD6F43C0()
{
}

uint64_t sub_1DD6F4404()
{

  return sub_1DD875B20();
}

void sub_1DD6F4468(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 288);
  v5 = *(v1 - 280);

  sub_1DD6FE2E0(v3, v4, v5);
}

void sub_1DD6F448C(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_1DD6F4524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  return sub_1DD843248(v24 - 240, va);
}

void sub_1DD6F4550()
{
  v2 = (*(v0 + 24) + 48);

  os_unfair_lock_lock(v2);
}

void sub_1DD6F45C8(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  sub_1DD6F9ED8();
  sub_1DD6E0EC8();
  v5 = sub_1DD875580();
  (a4)[2](a4, v5, 0);

  _Block_release(a4);
}

void SessionServerMessage.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_1DD6DED2C();
  v21 = v20;
  v54 = sub_1DD874790();
  sub_1DD6DDEAC();
  v52 = v22;
  MEMORY[0x1EEE9AC00](v23);
  sub_1DD6DDEE8();
  v53 = v24;
  v25 = sub_1DD6E9A9C();
  type metadata accessor for MessagePayload(v25);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6DDEE8();
  v27 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v27);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD700BA4();
  v29 = sub_1DD874820();
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD6DE21C();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD710A9C(&qword_1ECD10BE0, &qword_1DD889100);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD6DE340();
  v55 = type metadata accessor for SessionServerMessage(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD6DDEE8();
  v56 = v37;
  sub_1DD6DEAD0();
  sub_1DD6F3014();
  sub_1DD8256E0();
  sub_1DD875B90();
  if (v19)
  {
    sub_1DD6E1EC8(v21);
  }

  else
  {
    sub_1DD6E14DC();
    sub_1DD6E1E84(v38);
    sub_1DD8267F0();
    sub_1DD8758D0();
    v39 = sub_1DD6DEA04();
    v51 = v40;
    (v40)(v39);
    sub_1DD6DEC54();
    sub_1DD8267F0();
    sub_1DD8758D0();
    v51(v56 + v55[5], v33, v29);
    sub_1DD6E0FF8();
    sub_1DD8267F0();
    sub_1DD875860();
    sub_1DD6E3A64();
    sub_1DD6E6174();
    v41 = sub_1DD875870();
    v42 = (v56 + v55[7]);
    *v42 = v41;
    v42[1] = v43;
    sub_1DD82636C();
    sub_1DD6E3758();
    sub_1DD6E1E84(v44);
    sub_1DD6E9938();
    sub_1DD8758D0();
    sub_1DD6E27BC();
    sub_1DD6E59B8();
    sub_1DD8267FC();
    v45 = sub_1DD875870();
    v46 = (v56 + v55[9]);
    *v46 = v45;
    v46[1] = v47;
    sub_1DD827548();
    sub_1DD826214();
    sub_1DD6E1E84(v48);
    sub_1DD8758D0();
    v49 = sub_1DD826CB0();
    v50(v49);
    (*(v52 + 32))(v56 + v55[10], v53, v54);
    sub_1DD8275A4();
    sub_1DD6E5870();
    sub_1DD6E1EC8(v21);
    sub_1DD6E5ABC();
  }

  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void MessagePayload.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  v672 = v20;
  v23 = v22;
  sub_1DD8264F0(v24);
  v25 = sub_1DD710A9C(&qword_1ECD11F10, &qword_1DD889A90);
  sub_1DD6DF3FC(v25, &v663);
  v646 = v26;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1DD8247DC(v28, v598);
  v29 = sub_1DD710A9C(&qword_1ECD11F18, &qword_1DD889A98);
  sub_1DD6DF3FC(v29, &v662);
  v645 = v30;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD824FB0(v32);
  v33 = sub_1DD710A9C(&qword_1ECD11F20, &qword_1DD889AA0);
  sub_1DD6DF3FC(v33, &v661);
  v644 = v34;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD825498(v36, v599);
  v37 = sub_1DD710A9C(&qword_1ECD11F28, &qword_1DD889AA8);
  sub_1DD6DF3FC(v37, &v660);
  v669 = v38;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v40);
  v41 = sub_1DD710A9C(&qword_1ECD11F30, &qword_1DD889AB0);
  sub_1DD6DF3FC(v41, &v659);
  v642[1] = v42;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1DD705DF0(v44, v600);
  v45 = sub_1DD710A9C(&qword_1ECD11F38, &qword_1DD889AB8);
  sub_1DD6DF3FC(v45, &v658);
  v641[1] = v46;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v48);
  v49 = sub_1DD710A9C(&qword_1ECD11F40, &qword_1DD889AC0);
  sub_1DD6DF3FC(v49, &v657);
  v640[1] = v50;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1DD824AFC(v52, v601);
  v53 = sub_1DD710A9C(&qword_1ECD11F48, &qword_1DD889AC8);
  sub_1DD6DF3FC(v53, &v656);
  v639[1] = v54;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v55);
  sub_1DD825454(v56, v602);
  v57 = sub_1DD710A9C(&qword_1ECD11F50, &qword_1DD889AD0);
  sub_1DD6DF3FC(v57, &v655);
  v638[1] = v58;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v59);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v60);
  v61 = sub_1DD710A9C(&qword_1ECD11F58, &qword_1DD889AD8);
  sub_1DD6DF3FC(v61, &v654);
  v637[1] = v62;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v63);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v64);
  v65 = sub_1DD710A9C(&qword_1ECD11F60, &qword_1DD889AE0);
  sub_1DD6DF3FC(v65, &v653);
  v636[1] = v66;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v67);
  sub_1DD82543C(v68, v603);
  v69 = sub_1DD710A9C(&qword_1ECD11F68, &qword_1DD889AE8);
  sub_1DD6DF3FC(v69, &v652);
  v635[1] = v70;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v71);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v72);
  v73 = sub_1DD710A9C(&qword_1ECD11F70, &qword_1DD889AF0);
  sub_1DD6DF3FC(v73, &v651);
  v634 = v74;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v75);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v76);
  v77 = sub_1DD710A9C(&qword_1ECD11F78, &qword_1DD889AF8);
  sub_1DD6DF3FC(v77, &v650);
  v633[1] = v78;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v79);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v80);
  v81 = sub_1DD710A9C(&qword_1ECD11F80, &qword_1DD889B00);
  sub_1DD6DF3FC(v81, &v649);
  v632[1] = v82;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v83);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v84);
  v85 = sub_1DD710A9C(&qword_1ECD11F88, &qword_1DD889B08);
  sub_1DD6DF3FC(v85, &v648);
  v631[1] = v86;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v87);
  sub_1DD8253F8(v88, v604);
  v89 = sub_1DD710A9C(&qword_1ECD11F90, &qword_1DD889B10);
  sub_1DD6DF3FC(v89, &v647);
  v630[1] = v90;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v91);
  sub_1DD82538C(v92);
  v93 = sub_1DD710A9C(&qword_1ECD11F98, &qword_1DD889B18);
  sub_1DD6DF3FC(v93, &v646);
  v629[1] = v94;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v95);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v96);
  v97 = sub_1DD710A9C(&qword_1ECD11FA0, &qword_1DD889B20);
  sub_1DD6DF3FC(v97, &v645);
  v628[1] = v98;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v99);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v100);
  v101 = sub_1DD710A9C(&qword_1ECD11FA8, &qword_1DD889B28);
  sub_1DD6DF3FC(v101, &v644);
  v627[1] = v102;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v103);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v104);
  v105 = sub_1DD710A9C(&qword_1ECD11FB0, &qword_1DD889B30);
  sub_1DD6DF3FC(v105, &v643);
  v626[1] = v106;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v107);
  sub_1DD8253E0(v108, v605);
  v109 = sub_1DD710A9C(&qword_1ECD11FB8, &qword_1DD889B38);
  sub_1DD6DF3FC(v109, v642);
  v625[1] = v110;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v111);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v112);
  v113 = sub_1DD710A9C(&qword_1ECD11FC0, &qword_1DD889B40);
  sub_1DD6DF3FC(v113, v641);
  v624 = v114;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v115);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v116);
  v117 = sub_1DD710A9C(&qword_1ECD11FC8, &qword_1DD889B48);
  sub_1DD6DF3FC(v117, v640);
  v623 = v118;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v119);
  sub_1DD8253A0(v120);
  v121 = sub_1DD710A9C(&qword_1ECD11FD0, &qword_1DD889B50);
  sub_1DD6DF3FC(v121, v639);
  v622 = v122;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v123);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v124);
  v125 = sub_1DD710A9C(&qword_1ECD11FD8, &qword_1DD889B58);
  sub_1DD6DF3FC(v125, v638);
  v621 = v126;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v127);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v128);
  v129 = sub_1DD710A9C(&qword_1ECD11FE0, &qword_1DD889B60);
  sub_1DD6DF3FC(v129, v637);
  v620 = v130;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v131);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v132);
  v133 = sub_1DD710A9C(&qword_1ECD11FE8, &qword_1DD889B68);
  sub_1DD6DF3FC(v133, v636);
  v619 = v134;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v135);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v136);
  v137 = sub_1DD710A9C(&qword_1ECD11FF0, &qword_1DD889B70);
  sub_1DD6DF3FC(v137, v635);
  v618[18] = v138;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v139);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v140);
  v141 = sub_1DD710A9C(&qword_1ECD11FF8, &qword_1DD889B78);
  sub_1DD6DF3FC(v141, &v634);
  v618[19] = v142;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v143);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v144);
  v145 = sub_1DD710A9C(&qword_1ECD12000, &qword_1DD889B80);
  sub_1DD6DF3FC(v145, v633);
  v618[16] = v146;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v147);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v148);
  v149 = sub_1DD710A9C(&qword_1ECD12008, &qword_1DD889B88);
  sub_1DD6DF3FC(v149, v632);
  v618[14] = v150;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v151);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v152);
  v153 = sub_1DD710A9C(&qword_1ECD12010, &qword_1DD889B90);
  sub_1DD6DF3FC(v153, v631);
  v618[12] = v154;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v155);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v156);
  v157 = sub_1DD710A9C(&qword_1ECD12018, &qword_1DD889B98);
  sub_1DD6DF3FC(v157, v630);
  v618[10] = v158;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v159);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v160);
  v161 = sub_1DD710A9C(&qword_1ECD12020, &qword_1DD889BA0);
  sub_1DD6DF3FC(v161, v629);
  v618[8] = v162;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v163);
  sub_1DD8253C8(v164, v606);
  v165 = sub_1DD710A9C(&qword_1ECD12028, &qword_1DD889BA8);
  sub_1DD6DF3FC(v165, v628);
  v618[6] = v166;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v167);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v168);
  v169 = sub_1DD710A9C(&qword_1ECD12030, &qword_1DD889BB0);
  sub_1DD6DF3FC(v169, v627);
  v618[4] = v170;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v171);
  sub_1DD8254B0(v172, v607);
  v173 = sub_1DD710A9C(&qword_1ECD12038, &qword_1DD889BB8);
  sub_1DD6DF3FC(v173, v626);
  v618[2] = v174;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v175);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v176);
  v177 = sub_1DD710A9C(&qword_1ECD12040, &qword_1DD889BC0);
  sub_1DD6DF3FC(v177, v625);
  v665 = v178;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v179);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v180);
  v181 = sub_1DD710A9C(&qword_1ECD12048, &qword_1DD889BC8);
  sub_1DD6DF3FC(v181, &v624);
  v617[8] = v182;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v183);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v184);
  v185 = sub_1DD710A9C(&qword_1ECD12050, &qword_1DD889BD0);
  sub_1DD6DF3FC(v185, &v623);
  v617[6] = v186;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v187);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v188);
  v189 = sub_1DD710A9C(&qword_1ECD12058, &qword_1DD889BD8);
  sub_1DD6DF3FC(v189, &v622);
  v617[4] = v190;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v191);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v192);
  v193 = sub_1DD710A9C(&qword_1ECD12060, &qword_1DD889BE0);
  sub_1DD6DF3FC(v193, &v621);
  v617[2] = v194;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v195);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v196);
  v197 = sub_1DD710A9C(&qword_1ECD12068, &qword_1DD889BE8);
  sub_1DD6DF3FC(v197, &v620);
  v617[0] = v198;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v199);
  sub_1DD82546C(v200, v608);
  v201 = sub_1DD710A9C(&qword_1ECD12070, &qword_1DD889BF0);
  sub_1DD6DF3FC(v201, &v619);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v202);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v203);
  v670 = sub_1DD710A9C(&qword_1ECD12078, &qword_1DD889BF8);
  sub_1DD6DDEAC();
  v667 = v204;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v205);
  sub_1DD6E0C6C();
  v206 = sub_1DD6E9A9C();
  v666 = type metadata accessor for MessagePayload(v206);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v207);
  sub_1DD6DE21C();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v208);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v209);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v210);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v211);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v212);
  sub_1DD6F1780();
  v668 = v213;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v214);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v215);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v216);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v217);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v218);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v219);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v220);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v221);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v222);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v223);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v224);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v225);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v226);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v227);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v228);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v229);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v230);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v231);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v232);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v233);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v234);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v235);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v236);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v237);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v238);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v239);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v240);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v241);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v242);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v243);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v244);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v245);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v246);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v247);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v248);
  sub_1DD6F8C84();
  MEMORY[0x1EEE9AC00](v249);
  sub_1DD824970();
  MEMORY[0x1EEE9AC00](v250);
  sub_1DD824C88();
  MEMORY[0x1EEE9AC00](v251);
  sub_1DD825724();
  MEMORY[0x1EEE9AC00](v252);
  sub_1DD6E61D0();
  MEMORY[0x1EEE9AC00](v253);
  sub_1DD6DFF40();
  v671 = v23;
  sub_1DD824CF8(v23);
  sub_1DD6FAA1C();
  v254 = v672;
  sub_1DD875B90();
  if (v254)
  {
    goto LABEL_9;
  }

  v672 = v21;
  sub_1DD875900();
  sub_1DD6ED750();
  sub_1DD826B7C();
  if (v255)
  {
    goto LABEL_8;
  }

  sub_1DD6E6120();
  sub_1DD6E42A8();
  if (v262 == v263)
  {
    __break(1u);
    JUMPOUT(0x1DD6F8B40);
  }

  v609 = *(v261 + v260);
  sub_1DD6F43D8(v256, v257, v258, v259, v260);
  sub_1DD6ED830();
  v265 = v264;
  v267 = v266;
  swift_unknownObjectRelease();
  v268 = v665;
  if (v265 != v267 >> 1)
  {
LABEL_8:
    v271 = v666;
    v272 = sub_1DD875740();
    sub_1DD6E41BC(v272, MEMORY[0x1E69E6B28]);
    v274 = v273;
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v274 = v271;
    v275 = v670;
    sub_1DD875810();
    sub_1DD6DF12C();
    sub_1DD824B14();
    v276 = sub_1DD6FEB10();
    v277(v276);
    swift_willThrow();
    swift_unknownObjectRelease();
    v278 = sub_1DD824A04();
    v279(v278, v275);
LABEL_9:
    v280 = v671;
    goto LABEL_10;
  }

  v269 = v664;
  switch(v609)
  {
    case 1:
      v673.n128_u8[0] = 1;
      sub_1DD8028FC();
      sub_1DD824848();
      sub_1DD875800();
      type metadata accessor for MessagePayload.Request(0);
      sub_1DD825F98();
      sub_1DD6E1E84(v330);
      v331 = sub_1DD6F4500();
      sub_1DD6EDFA8(v331, v332, v333, v334, v335);
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v494 = sub_1DD6DF174();
      v495(v494);
      v496 = sub_1DD6F4510();
      v497(v496);
      sub_1DD6F0564();
      goto LABEL_56;
    case 2:
      v673.n128_u8[0] = 2;
      sub_1DD6F9C40();
      sub_1DD8269BC();
      sub_1DD824848();
      sub_1DD875800();
      sub_1DD6F9AC4();
      sub_1DD6FF7A8();
      sub_1DD8758D0();
      swift_unknownObjectRelease();
      v475 = sub_1DD6FFA00();
      v476(v475, v617[3]);
      v477 = sub_1DD824B24();
      v478(v477);
      sub_1DD6E67F8();
      goto LABEL_55;
    case 3:
      v673.n128_u8[0] = 3;
      sub_1DD802854();
      sub_1DD6EFF94();
      sub_1DD824848();
      sub_1DD875800();
      sub_1DD802FE0();
      sub_1DD824DF8();
      sub_1DD8758D0();
      swift_unknownObjectRelease();
      v483 = sub_1DD6E5DE8();
      v484(v483, v617[5]);
      v485 = sub_1DD6F4510();
      v486(v485);
      sub_1DD6E67F8();
      goto LABEL_55;
    case 4:
      v673.n128_u8[0] = 4;
      sub_1DD8027AC();
      sub_1DD6ED1D4(&type metadata for MessagePayload.EndOfPlanCodingKeys, &v673);
      sub_1DD802F8C();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v450 = sub_1DD6DF174();
      v451(v450);
      v452 = sub_1DD824B24();
      v453(v452);
      sub_1DD6E67F8();
      goto LABEL_55;
    case 5:
      v673.n128_u8[0] = 5;
      sub_1DD802758();
      sub_1DD6ED1D4(&type metadata for MessagePayload.StepExecutedWithReturnedValueCodingKeys, &v673);
      type metadata accessor for MessagePayload.StepExecutedWithReturnedValue(0);
      sub_1DD825EF0();
      sub_1DD6E1E84(v348);
      v349 = sub_1DD6F4500();
      sub_1DD6EDFA8(v349, v350, v351, v352, v353);
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v519 = sub_1DD6DF174();
      v520(v519);
      v521 = sub_1DD6F4510();
      v522(v521);
      sub_1DD6F0564();
      goto LABEL_56;
    case 6:
      v673.n128_u8[0] = 6;
      sub_1DD8026B0();
      sub_1DD6F9BEC();
      sub_1DD8250E8();
      sub_1DD875800();
      sub_1DD802F38();
      sub_1DD6E710C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v531 = sub_1DD6E0F98();
      v532(v531);
      v533 = sub_1DD825864();
      v534(v533, v670);
      v535 = v673.n128_u8[8];
      v536 = v674.n128_u64[0];
      *v610 = v673.n128_u64[0];
      *(v610 + 8) = v535;
      *(v610 + 16) = v536;
      sub_1DD6E67F8();
      goto LABEL_55;
    case 7:
      v673.n128_u8[0] = 7;
      sub_1DD802608();
      sub_1DD6ED1D4(&type metadata for MessagePayload.PlannerReturnedRawPlanCodingKeys, &v673);
      sub_1DD802EE4();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v487 = sub_1DD6DF174();
      v488(v487);
      v489 = sub_1DD824B24();
      v490(v489);
      v491 = v673.n128_u64[1];
      v492 = v674.n128_u8[0];
      v493 = v674.n128_u64[1];
      *v611 = v673.n128_u64[0];
      *(v611 + 8) = v491;
      *(v611 + 16) = v492;
      *(v611 + 24) = v493;
      sub_1DD6E67F8();
      goto LABEL_55;
    case 8:
      v673.n128_u8[0] = 8;
      sub_1DD802560();
      sub_1DD6ED1D4(&type metadata for MessagePayload.QueryCodingKeys, &v673);
      sub_1DD802E90();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v545 = sub_1DD6DF174();
      v546(v545);
      v547 = sub_1DD824B24();
      v548(v547);
      v549 = v674.n128_u64[0];
      v550 = v674.n128_u8[8];
      *v612 = v673;
      *(v612 + 16) = v549;
      *(v612 + 24) = v550;
      *(v612 + 32) = v675;
      sub_1DD6E67F8();
      goto LABEL_55;
    case 9:
      v673.n128_u8[0] = 9;
      sub_1DD8024B8();
      sub_1DD6ED1D4(&type metadata for MessagePayload.SpeechQueryCodingKeys, &v673);
      sub_1DD802E3C();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v462 = sub_1DD6DF174();
      v463(v462);
      v464 = sub_1DD824B24();
      v465(v464);
      v466 = v673.n128_u8[8];
      v613->n128_u64[0] = v673.n128_u64[0];
      v613->n128_u8[8] = v466;
      v613[1] = v674;
      sub_1DD6E67F8();
      goto LABEL_55;
    case 10:
      v673.n128_u8[0] = 10;
      sub_1DD802410();
      sub_1DD6ED1D4(&type metadata for MessagePayload.ClientInitiatedClientActionCodingKeys, &v673);
      sub_1DD802DE8();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v541 = sub_1DD6DF174();
      v542(v541);
      v543 = sub_1DD824B24();
      v544(v543);
      sub_1DD6FF5C0(v673.n128_i64[0]);
      goto LABEL_55;
    case 11:
      v673.n128_u8[0] = 11;
      sub_1DD802368();
      sub_1DD6ED1D4(&type metadata for MessagePayload.PrescribedPlanCodingKeys, &v673);
      sub_1DD802D94();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v446 = sub_1DD6DF174();
      v447(v446);
      v448 = sub_1DD824B24();
      v449(v448);
      sub_1DD6E5CE4(v673.n128_i64[0]);
      goto LABEL_55;
    case 12:
      v673.n128_u8[0] = 12;
      sub_1DD8022C0();
      sub_1DD6ED1D4(&type metadata for MessagePayload.MockTranscriptCodingKeys, &v673);
      sub_1DD802D40();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v458 = sub_1DD6DF174();
      v459(v458);
      v460 = sub_1DD824B24();
      v461(v460);
      sub_1DD6E5CE4(v673.n128_i64[0]);
      goto LABEL_55;
    case 13:
      v673.n128_u8[0] = 13;
      sub_1DD802218();
      sub_1DD6ED1D4(&type metadata for MessagePayload.DisambiguationNeededCodingKeys, &v673);
      sub_1DD802CEC();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v527 = sub_1DD6DF174();
      v528(v527);
      v529 = sub_1DD824B24();
      v530(v529);
      *v614 = v673.n128_u64[0];
      sub_1DD6E67F8();
      goto LABEL_55;
    case 14:
      v673.n128_u8[0] = 14;
      sub_1DD8021C4();
      sub_1DD6ED1D4(&type metadata for MessagePayload.ClientEffectInvocationCodingKeys, &v673);
      type metadata accessor for MessagePayload.ClientEffectInvocation(0);
      sub_1DD826028();
      sub_1DD6E1E84(v299);
      v300 = sub_1DD6F4500();
      sub_1DD6EDFA8(v300, v301, v302, v303, v304);
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v438 = sub_1DD6DF174();
      v439(v438);
      v440 = sub_1DD6F4510();
      v441(v440);
      sub_1DD6F0564();
      goto LABEL_56;
    case 15:
      v673.n128_u8[0] = 15;
      sub_1DD802170();
      sub_1DD6ED1D4(&type metadata for MessagePayload.ClientEffectResolvedCodingKeys, &v673);
      type metadata accessor for MessagePayload.ClientEffectResolved(0);
      sub_1DD825FB0();
      sub_1DD6E1E84(v324);
      v325 = sub_1DD6F4500();
      sub_1DD6EDFA8(v325, v326, v327, v328, v329);
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v479 = sub_1DD6DF174();
      v480(v479);
      v481 = sub_1DD6F4510();
      v482(v481);
      sub_1DD6F0564();
      goto LABEL_56;
    case 16:
      v673.n128_u8[0] = 16;
      sub_1DD8020C8();
      sub_1DD6ED1D4(&type metadata for MessagePayload.ActionWillExecuteCodingKeys, &v673);
      sub_1DD802C98();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD826330();
      swift_unknownObjectRelease();
      v428 = sub_1DD6E5DB0();
      v429(v428);
      v430 = sub_1DD825570();
      v431(v430);
      v432 = sub_1DD82633C(v617);
      memcpy(v432, v433, 0x68uLL);
      sub_1DD6E67F8();
      goto LABEL_55;
    case 17:
      v673.n128_u8[0] = 17;
      sub_1DD802074();
      sub_1DD6ED1D4(&type metadata for MessagePayload.ClientActionCodingKeys, &v673);
      type metadata accessor for MessagePayload.ClientAction(0);
      sub_1DD825F50();
      sub_1DD6E1E84(v342);
      v343 = sub_1DD6F4500();
      sub_1DD6EDFA8(v343, v344, v345, v346, v347);
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v506 = sub_1DD6DF174();
      v507(v506);
      v508 = sub_1DD6F4510();
      v509(v508);
      sub_1DD6F0564();
      goto LABEL_56;
    case 18:
      v673.n128_u8[0] = 18;
      sub_1DD802020();
      sub_1DD6ED1D4(&type metadata for MessagePayload.ClientActionResultCodingKeys, &v673);
      type metadata accessor for MessagePayload.ClientActionResult(0);
      sub_1DD825EC0();
      sub_1DD6E1E84(v360);
      v361 = sub_1DD6F4500();
      sub_1DD6EDFA8(v361, v362, v363, v364, v365);
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v537 = sub_1DD6DF174();
      v538(v537);
      v539 = sub_1DD6F4510();
      v540(v539);
      sub_1DD6F0564();
      goto LABEL_56;
    case 19:
      v673.n128_u8[0] = 19;
      sub_1DD801F78();
      sub_1DD6ED1D4(&type metadata for MessagePayload.ClientCustomCodingKeys, &v673);
      sub_1DD802C44();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v567 = sub_1DD6DF174();
      v568(v567);
      v569 = sub_1DD824B24();
      v570(v569);
      v571 = v675;
      v572 = v674;
      *v615 = v673;
      *(v615 + 16) = v572;
      *(v615 + 32) = v571;
      sub_1DD6E67F8();
      goto LABEL_55;
    case 20:
      v673.n128_u8[0] = 20;
      sub_1DD801ED0();
      sub_1DD6ED1D4(&type metadata for MessagePayload.ClientIdentifierCodingKeys, &v673);
      sub_1DD802BF0();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v515 = sub_1DD6DF174();
      v516(v515);
      v517 = sub_1DD824B24();
      v518(v517);
      sub_1DD6E5CE4(v673.n128_i64[0]);
      goto LABEL_55;
    case 21:
      v673.n128_u8[0] = 21;
      sub_1DD801E7C();
      sub_1DD6ED1D4(&type metadata for MessagePayload.SystemPromptRequestedCodingKeys, &v673);
      type metadata accessor for SystemPrompt(0);
      sub_1DD825ED8();
      sub_1DD6E1E84(v354);
      v355 = sub_1DD6F4500();
      sub_1DD6EDFA8(v355, v356, v357, v358, v359);
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v523 = sub_1DD6DF174();
      v524(v523);
      v525 = sub_1DD6F4510();
      v526(v525);
      sub_1DD6F0564();
      goto LABEL_56;
    case 22:
      v673.n128_u8[0] = 22;
      sub_1DD801E28();
      sub_1DD6ED1D4(&type metadata for MessagePayload.SystemPromptResolvedCodingKeys, &v673);
      type metadata accessor for SystemPromptResolution(0);
      sub_1DD6FAD50();
      sub_1DD6E1E84(v372);
      v373 = sub_1DD6F4500();
      sub_1DD6EDFA8(v373, v374, v375, v376, v377);
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v559 = sub_1DD6DF174();
      v560(v559);
      v561 = sub_1DD6F4510();
      v562(v561);
      sub_1DD6F0564();
      goto LABEL_56;
    case 23:
      v673.n128_u8[0] = 23;
      sub_1DD801DD4();
      sub_1DD6ED1D4(&type metadata for MessagePayload.ActionResponseCodingKeys, &v673);
      type metadata accessor for ActionResponse(0);
      sub_1DD825E90();
      sub_1DD6E1E84(v384);
      v385 = sub_1DD6F4500();
      sub_1DD6EDFA8(v385, v386, v387, v388, v389);
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v577 = sub_1DD6DF174();
      v578(v577);
      v579 = sub_1DD6F4510();
      v580(v579);
      sub_1DD6F0564();
      goto LABEL_56;
    case 24:
      v673.n128_u8[0] = 24;
      sub_1DD801D80();
      sub_1DD6ED1D4(&type metadata for MessagePayload.SystemResponseCodingKeys, &v673);
      type metadata accessor for SystemResponse(0);
      sub_1DD825FC8();
      sub_1DD6E1E84(v318);
      v319 = sub_1DD6F4500();
      sub_1DD6EDFA8(v319, v320, v321, v322, v323);
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v471 = sub_1DD6DF174();
      v472(v471);
      v473 = sub_1DD6F4510();
      v474(v473);
      sub_1DD6F0564();
      goto LABEL_56;
    case 25:
      v673.n128_u8[0] = 25;
      sub_1DD801D2C();
      sub_1DD6ED1D4(&type metadata for MessagePayload.IntermediateSystemResponseCodingKeys, &v673);
      type metadata accessor for IntermediateSystemResponse(0);
      sub_1DD825FE0();
      sub_1DD6E1E84(v312);
      v313 = sub_1DD6F4500();
      sub_1DD6EDFA8(v313, v314, v315, v316, v317);
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v467 = sub_1DD6DF174();
      v468(v467);
      v469 = sub_1DD6F4510();
      v470(v469);
      sub_1DD6F0564();
      goto LABEL_56;
    case 26:
      v673.n128_u8[0] = 26;
      sub_1DD801CD8();
      sub_1DD6ED1D4(&type metadata for MessagePayload.IntermediateSystemResponseRenderedCodingKeys, &v673);
      type metadata accessor for IntermediateSystemResponseRendered(0);
      sub_1DD825E60();
      sub_1DD6E1E84(v398);
      v399 = sub_1DD6F4500();
      sub_1DD6EDFA8(v399, v400, v401, v402, v403);
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v593 = sub_1DD6DF174();
      v594(v593);
      v595 = sub_1DD6F4510();
      v596(v595);
      sub_1DD6F0564();
      goto LABEL_56;
    case 27:
      v673.n128_u8[0] = 27;
      sub_1DD801C30();
      sub_1DD6ED1D4(&type metadata for MessagePayload.ContextPrewarmRequestCodingKeys, &v673);
      sub_1DD802B9C();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v420 = sub_1DD6DF174();
      v421(v420);
      v422 = sub_1DD824B24();
      v423(v422);
      sub_1DD6E5CE4(v673.n128_i64[0]);
      goto LABEL_55;
    case 28:
      v673.n128_u8[0] = 28;
      sub_1DD801B88();
      sub_1DD6ED1D4(&type metadata for MessagePayload.ContextPrewarmCompletedCodingKeys, &v673);
      sub_1DD802B48();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v581 = sub_1DD6DF174();
      v582(v581);
      v583 = sub_1DD824B24();
      v584(v583);
      sub_1DD6E5CE4(v673.n128_i64[0]);
      goto LABEL_55;
    case 29:
      v673.n128_u8[0] = 29;
      sub_1DD801AE0();
      sub_1DD6ED1D4(&type metadata for MessagePayload.SafetyModeReleaseCodingKeys, &v673);
      sub_1DD802AF4();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v585 = sub_1DD6DF174();
      v586(v585);
      v587 = sub_1DD824B24();
      v588(v587);
      sub_1DD6E67F8();
      goto LABEL_55;
    case 30:
      v673.n128_u8[0] = 30;
      sub_1DD801A38();
      sub_1DD6ED1D4(&type metadata for MessagePayload.SafetyModeExceptionCodingKeys, &v673);
      sub_1DD802AA0();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v551 = sub_1DD6DF174();
      v552(v551);
      v553 = sub_1DD824B24();
      v554(v553);
      *v616 = v673;
      sub_1DD6E67F8();
      goto LABEL_55;
    case 31:
      v673.n128_u8[0] = 31;
      sub_1DD8019E4();
      sub_1DD6ED1D4(&type metadata for MessagePayload.ExternalAgentTextQueryCodingKeys, &v673);
      type metadata accessor for MessagePayload.ExternalAgentTextQuery(0);
      sub_1DD825F80();
      sub_1DD6E1E84(v336);
      v337 = sub_1DD6F4500();
      sub_1DD6EDFA8(v337, v338, v339, v340, v341);
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v502 = sub_1DD6DF174();
      v503(v502);
      v504 = sub_1DD6F4510();
      v505(v504);
      sub_1DD6F0564();
      goto LABEL_56;
    case 32:
      v673.n128_u8[0] = 32;
      sub_1DD801990();
      sub_1DD6ED1D4(&type metadata for MessagePayload.ExternalAgentSpeechQueryCodingKeys, &v673);
      type metadata accessor for MessagePayload.ExternalAgentSpeechQuery(0);
      sub_1DD6FF5DC();
      sub_1DD6E1E84(v366);
      v367 = sub_1DD6F4500();
      sub_1DD6EDFA8(v367, v368, v369, v370, v371);
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v555 = sub_1DD6DF174();
      v556(v555);
      v557 = sub_1DD6F4510();
      v558(v557);
      sub_1DD6F0564();
      goto LABEL_56;
    case 33:
      v673.n128_u8[0] = 33;
      sub_1DD6FDB5C();
      sub_1DD6ED1D4(&type metadata for MessagePayload.ExternalAgentRequestCodingKeys, &v673);
      type metadata accessor for MessagePayload.ExternalAgentRequest(0);
      sub_1DD826010();
      sub_1DD6E1E84(v305);
      v306 = sub_1DD6F4500();
      sub_1DD6EDFA8(v306, v307, v308, v309, v310);
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v442 = sub_1DD6DF174();
      v443(v442);
      v444 = sub_1DD6F4510();
      v445(v444);
      sub_1DD6F0564();
      goto LABEL_56;
    case 34:
      v673.n128_u8[0] = 34;
      sub_1DD703164();
      sub_1DD6ED1D4(&type metadata for MessagePayload.ExternalAgentOutcomeCodingKeys, &v673);
      type metadata accessor for MessagePayload.ExternalAgentOutcome(0);
      sub_1DD826058();
      sub_1DD6E1E84(v287);
      v288 = sub_1DD6F4500();
      sub_1DD6EDFA8(v288, v289, v290, v291, v292);
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v424 = sub_1DD6DF174();
      v425(v424);
      v426 = sub_1DD6F4510();
      v427(v426);
      sub_1DD6F0564();
      goto LABEL_56;
    case 35:
      v673.n128_u8[0] = 35;
      sub_1DD80193C();
      sub_1DD6ED1D4(&type metadata for MessagePayload.ExternalAgentQueryRewriteMetadataCodingKeys, &v673);
      sub_1DD8007B4();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v412 = sub_1DD6DF174();
      v413(v412);
      v414 = sub_1DD824B24();
      v415(v414);
      sub_1DD6FF5C0(v673.n128_i64[0]);
      goto LABEL_55;
    case 36:
      v673.n128_u8[0] = 36;
      sub_1DD8018E8();
      sub_1DD6ED1D4(&type metadata for MessagePayload.ExternalAgentRequestRewriteMetadataCodingKeys, &v673);
      sub_1DD700CAC();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v416 = sub_1DD6DF174();
      v417(v416);
      v418 = sub_1DD824B24();
      v419(v418);
      sub_1DD6FF5C0(v673.n128_i64[0]);
      goto LABEL_55;
    case 37:
      v673.n128_u8[0] = 37;
      sub_1DD801894();
      sub_1DD6ED1D4(&type metadata for MessagePayload.ClientUndoRedoRequestCodingKeys, &v673);
      type metadata accessor for MessagePayload.ClientUndoRedoRequest(0);
      sub_1DD826070();
      sub_1DD6E1E84(v281);
      v282 = sub_1DD6F4500();
      sub_1DD6EDFA8(v282, v283, v284, v285, v286);
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v408 = sub_1DD6DF174();
      v409(v408);
      v410 = sub_1DD6F4510();
      v411(v410);
      sub_1DD6F0564();
      goto LABEL_56;
    case 38:
      v673.n128_u8[0] = 38;
      sub_1DD801840();
      sub_1DD6ED1D4(&type metadata for MessagePayload.ActionSummaryUpdateCodingKeys, &v673);
      type metadata accessor for MessagePayload.ActionSummaryUpdate(0);
      sub_1DD825E78();
      sub_1DD6E1E84(v390);
      v391 = sub_1DD6F4500();
      sub_1DD6EDFA8(v391, v392, v393, v394, v395);
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v589 = sub_1DD6DF174();
      v590(v589);
      v591 = sub_1DD6F4510();
      v592(v591);
      sub_1DD6F0564();
      goto LABEL_56;
    case 39:
      v673.n128_u8[0] = 39;
      sub_1DD8017EC();
      sub_1DD6ED1D4(&type metadata for MessagePayload.ClientDebuggerEventCodingKeys, &v673);
      v378 = type metadata accessor for SessionClientDebuggerEvent(0);
      sub_1DD825EA8();
      v380 = sub_1DD6E1E84(v379);
      sub_1DD6EDFA8(v378, v381, v382, v383, v380);
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v563 = sub_1DD6DF174();
      v564(v563);
      v565 = sub_1DD6F4510();
      v566(v565);
      sub_1DD6F0564();
      goto LABEL_56;
    case 40:
      v673.n128_u8[0] = 40;
      sub_1DD801798();
      sub_1DD826EA0();
      sub_1DD824848();
      sub_1DD875800();
      type metadata accessor for SessionServerDebuggerEvent(0);
      sub_1DD7014A0();
      sub_1DD6E1E84(v311);
      sub_1DD8256D4();
      sub_1DD824AC4();
      sub_1DD8758D0();
      swift_unknownObjectRelease();
      v454 = sub_1DD6FFA00();
      v455(v454, v268);
      v456 = sub_1DD6F4510();
      v457(v456);
      goto LABEL_56;
    case 41:
      v673.n128_u8[0] = 41;
      sub_1DD8016F0();
      sub_1DD6F9BEC();
      sub_1DD6F09C4();
      sub_1DD875800();
      sub_1DD802A4C();
      sub_1DD82499C();
      sub_1DD8758D0();
      v397 = v667 + 8;
      swift_unknownObjectRelease();
      v510 = sub_1DD6E5DB0();
      v511(v510);
      v512 = sub_1DD825B84();
      v513(v512);
      sub_1DD826888(v618, v673, v674);
      v514 = v676;
      *(v397 + 32) = v675;
      *(v397 + 48) = v514;
      sub_1DD6E67F8();
      goto LABEL_55;
    case 42:
      v673.n128_u8[0] = 42;
      sub_1DD801648();
      sub_1DD6ED1D4(&type metadata for MessagePayload.PlannerPromptDataCodingKeys, &v673);
      sub_1DD8029F8();
      sub_1DD82499C();
      sub_1DD8758D0();
      swift_unknownObjectRelease();
      v573 = sub_1DD6DF174();
      v574(v573);
      v575 = sub_1DD824B24();
      v576(v575);
      *v269 = v673;
      goto LABEL_56;
    case 43:
      v673.n128_u8[0] = 43;
      sub_1DD8015A0();
      sub_1DD6ED1D4(&type metadata for MessagePayload.ActionResolutionUpdateCodingKeys, &v673);
      sub_1DD8029A4();
      sub_1DD82499C();
      sub_1DD8758D0();
      sub_1DD824BBC();
      swift_unknownObjectRelease();
      v404 = sub_1DD6DF174();
      v405(v404);
      v406 = sub_1DD824B24();
      v407(v406);
      sub_1DD6FF5C0(v673.n128_i64[0]);
LABEL_55:
      swift_storeEnumTagMultiPayload();
      sub_1DD6E27BC();
      goto LABEL_57;
    case 44:
      v673.n128_u8[0] = 44;
      sub_1DD80154C();
      sub_1DD6ED1D4(&type metadata for MessagePayload.ActionExecutedCodingKeys, &v673);
      v293 = type metadata accessor for ActionExecutionOutcome(0);
      sub_1DD826040();
      sub_1DD6E1E84(v294);
      sub_1DD8256D4();
      sub_1DD6EDFA8(v293, v295, v296, v297, v298);
      swift_unknownObjectRelease();
      v434 = sub_1DD6DF174();
      v435(v434);
      v436 = sub_1DD6F4510();
      v437(v436);
      goto LABEL_56;
    default:
      v673.n128_u8[0] = 0;
      sub_1DD802950();
      sub_1DD6F9BEC();
      v270 = v670;
      sub_1DD6F09C4();
      sub_1DD875800();
      type metadata accessor for MessagePayload.UserTurnStarted(0);
      sub_1DD826088();
      sub_1DD6E1E84(v396);
      sub_1DD6F4500();
      sub_1DD8257EC();
      sub_1DD8758D0();
      sub_1DD700C48();
      swift_unknownObjectRelease();
      v498 = sub_1DD824880();
      v499(v498);
      v500 = sub_1DD824A04();
      v501(v500, v270);
      sub_1DD6F0564();
LABEL_56:
      swift_storeEnumTagMultiPayload();
      sub_1DD6E27BC();
LABEL_57:
      sub_1DD6E59B8();
      v597 = v671;
      sub_1DD6E27BC();
      sub_1DD82731C();
      sub_1DD6E59B8();
      v280 = v597;
      break;
  }

LABEL_10:
  sub_1DD6E1EC8(v280);
  sub_1DD6F9B18();
  sub_1DD6E0C78();
}