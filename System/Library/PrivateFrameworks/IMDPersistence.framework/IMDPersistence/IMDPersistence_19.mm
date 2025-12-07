uint64_t sub_1B7CBEA80(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1B7CBEC9C(uint64_t a1)
{
  result = sub_1B7CBF28C(&qword_1EDBE3FB0, type metadata accessor for ChatLookupRecord, &unk_1B7D128E0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7CBECF4()
{
  v25 = sub_1B7CFE850();
  v0 = *(v25 - 8);
  v1 = v0;
  MEMORY[0x1EEE9AC00](v25);
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B7CFE7D0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7C107FC(&qword_1EBA52050, &qword_1B7D0AF40);
  v7 = *(v0 + 72);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B7D127A0;
  swift_getKeyPath();
  v29 = 0u;
  v30 = 0u;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  sub_1B7CFE840();
  swift_getKeyPath();
  v29 = 0u;
  v30 = 0u;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  sub_1B7CFE840();
  swift_getKeyPath();
  v29 = 0u;
  v30 = 0u;
  (*(v4 + 104))(v6, *MEMORY[0x1E697BCD8], v3);
  v10 = sub_1B7CFE800();
  swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  v12 = sub_1B7CFE810();
  *(&v27 + 1) = v10;
  v28 = sub_1B7CBF28C(qword_1EDBE3A20, MEMORY[0x1E697BCF0], MEMORY[0x1E697BCE8]);
  *&v26 = v12;
  sub_1B7CFE840();
  swift_getKeyPath();
  *(&v30 + 1) = MEMORY[0x1E69E6530];
  *&v29 = 0;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  sub_1B7CFE840();
  swift_getKeyPath();
  v29 = 0u;
  v30 = 0u;
  sub_1B7C107FC(&qword_1EBA53668, &unk_1B7D12A48);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B7D0A7B0;
  sub_1B7C107FC(&qword_1EBA52060, &qword_1B7D0AFD0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B7D0AD40;
  *(v14 + 32) = swift_getKeyPath();
  *(v14 + 40) = swift_getKeyPath();
  *(v13 + 32) = v14;
  v15 = v24;
  v16 = sub_1B7C107FC(&qword_1EBA53670, &qword_1B7D12A58);
  swift_allocObject();
  v17 = sub_1B7CFE890();
  *(&v27 + 1) = v16;
  v28 = sub_1B7CBF1F0();
  *&v26 = v17;
  sub_1B7CFE840();
  v18 = sub_1B7CA2198(0, 1, 1, v11);
  v20 = v18[2];
  v19 = v18[3];
  if (v20 >= v19 >> 1)
  {
    v18 = sub_1B7CA2198((v19 > 1), v20 + 1, 1, v18);
  }

  v18[2] = v20 + 1;
  v21 = v18 + v8 + v20 * v7;
  v22 = v18;
  (*(v1 + 32))(v21, v15, v25);
  *&v26 = v9;
  sub_1B7C50CF0(v22);
  return v26;
}

unint64_t sub_1B7CBF1F0()
{
  result = qword_1EDBE3A18;
  if (!qword_1EDBE3A18)
  {
    sub_1B7C1091C(&qword_1EBA53670, &qword_1B7D12A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBE3A18);
  }

  return result;
}

uint64_t sub_1B7CBF28C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7CBF324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RecordEncoder.KeyedRecordEncoder(0, a2, a3, a4);
  swift_unknownObjectRetain();

  swift_getWitnessTable();
  return sub_1B7CFF530();
}

void sub_1B7CBF3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(sub_1B7CBF490(a2, a3) + 40);

  v7 = sub_1B7CFF890();
  if (*(v6 + 16))
  {
    sub_1B7AE11D0(v7, v8);
    v10 = v9;

    if (v10)
    {

      return;
    }
  }

  else
  {
  }

  __break(1u);
}

uint64_t sub_1B7CBF490(uint64_t a1, uint64_t a2)
{
  if (qword_1EDBE3AE0 != -1)
  {
    swift_once();
  }

  v3 = off_1EDBE3AE8;

  os_unfair_lock_lock(v3 + 8);
  v4 = sub_1B7AE9FE4(a2, &v3[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v3 + 8);

  return v4;
}

uint64_t sub_1B7CBF51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  sub_1B7CBF3C8(a2, *v5, v5[1], v5[2], *(a3 + 16), *(a3 + 24));
  v10 = v9;
  v11 = (*(a5 + 16))(a4, a5);
  return IMDRecordSetInteger(v8, v10, v11);
}

void sub_1B7CBF5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  sub_1B7CBF3C8(a2, *v5, v5[1], v5[2], *(a3 + 16), *(a3 + 24));
  v10 = v9;
  (*(a5 + 16))(a4, a5);
  v11 = sub_1B7CFF7A0();
  IMDRecordSetObject(v8, v10, v11);
}

void sub_1B7CBF658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  sub_1B7CBF3C8(a2, *v5, v5[1], v5[2], *(a3 + 16), *(a3 + 24));
  v10 = v9;
  (*(a5 + 16))(a4, a5);
  v11 = sub_1B7CFEA30();

  IMDRecordSetObject(v8, v10, v11);
}

uint64_t sub_1B7CBF708(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  sub_1B7CBF3C8(a1, *v2, v2[1], v2[2], *(a2 + 16), *(a2 + 24));
  return IMDRecordSetObject(v3, v4, 0);
}

void sub_1B7CBF918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[0] = a1;
  v4[1] = a2;
  sub_1B7CBF658(v4, a3, a4, MEMORY[0x1E69E6158], &off_1F2FA6550);
}

uint64_t sub_1B7CBFC14()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B7CBFD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1B7CBFDD0(__n128 a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1B7CFE5C0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7CFF890();
  v9 = v8;
  (*(v4 + 104))(v6, *MEMORY[0x1E697BB70], v3);
  v10 = sub_1B7CFE5B0();
  v12 = v11;
  (*(v4 + 8))(v6, v3);
  if (v7 == v10 && v9 == v12)
  {
  }

  else
  {
    v14 = sub_1B7CFF590();

    if ((v14 & 1) == 0)
    {
      sub_1B7CBFF6C();
      swift_allocError();
      swift_willThrow();
    }
  }
}

unint64_t sub_1B7CBFF6C()
{
  result = qword_1EBA53700;
  if (!qword_1EBA53700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53700);
  }

  return result;
}

unint64_t sub_1B7CBFFD4()
{
  result = qword_1EBA53708;
  if (!qword_1EBA53708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53708);
  }

  return result;
}

uint64_t DatabaseInspectorAttachmentStorageInspectorCrossCheckReport.deinit()
{

  return v0;
}

