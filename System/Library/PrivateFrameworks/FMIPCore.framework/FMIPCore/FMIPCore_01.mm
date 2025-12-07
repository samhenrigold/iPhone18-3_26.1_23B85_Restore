unint64_t sub_24A68B6BC()
{
  result = qword_27EF5F840;
  if (!qword_27EF5F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F840);
  }

  return result;
}

unint64_t sub_24A68B724()
{
  result = qword_27EF5F828;
  if (!qword_27EF5F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F828);
  }

  return result;
}

unint64_t sub_24A68B77C()
{
  result = qword_27EF5F830;
  if (!qword_27EF5F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F830);
  }

  return result;
}

unint64_t sub_24A68B7E4()
{
  result = qword_27EF5F818;
  if (!qword_27EF5F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F818);
  }

  return result;
}

unint64_t sub_24A68B83C()
{
  result = qword_27EF5F820;
  if (!qword_27EF5F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F820);
  }

  return result;
}

unint64_t sub_24A68B8A4()
{
  result = qword_27EF5F808;
  if (!qword_27EF5F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F808);
  }

  return result;
}

unint64_t sub_24A68B8FC()
{
  result = qword_27EF5F810;
  if (!qword_27EF5F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F810);
  }

  return result;
}

unint64_t sub_24A68B964()
{
  result = qword_27EF5F7F8;
  if (!qword_27EF5F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F7F8);
  }

  return result;
}

unint64_t sub_24A68B9BC()
{
  result = qword_27EF5F800;
  if (!qword_27EF5F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F800);
  }

  return result;
}

unint64_t sub_24A68BA24()
{
  result = qword_27EF5F848;
  if (!qword_27EF5F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F848);
  }

  return result;
}

unint64_t sub_24A68BA7C()
{
  result = qword_27EF5F850;
  if (!qword_27EF5F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F850);
  }

  return result;
}

unint64_t sub_24A68BAD0()
{
  result = qword_27EF5F680;
  if (!qword_27EF5F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F680);
  }

  return result;
}

uint64_t sub_24A68BB24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24A68BB4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24A68BB4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6E6F63736964 && a2 == 0xEC00000064657463;
  if (v4 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657463656E6E6F63 && a2 == 0xE900000000000064 || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465686361747461 && a2 == 0xE800000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465686361746564 && a2 == 0xE800000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465746365746564 && a2 == 0xEE0079627261654ELL)
  {

    return 4;
  }

  else
  {
    v6 = sub_24A82DC04();

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

uint64_t getEnumTagSinglePayload for FMIPPartType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24A68BDB4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24A68BDE8()
{
  result = qword_27EF5F6A8;
  if (!qword_27EF5F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F6A8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FMIPPartType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t FMIPItemGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  v43 = sub_24A6BBA94(&qword_27EF5DBD0, &qword_24A835EE0);
  v7 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v9 = &v30 - v8;
  v10 = type metadata accessor for FMIPItemGroup(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v44 = a1;
  sub_24A67DF6C(a1, v13);
  sub_24A68C708();
  v42 = v9;
  sub_24A82DD64();
  if (!v2)
  {
    v40 = v12;
    v14 = v7;
    v15 = v41;
    v45 = 0;
    sub_24A70B3A4();
    sub_24A82DA84();
    v16 = v46;
    LOBYTE(v46) = 1;
    v37 = sub_24A82DA44();
    v38 = v16;
    v39 = v17;
    sub_24A6BBA94(&qword_27EF5DA38, &qword_24A8352C8);
    v45 = 2;
    sub_24A70B3F8();
    sub_24A82DA84();
    v36 = v46;
    sub_24A6BBA94(&qword_27EF5DBE8, &qword_24A835EE8);
    v45 = 3;
    sub_24A714D4C(&qword_27EF5DBF0, sub_24A70B4AC, MEMORY[0x277D83B70]);
    sub_24A82DA84();
    v35 = v46;
    sub_24A6BBA94(&qword_27EF5DC00, &qword_24A835EF0);
    v45 = 4;
    sub_24A70B560();
    sub_24A82DA84();
    v34 = v46;
    sub_24A6BBA94(&qword_27EF5DC18, &qword_24A836D50);
    v45 = 5;
    sub_24A70B61C();
    sub_24A82DA84();
    v33 = v46;
    sub_24A6BBA94(&qword_27EF5DC28, &qword_24A835EF8);
    v45 = 6;
    sub_24A70B6D0(&qword_27EF5DC30, sub_24A70B748, MEMORY[0x277D83B70]);
    sub_24A82DA84();
    v19 = v46;
    LOBYTE(v46) = 7;
    v30 = sub_24A82DA44();
    v31 = v20;
    v32 = v19;
    LOBYTE(v46) = 8;
    v21 = sub_24A82DA74();
    v22 = v40;
    v23 = v37;
    *v40 = v38;
    v22[1] = v23;
    v22[2] = v39;
    *(v22 + *(v10 + 52)) = v36;
    v24 = v32;
    v22[5] = v33;
    v22[6] = v24;
    v25 = v34;
    v22[8] = v21;
    v22[9] = v25;
    v26 = v31;
    v22[3] = v30;
    v22[4] = v26;
    v22[7] = v35;
    v27 = type metadata accessor for FMIPItemLostModeMetadata(0);
    LOBYTE(v46) = 9;
    sub_24A67EFC0(&qword_27EF5DC40, type metadata accessor for FMIPItemLostModeMetadata, &protocol conformance descriptor for FMIPItemLostModeMetadata);
    sub_24A82DA84();
    (*(v14 + 8))(v42, v43);
    (*(*(v27 - 8) + 56))(v6, 0, 1, v27);
    v28 = *(v10 + 48);
    v29 = v40;
    sub_24A70B7FC(v6, v40 + v28);
    sub_24A6A2328(v29, v15, type metadata accessor for FMIPItemGroup);
  }

  return sub_24A6876E8(v44);
}

unint64_t sub_24A68C65C()
{
  result = qword_27EF5DCE8;
  if (!qword_27EF5DCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DCE8);
  }

  return result;
}

unint64_t sub_24A68C6B4()
{
  result = qword_27EF5DCF0;
  if (!qword_27EF5DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DCF0);
  }

  return result;
}

unint64_t sub_24A68C708()
{
  result = qword_27EF5DBD8;
  if (!qword_27EF5DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DBD8);
  }

  return result;
}

uint64_t sub_24A68C770(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

FMIPCore::FMIPBatteryStatus_optional __swiftcall FMIPBatteryStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24A68C87C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24A68C8EC()
{
  v0 = objc_opt_self();
  v1 = sub_24A82CF94();
  v2 = sub_24A82CF94();
  LOBYTE(v0) = [v0 BOOLForKey:v1 inDomain:v2];

  byte_27EF5DEF1 = v0;
}

uint64_t sub_24A68C9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A82CA34();
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_24A68CA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24A82CA34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24A68CB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A82CA34();
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_24A68CC0C()
{
  v0 = objc_opt_self();
  v1 = sub_24A82CF94();
  v2 = sub_24A82CF94();
  LOBYTE(v0) = [v0 BOOLForKey:v1 inDomain:v2];

  byte_27EF5DEF2 = v0;
}

uint64_t sub_24A68CCC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

unint64_t sub_24A68CD84()
{
  result = qword_27EF5F290;
  if (!qword_27EF5F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F290);
  }

  return result;
}

unint64_t sub_24A68CE38()
{
  result = qword_27EF5F3B0;
  if (!qword_27EF5F3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F3B0);
  }

  return result;
}

uint64_t sub_24A68CE8C@<X0>(char *a2@<X8>)
{
  v3 = sub_24A82D9C4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t FMIPDevice.debugDescription.getter()
{
  v1 = v0;
  *&v45 = 0;
  *(&v45 + 1) = 0xE000000000000000;
  sub_24A82D854();

  v47 = 0xD000000000000019;
  v48 = 0x800000024A849E60;
  v2 = *v0;
  v3 = v1[1];

  v4 = sub_24A68D464(10, v2, v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x24C21C960](v4, v6, v8, v10);
  v13 = v12;

  MEMORY[0x24C21C9E0](v11, v13);

  MEMORY[0x24C21C9E0](0x3A656D616E20, 0xE600000000000000);
  MEMORY[0x24C21C9E0](v1[8], v1[9]);
  MEMORY[0x24C21C9E0](0x6F697461636F6C20, 0xEA00000000003A6ELL);
  *v44 = v1[32];
  *&v44[8] = *(v1 + 33);
  v14 = v1[35];
  v43 = *(v1 + 18);
  v41 = v1[27];
  v42 = v14;
  v15 = *(type metadata accessor for FMIPDevice(0) + 128);
  v16 = v43;
  v17 = *&v44[8];
  sub_24A7DC368(v44, &v42, (v41 & 0x20) != 0, v1 + v15, &v45);

  *v44 = v45;
  *&v44[16] = v46;
  sub_24A6BBA94(&qword_27EF5EA68, &qword_24A839E10);
  v18 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v18);

  v20 = v47;
  v19 = v48;
  *&v45 = 0;
  *(&v45 + 1) = 0xE000000000000000;
  sub_24A82D854();

  *&v45 = 0x3A6C65646F6DLL;
  *(&v45 + 1) = 0xE600000000000000;
  MEMORY[0x24C21C9E0](v1[15], v1[16]);
  MEMORY[0x24C21C9E0](0x6F6765746163202CLL, 0xEB000000003A7972);
  MEMORY[0x24C21C9E0](v1[13], v1[14]);
  MEMORY[0x24C21C9E0](0xD000000000000013, 0x800000024A849E80);
  MEMORY[0x24C21C9E0](v1[4], v1[5]);
  MEMORY[0x24C21C9E0](8236, 0xE200000000000000);
  v21 = v45;
  *&v45 = v20;
  *(&v45 + 1) = v19;

  MEMORY[0x24C21C9E0](v21, *(&v21 + 1));

  v22 = v45;
  *&v45 = 0;
  *(&v45 + 1) = 0xE000000000000000;
  sub_24A82D854();

  strcpy(&v45, "hasLocation: ");
  HIWORD(v45) = -4864;
  v23 = v1[33];
  if (v23)
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (v23)
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v24, v25);

  MEMORY[0x24C21C9E0](0xD00000000000001ALL, 0x800000024A849EA0);
  v26 = v1[36];
  if (v26)
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (v26)
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v27, v28);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  v29 = v45;
  v45 = v22;

  MEMORY[0x24C21C9E0](v29, *(&v29 + 1));

  v30 = v45;
  *&v45 = 0;
  *(&v45 + 1) = 0xE000000000000000;
  sub_24A82D854();

  *&v45 = 0x676E697461636F6CLL;
  *(&v45 + 1) = 0xEA0000000000203ALL;
  if ((v41 & 0x10) != 0)
  {
    v31 = 1702195828;
  }

  else
  {
    v31 = 0x65736C6166;
  }

  if ((v41 & 0x10) != 0)
  {
    v32 = 0xE400000000000000;
  }

  else
  {
    v32 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v31, v32);

  MEMORY[0x24C21C9E0](0xD000000000000016, 0x800000024A849EC0);
  if ((v41 & 0x800) != 0)
  {
    v33 = 1702195828;
  }

  else
  {
    v33 = 0x65736C6166;
  }

  if ((v41 & 0x800) != 0)
  {
    v34 = 0xE400000000000000;
  }

  else
  {
    v34 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v33, v34);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  v35 = v45;
  v45 = v30;

  MEMORY[0x24C21C9E0](v35, *(&v35 + 1));

  v36 = v45;
  *&v45 = 0;
  *(&v45 + 1) = 0xE000000000000000;
  sub_24A82D854();

  *&v45 = 0xD000000000000015;
  *(&v45 + 1) = 0x800000024A849EE0;
  v37 = v1[31];
  if (v37)
  {
    v37 = *(v37 + 16);
  }

  *v44 = v37;
  v38 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v38);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  v39 = v45;
  v45 = v36;

  MEMORY[0x24C21C9E0](v39, *(&v39 + 1));

  return v45;
}

uint64_t sub_24A68D464(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_24A82D0C4();

    return sub_24A82D1A4();
  }

  return result;
}

uint64_t sub_24A68D510(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24A68D558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A68D5C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A68D628(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A68D690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A68D6F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A68D760()
{
  v1 = *v0;
  v2 = 0x6954657461657263;
  v3 = 0x7865547472656C61;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F43737574617473;
  if (v1 != 1)
  {
    v5 = 0x7469547472656C61;
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

uint64_t storeEnumTagSinglePayload for FMIPSafeLocation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPSafeLocation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

FMIPCore::FMIPActionStatus_optional __swiftcall FMIPActionStatus.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > 210)
  {
    if (rawValue <= 2199)
    {
      if (rawValue > 229)
      {
        if (rawValue == 230)
        {
          *v1 = 10;
          return rawValue;
        }

        if (rawValue == 501)
        {
          *v1 = 12;
          return rawValue;
        }
      }

      else
      {
        if (rawValue == 211)
        {
          *v1 = 9;
          return rawValue;
        }

        if (rawValue == 220)
        {
          *v1 = 11;
          return rawValue;
        }
      }
    }

    else if (rawValue <= 2203)
    {
      if (rawValue == 2200)
      {
        *v1 = 13;
        return rawValue;
      }

      if (rawValue == 2201)
      {
        *v1 = 14;
        return rawValue;
      }
    }

    else
    {
      switch(rawValue)
      {
        case 2204:
          *v1 = 15;
          return rawValue;
        case 2403:
          *v1 = 16;
          return rawValue;
        case 2406:
          *v1 = 17;
          return rawValue;
      }
    }

    goto LABEL_43;
  }

  if (rawValue <= 204)
  {
    if (rawValue > 199)
    {
      if (rawValue == 200)
      {
        *v1 = 2;
        return rawValue;
      }

      if (rawValue == 203)
      {
        *v1 = 3;
        return rawValue;
      }
    }

    else
    {
      if (rawValue == -1)
      {
        *v1 = 0;
        return rawValue;
      }

      if (!rawValue)
      {
        *v1 = 1;
        return rawValue;
      }
    }

    goto LABEL_43;
  }

  if (rawValue > 206)
  {
    switch(rawValue)
    {
      case 207:
        *v1 = 6;
        return rawValue;
      case 208:
        *v1 = 7;
        return rawValue;
      case 209:
        *v1 = 8;
        return rawValue;
    }

LABEL_43:
    *v1 = 18;
    return rawValue;
  }

  if (rawValue == 205)
  {
    *v1 = 4;
  }

  else
  {
    *v1 = 5;
  }

  return rawValue;
}

unint64_t FMIPPlaySoundMetadata.debugDescription.getter()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = type metadata accessor for FMIPPlaySoundMetadata(0);
  v4 = sub_24A82C994();
  v5 = [v2 localizedStringFromDate:v4 dateStyle:1 timeStyle:4];

  v6 = sub_24A82CFC4();
  v8 = v7;

  sub_24A82D854();

  v9 = FMIPActionStatus.description.getter();
  MEMORY[0x24C21C9E0](v9);

  MEMORY[0x24C21C9E0](0x617473656D697420, 0xEC000000203A706DLL);
  MEMORY[0x24C21C9E0](v6, v8);

  MEMORY[0x24C21C9E0](0x203A7461203ELL, 0xE600000000000000);

  sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
  v10 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v10);

  MEMORY[0x24C21C9E0](0x203A6D6120, 0xE500000000000000);
  v11 = (v1 + *(v3 + 28));
  v12 = v11[1];
  if (v12)
  {
    v13 = *v11;
  }

  else
  {
    v13 = 0x21656E6F6E21;
  }

  if (v12)
  {
    v14 = v11[1];
  }

  else
  {
    v14 = 0xE600000000000000;
  }

  MEMORY[0x24C21C9E0](v13, v14);

  return 0xD000000000000020;
}

unint64_t FMIPActionStatus.description.getter()
{
  switch(*v0)
  {
    case 1:
    case 2:
    case 4:
      sub_24A82D854();

      v3 = 0xD000000000000013;
      break;
    case 3:
    case 0xD:
      sub_24A82D854();

      v3 = 0xD00000000000001ELL;
      break;
    case 5:
      sub_24A82D854();

      v3 = 0xD000000000000012;
      break;
    case 6:
    case 7:
    case 0xB:
      sub_24A82D854();

      v3 = 0xD00000000000001FLL;
      break;
    case 8:
      sub_24A82D854();

      v3 = 0xD000000000000023;
      break;
    case 9:
    case 0xE:
      sub_24A82D854();

      v3 = 0xD000000000000025;
      break;
    case 0xA:
      sub_24A82D854();

      v3 = 0xD000000000000019;
      break;
    case 0xC:
      sub_24A82D854();

      v3 = 0xD00000000000001ALL;
      break;
    case 0xF:
      sub_24A82D854();

      v3 = 0xD000000000000020;
      break;
    case 0x10:
      sub_24A82D854();

      v3 = 0xD000000000000026;
      break;
    case 0x11:
      sub_24A82D854();

      v3 = 0xD000000000000028;
      break;
    default:
      sub_24A82D854();

      v3 = 0xD000000000000011;
      break;
  }

  v1 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v1);

  MEMORY[0x24C21C9E0](41, 0xE100000000000000);
  return v3;
}

uint64_t sub_24A68E2A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPPlaySoundMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FMIPAudioChannel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5D640, &qword_24A833A60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A68E7A8();
  sub_24A82DD64();
  if (!v2)
  {
    LOBYTE(v34[0]) = 0;
    v9 = sub_24A82DA44();
    v11 = v10;
    v33 = v9;
    LOBYTE(v34[0]) = 1;
    v12 = sub_24A82DA54();
    LOBYTE(v34[0]) = 2;
    v32 = sub_24A82DA74();
    LOBYTE(v34[0]) = 3;
    v13 = sub_24A82DA54();
    v38 = v32 != 0;
    v39 = v13 & 1;
    v40 = v12 & 1;
    v34[0] = v33;
    v34[1] = v11;
    v35 = v32 != 0;
    v36 = v12 & 1;
    v37 = v13 & 1;
    v30 = FMIPAudioChannel.debugDescription.getter();
    v16 = v15;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v17 = sub_24A82CDC4();
    sub_24A6797D0(v17, qword_281518F88);

    v18 = sub_24A82CD94();
    v19 = sub_24A82D4C4();
    v20 = v16;
    v21 = v19;
    v31 = v20;

    v29 = v21;
    v32 = v18;
    if (os_log_type_enabled(v18, v21))
    {
      v22 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v34[0] = v28;
      *v22 = 136315138;
      v30 = sub_24A68761C(v30, v31, v34);

      *(v22 + 4) = v30;
      _os_log_impl(&dword_24A675000, v32, v29, "FMIPAudioChannel: Initialized: %s", v22, 0xCu);
      v23 = v28;
      sub_24A6876E8(v28);
      MEMORY[0x24C21E1D0](v23, -1, -1);
      MEMORY[0x24C21E1D0](v22, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v8, v5);
    v24 = v38;
    v25 = v40;
    v26 = v39;
    *a2 = v33;
    *(a2 + 8) = v11;
    *(a2 + 16) = v24;
    *(a2 + 17) = v25;
    *(a2 + 18) = v26;
  }

  return sub_24A6876E8(a1);
}

unint64_t sub_24A68E6FC()
{
  result = qword_27EF5D660;
  if (!qword_27EF5D660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D660);
  }

  return result;
}

unint64_t sub_24A68E754()
{
  result = qword_27EF5D668;
  if (!qword_27EF5D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D668);
  }

  return result;
}

unint64_t sub_24A68E7A8()
{
  result = qword_27EF5D648;
  if (!qword_27EF5D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D648);
  }

  return result;
}

uint64_t sub_24A68E7FC()
{
  v1 = 1701667182;
  v2 = 0x6C62616C69617661;
  if (*v0 != 2)
  {
    v2 = 0x646574756DLL;
  }

  if (*v0)
  {
    v1 = 0x676E6979616C70;
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

uint64_t storeEnumTagSinglePayload for FMIPBatteryStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t FMIPAudioChannel.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  sub_24A82D854();

  MEMORY[0x24C21C9E0](v1, v2);
  MEMORY[0x24C21C9E0](0x62616C6961766120, 0xEB000000003A656CLL);
  if (v3)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v3)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v6, v7);

  MEMORY[0x24C21C9E0](0x676E6979616C7020, 0xE90000000000003ALL);
  if (v4)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v4)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v8, v9);

  MEMORY[0x24C21C9E0](0x3A646574756D20, 0xE700000000000000);
  if (v5)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v5)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v10, v11);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  return 0xD000000000000018;
}

