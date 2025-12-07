uint64_t sub_1C4C6926C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C68E70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4C69294(uint64_t a1)
{
  v2 = sub_1C4C6A8F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C692D0(uint64_t a1)
{
  v2 = sub_1C4C6A8F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C6935C()
{
  v0 = sub_1C456902C(&qword_1EC0C0690, &qword_1C4F3EFB0);
  sub_1C44F9918(v0, qword_1EDE2CEA8);
  sub_1C442B738(v0, qword_1EDE2CEA8);
  sub_1C456902C(&qword_1EC0C0698, &qword_1C4F3EFB8);
  sub_1C4407FD4();
  sub_1C4401CBC(v1, &qword_1EC0C0690, &qword_1C4F3EFB0, v2);
  return sub_1C4EFCB98();
}

uint64_t sub_1C4C69424@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v2 = *(v1 - 8);
  v44 = v1;
  v45 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v42 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v34 - v5;
  v6 = sub_1C456902C(&qword_1EC0BD2A0, &qword_1C4F2DA68);
  v39 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v43 = sub_1C456902C(&qword_1EC0C0690, &qword_1C4F3EFB0);
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v10 = &v34 - v9;
  v11 = sub_1C4EFCB28();
  v37 = v11;
  v48 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&qword_1EC0BD2C8, &unk_1C4F4A7C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v34 - v15;
  v38 = sub_1C456902C(&qword_1EC0C5108, &qword_1C4F5FC88);
  v47 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v36 = &v34 - v20;
  v51 = 31524;
  v52 = 0xE200000000000000;
  v21 = sub_1C47DCB64();
  MEMORY[0x1C693AE20](v53, &v51, MEMORY[0x1E69E6158], v21);
  v22 = sub_1C4EFCB78();
  sub_1C440BAA8(v16, 1, 1, v22);
  sub_1C4EFC178();
  sub_1C4C69A80(v8);
  v23 = sub_1C456902C(&qword_1EC0C0698, &qword_1C4F3EFB8);
  v34 = MEMORY[0x1E69E9290];
  sub_1C4401CBC(&unk_1EDDEFFF8, &qword_1EC0BD2A0, &qword_1C4F2DA68, MEMORY[0x1E69E9290]);
  sub_1C4EFCB18();
  v39[1](v8, v6);
  v24 = *(v48 + 8);
  v48 += 8;
  v39 = v24;
  (v24)(v13, v11);
  sub_1C4423A0C(v16, &qword_1EC0BD2C8, &unk_1C4F4A7C0);
  MEMORY[0x1C693AE40](v10, v23);
  v25 = sub_1C4401CBC(&qword_1EDDF0028, &qword_1EC0C5108, &qword_1C4F5FC88, MEMORY[0x1E69E8220]);
  v26 = v36;
  v27 = v38;
  MEMORY[0x1C693AE20](v18, v38, v25);
  v28 = *(v47 + 8);
  v47 += 8;
  v35 = v28;
  v28(v18, v27);
  v49 = 125;
  v50 = 0xE100000000000000;
  MEMORY[0x1C693AE20](&v51, &v49, MEMORY[0x1E69E6158], v21);
  v49 = v53[0];
  v50 = v53[1];
  v29 = v40;
  sub_1C4EFC148();

  sub_1C4EFC178();
  sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60, v34);
  v30 = v42;
  v31 = v44;
  sub_1C4EFCAE8();
  sub_1C4EFCAB8();
  v32 = *(v45 + 8);
  v32(v30, v31);
  (v39)(v13, v37);
  sub_1C4C66E04(v10, v51, v52, v46);

  (*(v41 + 8))(v10, v43);
  v32(v29, v31);
  return v35(v26, v27);
}

uint64_t sub_1C4C69A80@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v8 = sub_1C456902C(&qword_1EC0BD2A0, &qword_1C4F2DA68);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_1C4EFCB28();
  v29 = *(v11 - 8);
  v30 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&qword_1EC0BD2A8, &unk_1C4F2DA70);
  v31 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v27 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v28 = &v27 - v17;
  sub_1C4EFC178();
  if (qword_1EDDE82A8 != -1)
  {
    swift_once();
  }

  v18 = sub_1C442B738(v1, qword_1EDE2D5B8);
  v19 = sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60, MEMORY[0x1E69E9290]);
  MEMORY[0x1C693AE20](v18, v1, v19);
  sub_1C4EFC148();
  v20 = *(v2 + 8);
  v20(v4, v1);
  v21 = sub_1C456902C(&qword_1EC0BD2B8, &unk_1C4F5FAE0);
  sub_1C4EFCAF8();
  v20(v7, v1);
  (*(v29 + 8))(v13, v30);
  v22 = v27;
  MEMORY[0x1C693AEB0](v10, v21);
  v23 = sub_1C4401CBC(&qword_1EDDF0018, &qword_1EC0BD2A8, &unk_1C4F2DA70, MEMORY[0x1E69E8278]);
  v24 = v28;
  MEMORY[0x1C693AE20](v22, v14, v23);
  v25 = *(v31 + 8);
  v25(v22, v14);
  sub_1C4EFC148();
  return (v25)(v24, v14);
}

uint64_t sub_1C4C69EA0()
{
  v0 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  sub_1C44F9918(v4, qword_1EDE2D5B8);
  sub_1C442B738(v0, qword_1EDE2D5B8);
  sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60, MEMORY[0x1E69E9290]);
  sub_1C4EFCB98();
  sub_1C4EFCBD8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1C4C69FFC@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = sub_1C456902C(&qword_1EC0BD2E0, &qword_1C4F4A7D0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - v6;
  v8 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v9 = *(v8 - 8);
  v43 = v8;
  v44 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v36 - v12;
  v13 = sub_1C4EFCB28();
  v41 = *(v13 - 8);
  v42 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v37 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C456902C(&qword_1EC0BD2C8, &unk_1C4F4A7C0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v36 - v16;
  v18 = sub_1C456902C(&qword_1EC0C5110, &qword_1C4F5FC90);
  v39 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v36 - v22;
  v24 = sub_1C4EFCB78();
  sub_1C440BAA8(v17, 1, 1, v24);
  sub_1C4EFC178();
  sub_1C4EFC1E8();
  v25 = sub_1C4401CBC(&qword_1EDDFA258, &qword_1EC0BD2E0, &qword_1C4F4A7D0, MEMORY[0x1E69E8280]);
  MEMORY[0x1C693AE20](v4, v1, v25);
  v26 = *(v2 + 8);
  v26(v4, v1);
  v27 = v38;
  sub_1C4EFC148();
  v26(v7, v1);
  sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60, MEMORY[0x1E69E9290]);
  v28 = v40;
  v29 = v27;
  v30 = MEMORY[0x1E69E67B0];
  v31 = v43;
  v32 = v37;
  sub_1C4EFCAC8();
  (*(v44 + 8))(v29, v31);
  (*(v41 + 8))(v32, v42);
  sub_1C4423A0C(v17, &qword_1EC0BD2C8, &unk_1C4F4A7C0);
  MEMORY[0x1C693AE50](v28, v30);
  v33 = sub_1C4401CBC(&qword_1EDDF0020, &qword_1EC0C5110, &qword_1C4F5FC90, MEMORY[0x1E69E8240]);
  MEMORY[0x1C693AE20](v20, v18, v33);
  v34 = *(v39 + 8);
  v34(v20, v18);
  sub_1C4EFC148();
  return (v34)(v23, v18);
}

uint64_t sub_1C4C6A51C@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v26 - v2;
  v4 = sub_1C4EFCB28();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&qword_1EC0BD2E0, &qword_1C4F4A7D0);
  v8 = *(v7 - 8);
  v27 = v7;
  v28 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v11 = sub_1C4EFC188();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  sub_1C4EFCB58();
  v21 = sub_1C4C6AB3C(&qword_1EDDFA260, MEMORY[0x1E69E8250], MEMORY[0x1E69E8248]);
  MEMORY[0x1C693AE00](v17, v11, v21);
  v22 = *(v12 + 8);
  v22(v17, v11);
  sub_1C4EFCB48();
  MEMORY[0x1C693AE00](v14, v11, v21);
  v22(v14, v11);
  v23 = v10;
  sub_1C4EFC128();
  sub_1C4EFC178();
  sub_1C4401CBC(&qword_1EDDFA258, &qword_1EC0BD2E0, &qword_1C4F4A7D0, MEMORY[0x1E69E8280]);
  v24 = v27;
  sub_1C4EFCAD8();
  (*(v29 + 8))(v6, v30);
  MEMORY[0x1C693AEC0](v3, MEMORY[0x1E69E67B0]);
  (*(v28 + 8))(v23, v24);
  v22(v17, v11);
  return (v22)(v20, v11);
}

unint64_t sub_1C4C6A8F4()
{
  result = qword_1EDDFB7D8;
  if (!qword_1EDDFB7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB7D8);
  }

  return result;
}

_BYTE *_s7SQLViewO12ViewSQLPathsV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4C6AA38()
{
  result = qword_1EC0C5128;
  if (!qword_1EC0C5128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5128);
  }

  return result;
}

unint64_t sub_1C4C6AA90()
{
  result = qword_1EDDFD988;
  if (!qword_1EDDFD988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD988);
  }

  return result;
}

unint64_t sub_1C4C6AAE8()
{
  result = qword_1EDDFD990;
  if (!qword_1EDDFD990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD990);
  }

  return result;
}

uint64_t sub_1C4C6AB3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s11StatusStoreVMa(uint64_t a1)
{
  result = qword_1EDDF6A70;
  if (!qword_1EDDF6A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1C4C6ABF8(uint64_t a1)
{
  v3 = a1;
  v4 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C44098F0(v1, v6);
  v7 = sub_1C4C6ACDC(v3);
  v9 = v8;
  type metadata accessor for KeyValueStore(0);
  swift_allocObject();
  result = KeyValueStore.init(config:domain:)(v6, v7, v9);
  if (!v2)
  {
    KeyValueStore.clear()();
  }

  return result;
}

unint64_t sub_1C4C6ACDC(char a1)
{
  v1 = (a1 & 1) == 0;
  if (a1)
  {
    v2 = 0x73756F6976657270;
  }

  else
  {
    v2 = 0x746E6572727563;
  }

  if (v1)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  MEMORY[0x1C6940010](v2, v3);

  return 0xD000000000000016;
}

uint64_t sub_1C4C6AD68@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  a1[3] = &type metadata for SubgraphDatabaseTable;
  a1[4] = &off_1F43FE900;
  v3 = swift_allocObject();
  *a1 = v3;
  memcpy((v3 + 16), v1, 0x60uLL);
  return sub_1C4AF9A80(__dst, &v5);
}

uint64_t sub_1C4C6AE10(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (sub_1C4428DA0(v2))
  {
    sub_1C4431590(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1C6940F90](0, v2);
    }

    else
    {
    }

    MEMORY[0x1EEE9AC00](v3);

    sub_1C49A56B8();
    v5 = v4;
    v7 = v6;
    v9 = v8;

    sub_1C4D0E5C0();
    if (*(*(a1 + 56) + 80) == 1)
    {
    }

    else
    {
      v16 = sub_1C4F02938();

      if ((v16 & 1) == 0)
      {
      }
    }

    if (v9)
    {
      v17 = 0;
      v18 = 0xF000000000000000;
    }

    else
    {
      v17 = sub_1C44F95AC(v5, v7);
      v18 = v19;
    }

    sub_1C4CCDA9C(v17, v18);
    sub_1C441DFEC(v17, v18);
  }

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v10 = sub_1C4F00978();
  sub_1C442B738(v10, qword_1EDDFECB8);
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CD8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C43F8000, v11, v12, "Expected at least one KG config", v13, 2u);
    MEMORY[0x1C6942830](v13, -1, -1);
  }

  sub_1C446D0DC();
  swift_allocError();
  *v14 = 0xD00000000000001FLL;
  *(v14 + 8) = 0x80000001C4FB9EF0;
  *(v14 + 16) = 2;
  return swift_willThrow();
}

void sub_1C4C6B0E0(void *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = 0;
  v5 = a1[15];
  if (v5)
  {
    v7 = a1[19];
    v6 = a1[20];
    v9 = a1[17];
    v8 = a1[18];
    v10 = a1[16];
    v19 = a1[14];
    v20 = v5;
    v21 = v10;
    v22 = v9;
    v23 = v8;
    v24 = v7;
    v25 = v6;
    _s23UpdatedObjectDiffWriterCMa();
    swift_allocObject();
    sub_1C4BC3C1C(v19, v5);

    sub_1C4B8B458();
    if (v2)
    {
      return;
    }

    v12 = v11;

    sub_1C4B8B8EC();
  }

  else
  {
    v12 = 0;
  }

  v13 = memcpy(__dst, a1 + 2, sizeof(__dst));
  MEMORY[0x1EEE9AC00](v13);
  sub_1C4B77B4C();
  if (v2)
  {
  }

  else if (v12)
  {

    sub_1C4B8BB5C();
    v15 = v14;
    v17 = v16;

    *a2 = v15;
    *(a2 + 8) = v17;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }
}

unint64_t sub_1C4C6B33C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v9 = *(a2 + 64);
  v10 = sub_1C4428DA0(v9);
  v22 = v9 & 0xC000000000000001;
  v11 = v9 & 0xFFFFFFFFFFFFFF8;
  v21 = v9;
  v12 = v9 + 32;
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (*a1 >= v10)
    {
      return v13;
    }

    result = *a1;
    if (v22)
    {
      v15 = MEMORY[0x1C6940F90](result, v21);
      goto LABEL_7;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    if (result >= *(v11 + 16))
    {
      goto LABEL_13;
    }

    v15 = *(v12 + 8 * result);

LABEL_7:
    *a3 = v15;

    v16 = *a4;
    v17 = *(a5 + 72);
    v23[0] = *(a5 + 56);
    v23[1] = v17;
    v24 = *(a5 + 88);
    v18 = sub_1C4CDFB34(v16, 0, v23, 0, 1);
    v20 = v19;
    v13 = v18;

    *a4 = v20;
    if (*(v13 + 16))
    {
      return v13;
    }

    if (__OFADD__(*a1, 1))
    {
      goto LABEL_14;
    }

    ++*a1;
    *a4 = 0;
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1C4C6B4A0(uint64_t a1)
{
  v3 = *(a1 + 56);
  v4 = *(v3 + 88);
  v5 = *(v3 + 96);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v45 = v6 + 16;
  *(v6 + 24) = 0;
  *(v6 + 32) = 1;
  v7 = *(v3 + 80) == 1;
  v52 = v6;
  v47 = v4;
  if (v7)
  {
    v8 = 0uLL;
    if (v5 >> 60 == 15)
    {
      v46 = v5;
    }

    else
    {
      v9 = sub_1C4401D48();
      sub_1C4431E64(v9, v10);
      v11 = sub_1C4401D48();
      sub_1C44344B8(v11, v12);
      v13 = sub_1C4401D48();
      sub_1C44F9344(v13, v14);
      if (v1)
      {
        v16 = sub_1C4401D48();
        sub_1C441DFEC(v16, v17);
      }

      v46 = v5;
      *(&v8 + 1) = v15;
      v6 = v52;
    }

    *(v6 + 16) = v8;
    *(v6 + 32) = v5 >> 60 == 15;
  }

  else
  {
    v46 = v5;
    sub_1C4431E64(v4, v5);
  }

  v18 = sub_1C4D0E2C0();
  if (v18)
  {
    sub_1C4C6B8B8();
    sub_1C4D0E478();
LABEL_13:

    return sub_1C4407FEC();
  }

  sub_1C4D0E664(v18, v19, v20, v21, v22, v23, v24, v25, v44, v45, v46, v47, v48, v49, v50, v51, v52, *v53, *&v53[8], *&v53[16], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5]);
  if (v26)
  {
    sub_1C4C6AE10(a1);
    goto LABEL_13;
  }

  v51 = *(a1 + 64);
  result = sub_1C4428DA0(v51);
  v44 = v1;
  if (!result)
  {
LABEL_26:
    if (*(v3 + 80) != 1)
    {
      sub_1C444F17C();
      sub_1C4407FEC();
    }

    swift_beginAccess();
    if (*(v52 + 32))
    {
      v40 = 0;
      v41 = 0xF000000000000000;
    }

    else
    {
      v40 = sub_1C44F95AC(*(v52 + 16), *(v52 + 24));
      v41 = v42;
    }

    sub_1C4CCDA9C(v40, v41);
    sub_1C4407FEC();
    sub_1C441DFEC(v40, v41);
  }

  v28 = result;
  if (result >= 1)
  {
    v29 = 0;
    v50 = v51 & 0xC000000000000001;
    v48 = v3;
    do
    {
      if (v50)
      {
        v30 = MEMORY[0x1C6940F90](v29, v51);
      }

      else
      {
        v30 = *(v51 + 8 * v29 + 32);
      }

      if (*(v3 + 32) & 1) != 0 || *(v30 + 32) == 1 && (sub_1C4C149D8())
      {
        v31 = v49;
        v32 = *(v49 + 72);
        v55[0] = *(v49 + 56);
        v55[1] = v32;
        v56 = *(v49 + 88);
        v33 = sub_1C4CDFB34(0, 1, v55, 0, 1);
        v35 = v34;
        v36 = v33;
        memcpy(__dst, (v31 + 16), sizeof(__dst));
        v37 = swift_allocObject();
        v38 = v52;
        v37[2] = v31;
        v37[3] = v38;
        v37[4] = v36;
        MEMORY[0x1EEE9AC00](v37);
        v43[2] = __dst;
        v43[3] = v36;
        v43[4] = sub_1C4C6C700;
        v43[5] = v39;

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C446C37C(sub_1C4C4D56C, v43);

        v3 = v48;
        sub_1C4CDF41C(v35);
      }

      else
      {
        *(v30 + 34) = 1;
      }

      ++v29;
    }

    while (v28 != v29);
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4C6B8B8()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_1C4AF9A80(__dst, &v2);

  sub_1C446C37C(sub_1C4C6C720, v0);

  return sub_1C4AF9ADC(__dst);
}

void sub_1C4C6B938(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v33 = a1;
  v7 = a2[14];
  v6 = a2[15];
  v8 = a2[16];
  v9 = a2[17];
  v11 = a2[18];
  v10 = a2[19];
  v12 = a2[20];
  swift_beginAccess();
  if (v6)
  {
    HIDWORD(v32) = *(a3 + 32);
    v30 = *(a3 + 16);
    v31 = *(a3 + 24);
    v37 = v7;
    v38 = v6;
    v39 = v8;
    v40 = v9;
    v41 = v11;
    v42 = v10;
    v43 = v12;
    _s23UpdatedObjectDiffWriterCMa();
    swift_allocObject();
    v28 = a3;
    v13 = v7;
    v14 = v6;
    sub_1C4BC3C1C(v13, v6);

    sub_1C4B8B458();
    if (v4)
    {
      return;
    }

    v36[3] = sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
    v36[4] = sub_1C4C6C73C();
    v44 = MEMORY[0x1E69E7CD0];
    v15 = *(v29 + 16);
    v16 = (v29 + 32);

    for (; v15; --v15)
    {
      memcpy(__dst, v16, 0x92uLL);
      v34[19] = __dst[5];
      sub_1C45E8CE0(__dst, v34);
      v17 = sub_1C4F02858();
      sub_1C44869B4(v34, v17, v18, v18, v19, v20, v21, v22, v27, v28, v29, v30, v31, v32, v33, v34[0], v34[1], v34[2], v34[3], v34[4], v34[5], v34[6], v34[7], v34[8], v34[9], v34[10], v34[11], v34[12], v34[13], v34[14]);
      sub_1C45E8D3C(__dst);

      v16 += 152;
    }

    v36[0] = v44;
    sub_1C4B8C0BC();

    sub_1C440962C(v36);

    sub_1C4B8BB5C();
    v24 = v23;
    v26 = v25;

    v6 = v14;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  swift_beginAccess();
  *(a3 + 16) = v24;
  *(a3 + 24) = v26;
  *(a3 + 32) = v6 == 0;
}

void sub_1C4C6BBC8(uint64_t a1, void *a2)
{
  memcpy(__dst, a2 + 2, 0x60uLL);
  sub_1C4AF9A80(__dst, v11);
  sub_1C4D03DB4();
  sub_1C4AF9ADC(__dst);
  if (!v2)
  {
    v4 = a2[15];
    if (v4)
    {
      v6 = a2[19];
      v5 = a2[20];
      v8 = a2[17];
      v7 = a2[18];
      v9 = a2[16];
      v10 = a2[14];
      v11[12] = v10;
      v11[13] = v4;
      v11[14] = v9;
      v11[15] = v8;
      v11[16] = v7;
      v11[17] = v6;
      v11[18] = v5;
      _s23UpdatedObjectDiffWriterCMa();
      v13 = swift_allocObject();
      sub_1C4BC3C1C(v10, v4);

      sub_1C4B8B458();
      sub_1C4B8B8EC();
    }
  }
}

uint64_t sub_1C4C6BD08()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_1C4C6C7A0(__dst);
  return swift_deallocClassInstance();
}

uint64_t sub_1C4C6BD78(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1C4C6BDB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4C6BE28(uint64_t a1)
{
  sub_1C4C6B4A0(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C4C6BEA0(uint64_t a1)
{
  sub_1C4C6AE10(a1);
  v2 = *(v1 + 8);

  return v2();
}

void sub_1C4C6BF18(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v19 = 0uLL;
  sub_1C44E9220();
  if (!v4)
  {
    v10 = v9;
    v11 = *(a3 + 232);
    if (v11)
    {
      v12 = *(a3 + 224);
      v13 = *(a3 + 250);
      v14 = *(a3 + 248);
      v15 = *(a3 + 240);
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4B75EC0();
      v24 = v29;
      v25 = v30;
      __src[0] = v12;
      __src[1] = v11;
      __src[2] = v10;
      LOWORD(__src[3]) = v14 & 0x101;
      BYTE2(__src[3]) = ((v14 | (v13 << 16)) >> 16) & 1;
      *&__src[5] = v29;
      *&__src[7] = v30;
      __src[4] = v15;
      __src[9] = v31;
      __src[10] = 0x7463656A627573;
      __src[11] = 0xE700000000000000;
      *&v19 = v12;
      *(&v19 + 1) = v11;
      v20 = v10;
      v21 = v14 & 1;
      v22 = __PAIR16__(BYTE2(__src[3]), BYTE1(v14) & 1);
      v26 = v31;
      v27 = 0x7463656A627573;
      v23 = v15;
      v28 = 0xE700000000000000;
      sub_1C4AF9A80(__src, &v17);
      sub_1C4AF9ADC(&v19);
      memcpy(a4, __src, 0x60uLL);
    }

    else
    {
      sub_1C450B034();
      swift_allocError();
      *v16 = a1;
      *(v16 + 8) = a2;
      *(v16 + 16) = 0xD000000000000011;
      *(v16 + 24) = 0x80000001C4FBDB00;
      *(v16 + 32) = 0;
      *(v16 + 40) = 0xE000000000000000;
      *(v16 + 48) = v19;
      *(v16 + 64) = 1;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

void sub_1C4C6C108(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1C4C6BF18(a1, a2, a3, v7);
  if (!v4)
  {
    a4[3] = &type metadata for SubgraphDatabaseTable;
    a4[4] = &off_1F43FE900;
    v6 = swift_allocObject();
    *a4 = v6;
    memcpy((v6 + 16), v7, 0x60uLL);
  }
}

void sub_1C4C6C184(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, a2, 0x60uLL);
  sub_1C4EFBFD8();
  if (!v2)
  {
    sub_1C4B76B30();
    v4 = *(a2 + 104);
    if (v4)
    {
      v5 = *(a2 + 96);
      v6 = *(a2 + 128);
      v8 = *(a2 + 112);
      v9 = v6;
      v10 = *(a2 + 144);
      __dst[12] = v5;
      __dst[13] = v4;
      sub_1C4B8C8BC();
    }
  }
}

void sub_1C4C6C248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  sub_1C4C6BF18(a1, a2, a3, v22);
  if (!v7)
  {
    v9 = (a3 + *(_s6ConfigVMa(0) + 52));
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v13 = v9[3];
    v14 = v9[4];
    v15 = v9[5];
    v18 = v9[6];
    v19 = v10;
    memcpy(v21, v22, 0x60uLL);
    v21[12] = v10;
    v21[13] = v11;
    v21[14] = v12;
    v21[15] = v13;
    v21[16] = v14;
    v21[17] = v15;
    v21[18] = v18;
    v16 = memcpy(__dst, v21, 0x98uLL);
    v20 = &v18;
    MEMORY[0x1EEE9AC00](v16);
    v17[2] = __dst;
    sub_1C4BC3C1C(v19, v11);

    sub_1C446C37C(v24, v17);
    sub_1C4C6C7A0(v21);
  }
}

void sub_1C4C6C384(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  sub_1C4D03DB4();
  if (!v2)
  {
    v4 = *(a2 + 112);
    v7[0] = *(a2 + 96);
    v7[1] = v4;
    v7[2] = *(a2 + 128);
    v8 = *(a2 + 144);
    if (*(&v7[0] + 1))
    {
      v5 = *(a2 + 128);
      v11 = *(a2 + 112);
      v12 = v5;
      v13 = *(a2 + 144);
      v10 = v7[0];
      _s23UpdatedObjectDiffWriterCMa();
      swift_allocObject();
      sub_1C4BE2FBC(v7, v6);

      sub_1C4B8B458();
      sub_1C4B8B8EC();
    }
  }
}

uint64_t sub_1C4C6C4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4C81AA0(a1, a2, a3);
  if (!v4)
  {
    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    if (swift_dynamicCast())
    {
      _s21SubgraphViewGeneratorCMa();
      a4 = swift_allocObject();
      memcpy((a4 + 16), __src, 0x98uLL);
    }

    else
    {
      a4 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v8 = a1;
      *(v8 + 8) = a2;
      *(v8 + 16) = xmmword_1C4F5B670;
      *(v8 + 32) = 0xD000000000000025;
      *(v8 + 40) = 0x80000001C4FB83A0;
      *(v8 + 48) = v10;
      *(v8 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a4;
}

uint64_t sub_1C4C6C610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C6C4F4(a1, a2, a3, *v3);
  v6 = *(v4 + 8);

  return v6(v5);
}

unint64_t sub_1C4C6C73C()
{
  result = qword_1EDDFCEA0;
  if (!qword_1EDDFCEA0)
  {
    sub_1C4572308(&qword_1EC0B9178, &qword_1C4F11B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCEA0);
  }

  return result;
}

id sub_1C4C6C820()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = v3;
  v6 = objc_autoreleasePoolPush();
  v7 = objc_opt_self();
  v8 = sub_1C4F01108();
  LOBYTE(v12) = 0;
  v9 = [v7 publisherForStream:v8 device:v5 account:v4 startTime:0 endTime:0 maxEvents:0 lastN:0 reversed:v12];

  objc_autoreleasePoolPop(v6);

  if (!v9)
  {
    sub_1C4F02248();

    MEMORY[0x1C6940010](v1, v2);
    sub_1C4C6D7FC();
    swift_allocError();
    *v10 = 0xD000000000000017;
    *(v10 + 8) = 0x80000001C4FBDB70;
    *(v10 + 16) = 0;
    swift_willThrow();
  }

  return v9;
}

uint64_t sub_1C4C6C988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)(a1, a2, a3);

  if (!v4)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      _s29SyncedStreamTestViewGeneratorCMa();
      result = swift_allocObject();
      *(result + 16) = v11;
      *(result + 24) = v12;
      *(result + 40) = v13;
    }

    else
    {
      sub_1C450B034();
      swift_allocError();
      *v9 = a1;
      *(v9 + 8) = a2;
      *(v9 + 16) = xmmword_1C4F5B670;
      *(v9 + 32) = 0xD000000000000025;
      *(v9 + 40) = 0x80000001C4FB83A0;
      *(v9 + 48) = v10;
      *(v9 + 64) = 0;
      swift_willThrow();
      return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return result;
}

uint64_t sub_1C4C6CACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C6C988(a1, a2, a3, *v3);
  v6 = *(v4 + 8);

  return v6(v5);
}

void sub_1C4C6CD30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = objc_autoreleasePoolPush();
  sub_1C4C6CDC0(a1, v3, v4, &v7, &v8);
  objc_autoreleasePoolPop(v6);
}

uint64_t sub_1C4C6CDC0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, void *a4@<X3>, void *a5@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = *(a1 + 136);
  if (v9)
  {
    v10 = [*(a1 + 136) deviceIdentifier];
    v26 = sub_1C4F01138();
    v12 = v11;

    v25 = [v9 platform];
    v13 = [v9 model];
    v14 = sub_1C4F01138();
    v16 = v15;
  }

  else
  {
    v25 = 0;
    v26 = 0x746E6572727563;
    v16 = 0xE700000000000000;
    v14 = 0x6E776F6E6B6E75;
    v12 = 0xE700000000000000;
  }

  v17 = sub_1C4C6C820();
  if (v5)
  {

    *a4 = v5;
  }

  else
  {
    v19 = v17;
    v30 = a2[2];
    v23 = a2[4];
    v24 = a2[3];
    v22 = a2[5];
    v20 = swift_allocObject();
    *(v20 + 16) = v8;
    *(v20 + 24) = a1;
    *(v20 + 32) = v19;
    *(v20 + 40) = a3 & 1;
    *(v20 + 48) = v26;
    *(v20 + 56) = v12;
    *(v20 + 64) = v25;
    *(v20 + 72) = v14;
    *(v20 + 80) = v16;

    v21 = v19;
    sub_1C4BF9FB0(sub_1C4C6D850, v20, v30, v24, v23, v22);

    swift_beginAccess();
    *a5 = *(v8 + 16);
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1C4C6CFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a6)
  {
    v15 = 0;
  }

  else
  {
    sub_1C4CC0AAC();
    v15 = v16;
  }

  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a7;
  v17[5] = a8;
  v17[6] = a9;
  v17[7] = a10;
  v17[8] = a11;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v18 = sub_1C4C6D2DC(a5, v15, sub_1C4C6D890, v17);

  result = swift_unknownObjectRelease();
  if (!v22)
  {
    swift_beginAccess();
    *(a3 + 16) = v18;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C4C6D10C(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (![a1 eventBody])
  {
    goto LABEL_11;
  }

  v30 = a7;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
LABEL_11:
    v27 = 0;
    return v27 & 1;
  }

  v16 = v15;
  sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
  v29 = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C4F13950;
  [a1 timestamp];
  v18 = MEMORY[0x1E69A0168];
  *(v17 + 56) = MEMORY[0x1E69E63B0];
  *(v17 + 64) = v18;
  v19 = MEMORY[0x1E69E6158];
  *(v17 + 32) = v20;
  v21 = MEMORY[0x1E69A0138];
  *(v17 + 96) = v19;
  *(v17 + 104) = v21;
  *(v17 + 72) = a4;
  *(v17 + 80) = a5;
  v22 = MEMORY[0x1E69A0180];
  *(v17 + 136) = MEMORY[0x1E69E6530];
  *(v17 + 144) = v22;
  *(v17 + 112) = a6;
  *(v17 + 176) = v19;
  *(v17 + 184) = v21;
  *(v17 + 152) = v30;
  *(v17 + 160) = a8;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v23 = sub_1C4632064(v16);
  *(v17 + 216) = v19;
  *(v17 + 224) = v21;
  if (v24)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  v26 = 0xE000000000000000;
  if (v24)
  {
    v26 = v24;
  }

  *(v17 + 192) = v25;
  *(v17 + 200) = v26;
  v29(v17);
  if (v8)
  {
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    v27 = 1;
  }

  return v27 & 1;
}

uint64_t sub_1C4C6D2DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C43FBDBC();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = v6 + 16;
  sub_1C43FBDBC();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  v23 = sub_1C4C6D8BC;
  v24 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1C4442530;
  v22 = &unk_1F4406000;
  v10 = _Block_copy(&aBlock);

  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = v8;
  v23 = sub_1C4C6D8C4;
  v24 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1C462BCF4;
  v22 = &unk_1F4406050;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 drivableSinkWithBookmark:a2 completion:v10 shouldContinue:v12];
  _Block_release(v12);
  _Block_release(v10);

  swift_beginAccess();
  v14 = *(v8 + 16);
  if (v14)
  {
    swift_willThrow();
    v15 = v14;
  }

  else
  {
    swift_beginAccess();
    v7 = *(v6 + 16);
    swift_unknownObjectRetain();
  }

  return v7;
}