uint64_t DatabaseInspectorAttachmentStorageInspectorCrossCheckReport.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StorageInspectionFileRecord(uint64_t a1)
{
  result = qword_1EBA53718;
  if (!qword_1EBA53718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7CC0160(void *a1)
{
  v3 = sub_1B7C107FC(&qword_1EBA53740, &qword_1B7D12F08);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7CC0DDC();
  sub_1B7CFF830();
  v8[15] = 0;
  sub_1B7CFF4D0();
  if (!v1)
  {
    v8[14] = 1;
    sub_1B7CFF4E0();
    v8[13] = 2;
    sub_1B7CFF4B0();
    v8[12] = 3;
    sub_1B7CFF520();
    type metadata accessor for StorageInspectionFileRecord(0);
    v8[11] = 4;
    sub_1B7CFDFF0();
    sub_1B7CC0EF0(&qword_1EBA52AB8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1B7CFF500();
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_1B7CC03C0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_1B7CFDFF0();
  v19 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7C107FC(&qword_1EBA53730, &qword_1B7D12F00);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for StorageInspectionFileRecord(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v23 = a1;
  sub_1B7AE9124(a1, v13);
  sub_1B7CC0DDC();
  sub_1B7CFF820();
  if (v2)
  {
    sub_1B7AE9168(v23);
  }

  else
  {
    v18 = v10;
    v15 = v21;
    v14 = v22;
    v28 = 0;
    *v12 = sub_1B7CFF410();
    v12[8] = v16 & 1;
    v27 = 1;
    *(v12 + 2) = sub_1B7CFF420();
    *(v12 + 3) = v17;
    v26 = 2;
    v12[32] = sub_1B7CFF3F0();
    v25 = 3;
    *(v12 + 5) = sub_1B7CFF460();
    v24 = 4;
    sub_1B7CC0EF0(&qword_1EBA52A78, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_1B7CFF440();
    (*(v15 + 8))(v9, v14);
    (*(v19 + 32))(&v12[*(v18 + 32)], v6, v4);
    sub_1B7CC0E30(v12, v20);
    sub_1B7AE9168(v23);
    sub_1B7CC0E94(v12);
  }
}

uint64_t sub_1B7CC0758()
{
  v1 = *v0;
  v2 = 0x4449776F72;
  v3 = 0x6165677275507369;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 7107189;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1752457584;
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

uint64_t sub_1B7CC07EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7CC1050(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7CC0814(uint64_t a1)
{
  v2 = sub_1B7CC0DDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7CC0850(uint64_t a1)
{
  v2 = sub_1B7CC0DDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7CC08BC()
{
  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD000000000000023, 0x80000001B7D5A9C0);
  if (*(v0 + 8))
  {
    v1 = 0xE300000000000000;
    v2 = 7104878;
  }

  else
  {
    sub_1B7C2617C();
    v2 = sub_1B7CFF090();
    v1 = v3;
  }

  MEMORY[0x1B8CADCA0](v2, v1);

  MEMORY[0x1B8CADCA0](0x203A68746170202CLL, 0xE800000000000000);
  MEMORY[0x1B8CADCA0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1B8CADCA0](0x677275507369202CLL, 0xEF203A656C626165);
  v4 = *(v0 + 32);
  v5 = 1702195828;
  if ((v4 & 1) == 0)
  {
    v5 = 0x65736C6166;
  }

  v6 = 0xE500000000000000;
  if (v4)
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == 2)
  {
    v7 = 0x6E776F6E6B6E75;
  }

  else
  {
    v7 = v5;
  }

  if (v4 == 2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = v6;
  }

  MEMORY[0x1B8CADCA0](v7, v8);

  MEMORY[0x1B8CADCA0](0x426C61746F74202CLL, 0xEE00203A73657479);
  v9 = *(v0 + 40);
  v10 = objc_opt_self();
  v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  v12 = [v10 stringFromHugeNumber_];

  v13 = sub_1B7CFEA60();
  v15 = v14;

  MEMORY[0x1B8CADCA0](v13, v15);

  MEMORY[0x1B8CADCA0](10537, 0xE200000000000000);
  return 0;
}

uint64_t sub_1B7CC0AF0()
{
  sub_1B7CFF7C0();
  if (*(v0 + 8) == 1)
  {
    sub_1B7CFF7E0();
  }

  else
  {
    v1 = *v0;
    sub_1B7CFF7E0();
    MEMORY[0x1B8CAE930](v1);
  }

  return sub_1B7CFF800();
}

uint64_t sub_1B7CC0B60()
{
  if (*(v0 + 8) == 1)
  {
    return sub_1B7CFF7E0();
  }

  v2 = *v0;
  sub_1B7CFF7E0();
  return MEMORY[0x1B8CAE930](v2);
}

uint64_t sub_1B7CC0BB0(uint64_t a1)
{
  sub_1B7CFF7C0();
  if (*(v1 + 8) == 1)
  {
    sub_1B7CFF7E0();
  }

  else
  {
    v2 = *v1;
    sub_1B7CFF7E0();
    MEMORY[0x1B8CAE930](v2);
  }

  return sub_1B7CFF800();
}

BOOL sub_1B7CC0C1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return v2;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    v5 = a1;
    v6 = a2;
    v7 = sub_1B7CFF590();
    a2 = v6;
    v8 = v7;
    a1 = v5;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(a1 + 32);
  v10 = *(a2 + 32);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else
  {
    v2 = 0;
    if (v10 == 2 || ((v10 ^ v9) & 1) != 0)
    {
      return v2;
    }
  }

  return *(a1 + 40) == *(a2 + 40);
}

void sub_1B7CC0D14(uint64_t a1)
{
  sub_1B7C6715C(319, &qword_1EBA529E0, MEMORY[0x1E69E76D8]);
  if (v1 <= 0x3F)
  {
    sub_1B7C6715C(319, &qword_1EBA53728, MEMORY[0x1E69E6370]);
    if (v2 <= 0x3F)
    {
      sub_1B7CFDFF0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1B7CC0DDC()
{
  result = qword_1EBA53738;
  if (!qword_1EBA53738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53738);
  }

  return result;
}

uint64_t sub_1B7CC0E30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageInspectionFileRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7CC0E94(uint64_t a1)
{
  v2 = type metadata accessor for StorageInspectionFileRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7CC0EF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B7CC0F4C()
{
  result = qword_1EBA53748;
  if (!qword_1EBA53748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53748);
  }

  return result;
}

unint64_t sub_1B7CC0FA4()
{
  result = qword_1EBA53750;
  if (!qword_1EBA53750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53750);
  }

  return result;
}

unint64_t sub_1B7CC0FFC()
{
  result = qword_1EBA53758;
  if (!qword_1EBA53758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53758);
  }

  return result;
}

uint64_t sub_1B7CC1050(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449776F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B7CFF590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1752457584 && a2 == 0xE400000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6165677275507369 && a2 == 0xEB00000000656C62 || (sub_1B7CFF590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7D5A9F0 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B7CFF590();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void sub_1B7CC1208(uint64_t a1)
{
  if (*(*(v1 + 40) + 16))
  {
    sub_1B7AFEA28(a1);
    if (v2)
    {
    }
  }
}

uint64_t sub_1B7CC124C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B7CC12C0(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = sub_1B7C107FC(&qword_1EBA52030, &unk_1B7D13080);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v37 - v4;
  v6 = sub_1B7C107FC(&qword_1EBA52038, &qword_1B7D0AD18);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - v8;
  v51 = sub_1B7C107FC(&qword_1EBA52040, &qword_1B7D13090);
  v10 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v37 - v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v43 = v9;
    v44 = v6;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1B7AE8FB4(0, v12, 0);
    v13 = v53;
    v41 = (v7 + 48);
    v42 = "IMDMessageQueryStrings";
    v39 = (v7 + 8);
    v40 = (v7 + 32);
    v37 = v7;
    v38 = (v10 + 8);
    v14 = (a1 + 40);
    v45 = v5;
    while (1)
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      if (!sub_1B7CFE8A0())
      {
        break;
      }

      v49 = v12;
      v17 = sub_1B7CFE880();
      v47 = v18;
      v48 = v17;
      v19 = (*(v16 + 16))(v15, v16);
      v21 = v20;
      sub_1B7CFE310();
      sub_1B7CFE320();
      v22 = v13;
      v23 = v44;
      if ((*v41)(v5, 1, v44) == 1)
      {
        sub_1B7C1D5F8(v5);
        break;
      }

      v24 = v43;
      (*v40)(v43, v5, v23);
      swift_getKeyPath();
      sub_1B7CFE330();

      if ((v21 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v21) & 0xF;
      }

      else
      {
        v25 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (v52[2] == v19 && v52[3] == v21 && v52[0] >> 16 == 0 && v52[1] >> 16 == v25)
      {

        (*v39)(v24, v23);
      }

      else
      {
        v29 = sub_1B7CFF560();

        (*v39)(v24, v23);
        if ((v29 & 1) == 0)
        {
          break;
        }
      }

      (*v38)(v50, v51);

      v13 = v22;
      v53 = v22;
      v31 = *(v22 + 16);
      v30 = *(v22 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1B7AE8FB4((v30 > 1), v31 + 1, 1);
        v13 = v53;
      }

      *(v13 + 16) = v31 + 1;
      v32 = (v13 + 32 * v31);
      v33 = v47;
      v32[4] = v48;
      v32[5] = v33;
      v32[6] = v19;
      v32[7] = v21;
      v14 += 2;
      v12 = v49 - 1;
      v5 = v45;
      if (v49 == 1)
      {
        goto LABEL_26;
      }
    }

    sub_1B7CFF340();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_26:
      sub_1B7C107FC(&qword_1EBA53410, &qword_1B7D11578);
      v34 = sub_1B7CFF380();
    }

    else
    {
      v34 = MEMORY[0x1E69E7CC8];
    }

    v52[0] = v34;

    sub_1B7AEBFC4(v35, 1, v52);

    return v52[0];
  }

  return result;
}

void *sub_1B7CC1854()
{
  v1 = v0;
  v0[2] = 0;
  type metadata accessor for ExportableDatabaseRecordCountReport();
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 344) = MEMORY[0x1E69E7CC0];
  StorageInspectionCountReport.init()();
  v0[3] = v4;
  type metadata accessor for StorageInspectionDatabaseContext();
  v5 = swift_allocObject();
  v5[1] = vdupq_n_s64(0x64uLL);
  v5[2].i64[0] = v3;
  v0[4] = v5;
  type metadata accessor for StorageInspectionFileRecordTable();
  swift_allocObject();
  v0[2] = sub_1B7C74D3C(0xD000000000000015, 0x80000001B7D54E80, 2);

  if (qword_1EBA515D8 != -1)
  {
    swift_once();
  }

  v6 = *(qword_1EBA5DAF0 + OBJC_IVAR____TtC14IMDPersistence29StorageInspectorReportManager_report);
  v7 = v0[3];
  v8 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_exportableDatabaseRecordCountReport;
  swift_beginAccess();
  *&v6[v8] = v7;
  v9 = v6;

  return v1;
}

void sub_1B7CC19C0()
{
  v2 = v1;
  v10[7] = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 24);
  swift_beginAccess();
  *(v3 + 16) = &unk_1F2FA1FA8;

  if (*(v0 + 16))
  {
    v4 = qword_1EBA515F0;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = off_1EBA52D08;
    v6 = objc_autoreleasePoolPush();
    swift_beginAccess();
    IMDSqlOperationBeginTransaction(v5 + 2);
    v10[0] = 0;
    IMDSqlOperationGetError((v5 + 2), v10);
    v7 = v10[0];
    swift_endAccess();
    if (v7)
    {
      swift_willThrow();
      v7;
LABEL_13:
      objc_autoreleasePoolPop(v6);

      return;
    }

    sub_1B7C740BC();
    if (!v2)
    {
      sub_1B7CDD1FC();
      swift_beginAccess();
      IMDSqlOperationCommitTransaction(v5 + 2);
      v10[0] = 0;
      IMDSqlOperationGetError((v5 + 2), v10);
      v8 = v10[0];
      swift_endAccess();
      if (!v8)
      {
        goto LABEL_13;
      }

      swift_willThrow();
      v2 = v8;
    }

    if (v5[4] && (swift_beginAccess(), IMDSqlOperationRevertTransaction(v5 + 2), v10[0] = 0, IMDSqlOperationGetError((v5 + 2), v10), v9 = v10[0], swift_endAccess(), v9))
    {
      swift_willThrow();
      v9;
    }

    else
    {
      swift_willThrow();
    }

    goto LABEL_13;
  }
}

uint64_t sub_1B7CC1BDC()
{
  v2 = v1;
  v3 = v0;
  v4 = 0;
  v25 = *MEMORY[0x1E69E9840];
  while (1)
  {
    if (qword_1EBA515F0 != -1)
    {
      swift_once();
    }

    v5 = off_1EBA52D08;
    v6 = objc_autoreleasePoolPush();
    v7 = sub_1B7CFEA30();
    swift_beginAccess();
    IMDSqlOperationStartQuery(v5 + 2, v7);
    swift_endAccess();

    swift_beginAccess();
    v22 = 0;
    IMDSqlOperationGetError((v5 + 2), &v22);
    v8 = v22;
    swift_endAccess();
    if (v8)
    {
      swift_willThrow();
      v18 = v8;
      goto LABEL_22;
    }

    sub_1B7C8F070(v5, v4, &v23);
    if (v1)
    {
      goto LABEL_15;
    }

    v9 = v23;
    v10 = v24;
    swift_beginAccess();
    IMDSqlOperationFinishQuery((v5 + 2));
    v22 = 0;
    IMDSqlOperationGetError((v5 + 2), &v22);
    v11 = v22;
    swift_endAccess();
    if (v11)
    {
      swift_willThrow();
      v2 = v11;
LABEL_15:
      swift_beginAccess();
      IMDSqlOperationFinishQuery((v5 + 2));
      goto LABEL_19;
    }

    objc_autoreleasePoolPop(v6);
    if (v10)
    {
      return 1;
    }

    v4 = v9 + 1;
    if (v9 == -1)
    {
      __break(1u);
LABEL_25:
      __break(1u);
    }

    v12 = *(v3 + 24);
    swift_beginAccess();
    v13 = *(v12 + 24);
    v14 = __CFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      goto LABEL_25;
    }

    *(v12 + 24) = v15;
    v6 = objc_autoreleasePoolPush();
    swift_beginAccess();
    IMDSqlOperationBeginTransaction(v5 + 2);
    v22 = 0;
    IMDSqlOperationGetError((v5 + 2), &v22);
    v16 = v22;
    swift_endAccess();
    if (v16)
    {
      swift_willThrow();
      v19 = v16;
      goto LABEL_22;
    }

    sub_1B7CC257C(v3, v9);
    swift_beginAccess();
    IMDSqlOperationCommitTransaction(v5 + 2);
    v22 = 0;
    IMDSqlOperationGetError((v5 + 2), &v22);
    v17 = v22;
    swift_endAccess();
    if (v17)
    {
      break;
    }

    objc_autoreleasePoolPop(v6);
  }

  swift_willThrow();
  v2 = v17;
  if (!v5[4])
  {
    goto LABEL_21;
  }

  swift_beginAccess();
  IMDSqlOperationRevertTransaction(v5 + 2);
LABEL_19:
  v22 = 0;
  IMDSqlOperationGetError((v5 + 2), &v22);
  v20 = v22;
  swift_endAccess();
  if (v20)
  {
    swift_willThrow();
    v20;

    goto LABEL_22;
  }

LABEL_21:
  swift_willThrow();
LABEL_22:
  objc_autoreleasePoolPop(v6);
  return 1;
}

void sub_1B7CC1F40(uint64_t *a1@<X8>)
{
  v3 = v1;
  v5 = *v1;
  v6 = sub_1B7CFDFF0();
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v48 - v20;
  v22 = qword_1EBA5DB00;
  if (qword_1EBA5DB00)
  {
    v53 = v19;
    v54 = v17;
    v55 = v18;
    v57 = v2;
    v23 = OBJC_IVAR____TtC14IMDPersistence16StorageInspector_options;
    swift_beginAccess();
    if ((*(v22 + v23) & 8) != 0)
    {
      v24 = v3[2];
      if (v24)
      {
        v49 = a1;
        v25 = qword_1EBA515D8;
        v26 = v24;
        v51 = v22;
        v52 = v26;

        if (v25 != -1)
        {
          swift_once();
        }

        sub_1B7C81520(v5, v27);
        v50 = v28;
        sub_1B7C4F08C(v9);
        sub_1B7CFDF60();
        v29 = v55;
        v30 = *(v55 + 8);
        v31 = v9;
        v32 = v54;
        v30(v31, v54);
        sub_1B7CFDF60();
        v30(v12, v32);
        sub_1B7CFDF70();
        v33 = v15;
        v34 = v29;
        v30(v33, v32);
        type metadata accessor for StorageInspectorReportFile(0);
        v35 = swift_allocObject();
        v36 = (v35 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile____lazy_storage___path);
        *v36 = 0;
        v36[1] = 0;
        *(v35 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_fileHandle) = 0;
        v37 = *(v29 + 32);
        v37(v35 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_pathURL, v21, v32);

        v56[0] = 0;
        v38 = v52;

        v39 = v57;
        sub_1B7C96F08(v35, v38, v56, 50);
        v57 = v39;
        if (v39)
        {
          swift_setDeallocating();
          sub_1B7C95D64();
          swift_deallocClassInstance();

          return;
        }

        v40 = v3[3];
        (*(v34 + 16))(v53, v35 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_pathURL, v32);
        swift_beginAccess();
        v41 = *(v40 + 344);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v40 + 344) = v41;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v41 = sub_1B7CA1D44(0, v41[2] + 1, 1, v41);
          *(v40 + 344) = v41;
        }

        a1 = v49;
        v44 = v41[2];
        v43 = v41[3];
        v45 = v55;
        if (v44 >= v43 >> 1)
        {
          v47 = sub_1B7CA1D44((v43 > 1), v44 + 1, 1, v41);
          v45 = v55;
          v41 = v47;
        }

        v41[2] = v44 + 1;
        (v37)(v41 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v44);
        *(v40 + 344) = v41;

        swift_setDeallocating();
        sub_1B7C95D64();
        swift_deallocClassInstance();
      }
    }
  }

  v46 = v3[3];
  a1[3] = type metadata accessor for ExportableDatabaseRecordCountReport();
  a1[4] = &protocol witness table for StorageInspectionCountReport;
  *a1 = v46;
}

uint64_t sub_1B7CC245C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B7CC2538()
{
  if (*(*v0 + 16))
  {

    sub_1B7C740BC();
  }

  return result;
}

uint64_t sub_1B7CC257C(uint64_t a1, sqlite3_int64 a2)
{
  v5 = *(a1 + 16);

  sub_1B7C8F304(a2, v5, v30);

  if (!v2)
  {
    v7 = *(a1 + 24);
    v8 = v30[4];
    result = swift_beginAccess();
    v9 = v7[42];
    v10 = v9 + v8;
    if (__CFADD__(v9, v8))
    {
      __break(1u);
    }

    else
    {
      v7[42] = v10;
      if (v10 >= v9)
      {
        v11 = v7[39];
        if (!__CFADD__(v11, v8))
        {
          v7[39] = v11 + v8;
          v12 = v30[0];
          if (!v30[0])
          {
            goto LABEL_18;
          }

          result = swift_beginAccess();
          v13 = v7[5];
          v14 = __CFADD__(v13, v12);
          v15 = v13 + v12;
          if (!v14)
          {
            v7[5] = v15;
            v16 = v30[1];
            result = swift_beginAccess();
            v17 = v7[16];
            v18 = v17 + v16;
            if (!__CFADD__(v17, v16))
            {
              v7[16] = v18;
              if (v18 >= v17)
              {
                v19 = v7[13];
                if (!__CFADD__(v19, v16))
                {
                  v7[13] = v19 + v16;
                  v20 = v30[2];
                  result = swift_beginAccess();
                  v21 = v7[12];
                  v22 = v21 + v20;
                  if (!__CFADD__(v21, v20))
                  {
                    v7[12] = v22;
                    if (v22 >= v21)
                    {
                      v23 = v7[9];
                      if (!__CFADD__(v23, v20))
                      {
                        v7[9] = v23 + v20;
                        v24 = v30[3];
                        v25 = v7 + 17;
                        result = swift_beginAccess();
                        v26 = v7[20];
                        v27 = v26 + v24;
                        if (!__CFADD__(v26, v24))
                        {
                          v7[20] = v27;
                          if (v27 >= v26)
                          {
                            v28 = *v25 + v24;
                            if (!__CFADD__(*v25, v24))
                            {
                              goto LABEL_19;
                            }

                            __break(1u);
LABEL_18:
                            v25 = v7 + 4;
                            result = swift_beginAccess();
                            v29 = v7[4];
                            v14 = __CFADD__(v29, 1);
                            v28 = v29 + 1;
                            if (!v14)
                            {
LABEL_19:
                              *v25 = v28;
                              return result;
                            }

LABEL_33:
                            __break(1u);
                            return result;
                          }

LABEL_32:
                          __break(1u);
                          goto LABEL_33;
                        }

LABEL_31:
                        __break(1u);
                        goto LABEL_32;
                      }

LABEL_30:
                      __break(1u);
                      goto LABEL_31;
                    }

LABEL_29:
                    __break(1u);
                    goto LABEL_30;
                  }

LABEL_28:
                  __break(1u);
                  goto LABEL_29;
                }

LABEL_27:
                __break(1u);
                goto LABEL_28;
              }

LABEL_26:
              __break(1u);
              goto LABEL_27;
            }

LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_1B7CC2774()
{

  return swift_deallocClassInstance();
}

int64x2_t *sub_1B7CC27D0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v2[2].i64[1] = a1;
  v2[3].i64[0] = a2;
  type metadata accessor for StorageInspectionChatVerificationTable();
  swift_allocObject();

  v6 = sub_1B7C73A90(1952540771, 0xE400000000000000, a1, a2, 0);
  v2[3].i64[1] = sub_1B7C74E30(v6, v7, 1952540771, 0xE400000000000000, 0);
  type metadata accessor for StorageInspectionMessageVerificationTable();
  swift_allocObject();
  v8 = sub_1B7C73A90(0x6567617373656DLL, 0xE700000000000000, a1, a2, 0);
  v2[4].i64[0] = sub_1B7C74E30(v8, v9, 0x6567617373656DLL, 0xE700000000000000, 0);
  type metadata accessor for StorageInspectionVerificationTable();
  swift_allocObject();
  v10 = sub_1B7C73A90(0x656C646E6168, 0xE600000000000000, a1, a2, 0);
  v2[4].i64[1] = sub_1B7C74E30(v10, v11, 0x656C646E6168, 0xE600000000000000, 0);
  type metadata accessor for StorageInspectionAttachmentVerificationTable();
  swift_allocObject();
  v12 = sub_1B7C73A90(0x656D686361747461, 0xEA0000000000746ELL, a1, a2, 0);
  v2[5].i64[0] = sub_1B7C74E30(v12, v13, 0x656D686361747461, 0xEA0000000000746ELL, 0);
  type metadata accessor for StorageInspectionJoinVerificationTable();
  *(swift_allocObject() + 64) = &unk_1F2FA1E48;
  v14 = sub_1B7C73A90(0xD000000000000011, 0x80000001B7D4E240, a1, a2, 0);
  v2[5].i64[1] = sub_1B7C74E30(v14, v15, 0xD000000000000011, 0x80000001B7D4E240, 0);
  *(swift_allocObject() + 64) = &unk_1F2FA1E88;
  v16 = sub_1B7C73A90(0xD000000000000010, 0x80000001B7D4E260, a1, a2, 0);
  v2[6].i64[0] = sub_1B7C74E30(v16, v17, 0xD000000000000010, 0x80000001B7D4E260, 0);
  *(swift_allocObject() + 64) = &unk_1F2FA1EC8;
  v18 = sub_1B7C73A90(0xD000000000000017, 0x80000001B7D4E280, a1, a2, 0);
  v2[6].i64[1] = sub_1B7C74E30(v18, v19, 0xD000000000000017, 0x80000001B7D4E280, 0);
  type metadata accessor for StorageInspectionDeletedMessagesVerificationTable();
  swift_allocObject();
  v20 = sub_1B7C73A90(0xD000000000000010, 0x80000001B7D4E2A0, a1, a2, 0);
  v2[7].i64[0] = sub_1B7C74E30(v20, v21, 0xD000000000000010, 0x80000001B7D4E2A0, 0);
  *(swift_allocObject() + 64) = &unk_1F2FA1F08;
  v22 = sub_1B7C73A90(0xD00000000000001DLL, 0x80000001B7D4E2C0, a1, a2, 0);
  v24 = v23;

  v25 = sub_1B7C74E30(v22, v24, 0xD00000000000001DLL, 0x80000001B7D4E2C0, 0);
  v3[7].i64[1] = v25;
  sub_1B7C107FC(&qword_1EBA52060, &qword_1B7D0AFD0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B7D13120;
  v27 = v3[4].i64[0];
  *(v26 + 32) = v3[3].i64[1];
  *(v26 + 40) = v27;
  v28 = v3[5].i64[0];
  *(v26 + 48) = v3[4].i64[1];
  *(v26 + 56) = v28;
  v29 = v3[6].i64[0];
  *(v26 + 64) = v3[5].i64[1];
  *(v26 + 72) = v29;
  v30 = v3[7].i64[0];
  *(v26 + 80) = v3[6].i64[1];
  *(v26 + 88) = v30;
  *(v26 + 96) = v25;
  v3[8].i64[0] = v26;
  v3[1] = vdupq_n_s64(0x64uLL);
  v3[2].i64[0] = MEMORY[0x1E69E7CC0];

  return v3;
}

void sub_1B7CC2C18()
{
  v2 = *(v0 + 128);
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7CFF120())
  {
    v4 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1B8CAE380](v4, v2);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_14;
      }

LABEL_7:
      if (qword_1EBA515F0 != -1)
      {
        swift_once();
      }

      sub_1B7CFF210();

      MEMORY[0x1B8CADCA0](*(v5 + 16), *(v5 + 24));
      MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
      SqlOperation.execute(_:_:)(0xD000000000000015, 0x80000001B7D54D80, 0, 0);

      if (!v1)
      {
        ++v4;
        if (v6 != i)
        {
          continue;
        }
      }

      return;
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    v5 = *(v2 + 8 * v4 + 32);

    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

void sub_1B7CC2DDC()
{
  v2 = v1;
  v3 = *(v0 + 128);
  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7CFF120())
  {
    v5 = 0;
    while ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1B8CAE380](v5, v3);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_17;
      }

LABEL_7:
      if (qword_1EBA515F0 != -1)
      {
        swift_once();
      }

      sub_1B7CFF210();

      MEMORY[0x1B8CADCA0](v6[2], v6[3]);
      MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
      SqlOperation.execute(_:_:)(0xD000000000000015, 0x80000001B7D54D80, 0, 0);
      if (v2)
      {

        return;
      }

      v9 = (*(*v6 + 152))(v8);
      (*(*v6 + 160))(v9);
      v2 = 0;

      ++v5;
      if (v7 == i)
      {
        return;
      }
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v6 = *(v3 + 8 * v5 + 32);

    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }
}

double sub_1B7CC3020()
{

  return result;
}

void *sub_1B7CC3098()
{

  return v0;
}

uint64_t sub_1B7CC3110()
{
  sub_1B7CC3098();

  return swift_deallocClassInstance();
}

void sub_1B7CC3168()
{
  v1 = v0;
  v2 = sub_1B7CFE420();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7CFE410();

  v6 = sub_1B7CFE400();
  v7 = sub_1B7CFEED0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17 = v3;
    v9 = v8;
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = sub_1B7CC3A60();
    v13 = sub_1B7AED1B8(v11, v12, &v18);
    v16 = v2;
    v14 = v13;

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1B7AD5000, v6, v7, "Preparing to run storage inspectors: %s", v9, 0xCu);
    sub_1B7AE9168(v10);
    MEMORY[0x1B8CB0E70](v10, -1, -1);
    MEMORY[0x1B8CB0E70](v9, -1, -1);

    (*(v17 + 8))(v5, v16);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v15 = objc_autoreleasePoolPush();
  sub_1B7CC3BD4(v1, &v18);
  objc_autoreleasePoolPop(v15);
}

void sub_1B7CC33C4()
{
  v2 = v1;
  v3 = sub_1B7CFE420();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v7 = *(v0 + 16);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 32;
    v36 = "StorageInspectorScheduler";
    v37 = "directoryBatchSize";
    v35 = (v4 + 8);
    v29[1] = v7;

    *&v10 = 136315394;
    v30 = v10;
    v31 = v6;
    v32 = v3;
    do
    {
      sub_1B7AE90A8(v9, v40);
      v11 = v41;
      v12 = v42;
      sub_1B7AE9124(v40, v41);
      v13 = v2;
      (*(v12 + 48))(v11, v12);
      if (v2)
      {
        v2 = 0;
        sub_1B7CFE410();
        sub_1B7AE90A8(v40, v38);
        v14 = v13;
        v15 = sub_1B7CFE400();
        v16 = sub_1B7CFEEF0();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v43 = v33;
          *v17 = v30;
          v34 = 0;
          v19 = v39;
          sub_1B7AE9124(v38, v39);
          v21 = sub_1B7C81520(v19, v20);
          v23 = v22;
          sub_1B7AE9168(v38);
          v24 = sub_1B7AED1B8(v21, v23, &v43);
          v3 = v32;

          *(v17 + 4) = v24;
          v2 = v34;
          *(v17 + 12) = 2112;
          v25 = v13;
          v26 = _swift_stdlib_bridgeErrorToNSError();
          *(v17 + 14) = v26;
          *v18 = v26;
          _os_log_impl(&dword_1B7AD5000, v15, v16, "Error cleaning up verifier %s: %@", v17, 0x16u);
          sub_1B7AEE190(v18, &qword_1EBA521E0, &unk_1B7D0CE60);
          MEMORY[0x1B8CB0E70](v18, -1, -1);
          v27 = v33;
          sub_1B7AE9168(v33);
          MEMORY[0x1B8CB0E70](v27, -1, -1);
          v28 = v17;
          v6 = v31;
          MEMORY[0x1B8CB0E70](v28, -1, -1);

          (*v35)(v6, v3);
        }

        else
        {

          (*v35)(v6, v3);
          sub_1B7AE9168(v38);
        }
      }

      else
      {
        v2 = 0;
      }

      sub_1B7AE9168(v40);
      v9 += 40;
      --v8;
    }

    while (v8);
  }
}

uint64_t sub_1B7CC3764()
{
  swift_beginAccess();
  sub_1B7CC5114(v0 + 32, v8);
  v2 = v8[3];
  sub_1B7AEE190(v8, &qword_1EBA52988, &unk_1B7D132D0);
  if (!v2)
  {
    swift_beginAccess();
    if (!*(*(v0 + 24) + 16))
    {
      v4 = 1;
      return v4 & 1;
    }

    sub_1B7CC3CEC();
    if (v1)
    {
      return v4 & 1;
    }
  }

  sub_1B7CC5114(v0 + 32, &v6);
  if (v7)
  {
    sub_1B7AE910C(&v6, v8);
    v3 = objc_autoreleasePoolPush();
    sub_1B7CC471C(v0, v8, &v6);
    objc_autoreleasePoolPop(v3);
    sub_1B7AE9168(v8);
    if (!v1)
    {
      v4 = 0;
    }
  }

  else
  {
    sub_1B7AEE190(&v6, &qword_1EBA52988, &unk_1B7D132D0);
    v4 = 0;
  }

  return v4 & 1;
}

void sub_1B7CC38A0(void (*a1)(void *, void), uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  (*(*v2 + 224))();
  swift_beginAccess();
  swift_beginAccess();
  while (1)
  {
    sub_1B7CC5114((v2 + 4), v10);
    v5 = v10[3];
    sub_1B7AEE190(v10, &qword_1EBA52988, &unk_1B7D132D0);
    if (!v5)
    {
      break;
    }

LABEL_6:
    sub_1B7CC5114((v2 + 4), &v8);
    if (v9)
    {
      sub_1B7AE910C(&v8, v10);
      v6 = objc_autoreleasePoolPush();
      sub_1B7CC471C(v2, v10, &v8);
      objc_autoreleasePoolPop(v6);
      sub_1B7AE9168(v10);
    }

    else
    {
      sub_1B7AEE190(&v8, &qword_1EBA52988, &unk_1B7D132D0);
    }
  }

  if (*(v2[3] + 16))
  {
    sub_1B7CC3CEC();
    goto LABEL_6;
  }

  v7 = objc_autoreleasePoolPush();
  sub_1B7CC412C(v2, a1);
  objc_autoreleasePoolPop(v7);
  objc_autoreleasePoolPop(v4);
}

uint64_t sub_1B7CC3A60()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v17 = MEMORY[0x1E69E7CC0];

    sub_1B7AECEEC(0, v2, 0);
    v3 = v17;
    v4 = v1 + 32;
    do
    {
      sub_1B7AE90A8(v4, v15);
      v5 = v16;
      sub_1B7AE9124(v15, v16);
      v7 = sub_1B7C81520(v5, v6);
      v9 = v8;
      sub_1B7AE9168(v15);
      v17 = v3;
      v11 = *(v3 + 16);
      v10 = *(v3 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1B7AECEEC((v10 > 1), v11 + 1, 1);
        v3 = v17;
      }

      *(v3 + 16) = v11 + 1;
      v12 = v3 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v15[0] = v3;
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v13 = sub_1B7CFEA10();

  return v13;
}

void sub_1B7CC3BD4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v5 = *(a1 + 16);
  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (v7 < *(v5 + 16))
    {
      sub_1B7AE90A8(v8, v11);
      v9 = v12;
      v10 = v13;
      sub_1B7AE9124(v11, v12);
      (*(v10 + 16))(v9, v10);
      if (v2)
      {
        sub_1B7AE9168(v11);

        *a2 = v2;
        return;
      }

      ++v7;
      sub_1B7AE9168(v11);
      v8 += 40;
      if (v6 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

void sub_1B7CC3CEC()
{
  v1 = v0;
  v2 = sub_1B7CFE420();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v6 = *(v0 + 24);
  if (!*(v6 + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1B7AE90A8(v6 + 32, v20);
  sub_1B7C90848(0, 1);
  swift_endAccess();
  swift_beginAccess();
  sub_1B7CC5184(v20, v0 + 32);
  swift_endAccess();
  *(v0 + 72) = 0;
  sub_1B7CC5114(v0 + 32, v20);
  v7 = v21;
  if (!v21)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = sub_1B7AE9124(v20, v21);
  v9 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v12, v10);
  StorageInspectionLoggable.logger.getter(v7);
  (*(v9 + 8))(v12, v7);
  v13 = sub_1B7CFE400();
  v14 = sub_1B7CFEED0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1B7AD5000, v13, v14, "Beginning inspection...", v15, 2u);
    MEMORY[0x1B8CB0E70](v15, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_1B7AE9168(v20);
  v16 = objc_autoreleasePoolPush();
  sub_1B7CC5114(v1 + 32, v20);
  v17 = v21;
  if (v21)
  {
    v18 = v22;
    sub_1B7AE9124(v20, v21);
    (*(v18 + 24))(v17, v18);
    sub_1B7AE9168(v20);
    objc_autoreleasePoolPop(v16);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1B7CC412C(uint64_t a1, void (*a2)(void *, void))
{
  v5 = sub_1B7CFE420();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*a1 + 248))(v21, v7);
  if (v2)
  {
  }

  else
  {
    v10 = sub_1B7AEE190(v21, &qword_1EBA53770, &qword_1B7D132C8);
    (*(*a1 + 256))(v10);
    v21[6] = 0;
    if (qword_1EBA515D8 != -1)
    {
      swift_once();
    }

    v11 = *(qword_1EBA5DAF0 + OBJC_IVAR____TtC14IMDPersistence29StorageInspectorReportManager_report);
    v12 = v11;
    a2(v11, 0);

    sub_1B7CFE410();

    v13 = sub_1B7CFE400();
    v14 = sub_1B7CFEED0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21[0] = v16;
      *v15 = 136315138;
      v17 = sub_1B7CC3A60();
      v19 = sub_1B7AED1B8(v17, v18, v21);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1B7AD5000, v13, v14, "Finished running all inspectors: %s", v15, 0xCu);
      sub_1B7AE9168(v16);
      MEMORY[0x1B8CB0E70](v16, -1, -1);
      MEMORY[0x1B8CB0E70](v15, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_1B7CC4438(uint64_t a1, void *a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v10 = sub_1B7CFE420();
  v32 = *(v10 - 8);
  v33 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*a1 + 256))(v11);
  if (v4)
  {

    v5 = 0;
  }

  sub_1B7CFE410();
  v14 = a2;

  v15 = sub_1B7CFE400();
  v16 = sub_1B7CFEEF0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30[1] = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v30[2] = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v31 = a3;
    v22 = v21;
    v34 = v21;
    *v18 = 138412546;
    v23 = a2;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v24;
    *v20 = v24;
    *(v18 + 12) = 2080;
    v25 = sub_1B7CC3A60();
    v27 = sub_1B7AED1B8(v25, v26, &v34);

    *(v18 + 14) = v27;
    _os_log_impl(&dword_1B7AD5000, v15, v16, "Inspection failed with error: %@ for inspectors: %s", v18, 0x16u);
    sub_1B7AEE190(v20, &qword_1EBA521E0, &unk_1B7D0CE60);
    MEMORY[0x1B8CB0E70](v20, -1, -1);
    sub_1B7AE9168(v22);
    v28 = v22;
    a3 = v31;
    MEMORY[0x1B8CB0E70](v28, -1, -1);
    MEMORY[0x1B8CB0E70](v18, -1, -1);
  }

  (*(v32 + 8))(v13, v33);
  return a3(0, a2);
}

uint64_t sub_1B7CC471C(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, __n128))
{
  v7 = sub_1B7CFDFF0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B7CFE420();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v57 - v16;
  v18 = *(a1 + 72);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
    goto LABEL_23;
  }

  v74 = a3;
  v67 = v14;
  v68 = v15;
  v64 = v8;
  v65 = v7;
  *(a1 + 72) = v20;
  v21 = a2[3];
  sub_1B7AE9124(a2, v21);
  StorageInspectionLoggable.logger.getter(v21);

  v22 = sub_1B7CFE400();
  v23 = sub_1B7CFEED0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = v11;
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = *(a1 + 72);

    _os_log_impl(&dword_1B7AD5000, v22, v23, "Inspecting batch #%ld...", v25, 0xCu);
    v26 = v25;
    v11 = v24;
    MEMORY[0x1B8CB0E70](v26, -1, -1);
  }

  else
  {
  }

  v29 = *(v11 + 8);
  v28 = v11 + 8;
  v27 = v29;
  (v29)(v17, v10);
  v30 = a2[3];
  v31 = a2[4];
  sub_1B7AE9124(a2, v30);
  result = (*(v31 + 32))(v30, v31);
  if (v3)
  {
    *v74 = v3;
    return result;
  }

  if (result)
  {
    v33 = a2[3];
    v34 = a2[4];
    sub_1B7AE9124(a2, v33);
    (*(v34 + 40))(&v69, v33, v34);
    v74 = v27;
    v60 = 0;
    v63 = v10;
    if (!v70)
    {
      sub_1B7AEE190(&v69, &qword_1EBA53770, &qword_1B7D132C8);
      goto LABEL_18;
    }

    v58 = a1;
    sub_1B7AE910C(&v69, &v71);
    v35 = *(&v72 + 1);
    v36 = v73;
    sub_1B7AE9124(&v71, *(&v72 + 1));
    v59 = StorageInspectionReport.reportLines.getter(v35, v36);
    v38 = *(v59 + 16);
    v39 = v68;
    if (v38)
    {
      v40 = (v59 + 40);
      *&v37 = 136315138;
      v61 = v37;
      v62 = v28;
      do
      {
        v42 = *(v40 - 1);
        v41 = *v40;
        v43 = a2[3];
        sub_1B7AE9124(a2, v43);

        StorageInspectionLoggable.logger.getter(v43);

        v44 = sub_1B7CFE400();
        v45 = sub_1B7CFEED0();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *&v69 = v47;
          *v46 = v61;
          v48 = sub_1B7AED1B8(v42, v41, &v69);

          *(v46 + 4) = v48;
          _os_log_impl(&dword_1B7AD5000, v44, v45, "%s", v46, 0xCu);
          sub_1B7AE9168(v47);
          MEMORY[0x1B8CB0E70](v47, -1, -1);
          v49 = v46;
          v39 = v68;
          MEMORY[0x1B8CB0E70](v49, -1, -1);
        }

        else
        {
        }

        v10 = v63;
        (v74)(v39, v63);
        v40 += 2;
        --v38;
      }

      while (v38);
    }

    if (qword_1EBA515D8 == -1)
    {
LABEL_16:
      v50 = v66;
      sub_1B7C4F4C8(&v71, a2, v66);
      (*(v64 + 8))(v50, v65);
      sub_1B7AE9168(&v71);
      a1 = v58;
LABEL_18:
      v51 = a2[3];
      sub_1B7AE9124(a2, v51);
      v52 = v67;
      StorageInspectionLoggable.logger.getter(v51);
      v53 = sub_1B7CFE400();
      v54 = sub_1B7CFEED0();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_1B7AD5000, v53, v54, "Finished Inspection.", v55, 2u);
        v56 = v55;
        v10 = v63;
        MEMORY[0x1B8CB0E70](v56, -1, -1);
      }

      (v74)(v52, v10);
      v73 = 0;
      v71 = 0u;
      v72 = 0u;
      swift_beginAccess();
      sub_1B7CC5184(&v71, a1 + 32);
      return swift_endAccess();
    }