__n128 sub_24A68EAA4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_24A68EAB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      v11 = v10 + 24;
      result = *v10;
      v12 = *v10 == *(v10 + 24) && *(v10 + 8) == *(v10 + 32);
      if (v12 || (result = sub_24A82DC04(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v10 + 24);
      v13 = *(v10 + 32);
      v15 = *(v10 + 40);
      v16 = *(v10 + 41);
      v17 = *(v10 + 42);
      v18 = *(v10 + 16);
      *v11 = *v10;
      *v10 = v14;
      *(v10 + 8) = v13;
      *(v10 + 16) = v15;
      *(v10 + 17) = v16;
      *(v10 + 18) = v17;
      v10 -= 24;
      *(v11 + 16) = v18;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A68EBCC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6470556C69616D65;
    v6 = 0x6C69616D65;
    if (a1 != 2)
    {
      v6 = 0x646E756F73;
    }

    if (a1)
    {
      v5 = 0x72624E72656E776FLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1954047348;
    v2 = 0x7478655472657375;
    if (a1 != 7)
    {
      v2 = 0x6954657461657263;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6F43737574617473;
    if (a1 != 4)
    {
      v3 = 0x74736F4C706F7473;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t storeEnumTagSinglePayload for FMIPDeviceImageVariant(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t FMIPDeviceLostModeMetadata.debugDescription.getter()
{
  v0 = objc_opt_self();
  type metadata accessor for FMIPDeviceLostModeMetadata(0);
  v1 = sub_24A82C994();
  v2 = [v0 localizedStringFromDate:v1 dateStyle:1 timeStyle:4];

  v3 = sub_24A82CFC4();
  v5 = v4;

  sub_24A82D854();

  v6 = FMIPActionStatus.description.getter();
  MEMORY[0x24C21C9E0](v6);

  MEMORY[0x24C21C9E0](0x617473656D697420, 0xEC000000203A706DLL);
  MEMORY[0x24C21C9E0](v3, v5);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  return 0xD000000000000025;
}

uint64_t sub_24A68EEF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_24A68F088(uint64_t a1, char *a2)
{
  v4 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  MEMORY[0x28223BE20](v4 - 8);
  v89 = &v81 - v5;
  v6 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  MEMORY[0x28223BE20](v6 - 8);
  v87 = &v81 - v7;
  v8 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v8 - 8);
  v86 = &v81 - v9;
  v10 = type metadata accessor for FMIPDevice(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v90 = &v81 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v83 = &v81 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v91 = &v81 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v81 - v21;
  v23 = *a2;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v24 = sub_24A82CDC4();
  v25 = sub_24A6797D0(v24, qword_281518F88);

  v88 = v25;
  v26 = sub_24A82CD94();
  v27 = sub_24A82D504();
  v28 = os_log_type_enabled(v26, v27);
  v96 = v22;
  v82 = v14;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v108[0] = v30;
    *v29 = 134218242;
    *(v29 + 4) = *(a1 + 16);

    *(v29 + 12) = 2080;
    LOBYTE(v103[0]) = v23;
    v31 = FMIPLocationType.rawValue.getter();
    v33 = sub_24A68761C(v31, v32, v108);

    *(v29 + 14) = v33;
    _os_log_impl(&dword_24A675000, v26, v27, "FMIPDataManager: updateDevicesLocations %ld type %s", v29, 0x16u);
    sub_24A6876E8(v30);
    v34 = v30;
    v14 = v82;
    MEMORY[0x24C21E1D0](v34, -1, -1);
    MEMORY[0x24C21E1D0](v29, -1, -1);
  }

  else
  {
  }

  v35 = v91;
  v36 = *(a1 + 16);
  v37 = v83;
  if (!v36)
  {
    return MEMORY[0x277D84F90];
  }

  sub_24A68808C(v108);
  v85 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v38 = a1 + v85;
  v84 = *(v11 + 72);
  v39 = MEMORY[0x277D84F90];
  *&v40 = 136315650;
  v81 = v40;
  v41 = v96;
  do
  {
    v94 = v38;
    v95 = v36;
    sub_24A68FE04(v38, v41, type metadata accessor for FMIPDevice);
    v107 = 0uLL;
    v106 = 0;
    v105 = 0uLL;
    v104 = 0;
    v42 = *(v41 + 264);
    if (v42)
    {
      LOBYTE(v101) = 16;
      FMIPLocation.init(location:type:)(v42, &v101, v103);
      v43 = v103[1];
      v44 = v103[2];
      v45 = 256;
      if (!BYTE1(v103[0]))
      {
        v45 = 0;
      }

      v46 = v45 | LOBYTE(v103[0]);
      v47 = 0x10000;
      if (!BYTE2(v103[0]))
      {
        v47 = 0;
      }

      v48 = v46 | v47 | (BYTE3(v103[0]) << 24);
      swift_beginAccess();
      v49 = v107;
      v106 = v48;
      *&v107 = v43;
      *(&v107 + 1) = v44;
      v41 = v96;
    }

    v50 = *(v41 + 288);
    if (v50)
    {
      LOBYTE(v101) = 16;
      FMIPLocation.init(location:type:)(v50, &v101, v103);
      v51 = v103[1];
      v52 = v103[2];
      v53 = 256;
      if (!BYTE1(v103[0]))
      {
        v53 = 0;
      }

      v54 = v53 | LOBYTE(v103[0]);
      v55 = 0x10000;
      if (!BYTE2(v103[0]))
      {
        v55 = 0;
      }

      v56 = v54 | v55 | (BYTE3(v103[0]) << 24);
      swift_beginAccess();
      v57 = v105;
      v104 = v56;
      *&v105 = v51;
      *(&v105 + 1) = v52;
      v41 = v96;
    }

    sub_24A68FE04(v41, v35, type metadata accessor for FMIPDevice);
    v58 = sub_24A82CD94();
    v59 = sub_24A82D504();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v103[0] = v61;
      *v60 = v81;
      v62 = *(v35 + 64);
      v63 = *(v35 + 72);

      sub_24A69004C(v35, type metadata accessor for FMIPDevice);
      v64 = sub_24A68761C(v62, v63, v103);

      *(v60 + 4) = v64;
      v37 = v83;
      *(v60 + 12) = 1024;
      swift_beginAccess();
      *(v60 + 14) = v107 != 0;
      *(v60 + 18) = 1024;
      swift_beginAccess();
      *(v60 + 20) = v105 != 0;
      _os_log_impl(&dword_24A675000, v58, v59, "FMIPDataManager: updateDevicesLocations device %s location: %{BOOL}d, crowdsourcedLocation: %{BOOL}d", v60, 0x18u);
      sub_24A6876E8(v61);
      v65 = v61;
      v14 = v82;
      MEMORY[0x24C21E1D0](v65, -1, -1);
      v41 = v96;
      MEMORY[0x24C21E1D0](v60, -1, -1);
    }

    else
    {

      sub_24A69004C(v35, type metadata accessor for FMIPDevice);
    }

    v66 = v90;
    sub_24A68FE04(v41, v90, type metadata accessor for FMIPDevice);
    memcpy(v103, v108, sizeof(v103));
    swift_beginAccess();
    v101 = v104;
    v93 = v105;
    v102 = v105;
    swift_beginAccess();
    v99 = v106;
    v92 = v107;
    v100 = v107;
    v67 = type metadata accessor for FMIPItemGroup(0);
    memset(v98, 0, sizeof(v98));
    v68 = v86;
    (*(*(v67 - 8) + 56))(v86, 1, 1, v67);
    v97 = 7;
    v69 = type metadata accessor for FMIPDeviceConnectedState(0);
    v70 = v87;
    (*(*(v69 - 8) + 56))(v87, 1, 1, v69);
    v71 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
    v72 = v89;
    (*(*(v71 - 8) + 56))(v89, 1, 1, v71);
    v73 = v93;
    v74 = v92;
    v75 = v73;
    FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)(v66, 0, v103, &v101, &v99, v98, 2, v68, v37, 2u, 2, &v97, v70, v72);
    sub_24A68FE04(v37, v14, type metadata accessor for FMIPDevice);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_24A6924E0(0, v39[2] + 1, 1, v39);
    }

    v35 = v91;
    v77 = v39[2];
    v76 = v39[3];
    if (v77 >= v76 >> 1)
    {
      v78 = sub_24A6924E0((v76 > 1), v77 + 1, 1, v39);
    }

    else
    {
      v78 = v39;
    }

    sub_24A69004C(v37, type metadata accessor for FMIPDevice);
    v41 = v96;
    sub_24A69004C(v96, type metadata accessor for FMIPDevice);
    v39 = v78;
    v78[2] = v77 + 1;
    v79 = v84;
    sub_24A68D628(v14, v78 + v85 + v77 * v84, type metadata accessor for FMIPDevice);

    v38 = v94 + v79;
    v36 = v95 - 1;
  }

  while (v95 != 1);
  return v39;
}

void sub_24A68FA20(uint64_t a1)
{
  sub_24A68FA94(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24A68FA94(uint64_t a1)
{
  if (!qword_27EF5D9C8)
  {
    sub_24A82CAA4();
    v1 = sub_24A82D634();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF5D9C8);
    }
  }
}

unint64_t FMIPLocationType.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x756F7364776F7263;
      break;
    case 2:
      result = 5460039;
      break;
    case 3:
      result = 1768319319;
      break;
    case 4:
      result = 0x61636F4C65666173;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x656D69746C616572;
      break;
    case 7:
      result = 0x6F4C646572696170;
      break;
    case 8:
      result = 0x6E6E6F437473616CLL;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 0xA:
      result = 0xD000000000000010;
      break;
    case 0xB:
      result = 0x656E774F7261656ELL;
      break;
    case 0xC:
      result = 0xD000000000000018;
      break;
    case 0xD:
      result = 0x786F725072656570;
      break;
    case 0xE:
      result = 0x6C627550666C6573;
      break;
    case 0xF:
      result = 0xD000000000000014;
      break;
    case 0x10:
      result = 0x646568636163;
      break;
    case 0x11:
      result = 0x6552746E65746E69;
      break;
    case 0x12:
      result = 0xD000000000000014;
      break;
    case 0x13:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24A68FD9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A68FE04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A68FE6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A68FED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A68FF3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A68FFA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 168);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A68FFEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A69004C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A6900AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A69010C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A69016C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A6901E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  return result;
}

uint64_t FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, unint64_t *a4@<X3>, char **a5@<X4>, uint64_t (*a6)(uint64_t, uint64_t, uint64_t)@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, char a11, unsigned __int8 *a12, uint64_t a13, uint64_t a14)
{
  v305 = a8;
  LODWORD(v288) = a7;
  v314 = a3;
  v315 = a6;
  v301 = a2;
  v293 = a9;
  v312 = a12;
  v17 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v17 - 8);
  v277 = &v268 - v18;
  v19 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v292 = &v268 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v291 = &v268 - v22;
  v23 = type metadata accessor for FMIPItem(0);
  v270 = *(v23 - 8);
  MEMORY[0x28223BE20](v23 - 8);
  v271 = &v268 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  MEMORY[0x28223BE20](v25 - 8);
  v299 = &v268 - v26;
  v27 = sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
  MEMORY[0x28223BE20](v27 - 8);
  v269 = &v268 - v28;
  v29 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v304 = &v268 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v286 = &v268 - v32;
  v33 = type metadata accessor for FMIPItemGroup(0);
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v285 = &v268 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v278 = &v268 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v298 = &v268 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v276 = &v268 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v289 = &v268 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v287 = &v268 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v274 = &v268 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v295 = &v268 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v53 = &v268 - v52;
  MEMORY[0x28223BE20](v51);
  v55 = &v268 - v54;
  v56 = type metadata accessor for FMIPDevice(0);
  v57 = MEMORY[0x28223BE20](v56);
  v297 = &v268 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v57);
  v296 = (&v268 - v60);
  MEMORY[0x28223BE20](v59);
  v62 = &v268 - v61;
  memcpy(v323, v314, 0x120uLL);
  v63 = *a4;
  v64 = a4[1];
  v302 = a4[2];
  v303 = v63;
  v65 = *a5;
  v66 = a5[1];
  v283 = a5[2];
  v284 = v65;
  v67 = *(v315 + 1);
  v309 = *v315;
  v310 = v64;
  v314 = v67;
  v68 = *(v315 + 2);
  v307 = v62;
  v308 = v68;
  LODWORD(v300) = *v312;
  v290 = *(v56 + 140);
  *(v290 + v62) = 1;
  sub_24A67E964(v305, v53, &unk_27EF5E0B0, &qword_24A8338B0);
  v69 = *(v34 + 48);
  v70 = v69(v53, 1, v33);
  v312 = (v34 + 48);
  v315 = v69;
  v306 = v56;
  if (v70 == 1)
  {
    sub_24A67E964(a1 + *(v56 + 128), v55, &unk_27EF5E0B0, &qword_24A8338B0);
    if (v69(v53, 1, v33) != 1)
    {
      sub_24A67F378(v53, &unk_27EF5E0B0, &qword_24A8338B0);
    }
  }

  else
  {
    sub_24A7E11A4(v53, v55, type metadata accessor for FMIPItemGroup);
    (*(v34 + 56))(v55, 0, 1, v33);
  }

  v313 = v33;
  v71 = v295;
  if (!v310)
  {
    v72 = *(a1 + 288);
    v303 = *(a1 + 280);
    v302 = *(a1 + 296);
    v310 = v72;
    v73 = v72;
  }

  v74 = v306;
  if (v66)
  {
    v75 = v66;

    if (qword_27EF5CBC8 != -1)
    {
      swift_once();
    }

    v76 = byte_27EF5DEF1;

    v77 = v313;
    if (v76 == 1)
    {

      v308 = 0;
      v309 = 0;
      v314 = 0;
    }

    else
    {
      v308 = v283;
      v309 = v284;
      v314 = v66;
    }

    v78 = v307;
    v79 = v315;
  }

  else
  {
    if (qword_27EF5CBC8 != -1)
    {
      swift_once();
    }

    v78 = v307;
    v77 = v313;
    v79 = v315;
    if (byte_27EF5DEF1 == 1)
    {

      v308 = 0;
      v309 = 0;
      v314 = 0;
    }

    else if (!v314)
    {
      v87 = *(a1 + 264);
      v309 = *(a1 + 256);
      v308 = *(a1 + 272);
      v314 = v87;
      v88 = v87;
    }
  }

  v80 = *(a1 + 64);
  v81 = *(a1 + 72);
  v82 = HIBYTE(v81) & 0xF;
  if ((v81 & 0x2000000000000000) == 0)
  {
    v82 = v80 & 0xFFFFFFFFFFFFLL;
  }

  if (v82)
  {
  }

  else
  {
    v80 = 0;
    v81 = 0;
  }

  sub_24A67E964(v55, v71, &unk_27EF5E0B0, &qword_24A8338B0);
  v83 = v79(v71, 1, v77);
  v311 = v55;
  if (v83 == 1)
  {
LABEL_28:
    if (v81)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v84 = v285;
  sub_24A7E11A4(v71, v285, type metadata accessor for FMIPItemGroup);
  v80 = *(v84 + 24);
  v85 = *(v84 + 32);

  sub_24A692298(v84, type metadata accessor for FMIPItemGroup);
  v86 = HIBYTE(v85) & 0xF;
  if ((v85 & 0x2000000000000000) == 0)
  {
    v86 = v80 & 0xFFFFFFFFFFFFLL;
  }

  if (v86)
  {

    v81 = v85;
    goto LABEL_28;
  }

LABEL_33:
  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v90 = [objc_opt_self() bundleForClass_];
  v80 = sub_24A82C6F4();
  v81 = v91;

LABEL_34:
  v295 = v81;
  LODWORD(v285) = a10;
  v92 = *(a1 + 8);
  *v78 = *a1;
  *(v78 + 8) = v92;
  v284 = v92;
  *(v78 + 16) = *(a1 + 16);
  v282 = *(a1 + 24);
  *(v78 + 24) = v282;
  v93 = *(a1 + 48);
  v94 = *(a1 + 56);
  v281 = *(a1 + 40);
  *(v78 + 40) = v281;
  *(v78 + 48) = v93;
  v283 = v94;
  *(v78 + 56) = v94;
  *(v78 + 64) = v80;
  v275 = v80;
  *(v78 + 72) = v81;
  *(v78 + 80) = *(a1 + 80);
  *(v78 + 88) = *(a1 + 88);
  v280 = *(a1 + 96);
  *(v78 + 96) = v280;
  v95 = *(a1 + 120);
  v279 = *(a1 + 112);
  *(v78 + 112) = v279;
  *(v78 + 120) = v95;
  v96 = *(a1 + 176);
  v97 = *(a1 + 136);
  *(v78 + 128) = *(a1 + 128);
  *(v78 + 136) = v97;
  v98 = *(a1 + 152);
  *(v78 + 144) = *(a1 + 144);
  *(v78 + 152) = v98;
  v99 = *(a1 + 160);
  *(v78 + 168) = *(a1 + 168);
  *(v78 + 176) = v96;
  *(v78 + 160) = v99;
  *(v78 + 184) = *(a1 + 184);
  *(v78 + 192) = *(a1 + 192);
  *(v78 + 200) = *(a1 + 200);
  v100 = v304;
  sub_24A67E964(a1 + v74[39], v304, &qword_27EF5E0E0, &qword_24A836D90);
  v101 = v74;
  v102 = sub_24A82CA34();
  v103 = a1;
  v104 = *(v102 - 8);
  v105 = *(v104 + 48);
  v272 = v104 + 48;
  v273 = v105;
  v106 = v105(v100, 1, v102);
  v294 = v103;
  if (v106 != 1)
  {
    v113 = v286;
    (*(v104 + 32))(v286, v100, v102);
    (*(v104 + 56))(v113, 0, 1, v102);

    v114 = v113;

    v110 = v299;
    v111 = v307;
    v112 = v301;
    v115 = v285;
    goto LABEL_44;
  }

  v268 = v102;
  v107 = v274;
  sub_24A67E964(v103 + v101[32], v274, &unk_27EF5E0B0, &qword_24A8338B0);
  v108 = v313;
  if (v315(v107, 1, v313) == 1)
  {

    sub_24A67F378(v107, &unk_27EF5E0B0, &qword_24A8338B0);
    v109 = 1;
    v110 = v299;
    v111 = v307;
    v112 = v301;
LABEL_40:
    v114 = v286;
    v115 = v285;
    v120 = v268;
    goto LABEL_42;
  }

  v116 = v107 + *(v108 + 48);
  v117 = v269;
  sub_24A67E964(v116, v269, &unk_27EF5E100, &unk_24A839DB0);

  sub_24A692298(v107, type metadata accessor for FMIPItemGroup);
  v118 = type metadata accessor for FMIPItemLostModeMetadata(0);
  v119 = (*(*(v118 - 8) + 48))(v117, 1, v118);
  v112 = v301;
  if (v119 == 1)
  {
    sub_24A67F378(v117, &unk_27EF5E100, &unk_24A839DB0);
    v109 = 1;
    v110 = v299;
    v111 = v307;
    goto LABEL_40;
  }

  v121 = v117 + *(v118 + 24);
  v114 = v286;
  v120 = v268;
  (*(v104 + 16))(v286, v121, v268);
  sub_24A692298(v117, type metadata accessor for FMIPItemLostModeMetadata);
  v109 = 0;
  v110 = v299;
  v111 = v307;
  v115 = v285;
LABEL_42:
  (*(v104 + 56))(v114, v109, 1, v120);
  v122 = v304;
  if (v273(v304, 1, v120) != 1)
  {
    sub_24A67F378(v122, &qword_27EF5E0E0, &qword_24A836D90);
  }

LABEL_44:
  v301 = a14;
  v123 = v306;
  sub_24A68C87C(v114, v111 + v306[39]);
  v124 = v294;
  sub_24A67E964(v294 + v123[40], v111 + v123[40], &qword_27EF5E0E0, &qword_24A836D90);
  sub_24A67E964(v124 + v123[41], v111 + v123[41], &qword_27EF5E0E0, &qword_24A836D90);
  sub_24A67E964(v124 + v123[42], v111 + v123[42], &qword_27EF5E0E0, &qword_24A836D90);
  *(v111 + v123[43]) = *(v124 + v123[43]);
  *(v111 + v123[44]) = *(v124 + v123[44]);
  *(v111 + v123[45]) = *(v124 + v123[45]);
  *(v111 + v123[38]) = *(v124 + v123[38]);
  v125 = v124[27];
  v126 = v315;
  if (v115 != 2)
  {
    if (v115)
    {
      v125 |= 0x8000uLL;
    }

    else
    {
      v125 &= ~0x8000uLL;
    }
  }

  if (v288 != 2)
  {
    if (v288)
    {
      v125 |= 0x800uLL;
    }

    else
    {
      v125 &= ~0x800uLL;
    }
  }

  sub_24A67E964(v124 + v123[29], v110, &unk_27EF5E0A0, &unk_24A8367D0);
  v127 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
  if ((*(*(v127 - 8) + 48))(v301, 1, v127) != 1)
  {
    sub_24A67F378(v110, &unk_27EF5E0A0, &unk_24A8367D0);
    sub_24A67E964(v301, v110, &unk_27EF5E0A0, &unk_24A8367D0);
  }

  sub_24A67E964(v110, v111 + v123[29], &unk_27EF5E0A0, &unk_24A8367D0);
  v128 = v287;
  sub_24A67E964(v311, v287, &unk_27EF5E0B0, &qword_24A8338B0);
  if (v126(v128, 1, v313) == 1)
  {
    sub_24A67F378(v128, &unk_27EF5E0B0, &qword_24A8338B0);
  }

  else
  {
    v129 = v128;
    v130 = *(v128 + 64);
    sub_24A692298(v129, type metadata accessor for FMIPItemGroup);
    v125 |= (v130 >> 2) & 0x40;
  }

  v131 = v310;
  v111[27] = v125;
  v132 = v124[30];
  v133 = v132;
  if (a11 != 2)
  {
    if (a11)
    {
      v133 = v132 | 0x10000000;
    }

    else
    {
      v133 = v132 & 0xFFFFFFFFEFFFFFFFLL;
    }
  }

  v134 = v124[29];
  v111[29] = v134;
  v111[30] = v133;
  v286 = v132;
  v287 = v134;
  if (!v112)
  {
    v112 = v124[31];
  }

  v135 = v309;
  v111[31] = v112;
  v111[32] = v135;
  v136 = v308;
  v111[33] = v314;
  v111[34] = v136;
  memcpy(v322, v323, sizeof(v322));
  v137 = sub_24A6921A8(v322);
  v288 = v125;
  if (v137 == 1)
  {
    memcpy(v320, v124 + 38, sizeof(v320));
    sub_24A67E964(v320, v321, &unk_27EF5E0D0, &qword_24A8319E0);
    v138 = v320;
  }

  else
  {
    v138 = v323;
  }

  memcpy(v321, v138, sizeof(v321));
  v139 = v289;
  v304 = a13;
  memcpy(v111 + 38, v321, 0x120uLL);
  sub_24A67E964(v124 + v123[28], v111 + v123[28], &qword_27EF5D5F8, &qword_24A83DE60);
  sub_24A67E964(v124 + v123[30], v111 + v123[30], &qword_27EF5DE50, &qword_24A83DE40);
  sub_24A67E964(v124 + v123[31], v111 + v123[31], &qword_27EF5DE48, &unk_24A8367C0);
  v140 = v302;
  v111[35] = v303;
  v111[36] = v131;
  v111[37] = v140;
  v111[28] = v124[28];
  v141 = v131;
  v142 = v311;
  sub_24A67E964(v311, v111 + v123[32], &unk_27EF5E0B0, &qword_24A8338B0);
  sub_24A67E964(v142, v139, &unk_27EF5E0B0, &qword_24A8338B0);
  if (v315(v139, 1, v313) == 1)
  {
    v143 = v141;

    v144 = v314;
    sub_24A67F378(v139, &unk_27EF5E0B0, &qword_24A8338B0);
LABEL_75:
    v149 = MEMORY[0x277D84F90];
    goto LABEL_76;
  }

  v145 = *(v139 + 40);
  v146 = v141;

  v147 = v314;
  sub_24A692298(v139, type metadata accessor for FMIPItemGroup);
  v148 = *(v145 + 2);
  if (!v148)
  {

    goto LABEL_75;
  }

  v320[0] = MEMORY[0x277D84F90];
  sub_24A6FC900(0, v148, 0);
  v149 = v320[0];
  v150 = v271;
  v151 = *(v270 + 80);
  v289 = v145;
  v152 = &v145[(v151 + 32) & ~v151];
  v153 = *(v270 + 72);
  do
  {
    sub_24A68FED4(v152, v150, type metadata accessor for FMIPItem);
    v154 = *(v150 + 352);
    v155 = *(v150 + 360);

    sub_24A692298(v150, type metadata accessor for FMIPItem);
    v320[0] = v149;
    v157 = *(v149 + 16);
    v156 = *(v149 + 24);
    if (v157 >= v156 >> 1)
    {
      sub_24A6FC900((v156 > 1), v157 + 1, 1);
      v150 = v271;
      v149 = v320[0];
    }

    *(v149 + 16) = v157 + 1;
    v158 = v149 + 16 * v157;
    *(v158 + 32) = v154;
    *(v158 + 40) = v155;
    v152 += v153;
    --v148;
  }

  while (v148);

  v124 = v294;
  v123 = v306;
  v111 = v307;
LABEL_76:
  v159 = v123[34];
  v160 = v300;
  v161 = v291;
  if (v300 == 7)
  {
    v160 = *(v124 + v159);
  }

  LODWORD(v300) = v160;
  *(v111 + v159) = v160;
  sub_24A67E964(v304, v161, &qword_27EF5DE20, &qword_24A8371A0);
  v162 = type metadata accessor for FMIPDeviceConnectedState(0);
  v163 = *(*(v162 - 8) + 48);
  if (v163(v161, 1, v162) == 1)
  {
    sub_24A67F378(v161, &qword_27EF5DE20, &qword_24A8371A0);
    v164 = v123[36];
    v165 = *(v124 + v164);
  }

  else
  {
    v165 = *(v161 + *(v162 + 20));
    sub_24A692298(v161, type metadata accessor for FMIPDeviceConnectedState);
    v164 = v123[36];
  }

  LODWORD(v291) = v165;
  *(v111 + v164) = v165;
  v166 = v292;
  sub_24A67E964(v304, v292, &qword_27EF5DE20, &qword_24A8371A0);
  if (v163(v166, 1, v162) == 1)
  {
    sub_24A67F378(v166, &qword_27EF5DE20, &qword_24A8371A0);
    v167 = v313;
LABEL_85:
    v172 = v306;
    v173 = v315;
    v174 = v306[37];
    v175 = *(v124 + v174);
    v176 = *(v124 + v174 + 8);

    goto LABEL_87;
  }

  v168 = v277;
  sub_24A67E964(v166, v277, &qword_27EF5D020, &qword_24A830E40);
  sub_24A692298(v166, type metadata accessor for FMIPDeviceConnectedState);
  v169 = sub_24A82CAA4();
  v170 = *(v169 - 8);
  v171 = (*(v170 + 48))(v168, 1, v169);
  v167 = v313;
  if (v171 == 1)
  {
    sub_24A67F378(v168, &qword_27EF5D020, &qword_24A830E40);
    goto LABEL_85;
  }

  v177 = sub_24A82CA54();
  v176 = v178;
  (*(v170 + 8))(v168, v169);
  v175 = v177;
  v172 = v306;
  v174 = v306[37];
  v173 = v315;
LABEL_87:
  v179 = (v111 + v174);
  v292 = v175;
  *v179 = v175;
  v179[1] = v176;
  v180 = v173(v305, 1, v167);
  v306 = v176;
  if (v180 == 1)
  {
    v181 = v276;
    sub_24A67E964(v124 + v172[32], v276, &unk_27EF5E0B0, &qword_24A8338B0);
    v182 = v315(v181, 1, v167);

    sub_24A67F378(v181, &unk_27EF5E0B0, &qword_24A8338B0);
    v183 = (v286 >> 26) & 1;
    if (v300 == 5)
    {
      LODWORD(v183) = 1;
    }

    if (v182 == 1)
    {
      v184 = v183;
    }

    else
    {
      v184 = 1;
    }
  }

  else
  {

    v184 = 1;
  }

  v185 = v310;
  v186 = v311;
  v187 = v172[33];
  LODWORD(v287) = v184;
  *(v111 + v187) = v184;
  v317 = v309;
  v318 = v314;
  v319 = v308;
  v316[0] = v303;
  v316[1] = v185;
  v316[2] = v302;
  v188 = (v288 >> 5) & 1;
  v300 = v314;
  sub_24A7DC368(&v317, v316, v188, v186, v320);

  v189 = v320[1];
  v190 = *(v124 + v172[35]);
  v288 = v320[2];
  v289 = v320[0];
  *(v290 + v111) = v190;
  v191 = v185;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v192 = sub_24A82CDC4();
  sub_24A6797D0(v192, qword_281518F88);
  sub_24A68FED4(v124, v296, type metadata accessor for FMIPDevice);
  sub_24A68FED4(v124, v297, type metadata accessor for FMIPDevice);
  sub_24A67E964(v186, v298, &unk_27EF5E0B0, &qword_24A8338B0);
  v290 = v189;
  v193 = v189;

  v194 = v295;

  v195 = v300;
  v196 = v191;

  v197 = sub_24A82CD94();
  v198 = sub_24A82D504();

  if (os_log_type_enabled(v197, v198))
  {
    v284 = v193;
    LODWORD(v286) = v198;
    v300 = v197;
    v199 = swift_slowAlloc();
    v285 = swift_slowAlloc();
    v317 = v285;
    *v199 = 136317698;
    v200 = v296;
    v201 = *v296;
    v202 = v296[1];

    v203 = sub_24A68D464(10, v201, v202);
    v205 = v204;
    v207 = v206;
    v209 = v208;

    v210 = v207;
    v211 = v297;
    v212 = MEMORY[0x24C21C960](v203, v205, v210, v209);
    v214 = v213;

    sub_24A692298(v200, type metadata accessor for FMIPDevice);
    v215 = sub_24A68761C(v212, v214, &v317);

    *(v199 + 4) = v215;
    *(v199 + 12) = 2080;
    v216 = sub_24A68761C(v275, v194, &v317);

    *(v199 + 14) = v216;
    *(v199 + 22) = 2080;
    v217 = *(v211 + 24);
    if (v217)
    {
      v218 = *(v211 + 16);

      v219 = sub_24A68D464(10, v218, v217);
      v221 = v220;
      v222 = v211;
      v224 = v223;
      v226 = v225;
    }

    else
    {
      v219 = sub_24A82D654();
      v221 = v228;
      v222 = v211;
      v224 = v229;
      v226 = v230;
    }

    v231 = v278;
    v232 = MEMORY[0x24C21C960](v219, v221, v224, v226);
    v234 = v233;

    sub_24A692298(v222, type metadata accessor for FMIPDevice);
    v235 = sub_24A68761C(v232, v234, &v317);

    *(v199 + 24) = v235;
    *(v199 + 32) = 1024;
    *(v199 + 34) = v287;
    *(v199 + 38) = 2080;
    v320[0] = v309;
    v320[1] = v314;
    v320[2] = v308;
    sub_24A6BBA94(&qword_27EF5EA68, &qword_24A839E10);
    v236 = sub_24A82D024();
    v238 = sub_24A68761C(v236, v237, &v317);

    *(v199 + 40) = v238;
    *(v199 + 48) = 2080;
    v320[0] = v303;
    v320[1] = v310;
    v320[2] = v302;
    v239 = sub_24A82D024();
    v241 = sub_24A68761C(v239, v240, &v317);

    *(v199 + 50) = v241;
    *(v199 + 58) = 2080;
    v320[0] = v289;
    v320[1] = v290;
    v320[2] = v288;
    v242 = v284;
    v243 = sub_24A82D024();
    v245 = sub_24A68761C(v243, v244, &v317);

    *(v199 + 60) = v245;
    *(v199 + 68) = 2080;
    v246 = v298;
    sub_24A67E964(v298, v231, &unk_27EF5E0B0, &qword_24A8338B0);
    v247 = v231;
    v248 = v315(v231, 1, v313);
    v124 = v294;
    v314 = v242;
    if (v248 == 1)
    {
      sub_24A67F378(v247, &unk_27EF5E0B0, &qword_24A8338B0);
      v249 = 0;
      v250 = 0xE000000000000000;
    }

    else
    {
      v249 = *(v247 + 8);
      v250 = *(v247 + 16);

      sub_24A692298(v247, type metadata accessor for FMIPItemGroup);
    }

    v251 = v299;
    sub_24A67F378(v246, &unk_27EF5E0B0, &qword_24A8338B0);
    v252 = sub_24A68761C(v249, v250, &v317);

    *(v199 + 70) = v252;
    *(v199 + 78) = 2080;
    v253 = MEMORY[0x24C21CB60](v149, MEMORY[0x277D837D0]);
    v255 = v254;

    v256 = sub_24A68761C(v253, v255, &v317);

    *(v199 + 80) = v256;
    *(v199 + 88) = 2080;
    if (v291 <= 1)
    {
      v227 = v293;
      v257 = v311;
      v258 = v306;
      v259 = v285;
      if (v291)
      {
        v260 = 0xE900000000000064;
        v261 = 0x657463656E6E6F63;
      }

      else
      {
        v260 = 0xEC00000064657463;
        v261 = 0x656E6E6F63736964;
      }
    }

    else
    {
      v227 = v293;
      v257 = v311;
      v258 = v306;
      v259 = v285;
      if (v291 == 2)
      {
        v261 = 0x6465686361747461;
        v260 = 0xE800000000000000;
      }

      else if (v291 == 3)
      {
        v260 = 0xE800000000000000;
        v261 = 0x6465686361746564;
      }

      else
      {
        v260 = 0xEE0079627261654ELL;
        v261 = 0x6465746365746564;
      }
    }

    v262 = sub_24A68761C(v261, v260, &v317);

    *(v199 + 90) = v262;
    *(v199 + 98) = 2080;
    if (v258)
    {
      v263 = v292;
    }

    else
    {
      v263 = 0;
    }

    if (v258)
    {
      v264 = v258;
    }

    else
    {
      v264 = 0xE000000000000000;
    }

    v265 = sub_24A68761C(v263, v264, &v317);

    *(v199 + 100) = v265;
    v266 = v300;
    _os_log_impl(&dword_24A675000, v300, v286, "FMIPDevice:\n    -- id: %s,\n    -- name: %s,\n    -- baId: %s\n    -- isAccessory: %{BOOL}d\n    -- onlineLocation: %s\n    -- offlineLocation: %s\n    -- bestLocation: %s\n    -- itemGroup: %s\n    -- itemGroupItemsId: %s\n    -- deviceConnectedType: %s\n    -- deviceAssociatedWithBeacon: %s", v199, 0x6Cu);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v259, -1, -1);
    MEMORY[0x24C21E1D0](v199, -1, -1);

    sub_24A67F378(v304, &qword_27EF5DE20, &qword_24A8371A0);
    sub_24A67F378(v251, &unk_27EF5E0A0, &unk_24A8367D0);
    sub_24A67F378(v257, &unk_27EF5E0B0, &qword_24A8338B0);
  }

  else
  {

    sub_24A67F378(v304, &qword_27EF5DE20, &qword_24A8371A0);
    sub_24A67F378(v298, &unk_27EF5E0B0, &qword_24A8338B0);
    sub_24A692298(v297, type metadata accessor for FMIPDevice);
    sub_24A692298(v296, type metadata accessor for FMIPDevice);
    sub_24A67F378(v299, &unk_27EF5E0A0, &unk_24A8367D0);
    sub_24A67F378(v311, &unk_27EF5E0B0, &qword_24A8338B0);
    v227 = v293;
  }

  sub_24A67F378(v301, &unk_27EF5E0A0, &unk_24A8367D0);
  sub_24A67F378(v305, &unk_27EF5E0B0, &qword_24A8338B0);
  sub_24A7E11A4(v307, v227, type metadata accessor for FMIPDevice);
  return sub_24A692298(v124, type metadata accessor for FMIPDevice);
}

