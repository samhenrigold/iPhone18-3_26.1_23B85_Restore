void sub_1C98F7170(uint64_t a1@<X8>)
{
  v16 = a1;
  v17 = sub_1C97A2CEC(&qword_1EC3CC240, &qword_1C9AB2600);
  v15 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v14 = &v14 - v2;
  v3 = MEMORY[0x1E69E7CC0];
  v18 = xmmword_1C9A9EDD0;
  while (1)
  {
    v4 = sub_1C993B58C();
    if (v1)
    {

      return;
    }

    v6 = v5;
    if (v5 == -1)
    {
      v19 = v3;
      sub_1C97A2CEC(&qword_1EC3CC248, &qword_1C9AB2608);
      sub_1C97AE67C(&unk_1EC3CC250, &qword_1EC3CC248, &qword_1C9AB2608, MEMORY[0x1E69E6328]);
      v12 = v14;
      sub_1C9A92658();

      sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
      v13 = v17;
      sub_1C9A91CE8();
      (*(v15 + 8))(v12, v13);
      return;
    }

    v7 = v4;
    sub_1C97A2CEC(&unk_1EC3C7820, &unk_1C9AB2610);
    inited = swift_initStackObject();
    *(inited + 16) = v18;
    *(inited + 32) = v7;
    *(inited + 40) = v6;
    v9 = *(v3 + 16);
    if (!swift_isUniquelyReferenced_nonNull_native() || (v10 = *(v3 + 24) >> 1, v10 <= v9))
    {
      sub_1C97E68D8();
      v3 = v11;
      v10 = *(v11 + 24) >> 1;
    }

    if (v10 <= *(v3 + 16))
    {
      break;
    }

    sub_1C97A2CEC(&unk_1EC3CC260, &qword_1C9AA0010);
    swift_arrayInitWithCopy();

    ++*(v3 + 16);
  }

  __break(1u);
}

uint64_t sub_1C98F7414@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[5];
  v6 = sub_1C97A5A8C(a1, v4);
  v10[3] = v4;
  v10[4] = v5;
  v7 = sub_1C981CDF0(v10);
  (*(*(v4 - 8) + 16))(v7, v6, v4);
  v8 = sub_1C9978010(v10);
  result = sub_1C97A592C(v10);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

_BYTE *sub_1C98F74C8@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 0x6B63696C63;
  v3 = 0xE500000000000000;
  switch(*result)
  {
    case 1:
      v2 = 0x6B63756C63;
      break;
    case 2:
      v3 = 0xE200000000000000;
      v2 = 25957;
      break;
    case 3:
      v3 = 0xE200000000000000;
      v2 = 26725;
      break;
    case 4:
      v3 = 0xE200000000000000;
      v2 = 27499;
      break;
    case 5:
      v3 = 0xE200000000000000;
      v2 = 24940;
      break;
    case 6:
      v3 = 0xE300000000000000;
      v2 = 6845805;
      break;
    case 7:
      v3 = 0xE200000000000000;
      v2 = 28527;
      break;
    case 8:
      v3 = 0xE300000000000000;
      v2 = 7368560;
      break;
    case 9:
      v3 = 0xE200000000000000;
      v2 = 28784;
      break;
    case 0xA:
      v3 = 0xE200000000000000;
      v2 = 26739;
      break;
    case 0xB:
      v3 = 0xE200000000000000;
      v2 = 29555;
      break;
    case 0xC:
      v3 = 0xE200000000000000;
      v2 = 29812;
      break;
    case 0xD:
      v3 = 0xE200000000000000;
      v2 = 26741;
      break;
    default:
      break;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

uint64_t sub_1C98F75A0@<X0>(uint64_t *a1@<X8>)
{
  result = os_transaction_create();
  if (result)
  {
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C98F75E8@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  sub_1C986F098();
  result = swift_allocError();
  *a2 = result;
  *v5 = a1;
  return result;
}

void AccessibilitySoundActions.Session.soundActions.getter()
{
  sub_1C97BE460();
  v34 = v1;
  v2 = type metadata accessor for AccessibilitySoundActions.Session(0);
  v3 = v2 - 8;
  v31 = *(v2 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v33 = sub_1C97A2CEC(&qword_1EC3CC188, &qword_1C9AB20D0);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v32 = sub_1C97A2CEC(&qword_1EC3CC190, &qword_1C9AB20D8);
  sub_1C97AE9C8();
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v30 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v35 = *(v0 + *(v3 + 28));
  v14 = sub_1C988EB2C();
  v16 = sub_1C97A2CEC(v14, v15);
  sub_1C97AE9EC();
  sub_1C98FA360();
  v21 = sub_1C97AE67C(v17, v18, v19, v20);
  MEMORY[0x1CCA8FD00](v16, v21);
  sub_1C98F86CC(v0, &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v23 = swift_allocObject();
  sub_1C98F8668(&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  sub_1C97AE67C(&qword_1EC3CC198, &qword_1EC3CC188, &qword_1C9AB20D0, MEMORY[0x1E695BFD8]);
  sub_1C9A93738();
  v24 = *(v7 + 32);
  v25 = v30;
  v26 = v32;
  v24(v30, v13, v32);
  v27 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v28 = swift_allocObject();
  v24((v28 + v27), v25, v26);
  v29 = v34;
  *v34 = sub_1C98F92E0;
  v29[1] = v28;
  sub_1C97BE478();
}

uint64_t sub_1C98F7930(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v5 = sub_1C9A91AA8();
  v3[4] = v5;
  v3[5] = *(v5 - 8);
  v3[6] = swift_task_alloc();
  type metadata accessor for AccessibilitySoundActions.Session(0);
  v6 = swift_task_alloc();
  v7 = *a2;
  v8 = a2[1];
  v3[7] = v6;
  v3[8] = v7;
  v3[9] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C98F7A28, 0, 0);
}

uint64_t sub_1C98F7A28()
{
  v25 = v0;
  if (qword_1EC3C57A8 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[3];
  v3 = sub_1C9A91AD8();
  sub_1C97BFF6C(v3, qword_1EC3D3120);
  sub_1C98F86CC(v2, v1);

  sub_1C9A91A98();
  v4 = sub_1C9A91AB8();
  v5 = sub_1C9A93088();

  if (sub_1C9A93238())
  {
    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[6];
    v9 = v0[5];
    v23 = v0[4];
    v10 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_1C9849140(v7, v6, &v24);
    *(v10 + 12) = 2080;
    sub_1C9A91748();
    sub_1C97AE3DC();
    v11 = sub_1C9A93A98();
    v13 = v12;
    sub_1C98FA300();
    v14 = sub_1C9849140(v11, v13, &v24);

    *(v10 + 14) = v14;
    v15 = sub_1C9A91A88();
    _os_signpost_emit_with_name_impl(&dword_1C9788000, v4, v5, v15, "ClientReadResult_AccessibilitySoundActions", "{identifier:%s,workloadID:%s}", v10, 0x16u);
    swift_arrayDestroy();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();

    (*(v9 + 8))(v8, v23);
  }

  else
  {
    v16 = v0[6];
    v17 = v0[4];
    v18 = v0[5];

    (*(v18 + 8))(v16, v17);
    sub_1C98FA300();
  }

  v19 = v0[9];
  v20 = v0[2];
  *v20 = v0[8];
  v20[1] = v19;

  sub_1C97DA91C();

  return v21();
}

uint64_t sub_1C98F7CAC(uint64_t a1)
{
  sub_1C99DC5A4();
  v3 = *(v1 + *(type metadata accessor for AccessibilitySoundActions.Session(0) + 20));
  v10 = sub_1C97A2CEC(&qword_1EC3C9B18, &qword_1C9AB20E0);
  v11 = sub_1C98F9E64();
  v9[0] = v3;

  sub_1C99DC674(v9, v4);
  if (!v2)
  {
    sub_1C97A592C(v9);
    v5 = sub_1C9A91748();
    v10 = v5;
    v11 = &off_1F494ACE0;
    v6 = sub_1C981CDF0(v9);
    v7 = (*(*(v5 - 8) + 16))(v6, v1, v5);
    sub_1C99DC674(v9, v7);
  }

  return sub_1C97A592C(v9);
}

uint64_t sub_1C98F7DB8()
{
  sub_1C97AA884();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1C9A91748();
  v0[4] = v3;
  v0[5] = *(v3 - 8);
  v0[6] = swift_task_alloc();

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1C98F7EB0;

  return sub_1C988FC80();
}

uint64_t sub_1C98F7EB0(uint64_t a1)
{
  sub_1C97AA890();
  v5 = v4;
  sub_1C97AA84C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[8] = a1;
  v5[9] = v1;

  if (v1)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = sub_1C97DA8BC();
    v5[10] = v12;
    *v12 = v7;
    v12[1] = sub_1C98F8028;

    return v14();
  }
}

uint64_t sub_1C98F8028()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 88) = v4;
  *(v2 + 96) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C98F812C()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C98F8194()
{
  sub_1C97AA95C();
  v1 = v0[11];
  v2 = v0[2];
  *(v2 + *(type metadata accessor for AccessibilitySoundActions.Session(0) + 20)) = v1;
  sub_1C97DA8BC();
  sub_1C97DA928();
  v0[13] = v3;
  *v3 = v4;
  v3[1] = sub_1C98F8244;
  v5 = v0[6];

  return v7(v5);
}

uint64_t sub_1C98F8244()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 112) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C98F8340()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C98F83B0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];

  (*(v2 + 32))(v4, v1, v3);

  sub_1C97DA91C();

  return v5();
}

uint64_t sub_1C98F8458()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C98F84EC()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  sub_1C98FA238(v1);

  return sub_1C98F7DB8();
}

unint64_t sub_1C98F8574()
{
  result = qword_1EC3CC168;
  if (!qword_1EC3CC168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC168);
  }

  return result;
}

unint64_t sub_1C98F85C8()
{
  result = qword_1EC3CC180;
  if (!qword_1EC3CC180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC180);
  }

  return result;
}

uint64_t type metadata accessor for AccessibilitySoundActions.Session(uint64_t a1)
{
  result = qword_1EC3CC1B8;
  if (!qword_1EC3CC1B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C98F8668(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilitySoundActions.Session(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C98F86CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilitySoundActions.Session(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C98F8730()
{
  sub_1C97AA95C();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for AccessibilitySoundActions.Session(0);
  sub_1C97DACE4(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  v9 = sub_1C97AA858(v8);
  *v9 = v10;
  v9[1] = sub_1C97D9C3C;

  return sub_1C98F7930(v4, v2, v0 + v7);
}

uint64_t sub_1C98F8804(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = sub_1C97A2CEC(&qword_1EC3CC2C8, &qword_1C9AB2648);
  v2[7] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C98F8890, 0, 0);
}

uint64_t sub_1C98F8890()
{
  sub_1C97AA884();
  sub_1C98FA2B8();
  sub_1C97AE67C(&qword_1EC3CC2D8, &qword_1EC3CC2C8, &qword_1C9AB2648, MEMORY[0x1E69E8690]);
  swift_task_alloc();
  sub_1C97DA928();
  *(v0 + 64) = v1;
  *v1 = v2;
  v3 = sub_1C98FA220(v1);

  return MEMORY[0x1EEE6D8C8](v3);
}

uint64_t sub_1C98F8950()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97AA84C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    swift_endAccess();
    sub_1C97DA91C();

    return v10();
  }
}

uint64_t sub_1C98F8A70(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = sub_1C97A2CEC(&qword_1EC3CC328, &qword_1C9AB26A8);
  v2[7] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C98F8AFC, 0, 0);
}

uint64_t sub_1C98F8AFC()
{
  sub_1C97AA884();
  sub_1C98FA2B8();
  sub_1C98FA24C(&qword_1EC3CC338, &qword_1EC3CC328, &qword_1C9AB26A8);
  swift_task_alloc();
  sub_1C97DA928();
  *(v0 + 64) = v1;
  *v1 = v2;
  v3 = sub_1C98FA220(v1);

  return MEMORY[0x1EEE6D8C8](v3);
}

uint64_t sub_1C98F8BA8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = sub_1C97A2CEC(&qword_1EC3CC310, &qword_1C9AB2690);
  v2[7] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C98F8C34, 0, 0);
}

uint64_t sub_1C98F8C34()
{
  sub_1C97AA884();
  sub_1C98FA2B8();
  sub_1C98FA24C(&qword_1EC3CC320, &qword_1EC3CC310, &qword_1C9AB2690);
  swift_task_alloc();
  sub_1C97DA928();
  *(v0 + 64) = v1;
  *v1 = v2;
  v3 = sub_1C98FA220(v1);

  return MEMORY[0x1EEE6D8C8](v3);
}

uint64_t sub_1C98F8CE0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97AA84C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    swift_endAccess();
    sub_1C97DA91C();

    return v10();
  }
}

uint64_t sub_1C98F8E00()
{
  sub_1C97AA884();
  swift_endAccess();
  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C98F8E5C(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = sub_1C97A2CEC(&qword_1EC3CC2F0, &qword_1C9AB2670);
  v2[7] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C98F8EE8, 0, 0);
}

uint64_t sub_1C98F8EE8()
{
  sub_1C97AA884();
  sub_1C98FA2B8();
  sub_1C98FA24C(&qword_1EC3CC300, &qword_1EC3CC2F0, &qword_1C9AB2670);
  swift_task_alloc();
  sub_1C97DA928();
  *(v0 + 64) = v1;
  *v1 = v2;
  v3 = sub_1C98FA220(v1);

  return MEMORY[0x1EEE6D8C8](v3);
}

void sub_1C98F8F94()
{
  sub_1C97BE460();
  v1 = v0;
  v2 = sub_1C988EB2C();
  sub_1C97A2CEC(v2, v3);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97FB2C8();
  sub_1C97A2CEC(&qword_1EC3CC2C8, &qword_1C9AB2648);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C98FA280();
  v7(v6);
  sub_1C98FA270();
  v12 = sub_1C97AE67C(v8, v9, v10, v11);
  sub_1C98FA36C(v12);
  v13 = swift_allocBox();
  v15 = sub_1C98FA2A0(v13, v14);
  v16(v15);
  *v1 = &unk_1C9AB2658;
  v1[1] = &qword_1EC3CC2C0;
  sub_1C97BE478();
}

uint64_t sub_1C98F90FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CC190, &qword_1C9AB20D8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = sub_1C97A2CEC(&qword_1EC3CC328, &qword_1C9AB26A8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  (*(v5 + 16))(v7, a1, v4);
  sub_1C97AE67C(&qword_1EC3CC330, &qword_1EC3CC190, &qword_1C9AB20D8, MEMORY[0x1E69E8878]);
  sub_1C9A92A68();
  v12 = swift_allocBox();
  result = (*(v9 + 32))(v13, v11, v8);
  *a2 = &unk_1C9AB26B8;
  a2[1] = v12;
  return result;
}

uint64_t sub_1C98F92E0@<X0>(void *a1@<X8>)
{
  v3 = sub_1C97A2CEC(&qword_1EC3CC190, &qword_1C9AB20D8);
  sub_1C97DACE4(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_1C98F90FC(v5, a1);
}

unint64_t sub_1C98F935C()
{
  result = qword_1EC3CC1A0;
  if (!qword_1EC3CC1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC1A0);
  }

  return result;
}

unint64_t sub_1C98F93B4()
{
  result = qword_1EC3CC1A8;
  if (!qword_1EC3CC1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC1A8);
  }

  return result;
}

unint64_t sub_1C98F9408(uint64_t a1)
{
  result = sub_1C98DDF6C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C98F9430(uint64_t a1)
{
  result = sub_1C98DDF18();
  *(a1 + 16) = result;
  return result;
}

void sub_1C98F94B0(uint64_t a1)
{
  sub_1C9A91748();
  if (v1 <= 0x3F)
  {
    sub_1C98F9534(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C98F9534(uint64_t a1)
{
  if (!qword_1EC3CC1C8)
  {
    sub_1C97AA4F0(&unk_1EC3CA040, &qword_1C9A9C750);
    v1 = sub_1C9A91DA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC3CC1C8);
    }
  }
}

_BYTE *sub_1C98F95B8(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C98F9668()
{
  result = qword_1EC3CC1D0;
  if (!qword_1EC3CC1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC1D0);
  }

  return result;
}

uint64_t sub_1C98F96BC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C98F9734(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C98F9774()
{
  result = qword_1EC3CC1E0;
  if (!qword_1EC3CC1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC1E0);
  }

  return result;
}

unint64_t sub_1C98F97CC()
{
  result = qword_1EC3CC1E8;
  if (!qword_1EC3CC1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC1E8);
  }

  return result;
}

unint64_t sub_1C98F9824()
{
  result = qword_1EC3CC1F0;
  if (!qword_1EC3CC1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC1F0);
  }

  return result;
}

unint64_t sub_1C98F987C()
{
  result = qword_1EC3CC1F8;
  if (!qword_1EC3CC1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC1F8);
  }

  return result;
}

void sub_1C98F98D0()
{
  sub_1C97BE460();
  v1 = v0;
  v2 = sub_1C988EB2C();
  sub_1C97A2CEC(v2, v3);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97FB2C8();
  sub_1C97A2CEC(&qword_1EC3CC310, &qword_1C9AB2690);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C98FA280();
  v7(v6);
  sub_1C98FA270();
  v12 = sub_1C97AE67C(v8, v9, v10, v11);
  sub_1C98FA36C(v12);
  v13 = swift_allocBox();
  v15 = sub_1C98FA2A0(v13, v14);
  v16(v15);
  *v1 = &unk_1C9AB26A0;
  v1[1] = &qword_1EC3CC308;
  sub_1C97BE478();
}

void sub_1C98F9A38()
{
  sub_1C97BE460();
  v1 = v0;
  v2 = sub_1C988EB2C();
  sub_1C97A2CEC(v2, v3);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97FB2C8();
  sub_1C97A2CEC(&qword_1EC3CC2F0, &qword_1C9AB2670);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C98FA280();
  v7(v6);
  sub_1C98FA270();
  v12 = sub_1C97AE67C(v8, v9, v10, v11);
  sub_1C98FA36C(v12);
  v13 = swift_allocBox();
  v15 = sub_1C98FA2A0(v13, v14);
  v16(v15);
  *v1 = &unk_1C9AB2680;
  v1[1] = &qword_1EC3CC2E8;
  sub_1C97BE478();
}

uint64_t sub_1C98F9BA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_1C98F9C04(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1C98F9C38@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CB640, &qword_1C9AAF998);
  sub_1C97DACE4(v2);
  sub_1C98FA3C8();
  result = sub_1C98C030C();
  *a1 = result;
  return result;
}

uint64_t sub_1C98F9CBC(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1C97A2CEC(a1, a2);
  sub_1C97AE9C8();
  v5 = v4;
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);

  (*(v5 + 8))(v2 + v6, v3);

  return swift_deallocObject();
}

uint64_t sub_1C98F9D70@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C97A2CEC(&qword_1EC3C9AE8, &unk_1C9AA7DC0);
  sub_1C97DACE4(v2);
  sub_1C98FA3C8();

  return sub_1C986E7C8(a1);
}

uint64_t sub_1C98F9DE0()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98FA238(v1);

  return sub_1C98F8804(v3, v4);
}

unint64_t sub_1C98F9E64()
{
  result = qword_1EC3CC2E0;
  if (!qword_1EC3CC2E0)
  {
    sub_1C97AA4F0(&qword_1EC3C9B18, &qword_1C9AB20E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC2E0);
  }

  return result;
}

uint64_t sub_1C98F9EE8()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98FA238(v1);

  return sub_1C98F8E5C(v3, v4);
}

uint64_t sub_1C98F9F6C()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98FA238(v1);

  return sub_1C98F8BA8(v3, v4);
}

uint64_t sub_1C98F9FF0()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98FA238(v1);

  return sub_1C98F8A70(v3, v4);
}

uint64_t sub_1C98FA074(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C97DA940();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for AccessibilitySoundActions.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C98FA1AC()
{
  result = qword_1EC3CC340;
  if (!qword_1EC3CC340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC340);
  }

  return result;
}

uint64_t sub_1C98FA24C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E69E8868];

  return sub_1C97AE67C(a1, a2, a3, v4);
}

uint64_t sub_1C98FA2B8()
{

  return swift_beginAccess();
}

uint64_t sub_1C98FA2D8()
{

  return sub_1C98FA074(v0, type metadata accessor for RemoteRequest);
}

uint64_t sub_1C98FA300()
{

  return sub_1C98FA074(v0, type metadata accessor for AccessibilitySoundActions.Session);
}

uint64_t sub_1C98FA328(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E695BDD8];

  return sub_1C97AE67C(a1, a2, a3, v4);
}

uint64_t sub_1C98FA36C(uint64_t a1)
{

  return sub_1C9A92A68();
}

uint64_t sub_1C98FA38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1C98FA42C@<X0>(void *__src@<X0>, uint64_t *a2@<X8>)
{
  memcpy(__dst, __src, 0x41uLL);
  if (byte_1EC3D3200 == 1)
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C98134D8();
      swift_once();
    }

    v4 = sub_1C9A91B58();
    sub_1C97BFF6C(v4, qword_1EC3D3108);
    v5 = sub_1C9A91B38();
    v6 = sub_1C9A92FC8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1C9788000, v5, v6, "Instantiating SNSystemAudioAnalyzer with In-Process Computation", v7, 2u);
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
    }

    memcpy(v18, __src, 0x41uLL);
    v8 = type metadata accessor for SNSystemAudioAnalyzerLocal(0);
    swift_allocObject();
    sub_1C97A6264(__dst, v17);
    result = sub_1C99462E0(1, v18);
    v10 = result;
    v11 = &off_1F4942160;
  }

  else
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C98134D8();
      swift_once();
    }

    v12 = sub_1C9A91B58();
    sub_1C97BFF6C(v12, qword_1EC3D3108);
    v13 = sub_1C9A91B38();
    v14 = sub_1C9A92FC8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1C9788000, v13, v14, "Instantiating SNSystemAudioAnalyzer in Daemon", v15, 2u);
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
    }

    v17[3] = &unk_1F492E330;
    v17[4] = &off_1F492E6A0;
    v8 = type metadata accessor for SNSystemAudioAnalyzerRemote(0);
    v16 = swift_allocObject();
    sub_1C97BDE74(v17, &unk_1F492E330);
    sub_1C97A6264(__dst, v18);
    v10 = sub_1C98FB8B0(__dst, v16);
    result = sub_1C97A592C(v17);
    v11 = &off_1F493F000;
  }

  a2[3] = v8;
  a2[4] = v11;
  *a2 = v10;
  return result;
}

id SNSystemAudioAnalyzer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNSystemAudioAnalyzer.init()()
{
  ObjectType = swift_getObjectType();
  v0 = MGGetProductType();
  sub_1C989B2F8(v0, v31);
  if (v31[6])
  {
    v1 = v31[0];

    sub_1C989ACF0(v1, v32);
    v2 = v35;
    v37 = v33;

    sub_1C97F9D3C(&v37, &qword_1EC3C7DB0, &unk_1C9AB2780);
    v36 = v34;
    sub_1C97F9D3C(&v36, &qword_1EC3C7DB8, &qword_1C9AA0740);

    v2(__dst, v3);

    v4 = __dst[0];
    v5 = __dst[1];
    v6 = __dst[2];
    v7 = __dst[3];
    v8 = __dst[4];
    v9 = __dst[5];
    v10 = __dst[6];
    v11 = BYTE1(__dst[6]);
    v12 = BYTE2(__dst[6]);
    v13 = BYTE3(__dst[6]);
    v14 = BYTE4(__dst[6]);
    v15 = BYTE5(__dst[6]);
    v16 = __dst[7];
    v17 = __dst[8];
  }

  else
  {
    if (qword_1EC3C5E08 != -1)
    {
      swift_once();
    }

    memcpy(__dst, &qword_1EC3D33B0, 0x41uLL);
    v24 = __dst[7];
    v17 = __dst[8];
    v22 = BYTE4(__dst[6]);
    v23 = BYTE5(__dst[6]);
    v21 = BYTE3(__dst[6]);
    v12 = BYTE2(__dst[6]);
    v11 = BYTE1(__dst[6]);
    v10 = __dst[6];
    v8 = __dst[4];
    v9 = __dst[5];
    v6 = __dst[2];
    v7 = __dst[3];
    v4 = __dst[0];
    v5 = __dst[1];
    sub_1C97A6264(__dst, __src);
    v13 = v21;
    v14 = v22;
    v15 = v23;
    v16 = v24;
  }

  v27 = v17;
  __src[0] = v4;
  __src[1] = v5;
  __src[2] = v6;
  __src[3] = v7;
  __src[4] = v8;
  __src[5] = v9;
  LOBYTE(__src[6]) = v10;
  BYTE1(__src[6]) = v11;
  BYTE2(__src[6]) = v12;
  BYTE3(__src[6]) = v13;
  BYTE4(__src[6]) = v14;
  BYTE5(__src[6]) = v15;
  __src[7] = v16;
  LOBYTE(__src[8]) = v17;
  sub_1C98FA42C(__src, v30);
  memcpy(__dst, __src, 0x41uLL);
  sub_1C97E8084(__dst);
  v18 = objc_allocWithZone(ObjectType);
  sub_1C97D9AF8(v30, v18 + OBJC_IVAR___SNSystemAudioAnalyzer_impl);
  v26.receiver = v18;
  v26.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v26, sel_init);
  sub_1C97A592C(v30);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v19;
}