LABEL_23:
    swift_once();
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1B7CC4D7C()
{

  sub_1B7AEE190(v0 + 32, &qword_1EBA52988, &unk_1B7D132D0);

  return swift_deallocClassInstance();
}

void sub_1B7CC4DF8(uint64_t a1, uint64_t a2)
{
  v5 = objc_autoreleasePoolPush();
  sub_1B7CC3168();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  aBlock[4] = sub_1B7CC50C8;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7AE14D0;
  aBlock[3] = &unk_1F2F9F9B0;
  v7 = _Block_copy(aBlock);

  IMDPersistencePerformBlock(v7, 0, v8, v9);
  _Block_release(v7);
  objc_autoreleasePoolPop(v5);
}

void sub_1B7CC4F38(uint64_t a1, void (*a2)(void *, void), uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if (sub_1B7CC3764())
  {
    v7 = swift_allocObject();
    v7[2] = a1;
    v7[3] = a2;
    v7[4] = a3;
    aBlock[4] = sub_1B7CC5200;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B7AE14D0;
    aBlock[3] = &unk_1F2FA8060;
    v8 = _Block_copy(aBlock);

    IMDPersistencePerformBlock(v8, 0, v9, v10);
    _Block_release(v8);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    sub_1B7CC412C(a1, a2);
    objc_autoreleasePoolPop(v11);
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t sub_1B7CC50D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B7CC5114(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA52988, &unk_1B7D132D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7CC5184(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA52988, &unk_1B7D132D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7CC5204()
{
  sub_1B7CFF7C0();
  sub_1B7CFEB10();
  if (*(v0 + 16))
  {
    sub_1B7CFF7E0();
    sub_1B7CFE960();
    sub_1B7CC7098(&qword_1EBA53458, MEMORY[0x1E697BD38], MEMORY[0x1E697BD40]);
    sub_1B7CFE9C0();
  }

  else
  {
    sub_1B7CFF7E0();
  }

  type metadata accessor for MessageStoreConfiguration(0);
  sub_1B7CFDFF0();
  sub_1B7CC7098(&qword_1EBA529C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1B7CFE9C0();
  return sub_1B7CFF800();
}

uint64_t sub_1B7CC5338(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1B7CC5388(uint64_t a1)
{
  sub_1B7CFEB10();
  if (*(v1 + 16))
  {
    sub_1B7CFF7E0();
    sub_1B7CFE960();
    sub_1B7CC7098(&qword_1EBA53458, MEMORY[0x1E697BD38], MEMORY[0x1E697BD40]);
    sub_1B7CFE9C0();
  }

  else
  {
    sub_1B7CFF7E0();
  }

  sub_1B7CFDFF0();
  sub_1B7CC7098(&qword_1EBA529C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  return sub_1B7CFE9C0();
}

uint64_t sub_1B7CC54A4(uint64_t a1)
{
  sub_1B7CFF7C0();
  sub_1B7CFEB10();
  if (*(v1 + 16))
  {
    sub_1B7CFF7E0();
    sub_1B7CFE960();
    sub_1B7CC7098(&qword_1EBA53458, MEMORY[0x1E697BD38], MEMORY[0x1E697BD40]);
    sub_1B7CFE9C0();
  }

  else
  {
    sub_1B7CFF7E0();
  }

  sub_1B7CFDFF0();
  sub_1B7CC7098(&qword_1EBA529C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1B7CFE9C0();
  return sub_1B7CFF800();
}

uint64_t sub_1B7CC55CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v32 = a2;
  v4 = sub_1B7CFE1B0();
  v29 = sub_1B7CFEFF0();
  v5 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v7 = &v26 - v6;
  v8 = sub_1B7CFE710();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v26 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v28 = a2;
  sub_1B7CFE580();
  sub_1B7CFE570();
  sub_1B7CFE700();
  v27 = *(v9 + 8);
  v27(v16, v8);
  v17 = (*(*(v4 - 8) + 48))(v7, 1, v4);
  (*(v5 + 8))(v7, v29);
  if (v17 == 1)
  {
    sub_1B7CFE570();
    v18 = sub_1B7CFE6F0();
    v19 = v27;
    v27(v13, v8);
    v31 = v18;
    sub_1B7CFDD30();
    sub_1B7CFED70();
    swift_getWitnessTable();
    v20 = sub_1B7CFEE60();

    if (v20)
    {
      v21 = v26;
      sub_1B7CFE570();
      sub_1B7CFE6D0();
      v19(v21, v8);
      v22 = MEMORY[0x1E697BB50];
    }

    else
    {
      v22 = MEMORY[0x1E697BB48];
    }
  }

  else
  {
    v22 = MEMORY[0x1E697BB58];
  }

  v23 = sub_1B7CFE540();
  sub_1B7CC7098(&qword_1EBA537D0, MEMORY[0x1E697BB60], MEMORY[0x1E697BB68]);
  swift_allocError();
  (*(*(v23 - 8) + 104))(v24, *v22, v23);
  return swift_willThrow();
}

uint64_t sub_1B7CC59A0(uint64_t a1)
{
  v2 = v1;
  v54 = sub_1B7CFE7C0();
  v4 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v52 = v44 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v44 - v9;
  v11 = sub_1B7CFE6C0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = CSDBSharedRecordStore();
  if (!v56)
  {
    sub_1B7CC7344();
    swift_allocError();
    *v33 = 0;
    return swift_willThrow();
  }

  v44[1] = sub_1B7C107FC(&qword_1EBA53520, &qword_1B7D11EE0);
  v44[2] = a1;
  result = sub_1B7CFE5F0();
  v51 = *(result + 16);
  if (v51)
  {
    v16 = 0;
    v45 = (v4 + 8);
    v46 = (v4 + 16);
    v48 = v12 + 16;
    v49 = (v12 + 8);
    v17 = MEMORY[0x1E69E7CC8];
    v47 = v14;
    v50 = result;
    while (1)
    {
      if (v16 >= *(result + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v18 = *(v12 + 16);
      v18(v14, result + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v16, v11);
      v58 = v11;
      v59 = sub_1B7CC7098(&qword_1EBA53500, MEMORY[0x1E697BC08], MEMORY[0x1E697BC00]);
      v19 = sub_1B7C1A14C(v57);
      v18(v19, v14, v11);
      sub_1B7CC5FCC(v57, v56, v10);
      if (v2)
      {
        break;
      }

      ++v16;
      sub_1B7AE9168(v57);
      v55 = 0;
      v20 = v52;
      sub_1B7CFE6B0();
      v21 = v12;
      v22 = v11;
      v23 = v53;
      v24 = v10;
      v25 = v10;
      v26 = v54;
      (*v46)(v53, v24, v54);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57[0] = v17;
      v28 = v23;
      v11 = v22;
      v12 = v21;
      sub_1B7CA61DC(v28, v20, isUniquelyReferenced_nonNull_native);
      v29 = *v45;
      v30 = v20;
      v2 = v55;
      (*v45)(v30, v26);
      v31 = v25;
      v32 = v26;
      v10 = v25;
      v14 = v47;
      v29(v31, v32);
      (*v49)(v14, v11);
      v17 = v57[0];
      result = v50;
      if (v51 == v16)
      {
        goto LABEL_10;
      }
    }

    (*v49)(v14, v11);

LABEL_23:

    return sub_1B7AE9168(v57);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC8];
LABEL_10:
    v55 = v17;

    result = sub_1B7CFE5E0();
    v34 = result;
    v35 = *(result + 16);
    if (v35)
    {
      v36 = 0;
      while (v36 < *(v34 + 16))
      {
        v37 = v34 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v36;
        v58 = v11;
        v59 = sub_1B7CC7098(&qword_1EBA53500, MEMORY[0x1E697BC08], MEMORY[0x1E697BC00]);
        v38 = sub_1B7C1A14C(v57);
        (*(v12 + 16))(v38, v37, v11);
        sub_1B7CC64CC(v57, v56);
        if (v2)
        {
LABEL_21:

          goto LABEL_23;
        }

        ++v36;
        result = sub_1B7AE9168(v57);
        if (v35 == v36)
        {
          goto LABEL_15;
        }
      }

LABEL_25:
      __break(1u);
    }

    else
    {
LABEL_15:

      result = sub_1B7CFE5D0();
      v39 = result;
      v40 = *(result + 16);
      if (!v40)
      {
LABEL_20:

        sub_1B7C24BE0(MEMORY[0x1E69E7CC0]);
        sub_1B7C107FC(&qword_1EBA53510, &unk_1B7D134C0);
        swift_allocObject();
        return sub_1B7CFE5A0();
      }

      v41 = 0;
      while (v41 < *(v39 + 16))
      {
        v42 = v39 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v41;
        v58 = v11;
        v59 = sub_1B7CC7098(&qword_1EBA53500, MEMORY[0x1E697BC08], MEMORY[0x1E697BC00]);
        v43 = sub_1B7C1A14C(v57);
        (*(v12 + 16))(v43, v42, v11);
        sub_1B7CC69B0(v57, v56);
        if (v2)
        {
          goto LABEL_21;
        }

        ++v41;
        result = sub_1B7AE9168(v57);
        if (v40 == v41)
        {
          goto LABEL_20;
        }
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B7CC5FCC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a2;
  v4 = v3;
  v33 = a3;
  v6 = sub_1B7CFE7C0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = sub_1B7CFE820();

  sub_1B7AE9124(a1, a1[3]);
  sub_1B7CFE550();
  v11 = sub_1B7CFE7A0();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  if (!*(v10 + 16))
  {

    goto LABEL_9;
  }

  v14 = sub_1B7AE11D0(v11, v13);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_9:

    sub_1B7CC7344();
    swift_allocError();
    *v26 = 2;
    return swift_willThrow();
  }

  v17 = *(*(v10 + 56) + 8 * v14);

  if (qword_1EDBE3AE0 != -1)
  {
    swift_once();
  }

  v18 = off_1EDBE3AE8;

  os_unfair_lock_lock(v18 + 8);
  v19 = sub_1B7AE9FE4(v17, &v18[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v18 + 8);

  v32[1] = v19;
  result = CSDBRecordCreate();
  if (result)
  {
    v21 = result;
    v22 = type metadata accessor for RecordEncoder();
    v23 = swift_allocObject();
    v24 = MEMORY[0x1E69E7CC0];
    v23[4] = MEMORY[0x1E69E7CC0];

    swift_unknownObjectRetain();
    v23[5] = sub_1B7C249D0(v24);
    v23[2] = v21;
    v23[3] = v17;
    sub_1B7AE9124(a1, a1[3]);
    v36[3] = v22;
    v36[4] = sub_1B7CC7098(&qword_1EBA537C8, type metadata accessor for RecordEncoder, &unk_1B7D12AB0);
    v36[0] = v23;

    v25 = v35;
    sub_1B7CFE9A0();
    if (v25)
    {

      swift_unknownObjectRelease();
      return sub_1B7AE9168(v36);
    }

    else
    {
      sub_1B7AE9168(v36);
      swift_unknownObjectRetain();
      CSDBRecordStoreAddRecord();
      if (CSDBRecordSaveStore())
      {
        ID = CSDBRecordGetID();
        swift_unknownObjectRelease();

        sub_1B7CFE880();
        v35 = ID;
        v36[0] = ID;
        v28 = v33;
        sub_1B7CFE7B0();

        v30 = OBJC_IVAR____TtC14IMDPersistence12MessageStore_recordIdentifierByPersistentIdentifier;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = *(v4 + v30);
        *(v4 + v30) = 0x8000000000000000;
        sub_1B7CA63C0(v35, v28, isUniquelyReferenced_nonNull_native);
        *(v4 + v30) = v37;
        swift_endAccess();

        return swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        sub_1B7CC7344();
        swift_allocError();
        *v29 = 1;
        swift_willThrow();

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B7CC64CC(void *a1, void *a2)
{
  v38[2] = a2;
  v4 = sub_1B7CFE7C0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v42 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v38 - v8;
  v40 = v2;

  v10 = sub_1B7CFE820();

  v11 = a1[3];
  v38[0] = a1;
  sub_1B7AE9124(a1, v11);
  sub_1B7CFE550();
  v12 = sub_1B7CFE7A0();
  v14 = v13;
  v39 = *(v5 + 8);
  v39(v9, v4);
  if (!*(v10 + 16))
  {

    goto LABEL_13;
  }

  v15 = sub_1B7AE11D0(v12, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_13:

    sub_1B7CC7344();
    swift_allocError();
    *v34 = 2;
    return swift_willThrow();
  }

  v18 = *(*(v10 + 56) + 8 * v15);

  if (qword_1EDBE3AE0 != -1)
  {
    swift_once();
  }

  v19 = off_1EDBE3AE8;

  os_unfair_lock_lock(v19 + 8);
  sub_1B7AE9FE4(v18, &v19[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v19 + 8);

  v20 = v42;
  sub_1B7CFE550();
  v21 = OBJC_IVAR____TtC14IMDPersistence12MessageStore_recordIdentifierByPersistentIdentifier;
  v22 = v40;
  swift_beginAccess();
  v23 = *(v22 + v21);
  if (!*(v23 + 16) || (v24 = sub_1B7C40430(v20), (v25 & 1) == 0))
  {
    swift_endAccess();
    v39(v20, v4);
    sub_1B7CC7344();
    swift_allocError();
    v36 = 3;
    goto LABEL_15;
  }

  v26 = *(*(v23 + 56) + 8 * v24);
  swift_endAccess();
  result = (v39)(v20, v4);
  if (v26 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v26 <= 0x7FFFFFFF)
  {
    v28 = CSDBRecordStoreCopyInstanceOfClassWithUID();
    if (v28)
    {
      v29 = v28;
      v30 = type metadata accessor for RecordEncoder();
      v31 = swift_allocObject();
      v32 = MEMORY[0x1E69E7CC0];
      v31[4] = MEMORY[0x1E69E7CC0];

      swift_unknownObjectRetain();
      v31[5] = sub_1B7C249D0(v32);
      v31[2] = v29;
      v31[3] = v18;
      sub_1B7AE9124(v38[0], v38[0][3]);
      v41[3] = v30;
      v41[4] = sub_1B7CC7098(&qword_1EBA537C8, type metadata accessor for RecordEncoder, &unk_1B7D12AB0);
      v41[0] = v31;

      v33 = v38[1];
      sub_1B7CFE9A0();
      if (v33)
      {

        swift_unknownObjectRelease();
        return sub_1B7AE9168(v41);
      }

      sub_1B7AE9168(v41);
      if ((CSDBRecordSaveStore() & 1) == 0)
      {
        sub_1B7CC7344();
        swift_allocError();
        *v37 = 1;
        swift_willThrow();
      }

      swift_unknownObjectRelease();
    }

    sub_1B7CC7344();
    swift_allocError();
    v36 = 5;
LABEL_15:
    *v35 = v36;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7CC69B0(void *a1, uint64_t a2)
{
  v30[2] = a2;
  v4 = sub_1B7CFE7C0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v33 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - v8;
  v32 = v2;

  v10 = sub_1B7CFE820();

  sub_1B7AE9124(a1, a1[3]);
  sub_1B7CFE550();
  v11 = sub_1B7CFE7A0();
  v13 = v12;
  v31 = *(v5 + 8);
  v31(v9, v4);
  if (!*(v10 + 16))
  {

    goto LABEL_12;
  }

  v14 = sub_1B7AE11D0(v11, v13);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_12:

    sub_1B7CC7344();
    swift_allocError();
    *v27 = 2;
    return swift_willThrow();
  }

  v17 = *(*(v10 + 56) + 8 * v14);

  if (qword_1EDBE3AE0 != -1)
  {
    swift_once();
  }

  v18 = off_1EDBE3AE8;

  os_unfair_lock_lock(v18 + 8);
  v30[0] = sub_1B7AE9FE4(v17, &v18[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v18 + 8);

  v19 = v33;
  sub_1B7CFE550();
  v20 = OBJC_IVAR____TtC14IMDPersistence12MessageStore_recordIdentifierByPersistentIdentifier;
  v21 = v32;
  swift_beginAccess();
  v22 = *(v21 + v20);
  if (!*(v22 + 16) || (v23 = sub_1B7C40430(v19), (v24 & 1) == 0))
  {
    swift_endAccess();
    v31(v19, v4);
    sub_1B7CC7344();
    swift_allocError();
    *v28 = 4;
    swift_willThrow();
  }

  v25 = *(*(v22 + 56) + 8 * v23);
  swift_endAccess();
  result = (v31)(v19, v4);
  if (v25 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v25 <= 0x7FFFFFFF)
  {
    CSDBRecordStoreRemoveRecordOfClassWithUID();
    if (CSDBRecordSaveStore())
    {
    }

    sub_1B7CC7344();
    swift_allocError();
    *v29 = 1;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7CC6D74()
{

  sub_1B7CC7510(v0 + OBJC_IVAR____TtC14IMDPersistence12MessageStore_configuration);

  return swift_deallocClassInstance();
}

uint64_t sub_1B7CC6E20(uint64_t a1)
{
  result = type metadata accessor for MessageStoreConfiguration(319);
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

void sub_1B7CC6F1C(uint64_t a1)
{
  sub_1B7CC6FB0(319);
  if (v1 <= 0x3F)
  {
    sub_1B7CFDFF0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B7CC6FB0(uint64_t a1)
{
  if (!qword_1EBA53798)
  {
    sub_1B7CFE960();
    v1 = sub_1B7CFEFF0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA53798);
    }
  }
}

uint64_t sub_1B7CC7098(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1B7CC71CC(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC14IMDPersistence12MessageStore_recordIdentifierByPersistentIdentifier;
  *(v2 + v3) = sub_1B7C24E00(MEMORY[0x1E69E7CC0]);
  result = sub_1B7CC74AC(a1, v2 + OBJC_IVAR____TtC14IMDPersistence12MessageStore_configuration);
  v5 = *(a1 + 16);
  if (v5)
  {
    v2[4] = v5;
    type metadata accessor for MessageStoreConfiguration(0);

    v2[2] = sub_1B7CFDEF0();
    v2[3] = v6;
    IMDEnsureSharedRecordStoreInitialized();
    sub_1B7CC7510(a1);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B7CC7344()
{
  result = qword_1EBA537C0;
  if (!qword_1EBA537C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA537C0);
  }

  return result;
}

uint64_t sub_1B7CC7398(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B7CFF590() & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = a2[2];
  if (a1[2])
  {
    if (v5)
    {
      sub_1B7CFE960();
      sub_1B7CC7098(qword_1EBA53460, MEMORY[0x1E697BD38], MEMORY[0x1E697BD48]);

      v6 = sub_1B7CFEA20();

      if (v6)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v7 = 0;
    return v7 & 1;
  }

  if (v5)
  {
    goto LABEL_11;
  }

LABEL_9:
  type metadata accessor for MessageStoreConfiguration(0);
  v7 = sub_1B7CFDFA0();
  return v7 & 1;
}

uint64_t sub_1B7CC74AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageStoreConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7CC7510(uint64_t a1)
{
  v2 = type metadata accessor for MessageStoreConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B7CC7580()
{
  result = qword_1EBA537D8;
  if (!qword_1EBA537D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA537D8);
  }

  return result;
}

double sub_1B7CC75D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double result)
{
  if (MEMORY[0x1E695A838])
  {
    sub_1B7CFE060();
    sub_1B7CC7998(MEMORY[0x1E69E7CC0]);
    sub_1B7CFEFA0();
  }

  return v7;
}

uint64_t sub_1B7CC7718(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a1;
  v6 = sub_1B7CFE120();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B7CFEA60();
  v12 = v11;
  v13 = sub_1B7CFEA60();
  v15 = v14;
  v16 = sub_1B7CFEA60();
  v18 = v17;
  sub_1B7CFE0F0();
  v19 = v23;
  sub_1B7CC75D4(v10, v12, v13, v15, v16, v18, v20);

  return (*(v7 + 8))(v9, v6);
}

double sub_1B7CC7884(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B7CFEA60();
  sub_1B7CFEA60();
  if (MEMORY[0x1E695A838])
  {
    v5 = a1;
    sub_1B7CC7998(MEMORY[0x1E69E7CC0]);
    sub_1B7CFEFA0();
  }

  return result;
}

unint64_t sub_1B7CC7998(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA537E0, &qword_1B7D13590);
    v3 = sub_1B7CFF380();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B7CC7AA8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1B7AE11D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B7C255E0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B7CC7AA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA537E8, &unk_1B7D13598);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1B7CC7B18(void *a1)
{
  v1 = sub_1B7CFEA30();
  v2 = sub_1B7CFECC0();
  v3 = _IMDCoreSpotlightCNContactForAddressWithAdditionalPropertyKeys(v1, v2);

  v4 = [objc_opt_self() isCNContactAKnownContact_];
  return v4;
}

IMDGroupNameAndPhotoHelper __swiftcall IMDGroupNameAndPhotoHelper.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IMDGroupNameAndPhotoHelper()
{
  result = qword_1EBA537F0;
  if (!qword_1EBA537F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA537F0);
  }

  return result;
}

void sub_1B7CC7D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = v4[1];
  v11 = *(v10 + 16);
  if (!*v4)
  {
    if (v11)
    {
      v12 = 0;
      v16 = (v10 + 40);
      while (1)
      {
        v17 = *(v16 - 1) == a3 && *v16 == a4;
        if (v17 || (sub_1B7CFF590() & 1) != 0)
        {
          break;
        }

        ++v12;
        v16 += 2;
        if (v11 == v12)
        {
          v11 = 0;
          goto LABEL_14;
        }
      }

      if (!a1)
      {
        v11 = 0;
LABEL_30:
        sub_1B7CC9C24(v12, v11);

        sub_1B7CC9DA0(v12);

        return;
      }

      goto LABEL_24;
    }

LABEL_14:
    if (a1)
    {
      sub_1B7AECF3C(a3, a4, v11);

      v20 = v4[2];
      v18 = v4 + 2;
      v19 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v18 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B7C312A8(0, *(v19 + 16) + 1, 1);
        v19 = *v18;
      }

      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1B7C312A8((v22 > 1), v23 + 1, 1);
        v19 = *v18;
      }

      *(v19 + 16) = v23 + 1;
      v24 = v19 + 16 * v23;
      *(v24 + 32) = a1;
      *(v24 + 40) = a2;
      *v18 = v19;
    }

    else
    {
    }

    return;
  }

  v12 = sub_1B7CCA9A0(a3, a4, v10 + 32, v11, (v9 + 16), v9 + 32);
  v14 = v13;
  v11 = v15;

  if (v14)
  {
    goto LABEL_14;
  }

  if (!a1)
  {
    goto LABEL_30;
  }

LABEL_24:
  v25 = v4[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_1B7CCA014(v25);
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v12 < v25[2])
  {
    v26 = &v25[2 * v12];
    v26[4] = a1;
    v26[5] = a2;

    v4[2] = v25;
    return;
  }

  __break(1u);
}

void sub_1B7CC7F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = *(v8 + 16);
  if (*v3)
  {

    v10 = sub_1B7CCA9A0(a2, a3, v8 + 32, v9, (v7 + 16), v7 + 32);
    v12 = v11;
    v9 = v13;

    if ((v12 & 1) == 0)
    {

      if (!a1)
      {
        goto LABEL_26;
      }

LABEL_20:
      v18 = v3[2];
      v16 = v3 + 2;
      v17 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v16 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_1B7CCA028(v17);
        *v16 = v17;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v10 < *(v17 + 16))
      {
        *(v17 + 8 * v10 + 32) = a1;
        swift_unknownObjectRelease();
        sub_1B7CFF2A0();
        return;
      }

      __break(1u);
      return;
    }
  }

  else if (v9)
  {
    v10 = 0;
    v14 = (v8 + 40);
    while (1)
    {
      v15 = *(v14 - 1) == a2 && *v14 == a3;
      if (v15 || (sub_1B7CFF590() & 1) != 0)
      {
        break;
      }

      ++v10;
      v14 += 2;
      if (v9 == v10)
      {
        v9 = 0;
        goto LABEL_14;
      }
    }

    if (!a1)
    {
      v9 = 0;
LABEL_26:
      sub_1B7CC9C24(v10, v9);

      sub_1B7CC9EB0(v10);
      goto LABEL_27;
    }

    goto LABEL_20;
  }

LABEL_14:
  if (a1)
  {
    sub_1B7AECF3C(a2, a3, v9);

    swift_unknownObjectRetain();
    sub_1B7CFF290();
    sub_1B7CFF2D0();
    sub_1B7CFF2E0();
    sub_1B7CFF2A0();
LABEL_27:

    swift_unknownObjectRelease();
    return;
  }
}

uint64_t sub_1B7CC8184(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = *(v7 + 16);
  if (!*v3)
  {
    if (v8)
    {
      v9 = 0;
      for (i = (v7 + 40); ; i += 2)
      {
        v15 = *(i - 1) == a1 && *i == a2;
        if (v15 || (sub_1B7CFF590() & 1) != 0)
        {
          break;
        }

        if (v8 == ++v9)
        {
          return 0;
        }
      }

      v13 = 0;
      goto LABEL_14;
    }

    return 0;
  }

  v9 = sub_1B7CCA9A0(a1, a2, v7 + 32, v8, (v6 + 16), v6 + 32);
  v11 = v10;
  v13 = v12;

  if (v11)
  {
    return 0;
  }

LABEL_14:
  sub_1B7CC9C24(v9, v13);

  return sub_1B7CC9DA0(v9);
}

uint64_t sub_1B7CC827C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = *(v7 + 16);
  if (!*v3)
  {
    if (v8)
    {
      v9 = 0;
      for (i = (v7 + 40); ; i += 2)
      {
        v15 = *(i - 1) == a1 && *i == a2;
        if (v15 || (sub_1B7CFF590() & 1) != 0)
        {
          break;
        }

        if (v8 == ++v9)
        {
          return 0;
        }
      }

      v13 = 0;
      goto LABEL_14;
    }

    return 0;
  }

  v9 = sub_1B7CCA9A0(a1, a2, v7 + 32, v8, (v6 + 16), v6 + 32);
  v11 = v10;
  v13 = v12;

  if (v11)
  {
    return 0;
  }

LABEL_14:
  sub_1B7CC9C24(v9, v13);

  return sub_1B7CC9EB0(v9);
}

id sub_1B7CC8370()
{
  result = [objc_allocWithZone(IMDSpotlightActivityPublisher) init];
  qword_1EBA50CB0 = result;
  return result;
}

void __swiftcall IMDSpotlightActivityPublisher.init()(IMDSpotlightActivityPublisher *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

double sub_1B7CC8490(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = *(a1 + OBJC_IVAR___IMDSpotlightActivityPublisher_monitors);
  swift_getKeyPath();

  os_unfair_lock_lock((v3 + 40));
  sub_1B7CCBDC0((v3 + 16), v11);
  os_unfair_lock_unlock((v3 + 40));

  sub_1B7CCAF40(v11[1], v11[2]);
  v5 = v4;

  if (v5 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7CFF120())
  {
    v7 = 0;
    while ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B8CAE380](v7, v5);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      a2(v8);
      swift_unknownObjectRelease();
      ++v7;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v8 = *(v5 + 8 * v7 + 32);
    swift_unknownObjectRetain();
    v9 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  return result;
}

uint64_t sub_1B7CC8620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  swift_getAtKeyPath();

  return v5;
}

void sub_1B7CC8714(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (qword_1EBA50EA8 != -1)
  {
    swift_once();
  }

  v7 = sub_1B7CFE420();
  sub_1B7AD9040(v7, qword_1EBA5DA08);

  v8 = sub_1B7CFE400();
  v9 = sub_1B7CFEEE0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1B7AED1B8(a2, a3, &aBlock);
    _os_log_impl(&dword_1B7AD5000, v8, v9, "Adding activity monitor %s", v10, 0xCu);
    sub_1B7AE9168(v11);
    MEMORY[0x1B8CB0E70](v11, -1, -1);
    MEMORY[0x1B8CB0E70](v10, -1, -1);
  }

  v12 = *&v4[OBJC_IVAR___IMDSpotlightActivityPublisher_monitors];
  MEMORY[0x1EEE9AC00](v13);
  os_unfair_lock_lock(v12 + 10);
  sub_1B7CCBC50();
  os_unfair_lock_unlock(v12 + 10);
  v14 = [objc_opt_self() currentConnection];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 __imdp_persistenceServiceListener];
    if (v16)
    {

      aBlock = 0;
      v22 = 0xE000000000000000;
      sub_1B7CFF210();

      aBlock = 0xD000000000000012;
      v22 = 0x80000001B7D5B0C0;
      MEMORY[0x1B8CADCA0](a2, a3);
      v17 = sub_1B7CFEA30();

      v18 = swift_allocObject();
      v18[2] = v4;
      v18[3] = a2;
      v18[4] = a3;
      v25 = sub_1B7CCBCA8;
      v26 = v18;
      aBlock = MEMORY[0x1E69E9820];
      v22 = 1107296256;
      v23 = sub_1B7AE14D0;
      v24 = &unk_1F2FA8190;
      v19 = _Block_copy(&aBlock);

      v20 = v4;

      [v15 __imdp_registerCleanupHandlerWithID_usingBlock_];
      _Block_release(v19);

      v15 = v17;
    }
  }
}

void sub_1B7CC8AA4(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  if (qword_1EBA50EA8 != -1)
  {
    swift_once();
  }

  v8 = sub_1B7CFE420();
  sub_1B7AD9040(v8, qword_1EBA5DA08);

  v9 = sub_1B7CFE400();
  v10 = sub_1B7CFEEE0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1B7AED1B8(a1, a2, &v25);
    _os_log_impl(&dword_1B7AD5000, v9, v10, "Removing activity monitor %s", v11, 0xCu);
    sub_1B7AE9168(v12);
    MEMORY[0x1B8CB0E70](v12, -1, -1);
    MEMORY[0x1B8CB0E70](v11, -1, -1);
  }

  v13 = *(v4 + OBJC_IVAR___IMDSpotlightActivityPublisher_monitors);
  MEMORY[0x1EEE9AC00](v14);
  os_unfair_lock_lock(v13 + 10);
  sub_1B7CCBBF4(&v25, v15);
  os_unfair_lock_unlock(v13 + 10);
  v16 = v25;
  if ((a3 & 1) == 0)
  {
    v17 = [objc_opt_self() currentConnection];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 __imdp_persistenceServiceListener];
      if (v19)
      {

        v25 = 0;
        v26 = 0xE000000000000000;
        sub_1B7CFF210();

        v25 = 0xD000000000000012;
        v26 = 0x80000001B7D5B0C0;
        MEMORY[0x1B8CADCA0](a1, a2);
        v20 = sub_1B7CFEA30();

        [v18 __imdp_unregisterCleanupHandlerWithID_];

        v18 = v20;
      }
    }
  }

  if ((v16 & 1) == 0)
  {

    v21 = sub_1B7CFE400();
    v22 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1B7AED1B8(a1, a2, &v25);
      _os_log_impl(&dword_1B7AD5000, v21, v22, "Asked to remove activity monitor %s but it was not registered", v23, 0xCu);
      sub_1B7AE9168(v24);
      MEMORY[0x1B8CB0E70](v24, -1, -1);
      MEMORY[0x1B8CB0E70](v23, -1, -1);
    }
  }
}

id IMDSpotlightActivityPublisher.init()()
{
  *&v0[OBJC_IVAR___IMDSpotlightActivityPublisher_queue] = 0;
  v1 = OBJC_IVAR___IMDSpotlightActivityPublisher_monitors;
  v2 = sub_1B7CCB988(MEMORY[0x1E69E7CC0]);
  v4 = v3;
  v6 = v5;
  sub_1B7C107FC(&unk_1EBA53808, &qword_1B7D135A8);
  v7 = swift_allocObject();
  *(v7 + 40) = 0;
  *(v7 + 16) = v2;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
  *&v0[v1] = v7;
  v9.receiver = v0;
  v9.super_class = IMDSpotlightActivityPublisher;
  return objc_msgSendSuper2(&v9, sel_init);
}

void sub_1B7CC9008(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1B7CFECC0();
  v8 = sub_1B7CFEA30();
  [a1 searchableItemsDidUpdateWithIdentifiers:v7 forDomainIdentifier:v8 context:a5];
}

void sub_1B7CC91D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1B7CFECC0();
  if (a4)
  {
    v7 = sub_1B7CFEA30();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [a1 searchableItemsDeletedWithIdentifiers:v6 forDomainIdentifier:? context:?];
}

void sub_1B7CC93B0(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    v3 = sub_1B7CFF120();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    goto LABEL_34;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v30 = (v2 & 0xC000000000000001);
  v7 = MEMORY[0x1E69E7CC0];
  v28 = v3;
  v29 = v2;
  do
  {
    if (v30)
    {
      v8 = MEMORY[0x1B8CAE380](v4, v2);
    }

    else
    {
      v8 = *(v2 + 8 * v4 + 32);
    }

    v9 = v8;
    v10 = [v8 domainIdentifier];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1B7CFEA60();
      v14 = v13;

      v15 = [v9 uniqueIdentifier];
      v16 = sub_1B7CFEA60();
      v18 = v17;

      if (v6)
      {
        if (v5 == v12 && v6 == v14 || (sub_1B7CFF590() & 1) != 0 || !*(v7 + 2))
        {
        }

        else
        {
          v19 = sub_1B7CFECC0();
          v20 = sub_1B7CFEA30();
          [v26 searchableItemsDidUpdateWithIdentifiers:v19 forDomainIdentifier:v20 context:a2];

          v7 = MEMORY[0x1E69E7CC0];
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1B7AF182C(0, *(v7 + 2) + 1, 1, v7);
      }

      v22 = *(v7 + 2);
      v21 = *(v7 + 3);
      if (v22 >= v21 >> 1)
      {
        v7 = sub_1B7AF182C((v21 > 1), v22 + 1, 1, v7);
      }

      *(v7 + 2) = v22 + 1;
      v23 = &v7[16 * v22];
      *(v23 + 4) = v16;
      *(v23 + 5) = v18;
      v5 = v12;
      v6 = v14;
      v3 = v28;
      v2 = v29;
    }

    else
    {
    }

    ++v4;
  }

  while (v3 != v4);
  if (*(v7 + 2))
  {
    v24 = sub_1B7CFECC0();
    if (v6)
    {
      v25 = v24;
      v31 = sub_1B7CFEA30();
      [v26 searchableItemsDidUpdateWithIdentifiers:v25 forDomainIdentifier:v31 context:a2];

      return;
    }

LABEL_34:
    __break(1u);
    return;
  }
}

void sub_1B7CC970C(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    v3 = sub_1B7CFF120();
    v2 = a1;
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v28 = v2 & 0xC000000000000001;
    v7 = MEMORY[0x1E69E7CC0];
    v29 = v3;
    v30 = v2;
    do
    {
      if (v28)
      {
        v8 = MEMORY[0x1B8CAE380](v4);
      }

      else
      {
        v8 = *(v2 + 8 * v4 + 32);
      }

      v9 = v8;
      v10 = [v8 proposedIdentifier];
      v11 = sub_1B7CFEA60();
      v13 = v12;

      v14 = [v9 proposedDomain];
      v15 = sub_1B7CFEA60();
      v17 = v16;

      if (v6)
      {
        v18 = v5 == v15 && v6 == v17;
        if (v18 || (sub_1B7CFF590() & 1) != 0 || !*(v7 + 2))
        {
        }

        else
        {
          v19 = sub_1B7CFECC0();
          v20 = sub_1B7CFEA30();
          [v26 searchableItemsDeletedWithIdentifiers:v19 forDomainIdentifier:v20 context:a2];

          v7 = MEMORY[0x1E69E7CC0];
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1B7AF182C(0, *(v7 + 2) + 1, 1, v7);
      }

      v22 = *(v7 + 2);
      v21 = *(v7 + 3);
      if (v22 >= v21 >> 1)
      {
        v7 = sub_1B7AF182C((v21 > 1), v22 + 1, 1, v7);
      }

      ++v4;

      *(v7 + 2) = v22 + 1;
      v23 = &v7[16 * v22];
      *(v23 + 4) = v11;
      *(v23 + 5) = v13;
      v5 = v15;
      v6 = v17;
      v2 = v30;
    }

    while (v29 != v4);
    v24 = sub_1B7CFECC0();
    v31 = sub_1B7CFEA30();
    [v26 searchableItemsDeletedWithIdentifiers:v24 forDomainIdentifier:v31 context:a2];
  }
}

double sub_1B7CC9A0C(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, void *a6, void (*a7)(uint64_t, id))
{
  sub_1B7AEE088(0, a5, a6);
  v10 = sub_1B7CFECE0();
  v11 = a4;
  v12 = a1;
  a7(v10, v11);

  return result;
}

uint64_t sub_1B7CC9AA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v7 = v2[1];
  v5 = v2 + 1;
  v6 = v7;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if ((result & 1) == 0)
  {
    result = sub_1B7C31320(0, *(v6 + 16) + 1, 1);
    v6 = *v5;
  }

  v10 = *(v6 + 16);
  v9 = *(v6 + 24);
  if (v10 >= v9 >> 1)
  {
    result = sub_1B7C31320((v9 > 1), v10 + 1, 1);
    v6 = *v5;
  }

  *(v6 + 16) = v10 + 1;
  *(v6 + 8 * v10 + 32) = a1;
  v3[1] = v6;
  v11 = *v3;
  if (*v3)
  {
    swift_beginAccess();
    if (MEMORY[0x1B8CAD4E0](*(v11 + 16) & 0x3FLL) > v10)
    {
      result = swift_isUniquelyReferenced_native();
      v12 = *v3;
      if ((result & 1) == 0)
      {
        if (!v12)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v13 = sub_1B7CFE3C0();

        *v3 = v13;
        v12 = v13;
      }

      if (v12)
      {
        return sub_1B7CFE360();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v10 < 0xF)
  {
    return result;
  }

  return sub_1B7CC9F3C(sub_1B7CCA8B0);
}

void sub_1B7CC9C24(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

LABEL_15:
    sub_1B7CC9E28(a1);
    return;
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= MEMORY[0x1B8CAD4F0]())
  {
LABEL_16:
    sub_1B7CC9E28(a1);
    sub_1B7CC9F3C(sub_1B7CCA780);
    return;
  }

  isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
  v9 = *v2;
  if ((isUniquelyReferenced_native & 1) == 0)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = sub_1B7CFE3C0();

    *v2 = v10;
    v9 = v10;
  }

  if (v9)
  {

    sub_1B7CCA03C(a2, (v9 + 16), v9 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_1B7CCA234(a1, a1 + 1, v4, (v9 + 16), v9 + 32);

      goto LABEL_15;
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1B7CC9DA0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B7CCA014(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1B7CC9E28(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B7CCA000(v3);
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

uint64_t sub_1B7CC9EB0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = sub_1B7CCA028(v3);
    v3 = result;
    *v1 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    sub_1B7CFF2A0();
    return v8;
  }

  return result;
}

uint64_t sub_1B7CC9F3C(void *(*a1)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  v3 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v4 = *(v3 + 24) & 0x3FLL;
  }

  else
  {
    v4 = 0;
  }

  v5 = v1[1];
  v6 = *(v5 + 16);
  if (v4 || v6 >= 0x10)
  {
    v8 = MEMORY[0x1B8CAD510](v6);
    if (v4 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    v7 = sub_1B7CCA6A0(v5, v9, 0, v4, a1);
  }

  else
  {
    v7 = 0;
  }

  *v1 = v7;
  return result;
}

void sub_1B7CCA03C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v14 = sub_1B7CFE340();
  sub_1B7CFE390();
  if (v14)
  {
    v7 = sub_1B7CFE350();
    while (1)
    {
      v8 = sub_1B7CFE370();
      if (v9)
      {
LABEL_20:
        __break(1u);
        return;
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (v8 >= *(*(a4 + 8) + 16))
      {
        goto LABEL_18;
      }

      sub_1B7CFF7C0();

      sub_1B7CFEB10();
      v10 = sub_1B7CFF800();

      v11 = 1 << *a2;
      if (__OFSUB__(v11, 1))
      {
        goto LABEL_19;
      }

      v12 = (v11 - 1) & v10;
      if (v6 >= v7)
      {
        break;
      }

      if (v12 < v7)
      {
        goto LABEL_12;
      }

LABEL_13:
      sub_1B7CFE370();
      v6 = a1;
      sub_1B7CFE360();
LABEL_3:
      sub_1B7CFE390();
    }

    if (v12 < v7)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (v6 < v12)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  sub_1B7CFE360();
}

uint64_t sub_1B7CCA234(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_58;
  }

  if (v6 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    if (result < (v9 - v6) / 2)
    {
      result = MEMORY[0x1B8CAD4E0](*a4 & 0x3FLL);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v9 < v8)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        if (v8)
        {
          v10 = 0;
          while (1)
          {
            sub_1B7CFF7C0();

            sub_1B7CFEB10();
            result = sub_1B7CFF800();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1B7CFE340())
            {
              while (1)
              {
                v11 = sub_1B7CFE370();
                if ((v12 & 1) == 0 && v11 == v10)
                {
                  break;
                }

                sub_1B7CFE390();
              }
            }

            result = v10 + v6;
            if (__OFADD__(v10, v6))
            {
              goto LABEL_55;
            }

            ++v10;
            sub_1B7CFE380();

            if (v10 == v8)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      sub_1B7CFE340();
      v19 = sub_1B7CFE370();
      if ((v20 & 1) != 0 || v19 >= v8)
      {
LABEL_33:
        result = sub_1B7CFE390();
LABEL_18:
        v13 = a4[1];
        if (__OFSUB__(v13 >> 6, v6))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v14 = 1 << *a4;
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v15)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v17 = (v16 & (((v13 >> 6) - v6) >> 63)) + (v13 >> 6) - v6;
        if (v17 < v16)
        {
          v16 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v17 - v16) << 6);
        return result;
      }

      if (!__OFADD__(v19, v6))
      {
        sub_1B7CFE380();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      sub_1B7CFE340();
      v21 = sub_1B7CFE370();
      if ((v22 & 1) == 0 && v21 >= v5)
      {
        v15 = __OFSUB__(v21, v6);
        result = v21 - v6;
        if (v15)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        sub_1B7CFE380();
      }

      return sub_1B7CFE390();
    }

    v5 = a2;
    v18 = v9 - a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = MEMORY[0x1B8CAD4E0](*a4 & 0x3FLL);
    if (v18 >= result / 3)
    {
      goto LABEL_39;
    }

    if (v9 < v5)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v5 < 0)
    {
LABEL_65:
      __break(1u);
      return result;
    }

    if (v9 != v5)
    {
      do
      {
        sub_1B7CFF7C0();

        sub_1B7CFEB10();
        result = sub_1B7CFF800();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (sub_1B7CFE340())
        {
          while (1)
          {
            v23 = sub_1B7CFE370();
            if ((v24 & 1) == 0 && v23 == v5)
            {
              break;
            }

            sub_1B7CFE390();
          }
        }

        sub_1B7CFE380();
      }

      while (++v5 != v9);
    }
  }

  return result;
}

uint64_t sub_1B7CCA6A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  v8 = *(a1 + 16);
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = MEMORY[0x1B8CAD510](v8, a2);
  result = 0;
  if (v10 <= v9)
  {
    v10 = v9;
  }

  if (v10 <= a4)
  {
    v10 = a4;
  }

  if (v10 >= 5)
  {
    v12 = MEMORY[0x1B8CAD520](v10, a4);
    sub_1B7CCA728(a1, v12 + 16, v12 + 32, a5);
    return v12;
  }

  return result;
}

uint64_t sub_1B7CCA780(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        sub_1B7CFF7C0();

        sub_1B7CFEB10();
        v7 = sub_1B7CFF800();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = sub_1B7CFE340();

        if (v8)
        {
          while (1)
          {
            sub_1B7CFE390();
          }
        }

        v7 = sub_1B7CFE380();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

void sub_1B7CCA8B0(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        v7 = *a3;
        sub_1B7CFF7B0();
        if (__OFSUB__(1 << v7, 1))
        {
          break;
        }

        if (sub_1B7CFE340())
        {
          while (1)
          {
            sub_1B7CFE390();
          }
        }

        sub_1B7CFE380();
        if (++v6 == a2)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_1B7CCA9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_1B7CFF7C0();
  sub_1B7CFEB10();
  result = sub_1B7CFF800();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1B7CFE340();
    result = sub_1B7CFE370();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (sub_1B7CFF590())
          {
            break;
          }

          sub_1B7CFE390();
          result = sub_1B7CFE370();
          if ((v15 & 1) == 0)
          {
            v16 = (a3 + 16 * result);
            if (*v16 != a1 || v16[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v14;
      }
    }
  }

  return result;
}

unint64_t sub_1B7CCAAEC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1B7CFF120();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1B7AEC374(v3, 0);
  sub_1B7CCAD78(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1B7CCAB80(uint64_t result, char a2, void (*a3)(void), void *(*a4)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  if (result < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v7 = v4;
  v9 = result;
  v12 = v4[1];
  v10 = v4 + 1;
  v11 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v12;
  if (isUniquelyReferenced_nonNull_native && v9 <= *(v11 + 24) >> 1)
  {
    v14 = *v7;
    if (*v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    a3();
    v11 = *v10;
    v14 = *v7;
    if (*v7)
    {
LABEL_5:
      swift_beginAccess();
      v15 = *(v14 + 16) & 0x3FLL;
      v16 = MEMORY[0x1B8CAD510](v9);
      if (a2)
      {
        v17 = v16;
        if (v15 >= v16)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v19 = v16;
        swift_beginAccess();
        v16 = v19;
        v17 = *(v14 + 24) & 0x3FLL;
        if (v15 >= v16)
        {
          goto LABEL_17;
        }
      }

LABEL_13:
      if (v17 <= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      goto LABEL_27;
    }
  }

  v16 = MEMORY[0x1B8CAD510](v9);
  v15 = 0;
  if (a2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v16 > 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  if (v17 <= v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = v17;
  }

  result = MEMORY[0x1B8CAD510](*(v11 + 16));
  if (result <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = result;
  }

  if (v21 < v15)
  {
    if (v17 <= v21)
    {
      v18 = v21;
    }

    else
    {
      v18 = v17;
    }

LABEL_27:
    v22 = sub_1B7CCA6A0(v11, v18, 0, v17, a4);

    *v7 = v22;
    return result;
  }

  if (!v14 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v23 = *v7;
    if (*v7)
    {
      goto LABEL_32;
    }

LABEL_36:
    if (!v17)
    {
      return result;
    }

    __break(1u);
    goto LABEL_38;
  }

  if (!*v7)
  {
LABEL_39:
    __break(1u);
    return result;
  }

  v23 = sub_1B7CFE3C0();

  *v7 = v23;
  if (!v23)
  {
    goto LABEL_36;
  }

LABEL_32:
  result = swift_beginAccess();
  if ((*(v23 + 24) & 0x3FLL) != v17)
  {
    *(v23 + 24) = *(v23 + 24) & 0xFFFFFFFFFFFFFFC0 | v17 & 0x3F;
  }

  return result;
}

uint64_t sub_1B7CCAD78(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B7CFF120();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1B7CFF120();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B7C81070(&qword_1EBA53848, &qword_1EBA53840, &qword_1B7D135E0, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            sub_1B7C107FC(&qword_1EBA53840, &qword_1B7D135E0);
            v9 = sub_1B7CCCCE8(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1B7C107FC(&qword_1EBA53838, &qword_1B7D135D8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1B7CCAF40(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  sub_1B7CFF2C0();
  if (v4)
  {
    v5 = a2 + 32;
    v6 = *(a1 + 16);

    while (v6)
    {
      v5 += 8;
      swift_unknownObjectRetain();
      sub_1B7CFF290();
      sub_1B7CFF2D0();
      sub_1B7CFF2E0();
      sub_1B7CFF2A0();
      --v6;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_7:
  }
}

uint64_t sub_1B7CCB02C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  sub_1B7CCAB80(v3, 0, sub_1B7C31320, sub_1B7CCA8B0);
  result = sub_1B7AECF0C(0, v3, 0);
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = a1 + 32;
  while (1)
  {
    v7 = v6 + 24 * v5;
    v8 = *v7;
    v9 = (v15 + 32);
    v14 = *(v7 + 8);
    v10 = *(v15 + 16);
    if (v10)
    {
      break;
    }

LABEL_6:

    result = sub_1B7CC9AA4(v8, 0);
    v13 = *(v2 + 16);
    v12 = *(v2 + 24);
    if (v13 >= v12 >> 1)
    {
      result = sub_1B7AECF0C((v12 > 1), v13 + 1, 1);
    }

    ++v5;
    *(v2 + 16) = v13 + 1;
    *(v2 + 16 * v13 + 32) = v14;
    if (v5 == v3)
    {
      return 0;
    }
  }

  while (1)
  {
    v11 = *v9++;
    if (v11 == v8)
    {
      break;
    }

    if (!--v10)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void sub_1B7CCB25C(uint64_t a1, void (*a2)(BOOL, uint64_t, uint64_t))
{
  v4 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC0];
  v5 = *(a1 + 16);
  sub_1B7CCAB80(v5, 0, sub_1B7AECEEC, sub_1B7CCA780);
  a2(0, v5, 0);
  if (v5)
  {
    v6 = 0;
    v7 = a1 + 32;
    while (1)
    {
      v8 = v7 + 32 * v6;
      v10 = *v8;
      v9 = *(v8 + 8);
      v11 = *(v17 + 16);
      v16 = *(v8 + 16);
      if (v11)
      {
        break;
      }

LABEL_11:

      sub_1B7AECF3C(v10, v9, 0);
      v15 = *(v4 + 16);
      v14 = *(v4 + 24);
      if (v15 >= v14 >> 1)
      {
        a2(v14 > 1, v15 + 1, 1);
      }

      ++v6;
      *(v4 + 16) = v15 + 1;
      *(v4 + 16 * v15 + 32) = v16;
      if (v6 == v5)
      {
        return;
      }
    }

    v12 = (v17 + 40);
    while (1)
    {
      v13 = *(v12 - 1) == v10 && *v12 == v9;
      if (v13 || (sub_1B7CFF590() & 1) != 0)
      {
        break;
      }

      v12 += 2;
      if (!--v11)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    __break(1u);
  }
}

double sub_1B7CCB478(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR___IMDSpotlightActivityPublisher_monitors);
  swift_getKeyPath();

  os_unfair_lock_lock((v3 + 40));
  sub_1B7CCBE38((v3 + 16), v11);
  os_unfair_lock_unlock((v3 + 40));

  sub_1B7CCAF40(v11[1], v11[2]);
  v5 = v4;

  if (v5 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7CFF120())
  {
    v7 = 0;
    while ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B8CAE380](v7, v5);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      (*(a2 + 16))(a2, v8);
      swift_unknownObjectRelease();
      ++v7;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v8 = *(v5 + 8 * v7 + 32);
    swift_unknownObjectRetain();
    v9 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  return result;
}

uint64_t sub_1B7CCB620(void *a1, const void *a2)
{
  v4 = sub_1B7CFE450();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7CFE470();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  _Block_copy(a2);
  v13 = [a1 queue];
  if (v13)
  {
    v14 = v13;
    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = sub_1B7AE15E4;
    v15[4] = v12;
    aBlock[4] = sub_1B7CCBD54;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B7AE14D0;
    aBlock[3] = &unk_1F2FA8208;
    v20 = _Block_copy(aBlock);
    v16 = a1;

    sub_1B7CFE460();
    v22 = MEMORY[0x1E69E7CC0];
    sub_1B7CCBD60();
    v21 = v12;
    sub_1B7C107FC(&unk_1EBA53828, &unk_1B7D135B0);
    v19 = v8;
    sub_1B7C81070(&qword_1EBA50E60, &unk_1EBA53828, &unk_1B7D135B0, MEMORY[0x1E69E6328]);
    sub_1B7CFF0D0();
    v17 = v20;
    MEMORY[0x1B8CAE0A0](0, v11, v7, v20);
    _Block_release(v17);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v19);
  }

  else
  {
    _Block_copy(a2);
    sub_1B7CCB478(a1, a2);
    _Block_release(a2);
  }
}

uint64_t sub_1B7CCB988(uint64_t a1)
{
  v12 = MEMORY[0x1E69E7CC0];
  sub_1B7CCAAEC(MEMORY[0x1E69E7CC0]);
  v2 = *(a1 + 16);
  sub_1B7CCAB80(v2, 0, sub_1B7AECEEC, sub_1B7CCA780);
  sub_1B7CFF2C0();
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 32;
  while (1)
  {
    v5 = (v4 + 24 * v3);
    v7 = *v5;
    v6 = v5[1];
    v8 = *(v12 + 16);
    if (v8)
    {
      break;
    }

LABEL_12:

    swift_unknownObjectRetain();
    ++v3;
    sub_1B7AECF3C(v7, v6, 0);
    swift_unknownObjectRetain();
    sub_1B7CFF290();
    sub_1B7CFF2D0();
    sub_1B7CFF2E0();
    sub_1B7CFF2A0();
    swift_unknownObjectRelease();

    if (v3 == v2)
    {
      return 0;
    }
  }

  v9 = (v12 + 40);
  while (1)
  {
    v10 = *(v9 - 1) == v7 && *v9 == v6;
    if (v10 || (sub_1B7CFF590() & 1) != 0)
    {
      break;
    }

    v9 += 2;
    if (!--v8)
    {
      goto LABEL_12;
    }
  }

  result = swift_unknownObjectRetain();
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1B7CCBBA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B7CCBBF4@<X0>(BOOL *a1@<X8>, __n128 a2@<Q0>)
{
  result = sub_1B7CC827C(*(v2 + 16), *(v2 + 24), a2);
  v5 = result;
  if (result)
  {
    result = swift_unknownObjectRelease();
  }

  *a1 = v5 != 0;
  return result;
}

void sub_1B7CCBC50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = swift_unknownObjectRetain();
  sub_1B7CC7F70(v3, v1, v2);
}

void sub_1B7CCBCA8()
{
  v1 = *(v0 + 16);
  v2 = sub_1B7CFEA30();
  [v1 removeActivityMonitorWithID_];
}

uint64_t sub_1B7CCBD04(void (*a1)(void))
{
  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

unint64_t sub_1B7CCBD60()
{
  result = qword_1EBA50E90;
  if (!qword_1EBA50E90)
  {
    sub_1B7CFE450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA50E90);
  }

  return result;
}

uint64_t sub_1B7CCBDD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1], a1[2]);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_1B7CCBE5C()
{
  v0 = sub_1B7CFE420();
  sub_1B7AED154(v0, qword_1EBA53850);
  sub_1B7AD9040(v0, qword_1EBA53850);
  sub_1B7CFE3F0();
  return sub_1B7CFE410();
}

id sub_1B7CCBEC8()
{
  result = [objc_allocWithZone(IMSpotlightActivityMonitor) init];
  qword_1EBA53868 = result;
  return result;
}

id sub_1B7CCBF58()
{
  v1 = OBJC_IVAR___IMSpotlightActivityMonitor_state;
  v2 = sub_1B7CCCDF0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1B7C107FC(&unk_1EBA53900, qword_1B7D135E8);
  v9 = swift_allocObject();
  *(v9 + 44) = 0;
  *(v9 + 16) = v2;
  *(v9 + 24) = v4;
  *(v9 + 32) = v6;
  *(v9 + 40) = v8 & 1;
  *&v0[v1] = v9;
  v15.receiver = v0;
  v15.super_class = IMSpotlightActivityMonitor;
  v10 = objc_msgSendSuper2(&v15, sel_init);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 defaultCenter];
  if (qword_1EDBE39F0 != -1)
  {
    swift_once();
  }

  [v13 addObserver:v12 selector:? name:? object:?];

  return v12;
}

void sub_1B7CCC0C4()
{
  v1 = v0;
  if (qword_1EBA51640 != -1)
  {
    swift_once();
  }

  v2 = sub_1B7CFE420();
  sub_1B7AD9040(v2, qword_1EBA53850);
  v3 = sub_1B7CFE400();
  v4 = sub_1B7CFEEF0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B7AD5000, v3, v4, "Connection died, removing all monitors and resetting state", v5, 2u);
    MEMORY[0x1B8CB0E70](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR___IMSpotlightActivityMonitor_state);
  os_unfair_lock_lock((v6 + 44));
  [*(v6 + 32) removeAllObjects];
  *(v6 + 40) = 0;

  os_unfair_lock_unlock((v6 + 44));
}

void sub_1B7CCC224(void *a1, uint64_t a2)
{
  v4 = a1[2];
  if ([v4 containsObject_])
  {
    if (qword_1EBA51640 != -1)
    {
      swift_once();
    }

    v5 = sub_1B7CFE420();
    sub_1B7AD9040(v5, qword_1EBA53850);
    swift_unknownObjectRetain();
    v6 = sub_1B7CFE400();
    v7 = sub_1B7CFEEF0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      swift_unknownObjectRetain();
      sub_1B7C107FC(&qword_1EBA53838, &qword_1B7D135D8);
      v10 = sub_1B7CFEAB0();
      v12 = sub_1B7AED1B8(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1B7AD5000, v6, v7, "Asked to register activity monitor %s but it was already tracked.", v8, 0xCu);
      sub_1B7AE9168(v9);
      MEMORY[0x1B8CB0E70](v9, -1, -1);
      MEMORY[0x1B8CB0E70](v8, -1, -1);
    }
  }

  else
  {
    [v4 addObject_];
    sub_1B7CCC3F0(a1);
  }
}

void sub_1B7CCC3F0(void *a1)
{
  v3 = *(a1 + 24);
  v4 = [a1[2] count];
  if (v3 == 1)
  {
    if (!v4)
    {
      v5 = [objc_opt_self() synchronousSpotlightActivityMonitorQueryProvider];
      if (v5)
      {
        v6 = v5;
        v7 = sub_1B7CFEA30();
        [v6 removeActivityMonitorWithID_];

        if (qword_1EBA51640 != -1)
        {
          swift_once();
        }

        v8 = sub_1B7CFE420();
        sub_1B7AD9040(v8, qword_1EBA53850);
        v9 = sub_1B7CFE400();
        v10 = sub_1B7CFEF00();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_1B7AD5000, v9, v10, "Unregistered activity monitor from IMDPersistenceAgent", v11, 2u);
          MEMORY[0x1B8CB0E70](v11, -1, -1);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_1EBA51640 != -1)
        {
          swift_once();
        }

        v21 = sub_1B7CFE420();
        sub_1B7AD9040(v21, qword_1EBA53850);
        v9 = sub_1B7CFE400();
        v22 = sub_1B7CFEEF0();
        if (os_log_type_enabled(v9, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_1B7AD5000, v9, v22, "Failed to obtain Spotlight activity monitor query provider", v23, 2u);
          MEMORY[0x1B8CB0E70](v23, -1, -1);
        }
      }

      *(a1 + 24) = 0;
    }
  }

  else if (v4 >= 1)
  {
    v12 = [objc_opt_self() synchronousSpotlightActivityMonitorQueryProvider];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1B7CFEA30();
      [v13 addActivityMonitor:v1 withID:v14];

      *(a1 + 24) = 1;
      if (qword_1EBA51640 != -1)
      {
        swift_once();
      }

      v15 = sub_1B7CFE420();
      sub_1B7AD9040(v15, qword_1EBA53850);
      oslog = sub_1B7CFE400();
      v16 = sub_1B7CFEF00();
      if (os_log_type_enabled(oslog, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1B7AD5000, oslog, v16, "Registered activity monitor with IMDPersistenceAgent", v17, 2u);
        MEMORY[0x1B8CB0E70](v17, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1EBA51640 != -1)
      {
        swift_once();
      }

      v18 = sub_1B7CFE420();
      sub_1B7AD9040(v18, qword_1EBA53850);
      oslog = sub_1B7CFE400();
      v19 = sub_1B7CFEEF0();
      if (os_log_type_enabled(oslog, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1B7AD5000, oslog, v19, "Failed to obtain Spotlight activity monitor query provider", v20, 2u);
        MEMORY[0x1B8CB0E70](v20, -1, -1);
      }
    }
  }
}

void sub_1B7CCC888(void *a1, uint64_t a2)
{
  v4 = a1[2];
  if ([v4 containsObject_])
  {
    [v4 removeObject_];
    sub_1B7CCC3F0(a1);
  }

  else
  {
    if (qword_1EBA51640 != -1)
    {
      swift_once();
    }

    v5 = sub_1B7CFE420();
    sub_1B7AD9040(v5, qword_1EBA53850);
    swift_unknownObjectRetain();
    v6 = sub_1B7CFE400();
    v7 = sub_1B7CFEEF0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      swift_unknownObjectRetain();
      sub_1B7C107FC(&qword_1EBA53838, &qword_1B7D135D8);
      v10 = sub_1B7CFEAB0();
      v12 = sub_1B7AED1B8(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1B7AD5000, v6, v7, "Asked to unregister activity monitor %s but it was not tracked.", v8, 0xCu);
      sub_1B7AE9168(v9);
      MEMORY[0x1B8CB0E70](v9, -1, -1);
      MEMORY[0x1B8CB0E70](v8, -1, -1);
    }
  }
}

void (*sub_1B7CCCC60(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B8CAE380](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1B7CCCCE0;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1B7CCCCE8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B8CAE380](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1B7CCCD68;
  }

  __break(1u);
  return result;
}

void (*sub_1B7CCCD70(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B8CAE380](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1B7CCD7A0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7CCCDF0()
{
  v0 = sub_1B7CFE180();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7CFE170();
  v4 = sub_1B7CFE140();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v12 = v4;
  v13 = v6;
  MEMORY[0x1B8CADCA0](58, 0xE100000000000000);
  v7 = [objc_opt_self() processInfo];
  LODWORD(v3) = [v7 processIdentifier];

  v11[3] = v3;
  v8 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v8);

  v9 = v12;
  [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
  return v9;
}

double sub_1B7CCCF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a5;
  v22 = a2;
  v23 = a3;
  v6 = sub_1B7CFDED0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + OBJC_IVAR___IMSpotlightActivityMonitor_state);
  os_unfair_lock_lock((v10 + 44));
  [*(v10 + 32) copy];
  sub_1B7CFF0A0();
  swift_unknownObjectRelease();
  sub_1B7AEE088(0, &unk_1EDBE5A38, 0x1E695DFB8);
  swift_dynamicCast();
  os_unfair_lock_unlock((v10 + 44));
  v11 = v26;
  v12 = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC0];
  sub_1B7CFEEB0();
  sub_1B7CCD660();
  sub_1B7CFF040();
  if (v30)
  {
    v21 = v11;
    do
    {
      while (1)
      {
        sub_1B7C255E0(&v29, &v26);
        sub_1B7C107FC(&qword_1EBA53838, &qword_1B7D135D8);
        if ((swift_dynamicCast() & 1) == 0 || !v27)
        {
          break;
        }

        MEMORY[0x1B8CADDF0]();
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B7CFED00();
        }

        sub_1B7CFED40();
        v12 = v28;
        sub_1B7CFF040();
        v11 = v21;
        if (!v30)
        {
          goto LABEL_11;
        }
      }

      sub_1B7CFF040();
    }

    while (v30);
    v11 = v21;
  }

LABEL_11:

  (*(v7 + 8))(v9, v6);
  if (v12 >> 62)
  {
    goto LABEL_23;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
LABEL_13:
    v14 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1B8CAE380](v14, v12);
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v15 = *(v12 + 8 * v14 + 32);
        swift_unknownObjectRetain();
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v13 = sub_1B7CFF120();
          if (!v13)
          {
            break;
          }

          goto LABEL_13;
        }
      }

      v17 = sub_1B7CFECC0();
      v18 = sub_1B7CFEA30();
      [v15 searchableItemsDidUpdateWithIdentifiers:v17 forDomainIdentifier:v18 context:v25];
      swift_unknownObjectRelease();

      ++v14;
    }

    while (v16 != v13);
  }

  return result;
}

double sub_1B7CCD2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a5;
  v22 = a3;
  v23 = a2;
  v6 = sub_1B7CFDED0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + OBJC_IVAR___IMSpotlightActivityMonitor_state);
  os_unfair_lock_lock((v10 + 44));
  [*(v10 + 32) copy];
  sub_1B7CFF0A0();
  swift_unknownObjectRelease();
  sub_1B7AEE088(0, &unk_1EDBE5A38, 0x1E695DFB8);
  swift_dynamicCast();
  os_unfair_lock_unlock((v10 + 44));
  v11 = v26;
  v12 = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC0];
  sub_1B7CFEEB0();
  sub_1B7CCD660();
  sub_1B7CFF040();
  if (v30)
  {
    v21 = v11;
    do
    {
      while (1)
      {
        sub_1B7C255E0(&v29, &v26);
        sub_1B7C107FC(&qword_1EBA53838, &qword_1B7D135D8);
        if ((swift_dynamicCast() & 1) == 0 || !v27)
        {
          break;
        }

        MEMORY[0x1B8CADDF0]();
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B7CFED00();
        }

        sub_1B7CFED40();
        v12 = v28;
        sub_1B7CFF040();
        v11 = v21;
        if (!v30)
        {
          goto LABEL_11;
        }
      }

      sub_1B7CFF040();
    }

    while (v30);
    v11 = v21;
  }