uint64_t sub_24A6921A8(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24A6921D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 5)
    {
      return v10 - 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24A692298(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_24A692304(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_24A6BBA94(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_24A692508(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5D5A8, &unk_24A8334E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void sub_24A69262C(void *a1, __int128 *a2)
{
  v76 = a2;
  v3 = sub_24A82CC54();
  v73 = *(v3 - 8);
  v74 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A82CCD4();
  v75 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v77 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A6BBA94(&qword_27EF5E238, &qword_24A837830);
  MEMORY[0x28223BE20](v8 - 8);
  v79 = &v66 - v9;
  v80 = sub_24A6BBA94(&qword_27EF5E240, &qword_24A837838);
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v11 = &v66 - v10;
  v12 = sub_24A82C8B4();
  v83 = *(v12 - 8);
  v84 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v72 = v5;
  v81 = v6;
  v82 = v11;
  v15 = sub_24A82CDC4();
  v85 = sub_24A6797D0(v15, qword_281518F88);
  v16 = sub_24A82CD94();
  v17 = sub_24A82D504();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_24A675000, v16, v17, "FMDiskIO: read from disk", v18, 2u);
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  v19 = [objc_opt_self() defaultManager];
  v21 = a1[3];
  v20 = a1[4];
  v23 = a1[5];
  v22 = a1[6];
  *&v92 = v21;
  *(&v92 + 1) = v20;

  MEMORY[0x24C21C9E0](v23, v22);
  v24 = sub_24A82CF94();

  v25 = [v19 fileExistsAtPath_];

  if (v25)
  {
    v71 = a1;
    *&v92 = v21;
    *(&v92 + 1) = v20;

    MEMORY[0x24C21C9E0](v23, v22);
    sub_24A82C824();

    v26 = sub_24A82C8C4();
    v34 = v23;
    v35 = v21;
    v67 = v20;
    v68 = v22;
    v36 = v26;
    v38 = v37;
    (*(v83 + 8))(v14, v84);

    sub_24A681458(v36, v38);
    v39 = sub_24A82CD94();
    v40 = sub_24A82D504();

    sub_24A67E0F0(v36, v38);
    v41 = os_log_type_enabled(v39, v40);
    v66 = v35;
    v69 = v36;
    v70 = v38;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *&v86 = v84;
      *v42 = 136315394;
      *&v92 = v35;
      *(&v92 + 1) = v67;

      LODWORD(v83) = v40;
      MEMORY[0x24C21C9E0](v34, v68);
      v43 = sub_24A68761C(v92, *(&v92 + 1), &v86);

      *(v42 + 4) = v43;
      *(v42 + 12) = 2080;
      v44 = sub_24A82C8D4();
      v46 = sub_24A68761C(v44, v45, &v86);

      *(v42 + 14) = v46;
      _os_log_impl(&dword_24A675000, v39, v83, "FMDiskIO: file: %s data: %s", v42, 0x16u);
      v47 = v84;
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v47, -1, -1);
      MEMORY[0x24C21E1D0](v42, -1, -1);
    }

    v48 = v81;
    sub_24A82C724();
    swift_allocObject();
    sub_24A82C714();
    v49 = v79;
    sub_24A67E964(v71 + *(*v71 + 128), v79, &qword_27EF5E238, &qword_24A837830);
    if ((*(v78 + 48))(v49, 1, v80) == 1)
    {
      sub_24A67F378(v49, &qword_27EF5E238, &qword_24A837830);
      sub_24A693350();
      v51 = v69;
      v50 = v70;
      sub_24A82C704();
      sub_24A67E0F0(v51, v50);

      v52 = v76;
      v53 = v76[3];
      v88 = v76[2];
      v89 = v53;
      v90 = v76[4];
      v91 = *(v76 + 10);
      v54 = v76[1];
      v86 = *v76;
      v87 = v54;
      v55 = v95;
      v76[2] = v94;
      v52[3] = v55;
      v52[4] = v96;
      *(v52 + 10) = v97;
      v56 = v93;
      *v52 = v92;
      v52[1] = v56;
    }

    else
    {
      sub_24A67E8FC(v49, v82, &qword_27EF5E240, &qword_24A837838);
      sub_24A67F008(&unk_27EF5E280, MEMORY[0x277D08F20], MEMORY[0x277D08F30]);
      sub_24A82C704();
      v57 = v72;
      sub_24A82CC64();
      v58 = sub_24A82CCC4();
      v60 = v59;
      (*(v73 + 8))(v57, v74);
      sub_24A693350();
      sub_24A82C704();

      sub_24A67E0F0(v58, v60);
      sub_24A67E0F0(v69, v70);
      (*(v75 + 8))(v77, v48);
      sub_24A67F378(v82, &qword_27EF5E240, &qword_24A837838);
      v61 = v76;
      v62 = v76[3];
      v88 = v76[2];
      v89 = v62;
      v90 = v76[4];
      v91 = *(v76 + 10);
      v63 = v76[1];
      v86 = *v76;
      v87 = v63;
      v64 = v93;
      *v76 = v92;
      v61[1] = v64;
      v65 = v95;
      v61[2] = v94;
      v61[3] = v65;
      v61[4] = v96;
      *(v61 + 10) = v97;
    }

    sub_24A67F378(&v86, &qword_27EF5DEF8, &unk_24A836D40);
  }

  else
  {
    v27 = v21;
    v28 = v20;

    v85 = sub_24A82CD94();
    v29 = sub_24A82D4E4();

    if (os_log_type_enabled(v85, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v86 = v31;
      *v30 = 136315138;
      *&v92 = v27;
      *(&v92 + 1) = v28;

      MEMORY[0x24C21C9E0](v23, v22);
      v32 = sub_24A68761C(v92, *(&v92 + 1), &v86);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_24A675000, v85, v29, "FMDiskIO: Disk archive does not exist at: %s", v30, 0xCu);
      sub_24A6876E8(v31);
      MEMORY[0x24C21E1D0](v31, -1, -1);
      MEMORY[0x24C21E1D0](v30, -1, -1);
    }

    else
    {
      v33 = v85;
    }
  }
}

unint64_t sub_24A693350()
{
  result = qword_281514608;
  if (!qword_281514608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514608);
  }

  return result;
}

uint64_t FMIPPerson.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5F5E8, &qword_24A83FEB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A693B6C();
  sub_24A82DD64();
  if (!v2)
  {
    LOBYTE(v65[0]) = 4;
    v9 = sub_24A82DA44();
    v11 = v10;
    v76 = v9;
    LOBYTE(v65[0]) = 5;
    v61 = sub_24A82DA44();
    v63 = v12;
    LOBYTE(v65[0]) = 6;
    v62 = sub_24A82DA44();
    v64 = v13;
    LOBYTE(v65[0]) = 1;
    sub_24A82DA44();
    v14 = sub_24A82D9C4();

    v60 = v14 != 0;
    LOBYTE(v65[0]) = 3;
    v59 = sub_24A82DA54();
    LOBYTE(v65[0]) = 2;
    LOBYTE(v14) = sub_24A82DA54();
    LOBYTE(v65[0]) = 0;
    v56 = sub_24A82DA74();
    LOBYTE(v65[0]) = 7;
    v53 = sub_24A82DA44();
    v54 = v15;
    LOBYTE(v65[0]) = 8;
    v16 = sub_24A82DA44();
    v18 = v76;
    v19 = v56 == 1;
    v20 = v14 & 1;
    v21 = v59 & 1;
    v22 = v64;
    v57 = v17;
    v58 = v16;
    v55 = v20;
    LODWORD(v56) = v56 == 1;
    v59 &= 1u;
    if (v64)
    {
      v23 = v62;
    }

    else
    {
      v24 = [objc_opt_self() sharedInstance];
      v25 = [v24 ownerAccount];

      v26 = v25;
      v27 = [v25 username];

      if (v27)
      {
        v23 = sub_24A82CFC4();
        v64 = v28;

        v22 = v64;
      }

      else
      {
        v22 = 0xE700000000000000;
        v23 = 0x6E776F6E6B6E75;
      }

      v18 = v76;
      v17 = v57;
      v16 = v58;
      LOBYTE(v20) = v55;
      v19 = v56;
      v21 = v59;
    }

    v29 = v54;
    v30 = 0x72656E776FLL;
    if (v54)
    {
      v30 = v53;
    }

    v65[0] = v18;
    v65[1] = v11;
    v51 = v11;
    if (!v54)
    {
      v29 = 0xE500000000000000;
    }

    v65[2] = v61;
    v65[3] = v63;
    v66 = v20;
    v67 = v60;
    v68 = v19;
    v69 = v21;
    v62 = v23;
    v70 = v23;
    v71 = v22;
    v64 = v22;
    v53 = v30;
    v72 = v30;
    v73 = v29;
    v52 = v29;
    v74 = v16;
    v75 = v17;
    v50 = FMIPPerson.debugDescription.getter();
    v32 = v31;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v33 = sub_24A82CDC4();
    sub_24A6797D0(v33, qword_281518F88);

    v34 = sub_24A82CD94();
    v35 = sub_24A82D4C4();

    v49 = v35;
    v54 = v34;
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v65[0] = v48;
      *v36 = 136315138;
      v37 = sub_24A68761C(v50, v32, v65);

      v38 = v36;
      *(v36 + 4) = v37;
      v39 = v54;
      v40 = v38;
      _os_log_impl(&dword_24A675000, v54, v49, "FMIPPerson: Initialized: %s", v38, 0xCu);
      v41 = v48;
      sub_24A6876E8(v48);
      MEMORY[0x24C21E1D0](v41, -1, -1);
      MEMORY[0x24C21E1D0](v40, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v8, v5);
    v42 = v51;
    *a2 = v76;
    *(a2 + 8) = v42;
    v43 = v63;
    *(a2 + 16) = v61;
    *(a2 + 24) = v43;
    *(a2 + 32) = v55;
    *(a2 + 33) = v60;
    *(a2 + 34) = v56;
    *(a2 + 35) = v59;
    v44 = v64;
    *(a2 + 40) = v62;
    *(a2 + 48) = v44;
    v45 = v52;
    *(a2 + 56) = v53;
    *(a2 + 64) = v45;
    v46 = v57;
    *(a2 + 72) = v58;
    *(a2 + 80) = v46;
  }

  return sub_24A6876E8(a1);
}