char *sub_1C98FA960(char *a1)
{
  ObjectType = swift_getObjectType();
  memcpy(__dst, &a1[OBJC_IVAR___SNAudioConfiguration_impl], 0x41uLL);
  memcpy(__src, &a1[OBJC_IVAR___SNAudioConfiguration_impl], 0x41uLL);
  sub_1C97A6264(__dst, v10);
  sub_1C98FA42C(__src, v8);
  memcpy(v10, __src, 0x41uLL);
  sub_1C97E8084(v10);
  v3 = objc_allocWithZone(ObjectType);
  sub_1C97D9AF8(v8, v3 + OBJC_IVAR___SNSystemAudioAnalyzer_impl);
  v6.receiver = v3;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1C97A592C(v8);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_1C98FAA84(void *a1, void *a2)
{
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v5 = sub_1C9A91B58();
  sub_1C97BFF6C(v5, qword_1EC3D3108);
  v6 = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = sub_1C9A91B38();
  v8 = sub_1C9A92FC8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v7, v8))
  {
    sub_1C98FBA2C();
    v9 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v9 = 136315650;
    v10 = [v6 description];
    v11 = sub_1C9A924A8();
    v13 = v12;

    v14 = sub_1C9849140(v11, v13, &v29);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    v15 = [a1 description];
    sub_1C9A924A8();
    sub_1C98FBA20();

    v16 = sub_1C97AC04C();
    v19 = sub_1C9849140(v16, v17, v18);

    *(v9 + 14) = v19;
    *(v9 + 22) = 2080;
    v20 = [a2 description];
    sub_1C9A924A8();
    sub_1C98FBA20();

    v21 = sub_1C97AC04C();
    v24 = sub_1C9849140(v21, v22, v23);

    *(v9 + 24) = v24;
    _os_log_impl(&dword_1C9788000, v7, v8, "(SNSystemAudioAnalyzer:%s) addRequest:%s withObserver:%s", v9, 0x20u);
    swift_arrayDestroy();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  v25 = &v6[OBJC_IVAR___SNSystemAudioAnalyzer_impl];
  v26 = *&v6[OBJC_IVAR___SNSystemAudioAnalyzer_impl + 24];
  v27 = *&v6[OBJC_IVAR___SNSystemAudioAnalyzer_impl + 32];
  sub_1C97A5A8C(v25, v26);
  return (*(v27 + 8))(a1, a2, v26, v27);
}

uint64_t sub_1C98FADD0(void *a1, void *a2)
{
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v5 = sub_1C9A91B58();
  sub_1C97BFF6C(v5, qword_1EC3D3108);
  v6 = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = sub_1C9A91B38();
  v8 = sub_1C9A92FC8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v7, v8))
  {
    sub_1C98FBA2C();
    v9 = swift_slowAlloc();
    swift_slowAlloc();
    *v9 = 136315650;
    v10 = [v6 description];
    sub_1C9A924A8();
    sub_1C98FBA20();

    v11 = sub_1C97AC04C();
    v14 = sub_1C9849140(v11, v12, v13);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    v15 = [a1 description];
    sub_1C9A924A8();
    sub_1C98FBA20();

    v16 = sub_1C97AC04C();
    v19 = sub_1C9849140(v16, v17, v18);

    *(v9 + 14) = v19;
    *(v9 + 22) = 2080;
    v20 = [a2 description];
    sub_1C9A924A8();
    sub_1C98FBA20();

    v21 = sub_1C97AC04C();
    v24 = sub_1C9849140(v21, v22, v23);

    *(v9 + 24) = v24;
    _os_log_impl(&dword_1C9788000, v7, v8, "(SNSystemAudioAnalyzer:%s) addRequestInBackground:%s withObserver:%s", v9, 0x20u);
    swift_arrayDestroy();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  return sub_1C98FAA84(a1, a2);
}

uint64_t sub_1C98FB118(void *a1)
{
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v3 = sub_1C9A91B58();
  sub_1C97BFF6C(v3, qword_1EC3D3108);
  v4 = v1;
  swift_unknownObjectRetain();
  v5 = sub_1C9A91B38();
  v6 = sub_1C9A92FC8();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = [v4 description];
    v9 = sub_1C9A924A8();
    v11 = v10;

    v12 = sub_1C9849140(v9, v11, &v22);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    v13 = [a1 description];
    v14 = sub_1C9A924A8();
    v16 = v15;

    v17 = sub_1C9849140(v14, v16, &v22);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_1C9788000, v5, v6, "(SNSystemAudioAnalyzer:%s) removeRequest:%s", v7, 0x16u);
    swift_arrayDestroy();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  v18 = &v4[OBJC_IVAR___SNSystemAudioAnalyzer_impl];
  v19 = *&v4[OBJC_IVAR___SNSystemAudioAnalyzer_impl + 24];
  v20 = *(v18 + 4);
  sub_1C97A5A8C(v18, v19);
  return (*(v20 + 16))(a1, v19, v20);
}

uint64_t sub_1C98FB3A4()
{
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v1 = sub_1C9A91B58();
  sub_1C97BFF6C(v1, qword_1EC3D3108);
  v2 = v0;
  v3 = sub_1C9A91B38();
  v4 = sub_1C9A92FC8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    sub_1C98FBA2C();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    v7 = [v2 description];
    v8 = sub_1C9A924A8();
    v10 = v9;

    v11 = sub_1C9849140(v8, v10, &v16);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1C9788000, v3, v4, "(SNSystemAudioAnalyzer:%s) removeAllRequests", v5, 0xCu);
    sub_1C97A592C(v6);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  v12 = &v2[OBJC_IVAR___SNSystemAudioAnalyzer_impl];
  v13 = *&v2[OBJC_IVAR___SNSystemAudioAnalyzer_impl + 24];
  v14 = *(v12 + 4);
  sub_1C97A5A8C(v12, v13);
  return (*(v14 + 24))(v13, v14);
}

void sub_1C98FB5E0(const char *a1, ...)
{
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v3 = sub_1C9A91B58();
  sub_1C97BFF6C(v3, qword_1EC3D3108);
  v4 = v1;
  oslog = sub_1C9A91B38();
  v5 = sub_1C9A92FC8();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    sub_1C98FBA2C();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = [v4 description];
    v9 = sub_1C9A924A8();
    v11 = v10;

    v12 = sub_1C9849140(v9, v11, &v14);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_1C9788000, oslog, v5, a1, v6, 0xCu);
    sub_1C97A592C(v7);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }
}

id SNSystemAudioAnalyzer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C98FB8B0(const void *a1, uint64_t a2)
{
  v4 = sub_1C9A91748();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[3] = &unk_1F492E330;
  v12[4] = &off_1F492E6A0;
  sub_1C97D9AF8(v12, a2 + OBJC_IVAR____TtC13SoundAnalysis27SNSystemAudioAnalyzerRemote_environment);
  type metadata accessor for SNSystemAudioAnalyzerRemote.State(v8);
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v9 + 112) = MEMORY[0x1E69E7CC0];
  *(a2 + OBJC_IVAR____TtC13SoundAnalysis27SNSystemAudioAnalyzerRemote_state) = v9;
  sub_1C9A91738();
  sub_1C97A592C(v12);
  (*(v5 + 32))(a2 + OBJC_IVAR____TtC13SoundAnalysis27SNSystemAudioAnalyzerRemote_id, v7, v4);
  memcpy((a2 + OBJC_IVAR____TtC13SoundAnalysis27SNSystemAudioAnalyzerRemote_audioConfiguration), a1, 0x41uLL);
  return a2;
}

uint64_t sub_1C98FBA38(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_1C97A5A8C(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1C9A91578();
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = MEMORY[0x1CCA8F240]();
    }

    else
    {
      v6 = MEMORY[0x1CCA8F260]();
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1C97A592C(v8);
  return v6;
}

uint64_t sub_1C98FBAF4(uint64_t a1, uint64_t a2)
{
  v10 = sub_1C97A2CEC(&qword_1EC3CC358, &unk_1C9AB28B0);
  v11 = sub_1C97AE67C(&qword_1EC3CC360, &qword_1EC3CC358, &unk_1C9AB28B0, MEMORY[0x1E6969D60]);
  v9[0] = a1;
  v9[1] = a2;
  v4 = sub_1C97A5A8C(v9, v10);
  if (*v4)
  {
    v5 = v4[1] + *v4;
  }

  else
  {
    v5 = 0;
  }

  sub_1C9901C3C(*v4, v5, &v8);
  v6 = v8;
  sub_1C97A592C(v9);
  return v6;
}

uint64_t sub_1C98FBBC4(uint64_t a1, uint64_t a2)
{
  v7[3] = MEMORY[0x1E69E6888];
  v7[4] = MEMORY[0x1E696A050];
  v7[0] = a1;
  v7[1] = a2;
  v2 = sub_1C97A5A8C(v7, MEMORY[0x1E69E6888]);
  if (*v2)
  {
    v3 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  sub_1C9901C3C(*v2, v3, &v6);
  v4 = v6;
  sub_1C97A592C(v7);
  return v4;
}

uint64_t sub_1C98FBC4C(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  switch(a4 >> 62)
  {
    case 1uLL:
      v7 = a3 >> 32;
      if (a3 >> 32 < a3)
      {
        __break(1u);
      }

      v6 = a3;
      goto LABEL_7;
    case 2uLL:
      v6 = *(a3 + 16);
      v7 = *(a3 + 24);
LABEL_7:
      result = sub_1C9901FA0(v6, v7, a1);
      break;
    case 3uLL:
      result = sub_1C9886B10();
      break;
    default:
      v8 = a3;
      v9 = a4;
      v10 = BYTE2(a4);
      v11 = BYTE3(a4);
      v12 = BYTE4(a4);
      v13 = BYTE5(a4);
      result = a1(&v8, &v8 + BYTE6(a4));
      break;
  }

  return result;
}

uint64_t sub_1C98FBD94(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = result >> 32;
      if (result >> 32 < result)
      {
        __break(1u);
      }

      result = result;
      v4 = v3;
      goto LABEL_5;
    case 2uLL:
      v5 = *(result + 24);
      result = *(result + 16);
      v4 = v5;
LABEL_5:
      result = sub_1C9902048(result, v4);
      break;
    case 3uLL:
      if (!v2)
      {
        result = 0;
      }

      break;
    default:
      return result;
  }

  return result;
}

int64_t sub_1C98FBE48@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (result >> 32 < result)
      {
        __break(1u);
      }

      v15 = &v18;
      result = sub_1C99021D8(result, result >> 32, &v18);
      if (!v3)
      {
        v17 = v18;
        v5 = v19;
        v16 = vmovl_u8(__PAIR64__(v18.u32[1], v20)).u64[0];
        LOBYTE(v14) = v21;
        goto LABEL_10;
      }

      break;
    case 2uLL:
      v15 = &v22;
      result = sub_1C99021D8(*(result + 16), *(result + 24), &v22);
      if (!v3)
      {
        v17 = v22;
        v5 = v23;
        v16 = vmovl_u8(__PAIR64__(v22.u32[1], v24)).u64[0];
        LOBYTE(v14) = v25;
LABEL_10:
        memcpy(__dst, &v15[1] + 6, sizeof(__dst));
        v13 = v16;
        v11 = v17;
        goto LABEL_11;
      }

      break;
    case 3uLL:
      if (!v3)
      {
        v5 = 0;
        LOBYTE(v14) = 0;
        v11 = 0;
        v13 = 0;
        goto LABEL_11;
      }

      break;
    default:
      v6 = vdupq_n_s64(result);
      v7 = vshlq_u64(v6, xmmword_1C9AB27E0);
      v8 = vmovn_s64(vshlq_u64(v6, xmmword_1C9AB27D0));
      v8.i8[1] = v8.i8[4];
      v9 = vzip1_s16(result, v8);
      *v6.i8 = vmovn_s64(vshlq_u64(v6, xmmword_1C9AB27F0));
      v10 = vmovn_s64(v7);
      v10.i8[1] = v10.i8[4];
      v10.i8[2] = v6.i8[0];
      v10.i8[3] = v6.i8[4];
      v11 = vzip1_s32(v9, v10);
      v12 = vdupq_n_s64(a2);
      v13 = vmovn_s32(vuzp1q_s32(vshlq_u64(v12, xmmword_1C9AB2810), vshlq_u64(v12, xmmword_1C9AB2800)));
      v14 = a2 >> 40;
LABEL_11:
      *a3 = v11;
      *(a3 + 8) = v5;
      *(a3 + 9) = vuzp1_s8(v13, v13).u32[0];
      *(a3 + 13) = v14;
      result = memcpy((a3 + 14), __dst, 0x7AuLL);
      break;
  }

  return result;
}

uint64_t sub_1C98FC040(uint64_t result, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = result >> 32;
      if (result >> 32 < result)
      {
        __break(1u);
      }

      result = result;
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v7 = v5;
      goto LABEL_5;
    case 2uLL:
      v8 = *(result + 24);
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      result = *(result + 16);
      v7 = v8;
LABEL_5:
      result = a3(result, v7, v6);
      break;
    case 3uLL:
      if (!v3)
      {
        result = 0;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C98FC100(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v4 = v5;
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v3 = *(result + 24);
      result = *(result + 16);
      v4 = v3;
LABEL_9:
      result = sub_1C99022DC(result, v4);
      break;
    case 3uLL:
      result = 0;
      v2 = 0;
      goto LABEL_5;
    default:
      v2 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_1C9901F28(result, v2);
      break;
  }

  return result;
}

unint64_t sub_1C98FC18C(uint64_t a1)
{
  *&v34[138] = *MEMORY[0x1E69E9840];
  result = sub_1C98FE404(2036490594, 0xE400000000000000);
  if (!v1)
  {
    v3 = result;
    v4 = sub_1C9903120();
    v5 = sub_1C9903188();
    v6 = sub_1C9903154();
    v20 = 1024;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    v19[0] = 0x1000100000001;
    v19[1] = 1;
    v21 = v3;
    __asm { FMOV            V0.2S, #0.75 }

    v22 = _D0;
    v23 = v4;
    v24 = _D0;
    v25 = v5;
    v26 = _D0;
    v27 = v6;
    v28 = _D0;
    sub_1C98FBA38(v19, v34);
    sub_1C99031F8();
    sub_1C98FEB88(v12, v13, v14, v15, v16);
    v17 = sub_1C9871794();
    return sub_1C97A5978(v17, v18);
  }

  return result;
}

uint64_t sub_1C98FC2DC(uint64_t a1)
{
  *&v46[138] = *MEMORY[0x1E69E9840];
  if (qword_1EC3C5BA8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC3C5BB0;
  v3 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  *&v4 = COERCE_DOUBLE(sub_1C99B5A00());
  if (v1)
  {

    v6 = 0.75;
  }

  else
  {
    v7 = *&v4;
    v8 = v5;

    if (v8)
    {
      v6 = 0.75;
    }

    else
    {
      v6 = v7;
    }
  }

  v9 = [v2 dictionaryRepresentation];
  sub_1C9A92328();

  v10 = COERCE_DOUBLE(sub_1C99B5A00());
  LOBYTE(v9) = v11;

  if (v9)
  {
    v12 = 0.75;
  }

  else
  {
    v12 = v10;
  }

  v13 = [v2 dictionaryRepresentation];
  sub_1C9A92328();

  v14 = COERCE_DOUBLE(sub_1C99B5A00());
  v16 = v15;

  if (v16)
  {
    v17 = 0.5;
  }

  else
  {
    v17 = v14;
  }

  v18 = sub_1C9903110();
  v19 = sub_1C99032F4(v18);
  v21 = sub_1C98FE404(v19, v20);
  v22 = sub_1C9903110();
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v31 = 0x2000100000002;
  v32 = 1;
  v33 = 2;
  v34 = v21;
  v35 = v6;
  v36 = v17;
  v37 = sub_1C98FE404(v22 & 0xFFFFFFFFFFFFLL | 0x6F6C000000000000, 0xEA0000000000676ELL);
  v38 = v12;
  v39 = v17;
  sub_1C98FBA38(&v31, v46);
  sub_1C99031F8();
  sub_1C98FEB88(v23, v24, v25, v26, v27);
  v28 = sub_1C9871794();
  return sub_1C97A5978(v28, v29);
}

uint64_t sub_1C98FC6BC(uint64_t a1, int a2)
{
  v3 = v2;
  sub_1C9A91748();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AEAD8();
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64(&qword_1EC3C5520);
  }

  v5 = sub_1C9A91B58();
  sub_1C97BFF6C(v5, qword_1EC3D3108);
  v6 = sub_1C985511C();
  v7(v6);
  v8 = sub_1C9A91B38();
  v9 = sub_1C9A92FC8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22[1] = v11;
    *v10 = 136315394;
    sub_1C99030DC(&qword_1EC3C5480);
    sub_1C9A93A98();
    v12 = sub_1C99032BC();
    v13(v12);
    v14 = sub_1C988EB2C();
    v17 = sub_1C9849140(v14, v15, v16);

    *(v10 + 4) = v17;
    *(v10 + 12) = 1024;
    *(v10 + 14) = a2;
    _os_log_impl(&dword_1C9788000, v8, v9, "AOP use-case added: uuuid: %s; type: %u", v10, 0x12u);
    sub_1C97A592C(v11);
    sub_1C9840CEC();
    sub_1C9840CEC();
  }

  else
  {

    v18 = sub_1C99032BC();
    v19(v18);
  }

  os_unfair_lock_lock(*(*(v3 + 16) + 16));
  sub_1C9903328();
  swift_isUniquelyReferenced_nonNull_native();
  v22[0] = *(v3 + 40);
  sub_1C97EF084();
  *(v3 + 40) = v22[0];
  swift_endAccess();
  sub_1C9903308();
  return sub_1C98FCD90(v22);
}

uint64_t sub_1C98FC938(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C9A91748();
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  v10 = v9 - v8;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64(&qword_1EC3C5520);
  }

  v11 = sub_1C9A91B58();
  sub_1C97BFF6C(v11, qword_1EC3D3108);
  (*(v6 + 16))(v10, a1, v4);
  v12 = sub_1C9A91B38();
  v13 = sub_1C9A92FC8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25[0] = v15;
    *v14 = 136315138;
    sub_1C99030DC(&qword_1EC3C5480);
    v16 = sub_1C9A93A98();
    v18 = v17;
    v19 = sub_1C9871794();
    v20(v19);
    v21 = sub_1C9849140(v16, v18, v25);

    *(v14 + 4) = v21;
    _os_log_impl(&dword_1C9788000, v12, v13, "AOP use-case removed: uuuid: %s", v14, 0xCu);
    sub_1C97A592C(v15);
    sub_1C9840CEC();
    sub_1C9840CEC();
  }

  else
  {

    v22 = sub_1C9871794();
    v23(v22);
  }

  os_unfair_lock_lock(*(*(v2 + 16) + 16));
  sub_1C9903328();
  sub_1C97EE640();
  swift_endAccess();
  sub_1C9903308();
  return sub_1C98FCD90(v2 + 40);
}

uint64_t sub_1C98FCB84(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _SNAOPClassfication(0);
  result = sub_1C9A93708();
  if (v2)
  {
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    swift_dynamicCast();
    result = swift_willThrowTypedImpl();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C98FCC2C(uint64_t a1, uint64_t a2)
{
  result = sub_1C9A93708();
  if (v2)
  {
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    swift_dynamicCast();
    result = swift_willThrowTypedImpl();
    __break(1u);
  }

  return result;
}

void *sub_1C98FCCE0(uint64_t a1, uint64_t a2, double a3)
{
  type metadata accessor for SafeLock(a3);
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *v7 = 0;
  *(v6 + 16) = v7;
  v3[2] = v6;
  v3[3] = a1;
  v3[4] = a2;
  sub_1C9A91748();
  sub_1C9901E70(&qword_1EC3CD290, MEMORY[0x1E69695B8]);
  v3[5] = sub_1C9A92348();
  v3[6] = 0;
  return v3;
}

uint64_t sub_1C98FCD90(uint64_t a1)
{
  v4 = *v1;
  sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AEA4C();
  v6 = sub_1C9A92988();
  sub_1C97ACC50(v2, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  v7[5] = a1;
  v7[6] = v4;

  sub_1C9A1E148(0, 0, v2, &unk_1C9AB28C8, v7);
}

uint64_t sub_1C98FCEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1C9A936D8();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C98FCF60, 0, 0);
}

uint64_t sub_1C98FCF60()
{
  sub_1C9A93DE8();
  sub_1C9A93C28();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1C98FD03C;

  return sub_1C99A36F0();
}

uint64_t sub_1C98FD03C()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1C98FD21C;
  }

  else
  {
    v5 = sub_1C98FD1AC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C98FD1AC()
{
  sub_1C98FD280(*(v0 + 24));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C98FD21C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1C98FD280(uint64_t a1)
{
  v3 = *(*(v1 + 16) + 16);
  os_unfair_lock_lock(v3);
  sub_1C98FD2D4(a1);

  os_unfair_lock_unlock(v3);
}

void sub_1C98FD2D4(uint64_t a1)
{
  if (*(v1 + 48) == a1)
  {
    v3 = v1;
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64(&qword_1EC3C5520);
    }

    v4 = sub_1C9A91B58();
    sub_1C97BFF6C(v4, qword_1EC3D3108);
    v5 = sub_1C9A91B38();
    v6 = sub_1C9A92F88();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = a1;
      _os_log_impl(&dword_1C9788000, v5, v6, "Flushing snapshot of AOP state (snapshot ID: %ld)", v7, 0xCu);
      sub_1C9840CEC();
    }

    v8 = *(v3 + 24);
    swift_beginAccess();

    v10 = sub_1C98FD4E8(v9);
    v12 = v11;

    sub_1C9A41AE0(v10, v12 & 0x101);
    v8();
  }

  else
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64(&qword_1EC3C5520);
    }

    v13 = sub_1C9A91B58();
    sub_1C97BFF6C(v13, qword_1EC3D3108);
    oslog = sub_1C9A91B38();
    v14 = sub_1C9A92F88();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = a1;
      _os_log_impl(&dword_1C9788000, oslog, v14, "Skipping snapshot of AOP state (snapshot ID: %ld)", v15, 0xCu);
      sub_1C9840CEC();
    }
  }
}