LABEL_11:

  (*(v7 + 8))(v9, v6);
  if (v12 >> 62)
  {
    goto LABEL_25;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
LABEL_13:
    v14 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1B8CAE380](v14, v12);
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v16 = *(v12 + 8 * v14 + 32);
        swift_unknownObjectRetain();
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          v13 = sub_1B7CFF120();
          if (!v13)
          {
            break;
          }

          goto LABEL_13;
        }
      }

      v18 = sub_1B7CFECC0();
      if (v24)
      {
        v15 = sub_1B7CFEA30();
      }

      else
      {
        v15 = 0;
      }

      [v16 searchableItemsDeletedWithIdentifiers:v18 forDomainIdentifier:v15 context:v25];
      swift_unknownObjectRelease();

      ++v14;
    }

    while (v17 != v13);
  }

  return result;
}

unint64_t sub_1B7CCD660()
{
  result = qword_1EBA538F0;
  if (!qword_1EBA538F0)
  {
    sub_1B7CFDED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA538F0);
  }

  return result;
}

__n128 sub_1B7CCD6F0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B7CCD704(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7CCD74C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id IMDIndexingContext.laneOverride.getter()
{
  v1 = [v0 laneOverride];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 unsignedIntegerValue];

  return v3;
}

void sub_1B7CCD80C(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 laneOverride];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 unsignedIntegerValue];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v4 == 0;
}