unint64_t sub_24A693AC0()
{
  result = qword_281514610;
  if (!qword_281514610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514610);
  }

  return result;
}

unint64_t sub_24A693B18()
{
  result = qword_281514618;
  if (!qword_281514618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514618);
  }

  return result;
}

unint64_t sub_24A693B6C()
{
  result = qword_281514620;
  if (!qword_281514620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514620);
  }

  return result;
}

unint64_t sub_24A693BDC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x65626D654D736168;
    if (a1 != 2)
    {
      v5 = 0x4153487369;
    }

    v6 = 0xD000000000000010;
    if (a1)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6449656C707061;
    v2 = 0x696669746E656469;
    if (a1 != 7)
    {
      v2 = 0x6D754E656E6F6870;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6D614E7473726966;
    if (a1 != 4)
    {
      v3 = 0x656D614E7473616CLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t getEnumTagSinglePayload for FMIPDeviceImageVariant(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t FMIPPerson.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[7];
  v7 = v0[8];
  sub_24A82D854();

  MEMORY[0x24C21C9E0](v6, v7);
  MEMORY[0x24C21C9E0](0x3A656D616E20, 0xE600000000000000);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);

  MEMORY[0x24C21C9E0](v3, v4);

  MEMORY[0x24C21C9E0](v2, v1);

  MEMORY[0x24C21C9E0](0xD000000000000012, 0x800000024A84A8D0);
  if (v5)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v5)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v8, v9);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  return 0xD000000000000019;
}

uint64_t sub_24A693F14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_24A693F60()
{
  v1 = v0;
  v8 = 0;
  v2 = *(v0 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = &v8;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_24A694E80;
  *(v4 + 24) = v3;
  aBlock[4] = sub_24A680674;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6805E4;
  aBlock[3] = &unk_285DC7700;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

void sub_24A6940D0(void *a1, uint64_t *a2)
{
  v64 = a2;
  v62 = sub_24A82CC54();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_24A82CCD4();
  v63 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v5 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A6BBA94(&qword_27EF5E250, &qword_24A837840);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = v57 - v7;
  v67 = sub_24A6BBA94(&qword_27EF5E258, &qword_24A837848);
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v68 = v57 - v8;
  v71 = sub_24A82C8B4();
  v9 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v69 = v5;
  v12 = sub_24A82CDC4();
  v72 = sub_24A6797D0(v12, qword_281518F88);
  v13 = sub_24A82CD94();
  v14 = sub_24A82D504();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24A675000, v13, v14, "FMDiskIO: read from disk", v15, 2u);
    MEMORY[0x24C21E1D0](v15, -1, -1);
  }

  v16 = [objc_opt_self() defaultManager];
  v18 = a1[3];
  v17 = a1[4];
  v20 = a1[5];
  v19 = a1[6];
  v74 = v18;
  v75 = v17;

  MEMORY[0x24C21C9E0](v20, v19);
  v21 = sub_24A82CF94();

  v22 = [v16 fileExistsAtPath_];

  if (v22)
  {
    v59 = a1;
    v74 = v18;
    v75 = v17;

    MEMORY[0x24C21C9E0](v20, v19);
    sub_24A82C824();

    v30 = sub_24A82C8C4();
    v32 = v31;
    v33 = v19;
    (*(v9 + 8))(v11, v71);

    sub_24A681458(v30, v32);
    v34 = sub_24A82CD94();
    v35 = sub_24A82D504();

    sub_24A67E0F0(v30, v32);
    LODWORD(v71) = v35;
    v36 = os_log_type_enabled(v34, v35);
    v57[3] = v33;
    v57[2] = v18;
    v57[1] = v17;
    v58 = v32;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v57[0] = swift_slowAlloc();
      v73 = v57[0];
      v74 = v18;
      *v37 = 136315394;
      v75 = v17;

      v38 = v30;
      MEMORY[0x24C21C9E0](v20, v33);
      v39 = sub_24A68761C(v74, v75, &v73);

      *(v37 + 4) = v39;
      *(v37 + 12) = 2080;
      v40 = sub_24A82C8D4();
      v42 = sub_24A68761C(v40, v41, &v73);

      *(v37 + 14) = v42;
      _os_log_impl(&dword_24A675000, v34, v71, "FMDiskIO: file: %s data: %s", v37, 0x16u);
      v43 = v57[0];
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v43, -1, -1);
      MEMORY[0x24C21E1D0](v37, -1, -1);

      v44 = v70;
      v45 = v38;
    }

    else
    {

      v44 = v70;
      v45 = v30;
    }

    v46 = v67;
    sub_24A82C724();
    swift_allocObject();
    sub_24A82C714();
    v47 = v66;
    sub_24A67E964(v59 + *(*v59 + 128), v66, &qword_27EF5E250, &qword_24A837840);
    v48 = (*(v65 + 48))(v47, 1, v46);
    v50 = v68;
    v49 = v69;
    if (v48 == 1)
    {
      sub_24A67F378(v47, &qword_27EF5E250, &qword_24A837840);
      sub_24A6BBA94(&qword_27EF5E260, &qword_24A837850);
      sub_24A76F57C(&unk_27EF5E270, sub_24A693350, MEMORY[0x277D83978]);
      v51 = v58;
      sub_24A82C704();
      sub_24A67E0F0(v45, v51);
    }

    else
    {
      sub_24A67E8FC(v47, v68, &qword_27EF5E258, &qword_24A837848);
      sub_24A67F008(&unk_27EF5E280, MEMORY[0x277D08F20], MEMORY[0x277D08F30]);
      sub_24A82C704();
      v71 = v45;
      v52 = v60;
      sub_24A82CC64();
      v53 = sub_24A82CCC4();
      v55 = v54;
      (*(v61 + 8))(v52, v62);
      sub_24A6BBA94(&qword_27EF5E260, &qword_24A837850);
      sub_24A76F57C(&unk_27EF5E270, sub_24A693350, MEMORY[0x277D83978]);
      sub_24A82C704();
      v56 = (v63 + 8);

      sub_24A67E0F0(v53, v55);
      sub_24A67E0F0(v71, v58);
      (*v56)(v49, v44);
      sub_24A67F378(v50, &qword_27EF5E258, &qword_24A837848);
    }

    *v64 = v74;
  }

  else
  {
    v23 = v17;
    v24 = v19;

    v72 = sub_24A82CD94();
    v25 = sub_24A82D4E4();

    if (os_log_type_enabled(v72, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v73 = v27;
      v74 = v18;
      *v26 = 136315138;
      v75 = v23;

      MEMORY[0x24C21C9E0](v20, v24);
      v28 = sub_24A68761C(v74, v75, &v73);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_24A675000, v72, v25, "FMDiskIO: Disk archive does not exist at: %s", v26, 0xCu);
      sub_24A6876E8(v27);
      MEMORY[0x24C21E1D0](v27, -1, -1);
      MEMORY[0x24C21E1D0](v26, -1, -1);
    }

    else
    {
      v29 = v72;
    }
  }
}

uint64_t sub_24A694E90()
{
  v1 = v0;
  v8 = 0;
  v2 = *(v0 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = &v8;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_24A694FFC;
  *(v4 + 24) = v3;
  aBlock[4] = sub_24A680674;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6805E4;
  aBlock[3] = &unk_285DC77F0;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

unint64_t sub_24A695068(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_24A82D0C4();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_24A82D1A4();
}

uint64_t sub_24A695148()
{
  v1 = v0;
  swift_defaultActor_initialize();
  *(v0 + 120) = 0;
  v2 = MEMORY[0x277D84FA0];
  v3 = MEMORY[0x277D84F90];
  *(v0 + 128) = MEMORY[0x277D84FA0];
  *(v0 + 136) = v3;
  *(v0 + 144) = v2;
  *(v0 + 160) = 0;
  swift_unknownObjectWeakInit();
  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518D70);
  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPBeaconSharingController: init", v7, 2u);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  v8 = [objc_allocWithZone(MEMORY[0x277D49690]) init];
  v9 = [v8 beaconSharingSession];

  *(v1 + 112) = v9;
  return v1;
}

uint64_t sub_24A695298()
{
  v0 = sub_24A82CDC4();
  sub_24A67976C(v0, qword_281518D70);
  sub_24A6797D0(v0, qword_281518D70);
  return sub_24A82CDA4();
}

uint64_t FMLocationShifter.init()()
{
  v13 = sub_24A82D554();
  v0 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v2 = v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24A82D534();
  MEMORY[0x28223BE20](v3);
  v4 = sub_24A82CE54();
  MEMORY[0x28223BE20](v4 - 8);
  v12[0] = sub_24A67B054();
  v14 = "v24@?0q8@NSError16";
  sub_24A82CE44();
  v16 = MEMORY[0x277D84F90];
  v12[3] = sub_24A695668(&qword_2815146D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v12[2] = sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  v5 = *MEMORY[0x277D85260];
  v6 = v0 + 104;
  v7 = *(v0 + 104);
  v12[1] = v6;
  v8 = v13;
  v7(v2, v5, v13);
  *(v15 + 24) = sub_24A82D594();
  sub_24A82CE44();
  v16 = MEMORY[0x277D84F90];
  sub_24A82D6B4();
  v7(v2, v5, v8);
  v9 = sub_24A82D594();
  v10 = v15;
  *(v15 + 32) = v9;
  *(v10 + 16) = [objc_allocWithZone(MEMORY[0x277D0EB88]) init];
  return v10;
}

uint64_t sub_24A695668(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A6956B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A6956F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A695740(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_24A6957D0()
{
  v1 = v0;
  v21 = sub_24A82D554();
  v2 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A82D534();
  MEMORY[0x28223BE20](v5);
  v6 = sub_24A82CE54();
  MEMORY[0x28223BE20](v6 - 8);
  *&v0[OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_locationUpdatingQueue;
  v7 = sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  v19[1] = "Queue";
  v19[2] = v7;
  sub_24A82CE24();
  v23 = MEMORY[0x277D84F90];
  sub_24A695668(&qword_2815146D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v21);
  *&v0[v20] = sub_24A82D594();
  v8 = &v0[OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_currentLocation];
  v8[1] = 0;
  v8[2] = 0;
  *v8 = 0;
  v9 = objc_opt_self();
  v10 = sub_24A82CF94();
  v11 = sub_24A82CF94();
  LOBYTE(v9) = [v9 BOOLForKey:v10 inDomain:v11];

  v1[OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_limitedPrecision] = v9;
  v12 = [objc_allocWithZone(MEMORY[0x277CBFC10]) init];
  *&v1[OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_locationManager] = v12;
  type metadata accessor for FMLocationShifter();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_locationShifter] = FMLocationShifter.init()();
  v13 = type metadata accessor for FMIPLocationController();
  v22.receiver = v1;
  v22.super_class = v13;
  v14 = objc_msgSendSuper2(&v22, sel_init);
  v15 = OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_locationManager;
  v16 = *&v14[OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_locationManager];
  v17 = v14;
  [v16 setDelegate_];
  [*&v14[v15] setDesiredAccuracy_];

  return v17;
}

uint64_t sub_24A695B98@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24A6BBA94(&qword_27EF5E458, &unk_24A83CCD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v15 - v3 + 24;
  v5 = sub_24A82CB94();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = type metadata accessor for FMIPServerInteractionController(0);
  swift_allocObject();
  result = sub_24A696054(v4);
  v8 = result;
  if (qword_281514478 != -1)
  {
    result = swift_once();
  }

  if (byte_281514481 == 1)
  {
    v15[3] = v6;
    v15[4] = &off_285DCA4D0;
    v15[0] = v8;

    v9 = sub_24A7FD120(v15);
    sub_24A6876E8(v15);
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v10 = sub_24A82CDC4();
    sub_24A6797D0(v10, qword_281518F88);
    v11 = sub_24A82CD94();
    v12 = sub_24A82D504();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24A675000, v11, v12, "FMIPManager: Entering Demo Mode", v13, 2u);
      MEMORY[0x24C21E1D0](v13, -1, -1);
    }

    a1[3] = type metadata accessor for FMIPDemoInteractionController();
    a1[4] = &off_285DCE908;

    v8 = v9;
  }

  else
  {
    a1[3] = v6;
    a1[4] = &off_285DCA4D0;
  }

  *a1 = v8;
  return result;
}

uint64_t sub_24A695F64(uint64_t a1)
{
  result = sub_24A82CA34();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_24A696054(uint64_t a1)
{
  v56 = a1;
  v2 = sub_24A6BBA94(&qword_27EF5E458, &unk_24A83CCD0);
  MEMORY[0x28223BE20](v2 - 8);
  v55 = v46 - v3;
  v54 = sub_24A82D554();
  v57 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A82D534();
  MEMORY[0x28223BE20](v5);
  v51 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82CE54();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_24A82CAA4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v1 + qword_281512FE8);
  v50 = v1;
  sub_24A82CA94();
  v13 = sub_24A82CA54();
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  *v12 = v13;
  v12[1] = v15;
  v16 = qword_2815147C8;
  v52 = qword_2815147C8;
  sub_24A82CBB4();
  swift_allocObject();
  *(v1 + v16) = sub_24A82CBA4();
  v49 = qword_2815147D8;
  v17 = sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  v47 = ".fipcore.globalConfigStore";
  v48 = v17;
  sub_24A82CE24();
  v58 = MEMORY[0x277D84F90];
  v46[2] = sub_24A67A06C(&qword_2815146D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v46[1] = sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  v46[3] = sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  v18 = *MEMORY[0x277D85260];
  v19 = *(v57 + 104);
  v57 += 104;
  v21 = v53;
  v20 = v54;
  v19(v53, v18, v54);
  v22 = sub_24A82D594();
  v23 = v50;
  *(v50 + v49) = v22;
  v49 = qword_281512FE0;
  v47 = ".fmipcore.serverinteraction";
  sub_24A82CE24();
  v58 = MEMORY[0x277D84F90];
  sub_24A82D6B4();
  v19(v21, v18, v20);
  *(v23 + v49) = sub_24A82D594();
  *(v23 + qword_2815147C0 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v23 + qword_2815147D0) = 0;
  sub_24A82CA24();
  *(v23 + qword_281518F28) = 0;
  *(v23 + qword_281518D88) = MEMORY[0x277D84F98];
  v24 = v23 + qword_27EF5EE50;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  sub_24A67E964(v56, v55, &qword_27EF5E458, &unk_24A83CCD0);

  v25 = sub_24A82CC24();
  v26 = qword_281515DC8;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = sub_24A82CDC4();
  sub_24A6797D0(v27, qword_281518F88);
  v28 = sub_24A82CD94();
  v29 = sub_24A82D504();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v58 = v31;
    *v30 = 136315138;
    v32 = *(v25 + qword_281512FE8);
    v33 = *(v25 + qword_281512FE8 + 8);

    v34 = sub_24A695068(0xCuLL, v32, v33);
    v36 = v35;
    v38 = v37;
    v40 = v39;

    v41 = MEMORY[0x24C21C960](v34, v36, v38, v40);
    v43 = v42;

    v44 = sub_24A68761C(v41, v43, &v58);

    *(v30 + 4) = v44;
    _os_log_impl(&dword_24A675000, v28, v29, "FMIPServerInteractionController<%s>.init", v30, 0xCu);
    sub_24A6876E8(v31);
    MEMORY[0x24C21E1D0](v31, -1, -1);
    MEMORY[0x24C21E1D0](v30, -1, -1);
  }

  sub_24A67F378(v56, &qword_27EF5E458, &unk_24A83CCD0);
  return v25;
}

void sub_24A69671C()
{
  type metadata accessor for FMDemoManager();
  v4 = 1;
  if (static FMDemoManager.hasDemoModeAsset(for:)(&v4))
  {
    v0 = objc_opt_self();
    v1 = sub_24A82CF94();
    v2 = sub_24A82CF94();
    v3 = [v0 BOOLForKey:v1 inDomain:v2];
  }

  else
  {
    v3 = 0;
  }

  byte_281514481 = v3;
}

id static FMDemoManager.hasDemoModeAsset(for:)(char *a1)
{
  v2 = sub_24A82C8B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  static FMDemoManager.assetURL(for:)(&v11);
  if (qword_2815144B0 != -1)
  {
    swift_once();
  }

  v6 = qword_281515A98;
  sub_24A82C894();
  v7 = sub_24A82CF94();

  v8 = [v6 fileExistsAtPath_];

  (*(v3 + 8))(v5, v2);
  return v8;
}

uint64_t static FMDemoManager.assetURL(for:)(unsigned __int8 *a1)
{
  v1 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - v2;
  v4 = sub_24A82C8B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281514488 != -1)
  {
    swift_once();
  }

  v8 = sub_24A6797D0(v1, qword_281514490);
  sub_24A696E10(v8, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_24A6D3E54(v3);
    sub_24A754394();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_24A82C864();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24A696BAC()
{
  v0 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v11 - v2;
  sub_24A67976C(v1, qword_281514490);
  v4 = sub_24A6797D0(v0, qword_281514490);
  if (qword_2815144B0 != -1)
  {
    swift_once();
  }

  v5 = qword_281515A98;
  v6 = sub_24A82CF94();
  v7 = [v5 containerURLForSecurityApplicationGroupIdentifier_];

  if (v7)
  {
    sub_24A82C884();

    v8 = sub_24A82C8B4();
    (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
  }

  else
  {
    v9 = sub_24A82C8B4();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  }

  return sub_24A696DA0(v3, v4);
}

id sub_24A696D6C()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  qword_281515A98 = result;
  return result;
}

uint64_t sub_24A696DA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A696E10(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A696E80(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_24A696E98@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers);
  if (v3)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 32);
    result = sub_24A696F50(MEMORY[0x277D84F90]);
    v7 = 3;
    if (v5)
    {
      v7 = 1;
    }

    v8 = 2;
    if (v5)
    {
      v8 = 3;
    }

    if (v4)
    {
      v7 = v8;
    }
  }

  else
  {
    v9 = *(v1 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems);
    result = sub_24A696F50(MEMORY[0x277D84F90]);
    v7 = 3;
    if (v9 == 1)
    {
      v7 = 1;
    }

    if (v9 == 2)
    {
      v7 = 2;
    }
  }

  *a1 = v3 != 0;
  v10 = MEMORY[0x277D84FA0];
  *(a1 + 8) = v7;
  *(a1 + 16) = v10;
  *(a1 + 24) = result;
  *(a1 + 32) = v3 != 0;
  return result;
}

unint64_t sub_24A696F74(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = sub_24A6BBA94(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    sub_24A6BBA94(a4, a5);
    v14 = sub_24A82D974();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_24A67E964(v16, v12, a2, v27);
      result = sub_24A77EDF8(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = sub_24A82CAA4();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24A697174(uint64_t a1)
{
  result = sub_24A82CAA4();
  if (v2 <= 0x3F)
  {
    result = sub_24A82CA34();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_24A6972BC(void *a1, __int128 *a2)
{
  v3 = v2;
  v77 = a1;
  v78 = a2;
  v4 = sub_24A82D554();
  v5 = *(v4 - 8);
  v79 = v4;
  v80 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A82D534();
  MEMORY[0x28223BE20](v8);
  v9 = sub_24A82CE54();
  MEMORY[0x28223BE20](v9 - 8);
  sub_24A82CA94();
  v76 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue;
  v10 = sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  v74 = "v16@?0@NSData8";
  v75 = v10;
  sub_24A82CE24();
  *&v82 = MEMORY[0x277D84F90];
  v73 = sub_24A697DF4(&qword_2815146D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v72 = sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A68795C(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510, MEMORY[0x277D83970]);
  sub_24A82D6B4();
  v11 = *MEMORY[0x277D85260];
  v12 = v80[13];
  v80 += 13;
  v71 = v7;
  v12(v7, v11, v79);
  *(v2 + v76) = sub_24A82D594();
  v76 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_filterQueue;
  sub_24A82CE24();
  *&v82 = MEMORY[0x277D84F90];
  sub_24A82D6B4();
  v12(v71, v11, v79);
  *(v2 + v76) = sub_24A82D594();
  v13 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_spBeacons) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_appBeacons) = v13;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_unknownBeacons) = v13;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_itemGroups) = v13;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_currentlyRefreshing) = 0;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_nextRefreshQueued) = 0;
  sub_24A82C964();
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_24A82CA24();
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_callbackInterval) = 0x40CD4C0000000000;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_defaultCallbackInterval) = 0x40DD4C0000000000;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_initialCallbackInterval) = 0x40CD4C0000000000;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshTimer) = 0;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_utAlertState) = 1;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_separationMonitoringState) = 7;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_clientConfiguration) = 2;
  v14 = v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy;
  v15 = sub_24A696F50(v13);
  *v14 = 0;
  v16 = MEMORY[0x277D84FA0];
  *(v14 + 8) = 3;
  *(v14 + 16) = v16;
  *(v14 + 24) = v15;
  *(v14 + 32) = 0;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_isThrottledOverride) = 0;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_isThrottled) = 0;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_isRefreshing) = 0;
  v17 = v77;
  v18 = v78;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession) = v77;
  v19 = *(v18 + 2);
  v85 = *(v18 + 3);
  v86[0] = v19;
  v20 = v18[1];
  *v14 = *v18;
  *(v14 + 16) = v20;
  *(v14 + 32) = *(v18 + 32);
  v80 = v17;
  sub_24A67E964(v86, &v82, &qword_27EF5DA28, &qword_24A8415A0);
  sub_24A67E964(&v85, &v82, &qword_27EF5F878, &qword_24A8415A8);

  v21 = sub_24A82C514();
  *(&v83 + 1) = v21;
  v84 = sub_24A697DF4(&unk_281514680, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
  v22 = sub_24A697E3C(&v82);
  (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D08A00], v21);
  LOBYTE(v21) = sub_24A82C4D4();
  sub_24A6876E8(&v82);
  if ((v21 & 1) == 0)
  {
    *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_shouldUseBeaconsOptimizationSPI) = 0;
    v23 = v3;
    goto LABEL_27;
  }

  v23 = v3;
  v24 = objc_opt_self();
  v25 = [v24 mainBundle];
  v26 = [v25 bundleIdentifier];

  if (v26)
  {
    v27 = sub_24A82CFC4();
    v29 = v28;

    if (v27 == 0xD000000000000010 && 0x800000024A8438E0 == v29)
    {
      LODWORD(v26) = 1;
    }

    else
    {
      LODWORD(v26) = sub_24A82DC04();
    }
  }

  v30 = [v24 mainBundle];
  v31 = [v30 bundleIdentifier];

  if (v31)
  {
    v32 = sub_24A82CFC4();
    v34 = v33;

    if (v32 == 0xD00000000000001ALL && 0x800000024A843920 == v34)
    {
      goto LABEL_17;
    }

    v35 = sub_24A82DC04();

    if (v35)
    {
      goto LABEL_19;
    }
  }

  v36 = [v24 mainBundle];
  v37 = [v36 bundleIdentifier];

  if (!v37)
  {
    if ((v26 & 1) == 0)
    {
LABEL_21:
      v41 = 0;
      goto LABEL_22;
    }

LABEL_19:
    v41 = 1;
    goto LABEL_22;
  }

  v38 = sub_24A82CFC4();
  v40 = v39;

  if (v38 != 0xD00000000000001CLL || 0x800000024A843900 != v40)
  {
    v42 = sub_24A82DC04();

    if (((v26 | v42) & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_17:

  v41 = 1;
LABEL_22:
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_shouldUseBeaconsOptimizationSPI) = v41;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v43 = sub_24A82CDC4();
  sub_24A6797D0(v43, qword_281518F88);

  v44 = sub_24A82CD94();
  v45 = sub_24A82D504();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 67109120;
    *(v46 + 4) = *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_shouldUseBeaconsOptimizationSPI);

    _os_log_impl(&dword_24A675000, v44, v45, "FMIPBeaconRefreshingController: shouldUseBeaconsOptimizationSPI: %{BOOL}d", v46, 8u);
    MEMORY[0x24C21E1D0](v46, -1, -1);
  }

  else
  {
  }