uint64_t sub_1C4C6D548()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C6D5C8(uint64_t a1)
{
  sub_1C4C6CB78(a1);
  v2 = *(v1 + 8);

  return v2();
}

void sub_1C4C6D640(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ([a1 state] == 1)
  {
    v8 = [a1 error];
    swift_beginAccess();
    v9 = *(a3 + 16);
    *(a3 + 16) = v8;
  }

  else
  {
    swift_beginAccess();
    *(a4 + 16) = a2;
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
  }
}

uint64_t sub_1C4C6D6F8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  if (swift_dynamicCastObjCProtocolConditional())
  {
    v6 = a2();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1C446D0DC();
    v7 = swift_allocError();
    *v8 = 0xD000000000000029;
    *(v8 + 8) = 0x80000001C4FBDB90;
    *(v8 + 16) = 2;
    swift_willThrow();
    swift_beginAccess();
    v9 = *(a4 + 16);
    *(a4 + 16) = v7;

    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_1C4C6D7FC()
{
  result = qword_1EC0C5140;
  if (!qword_1EC0C5140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5140);
  }

  return result;
}

uint64_t sub_1C4C6D8EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C43FCE64();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v7);
  return (*(v5 + 32))(a2, v9, a1);
}

uint64_t FeatureProviderChange.isStarting.setter(char a1)
{
  result = type metadata accessor for FeatureProviderChange(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

void (*FeatureProviderChange.isStarting.modify())()
{
  v0 = sub_1C4403FC0();
  type metadata accessor for FeatureProviderChange(v0);
  return nullsub_1;
}

uint64_t FeatureProviderChange.features.getter()
{
  type metadata accessor for FeatureProviderChange(0);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t FeatureProviderChange.features.setter()
{
  v2 = sub_1C4403FC0();
  v3 = *(type metadata accessor for FeatureProviderChange(v2) + 24);

  *(v1 + v3) = v0;
  return result;
}

void (*FeatureProviderChange.features.modify())()
{
  v0 = sub_1C4403FC0();
  type metadata accessor for FeatureProviderChange(v0);
  return nullsub_1;
}

void static FeatureProviderChange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1C4EF9C68())
  {
    v4 = *(type metadata accessor for FeatureProviderChange(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);
    if (v5 == 2)
    {
      if (v6 != 2)
      {
        return;
      }
    }

    else if (v6 == 2 || ((v6 ^ v5) & 1) != 0)
    {
      return;
    }

    sub_1C47C7400();
  }
}

uint64_t FeatureProviderSnapshot.features.getter()
{
  type metadata accessor for FeatureProviderSnapshot(0);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4C6DBD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1C4408024(v1);

  return MEMORY[0x1EEE6D8C8](v2);
}

uint64_t sub_1C4C6DC74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4C6EBEC;

  return sub_1C4C6DBD4();
}

uint64_t sub_1C4C6DD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_1C4C6EBE8;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1C4C6DDF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  sub_1C43FCE64();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C43FCE64();
  v12 = v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v18 - v15;
  (*(v6 + 16))(v9, v2, v4, v14);
  sub_1C4F019A8();
  return (*(v12 + 32))(a2, v16, AssociatedTypeWitness);
}

void sub_1C4C6DFD8(uint64_t a1)
{
  sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    sub_1C4C6E074();
    if (v2 <= 0x3F)
    {
      sub_1C4C6E0C4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C4C6E074()
{
  if (!qword_1EDDFEA48)
  {
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDFEA48);
    }
  }
}

void sub_1C4C6E0C4(uint64_t a1)
{
  if (!qword_1EC0C51C8)
  {
    sub_1C4572308(&qword_1EC0BA860, &unk_1C4F1EF30);
    v1 = sub_1C4F00FA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC0C51C8);
    }
  }
}