uint64_t sub_1C98FD4E8(uint64_t result)
{
  v1 = 0;
  v2 = result + 64;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v1;
LABEL_10:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if (*(*(result + 56) + ((v7 << 8) | (4 * v8))) == 2)
    {
LABEL_11:
      v9 = 0;
      v10 = 1 << *(result + 32);
      v11 = -1;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      v12 = v11 & *(result + 64);
      v13 = (v10 + 63) >> 6;
      while (v12)
      {
        v14 = v9;
LABEL_20:
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        if (*(*(result + 56) + ((v14 << 8) | (4 * v15))) == 1)
        {
          return *(result + 16);
        }
      }

      while (1)
      {
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_23;
        }

        if (v14 >= v13)
        {
          return *(result + 16);
        }

        v12 = *(v2 + 8 * v14);
        ++v9;
        if (v12)
        {
          v9 = v14;
          goto LABEL_20;
        }
      }
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v7 >= v6)
    {
      goto LABEL_11;
    }

    v5 = *(v2 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1C98FD620()
{

  return v0;
}

uint64_t sub_1C98FD650()
{
  sub_1C98FD620();

  return swift_deallocClassInstance();
}

void sub_1C98FD6A8()
{
  sub_1C97AEB94();
  v2 = v1;
  v54 = v3;
  v51 = type metadata accessor for SNAOPReport.Payload(0);
  v4 = MEMORY[0x1EEE9AC00](v51);
  v53 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v50 = &v44 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - v8;
  v10 = sub_1C9A916E8();
  sub_1C97AE9C8();
  v52 = v11;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v44 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v44 - v19;
  type metadata accessor for SNTimeUtils(v21);
  v22 = *v2;
  v23 = v2[2];
  v24 = sub_1C97CDA5C(*(v2 + 3));
  if (!v0)
  {
    v45 = v18;
    v46 = v15;
    v48 = v22;
    v49 = v23;
    v47 = v9;
    v25 = v53;
    v26 = v54;
    v60 = v10;
    static SNTimeUtils.timestampToDate(machContinuousTime:)(v24);
    v27 = v49;
    if (v49 < 2)
    {
      v29 = *(v2 + 31);
      v55[0] = *(v2 + 15);
      v55[1] = v29;
      *v56 = *(v2 + 47);
      *&v56[14] = *(v2 + 61);
      v30 = *(v52 + 16);
      v31 = v45;
      v30(v45, v20, v60);
      v32 = v46;
      v30(v46, v20, v60);
      v53 = sub_1C98FE19C(v55);
      v44 = 0;
      v36 = *(v52 + 32);
      v37 = v50;
      v36(v50, v31, v60);
      v38 = type metadata accessor for AOPClassificationResult(0);
      v36((v37 + *(v38 + 20)), v32, v60);
      v39 = v52;
      v40 = v60;
      *(v37 + *(v38 + 24)) = v53;
      type metadata accessor for SNAOPReport.SuccessPayload(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v28 = v47;
      sub_1C99023F8(v37, v47);
      v27 = v49;
LABEL_10:
      v43 = type metadata accessor for SNAOPReport(0);
      (*(v39 + 32))(&v26[v43[5]], v20, v40);
      sub_1C99023F8(v28, &v26[v43[7]]);
      *v26 = v48;
      *&v26[v43[6]] = v27;
      goto LABEL_11;
    }

    if (v49 == 2)
    {
      sub_1C98FDB10();
      v44 = 0;
      v41 = v58;
      v42 = v59;
      *v25 = v57;
      *(v25 + 8) = v41;
      *(v25 + 16) = v42;
      swift_storeEnumTagMultiPayload();
      v28 = v47;
      sub_1C99023F8(v25, v47);
      goto LABEL_9;
    }

    if (v49 == 3)
    {
      v44 = 0;
      v28 = v47;
      *v47 = *(v2 + 15);
      type metadata accessor for SNAOPReport.SuccessPayload(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
LABEL_9:
      v40 = v60;
      v39 = v52;
      goto LABEL_10;
    }

    sub_1C9902288();
    sub_1C97A7A80(&unk_1F493D228);
    sub_1C9813764(v33, 1);
    v34 = sub_1C99032C8();
    v35(v34);
  }

LABEL_11:
  sub_1C97AEB5C();
}

void sub_1C98FDB10()
{
  sub_1C97AEB94();
  v34 = v0;
  v2 = *(v1 + 30);
  v3 = *(v1 + 14);
  v5 = v1[5];
  v4 = v1[6];
  v7 = v1[3];
  v6 = v1[4];
  v8 = v1[1];
  v9 = v1[2];
  v10 = *v1;
  sub_1C9A93D68();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AEAD8();
  v16 = v15 - v14;
  if ((v10 & 0x8000) != 0)
  {
    __break(1u);
  }

  else
  {
    v32 = v16;
    v33 = v12;
    v17 = v3 | (v2 << 32);
    *(&v18 + 1) = v17;
    *&v18 = v4;
    v31 = v18 >> 16;
    *(&v18 + 1) = v4;
    *&v18 = v5;
    v19 = v18 >> 16;
    *(&v18 + 1) = v5;
    *&v18 = v6;
    v20 = v18 >> 16;
    *(&v18 + 1) = v8;
    *&v18 = v10;
    v21 = v18 >> 16;
    *(&v18 + 1) = v9;
    *&v18 = v8;
    v22 = v18 >> 16;
    *(&v18 + 1) = v7;
    *&v18 = v9;
    v23 = v18 >> 16;
    v24 = v17 >> 16;
    v35 = v10 & 0x7FFF;
    *(&v18 + 1) = v6;
    *&v18 = v7;
    v25 = v13;
    sub_1C97A2CEC(&qword_1EC3CC388, &unk_1C9AB28F0);
    v26 = swift_allocObject();
    *(v26 + 32) = v23;
    *(v26 + 40) = v18 >> 16;
    *(v26 + 16) = v21;
    *(v26 + 24) = v22;
    *(v26 + 48) = v20;
    *(v26 + 56) = v19;
    *(v26 + 64) = v31;
    *(v26 + 72) = v24;
    sub_1C9A93D28();
    sub_1C9A93D58();
    sub_1C98FCC2C(sub_1C98FDDD0, 0);

    sub_1C97A2CEC(&qword_1EC3C7BF0, &unk_1C9AA0050);
    sub_1C97AE67C(&qword_1EC3C8EA0, &qword_1EC3C7BF0, &unk_1C9AA0050, MEMORY[0x1E69E6310]);
    v27 = sub_1C9A923C8();
    v29 = v28;

    sub_1C9A935B8();

    v30 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v30);

    MEMORY[0x1CCA90230](0x3A6C696174654420, 0xE900000000000020);
    MEMORY[0x1CCA90230](v27, v29);

    (*(v25 + 8))(v32, v33);
    *v34 = v35;
    *(v34 + 8) = 0xD000000000000012;
    *(v34 + 16) = 0x80000001C9AD91C0;
    sub_1C97AEB5C();
  }
}

uint64_t sub_1C98FDDD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C99024E8(a1, &v11);

  type metadata accessor for _SNAOPErrorDetails(0);
  if (swift_dynamicCast())
  {
    v11 = sub_1C9A93A98();
    v12 = v4;
    MEMORY[0x1CCA90230](58, 0xE100000000000000);
    v5 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v5);

    v7 = v11;
    v6 = v12;
  }

  else
  {
    v6 = 0xE100000000000000;
    v7 = 58;
  }

  sub_1C99024E8(a1, &v11);
  if (v12)
  {
    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  if (v12)
  {
    v9 = v12;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  sub_1C97A592C(v13);
  MEMORY[0x1CCA90230](v8, v9);

  MEMORY[0x1CCA90230](2112800, 0xE300000000000000);
  MEMORY[0x1CCA90230](v7, v6);

  result = MEMORY[0x1CCA90230](93, 0xE100000000000000);
  *a2 = 0x5B6C6961746564;
  a2[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_1C98FDF74(unsigned int *a1)
{
  sub_1C9A93D68();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97AEAD8();
  sub_1C97A2CEC(&qword_1EC3CC378, &unk_1C9AB28D8);
  v10 = swift_allocObject();
  v3 = *(a1 + 5);
  *(v10 + 16) = *(a1 + 1);
  *(v10 + 32) = v3;
  *(v10 + 48) = *(a1 + 9);
  *(v10 + 64) = *(a1 + 26);
  sub_1C9A93D28();
  sub_1C9A93D58();
  v4 = *a1;
  sub_1C9A93718();

  v5 = sub_1C98FCB84(sub_1C98FE11C, 0);

  if (*(v5 + 16) != v4)
  {

    sub_1C9902288();
    sub_1C97A7A80(&unk_1F493D228);
    sub_1C9813764(v6, 2);
  }

  v7 = sub_1C97AEB30();
  v8(v7);
  return v5;
}

uint64_t sub_1C98FE11C(uint64_t a1)
{
  sub_1C99024E8(a1, &v3);

  sub_1C97A2D34(&v4, &v5);
  type metadata accessor for _SNAOPClassfication(0);
  return swift_dynamicCast();
}

void *sub_1C98FE19C(unsigned int *a1)
{
  v2 = sub_1C98FDF74(a1);
  v3 = v1;
  if (v1)
  {
LABEL_12:
    sub_1C9902288();
    sub_1C97A7A80(&unk_1F493D228);
    sub_1C9813764(v27, 2);

    return v3;
  }

  v4 = v2;
  v5 = *(v2 + 16);
  if (!v5)
  {

    v9 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v3 = sub_1C99F462C(v9);

    return v3;
  }

  v30 = MEMORY[0x1E69E7CC0];
  v28 = *(v2 + 16);
  result = sub_1C97B8220(0, v5, 0);
  v7 = v28;
  v8 = 0;
  v9 = v30;
  v10 = (v4 + 33);
  while (v8 < *(v4 + 16))
  {
    v11 = *(v10 - 1);
    if (v11 > 5)
    {

      type metadata accessor for SNError(v19);
      sub_1C9A935B8();

      sub_1C99032A8();
      v29 = v20;
      v21 = sub_1C9A93A98();
      MEMORY[0x1CCA90230](v21);

      v22 = sub_1C99031DC();
      v3 = sub_1C9929478(v22, v23, v24, v25, v26, v29);

      swift_willThrow();

      goto LABEL_12;
    }

    v12 = *v10;
    v13 = &unk_1F492A610 + 16 * v11;
    v14 = *(v13 + 4);
    v15 = *(v13 + 5);
    v17 = *(v30 + 16);
    v16 = *(v30 + 24);

    if (v17 >= v16 >> 1)
    {
      result = sub_1C97B8220((v16 > 1), v17 + 1, 1);
      v7 = v28;
    }

    ++v8;
    *(v30 + 16) = v17 + 1;
    v18 = v30 + 24 * v17;
    *(v18 + 32) = v14;
    *(v18 + 40) = v15;
    *(v18 + 48) = v12;
    v10 = (v10 + 5);
    if (v7 == v8)
    {

      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C98FE404(uint64_t a1, uint64_t a2)
{
  result = sub_1C980B6CC(a1, a2, &unk_1F492A610);
  if (v4)
  {
    type metadata accessor for SNError(v3);
    sub_1C9A935B8();

    sub_1C99032A8();
    v12 = v5;
    v6 = sub_1C97AEB30();
    MEMORY[0x1CCA90230](v6);
    MEMORY[0x1CCA90230](0x65646E69206F7420, 0xE900000000000078);
    v7 = sub_1C99031DC();
    sub_1C9929478(v7, v8, v9, v10, v11, v12);

    return swift_willThrow();
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result > 0xFF)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C98FE54C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v5 = HIDWORD(a3);
  v31 = a2;
  v6 = sub_1C98FBA38(&v31, &v33);
  v8 = v7;
  v31 = MEMORY[0x1CCA8F2D0](v5 + 12);
  v32 = v9;
  v29[2] = &v31;
  v29[3] = a1;
  v30 = 33;
  sub_1C98FBC4C(sub_1C990305C, v29, v6, v8);
  sub_1C97A5978(v6, v8);
  if (v3)
  {
    v10 = v31;
    v11 = v32;
LABEL_10:
    sub_1C97A5978(v10, v11);
    return v6;
  }

  sub_1C97A5978(v31, v32);
  v12 = sub_1C97BE374();
  if (MEMORY[0x1CCA8F2E0](v12) < 12)
  {
LABEL_9:
    sub_1C9902288();
    sub_1C97A7A80(&unk_1F493D228);
    sub_1C9813764(v27, 3);
    v10 = sub_1C97BE374();
    goto LABEL_10;
  }

  v13 = sub_1C97BE374();
  if (MEMORY[0x1CCA8F2E0](v13) < 0x800000000000000CLL)
  {
    __break(1u);
LABEL_13:
    __break(1u);
  }

  v14 = sub_1C9A915D8();
  v6 = sub_1C98FC040(v14, v15, sub_1C9902158);
  v17 = v16;
  v18 = sub_1C985511C();
  sub_1C97A5978(v18, v19);
  v20 = sub_1C97BE374();
  if (MEMORY[0x1CCA8F2E0](v20) < 12)
  {
    goto LABEL_13;
  }

  v21 = sub_1C9A915D8();
  v23 = v22;
  v24 = sub_1C98FC100(v21, v22);
  sub_1C97A5978(v21, v23);
  if (*(v24 + 16) != v17)
  {

    goto LABEL_9;
  }

  v25 = sub_1C97BE374();
  sub_1C97A5978(v25, v26);
  return v6;
}

uint64_t sub_1C98FE77C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v22 = sub_1C9A91568();
  v23 = v9 & 0xFFFFFFFFFFFFFFLL;
  v19[2] = &v22;
  v19[3] = a1;
  v20 = a2;
  sub_1C98FBC4C(sub_1C990305C, v19, a3, a4);
  if (v4)
  {
    v10 = v22;
    v11 = v23;
LABEL_6:
    sub_1C97A5978(v10, v11);
    return a2;
  }

  v12 = v21;
  sub_1C97A5978(v22, v23);
  v13 = sub_1C988EB2C();
  if (MEMORY[0x1CCA8F2E0](v13) != 1)
  {
    sub_1C9901ED4();
    sub_1C97A7A80(&type metadata for SPUServiceUtils.DomainError);
    *v17 = 0;
    swift_willThrow();
    v10 = sub_1C988EB2C();
    goto LABEL_6;
  }

  v14 = sub_1C988EB2C();
  sub_1C98FBD94(v14, v15);
  v16 = sub_1C99030A4();
  sub_1C97A5978(v16, v12);
  return a2;
}

uint64_t sub_1C98FE888@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  sub_1C9A91348();
  swift_allocObject();
  v23 = 0x1B00000000;
  v24 = sub_1C9A91318() | 0x4000000000000000;
  v19[2] = &v23;
  v19[3] = a1;
  v20 = a2;
  sub_1C98FBC4C(sub_1C990305C, v19, a3, a4);
  if (v5)
  {
    v11 = v23;
    v12 = v24;
  }

  else
  {
    v14 = v21;
    v13 = v22;
    sub_1C97A5978(v23, v24);
    if (MEMORY[0x1CCA8F2E0](v14, v13) == 27)
    {
      switch(v13 >> 62)
      {
        case 1uLL:
          v17 = v14 >> 32;
          if (v14 >> 32 < v14)
          {
            __break(1u);
          }

          v16 = v14;
          goto LABEL_11;
        case 2uLL:
          v16 = *(v14 + 16);
          v17 = *(v14 + 24);
LABEL_11:
          sub_1C99020C4(v16, v17, a5);
          break;
        case 3uLL:
          *a5 = 0;
          a5[1] = 0;
          break;
        default:
          *a5 = v14;
          a5[1] = v13 & 0xFFFFFFFFFFFFLL;
          break;
      }
    }

    else
    {
      sub_1C9901ED4();
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }

    v11 = v14;
    v12 = v13;
  }

  return sub_1C97A5978(v11, v12);
}

uint64_t sub_1C98FEA44(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v20 = sub_1C9A91568();
  v21 = v9 & 0xFFFFFFFFFFFFFFLL;
  v16[2] = &v20;
  v16[3] = a1;
  v17 = a2;
  sub_1C98FBC4C(sub_1C9901EB4, v16, a3, a4);
  if (v4)
  {
    v10 = v20;
    v11 = v21;
LABEL_6:
    sub_1C97A5978(v10, v11);
    return a2;
  }

  v12 = v18;
  v13 = v19;
  sub_1C97A5978(v20, v21);
  if (MEMORY[0x1CCA8F2E0](v12, v13) != 12)
  {
    sub_1C9901ED4();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    v10 = v12;
    v11 = v13;
    goto LABEL_6;
  }

  a2 = sub_1C98FC040(v12, v13, sub_1C9902158);
  sub_1C97A5978(v12, v13);
  return a2;
}

void *sub_1C98FEB88@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1C9A91348();
  swift_allocObject();
  v21 = 0x8800000000;
  v22 = sub_1C9A91318() | 0x4000000000000000;
  v17[2] = &v21;
  v17[3] = a1;
  v18 = a2;
  sub_1C98FBC4C(sub_1C990305C, v17, a3, a4);
  if (v5)
  {
    v11 = v21;
    v12 = v22;
  }

  else
  {
    v13 = v19;
    v14 = v20;
    sub_1C97A5978(v21, v22);
    if (MEMORY[0x1CCA8F2E0](v13, v14) == 136)
    {
      sub_1C98FBE48(v13, v14, __src);
      sub_1C97A5978(v13, v14);
      return memcpy(a5, __src, 0x88uLL);
    }

    sub_1C9901ED4();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
    v11 = v13;
    v12 = v14;
  }

  return sub_1C97A5978(v11, v12);
}

uint64_t sub_1C98FECE4(uint64_t a1, unint64_t a2)
{
  v7[2] = *MEMORY[0x1E69E9840];
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v4 = v6;
      return sub_1C990236C(a1, v4);
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
      return sub_1C990236C(a1, v4);
    case 3uLL:
      memset(v7, 0, 14);
      v2 = v7;
      return sub_1C9901AB0(v7, v2);
    default:
      v7[0] = a1;
      LOWORD(v7[1]) = a2;
      BYTE2(v7[1]) = BYTE2(a2);
      BYTE3(v7[1]) = BYTE3(a2);
      BYTE4(v7[1]) = BYTE4(a2);
      BYTE5(v7[1]) = BYTE5(a2);
      v2 = v7 + BYTE6(a2);
      return sub_1C9901AB0(v7, v2);
  }
}

void *sub_1C98FEE20(uint64_t a1, int a2)
{
  sub_1C97A2CEC(&qword_1EC3C68F0, &qword_1C9AB28D0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E6158];
  *(v4 + 16) = xmmword_1C9A9EDD0;
  *(v4 + 56) = v5;
  *(v4 + 32) = 0x3A73746C75736552;
  *(v4 + 40) = 0xE900000000000020;
  sub_1C9A93CA8();

  v7 = a1;
  v8 = a2;
  type metadata accessor for _SNAOPDataReadOut(0);
  return sub_1C9903270(&v7);
}

unint64_t sub_1C98FEEF0(uint64_t a1, int a2, __int16 a3)
{
  *&v49[138] = *MEMORY[0x1E69E9840];
  result = sub_1C98FE404(2036490594, 0xE400000000000000);
  if (!v3)
  {
    v7 = result;
    v8 = sub_1C9903120();
    v9 = sub_1C9903188();
    v10 = sub_1C9903154();
    v11 = sub_1C9903110();
    v12 = sub_1C99032F4(v11);
    v14 = sub_1C98FE404(v12, v13);
    v15 = sub_1C9903110();
    v16 = sub_1C98FE404(v15 & 0xFFFFFFFFFFFFLL | 0x6F6C000000000000, 0xEA0000000000676ELL);
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v29 = a2;
    v30 = 1;
    v31 = a3;
    v32 = 1;
    v33 = 6;
    v34 = v7;
    __asm { FMOV            V0.2S, #0.75 }

    v35 = _D0;
    v36 = v8;
    v37 = _D0;
    v38 = v9;
    v39 = _D0;
    v40 = v10;
    v41 = _D0;
    v42 = v14;
    v43 = _D0;
    v44 = v16;
    v45 = _D0;
    sub_1C98FBA38(&v29, v49);
    sub_1C99031F8();
    sub_1C98FEB88(v22, v23, v24, v25, v26);
    v27 = sub_1C9871794();
    return sub_1C97A5978(v27, v28);
  }

  return result;
}

BOOL sub_1C98FF0A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = BYTE1(a4) == BYTE1(a8) && BYTE2(a4) == BYTE2(a8);
  if (a4 != a8)
  {
    v8 = 0;
  }

  return a1 == a5 && a2 == a6 && a3 == a7 && v8;
}

uint64_t sub_1C98FF0EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x43656C6379436F69 && a2 == 0xEC000000746E756FLL;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x695474736574616CLL && a2 == 0xEF706D617453656DLL;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001C9AD91E0 == a2;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F7272457473616CLL && a2 == 0xED00006570795472;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000001C9AD9200 == a2;
          if (v9 || (sub_1C9A93B18() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E45746E65696C63 && a2 == 0xED000064656C6261;
            if (v10 || (sub_1C9A93B18() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000010 && 0x80000001C9AD9220 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C9A93B18();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C98FF344(char a1)
{
  result = 0x43656C6379436F69;
  switch(a1)
  {
    case 1:
      result = 0x695474736574616CLL;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6F7272457473616CLL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x6E45746E65696C63;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C98FF450()
{
  sub_1C97AEB94();
  v2 = v1;
  sub_1C97A2CEC(&qword_1EC3CC420, &qword_1C9AB2DA8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEA4C();
  sub_1C97A5A8C(v2, v2[3]);
  sub_1C9902BE8();
  sub_1C9A93DD8();
  sub_1C9802174();
  sub_1C9A93A68();
  if (!v0)
  {
    sub_1C9802174();
    sub_1C9A93A68();
    sub_1C9802174();
    sub_1C9A93A58();
    sub_1C9802174();
    sub_1C9A93A58();
    sub_1C9802174();
    sub_1C9A93A48();
    sub_1C9802174();
    sub_1C9A93A48();
    sub_1C9802174();
    sub_1C9A93A48();
  }

  v4 = sub_1C97AEB30();
  v5(v4);
  sub_1C97AEB5C();
}

uint64_t sub_1C98FF638(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  MEMORY[0x1CCA919B0](a2);
  MEMORY[0x1CCA919B0](a3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CE8();
  sub_1C9A93CE8();
  return sub_1C9A93CE8();
}

uint64_t sub_1C98FF6C0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_1C97BE32C(a1);
  MEMORY[0x1CCA919B0](a1);
  MEMORY[0x1CCA919B0](a2);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CE8();
  sub_1C9A93CE8();
  sub_1C9A93CE8();
  return sub_1C9A93D18();
}

void sub_1C98FF778()
{
  sub_1C97AEB94();
  v1 = v0;
  sub_1C97A2CEC(&qword_1EC3CC400, &qword_1C9AB2D98);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97A5A8C(v1, v1[3]);
  sub_1C9902BE8();
  sub_1C9A93DB8();
  sub_1C97C2CA4();
  sub_1C9A93948();
  sub_1C9903294();
  sub_1C97C2CA4();
  sub_1C9A93948();
  sub_1C97C2CA4();
  sub_1C9A93938();
  sub_1C97C2CA4();
  sub_1C9A93938();
  sub_1C97C2CA4();
  sub_1C9A93928();
  sub_1C97C2CA4();
  sub_1C9A93928();
  sub_1C97C2CA4();
  sub_1C9A93928();
  v3 = sub_1C97E89F0();
  v4(v3);
  sub_1C97A592C(v1);
  sub_1C985511C();
  sub_1C97AEB5C();
}

uint64_t sub_1C98FF9A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001C9AD9240 == a2;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C9AD9260 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

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

unint64_t sub_1C98FFA80(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000015;
  }
}

void sub_1C98FFAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v28 = sub_1C97A2CEC(&qword_1EC3CC428, &qword_1C9AB2DB0);
  sub_1C97AE9C8();
  v30 = v29;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  sub_1C97A5A8C(v27, v27[3]);
  sub_1C9902C3C();
  sub_1C9A93DD8();
  a13 = 0;
  sub_1C9A93A68();
  if (!v23)
  {
    a12 = 1;
    sub_1C9A93A58();
  }

  (*(v30 + 8))(v33, v28);
  sub_1C97AEB5C();
}

uint64_t sub_1C98FFC38(uint64_t a1, uint64_t a2)
{
  sub_1C97BE32C(a1);
  MEMORY[0x1CCA919B0](a1);
  sub_1C9A93CF8();
  return sub_1C9A93D18();
}

uint64_t sub_1C98FFC90(void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3CC410, &qword_1C9AB2DA0);
  sub_1C97AE9C8();
  v5 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11[-v7];
  v9 = a1[3];
  sub_1C97A5A8C(a1, v9);
  sub_1C9902C3C();
  sub_1C9A93DB8();
  if (!v1)
  {
    v11[15] = 0;
    sub_1C9A93948();
    sub_1C9903294();
    sub_1C9A93938();
    (*(v5 + 8))(v8, v3);
  }

  sub_1C97A592C(a1);
  return v9;
}

BOOL sub_1C98FFE1C(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
    v3 = v2 && *(a1 + 20) == *(a2 + 20);
    v4 = v3 && *(a1 + 24) == *(a2 + 24);
    v5 = v4 && *(a1 + 25) == *(a2 + 25);
    v6 = v5 && *(a1 + 26) == *(a2 + 26);
    if (v6 && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1C98FFEA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6961764161746164 && a2 == 0xED0000656C62616CLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

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

uint64_t sub_1C98FFF6C(char a1)
{
  if (a1)
  {
    return 0x6961764161746164;
  }

  else
  {
    return 0x737574617473;
  }
}

uint64_t sub_1C98FFFAC(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3CC3C0, &qword_1C9AB2AB0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEA4C();
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99027C8();
  sub_1C9A93DD8();
  v4 = sub_1C99028C4();
  sub_1C9903230(v4, v5, v6, &unk_1F493D430, v4);
  if (!v1)
  {
    v7 = sub_1C9902918();
    sub_1C9903230(v7, v8, v9, &unk_1F493D3B0, v7);
  }

  v10 = sub_1C97AEB30();
  return v11(v10);
}

uint64_t sub_1C990010C()
{
  v1 = v0[1];
  MEMORY[0x1CCA919B0](*v0);
  MEMORY[0x1CCA919B0](v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CE8();
  sub_1C9A93CE8();
  sub_1C9A93CE8();
  MEMORY[0x1CCA919B0](v0[4]);
  return sub_1C9A93CF8();
}

uint64_t sub_1C99001A4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[4];
  sub_1C97BE32C(a1);
  MEMORY[0x1CCA919B0](v2);
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CE8();
  sub_1C9A93CE8();
  sub_1C9A93CE8();
  MEMORY[0x1CCA919B0](v4);
  sub_1C9A93CF8();
  return sub_1C9A93D18();
}

uint64_t sub_1C990027C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C97A2CEC(&qword_1EC3CC3A0, &qword_1C9AB2AA8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99027C8();
  sub_1C9A93DB8();
  if (v2)
  {
    return sub_1C97A592C(a1);
  }

  v6 = sub_1C990281C();
  sub_1C9903208(&unk_1F493D430, v7, v8, v9, v6);
  v10 = sub_1C9902870();
  sub_1C9903208(&unk_1F493D3B0, v11, v12, v13, v10);
  v14 = sub_1C99032BC();
  v15(v14);
  result = sub_1C97A592C(a1);
  *a2 = v17;
  *(a2 + 8) = v18;
  *(a2 + 16) = v19;
  *(a2 + 24) = v20;
  *(a2 + 25) = v21;
  *(a2 + 26) = v22;
  *(a2 + 32) = v17;
  *(a2 + 40) = v18;
  return result;
}

uint64_t sub_1C9900470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C99004C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98FF0EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99004EC(uint64_t a1)
{
  v2 = sub_1C9902BE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9900528(uint64_t a1)
{
  v2 = sub_1C9902BE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C9900564(uint64_t a1@<X8>)
{
  sub_1C98FF778();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
    *(a1 + 26) = BYTE2(v6);
  }
}

uint64_t sub_1C9900608()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 26);
  v5 = *(v0 + 24);
  sub_1C9A93CC8();
  sub_1C98FF638(v7, v1, v2, v3, v5 | (v4 << 16));
  return sub_1C9A93D18();
}

uint64_t sub_1C99006C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98FF9A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99006F0(uint64_t a1)
{
  v2 = sub_1C9902C3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C990072C(uint64_t a1)
{
  v2 = sub_1C9902C3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9900768@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C98FFC90(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_1C99007D0()
{
  v1 = *v0;
  sub_1C9A93CC8();
  MEMORY[0x1CCA919B0](v1);
  sub_1C9A93CF8();
  return sub_1C9A93D18();
}

uint64_t sub_1C9900848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C990089C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98FFEA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99008C4(uint64_t a1)
{
  v2 = sub_1C99027C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9900900(uint64_t a1)
{
  v2 = sub_1C99027C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C990093C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C990027C(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 12);
    *(a2 + 28) = *(v7 + 12);
  }

  return result;
}

uint64_t sub_1C99009A0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 26);
  v5 = *(v0 + 32);
  v6 = *(v0 + 24);
  sub_1C9A93CC8();
  sub_1C98FF638(v8, v1, v2, v3, v6 | (v4 << 16));
  MEMORY[0x1CCA919B0](v5);
  sub_1C9A93CF8();
  return sub_1C9A93D18();
}

uint64_t sub_1C9900A38@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = a2;
  v7 = sub_1C98FBA38(&v24, v25);
  v9 = v8;
  sub_1C98FE888(a1, 37, v7, v8, v25);
  result = sub_1C97A5978(v7, v9);
  if (!v3)
  {
    v11 = v25[1];
    v23 = v25[0];
    v12 = v25[2];
    v13 = v26;
    v21 = v28;
    v22 = v27;
    LODWORD(v25[0]) = a2;
    v14 = sub_1C98FBA38(v25, v25 + 4);
    v16 = sub_1C98FEA44(a1, 36, v14, v15);
    v18 = v17;
    v19 = sub_1C97E89F0();
    result = sub_1C97A5978(v19, v20);
    *a3 = v23;
    *(a3 + 8) = v11;
    *(a3 + 16) = v12;
    *(a3 + 24) = v13;
    *(a3 + 25) = v22;
    *(a3 + 26) = v21;
    *(a3 + 32) = v16;
    *(a3 + 40) = v18;
  }

  return result;
}

void *sub_1C9900BA8(uint64_t a1, int a2)
{
  result = sub_1C9900A38(a1, a2, &v6);
  if (!v2)
  {
    v4 = v6;
    v5[0] = v7[0];
    *(v5 + 12) = *(v7 + 12);
    return sub_1C9903270(&v4);
  }

  return result;
}

void *static SNAOPUtils.toggleAOPServiceTest(enable:)(int a1, double a2)
{
  v21 = *MEMORY[0x1E69E9840];
  type metadata accessor for IOService(a2);
  result = sub_1C9903074(*MEMORY[0x1E696CD60], "v20@?0@HIDDevice8B16");
  if (!v2)
  {
    v5 = result;
    v6 = *(result + 4);
    connect[0] = 0;
    v7 = sub_1C9A70E98();
    v8 = IOServiceOpen(v6, v7, 0, connect);
    sub_1C9A3B42C(v8);
    sub_1C99F39D0(connect[0], v9);
    sub_1C99030A4();

    v11 = type metadata accessor for IOConnect(v10);
    v12 = sub_1C99030B4(v11);
    *(v12 + 16) = v6;
    v19 = v5;
    v20 = &off_1F494BDB8;
    *connect = v12;
    v17 = a1;
    v13 = sub_1C98FBA38(&v17, connect);
    v15 = v14;
    sub_1C99A837C(connect, 210, v13, v14);
    v16 = sub_1C99030D0();
    sub_1C97A5978(v16, v15);
    return sub_1C97A592C(connect);
  }

  return result;
}

uint64_t sub_1C9900DF8(uint64_t a1, double a2)
{
  v4 = a1;
  v5 = sub_1C9903360(a2);
  v6 = sub_1C9903074(*MEMORY[0x1E696CD60], "v20@?0@HIDDevice8B16");
  if (!v2)
  {
    v7 = sub_1C9903254(v6);
    v8 = sub_1C99031BC(v7);
    v9 = sub_1C9A3B42C(v8);
    sub_1C9903348(v9, v10, v11, v12, v13, v14, v15, v16, v17, v25[0]);
    sub_1C99030A4();

    v19 = type metadata accessor for IOConnect(v18);
    *(sub_1C99030B4(v19) + 16) = v3;
    sub_1C9903100();
    v21 = sub_1C99A842C(v20, v4, 8);
    v23 = v22;
    v5 = sub_1C98FECE4(v21, v22);
    sub_1C97A5978(v21, v23);
    sub_1C97A592C(v25);
  }

  return v5;
}

void *static SNAOPUtils.readFromAOPServiceNoiseDet()(double a1)
{
  v18 = *MEMORY[0x1E69E9840];
  type metadata accessor for IOService(a1);
  result = sub_1C9903074(*MEMORY[0x1E696CD60], "v20@?0@HIDDevice8B16");
  if (!v1)
  {
    v3 = result;
    v4 = *(result + 4);
    connect[0] = 0;
    v5 = sub_1C9A70E98();
    v6 = IOServiceOpen(v4, v5, 0, connect);
    sub_1C9A3B42C(v6);
    v8 = sub_1C99F39D0(connect[0], v7);
    sub_1C99030D0();

    v10 = type metadata accessor for IOConnect(v9);
    v11 = sub_1C99030B4(v10);
    *(v11 + 16) = v8;
    v16 = v3;
    v17 = &off_1F494BDB8;
    *connect = v11;
    v12 = sub_1C98FE54C(connect, 1, 0x6400000000uLL);
    v14 = v13;

    sub_1C98FEE20(v12, v14);
    return sub_1C97A592C(connect);
  }

  return result;
}

void *sub_1C9901140(void (*a1)(void), double a2)
{
  sub_1C9903360(a2);
  result = sub_1C9903074(*MEMORY[0x1E696CD60], "v20@?0@HIDDevice8B16");
  if (!v2)
  {
    v6 = sub_1C9903254(result);
    v7 = sub_1C99031BC(v6);
    v8 = sub_1C9A3B42C(v7);
    sub_1C9903348(v8, v9, v10, v11, v12, v13, v14, v15, v16, v19[0]);
    sub_1C99030A4();

    v18 = type metadata accessor for IOConnect(v17);
    *(sub_1C99030B4(v18) + 16) = v3;
    sub_1C9903100();
    a1();
    return sub_1C97A592C(v19);
  }

  return result;
}

void *sub_1C99012E4(int a1, __int16 a2, double a3)
{
  sub_1C9903360(a3);
  result = sub_1C9903074(*MEMORY[0x1E696CD60], "v20@?0@HIDDevice8B16");
  if (!v3)
  {
    v7 = *(result + 4);
    LODWORD(v23[0]) = 0;
    v8 = sub_1C9A70E98();
    v9 = IOServiceOpen(v7, v8, 0, v23);
    v10 = sub_1C9A3B42C(v9);
    v19 = sub_1C9903348(v10, v11, v12, v13, v14, v15, v16, v17, v18, v23[0]);
    sub_1C99030D0();

    v21 = type metadata accessor for IOConnect(v20);
    *(sub_1C99030B4(v21) + 16) = v19;
    sub_1C9903100();
    sub_1C98FEEF0(v22, a1, a2);
    return sub_1C97A592C(v23);
  }

  return result;
}

void *sub_1C99014A8(int a1, char a2, double a3)
{
  v27 = *MEMORY[0x1E69E9840];
  type metadata accessor for IOService(a3);
  result = sub_1C9903074(*MEMORY[0x1E696CD60], "v20@?0@HIDDevice8B16");
  if (!v3)
  {
    v7 = result;
    v8 = *(result + 4);
    connect[0] = 0;
    v9 = sub_1C9A70E98();
    v10 = IOServiceOpen(v8, v9, 0, connect);
    sub_1C9A3B42C(v10);
    v12 = sub_1C99F39D0(connect[0], v11);
    sub_1C99030D0();

    v14 = type metadata accessor for IOConnect(v13);
    v15 = sub_1C99030B4(v14);
    *(v15 + 16) = v12;
    v25 = v7;
    v26 = &off_1F494BDB8;
    *connect = v15;
    v20 = a1;
    v21 = 1;
    v22 = a2;
    v16 = sub_1C98FBA38(&v20, &v23);
    v18 = v17;
    sub_1C98FE77C(connect, 35, v16, v17);
    v19 = sub_1C99030D0();
    sub_1C97A5978(v19, v18);
    return sub_1C97A592C(connect);
  }

  return result;
}

void *sub_1C99018A4(int a1, double a2)
{
  sub_1C9903360(a2);
  result = sub_1C9903074(*MEMORY[0x1E696CD60], "v20@?0@HIDDevice8B16");
  if (!v2)
  {
    v6 = sub_1C9903254(result);
    v7 = sub_1C99031BC(v6);
    v8 = sub_1C9A3B42C(v7);
    sub_1C9903348(v8, v9, v10, v11, v12, v13, v14, v15, v16, v20[0]);
    sub_1C99030A4();

    v18 = type metadata accessor for IOConnect(v17);
    *(sub_1C99030B4(v18) + 16) = v3;
    sub_1C9903100();
    sub_1C9900BA8(v19, a1);
    return sub_1C97A592C(v20);
  }

  return result;
}

uint64_t sub_1C9901A34()
{
  swift_beginAccess();
  nullsub_1();
  swift_endAccess();
  return swift_deallocClassInstance();
}

uint64_t sub_1C9901A84@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    v2 = *(result + 24);
    v3 = *(result + 26);
    *a2 = *result;
    *(a2 + 16) = *(result + 16);
    *(a2 + 24) = v2;
    *(a2 + 26) = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C9901AB0(uint64_t a1, uint64_t a2)
{
  result = sub_1C99CCD20(a1, a2, 4);
  if (!v2)
  {
    if (result)
    {
      result = *result;
      if (v4)
      {
        if (v5 != v4)
        {
          sub_1C9886D84();
          swift_allocError();
          *v6 = 3;
          return swift_willThrow();
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNAOPUtils(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C9901C3C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1C9A91578();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1CCA8F240]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1CCA8F260]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1C9901CB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C9901D7C;

  return sub_1C98FCEA0(a1, v4, v5, v6, v7);
}

uint64_t sub_1C9901D7C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C9901E70(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C9A91748();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C9901ED4()
{
  result = qword_1EC3CC368;
  if (!qword_1EC3CC368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC368);
  }

  return result;
}

void *sub_1C9901F28(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v5 = WORD2(a2);
  v4 = a2;
  return sub_1C9A08814(&v3, BYTE6(a2));
}

uint64_t sub_1C9901FA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_1C9A91308();
  v7 = result;
  if (result)
  {
    result = sub_1C9A91338();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1C9A91328();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

unsigned __int8 *sub_1C9902048(uint64_t a1, uint64_t a2)
{
  result = sub_1C9A91308();
  v5 = result;
  if (result)
  {
    result = sub_1C9A91338();
    if (__OFSUB__(a1, result))
    {
LABEL_8:
      __break(1u);
      goto LABEL_9;
    }

    v5 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  result = sub_1C9A91328();
  if (v5)
  {
    return *v5;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1C99020C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1C9A91308();
  v7 = result;
  if (result)
  {
    result = sub_1C9A91338();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_7;
    }

    v7 += a1 - result;
  }

  if (!__OFSUB__(a2, a1))
  {
    sub_1C9A91328();
    return sub_1C9901A84(v7, a3);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C9902158(uint64_t a1, uint64_t a2)
{
  result = sub_1C9A91308();
  v5 = result;
  if (result)
  {
    result = sub_1C9A91338();
    if (__OFSUB__(a1, result))
    {
LABEL_8:
      __break(1u);
      goto LABEL_9;
    }

    v5 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  result = sub_1C9A91328();
  if (v5)
  {
    return *v5;
  }

LABEL_9:
  __break(1u);
  return result;
}

char *sub_1C99021D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1C9A91308();
  v8 = result;
  if (result)
  {
    result = sub_1C9A91338();
    if (__OFSUB__(a1, result))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v8 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1C9A91328();
  if (!v8)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (!v3)
  {

    return memcpy(a3, v8, 0x88uLL);
  }

  return result;
}

unint64_t sub_1C9902288()
{
  result = qword_1EC3CC370;
  if (!qword_1EC3CC370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC370);
  }

  return result;
}

char *sub_1C99022DC(uint64_t a1, uint64_t a2)
{
  result = sub_1C9A91308();
  v5 = result;
  if (result)
  {
    result = sub_1C9A91338();
    if (__OFSUB__(a1, result))
    {
LABEL_12:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = sub_1C9A91328();
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  return sub_1C9A08814(v5, v9);
}

uint64_t sub_1C990236C(uint64_t a1, uint64_t a2)
{
  result = sub_1C9A91308();
  v5 = result;
  if (result)
  {
    result = sub_1C9A91338();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_1C9A91328();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9 + v5;
  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return sub_1C9901AB0(v5, v11);
}

uint64_t sub_1C99023F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SNAOPReport.Payload(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

float sub_1C990245C@<S0>(void (*a1)(uint64_t *__return_ptr)@<X1>, uint64_t a2@<X8>)
{
  a1(&v5);
  if (v2)
  {
    swift_allocError();
  }

  else
  {
    result = *(&v5 + 1);
    *a2 = v5;
    *(a2 + 1) = result;
  }

  return result;
}

uint64_t sub_1C99024E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CC380, &qword_1C9AB28E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1C9902558@<X0>(void *(*a1)(void *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(v6);
  if (v2)
  {
    return swift_allocError();
  }

  v5 = v6[1];
  *a2 = v6[0];
  a2[1] = v5;
  return result;
}

_BYTE *sub_1C99025DC(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C99026B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 44))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C99026D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 44) = v3;
  return result;
}

unint64_t sub_1C990271C()
{
  result = qword_1EC3CC390;
  if (!qword_1EC3CC390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC390);
  }

  return result;
}

unint64_t sub_1C9902774()
{
  result = qword_1EC3CC398;
  if (!qword_1EC3CC398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC398);
  }

  return result;
}

unint64_t sub_1C99027C8()
{
  result = qword_1EC3CC3A8;
  if (!qword_1EC3CC3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC3A8);
  }

  return result;
}

unint64_t sub_1C990281C()
{
  result = qword_1EC3CC3B0;
  if (!qword_1EC3CC3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC3B0);
  }

  return result;
}

unint64_t sub_1C9902870()
{
  result = qword_1EC3CC3B8;
  if (!qword_1EC3CC3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC3B8);
  }

  return result;
}

unint64_t sub_1C99028C4()
{
  result = qword_1EC3CC3C8;
  if (!qword_1EC3CC3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC3C8);
  }

  return result;
}

unint64_t sub_1C9902918()
{
  result = qword_1EC3CC3D0;
  if (!qword_1EC3CC3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC3D0);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SNSystemConfiguration(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SNSystemConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

__n128 sub_1C99029BC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_1C99029D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 27))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C99029F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
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

  *(result + 27) = v3;
  return result;
}

unint64_t sub_1C9902A34()
{
  result = qword_1EC3CC3D8;
  if (!qword_1EC3CC3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC3D8);
  }

  return result;
}

unint64_t sub_1C9902A8C()
{
  result = qword_1EC3CC3E0;
  if (!qword_1EC3CC3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC3E0);
  }

  return result;
}

unint64_t sub_1C9902AE4()
{
  result = qword_1EC3CC3E8;
  if (!qword_1EC3CC3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC3E8);
  }

  return result;
}

unint64_t sub_1C9902B3C()
{
  result = qword_1EC3CC3F0;
  if (!qword_1EC3CC3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC3F0);
  }

  return result;
}

unint64_t sub_1C9902B94()
{
  result = qword_1EC3CC3F8;
  if (!qword_1EC3CC3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC3F8);
  }

  return result;
}

unint64_t sub_1C9902BE8()
{
  result = qword_1EC3CC408;
  if (!qword_1EC3CC408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC408);
  }

  return result;
}

unint64_t sub_1C9902C3C()
{
  result = qword_1EC3CC418;
  if (!qword_1EC3CC418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC418);
  }

  return result;
}

_BYTE *sub_1C9902C90(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SNAOPUtils.AOPStatus.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9902E4C()
{
  result = qword_1EC3CC430;
  if (!qword_1EC3CC430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC430);
  }

  return result;
}

unint64_t sub_1C9902EA4()
{
  result = qword_1EC3CC438;
  if (!qword_1EC3CC438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC438);
  }

  return result;
}

unint64_t sub_1C9902EFC()
{
  result = qword_1EC3CC440;
  if (!qword_1EC3CC440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC440);
  }

  return result;
}

unint64_t sub_1C9902F54()
{
  result = qword_1EC3CC448;
  if (!qword_1EC3CC448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC448);
  }

  return result;
}