LABEL_27:
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v47 = sub_24A82CDC4();
  sub_24A6797D0(v47, qword_281518F88);
  sub_24A67E964(v86, &v82, &qword_27EF5DA28, &qword_24A8415A0);
  sub_24A67E964(&v85, &v82, &qword_27EF5F878, &qword_24A8415A8);

  v48 = sub_24A82CD94();
  v49 = sub_24A82D504();

  sub_24A67F378(v86, &qword_27EF5DA28, &qword_24A8415A0);
  sub_24A67F378(&v85, &qword_27EF5F878, &qword_24A8415A8);
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v81 = v51;
    *v50 = 136315394;
    v52 = sub_24A82CA54();
    v54 = sub_24A695068(0xCuLL, v52, v53);
    v56 = v55;
    v58 = v57;
    v60 = v59;

    v61 = MEMORY[0x24C21C960](v54, v56, v58, v60);
    v63 = v62;

    v64 = sub_24A68761C(v61, v63, &v81);

    *(v50 + 4) = v64;
    *(v50 + 12) = 2080;
    v65 = v78[1];
    v82 = *v78;
    v83 = v65;
    LOBYTE(v84) = *(v78 + 32);
    v66 = sub_24A82D024();
    v68 = sub_24A68761C(v66, v67, &v81);

    *(v50 + 14) = v68;
    _os_log_impl(&dword_24A675000, v48, v49, "FMIPBeaconRefreshingController<%s>.init %s", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v51, -1, -1);
    MEMORY[0x24C21E1D0](v50, -1, -1);
  }

  else
  {

    sub_24A67F378(v86, &qword_27EF5DA28, &qword_24A8415A0);
    sub_24A67F378(&v85, &qword_27EF5F878, &qword_24A8415A8);
  }

  return v23;
}

uint64_t sub_24A697DF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_24A697E3C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_24A697EF4(uint64_t a1, void *a2)
{
  v23 = a1;
  v24 = sub_24A82D554();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A82D534();
  MEMORY[0x28223BE20](v6);
  v7 = sub_24A82CE54();
  MEMORY[0x28223BE20](v7 - 8);
  a2[3] = 0;
  swift_unknownObjectWeakInit();
  a2[4] = MEMORY[0x277D84FA0];
  v17 = a2;
  v8 = sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  v21 = "wn Item location shifting";
  v22 = v8;
  sub_24A82CE24();
  v25 = MEMORY[0x277D84F90];
  v20 = sub_24A679FDC(&qword_2815146D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v19 = sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  v9 = *MEMORY[0x277D85260];
  v10 = v3 + 104;
  v11 = *(v3 + 104);
  v18 = v10;
  v11(v5, v9, v24);
  a2[5] = sub_24A82D594();
  sub_24A82CE24();
  v25 = MEMORY[0x277D84F90];
  sub_24A82D6B4();
  v11(v5, v9, v24);
  v12 = sub_24A82D594();
  v13 = v17;
  v14 = v23;
  v17[6] = v12;
  v13[7] = v14;
  return v13;
}

uint64_t sub_24A698230(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24A6982B8(void *a1)
{
  v2 = v1;
  sub_24A698230(a1, v1 + 16);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);
  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPURLHandler: initialized", v7, 2u);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  sub_24A6876E8(a1);
  return v2;
}

void *sub_24A6983D8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24A82CAA4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_24A82CA94();
  v14 = sub_24A82CA54();
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  v5[2] = v14;
  v5[3] = v16;
  v5[5] = 0;
  type metadata accessor for FMIPDeviceActionsController.CommandFutures();
  v17 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v17 + 112) = MEMORY[0x277D84F90];
  v5[21] = v17;
  v5[4] = a1;
  sub_24A698230(a2, (v5 + 6));
  sub_24A67E964(a3, (v5 + 11), &qword_27EF5D608, &qword_24A837E90);
  sub_24A67E964(a4, (v5 + 16), &qword_27EF5D610, &qword_24A8339A0);
  sub_24A67E964((v5 + 16), v28, &qword_27EF5D610, &qword_24A8339A0);
  v18 = v29;
  v19 = a1;
  sub_24A67F378(v28, &qword_27EF5D610, &qword_24A8339A0);
  if (v18)
  {
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v20 = sub_24A82CDC4();
    sub_24A6797D0(v20, qword_27EF78C40);
    v21 = sub_24A82CD94();
    v22 = sub_24A82D504();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "FMIPDeviceActionsController: initialized for testing";
LABEL_10:
      _os_log_impl(&dword_24A675000, v21, v22, v24, v23, 2u);
      MEMORY[0x24C21E1D0](v23, -1, -1);
    }
  }

  else
  {
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v25 = sub_24A82CDC4();
    sub_24A6797D0(v25, qword_27EF78C40);
    v21 = sub_24A82CD94();
    v22 = sub_24A82D504();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "FMIPDeviceActionsController: initialized";
      goto LABEL_10;
    }
  }

  sub_24A67F378(a4, &qword_27EF5D610, &qword_24A8339A0);
  sub_24A67F378(a3, &qword_27EF5D608, &qword_24A837E90);
  sub_24A6876E8(a2);
  return v5;
}

uint64_t sub_24A698728(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_24A82CDC4();
  sub_24A67976C(v5, a2);
  sub_24A6797D0(v5, a2);
  return sub_24A82CDA4();
}

void *sub_24A6987EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = objc_allocWithZone(type metadata accessor for FMAPSConnectionHandler());

  return sub_24A698874(a1, a2, a3, a4, a5, v15, a7, a8);
}

void *sub_24A698874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v66 = a8;
  v67 = a5;
  v62 = a4;
  v63 = a1;
  v64 = a2;
  v65 = a3;
  v9 = sub_24A82CDF4();
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x28223BE20](v9);
  v55 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_24A82D554();
  v11 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A82D534();
  MEMORY[0x28223BE20](v14);
  v54 = sub_24A82CE54();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a6[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v60 = OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connectionQueue;
  v17 = sub_24A67B054();
  v58 = "v40@0:8@16@24@32";
  v59 = v17;
  sub_24A82CE24();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_2815146D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  (*(v11 + 104))(v13, *MEMORY[0x277D85260], v61);
  v18 = v62;
  *&a6[v60] = sub_24A82D594();
  v19 = &a6[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connection];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &a6[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topicAPSToken];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &a6[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_publicAPSToken];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &a6[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topic];
  v23 = v64;
  *v22 = v63;
  *(v22 + 1) = v23;
  v24 = &a6[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_preferencesStore];
  v25 = v66;
  *v24 = v65;
  *(v24 + 1) = v25;
  v26 = v67;
  *v19 = v18;
  *(v19 + 1) = v26;
  v27 = type metadata accessor for FMAPSConnectionHandler();
  v70.receiver = a6;
  v70.super_class = v27;
  swift_unknownObjectRetain();
  v28 = objc_msgSendSuper2(&v70, sel_init);
  v29 = v28;
  if (v18)
  {
    if (*&v28[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connection])
    {
      v30 = *&v28[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connection + 8];
      ObjectType = swift_getObjectType();
      v32 = *(v30 + 16);
      v33 = v29;
      swift_unknownObjectRetain();
      v32(v29, ObjectType, v30);
      swift_unknownObjectRelease();
    }

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v34 = sub_24A82CDC4();
    sub_24A6797D0(v34, qword_281518F88);
    v35 = v29;
    v36 = sub_24A82CD94();
    v37 = sub_24A82D504();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v38 = 136315138;
      v40 = &v35[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topic];
      v41 = *&v35[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topic];
      v42 = *(v40 + 1);

      v43 = sub_24A68761C(v41, v42, aBlock);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_24A675000, v36, v37, "FMAPSConnectionHandler: initialized with topic %s", v38, 0xCu);
      sub_24A6876E8(v39);
      MEMORY[0x24C21E1D0](v39, -1, -1);
      MEMORY[0x24C21E1D0](v38, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v44 = *&v28[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connectionQueue];
    v45 = swift_allocObject();
    *(v45 + 16) = v29;
    aBlock[4] = sub_24A699B98;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DC8778;
    v46 = _Block_copy(aBlock);
    v47 = v44;
    v48 = v29;
    sub_24A82CE24();
    v68 = MEMORY[0x277D84F90];
    sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v49 = v55;
    v50 = v57;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v16, v49, v46);
    _Block_release(v46);

    (*(v56 + 8))(v49, v50);
    (*(v53 + 8))(v16, v54);
  }

  return v29;
}

uint64_t type metadata accessor for FMIPRefreshingController(uint64_t a1)
{
  result = qword_281513C68;
  if (!qword_281513C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A698FD8(uint64_t a1)
{
  sub_24A699150(319, qword_281515CC8, type metadata accessor for FMIPDevice);
  if (v1 <= 0x3F)
  {
    sub_24A699150(319, &qword_281515DB8, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24A699150(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24A82D634();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

char *sub_24A6991A4(void *a1, char *a2)
{
  v3 = v2;
  v49 = a2;
  v50 = a1;
  v4 = sub_24A82D554();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x28223BE20](v4);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A82D534();
  MEMORY[0x28223BE20](v6);
  v7 = sub_24A82CE54();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_24A82CAA4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A82CA94();
  v12 = sub_24A82CA54();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  *(v3 + 2) = v12;
  *(v3 + 3) = v14;
  *(v3 + 5) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_selectedDevice;
  v16 = type metadata accessor for FMIPDevice(0);
  (*(*(v16 - 8) + 56))(&v3[v15], 1, 1, v16);
  v17 = &v3[OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_itemCounts];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 2) = 0u;
  v17[48] = 1;
  v45 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_refreshQueue;
  sub_24A67B054();
  sub_24A82CE24();
  v51[1] = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_2815146D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  (*(v47 + 104))(v46, *MEMORY[0x277D85260], v48);
  *&v3[v45] = sub_24A82D594();
  *&v3[OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_tapContexts] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_callbackInterval] = 0x40DD4C0000000000;
  *&v3[OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_minCallbackInterval] = 0x40B3880000000000;
  *&v3[OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_maxCallbackInterval] = 0x40ED4C0000000000;
  v18 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_lastRefreshTime;
  v19 = sub_24A82CA34();
  (*(*(v19 - 8) + 56))(&v3[v18], 1, 1, v19);
  *&v3[OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_refreshTimer] = 0;
  v3[OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_isInitializing] = 0;
  v20 = &v3[OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_ownerPhoneNumber];
  *v20 = 0;
  *(v20 + 1) = 0;
  v3[OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_isRefreshing] = 0;
  *&v3[OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_rangingParameters] = 0x4034000000000000;
  v22 = v49;
  v21 = v50;
  *&v3[OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_apsConnectionHandler] = v49;
  sub_24A698230(v21, &v3[OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController]);
  v23 = &v22[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_delegate];
  swift_beginAccess();
  *(v23 + 1) = &off_285DCABD0;
  swift_unknownObjectWeakAssign();
  v24 = qword_281515DC8;
  v25 = v22;
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = sub_24A82CDC4();
  sub_24A6797D0(v26, qword_281518F88);

  v27 = sub_24A82CD94();
  v28 = sub_24A82D504();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v51[0] = v30;
    *v29 = 136315138;
    v49 = v25;
    v31 = *(v3 + 2);
    v32 = *(v3 + 3);

    v33 = sub_24A695068(0xCuLL, v31, v32);
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v40 = MEMORY[0x24C21C960](v33, v35, v37, v39);
    v42 = v41;

    v43 = sub_24A68761C(v40, v42, v51);

    *(v29 + 4) = v43;
    _os_log_impl(&dword_24A675000, v27, v28, "FMIPRefreshingController<%s>.init", v29, 0xCu);
    sub_24A6876E8(v30);
    MEMORY[0x24C21E1D0](v30, -1, -1);
    MEMORY[0x24C21E1D0](v29, -1, -1);
  }

  else
  {
  }

  sub_24A6876E8(v50);
  return v3;
}

void *sub_24A699828(void *a1, uint64_t a2)
{
  v3 = v2;
  v21 = a2;
  v22 = a1;
  v20 = sub_24A82D554();
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82D534();
  MEMORY[0x28223BE20](v7);
  v8 = sub_24A82CE54();
  MEMORY[0x28223BE20](v8 - 8);
  v2[2] = [objc_allocWithZone(MEMORY[0x277D49638]) init];
  v2[5] = 0;
  v9 = sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  v19[0] = "tSafeLocationKey";
  v19[1] = v9;
  sub_24A82CE24();
  v23 = MEMORY[0x277D84F90];
  sub_24A6956B0(&qword_2815146D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  (*(v4 + 104))(v6, *MEMORY[0x277D85260], v20);
  v10 = v21;
  v2[6] = sub_24A82D594();
  v2[7] = MEMORY[0x277D84F90];
  v11 = v22;
  v2[3] = v22;
  v2[4] = v10;
  v12 = qword_281515DC8;
  v13 = v11;

  if (v12 != -1)
  {
    swift_once();
  }

  v14 = sub_24A82CDC4();
  sub_24A6797D0(v14, qword_281518F88);
  v15 = sub_24A82CD94();
  v16 = sub_24A82D504();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_24A675000, v15, v16, "FMIPItemActionsController: initialized", v17, 2u);
    MEMORY[0x24C21E1D0](v17, -1, -1);
  }

  return v3;
}

uint64_t sub_24A699BA0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_24A699BE4(char *a1)
{
  v25 = a1;
  v26 = sub_24A82D554();
  v1 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v3 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24A82D534();
  MEMORY[0x28223BE20](v4);
  v5 = sub_24A82CE54();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = *MEMORY[0x277CEE9F0];
  v7 = *MEMORY[0x277CEE9D8];
  v8 = sub_24A67B054();
  v23[0] = ".fmapsconnectionhandler.serial";
  v23[1] = v8;
  v24 = v6;
  v9 = v7;
  sub_24A82CE24();
  v27 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_2815146D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  v10 = v25;
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v26);
  v11 = sub_24A82D594();
  v12 = objc_allocWithZone(MEMORY[0x277CEEA10]);
  v13 = v24;
  v14 = [v12 initWithEnvironmentName:v24 namedDelegatePort:v9 queue:v11];

  v15 = &off_285DC85E0;
  v16 = &v10[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connection];
  if (!v14)
  {
    v15 = 0;
  }

  *v16 = v14;
  *(v16 + 1) = v15;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v14)
  {
    swift_unknownObjectRetain();
    [v14 setDelegate_];

    swift_unknownObjectRelease();
  }

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v17 = sub_24A82CDC4();
  sub_24A6797D0(v17, qword_281518F88);
  v18 = v10;
  v19 = sub_24A82CD94();
  v20 = sub_24A82D504();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_24A68761C(*&v18[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topic], *&v18[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topic + 8], &v27);
    _os_log_impl(&dword_24A675000, v19, v20, "FMAPSConnectionHandler: initialized with default connection for topic %s", v21, 0xCu);
    sub_24A6876E8(v22);
    MEMORY[0x24C21E1D0](v22, -1, -1);
    MEMORY[0x24C21E1D0](v21, -1, -1);
  }
}

void sub_24A69A02C()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);
  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPDeviceConnectionStateProvider: accesoriesConnectionStateChanged notification received", v5, 2u);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v6 = [objc_opt_self() sharedInstance];
  v8[4] = sub_24A6A1370;
  v8[5] = v1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_24A6A1240;
  v8[3] = &unk_285DC87F0;
  v7 = _Block_copy(v8);

  [v6 getConnectedAccessoriesDiscoveryIds_];
  _Block_release(v7);
}

void sub_24A69A1CC()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);
  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPDeviceConnectionStateProvider: registering for notifications", v5, 2u);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  v7 = sub_24A82CF94();
  CFNotificationCenterAddObserver(v6, v1, sub_24A793B6C, v7, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v8 = [objc_opt_self() defaultCenter];
  v9 = sub_24A82CF94();
  [v8 addObserver:v1 selector:sel_handleDeviceStateChanged name:v9 object:0];
}

uint64_t sub_24A69A398()
{
  v1 = sub_24A82CDF4();
  v13 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A82CE54();
  v4 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 72);
  aBlock[4] = sub_24A69BF2C;
  v16 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC7908;
  v8 = _Block_copy(aBlock);
  v9 = v7;

  sub_24A82CE24();
  v14 = MEMORY[0x277D84F90];
  sub_24A67F008(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40, MEMORY[0x277D83970]);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v6, v3, v8);
  _Block_release(v8);

  (*(v13 + 8))(v3, v1);
  (*(v4 + 8))(v6, v12);
}

uint64_t sub_24A69A688()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A69A6C4(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void sub_24A69A7CC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = sub_24A82CDF4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A82CE54();
  v10 = MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v14 = sub_24A82CDC4();
    sub_24A6797D0(v14, qword_281518F88);
    v35 = sub_24A82CD94();
    v15 = sub_24A82D4E4();
    if (os_log_type_enabled(v35, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24A675000, v35, v15, "FMAPSConnectionHandler: Public APS Token was nil.", v16, 2u);
      MEMORY[0x24C21E1D0](v16, -1, -1);
    }

    v17 = v35;
  }

  else
  {
    v33 = v11;
    v34 = v10;
    v35 = v6;
    v18 = sub_24A82C8E4();
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v19 = sub_24A82CDC4();
    sub_24A6797D0(v19, qword_281518F88);
    v20 = v18;
    v21 = sub_24A82CD94();
    v22 = sub_24A82D504();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v20;
      v25 = v20;
      _os_log_impl(&dword_24A675000, v21, v22, "FMAPSConnectionHandler: Public APS Token received %@.", v23, 0xCu);
      sub_24A67CDA4(v24);
      MEMORY[0x24C21E1D0](v24, -1, -1);
      MEMORY[0x24C21E1D0](v23, -1, -1);
    }

    v26 = [v20 fm_hexString];
    v27 = sub_24A82CFC4();
    v29 = v28;

    v30 = swift_allocObject();
    v30[2] = v3;
    v30[3] = v27;
    v30[4] = v29;
    aBlock[4] = sub_24A69AD30;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DC8728;
    v31 = _Block_copy(aBlock);
    v32 = v3;
    sub_24A82CE24();
    v36 = MEMORY[0x277D84F90];
    sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v13, v8, v31);
    _Block_release(v31);

    (v35[1].isa)(v8, v5);
    (*(v33 + 8))(v13, v34);
  }
}

uint64_t sub_24A69ACD4(uint64_t a1, uint64_t a2)
{
  *(*v2 + qword_2815147C0 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t FMIPManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  FMIPManager.initialize()();
  return swift_unknownObjectRelease();
}

uint64_t sub_24A69ADDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t))
{
  v6 = (a1 + *a4);
  *v6 = a2;
  v6[1] = a3;

  return a5(v7);
}