void sub_1B7CCD884(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1B7CFF050();
  }

  v4 = v3;
  [v2 setLaneOverride_];
}

void IMDIndexingContext.laneOverride.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1B7CFF050();
  }

  v4 = v3;
  [v2 setLaneOverride_];
}

void (*IMDIndexingContext.laneOverride.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = [v1 laneOverride];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 unsignedIntegerValue];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v4 == 0;
  return sub_1B7CCD9E0;
}

void sub_1B7CCD9E0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_1B7CFF050();
  }

  v3 = v2;
  [*(a1 + 16) setLaneOverride_];
}

unint64_t sub_1B7CCDA4C(unint64_t isUniquelyReferenced_nonNull_bridgeObject, void **a2)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v2 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v2)
  {
    v3 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v4 = MEMORY[0x1E69E7CC0];
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v27 = v2;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1B8CAE380](v3, v26);
      }

      else
      {
        if (v3 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v3);
      }

      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v6 = __OFADD__(v3++, 1);
      if (v6)
      {
        break;
      }

      v7 = sub_1B7B9E198(isUniquelyReferenced_nonNull_bridgeObject, *a2);
      sub_1B7AEE088(0, &qword_1EBA50E38, 0x1E6964E80);
      v8 = sub_1B7CFECE0();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_1B7CFF120();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v4 >> 62;
      if (v4 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1B7CFF120();
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v34 = v10;
      v6 = __OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10);
      v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
      if (v6)
      {
        goto LABEL_41;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          goto LABEL_22;
        }

LABEL_21:
        sub_1B7CFF120();
        goto LABEL_22;
      }

      if (v11)
      {
        goto LABEL_21;
      }

      v13 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v12 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v32 = v4;
        goto LABEL_23;
      }

LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1B7CFF250();
      v32 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1B7CFF120();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v15 >> 1) - v14) < v34)
          {
            goto LABEL_43;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_45;
            }

            sub_1B7C81070(&qword_1EBA50E58, &qword_1EBA53948, &qword_1B7D13648, MEMORY[0x1E69E6340]);
            for (i = 0; i != v16; ++i)
            {
              sub_1B7C107FC(&qword_1EBA53948, &qword_1B7D13648);
              v19 = sub_1B7CCCD70(v33, i, v8);
              v21 = *v20;
              (v19)(v33, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v2 = v27;
          v4 = v32;
          if (v34 >= 1)
          {
            v22 = *(v13 + 16);
            v6 = __OFADD__(v22, v34);
            v23 = v22 + v34;
            if (v6)
            {
              goto LABEL_44;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_27;
        }
      }

      v4 = v32;
      if (v34 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v3 == v2)
      {
        return v4;
      }
    }

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
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v2 = sub_1B7CFF120();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x1E69E7CC0];
}

id sub_1B7CCDDE0(uint64_t a1)
{
  result = IMDIndexingClientRequestQueue(a1);
  qword_1EBA53910 = result;
  return result;
}