unint64_t sub_1C9902FAC()
{
  result = qword_1EC3CC450;
  if (!qword_1EC3CC450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC450);
  }

  return result;
}

unint64_t sub_1C9903004()
{
  result = qword_1EC3CC458;
  if (!qword_1EC3CC458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC458);
  }

  return result;
}

uint64_t sub_1C9903074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_1C99F24F8(a1, 0xD000000000000011, a2 | 0x8000000000000000, 0x706F616E73, 0xE500000000000000);
}

uint64_t sub_1C99030B4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1C99030DC(unint64_t *a1)
{
  v2 = MEMORY[0x1E69695E0];

  return sub_1C9901E70(a1, v2);
}

unint64_t sub_1C9903120()
{

  return sub_1C98FE404(0x72615F7265746177, 0xEE00746361666974);
}

unint64_t sub_1C9903154()
{

  return sub_1C98FE404(0x615F657665656C73, 0xEF74636166697472);
}

unint64_t sub_1C9903188()
{

  return sub_1C98FE404(0x7472615F646E6977, 0xED00007463616669);
}

uint64_t sub_1C99031BC(task_port_t owningTask, ...)
{
  va_start(va, owningTask);

  return IOServiceOpen(v1, owningTask, 0, va);
}

uint64_t sub_1C9903208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C9A938F8();
}

uint64_t sub_1C9903230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C9A93A18();
}

uint64_t sub_1C9903254(uint64_t a1)
{

  return sub_1C9A70E98();
}

uint64_t sub_1C9903270(uint64_t a1)
{

  return MEMORY[0x1EEE6B538](a1, 0, 0, 0, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL);
}

void sub_1C9903308()
{
  ++*(v0 + 48);

  os_unfair_lock_unlock(v1);
}

uint64_t sub_1C9903328()
{

  return swift_beginAccess();
}

uint64_t sub_1C9903348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double d0_0, unsigned int a9)
{

  return sub_1C99F39D0(a9, d0_0);
}

uint64_t sub_1C9903360(double a1)
{

  return type metadata accessor for IOService(a1);
}

uint64_t sub_1C9903378()
{
  v1 = sub_1C97A2CEC(&qword_1EC3CC488, &qword_1C9AB3138);
  sub_1C97AE9C8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = *(v0 + 16);
  v8 = swift_allocObject();
  v8[2] = sub_1C97AE650;
  v8[3] = v0;
  v8[4] = v7;

  sub_1C97A2CEC(&qword_1EC3C8C70, &qword_1C9AB3140);
  sub_1C97AE67C(&qword_1EC3C8C78, &qword_1EC3C8C70, &qword_1C9AB3140, MEMORY[0x1E695BED8]);
  sub_1C9A91EF8();
  sub_1C97AE67C(&qword_1EC3CC490, &qword_1EC3CC488, &qword_1C9AB3138, MEMORY[0x1E695C058]);
  v9 = sub_1C9A91F28();
  (*(v3 + 8))(v6, v1);
  return v9;
}

uint64_t sub_1C9903544(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CC478, &qword_1C9AB3130);
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9903F38();
  sub_1C9A93DD8();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1C990364C(uint64_t a1)
{
  v2 = sub_1C9903F38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9903688(uint64_t a1)
{
  v2 = sub_1C9903F38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C9903700(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v38 = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v8 = sub_1C9A91748();
  sub_1C97AE9C8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9A91738();
  v15 = type metadata accessor for IOConnect(v14);
  v36 = v15;
  v37 = &off_1F494BDB8;
  v35[0] = a1;

  sub_1C98FC668(v35);
  if (v3)
  {
    v16 = sub_1C9904084();
    v17(v16, v8);

    sub_1C97A592C(v35);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v28 = v7;
    v29 = v8;
    v30 = a2;
    sub_1C97A592C(v35);
    v36 = v15;
    v37 = &off_1F494BDB8;
    v35[0] = a1;
    v31 = 1;

    v18 = sub_1C98FBA38(&v31, &v32);
    v20 = v19;
    sub_1C99A837C(v35, 210, v18, v19);
    sub_1C97A5978(v18, v20);
    sub_1C97A592C(v35);
    v36 = v15;
    v37 = &off_1F494BDB8;
    v35[0] = a1;
    v31 = 0;
    v32 = 1;
    v33 = 1;

    v21 = sub_1C98FBA38(&v31, &v34);
    v23 = v22;
    sub_1C98FE77C(v35, 35, v21, v22);
    sub_1C97A5978(v21, v23);
    sub_1C97A592C(v35);
    *(v4 + OBJC_IVAR____TtCV13SoundAnalysis20SharedAOPDebugStream15AOPSubscription_connect) = a1;
    v25 = v29;
    (*(v10 + 16))(v4 + OBJC_IVAR____TtCV13SoundAnalysis20SharedAOPDebugStream15AOPSubscription_trackingID, v13, v29);
    *(v4 + OBJC_IVAR____TtCV13SoundAnalysis20SharedAOPDebugStream15AOPSubscription_analytics) = v30;

    sub_1C98FC6BC(v13, 0);

    v26 = sub_1C9904084();
    v27(v26, v25);
  }

  return v4;
}

uint64_t sub_1C9903A94()
{
  v1 = v0;
  v30 = *MEMORY[0x1E69E9840];
  v2 = sub_1C9A91748();
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = OBJC_IVAR____TtCV13SoundAnalysis20SharedAOPDebugStream15AOPSubscription_analytics;
  v8 = *(v4 + 16);
  v22[0] = OBJC_IVAR____TtCV13SoundAnalysis20SharedAOPDebugStream15AOPSubscription_trackingID;
  v8(v7, v0 + OBJC_IVAR____TtCV13SoundAnalysis20SharedAOPDebugStream15AOPSubscription_trackingID, v2);

  sub_1C98FC938(v7);

  v9 = *(v4 + 8);
  v10 = v9(v7, v2);
  v11 = OBJC_IVAR____TtCV13SoundAnalysis20SharedAOPDebugStream15AOPSubscription_connect;
  v12 = *(v0 + OBJC_IVAR____TtCV13SoundAnalysis20SharedAOPDebugStream15AOPSubscription_connect);
  v13 = type metadata accessor for IOConnect(v10);
  v28 = v13;
  v29 = &off_1F494BDB8;
  v27[0] = v12;
  v23 = 0;

  v14 = sub_1C98FBA38(&v23, &v24);
  v16 = v15;
  sub_1C99A837C(v27, 210, v14, v15);
  sub_1C97A5978(v14, v16);
  sub_1C97A592C(v27);
  v17 = *(v1 + v11);
  v28 = v13;
  v29 = &off_1F494BDB8;
  v27[0] = v17;
  v23 = 0;
  v24 = 1;
  v25 = 0;

  v18 = sub_1C98FBA38(&v23, &v26);
  v20 = v19;
  sub_1C98FE77C(v27, 35, v18, v19);
  sub_1C97A5978(v18, v20);
  sub_1C97A592C(v27);
  v9((v1 + v22[0]), v2);

  return v1;
}

uint64_t sub_1C9903D74()
{
  sub_1C9903A94();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SharedAOPDebugStream.AOPSubscription(uint64_t a1)
{
  result = qword_1EC3CC460;
  if (!qword_1EC3CC460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C9903E20(uint64_t a1)
{
  result = sub_1C9A91748();
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

unint64_t sub_1C9903EE4()
{
  result = qword_1EC3CC470;
  if (!qword_1EC3CC470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC470);
  }

  return result;
}

unint64_t sub_1C9903F38()
{
  result = qword_1EC3CC480;
  if (!qword_1EC3CC480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC480);
  }

  return result;
}

uint64_t sub_1C9903F8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C98C051C();
  *a1 = result;
  return result;
}

unint64_t sub_1C9903FD8()
{
  result = qword_1EC3CC498;
  if (!qword_1EC3CC498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC498);
  }

  return result;
}

unint64_t sub_1C9904030()
{
  result = qword_1EC3CC4A0;
  if (!qword_1EC3CC4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC4A0);
  }

  return result;
}

id sub_1C9904090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC13SoundAnalysis18SNResultsForwarder_resultsHandler];
  *v10 = a3;
  *(v10 + 1) = a4;
  v11 = &v4[OBJC_IVAR____TtC13SoundAnalysis18SNResultsForwarder_completionHandler];
  *v11 = a1;
  *(v11 + 1) = a2;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_1C99043D4()
{
  sub_1C99045AC();
  v3();
  return v0(v2, v1);
}