Swift::Void __swiftcall FMIPManager.initialize()()
{
  v1 = sub_24A82CDF4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v33 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24A82CE54();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration);
  v7 = OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems;
  v8 = *(v6 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems);
  if ((v8 & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = *(v0 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController);
  if (!v9)
  {
    goto LABEL_8;
  }

  v26 = v4;
  v27 = v2;
  v28 = v1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_24A6A0BC8;
  *(v10 + 24) = v9;
  v39 = sub_24A6806A0;
  v40 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_24A6805E4;
  v38 = &unk_285DC5698;
  v30 = _Block_copy(&aBlock);
  v11 = _Block_copy(v30);
  v12 = qword_281513E40;
  swift_retain_n();

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = _os_activity_create(&dword_24A675000, "FMIPRefreshingController.initialize", qword_281513E48, OS_ACTIVITY_FLAG_DEFAULT);
  v14 = _Block_copy(v11);
  v15 = swift_allocObject();
  v29 = v11;
  v16 = v15;
  *(v15 + 16) = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_24A6A0BC0;
  *(v17 + 24) = v16;
  v34[4] = sub_24A680674;
  v34[5] = v17;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 1107296256;
  v34[2] = sub_24A6805E4;
  v34[3] = &unk_285DC5710;
  v18 = _Block_copy(v34);

  os_activity_apply(v13, v18);
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  _Block_release(v30);
  _Block_release(v29);
  swift_unknownObjectRelease();
  if (v18)
  {
    __break(1u);
    goto LABEL_15;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  v1 = v28;
  v2 = v27;
  v4 = v26;
  if (isEscapingClosureAtFileLocation)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v8 = *(v6 + v7);
LABEL_8:
  if ((v8 & 3) != 0)
  {
    v20 = swift_allocObject();
    swift_weakInit();

    sub_24A6A7024(sub_24A6AC5B8, v20);

    sub_24A6A7448(0, 0);
  }

  if (*(*(v0 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager) + 64) == 1)
  {
    v21 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_initializedSubsystems;
    swift_beginAccess();
    if (*(v0 + v21) != *(v6 + v7))
    {
      v39 = sub_24A74DCE4;
      v40 = v0;
      aBlock = MEMORY[0x277D85DD0];
      v36 = 1107296256;
      v37 = sub_24A699BA0;
      v38 = &unk_285DC5620;
      v22 = _Block_copy(&aBlock);

      v23 = v31;
      sub_24A82CE24();
      v34[6] = MEMORY[0x277D84F90];
      sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      v24 = v4;
      sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
      sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
      v25 = v33;
      sub_24A82D6B4();
      MEMORY[0x24C21CE90](0, v23, v25, v22);
      _Block_release(v22);
      (*(v2 + 8))(v25, v1);
      (*(v32 + 8))(v23, v24);
    }
  }
}

uint64_t sub_24A69B4B0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A69B4F8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A69B544()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_preferencesStore + 8);
  ObjectType = swift_getObjectType();
  v3 = (v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_publicAPSToken);
  v4 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_publicAPSToken);
  v5 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_publicAPSToken + 8);
  v6 = *(v1 + 40);

  v6(v4, v5, ObjectType, v1);
  v7 = v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    v10 = swift_getObjectType();
    v11 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topicAPSToken);
    v12 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topicAPSToken + 8);
    v13 = *v3;
    v14 = v3[1];
    v15 = *(v9 + 8);

    v15(v0, v11, v12, v13, v14, v10, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A69B68C()
{
  qword_281513E48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t sub_24A69B700(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24A6CADE0;

  return sub_24A69B884(a1, v4);
}

void sub_24A69B7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = sub_24A82CF94();
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_opt_self();
  v6 = sub_24A82CF94();
  v7 = sub_24A82CF94();
  [v5 setString:v4 forKey:v6 inDomain:v7];
}

uint64_t sub_24A69B884(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24A69BE34;

  return v6(a1);
}

uint64_t sub_24A69B990(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A69BD40;

  return sub_24A69BC38(a1, v4, v5, v7, v6);
}

void sub_24A69BA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A82CDC4();
  sub_24A6797D0(v6, qword_281518F88);

  oslog = sub_24A82CD94();
  v7 = sub_24A82D504();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315394;
    if (a2)
    {
      v10 = 1702195828;
    }

    else
    {
      v10 = 0x65736C6166;
    }

    if (a2)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    v12 = sub_24A68761C(v10, v11, &v17);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    if (a4)
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    if (a4)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    v15 = sub_24A68761C(v13, v14, &v17);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_24A675000, oslog, v7, "FMIPRefreshingController: connectionHandler didReceive topicToken: %s publicToken: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v9, -1, -1);
    MEMORY[0x24C21E1D0](v8, -1, -1);
  }
}

uint64_t sub_24A69BC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24A69BCA4, 0, 0);
}

uint64_t sub_24A69BC64()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A69BCA4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconSharingController);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_24A69BCD0, v1, 0);
}

uint64_t sub_24A69BCD0()
{
  *(*(v0 + 32) + 160) = &off_285DC5EA0;
  swift_unknownObjectWeakAssign();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24A69BD40()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24A69BE34()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24A69BF34(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_beginAccess();

    sub_24A69BFF8(a1);

    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    v3 = *(a1 + 80);

    sub_24A69C358(a1, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A69BFF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A82CE54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A82CDF4();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration) + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems) & 2) != 0)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v13 = sub_24A82CDC4();
    sub_24A6797D0(v13, qword_281518F88);
    v14 = sub_24A82CD94();
    v15 = sub_24A82D504();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v26 = v9;
      v17 = v8;
      v18 = v5;
      v19 = v4;
      v20 = a1;
      v21 = v16;
      *v16 = 0;
      _os_log_impl(&dword_24A675000, v14, v15, "FMIPManager: dataManager updated items", v16, 2u);
      v22 = v21;
      a1 = v20;
      v4 = v19;
      v5 = v18;
      v8 = v17;
      v9 = v26;
      MEMORY[0x24C21E1D0](v22, -1, -1);
    }

    sub_24A82CDE4();
    v23 = swift_allocObject();
    *(v23 + 16) = a1;
    *(v23 + 24) = v2;
    aBlock[4] = sub_24A69C6F4;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DC64E8;
    v24 = _Block_copy(aBlock);

    sub_24A82CE24();
    MEMORY[0x24C21CE90](0, v7, v12, v24);
    _Block_release(v24);
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_24A69C358(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24A82CE54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A82CDF4();
  result = MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration) + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems))
  {
    v28 = v12;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v15 = sub_24A82CDC4();
    sub_24A6797D0(v15, qword_281518F88);
    v16 = sub_24A82CD94();
    v17 = sub_24A82D504();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v27 = a2;
      v19 = v10;
      v20 = v7;
      v21 = v6;
      v22 = a1;
      v23 = v18;
      *v18 = 0;
      _os_log_impl(&dword_24A675000, v16, v17, "FMIPManager: dataManager updated device", v18, 2u);
      v24 = v23;
      a1 = v22;
      v6 = v21;
      v7 = v20;
      v10 = v19;
      a2 = v27;
      MEMORY[0x24C21E1D0](v24, -1, -1);
    }

    sub_24A82CDE4();
    v25 = swift_allocObject();
    v25[2] = v3;
    v25[3] = a2;
    v25[4] = a1;
    aBlock[4] = sub_24A6A0194;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DC6470;
    v26 = _Block_copy(aBlock);

    sub_24A82CE24();
    MEMORY[0x24C21CE90](0, v9, v14, v26);
    _Block_release(v26);
    (*(v7 + 8))(v9, v6);
    (*(v28 + 8))(v14, v10);
  }

  return result;
}

uint64_t sub_24A69C6A4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A69C6FC(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v4 = sub_24A82CDF4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A82CE54();
  v16 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(a1 + 280);
  v15[1] = *(a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
  aBlock[4] = sub_24A6A04A0;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6510;
  v10 = _Block_copy(aBlock);

  sub_24A82CE24();
  v20 = MEMORY[0x277D84F90];
  sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v8, v6, v10);
  _Block_release(v10);
  (*(v19 + 8))(v6, v4);
  (*(v16 + 8))(v8, v18);

  *(a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemCounts) = v9;

  sub_24A69CA60();
  v11 = v17;
  swift_beginAccess();
  v12 = *(v11 + 80);
  v13 = *(v11 + 288);

  sub_24A69D570(v12, v9, v13);
}

uint64_t sub_24A69CA60()
{
  v1 = type metadata accessor for FMIPProductType(0);
  v2 = MEMORY[0x28223BE20](v1);
  v84 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v83 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v83 - v7;
  v9 = type metadata accessor for FMIPItem(0);
  v95 = *(v9 - 1);
  v10 = MEMORY[0x28223BE20](v9);
  v83 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v86 = &v83 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v89 = &v83 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v88 = &v83 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v83 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v91 = &v83 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v83 - v23;
  v87 = v0;
  v85 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemCounts;
  result = *(v0 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemCounts);
  if (!result)
  {
    v38 = 0;
    v28 = 0;
    goto LABEL_79;
  }

  v26 = *(result + 16);
  v94 = result;

  v90 = v1;
  v92 = v9;
  v93 = v26;
  if (!v26)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_21:

    v39 = *(v87 + v85);
    if (v39)
    {
      v40 = *(v39 + 16);

      v93 = v28;
      if (v40)
      {
        v41 = 0;
        v94 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v41 >= *(v39 + 16))
          {
            goto LABEL_84;
          }

          v42 = (*(v95 + 80) + 32) & ~*(v95 + 80);
          v43 = *(v95 + 72);
          sub_24A69F134(v39 + v42 + v43 * v41, v20, type metadata accessor for FMIPItem);
          sub_24A69F134(&v20[v9[24]], v6, type metadata accessor for FMIPProductType);
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            sub_24A67F378(v6, &qword_27EF5D360, &unk_24A836200);
            if ((v20[v9[22]] & 1) == 0)
            {
              v44 = &v20[v9[15]];
              v45 = *v44 == 0x6F6C4072656E776FLL && *(v44 + 1) == 0xEF74736F686C6163;
              if (v45 || (sub_24A82DC04() & 1) != 0)
              {
                sub_24A6A2390(v20, v88, type metadata accessor for FMIPItem);
                v46 = v94;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v48 = v46;
                v96 = v46;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_24A6FCB30(0, *(v46 + 16) + 1, 1);
                  v28 = v93;
                  v48 = v96;
                }

                v49 = v48;
                v51 = *(v48 + 16);
                v50 = *(v48 + 24);
                if (v51 >= v50 >> 1)
                {
                  sub_24A6FCB30((v50 > 1), v51 + 1, 1);
                  v28 = v93;
                  v49 = v96;
                }

                *(v49 + 16) = v51 + 1;
                v94 = v49;
                result = sub_24A6A2390(v88, v49 + v42 + v51 * v43, type metadata accessor for FMIPItem);
                v9 = v92;
                goto LABEL_26;
              }
            }
          }

          else
          {
            sub_24A69F2C4(v6, type metadata accessor for FMIPProductType);
          }

          result = sub_24A69F2C4(v20, type metadata accessor for FMIPItem);
LABEL_26:
          if (v40 == ++v41)
          {
            goto LABEL_43;
          }
        }
      }

      v94 = MEMORY[0x277D84F90];
LABEL_43:

      v54 = *(v87 + v85);
      if (v54)
      {
        v55 = *(v54 + 16);

        v56 = MEMORY[0x277D84F90];
        if (v55)
        {
          v57 = 0;
          v58 = v84;
          do
          {
            if (v57 >= *(v54 + 16))
            {
              goto LABEL_85;
            }

            v59 = (*(v95 + 80) + 32) & ~*(v95 + 80);
            v60 = *(v95 + 72);
            v61 = v89;
            sub_24A69F134(v54 + v59 + v60 * v57, v89, type metadata accessor for FMIPItem);
            v62 = v92;
            sub_24A69F134(v61 + v92[24], v58, type metadata accessor for FMIPProductType);
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              sub_24A67F378(v58, &qword_27EF5D360, &unk_24A836200);
              if (*(v61 + v62[22]))
              {
                v63 = (v61 + v92[15]);
                v64 = *v63 == 0x6F6C4072656E776FLL && v63[1] == 0xEF74736F686C6163;
                if (v64 || (v65 = sub_24A82DC04(), v61 = v89, (v65 & 1) != 0))
                {
                  sub_24A6A2390(v61, v86, type metadata accessor for FMIPItem);
                  v66 = swift_isUniquelyReferenced_nonNull_native();
                  v96 = v56;
                  if ((v66 & 1) == 0)
                  {
                    sub_24A6FCB30(0, *(v56 + 16) + 1, 1);
                    v58 = v84;
                    v56 = v96;
                  }

                  v68 = *(v56 + 16);
                  v67 = *(v56 + 24);
                  if (v68 >= v67 >> 1)
                  {
                    sub_24A6FCB30((v67 > 1), v68 + 1, 1);
                    v58 = v84;
                    v56 = v96;
                  }

                  *(v56 + 16) = v68 + 1;
                  result = sub_24A6A2390(v86, v56 + v59 + v68 * v60, type metadata accessor for FMIPItem);
                  goto LABEL_48;
                }
              }
            }

            else
            {
              sub_24A69F2C4(v58, type metadata accessor for FMIPProductType);
            }

            result = sub_24A69F2C4(v61, type metadata accessor for FMIPItem);
LABEL_48:
            ++v57;
          }

          while (v55 != v57);
        }

        v69 = *(v56 + 16);
        if (v69)
        {
          v96 = MEMORY[0x277D84F90];
          sub_24A6FC900(0, v69, 0);
          v70 = v96;
          v71 = v56 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
          v72 = *(v95 + 72);
          v73 = v83;
          do
          {
            sub_24A69F134(v71, v73, type metadata accessor for FMIPItem);
            if (v73[43])
            {
              v74 = v73[42];
              v75 = v73[43];
            }

            else
            {
              v74 = v73[44];
              v75 = v73[45];
            }

            sub_24A69F2C4(v73, type metadata accessor for FMIPItem);
            v96 = v70;
            v77 = *(v70 + 16);
            v76 = *(v70 + 24);
            if (v77 >= v76 >> 1)
            {
              sub_24A6FC900((v76 > 1), v77 + 1, 1);
              v70 = v96;
            }

            *(v70 + 16) = v77 + 1;
            v78 = v70 + 16 * v77;
            *(v78 + 32) = v74;
            *(v78 + 40) = v75;
            v71 += v72;
            --v69;
          }

          while (v69);
        }

        v53 = sub_24A82D214();

        v28 = v93;
        v52 = v94;
        if (v93)
        {
          goto LABEL_74;
        }

LABEL_75:
        if (v52)
        {
          v38 = *(v52 + 16);

          if (v53)
          {
LABEL_77:
            v80 = *(v53 + 16);

            goto LABEL_80;
          }
        }

        else
        {
          v38 = 0;
          if (v53)
          {
            goto LABEL_77;
          }
        }

LABEL_79:
        v80 = 0;
LABEL_80:
        v81 = *(v87 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController);
        if (v81)
        {
          v82 = v81 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_itemCounts;
          *v82 = v28;
          *(v82 + 8) = 0;
          *(v82 + 16) = v38;
          *(v82 + 24) = 0;
          *(v82 + 32) = v80;
          *(v82 + 40) = 0;
          *(v82 + 48) = 0;
        }

        return result;
      }

      v53 = 0;
      v52 = v94;
      if (!v28)
      {
        goto LABEL_75;
      }
    }

    else
    {
      v52 = 0;
      v53 = 0;
      if (!v28)
      {
        goto LABEL_75;
      }
    }