uint64_t sub_1B7CCDE08()
{
  v1 = OBJC_IVAR____TtCE14IMDPersistenceCSo18IMDHandleReindexerP33_C7D6950E930B81ED1AC79C62E336298213Configuration_deferralTime;
  v2 = sub_1B7CFE440();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCE14IMDPersistenceCSo18IMDHandleReindexerP33_C7D6950E930B81ED1AC79C62E336298213Configuration_messageAge;
  v4 = sub_1B7C107FC(&qword_1EBA53918, &qword_1B7D13628);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

id IMDHandleReindexer.init(handles:batchDeferralTime:messageAge:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = sub_1B7CFECC0();

  v9 = [v7 initWithHandles:v8 batchDeferralTime:a2 messageAge:a3 reason:a4];

  return v9;
}

{
  v8 = sub_1B7CFE440();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v19.receiver - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1B7C107FC(&qword_1EBA53918, &qword_1B7D13628);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  result = IMDIsRunningInDatabaseServerProcess();
  if (result)
  {
    *&v4[OBJC_IVAR___IMDHandleReindexer_handles] = a1;
    *&v4[OBJC_IVAR___IMDHandleReindexer_reason] = a3;
    v17 = [objc_opt_self() seconds];
    sub_1B7AEE088(0, &qword_1EBA50E40, 0x1E696B008);
    sub_1B7CFDC20();
    *v11 = a2;
    (*(v9 + 104))(v11, *MEMORY[0x1E69E7F38], v8);
    _s13ConfigurationCMa(0);
    v18 = swift_allocObject();
    (*(v9 + 32))(v18 + OBJC_IVAR____TtCE14IMDPersistenceCSo18IMDHandleReindexerP33_C7D6950E930B81ED1AC79C62E336298213Configuration_deferralTime, v11, v8);
    (*(v13 + 32))(v18 + OBJC_IVAR____TtCE14IMDPersistenceCSo18IMDHandleReindexerP33_C7D6950E930B81ED1AC79C62E336298213Configuration_messageAge, v15, v12);
    *&v4[OBJC_IVAR___IMDHandleReindexer_configuration] = v18;
    v19.receiver = v4;
    v19.super_class = IMDHandleReindexer;
    return objc_msgSendSuper2(&v19, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s13ConfigurationCMa(uint64_t a1)
{
  result = qword_1EBA50E00;
  if (!qword_1EBA50E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall IMDHandleReindexer.reindex()()
{
  v1 = sub_1B7CFE450();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B7CFE470();
  v44 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v43 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7CFE440();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1B7CFE490();
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v35 - v15;
  if (!IMDIsRunningInDatabaseServerProcess())
  {
    __break(1u);
LABEL_20:
    swift_once();
LABEL_7:
    v37 = v4;
    v19 = sub_1B7CFE420();
    sub_1B7AD9040(v19, qword_1EBA5DA08);
    v20 = sub_1B7CFE400();
    v21 = sub_1B7CFEED0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = v1;
      _os_log_impl(&dword_1B7AD5000, v20, v21, "Deferring reindexing for %ld seconds.", v22, 0xCu);
      MEMORY[0x1B8CB0E70](v22, -1, -1);
    }

    if (qword_1EBA51650 != -1)
    {
      swift_once();
    }

    v35[1] = qword_1EBA53910;
    sub_1B7CFE480();
    *v10 = v1;
    (*(v8 + 104))(v10, *MEMORY[0x1E69E7F48], v7);
    MEMORY[0x1B8CAD5F0](v13, v10);
    (*(v8 + 8))(v10, v7);
    v23 = v42;
    v41 = *(v41 + 8);
    (v41)(v13, v42);
    v24 = swift_allocObject();
    v25 = v36;
    *(v24 + 16) = v36;
    aBlock[4] = sub_1B7CD21E0;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B7AE14D0;
    aBlock[3] = &unk_1F2F9FA00;
    v26 = _Block_copy(aBlock);
    v27 = v25;
    v28 = v43;
    sub_1B7CFE460();
    v45 = MEMORY[0x1E69E7CC0];
    sub_1B7CCBD60();
    sub_1B7C107FC(&unk_1EBA53828, &unk_1B7D135B0);
    sub_1B7C81070(&qword_1EBA50E60, &unk_1EBA53828, &unk_1B7D135B0, MEMORY[0x1E69E6328]);
    v29 = v37;
    v30 = v40;
    sub_1B7CFF0D0();
    MEMORY[0x1B8CAE080](v16, v28, v29, v26);
    _Block_release(v26);
    (*(v39 + 8))(v29, v30);
    (v44[1].isa)(v28, v38);
    (v41)(v16, v23);

    return;
  }

  if (*(*&v0[OBJC_IVAR___IMDHandleReindexer_handles] + 16))
  {
    v36 = v0;
    v38 = v5;
    v39 = v2;
    v40 = v1;
    v17 = [objc_opt_self() sharedFeatureFlags];
    v18 = [v17 isBGSTMessageProcessingEnabled];

    if (v18)
    {
      v1 = 0;
    }

    else
    {
      v1 = 10;
    }

    if (qword_1EBA50EA8 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  if (qword_1EBA50EA8 != -1)
  {
    swift_once();
  }

  v31 = sub_1B7CFE420();
  sub_1B7AD9040(v31, qword_1EBA5DA08);
  v44 = sub_1B7CFE400();
  v32 = sub_1B7CFEEF0();
  if (os_log_type_enabled(v44, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1B7AD5000, v44, v32, "No handles to update Core Spotlight indexes for", v33, 2u);
    MEMORY[0x1B8CB0E70](v33, -1, -1);
  }

  v34 = v44;
}

void sub_1B7CCE968(unint64_t a1)
{
  v2 = sub_1B7CFE120();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v93 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B7C107FC(&qword_1EBA53918, &qword_1B7D13628);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v89 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v90 = &v86 - v9;
  if (qword_1EBA50EA8 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v10 = sub_1B7CFE420();
    v11 = sub_1B7AD9040(v10, qword_1EBA5DA08);
    v12 = a1;
    v94 = v11;
    v13 = sub_1B7CFE400();
    v14 = sub_1B7CFEED0();

    v15 = os_log_type_enabled(v13, v14);
    v88 = v2;
    v87 = v3;
    v92 = v5;
    v91 = v6;
    if (v15)
    {
      v2 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock = v16;
      *v2 = 136315138;
      v17 = MEMORY[0x1B8CADE30](*&v12[OBJC_IVAR___IMDHandleReindexer_handles], MEMORY[0x1E69E6158]);
      v5 = v18;
      v6 = sub_1B7AED1B8(v17, v18, &aBlock);

      *(v2 + 4) = v6;
      _os_log_impl(&dword_1B7AD5000, v13, v14, "Finding chats to re-index with CoreSpotlight for handles: %s", v2, 0xCu);
      sub_1B7AE9168(v16);
      MEMORY[0x1B8CB0E70](v16, -1, -1);
      MEMORY[0x1B8CB0E70](v2, -1, -1);
    }

    v19 = swift_allocObject();
    v20 = sub_1B7C25004(MEMORY[0x1E69E7CC0]);
    v95 = v19;
    *(v19 + 16) = v20;
    v3 = v19 + 16;
    v21 = *&v12[OBJC_IVAR___IMDHandleReindexer_handles];
    v104 = v12;
    v105 = v21;
    v103 = *(v21 + 16);
    if (!v103)
    {
      break;
    }

    a1 = 0;
    v102 = *MEMORY[0x1E69A7AD8];
    v101 = *MEMORY[0x1E69A7AE0];
    v100 = *MEMORY[0x1E69A7AF0];
    v99 = *MEMORY[0x1E69A7AE8];
    v98 = *MEMORY[0x1E69A7AF8];
    v97 = v105 + 32;
    v96 = xmmword_1B7D0CB70;
    while (1)
    {
      if (a1 >= *(v105 + 16))
      {
        goto LABEL_42;
      }

      v106 = a1;
      v22 = (v97 + 16 * a1);
      v23 = *v22;
      v2 = v22[1];
      sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
      v24 = swift_allocObject();
      *(v24 + 16) = v96;
      *(v24 + 32) = sub_1B7CFEA60();
      *(v24 + 40) = v25;
      *(v24 + 48) = sub_1B7CFEA60();
      *(v24 + 56) = v26;
      *(v24 + 64) = sub_1B7CFEA60();
      *(v24 + 72) = v27;
      *(v24 + 80) = sub_1B7CFEA60();
      *(v24 + 88) = v28;
      *(v24 + 96) = sub_1B7CFEA60();
      *(v24 + 104) = v29;

      v5 = sub_1B7CD25EC(v23, v2, v24, sub_1B7CD1FF4, 0);

      v108 = *(v5 + 16);
      if (v108)
      {
        break;
      }

LABEL_6:
      a1 = (v106 + 1);

      v12 = v104;
      if (a1 == v103)
      {
        goto LABEL_24;
      }
    }

    v30 = 0;
    v31 = (v5 + 48);
    v107 = v5;
    while (1)
    {
      if (v30 >= *(v5 + 16))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v2 = *(v31 - 2);
      v33 = *(v31 - 1);
      v5 = *v31;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = *v3;
      v35 = aBlock;
      v6 = v3;
      *v3 = 0x8000000000000000;
      v3 = sub_1B7AE1160(v2);
      v37 = *(v35 + 16);
      v38 = (v36 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        goto LABEL_37;
      }

      a1 = v36;
      if (*(v35 + 24) < v39)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v42 = aBlock;
        if ((v36 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_1B7CE9D14();
        v42 = aBlock;
        if ((a1 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

LABEL_10:
      v32 = (v42[7] + 16 * v3);
      *v32 = v33;
      v32[1] = v5;

LABEL_11:
      v30 = (v30 + 1);
      v3 = v6;
      *v6 = v42;

      v31 += 3;
      v5 = v107;
      if (v108 == v30)
      {
        goto LABEL_6;
      }
    }

    sub_1B7CE6984(v39, isUniquelyReferenced_nonNull_native);
    v40 = sub_1B7AE1160(v2);
    if ((a1 & 1) != (v41 & 1))
    {
      goto LABEL_46;
    }

    v3 = v40;
    v42 = aBlock;
    if (a1)
    {
      goto LABEL_10;
    }

LABEL_20:
    v42[(v3 >> 6) + 8] |= 1 << v3;
    *(v42[6] + 8 * v3) = v2;
    v43 = (v42[7] + 16 * v3);
    *v43 = v33;
    v43[1] = v5;
    v44 = v42[2];
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (!v45)
    {
      v42[2] = v46;
      goto LABEL_11;
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

LABEL_24:
  v47 = v95;

  v48 = sub_1B7CFE400();
  v49 = sub_1B7CFEED0();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134217984;
    swift_beginAccess();
    *(v50 + 4) = *(*(v47 + 16) + 16);

    _os_log_impl(&dword_1B7AD5000, v48, v49, "Computed %ld chats to update CoreSpotlight indexes for.", v50, 0xCu);
    MEMORY[0x1B8CB0E70](v50, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  if (*(*v3 + 16))
  {
    v51 = [objc_opt_self() sharedFeatureFlags];
    v52 = [v51 isBGSTMessageProcessingEnabled];

    if (v52)
    {
      v53 = v12;
      v54 = v3;
      v3 = v53;

      sub_1B7CD2338(v55, v3);

      v31 = [objc_allocWithZone(IMDPersistentTaskQueryProvider) init];
      sub_1B7AEE088(0, &qword_1EDBE5A20, off_1E7CB5138);
      v56 = sub_1B7CFECC0();

      [v31 storeTasks_];

      v57 = v91;
      v58 = v89;
      v59 = v92;
      (v91[2])(v89, *(v3 + OBJC_IVAR___IMDHandleReindexer_configuration) + OBJC_IVAR____TtCE14IMDPersistenceCSo18IMDHandleReindexerP33_C7D6950E930B81ED1AC79C62E336298213Configuration_messageAge, v92);
      v60 = [objc_opt_self() seconds];
      v61 = v90;
      sub_1B7CFDC40();

      v62 = v57[1];
      v62(v58, v59);
      sub_1B7CFDC30();
      v62(v61, v59);
      sub_1B7CFE0C0();
      v63 = *v54;
      v64 = *(*v54 + 16);
      if (v64)
      {
        v108 = v31;
        v65 = sub_1B7CD9494(v64, 0);
        v66 = sub_1B7CDA0D8(&aBlock, v65 + 4, v64, v63);
        v67 = aBlock;

        sub_1B7AEC4CC(v67);
        if (v66 == v64)
        {
          v31 = v108;
          goto LABEL_39;
        }

        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        sub_1B7CFF740();
        __break(1u);
      }

      else
      {
LABEL_38:
        v65 = MEMORY[0x1E69E7CC0];
LABEL_39:
        v74 = *(v3 + OBJC_IVAR___IMDHandleReindexer_reason);
        sub_1B7C2F4A4(v65);

        sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
        v75 = sub_1B7CFECC0();

        v76 = v93;
        v77 = sub_1B7CFE0A0();
        v78 = *(*sub_1B7C40CA8(2) + 144);

        v79 = v78(2, v74);

        v113 = sub_1B7CCF5FC;
        v114 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v110 = 1107296256;
        v111 = sub_1B7AE14D0;
        v112 = &unk_1F2F9F7A8;
        v80 = _Block_copy(&aBlock);

        [v31 scheduleMessageGUIDsInChatRowIDs:v75 afterDate:v77 flag:2 lane:v79 reason:v74 completionBlock:v80];
        _Block_release(v80);

        (*(v87 + 8))(v76, v88);
      }
    }

    else
    {
      v68 = [objc_opt_self() queryProvider];
      v69 = *v3;
      v70 = *(v69 + 16);
      if (v70)
      {
        v71 = sub_1B7CD9410(*(v69 + 16), 0);
        v72 = sub_1B7CD9F80(&aBlock, v71 + 4, v70, v69);
        v73 = aBlock;

        sub_1B7AEC4CC(v73);
        if (v72 != v70)
        {
          goto LABEL_45;
        }

        v47 = v95;
        v12 = v104;
      }

      v81 = sub_1B7CFECC0();

      v82 = [objc_opt_self() contextWithReason_];
      v83 = swift_allocObject();
      *(v83 + 16) = v12;
      *(v83 + 24) = v47;
      v113 = sub_1B7CD2894;
      v114 = v83;
      aBlock = MEMORY[0x1E69E9820];
      v110 = 1107296256;
      v111 = sub_1B7C30C34;
      v112 = &unk_1F2FA8330;
      v84 = _Block_copy(&aBlock);
      v85 = v12;

      [v68 addChatGUIDs:v81 context:v82 completionHandler:v84];
      _Block_release(v84);

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }
}

void sub_1B7CCF5FC()
{
  if (qword_1EBA50EA8 != -1)
  {
    swift_once();
  }

  v0 = sub_1B7CFE420();
  sub_1B7AD9040(v0, qword_1EBA5DA08);
  oslog = sub_1B7CFE400();
  v1 = sub_1B7CFEED0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1B7AD5000, oslog, v1, "Scheduled messages for reindexing!", v2, 2u);
    MEMORY[0x1B8CB0E70](v2, -1, -1);
  }
}

uint64_t sub_1B7CCF6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B7C107FC(&qword_1EBA53918, &qword_1B7D13628);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  swift_beginAccess();
  v9 = *(a3 + 16);
  v10 = *(v9 + 16);
  if (!v10)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v15 = a2;
  v16 = v5;
  v11 = sub_1B7CD9410(v10, 0);
  v17 = sub_1B7CD9F80(&v18, v11 + 4, v10, v9);
  v12 = v18;

  result = sub_1B7AEC4CC(v12);
  if (v17 == v10)
  {
    a2 = v15;
    v5 = v16;
LABEL_5:
    (*(v6 + 16))(v8, *(a2 + OBJC_IVAR___IMDHandleReindexer_configuration) + OBJC_IVAR____TtCE14IMDPersistenceCSo18IMDHandleReindexerP33_C7D6950E930B81ED1AC79C62E336298213Configuration_messageAge, v5);
    sub_1B7CCF8A8(v11, v8);

    return (*(v6 + 8))(v8, v5);
  }

  __break(1u);
  return result;
}

void sub_1B7CCF8A8(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v3 = sub_1B7CFE450();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7CFE470();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B7CFE440();
  v58 = *(v11 - 8);
  v59 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1B7CFE490();
  isa = v65[-1].isa;
  MEMORY[0x1EEE9AC00](v65);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v48 - v16;
  v63 = sub_1B7C107FC(&qword_1EBA53918, &qword_1B7D13628);
  v17 = *(v63 - 8);
  v56 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v19 = &v48 - v18;
  if (!IMDIsRunningInDatabaseServerProcess())
  {
    __break(1u);
    goto LABEL_18;
  }

  v55 = v10;
  v10 = *(a1 + 16);
  if (v10)
  {
    v50 = v8;
    v51 = v6;
    v52 = v7;
    v53 = v4;
    v54 = v3;
    sub_1B7AEE088(0, &qword_1EBA50CB8, off_1E7CB5108);
    sub_1B7AEE088(0, &unk_1EDBE5930, 0x1E696AE18);
    sub_1B7C107FC(&qword_1EBA52F88, &qword_1B7D0FFA8);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1B7D0A6F0;
    v21 = sub_1B7CFEA60();
    v23 = v22;
    *(v20 + 56) = MEMORY[0x1E69E6158];
    *(v20 + 64) = sub_1B7CD289C();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    *(v20 + 96) = sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
    *(v20 + 104) = sub_1B7C81070(&qword_1EBA53940, &unk_1EBA525A0, "D\r\b", MEMORY[0x1E6969E28]);
    *(v20 + 72) = a1;

    v24 = sub_1B7CFEE80();
    v8 = *(v17 + 16);
    (v8)(v19, v64, v63);
    v49 = sub_1B7CD28F0(v24, v19);

    if (qword_1EBA50EA8 == -1)
    {
LABEL_4:
      v25 = sub_1B7CFE420();
      sub_1B7AD9040(v25, qword_1EBA5DA08);

      v26 = sub_1B7CFE400();
      v27 = sub_1B7CFEED0();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 134217984;
        *(v28 + 4) = v10;

        _os_log_impl(&dword_1B7AD5000, v26, v27, "Queuing up reindexing for %ld chats", v28, 0xCu);
        MEMORY[0x1B8CB0E70](v28, -1, -1);
      }

      else
      {
      }

      if (qword_1EBA51650 != -1)
      {
        swift_once();
      }

      v48 = qword_1EBA53910;
      sub_1B7CFE480();
      v33 = v62;
      v35 = v57;
      v34 = v58;
      v36 = v59;
      (*(v58 + 16))(v57, *&v62[OBJC_IVAR___IMDHandleReindexer_configuration] + OBJC_IVAR____TtCE14IMDPersistenceCSo18IMDHandleReindexerP33_C7D6950E930B81ED1AC79C62E336298213Configuration_deferralTime, v59);
      v37 = v60;
      MEMORY[0x1B8CAD5F0](v14, v35);
      (*(v34 + 8))(v35, v36);
      isa = *(isa + 1);
      (isa)(v14, v65);
      v38 = v63;
      (v8)(v19, v64, v63);
      v39 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v40 = swift_allocObject();
      v41 = v49;
      *(v40 + 16) = v33;
      *(v40 + 24) = v41;
      (*(v17 + 32))(v40 + v39, v19, v38);
      aBlock[4] = sub_1B7CD2C18;
      aBlock[5] = v40;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B7AE14D0;
      aBlock[3] = &unk_1F2F9F758;
      v42 = _Block_copy(aBlock);
      v43 = v33;
      v44 = v41;
      v45 = v55;
      sub_1B7CFE460();
      v66 = MEMORY[0x1E69E7CC0];
      sub_1B7CCBD60();
      sub_1B7C107FC(&unk_1EBA53828, &unk_1B7D135B0);
      sub_1B7C81070(&qword_1EBA50E60, &unk_1EBA53828, &unk_1B7D135B0, MEMORY[0x1E69E6328]);
      v46 = v51;
      v47 = v54;
      sub_1B7CFF0D0();
      MEMORY[0x1B8CAE080](v37, v45, v46, v42);
      _Block_release(v42);

      (*(v53 + 8))(v46, v47);
      (v50)[1](v45, v52);
      (isa)(v37, v65);

      return;
    }

LABEL_18:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1EBA50EA8 != -1)
  {
    swift_once();
  }

  v29 = sub_1B7CFE420();
  sub_1B7AD9040(v29, qword_1EBA5DA08);
  v65 = sub_1B7CFE400();
  v30 = sub_1B7CFEEF0();
  if (os_log_type_enabled(v65, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1B7AD5000, v65, v30, "No chats to reindex recent messages", v31, 2u);
    MEMORY[0x1B8CB0E70](v31, -1, -1);
  }

  v32 = v65;
}

void sub_1B7CD01C8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [objc_opt_self() sharedFeatureFlags];
  v6 = [v5 isSpotlightRefactorEnabled];

  if (v6)
  {
    sub_1B7CD0250(a2, a3);
  }

  else
  {
    sub_1B7CD0538(a2, a3);
  }
}

void sub_1B7CD0250(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B7C107FC(&qword_1EBA53918, &qword_1B7D13628);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  if (qword_1EBA50EA8 != -1)
  {
    swift_once();
  }

  v10 = sub_1B7CFE420();
  sub_1B7AD9040(v10, qword_1EBA5DA08);
  v11 = sub_1B7CFE400();
  v12 = sub_1B7CFEED0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1B7AD5000, v11, v12, "Fetching batch of messages to reindex", v13, 2u);
    MEMORY[0x1B8CB0E70](v13, -1, -1);
  }

  v14 = [objc_allocWithZone(IMDIndexingContext) initForReindexing:1 reason:*&v3[OBJC_IVAR___IMDHandleReindexer_reason]];
  v15 = [objc_opt_self() sharedController];
  (*(v7 + 16))(v9, a2, v6);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  *(v17 + 24) = a1;
  (*(v7 + 32))(v17 + v16, v9, v6);
  aBlock[4] = sub_1B7CD2C88;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7CD1914;
  aBlock[3] = &unk_1F2FA83A8;
  v18 = _Block_copy(aBlock);
  v19 = v3;
  v20 = a1;

  [v15 _indexNextBatchOfMessagesWithFetcher_context_completionHandler_];
  _Block_release(v18);
}

void sub_1B7CD0538(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v71 = a2;
  v5 = sub_1B7CFE450();
  v78 = *(v5 - 8);
  v79 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1B7CFE470();
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v74 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7C107FC(&qword_1EBA53918, &qword_1B7D13628);
  v69 = *(v8 - 8);
  v70 = v8;
  v67 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v62 - v9;
  v10 = sub_1B7CFE490();
  v72 = *(v10 - 8);
  v73 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v62 - v13;
  v14 = sub_1B7CFE440();
  v81 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBA50EA8 != -1)
  {
    swift_once();
  }

  v17 = sub_1B7CFE420();
  sub_1B7AD9040(v17, qword_1EBA5DA08);
  v18 = sub_1B7CFE400();
  v19 = sub_1B7CFEED0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1B7AD5000, v18, v19, "Fetching batch of messages to reindex", v20, 2u);
    MEMORY[0x1B8CB0E70](v20, -1, -1);
  }

  v64 = v3;
  v21 = *&v3[OBJC_IVAR___IMDHandleReindexer_reason];
  v80 = a1;
  v22 = sub_1B7CD0F24();
  v23 = v22;
  v24 = v22 >> 62;
  if (v22 >> 62)
  {
    if (sub_1B7CFF120())
    {
LABEL_7:

      v25 = sub_1B7CFE400();
      v26 = sub_1B7CFEED0();
      v27 = os_log_type_enabled(v25, v26);
      v63 = v14;
      if (v27)
      {
        v28 = swift_slowAlloc();
        *v28 = 134217984;
        if (v24)
        {
          v29 = sub_1B7CFF120();
        }

        else
        {
          v29 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v28 + 4) = v29;

        _os_log_impl(&dword_1B7AD5000, v25, v26, "Kicking off indexing of %ld searchable items", v28, 0xCu);
        MEMORY[0x1B8CB0E70](v28, -1, -1);
      }

      else
      {
      }

      sub_1B7AEE088(0, &qword_1EBA50E38, 0x1E6964E80);
      v30 = sub_1B7CFECC0();
      sub_1B7AEE088(0, &qword_1EBA50CC0, 0x1E69A7FF0);
      v31 = sub_1B7CFECC0();
      v32 = _IMDSpotlightIndexForIndexingReason(v21);
      if (v32)
      {
        v33 = v32;

        sub_1B7B99408(v30, v31, v21, v33);

        swift_unknownObjectRelease();
        v34 = v64;
        v35 = sub_1B7CFE400();
        v36 = sub_1B7CFEED0();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          aBlock[0] = v38;
          *v37 = 136315138;
          v81[2](v16, *&v34[OBJC_IVAR___IMDHandleReindexer_configuration] + OBJC_IVAR____TtCE14IMDPersistenceCSo18IMDHandleReindexerP33_C7D6950E930B81ED1AC79C62E336298213Configuration_deferralTime, v63);
          v39 = sub_1B7CFEAC0();
          v41 = sub_1B7AED1B8(v39, v40, aBlock);

          *(v37 + 4) = v41;
          _os_log_impl(&dword_1B7AD5000, v35, v36, "Scheduling fetching the next batch of messages for re-indexing after %s seconds", v37, 0xCu);
          sub_1B7AE9168(v38);
          MEMORY[0x1B8CB0E70](v38, -1, -1);
          MEMORY[0x1B8CB0E70](v37, -1, -1);
        }

        v42 = v80;
        if (qword_1EBA51650 != -1)
        {
          swift_once();
        }

        v80 = qword_1EBA53910;
        v43 = v65;
        sub_1B7CFE480();
        v44 = v81;
        v45 = v63;
        v81[2](v16, *&v34[OBJC_IVAR___IMDHandleReindexer_configuration] + OBJC_IVAR____TtCE14IMDPersistenceCSo18IMDHandleReindexerP33_C7D6950E930B81ED1AC79C62E336298213Configuration_deferralTime, v63);
        v46 = v66;
        MEMORY[0x1B8CAD5F0](v43, v16);
        (v44[1])(v16, v45);
        v47 = v73;
        v81 = *(v72 + 8);
        (v81)(v43, v73);
        v49 = v68;
        v48 = v69;
        v50 = v70;
        (*(v69 + 16))(v68, v71, v70);
        v51 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v52 = swift_allocObject();
        *(v52 + 16) = v34;
        *(v52 + 24) = v42;
        (*(v48 + 32))(v52 + v51, v49, v50);
        aBlock[4] = sub_1B7CD2E08;
        aBlock[5] = v52;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B7AE14D0;
        aBlock[3] = &unk_1F2F9F6B8;
        v53 = _Block_copy(aBlock);
        v54 = v34;
        v55 = v42;
        v56 = v74;
        sub_1B7CFE460();
        v82 = MEMORY[0x1E69E7CC0];
        sub_1B7CCBD60();
        sub_1B7C107FC(&unk_1EBA53828, &unk_1B7D135B0);
        sub_1B7C81070(&qword_1EBA50E60, &unk_1EBA53828, &unk_1B7D135B0, MEMORY[0x1E69E6328]);
        v57 = v76;
        v58 = v79;
        sub_1B7CFF0D0();
        MEMORY[0x1B8CAE080](v46, v56, v57, v53);
        _Block_release(v53);
        (*(v78 + 8))(v57, v58);
        (*(v75 + 8))(v56, v77);
        (v81)(v46, v47);
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

  v81 = sub_1B7CFE400();
  v59 = sub_1B7CFEED0();
  if (os_log_type_enabled(v81, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_1B7AD5000, v81, v59, "Finished scheduling reindexing", v60, 2u);
    MEMORY[0x1B8CB0E70](v60, -1, -1);
  }

  v61 = v81;
}

unint64_t sub_1B7CD0F24()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  v12 = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v0;
  aBlock[4] = sub_1B7CD2E98;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7AE14D0;
  aBlock[3] = &unk_1F2FA8498;
  v4 = _Block_copy(aBlock);

  v5 = v0;

  IMDPersistencePerformBlock(v4, 1, v6, v7);
  _Block_release(v4);
  swift_beginAccess();

  v9 = sub_1B7CCDA4C(v8, &v12);

  sub_1B7AEE088(0, &qword_1EBA50CC0, 0x1E69A7FF0);
  sub_1B7CFECD0();

  return v9;
}

uint64_t sub_1B7CD10D8(void *a1, void *a2, uint64_t a3)
{
  v48 = a3;
  v49 = a2;
  v4 = sub_1B7CFE450();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1B7CFE470();
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1B7C107FC(&qword_1EBA53918, &qword_1B7D13628);
  v7 = *(v47 - 8);
  v52 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v53 = &v45 - v8;
  v9 = sub_1B7CFE490();
  v55 = *(v9 - 8);
  v56 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v45 - v12;
  v13 = sub_1B7CFE440();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBA50EA8 != -1)
  {
    swift_once();
  }

  v17 = sub_1B7CFE420();
  sub_1B7AD9040(v17, qword_1EBA5DA08);
  v18 = a1;
  v19 = sub_1B7CFE400();
  v20 = sub_1B7CFEED0();

  v21 = os_log_type_enabled(v19, v20);
  v50 = v18;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v22 = 136315138;
    v23 = v14;
    (*(v14 + 16))(v16, *&v18[OBJC_IVAR___IMDHandleReindexer_configuration] + OBJC_IVAR____TtCE14IMDPersistenceCSo18IMDHandleReindexerP33_C7D6950E930B81ED1AC79C62E336298213Configuration_deferralTime, v13);
    v24 = v13;
    v25 = sub_1B7CFEAC0();
    v27 = sub_1B7AED1B8(v25, v26, aBlock);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_1B7AD5000, v19, v20, "Scheduling fetching the next batch of messages for re-indexing after %s seconds", v22, 0xCu);
    v28 = v46;
    sub_1B7AE9168(v46);
    MEMORY[0x1B8CB0E70](v28, -1, -1);
    MEMORY[0x1B8CB0E70](v22, -1, -1);
  }

  else
  {
    v23 = v14;
    v24 = v13;
  }

  if (qword_1EBA51650 != -1)
  {
    swift_once();
  }

  v46 = qword_1EBA53910;
  v29 = v51;
  sub_1B7CFE480();
  v30 = v50;
  (*(v23 + 16))(v16, *&v50[OBJC_IVAR___IMDHandleReindexer_configuration] + OBJC_IVAR____TtCE14IMDPersistenceCSo18IMDHandleReindexerP33_C7D6950E930B81ED1AC79C62E336298213Configuration_deferralTime, v24);
  v31 = v54;
  MEMORY[0x1B8CAD5F0](v29, v16);
  (*(v23 + 8))(v16, v24);
  v32 = v56;
  v55 = *(v55 + 8);
  (v55)(v29, v56);
  v33 = v53;
  v34 = v47;
  (*(v7 + 16))(v53, v48, v47);
  v35 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v36 = swift_allocObject();
  v37 = v49;
  *(v36 + 16) = v30;
  *(v36 + 24) = v37;
  (*(v7 + 32))(v36 + v35, v33, v34);
  aBlock[4] = sub_1B7CD2D18;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7AE14D0;
  aBlock[3] = &unk_1F2FA83F8;
  v38 = _Block_copy(aBlock);
  v39 = v30;
  v40 = v37;
  v41 = v57;
  sub_1B7CFE460();
  v63 = MEMORY[0x1E69E7CC0];
  sub_1B7CCBD60();
  sub_1B7C107FC(&unk_1EBA53828, &unk_1B7D135B0);
  sub_1B7C81070(&qword_1EBA50E60, &unk_1EBA53828, &unk_1B7D135B0, MEMORY[0x1E69E6328]);
  v42 = v59;
  v43 = v62;
  sub_1B7CFF0D0();
  MEMORY[0x1B8CAE080](v31, v41, v42, v38);
  _Block_release(v38);
  (*(v61 + 8))(v42, v43);
  (*(v58 + 8))(v41, v60);
  (v55)(v31, v32);
}

void sub_1B7CD17FC(char a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (a1)
  {

    sub_1B7CD10D8(a3, a4, a5);
  }

  else
  {
    if (qword_1EBA50EA8 != -1)
    {
      swift_once();
    }

    v5 = sub_1B7CFE420();
    sub_1B7AD9040(v5, qword_1EBA5DA08);
    oslog = sub_1B7CFE400();
    v6 = sub_1B7CFEED0();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1B7AD5000, oslog, v6, "No more chats to reindex, stopping", v7, 2u);
      MEMORY[0x1B8CB0E70](v7, -1, -1);
    }
  }
}

void sub_1B7CD1914(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, v6);
}