uint64_t sub_1C9904420()
{
  sub_1C99045AC();
  v3();
  return v0(v2, v1);
}

void sub_1C990446C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1C99045C4(a1, a2, a3, a4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (a2)
    {
      if ([Strong respondsToSelector_])
      {
        v8 = a2;
        v9 = sub_1C9A913B8();
        [v7 request:v4 didFailWithError:v9];

        swift_unknownObjectRelease();
        return;
      }
    }

    else if ([Strong respondsToSelector_])
    {
      [v7 requestDidComplete_];
    }

    swift_unknownObjectRelease();
  }
}

void *sub_1C9904548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C99045C4(a1, a2, a3, a4);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result request:v4 didProduceResult:a2];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C99045C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return swift_beginAccess();
}

uint64_t sub_1C99045E8()
{
  swift_beginAccess();
  nullsub_1();
  swift_endAccess();
  return swift_deallocClassInstance();
}

uint64_t sub_1C990465C()
{
  swift_beginAccess();
  nullsub_1();
  swift_endAccess();
  return swift_deallocClassInstance();
}

uint64_t sub_1C99046D0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, char *a6@<X8>)
{
  v35 = a2;
  v36 = a4;
  v34 = a1;
  v9 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v30 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v30 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v30 - v19;
  (*(v21 + 8))(v22, v21);
  v23 = *(v9 + 16);
  v23(a6, v34, a3);
  v23(v18, v35, a3);
  if (sub_1C9A92438())
  {
    v24 = *(v9 + 8);
    v24(v18, a3);
  }

  else
  {
    v25 = *(v36 + 8);
    v31 = v23;
    v32 = v25;
    v33 = v36 + 8;
    v34 = a5;
    v26 = (v9 + 8);
    v35 = v20;
    v27 = (v9 + 32);
    v30[1] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    do
    {
      v31(v15, v18, a3);
      v32(a6, v18, a3, v36);
      v24 = *v26;
      (*v26)(v18, a3);
      v24(a6, a3);
      v28 = *v27;
      (*v27)(v18, v12, a3);
      v28(a6, v15, a3);
    }

    while ((sub_1C9A92438() & 1) == 0);
    v20 = v35;
    v24(v18, a3);
  }

  return (v24)(v20, a3);
}

uint64_t *sub_1C9904970@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a2;
  if (*a2)
  {
    if (*result != 0x8000000000000000 || v3 != -1)
    {
      *a3 = *result % v3;
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

void *sub_1C99049A4@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a2;
  if (*a2)
  {
    if (*result != 0x8000000000000000 || v3 != -1)
    {
      *a3 = *result / v3;
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

_BYTE *storeEnumTagSinglePayload for SNNumberUtils.DomainError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C9904A84()
{
  result = qword_1EC3CC4C0;
  if (!qword_1EC3CC4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC4C0);
  }

  return result;
}

uint64_t sub_1C9904B10(uint64_t a1, uint64_t (*a2)(uint64_t, void *, id))
{
  v40 = a2;
  v29 = v2;
  v3 = MGGetProductType();
  sub_1C989B2F8(v3, v32);
  if (v32[6])
  {
    v4 = v32[0];

    sub_1C989ACF0(v4, v33);
    v5 = v36;
    v38 = v34;

    sub_1C97DA1E0(&v38, &qword_1EC3C7DB0, &unk_1C9AB2780);
    v37 = v35;
    sub_1C97DA1E0(&v37, &qword_1EC3C7DB8, &qword_1C9AA0740);

    v5(__dst, v6);

    v7 = __dst[0];
    v8 = __dst[1];
    v9 = __dst[2];
    v10 = __dst[3];
    v12 = __dst[4];
    v11 = __dst[5];
    v13 = __dst[6];
    v14 = BYTE1(__dst[6]);
    v15 = BYTE2(__dst[6]);
    v16 = BYTE3(__dst[6]);
    v17 = BYTE4(__dst[6]);
    v18 = BYTE5(__dst[6]);
    v19 = __dst[7];
    v20 = __dst[8];
  }

  else
  {
    if (qword_1EC3C5E08 != -1)
    {
      swift_once();
    }

    memcpy(__dst, &qword_1EC3D33B0, 0x41uLL);
    v28 = __dst[7];
    v26 = BYTE5(__dst[6]);
    v27 = __dst[8];
    v24 = BYTE3(__dst[6]);
    v25 = BYTE4(__dst[6]);
    v15 = BYTE2(__dst[6]);
    v14 = BYTE1(__dst[6]);
    v13 = __dst[6];
    v12 = __dst[4];
    v11 = __dst[5];
    v9 = __dst[2];
    v10 = __dst[3];
    v7 = __dst[0];
    v8 = __dst[1];
    sub_1C97A6264(__dst, __src);
    v16 = v24;
    v17 = v25;
    v18 = v26;
    v20 = v27;
    v19 = v28;
  }

  __src[0] = v7;
  __src[1] = v8;
  __src[2] = v9;
  __src[3] = v10;
  __src[4] = v12;
  __src[5] = v11;
  LOBYTE(__src[6]) = v13;
  BYTE1(__src[6]) = v14;
  BYTE2(__src[6]) = v15;
  BYTE3(__src[6]) = v16;
  BYTE4(__src[6]) = v17;
  BYTE5(__src[6]) = v18;
  __src[7] = v19;
  LOBYTE(__src[8]) = v20;
  memcpy(__dst, __src, 0x41uLL);
  v21 = v29;
  v22 = v40(a1, __dst, v21);
  sub_1C97E8084(__src);

  return v22;
}

uint64_t sub_1C9904DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1C97AA4F0(&unk_1EC3D0A80, &qword_1C9AB34D8);
  sub_1C97AE9EC();
  sub_1C97AE67C(v13, &unk_1EC3D0A80, &qword_1C9AB34D8, v14);
  v23 = a7;
  v15 = sub_1C9A91CB8();
  sub_1C97AE9C8();
  v17 = v16;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C97FB2C8();
  v19 = sub_1C97CB094();
  sub_1C990CA40(v19, v20, a4, a5, a6, a8);
  if (!v25)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = v23;
    v21[4] = a8;
    sub_1C9A92048();

    swift_getWitnessTable();
    a1 = sub_1C9A91F28();
    (*(v17 + 8))(&qword_1C9AB34D8, v15);
  }

  return a1;
}

uint64_t *sub_1C9905030(unint64_t a1, double a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    v8 = (a1 & 0x7FFFFFFFFFFFFFFFLL);
    type metadata accessor for SNSoundPrintFeatureExtractor(a2);
    swift_allocObject();
    v6 = sub_1C99C45E8(v8);
    v9 = v8;
  }

  else
  {
    type metadata accessor for SNLogMelBasedFeatureExtractor(a2);
    v4 = swift_allocObject();
    v5 = a1;
    v6 = v4;
    v7 = sub_1C9843614(v5);
    if (!v2)
    {
      return v7;
    }
  }

  return v6;
}

uint64_t sub_1C99050E0(uint64_t a1, uint64_t a2, double a3)
{
  if (a1 < 0)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      return 0;
    }
  }

  else if (a2 < 0)
  {
    return 0;
  }

  sub_1C97BD318(a3, 0, &qword_1EC3C54A0, 0x1E69E58C0);
  return sub_1C9A931E8() & 1;
}

uint64_t sub_1C9905198(unint64_t a1)
{
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](a1 >> 63);
  sub_1C9A931F8();
  return sub_1C9A93D18();
}

uint64_t sub_1C99051FC()
{
  v1 = *v0;
  sub_1C9A93CC8();
  sub_1C9905154(v3, v1);
  return sub_1C9A93D18();
}