void sub_1C4C6E160(uint64_t a1)
{
  sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    sub_1C4C6E0C4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C4C6E260(void *a1, uint64_t (*a2)(uint64_t, void, void), uint64_t a3)
{
  a2(255, *a1, a1[1]);

  return swift_getWitnessTable();
}

uint64_t sub_1C4C6E30C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C4C6DDF0(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1C4C6E3B4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4C6E3F0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4C6E444(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_1C44157D4(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_1C44157D4(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1C4C6E580(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_1C440BAA8(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C4C6E79C(void *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a2(255, AssociatedTypeWitness, AssociatedConformanceWitness);

  return swift_getWitnessTable();
}

uint64_t sub_1C4C6E844()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1C4408024(v1);

  return MEMORY[0x1EEE6D8C8](v2);
}

uint64_t sub_1C4C6E8E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4C6EBEC;

  return sub_1C4C6E844();
}

uint64_t sub_1C4C6E98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_1C4C6EA60;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1C4C6EA60()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_1C4C6EB70(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4C6EBAC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1C4C6EC08(char a1)
{
  switch(a1)
  {
    case 9:
      sub_1C443F3D8();
      break;
    case 11:
      sub_1C43FE984();
      break;
    default:
      return;
  }
}

uint64_t sub_1C4C6EDBC(char a1)
{
  if (a1)
  {
    return 0x4F64657461647075;
  }

  else
  {
    return 0x6E61684377656976;
  }
}

void sub_1C4C6EE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(a7 + 16))(&v7, a6, a7);
  if (v8)
  {
    v12 = v7;
    v13 = v8;
    v14 = v9;
    v15 = v10;
    v16 = v11;
    _s23UpdatedObjectDiffWriterCMa();
    swift_allocObject();

    sub_1C4B8B458();
  }
}

void sub_1C4C6EF10(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1C4BDA284(a1, a2, a3, __src);
  if (!v4)
  {
    v10[3] = &_s26ContextualEventsViewClientVN;
    v10[4] = &off_1F4401B70;
    v10[0] = swift_allocObject();
    memcpy((v10[0] + 16), __src, 0x50uLL);
    v6 = sub_1C4409678(v10, &_s26ContextualEventsViewClientVN);
    v7 = off_1F4401B78;
    a4[3] = &_s26ContextualEventsViewClientVN;
    a4[4] = v7;
    v8 = sub_1C4422F90(a4);
    (*(off_1F4401B48 + 2))(v8, v6, &_s26ContextualEventsViewClientVN);
    sub_1C440962C(v10);
  }
}

void sub_1C4C6EFF8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a3[4];
  if (v7)
  {
    v9 = a3[3];
    v10 = a3[5];
    sub_1C44E9220();
    if (!v4)
    {
      v12 = v11;
      v19[3] = &_s22UnstructuredViewClientVN;
      v19[4] = &off_1F4406790;
      v13 = swift_allocObject();
      v19[0] = v13;
      v13[2] = v9;
      v13[3] = v7;
      v13[4] = v12;
      v13[5] = v10;
      v14 = sub_1C4409678(v19, &_s22UnstructuredViewClientVN);
      v15 = off_1F4406798;
      a4[3] = &_s22UnstructuredViewClientVN;
      a4[4] = v15;
      v16 = sub_1C4422F90(a4);
      (*(off_1F4406768 + 2))(v16, v14, &_s22UnstructuredViewClientVN);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C440962C(v19);
    }
  }

  else
  {
    sub_1C450B034();
    swift_allocError();
    *v17 = a1;
    *(v17 + 8) = a2;
    *(v17 + 16) = 0xD000000000000015;
    *(v17 + 24) = 0x80000001C4FBE050;
    *(v17 + 32) = 0;
    *(v17 + 40) = 0xE000000000000000;
    *(v17 + 48) = v18;
    *(v17 + 64) = 1;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4C6F188(uint64_t *a1@<X8>)
{
  sub_1C44E9220();
  if (!v1)
  {
    v4 = v3;
    v10[3] = &_s25SportsSchedulesViewClientVN;
    v10[4] = &off_1F4405B00;
    v5 = swift_allocObject();
    v10[0] = v5;
    v5[2] = 0x6870617267;
    v5[3] = 0xE500000000000000;
    v6 = MEMORY[0x1E69E7CC0];
    v5[4] = v4;
    v5[5] = v6;
    v7 = sub_1C4409678(v10, &_s25SportsSchedulesViewClientVN);
    v8 = off_1F4405B08;
    a1[3] = &_s25SportsSchedulesViewClientVN;
    a1[4] = v8;
    v9 = sub_1C4422F90(a1);
    (*(off_1F4405AD8 + 2))(v9, v7, &_s25SportsSchedulesViewClientVN);
    sub_1C440962C(v10);
  }
}

void sub_1C4C6F288(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = (a3 + *(_s6ConfigVMa(0) + 56));
  v9 = v8[1];
  if (v9)
  {
    v10 = *v8;
    v11 = *(v8 + 16);
    sub_1C44E9220();
    if (!v4)
    {
      v29 = v12;
      sub_1C456902C(&qword_1EC0BBBF8, &qword_1C4F5C950);
      v13 = *(type metadata accessor for ViewDatabaseArtifact.Property(0) - 8);
      v14 = *(v13 + 72);
      v26 = v11;
      v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1C4F0D480;
      v17 = (v16 + v15);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFBDD8();
      *v17 = 1684628589;
      *(v17 + 1) = 0xE400000000000000;
      v18 = v10;
      sub_1C4EFBDE8();
      strcpy(&v17[v14], "relevanceScore");
      v17[v14 + 15] = -18;
      v19 = &v17[2 * v14];
      sub_1C4EFBDD8();
      *v19 = 0x74616E616C707865;
      *(v19 + 1) = 0xEB000000006E6F69;
      v20 = &v17[3 * v14];
      sub_1C4EFBE08();
      *v20 = 0xD000000000000010;
      *(v20 + 1) = 0x80000001C4FB97A0;
      v28[3] = &_s32EntityRelevanceRankingViewClientVN;
      v28[4] = &off_1F4402C98;
      v21 = swift_allocObject();
      v28[0] = v21;
      *(v21 + 16) = v18;
      *(v21 + 24) = v9;
      *(v21 + 32) = v26;
      *(v21 + 40) = v29;
      *(v21 + 48) = v16;
      v22 = sub_1C4409678(v28, &_s32EntityRelevanceRankingViewClientVN);
      v23 = off_1F4402CA0;
      a4[3] = &_s32EntityRelevanceRankingViewClientVN;
      a4[4] = v23;
      v24 = sub_1C4422F90(a4);
      (*(off_1F4402C70 + 2))(v24, v22, &_s32EntityRelevanceRankingViewClientVN);
      sub_1C440962C(v28);
    }
  }

  else
  {
    sub_1C450B034();
    swift_allocError();
    *v25 = a1;
    *(v25 + 8) = a2;
    *(v25 + 16) = 0xD00000000000001FLL;
    *(v25 + 24) = 0x80000001C4FB9780;
    *(v25 + 32) = 0;
    *(v25 + 40) = 0xE000000000000000;
    *(v25 + 48) = v27;
    *(v25 + 64) = 1;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4C6F594(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = (a3 + *(_s6ConfigVMa(0) + 60));
  v9 = v8[1];
  if (v9)
  {
    v10 = *v8;
    v11 = v8[2];
    sub_1C44E9220();
    if (!v4)
    {
      v13 = v12;
      v20[3] = &_s32EntityTaggingInferenceViewClientVN;
      v20[4] = &off_1F4402F80;
      v14 = swift_allocObject();
      v20[0] = v14;
      v14[2] = v10;
      v14[3] = v9;
      v14[4] = v13;
      v14[5] = v11;
      v15 = sub_1C4409678(v20, &_s32EntityTaggingInferenceViewClientVN);
      v16 = off_1F4402F88;
      a4[3] = &_s32EntityTaggingInferenceViewClientVN;
      a4[4] = v16;
      v17 = sub_1C4422F90(a4);
      (*(off_1F4402F58 + 2))(v17, v15, &_s32EntityTaggingInferenceViewClientVN);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C440962C(v20);
    }
  }

  else
  {
    sub_1C450B034();
    swift_allocError();
    *v18 = a1;
    *(v18 + 8) = a2;
    *(v18 + 16) = 0xD000000000000016;
    *(v18 + 24) = 0x80000001C4FB99D0;
    *(v18 + 32) = 0;
    *(v18 + 40) = 0xE000000000000000;
    *(v18 + 48) = v19;
    *(v18 + 64) = 1;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4C6F74C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1C4C6BF18(a1, a2, a3, __src);
  if (!v4)
  {
    v7 = (a3 + *(_s6ConfigVMa(0) + 52));
    v9 = v7[1];
    v21 = *v7;
    v8 = v21;
    v10 = v7[2];
    v11 = v7[3];
    v12 = v7[4];
    v18 = v7[5];
    v17 = v7[6];
    v19[3] = &unk_1F4405DA0;
    v19[4] = &off_1F4405DD8;
    v13 = swift_allocObject();
    v19[0] = v13;
    memcpy(v13 + 2, __src, 0x60uLL);
    v13[14] = v8;
    v13[15] = v9;
    v13[16] = v10;
    v13[17] = v11;
    v13[18] = v12;
    v13[19] = v18;
    v13[20] = v17;
    v14 = sub_1C4409678(v19, &unk_1F4405DA0);
    v15 = off_1F4405DE0;
    a4[3] = &unk_1F4405DA0;
    a4[4] = v15;
    v16 = sub_1C4422F90(a4);
    (*(off_1F4405D98 + 2))(v16, v14, &unk_1F4405DA0);
    sub_1C4BC3C1C(v21, v9);
    sub_1C440962C(v19);
  }
}

void sub_1C4C6F8B0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1C44E9220();
  if (!v4)
  {
    v10 = v9;
    v11 = a3[9];
    if (v11)
    {
      v12 = a3[14];
      v27 = a3[12];
      v35 = a3[11];
      v28 = a3[10];
      v29 = a3[8];
      v13 = MEMORY[0x1E69E7CC0];
      if (v12)
      {
        v13 = v12;
      }

      v30 = v13;
      v32 = a3[8];
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](1937008223, 0xE400000000000000);
      v14 = (a3 + *(_s6ConfigVMa(0) + 52));
      v15 = v14[1];
      v17 = v14[2];
      v16 = v14[3];
      v18 = v14[4];
      v25 = *v14;
      v26 = v14[5];
      v24 = v14[6];
      v34[3] = &_s19CustomRowViewClientVN;
      v34[4] = &off_1F4401D48;
      v19 = swift_allocObject();
      v34[0] = v19;
      v19[2] = v10;
      v19[3] = v29;
      v19[4] = v11;
      v19[5] = v28;
      v19[6] = v35;
      v19[7] = v27;
      v19[8] = v30;
      v19[9] = v32;
      v19[10] = v11;
      v19[11] = v25;
      v19[12] = v15;
      v19[13] = v17;
      v19[14] = v16;
      v19[15] = v18;
      v19[16] = v26;
      v19[17] = v24;
      v20 = sub_1C4409678(v34, &_s19CustomRowViewClientVN);
      v21 = off_1F4401D50;
      a4[3] = &_s19CustomRowViewClientVN;
      a4[4] = v21;
      v22 = sub_1C4422F90(a4);
      (*(off_1F4401D08 + 2))(v22, v20, &_s19CustomRowViewClientVN);
      sub_1C4BC3C1C(v25, v15);
      sub_1C440962C(v34);
    }

    else
    {
      sub_1C450B034();
      swift_allocError();
      *v23 = a1;
      *(v23 + 8) = a2;
      *(v23 + 16) = 0xD000000000000038;
      *(v23 + 24) = 0x80000001C4FB8ED0;
      *(v23 + 32) = v31;
      *(v23 + 48) = v33;
      *(v23 + 64) = 3;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

void sub_1C4C6FB24(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1C44E9220();
  if (!v4)
  {
    v10 = v9;
    v11 = a3[22];
    if (v11)
    {
      v12 = a3[27];
      v28 = a3[25];
      v32 = a3[24];
      v29 = a3[23];
      v30 = a3[21];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](1937008223, 0xE400000000000000);
      v13 = MEMORY[0x1E69E7CC0];
      if (v12)
      {
        v13 = v12;
      }

      v27 = v13;
      v14 = (a3 + *(_s6ConfigVMa(0) + 52));
      v15 = v14[1];
      v17 = v14[2];
      v16 = v14[3];
      v18 = v14[4];
      v25 = *v14;
      v26 = v14[5];
      v24 = v14[6];
      v31[3] = &_s19ObjectRowViewClientVN;
      v31[4] = &off_1F4404A80;
      v19 = swift_allocObject();
      v31[0] = v19;
      v19[2] = v30;
      v19[3] = v11;
      v19[4] = v10;
      v19[5] = v29;
      v19[6] = v32;
      v19[7] = v28;
      v19[8] = v30;
      v19[9] = v11;
      v19[10] = v27;
      v19[11] = v25;
      v19[12] = v15;
      v19[13] = v17;
      v19[14] = v16;
      v19[15] = v18;
      v19[16] = v26;
      v19[17] = v24;
      v20 = sub_1C4409678(v31, &_s19ObjectRowViewClientVN);
      v21 = off_1F4404A88;
      a4[3] = &_s19ObjectRowViewClientVN;
      a4[4] = v21;
      v22 = sub_1C4422F90(a4);
      (*(off_1F4404A40 + 2))(v22, v20, &_s19ObjectRowViewClientVN);
      sub_1C4BC3C1C(v25, v15);
      sub_1C440962C(v31);
    }

    else
    {
      sub_1C450B034();
      swift_allocError();
      *v23 = a1;
      *(v23 + 8) = a2;
      *(v23 + 16) = 0xD000000000000012;
      *(v23 + 24) = 0x80000001C4FBC0C0;
      *(v23 + 32) = 0;
      *(v23 + 40) = 0xE000000000000000;
      *(v23 + 48) = 0uLL;
      *(v23 + 64) = 1;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

void *sub_1C4C6FD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a6@<X8>)
{
  result = sub_1C4C1162C(a1, a2, v13);
  if (!v6)
  {
    v9 = v14;
    v10 = v15;
    v11 = sub_1C4409678(v13, v14);
    a6[3] = v9;
    a6[4] = *(v10 + 8);
    v12 = sub_1C4422F90(a6);
    (*(*(v9 - 8) + 16))(v12, v11, v9);
    return sub_1C440962C(v13);
  }

  return result;
}

void sub_1C4C6FE64(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v21 = a6;
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v11 = sub_1C4F00978();
  sub_1C442B738(v11, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = sub_1C4F00968();
  v13 = sub_1C4F01CF8();

  if (os_log_type_enabled(v12, v13))
  {
    v19 = a3;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1C441D828(a1, a2, v20);
    _os_log_impl(&dword_1C43F8000, v12, v13, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact", v14, 0xCu);
    sub_1C440962C(v15);
    MEMORY[0x1C6942830](v15, -1, -1);
    v16 = v14;
    v7 = v6;
    a3 = v19;
    MEMORY[0x1C6942830](v16, -1, -1);
  }

  sub_1C4BDA284(a1, a2, a3, v20);
  if (!v7)
  {
    MEMORY[0x1EEE9AC00](v17);
    v18[2] = v20;

    sub_1C446C37C(sub_1C4BDA854, v18);

    sub_1C4AF9C44(v20);
  }
}

void sub_1C4C70090(uint64_t a1, unint64_t a2, void *a3, uint64_t *a4)
{
  v5 = v4;
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v10 = sub_1C4F00978();
  sub_1C442B738(v10, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CF8();

  if (os_log_type_enabled(v11, v12))
  {
    v46 = v4;
    v13 = swift_slowAlloc();
    v39 = a4;
    v14 = a3;
    v15 = swift_slowAlloc();
    *&v42[0] = v15;
    *v13 = 136315138;
    *(v13 + 4) = sub_1C441D828(a1, a2, v42);
    _os_log_impl(&dword_1C43F8000, v11, v12, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact", v13, 0xCu);
    sub_1C440962C(v15);
    v16 = v15;
    a3 = v14;
    MEMORY[0x1C6942830](v16, -1, -1);
    v17 = v13;
    v5 = v46;
    MEMORY[0x1C6942830](v17, -1, -1);
  }

  v43 = 0;
  v44 = 0;
  sub_1C44E9220();
  if (!v5)
  {
    v19 = a3[9];
    if (v19)
    {
      v20 = a3[14];
      v22 = a3[11];
      v21 = a3[12];
      v23 = a3[10];
      v46 = v18;
      v24 = a3[8];
      v25 = MEMORY[0x1E69E7CC0];
      if (v20)
      {
        v25 = v20;
      }

      v39 = v25;
      *&v42[0] = v24;
      *(&v42[0] + 1) = v19;
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](1937008223, 0xE400000000000000);
      v41[0] = v46;
      v41[1] = v24;
      v41[2] = v19;
      v41[3] = v23;
      v41[4] = v22;
      v41[5] = v21;
      v41[6] = v39;
      *&v41[7] = v42[0];
      v26 = (a3 + *(_s6ConfigVMa(0) + 52));
      v27 = *v26;
      v37 = v26[1];
      v38 = v27;
      v28 = v26[2];
      v29 = v26[3];
      v30 = v26[4];
      v31 = v26[5];
      v32 = v26[6];
      memcpy(v42, v41, 0x48uLL);
      *(&v42[4] + 1) = v27;
      *&v42[5] = v37;
      *(&v42[5] + 1) = v28;
      *&v42[6] = v29;
      *(&v42[6] + 1) = v30;
      *&v42[7] = v31;
      *(&v42[7] + 1) = v32;
      v33 = memcpy(__dst, v42, 0x80uLL);
      v39 = &v37;
      MEMORY[0x1EEE9AC00](v33);
      v36[2] = __dst;
      sub_1C4BC3C1C(v38, v37);
      sub_1C46A9810(v41, &v40);

      sub_1C446C37C(sub_1C4BE324C, v36);
      sub_1C4BCDE54(v42);

      sub_1C4AF99F4(v41);
    }

    else
    {
      sub_1C450B034();
      swift_allocError();
      *v34 = a1;
      *(v34 + 8) = a2;
      *(v34 + 16) = 0xD000000000000038;
      *(v34 + 24) = 0x80000001C4FB8ED0;
      v35 = v42[1];
      *(v34 + 32) = v42[0];
      *(v34 + 48) = v35;
      *(v34 + 64) = 3;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

void sub_1C4C70438(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v29 = a5;
  v30 = a7;
  v33 = a1;
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v11 = sub_1C4F00978();
  sub_1C442B738(v11, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = sub_1C4F00968();
  v13 = sub_1C4F01CF8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v31 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1C441D828(v33, a2, &v31);
    _os_log_impl(&dword_1C43F8000, v12, v13, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact", v14, 0xCu);
    sub_1C440962C(v15);
    v16 = v15;
    v8 = v7;
    MEMORY[0x1C6942830](v16, -1, -1);
    MEMORY[0x1C6942830](v14, -1, -1);
  }

  v17 = (a3 + *(_s6ConfigVMa(0) + 72));
  v18 = v17[1];
  if (v18)
  {
    v19 = *v17;
    v20 = v17[2];
    v31 = 0uLL;
    sub_1C44E9220();
    if (!v8)
    {
      v22 = v21;
      swift_retain_n();

      v23 = v29;

      sub_1C4C7CF78();
      v25 = v24;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C470336C(v22, v19, v18, v20, v25, v32);

      MEMORY[0x1EEE9AC00](v26);
      v28[2] = v32;
      sub_1C446C37C(sub_1C4707C54, v28);
      sub_1C46EEFDC(v32);
    }
  }

  else
  {
    sub_1C450B034();
    swift_allocError();
    *v27 = v33;
    *(v27 + 8) = a2;
    *(v27 + 16) = 0xD00000000000002ALL;
    *(v27 + 24) = 0x80000001C4F936F0;
    *(v27 + 32) = 0;
    *(v27 + 40) = 0xE000000000000000;
    *(v27 + 48) = v31;
    *(v27 + 64) = 1;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4C70774(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v33 = a1;
  v4 = v3;
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v27 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1C441D828(v33, a2, &v27);
    _os_log_impl(&dword_1C43F8000, v8, v9, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact", v10, 0xCu);
    sub_1C440962C(v11);
    v12 = v11;
    v4 = v3;
    MEMORY[0x1C6942830](v12, -1, -1);
    MEMORY[0x1C6942830](v10, -1, -1);
  }

  v13 = (a3 + *(_s6ConfigVMa(0) + 56));
  v14 = v13[1];
  if (v14)
  {
    v15 = *v13;
    v16 = *(v13 + 16);
    v27 = 0uLL;
    sub_1C44E9220();
    if (!v4)
    {
      v18 = v17;
      sub_1C456902C(&qword_1EC0BBBF8, &qword_1C4F5C950);
      LODWORD(v33) = v16;
      v19 = *(type metadata accessor for ViewDatabaseArtifact.Property(0) - 8);
      v20 = *(v19 + 72);
      v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1C4F0D480;
      v23 = (v22 + v21);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFBDD8();
      *v23 = 1684628589;
      *(v23 + 1) = 0xE400000000000000;
      sub_1C4EFBDE8();
      strcpy(&v23[v20], "relevanceScore");
      v23[v20 + 15] = -18;
      v24 = &v23[2 * v20];
      sub_1C4EFBDD8();
      *v24 = 0x74616E616C707865;
      *(v24 + 1) = 0xEB000000006E6F69;
      v25 = &v23[3 * v20];
      sub_1C4EFBE08();
      *v25 = 0xD000000000000010;
      *(v25 + 1) = 0x80000001C4FB97A0;
      v28 = v15;
      v29 = v14;
      v30 = v33;
      v31 = v18;
      v32 = v22;
      sub_1C4CFDDC4();
    }
  }

  else
  {
    sub_1C450B034();
    swift_allocError();
    *v26 = v33;
    *(v26 + 8) = a2;
    *(v26 + 16) = 0xD00000000000001FLL;
    *(v26 + 24) = 0x80000001C4FB9780;
    *(v26 + 32) = 0;
    *(v26 + 40) = 0xE000000000000000;
    *(v26 + 48) = v27;
    *(v26 + 64) = 1;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4C70B34(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v21 = a1;
  v4 = v3;
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v20 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1C441D828(v21, a2, &v20);
    _os_log_impl(&dword_1C43F8000, v8, v9, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact", v10, 0xCu);
    sub_1C440962C(v11);
    v12 = v11;
    v4 = v3;
    MEMORY[0x1C6942830](v12, -1, -1);
    MEMORY[0x1C6942830](v10, -1, -1);
  }

  v13 = (a3 + *(_s6ConfigVMa(0) + 60));
  v14 = v13[1];
  if (v14)
  {
    v15 = *v13;
    v16 = v13[2];
    v20 = 0uLL;
    sub_1C44E9220();
    if (!v4)
    {
      v18 = v17;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4CFDCF8(v15, v14, v18, v16);
    }
  }

  else
  {
    sub_1C450B034();
    swift_allocError();
    *v19 = v21;
    *(v19 + 8) = a2;
    *(v19 + 16) = 0xD000000000000016;
    *(v19 + 24) = 0x80000001C4FB99D0;
    *(v19 + 32) = 0;
    *(v19 + 40) = 0xE000000000000000;
    *(v19 + 48) = v20;
    *(v19 + 64) = 1;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4C70DAC(uint64_t a1, unint64_t a2)
{
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1C441D828(a1, a2, &v9);
    _os_log_impl(&dword_1C43F8000, v5, v6, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact", v7, 0xCu);
    sub_1C440962C(v8);
    MEMORY[0x1C6942830](v8, -1, -1);
    MEMORY[0x1C6942830](v7, -1, -1);
  }

  sub_1C4C0C9A8(a1, a2);
}

void sub_1C4C70F64(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v10 = sub_1C4F00978();
  sub_1C442B738(v10, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CF8();

  if (os_log_type_enabled(v11, v12))
  {
    v41 = a4;
    v36 = a3;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v39[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1C441D828(a1, a2, v39);
    _os_log_impl(&dword_1C43F8000, v11, v12, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact", v13, 0xCu);
    sub_1C440962C(v14);
    v15 = v14;
    v5 = v4;
    MEMORY[0x1C6942830](v15, -1, -1);
    v16 = v13;
    a3 = v36;
    MEMORY[0x1C6942830](v16, -1, -1);
  }

  *v39 = 0uLL;
  sub_1C44E9220();
  if (!v5)
  {
    v18 = a3[22];
    if (v18)
    {
      v41 = v17;
      v19 = a3[27];
      v20 = a3[25];
      v36 = a3[24];
      v21 = a3[23];
      v22 = a3[21];
      v39[0] = v22;
      v39[1] = v18;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](1937008223, 0xE400000000000000);
      v23 = MEMORY[0x1E69E7CC0];
      if (v19)
      {
        v23 = v19;
      }

      *v38 = v22;
      *&v38[8] = v18;
      *&v38[16] = v41;
      *&v38[24] = v21;
      *&v38[32] = v36;
      *&v38[40] = v20;
      *&v38[48] = *v39;
      *&v38[64] = v23;
      v24 = (a3 + *(_s6ConfigVMa(0) + 52));
      v25 = *v24;
      v34 = v24[1];
      v35 = v25;
      v26 = v24[2];
      v27 = v24[3];
      v28 = v24[4];
      v29 = v24[5];
      v30 = v24[6];
      memcpy(v39, v38, 0x48uLL);
      v39[9] = v25;
      v39[10] = v34;
      v39[11] = v26;
      v39[12] = v27;
      v39[13] = v28;
      v39[14] = v29;
      v39[15] = v30;
      v31 = memcpy(__dst, v39, 0x80uLL);
      v36 = &v34;
      MEMORY[0x1EEE9AC00](v31);
      v33[2] = __dst;
      sub_1C4BC3C1C(v35, v34);
      sub_1C4A4CA50(v38, &v37);

      sub_1C446C37C(sub_1C4C44B5C, v33);
      sub_1C4C449F8(v39);

      sub_1C4AF9888(v38);
    }

    else
    {
      sub_1C450B034();
      swift_allocError();
      *v32 = a1;
      *(v32 + 8) = a2;
      *(v32 + 16) = 0xD000000000000012;
      *(v32 + 24) = 0x80000001C4FBC0C0;
      *(v32 + 32) = 0;
      *(v32 + 40) = 0xE000000000000000;
      *(v32 + 48) = *v39;
      *(v32 + 64) = 1;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

void sub_1C4C71318()
{
  sub_1C43FE96C();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v8 = sub_1C4F00978();
  sub_1C442B738(v8, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();

  if (os_log_type_enabled(v9, v10))
  {
    sub_1C43FECF0();
    v11 = v2;
    v12 = swift_slowAlloc();
    sub_1C43FEC60();
    v13 = swift_slowAlloc();
    v21[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1C441D828(v7, v5, v21);
    _os_log_impl(&dword_1C43F8000, v9, v10, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact", v12, 0xCu);
    sub_1C440962C(v13);
    v3 = v0;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v2 = v11;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v21[0] = 0;
  v21[1] = 0;
  sub_1C44E9220();
  if (!v3)
  {
    MEMORY[0x1EEE9AC00](v14);
    strcpy(v17, "interactions");
    v17[13] = 0;
    v18 = -5120;
    v19 = v15;
    v20 = MEMORY[0x1E69E7CC0];
    sub_1C446C37C(v2, &v16);
  }

  sub_1C43FBC80();
}

void sub_1C4C71504(uint64_t a1, unint64_t a2)
{
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v5 = sub_1C4F00978();
  sub_1C442B738(v5, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CF8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1C441D828(a1, a2, v10);
    _os_log_impl(&dword_1C43F8000, v6, v7, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact", v8, 0xCu);
    sub_1C440962C(v9);
    MEMORY[0x1C6942830](v9, -1, -1);
    MEMORY[0x1C6942830](v8, -1, -1);
  }

  v10[0] = 0;
  v10[1] = 0;
  sub_1C44E9220();
  if (!v2)
  {
    sub_1C446C37C(sub_1C4B44BB4, 0);
  }
}

void sub_1C4C716C0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v12 = sub_1C4F00978();
  sub_1C442B738(v12, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CF8();

  if (os_log_type_enabled(v13, v14))
  {
    v33 = v6;
    v15 = swift_slowAlloc();
    LODWORD(v29) = a6;
    v16 = swift_slowAlloc();
    v30[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1C441D828(a1, a2, v30);
    _os_log_impl(&dword_1C43F8000, v13, v14, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact", v15, 0xCu);
    sub_1C440962C(v16);
    MEMORY[0x1C6942830](v16, -1, -1);
    v17 = v15;
    v7 = v33;
    MEMORY[0x1C6942830](v17, -1, -1);
  }

  sub_1C4C6BF18(a1, a2, a3, v31);
  if (!v7)
  {
    v18 = (a3 + *(_s6ConfigVMa(0) + 52));
    v19 = *v18;
    v28 = v18[1];
    v29 = v19;
    v20 = v18[2];
    v21 = v18[3];
    v22 = v18[4];
    v23 = v18[5];
    v24 = v18[6];
    memcpy(v30, v31, 0x60uLL);
    v30[12] = v19;
    v30[13] = v28;
    v30[14] = v20;
    v30[15] = v21;
    v30[16] = v22;
    v30[17] = v23;
    v30[18] = v24;
    v25 = memcpy(__dst, v30, 0x98uLL);
    v33 = &v27;
    MEMORY[0x1EEE9AC00](v25);
    v26[2] = __dst;
    sub_1C4BC3C1C(v29, v28);

    sub_1C446C37C(sub_1C4C6C7E8, v26);
    sub_1C4C6C7A0(v30);
  }
}

void sub_1C4C7195C()
{
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v0 = sub_1C4F00978();
  sub_1C442B738(v0, qword_1EDE2DF70);
  sub_1C43FBD30();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v1 = sub_1C4F00968();
  v2 = sub_1C4F01CF8();

  if (os_log_type_enabled(v1, v2))
  {
    sub_1C43FECF0();
    v3 = swift_slowAlloc();
    sub_1C43FEC60();
    v9 = swift_slowAlloc();
    *v3 = 136315138;
    v4 = sub_1C43FE99C();
    *(v3 + 4) = sub_1C441D828(v4, v5, v6);
    sub_1C4403218(&dword_1C43F8000, v7, v8, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact");
    sub_1C440962C(v9);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }
}

void sub_1C4C71A78(uint64_t a1, unint64_t a2, void *a3)
{
  v20 = a1;
  v4 = v3;
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v19 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1C441D828(v20, a2, &v19);
    _os_log_impl(&dword_1C43F8000, v8, v9, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact", v10, 0xCu);
    sub_1C440962C(v11);
    v12 = v11;
    v4 = v3;
    MEMORY[0x1C6942830](v12, -1, -1);
    MEMORY[0x1C6942830](v10, -1, -1);
  }

  v13 = a3[4];
  if (v13)
  {
    v14 = a3[3];
    v15 = a3[5];
    v19 = 0uLL;
    sub_1C44E9220();
    if (!v4)
    {
      v17 = v16;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4CFDBF8(v14, v13, v17, v15);
    }
  }

  else
  {
    sub_1C450B034();
    swift_allocError();
    *v18 = v20;
    *(v18 + 8) = a2;
    *(v18 + 16) = 0xD000000000000015;
    *(v18 + 24) = 0x80000001C4FBE050;
    *(v18 + 32) = 0;
    *(v18 + 40) = 0xE000000000000000;
    *(v18 + 48) = v19;
    *(v18 + 64) = 1;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void *sub_1C4C71CD8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v9 = sub_1C4F00978();
  sub_1C442B738(v9, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = sub_1C4F00968();
  v11 = sub_1C4F01CF8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = a1;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1C441D828(v12, a2, &v21);
    _os_log_impl(&dword_1C43F8000, v10, v11, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact", v13, 0xCu);
    sub_1C440962C(v14);
    MEMORY[0x1C6942830](v14, -1, -1);
    v15 = v13;
    a1 = v12;
    v5 = v4;
    MEMORY[0x1C6942830](v15, -1, -1);
  }

  result = sub_1C4C7E25C(a1, a2, a3);
  if (!v5)
  {
    sub_1C4EFC278();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = sub_1C4F00968();
    v18 = sub_1C4F01CF8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1C441D828(a1, a2, &v21);
      _os_log_impl(&dword_1C43F8000, v17, v18, "Clearing VectorDB for %s.", v19, 0xCu);
      sub_1C440962C(v20);
      MEMORY[0x1C6942830](v20, -1, -1);
      MEMORY[0x1C6942830](v19, -1, -1);
    }
  }

  return result;
}

uint64_t sub_1C4C71F70()
{
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v0 = sub_1C4F00978();
  sub_1C442B738(v0, qword_1EDE2DF70);
  sub_1C43FBD30();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v1 = sub_1C4F00968();
  v2 = sub_1C4F01CF8();

  if (os_log_type_enabled(v1, v2))
  {
    sub_1C43FECF0();
    v3 = swift_slowAlloc();
    sub_1C43FEC60();
    v12 = swift_slowAlloc();
    *v3 = 136315138;
    v4 = sub_1C43FE99C();
    *(v3 + 4) = sub_1C441D828(v4, v5, v6);
    sub_1C4403218(&dword_1C43F8000, v7, v8, "Custom truncateArtifact method is not defined for %s. Defaulting to clearArtifact");
    sub_1C440962C(v12);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v9 = sub_1C43FE99C();
  return v10(v9);
}

void sub_1C4C7211C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C4BDA284(a1, a2, a3, __src);
  if (!v6)
  {
    v42 = &_s26ContextualEventsViewClientVN;
    v43 = &off_1F4401B70;
    v41[0] = swift_allocObject();
    memcpy((v41[0] + 16), __src, 0x50uLL);
    sub_1C442E860(v41, v39);
    sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
    sub_1C456902C(&qword_1EC0C50F8, &qword_1C4F5FBA8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      sub_1C4420C3C(&v36, &qword_1EC0C50D0, &unk_1C4F5FAD0);
LABEL_11:
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0D130;
      v24 = v42;
      v25 = v43;
      sub_1C4409678(v41, v42);
      (v25[2])(__src, v24, v25);
      v26 = *(&__src[1] + 1);
      v27 = *&__src[2];
      sub_1C4409678(__src, *(&__src[1] + 1));
      *(inited + 32) = (*(v27 + 8))(v26, v27);
      *(inited + 40) = v28;
      sub_1C440962C(__src);
      sub_1C4C74408();
      swift_setDeallocating();
      sub_1C44DEE40();
      goto LABEL_12;
    }

    sub_1C460986C(&v36, __src);
    v13 = _s6ConfigVMa(0);
    v14 = *(a3 + *(v13 + 48));
    if (v14 != 2)
    {
      v15 = v13;
      if (v14)
      {

        goto LABEL_8;
      }

      v16 = sub_1C4F02938();

      if (v16)
      {
LABEL_8:
        v17 = a3 + *(v15 + 52);
        v18 = *(v17 + 8);
        if (v18)
        {
          v19 = *(v17 + 48);
          v21 = *(v17 + 32);
          v20 = *(v17 + 40);
          v22 = *(v17 + 16);
          v44[0] = *v17;
          v44[1] = v18;
          v45 = v22;
          v46 = v21;
          v47 = v20;
          v48 = v19;
          sub_1C4C76508(a1, a2, __src, a3, v44, a4, a5, a6, sub_1C4C7D498, sub_1C4C7D300, sub_1C4C7D364, v29, v30, v31, v32, v33, v34, v35, v36, *(&v36 + 1), v37, *(&v37 + 1), v38);
          sub_1C440962C(__src);
LABEL_12:
          sub_1C440962C(v41);
          return;
        }
      }
    }

    sub_1C440962C(__src);
    goto LABEL_11;
  }
}

void sub_1C4C7249C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3[4];
  if (!v9)
  {
    sub_1C450B034();
    swift_allocError();
    *v20 = a1;
    *(v20 + 8) = a2;
    *(v20 + 16) = 0xD000000000000015;
    *(v20 + 24) = 0x80000001C4FBE050;
    *(v20 + 32) = 0;
    *(v20 + 40) = 0xE000000000000000;
    *(v20 + 48) = v45;
    *(v20 + 64) = 1;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return;
  }

  v56 = a6;
  v12 = a3[3];
  v13 = a3[5];
  v45 = 0uLL;
  sub_1C44E9220();
  if (v6)
  {
    return;
  }

  v15 = v14;
  v49 = &_s22UnstructuredViewClientVN;
  v50 = &off_1F4406790;
  v16 = swift_allocObject();
  v48[0] = v16;
  v16[2] = v12;
  v16[3] = v9;
  v16[4] = v15;
  v16[5] = v13;
  sub_1C442E860(v48, v44);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
  sub_1C456902C(&qword_1EC0C50F8, &qword_1C4F5FBA8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    sub_1C4420C3C(&v41, &qword_1EC0C50D0, &unk_1C4F5FAD0);
LABEL_13:
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    v29 = v49;
    v30 = v50;
    sub_1C4409678(v48, v49);
    (v30[2])(&v45, v29, v30);
    v31 = v46;
    v32 = v47;
    sub_1C4409678(&v45, v46);
    *(inited + 32) = (*(v32 + 8))(v31, v32);
    *(inited + 40) = v33;
    sub_1C440962C(&v45);
    sub_1C4C74408();
    swift_setDeallocating();
    sub_1C44DEE40();
    goto LABEL_14;
  }

  sub_1C460986C(&v41, &v45);
  v17 = _s6ConfigVMa(0);
  v18 = *(a3 + *(v17 + 48));
  if (v18 == 2)
  {
    goto LABEL_12;
  }

  v19 = v17;
  if (v18)
  {

    goto LABEL_10;
  }

  v21 = sub_1C4F02938();

  if ((v21 & 1) == 0)
  {
LABEL_12:
    sub_1C440962C(&v45);
    goto LABEL_13;
  }

LABEL_10:
  v22 = a3 + *(v19 + 52);
  v23 = *(v22 + 1);
  if (!v23)
  {
    goto LABEL_12;
  }

  v24 = *(v22 + 6);
  v26 = *(v22 + 4);
  v25 = *(v22 + 5);
  v27 = *(v22 + 1);
  v51[0] = *v22;
  v51[1] = v23;
  v52 = v27;
  v53 = v26;
  v54 = v25;
  v55 = v24;
  sub_1C4C76EE8(a1, a2, &v45, a3, v51, a4, a5, v56, sub_1C4C7D498, sub_1C4C7D40C, sub_1C4C7D44C, a4, v35, v36, v37, v38, v39, v40, v41, *(&v41 + 1), v42, *(&v42 + 1), v43);
  sub_1C440962C(&v45);
LABEL_14:
  sub_1C440962C(v48);
}

void sub_1C4C728A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = 0uLL;
  sub_1C44E9220();
  if (!v6)
  {
    v14 = v13;
    v48 = &_s25SportsSchedulesViewClientVN;
    v49 = &off_1F4405B00;
    v15 = swift_allocObject();
    v47[0] = v15;
    v15[2] = 0x6870617267;
    v15[3] = 0xE500000000000000;
    v16 = MEMORY[0x1E69E7CC0];
    v15[4] = v14;
    v15[5] = v16;
    sub_1C442E860(v47, v43);
    sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
    sub_1C456902C(&qword_1EC0C50F8, &qword_1C4F5FBA8);
    if (!swift_dynamicCast())
    {
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
      sub_1C4420C3C(&v40, &qword_1EC0C50D0, &unk_1C4F5FAD0);
LABEL_11:
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0D130;
      v28 = v48;
      v29 = v49;
      sub_1C4409678(v47, v48);
      (v29[2])(&v44, v28, v29);
      v30 = v45;
      v31 = v46;
      sub_1C4409678(&v44, v45);
      *(inited + 32) = (*(v31 + 8))(v30, v31);
      *(inited + 40) = v32;
      sub_1C440962C(&v44);
      sub_1C4C74408();
      swift_setDeallocating();
      sub_1C44DEE40();
      goto LABEL_12;
    }

    sub_1C460986C(&v40, &v44);
    v17 = _s6ConfigVMa(0);
    v18 = *(a3 + *(v17 + 48));
    if (v18 != 2)
    {
      v19 = v17;
      if (v18)
      {

        goto LABEL_8;
      }

      v20 = sub_1C4F02938();

      if (v20)
      {
LABEL_8:
        v21 = a3 + *(v19 + 52);
        v22 = *(v21 + 8);
        if (v22)
        {
          v23 = *(v21 + 48);
          v25 = *(v21 + 32);
          v24 = *(v21 + 40);
          v26 = *(v21 + 16);
          v50[0] = *v21;
          v50[1] = v22;
          v51 = v26;
          v52 = v25;
          v53 = v24;
          v54 = v23;
          sub_1C4C76EE8(a1, a2, &v44, a3, v50, a4, a5, a6, sub_1C4C7D498, sub_1C4C7D4B0, sub_1C4C7D538, v33, v34, v35, v36, v37, v38, v39, v40, *(&v40 + 1), v41, *(&v41 + 1), v42);
          sub_1C440962C(&v44);
LABEL_12:
          sub_1C440962C(v47);
          return;
        }
      }
    }

    sub_1C440962C(&v44);
    goto LABEL_11;
  }
}

void sub_1C4C72C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = _s6ConfigVMa(0);
  v14 = a3 + *(v13 + 56);
  v15 = *(v14 + 8);
  if (!v15)
  {
    sub_1C450B034();
    swift_allocError();
    *v27 = a1;
    *(v27 + 8) = a2;
    *(v27 + 16) = 0xD00000000000001FLL;
    *(v27 + 24) = 0x80000001C4FB9780;
    *(v27 + 32) = 0;
    *(v27 + 40) = 0xE000000000000000;
    *(v27 + 48) = v58;
    *(v27 + 64) = 1;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return;
  }

  v16 = v13;
  v50 = *v14;
  v69 = *(v14 + 16);
  v58 = 0uLL;
  sub_1C44E9220();
  if (!v6)
  {
    v44 = a6;
    v45 = a4;
    v47 = a5;
    v48 = a1;
    v49 = a2;
    v46 = v17;
    sub_1C456902C(&qword_1EC0BBBF8, &qword_1C4F5C950);
    v18 = *(type metadata accessor for ViewDatabaseArtifact.Property(0) - 8);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1C4F0D480;
    v22 = (v21 + v20);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFBDD8();
    *v22 = 1684628589;
    *(v22 + 1) = 0xE400000000000000;
    sub_1C4EFBDE8();
    strcpy(&v22[v19], "relevanceScore");
    v22[v19 + 15] = -18;
    v23 = &v22[2 * v19];
    sub_1C4EFBDD8();
    *v23 = 0x74616E616C707865;
    *(v23 + 1) = 0xEB000000006E6F69;
    v24 = &v22[3 * v19];
    sub_1C4EFBE08();
    *v24 = 0xD000000000000010;
    *(v24 + 1) = 0x80000001C4FB97A0;
    v62 = &_s32EntityRelevanceRankingViewClientVN;
    v63 = &off_1F4402C98;
    v25 = swift_allocObject();
    v61[0] = v25;
    *(v25 + 16) = v50;
    *(v25 + 24) = v15;
    *(v25 + 32) = v69;
    *(v25 + 40) = v46;
    *(v25 + 48) = v21;
    sub_1C442E860(v61, v57);
    sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
    sub_1C456902C(&qword_1EC0C50F8, &qword_1C4F5FBA8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      memset(v56, 0, sizeof(v56));
      sub_1C4420C3C(v56, &qword_1EC0C50D0, &unk_1C4F5FAD0);
      goto LABEL_8;
    }

    sub_1C460986C(v56, &v58);
    v26 = *(a3 + *(v16 + 48));
    if (v26 == 2)
    {
LABEL_5:
      sub_1C440962C(&v58);
LABEL_8:
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0D130;
      v29 = v62;
      v30 = v63;
      sub_1C4409678(v61, v62);
      (v30[2])(&v58, v29, v30);
      v31 = v59;
      v32 = v60;
      sub_1C4409678(&v58, v59);
      *(inited + 32) = (*(v32 + 8))(v31, v32);
      *(inited + 40) = v33;
      sub_1C440962C(&v58);
      sub_1C4C74408();
      swift_setDeallocating();
      sub_1C44DEE40();
LABEL_9:
      sub_1C440962C(v61);
      return;
    }

    if (v26)
    {

      v35 = v48;
      v34 = v49;
      v36 = v45;
    }

    else
    {
      v37 = sub_1C4F02938();

      v35 = v48;
      v34 = v49;
      v36 = v45;
      if ((v37 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v38 = a3 + *(v16 + 52);
    v39 = *(v38 + 8);
    if (v39)
    {
      v40 = *(v38 + 48);
      v42 = *(v38 + 32);
      v41 = *(v38 + 40);
      v43 = *(v38 + 16);
      v64[0] = *v38;
      v64[1] = v39;
      v65 = v43;
      v66 = v42;
      v67 = v41;
      v68 = v40;
      sub_1C4C76508(v35, v34, &v58, a3, v64, v36, v47, v44, sub_1C4C7D498, sub_1C4C7D300, sub_1C4C7D550, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
      sub_1C440962C(&v58);
      goto LABEL_9;
    }

    goto LABEL_5;
  }
}

void sub_1C4C731D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = _s6ConfigVMa(0);
  v14 = (a3 + *(v13 + 60));
  v15 = v14[1];
  if (!v15)
  {
    sub_1C450B034();
    swift_allocError();
    *v26 = a1;
    *(v26 + 8) = a2;
    *(v26 + 16) = 0xD000000000000016;
    *(v26 + 24) = 0x80000001C4FB99D0;
    *(v26 + 32) = 0;
    *(v26 + 40) = 0xE000000000000000;
    *(v26 + 48) = v52;
    *(v26 + 64) = 1;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return;
  }

  v16 = v13;
  v41 = a4;
  v63 = a6;
  v17 = *v14;
  v18 = v14[2];
  v52 = 0uLL;
  sub_1C44E9220();
  if (v6)
  {
    return;
  }

  v20 = a1;
  v21 = v19;
  v40 = v20;
  v56 = &_s32EntityTaggingInferenceViewClientVN;
  v57 = &off_1F4402F80;
  v22 = swift_allocObject();
  v55[0] = v22;
  v22[2] = v17;
  v22[3] = v15;
  v22[4] = v21;
  v22[5] = v18;
  sub_1C442E860(v55, v51);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
  sub_1C456902C(&qword_1EC0C50F8, &qword_1C4F5FBA8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    sub_1C4420C3C(&v48, &qword_1EC0C50D0, &unk_1C4F5FAD0);
LABEL_13:
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    v35 = v56;
    v36 = v57;
    sub_1C4409678(v55, v56);
    (v36[2])(&v52, v35, v36);
    v37 = v53;
    v38 = v54;
    sub_1C4409678(&v52, v53);
    *(inited + 32) = (*(v38 + 8))(v37, v38);
    *(inited + 40) = v39;
    sub_1C440962C(&v52);
    sub_1C4C74408();
    swift_setDeallocating();
    sub_1C44DEE40();
    goto LABEL_14;
  }

  sub_1C460986C(&v48, &v52);
  v23 = *(a3 + *(v16 + 48));
  if (v23 == 2)
  {
    goto LABEL_12;
  }

  if (v23)
  {

    v24 = v63;
    v25 = v41;
    goto LABEL_10;
  }

  v27 = sub_1C4F02938();

  v24 = v63;
  v25 = v41;
  if ((v27 & 1) == 0)
  {
LABEL_12:
    sub_1C440962C(&v52);
    goto LABEL_13;
  }

LABEL_10:
  v28 = a3 + *(v16 + 52);
  v29 = *(v28 + 8);
  if (!v29)
  {
    goto LABEL_12;
  }

  v30 = *(v28 + 48);
  v32 = *(v28 + 32);
  v31 = *(v28 + 40);
  v33 = *(v28 + 16);
  v58[0] = *v28;
  v58[1] = v29;
  v59 = v33;
  v60 = v32;
  v61 = v31;
  v62 = v30;
  sub_1C4C76508(v40, a2, &v52, a3, v58, v25, a5, v24, sub_1C4C7D498, sub_1C4C7D300, sub_1C4C7D550, v40, a5, v41, v42, v43, v44, v45, v46, v47, v48, *(&v48 + 1), v49);
  sub_1C440962C(&v52);
LABEL_14:
  sub_1C440962C(v55);
}

void sub_1C4C7360C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C4C6BF18(a1, a2, a3, __src);
  if (!v6)
  {
    v35 = a4;
    v36 = a6;
    v39 = a1;
    v40 = a2;
    v41 = a5;
    v61 = 0;
    v37 = a3;
    v38 = _s6ConfigVMa(0);
    v13 = (a3 + *(v38 + 52));
    v15 = *v13;
    v14 = v13[1];
    v17 = v13[2];
    v16 = v13[3];
    v18 = v13[4];
    v19 = v13[5];
    v20 = v13[6];
    v53 = &unk_1F4405DA0;
    v54 = &off_1F4405DD8;
    v21 = swift_allocObject();
    v52[0] = v21;
    memcpy(v21 + 2, __src, 0x60uLL);
    v21[14] = v15;
    v21[15] = v14;
    v21[16] = v17;
    v21[17] = v16;
    v21[18] = v18;
    v21[19] = v19;
    v21[20] = v20;
    sub_1C442E860(v52, v48);
    sub_1C4BC3C1C(v15, v14);
    sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
    sub_1C456902C(&qword_1EC0C50F8, &qword_1C4F5FBA8);
    if (!swift_dynamicCast())
    {
      memset(v47, 0, sizeof(v47));
      sub_1C4420C3C(v47, &qword_1EC0C50D0, &unk_1C4F5FAD0);
LABEL_11:
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0D130;
      v30 = v53;
      v31 = v54;
      sub_1C4409678(v52, v53);
      (v31[2])(&v49, v30, v31);
      v32 = v50;
      v33 = v51;
      sub_1C4409678(&v49, v50);
      *(inited + 32) = (*(v33 + 8))(v32, v33);
      *(inited + 40) = v34;
      sub_1C440962C(&v49);
      sub_1C4C74408();
      swift_setDeallocating();
      sub_1C44DEE40();
      goto LABEL_12;
    }

    sub_1C460986C(v47, &v49);
    v22 = *(v37 + *(v38 + 48));
    if (v22 != 2)
    {
      if (v22)
      {

        goto LABEL_8;
      }

      v23 = sub_1C4F02938();

      if (v23)
      {
LABEL_8:
        v24 = v13[1];
        if (v24)
        {
          v25 = v13[6];
          v27 = v13[4];
          v26 = v13[5];
          v28 = *(v13 + 1);
          v56[0] = *v13;
          v56[1] = v24;
          v57 = v28;
          v58 = v27;
          v59 = v26;
          v60 = v25;
          sub_1C4C76EE8(v39, v40, &v49, v37, v56, v35, v41, v36, sub_1C4C7D498, sub_1C4C7D4B0, sub_1C4C7D538, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
          sub_1C440962C(&v49);
LABEL_12:
          sub_1C440962C(v52);
          return;
        }
      }
    }

    sub_1C440962C(&v49);
    goto LABEL_11;
  }
}

void sub_1C4C739D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = 0;
  v54 = 0;
  sub_1C44E9220();
  if (!v6)
  {
    v63 = v11;
    v12 = a3[9];
    if (!v12)
    {
      sub_1C450B034();
      swift_allocError();
      *v23 = a1;
      *(v23 + 8) = a2;
      *(v23 + 16) = 0xD000000000000038;
      *(v23 + 24) = 0x80000001C4FB8ED0;
      v24 = v51;
      *(v23 + 32) = v50;
      *(v23 + 48) = v24;
      *(v23 + 64) = 3;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      return;
    }

    v38 = a4;
    v46 = a1;
    v47 = a2;
    v45 = a3[11];
    v41 = a3[12];
    v42 = a3[10];
    v43 = a3[8];
    v13 = MEMORY[0x1E69E7CC0];
    if (a3[14])
    {
      v13 = a3[14];
    }

    v44 = v13;
    *&v50 = a3[8];
    *(&v50 + 1) = v12;
    swift_bridgeObjectRetain_n();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](1937008223, 0xE400000000000000);
    v40 = v50;
    v37 = _s6ConfigVMa(0);
    v14 = (a3 + *(v37 + 52));
    v15 = v14[1];
    v39 = *v14;
    v16 = v14[2];
    v17 = v14[3];
    v19 = v14[4];
    v18 = v14[5];
    v20 = v14[6];
    v56 = &_s19CustomRowViewClientVN;
    v57 = &off_1F4401D48;
    v21 = swift_allocObject();
    v55[0] = v21;
    v21[2] = v63;
    v21[3] = v43;
    v21[4] = v12;
    v21[5] = v42;
    v21[6] = v45;
    v21[7] = v41;
    v21[8] = v44;
    v21[9] = v40;
    v21[10] = v12;
    v21[11] = v39;
    v21[12] = v15;
    v21[13] = v16;
    v21[14] = v17;
    v21[15] = v19;
    v21[16] = v18;
    v21[17] = v20;
    sub_1C442E860(v55, v49);
    sub_1C4BC3C1C(v39, v15);
    sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
    sub_1C456902C(&qword_1EC0C50F8, &qword_1C4F5FBA8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      memset(v48, 0, sizeof(v48));
      sub_1C4420C3C(v48, &qword_1EC0C50D0, &unk_1C4F5FAD0);
LABEL_15:
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0D130;
      v32 = v56;
      v33 = v57;
      sub_1C4409678(v55, v56);
      (v33[2])(&v50, v32, v33);
      v34 = *(&v51 + 1);
      v35 = v52;
      sub_1C4409678(&v50, *(&v51 + 1));
      *(inited + 32) = (*(v35 + 8))(v34, v35);
      *(inited + 40) = v36;
      sub_1C440962C(&v50);
      sub_1C4C74408();
      swift_setDeallocating();
      sub_1C44DEE40();
      goto LABEL_16;
    }

    sub_1C460986C(v48, &v50);
    v22 = *(a3 + *(v37 + 48));
    if (v22 != 2)
    {
      if (v22)
      {

        goto LABEL_12;
      }

      v25 = sub_1C4F02938();

      if (v25)
      {
LABEL_12:
        v26 = v14[1];
        if (v26)
        {
          v27 = v14[6];
          v29 = v14[4];
          v28 = v14[5];
          v30 = *(v14 + 1);
          v58[0] = *v14;
          v58[1] = v26;
          v59 = v30;
          v60 = v29;
          v61 = v28;
          v62 = v27;
          sub_1C4C76978(v46, v47, &v50, a3, v58, v38);
          sub_1C440962C(&v50);
LABEL_16:
          sub_1C440962C(v55);
          return;
        }
      }
    }

    sub_1C440962C(&v50);
    goto LABEL_15;
  }
}

void sub_1C4C73E8C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = 0uLL;
  sub_1C44E9220();
  if (!v6)
  {
    v14 = v13;
    v15 = a3[22];
    if (!v15)
    {
      sub_1C450B034();
      swift_allocError();
      *v26 = a1;
      *(v26 + 8) = a2;
      *(v26 + 16) = 0xD000000000000012;
      *(v26 + 24) = 0x80000001C4FBC0C0;
      *(v26 + 32) = 0;
      *(v26 + 40) = 0xE000000000000000;
      *(v26 + 48) = v54;
      *(v26 + 64) = 1;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      return;
    }

    v41 = a4;
    v39 = a6;
    v49 = a5;
    v50 = a1;
    v51 = a2;
    v65 = 0;
    v16 = a3[27];
    v45 = a3[25];
    v46 = a3[23];
    v47 = a3[21];
    v48 = a3[24];
    *&v54 = v47;
    *(&v54 + 1) = v15;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_bridgeObjectRetain_n();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](1937008223, 0xE400000000000000);
    v17 = MEMORY[0x1E69E7CC0];
    if (v16)
    {
      v17 = v16;
    }

    v44 = v17;
    v40 = _s6ConfigVMa(0);
    v18 = (a3 + *(v40 + 52));
    v19 = *v18;
    v20 = v18[2];
    v21 = v18[3];
    v23 = v18[4];
    v22 = v18[5];
    v42 = v18[6];
    v43 = v18[1];
    v58 = &_s19ObjectRowViewClientVN;
    v59 = &off_1F4404A80;
    v24 = swift_allocObject();
    v57[0] = v24;
    v24[2] = v47;
    v24[3] = v15;
    v24[4] = v14;
    v24[5] = v46;
    v24[6] = v48;
    v24[7] = v45;
    v24[8] = v47;
    v24[9] = v15;
    v24[10] = v44;
    v24[11] = v19;
    v24[12] = v43;
    v24[13] = v20;
    v24[14] = v21;
    v24[15] = v23;
    v24[16] = v22;
    v24[17] = v42;
    sub_1C442E860(v57, v53);
    sub_1C4BC3C1C(v19, v43);
    sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
    sub_1C456902C(&qword_1EC0C50F8, &qword_1C4F5FBA8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      memset(v52, 0, sizeof(v52));
      sub_1C4420C3C(v52, &qword_1EC0C50D0, &unk_1C4F5FAD0);
LABEL_15:
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0D130;
      v34 = v58;
      v35 = v59;
      sub_1C4409678(v57, v58);
      (v35[2])(&v54, v34, v35);
      v36 = v55;
      v37 = v56;
      sub_1C4409678(&v54, v55);
      *(inited + 32) = (*(v37 + 8))(v36, v37);
      *(inited + 40) = v38;
      sub_1C440962C(&v54);
      sub_1C4C74408();
      swift_setDeallocating();
      sub_1C44DEE40();
      goto LABEL_16;
    }

    sub_1C460986C(v52, &v54);
    v25 = *(a3 + *(v40 + 48));
    if (v25 != 2)
    {
      if (v25)
      {

        goto LABEL_12;
      }

      v27 = sub_1C4F02938();

      if (v27)
      {
LABEL_12:
        v28 = v18[1];
        if (v28)
        {
          v29 = v18[6];
          v31 = v18[4];
          v30 = v18[5];
          v32 = *(v18 + 1);
          v60[0] = *v18;
          v60[1] = v28;
          v61 = v32;
          v62 = v31;
          v63 = v30;
          v64 = v29;
          sub_1C4C76EE8(v50, v51, &v54, a3, v60, v41, v49, v39, sub_1C4C7D498, sub_1C4C7D4B0, sub_1C4C7D538, v39, v40, v41, v42, v43, v44, v15, v47, v45, v46, v47, v48);
          sub_1C440962C(&v54);
LABEL_16:
          sub_1C440962C(v57);
          return;
        }
      }
    }

    sub_1C440962C(&v54);
    goto LABEL_15;
  }
}

void sub_1C4C74408()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1C44E9220();
  if (!v0)
  {
    sub_1C4401F14(v10);
    v12 = v11;
    sub_1C4416B8C();
    sub_1C4418704(v6, v12, v13, v14, v15, v16, v17, v18, 0, 0);
    sub_1C441CEF4();

    sub_1C444C3D4();
    MEMORY[0x1EEE9AC00](v19);
    sub_1C441E81C();
    *(v20 - 16) = v8;

    sub_1C4414334(v4, v21, v22, v23, v24, v25, v26, v27, v40, v42);
    sub_1C441CEF4();

    sub_1C444C3D4();
    MEMORY[0x1EEE9AC00](v28);
    sub_1C441E81C();
    *(v29 - 16) = v8;

    sub_1C4414334(v2, v30, v31, v32, v33, v34, v35, v36, v41, v43);
    sub_1C441CEF4();

    v37 = sub_1C4404BB0();
    sub_1C4C77544(v37, v38, v39);
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

void sub_1C4C74574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C44E9220();
  if (!v3)
  {
    sub_1C4401F14(a1);
    v7 = v6;
    sub_1C4416B8C();
    sub_1C4418704(sub_1C4C7CF24, v7, v8, v9, v10, v11, v12, v13, 0, 0);
    sub_1C441CEF4();

    sub_1C444C3D4();
    MEMORY[0x1EEE9AC00](v14);
    sub_1C441E81C();
    *(v15 - 16) = a3;

    sub_1C4414334(sub_1C4C7CF40, v16, v17, v18, v19, v20, v21, v22, v35, v37);

    sub_1C444C3D4();
    MEMORY[0x1EEE9AC00](v23);
    sub_1C441E81C();
    *(v24 - 16) = a3;

    sub_1C4414334(sub_1C4C7CF5C, v25, v26, v27, v28, v29, v30, v31, v36, v38);

    v32 = sub_1C4404BB0();
    sub_1C4C77544(v32, v33, v34);
  }
}

void sub_1C4C74958(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v24 = sub_1C4EFB768();
  MEMORY[0x1EEE9AC00](v24);
  v23 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = *(a2 + 16);
  v10 = (v9 + 8);
  v21 = a2;
  v22 = v8;
  v11 = (a2 + 16 * v8 + 24);
  if (v8)
  {
    while (1)
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v25 = 0;
      v26 = 0xE000000000000000;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02248();

      v25 = 0xD000000000000011;
      v26 = 0x80000001C4FBDD70;
      MEMORY[0x1C6940010](v12, v13);

      sub_1C4EFB758();
      sub_1C4EFBFF8();
      if (v2)
      {
        break;
      }

      (*v10)(v7, v24);

      v11 -= 2;
      if (!--v8)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v19 = "= ?;\n    INSERT INTO main.";
    v20 = 0x80000001C4FBDD90;
    v14 = v22;
    v15 = (v21 + 40);
    v16 = v23;
    if (!v22)
    {
      return;
    }

    while (1)
    {
      v17 = *(v15 - 1);
      v18 = *v15;
      v25 = 0;
      v26 = 0xE000000000000000;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02248();

      v25 = 0xD000000000000011;
      v26 = v20;
      MEMORY[0x1C6940010](v17, v18);
      MEMORY[0x1C6940010](0xD000000000000015, v19 | 0x8000000000000000);
      MEMORY[0x1C6940010](v17, v18);

      sub_1C4EFB758();
      sub_1C4EFBFF8();
      if (v2)
      {
        break;
      }

      (*v10)(v16, v24);

      v15 += 2;
      if (!--v14)
      {
        return;
      }
    }

    v7 = v16;
  }

  (*v10)(v7, v24);
}

void sub_1C4C74C28(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v13 = sub_1C4EFB768();
  MEMORY[0x1EEE9AC00](v13);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a2 + 16);
  v8 = (v7 + 8);
  v9 = (a2 + 16 * v6 + 24);
  if (v6)
  {
    while (1)
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v14 = 0;
      v15 = 0xE000000000000000;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02248();

      v14 = 0xD000000000000012;
      v15 = 0x80000001C4FBDD50;
      MEMORY[0x1C6940010](v10, v11);

      sub_1C4EFB758();
      sub_1C4EFBFF8();
      if (v2)
      {
        break;
      }

      (*v8)(v5, v13);

      v9 -= 2;
      if (!--v6)
      {
        return;
      }
    }

    (*v8)(v5, v13);
  }
}

uint64_t sub_1C4C74DDC(uint64_t a1, uint64_t a2, void (**a3)(char *, uint64_t))
{
  v8 = sub_1C4EFB768();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &i - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C46A9F90(a2, a3, 0x7865646E69, 0xE500000000000000);
  if (v3)
  {
    return v4;
  }

  v4 = v12;
  v46 = a2;
  v47 = a3;
  i = v9;
  v43 = v8;
  v44 = v11;
  v49 = a1;
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v18 = 0;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
LABEL_9:
      v11 = *(*(v4 + 56) + ((v19 << 10) | (16 * __clz(__rbit64(v16)))) + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFBF58();
      v16 &= v16 - 1;

      v18 = v19;
      if (!v16)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      (*v47)(v11, v43);

      return v4;
    }

    if (v19 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v19);
    ++v18;
    if (v16)
    {
      goto LABEL_9;
    }
  }

  v20 = sub_1C46A9F90(v46, v47, 0x656C626174, 0xE500000000000000);
  v21 = sub_1C4C7D19C(v20);

  v22 = 1 << v21[32];
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v21 + 8);
  v25 = (v22 + 63) >> 6;

  v27 = 0;
  v45 = v21;
  if (v24)
  {
    while (1)
    {
      v28 = v27;
LABEL_18:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFBF68();
      v24 &= v24 - 1;

      v27 = v28;
      if (!v24)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
LABEL_15:
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v28 >= v25)
    {
      break;
    }

    v24 = *&v21[8 * v28 + 64];
    ++v27;
    if (v24)
    {
      goto LABEL_18;
    }
  }

  v29 = sub_1C46A9F90(v46, v47, 0x72656767697274, 0xE700000000000000);
  v30 = v29;
  v31 = v29 + 64;
  v32 = 1 << *(v29 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v29 + 64);
  v35 = (v32 + 63) >> 6;
  v47 = (i + 8);
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v36 = 0;
  v46 = v31;
  for (i = v35; v34; v35 = i)
  {
    v37 = v36;
LABEL_29:
    v38 = (*(v30 + 48) + ((v37 << 10) | (16 * __clz(__rbit64(v34)))));
    v39 = *v38;
    v40 = v38[1];
    strcpy(v48, "DROP TRIGGER ");
    v48[7] = -4864;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v39, v40);

    v41 = v44;
    sub_1C4EFB758();
    sub_1C4EFBFF8();
    v34 &= v34 - 1;
    (*v47)(v41, v43);

    v36 = v37;
    v31 = v46;
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v37 >= v35)
    {

      return v4;
    }

    v34 = *(v31 + 8 * v37);
    ++v36;
    if (v34)
    {
      goto LABEL_29;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_1C4C75350()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  sub_1C43FBE94();
  v5 = sub_1C4EFB768();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v10 = sub_1C46A9F90(v4, v2, 0x7865646E69, 0xE500000000000000);
  if (v0)
  {
LABEL_16:
    sub_1C4402144();
    sub_1C43FBC80();
    return;
  }

  v11 = v10;
  v40 = v5;
  v41 = v9;
  v12 = v10 + 64;
  sub_1C43FD030();
  sub_1C449DB50();
  v14 = v13 >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = 0;
  if (v4)
  {
    while (1)
    {
      v16 = v15;
LABEL_7:
      sub_1C443DFE8();
      v18 = *(*(v11 + 48) + ((v16 << 10) | (16 * v17)));
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4440AC8();
      sub_1C4EFBF58();
      if (v18)
      {
        break;
      }

      sub_1C4458594();

      v15 = v16;
    }

LABEL_10:

    goto LABEL_16;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_25:
      sub_1C440A8E0();
      v39(v9, v40);

      goto LABEL_10;
    }

    if (v16 >= v14)
    {
      break;
    }

    ++v15;
    if (*(v12 + 8 * v16))
    {
      goto LABEL_7;
    }
  }

  sub_1C4440AC8();
  v23 = sub_1C46A9F90(v19, v20, v21, v22);
  v24 = sub_1C4C7D19C(v23);
  sub_1C441CEF4();

  sub_1C43FD030();
  sub_1C449DB50();
  v26 = v25 >> 6;

  v27 = 0;
  v42 = v24;
  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v28 >= v26)
    {
      break;
    }

    ++v27;
    if (v24[v28 + 8])
    {
      while (1)
      {
        sub_1C443DFE8();
        sub_1C4C7D568();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4440AC8();
        sub_1C4EFBF68();
        sub_1C4458594();
      }
    }
  }

  sub_1C4440AC8();
  v33 = sub_1C46A9F90(v29, v30, v31, v32) + 64;
  sub_1C43FD030();
  sub_1C449DB50();
  v35 = v34 >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v36 = 0;
  v43 = v33;
  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v37 >= v35)
    {

      goto LABEL_16;
    }

    ++v36;
    if (*(v33 + 8 * v37))
    {
      while (1)
      {
        sub_1C443DFE8();
        sub_1C4C7D568();
        strcpy(v44, "DROP TRIGGER ");
        v45 = -4864;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        MEMORY[0x1C6940010](v33, v24);

        v9 = v41;
        sub_1C4EFB758();
        sub_1C4440AC8();
        sub_1C4EFBFF8();
        if (v33)
        {
          break;
        }

        sub_1C4458594();
        sub_1C440A8E0();
        v38(v41, v40);

        v24 = v42;
        v33 = v43;
      }

      goto LABEL_25;
    }
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1C4C75800(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v54 = a4;
  v56 = a3;
  v57 = a1;
  v60 = sub_1C4EFB768();
  MEMORY[0x1EEE9AC00](v60);
  v52 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v51 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v51 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v51 - v14;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 64);
  v19 = (v16 + 63) >> 6;
  v58 = (v13 + 8);
  v55 = a2;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v21 = 0;
  if (v18)
  {
    while (1)
    {
      v22 = v21;
LABEL_8:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFB758();
      sub_1C4EFBFF8();
      if (v4)
      {
        break;
      }

      v18 &= v18 - 1;

      result = (*v58)(v15, v60);
      v21 = v22;
      if (!v18)
      {
        goto LABEL_5;
      }
    }

    return (*v58)(v15, v60);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_49;
      }

      if (v22 >= v19)
      {
        break;
      }

      v18 = *(a2 + 64 + 8 * v22);
      ++v21;
      if (v18)
      {
        goto LABEL_8;
      }
    }

    v23 = v56 + 64;
    v24 = 1 << *(v56 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *(v56 + 64);
    v27 = (v24 + 63) >> 6;
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v28 = 0;
    v29 = v51;
    if (v26)
    {
      while (1)
      {
        v30 = v28;
LABEL_18:
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EFB758();
        sub_1C4EFBFF8();
        if (v4)
        {
          break;
        }

        v26 &= v26 - 1;

        result = (*v58)(v29, v60);
        v28 = v30;
        if (!v26)
        {
          goto LABEL_15;
        }
      }

      return (*v58)(v29, v60);
    }

LABEL_15:
    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= v27)
      {

        v31 = v54 + 64;
        v32 = 1 << *(v54 + 32);
        v33 = -1;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        v34 = v33 & *(v54 + 64);
        v35 = (v32 + 63) >> 6;
        result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v36 = 0;
        if (!v34)
        {
LABEL_25:
          v38 = v53;
          while (1)
          {
            v37 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_50;
            }

            if (v37 >= v35)
            {

              v41 = 1 << *(v56 + 32);
              v42 = -1;
              if (v41 < 64)
              {
                v42 = ~(-1 << v41);
              }

              v43 = v42 & *(v56 + 64);
              v44 = (v41 + 63) >> 6;
              v55 = "DataCollectionMetadata.";
              result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v45 = 0;
              if (v43)
              {
                while (1)
                {
                  v46 = v45;
LABEL_40:
                  v47 = (*(v56 + 48) + ((v46 << 10) | (16 * __clz(__rbit64(v43)))));
                  v48 = *v47;
                  v49 = v47[1];
                  v59[0] = 0;
                  v59[1] = 0xE000000000000000;
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  sub_1C4F02248();

                  strcpy(v59, "INSERT INTO ");
                  BYTE5(v59[1]) = 0;
                  HIWORD(v59[1]) = -5120;
                  MEMORY[0x1C6940010](v48, v49);
                  MEMORY[0x1C6940010](40, 0xE100000000000000);
                  MEMORY[0x1C6940010](v48, v49);

                  MEMORY[0x1C6940010](0xD000000000000014, v55 | 0x8000000000000000);
                  v50 = v52;
                  sub_1C4EFB758();
                  sub_1C4EFBFF8();
                  if (v5)
                  {
                    break;
                  }

                  v43 &= v43 - 1;
                  (*v58)(v50, v60);

                  v45 = v46;
                  if (!v43)
                  {
                    goto LABEL_37;
                  }
                }

                (*v58)(v50, v60);
              }

LABEL_37:
              while (1)
              {
                v46 = v45 + 1;
                if (__OFADD__(v45, 1))
                {
                  goto LABEL_51;
                }

                if (v46 >= v44)
                {
                }

                v43 = *(v23 + 8 * v46);
                ++v45;
                if (v43)
                {
                  goto LABEL_40;
                }
              }
            }

            v34 = *(v31 + 8 * v37);
            ++v36;
            if (v34)
            {
              v55 = v5;
              goto LABEL_30;
            }
          }
        }

        while (1)
        {
          v55 = v5;
          v37 = v36;
          v38 = v53;
LABEL_30:
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v39 = v38;
          sub_1C4EFB758();
          v40 = v55;
          sub_1C4EFBFF8();
          if (v40)
          {
            break;
          }

          v34 &= v34 - 1;

          result = (*v58)(v39, v60);
          v36 = v37;
          v5 = 0;
          if (!v34)
          {
            goto LABEL_25;
          }
        }

        return (*v58)(v39, v60);
      }

      v26 = *(v23 + 8 * v30);
      ++v28;
      if (v26)
      {
        goto LABEL_18;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  return result;
}

void sub_1C4C75EF8()
{
  sub_1C43FE96C();
  v1 = v0;
  v62 = v2;
  v64 = v4;
  v65 = v3;
  v6 = v5;
  v68 = sub_1C4EFB768();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v59 - v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v59 - v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - v14;
  sub_1C43FD030();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;
  v66 = v21 + 8;
  v63 = v6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v22 = 0;
  if (v18)
  {
    while (1)
    {
      v23 = v22;
LABEL_6:
      sub_1C43FCADC();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFB758();
      sub_1C43FD168();
      sub_1C4EFBFF8();
      if (v0)
      {
        break;
      }

      v18 &= v18 - 1;

      sub_1C440A8E0();
      v24(v15, v68);
      v22 = v23;
      if (!v18)
      {
        goto LABEL_3;
      }
    }

    sub_1C440A8E0();
    v56 = v15;
LABEL_38:
    v55(v56, v68);
LABEL_42:
    sub_1C4402144();
    sub_1C43FBC80();
  }

  else
  {
    while (1)
    {
LABEL_3:
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *&v6[8 * v23 + 64];
      ++v22;
      if (v18)
      {
        goto LABEL_6;
      }
    }

    v25 = v64 + 64;
    sub_1C43FD030();
    v28 = v27 & v26;
    v30 = (v29 + 63) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v31 = 0;
    v32 = v59;
    if (!v28)
    {
      goto LABEL_11;
    }

    do
    {
      v33 = v31;
LABEL_14:
      sub_1C43FCADC();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFB758();
      sub_1C43FD168();
      sub_1C4EFBFF8();
      if (v0)
      {

        sub_1C440A8E0();
        v56 = v32;
        goto LABEL_38;
      }

      v28 &= v28 - 1;

      sub_1C440A8E0();
      v34(v32, v68);
      v31 = v33;
    }

    while (v28);
LABEL_11:
    while (1)
    {
      v33 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v33 >= v30)
      {

        v35 = v62 + 64;
        sub_1C43FD030();
        sub_1C449DB50();
        v37 = v36 >> 6;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v38 = 0;
        if (v33)
        {
          while (1)
          {
            v63 = v1;
            v39 = v38;
            v40 = v61;
LABEL_24:
            sub_1C443DFE8();
            sub_1C43FCADC();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v41 = v40;
            sub_1C4EFB758();
            sub_1C43FD168();
            v42 = v63;
            sub_1C4EFBFF8();
            if (v42)
            {
              break;
            }

            sub_1C4458594();

            sub_1C440A8E0();
            v43(v41, v68);
            v38 = v39;
            v1 = 0;
          }

          sub_1C440A8E0();
          v57(v41, v68);
          goto LABEL_42;
        }

        v40 = v61;
        while (1)
        {
          v39 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_45;
          }

          if (v39 >= v37)
          {

            v44 = 1 << *(v64 + 32);
            v45 = -1;
            if (v44 < 64)
            {
              v45 = ~(-1 << v44);
            }

            v46 = v45 & *(v64 + 64);
            v47 = (v44 + 63) >> 6;
            v63 = "DataCollectionMetadata.";
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v48 = 0;
            if (v46)
            {
              while (1)
              {
                v49 = v48;
LABEL_33:
                v50 = (*(v64 + 48) + ((v49 << 10) | (16 * __clz(__rbit64(v46)))));
                v51 = *v50;
                v52 = v50[1];
                *&v67 = 0;
                *(&v67 + 1) = 0xE000000000000000;
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                sub_1C4F02248();

                strcpy(&v67, "INSERT INTO ");
                BYTE13(v67) = 0;
                HIWORD(v67) = -5120;
                MEMORY[0x1C6940010](v51, v52);
                MEMORY[0x1C6940010](40, 0xE100000000000000);
                MEMORY[0x1C6940010](v51, v52);

                MEMORY[0x1C6940010](0xD000000000000014, v63 | 0x8000000000000000);
                v53 = v60;
                sub_1C4EFB758();
                sub_1C4EFBFF8();
                if (v1)
                {
                  break;
                }

                v46 &= v46 - 1;
                sub_1C440A8E0();
                v54(v53, v68);

                v48 = v49;
                if (!v46)
                {
                  goto LABEL_30;
                }
              }

              sub_1C440A8E0();
              v58(v53, v68);

LABEL_41:

              goto LABEL_42;
            }

LABEL_30:
            while (1)
            {
              v49 = v48 + 1;
              if (__OFADD__(v48, 1))
              {
                goto LABEL_46;
              }

              if (v49 >= v47)
              {
                goto LABEL_41;
              }

              v46 = *(v25 + 8 * v49);
              ++v48;
              if (v46)
              {
                goto LABEL_33;
              }
            }
          }

          ++v38;
          if (*(v35 + 8 * v39))
          {
            v63 = v1;
            goto LABEL_24;
          }
        }
      }

      v28 = *(v25 + 8 * v33);
      ++v31;
      if (v28)
      {
        goto LABEL_14;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }
}

void sub_1C4C76508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = type metadata accessor for ViewDatabaseArtifact.Property(0);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36 - 8);
  sub_1C43FBCC4();
  v40 = v39 - v38;
  sub_1C44952B4();
  sub_1C44E9220();
  if (!v23)
  {
    v106 = v41;
    v107 = v37;
    v105 = v27;
    sub_1C44952B4();
    sub_1C44E9220();
    v42 = v35;
    v44 = v43;
    v104 = v42;
    v45 = a21;
    sub_1C4416B8C();
    sub_1C4418704(v45, v44, v46, v47, v48, v49, v50, v51, v96, v97);
    sub_1C441CEF4();

    v100 = v33;
    v101 = v44;
    v102 = v31;
    v103 = v29;
    v99 = a22;
    sub_1C4409678(v31, v31[3]);
    v52 = sub_1C4408DF8();
    v53(v52);
    sub_1C440622C(v112);
    v54 = sub_1C4408DF8();
    v56 = v55(v54);
    v57 = v56[2];
    if (v57)
    {
      v98 = 0;
      v111 = MEMORY[0x1E69E7CC0];
      sub_1C44CD9C0(0, v57, 0);
      v58 = v111;
      v59 = (*(v107 + 80) + 32) & ~*(v107 + 80);
      v97 = v56;
      v60 = v56 + v59;
      v107 = *(v107 + 72);
      v108 = "INSERT INTO main.";
      do
      {
        sub_1C44312C0(v60, v40);
        sub_1C4F02248();

        sub_1C440F050();
        v109 = v61;
        v110 = 0xEB00000000222E65;
        sub_1C44884A4();
        MEMORY[0x1C6940010](0xD000000000000011, v108 | 0x8000000000000000);
        sub_1C44884A4();
        sub_1C441DE98();
        v62 = v109;
        sub_1C43FE990();
        sub_1C44543D8();
        v111 = v58;
        v64 = *(v58 + 16);
        v63 = *(v58 + 24);
        if (v64 >= v63 >> 1)
        {
          sub_1C44CD9C0(v63 > 1, v64 + 1, 1);
          v58 = v111;
        }

        *(v58 + 16) = v64 + 1;
        v65 = v58 + 16 * v64;
        *(v65 + 32) = v62;
        *(v65 + 40) = 0xEB00000000222E65;
        v60 += v107;
        --v57;
      }

      while (v57);
    }

    else
    {

      v58 = MEMORY[0x1E69E7CC0];
    }

    v66 = v106;
    sub_1C440962C(v112);
    v112[0] = v58;
    v67 = sub_1C43FD168();
    sub_1C456902C(v67, v68);
    v69 = sub_1C442E670(&qword_1EDDFCED0);
    v70 = sub_1C44347C0(v69);
    v72 = v71;

    MEMORY[0x1EEE9AC00](v73);
    v74 = v102;
    v75 = v103;
    *(&v96 - 8) = &a10;
    *(&v96 - 7) = v74;
    v76 = v104;
    *(&v96 - 6) = v105;
    *(&v96 - 5) = v75;
    *(&v96 - 4) = v70;
    *(&v96 - 3) = v72;
    v77 = v100;
    *(&v96 - 2) = v76;
    *(&v96 - 1) = v77;

    sub_1C4414334(v99, v78, v79, v80, v81, v82, v83, v84, v96, v97);
    if (&v96 == 80)
    {
      v86 = a23;

      sub_1C440B6C0();
      v88 = sub_1C4C77544(v66, v101, v87);
      MEMORY[0x1EEE9AC00](v88);
      *(&v96 - 4) = &a10;
      *(&v96 - 3) = v74;
      *(&v96 - 2) = v75;

      sub_1C4414334(v86, v89, v90, v91, v92, v93, v94, v95, v96, v97);
      sub_1C441CEF4();
    }

    else
    {

      sub_1C440B6C0();
      sub_1C4C77544(v66, v101, v85);
    }
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

void sub_1C4C76978(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for ViewDatabaseArtifact.Property(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = 0;
  v80 = 0;
  sub_1C44E9220();
  if (!v6)
  {
    v75 = v13;
    v72 = a6;
    v73 = v16;
    v79 = 0;
    v80 = 0;
    sub_1C44E9220();
    v17 = 0;
    v19 = v18;
    v70 = a1;
    v71 = a2;

    sub_1C4418704(sub_1C4C7D498, v19, v20, v21, v22, v23, v24, v25, v64, v65);

    v67 = v19;
    v68 = a3;
    v69 = a5;
    v26 = a3[3];
    v27 = a3[4];
    sub_1C4409678(a3, v26);
    (*(v27 + 16))(&v79, v26, v27);
    v28 = v81;
    v29 = v82;
    sub_1C4409678(&v79, v81);
    v30 = (*(v29 + 24))(v28, v29);
    v31 = v30[2];
    if (v31)
    {
      v66 = 0;
      v83 = MEMORY[0x1E69E7CC0];
      sub_1C44CD9C0(0, v31, 0);
      v32 = v83;
      v33 = (*(v75 + 80) + 32) & ~*(v75 + 80);
      v65 = v30;
      v34 = v30 + v33;
      v75 = *(v75 + 72);
      v76 = "INSERT INTO main.";
      do
      {
        sub_1C44312C0(v34, v15);
        v77 = 0;
        v78 = 0xE000000000000000;
        sub_1C4F02248();

        v77 = 0x6C6261547466656CLL;
        v78 = 0xEB00000000222E65;
        v35 = *v15;
        v36 = v15[1];
        MEMORY[0x1C6940010](*v15, v36);
        MEMORY[0x1C6940010](0xD000000000000011, v76 | 0x8000000000000000);
        MEMORY[0x1C6940010](v35, v36);
        MEMORY[0x1C6940010](34, 0xE100000000000000);
        v37 = v77;
        v38 = v78;
        sub_1C44543D8();
        v83 = v32;
        v40 = *(v32 + 16);
        v39 = *(v32 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1C44CD9C0(v39 > 1, v40 + 1, 1);
          v32 = v83;
        }

        *(v32 + 16) = v40 + 1;
        v41 = v32 + 16 * v40;
        *(v41 + 32) = v37;
        *(v41 + 40) = v38;
        v34 += v75;
        --v31;
      }

      while (v31);

      v17 = v66;
    }

    else
    {

      v32 = MEMORY[0x1E69E7CC0];
    }

    v42 = v73;
    sub_1C440962C(&v79);
    v79 = v32;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870, MEMORY[0x1E69E6310]);
    v43 = sub_1C4F01048();
    v45 = v44;

    MEMORY[0x1EEE9AC00](v46);
    v47 = v74;
    v49 = v68;
    v48 = v69;
    *(&v64 - 8) = v74;
    *(&v64 - 7) = v49;
    *(&v64 - 6) = v72;
    *(&v64 - 5) = v48;
    *(&v64 - 4) = v43;
    *(&v64 - 3) = v45;
    v50 = v71;
    *(&v64 - 2) = v70;
    *(&v64 - 1) = v50;

    sub_1C4418704(sub_1C4C7D3BC, (&v64 - 10), v51, v52, v53, v54, v55, v56, v64, v65);
    if (v17)
    {

      sub_1C4C77544(v42, v67, sub_1C4C7D480);
    }

    else
    {

      v57 = sub_1C4C77544(v42, v67, sub_1C4C7D480);
      MEMORY[0x1EEE9AC00](v57);
      *(&v64 - 4) = v47;
      *(&v64 - 3) = v49;
      *(&v64 - 2) = v48;

      sub_1C4418704(sub_1C4C7D3EC, (&v64 - 6), v58, v59, v60, v61, v62, v63, v64, v65);
    }
  }
}

void sub_1C4C76EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  sub_1C43FE96C();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = type metadata accessor for ViewDatabaseArtifact.Property(0);
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34 - 8);
  sub_1C43FBCC4();
  v38 = v37 - v36;
  sub_1C44952B4();
  sub_1C44E9220();
  if (!v23)
  {
    v100 = v39;
    v101 = v35;
    v99 = v25;
    sub_1C44952B4();
    sub_1C4401F14(v33);
    v41 = v40;
    v98 = v33;
    sub_1C4416B8C();
    sub_1C4418704(a21, v41, v42, v43, v44, v45, v46, v47, v91, v92);
    sub_1C441CEF4();

    v94 = v31;
    v96 = v29;
    v97 = v27;
    v48 = a22;
    sub_1C4409678(v29, v29[3]);
    v49 = sub_1C4408DF8();
    v50(v49);
    sub_1C440622C(v105);
    v51 = sub_1C4408DF8();
    v53 = v52(v51);
    v54 = *(v53 + 16);
    v95 = v41;
    if (v54)
    {
      v92 = a22;
      v93 = 0;
      v106 = MEMORY[0x1E69E7CC0];
      sub_1C44CD9C0(0, v54, 0);
      v55 = v106;
      v56 = (*(v101 + 80) + 32) & ~*(v101 + 80);
      v91 = v53;
      v57 = v53 + v56;
      v101 = *(v101 + 72);
      v102 = "INSERT INTO main.";
      do
      {
        sub_1C44312C0(v57, v38);
        sub_1C4450858();
        sub_1C4F02248();

        sub_1C440F050();
        v103 = v58;
        v104 = 0xEB00000000222E65;
        sub_1C44884A4();
        MEMORY[0x1C6940010](0xD000000000000011, v102 | 0x8000000000000000);
        sub_1C44884A4();
        sub_1C441DE98();
        v59 = v103;
        sub_1C43FE990();
        sub_1C44543D8();
        v61 = *(v106 + 16);
        v60 = *(v106 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_1C44CD9C0(v60 > 1, v61 + 1, 1);
        }

        *(v106 + 16) = v61 + 1;
        v62 = v106 + 16 * v61;
        *(v62 + 32) = v59;
        *(v62 + 40) = 0xEB00000000222E65;
        v57 += v101;
        --v54;
      }

      while (v54);

      v48 = v92;
    }

    else
    {

      v55 = MEMORY[0x1E69E7CC0];
    }

    v63 = v100;
    sub_1C440962C(v105);
    v105[0] = v55;
    v64 = sub_1C43FD168();
    sub_1C456902C(v64, v65);
    v66 = sub_1C442E670(&qword_1EDDFCED0);
    v67 = sub_1C44347C0(v66);
    v69 = v68;

    MEMORY[0x1EEE9AC00](v70);
    v71 = v96;
    v72 = v97;
    v73 = v98;
    v74 = v99;
    *(&v91 - 7) = v96;
    *(&v91 - 6) = v74;
    *(&v91 - 5) = v72;
    *(&v91 - 4) = v67;
    *(&v91 - 3) = v69;
    *(&v91 - 2) = v73;
    *(&v91 - 1) = v94;

    sub_1C4414334(v48, v75, v76, v77, v78, v79, v80, v81, v91, v92);

    sub_1C440B6C0();
    if (&v91 == 80)
    {
      v83 = sub_1C4C77544(v63, v95, v82);
      MEMORY[0x1EEE9AC00](v83);
      *(&v91 - 3) = v71;
      *(&v91 - 2) = v72;

      sub_1C4414334(a23, v84, v85, v86, v87, v88, v89, v90, v91, v92);
      sub_1C441CEF4();
    }

    else
    {
      sub_1C4C77544(v63, v95, v82);
    }
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

void sub_1C4C77334()
{
  sub_1C43FE96C();
  v1 = v0;
  v2 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  sub_1C4F02248();

  sub_1C43FBDF0();
  (*(v11 + 16))(v15, *(v1 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL, v9);
  v16 = sub_1C4EF98D8();
  v18 = v17;
  (*(v11 + 8))(v15, v9);
  MEMORY[0x1C6940010](v16, v18);

  MEMORY[0x1C6940010](0x68746F2053412027, 0xEA00000000007265);
  sub_1C4EFB758();
  sub_1C447FA8C();
  sub_1C4EFBFF8();
  (*(v4 + 8))(v8, v2);

  sub_1C43FBC80();
}

uint64_t sub_1C4C77544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4EF98F8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  sub_1C4418704(a3, 0, v5, v6, v7, v8, v9, v10, v12, v13);
  type metadata accessor for ErrorHandlingDatabasePool(0);
  sub_1C46BC6FC();
  sub_1C4EFB2E8();
  sub_1C4EFAEB8();
  return sub_1C4EFAEB8();
}

uint64_t sub_1C4C777CC(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v12 = sub_1C4EFB768();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBD08();
  sub_1C441598C();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4422BE4();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C44238A8();
  sub_1C4409678(a2, a2[3]);
  v16 = sub_1C44342A0();
  v17(v16);
  v18 = sub_1C442D760(v154);
  v20 = v19(v18);
  sub_1C4422BF4(v20, v21);
  if (v8)
  {

    return sub_1C440962C(v154);
  }

  sub_1C4414730(v22, &v155);
  sub_1C440962C(v154);
  if (*(a3 + 80) == 1)
  {

    sub_1C448F228();
  }

  else
  {
    v24 = sub_1C4435540();

    sub_1C448F228();
    if ((v24 & 1) == 0)
    {
      sub_1C4459C2C();
      sub_1C4436700();
      sub_1C44302FC();

      v41 = sub_1C44A1890();
      sub_1C43FFB2C(&type metadata for ViewUpdateError, v41);
      sub_1C447E370();
      return sub_1C443E418(v42, v43);
    }
  }

  sub_1C4409678(v10, v10[3]);
  v25 = sub_1C4416500();
  sub_1C4C6EE08(v25, v26, v27, v28, v29, v30, v31);
  v33 = v32;
  if (!v32)
  {
    sub_1C4459C2C();
    sub_1C4436700();
    sub_1C44302FC();

    v44 = sub_1C44A1890();
    sub_1C43FFB2C(&type metadata for ViewUpdateError, v44);
    v43 = 0xD000000000000048;
    return sub_1C443E418(v42, v43);
  }

  sub_1C4450858();
  sub_1C4F02248();
  v150 = v154[0];
  v151 = v154[1];
  sub_1C44608EC();
  sub_1C4409678(v10, v10[3]);
  v34 = sub_1C4432D50();
  v35(v34);
  v36 = sub_1C442D760(v154);
  v38 = v37(v36);
  v40 = v39;
  MEMORY[0x1C6940010](v38);

  sub_1C440962C(v154);
  sub_1C447CC68();
  sub_1C442A514();
  sub_1C4433E8C();
  v141 = v33;

  v45 = sub_1C44BBEF8();
  v40(v45, v12);
  sub_1C4420C3C(v154, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C441B560();
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v46 = sub_1C4F00978();
  sub_1C442B738(v46, qword_1EDE2DF70);
  sub_1C44018A8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v47 = sub_1C4F00968();
  v48 = sub_1C4F01CF8();

  v140 = v47;
  os_log_type_enabled(v47, v48);
  v49 = MEMORY[0x1E69E7CA0];
  sub_1C44180E8();
  if (v50)
  {
    sub_1C440F274();
    v149 = sub_1C44400AC();
    sub_1C440CDD0(4.8151e-34);
    v51 = sub_1C441506C();
    v53 = sub_1C441D828(v51, a8, v52);
    sub_1C4420794(v53);
    v54 = sub_1C4432D50();
    v55(v54);
    v56 = sub_1C442D760(&v147);
    v58 = v57(v56);
    sub_1C4413B34(v58, v59);
    sub_1C43FEF2C();

    *(v10 + 14) = v49;
    sub_1C44149D4();
    sub_1C442F750(v60, v61, v62, v63);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C440DAC8();
  }

  else
  {

    sub_1C440962C(&v150);
  }

  sub_1C445C004();
  v64 = v141;
  v138 = v65;
  v66 = sub_1C442F434();
  v67 = a5;
  sub_1C4C7A0AC(v66, v68, v69, v70, v71, v72, v73, a5, v138, v141);
  sub_1C44018A8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v74 = sub_1C4F00968();
  v75 = sub_1C4F01CF8();

  if (os_log_type_enabled(v74, v75))
  {
    sub_1C440F274();
    v149 = sub_1C44400AC();
    sub_1C440CDD0(4.8151e-34);
    v76 = sub_1C441506C();
    v78 = sub_1C441D828(v76, a8, v77);
    sub_1C4420794(v78);
    v79 = sub_1C4432D50();
    v80(v79);
    v81 = sub_1C442D760(&v147);
    v67 = a5;
    v83 = v82(v81);
    sub_1C4413B34(v83, v84);
    sub_1C43FEF2C();

    *(v10 + 14) = v75;
    v64 = v141;
    sub_1C442F750(&dword_1C43F8000, v74, v75, "PromoteTables: Diffing other to main for %s (%s");
    sub_1C445CD08();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C440DAC8();
  }

  else
  {

    sub_1C440962C(&v150);
  }

  v85 = sub_1C442C090();
  sub_1C4C7A0AC(v85, v86, v87, v88, v89, a4, v90, v67, v139, v64);
  sub_1C440962C(v154);
  sub_1C44018A8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v91 = sub_1C4F00968();
  v92 = sub_1C4F01CF8();

  if (os_log_type_enabled(v91, v92))
  {
    sub_1C440F274();
    v149 = sub_1C44400AC();
    sub_1C440CDD0(4.8151e-34);
    v94 = sub_1C441D828(a7, a8, v93);
    sub_1C4420794(v94);
    v95 = sub_1C4432D50();
    v96(v95);
    v97 = sub_1C442D760(&v147);
    v99 = v98(v97);
    sub_1C4413B34(v99, v100);
    sub_1C43FEF2C();

    *(v10 + 14) = v92;
    sub_1C442F750(&dword_1C43F8000, v91, v92, "PromoteTables: Deleting and copying values for %s (%s)");
    sub_1C445CD08();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C440DAC8();
  }

  else
  {

    sub_1C440962C(&v150);
  }

  sub_1C445C228();

  sub_1C43FBDF0();
  v147 = 0xD000000000000012;
  v148 = v101;
  v102 = v10;
  v103 = v10[3];
  v104 = v10[4];
  sub_1C4409678(v102, v103);
  v105 = sub_1C43FEF2C();
  v106(v105, v104);
  v107 = v153;
  sub_1C441B09C();
  v108 = sub_1C43FE0D0();
  v110 = v109(v108, v107);
  MEMORY[0x1C6940010](v110);

  sub_1C441D444();
  v111 = v147;
  v112 = v148;
  sub_1C442A514();
  sub_1C445EA5C(v111, v112);
  sub_1C441C5C4();
  (v91)();

  v150 = 0;
  v151 = v111;
  sub_1C4F02248();

  sub_1C43FBDF0();
  v147 = v9;
  v148 = v113;
  v114 = sub_1C4403A4C();
  v115(v114);
  v116 = v152;
  v117 = v153;
  sub_1C4409678(&v150, v152);
  sub_1C442619C();
  v119 = v118(v116, v117);
  MEMORY[0x1C6940010](v119);

  sub_1C440962C(&v150);
  MEMORY[0x1C6940010](0xD000000000000017, 0x80000001C4FBDEF0);
  v120 = sub_1C4403A4C();
  v121(v120);
  v122 = v153;
  sub_1C441B09C();
  v123 = sub_1C43FE0D0();
  v125 = v124(v123, v122);
  MEMORY[0x1C6940010](v125);

  sub_1C441D444();
  sub_1C442A514();
  v126 = sub_1C43FD168();
  sub_1C445EA5C(v126, v127);
  sub_1C4425534();
  (v91)();

  sub_1C44149D4();
  sub_1C4C75EF8();

  *(v64 + 104) = 1;
  sub_1C441B0B4();
  sub_1C4B8BB5C();
  v130 = sub_1C44F95AC(v128, v129);
  sub_1C4CCDA9C(v130, v131);
  v132 = sub_1C4404BB0();
  sub_1C4434000(v132, v133);
  sub_1C44168CC();
  if (!v137)
  {
    v135 = v136;
  }

  if (v135 < v134)
  {
    sub_1C441B0B4();
    sub_1C4B8B8EC();
  }
}

uint64_t sub_1C4C78334(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v13 = sub_1C4EFB768();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBD08();
  sub_1C441598C();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4422BE4();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C44238A8();
  sub_1C4409678(a3, a3[3]);
  v17 = sub_1C44342A0();
  v18(v17);
  v19 = sub_1C442D760(v150);
  v21 = v20(v19);
  sub_1C4422BF4(v21, v22);
  if (v9)
  {

    return sub_1C440962C(v150);
  }

  sub_1C4414730(v23, &v151);
  sub_1C440962C(v150);
  if (*(a4 + 80) == 1)
  {

    sub_1C448F228();
  }

  else
  {
    v25 = sub_1C4435540();

    sub_1C448F228();
    if ((v25 & 1) == 0)
    {
      sub_1C4436700();
      sub_1C44302FC();

      sub_1C441506C();

      v42 = sub_1C44A1890();
      sub_1C43FFB2C(&type metadata for ViewUpdateError, v42);
      sub_1C447E370();
      return sub_1C443E418(v43, v44);
    }
  }

  sub_1C4409678(v11, v11[3]);
  v26 = sub_1C4416500();
  sub_1C4C6EE08(v26, v27, v28, v29, v30, v31, v32);
  v34 = v33;
  if (!v33)
  {
    sub_1C4436700();
    sub_1C44302FC();

    sub_1C441506C();

    v45 = sub_1C44A1890();
    sub_1C43FFB2C(&type metadata for ViewUpdateError, v45);
    v44 = 0xD000000000000048;
    return sub_1C443E418(v43, v44);
  }

  sub_1C4450858();
  sub_1C4F02248();
  v146 = v150[0];
  v147 = v150[1];
  sub_1C44608EC();
  sub_1C4409678(v11, v11[3]);
  v35 = sub_1C4432D50();
  v36(v35);
  v37 = sub_1C442D760(v150);
  v39 = v38(v37);
  v41 = v40;
  MEMORY[0x1C6940010](v39);

  sub_1C440962C(v150);
  sub_1C447CC68();
  sub_1C442A514();
  sub_1C4433E8C();

  v46 = sub_1C44BBEF8();
  v41(v46, v13);
  sub_1C4420C3C(v150, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C441B560();
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v47 = sub_1C4F00978();
  sub_1C442B738(v47, qword_1EDE2DF70);
  sub_1C44018A8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v48 = sub_1C4F00968();
  v49 = sub_1C4F01CF8();

  v138 = v48;
  os_log_type_enabled(v48, v49);
  v50 = MEMORY[0x1E69E7CA0];
  sub_1C44180E8();
  if (v51)
  {
    sub_1C440F274();
    v145 = sub_1C44400AC();
    sub_1C440CDD0(4.8151e-34);
    v53 = sub_1C441D828(a8, a9, v52);
    sub_1C4420794(v53);
    v54 = sub_1C4432D50();
    v55(v54);
    v56 = sub_1C442D760(&v143);
    v58 = v57(v56);
    sub_1C4413B34(v58, v59);
    sub_1C43FEF2C();

    *(v11 + 14) = v50;
    sub_1C44149D4();
    sub_1C442F750(v60, v61, v62, v63);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C440DAC8();
  }

  else
  {

    sub_1C440962C(&v146);
  }

  v64 = a5;
  sub_1C445C004();
  v136 = v65;
  v66 = sub_1C442F434();
  v67 = a6;
  sub_1C4C7A0AC(v66, v68, v69, v70, v71, a5, v72, a6, v136, v34);
  sub_1C44018A8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v73 = sub_1C4F00968();
  v74 = sub_1C4F01CF8();

  if (os_log_type_enabled(v73, v74))
  {
    sub_1C440F274();
    v145 = sub_1C44400AC();
    sub_1C440CDD0(4.8151e-34);
    v76 = sub_1C441D828(a8, a9, v75);
    sub_1C4420794(v76);
    v77 = sub_1C4432D50();
    v78(v77);
    v79 = sub_1C442D760(&v143);
    v64 = a5;
    v81 = v80(v79);
    sub_1C4413B34(v81, v82);
    sub_1C43FEF2C();
    v67 = a6;

    *(v11 + 14) = v73;
    sub_1C442F750(&dword_1C43F8000, v73, v74, "PromoteTables: Diffing other to main for %s (%s");
    sub_1C445CD08();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C440DAC8();
  }

  else
  {

    sub_1C440962C(&v146);
  }

  v83 = sub_1C442C090();
  sub_1C4C7A0AC(v83, v84, v85, v86, v87, v64, v88, v67, v137, v34);
  sub_1C440962C(v150);
  sub_1C44018A8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v89 = sub_1C4F00968();
  v90 = sub_1C4F01CF8();

  if (os_log_type_enabled(v89, v90))
  {
    sub_1C440F274();
    v145 = sub_1C44400AC();
    sub_1C440CDD0(4.8151e-34);
    v91 = sub_1C43FE990();
    v94 = sub_1C441D828(v91, v92, v93);
    sub_1C4420794(v94);
    v95 = sub_1C4432D50();
    v96(v95);
    v97 = sub_1C442D760(&v143);
    v99 = v98(v97);
    sub_1C4413B34(v99, v100);
    sub_1C43FEF2C();

    *(v11 + 14) = v90;
    sub_1C442F750(&dword_1C43F8000, v89, v90, "PromoteTables: Deleting and copying values for %s (%s)");
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C440DAC8();
  }

  else
  {

    sub_1C440962C(&v146);
  }

  sub_1C445C228();

  sub_1C43FBDF0();
  v143 = 0xD000000000000012;
  v144 = v101;
  v102 = v11;
  v103 = v11[3];
  v104 = v11[4];
  sub_1C4409678(v102, v103);
  v105 = sub_1C43FEF2C();
  v106(v105, v104);
  v107 = v149;
  sub_1C441B09C();
  v108 = sub_1C43FE0D0();
  v110 = v109(v108, v107);
  MEMORY[0x1C6940010](v110);

  sub_1C441D444();
  sub_1C442A514();
  sub_1C4EFBFF8();
  sub_1C441C5C4();
  (v89)();

  v146 = 0;
  v147 = v10;
  sub_1C4F02248();

  sub_1C43FBDF0();
  v143 = v10;
  v144 = v111;
  v112 = sub_1C4403A4C();
  v113(v112);
  v114 = v148;
  v115 = v149;
  sub_1C4409678(&v146, v148);
  sub_1C442619C();
  v117 = v116(v114, v115);
  MEMORY[0x1C6940010](v117);

  sub_1C440962C(&v146);
  MEMORY[0x1C6940010](0xD000000000000017, 0x80000001C4FBDEF0);
  v118 = sub_1C4403A4C();
  v119(v118);
  v120 = v149;
  sub_1C441B09C();
  v121 = sub_1C43FE0D0();
  v123 = v122(v121, v120);
  MEMORY[0x1C6940010](v123);

  sub_1C441D444();
  sub_1C442A514();
  v124 = sub_1C43FD168();
  sub_1C445EA5C(v124, v125);
  sub_1C4425534();
  (v89)();

  sub_1C44149D4();
  sub_1C4C75EF8();

  *(v34 + 104) = 1;
  sub_1C441B0B4();
  sub_1C4B8BB5C();
  v128 = sub_1C44F95AC(v126, v127);
  sub_1C4CCDA9C(v128, v129);
  v130 = sub_1C4404BB0();
  sub_1C4434000(v130, v131);
  sub_1C44168CC();
  if (!v135)
  {
    v133 = v134;
  }

  if (v133 < v132)
  {
    sub_1C441B0B4();
    sub_1C4B8B8EC();
  }
}

uint64_t sub_1C4C78F00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v146 = a8;
  v145 = a7;
  v144 = a6;
  v143 = a5;
  v149 = a4;
  v147 = sub_1C4EFB768();
  v148 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v142 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v129 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v129 - v16;
  v19 = a3[3];
  v18 = a3[4];
  sub_1C4409678(a3, v19);
  (*(v18 + 16))(&v159, v19, v18);
  v20 = *(&v160 + 1);
  v21 = v161;
  sub_1C4409678(&v159, *(&v160 + 1));
  v22 = (*(v21 + 8))(v20, v21);
  v23 = v150;
  v25 = sub_1C4C74DDC(a1, v22, v24);
  if (v23)
  {

    return sub_1C440962C(&v159);
  }

  v137 = v17;
  v138 = 0;
  v136 = v14;
  v150 = a3;
  v139 = v27;
  v140 = v26;
  v141 = v25;

  sub_1C440962C(&v159);
  if (*(v149 + 80) == 1)
  {

    v29 = v150;
  }

  else
  {
    v30 = sub_1C4F02938();

    v29 = v150;
    if ((v30 & 1) == 0)
    {

      v42 = 0x80000001C4FBDDD0;
      sub_1C446D0DC();
      swift_allocError();
      v44 = 0xD000000000000045;
LABEL_12:
      *v43 = v44;
      *(v43 + 8) = v42;
      *(v43 + 16) = 2;
      return swift_willThrow();
    }
  }

  v31 = v29[3];
  v32 = v29[5];
  sub_1C4409678(v29, v31);
  v33 = a1;
  v34 = v138;
  sub_1C4C6EE08(a1, 0, 0, 1, 1, v31, v32);
  if (v34)
  {
  }

  if (!v35)
  {

    v42 = 0x80000001C4FBDE20;
    sub_1C446D0DC();
    swift_allocError();
    v44 = 0xD000000000000048;
    goto LABEL_12;
  }

  v135 = v35;
  *&v159 = 0;
  *(&v159 + 1) = 0xE000000000000000;
  sub_1C4F02248();
  v156 = v159;
  MEMORY[0x1C6940010](0xD000000000000032, 0x80000001C4FBDE70);
  v36 = v29[3];
  v37 = v29[4];
  sub_1C4409678(v29, v36);
  (*(v37 + 16))(&v159, v36, v37);
  v38 = *(&v160 + 1);
  v39 = v161;
  sub_1C4409678(&v159, *(&v160 + 1));
  v40 = (*(v39 + 8))(v38, v39);
  MEMORY[0x1C6940010](v40);

  sub_1C440962C(&v159);
  v161 = 0;
  v159 = 0u;
  v160 = 0u;
  v41 = v137;
  sub_1C4EFB758();
  sub_1C4EFB998();

  v45 = *(v148 + 8);
  v148 += 8;
  v45(v41, v147);
  sub_1C4420C3C(&v159, &unk_1EC0BC770, &qword_1C4F10DC0);
  v133 = v152;
  v46 = v151;
  sub_1C4609884(v29, &v159);
  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v47 = sub_1C4F00978();
  v48 = sub_1C442B738(v47, qword_1EDE2DF70);
  sub_1C4609884(v29, &v156);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v137 = v48;
  v49 = sub_1C4F00968();
  v50 = sub_1C4F01CF8();

  LODWORD(v138) = v50;
  v51 = os_log_type_enabled(v49, v50);
  v52 = v146;
  v134 = v45;
  if (v51)
  {
    v53 = swift_slowAlloc();
    v131 = v49;
    v54 = v53;
    v132 = swift_slowAlloc();
    v155 = v132;
    *v54 = 136315394;
    v55 = a9;
    *(v54 + 4) = sub_1C441D828(v52, a9, &v155);
    *(v54 + 12) = 2080;
    v56 = v157;
    v57 = v158;
    sub_1C4409678(&v156, v157);
    (*(v57 + 16))(&v151, v56, v57);
    v58 = v153;
    v59 = v154;
    sub_1C4409678(&v151, v153);
    v60 = (*(v59 + 8))(v58, v59);
    v62 = v61;
    sub_1C440962C(&v151);
    sub_1C440962C(&v156);
    v63 = sub_1C441D828(v60, v62, &v155);

    *(v54 + 14) = v63;
    v64 = v131;
    _os_log_impl(&dword_1C43F8000, v131, v138, "PromoteTables: Diffing main to other for %s (%s", v54, 0x16u);
    v65 = v132;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v65, -1, -1);
    MEMORY[0x1C6942830](v54, -1, -1);
  }

  else
  {
    v55 = a9;

    sub_1C440962C(&v156);
  }

  v66 = v135;
  v67 = v143;
  v68 = v144;
  v132 = sub_1C4C7A0AC(1852399981, 0xE400000000000000, 0x726568746FLL, 0xE500000000000000, v33, v143, &v159, v144, v145, v135);
  sub_1C4609884(v150, &v156);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v69 = sub_1C4F00968();
  v70 = sub_1C4F01CF8();

  LODWORD(v138) = v70;
  v71 = os_log_type_enabled(v69, v70);
  v130 = v55;
  if (v71)
  {
    v72 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v155 = v131;
    *v72 = 136315394;
    *(v72 + 4) = sub_1C441D828(v146, v55, &v155);
    *(v72 + 12) = 2080;
    v73 = v157;
    v74 = v158;
    sub_1C4409678(&v156, v157);
    v75 = v69;
    (*(v74 + 16))(&v151, v73, v74);
    v76 = v153;
    v77 = v154;
    sub_1C4409678(&v151, v153);
    v78 = *(v77 + 8);
    v79 = v77;
    v80 = v146;
    v81 = v78(v76, v79);
    v83 = v82;
    sub_1C440962C(&v151);
    sub_1C440962C(&v156);
    v84 = sub_1C441D828(v81, v83, &v155);
    v68 = v144;
    v66 = v135;

    *(v72 + 14) = v84;
    _os_log_impl(&dword_1C43F8000, v75, v138, "PromoteTables: Diffing other to main for %s (%s", v72, 0x16u);
    v85 = v131;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v85, -1, -1);
    v86 = v72;
    v67 = v143;
    MEMORY[0x1C6942830](v86, -1, -1);
  }

  else
  {

    sub_1C440962C(&v156);
    v80 = v146;
  }

  v145 = sub_1C4C7A0AC(0x726568746FLL, 0xE500000000000000, 1852399981, 0xE400000000000000, v33, v67, &v159, v68, v145, v66);
  v138 = 0;
  sub_1C440962C(&v159);
  sub_1C4609884(v150, &v156);
  v87 = v130;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v88 = sub_1C4F00968();
  v89 = sub_1C4F01CF8();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v155 = v91;
    *v90 = 136315394;
    *(v90 + 4) = sub_1C441D828(v80, v87, &v155);
    *(v90 + 12) = 2080;
    v92 = v157;
    v93 = v158;
    sub_1C4409678(&v156, v157);
    v94 = v89;
    (*(v93 + 16))(&v151, v92, v93);
    v95 = v153;
    v96 = v154;
    sub_1C4409678(&v151, v153);
    v97 = (*(v96 + 8))(v95, v96);
    v99 = v98;
    sub_1C440962C(&v151);
    sub_1C440962C(&v156);
    v100 = sub_1C441D828(v97, v99, &v155);

    *(v90 + 14) = v100;
    _os_log_impl(&dword_1C43F8000, v88, v94, "PromoteTables: Deleting and copying values for %s (%s)", v90, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v91, -1, -1);
    MEMORY[0x1C6942830](v90, -1, -1);
  }

  else
  {

    sub_1C440962C(&v156);
  }

  v101 = v147;
  *&v156 = 0;
  *(&v156 + 1) = 0xE000000000000000;
  sub_1C4F02248();

  v151 = 0xD000000000000012;
  v152 = 0x80000001C4FBDEB0;
  v102 = v150;
  v103 = v150[3];
  v104 = v150[4];
  sub_1C4409678(v150, v103);
  (*(v104 + 16))(&v156, v103, v104);
  v105 = v157;
  v106 = v158;
  sub_1C4409678(&v156, v157);
  v107 = (*(v106 + 8))(v105, v106);
  MEMORY[0x1C6940010](v107);

  sub_1C440962C(&v156);
  MEMORY[0x1C6940010](34, 0xE100000000000000);
  v108 = v136;
  sub_1C4EFB758();
  v109 = v138;
  sub_1C4EFBFF8();
  if (v109)
  {
    v134(v108, v101);
  }

  else
  {
    v134(v108, v101);

    *&v156 = 0;
    *(&v156 + 1) = 0xE000000000000000;
    sub_1C4F02248();

    v151 = 0xD000000000000012;
    v152 = 0x80000001C4FBDED0;
    v110 = v102[3];
    v111 = v102[4];
    sub_1C4409678(v102, v110);
    (*(v111 + 16))(&v156, v110, v111);
    v112 = v157;
    v113 = v158;
    sub_1C4409678(&v156, v157);
    v114 = (*(v113 + 8))(v112, v113);
    MEMORY[0x1C6940010](v114);

    sub_1C440962C(&v156);
    MEMORY[0x1C6940010](0xD000000000000017, 0x80000001C4FBDEF0);
    v115 = v102[3];
    v116 = v102[4];
    sub_1C4409678(v102, v115);
    (*(v116 + 16))(&v156, v115, v116);
    v117 = v33;
    v118 = v157;
    v119 = v158;
    sub_1C4409678(&v156, v157);
    v120 = (*(v119 + 8))(v118, v119);
    MEMORY[0x1C6940010](v120);

    sub_1C440962C(&v156);
    MEMORY[0x1C6940010](34, 0xE100000000000000);
    v121 = v142;
    sub_1C4EFB758();
    sub_1C4EFBFF8();
    v134(v121, v101);

    sub_1C4C75800(v117, v141, v140, v139);
    v122 = v135;

    *(v122 + 104) = 1;
    sub_1C4B8BB5C();
    v125 = sub_1C44F95AC(v123, v124);
    v127 = v126;
    sub_1C4CCDA9C(v125, v126);
    sub_1C4434000(v125, v127);
    v128 = v46 * 0.95;
    if (v133)
    {
      v128 = 0.0;
    }

    if (v128 < v132)
    {
      sub_1C4B8B8EC();
    }
  }
}

uint64_t sub_1C4C7A0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v57 = a5;
  v51 = a3;
  v52 = a4;
  v50 = a2;
  v56 = a10;
  v54 = a9;
  *&v55 = a8;
  v64 = sub_1C4EFB768();
  v59 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v49 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v45 - v15;
  *&v60 = 0;
  *(&v60 + 1) = 0xE000000000000000;
  sub_1C4F02248();
  v63 = v60;
  MEMORY[0x1C6940010](0xD00000000000001ELL, 0x80000001C4FBDF10);
  v16 = *a6;
  v47 = a6[1];
  v48 = v16;
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](0xD000000000000011, 0x80000001C4FBDF30);
  MEMORY[0x1C6940010](a6[2], a6[3]);
  MEMORY[0x1C6940010](0xD000000000000010, 0x80000001C4FB3910);
  v17 = a6[5];
  v46 = a6[4];
  v45 = v17;
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](0xD00000000000002ALL, 0x80000001C4FBDF50);
  v18 = a7[3];
  v19 = a7[5];
  sub_1C4409678(a7, v18);
  v20 = *(v19 + 8);
  v21 = v20(v18, v19);
  MEMORY[0x1C6940010](v21);

  MEMORY[0x1C6940010](0xD00000000000001ELL, 0x80000001C4FBDF80);
  MEMORY[0x1C6940010](a1, v50);
  MEMORY[0x1C6940010](8750, 0xE200000000000000);
  v22 = a7[3];
  v23 = a7[4];
  sub_1C4409678(a7, v22);
  (*(v23 + 16))(&v60, v22, v23);
  v24 = *(&v61 + 1);
  v25 = v62;
  sub_1C4409678(&v60, *(&v61 + 1));
  v26 = (*(v25 + 8))(v24, v25);
  MEMORY[0x1C6940010](v26);

  sub_1C440962C(&v60);
  MEMORY[0x1C6940010](0xD000000000000022, 0x80000001C4FBDFA0);
  MEMORY[0x1C6940010](v51, v52);
  MEMORY[0x1C6940010](8750, 0xE200000000000000);
  v27 = a7[3];
  v28 = a7[4];
  sub_1C4409678(a7, v27);
  (*(v28 + 16))(&v60, v27, v28);
  v29 = *(&v61 + 1);
  v30 = v62;
  sub_1C4409678(&v60, *(&v61 + 1));
  v31 = (*(v30 + 8))(v29, v30);
  MEMORY[0x1C6940010](v31);

  sub_1C440962C(&v60);
  MEMORY[0x1C6940010](0xD00000000000001CLL, 0x80000001C4FBDFD0);
  MEMORY[0x1C6940010](v55, v54);
  MEMORY[0x1C6940010](0xD00000000000001FLL, 0x80000001C4FBDFF0);
  v32 = v19;
  v33 = v53;
  v34 = v20(v18, v32);
  MEMORY[0x1C6940010](v34);

  MEMORY[0x1C6940010](0x4C554E2053492022, 0xE90000000000004CLL);
  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v35 = swift_allocObject();
  v55 = xmmword_1C4F0D130;
  *(v35 + 16) = xmmword_1C4F0D130;
  v36 = MEMORY[0x1E69E63B0];
  v37 = v56;
  v38 = *(v56 + 96);
  v39 = MEMORY[0x1E69A0168];
  *(v35 + 56) = MEMORY[0x1E69E63B0];
  *(v35 + 64) = v39;
  *(v35 + 32) = v38;
  sub_1C4EFB728();
  v40 = v58;
  sub_1C4EFBFF8();
  if (v40)
  {
    (*(v59 + 8))(v33, v64);
  }

  else
  {
    v59 = *(v59 + 8);
    (v59)(v33, v64);

    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD000000000000033, 0x80000001C4FBE010);
    MEMORY[0x1C6940010](v48, v47);
    MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4FB3860);
    MEMORY[0x1C6940010](v46, v45);
    MEMORY[0x1C6940010](0x3F203D2022, 0xE500000000000000);
    v42 = swift_allocObject();
    *(v42 + 16) = v55;
    v43 = *(v37 + 96);
    *(v42 + 56) = v36;
    *(v42 + 64) = v39;
    *(v42 + 32) = v43;
    v44 = v49;
    sub_1C4EFB728();
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    sub_1C4EFB998();

    sub_1C4420C3C(&v60, &unk_1EC0BC770, &qword_1C4F10DC0);
    (v59)(v44, v64);
    if (BYTE8(v63))
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      return v63;
    }
  }
}

void sub_1C4C7A710()
{
  sub_1C43FE96C();
  v30[5] = v1;
  v3 = v2;
  sub_1C4403FC0();
  sub_1C4EFB768();
  sub_1C43FCDF8();
  v30[9] = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  sub_1C43FEE3C();
  MEMORY[0x1EEE9AC00](v6);
  v30[8] = v30 - v7;
  v8 = v3[4];
  v9 = sub_1C4409678(v3, v3[3]);
  v10 = sub_1C44025D4(v9);
  v11(v10);
  sub_1C4409678(v31, v31[3]);
  sub_1C442619C();
  v12 = sub_1C43FE99C();
  v14 = v13(v12);
  sub_1C443F800(v14, v15);
  if (v0)
  {

    sub_1C440962C(v31);
  }

  else
  {
    sub_1C440A1E4(v16, v17, v18);
    sub_1C440962C(v31);
    sub_1C4404868();

    v19 = sub_1C4441A00();
    v20(v19);
    sub_1C440622C(v31);
    v21 = sub_1C4408DF8();
    v23 = v22(v21);
    v25 = v24;
    MEMORY[0x1C6940010](v23);

    sub_1C440962C(v31);
    sub_1C441DE98();
    sub_1C4EFB758();
    sub_1C447FA8C();
    sub_1C4EFBFF8();
    v26 = sub_1C442EDB8();
    v25(v26);

    sub_1C4404868();

    sub_1C446C0F0();
    sub_1C441DE98();
    v27 = v31[0];
    v28 = v31[1];
    v29 = v30[1];
    sub_1C4EFB758();
    sub_1C445EA5C(v27, v28);
    (v25)(v29, v8);

    sub_1C4469320();
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

void sub_1C4C7A9B4()
{
  sub_1C43FE96C();
  v30[5] = v1;
  v3 = v2;
  sub_1C4403FC0();
  sub_1C4EFB768();
  sub_1C43FCDF8();
  v30[9] = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  sub_1C43FEE3C();
  MEMORY[0x1EEE9AC00](v6);
  v30[8] = v30 - v7;
  v8 = v3[4];
  v9 = sub_1C4409678(v3, v3[3]);
  v10 = sub_1C44025D4(v9);
  v11(v10);
  sub_1C4409678(v31, v31[3]);
  sub_1C442619C();
  v12 = sub_1C43FE99C();
  v14 = v13(v12);
  sub_1C443F800(v14, v15);
  if (v0)
  {

    sub_1C440962C(v31);
  }

  else
  {
    sub_1C440A1E4(v16, v17, v18);
    sub_1C440962C(v31);
    sub_1C4404868();

    v19 = sub_1C4441A00();
    v20(v19);
    sub_1C440622C(v31);
    v21 = sub_1C4408DF8();
    v23 = v22(v21);
    v25 = v24;
    MEMORY[0x1C6940010](v23);

    sub_1C440962C(v31);
    sub_1C441DE98();
    sub_1C4EFB758();
    sub_1C447FA8C();
    sub_1C4EFBFF8();
    v26 = sub_1C442EDB8();
    v25(v26);

    sub_1C4404868();

    sub_1C446C0F0();
    sub_1C441DE98();
    v27 = v31[0];
    v28 = v31[1];
    v29 = v30[1];
    sub_1C4EFB758();
    sub_1C445EA5C(v27, v28);
    (v25)(v29, v8);

    sub_1C4469320();
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C4C7AC58(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v37 = a4;
  v48 = a2;
  v6 = sub_1C4EFB768();
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v33 - v10;
  v11 = a3[3];
  v12 = a3[4];
  v13 = sub_1C4409678(a3, v11);
  v14 = *(v12 + 16);
  v38 = v13;
  v39 = v14;
  v14(v45, v11, v12);
  v16 = v46;
  v15 = v47;
  sub_1C4409678(v45, v46);
  v17 = (*(v15 + 8))(v16, v15);
  v42 = a1;
  v18 = v43;
  v20 = sub_1C4C74DDC(a1, v17, v19);
  if (v18)
  {

    return sub_1C440962C(v45);
  }

  else
  {
    v33 = v8;
    v34 = v22;
    v35 = v21;
    v36 = v20;
    v43 = v6;

    sub_1C440962C(v45);
    v45[0] = 0;
    v45[1] = 0xE000000000000000;
    sub_1C4F02248();

    strcpy(v44, "DELETE FROM ");
    v44[7] = -4864;
    v39(v45, v11, v12);
    v24 = v46;
    v25 = v47;
    sub_1C4409678(v45, v46);
    v26 = (*(v25 + 8))(v24, v25);
    MEMORY[0x1C6940010](v26);

    sub_1C440962C(v45);
    MEMORY[0x1C6940010](34, 0xE100000000000000);
    v27 = v40;
    sub_1C4EFB758();
    v28 = v42;
    sub_1C4EFBFF8();
    v29 = *(v41 + 8);
    v30 = v27;
    v31 = v43;
    v29(v30, v43);

    v45[0] = 0;
    v45[1] = 0xE000000000000000;
    sub_1C4F02248();

    strcpy(v45, "DELETE FROM ");
    HIWORD(v45[1]) = -4864;
    MEMORY[0x1C6940010](*v37, v37[1]);
    MEMORY[0x1C6940010](34, 0xE100000000000000);
    v32 = v33;
    sub_1C4EFB758();
    sub_1C4EFBFF8();
    v29(v32, v31);

    sub_1C4C75800(v28, v36, v35, v34);
  }
}

uint64_t sub_1C4C7B074@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4C6EDBC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C4C7B160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4442E20();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4C7B1C4(uint64_t a1, uint64_t a2)
{
  sub_1C4BBB9FC();
  sub_1C4442EEC();

  return sub_1C4EFBA18();
}

uint64_t sub_1C4C7B234(uint64_t a1)
{
  v2 = sub_1C4C7CE28();

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1C4C7B280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4C7CE28();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

unint64_t sub_1C4C7B758@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C443C388(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C4C7B788(void *a1@<X8>)
{
  sub_1C4C6EC08(*v1);
  *a1 = v3;
  a1[1] = v4;
}

void sub_1C4C7C128(void *a1@<X8>)
{
  sub_1C445EDE8(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1C4C7C1B4()
{
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  switch(*(v0 + 64))
  {
    case 1:
      sub_1C4417A40();
      sub_1C4F02248();
      sub_1C4418604();
      sub_1C440BC44();
      MEMORY[0x1C6940010](0xD000000000000010);
      v28 = sub_1C440E964();
      MEMORY[0x1C6940010](v28);
      sub_1C440BC44();
      MEMORY[0x1C6940010]();
      v29 = sub_1C4426F1C();
      MEMORY[0x1C6940010](v29);
      v30 = sub_1C44106AC();
      goto LABEL_22;
    case 2:
      v21 = *(v0 + 48);
      v20 = *(v0 + 56);
      sub_1C4417A40();
      sub_1C4F02248();
      sub_1C4418604();
      sub_1C440BC44();
      MEMORY[0x1C6940010](0xD000000000000010);
      v22 = sub_1C440E964();
      MEMORY[0x1C6940010](v22);
      sub_1C440BC44();
      MEMORY[0x1C6940010]();
      v23 = sub_1C4426F1C();
      MEMORY[0x1C6940010](v23);
      v24 = sub_1C44106AC();
      MEMORY[0x1C6940010](v24);
      MEMORY[0x1C6940010](v4, v5);
      v25 = sub_1C44106AC();
      MEMORY[0x1C6940010](v25);
      v14 = v21;
      v15 = v20;
      goto LABEL_26;
    case 3:
      sub_1C4417A40();
      sub_1C4F02248();

      sub_1C43FBDF0();
      v37[0] = 0xD000000000000010;
      v37[1] = v26;
      goto LABEL_17;
    case 4:
      sub_1C4417A40();
      sub_1C4F02248();

      v11 = 0x2064696C61766E49;
      v12 = 0xEE00203A61746164;
      goto LABEL_16;
    case 5:
      strcpy(v37, "Unexpected: ");
      BYTE5(v37[1]) = 0;
      HIWORD(v37[1]) = -5120;
      goto LABEL_24;
    case 6:
      sub_1C4417A40();
      sub_1C4F02248();
      sub_1C4418604();
      MEMORY[0x1C6940010](0x2064696C61766E49, 0xEE00203A61746164);
      v32 = sub_1C440E964();
      MEMORY[0x1C6940010](v32);
      sub_1C44415D8();
      sub_1C440BC44();
      MEMORY[0x1C6940010]();
      v33 = sub_1C4426F1C();
      MEMORY[0x1C6940010](v33);
      v30 = 8250;
      v31 = 0xE200000000000000;
LABEL_22:
      MEMORY[0x1C6940010](v30, v31);
      v14 = v4;
      v15 = v5;
      goto LABEL_26;
    case 7:
      v11 = 0x3A656761726F7453;
      v12 = 0xE900000000000020;
LABEL_16:
      v37[0] = v11;
      v37[1] = v12;
LABEL_17:
      v27 = sub_1C440E964();
      MEMORY[0x1C6940010](v27);
      v18 = 8250;
      v19 = 0xE200000000000000;
      goto LABEL_18;
    case 8:
      sub_1C4417A40();
      sub_1C4F02248();
      sub_1C4418604();
      MEMORY[0x1C6940010](0x7463657078656E55, 0xEC000000203A6465);
      MEMORY[0x1C6940010](v1, v3);
      MEMORY[0x1C6940010](0x6669746E65646920, 0xEC00000020726569);
      v34 = sub_1C4F02858();
      MEMORY[0x1C6940010](v34);

      sub_1C44415D8();
      sub_1C440BC44();
      MEMORY[0x1C6940010](v35);
      v14 = v2;
      v15 = v4;
      goto LABEL_26;
    case 9:
      sub_1C4417A40();
      sub_1C4F02248();

      sub_1C43FBDF0();
      v37[0] = 0xD000000000000029;
      v37[1] = v16;
      v17 = sub_1C440E964();
      MEMORY[0x1C6940010](v17);
      v18 = sub_1C44106AC();
LABEL_18:
      MEMORY[0x1C6940010](v18, v19);
      v14 = sub_1C4426F1C();
      goto LABEL_26;
    case 0xA:
      sub_1C4417A40();
      sub_1C4F02248();
      sub_1C4418604();
      sub_1C440BC44();
      MEMORY[0x1C6940010]();
LABEL_24:
      v14 = sub_1C440E964();
      goto LABEL_26;
    case 0xB:
      v37[0] = 0x2077656956;
      v37[1] = 0xE500000000000000;
      v10 = sub_1C440E964();
      MEMORY[0x1C6940010](v10);
      MEMORY[0x1C6940010](544434464, 0xE400000000000000);
      v8 = sub_1C4CC2358(v3);
      goto LABEL_9;
    case 0xC:
      sub_1C4417A40();
      sub_1C4F02248();

      v37[0] = 0x2077656956;
      v37[1] = 0xE500000000000000;
      v13 = sub_1C440E964();
      MEMORY[0x1C6940010](v13);
      v14 = 0x76616E7520736920;
      v15 = 0xEF656C62616C6961;
LABEL_26:
      MEMORY[0x1C6940010](v14, v15);
      break;
    default:
      sub_1C4417A40();
      sub_1C4F02248();

      v37[0] = 0x222077656956;
      v37[1] = 0xE600000000000000;
      v6 = sub_1C440E964();
      MEMORY[0x1C6940010](v6);
      sub_1C44415D8();
      sub_1C440BC44();
      MEMORY[0x1C6940010]();
      sub_1C4418604();
      if (v2)
      {
        MEMORY[0x1C6940010](v3, v2);
        MEMORY[0x1C6940010](544106784, 0xE400000000000000);
      }

      v7 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v7 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        MEMORY[0x1C6940010](v4, v5);
        v8 = 8250;
        v9 = 0xE200000000000000;
LABEL_9:
        MEMORY[0x1C6940010](v8, v9);
      }

      break;
  }

  return v37[0];
}

uint64_t sub_1C4C7C734(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C450B034();
  sub_1C43FFB2C(&unk_1F44064D8, v4);
  *v5 = a1;
  *(v5 + 8) = a2;
  *(v5 + 16) = 0xD000000000000016;
  *(v5 + 24) = 0x80000001C4F605B0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  *(v5 + 48) = v7;
  *(v5 + 64) = 0;
  swift_willThrow();
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

_BYTE *sub_1C4C7C7F8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C4C7C8D0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C4C7C9B0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF4 && *(a1 + 65))
    {
      v2 = *a1 + 243;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 <= 0xC)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4C7C9F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C4C7CAA8()
{
  result = qword_1EDDFDA98;
  if (!qword_1EDDFDA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFDA98);
  }

  return result;
}

unint64_t sub_1C4C7CB44()
{
  result = qword_1EDDFB7E0;
  if (!qword_1EDDFB7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB7E0);
  }

  return result;
}

unint64_t sub_1C4C7CB9C()
{
  result = qword_1EDDFF8F8;
  if (!qword_1EDDFF8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF8F8);
  }

  return result;
}

unint64_t sub_1C4C7CBF4()
{
  result = qword_1EDDFE120;
  if (!qword_1EDDFE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE120);
  }

  return result;
}

unint64_t sub_1C4C7CC90()
{
  result = qword_1EC0C5410;
  if (!qword_1EC0C5410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5410);
  }

  return result;
}

uint64_t sub_1C4C7CD44()
{
  sub_1C43FBE94();
  v0 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  return (*(v2 + 8))(v6, v0);
}

unint64_t sub_1C4C7CE28()
{
  result = qword_1EC0C5418;
  if (!qword_1EC0C5418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5418);
  }

  return result;
}

unint64_t sub_1C4C7CE7C()
{
  result = qword_1EDDFF278;
  if (!qword_1EDDFF278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF278);
  }

  return result;
}

unint64_t sub_1C4C7CED0()
{
  result = qword_1EDDFF388;
  if (!qword_1EDDFF388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF388);
  }

  return result;
}

void sub_1C4C7CF78()
{
  sub_1C43FE96C();
  v30 = v2;
  v31 = v1;
  v32 = v3;
  v37 = v4;
  v6 = v5;
  sub_1C456902C(&qword_1EC0C5420, &qword_1C4F60D48);
  v7 = 0;
  v28 = v6;
  v29 = sub_1C4F02538();
  v8 = v6 + 64;
  sub_1C43FD030();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v27 = v14 + 64;
  if ((v10 & v9) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_8:
      v18 = v15 | (v7 << 6);
      v19 = (*(v28 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      v22 = (*(v28 + 56) + 88 * v18);
      memcpy(v36, v22, 0x58uLL);
      memcpy(__dst, v22, sizeof(__dst));
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C46DD848(v36, v33);
      sub_1C4BF887C(__dst, v37, v32, v31, v30, __src);
      if (v0)
      {
        break;
      }

      memcpy(v33, __dst, sizeof(v33));
      sub_1C46DD880(v33);
      *(v27 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v23 = (v29[6] + 16 * v18);
      *v23 = v20;
      v23[1] = v21;
      memcpy((v29[7] + 224 * v18), __src, 0xE0uLL);
      v24 = v29[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_15;
      }

      v29[2] = v26;
      if (!v11)
      {
        goto LABEL_3;
      }
    }

    memcpy(v33, __dst, sizeof(v33));
    sub_1C46DD880(v33);
LABEL_13:

    sub_1C43FBC80();
  }

  else
  {
LABEL_3:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v13)
      {
        goto LABEL_13;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void *sub_1C4C7D19C(_BYTE *a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a1[32];
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_1C46BC394(v8, v4, v2);
      MEMORY[0x1C6942830](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v4, v5);
  v6 = sub_1C46BC570(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

uint64_t sub_1C4C7D58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[3] = &type metadata for UnstructuredDatabaseTable;
  a5[4] = &off_1F43FF1D8;
  v10 = swift_allocObject();
  *a5 = v10;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4C7D630(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a3 + 32);
  if (v8)
  {
    v10 = *(a3 + 24);
    sub_1C442D78C();
    sub_1C44E9220();
    if (v4)
    {
      return;
    }

    v12 = v11;
    a4[3] = &type metadata for UnstructuredDatabaseTable;
    a4[4] = &off_1F43FF1D8;
    v13 = swift_allocObject();
    *a4 = v13;
    v13[2] = v10;
    v13[3] = v8;
    v13[4] = v12;
    v13[5] = v5;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    sub_1C450B034();
    v14 = swift_allocError();
    *v15 = a1;
    v15[1] = a2;
    sub_1C441A930(v14, v15);
    sub_1C44010A8(v18, v16, v17);
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4C7D738(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[4];
  if (v6)
  {
    v7 = a3[3];
    v9 = a3[6];
    v8 = a3[7];
    v10 = a3[5];
    v19 = 0uLL;
    sub_1C44E9220();
    if (!v3)
    {
      v20 = &v19;
      if (v8)
      {
        v12 = v8;
      }

      else
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      MEMORY[0x1EEE9AC00](v11);
      v18[2] = v7;
      v18[3] = v6;
      v18[4] = v13;
      v18[5] = v10;
      v18[6] = v9;
      v18[7] = v12;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C446C37C(sub_1C4C7D9F8, v18);
    }
  }

  else
  {
    sub_1C450B034();
    v14 = swift_allocError();
    *v15 = a1;
    v15[1] = a2;
    sub_1C441A930(v14, v15);
    sub_1C44010A8(v19, v16, v17);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4C7D8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  if (v7)
  {
    v8 = *(a3 + 24);
    sub_1C442D78C();
    sub_1C44E9220();
    if (!v3)
    {
      v10 = v9;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4CFDBF8(v8, v7, v10, v4);
    }
  }

  else
  {
    sub_1C450B034();
    v11 = swift_allocError();
    *v12 = a1;
    v12[1] = a2;
    sub_1C441A930(v11, v12);
    sub_1C44010A8(v15, v13, v14);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C4C7DA2C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1C43FEB04();
}

uint64_t sub_1C4C7DA40()
{
  sub_1C43FBCD4();
  v0[4] = *(v0[3] + 64);
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1C4C7DADC;
  v2 = v0[2];

  return sub_1C4B9C420(v2);
}

uint64_t sub_1C4C7DADC()
{
  sub_1C43FBCD4();

  if (v0)
  {
    sub_1C43FBDA0();

    return v1();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C4C7DC04, 0, 0);
  }
}

uint64_t sub_1C4C7DC04()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2[5];
  v4 = v2[6];
  sub_1C4409678(v2 + 2, v3);
  v5 = sub_1C4BDE1DC(v2[7], v1, v3, v4);
  v0[6] = v5;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1C4C7DCD8;

  return sub_1C4B9BD0C(v5);
}

uint64_t sub_1C4C7DCD8()
{
  sub_1C43FBCD4();
  *(*v1 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C4C7DE0C, 0, 0);
  }

  else
  {

    sub_1C43FBDA0();

    return v2();
  }
}

uint64_t sub_1C4C7DE0C()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4C7DE7C()
{
  sub_1C4403A84();
  sub_1C4EFC258();
  if (v0)
  {
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v1 = sub_1C4F00978();
    sub_1C442B738(v1, qword_1EDE2DF70);
    v2 = v0;
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CD8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = v0;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      sub_1C4403014(&dword_1C43F8000, v9, v10, "VectorDatabaseClient: %@");
      sub_1C4420C3C(v6, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }
  }

  sub_1C43FBDA0();

  return v11();
}

uint64_t sub_1C4C7E014()
{
  sub_1C4403A84();
  sub_1C4EFC278();
  if (v0)
  {
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v1 = sub_1C4F00978();
    sub_1C442B738(v1, qword_1EDE2DF70);
    v2 = v0;
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CD8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = v0;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      sub_1C4403014(&dword_1C43F8000, v9, v10, "VectorDatabaseClient: %@");
      sub_1C4420C3C(v6, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }
  }

  sub_1C43FBDA0();

  return v11();
}

uint64_t sub_1C4C7E194()
{
  sub_1C440962C((v0 + 16));

  return v0;
}

uint64_t sub_1C4C7E1C4()
{
  sub_1C4C7E194();

  return swift_deallocClassInstance();
}

void *sub_1C4C7E21C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  result = sub_1C4C7E25C(a1, a2, a3);
  if (!v5)
  {
    a5[3] = &unk_1F44068F0;
    a5[4] = &off_1F4406908;
    *a5 = result;
  }

  return result;
}

void *sub_1C4C7E25C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = sub_1C456902C(&qword_1EC0C4668, "TZ\b");
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for VectorDB.Config(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = _s6ConfigVMa(0);
  sub_1C4C7EE40(a3 + *(v17 + 44), v9);
  if (sub_1C44157D4(v9, 1, v10) == 1)
  {
    sub_1C4420C3C(v9, &qword_1EC0C4668, "TZ\b");
    v18 = sub_1C450B034();
    sub_1C43FFB2C(&unk_1F44064D8, v18);
    *v19 = a1;
    v19[1] = a2;
    sub_1C43FE0E0(v19, 17);
    sub_1C44010A8(v25, v20, v21);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    sub_1C4C7EEB0(v9, v16);
    sub_1C4B9CB28();
    if (!v3)
    {
      v23 = v22;
      sub_1C4B9E0CC(v16, v13);
      type metadata accessor for VectorDB.EmbeddingDatabase(0);
      swift_allocObject();
      a2 = sub_1C4B9B4F8(v23, v13);
    }

    sub_1C44207CC();
  }

  return a2;
}

uint64_t sub_1C4C7E474(uint64_t a1, uint64_t a2)
{
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDE2DF70);
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CD8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C43F8000, v5, v6, "VectorDBViewClientProvider: storage is not implemented!", v7, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v8 = sub_1C450B034();
  sub_1C43FFB2C(&unk_1F44064D8, v8);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = 0xD000000000000037;
  *(v9 + 24) = 0x80000001C4FBE110;
  *(v9 + 32) = v11;
  *(v9 + 48) = v12;
  *(v9 + 64) = 7;
  swift_willThrow();
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void *sub_1C4C7E5B0(uint64_t a1, void *a2, uint64_t a3)
{
  result = sub_1C4C7E25C(a1, a2, a3);
  if (!v3)
  {
    sub_1C4EFC248();
  }

  return result;
}

void *sub_1C4C7E5FC(uint64_t a1, void *a2, uint64_t a3)
{
  result = sub_1C4C7E25C(a1, a2, a3);
  if (!v3)
  {
    sub_1C4EFC278();
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CF8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1C441D828(a1, a2, &v12);
      _os_log_impl(&dword_1C43F8000, v8, v9, "Clearing VectorDB for %s.", v10, 0xCu);
      sub_1C440962C(v11);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }
  }

  return result;
}

void sub_1C4C7E768()
{
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C4400FC0();
    swift_once();
  }

  v0 = sub_1C4F00978();
  sub_1C442B738(v0, qword_1EDE2DF70);
  v1 = sub_1C4F00968();
  v2 = sub_1C4F01CD8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C43F8000, v1, v2, "VectorDBViewClientProvider: promoteArtifact is not implemented!", v3, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }
}

uint64_t sub_1C4C7E8C0(unint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v9 = _s10ViewConfigVMa(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDE2DF70);
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CB8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1C43F8000, v13, v14, "VectorDBViewGenerationProvider ignores fullRebuild flag.", v15, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }
  }

  swift_unownedRetainStrong();

  sub_1C443A738(a1, a2, v16, v17, v18, v19, v20, v21);
  if (v5)
  {
  }

  else
  {

    v22 = *(v11 + 33);
    if (v22)
    {
      v23 = *(v22 + 16);
      v24 = MEMORY[0x1E69E7CC0];
      if (v23)
      {
        v39 = a1;
        v40 = a2;
        v45 = v11;
        v42.n128_u64[0] = MEMORY[0x1E69E7CC0];
        sub_1C44CD9C0(0, v23, 0);
        v24 = v42.n128_u64[0];
        v25 = (v22 + 48);
        do
        {
          v26 = *(v25 - 1);
          v27 = *v25;
          v42.n128_u64[0] = v24;
          v28 = *(v24 + 16);
          v29 = *(v24 + 24);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if (v28 >= v29 >> 1)
          {
            sub_1C44CD9C0(v29 > 1, v28 + 1, 1);
            v24 = v42.n128_u64[0];
          }

          *(v24 + 16) = v28 + 1;
          v30 = v24 + 16 * v28;
          *(v30 + 32) = v26;
          *(v30 + 40) = v27;
          v25 += 7;
          --v23;
        }

        while (v23);
        a1 = v39;
        a2 = v40;
      }

      swift_unownedRetainStrong();
      v43 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      v44 = sub_1C4C1F36C();
      v42.n128_u64[0] = v24;
      v34 = sub_1C4C81ADC(&v42);

      sub_1C440962C(&v42);
      sub_1C4C687F0(v34, &v42);
      v36 = sub_1C4C83D3C(v34);

      swift_unownedRetainStrong();
      sub_1C4C7ECA4(a1, a2);
      v38 = v37;
      sub_1C440803C();

      sub_1C441D670(&v42, v41);
      _s12VectorDBViewCMa();
      v4 = swift_allocObject();
      sub_1C441D670(v41, v4 + 16);
      *(v4 + 56) = v36;
      *(v4 + 64) = v38;
    }

    else
    {
      v4 = 0x80000001C4FBE0B0;
      v31 = sub_1C450B034();
      v32 = sub_1C43FFB2C(&unk_1F44064D8, v31);
      v33->n128_u64[0] = a1;
      v33->n128_u64[1] = a2;
      v33[1].n128_u64[0] = 0xD000000000000013;
      v33[1].n128_u64[1] = 0x80000001C4FBE0B0;
      v33[2].n128_u64[0] = 0;
      v33[2].n128_u64[1] = 0xE000000000000000;
      sub_1C44010A8(v42, v32, v33);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C440803C();
    }
  }

  return v4;
}

void sub_1C4C7ECA4(uint64_t a1, uint64_t a2)
{
  sub_1C4C81AA0(a1, a2, 0);
  if (!v2)
  {
    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v5 = sub_1C450B034();
      sub_1C43FFB2C(&unk_1F44064D8, v5);
      *v6 = a1;
      v6[1] = a2;
      sub_1C43FE0E0(v6, 18);
      *(v7 + 48) = v8;
      *(v7 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

uint64_t sub_1C4C7ED7C(unint64_t a1, unint64_t a2, char a3)
{
  v5 = sub_1C4C7E8C0(a1, a2, a3, *v3);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C7EE40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C4668, "TZ\b");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4C7EEB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VectorDB.Config(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4C7EF30(uint64_t a1, uint64_t a2)
{
  v5 = _s10ViewConfigVMa(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C443A738(a1, a2, v8, v9, v10, v11, v12, v13);
  if (!v2)
  {
    ViewGeneration.ViewClients.storage(for:fullRebuild:)(a1, a2, 0);
    sub_1C441D670(v22, v23);
    v15 = *(v7 + 26);
    if (v15)
    {
      v16 = *(v7 + 25);
      sub_1C441D670(v23, v22);
      _s33WalletOrderExtractedViewGeneratorCMa();
      a2 = swift_allocObject();
      sub_1C441D670(v22, a2 + 16);
      *(a2 + 56) = v16;
      *(a2 + 64) = v15;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      *&v22[0] = 0;
      *(&v22[0] + 1) = 0xE000000000000000;
      sub_1C4F02248();

      *&v22[0] = 0xD00000000000001CLL;
      *(&v22[0] + 1) = 0x80000001C4FBE240;
      MEMORY[0x1C6940010](a1, a2);
      a2 = *(&v22[0] + 1);
      v17 = *&v22[0];
      sub_1C450B034();
      swift_allocError();
      *v18 = v17;
      *(v18 + 8) = a2;
      v19 = v22[2];
      v20 = v22[1];
      *(v18 + 16) = v22[0];
      *(v18 + 32) = v20;
      *(v18 + 48) = v19;
      *(v18 + 64) = 5;
      swift_willThrow();
      sub_1C440962C(v23);
    }

    sub_1C445F57C(v7);
  }

  return a2;
}

uint64_t sub_1C4C7F10C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4C7EF30(a1, a2);
  v4 = *(v2 + 8);

  return v4(v3);
}

char *sub_1C4C7F1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35[4] = *MEMORY[0x1E69E9840];
  v7 = sub_1C4F01188();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  if (!String.removeNullFieldsFromJsonString()().value._object)
  {
    goto LABEL_16;
  }

  sub_1C4F01178();
  v11 = sub_1C4F01148();
  v13 = v12;

  (*(v8 + 8))(v10, v7);
  if (v13 >> 60 == 15)
  {
    goto LABEL_16;
  }

  v14 = objc_opt_self();
  v15 = sub_1C4EF9A38();
  v35[0] = 0;
  v16 = [v14 JSONObjectWithData:v15 options:0 error:v35];

  v10 = v35[0];
  if (!v16)
  {
    v22 = v35[0];
    v5 = sub_1C4EF97A8();

    swift_willThrow();
    goto LABEL_10;
  }

  v17 = v35[0];
  sub_1C4F02078();
  swift_unknownObjectRelease();
  sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1C441DFEC(v11, v13);
    goto LABEL_16;
  }

  sub_1C465DD4C();
  v10 = v18;

  v19 = objc_allocWithZone(MEMORY[0x1E69AA780]);
  v20 = sub_1C4C80498(v10);
  if (v4)
  {
LABEL_10:
    sub_1C441DFEC(v11, v13);
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v23 = sub_1C4F00978();
    sub_1C442B738(v23, qword_1EDDFECB8);
    v24 = v5;
    v25 = sub_1C4F00968();
    v26 = sub_1C4F01CF8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35[0] = v28;
      *v27 = 136315138;
      swift_getErrorValue();
      v29 = sub_1C4F02A38();
      v10 = sub_1C441D828(v29, v30, v35);

      *(v27 + 4) = v10;
      _os_log_impl(&dword_1C43F8000, v25, v26, "Error deserializing JSON: %s", v27, 0xCu);
      sub_1C440962C(v28);
      MEMORY[0x1C6942830](v28, -1, -1);
      MEMORY[0x1C6942830](v27, -1, -1);
    }

    goto LABEL_17;
  }

  v10 = v20;
  sub_1C441DFEC(v11, v13);
  if (!v10)
  {
LABEL_16:
    sub_1C4C80668();
    swift_allocError();
    *v31 = 0xD000000000000029;
    v31[1] = 0x80000001C4FBE210;
LABEL_17:
    swift_willThrow();
    return v10;
  }

  sub_1C4C806BC(v10);
  if (v21)
  {
    a3 = sub_1C4F01288();
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  v33 = objc_allocWithZone(MEMORY[0x1E69AA788]);
  sub_1C4C80580(a3);
  return v10;
}

uint64_t sub_1C4C7F63C()
{
  sub_1C43FBCD4();
  *(v1 + 96) = v2;
  *(v1 + 104) = v0;

  return MEMORY[0x1EEE6DFA0](sub_1C4C7F6C8, 0, 0);
}

uint64_t sub_1C4C7F6C8()
{
  v1 = v0[13];
  v2 = v1[5];
  v3 = v1[6];
  sub_1C4409678(v1 + 2, v2);
  (*(v3 + 16))(v2, v3);

  v4 = sub_1C49A52FC(sub_1C4C8064C, v1);
  v0[14] = v4;

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v5 = sub_1C4F00978();
  v0[15] = sub_1C442B738(v5, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CC8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = sub_1C4428DA0(v4);

    _os_log_impl(&dword_1C43F8000, v6, v7, "fetched orders count:%ld", v8, 0xCu);
    MEMORY[0x1C6942830](v8, -1, -1);
  }

  else
  {
  }

  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CC8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1C43F8000, v9, v10, "Started Full Donation to cascade set", v11, 2u);
    MEMORY[0x1C6942830](v11, -1, -1);
  }

  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  v12 = swift_allocObject();
  v0[16] = v12;
  *(v12 + 16) = xmmword_1C4F0FCC0;
  v13 = objc_opt_self();
  v14 = sub_1C4F01108();
  v0[8] = 0;
  v15 = [v13 sourceIdentifierWithValue:v14 error:v0 + 8];

  v16 = v0[8];
  if (v15)
  {
    *(v12 + 32) = v15;
    v17 = v16;
    v18 = swift_task_alloc();
    v0[17] = v18;
    *v18 = v0;
    v18[1] = sub_1C4C7FA90;

    return sub_1C467BA74(7952, v12);
  }

  else
  {
    v20 = v16;

    sub_1C4EF97A8();

    swift_willThrow();
    *(v12 + 16) = 0;

    sub_1C43FBDA0();

    return v21();
  }
}

uint64_t sub_1C4C7FA90(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_1C4C800D4;
  }

  else
  {

    v4 = sub_1C4C7FBE0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C4C7FBE0(uint64_t a1)
{
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CC8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C43F8000, v2, v3, "Acquired full donation", v4, 2u);
    MEMORY[0x1C6942830](v4, -1, -1);
  }

  if ((sub_1C4D0E2C0() & 1) == 0)
  {
    v10 = *(v1 + 112);
    v11 = 0;
    v47 = v10 & 0xC000000000000001;
    v48 = sub_1C4428DA0(v10);
    v46 = v10 & 0xFFFFFFFFFFFFFF8;
    v12 = *(v1 + 152);
    while (v48 != v11)
    {
      if (v47)
      {
        MEMORY[0x1C6940F90](v11, *(v1 + 112));
      }

      else
      {
        if (v11 >= *(v46 + 16))
        {
          goto LABEL_31;
        }
      }

      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
      }

      sub_1C493DD18();
      if (v12)
      {

        return swift_unexpectedError();
      }

      v15 = v13;
      v16 = v14;
      sub_1C493DD18();
      *(v1 + 16) = v17;
      *(v1 + 24) = v18;
      *(v1 + 32) = 3826797;
      *(v1 + 40) = 0xE300000000000000;
      *(v1 + 48) = 0;
      *(v1 + 56) = 0xE000000000000000;
      v45 = sub_1C4415EA8();
      v44 = MEMORY[0x1E69E6158];
      v19 = sub_1C4F02008();
      v21 = v20;

      v22 = sub_1C4C7F1BC(v15, v16, v19, v21);
      v24 = v23;

      v25 = objc_allocWithZone(MEMORY[0x1E69939F8]);
      v26 = v22;
      v27 = v24;
      v28 = sub_1C4C803C4(v26, v27);
      v29 = *(v1 + 144);
      v30 = v28;
      *(v1 + 72) = 0;
      v31 = [v29 registerItem:v28 error:{v1 + 72, v44, v45, v45, v45}];
      v32 = *(v1 + 72);
      if ((v31 & 1) == 0)
      {
        v41 = *(v1 + 144);
        v42 = v32;
        sub_1C4EF97A8();

        swift_willThrow();

        goto LABEL_25;
      }

      v33 = v32;

      v12 = 0;
      ++v11;
    }

    v37 = *(v1 + 144);

    *(v1 + 80) = 0;
    v38 = [v37 finish_];
    v39 = *(v1 + 80);
    if (v38)
    {
      v40 = v39;
      sub_1C4D0E5C0();
      goto LABEL_6;
    }

    v34 = *(v1 + 144);
    v43 = v39;
    sub_1C4EF97A8();

    goto LABEL_18;
  }

  v5 = *(v1 + 144);

  *(v1 + 88) = 0;
  v6 = [v5 finish_];
  v7 = *(v1 + 88);
  if (!v6)
  {
    v34 = *(v1 + 144);
    v35 = v7;
    sub_1C4EF97A8();

LABEL_18:
    swift_willThrow();

LABEL_25:
    sub_1C43FBDA0();
    goto LABEL_26;
  }

  v8 = v7;
LABEL_6:

  sub_1C43FBDA0();
LABEL_26:

  return v9();
}

uint64_t sub_1C4C800D4()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4C80168@<X0>(uint64_t *a3@<X8>)
{
  v5 = sub_1C4EFB768();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_1C4EFB758();
  v9 = sub_1C4EFBC18();
  if (v3)
  {
    (*(v6 + 8))(v8, v5);
    return sub_1C46AA374(v12);
  }

  else
  {
    v11 = v9;
    (*(v6 + 8))(v8, v5);
    result = sub_1C46AA374(v12);
    *a3 = v11;
  }

  return result;
}

uint64_t sub_1C4C802D0()
{
  sub_1C440962C((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C80334()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44E2E7C;

  return sub_1C4C7F63C();
}

id sub_1C4C803C4(void *a1, void *a2)
{
  v3 = v2;
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v6 = [v3 initWithContent:a1 metaContent:a2 error:v10];
  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1C4EF97A8();

    swift_willThrow();
  }

  return v6;
}

id sub_1C4C80498(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1C4F00EC8();

  v7[0] = 0;
  v3 = [v1 initWithJSONDictionary:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1C4EF97A8();

    swift_willThrow();
  }

  return v3;
}

id sub_1C4C80580(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1C4F01108();

  v7[0] = 0;
  v3 = [v1 initWithSourceItemIdentifier:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1C4EF97A8();

    swift_willThrow();
  }

  return v3;
}

unint64_t sub_1C4C80668()
{
  result = qword_1EC0C5428;
  if (!qword_1EC0C5428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5428);
  }

  return result;
}

uint64_t sub_1C4C806BC(void *a1)
{
  v1 = [a1 trackedOrderIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C4C80730()
{
  sub_1C4418CA4();
  v3 = v2;
  v4 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C44058BC();
  v6 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v10 = sub_1C4435588();
  if (sub_1C44157D4(v10, v11, v6) == 1)
  {
    v12 = sub_1C43FC1C0();
    sub_1C446F170(v12, v13, &qword_1C4F105A0);
    v14 = sub_1C445EA78();
    sub_1C45922A8(v14);

    v15 = sub_1C43FD2BC();
    return sub_1C446F170(v15, v16, &qword_1C4F105A0);
  }

  else
  {
    (*(v8 + 32))(v1, v3, v6);
    swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_1C440A224();
    sub_1C4660EC4(v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);

    *v0 = v28;
  }

  return result;
}

uint64_t sub_1C4C808A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C442EDD4();
    sub_1C43FE5F8();
    sub_1C44E737C();

    *v4 = v7;
  }

  else
  {
    sub_1C445FAA8(a3, a4);
    if (v6)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C442EDD4();
      sub_1C456902C(&qword_1EC0BA720, &qword_1C4F23540);
      sub_1C4F02458();

      sub_1C4F02478();

      *v4 = v7;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1C4C809F8()
{
  sub_1C4404078();
  v3 = sub_1C456902C(&qword_1EC0BB248, &qword_1C4F1E7C8);
  sub_1C43FBD18(v3);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C4402FE0();
  type metadata accessor for EntityMatch(v5);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  sub_1C44058BC();
  if (sub_1C44157D4(v1, 1, v7) == 1)
  {
    v8 = sub_1C440A9B8();
    sub_1C446F170(v8, v9, &qword_1C4F1E7C8);
    sub_1C4592384();
    sub_1C4EFF0C8();
    sub_1C43FD3F8();
    (*(v10 + 8))(v0);
    return sub_1C446C11C(v2);
  }

  else
  {
    sub_1C440A9B8();
    sub_1C4C8C1C0();
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *v1;
    sub_1C46616C8();
    *v1 = v13;
    sub_1C4EFF0C8();
    sub_1C43FD3F8();
    return (*(v12 + 8))(v0);
  }
}

void sub_1C4C80B90(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1C441D670(a1, v8);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C442EDD4();
    sub_1C4661C40();
    *v2 = v7;
  }

  else
  {
    sub_1C446F170(a1, &qword_1EC0C5450, &qword_1C4F61358);
    v4 = sub_1C457ADD8(a2);
    if (v5)
    {
      v6 = v4;
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C442EDD4();
      sub_1C456902C(&qword_1EC0BA750, &qword_1C4F61360);
      sub_1C4F02458();
      sub_1C441D670((*(v7 + 56) + 40 * v6), v8);
      sub_1C456902C(&qword_1EC0C5458, &qword_1C4F61368);
      sub_1C45A2528();
      sub_1C4F02478();
      *v2 = v7;
    }

    else
    {
      v9 = 0;
      memset(v8, 0, sizeof(v8));
    }

    sub_1C446F170(v8, &qword_1EC0C5450, &qword_1C4F61358);
  }
}

uint64_t sub_1C4C80CE8()
{
  sub_1C4404078();
  v4 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402FE0();
  v6 = sub_1C4EF9D38();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v10 = sub_1C4435588();
  if (sub_1C44157D4(v10, v11, v6) == 1)
  {
    v12 = sub_1C440A9B8();
    sub_1C446F170(v12, v13, &unk_1C4F124A0);
    sub_1C45924C4();
    sub_1C4EFF0C8();
    sub_1C43FD3F8();
    (*(v14 + 8))(v0);
    return sub_1C446C11C(v2);
  }

  else
  {
    (*(v8 + 32))(v3, v1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1C466207C(v3, v0, isUniquelyReferenced_nonNull_native, v17, v18, v19, v20, v21, v23, *v1, v25, v26);
    *v1 = v24;
    sub_1C4EFF0C8();
    sub_1C43FD3F8();
    return (*(v22 + 8))(v0);
  }
}

uint64_t sub_1C4C8107C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1C456902C(&qword_1EC0C5448, &unk_1C4F61348);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_1C456902C(&qword_1EC0B8588, &qword_1C4F0E310);
  MEMORY[0x1EEE9AC00](v11);
  if (sub_1C44157D4(a1, 1, v12) == 1)
  {
    sub_1C446F170(a1, &qword_1EC0C5448, &unk_1C4F61348);
    sub_1C45927D0(a2, a3);

    return sub_1C446F170(v10, &qword_1EC0C5448, &unk_1C4F61348);
  }

  else
  {
    sub_1C44CDA7C();
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *v4;
    sub_1C466288C();

    *v4 = v15;
  }

  return result;
}

void sub_1C4C81220(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1C441D670(a1, v9);
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_1C46629C4();
    *v2 = v7;
  }

  else
  {
    sub_1C446F170(a1, &qword_1EC0C5460, &unk_1C4F61370);
    v4 = sub_1C457B724(a2);
    if (v5)
    {
      v6 = v4;
      swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      sub_1C456902C(&qword_1EC0BA758, &qword_1C4F14690);
      sub_1C4F02458();
      sub_1C441D670((*(v8 + 56) + 40 * v6), v9);
      sub_1C456902C(&qword_1EC0C48F0, &qword_1C4F61380);
      sub_1C4C8BF98();
      sub_1C4F02478();
      *v2 = v8;
    }

    else
    {
      v10 = 0;
      memset(v9, 0, sizeof(v9));
    }

    sub_1C446F170(v9, &qword_1EC0C5460, &unk_1C4F61370);
  }
}