void sub_1B7CD198C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, id), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a1;
  v35 = *(a4 + 16);
  if (!v35)
  {
LABEL_25:
    v29 = [objc_opt_self() synchronousDatabase];
    sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1B7D0A7B0;
    *(v30 + 32) = a5;
    *(v30 + 40) = a6;

    v31 = sub_1B7CFECC0();

    v32 = sub_1B7CFECC0();
    v33 = swift_allocObject();
    v33[2] = v7;
    v33[3] = a2;
    v33[4] = a3;
    v49 = sub_1B7CD2F18;
    v50 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v46 = 1107296256;
    v47 = sub_1B7CD1F70;
    v48 = &unk_1F2FA8560;
    v34 = _Block_copy(&aBlock);

    [v29 fetchChatRecordsWithAtLeastHandles:v31 serviceNames:v32 style:43 completionHandler:v34];
    _Block_release(v34);
    swift_unknownObjectRelease();

    return;
  }

  v8 = 0;
  while (1)
  {
    v38 = v8;

    v9 = sub_1B7CFEA30();
    v10 = sub_1B7CFEA30();

    v11 = IMDChatRecordCopyChatsWithHandleOnService(v9, v10);

    if (v11)
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        goto LABEL_4;
      }

      aBlock = 0;
      sub_1B7AEE088(0, &qword_1EDBE5920, off_1E7CB4FD8);
      sub_1B7CFECD0();

      v12 = aBlock;
      if (aBlock)
      {
        break;
      }
    }

LABEL_4:
    v8 = v38 + 1;
    if (v38 + 1 == v35)
    {
      goto LABEL_25;
    }
  }

  v13 = aBlock & 0xFFFFFFFFFFFFFF8;
  if (!(aBlock >> 62))
  {
    v14 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_10;
    }

    goto LABEL_3;
  }

  v14 = sub_1B7CFF120();
  if (!v14)
  {
LABEL_3:

    goto LABEL_4;
  }

LABEL_10:
  v15 = 0;
  v43 = v12;
  v44 = v12 & 0xC000000000000001;
  v41 = v14;
  v42 = v12 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v44)
    {
      v16 = MEMORY[0x1B8CAE380](v15, v12);
    }

    else
    {
      if (v15 >= *(v13 + 16))
      {
        goto LABEL_27;
      }

      v16 = *(v12 + 8 * v15 + 32);
    }

    v17 = v16;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    a2(&aBlock, v16);
    swift_beginAccess();
    v20 = aBlock;
    v19 = v46;
    v21 = v47;
    v22 = *(v7 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 16) = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = v22[2];

      v28 = sub_1B7CA36E0(0, v27 + 1, 1, v22);
      *(a1 + 16) = v28;

      v22 = v28;
    }

    v25 = v22[2];
    v24 = v22[3];
    if (v25 >= v24 >> 1)
    {
      v22 = sub_1B7CA36E0((v24 > 1), v25 + 1, 1, v22);
    }

    v22[2] = v25 + 1;
    v26 = &v22[3 * v25];
    v26[4] = v20;
    v26[5] = v19;
    v26[6] = v21;
    v7 = a1;
    *(a1 + 16) = v22;
    swift_endAccess();

    ++v15;
    v13 = v42;
    v12 = v43;
    if (v18 == v41)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_1B7CD1DBC(unint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, id))
{
  v4 = a1;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7CFF120())
  {
    v6 = 0;
    v21 = v4 & 0xFFFFFFFFFFFFFF8;
    v22 = v4 & 0xC000000000000001;
    v19 = v4;
    v20 = a2;
    v18 = i;
    while (1)
    {
      if (v22)
      {
        v7 = MEMORY[0x1B8CAE380](v6, v4);
      }

      else
      {
        if (v6 >= *(v21 + 16))
        {
          goto LABEL_16;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      a3(v24, v7);
      swift_beginAccess();
      v11 = v24[0];
      v10 = v24[1];
      v12 = v24[2];
      v13 = *(a2 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 16) = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_1B7CA36E0(0, v13[2] + 1, 1, v13);
        *(a2 + 16) = v13;
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        v13 = sub_1B7CA36E0((v15 > 1), v16 + 1, 1, v13);
      }

      v13[2] = v16 + 1;
      v17 = &v13[3 * v16];
      v17[4] = v11;
      v17[5] = v10;
      v17[6] = v12;
      a2 = v20;
      *(v20 + 16) = v13;
      swift_endAccess();

      ++v6;
      v4 = v19;
      if (v9 == v18)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

double sub_1B7CD1F70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1B7AEE088(0, &qword_1EDBE5920, off_1E7CB4FD8);
  v3 = sub_1B7CFECE0();

  v2(v3);

  return result;
}

void sub_1B7CD1FF4(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = [a1 rowID];
  v4 = [a1 guid];
  v5 = sub_1B7CFEA60();
  v7 = v6;

  a2[1] = v5;
  a2[2] = v7;
}

void __swiftcall IMDHandleReindexer.init()(IMDHandleReindexer *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

double sub_1B7CD2144(uint64_t a1, id a2)
{
  v3 = [a2 nextBatch];
  sub_1B7AEE088(0, &unk_1EDBE5910, off_1E7CB5100);
  v4 = sub_1B7CFECE0();

  swift_beginAccess();
  *(a1 + 16) = v4;

  return result;
}

void sub_1B7CD21F0(uint64_t a1)
{
  sub_1B7CFE440();
  if (v1 <= 0x3F)
  {
    sub_1B7CD22BC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B7CD22BC(uint64_t a1)
{
  if (!qword_1EBA50FB8)
  {
    sub_1B7AEE088(255, &qword_1EBA50E40, 0x1E696B008);
    v1 = sub_1B7CFDC50();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA50FB8);
    }
  }
}

void sub_1B7CD2338(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1B7CFF2C0();
    v5 = v2 + 64;
    v6 = sub_1B7CFF0E0();
    v7 = *(v2 + 36);
    v8 = objc_opt_self();
    v9 = 0;
    v24 = *(a2 + OBJC_IVAR___IMDHandleReindexer_reason);
    v25 = v8;
    v22 = v2 + 72;
    v23 = v7;
    v26 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v11 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_20;
      }

      if (v7 != *(v2 + 36))
      {
        goto LABEL_21;
      }

      v27 = v9;
      v7 = v3;

      v12 = [v25 contextWithReason_];
      v13 = objc_allocWithZone(IMDPersistentTask);
      v14 = sub_1B7CFEA30();
      [v13 initWithGUIDForSpotlight:v14 flag:3 context:v12];
      v2 = v26;

      sub_1B7CFF290();
      sub_1B7CFF2D0();
      sub_1B7CFF2E0();
      sub_1B7CFF2A0();
      v10 = 1 << *(v26 + 32);
      if (v6 >= v10)
      {
        goto LABEL_22;
      }

      v15 = *(v5 + 8 * v11);
      if ((v15 & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      v3 = v7;
      LODWORD(v7) = v23;
      if (v23 != *(v26 + 36))
      {
        goto LABEL_24;
      }

      v16 = v15 & (-2 << (v6 & 0x3F));
      if (v16)
      {
        v10 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v11 << 6;
        v18 = v11 + 1;
        v19 = (v22 + 8 * v11);
        while (v18 < (v10 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            sub_1B7C8CB5C(v6, v23, 0);
            v10 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        sub_1B7C8CB5C(v6, v23, 0);
      }

LABEL_4:
      v9 = v27 + 1;
      v6 = v10;
      if (v27 + 1 == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_1B7CD25EC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!IMDIsRunningInDatabaseServerProcess())
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_8;
  }

  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v10 && *(a3 + 16))
  {
    v11 = swift_allocObject();
    *(v11 + 16) = MEMORY[0x1E69E7CC0];
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a4;
    v12[4] = a5;
    v12[5] = a3;
    v12[6] = a1;
    v12[7] = a2;
    v23[4] = sub_1B7CD2F08;
    v23[5] = v12;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 1107296256;
    v23[2] = sub_1B7AE14D0;
    v23[3] = &unk_1F2FA8510;
    v13 = _Block_copy(v23);

    IMDPersistencePerformBlock(v13, 1, v14, v15);
    _Block_release(v13);
    swift_beginAccess();
    v16 = *(v11 + 16);

    return v16;
  }

  if (qword_1EBA50EA8 != -1)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = sub_1B7CFE420();
  sub_1B7AD9040(v17, qword_1EBA5DA08);

  v18 = sub_1B7CFE400();
  v19 = sub_1B7CFEEF0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_1B7AED1B8(a1, a2, v23);
    _os_log_impl(&dword_1B7AD5000, v18, v19, "Handle (%s) or services is empty", v20, 0xCu);
    sub_1B7AE9168(v21);
    MEMORY[0x1B8CB0E70](v21, -1, -1);
    MEMORY[0x1B8CB0E70](v20, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1B7CD289C()
{
  result = qword_1EBA50E88;
  if (!qword_1EBA50E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA50E88);
  }

  return result;
}

id sub_1B7CD28F0(uint64_t a1, char *a2)
{
  v22 = a2;
  v23 = sub_1B7CFE120();
  v3 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B7C107FC(&qword_1EBA53918, &qword_1B7D13628);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithChatPredicate:a1 sortAscending:1];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 seconds];
  sub_1B7CFDC40();

  sub_1B7CFDC30();
  v14 = *(v7 + 8);
  v14(v9, v6);
  sub_1B7AEE088(0, &unk_1EDBE5930, 0x1E696AE18);
  sub_1B7C107FC(&qword_1EBA52F88, &qword_1B7D0FFA8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1B7D0A6F0;
  v16 = sub_1B7CFEA60();
  v18 = v17;
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = sub_1B7CD289C();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  sub_1B7CFE0C0();
  v19 = sub_1B7CFE0A0();
  (*(v3 + 8))(v5, v23);
  *(v15 + 96) = sub_1B7AEE088(0, &qword_1EDBE59E0, 0x1E695DF00);
  *(v15 + 104) = sub_1B7CD2EA0();
  *(v15 + 72) = v19;
  v20 = sub_1B7CFEE80();
  [v12 setPredicate_];

  [v12 setBatchSize_];
  v14(v22, v6);
  return v12;
}

void sub_1B7CD2C18()
{
  v1 = *(sub_1B7C107FC(&qword_1EBA53918, &qword_1B7D13628) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_1B7CD01C8(v2, v3, v4);
}

void sub_1B7CD2C88(char a1, uint64_t a2)
{
  v5 = *(sub_1B7C107FC(&qword_1EBA53918, &qword_1B7D13628) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_1B7CD17FC(a1, a2, v6, v7, v8);
}

uint64_t sub_1B7CD2D30()
{
  v1 = sub_1B7C107FC(&qword_1EBA53918, &qword_1B7D13628);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

unint64_t sub_1B7CD2EA0()
{
  result = qword_1EBA50C78;
  if (!qword_1EBA50C78)
  {
    sub_1B7AEE088(255, &qword_1EDBE59E0, 0x1E695DF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA50C78);
  }

  return result;
}

double sub_1B7CD2F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v7 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = v7[2];
  v8 = v7[3];
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1B7AE3A9C((v8 > 1), v9 + 1, 1, v7);
  }

  v14 = MEMORY[0x1E69E6158];
  v15 = &off_1F2FA8B58;
  *&v13 = a2;
  *(&v13 + 1) = a3;
  v7[2] = v10;
  sub_1B7AE910C(&v13, &v7[5 * v9 + 4]);
  v11 = v7[3];
  if ((v9 + 2) > (v11 >> 1))
  {
    v7 = sub_1B7AE3A9C((v11 > 1), v9 + 2, 1, v7);
  }

  v14 = MEMORY[0x1E69E6530];
  v15 = &off_1F2FA89F8;
  *&v13 = a1;
  v7[2] = v9 + 2;
  sub_1B7AE910C(&v13, &v7[5 * v10 + 4]);
  sub_1B7AE3B2C(0xD00000000000003DLL, 0x80000001B7D5B360, 0);
  if (!v3)
  {
    sub_1B7AF3FE4(v7);
  }

  return result;
}

void sub_1B7CD3170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *&v79 = a3;
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v10 = sub_1B7CFE420();
  sub_1B7AD9040(v10, qword_1EBA5DA20);

  v11 = sub_1B7CFE400();
  v12 = sub_1B7CFEEE0();

  v81 = a2;
  *(&v79 + 1) = a4;
  v80 = a1;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v86 = v14;
    *v13 = 136315138;
    v15 = MEMORY[0x1B8CADE30](a1, MEMORY[0x1E69E6530]);
    v17 = sub_1B7AED1B8(v15, v16, &v86);

    *(v13 + 4) = v17;
    a2 = v81;
    _os_log_impl(&dword_1B7AD5000, v11, v12, " ==> merging in %s", v13, 0xCu);
    sub_1B7AE9168(v14);
    MEMORY[0x1B8CB0E70](v14, -1, -1);
    MEMORY[0x1B8CB0E70](v13, -1, -1);
  }

  v90 = v89;
  v18 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v20 = v18[2];
  v19 = v18[3];
  if (v20 >= v19 >> 1)
  {
    v18 = sub_1B7AE3A9C((v19 > 1), v20 + 1, 1, v18);
  }

  v87 = MEMORY[0x1E69E6530];
  v88 = &off_1F2FA89F8;
  *&v86 = a2;
  v18[2] = v20 + 1;
  sub_1B7AE910C(&v86, &v18[5 * v20 + 4]);
  sub_1B7C159CC(0xD00000000000002DLL, 0x80000001B7D5B580, v18, 0, &v90);
  if (v6)
  {
  }

  else
  {

    v21 = v89[0];
    v22 = v89[1];
    v23 = sub_1B7CFE010();
    v24 = JWDecodeDictionary();

    if (v24)
    {
      v25 = sub_1B7CFE990();
    }

    else
    {
      v25 = sub_1B7C24230(MEMORY[0x1E69E7CC0]);
    }

    sub_1B7C204B0(v21, v22);
    v91 = v25;
    v78 = *(v80 + 16);
    if (v78)
    {
      v26 = (v80 + 32);
      v27 = *(v80 + 16);
      do
      {
        v29 = *v26++;
        v28 = v29;
        sub_1B7CD4F9C(v29, a2);
        sub_1B7CD525C(v29, a2);
        sub_1B7CD5568(v29, a2);
        sub_1B7CD5828(v29, a2);
        v85 = v84;
        v30 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v32 = v30[2];
        v31 = v30[3];
        if (v32 >= v31 >> 1)
        {
          v30 = sub_1B7AE3A9C((v31 > 1), v32 + 1, 1, v30);
        }

        v88 = &off_1F2FA89F8;
        v87 = MEMORY[0x1E69E6530];
        *&v86 = v28;
        v30[2] = v32 + 1;
        sub_1B7AE910C(&v86, &v30[5 * v32 + 4]);
        sub_1B7C159CC(0xD00000000000002DLL, 0x80000001B7D5B580, v30, 0, &v85);

        v33 = v84[0];
        v34 = v84[1];
        v35 = sub_1B7CFE010();
        v36 = JWDecodeDictionary();

        if (v36)
        {
          v37 = sub_1B7CFE990();
        }

        else
        {
          v37 = sub_1B7C24230(MEMORY[0x1E69E7CC0]);
        }

        sub_1B7C204B0(v33, v34);
        v38 = sub_1B7CFE400();
        v39 = sub_1B7CFEEE0();
        a2 = v81;
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 134217984;
          *(v40 + 4) = v28;
          _os_log_impl(&dword_1B7AD5000, v38, v39, " ==> merging properties from %ld", v40, 0xCu);
          MEMORY[0x1B8CB0E70](v40, -1, -1);
        }

        if (qword_1EBA51638 != -1)
        {
          swift_once();
        }

        v41 = qword_1EBA53240;

        sub_1B7C9C5CC(v37, &v91, v41, 0x3D3D202020202020, 0xEA0000000000203ELL);

        v83 = &v82;
        v42 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v44 = v42[2];
        v43 = v42[3];
        if (v44 >= v43 >> 1)
        {
          v42 = sub_1B7AE3A9C((v43 > 1), v44 + 1, 1, v42);
        }

        v88 = &off_1F2FA89F8;
        v87 = MEMORY[0x1E69E6530];
        *&v86 = v81;
        v42[2] = v44 + 1;
        sub_1B7AE910C(&v86, &v42[5 * v44 + 4]);
        sub_1B7AF45D8(0xD000000000000039, 0x80000001B7D5B5B0, v42, 0, &v83);

        if (!v82)
        {
          v45 = sub_1B7CFE400();
          v46 = sub_1B7CFEEF0();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            *v47 = 134218240;
            *(v47 + 4) = v81;
            *(v47 + 12) = 2048;
            *(v47 + 14) = v28;
            _os_log_impl(&dword_1B7AD5000, v45, v46, " ==> !!! No handle associations on destination chat %ld, copying from %ld", v47, 0x16u);
            MEMORY[0x1B8CB0E70](v47, -1, -1);
          }

          sub_1B7CD5AE8(v28, v81);
        }

        --v27;
      }

      while (v27);
    }

    if (*(&v79 + 1))
    {

      v48 = sub_1B7CFE400();
      v49 = sub_1B7CFEEE0();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *&v86 = v51;
        *v50 = 136315138;
        *(v50 + 4) = sub_1B7AED1B8(v79, *(&v79 + 1), &v86);
        _os_log_impl(&dword_1B7AD5000, v48, v49, " ==> renaming to %s", v50, 0xCu);
        sub_1B7AE9168(v51);
        MEMORY[0x1B8CB0E70](v51, -1, -1);
        MEMORY[0x1B8CB0E70](v50, -1, -1);
      }

      v52 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v54 = v52[2];
      v53 = v52[3];
      if (v54 >= v53 >> 1)
      {
        v52 = sub_1B7AE3A9C((v53 > 1), v54 + 1, 1, v52);
      }

      v87 = MEMORY[0x1E69E6158];
      v88 = &off_1F2FA8B58;
      v86 = v79;
      v52[2] = v54 + 1;
      sub_1B7AE910C(&v86, &v52[5 * v54 + 4]);

      v56 = v52[2];
      v55 = v52[3];
      if (v56 >= v55 >> 1)
      {
        v52 = sub_1B7AE3A9C((v55 > 1), v56 + 1, 1, v52);
      }

      v88 = &off_1F2FA89F8;
      v87 = MEMORY[0x1E69E6530];
      *&v86 = a2;
      v52[2] = v56 + 1;
      sub_1B7AE910C(&v86, &v52[5 * v56 + 4]);
      sub_1B7AE3B2C(0xD00000000000002CLL, 0x80000001B7D5B610, 0);
      sub_1B7AF3FE4(v52);

      v76 = v80;
    }

    else
    {
      v76 = v80;
    }

    sub_1B7CD5DA8(a2, v91);

    v57 = v78;
    if (v78)
    {
      v58 = (v76 + 32);
      do
      {
        v60 = *v58++;
        v59 = v60;
        v61 = sub_1B7CFE400();
        v62 = sub_1B7CFEEE0();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 134217984;
          *(v63 + 4) = v59;
          _os_log_impl(&dword_1B7AD5000, v61, v62, " ==> executing: deleting chat with ROWID %ld", v63, 0xCu);
          MEMORY[0x1B8CB0E70](v63, -1, -1);
        }

        v64 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v66 = v64[2];
        v65 = v64[3];
        if (v66 >= v65 >> 1)
        {
          v64 = sub_1B7AE3A9C((v65 > 1), v66 + 1, 1, v64);
        }

        v88 = &off_1F2FA89F8;
        v87 = MEMORY[0x1E69E6530];
        *&v86 = v59;
        v64[2] = v66 + 1;
        sub_1B7AE910C(&v86, &v64[5 * v66 + 4]);
        sub_1B7AE3B2C(0xD000000000000022, 0x80000001B7D51030, 0);
        sub_1B7AF3FE4(v64);

        --v57;
      }

      while (v57);
    }

    v67 = sub_1B7CFE400();
    v68 = sub_1B7CFEED0();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v84[0] = v70;
      *v69 = 136315650;
      v71 = MEMORY[0x1B8CADE30](v80, MEMORY[0x1E69E6530]);
      v73 = sub_1B7AED1B8(v71, v72, v84);

      *(v69 + 4) = v73;
      *(v69 + 12) = 2048;
      *(v69 + 14) = v81;
      *(v69 + 22) = 2080;
      v74 = 0xE000000000000000;
      if (*(&v79 + 1))
      {
        *&v86 = 0;
        *(&v86 + 1) = 0xE000000000000000;
        sub_1B7CFF210();

        *&v86 = 0xD000000000000015;
        *(&v86 + 1) = 0x80000001B7D5B5F0;

        MEMORY[0x1B8CADCA0](v79, *(&v79 + 1));

        v74 = *(&v86 + 1);
        v75 = v86;
      }

      else
      {
        v75 = 0;
      }

      v77 = sub_1B7AED1B8(v75, v74, v84);

      *(v69 + 24) = v77;
      _os_log_impl(&dword_1B7AD5000, v67, v68, "Collapsed chats with rowids %s into chat with rowid %ld%s", v69, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB0E70](v70, -1, -1);
      MEMORY[0x1B8CB0E70](v69, -1, -1);
    }
  }
}