LABEL_74:
    v28 = *(v28 + 16);
    v79 = v52;

    v52 = v79;
    goto LABEL_75;
  }

  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  result = v94;
  while (v27 < *(result + 16))
  {
    v29 = v20;
    v30 = v6;
    v31 = (*(v95 + 80) + 32) & ~*(v95 + 80);
    v32 = *(v95 + 72);
    sub_24A69F134(result + v31 + v32 * v27, v24, type metadata accessor for FMIPItem);
    sub_24A69F134(&v24[v9[24]], v8, type metadata accessor for FMIPProductType);
    if (swift_getEnumCaseMultiPayload() >= 2)
    {
      sub_24A67F378(v8, &qword_27EF5D360, &unk_24A836200);
    }

    else
    {
      sub_24A69F2C4(v8, type metadata accessor for FMIPProductType);
      v33 = &v24[v9[15]];
      v34 = *v33 == 0x6F6C4072656E776FLL && *(v33 + 1) == 0xEF74736F686C6163;
      if (v34 || (sub_24A82DC04() & 1) != 0)
      {
        sub_24A6A2390(v24, v91, type metadata accessor for FMIPItem);
        v35 = swift_isUniquelyReferenced_nonNull_native();
        v96 = v28;
        if ((v35 & 1) == 0)
        {
          sub_24A6FCB30(0, *(v28 + 16) + 1, 1);
          v28 = v96;
        }

        v37 = *(v28 + 16);
        v36 = *(v28 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_24A6FCB30((v36 > 1), v37 + 1, 1);
          v28 = v96;
        }

        *(v28 + 16) = v37 + 1;
        sub_24A6A2390(v91, v28 + v31 + v37 * v32, type metadata accessor for FMIPItem);
        v9 = v92;
        goto LABEL_6;
      }
    }

    sub_24A69F2C4(v24, type metadata accessor for FMIPItem);
LABEL_6:
    ++v27;
    result = v94;
    v6 = v30;
    v20 = v29;
    if (v93 == v27)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

void sub_24A69D570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v230 = a3;
  v231 = a2;
  v6 = type metadata accessor for FMIPItemGroup(0);
  v229 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v247 = &v224 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = type metadata accessor for FMIPItem(0);
  v239 = *(v238 - 8);
  MEMORY[0x28223BE20](v238);
  v253 = (&v224 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v224 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v224 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v224 - v17;
  MEMORY[0x28223BE20](v16);
  v258 = (&v224 - v19);
  v20 = sub_24A82CAA4();
  v256 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v250 = &v224 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v224 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v248 = &v224 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v235 = &v224 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v251 = &v224 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v240 = &v224 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v254 = (&v224 - v35);
  MEMORY[0x28223BE20](v34);
  v249 = &v224 - v36;
  v37 = type metadata accessor for FMIPDevice(0);
  v38 = *(v37 - 8);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v245 = &v224 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v237 = &v224 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v224 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = &v224 - v46;
  v246 = sub_24A82CA34();
  v234 = *(v246 - 8);
  v48 = MEMORY[0x28223BE20](v246);
  v233 = &v224 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v242 = &v224 - v51;
  MEMORY[0x28223BE20](v50);
  v241 = &v224 - v52;
  v53 = *(v4 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration);
  if (*(v53 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems))
  {
    v226 = OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems;
    v227 = v53;
    v244 = v15;
    v252 = v25;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v58 = sub_24A82CDC4();
    sub_24A6797D0(v58, qword_281518F88);

    v59 = sub_24A82CD94();
    v60 = sub_24A82D504();
    v61 = os_log_type_enabled(v59, v60);
    v236 = v12;
    if (v61)
    {
      v62 = swift_slowAlloc();
      *v62 = 134217984;
      *(v62 + 4) = *(a1 + 16);

      _os_log_impl(&dword_24A675000, v59, v60, "FMIPManager: updating locating devices lastOnlineLocationInfo: %ld", v62, 0xCu);
      v63 = v62;
      v12 = v236;
      MEMORY[0x24C21E1D0](v63, -1, -1);
    }

    else
    {
    }

    v64 = sub_24A82C514();
    v260 = v64;
    v261 = sub_24A679FDC(&unk_281514680, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
    v65 = sub_24A697E3C(v259);
    (*(*(v64 - 8) + 104))(v65, *MEMORY[0x277D08A00], v64);
    LOBYTE(v64) = sub_24A82C4D4();
    sub_24A6876E8(v259);
    v257 = v20;
    v232 = v4;
    if (v64)
    {
      v66 = *(v4 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController);
      if (*(v66 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_shouldUseBeaconsOptimizationSPI) == 1)
      {
        v244 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController;
        v67 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy;
        v247 = *(v66 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy + 16);

LABEL_111:
        v164 = *(v66 + v67 + 24);

        sub_24A82CA24();
        v165 = *(a1 + 16);
        if (!v165)
        {
LABEL_141:
          v219 = *(v232 + v244) + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy;
          v220 = *(v219 + 8);
          v221 = *(v219 + 16);
          v222 = *(v219 + 24);
          v223 = *(v219 + 32);
          LOBYTE(v259[0]) = *v219;
          v259[1] = v220;
          v259[2] = v221;
          v260 = v222;
          LOBYTE(v261) = v223;
          *v219 = v259[0];
          *(v219 + 16) = v247;
          *(v219 + 24) = v164;
          *(v219 + 32) = 0;

          sub_24A69F444(v259);

          (*(v234 + 8))(v242, v246);

          return;
        }

        v166 = a1 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
        v167 = v38;
        v168 = (v256 + 48);
        v169 = *(v167 + 72);
        v254 = (v256 + 32);
        v251 = (v234 + 8);
        v253 = (v256 + 8);
        v249 = (v256 + 16);
        v170 = v252;
        v171 = v245;
        v243 = v256 + 48;
        while (1)
        {
          sub_24A69F134(v166, v171, type metadata accessor for FMIPDevice);
          if (!*(v171 + 24))
          {
            goto LABEL_140;
          }

          sub_24A82CA44();
          if ((*v168)(v12, 1, v20) == 1)
          {
            sub_24A69F2C4(v171, type metadata accessor for FMIPDevice);
            sub_24A67F378(v12, &qword_27EF5D020, &qword_24A830E40);
          }

          else
          {
            (*v254)(v170, v12, v20);
            v172 = *(v171 + 264);
            if (!v172)
            {
              v209 = sub_24A77EDF8(v170);
              if (v210)
              {
                v211 = v209;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v259[0] = v164;
                if (!isUniquelyReferenced_nonNull_native)
                {
                  sub_24A786A60();
                  v164 = v259[0];
                }

                v213 = *(v256 + 8);
                v213(v164[6] + *(v256 + 72) * v211, v20);

                sub_24A7C4C44(v211, v164);
                v214 = v252;
                v213(v252, v20);
                v170 = v214;
              }

              else
              {
                (*v253)(v170, v20);
              }

              goto LABEL_139;
            }

            v255 = v172;
            v173 = [v255 timestamp];
            v174 = v241;
            sub_24A82C9F4();

            v175 = objc_allocWithZone(MEMORY[0x277D49678]);
            v176 = sub_24A82C994();
            v177 = sub_24A82C994();
            v258 = [v175 initWithDate:v176 updatedOn:v177];

            v178 = *v251;
            (*v251)(v174, v246);
            if (!v164[2] || (v180 = sub_24A77EDF8(v252), (v181 & 1) == 0) || (v182 = *(v164[7] + 8 * v180), v248 = v182, v183 = -[NSObject timestamp](v258, sel_timestamp), v184 = v241, sub_24A82C9F4(), v183, sub_24A82C9D4(), v186 = v185, v187 = v184, v188 = v246, v178(v187, v246), v189 = [v182 timestamp], v190 = v169, v191 = v189, v192 = v233, sub_24A82C9F4(), v191, v169 = v190, sub_24A82C9D4(), v194 = v193, v248, v178(v192, v188), v168 = v243, v179.n128_f64[0] = v186 - v194, v186 - v194 >= 180.0))
            {
              v195 = v20;
              v196 = v250;
              v197 = *v249;
              (*v249)(v250, v252, v195, v179);
              v198 = swift_isUniquelyReferenced_nonNull_native();
              v259[0] = v164;
              v199 = sub_24A77EDF8(v196);
              v201 = v164[2];
              v202 = (v200 & 1) == 0;
              v141 = __OFADD__(v201, v202);
              v203 = v201 + v202;
              if (v141)
              {
                goto LABEL_148;
              }

              v204 = v200;
              if (v164[3] >= v203)
              {
                v170 = v252;
                if ((v198 & 1) == 0)
                {
                  v218 = v199;
                  sub_24A786A60();
                  v170 = v252;
                  v199 = v218;
                }

                v12 = v236;
                v164 = v259[0];
                if ((v204 & 1) == 0)
                {
                  goto LABEL_127;
                }
              }

              else
              {
                sub_24A78238C(v203, v198);
                v199 = sub_24A77EDF8(v250);
                if ((v204 & 1) != (v205 & 1))
                {
                  sub_24A82DC44();
                  __break(1u);
                  return;
                }

                v12 = v236;
                v170 = v252;
                v164 = v259[0];
                if ((v204 & 1) == 0)
                {
LABEL_127:
                  v164[(v199 >> 6) + 8] |= 1 << v199;
                  v206 = v199;
                  v197(v164[6] + *(v256 + 72) * v199, v250, v257);
                  *(v164[7] + 8 * v206) = v258;
                  v207 = v164[2];
                  v141 = __OFADD__(v207, 1);
                  v208 = v207 + 1;
                  if (v141)
                  {
                    goto LABEL_150;
                  }

                  v164[2] = v208;
LABEL_137:
                  v217 = *v253;
                  v20 = v257;
                  (*v253)(v250, v257);

                  (v217)(v170, v20);
LABEL_139:
                  v171 = v245;
LABEL_140:
                  sub_24A69F2C4(v171, type metadata accessor for FMIPDevice);
                  goto LABEL_114;
                }
              }

              v215 = v164[7];
              v216 = *(v215 + 8 * v199);
              *(v215 + 8 * v199) = v258;

              goto LABEL_137;
            }

            v170 = v252;
            (*v253)(v252, v20, v179.n128_f64[0]);

            v171 = v245;
            sub_24A69F2C4(v245, type metadata accessor for FMIPDevice);
            v12 = v236;
          }

LABEL_114:
          v166 += v169;
          if (!--v165)
          {
            goto LABEL_141;
          }
        }
      }
    }

    v68 = v241;
    sub_24A82CA24();
    sub_24A82C9D4();
    v70 = v69;
    (*(v234 + 8))(v68, v246);
    v71 = *(a1 + 16);
    v255 = v18;
    v225 = a1;
    v228 = v38;
    if (v71)
    {
      v72 = *(v38 + 72);
      v243 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v73 = a1 + v243;
      v74 = MEMORY[0x277D84F90];
      v75 = v258;
      v76 = v237;
      do
      {
        sub_24A69F134(v73, v47, type metadata accessor for FMIPDevice);
        if (sub_24A74A594(v47, v70))
        {
          sub_24A6A2390(v47, v76, type metadata accessor for FMIPDevice);
          v77 = swift_isUniquelyReferenced_nonNull_native();
          v259[0] = v74;
          if ((v77 & 1) == 0)
          {
            sub_24A6FCBB8(0, *(v74 + 16) + 1, 1);
            v76 = v237;
            v74 = v259[0];
          }

          v79 = *(v74 + 16);
          v78 = *(v74 + 24);
          if (v79 >= v78 >> 1)
          {
            sub_24A6FCBB8((v78 > 1), v79 + 1, 1);
            v76 = v237;
            v74 = v259[0];
          }

          *(v74 + 16) = v79 + 1;
          sub_24A6A2390(v76, v74 + v243 + v79 * v72, type metadata accessor for FMIPDevice);
          v75 = v258;
        }

        else
        {
          sub_24A69F2C4(v47, type metadata accessor for FMIPDevice);
        }

        v73 += v72;
        --v71;
      }

      while (v71);
    }

    else
    {
      v74 = MEMORY[0x277D84F90];
      v75 = v258;
    }

    v80 = *(v74 + 16);
    if (v80)
    {
      v81 = v74 + ((*(v228 + 80) + 32) & ~*(v228 + 80));
      v82 = *(v228 + 72);
      v83 = MEMORY[0x277D84F90];
      do
      {
        sub_24A69F134(v81, v45, type metadata accessor for FMIPDevice);
        v86 = *(v45 + 2);
        v85 = *(v45 + 3);

        sub_24A69F2C4(v45, type metadata accessor for FMIPDevice);
        if (v85)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v83 = sub_24A780414(0, *(v83 + 2) + 1, 1, v83);
          }

          v88 = *(v83 + 2);
          v87 = *(v83 + 3);
          if (v88 >= v87 >> 1)
          {
            v83 = sub_24A780414((v87 > 1), v88 + 1, 1, v83);
          }

          *(v83 + 2) = v88 + 1;
          v84 = &v83[16 * v88];
          *(v84 + 4) = v86;
          *(v84 + 5) = v85;
          v75 = v258;
        }

        v81 += v82;
        --v80;
      }

      while (v80);
    }

    else
    {

      v83 = MEMORY[0x277D84F90];
    }

    v89 = *(v83 + 2);
    v20 = v257;
    if (v89)
    {
      v90 = 0;
      v91 = (v256 + 48);
      v92 = (v256 + 32);
      v93 = v83 + 40;
      v258 = MEMORY[0x277D84F90];
      while (v90 < *(v83 + 2))
      {

        sub_24A82CA44();

        if ((*v91)(v75, 1, v20) == 1)
        {
          sub_24A67F378(v75, &qword_27EF5D020, &qword_24A830E40);
        }

        else
        {
          v94 = v20;
          v95 = *v92;
          v96 = v249;
          (*v92)(v249, v75, v94);
          v95(v254, v96, v94);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v258 = sub_24A78029C(0, v258[2].isa + 1, 1, v258);
          }

          isa = v258[2].isa;
          v97 = v258[3].isa;
          if (isa >= v97 >> 1)
          {
            v258 = sub_24A78029C((v97 > 1), isa + 1, 1, v258);
          }

          v99 = v258;
          v258[2].isa = (isa + 1);
          v100 = v257;
          v95(v99 + ((*(v256 + 80) + 32) & ~*(v256 + 80)) + *(v256 + 72) * isa, v254, v257);
          v20 = v100;
        }

        ++v90;
        v93 += 16;
        if (v89 == v90)
        {
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    v258 = MEMORY[0x277D84F90];
LABEL_50:

    v101 = *(v227 + v226);
    v102 = MEMORY[0x277D84F90];
    if ((v101 & 2) == 0)
    {
      goto LABEL_70;
    }

    v103 = v231;
    v104 = *(v231 + 16);
    if (v104)
    {
      v259[0] = MEMORY[0x277D84F90];
      sub_24A6FC900(0, v104, 0);
      v102 = v259[0];
      v105 = v103 + ((*(v239 + 80) + 32) & ~*(v239 + 80));
      v106 = *(v239 + 72);
      do
      {
        v107 = v253;
        sub_24A69F134(v105, v253, type metadata accessor for FMIPItem);
        v108 = v107[44];
        v109 = v107[45];

        sub_24A69F2C4(v107, type metadata accessor for FMIPItem);
        v259[0] = v102;
        v111 = *(v102 + 16);
        v110 = *(v102 + 24);
        v112 = v111 + 1;
        if (v111 >= v110 >> 1)
        {
          sub_24A6FC900((v110 > 1), v111 + 1, 1);
          v112 = v111 + 1;
          v102 = v259[0];
        }

        *(v102 + 16) = v112;
        v113 = v102 + 16 * v111;
        *(v113 + 32) = v108;
        *(v113 + 40) = v109;
        v105 += v106;
        --v104;
      }

      while (v104);
      v20 = v257;
    }

    else
    {
      v112 = *(MEMORY[0x277D84F90] + 16);
      v114 = MEMORY[0x277D84F90];
      if (!v112)
      {
LABEL_69:

        v102 = v114;
LABEL_70:
        if ((v101 & 1) == 0)
        {
          v127 = MEMORY[0x277D84F90];
          goto LABEL_110;
        }

        v128 = *(v230 + 16);
        v129 = MEMORY[0x277D84F90];
        if (!v128)
        {
          v132 = MEMORY[0x277D84F90];
LABEL_90:
          v143 = v132[2];
          if (v143)
          {
            v259[0] = v129;
            sub_24A6FC900(0, v143, 0);
            v144 = v259[0];
            v145 = v132 + ((*(v239 + 80) + 32) & ~*(v239 + 80));
            v146 = *(v239 + 72);
            do
            {
              v147 = v253;
              sub_24A69F134(v145, v253, type metadata accessor for FMIPItem);
              v148 = v147[44];
              v149 = v147[45];

              sub_24A69F2C4(v147, type metadata accessor for FMIPItem);
              v259[0] = v144;
              v151 = *(v144 + 16);
              v150 = *(v144 + 24);
              if (v151 >= v150 >> 1)
              {
                sub_24A6FC900((v150 > 1), v151 + 1, 1);
                v144 = v259[0];
              }

              *(v144 + 16) = v151 + 1;
              v152 = v144 + 16 * v151;
              *(v152 + 32) = v148;
              *(v152 + 40) = v149;
              v145 += v146;
              --v143;
            }

            while (v143);
          }

          else
          {

            v144 = MEMORY[0x277D84F90];
          }

          v20 = v257;
          v255 = *(v144 + 16);
          if (v255)
          {
            v153 = 0;
            v254 = (v256 + 48);
            v154 = (v256 + 32);
            v155 = v144 + 40;
            v127 = MEMORY[0x277D84F90];
            while (v153 < *(v144 + 16))
            {
              v156 = v102;

              v157 = v244;
              sub_24A82CA44();

              if ((*v254)(v157, 1, v20) == 1)
              {
                sub_24A67F378(v157, &qword_27EF5D020, &qword_24A830E40);
                v102 = v156;
              }

              else
              {
                v158 = v20;
                v159 = *v154;
                v160 = v235;
                (*v154)(v235, v157, v158);
                v159(v248, v160, v158);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v127 = sub_24A78029C(0, *(v127 + 2) + 1, 1, v127);
                }

                v102 = v156;
                v162 = *(v127 + 2);
                v161 = *(v127 + 3);
                if (v162 >= v161 >> 1)
                {
                  v127 = sub_24A78029C((v161 > 1), v162 + 1, 1, v127);
                }

                *(v127 + 2) = v162 + 1;
                v163 = v257;
                v159(&v127[((*(v256 + 80) + 32) & ~*(v256 + 80)) + *(v256 + 72) * v162], v248, v257);
                v20 = v163;
              }

              ++v153;
              v155 += 16;
              if (v255 == v153)
              {
                goto LABEL_109;
              }
            }

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
            __break(1u);
LABEL_150:
            __break(1u);
            goto LABEL_151;
          }

          v127 = MEMORY[0x277D84F90];
LABEL_109:

LABEL_110:
          a1 = v225;
          v38 = v228;
          v259[0] = v258;
          sub_24A77EB08(v102);
          sub_24A77EB08(v127);
          v247 = sub_24A713EE8(v259[0]);

          v244 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController;
          v66 = *(v232 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController);
          v67 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy;
          v12 = v236;
          goto LABEL_111;
        }

        v130 = v230 + ((*(v229 + 80) + 32) & ~*(v229 + 80));
        v131 = *(v229 + 72);
        v132 = MEMORY[0x277D84F90];
        while (1)
        {
          v133 = v247;
          sub_24A69F134(v130, v247, type metadata accessor for FMIPItemGroup);
          v134 = *(v133 + 40);

          sub_24A69F2C4(v133, type metadata accessor for FMIPItemGroup);
          v135 = *(v134 + 16);
          v136 = v132[2];
          v137 = v136 + v135;
          if (__OFADD__(v136, v135))
          {
            goto LABEL_145;
          }

          v138 = swift_isUniquelyReferenced_nonNull_native();
          if (v138 && v137 <= v132[3] >> 1)
          {
            if (!*(v134 + 16))
            {
              goto LABEL_74;
            }
          }

          else
          {
            if (v136 <= v137)
            {
              v139 = v136 + v135;
            }

            else
            {
              v139 = v136;
            }

            v132 = sub_24A7802C4(v138, v139, 1, v132);
            if (!*(v134 + 16))
            {
LABEL_74:

              if (v135)
              {
                goto LABEL_146;
              }

              goto LABEL_75;
            }
          }

          if ((v132[3] >> 1) - v132[2] < v135)
          {
            goto LABEL_147;
          }

          swift_arrayInitWithCopy();

          if (v135)
          {
            v140 = v132[2];
            v141 = __OFADD__(v140, v135);
            v142 = v140 + v135;
            if (v141)
            {
              goto LABEL_149;
            }

            v132[2] = v142;
          }

LABEL_75:
          v130 += v131;
          if (!--v128)
          {
            goto LABEL_90;
          }
        }
      }
    }

    v243 = v101;
    v115 = 0;
    v116 = (v256 + 48);
    v254 = (v256 + 32);
    v117 = v102 + 40;
    v114 = MEMORY[0x277D84F90];
    v249 = (v256 + 48);
    do
    {
      if (v115 >= *(v102 + 16))
      {
        goto LABEL_143;
      }

      v118 = v112;

      v119 = v255;
      sub_24A82CA44();

      if ((*v116)(v119, 1, v20) == 1)
      {
        sub_24A67F378(v119, &qword_27EF5D020, &qword_24A830E40);
      }

      else
      {
        v120 = v102;
        v121 = v20;
        v122 = *v254;
        v123 = v240;
        (*v254)(v240, v119, v121);
        v122(v251, v123, v121);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v114 = sub_24A78029C(0, v114[2] + 1, 1, v114);
        }

        v125 = v114[2];
        v124 = v114[3];
        v102 = v120;
        if (v125 >= v124 >> 1)
        {
          v114 = sub_24A78029C((v124 > 1), v125 + 1, 1, v114);
        }

        v116 = v249;
        v114[2] = v125 + 1;
        v126 = v257;
        v122(v114 + ((*(v256 + 80) + 32) & ~*(v256 + 80)) + *(v256 + 72) * v125, v251, v257);
        v20 = v126;
      }

      ++v115;
      v117 += 16;
      v112 = v118;
    }

    while (v118 != v115);
    LOBYTE(v101) = v243;
    goto LABEL_69;
  }

  if (qword_281515DC8 != -1)
  {
LABEL_151:
    swift_once();
  }

  v54 = sub_24A82CDC4();
  sub_24A6797D0(v54, qword_281518F88);
  v258 = sub_24A82CD94();
  v55 = sub_24A82D4D4();
  if (os_log_type_enabled(v258, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_24A675000, v258, v55, "FMIPManager: not calling updating locating devices", v56, 2u);
    MEMORY[0x24C21E1D0](v56, -1, -1);
  }

  v57 = v258;
}