char *sub_1C990524C(__int128 *a1, uint64_t a2, void *a3)
{
  v82 = a1;
  v4 = sub_1C97A2CEC(&qword_1EC3CC4D8, &qword_1C9AB34E8);
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v75 = v64 - v5;
  v6 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  v80 = *(v6 - 8);
  v81 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v72 = (v64 - v7);
  v8 = sub_1C9A91C28();
  v78 = *(v8 - 8);
  v79 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C97A2CEC(&qword_1EC3C8240, &qword_1C9AA28E0);
  v74 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v64 - v12;
  v14 = sub_1C97A2CEC(&unk_1EC3CC4E0, &unk_1C9AB34F0);
  v73 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v64 - v15;
  v17 = sub_1C97A2CEC(&qword_1EC3C8460, &qword_1C9AA3420);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v64 - v18;
  v20 = a3;
  v21 = v83;
  result = sub_1C97C0DDC();
  if (v21)
  {

    return v19;
  }

  v69 = v10;
  v67 = v16;
  v70 = v13;
  v83 = 0;
  v68 = v14;
  v71 = v19;
  v24 = v82[1];
  v84 = *v82;
  v85 = v24;
  v25 = v82[3];
  v86 = v82[2];
  v87 = v25;
  v26 = *(&v84 + 1);
  if ((*(&v84 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (HIDWORD(*(&v84 + 1)))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v27 = v85;
  v28 = result;
  v29 = v23;
  ObjectType = swift_getObjectType();
  v31 = *(v29 + 8);
  v32 = v83;
  (*(v31 + 8))(v26, ObjectType, v31, v27);
  if (v32)
  {

    swift_unknownObjectRelease();
    return v19;
  }

  v19 = (*(v31 + 16))(ObjectType, v31);
  sub_1C9A69F34(v19);
  (*(v29 + 32))(ObjectType, v29);
  v33 = v20;
  if (sub_1C9A6B6A4(v19) != 1 || (v34 = sub_1C9A6BD8C(v19, 0)) == 0)
  {
LABEL_17:
    sub_1C986EE54();
    swift_allocError();
    *v39 = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    return v19;
  }

  v35 = v34;
  if (sub_1C9A64668(v34) != 1)
  {

    goto LABEL_17;
  }

  sub_1C9A6681C(v35, 0);
  v37 = v36;
  v38 = v36;
  result = sub_1C9A66CAC(v35, 0);
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v37 < 9.22337204e18)
  {
    sub_1C97DD3BC(result, v37);
    v83 = 0;
    v40 = sub_1C98BF080();
    v64[1] = v40;

    v88 = v40;
    (*(v78 + 104))(v69, *MEMORY[0x1E695BD20], v79);
    v41 = v72;
    *v72 = sub_1C990DC68;
    v41[1] = 0;
    (*(v80 + 104))(v41, *MEMORY[0x1E695BD48], v81);
    v82 = v33;
    v66 = v35;
    sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390, &unk_1C9A9C770, MEMORY[0x1E695BED8]);
    v42 = v69;
    sub_1C9A92018();
    (*(v80 + 8))(v41, v81);
    (*(v78 + 8))(v42, v79);

    v43 = swift_allocObject();
    v65 = v19;
    *(v43 + 16) = sub_1C98063A0;
    *(v43 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C7430, &unk_1C9AA3470);
    sub_1C97AE67C(&unk_1EC3C9950, &qword_1EC3C8240, &qword_1C9AA28E0, MEMORY[0x1E695BDD8]);
    v44 = v67;
    v45 = v70;
    sub_1C9A91F68();

    (*(v74 + 8))(v45, v11);
    v46 = sub_1C9A69970(v19);
    v47 = swift_allocObject();
    *(v47 + 16) = v46;
    v48 = v71;
    (*(v73 + 32))(v71, v44, v68);
    v49 = v48 + *(v17 + 84);
    *v49 = 0;
    *(v49 + 8) = 0;
    *(v49 + 16) = 2;
    v50 = (v48 + *(v17 + 88));
    *v50 = sub_1C991136C;
    v50[1] = v47;
    v51 = swift_allocObject();
    *(v51 + 16) = v27;
    v52 = v51;
    v53 = swift_allocObject();
    *(v53 + 16) = v28;
    *(v53 + 24) = v29;
    v54 = swift_allocObject();
    *(v54 + 16) = v28;
    *(v54 + 24) = v29;
    v55 = swift_allocObject();
    *(v55 + 24) = v29;
    swift_unknownObjectWeakInit();
    v56 = swift_allocObject();
    v64[2] = v28;
    v57 = v56;
    v56[2] = v55;
    v56[3] = sub_1C98714C8;
    v56[4] = v52;
    v81 = v52;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_1C99113C4;
    *(v58 + 24) = v53;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_1C991133C;
    *(v59 + 24) = v54;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_1C9911370;
    *(v60 + 24) = v57;
    v61 = swift_allocObject();
    v61[2] = sub_1C987141C;
    v61[3] = v58;
    v61[4] = sub_1C99113AC;
    v61[5] = v59;
    v61[6] = sub_1C9911388;
    v61[7] = v60;
    swift_unknownObjectRetain_n();

    v62 = v75;
    sub_1C990E0A8(0, sub_1C9911354, v61, v75);

    sub_1C97AE67C(&qword_1EC3CC4F0, &qword_1EC3CC4D8, &qword_1C9AB34E8, MEMORY[0x1E695BE28]);
    v63 = v77;
    v19 = sub_1C9A91F28();
    swift_unknownObjectRelease();

    (*(v76 + 8))(v62, v63);
    sub_1C97DA1E0(v71, &qword_1EC3C8460, &qword_1C9AA3420);

    return v19;
  }

LABEL_22:
  __break(1u);
  return result;
}

char *sub_1C9905D68(__int128 *a1, uint64_t a2, void *a3)
{
  v82 = a1;
  v4 = sub_1C97A2CEC(&qword_1EC3CC4D8, &qword_1C9AB34E8);
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v75 = v64 - v5;
  v6 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  v80 = *(v6 - 8);
  v81 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v72 = (v64 - v7);
  v8 = sub_1C9A91C28();
  v78 = *(v8 - 8);
  v79 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C97A2CEC(&qword_1EC3C8240, &qword_1C9AA28E0);
  v74 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v64 - v12;
  v14 = sub_1C97A2CEC(&unk_1EC3CC4E0, &unk_1C9AB34F0);
  v73 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v64 - v15;
  v17 = sub_1C97A2CEC(&qword_1EC3C8460, &qword_1C9AA3420);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v64 - v18;
  v20 = a3;
  v21 = v83;
  result = sub_1C97C3610();
  if (v21)
  {

    return v19;
  }

  v69 = v10;
  v67 = v16;
  v70 = v13;
  v83 = 0;
  v68 = v14;
  v71 = v19;
  v24 = v82[1];
  v84 = *v82;
  v85 = v24;
  v25 = v82[3];
  v86 = v82[2];
  v87 = v25;
  v26 = *(&v84 + 1);
  if ((*(&v84 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (HIDWORD(*(&v84 + 1)))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v27 = v85;
  v28 = result;
  v29 = v23;
  ObjectType = swift_getObjectType();
  v31 = *(v29 + 8);
  v32 = v83;
  (*(v31 + 8))(v26, ObjectType, v31, v27);
  if (v32)
  {

    swift_unknownObjectRelease();
    return v19;
  }

  v19 = (*(v31 + 16))(ObjectType, v31);
  sub_1C9A69F34(v19);
  (*(v29 + 32))(ObjectType, v29);
  v33 = v20;
  if (sub_1C9A6B6A4(v19) != 1 || (v34 = sub_1C9A6BD8C(v19, 0)) == 0)
  {
LABEL_17:
    sub_1C986EE54();
    swift_allocError();
    *v39 = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    return v19;
  }

  v35 = v34;
  if (sub_1C9A64668(v34) != 1)
  {

    goto LABEL_17;
  }

  sub_1C9A6681C(v35, 0);
  v37 = v36;
  v38 = v36;
  result = sub_1C9A66CAC(v35, 0);
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v37 < 9.22337204e18)
  {
    sub_1C97DD3BC(result, v37);
    v83 = 0;
    v40 = sub_1C98BF080();
    v64[1] = v40;

    v88 = v40;
    (*(v78 + 104))(v69, *MEMORY[0x1E695BD20], v79);
    v41 = v72;
    *v72 = sub_1C990DC68;
    v41[1] = 0;
    (*(v80 + 104))(v41, *MEMORY[0x1E695BD48], v81);
    v82 = v33;
    v66 = v35;
    sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390, &unk_1C9A9C770, MEMORY[0x1E695BED8]);
    v42 = v69;
    sub_1C9A92018();
    (*(v80 + 8))(v41, v81);
    (*(v78 + 8))(v42, v79);

    v43 = swift_allocObject();
    v65 = v19;
    *(v43 + 16) = sub_1C98063A0;
    *(v43 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C7430, &unk_1C9AA3470);
    sub_1C97AE67C(&unk_1EC3C9950, &qword_1EC3C8240, &qword_1C9AA28E0, MEMORY[0x1E695BDD8]);
    v44 = v67;
    v45 = v70;
    sub_1C9A91F68();

    (*(v74 + 8))(v45, v11);
    v46 = sub_1C9A69970(v19);
    v47 = swift_allocObject();
    *(v47 + 16) = v46;
    v48 = v71;
    (*(v73 + 32))(v71, v44, v68);
    v49 = v48 + *(v17 + 84);
    *v49 = 0;
    *(v49 + 8) = 0;
    *(v49 + 16) = 2;
    v50 = (v48 + *(v17 + 88));
    *v50 = sub_1C991136C;
    v50[1] = v47;
    v51 = swift_allocObject();
    *(v51 + 16) = v27;
    v52 = v51;
    v53 = swift_allocObject();
    *(v53 + 16) = v28;
    *(v53 + 24) = v29;
    v54 = swift_allocObject();
    *(v54 + 16) = v28;
    *(v54 + 24) = v29;
    v55 = swift_allocObject();
    *(v55 + 24) = v29;
    swift_unknownObjectWeakInit();
    v56 = swift_allocObject();
    v64[2] = v28;
    v57 = v56;
    v56[2] = v55;
    v56[3] = sub_1C98714C8;
    v56[4] = v52;
    v81 = v52;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_1C99113C4;
    *(v58 + 24) = v53;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_1C991133C;
    *(v59 + 24) = v54;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_1C9911370;
    *(v60 + 24) = v57;
    v61 = swift_allocObject();
    v61[2] = sub_1C987141C;
    v61[3] = v58;
    v61[4] = sub_1C99113AC;
    v61[5] = v59;
    v61[6] = sub_1C9911388;
    v61[7] = v60;
    swift_unknownObjectRetain_n();

    v62 = v75;
    sub_1C990E0A8(0, sub_1C9911354, v61, v75);

    sub_1C97AE67C(&qword_1EC3CC4F0, &qword_1EC3CC4D8, &qword_1C9AB34E8, MEMORY[0x1E695BE28]);
    v63 = v77;
    v19 = sub_1C9A91F28();
    swift_unknownObjectRelease();

    (*(v76 + 8))(v62, v63);
    sub_1C97DA1E0(v71, &qword_1EC3C8460, &qword_1C9AA3420);

    return v19;
  }

LABEL_22:
  __break(1u);
  return result;
}

int *sub_1C9906884(__int128 *a1, uint64_t a2, char *a3)
{
  v86 = a1;
  v87 = a3;
  v85 = sub_1C97A2CEC(&qword_1EC3CC4D8, &qword_1C9AB34E8);
  v78 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = v66 - v4;
  v82 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  v79 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v83 = (v66 - v5);
  v81 = sub_1C9A91C28();
  v77 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v7 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C97A2CEC(&qword_1EC3C8240, &qword_1C9AA28E0);
  v76 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v66 - v9;
  v11 = sub_1C97A2CEC(&unk_1EC3CC4E0, &unk_1C9AB34F0);
  v80 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v66 - v12;
  v14 = sub_1C97A2CEC(&qword_1EC3C8460, &qword_1C9AA3420);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v66 - v15;
  type metadata accessor for SNSoundActionsDetector(v17);
  swift_allocObject();
  v87 = v87;
  sub_1C99D2E34(v87);
  if (v3)
  {

    return v14;
  }

  v19 = v18;
  v74 = v7;
  v20 = v83;
  v70 = v14;
  v71 = v13;
  v72 = v10;
  v73 = v11;
  v75 = v16;
  v21 = v84;
  v22 = v85;
  v23 = v86[1];
  v88 = *v86;
  v89 = v23;
  v24 = v86[3];
  v90 = v86[2];
  v91 = v24;
  result = *(&v88 + 1);
  if ((*(&v88 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(*(&v88 + 1)))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26 = v89;
  v27 = v19;
  sub_1C99D3BA8();
  v28 = sub_1C99D3B54();
  v69 = v27;
  sub_1C9A69F34(v28);
  if (sub_1C9A6B6A4(v28) != 1)
  {
    goto LABEL_15;
  }

  v29 = sub_1C9A6BD8C(v28, 0);
  if (!v29)
  {
    goto LABEL_15;
  }

  v14 = v29;
  if (sub_1C9A64668(v29) != 1)
  {

LABEL_15:
    sub_1C986EE54();
    swift_allocError();
    *v38 = 0;
    swift_willThrow();

    return v14;
  }

  sub_1C9A6681C(v14, 0);
  v31 = v30;
  v32 = v14;
  v33 = v30;
  v34 = v32;
  result = sub_1C9A66CAC(v32, 0);
  if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v86 = v28;
  if (v31 < 9.22337204e18)
  {
    v35 = v34;
    v36 = v20;
    sub_1C97DD3BC(result, v31);
    v37 = v82;
    v67 = v8;
    v39 = v81;
    v40 = sub_1C98BF080();
    v66[2] = v40;

    v92 = v40;
    v41 = v77;
    (*(v77 + 104))(v74, *MEMORY[0x1E695BD20], v39);
    *v36 = sub_1C990DC68;
    v36[1] = 0;
    v42 = v79;
    (*(v79 + 104))(v36, *MEMORY[0x1E695BD48], v37);
    v68 = v35;
    v66[1] = sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390, &unk_1C9A9C770, MEMORY[0x1E695BED8]);
    v43 = v36;
    v44 = v72;
    v45 = v74;
    sub_1C9A92018();
    (*(v42 + 8))(v43, v82);
    (*(v41 + 8))(v45, v81);

    v46 = swift_allocObject();
    *(v46 + 16) = sub_1C98063A0;
    *(v46 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C7430, &unk_1C9AA3470);
    sub_1C97AE67C(&unk_1EC3C9950, &qword_1EC3C8240, &qword_1C9AA28E0, MEMORY[0x1E695BDD8]);
    v47 = v71;
    v48 = v67;
    sub_1C9A91F68();

    (*(v76 + 8))(v44, v48);
    v49 = sub_1C9A69970(v86);
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    v51 = v75;
    (*(v80 + 32))(v75, v47, v73);
    v52 = v70;
    v53 = v51 + v70[21];
    *v53 = 0;
    *(v53 + 8) = 0;
    *(v53 + 16) = 2;
    v54 = (v51 + v52[22]);
    *v54 = sub_1C991136C;
    v54[1] = v50;
    v83 = swift_allocObject();
    v83[2] = v26;
    v55 = swift_allocObject();
    v56 = v69;
    *(v55 + 16) = v69;
    *(v55 + 24) = &off_1F4949830;
    v57 = v55;
    v82 = v55;
    v58 = swift_allocObject();
    *(v58 + 16) = v56;
    *(v58 + 24) = &off_1F4949830;
    v59 = swift_allocObject();
    *(v59 + 24) = &off_1F4949830;
    swift_unknownObjectWeakInit();
    v60 = swift_allocObject();
    v60[2] = v59;
    v60[3] = sub_1C98714C8;
    v60[4] = v83;
    v61 = swift_allocObject();
    v81 = v61;
    *(v61 + 16) = sub_1C99113C4;
    *(v61 + 24) = v57;
    v62 = swift_allocObject();
    *(v62 + 16) = sub_1C991133C;
    *(v62 + 24) = v58;
    v63 = swift_allocObject();
    *(v63 + 16) = sub_1C9911370;
    *(v63 + 24) = v60;
    v64 = swift_allocObject();
    v65 = v81;
    v64[2] = sub_1C987141C;
    v64[3] = v65;
    v64[4] = sub_1C99113AC;
    v64[5] = v62;
    v64[6] = sub_1C9911388;
    v64[7] = v63;
    swift_retain_n();

    sub_1C990E0A8(0, sub_1C9911354, v64, v21);

    sub_1C97AE67C(&qword_1EC3CC4F0, &qword_1EC3CC4D8, &qword_1C9AB34E8, MEMORY[0x1E695BE28]);
    v14 = sub_1C9A91F28();

    (*(v78 + 8))(v21, v22);
    sub_1C97DA1E0(v75, &qword_1EC3C8460, &qword_1C9AA3420);

    return v14;
  }

LABEL_20:
  __break(1u);
  return result;
}

char *sub_1C99073BC(__int128 *a1, uint64_t a2, void *a3)
{
  v83 = a1;
  v4 = sub_1C97A2CEC(&qword_1EC3CC4D8, &qword_1C9AB34E8);
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v76 = v65 - v5;
  v6 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  v81 = *(v6 - 8);
  v82 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v73 = (v65 - v7);
  v8 = sub_1C9A91C28();
  v79 = *(v8 - 8);
  v80 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C97A2CEC(&qword_1EC3C8240, &qword_1C9AA28E0);
  v75 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v65 - v12;
  v14 = sub_1C97A2CEC(&unk_1EC3CC4E0, &unk_1C9AB34F0);
  v74 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v65 - v15;
  v17 = sub_1C97A2CEC(&qword_1EC3C8460, &qword_1C9AA3420);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v65 - v18;
  v20 = a3;
  v21 = v84;
  result = sub_1C985A6AC(v22);
  if (v21)
  {

    return v19;
  }

  v70 = v10;
  v68 = v16;
  v71 = v13;
  v84 = 0;
  v69 = v14;
  v72 = v19;
  v25 = v83[1];
  v85 = *v83;
  v86 = v25;
  v26 = v83[3];
  v87 = v83[2];
  v88 = v26;
  v27 = *(&v85 + 1);
  if ((*(&v85 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (HIDWORD(*(&v85 + 1)))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v28 = v86;
  v29 = result;
  v30 = v24;
  ObjectType = swift_getObjectType();
  v32 = *(v30 + 8);
  v33 = v84;
  (*(v32 + 8))(v27, ObjectType, v32, v28);
  if (v33)
  {

    swift_unknownObjectRelease();
    return v19;
  }

  v19 = (*(v32 + 16))(ObjectType, v32);
  sub_1C9A69F34(v19);
  (*(v30 + 32))(ObjectType, v30);
  v34 = v20;
  if (sub_1C9A6B6A4(v19) != 1 || (v35 = sub_1C9A6BD8C(v19, 0)) == 0)
  {
LABEL_17:
    sub_1C986EE54();
    swift_allocError();
    *v40 = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    return v19;
  }

  v36 = v35;
  if (sub_1C9A64668(v35) != 1)
  {

    goto LABEL_17;
  }

  sub_1C9A6681C(v36, 0);
  v38 = v37;
  v39 = v37;
  result = sub_1C9A66CAC(v36, 0);
  if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v38 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v38 < 9.22337204e18)
  {
    sub_1C97DD3BC(result, v38);
    v84 = 0;
    v41 = sub_1C98BF080();
    v65[1] = v41;

    v89 = v41;
    (*(v79 + 104))(v70, *MEMORY[0x1E695BD20], v80);
    v42 = v73;
    *v73 = sub_1C990DC68;
    v42[1] = 0;
    (*(v81 + 104))(v42, *MEMORY[0x1E695BD48], v82);
    v83 = v34;
    v67 = v36;
    sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390, &unk_1C9A9C770, MEMORY[0x1E695BED8]);
    v43 = v70;
    sub_1C9A92018();
    (*(v81 + 8))(v42, v82);
    (*(v79 + 8))(v43, v80);

    v44 = swift_allocObject();
    v66 = v19;
    *(v44 + 16) = sub_1C98063A0;
    *(v44 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C7430, &unk_1C9AA3470);
    sub_1C97AE67C(&unk_1EC3C9950, &qword_1EC3C8240, &qword_1C9AA28E0, MEMORY[0x1E695BDD8]);
    v45 = v68;
    v46 = v71;
    sub_1C9A91F68();

    (*(v75 + 8))(v46, v11);
    v47 = sub_1C9A69970(v19);
    v48 = swift_allocObject();
    *(v48 + 16) = v47;
    v49 = v72;
    (*(v74 + 32))(v72, v45, v69);
    v50 = v49 + *(v17 + 84);
    *v50 = 0;
    *(v50 + 8) = 0;
    *(v50 + 16) = 2;
    v51 = (v49 + *(v17 + 88));
    *v51 = sub_1C991136C;
    v51[1] = v48;
    v52 = swift_allocObject();
    *(v52 + 16) = v28;
    v53 = v52;
    v54 = swift_allocObject();
    *(v54 + 16) = v29;
    *(v54 + 24) = v30;
    v55 = swift_allocObject();
    *(v55 + 16) = v29;
    *(v55 + 24) = v30;
    v56 = swift_allocObject();
    *(v56 + 24) = v30;
    swift_unknownObjectWeakInit();
    v57 = swift_allocObject();
    v65[2] = v29;
    v58 = v57;
    v57[2] = v56;
    v57[3] = sub_1C98714C8;
    v57[4] = v53;
    v82 = v53;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_1C99113C4;
    *(v59 + 24) = v54;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_1C991133C;
    *(v60 + 24) = v55;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_1C9911370;
    *(v61 + 24) = v58;
    v62 = swift_allocObject();
    v62[2] = sub_1C987141C;
    v62[3] = v59;
    v62[4] = sub_1C99113AC;
    v62[5] = v60;
    v62[6] = sub_1C9911388;
    v62[7] = v61;
    swift_unknownObjectRetain_n();

    v63 = v76;
    sub_1C990E0A8(0, sub_1C9911354, v62, v76);

    sub_1C97AE67C(&qword_1EC3CC4F0, &qword_1EC3CC4D8, &qword_1C9AB34E8, MEMORY[0x1E695BE28]);
    v64 = v78;
    v19 = sub_1C9A91F28();
    swift_unknownObjectRelease();

    (*(v77 + 8))(v63, v64);
    sub_1C97DA1E0(v72, &qword_1EC3C8460, &qword_1C9AA3420);

    return v19;
  }

LABEL_22:
  __break(1u);
  return result;
}

char *sub_1C9907ED8(__int128 *a1, uint64_t a2, void *a3)
{
  v83 = a1;
  v4 = sub_1C97A2CEC(&qword_1EC3CC4D8, &qword_1C9AB34E8);
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v76 = v65 - v5;
  v6 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  v81 = *(v6 - 8);
  v82 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v73 = (v65 - v7);
  v8 = sub_1C9A91C28();
  v79 = *(v8 - 8);
  v80 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C97A2CEC(&qword_1EC3C8240, &qword_1C9AA28E0);
  v75 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v65 - v12;
  v14 = sub_1C97A2CEC(&unk_1EC3CC4E0, &unk_1C9AB34F0);
  v74 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v65 - v15;
  v17 = sub_1C97A2CEC(&qword_1EC3C8460, &qword_1C9AA3420);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v65 - v18;
  v20 = a3;
  v21 = v84;
  result = sub_1C985533C(v22);
  if (v21)
  {

    return v19;
  }

  v70 = v10;
  v68 = v16;
  v71 = v13;
  v84 = 0;
  v69 = v14;
  v72 = v19;
  v25 = v83[1];
  v85 = *v83;
  v86 = v25;
  v26 = v83[3];
  v87 = v83[2];
  v88 = v26;
  v27 = *(&v85 + 1);
  if ((*(&v85 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (HIDWORD(*(&v85 + 1)))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v28 = v86;
  v29 = result;
  v30 = v24;
  ObjectType = swift_getObjectType();
  v32 = *(v30 + 8);
  v33 = v84;
  (*(v32 + 8))(v27, ObjectType, v32, v28);
  if (v33)
  {

    swift_unknownObjectRelease();
    return v19;
  }

  v19 = (*(v32 + 16))(ObjectType, v32);
  sub_1C9A69F34(v19);
  (*(v30 + 32))(ObjectType, v30);
  v34 = v20;
  if (sub_1C9A6B6A4(v19) != 1 || (v35 = sub_1C9A6BD8C(v19, 0)) == 0)
  {
LABEL_17:
    sub_1C986EE54();
    swift_allocError();
    *v40 = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    return v19;
  }

  v36 = v35;
  if (sub_1C9A64668(v35) != 1)
  {

    goto LABEL_17;
  }

  sub_1C9A6681C(v36, 0);
  v38 = v37;
  v39 = v37;
  result = sub_1C9A66CAC(v36, 0);
  if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v38 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v38 < 9.22337204e18)
  {
    sub_1C97DD3BC(result, v38);
    v84 = 0;
    v41 = sub_1C98BF080();
    v65[1] = v41;

    v89 = v41;
    (*(v79 + 104))(v70, *MEMORY[0x1E695BD20], v80);
    v42 = v73;
    *v73 = sub_1C990DC68;
    v42[1] = 0;
    (*(v81 + 104))(v42, *MEMORY[0x1E695BD48], v82);
    v83 = v34;
    v67 = v36;
    sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390, &unk_1C9A9C770, MEMORY[0x1E695BED8]);
    v43 = v70;
    sub_1C9A92018();
    (*(v81 + 8))(v42, v82);
    (*(v79 + 8))(v43, v80);

    v44 = swift_allocObject();
    v66 = v19;
    *(v44 + 16) = sub_1C98063A0;
    *(v44 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C7430, &unk_1C9AA3470);
    sub_1C97AE67C(&unk_1EC3C9950, &qword_1EC3C8240, &qword_1C9AA28E0, MEMORY[0x1E695BDD8]);
    v45 = v68;
    v46 = v71;
    sub_1C9A91F68();

    (*(v75 + 8))(v46, v11);
    v47 = sub_1C9A69970(v19);
    v48 = swift_allocObject();
    *(v48 + 16) = v47;
    v49 = v72;
    (*(v74 + 32))(v72, v45, v69);
    v50 = v49 + *(v17 + 84);
    *v50 = 0;
    *(v50 + 8) = 0;
    *(v50 + 16) = 2;
    v51 = (v49 + *(v17 + 88));
    *v51 = sub_1C991136C;
    v51[1] = v48;
    v52 = swift_allocObject();
    *(v52 + 16) = v28;
    v53 = v52;
    v54 = swift_allocObject();
    *(v54 + 16) = v29;
    *(v54 + 24) = v30;
    v55 = swift_allocObject();
    *(v55 + 16) = v29;
    *(v55 + 24) = v30;
    v56 = swift_allocObject();
    *(v56 + 24) = v30;
    swift_unknownObjectWeakInit();
    v57 = swift_allocObject();
    v65[2] = v29;
    v58 = v57;
    v57[2] = v56;
    v57[3] = sub_1C98714C8;
    v57[4] = v53;
    v82 = v53;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_1C99113C4;
    *(v59 + 24) = v54;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_1C991133C;
    *(v60 + 24) = v55;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_1C9911370;
    *(v61 + 24) = v58;
    v62 = swift_allocObject();
    v62[2] = sub_1C987141C;
    v62[3] = v59;
    v62[4] = sub_1C99113AC;
    v62[5] = v60;
    v62[6] = sub_1C9911388;
    v62[7] = v61;
    swift_unknownObjectRetain_n();

    v63 = v76;
    sub_1C990E0A8(0, sub_1C9911354, v62, v76);

    sub_1C97AE67C(&qword_1EC3CC4F0, &qword_1EC3CC4D8, &qword_1C9AB34E8, MEMORY[0x1E695BE28]);
    v64 = v78;
    v19 = sub_1C9A91F28();
    swift_unknownObjectRelease();

    (*(v77 + 8))(v63, v64);
    sub_1C97DA1E0(v72, &qword_1EC3C8460, &qword_1C9AA3420);

    return v19;
  }

LABEL_22:
  __break(1u);
  return result;
}

char *sub_1C99089F4(__int128 *a1, uint64_t a2, char *a3)
{
  v80 = a3;
  v78 = a1;
  v77 = sub_1C97A2CEC(&qword_1EC3CC4D8, &qword_1C9AB34E8);
  v72 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v75 = v62 - v3;
  v73 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  v76 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v69 = (v62 - v4);
  v5 = sub_1C9A91C28();
  v74 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C97A2CEC(&qword_1EC3C8240, &qword_1C9AA28E0);
  v71 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v62 - v9;
  v11 = sub_1C97A2CEC(&unk_1EC3CC4E0, &unk_1C9AB34F0);
  v70 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v62 - v12;
  v14 = sub_1C97A2CEC(&qword_1EC3C8460, &qword_1C9AA3420);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v62 - v15;
  type metadata accessor for SNAudioOffsetEstimator(v17);
  swift_allocObject();
  v18 = v79;
  result = sub_1C99C57EC();
  if (v18)
  {

    return v10;
  }

  v66 = v7;
  v68 = v5;
  v63 = v14;
  v64 = v13;
  v79 = v10;
  v65 = v11;
  v67 = v16;
  v20 = v77;
  v21 = v80;
  v22 = v78[1];
  v81 = *v78;
  v82 = v22;
  v23 = v78[3];
  v83 = v78[2];
  v84 = v23;
  if ((*(&v81 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (HIDWORD(*(&v81 + 1)))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v24 = v82;
  v25 = result;
  v26 = sub_1C99C5FC8();
  sub_1C9A69F34(v26);
  v10 = v21;
  if (sub_1C9A6B6A4(v26) != 1)
  {
    goto LABEL_13;
  }

  v27 = sub_1C9A6BD8C(v26, 0);
  if (!v27)
  {
    goto LABEL_13;
  }

  v28 = v27;
  if (sub_1C9A64668(v27) != 1)
  {

LABEL_13:
    sub_1C986EE54();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();

    return v10;
  }

  sub_1C9A6681C(v28, 0);
  v30 = v29;
  v31 = v29;
  result = sub_1C9A66CAC(v28, 0);
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v32 = v76;
  if (v30 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v78 = v28;
  v33 = v68;
  if (v30 < 9.22337204e18)
  {
    sub_1C97DD3BC(result, v30);
    v62[3] = 0;
    v35 = sub_1C98BF080();
    v62[1] = v35;

    v85 = v35;
    (*(v74 + 104))(v66, *MEMORY[0x1E695BD20], v33);
    v36 = v69;
    *v69 = sub_1C990DC68;
    v36[1] = 0;
    (v32)[13](v36, *MEMORY[0x1E695BD48], v73);
    v62[0] = sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390, &unk_1C9A9C770, MEMORY[0x1E695BED8]);
    v37 = v66;
    sub_1C9A92018();
    (v32[1])(v36, v73);
    (*(v74 + 8))(v37, v68);

    v38 = swift_allocObject();
    *(v38 + 16) = sub_1C98063A0;
    *(v38 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C7430, &unk_1C9AA3470);
    sub_1C97AE67C(&unk_1EC3C9950, &qword_1EC3C8240, &qword_1C9AA28E0, MEMORY[0x1E695BDD8]);
    v39 = v64;
    v40 = v79;
    sub_1C9A91F68();

    (*(v71 + 8))(v40, v8);
    v41 = sub_1C9A69970(v26);
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    v43 = v67;
    (*(v70 + 32))(v67, v39, v65);
    v44 = v63;
    v45 = v43 + *(v63 + 84);
    *v45 = 0;
    *(v45 + 8) = 0;
    *(v45 + 16) = 2;
    v46 = (v43 + *(v44 + 88));
    *v46 = sub_1C991136C;
    v46[1] = v42;
    v47 = swift_allocObject();
    *(v47 + 16) = v24;
    v48 = v47;
    v49 = swift_allocObject();
    *(v49 + 16) = v25;
    *(v49 + 24) = &off_1F4948898;
    v62[2] = v25;
    v50 = v49;
    v73 = v49;
    v51 = swift_allocObject();
    v79 = v51;
    *(v51 + 16) = v25;
    *(v51 + 24) = &off_1F4948898;
    v52 = swift_allocObject();
    *(v52 + 24) = &off_1F4948898;
    swift_unknownObjectWeakInit();
    v53 = swift_allocObject();
    v53[2] = v52;
    v53[3] = sub_1C98714C8;
    v74 = v48;
    v53[4] = v48;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_1C99113C4;
    *(v54 + 24) = v50;
    v55 = v54;
    v56 = swift_allocObject();
    v57 = v79;
    *(v56 + 16) = sub_1C991133C;
    *(v56 + 24) = v57;
    v58 = swift_allocObject();
    v76 = v26;
    v59 = v58;
    *(v58 + 16) = sub_1C9911370;
    *(v58 + 24) = v53;
    v60 = swift_allocObject();
    v60[2] = sub_1C987141C;
    v60[3] = v55;
    v71 = v55;
    v60[4] = sub_1C99113AC;
    v60[5] = v56;
    v60[6] = sub_1C9911388;
    v60[7] = v59;
    swift_retain_n();

    sub_1C990E0A8(0, sub_1C9911354, v60, v75);

    sub_1C97AE67C(&qword_1EC3CC4F0, &qword_1EC3CC4D8, &qword_1C9AB34E8, MEMORY[0x1E695BE28]);
    v61 = v75;
    v10 = sub_1C9A91F28();

    (*(v72 + 8))(v61, v20);
    sub_1C97DA1E0(v67, &qword_1EC3C8460, &qword_1C9AA3420);

    return v10;
  }

LABEL_19:
  __break(1u);
  return result;
}

char *sub_1C99094EC(__int128 *a1, uint64_t a2, void *a3)
{
  v83 = a1;
  v4 = sub_1C97A2CEC(&qword_1EC3CC4D8, &qword_1C9AB34E8);
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v76 = v65 - v5;
  v6 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  v81 = *(v6 - 8);
  v82 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v73 = (v65 - v7);
  v8 = sub_1C9A91C28();
  v79 = *(v8 - 8);
  v80 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C97A2CEC(&qword_1EC3C8240, &qword_1C9AA28E0);
  v75 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v65 - v12;
  v14 = sub_1C97A2CEC(&unk_1EC3CC4E0, &unk_1C9AB34F0);
  v74 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v65 - v15;
  v17 = sub_1C97A2CEC(&qword_1EC3C8460, &qword_1C9AA3420);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v65 - v18;
  v20 = a3;
  v21 = v84;
  result = sub_1C9800210(v22);
  if (v21)
  {

    return v19;
  }

  v70 = v10;
  v68 = v16;
  v71 = v13;
  v84 = 0;
  v69 = v14;
  v72 = v19;
  v25 = v83[1];
  v85 = *v83;
  v86 = v25;
  v26 = v83[3];
  v87 = v83[2];
  v88 = v26;
  v27 = *(&v85 + 1);
  if ((*(&v85 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (HIDWORD(*(&v85 + 1)))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v28 = v86;
  v29 = result;
  v30 = v24;
  ObjectType = swift_getObjectType();
  v32 = *(v30 + 8);
  v33 = v84;
  (*(v32 + 8))(v27, ObjectType, v32, v28);
  if (v33)
  {

    swift_unknownObjectRelease();
    return v19;
  }

  v19 = (*(v32 + 16))(ObjectType, v32);
  sub_1C9A69F34(v19);
  (*(v30 + 32))(ObjectType, v30);
  v34 = v20;
  if (sub_1C9A6B6A4(v19) != 1 || (v35 = sub_1C9A6BD8C(v19, 0)) == 0)
  {
LABEL_17:
    sub_1C986EE54();
    swift_allocError();
    *v40 = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    return v19;
  }

  v36 = v35;
  if (sub_1C9A64668(v35) != 1)
  {

    goto LABEL_17;
  }

  sub_1C9A6681C(v36, 0);
  v38 = v37;
  v39 = v37;
  result = sub_1C9A66CAC(v36, 0);
  if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v38 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v38 < 9.22337204e18)
  {
    sub_1C97DD3BC(result, v38);
    v84 = 0;
    v41 = sub_1C98BF080();
    v65[1] = v41;

    v89 = v41;
    (*(v79 + 104))(v70, *MEMORY[0x1E695BD20], v80);
    v42 = v73;
    *v73 = sub_1C990DC68;
    v42[1] = 0;
    (*(v81 + 104))(v42, *MEMORY[0x1E695BD48], v82);
    v83 = v34;
    v67 = v36;
    sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390, &unk_1C9A9C770, MEMORY[0x1E695BED8]);
    v43 = v70;
    sub_1C9A92018();
    (*(v81 + 8))(v42, v82);
    (*(v79 + 8))(v43, v80);

    v44 = swift_allocObject();
    v66 = v19;
    *(v44 + 16) = sub_1C98063A0;
    *(v44 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C7430, &unk_1C9AA3470);
    sub_1C97AE67C(&unk_1EC3C9950, &qword_1EC3C8240, &qword_1C9AA28E0, MEMORY[0x1E695BDD8]);
    v45 = v68;
    v46 = v71;
    sub_1C9A91F68();

    (*(v75 + 8))(v46, v11);
    v47 = sub_1C9A69970(v19);
    v48 = swift_allocObject();
    *(v48 + 16) = v47;
    v49 = v72;
    (*(v74 + 32))(v72, v45, v69);
    v50 = v49 + *(v17 + 84);
    *v50 = 0;
    *(v50 + 8) = 0;
    *(v50 + 16) = 2;
    v51 = (v49 + *(v17 + 88));
    *v51 = sub_1C991136C;
    v51[1] = v48;
    v52 = swift_allocObject();
    *(v52 + 16) = v28;
    v53 = v52;
    v54 = swift_allocObject();
    *(v54 + 16) = v29;
    *(v54 + 24) = v30;
    v55 = swift_allocObject();
    *(v55 + 16) = v29;
    *(v55 + 24) = v30;
    v56 = swift_allocObject();
    *(v56 + 24) = v30;
    swift_unknownObjectWeakInit();
    v57 = swift_allocObject();
    v65[2] = v29;
    v58 = v57;
    v57[2] = v56;
    v57[3] = sub_1C98714C8;
    v57[4] = v53;
    v82 = v53;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_1C99113C4;
    *(v59 + 24) = v54;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_1C991133C;
    *(v60 + 24) = v55;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_1C9911370;
    *(v61 + 24) = v58;
    v62 = swift_allocObject();
    v62[2] = sub_1C987141C;
    v62[3] = v59;
    v62[4] = sub_1C99113AC;
    v62[5] = v60;
    v62[6] = sub_1C9911388;
    v62[7] = v61;
    swift_unknownObjectRetain_n();

    v63 = v76;
    sub_1C990E0A8(0, sub_1C9911354, v62, v76);

    sub_1C97AE67C(&qword_1EC3CC4F0, &qword_1EC3CC4D8, &qword_1C9AB34E8, MEMORY[0x1E695BE28]);
    v64 = v78;
    v19 = sub_1C9A91F28();
    swift_unknownObjectRelease();

    (*(v77 + 8))(v63, v64);
    sub_1C97DA1E0(v72, &qword_1EC3C8460, &qword_1C9AA3420);

    return v19;
  }

LABEL_22:
  __break(1u);
  return result;
}

char *sub_1C990A008(__int128 *a1, uint64_t a2, void *a3)
{
  v68 = a3;
  v5 = sub_1C97A2CEC(&qword_1EC3CC4D8, &qword_1C9AB34E8);
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v53 - v6;
  v7 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  v65 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v53 - v8);
  v10 = sub_1C9A91C28();
  v64 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1C97A2CEC(&qword_1EC3C8240, &qword_1C9AA28E0);
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v66 = &v53 - v13;
  v59 = sub_1C97A2CEC(&unk_1EC3CC4E0, &unk_1C9AB34F0);
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v15 = &v53 - v14;
  v16 = sub_1C97A2CEC(&qword_1EC3C8460, &qword_1C9AA3420);
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v53 - v17;
  type metadata accessor for SNSpeechEmotionEstimator(v18);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = a1[1];
  v69 = *a1;
  v70 = v20;
  v21 = a1[3];
  v71 = a1[2];
  v72 = v21;
  result = *(&v69 + 1);
  if ((*(&v69 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(*(&v69 + 1)))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23 = v70;
  sub_1C9A445B0();
  if (v3)
  {

    return v12;
  }

  v24 = sub_1C9A44554();
  sub_1C9A69F34(v24);
  if (sub_1C9A6B6A4(v24) != 1 || (v25 = sub_1C9A6BD8C(v24, 0)) == 0)
  {
LABEL_15:
    sub_1C986EE54();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();

    return v12;
  }

  v56 = v25;
  if (sub_1C9A64668(v25) != 1)
  {

    goto LABEL_15;
  }

  v55 = v24;
  v26 = v56;
  sub_1C9A6681C(v56, 0);
  v28 = v27;
  v54 = *&v27;
  result = sub_1C9A66CAC(v26, 0);
  if ((v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v28 < 9.22337204e18)
  {
    v53 = sub_1C97DD3BC(result, v28);
    v30 = sub_1C98BF080();
    v54 = v30;

    v73 = v30;
    (*(v64 + 104))(v12, *MEMORY[0x1E695BD20], v10);
    *v9 = sub_1C990DC68;
    v9[1] = 0;
    (*(v65 + 104))(v9, *MEMORY[0x1E695BD48], v7);
    v53 = sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390, &unk_1C9A9C770, MEMORY[0x1E695BED8]);
    sub_1C9A92018();
    (*(v65 + 8))(v9, v7);
    (*(v64 + 8))(v12, v10);

    v31 = swift_allocObject();
    *(v31 + 16) = sub_1C98063A0;
    *(v31 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C7430, &unk_1C9AA3470);
    sub_1C97AE67C(&unk_1EC3C9950, &qword_1EC3C8240, &qword_1C9AA28E0, MEMORY[0x1E695BDD8]);
    v32 = v60;
    v33 = v66;
    sub_1C9A91F68();

    (*(v58 + 8))(v33, v32);
    v34 = sub_1C9A69970(v55);
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    v36 = v67;
    (*(v57 + 32))(v67, v15, v59);
    v37 = v36 + *(v16 + 84);
    *v37 = 0;
    *(v37 + 8) = 0;
    *(v37 + 16) = 2;
    v38 = (v36 + *(v16 + 88));
    *v38 = sub_1C991136C;
    v38[1] = v35;
    v39 = swift_allocObject();
    *(v39 + 16) = v23;
    v40 = v39;
    v41 = swift_allocObject();
    *(v41 + 16) = v19;
    *(v41 + 24) = &off_1F4950810;
    v42 = v41;
    v64 = v41;
    v43 = swift_allocObject();
    v66 = v43;
    *(v43 + 16) = v19;
    *(v43 + 24) = &off_1F4950810;
    v44 = swift_allocObject();
    *(v44 + 24) = &off_1F4950810;
    swift_unknownObjectWeakInit();
    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = sub_1C98714C8;
    v65 = v40;
    v45[4] = v40;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_1C99113C4;
    *(v46 + 24) = v42;
    v47 = swift_allocObject();
    v48 = v66;
    *(v47 + 16) = sub_1C991133C;
    *(v47 + 24) = v48;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_1C9911370;
    *(v49 + 24) = v45;
    v50 = swift_allocObject();
    v50[2] = sub_1C987141C;
    v50[3] = v46;
    v60 = v46;
    v50[4] = sub_1C99113AC;
    v50[5] = v47;
    v50[6] = sub_1C9911388;
    v50[7] = v49;
    swift_retain_n();

    v51 = v61;
    sub_1C990E0A8(0, sub_1C9911354, v50, v61);

    sub_1C97AE67C(&qword_1EC3CC4F0, &qword_1EC3CC4D8, &qword_1C9AB34E8, MEMORY[0x1E695BE28]);
    v52 = v63;
    v12 = sub_1C9A91F28();

    (*(v62 + 8))(v51, v52);
    sub_1C97DA1E0(v67, &qword_1EC3C8460, &qword_1C9AA3420);

    return v12;
  }

LABEL_20:
  __break(1u);
  return result;
}

char *sub_1C990AAB8(__int128 *a1, uint64_t a2, void *a3)
{
  v68 = a3;
  v5 = sub_1C97A2CEC(&qword_1EC3CC4D8, &qword_1C9AB34E8);
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v53 - v6;
  v7 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  v65 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v53 - v8);
  v10 = sub_1C9A91C28();
  v64 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1C97A2CEC(&qword_1EC3C8240, &qword_1C9AA28E0);
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v66 = &v53 - v13;
  v59 = sub_1C97A2CEC(&unk_1EC3CC4E0, &unk_1C9AB34F0);
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v15 = &v53 - v14;
  v16 = sub_1C97A2CEC(&qword_1EC3C8460, &qword_1C9AA3420);
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v53 - v17;
  type metadata accessor for SNDistanceEstimator(v18);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = a1[1];
  v69 = *a1;
  v70 = v20;
  v21 = a1[3];
  v71 = a1[2];
  v72 = v21;
  result = *(&v69 + 1);
  if ((*(&v69 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(*(&v69 + 1)))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23 = v70;
  sub_1C97FCB00(SDWORD2(v69), v70);
  if (v3)
  {

    return v12;
  }

  v24 = sub_1C97FCAAC();
  sub_1C9A69F34(v24);
  if (sub_1C9A6B6A4(v24) != 1 || (v25 = sub_1C9A6BD8C(v24, 0)) == 0)
  {
LABEL_15:
    sub_1C986EE54();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();

    return v12;
  }

  v56 = v25;
  if (sub_1C9A64668(v25) != 1)
  {

    goto LABEL_15;
  }

  v55 = v24;
  v26 = v56;
  sub_1C9A6681C(v56, 0);
  v28 = v27;
  v54 = *&v27;
  result = sub_1C9A66CAC(v26, 0);
  if ((v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v28 < 9.22337204e18)
  {
    v53 = sub_1C97DD3BC(result, v28);
    v30 = sub_1C98BF080();
    v54 = v30;

    v73 = v30;
    (*(v64 + 104))(v12, *MEMORY[0x1E695BD20], v10);
    *v9 = sub_1C990DC68;
    v9[1] = 0;
    (*(v65 + 104))(v9, *MEMORY[0x1E695BD48], v7);
    v53 = sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390, &unk_1C9A9C770, MEMORY[0x1E695BED8]);
    sub_1C9A92018();
    (*(v65 + 8))(v9, v7);
    (*(v64 + 8))(v12, v10);

    v31 = swift_allocObject();
    *(v31 + 16) = sub_1C98063A0;
    *(v31 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C7430, &unk_1C9AA3470);
    sub_1C97AE67C(&unk_1EC3C9950, &qword_1EC3C8240, &qword_1C9AA28E0, MEMORY[0x1E695BDD8]);
    v32 = v60;
    v33 = v66;
    sub_1C9A91F68();

    (*(v58 + 8))(v33, v32);
    v34 = sub_1C9A69970(v55);
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    v36 = v67;
    (*(v57 + 32))(v67, v15, v59);
    v37 = v36 + *(v16 + 84);
    *v37 = 0;
    *(v37 + 8) = 0;
    *(v37 + 16) = 2;
    v38 = (v36 + *(v16 + 88));
    *v38 = sub_1C991136C;
    v38[1] = v35;
    v39 = swift_allocObject();
    *(v39 + 16) = v23;
    v40 = v39;
    v41 = swift_allocObject();
    *(v41 + 16) = v19;
    *(v41 + 24) = &off_1F49306F8;
    v42 = v41;
    v64 = v41;
    v43 = swift_allocObject();
    v66 = v43;
    *(v43 + 16) = v19;
    *(v43 + 24) = &off_1F49306F8;
    v44 = swift_allocObject();
    *(v44 + 24) = &off_1F49306F8;
    swift_unknownObjectWeakInit();
    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = sub_1C98714C8;
    v65 = v40;
    v45[4] = v40;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_1C99113C4;
    *(v46 + 24) = v42;
    v47 = swift_allocObject();
    v48 = v66;
    *(v47 + 16) = sub_1C991133C;
    *(v47 + 24) = v48;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_1C9911370;
    *(v49 + 24) = v45;
    v50 = swift_allocObject();
    v50[2] = sub_1C987141C;
    v50[3] = v46;
    v60 = v46;
    v50[4] = sub_1C99113AC;
    v50[5] = v47;
    v50[6] = sub_1C9911388;
    v50[7] = v49;
    swift_retain_n();

    v51 = v61;
    sub_1C990E0A8(0, sub_1C9911354, v50, v61);

    sub_1C97AE67C(&qword_1EC3CC4F0, &qword_1EC3CC4D8, &qword_1C9AB34E8, MEMORY[0x1E695BE28]);
    v52 = v63;
    v12 = sub_1C9A91F28();

    (*(v62 + 8))(v51, v52);
    sub_1C97DA1E0(v67, &qword_1EC3C8460, &qword_1C9AA3420);

    return v12;
  }

LABEL_20:
  __break(1u);
  return result;
}

char *sub_1C990B568(__int128 *a1, uint64_t a2, void *a3)
{
  v6 = sub_1C97A2CEC(&qword_1EC3CC4D8, &qword_1C9AB34E8);
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v71 = v63 - v7;
  v8 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  v75 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v63 - v9);
  v11 = sub_1C9A91C28();
  v74 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1C97A2CEC(&qword_1EC3C8240, &qword_1C9AA28E0);
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v76 = v63 - v14;
  v69 = sub_1C97A2CEC(&unk_1EC3CC4E0, &unk_1C9AB34F0);
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v66 = v63 - v15;
  v16 = sub_1C97A2CEC(&qword_1EC3C8460, &qword_1C9AA3420);
  MEMORY[0x1EEE9AC00](v16);
  v77 = v63 - v17;
  type metadata accessor for SNShazamSignatureGenerator(v18);
  swift_allocObject();
  v78 = a3;
  v26 = sub_1C9994CFC(v78, v19, v20, v21, v22, v23, v24, v25);
  v27 = a1[1];
  v79 = *a1;
  v80 = v27;
  v28 = a1[3];
  v81 = a1[2];
  v82 = v28;
  result = *(&v79 + 1);
  if ((*(&v79 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(*(&v79 + 1)))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v30 = v80;
  sub_1C99955D8(SDWORD2(v79), v80);
  if (v3)
  {

    return v13;
  }

  v31 = sub_1C999557C();
  sub_1C9A69F34(v31);
  if (sub_1C9A6B6A4(v31) != 1 || (v32 = sub_1C9A6BD8C(v31, 0)) == 0)
  {
LABEL_15:
    sub_1C986EE54();
    swift_allocError();
    *v38 = 0;
    swift_willThrow();

    return v13;
  }

  v33 = v32;
  if (sub_1C9A64668(v32) != 1)
  {

    goto LABEL_15;
  }

  sub_1C9A6681C(v33, 0);
  v35 = v34;
  v36 = v33;
  v37 = v34;
  v65 = v36;
  result = sub_1C9A66CAC(v36, 0);
  if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v35 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v35 < 9.22337204e18)
  {
    v64 = sub_1C97DD3BC(result, v35);
    v39 = sub_1C98BF080();
    v63[2] = v39;

    v83 = v39;
    (*(v74 + 104))(v13, *MEMORY[0x1E695BD20], v11);
    *v10 = sub_1C990DC68;
    v10[1] = 0;
    (*(v75 + 104))(v10, *MEMORY[0x1E695BD48], v8);
    v64 = v31;
    v63[1] = sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390, &unk_1C9A9C770, MEMORY[0x1E695BED8]);
    sub_1C9A92018();
    (*(v75 + 8))(v10, v8);
    (*(v74 + 8))(v13, v11);

    v40 = swift_allocObject();
    *(v40 + 16) = sub_1C98063A0;
    *(v40 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C7430, &unk_1C9AA3470);
    sub_1C97AE67C(&unk_1EC3C9950, &qword_1EC3C8240, &qword_1C9AA28E0, MEMORY[0x1E695BDD8]);
    v41 = v66;
    v42 = v70;
    v43 = v76;
    sub_1C9A91F68();

    (*(v68 + 8))(v43, v42);
    v44 = sub_1C9A69970(v64);
    v45 = swift_allocObject();
    *(v45 + 16) = v44;
    v46 = v77;
    (*(v67 + 32))(v77, v41, v69);
    v47 = v46 + *(v16 + 84);
    *v47 = 0;
    *(v47 + 8) = 0;
    *(v47 + 16) = 2;
    v48 = (v46 + *(v16 + 88));
    *v48 = sub_1C991136C;
    v48[1] = v45;
    v49 = swift_allocObject();
    *(v49 + 16) = v30;
    v50 = v49;
    v51 = swift_allocObject();
    *(v51 + 16) = v26;
    *(v51 + 24) = &off_1F4945ED8;
    v52 = v51;
    v74 = v51;
    v53 = swift_allocObject();
    v76 = v53;
    *(v53 + 16) = v26;
    *(v53 + 24) = &off_1F4945ED8;
    v54 = swift_allocObject();
    *(v54 + 24) = &off_1F4945ED8;
    swift_unknownObjectWeakInit();
    v55 = swift_allocObject();
    v55[2] = v54;
    v55[3] = sub_1C98714C8;
    v75 = v50;
    v55[4] = v50;
    v56 = swift_allocObject();
    *(v56 + 16) = sub_1C99113C4;
    *(v56 + 24) = v52;
    v57 = swift_allocObject();
    v58 = v76;
    *(v57 + 16) = sub_1C991133C;
    *(v57 + 24) = v58;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_1C9911370;
    *(v59 + 24) = v55;
    v60 = swift_allocObject();
    v60[2] = sub_1C987141C;
    v60[3] = v56;
    v70 = v56;
    v60[4] = sub_1C99113AC;
    v60[5] = v57;
    v60[6] = sub_1C9911388;
    v60[7] = v59;
    swift_retain_n();

    v61 = v71;
    sub_1C990E0A8(0, sub_1C9911354, v60, v71);

    sub_1C97AE67C(&qword_1EC3CC4F0, &qword_1EC3CC4D8, &qword_1C9AB34E8, MEMORY[0x1E695BE28]);
    v62 = v73;
    v13 = sub_1C9A91F28();

    (*(v72 + 8))(v61, v62);
    sub_1C97DA1E0(v77, &qword_1EC3C8460, &qword_1C9AA3420);

    return v13;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_1C990C018(__int128 *a1, uint64_t a2, void *a3)
{
  v96 = a1;
  sub_1C97A2CEC(&qword_1EC3CC4D8, &qword_1C9AB34E8);
  sub_1C97AE9C8();
  v90 = v6;
  v91 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AC02C();
  v89 = v8;
  sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  sub_1C97AE9C8();
  v94 = v10;
  v95 = v9;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AC02C();
  v86 = v12;
  sub_1C9A91C28();
  sub_1C97AE9C8();
  v92 = v14;
  v93 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C97A2CEC(&qword_1EC3C8240, &qword_1C9AA28E0);
  sub_1C97AE9C8();
  v88 = v18;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = (v78 - v20);
  v22 = sub_1C97A2CEC(&unk_1EC3CC4E0, &unk_1C9AB34F0);
  sub_1C97AE9C8();
  v87 = v23;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C97E86E4();
  v25 = sub_1C97A2CEC(&qword_1EC3C8460, &qword_1C9AA3420);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v78 - v27;
  v29 = a3;
  v30 = v97;
  sub_1C997DC98(v31);
  if (v30)
  {

LABEL_8:
    sub_1C97E87F4();
    return;
  }

  v83 = v16;
  v81 = v3;
  v84 = v21;
  v97 = 0;
  v82 = v22;
  v85 = v28;
  v34 = v96[1];
  v98 = *v96;
  v99 = v34;
  v35 = v96[3];
  v100 = v96[2];
  v101 = v35;
  v36 = *(&v98 + 1);
  if ((*(&v98 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (HIDWORD(*(&v98 + 1)))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v37 = v99;
  v38 = v32;
  v39 = v33;
  ObjectType = swift_getObjectType();
  v41 = *(v39 + 8);
  v42 = v97;
  (*(v41 + 8))(v36, ObjectType, v41, v37);
  if (v42)
  {

    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v43 = (*(v41 + 16))(ObjectType, v41);
  sub_1C9A69F34(v43);
  (*(v39 + 32))(ObjectType, v39);
  v44 = v29;
  if (sub_1C9A6B6A4(v43) != 1 || (v45 = sub_1C9A6BD8C(v43, 0)) == 0)
  {
LABEL_17:
    sub_1C986EE54();
    swift_allocError();
    *v51 = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v46 = v45;
  if (sub_1C9A64668(v45) != 1)
  {

    goto LABEL_17;
  }

  sub_1C9A6681C(v46, 0);
  v48 = v47;
  v49 = v47;
  v50 = sub_1C9A66CAC(v46, 0);
  if ((*&v49 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v48 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v48 < 9.22337204e18)
  {
    sub_1C97DD3BC(v50, v48);
    v97 = 0;
    v52 = sub_1C98BF080();
    v78[1] = v52;

    v102 = v52;
    (*(v92 + 104))(v83, *MEMORY[0x1E695BD20], v93);
    v53 = v86;
    *v86 = sub_1C990DC68;
    v53[1] = 0;
    (*(v94 + 104))(v53, *MEMORY[0x1E695BD48], v95);
    v96 = v44;
    v80 = v46;
    sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
    sub_1C97AE9EC();
    sub_1C97AE67C(v54, &unk_1EC3C7390, &unk_1C9A9C770, v55);
    v56 = v83;
    sub_1C9A92018();
    (*(v94 + 8))(v53, v95);
    (*(v92 + 8))(v56, v93);

    sub_1C97AA878();
    swift_allocObject();
    v79 = v43;
    sub_1C9911450();
    *(v57 + 16) = v58;
    *(v57 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C7430, &unk_1C9AA3470);
    sub_1C98FA328(&unk_1EC3C9950, &qword_1EC3C8240, &qword_1C9AA28E0);
    v59 = v81;
    v60 = v84;
    sub_1C9A91F68();

    (*(v88 + 8))(v60, v17);
    sub_1C9A69970(v43);
    sub_1C97F07FC();
    v61 = swift_allocObject();
    sub_1C99114E4(v61);
    v62 = v85;
    v63(v85, v59, v82);
    sub_1C99114FC(*(v25 + 84));
    v64 = (v62 + *(v25 + 88));
    *v64 = sub_1C991136C;
    v64[1] = v60;
    sub_1C97F07FC();
    v65 = swift_allocObject();
    *(v65 + 16) = v37;
    v66 = v65;
    sub_1C97AA878();
    v67 = swift_allocObject();
    *(v67 + 16) = v38;
    *(v67 + 24) = v39;
    sub_1C97AA878();
    v68 = swift_allocObject();
    *(v68 + 16) = v38;
    *(v68 + 24) = v39;
    sub_1C97AA878();
    v69 = swift_allocObject();
    *(v69 + 24) = v39;
    swift_unknownObjectWeakInit();
    v70 = swift_allocObject();
    v78[2] = v38;
    v71 = v70;
    v70[2] = v69;
    v70[3] = sub_1C98714C8;
    v70[4] = v66;
    v95 = v66;
    sub_1C97AA878();
    v72 = swift_allocObject();
    *(v72 + 16) = sub_1C99113C4;
    *(v72 + 24) = v67;
    sub_1C97AA878();
    v73 = swift_allocObject();
    *(v73 + 16) = sub_1C991133C;
    *(v73 + 24) = v68;
    sub_1C97AA878();
    v74 = swift_allocObject();
    *(v74 + 16) = sub_1C9911370;
    *(v74 + 24) = v71;
    v75 = swift_allocObject();
    v75[2] = sub_1C987141C;
    v75[3] = v72;
    v75[4] = sub_1C99113AC;
    v75[5] = v73;
    v75[6] = sub_1C9911388;
    v75[7] = v74;
    swift_unknownObjectRetain_n();

    v76 = v89;
    sub_1C990E0A8(0, sub_1C9911354, v75, v89);

    sub_1C98352F0(&qword_1EC3CC4F0, &qword_1EC3CC4D8, &qword_1C9AB34E8);
    v77 = v91;
    sub_1C9A91F28();
    swift_unknownObjectRelease();

    (*(v90 + 8))(v76, v77);
    sub_1C97DA1E0(v85, &qword_1EC3C8460, &qword_1C9AA3420);

    goto LABEL_8;
  }

LABEL_22:
  __break(1u);
}

void *sub_1C990CA40(void *a1, const void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v108 = a2;
  v109 = a6;
  v110 = a1;
  v111 = a5;
  sub_1C97A2CEC(&qword_1EC3CC4D8, &qword_1C9AB34E8);
  sub_1C97AE9C8();
  v104 = v8;
  v105 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AC02C();
  v103 = v10;
  v107 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  sub_1C97AE9C8();
  v100 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97AC02C();
  v99 = v13;
  v106 = sub_1C9A91C28();
  sub_1C97AE9C8();
  v98 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C97A2CEC(&qword_1EC3C8240, &qword_1C9AA28E0);
  sub_1C97AE9C8();
  v102 = v19;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v90 - v21);
  v23 = sub_1C97A2CEC(&unk_1EC3CC4E0, &unk_1C9AB34F0);
  sub_1C97AE9C8();
  v101 = v24;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v90 - v26;
  v28 = sub_1C97A2CEC(&qword_1EC3C8460, &qword_1C9AA3420);
  sub_1C97DA940();
  sub_1C97ABFF0();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v90 - v31;
  v33 = v113;
  v34 = a3(v30);
  if (v33)
  {
    return sub_1C97E87F4();
  }

  v36 = v34;
  v92 = v17;
  v93 = v28;
  v94 = v27;
  v96 = v22;
  v95 = v23;
  v113 = v35;
  v97 = v32;
  v37 = v108;
  memcpy(__dst, v108, 0x41uLL);
  v38 = v109;
  v39 = (*(v109 + 8))(__dst, v111, v109);
  v41 = v40;
  v42 = v39;
  v43 = v36;
  ObjectType = swift_getObjectType();
  v45 = v113[1];
  (*(v45 + 8))(v42, ObjectType, v45, v41);
  v47 = (*(v45 + 16))(ObjectType, v45);
  sub_1C9A69F34(v47);
  (v113[4])(ObjectType);
  if (sub_1C9A6B6A4(v47) != 1)
  {
    goto LABEL_12;
  }

  v48 = sub_1C9A6BD8C(v47, 0);
  if (!v48)
  {
    goto LABEL_12;
  }

  v49 = v48;
  if (sub_1C9A64668(v48) != 1)
  {

LABEL_12:
    sub_1C986EE54();
    swift_allocError();
    *v56 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    return sub_1C97E87F4();
  }

  v50 = v43;
  sub_1C9A6681C(v49, 0);
  v52 = v51;
  v53 = v51;
  v54 = sub_1C9A66CAC(v49, 0);
  result = memcpy(__dst, v37, 0x41uLL);
  if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  v55 = v107;
  if (v52 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v52 < 9.22337204e18)
  {
    (*(v38 + 16))(__dst, v54, v52, v111, v38);
    v111 = 0;
    v57 = sub_1C98BF080();
    v109 = v57;

    __dst[0] = v57;
    v58 = v98;
    v59 = v92;
    (*(v98 + 104))(v92, *MEMORY[0x1E695BD20], v106);
    v60 = v50;
    v61 = v99;
    *v99 = sub_1C990DC68;
    v61[1] = 0;
    v62 = v100;
    (*(v100 + 104))(v61, *MEMORY[0x1E695BD48], v55);
    v91 = v60;
    sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
    v110 = v49;
    sub_1C97AE9EC();
    sub_1C97AE67C(v63, &unk_1EC3C7390, &unk_1C9A9C770, v64);
    sub_1C9A92018();
    (*(v62 + 8))(v61, v55);
    (*(v58 + 8))(v59, v106);

    sub_1C97AA878();
    swift_allocObject();
    sub_1C9911450();
    *(v65 + 16) = v66;
    *(v65 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C7430, &unk_1C9AA3470);
    sub_1C98FA328(&unk_1EC3C9950, &qword_1EC3C8240, &qword_1C9AA28E0);
    v67 = v94;
    v68 = v96;
    sub_1C9A91F68();

    (*(v102 + 8))(v68, v18);
    sub_1C9A69970(v47);
    sub_1C97F07FC();
    v69 = swift_allocObject();
    sub_1C99114E4(v69);
    v70 = v97;
    v71(v97, v67, v95);
    sub_1C99114FC(*(v93 + 84));
    v73 = (v70 + *(v72 + 88));
    *v73 = sub_1C9812ECC;
    v73[1] = v68;
    sub_1C97F07FC();
    v74 = swift_allocObject();
    *(v74 + 16) = v41;
    v75 = v74;
    sub_1C97AA878();
    v76 = swift_allocObject();
    v77 = v91;
    v78 = v113;
    *(v76 + 16) = v91;
    *(v76 + 24) = v78;
    v79 = v76;
    sub_1C97AA878();
    v80 = swift_allocObject();
    *(v80 + 16) = v77;
    *(v80 + 24) = v78;
    sub_1C97AA878();
    v81 = swift_allocObject();
    *(v81 + 24) = v78;
    swift_unknownObjectWeakInit();
    v82 = swift_allocObject();
    v82[2] = v81;
    v82[3] = sub_1C986EE20;
    v109 = v75;
    v82[4] = v75;
    sub_1C97AA878();
    v83 = swift_allocObject();
    *(v83 + 16) = sub_1C9910B04;
    *(v83 + 24) = v79;
    sub_1C97AA878();
    v84 = swift_allocObject();
    v113 = v47;
    v85 = v84;
    *(v84 + 16) = sub_1C9910B20;
    *(v84 + 24) = v80;
    sub_1C97AA878();
    v86 = swift_allocObject();
    *(v86 + 16) = sub_1C9910B3C;
    *(v86 + 24) = v82;
    v87 = swift_allocObject();
    v87[2] = sub_1C98068D4;
    v87[3] = v83;
    v87[4] = sub_1C9812F18;
    v87[5] = v85;
    v87[6] = sub_1C9910B5C;
    v87[7] = v86;
    swift_unknownObjectRetain_n();

    v88 = v103;
    sub_1C990E0A8(0, sub_1C9910B84, v87, v103);

    sub_1C98352F0(&qword_1EC3CC4F0, &qword_1EC3CC4D8, &qword_1C9AB34E8);
    v89 = v105;
    sub_1C9A91F28();
    swift_unknownObjectRelease();

    (*(v104 + 8))(v88, v89);
    sub_1C97DA1E0(v97, &qword_1EC3C8460, &qword_1C9AA3420);
    return sub_1C97E87F4();
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C990D4F4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_1C9911468(a1, a2, a3, a4, a5, a6, a7, a8, v13);
  v10 = *(v9 + 32);
  v11 = sub_1C97DD31C(v14);
  if (v8)
  {
    return v10;
  }

  v10 = *(v11 + 24);

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v10))
  {
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C990D56C(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v12 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97FB2C8();
  memcpy(__dst, a1, 0x41uLL);
  (*(a4 + 16))(a2, a4);
  v14 = (*(a5 + 8))(__dst, AssociatedTypeWitness, a5);
  (*(v12 + 8))(v5, AssociatedTypeWitness);
  return v14;
}

uint64_t sub_1C990D6C8()
{
  sub_1C99114B4();
  v3 = v2;
  memcpy(__dst, v2, 0x41uLL);
  v7 = v1;
  v8 = v0;
  sub_1C97A6264(v3, &v5);
  sub_1C97DD36C(__dst);
  sub_1C97DA1E0(__dst, &unk_1EC3C9940, &unk_1C9AA5510);
  return sub_1C97E87F4();
}

uint64_t sub_1C990D758(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v14 = v13;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &__dst[-v16 - 8];
  memcpy(__dst, a1, 0x41uLL);
  (*(a6 + 16))(a4, a6);
  v18 = (*(a7 + 16))(__dst, a2, v20, AssociatedTypeWitness, a7);
  (*(v14 + 8))(v17, AssociatedTypeWitness);
  return v18;
}

uint64_t sub_1C990D8BC(uint64_t a1, uint64_t a2)
{
  sub_1C99D6788(a2);
  if (v3)
  {
    return v2;
  }

  v2 = v4;

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v2))
  {
    return v2;
  }

  __break(1u);
  return result;
}

void sub_1C990D920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C97E80D8();
  v8 = sub_1C97E812C();
  v9 = sub_1C97E8180();
  sub_1C98BEFD0(v9, a2, a3, &type metadata for EmptyAudioSourceConfiguration, v7, v8, v9, &v17);
  v16 = v17;
  WitnessTable = swift_getWitnessTable();
  sub_1C98BF4E8(&v16, a4, WitnessTable, v11, v12, v13, v14, v15, v16, *(&v16 + 1), v17, *(&v17 + 1), v18, v19, v20, v21, v22, v23, vars0, vars8);
}

uint64_t sub_1C990DAE8()
{
  sub_1C99114B4();
  v3 = v2;
  memcpy(__dst, v2, 0x41uLL);
  memcpy(v6, v3, 0x41uLL);
  v7 = v1;
  v8 = v0;
  sub_1C97A6264(__dst, v5);
  sub_1C97DD36C(v6);
  sub_1C97DA1E0(v6, &unk_1EC3C9940, &unk_1C9AA5510);
  return sub_1C97E87F4();
}

uint64_t sub_1C990DBB8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_1C9911468(a1, a2, a3, a4, a5, a6, a7, a8, v18);
  v9 = v8[1];
  v20 = *v8;
  v21 = v9;
  v22 = *(v8 + 4);
  return sub_1C990D4F4(v19, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1C990DC00()
{
  sub_1C99114B4();
  memcpy(__dst, v1, sizeof(__dst));
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = *(v0 + 4);
  return sub_1C990D6C8();
}

uint64_t sub_1C990DC68@<X0>(uint64_t *a1@<X8>)
{
  sub_1C986EE54();
  result = swift_allocError();
  *a1 = result;
  *v3 = 3;
  return result;
}

uint64_t sub_1C990DD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(a4 + 24);
    ObjectType = swift_getObjectType();
    a6 = (*(v11 + 16))(a2, a3, a5, a6, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C986EE54();
    swift_allocError();
    *v13 = 4;
    swift_willThrow();
  }

  return a6;
}

uint64_t sub_1C990DE5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1C9A93258();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - v8;
  v12[1] = *a1;
  swift_unknownObjectRetain();
  sub_1C97A2CEC(&unk_1EC3C8670, &unk_1C9AA0730);
  if (swift_dynamicCast())
  {
    sub_1C97ACC50(v9, 0, 1, a2);
    return (*(*(a2 - 8) + 32))(a3, v9, a2);
  }

  else
  {
    sub_1C97ACC50(v9, 1, 1, a2);
    (*(v7 + 8))(v9, v6);
    sub_1C986EE54();
    swift_allocError();
    *v11 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1C990E0A8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v19[1] = a4;
  v9 = sub_1C97A2CEC(&qword_1EC3CC4F8, &qword_1C9AB3500);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v19 - v10;
  v19[0] = sub_1C97A2CEC(&qword_1EC3CC500, &qword_1C9AB3508);
  MEMORY[0x1EEE9AC00](v19[0]);
  v13 = v19 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a1;
  sub_1C9812F64(v5, v11, &qword_1EC3C8460, &qword_1C9AA3420);
  v15 = &v11[*(v9 + 52)];
  *v15 = sub_1C9910B9C;
  v15[1] = v14;
  v16 = &v11[*(v9 + 56)];
  *v16 = sub_1C99109CC;
  *(v16 + 1) = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1C9910A1C;
  *(v17 + 24) = 0;

  sub_1C97A2CEC(&qword_1EC3CC508, &unk_1C9AB3510);
  sub_1C97AE67C(&qword_1EC3CC510, &qword_1EC3CC4F8, &qword_1C9AB3500, &unk_1C9AC4ED0);
  sub_1C97AE67C(&qword_1EC3CC518, &qword_1EC3CC508, &unk_1C9AB3510, MEMORY[0x1E695BDA0]);
  sub_1C9A92078();

  sub_1C97DA1E0(v11, &qword_1EC3CC4F8, &qword_1C9AB3500);
  sub_1C97A2CEC(&unk_1EC3C8670, &unk_1C9AA0730);
  sub_1C97AE67C(&unk_1EC3CC520, &qword_1EC3CC500, &qword_1C9AB3508, &unk_1C9ABD308);
  sub_1C9A92048();
  return sub_1C97DA1E0(v13, &qword_1EC3CC500, &qword_1C9AB3508);
}

uint64_t sub_1C990E3A4@<X0>(uint64_t a1@<X8>)
{
  sub_1C9911438(a1);
  v6 = sub_1C97A2CEC(&qword_1EC3CC570, &qword_1C9AB3550);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C99114D4();
  sub_1C97A2CEC(&unk_1EC3CC578, &qword_1C9AB3558);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97E86E4();
  sub_1C9911528();
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = v5;
  *(v9 + 32) = v3;
  v10 = sub_1C97CB094();
  sub_1C9812F64(v10, v11, v12, v13);
  v14 = (v1 + *(v6 + 52));
  *v14 = sub_1C9910C6C;
  v14[1] = v9;
  v15 = (v1 + *(v6 + 56));
  *v15 = sub_1C9910C1C;
  v15[1] = 0;
  sub_1C97AA878();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1C9910CAC;
  *(v16 + 24) = 0;

  sub_1C97A2CEC(&qword_1EC3CC588, &qword_1C9AB3568);
  sub_1C99113F4();
  sub_1C991151C();
  sub_1C97AE67C(v17, v18, v19, v20);
  v21 = sub_1C991140C(&qword_1EC3CC598);
  sub_1C9911488(v21, v22, v23, v24, v25, v26, v21);

  sub_1C991151C();
  sub_1C97DA1E0(v27, v28, v29);
  sub_1C99113DC();
  sub_1C97AE67C(v30, &unk_1EC3CC578, &qword_1C9AB3558, v31);
  sub_1C99114C4();
  sub_1C9A92048();
  return sub_1C97DA1E0(v4, &unk_1EC3CC578, &qword_1C9AB3558);
}

uint64_t sub_1C990E5E0@<X0>(uint64_t a1@<X8>)
{
  sub_1C9911438(a1);
  v6 = sub_1C97A2CEC(&qword_1EC3CC5C8, &qword_1C9AB3598);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C99114D4();
  sub_1C97A2CEC(&unk_1EC3CC5D0, &unk_1C9AB35A0);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97E86E4();
  sub_1C9911528();
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = v5;
  *(v9 + 32) = v3;
  v10 = sub_1C97CB094();
  sub_1C9812F64(v10, v11, v12, v13);
  v14 = (v1 + *(v6 + 52));
  *v14 = sub_1C9910D5C;
  v14[1] = v9;
  v15 = (v1 + *(v6 + 56));
  *v15 = sub_1C99109CC;
  v15[1] = 0;
  sub_1C97AA878();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1C9910D9C;
  *(v16 + 24) = 0;

  sub_1C97A2CEC(&qword_1EC3CC5E0, &qword_1C9AB35B0);
  sub_1C99113F4();
  sub_1C991151C();
  sub_1C97AE67C(v17, v18, v19, v20);
  v21 = sub_1C991140C(&qword_1EC3CC5F0);
  sub_1C9911488(v21, v22, v23, v24, v25, v26, v21);

  sub_1C991151C();
  sub_1C97DA1E0(v27, v28, v29);
  sub_1C99113DC();
  sub_1C97AE67C(v30, &unk_1EC3CC5D0, &unk_1C9AB35A0, v31);
  sub_1C99114C4();
  sub_1C9A92048();
  return sub_1C97DA1E0(v4, &unk_1EC3CC5D0, &unk_1C9AB35A0);
}

uint64_t sub_1C990E81C@<X0>(uint64_t a1@<X8>)
{
  sub_1C9911438(a1);
  v6 = sub_1C97A2CEC(&qword_1EC3CC630, &qword_1C9AB35E0);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C99114D4();
  sub_1C97A2CEC(&qword_1EC3CC638, &qword_1C9AB35E8);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97FB2C8();
  sub_1C9911528();
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = v5;
  *(v9 + 32) = v3;
  v10 = sub_1C97CB094();
  sub_1C9812F64(v10, v11, v12, v13);
  v14 = (v1 + *(v6 + 52));
  *v14 = sub_1C9910EDC;
  v14[1] = v9;
  v15 = (v1 + *(v6 + 56));
  *v15 = sub_1C99109CC;
  v15[1] = 0;
  sub_1C97AA878();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1C9910F1C;
  *(v16 + 24) = 0;

  sub_1C97A2CEC(&qword_1EC3CC640, &qword_1C9AB35F0);
  sub_1C99113F4();
  sub_1C97AE67C(v17, &qword_1EC3CC630, &qword_1C9AB35E0, v18);
  sub_1C991140C(&unk_1EC3CC650);
  sub_1C9A92078();

  sub_1C97DA1E0(v1, &qword_1EC3CC630, &qword_1C9AB35E0);
  sub_1C97BD318(v19, 0, &qword_1EC3C56D8, off_1E83458A0);
  sub_1C99113DC();
  sub_1C97AE67C(v20, &qword_1EC3CC638, &qword_1C9AB35E8, v21);
  sub_1C99114C4();
  sub_1C9A92048();
  return sub_1C97DA1E0(v4, &qword_1EC3CC638, &qword_1C9AB35E8);
}

void **sub_1C990EA94(uint64_t a1, void **a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, _DWORD *, char *, uint64_t *, uint64_t, void *, void **, uint64_t, uint64_t, int64_t *, int *, uint64_t *), void (*a6)(void *, void **, char *, uint64_t, uint64_t, int64_t *, int *, uint64_t *))
{
  v62[3] = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v57 = *(a1 + 8);
  v12 = &v56;
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v55 = 0;
  v56 = v11;
  v58 = v13;
  v59 = v14;
  v60 = v15;
  v61 = v16;
  v17 = *(a1 + 56);
  v18 = v16 - v15;
  if (v16 < v15)
  {
    goto LABEL_38;
  }

  if (__OFSUB__(v16, v15))
  {
    goto LABEL_39;
  }

  v6 = a2;
  v48 = a5;
  v51 = v7;
  v50 = v17;
  v49 = a6;
  v19 = *a2;
  sub_1C9812F64(a1, v54, a3, a4);
  sub_1C9A6C564(v19);
  if (sub_1C9A6BA18(v19))
  {
    result = sub_1C9A6C178(v19, 0);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v21 = result;
    v22 = sub_1C9A65F04(result, 0);

    v9 = v22;
  }

  else
  {
    v9 = 0;
  }

  v10 = v55;
  v8 = v9 * v55;
  v23 = (v9 * v55) >> 64;
  v24 = v23 != (v9 * v55) >> 63;
  if (v23 != (v9 * v55) >> 63)
  {
    goto LABEL_40;
  }

  if (v8 < 0)
  {
    goto LABEL_41;
  }

  isStackAllocationSafe = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    v27 = 0;
    v26 = v55;
    if (!v24)
    {
      goto LABEL_11;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  isStackAllocationSafe = sub_1C9A92838();
  *(isStackAllocationSafe + 16) = v8;
  v26 = v55;
  v27 = v9 * v55;
  if ((v9 * v55) >> 64 != (v9 * v55) >> 63)
  {
    goto LABEL_34;
  }

LABEL_11:
  if (v8 < v27)
  {
    goto LABEL_42;
  }

  *(isStackAllocationSafe + 16) = v27;
  v54[0] = isStackAllocationSafe;
  v54[1] = v9;
  v54[2] = v10;
  v53 = 0;
  if ((v26 & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

  if (HIDWORD(v26))
  {
    goto LABEL_44;
  }

  v52 = v26;
  v10 = v14 - v13;
  if (__OFSUB__(v14, v13))
  {
    goto LABEL_45;
  }

  v9 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
    goto LABEL_46;
  }

  if (v9 > 0x7FFFFFFFFFFFFFFLL)
  {
    goto LABEL_47;
  }

  v28 = 16 * (v9 & ~(v9 >> 63));
  v8 = v28 + 24;
  if (__OFADD__(v28, 24))
  {
    goto LABEL_48;
  }

  if (v8 < 0)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v8 >= 1025)
  {
    goto LABEL_49;
  }

  do
  {
    v14 = &v47;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v13 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v10))
    {
      *v13 = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v11;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_23;
      }

      goto LABEL_54;
    }

    __break(1u);
LABEL_54:
    sub_1C97E72E0(v11, v29, v30, v31);
    v11 = v45;
    v56 = v45;
LABEL_23:
    v33 = *(v11 + 16);
    v12[7] = v11 + 32;
    v12[8] = v33;
    v34 = v51;
    v35 = sub_1C97E4D08(v10, &v56, v62);
    v12 = v35;
    if (!v10)
    {
LABEL_30:
      v49(v54, v6, &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v50, &v55, &v52, &v53);

      v56 = v11;
      if (!v34)
      {
        goto LABEL_58;
      }

      swift_willThrow();
      goto LABEL_32;
    }

    if (v9 >= *(v35 + 16))
    {
      __break(1u);
      goto LABEL_56;
    }

    v36 = v13 + 4;
    v37 = (v35 + 40);
    v38 = (v35 + 40);
    while (1)
    {
      v40 = *v38;
      v38 += 2;
      v39 = v40;
      if ((v40 - 0x2000000000000000) >> 62 != 3)
      {
        break;
      }

      v41 = 4 * v39;
      if ((v41 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      if (HIDWORD(v41))
      {
        goto LABEL_37;
      }

      v42 = *(v37 - 1);
      *(v36 - 2) = 1;
      *(v36 - 1) = v41;
      *v36 = v42;
      v36 += 2;
      v37 = v38;
      if (!--v10)
      {
        goto LABEL_30;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while ((isStackAllocationSafe & 1) != 0);
  v43 = swift_slowAlloc();
  v44 = v51;
  v48(v43, v43 + v8, v13, v14, &v56, 4, v54, v6, v18, v50, &v55, &v52, &v53);
  sub_1C98135FC();
  if (v44)
  {
    MEMORY[0x1CCA93280]();
LABEL_32:

    return v6;
  }

LABEL_57:
  MEMORY[0x1CCA93280]();
LABEL_58:
  v46 = v6[2];
  swift_beginAccess();
  v6 = *(v46 + 2);

  *(v46 + 2) = MEMORY[0x1E69E7CC0];

  return v6;
}

void *sub_1C990EF14(uint64_t (*a1)(id *, uint64_t, uint64_t), uint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  sub_1C97A2CEC(a4, a5);
  sub_1C97F07FC();
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x1E69E7CC0];

  v11 = a1(&v42, a6, v10);

  if (v6)
  {

    return v11;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_22;
  }

  if (qword_1EC3C57B8 != -1)
  {
    swift_once();
  }

  if (byte_1EC3D3138 != 1)
  {
    goto LABEL_22;
  }

  if (qword_1EC3C5BA8 != -1)
  {
    swift_once();
  }

  v12 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  v13 = sub_1C99B590C();
  v15 = v14;

  v16 = 0;
  if ((v15 & 1) != 0 || !v13)
  {
    goto LABEL_23;
  }

  v17 = objc_opt_self();
  v18 = sub_1C9A72724(v17, v11);
  type metadata accessor for SNUtils(v19);
  sub_1C9A16CF4(&v41);
  sub_1C9812F64(&v41, v40, &unk_1EC3C5E60, qword_1C9A9AE10);
  if (!v40[3])
  {
    sub_1C97DA1E0(v40, &unk_1EC3C5E60, qword_1C9A9AE10);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v20 = 0;
    goto LABEL_17;
  }

  if (v18 & 1 | ((v39 & 1) == 0))
  {
    v20 = v39 & 1;
LABEL_17:
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64(&qword_1EC3C5520);
    }

    v21 = sub_1C9A91B58();
    sub_1C97BFF6C(v21, qword_1EC3D3108);
    v22 = v11;
    v23 = sub_1C9A91B38();
    v24 = sub_1C9A92FA8();

    if (os_log_type_enabled(v23, v24))
    {
      v37 = v20;
      v25 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40[0] = v38;
      *v25 = 136315650;
      v26 = sub_1C9A6B3E4(v22);
      v36 = v18;
      v27 = sub_1C9A924A8();
      v29 = v28;

      v30 = sub_1C9849140(v27, v29, v40);

      *(v25 + 4) = v30;
      *(v25 + 12) = 1024;
      *(v25 + 14) = v36 ^ 1;
      *(v25 + 18) = 1024;
      *(v25 + 20) = v37;
      _os_log_impl(&dword_1C9788000, v23, v24, "Refusing to publish graph for tuning: %s. Boxes can be tuned? %{BOOL}d; Process is entitled? %{BOOL}d", v25, 0x18u);
      sub_1C97A592C(v38);
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
    }

    sub_1C97DA1E0(&v41, &unk_1EC3C5E60, qword_1C9A9AE10);
LABEL_22:
    v16 = 0;
    goto LABEL_23;
  }

  v34 = objc_allocWithZone(SNTunableDSPGraphHost);
  v16 = sub_1C994AE00(v11);
  sub_1C97DA1E0(&v41, &unk_1EC3C5E60, qword_1C9A9AE10);
  v35 = v16;
LABEL_23:
  v31 = v42;
  if (sub_1C9A6B6A4(v11) == 1 && (!sub_1C9A6BA18(v11) || sub_1C9A6BA18(v11) == 1) && sub_1C9A69A24(v11) && (sub_1C9A69AD8(v11) & 1) != 0)
  {
  }

  else
  {
    sub_1C97E7A18();
    swift_allocError();
    *v32 = 1;
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_1C990F4FC(__int128 *a1, uint64_t a2)
{
  sub_1C97A2CEC(&qword_1EC3C7688, &qword_1C9A9FCF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  v5 = a1[1];
  v4 = a1[2];
  v6 = *a1;
  *(inited + 77) = *(a1 + 45);
  *(inited + 48) = v5;
  *(inited + 64) = v4;
  *(inited + 32) = v6;
  swift_beginAccess();
  sub_1C9812F64(a1, v8, &qword_1EC3C7680, &qword_1C9AB3590);
  sub_1C98CFB18(inited);
  return swift_endAccess();
}

uint64_t sub_1C990F5B8(const void *a1, uint64_t a2)
{
  sub_1C97A2CEC(&unk_1EC3CC620, &unk_1C9AB35D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  memcpy((inited + 32), a1, 0x41uLL);
  swift_beginAccess();
  sub_1C9812F64(a1, v5, &unk_1EC3C7730, &qword_1C9A9FD40);
  sub_1C98CFBD4(inited);
  return swift_endAccess();
}

uint64_t sub_1C990F66C(uint64_t a1, char a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t), void (*a7)(uint64_t))
{
  sub_1C97A2CEC(a4, a5);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  *(inited + 32) = a1;
  v12 = a2 & 1;
  *(inited + 40) = v12;
  swift_beginAccess();
  a6(a1, v12);
  a7(inited);
  return swift_endAccess();
}

uint64_t sub_1C990F720(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CC530, &qword_1C9AB3520);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  v7[1] = a1;
  sub_1C97A2CEC(&qword_1EC3CC538, &qword_1C9AB3528);
  sub_1C97AE67C(&qword_1EC3CC540, &qword_1EC3CC538, &qword_1C9AB3528, MEMORY[0x1E69E6328]);
  sub_1C9A92658();
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  sub_1C9A91CE8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C990F88C(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CC5A8, &qword_1C9AB3570);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  v7[1] = a1;
  sub_1C97A2CEC(&qword_1EC3CC5B0, &qword_1C9AB3578);
  sub_1C97AE67C(&qword_1EC3CC5B8, &qword_1EC3CC5B0, &qword_1C9AB3578, MEMORY[0x1E69E6328]);
  sub_1C9A92658();
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  sub_1C9A91CE8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C990F9F8(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CC600, &qword_1C9AB35B8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  v7[1] = a1;
  sub_1C97A2CEC(&qword_1EC3CC608, &qword_1C9AB35C0);
  sub_1C97AE67C(&qword_1EC3CC610, &qword_1EC3CC608, &qword_1C9AB35C0, MEMORY[0x1E69E6328]);
  sub_1C9A92658();
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  sub_1C9A91CE8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C990FB64(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CC668, &qword_1C9AB35F8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  v7[1] = a1;
  sub_1C97A2CEC(&qword_1EC3CC670, &qword_1C9AB3600);
  sub_1C97AE67C(&qword_1EC3CC678, &qword_1EC3CC670, &qword_1C9AB3600, MEMORY[0x1E69E6328]);
  sub_1C9A92658();
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  sub_1C9A91CE8();
  return (*(v3 + 8))(v5, v2);
}

id sub_1C990FCD0(id a1, char a2)
{
  if (a2)
  {
    v3 = a1;
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    swift_willThrowTypedImpl();
  }

  else
  {
    swift_unknownObjectRetain();
  }

  return a1;
}

__n128 sub_1C990FD3C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (*(a1 + 52))
  {
    v3 = v2;
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    swift_willThrowTypedImpl();
  }

  else
  {
    *a2 = v2;
    *(a2 + 8) = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    result = *(a1 + 36);
    *(a2 + 36) = result;
  }

  return result;
}

uint64_t sub_1C990FDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (*(a1 + 64))
  {
    v13 = *a1;
    v3 = v2;
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    return swift_willThrowTypedImpl();
  }

  else
  {
    *a2 = v2;
    v5 = *(a1 + 8);
    *(a2 + 8) = v5;
    v6 = *(a1 + 24);
    *(a2 + 24) = v6;
    v7 = *(a1 + 40);
    *(a2 + 40) = v7;
    *(a2 + 56) = *(a1 + 56);
    v9 = v2;
    v10 = v5;
    v11 = v6;
    v12[0] = v7;
    *(v12 + 9) = *(a1 + 49);
    return sub_1C97A6844(&v9, &v8);
  }
}

void *sub_1C990FFE0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v18 = a4();
  v19 = v18;
  if (!v12)
  {
    v30 = a6(v18);
    v20 = swift_allocEmptyBox();
    v29 = objc_opt_self();
    sub_1C97F07FC();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1C97F07FC();
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = v21;
    v23[3] = v22;
    v23[4] = a8;
    v23[5] = a9;
    v23[6] = v20;
    v23[7] = a2;
    v23[8] = a3;
    aBlock[4] = a11;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C994A9C4;
    aBlock[3] = a12;
    v24 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v25 = sub_1C9A77384(v29, v30, v24, aBlock);
    _Block_release(v24);
    if (v25)
    {
      v26 = aBlock[0];

      *a1 = v30;
    }

    else
    {
      v27 = aBlock[0];
      sub_1C9A913C8();

      swift_willThrow();
    }
  }

  return v19;
}

void sub_1C9910234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t), uint64_t a5, uint64_t a6, void (*a7)(uint64_t *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = a4(v11, v12, a1);
      v15 = sub_1C97BDEE0();
      for (i = 0; ; ++i)
      {
        if (v15 == i)
        {

          goto LABEL_12;
        }

        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1CCA912B0](i, v14);
        }

        else
        {
          if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v17 = *(v14 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        v18 = v17;
        v19 = 0;
        swift_unknownObjectRetain();
        a7(&v18);
        swift_unknownObjectRelease_n();
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }

    else
    {
LABEL_12:
    }
  }
}