void sub_1B7CD3FA4()
{
  v2 = *(v0 + 8);
  if ((v2 & 1) != 0 || (v3 = [objc_opt_self() sharedFeatureFlags], v4 = objc_msgSend(v3, sel__isOneChatOptedOut), v3, (v4 & 1) == 0))
  {
    v5 = *v0;
    v6 = sub_1B7AED4F8(*v0);
    if (!v1)
    {
      if (v6)
      {
        if (qword_1EBA50EB8 != -1)
        {
          swift_once();
        }

        v7 = sub_1B7CFE420();
        sub_1B7AD9040(v7, qword_1EBA5DA20);
        v8 = sub_1B7CFE400();
        v9 = sub_1B7CFEF00();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&dword_1B7AD5000, v8, v9, "Migrating chat table to legacy chat slices", v10, 2u);
          MEMORY[0x1B8CB0E70](v10, -1, -1);
        }

        v11 = MEMORY[0x1E69E7CC0];
        v26 = sub_1B7C23CF8(MEMORY[0x1E69E7CC0]);
        v25 = v11;

        v12 = sub_1B7AE3B2C(0xD0000000000000F4, 0x80000001B7D5B240, 0);
        sub_1B7C94D70(MEMORY[0x1E69E7CC0], v12, &v26, &v25);

        if (*(v25 + 16))
        {
          v17 = sub_1B7C2F27C(v25);
          sub_1B7C1F044();
          v18 = swift_allocError();
          *v19 = v17;
          sub_1B7C4C33C(v18, 0xD000000000000010, 0x80000001B7D5B340, v2);
        }

        v20 = sub_1B7CFE400();
        v21 = sub_1B7CFEF00();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_1B7AD5000, v20, v21, "Migrating chat table to merged chats", v22, 2u);
          MEMORY[0x1B8CB0E70](v22, -1, -1);
        }

        sub_1B7CD447C(v5, v2);

        sub_1B7CD2F6C(1, 0x7372655674616863, 0xEB000000006E6F69);

        v23 = sub_1B7CFEA30();
        v24 = sub_1B7CFEA30();
        IMSetDomainIntForKey();
      }

      else
      {
        if (qword_1EBA50EB8 != -1)
        {
          swift_once();
        }

        v13 = sub_1B7CFE420();
        sub_1B7AD9040(v13, qword_1EBA5DA20);
        v14 = sub_1B7CFE400();
        v15 = sub_1B7CFEED0();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_1B7AD5000, v14, v15, "Chat table doesn't need merge migration", v16, 2u);
          MEMORY[0x1B8CB0E70](v16, -1, -1);
        }
      }
    }
  }
}

void sub_1B7CD447C(uint64_t a1, char a2)
{
  v70 = &v69;
  v5 = MEMORY[0x1E69E7CC0];
  sub_1B7AF45D8(0xD000000000000019, 0x80000001B7D5B3A0, MEMORY[0x1E69E7CC0], 0, &v70);
  if (!v2)
  {
    v54 = a2;
    v52 = 0;
    v51 = v69;
    v61 = a1;
LABEL_3:
    *&v66 = sub_1B7CFEA60();
    *(&v66 + 1) = v6;

    MEMORY[0x1B8CADCA0](59, 0xE100000000000000);

    v7 = v66;

    v8 = sub_1B7AE3A9C(0, 1, 1, v5);
    v10 = v8[2];
    v9 = v8[3];
    if (v10 >= v9 >> 1)
    {
      v8 = sub_1B7AE3A9C((v9 > 1), v10 + 1, 1, v8);
    }

    v67 = MEMORY[0x1E69E6158];
    v68 = &off_1F2FA8B58;
    v66 = v7;
    v8[2] = v10 + 1;
    sub_1B7AE910C(&v66, &v8[5 * v10 + 4]);
    v11 = sub_1B7AE3B2C(0xD00000000000007DLL, 0x80000001B7D5B3C0, 0);
    v5 = MEMORY[0x1E69E7CC0];
    *&v66 = MEMORY[0x1E69E7CC0];

    sub_1B7AF1A7C(v8, v11, &v66, v11);

    v59 = v66;
    v55 = *(v66 + 16);
    if (v55)
    {
      if (!__OFADD__(v52, 1))
      {
        if (v51 < v52 + 1)
        {

          sub_1B7CD6150();
          swift_allocError();
          *v50 = v51;
          *(v50 + 8) = 0;
          swift_willThrow();
          return;
        }

        ++v52;
        v12 = 0;
        v58 = v66 + 32;
        while (v12 < *(v59 + 16))
        {
          v60 = v12;
          v13 = v58 + 16 * v12;
          v14 = *(v13 + 8);
          log = *v13;
          swift_bridgeObjectRetain_n();
          v15 = sub_1B7AE3A9C(0, 1, 1, v5);
          v17 = v15[2];
          v16 = v15[3];
          if (v17 >= v16 >> 1)
          {
            v15 = sub_1B7AE3A9C((v16 > 1), v17 + 1, 1, v15);
          }

          v67 = MEMORY[0x1E69E6158];
          v68 = &off_1F2FA8B58;
          *&v66 = log;
          *(&v66 + 1) = v14;
          v15[2] = v17 + 1;
          sub_1B7AE910C(&v66, &v15[5 * v17 + 4]);
          v18 = sub_1B7AE3B2C(0xD0000000000000C8, 0x80000001B7D5B440, 0);
          *&v66 = v5;

          sub_1B7AF2C24(v15, v18, &v66, v18);

          v19 = v66;
          v20 = *(v66 + 16);
          if (v20)
          {
            v21 = *(v66 + 32);
            v65 = &v64;
            v22 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v24 = v22[2];
            v23 = v22[3];
            if (v24 >= v23 >> 1)
            {
              v22 = sub_1B7AE3A9C((v23 > 1), v24 + 1, 1, v22);
            }

            v68 = &off_1F2FA89F8;
            v67 = MEMORY[0x1E69E6530];
            *&v66 = v21;
            v22[2] = v24 + 1;
            v25 = v22;
            sub_1B7AE910C(&v66, &v22[5 * v24 + 4]);
            sub_1B7AF45D8(0xD000000000000028, 0x80000001B7D5B510, v25, 0, &v65);

            if ((v64 & 0x8000000000000000) != 0)
            {
              goto LABEL_48;
            }

            if (v64 > 0xFF)
            {
              goto LABEL_49;
            }

            v26 = sub_1B7CFEA30();
            v27 = IMCopyAnyServiceGUIDForChat();

            if (!v27)
            {
              goto LABEL_51;
            }

            v28 = sub_1B7CFEA60();
            v30 = v29;

            sub_1B7CD4D9C(v28, v30);
            v33 = v32;
            if (v32)
            {
              v34 = *(v19 + 32);
            }

            else
            {
              v34 = v31;
            }

            if (qword_1EBA50EB8 != -1)
            {
              swift_once();
            }

            v56 = v28;
            v57 = v30;
            v35 = sub_1B7CFE420();
            sub_1B7AD9040(v35, qword_1EBA5DA20);

            v36 = sub_1B7CFE400();
            v37 = sub_1B7CFEEE0();

            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              v53 = swift_slowAlloc();
              *&v66 = v53;
              *v38 = 134218498;
              *(v38 + 4) = v34;
              *(v38 + 12) = 2080;
              v39 = sub_1B7AED1B8(log, v14, &v66);
              loga = v36;
              v40 = v39;

              *(v38 + 14) = v40;
              *(v38 + 22) = 2080;
              if (v33)
              {
                v41 = 0xD000000000000010;
              }

              else
              {
                v41 = 0xD000000000000011;
              }

              if (v33)
              {
                v42 = "M chat WHERE ROWID =  ? ";
              }

              else
              {
                v42 = "no existing chat";
              }

              v43 = sub_1B7AED1B8(v41, v42 | 0x8000000000000000, &v66);

              *(v38 + 24) = v43;
              _os_log_impl(&dword_1B7AD5000, loga, v37, "Selected chat %ld as winner of %s (%s)", v38, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1B8CB0E70](v53, -1, -1);
              MEMORY[0x1B8CB0E70](v38, -1, -1);
            }

            else
            {
            }

            v44 = 32;
            v45 = MEMORY[0x1E69E7CC0];
            do
            {
              v48 = *(v19 + v44);
              if (v48 != v34)
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v66 = v45;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1B7C31320(0, *(v45 + 16) + 1, 1);
                  v45 = v66;
                }

                v47 = *(v45 + 16);
                v46 = *(v45 + 24);
                if (v47 >= v46 >> 1)
                {
                  sub_1B7C31320((v46 > 1), v47 + 1, 1);
                  v45 = v66;
                }

                *(v45 + 16) = v47 + 1;
                *(v45 + 8 * v47 + 32) = v48;
              }

              v44 += 8;
              --v20;
            }

            while (v20);

            sub_1B7CD3170(v45, v34, v56, v57, v61, v54 & 1);
          }

          else
          {
          }

          v12 = v60 + 1;
          v5 = MEMORY[0x1E69E7CC0];
          if (v60 + 1 == v55)
          {

            goto LABEL_3;
          }
        }

        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
      }

      __break(1u);
LABEL_51:
      __break(1u);
    }

    else
    {
    }
  }
}

void sub_1B7CD4D9C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SQLConnectionError(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v15;

  v8 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1B7AE3A9C((v9 > 1), v10 + 1, 1, v8);
  }

  v13 = MEMORY[0x1E69E6158];
  v14 = &off_1F2FA8B58;
  *&v12 = a1;
  *(&v12 + 1) = a2;
  v8[2] = v10 + 1;
  sub_1B7AE910C(&v12, &v8[5 * v10 + 4]);
  sub_1B7AF45D8(0xD000000000000037, 0x80000001B7D5B970, v8, 0, &v16);
  if (v2)
  {

    *&v12 = v2;
    v11 = v2;
    sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
    if (swift_dynamicCast())
    {
      if (swift_getEnumCaseMultiPayload() == 5)
      {

        return;
      }

      sub_1B7C19DBC(v7);
    }
  }

  else
  {
  }
}

double sub_1B7CD4F9C(uint64_t a1, uint64_t a2)
{
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B7CFE420();
  sub_1B7AD9040(v5, qword_1EBA5DA20);
  v6 = sub_1B7CFE400();
  v7 = sub_1B7CFEEE0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = a1;
    *(v8 + 12) = 2048;
    *(v8 + 14) = a2;
    _os_log_impl(&dword_1B7AD5000, v6, v7, " ==> executing: moving messages from chat %ld to chat %ld", v8, 0x16u);
    MEMORY[0x1B8CB0E70](v8, -1, -1);
  }

  v9 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1B7AE3A9C((v10 > 1), v11 + 1, 1, v9);
  }

  v13 = MEMORY[0x1E69E6530];
  v17 = MEMORY[0x1E69E6530];
  v18 = &off_1F2FA89F8;
  *&v16 = a2;
  v9[2] = v12;
  sub_1B7AE910C(&v16, &v9[5 * v11 + 4]);
  v14 = v9[3];
  if ((v11 + 2) > (v14 >> 1))
  {
    v9 = sub_1B7AE3A9C((v14 > 1), v11 + 2, 1, v9);
  }

  v17 = v13;
  v18 = &off_1F2FA89F8;
  *&v16 = a1;
  v9[2] = v11 + 2;
  sub_1B7AE910C(&v16, &v9[5 * v12 + 4]);
  sub_1B7AE3B2C(0xD000000000000050, 0x80000001B7D5B910, 0);
  if (!v2)
  {
    sub_1B7AF3FE4(v9);
  }

  return result;
}

double sub_1B7CD525C(uint64_t a1, uint64_t a2)
{
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B7CFE420();
  sub_1B7AD9040(v4, qword_1EBA5DA20);
  v5 = sub_1B7CFE400();
  v6 = sub_1B7CFEEE0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = a1;
    *(v7 + 12) = 2048;
    *(v7 + 14) = a2;
    _os_log_impl(&dword_1B7AD5000, v5, v6, " ==> executing: moving identifiers from chat %ld to chat %ld", v7, 0x16u);
    MEMORY[0x1B8CB0E70](v7, -1, -1);
  }

  v8 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = v8[2];
  v9 = v8[3];
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1B7AE3A9C((v9 > 1), v10 + 1, 1, v8);
  }

  v12 = MEMORY[0x1E69E6530];
  v19 = MEMORY[0x1E69E6530];
  v20 = &off_1F2FA89F8;
  *&v18 = a2;
  v8[2] = v11;
  sub_1B7AE910C(&v18, &v8[5 * v10 + 4]);
  v13 = v8[3];
  v14 = v10 + 2;
  if ((v10 + 2) > (v13 >> 1))
  {
    v8 = sub_1B7AE3A9C((v13 > 1), v10 + 2, 1, v8);
  }

  v19 = v12;
  v20 = &off_1F2FA89F8;
  *&v18 = a2;
  v8[2] = v14;
  sub_1B7AE910C(&v18, &v8[5 * v11 + 4]);
  v15 = v8[3];
  if ((v10 + 3) > (v15 >> 1))
  {
    v8 = sub_1B7AE3A9C((v15 > 1), v10 + 3, 1, v8);
  }

  v19 = v12;
  v20 = &off_1F2FA89F8;
  *&v18 = a1;
  v8[2] = v10 + 3;
  sub_1B7AE910C(&v18, &v8[5 * v14 + 4]);
  v16 = v21;
  sub_1B7AE3B2C(0xD00000000000016ALL, 0x80000001B7D5B7A0, 0);
  if (!v16)
  {
    sub_1B7AF3FE4(v8);
  }

  return result;
}

double sub_1B7CD5568(uint64_t a1, uint64_t a2)
{
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B7CFE420();
  sub_1B7AD9040(v5, qword_1EBA5DA20);
  v6 = sub_1B7CFE400();
  v7 = sub_1B7CFEEE0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = a1;
    *(v8 + 12) = 2048;
    *(v8 + 14) = a2;
    _os_log_impl(&dword_1B7AD5000, v6, v7, " ==> executing: moving sync chat slices from chat %ld to chat %ld", v8, 0x16u);
    MEMORY[0x1B8CB0E70](v8, -1, -1);
  }

  v9 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1B7AE3A9C((v10 > 1), v11 + 1, 1, v9);
  }

  v13 = MEMORY[0x1E69E6530];
  v17 = MEMORY[0x1E69E6530];
  v18 = &off_1F2FA89F8;
  *&v16 = a2;
  v9[2] = v12;
  sub_1B7AE910C(&v16, &v9[5 * v11 + 4]);
  v14 = v9[3];
  if ((v11 + 2) > (v14 >> 1))
  {
    v9 = sub_1B7AE3A9C((v14 > 1), v11 + 2, 1, v9);
  }

  v17 = v13;
  v18 = &off_1F2FA89F8;
  *&v16 = a1;
  v9[2] = v11 + 2;
  sub_1B7AE910C(&v16, &v9[5 * v12 + 4]);
  sub_1B7AE3B2C(0xD000000000000048, 0x80000001B7D5B750, 0);
  if (!v2)
  {
    sub_1B7AF3FE4(v9);
  }

  return result;
}

double sub_1B7CD5828(uint64_t a1, uint64_t a2)
{
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B7CFE420();
  sub_1B7AD9040(v5, qword_1EBA5DA20);
  v6 = sub_1B7CFE400();
  v7 = sub_1B7CFEEE0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = a1;
    *(v8 + 12) = 2048;
    *(v8 + 14) = a2;
    _os_log_impl(&dword_1B7AD5000, v6, v7, " ==> executing: moving chat services from chat %ld to chat %ld", v8, 0x16u);
    MEMORY[0x1B8CB0E70](v8, -1, -1);
  }

  v9 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1B7AE3A9C((v10 > 1), v11 + 1, 1, v9);
  }

  v13 = MEMORY[0x1E69E6530];
  v17 = MEMORY[0x1E69E6530];
  v18 = &off_1F2FA89F8;
  *&v16 = a2;
  v9[2] = v12;
  sub_1B7AE910C(&v16, &v9[5 * v11 + 4]);
  v14 = v9[3];
  if ((v11 + 2) > (v14 >> 1))
  {
    v9 = sub_1B7AE3A9C((v14 > 1), v11 + 2, 1, v9);
  }

  v17 = v13;
  v18 = &off_1F2FA89F8;
  *&v16 = a1;
  v9[2] = v11 + 2;
  sub_1B7AE910C(&v16, &v9[5 * v12 + 4]);
  sub_1B7AE3B2C(0xD000000000000045, 0x80000001B7D5B700, 0);
  if (!v2)
  {
    sub_1B7AF3FE4(v9);
  }

  return result;
}

double sub_1B7CD5AE8(uint64_t a1, uint64_t a2)
{
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B7CFE420();
  sub_1B7AD9040(v5, qword_1EBA5DA20);
  v6 = sub_1B7CFE400();
  v7 = sub_1B7CFEEE0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = a1;
    *(v8 + 12) = 2048;
    *(v8 + 14) = a2;
    _os_log_impl(&dword_1B7AD5000, v6, v7, " ==> executing: copy handle associates from chat %ld to chat %ld", v8, 0x16u);
    MEMORY[0x1B8CB0E70](v8, -1, -1);
  }

  v9 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1B7AE3A9C((v10 > 1), v11 + 1, 1, v9);
  }

  v13 = MEMORY[0x1E69E6530];
  v17 = MEMORY[0x1E69E6530];
  v18 = &off_1F2FA89F8;
  *&v16 = a2;
  v9[2] = v12;
  sub_1B7AE910C(&v16, &v9[5 * v11 + 4]);
  v14 = v9[3];
  if ((v11 + 2) > (v14 >> 1))
  {
    v9 = sub_1B7AE3A9C((v14 > 1), v11 + 2, 1, v9);
  }

  v17 = v13;
  v18 = &off_1F2FA89F8;
  *&v16 = a1;
  v9[2] = v11 + 2;
  sub_1B7AE910C(&v16, &v9[5 * v12 + 4]);
  sub_1B7AE3B2C(0xD00000000000007BLL, 0x80000001B7D5B680, 0);
  if (!v2)
  {
    sub_1B7AF3FE4(v9);
  }

  return result;
}

uint64_t sub_1B7CD5DA8(uint64_t a1, uint64_t a2)
{
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B7CFE420();
  sub_1B7AD9040(v5, qword_1EBA5DA20);

  v6 = sub_1B7CFE400();
  v7 = sub_1B7CFEEE0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = a1;
    *(v8 + 12) = 2048;
    *(v8 + 14) = *(a2 + 16);

    _os_log_impl(&dword_1B7AD5000, v6, v7, " ==> executing: update chat %ld with %ld properties", v8, 0x16u);
    MEMORY[0x1B8CB0E70](v8, -1, -1);
  }

  else
  {
  }

  v9 = sub_1B7CFE980();
  v10 = JWEncodeDictionary();

  if (v10)
  {
    v11 = sub_1B7CFE020();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xF000000000000000;
  }

  sub_1B7C3D3CC(v11, v13);
  v14 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v16 = v14[2];
  v15 = v14[3];
  v17 = v16 + 1;
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1B7AE3A9C((v15 > 1), v16 + 1, 1, v14);
  }

  v22 = sub_1B7C107FC(&qword_1EBA52408, qword_1B7D13650);
  v23 = sub_1B7C3D464();
  *&v21 = v11;
  *(&v21 + 1) = v13;
  v14[2] = v17;
  sub_1B7AE910C(&v21, &v14[5 * v16 + 4]);
  v18 = v14[3];
  v19 = v16 + 2;
  if (v19 > (v18 >> 1))
  {
    v14 = sub_1B7AE3A9C((v18 > 1), v19, 1, v14);
  }

  v22 = MEMORY[0x1E69E6530];
  v23 = &off_1F2FA89F8;
  *&v21 = a1;
  v14[2] = v19;
  sub_1B7AE910C(&v21, &v14[5 * v17 + 4]);
  sub_1B7AE3B2C(0xD000000000000032, 0x80000001B7D5B640, 0);
  if (!v2)
  {
    sub_1B7AF3FE4(v14);
  }

  return sub_1B7C2049C(v11, v13);
}

unint64_t sub_1B7CD6150()
{
  result = qword_1EBA53950;
  if (!qword_1EBA53950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53950);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MergedChatMigrator.MigrationError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MergedChatMigrator.MigrationError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1B7CD6204(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}