uint64_t sub_24A69F064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A69F0CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A69F134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A69F19C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A69F204(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A69F264(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A69F2C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A69F324(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A69F384(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A69F3E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_24A69F444(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_24A82CDF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24A82CE54();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy;
  v14 = &unk_281518000;
  if (*(v2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy) == *a1 && *(a1 + 1) == *(v13 + 8))
  {
    v32 = v10;
    v15 = *(v13 + 16);
    v16 = *(v13 + 24);
    v17 = *(v13 + 32);
    v30 = a1[32];
    LODWORD(v31) = v17;
    v20 = a1 + 16;
    v18 = *(a1 + 2);
    v19 = *(v20 + 1);

    if (sub_24A69F944(v18, v15))
    {
      sub_24A69FCF4(v19, v16);
      v22 = v21;

      v10 = v32;
      v14 = &unk_281518000;
      if ((v22 & 1) != 0 && ((v31 ^ v30) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {

      v10 = v32;
      v14 = &unk_281518000;
    }
  }

  if (*(v2 + v14[488]) == 1)
  {
    v31 = *(v2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
    aBlock[4] = sub_24A814344;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DCDB88;
    v32 = v10;
    v23 = _Block_copy(aBlock);

    sub_24A82CE24();
    v33 = MEMORY[0x277D84F90];
    sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40, MEMORY[0x277D83970]);
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v12, v7, v23);
    _Block_release(v23);
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v12, v32);

    return;
  }

LABEL_10:
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v24 = sub_24A82CDC4();
  sub_24A6797D0(v24, qword_281518F88);

  v25 = sub_24A82CD94();
  v26 = sub_24A82D4D4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_24A68761C(0xD000000000000010, 0x800000024A84AAD0, aBlock);
    *(v27 + 12) = 1024;
    *(v27 + 14) = *(v2 + v14[488]);

    _os_log_impl(&dword_24A675000, v25, v26, "FMIPBeaconRefreshingController: %s - Won't update: isRefreshing: %{BOOL}d", v27, 0x12u);
    sub_24A6876E8(v28);
    MEMORY[0x24C21E1D0](v28, -1, -1);
    MEMORY[0x24C21E1D0](v27, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_24A69F944(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A82CAA4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_24A7B8564(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v26 = sub_24A82CF54();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_24A7B8564(&qword_27EF5DC48, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v31 = sub_24A82CF84();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_24A69FCF4(uint64_t a1, uint64_t a2)
{
  v58 = sub_24A82CAA4();
  v53 = *(v58 - 8);
  v4 = MEMORY[0x28223BE20](v58);
  v54 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v52 = &v45 - v6;
  v7 = sub_24A6BBA94(&qword_27EF5ED00, &qword_24A83BA28);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - v9;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v50 = a2;
    v51 = v10;
    v12 = 0;
    v48 = a1;
    v15 = *(a1 + 64);
    v14 = a1 + 64;
    v13 = v15;
    v16 = 1 << *(v14 - 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v13;
    v45 = (v16 + 63) >> 6;
    v46 = v14;
    v47 = v53 + 16;
    v55 = &v45 - v9;
    v56 = (v53 + 32);
    v49 = (v53 + 8);
    while (v18)
    {
      v57 = (v18 - 1) & v18;
      v19 = __clz(__rbit64(v18)) | (v12 << 6);
      v20 = v51;
LABEL_16:
      v25 = v48;
      v26 = v52;
      v27 = v53;
      v28 = v58;
      (*(v53 + 16))(v52, *(v48 + 48) + *(v53 + 72) * v19, v58);
      v29 = *(*(v25 + 56) + 8 * v19);
      v30 = sub_24A6BBA94(&qword_27EF5ED08, &qword_24A83BA30);
      v31 = *(v30 + 48);
      (*(v27 + 32))(v20, v26, v28);
      *(v20 + v31) = v29;
      (*(*(v30 - 8) + 56))(v20, 0, 1, v30);
      v32 = v29;
      v11 = v55;
LABEL_17:
      sub_24A67E8FC(v20, v11, &qword_27EF5ED00, &qword_24A83BA28);
      v33 = sub_24A6BBA94(&qword_27EF5ED08, &qword_24A83BA30);
      if ((*(*(v33 - 8) + 48))(v11, 1, v33) == 1)
      {
        return;
      }

      v34 = *(v33 + 48);
      v35 = v54;
      v36 = v58;
      (*v56)(v54, v11, v58);
      v37 = *&v11[v34];
      v38 = v50;
      v39 = sub_24A77EDF8(v35);
      v41 = v40;
      (*v49)(v35, v36);
      if ((v41 & 1) == 0)
      {

        return;
      }

      sub_24A679170(0, &qword_27EF5ED10, 0x277D49678);
      v42 = *(*(v38 + 56) + 8 * v39);
      v43 = sub_24A82D5E4();

      v11 = v55;
      v18 = v57;
      if ((v43 & 1) == 0)
      {
        return;
      }
    }

    if (v45 <= v12 + 1)
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = v45;
    }

    v22 = v21 - 1;
    v20 = v51;
    while (1)
    {
      v23 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v23 >= v45)
      {
        v44 = sub_24A6BBA94(&qword_27EF5ED08, &qword_24A83BA30);
        (*(*(v44 - 8) + 56))(v20, 1, 1, v44);
        v57 = 0;
        v12 = v22;
        goto LABEL_17;
      }

      v24 = *(v46 + 8 * v23);
      ++v12;
      if (v24)
      {
        v57 = (v24 - 1) & v24;
        v19 = __clz(__rbit64(v24)) | (v23 << 6);
        v12 = v23;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24A6A01A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v19 = a2;
  v4 = sub_24A82CDF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A82CE54();
  v8 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
  v16[1] = a1;
  aBlock[4] = sub_24A6A09FC;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6498;
  v11 = _Block_copy(aBlock);

  sub_24A82CE24();
  v20 = MEMORY[0x277D84F90];
  sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v10, v7, v11);
  _Block_release(v11);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v17);

  v12 = v18;
  swift_beginAccess();
  v13 = *(v12 + 280);
  v14 = *(v12 + 288);

  sub_24A69D570(v19, v13, v14);
}

uint64_t sub_24A6A04D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    sub_24A6BBA94(&qword_27EF5DC18, &qword_24A836D50);
    sub_24A82D574();
    (*(v5 + 112))(a1, v7, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A6A0624(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  v17 = *(v3 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v16 - v5;
  v18 = v4;
  sub_24A82D314();

  swift_getWitnessTable();
  v7 = sub_24A82D8C4();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A82CDC4();
  sub_24A6797D0(v8, qword_281518F88);

  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = sub_24A82D2D4();

    _os_log_impl(&dword_24A675000, v9, v10, "FMImageCache: Preloading data for %ld requests.", v11, 0xCu);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  else
  {
  }

  if (!sub_24A82D2D4())
  {
  }

  for (i = 0; ; ++i)
  {
    v13 = sub_24A82D2B4();
    sub_24A82D264();
    if (v13)
    {
      (*(v3 + 16))(v6, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * i, v2);
      v14 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    result = sub_24A82D864();
    if (v17 != 8)
    {
      break;
    }

    v18 = result;
    (*(v3 + 16))(v6, &v18, v2);
    swift_unknownObjectRelease();
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
LABEL_15:
      __break(1u);
    }

LABEL_10:
    sub_24A77530C(v6, 0, 0);
    (*(v3 + 8))(v6, v2);
    if (v14 == sub_24A82D2D4())
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A6A0968(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_24A6A09B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A6A0A2C(uint64_t a1, uint64_t a2)
{
  v3 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    sub_24A6BBA94(&unk_27EF5E220, &unk_24A8343D0);
    sub_24A82D574();
    (*(v5 + 32))(a1, v7, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A6A0B38@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);
  swift_beginAccess();
  *a1 = *(v3 + 80);
}

void sub_24A6A0BD0(uint64_t *a1)
{
  v2 = MEMORY[0x24C21D990]();
  sub_24A6A0C28(a1);

  objc_autoreleasePoolPop(v2);
}

void sub_24A6A0C28(uint64_t *a1)
{
  v1 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_isInitializing;
  if ((*(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_isInitializing) & 1) == 0)
  {
    v3 = a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_itemCounts;
    v4 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_itemCounts + 32);
    v5 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_itemCounts + 40);
    v6 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_itemCounts + 48);
    type metadata accessor for FMIPInitClientRequest(0);
    v7 = swift_allocObject() + qword_27EF78DF8;
    v8 = *(v3 + 1);
    *v7 = *v3;
    *(v7 + 16) = v8;
    *(v7 + 32) = v4;
    *(v7 + 40) = v5;
    *(v7 + 48) = v6;
    v9 = sub_24A6A183C(0x65696C4374696E69, 0xEA0000000000746ELL, 0, 0, 1);
    *(a1 + v1) = 1;
    v10 = sub_24A6A6450();
    v11 = (a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_ownerPhoneNumber);
    *v11 = v10;
    v11[1] = v12;

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v13 = sub_24A82CDC4();
    sub_24A6797D0(v13, qword_281518F88);

    v14 = sub_24A82CD94();
    v15 = sub_24A82D504();

    v45 = v9;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v46[0] = v17;
      *v16 = 136446210;
      v48 = *a1;
      sub_24A6BBA94(&qword_27EF5F108, &unk_24A83D580);
      v18 = sub_24A82D024();
      v20 = sub_24A68761C(v18, v19, v46);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_24A675000, v14, v15, "%{public}s: sending initClient request…", v16, 0xCu);
      sub_24A6876E8(v17);
      MEMORY[0x24C21E1D0](v17, -1, -1);
      MEMORY[0x24C21E1D0](v16, -1, -1);
    }

    v21 = sub_24A82CD94();
    v22 = sub_24A82D504();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v48 = v24;
      *v23 = 136446466;
      *&v46[0] = *a1;
      sub_24A6BBA94(&qword_27EF5F108, &unk_24A83D580);
      v25 = sub_24A82D024();
      v27 = sub_24A68761C(v25, v26, &v48);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v28 = v3[48];
      v29 = *(v3 + 1);
      v46[0] = *v3;
      v46[1] = v29;
      v46[2] = *(v3 + 2);
      v47 = v28;
      sub_24A6BBA94(&qword_27EF5F100, &qword_24A83D578);
      v30 = sub_24A82D624();
      v32 = sub_24A68761C(v30, v31, &v48);

      *(v23 + 14) = v32;
      _os_log_impl(&dword_24A675000, v21, v22, "%{public}s: initClient request itemCounts: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v24, -1, -1);
      MEMORY[0x24C21E1D0](v23, -1, -1);
    }

    v33 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController + 24);
    v34 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController + 32);
    sub_24A67DF6C((a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController), v33);
    v35 = swift_allocObject();
    swift_weakInit();
    v36 = *(v34 + 56);
    v37 = type metadata accessor for FMIPInitClientResponse();
    v36(v45, sub_24A7CE30C, v35, v37, v33, v34);

    v38 = sub_24A82CD94();
    v39 = sub_24A82D504();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v46[0] = v41;
      *v40 = 136446210;
      v48 = *a1;
      sub_24A6BBA94(&qword_27EF5F108, &unk_24A83D580);
      v42 = sub_24A82D024();
      v44 = sub_24A68761C(v42, v43, v46);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_24A675000, v38, v39, "%{public}s: received snapshot initClient response", v40, 0xCu);
      sub_24A6876E8(v41);
      MEMORY[0x24C21E1D0](v41, -1, -1);
      MEMORY[0x24C21E1D0](v40, -1, -1);
    }
  }
}

uint64_t sub_24A6A11BC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t type metadata accessor for FMIPInitClientRequest(uint64_t a1)
{
  result = qword_281513FB0;
  if (!qword_281513FB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A6A1240(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_24A82D244();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t type metadata accessor for FMIPBaseRequest(uint64_t a1)
{
  result = qword_281514380;
  if (!qword_281514380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A6A1378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v3 = sub_24A82CDC4();
    sub_24A6797D0(v3, qword_281518F88);
    oslog = sub_24A82CD94();
    v4 = sub_24A82D504();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24A675000, oslog, v4, "FMIPDeviceConnectionStateProvider: unable to get connected devices with error", v5, 2u);
      MEMORY[0x24C21E1D0](v5, -1, -1);
    }
  }

  else
  {
    *(a3 + 16) = a1;

    if (swift_unknownObjectWeakLoadStrong())
    {
      if (a1)
      {
        v7 = a1;
      }

      else
      {
        v7 = MEMORY[0x277D84F90];
      }

      sub_24A6A15C8(v7);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_24A6A14FC(uint64_t a1)
{
  result = sub_24A82CA34();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24A6A15C8(uint64_t a1)
{
  v3 = sub_24A82CE54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82CDF4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  v12 = sub_24A6A1BA4(v11, a1);

  sub_24A82CDE4();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = v12;
  aBlock[4] = sub_24A6A2B88;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6EC0;
  v14 = _Block_copy(aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v6, v10, v14);
  _Block_release(v14);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

void *sub_24A6A183C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v33 = a5;
  v32 = a4;
  v34 = a1;
  v9 = sub_24A82CB44();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_27EF5D920;
  sub_24A6BBA94(&qword_27EF5D938, &qword_24A834CA0);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D84F98];
  *(v14 + 24) = 0;
  *(v14 + 16) = v15;
  *(v6 + v13) = v14;
  v16 = qword_27EF5D928;
  sub_24A6BBA94(&qword_27EF5D940, &qword_24A834CA8);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  *(v17 + 16) = v15;
  *(v6 + v16) = v17;
  v18 = (v6 + qword_2815143B0);
  *v18 = 0;
  v18[1] = 0;
  *(v6 + qword_2815143A8) = v15;
  *(v6 + qword_2815143A0) = v15;
  sub_24A82C954();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v19 = sub_24A82CDC4();
  sub_24A6797D0(v19, qword_281518F88);
  v20 = sub_24A82CD94();
  v21 = sub_24A82D504();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_24A675000, v20, v21, "FMIPBaseEndpoint: initialized", v22, 2u);
    MEMORY[0x24C21E1D0](v22, -1, -1);
  }

  v23 = v32;
  *v18 = a3;
  v18[1] = v23;

  v24 = 0xD000000000000017;
  v25 = "fmipmobile.icloud.com";
  if ((v33 & 1) == 0)
  {
    v24 = 0xD000000000000014;
    v25 = "X-Apple-Test-Application";
  }

  v26 = v25 | 0x8000000000000000;
  v27 = (v6 + qword_281514398);
  *v27 = v24;
  v27[1] = v26;
  v35 = v24;
  v36 = v26;

  MEMORY[0x24C21C9E0](v34, a2);

  v28 = sub_24A82CB64();
  (*(v10 + 104))(v12, *MEMORY[0x277D07CF0], v9);

  sub_24A82CB54();
  sub_24A6A2460();
  v29 = sub_24A6A43B8();
  (*(*v28 + qword_281518EC0 + 304))(v29);

  return v28;
}

void *sub_24A6A1BA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  MEMORY[0x28223BE20](v4 - 8);
  v61 = &v58 - v5;
  v6 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  MEMORY[0x28223BE20](v6 - 8);
  v60 = &v58 - v7;
  v8 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v8 - 8);
  v59 = &v58 - v9;
  v10 = type metadata accessor for FMIPDevice(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v64 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v62 = &v58 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v58 = &v58 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v58 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v58 - v21;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v23 = sub_24A82CDC4();
  sub_24A6797D0(v23, qword_281518F88);

  v24 = sub_24A82CD94();
  v25 = sub_24A82D504();

  v26 = os_log_type_enabled(v24, v25);
  v63 = a2;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v67 = v11;
    v28 = a1;
    v29 = v27;
    v30 = swift_slowAlloc();
    *&v73[0] = v30;
    *v29 = 136315138;
    v31 = MEMORY[0x24C21CB60](a2, MEMORY[0x277D837D0]);
    v33 = sub_24A68761C(v31, v32, v73);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_24A675000, v24, v25, "FMIPRefreshingController: updating devices with discoverIds :%s", v29, 0xCu);
    sub_24A6876E8(v30);
    MEMORY[0x24C21E1D0](v30, -1, -1);
    v34 = v29;
    a1 = v28;
    v11 = v67;
    MEMORY[0x24C21E1D0](v34, -1, -1);
  }

  v35 = *(a1 + 16);
  v36 = v64;
  if (!v35)
  {
    return MEMORY[0x277D84F90];
  }

  v65 = 0;
  v37 = MEMORY[0x277D84F90];
  v67 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v38 = a1 + v67;
  v66 = *(v11 + 72);
  do
  {
    sub_24A69F134(v38, v22, type metadata accessor for FMIPDevice);
    v39 = sub_24A69F134(v22, v20, type metadata accessor for FMIPDevice);
    if ((v22[243] & 2) != 0)
    {
      v40 = *(v22 + 7);
      if (v40)
      {
        *&v73[0] = *(v22 + 6);
        *(&v73[0] + 1) = v40;
        MEMORY[0x28223BE20](v39);
        v57 = v73;
        v41 = v65;
        v42 = sub_24A7FD8A8(sub_24A753BC8, &v56, v63);
        v65 = v41;
        if (((v42 ^ ((v22[217] & 0x80) == 0)) & 1) == 0)
        {
          v43 = v42;
          sub_24A69F134(v22, v62, type metadata accessor for FMIPDevice);
          sub_24A68808C(v73);
          memcpy(v72, v73, sizeof(v72));
          memset(v71, 0, sizeof(v71));
          memset(v70, 0, sizeof(v70));
          v44 = type metadata accessor for FMIPItemGroup(0);
          memset(v69, 0, sizeof(v69));
          v45 = v59;
          (*(*(v44 - 8) + 56))(v59, 1, 1, v44);
          v46 = v43 & 1;
          v68 = 7;
          v47 = type metadata accessor for FMIPDeviceConnectedState(0);
          v48 = v60;
          (*(*(v47 - 8) + 56))(v60, 1, 1, v47);
          v49 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
          v50 = v61;
          (*(*(v49 - 8) + 56))(v61, 1, 1, v49);
          v56 = v46;
          v51 = v58;
          FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)(v62, 0, v72, v71, v70, v69, 2, v45, v58, v56, 2, &v68, v48, v50);
          sub_24A69F2C4(v20, type metadata accessor for FMIPDevice);
          sub_24A6A2390(v51, v20, type metadata accessor for FMIPDevice);
        }

        v36 = v64;
      }
    }

    sub_24A69F134(v20, v36, type metadata accessor for FMIPDevice);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_24A6924E0(0, v37[2] + 1, 1, v37);
    }

    v53 = v37[2];
    v52 = v37[3];
    if (v53 >= v52 >> 1)
    {
      v37 = sub_24A6924E0((v52 > 1), v53 + 1, 1, v37);
    }

    sub_24A69F2C4(v20, type metadata accessor for FMIPDevice);
    sub_24A69F2C4(v22, type metadata accessor for FMIPDevice);
    v37[2] = v53 + 1;
    v54 = v66;
    sub_24A6A2390(v36, v37 + v67 + v53 * v66, type metadata accessor for FMIPDevice);
    v38 += v54;
    --v35;
  }

  while (v35);
  return v37;
}

void sub_24A6A22D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_24A6A2328(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A6A2390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A6A23F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24A6A2460()
{
  v1 = v0;
  v2 = qword_27EF5D928;
  v3 = *(v0 + qword_27EF5D928);

  os_unfair_lock_lock(v3 + 6);

  os_unfair_lock_unlock(v3 + 6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6A2BC0(3157553, 0xE300000000000000, 0xD000000000000015, 0x800000024A845AE0, isUniquelyReferenced_nonNull_native);
  v5 = *(v1 + v2);

  os_unfair_lock_lock((v5 + 24));
  sub_24A6A3BBC((v5 + 16));
  os_unfair_lock_unlock((v5 + 24));

  v6 = *(v1 + v2);

  os_unfair_lock_lock(v6 + 6);

  os_unfair_lock_unlock(v6 + 6);

  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6A2BC0(3157555, 0xE300000000000000, 0xD000000000000014, 0x800000024A845B00, v7);
  v8 = *(v1 + v2);

  os_unfair_lock_lock((v8 + 24));
  sub_24A6A3BBC((v8 + 16));
  os_unfair_lock_unlock((v8 + 24));

  v9 = *(v1 + v2);

  os_unfair_lock_lock(v9 + 6);

  os_unfair_lock_unlock(v9 + 6);

  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6A2BC0(0x72657665726F46, 0xE700000000000000, 0xD000000000000012, 0x800000024A845B20, v10);
  v11 = *(v1 + v2);

  os_unfair_lock_lock((v11 + 24));
  sub_24A6A3BBC((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));

  v12 = [objc_opt_self() currentDevice];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 serverFriendlyDescription];

    if (v14)
    {
      v15 = sub_24A82CFC4();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v18 = *(v1 + v2);

    os_unfair_lock_lock(v18 + 6);

    os_unfair_lock_unlock(v18 + 6);

    v19 = sub_24A6A4184(v15, v17, 0xD000000000000011, 0x800000024A845B40);
    v20 = *(v1 + v2);
    MEMORY[0x28223BE20](v19);

    os_unfair_lock_lock((v20 + 24));
    sub_24A6A3BBC((v20 + 16));
    os_unfair_lock_unlock((v20 + 24));

    v21 = [objc_opt_self() sharedInstance];
    v22 = [v21 isInternalBuild];

    if (v22)
    {
      v23 = objc_opt_self();
      v24 = [v23 standardUserDefaults];
      v25 = sub_24A82CF94();
      v26 = [v24 BOOLForKey_];

      if (v26)
      {
        v27 = *(v1 + v2);

        os_unfair_lock_lock(v27 + 6);

        os_unfair_lock_unlock(v27 + 6);

        v28 = swift_isUniquelyReferenced_nonNull_native();
        v29 = sub_24A6A2BC0(1702195828, 0xE400000000000000, 0xD000000000000018, 0x800000024A845BE0, v28);
        v30 = *(v1 + v2);
        MEMORY[0x28223BE20](v29);

        os_unfair_lock_lock((v30 + 24));
        sub_24A6A3BBC((v30 + 16));
        os_unfair_lock_unlock((v30 + 24));
      }

      v31 = [v23 standardUserDefaults];
      v32 = sub_24A82CF94();
      v33 = [v31 BOOLForKey_];

      if (v33)
      {
        v34 = *(v1 + v2);

        os_unfair_lock_lock(v34 + 6);

        os_unfair_lock_unlock(v34 + 6);

        v35 = swift_isUniquelyReferenced_nonNull_native();
        v36 = sub_24A6A2BC0(1702195828, 0xE400000000000000, 0xD00000000000001ALL, 0x800000024A845BC0, v35);
        v37 = *(v1 + v2);
        MEMORY[0x28223BE20](v36);

        os_unfair_lock_lock((v37 + 24));
        sub_24A6A3BBC((v37 + 16));
        os_unfair_lock_unlock((v37 + 24));
      }
    }

    v38 = *(v1 + qword_2815143B0 + 8);
    if (v38)
    {
      v39 = *(v1 + qword_2815143B0);
      v40 = *(v1 + v2);

      os_unfair_lock_lock(v40 + 6);

      os_unfair_lock_unlock(v40 + 6);

      v41 = sub_24A6A4184(v39, v38, 0xD000000000000019, 0x800000024A845B60);
      v42 = *(v1 + v2);
      MEMORY[0x28223BE20](v41);

      os_unfair_lock_lock((v42 + 24));
      sub_24A6A3BBC((v42 + 16));
      os_unfair_lock_unlock((v42 + 24));
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24A6A2BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_24A6A2D48(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_24A6A36A4(v18, a5 & 1);
      v13 = sub_24A6A2D48(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_24A82DC44();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_24A6A3F20();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

unint64_t sub_24A6A2D48(uint64_t a1, uint64_t a2)
{
  sub_24A82DCC4();
  sub_24A82D094();
  v4 = sub_24A82DD24();

  return sub_24A6A3964(a1, a2, v4);
}

uint64_t sub_24A6A2DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24A82CDF4();
  v18 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A82CE54();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  LOBYTE(a2) = sub_24A6A30A8(a2, 0);

  if ((a2 & 1) != 0 && (*(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_isUpdatingSingleDevices) & 1) == 0)
  {
    v17[1] = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
    aBlock[4] = a3;
    aBlock[5] = a1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = a4;
    v16 = _Block_copy(aBlock);

    sub_24A82CE24();
    v19 = MEMORY[0x277D84F90];
    sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v14, v10, v16);
    _Block_release(v16);
    (*(v18 + 8))(v10, v8);
    (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_24A6A30A8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMIPItemGroup(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v66[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v66[-v11];
  v13 = sub_24A6BBA94(&qword_27EF5E118, &qword_24A837760);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v66[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v66[-v17];
  swift_beginAccess();
  v19 = *(v3 + 80);

  v68 = a1;
  v20 = sub_24A7D96FC(a1, v19);

  v21 = v20 ^ 1 | a2;
  if (v21)
  {
    v67 = v20 ^ 1 | a2;
    v22 = *(v3 + 288);
    v70 = 0;
    v71 = 0;
    v69 = v22;
    swift_bridgeObjectRetain_n();
    swift_beginAccess();
    while (1)
    {
      sub_24A7547C4(v16);
      sub_24A67E8FC(v16, v18, &qword_27EF5E118, &qword_24A837760);
      v23 = sub_24A6BBA94(&unk_27EF5E120, &qword_24A837768);
      if ((*(*(v23 - 8) + 48))(v18, 1, v23) == 1)
      {
        break;
      }

      v24 = *v18;
      sub_24A68D628(v18 + *(v23 + 48), v10, type metadata accessor for FMIPItemGroup);
      v25 = *(v3 + 280);

      FMIPItemGroup.init(itemGroup:items:)(v10, v25, v12);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if ((v24 & 0x8000000000000000) != 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        result = sub_24A766CC0(v22);
        v22 = result;
        if ((v24 & 0x8000000000000000) != 0)
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      if (v24 >= v22[2])
      {
        __break(1u);
        return result;
      }

      sub_24A76F3A8(v12, v22 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v24, type metadata accessor for FMIPItemGroup);
    }

    *(v3 + 288) = v22;

    sub_24A758EF8(v68);
    v28 = v27;
    v29 = *(v3 + 80);

    sub_24A7685B4(v28, v29);
    v31 = v30;

    *(v3 + 80) = v31;

    v32 = *(v3 + 80);
    v33 = *(v3 + 192);

    sub_24A7690FC(v32, v33);
    v35 = v34;

    *(v3 + 80) = v35;

    sub_24A7580CC(v36);
    v38 = v37;

    *(v3 + 80) = v38;

    v39 = *(v3 + 80);
    v40 = *(v3 + 200);

    sub_24A769874(v39, v40);
    v42 = v41;

    *(v3 + 80) = v42;

    v43 = *(v3 + 80);
    v44 = *(v3 + 216);

    sub_24A76A0B0(v43, v44);
    v46 = v45;

    *(v3 + 80) = v46;

    v47 = *(v3 + 80);
    v48 = *(v3 + 224);

    sub_24A76A8F4(v47, v48);
    v50 = v49;

    *(v3 + 80) = v50;

    v51 = *(v3 + 80);
    v52 = *(v3 + 232);

    sub_24A76B138(v51, v52);
    v54 = v53;

    *(v3 + 80) = v54;

    v55 = *(v3 + 80);
    v56 = *(v3 + 208);

    sub_24A76B96C(v55, v56);
    v58 = v57;

    *(v3 + 80) = v58;

    v60 = sub_24A7597A0(v59);

    *(v3 + 80) = v60;

    v61 = *(v3 + 80);
    v62 = *(v3 + 304);

    sub_24A76C298(v61, v62);
    v64 = v63;

    *(v3 + 80) = v64;

    v21 = v67;
    if ((*(v3 + 16) & 1) != 0 && *(v3 + 24) == 1)
    {
      if (*(v3 + 328))
      {

        sub_24A761CE4(v65, &unk_285DC7558, sub_24A76F410, &unk_285DC7570);
      }
    }
  }

  return v21 & 1;
}

uint64_t sub_24A6A36A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_24A6BBA94(&qword_27EF5E6C0, &qword_24A838CE0);
  v37 = v4;
  result = sub_24A82D964();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_24A82DCC4();
      sub_24A82D094();
      result = sub_24A82DD24();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}