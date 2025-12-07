uint64_t sub_24A6EEC70(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24A6CADE0;

  return sub_24A6E95F4(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_24A6EED64()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A6EEE30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A6CADE0;

  return sub_24A6E5964(a1, v4, v5, v7, v6);
}

uint64_t sub_24A6EEEF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A6CADE0;

  return sub_24A6E5964(a1, v4, v5, v7, v6);
}

uint64_t sub_24A6EF084(uint64_t a1)
{
  v2 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for FMIPItemGroup(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPDevice(0);
  sub_24A67E964(a1 + *(v9 + 128), v4, &unk_27EF5E0B0, &qword_24A8338B0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_24A67F378(v4, &unk_27EF5E0B0, &qword_24A8338B0);
    if (*(a1 + *(v9 + 136)) == 5)
    {
      v10 = *(a1 + 16);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_24A6EF274(v4, v8, type metadata accessor for FMIPItemGroup);
    v10 = *(v8 + 1);

    sub_24A68FFEC(v8, type metadata accessor for FMIPItemGroup);
  }

  return v10;
}

uint64_t sub_24A6EF274(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A6EF2DC(uint64_t a1)
{
  v3 = *(sub_24A82CAA4() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24A6CADE0;

  return sub_24A6E4F44(a1, v5, v6, v7, v8, v9, v1 + v4, v10);
}

uint64_t sub_24A6EF448()
{
  v1 = sub_24A82CAA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24A6EF564(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_24A82CAA4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = (v2 + v6);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v2 + v7);
  v13 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v8, v2 + v5, v10, v11, v12, v13);
}

uint64_t sub_24A6EF634(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A6CADE0;

  return sub_24A6E5964(a1, v4, v5, v7, v6);
}

uint64_t sub_24A6EF6F4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A6EF73C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A6CADE0;

  return sub_24A6E5964(a1, v4, v5, v7, v6);
}

uint64_t sub_24A6EF808()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A6EF85C(void *a1)
{
  v3 = *(sub_24A82CAA4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_24A6E2604(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_24A6EF900(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24A6EFA2C()
{
  result = qword_27EF5D620;
  if (!qword_27EF5D620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF5D620);
  }

  return result;
}

uint64_t sub_24A6EFA78(void (*a1)(void))
{

  a1(*(v1 + 40));

  return MEMORY[0x2821FE8E8](v1, 48, 7);
}

uint64_t sub_24A6EFB2C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t FMIPAudioChannel.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24A6EFC28()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6EFCE4(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A6EFD8C(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

unint64_t sub_24A6EFE44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A6F044C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A6EFE74(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701667182;
  v4 = 0xE900000000000065;
  v5 = 0x6C62616C69617661;
  if (*v1 != 2)
  {
    v5 = 0x646574756DLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x676E6979616C70;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_24A6EFEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A6F044C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A6EFF20(uint64_t a1)
{
  v2 = sub_24A68E7A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A6EFF5C(uint64_t a1)
{
  v2 = sub_24A68E7A8();

  return MEMORY[0x2821FE720](a1, v2);
}

void FMIPAudioChannel.encode(to:)(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5D650, &qword_24A833A68);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = v1[16];
  v13 = v1[17];
  v10[3] = v1[18];
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A68E7A8();
  sub_24A82DD84();
  v17 = 0;
  v8 = v12;
  sub_24A82DB04();
  if (v8)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v9 = v11;
    v16 = 1;
    sub_24A82DB14();
    [v9 integerValue];
    v15 = 2;
    sub_24A82DB34();
    v14 = 3;
    sub_24A82DB14();
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t static FMIPAudioChannel.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a1 + 18);
  v5 = *(a2 + 16);
  v6 = *(a2 + 17);
  v7 = *(a2 + 18);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    result = 0;
    if (v4 != v7)
    {
      return result;
    }

    goto LABEL_9;
  }

  v9 = sub_24A82DC04();
  result = 0;
  if ((v9 & 1) != 0 && ((v4 ^ v7) & 1) == 0)
  {
LABEL_9:
    if (((v3 ^ v6) & 1) == 0)
    {
      return v2 ^ v5 ^ 1u;
    }
  }

  return result;
}

uint64_t sub_24A6F02C4(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a1 + 18);
  v5 = *(a2 + 16);
  v6 = *(a2 + 17);
  v7 = *(a2 + 18);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    result = 0;
    if (v4 != v7)
    {
      return result;
    }

    goto LABEL_9;
  }

  v9 = sub_24A82DC04();
  result = 0;
  if ((v9 & 1) != 0 && ((v4 ^ v7) & 1) == 0)
  {
LABEL_9:
    if (((v3 ^ v6) & 1) == 0)
    {
      return v2 ^ v5 ^ 1u;
    }
  }

  return result;
}

uint64_t sub_24A6F0368(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 19))
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

uint64_t sub_24A6F03B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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

    *(result + 19) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A6F03F8()
{
  result = qword_27EF5D658;
  if (!qword_27EF5D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D658);
  }

  return result;
}

unint64_t sub_24A6F044C(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A82D9C4();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A6F0498(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6574737572547369;
  }

  else
  {
    v3 = 0x65447473614C7369;
  }

  if (v2)
  {
    v4 = 0xEC00000065636976;
  }

  else
  {
    v4 = 0xEF65636976654464;
  }

  if (*a2)
  {
    v5 = 0x6574737572547369;
  }

  else
  {
    v5 = 0x65447473614C7369;
  }

  if (*a2)
  {
    v6 = 0xEF65636976654464;
  }

  else
  {
    v6 = 0xEC00000065636976;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

uint64_t sub_24A6F0554()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6F05EC(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A6F0670(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6F0704@<X0>(char *a2@<X8>)
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

void sub_24A6F0764(uint64_t *a1@<X8>)
{
  v2 = 0x65447473614C7369;
  if (*v1)
  {
    v2 = 0x6574737572547369;
  }

  v3 = 0xEC00000065636976;
  if (*v1)
  {
    v3 = 0xEF65636976654464;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24A6F07B8()
{
  if (*v0)
  {
    return 0x6574737572547369;
  }

  else
  {
    return 0x65447473614C7369;
  }
}

uint64_t sub_24A6F0808@<X0>(char *a3@<X8>)
{
  v4 = sub_24A82D9C4();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_24A6F086C(uint64_t a1)
{
  v2 = sub_24A6F0F0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A6F08A8(uint64_t a1)
{
  v2 = sub_24A6F0F0C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24A6F0930(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5D670, &qword_24A833D28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6F0F0C();
  sub_24A82DD64();
  if (v2)
  {
    sub_24A6876E8(a1);
    type metadata accessor for FMIPVerifyTrustedStateResponse();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v28[0]) = 0;
    v9 = sub_24A82DA54();
    LOBYTE(v28[0]) = 1;
    v10 = sub_24A82DA54();
    *(v1 + 56) = v9 & 1;
    *(v1 + 57) = v10 & 1;
    sub_24A698230(a1, v28);
    v3 = sub_24A814C20(v28);
    v11 = qword_281515DC8;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = sub_24A82CDC4();
    sub_24A6797D0(v12, qword_281518F88);
    v13 = sub_24A82CD94();
    v14 = sub_24A82D504();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v26 = v15;
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136315138;
      v27 = v13;
      v28[0] = v16;
      v17 = sub_24A6F0C7C();
      v19 = sub_24A68761C(v17, v18, v28);

      v20 = v26;
      *(v26 + 1) = v19;
      v21 = v14;
      v22 = v27;
      _os_log_impl(&dword_24A675000, v27, v21, "FMIPVerifyTrustedStateResponse: initialized with coder %s", v20, 0xCu);
      v23 = v29;
      sub_24A6876E8(v29);
      MEMORY[0x24C21E1D0](v23, -1, -1);
      MEMORY[0x24C21E1D0](v20, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v8, v5);
    sub_24A6876E8(a1);
  }

  return v3;
}

uint64_t sub_24A6F0C7C()
{
  v1 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v1);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v2 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  sub_24A82D854();

  strcpy(v8, "isLastDevice:");
  HIWORD(v8[1]) = -4864;
  if (*(v0 + 56))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + 56))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v3, v4);

  MEMORY[0x24C21C9E0](0xD000000000000011, 0x800000024A8455A0);
  if (*(v0 + 57))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + 57))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v5, v6);

  MEMORY[0x24C21C9E0](15913, 0xE200000000000000);

  MEMORY[0x24C21C9E0](v8[0], v8[1]);

  return 60;
}

uint64_t sub_24A6F0E7C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_24A6F0F0C()
{
  result = qword_27EF5D678;
  if (!qword_27EF5D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D678);
  }

  return result;
}

unint64_t sub_24A6F0F74()
{
  result = qword_27EF5D680;
  if (!qword_27EF5D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D680);
  }

  return result;
}

unint64_t sub_24A6F0FCC()
{
  result = qword_27EF5D688;
  if (!qword_27EF5D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D688);
  }

  return result;
}

unint64_t sub_24A6F1024()
{
  result = qword_27EF5D690;
  if (!qword_27EF5D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D690);
  }

  return result;
}

uint64_t sub_24A6F108C(uint64_t a1)
{
  v27 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_24A82D744();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v33 = MEMORY[0x277D84F90];
  sub_24A6FCA0C(0, v2 & ~(v2 >> 63), 0);
  v3 = v33;
  if (v27)
  {
    result = sub_24A82D6F4();
  }

  else
  {
    result = sub_24A82D6C4();
    v5 = *(a1 + 36);
  }

  v30 = result;
  v31 = v5;
  v32 = v27 != 0;
  if ((v2 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v26 = v2;
    while (!__OFADD__(v6++, 1))
    {
      v9 = v30;
      v8 = v31;
      v10 = v32;
      sub_24A810BB4(v30, v31, v32, a1);
      FMIPSafeLocation.init(safeLocation:)(v11, __src);
      v33 = v3;
      v13 = *(v3 + 16);
      v12 = *(v3 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_24A6FCA0C((v12 > 1), v13 + 1, 1);
        v3 = v33;
      }

      *(v3 + 16) = v13 + 1;
      result = memcpy((v3 + 352 * v13 + 32), __src, 0x160uLL);
      if (v27)
      {
        if (!v10)
        {
          goto LABEL_43;
        }

        if (sub_24A82D714())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        sub_24A6BBA94(&qword_27EF5D718, &qword_24A841600);
        v18 = sub_24A82D3E4();
        sub_24A82D7A4();
        result = v18(v28, 0);
        v19 = v6 >= v26;
        if (v6 == v26)
        {
LABEL_35:
          sub_24A6CA498(v30, v31, v32);
          return v3;
        }
      }

      else
      {
        if (v10)
        {
          goto LABEL_44;
        }

        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        v14 = 1 << *(a1 + 32);
        if (v9 >= v14)
        {
          goto LABEL_39;
        }

        v15 = v9 >> 6;
        v16 = *(a1 + 56 + 8 * (v9 >> 6));
        if (((v16 >> v9) & 1) == 0)
        {
          goto LABEL_40;
        }

        if (*(a1 + 36) != v8)
        {
          goto LABEL_41;
        }

        v17 = v16 & (-2 << (v9 & 0x3F));
        if (v17)
        {
          v14 = __clz(__rbit64(v17)) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = v15 << 6;
          v21 = v15 + 1;
          v22 = (a1 + 64 + 8 * v15);
          while (v21 < (v14 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              result = sub_24A6CA498(v9, v8, 0);
              v14 = __clz(__rbit64(v23)) + v20;
              goto LABEL_31;
            }
          }

          result = sub_24A6CA498(v9, v8, 0);
        }

LABEL_31:
        v25 = *(a1 + 36);
        v30 = v14;
        v31 = v25;
        v32 = 0;
        v19 = v6 >= v26;
        if (v6 == v26)
        {
          goto LABEL_35;
        }
      }

      if (v19)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

void sub_24A6F13CC()
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
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPSafeLocationRefreshingController: Starting refreshing Safe Locations", v5, 2u);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v6 = *(v1 + 56);
  v7 = swift_allocObject();
  swift_weakInit();
  v9[4] = sub_24A6F28FC;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24A6F15C4;
  v9[3] = &unk_285DC3370;
  v8 = _Block_copy(v9);

  [v6 startRefreshingSafeLocationWithBlock_];
  _Block_release(v8);
}

uint64_t sub_24A6F1560(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24A6F1F94(a1, 0);
  }

  return result;
}

uint64_t sub_24A6F15C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_24A6F2904();
  sub_24A679F94(&qword_27EF5D728, sub_24A6F2904, MEMORY[0x277D85378]);
  v3 = sub_24A82D3A4();

  v2(v3);
}

void sub_24A6F1674()
{
  [*(v0 + 56) stopRefreshingSafeLocations];
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A82CDC4();
  sub_24A6797D0(v1, qword_281518F88);
  oslog = sub_24A82CD94();
  v2 = sub_24A82D504();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24A675000, oslog, v2, "FMIPSafeLocationRefreshingController: Stopped refreshing Safe Locations", v3, 2u);
    MEMORY[0x24C21E1D0](v3, -1, -1);
  }
}

uint64_t sub_24A6F176C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21 = a2;
  v5 = sub_24A82CDF4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24A82CE54();
  v9 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v12 = sub_24A82CDC4();
  sub_24A6797D0(v12, qword_281518F88);
  v13 = sub_24A82CD94();
  v14 = sub_24A82D504();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24A675000, v13, v14, "FMIPSafeLocationRefreshingController: Manually refreshing Safe Locations", v15, 2u);
    MEMORY[0x24C21E1D0](v15, -1, -1);
  }

  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v17 = v21;
  v16[4] = v21;
  aBlock[4] = sub_24A6F289C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC3280;
  v18 = _Block_copy(aBlock);

  sub_24A6A7314(a1, v17);
  sub_24A82CE24();
  v23 = MEMORY[0x277D84F90];
  sub_24A679F94(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A6F2828();
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v11, v8, v18);
  _Block_release(v18);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v22);
}

void sub_24A6F1ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 56);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v9[4] = sub_24A6F28F0;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24A72032C;
  v9[3] = &unk_285DC32D0;
  v8 = _Block_copy(v9);

  sub_24A6A7314(a2, a3);

  [v6 safeLocationsForSeparationMonitoring_];
  _Block_release(v8);
}

uint64_t sub_24A6F1BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v6 = sub_24A82CDF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_24A82CE54();
  v10 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v27 = v12;
    v17 = v10;
    v18 = v7;
    v19 = a1;
    v20 = a4;
    v21 = v16;
    *v16 = 0;
    _os_log_impl(&dword_24A675000, v14, v15, "FMIPSafeLocationRefreshingController: Manually refreshed Safe Locations", v16, 2u);
    v22 = v21;
    a4 = v20;
    a1 = v19;
    v7 = v18;
    v10 = v17;
    v12 = v27;
    MEMORY[0x24C21E1D0](v22, -1, -1);
  }

  sub_24A6F1F94(a1, 1);
  v23 = swift_allocObject();
  v24 = v28;
  *(v23 + 16) = v28;
  *(v23 + 24) = a4;
  aBlock[4] = sub_24A6AF880;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC3320;
  v25 = _Block_copy(aBlock);
  sub_24A6A7314(v24, a4);
  sub_24A82CE24();
  v30 = MEMORY[0x277D84F90];
  sub_24A679F94(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A6F2828();
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v12, v9, v25);
  _Block_release(v25);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v29);
}

uint64_t sub_24A6F1F94(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_24A82CDF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A82CE54();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = v3;
  *(v14 + 32) = a1;
  aBlock[4] = sub_24A6F281C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC31E0;
  v15 = _Block_copy(aBlock);

  sub_24A82CE24();
  v17[1] = MEMORY[0x277D84F90];
  sub_24A679F94(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A6F2828();
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v13, v9, v15);
  _Block_release(v15);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
}

void sub_24A6F2248(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A82CDF4();
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A82CE54();
  v25 = *(v9 - 8);
  v26 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v12 = sub_24A82CDC4();
  sub_24A6797D0(v12, qword_281518F88);
  v13 = sub_24A82CD94();
  v14 = sub_24A82D504();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24A675000, v13, v14, "FMIPSafeLocationRefreshingController: Processing safe locations update", v15, 2u);
    MEMORY[0x24C21E1D0](v15, -1, -1);
  }

  if ((a1 & 1) != 0 || (v16 = , v17 = sub_24A7B4E64(v16, a3), , (v17 & 1) == 0))
  {
    *(a2 + 32) = a3;

    v21 = sub_24A6F108C(a3);
    v22 = swift_allocObject();
    *(v22 + 16) = a2;
    *(v22 + 24) = v21;
    aBlock[4] = sub_24A6F288C;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DC3230;
    v23 = _Block_copy(aBlock);

    sub_24A82CE24();
    v28 = MEMORY[0x277D84F90];
    sub_24A679F94(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A6F2828();
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v11, v8, v23);
    _Block_release(v23);
    (v27[1].isa)(v8, v6);
    (*(v25 + 8))(v11, v26);
  }

  else
  {
    v27 = sub_24A82CD94();
    v18 = sub_24A82D504();
    if (os_log_type_enabled(v27, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_24A675000, v27, v18, "FMIPSafeLocationRefreshingController: No changes detected, bailing.", v19, 2u);
      MEMORY[0x24C21E1D0](v19, -1, -1);
    }

    v20 = v27;
  }
}

uint64_t sub_24A6F2690(uint64_t a1, uint64_t a2)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v3 = sub_24A82CDC4();
  sub_24A6797D0(v3, qword_281518F88);
  v4 = sub_24A82CD94();
  v5 = sub_24A82D504();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24A675000, v4, v5, "FMIPSafeLocationRefreshingController: Completely processed safe location updates.", v6, 2u);
    MEMORY[0x24C21E1D0](v6, -1, -1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    swift_unknownObjectRetain();
    sub_24A71CCD0(a2, sub_24A6F2894, v8);
  }

  return result;
}

uint64_t sub_24A6F27C4()
{
  sub_24A6BAF88(v0 + 16);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_24A6F2828()
{
  result = qword_281514700[0];
  if (!qword_281514700[0])
  {
    sub_24A6CCDC0(&unk_27EF5D708, qword_24A833F40);
    result = swift_getWitnessTable();
    atomic_store(result, qword_281514700);
  }

  return result;
}

uint64_t sub_24A6F28A8()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_24A6F2904()
{
  result = qword_27EF5D720;
  if (!qword_27EF5D720)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF5D720);
  }

  return result;
}

uint64_t sub_24A6F2A7C()
{
  sub_24A82DCC4();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A6F2AF0(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A6F2B44@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_24A82D9C4();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_24A6F2BBC()
{
  result = qword_27EF5D730[0];
  if (!qword_27EF5D730[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF5D730);
  }

  return result;
}

void *FMIPDeviceImageCache.__allocating_init(converter:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_24A67ABB0(a1, a2);

  return v4;
}

uint64_t FMIPDeviceImageCache.__deallocating_deinit()
{
  FMImageCache.deinit();

  return swift_deallocClassInstance();
}

uint64_t FMIPStandalonePart.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_24A6F2CD8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1701667182;
  }

  else
  {
    v3 = 0x696669746E656469;
  }

  if (v2)
  {
    v4 = 0xEA00000000007265;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1701667182;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

uint64_t sub_24A6F2D7C()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6F2DFC(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A6F2E68(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6F2EE4@<X0>(char *a2@<X8>)
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

void sub_24A6F2F44(uint64_t *a1@<X8>)
{
  v2 = 1701667182;
  if (!*v1)
  {
    v2 = 0x696669746E656469;
  }

  v3 = 0xEA00000000007265;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24A6F2F80()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_24A6F2FB8@<X0>(char *a3@<X8>)
{
  v4 = sub_24A82D9C4();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_24A6F301C(uint64_t a1)
{
  v2 = sub_24A6F323C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A6F3058(uint64_t a1)
{
  v2 = sub_24A6F323C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPStandalonePart.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5D7B8, &qword_24A8340C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6F323C();
  sub_24A82DD64();
  if (!v2)
  {
    v16 = 0;
    v9 = sub_24A82DA74();
    v15 = 1;
    v11 = sub_24A82DA44();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
    a2[2] = v13;
  }

  return sub_24A6876E8(a1);
}

unint64_t sub_24A6F323C()
{
  result = qword_27EF5D7C0;
  if (!qword_27EF5D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D7C0);
  }

  return result;
}

uint64_t FMIPStandalonePart.encode(to:)(void *a1)
{
  v4 = sub_24A6BBA94(&qword_27EF5D7C8, &qword_24A8340C8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *(v1 + 8);
  v10[0] = *(v1 + 16);
  v10[1] = v8;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6F323C();
  sub_24A82DD84();
  v12 = 0;
  sub_24A82DB34();
  if (!v2)
  {
    v11 = 1;
    sub_24A82DB04();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t static FMIPStandalonePart.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_24A82DC04();
  }
}

uint64_t FMIPStandalonePart.hash(into:)(uint64_t a1)
{
  MEMORY[0x24C21D5E0](*v1);

  return sub_24A82D094();
}

uint64_t FMIPStandalonePart.hashValue.getter()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A6F3550(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_24A82DC04();
  }
}

uint64_t sub_24A6F3598()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A6F35FC(uint64_t a1)
{
  MEMORY[0x24C21D5E0](*v1);

  return sub_24A82D094();
}

uint64_t sub_24A6F3650(uint64_t a1)
{
  v2 = *v1;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v2);
  sub_24A82D094();
  return sub_24A82DD24();
}

unint64_t sub_24A6F36B4()
{
  result = qword_27EF5D7D0;
  if (!qword_27EF5D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D7D0);
  }

  return result;
}

__n128 sub_24A6F3708(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24A6F371C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24A6F3764(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A6F37C8()
{
  result = qword_27EF5D7D8;
  if (!qword_27EF5D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D7D8);
  }

  return result;
}

unint64_t sub_24A6F3820()
{
  result = qword_27EF5D7E0;
  if (!qword_27EF5D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D7E0);
  }

  return result;
}

unint64_t sub_24A6F3878()
{
  result = qword_27EF5D7E8;
  if (!qword_27EF5D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D7E8);
  }

  return result;
}

unint64_t sub_24A6F3918(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5D800, &unk_24A834860);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  *(v1 + 56) = 0;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6F4230();
  sub_24A82DD64();
  if (v2)
  {
    sub_24A6876E8(a1);

    type metadata accessor for FMIPInitClientResponse();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_24A6BBA94(&unk_27EF5E220, &unk_24A8343D0);
    v26 = 4;
    sub_24A6815B0();
    sub_24A82DA84();
    *(v1 + 56) = v25[0];

    sub_24A698230(a1, v25);
    v3 = sub_24A814C20(v25);
    v9 = qword_281515DC8;

    if (v9 != -1)
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
      v22 = v13;
      v24 = swift_slowAlloc();
      v25[0] = v24;
      *v13 = 136315138;
      v23 = v11;
      v14 = sub_24A6F3C74();
      v16 = sub_24A68761C(v14, v15, v25);

      v17 = v22;
      *(v22 + 1) = v16;
      v18 = v12;
      v19 = v23;
      _os_log_impl(&dword_24A675000, v23, v18, "FMIPInitClientResponse: initialized with coder %s", v17, 0xCu);
      v20 = v24;
      sub_24A6876E8(v24);
      MEMORY[0x24C21E1D0](v20, -1, -1);
      MEMORY[0x24C21E1D0](v17, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v8, v5);
    sub_24A6876E8(a1);
  }

  return v3;
}

unint64_t sub_24A6F3C74()
{
  v1 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v1);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v2 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  v3 = *(v0 + 24);
  if (v3)
  {
    v5 = *(v3 + 16);
    v4 = *(v3 + 24);
  }

  else
  {
    v4 = 0xE900000000000064;
    v5 = 0x656E696665646E75;
  }

  MEMORY[0x24C21C9E0](v5, v4);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);

  MEMORY[0x24C21C9E0](0x3A72656E776FLL, 0xE600000000000000);

  sub_24A82D854();

  v6 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v6);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);

  MEMORY[0x24C21C9E0](0xD000000000000013, 0x800000024A845670);

  sub_24A82D854();
  MEMORY[0x24C21C9E0](0x4373656369766564, 0xED00003A746E756FLL);
  sub_24A6BBA94(&qword_27EF5D7F8, &unk_24A8343C0);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](32, 0xE100000000000000);

  MEMORY[0x24C21C9E0](0, 0xE000000000000000);

  sub_24A82D854();

  if (*(v0 + 16))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v7, v8);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);

  MEMORY[0x24C21C9E0](0x6F43726576726573, 0xEF203A747865746ELL);

  return 60;
}

uint64_t sub_24A6F4064(uint64_t a1)
{
  v2 = v1;
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
    *v7 = 134217984;
    *(v7 + 4) = *(a1 + 16);

    _os_log_impl(&dword_24A675000, v5, v6, "FMIPDeviceContainingResponse: Updating with shifted devices %ld", v7, 0xCu);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  else
  {
  }

  *(v2 + 56) = a1;
}

uint64_t sub_24A6F41D8(uint64_t a1, uint64_t a2)
{
  result = sub_24A681668(&qword_27EF5D7F0, a2, type metadata accessor for FMIPInitClientResponse, &unk_24A834378);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24A6F4230()
{
  result = qword_281514258;
  if (!qword_281514258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514258);
  }

  return result;
}

uint64_t FMReverseGeocodingRequest.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FMReverseGeocodingRequest.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FMReverseGeocodingRequest(0) + 24);

  return sub_24A6F434C(v3, a1);
}

uint64_t type metadata accessor for FMReverseGeocodingRequest(uint64_t a1)
{
  result = qword_27EF5D820;
  if (!qword_27EF5D820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A6F434C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FMReverseGeocodingRequest.debugDescription.getter()
{
  sub_24A82D854();
  MEMORY[0x24C21C9E0](60, 0xE100000000000000);
  MEMORY[0x24C21C9E0](0xD000000000000019, 0x800000024A8343E0);
  MEMORY[0x24C21C9E0](0x69746E656469203ALL, 0xEE00203A72656966);
  MEMORY[0x24C21C9E0](*v0, v0[1]);
  MEMORY[0x24C21C9E0](0x203A6873616820, 0xE700000000000000);
  v1 = v0[2];
  v2 = sub_24A6F47C0();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](0x203A74616C20, 0xE600000000000000);
  [v1 coordinate];
  sub_24A82D374();
  MEMORY[0x24C21C9E0](0x203A676E6F6C20, 0xE700000000000000);
  [v1 coordinate];
  sub_24A82D374();
  MEMORY[0x24C21C9E0](0x3A73756964617220, 0xE900000000000020);
  [v1 horizontalAccuracy];
  sub_24A82D374();
  MEMORY[0x24C21C9E0](0x3A74656B63756220, 0xE900000000000020);
  [v1 horizontalAccuracy];
  v3 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v3);

  MEMORY[0x24C21C9E0](0xD000000000000015, 0x800000024A845690);
  v4 = type metadata accessor for FMReverseGeocodingRequest(0);
  if (*(v0 + *(v4 + 28)))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + *(v4 + 28)))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v5, v6);

  MEMORY[0x24C21C9E0](0xD000000000000013, 0x800000024A8456B0);
  MEMORY[0x24C21C9E0](v5, v6);

  MEMORY[0x24C21C9E0](0xD000000000000011, 0x800000024A8456D0);
  [v1 referenceFrame];
  v7 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v7);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_24A6F47C0()
{
  [v0 coordinate];
  v2 = round(v1 * 10000.0) / 10000.0;
  [v0 coordinate];
  v4 = round(v3 * 10000.0) / 10000.0;
  sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24A8343E0;
  v6 = MEMORY[0x277D839F8];
  v7 = MEMORY[0x277D83A80];
  *(v5 + 56) = MEMORY[0x277D839F8];
  *(v5 + 64) = v7;
  *(v5 + 32) = v2;
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 72) = v4;
  v8 = [v0 referenceFrame];
  v9 = MEMORY[0x277D84D30];
  *(v5 + 136) = MEMORY[0x277D84CC0];
  *(v5 + 144) = v9;
  *(v5 + 112) = v8;
  [v0 horizontalAccuracy];
  if (v10 >= 5.0)
  {
    if (v10 >= 10.0)
    {
      if (v10 >= 25.0)
      {
        v11 = 50;
        v12 = 100;
        v13 = 1000;
        if (v10 < 250.0)
        {
          v13 = 250;
        }

        if (v10 >= 100.0)
        {
          v12 = v13;
        }

        if (v10 >= 50.0)
        {
          v11 = v12;
        }
      }

      else
      {
        v11 = 25;
      }
    }

    else
    {
      v11 = 10;
    }
  }

  else
  {
    v11 = 5;
  }

  v14 = MEMORY[0x277D83C10];
  *(v5 + 176) = MEMORY[0x277D83B88];
  *(v5 + 184) = v14;
  *(v5 + 152) = v11;

  return sub_24A82CFF4();
}

uint64_t FMReverseGeocodingRequest.hash(into:)(uint64_t a1)
{
  v2 = sub_24A82CAE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_24A82D094();
  sub_24A82D5F4();
  v9 = type metadata accessor for FMReverseGeocodingRequest(0);
  sub_24A6F434C(v1 + *(v9 + 24), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_24A82DCE4();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_24A82DCE4();
    sub_24A6F5230(&qword_27EF5D808, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
    sub_24A82CF64();
    (*(v3 + 8))(v5, v2);
  }

  sub_24A82DCE4();
  return sub_24A82DCE4();
}

uint64_t FMReverseGeocodingRequest.hashValue.getter()
{
  sub_24A82DCC4();
  FMReverseGeocodingRequest.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t sub_24A6F4BF0()
{
  sub_24A82DCC4();
  FMReverseGeocodingRequest.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t sub_24A6F4C34(uint64_t a1)
{
  sub_24A82DCC4();
  FMReverseGeocodingRequest.hash(into:)(v2);
  return sub_24A82DD24();
}

uint64_t sub_24A6F4C78()
{
  sub_24A82DCC4();
  sub_24A82DCF4();
  return sub_24A82DD24();
}

uint64_t sub_24A6F4CEC(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82DCF4();
  return sub_24A82DD24();
}

uint64_t _s8FMIPCore25FMReverseGeocodingRequestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_24A82CAE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_24A6BBA94(&qword_27EF5D838, qword_24A834550);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_24A82DC04() & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_24A679170(0, &qword_281512B68, 0x277D82BB8);
  if ((sub_24A82D5E4() & 1) == 0)
  {
    goto LABEL_12;
  }

  v22 = type metadata accessor for FMReverseGeocodingRequest(0);
  v14 = v22[6];
  v15 = *(v11 + 48);
  sub_24A6F434C(a1 + v14, v13);
  sub_24A6F434C(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_24A6F434C(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_24A6F5230(&qword_27EF5D840, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
      v17 = sub_24A82CF84();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_24A67F378(v13, &qword_27EF5E930, &unk_24A8343F0);
      if ((v17 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    (*(v5 + 8))(v10, v4);
LABEL_9:
    sub_24A67F378(v13, &qword_27EF5D838, qword_24A834550);
    goto LABEL_12;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_24A67F378(v13, &qword_27EF5E930, &unk_24A8343F0);
LABEL_11:
  if (*(a1 + v22[7]) == *(a2 + v22[7]))
  {
    v19 = *(a1 + v22[8]) ^ *(a2 + v22[8]) ^ 1;
    return v19 & 1;
  }

LABEL_12:
  v19 = 0;
  return v19 & 1;
}

void sub_24A6F517C(uint64_t a1)
{
  sub_24A679170(319, &qword_27EF5D830, 0x277CE41F8);
  if (v1 <= 0x3F)
  {
    sub_24A687858(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24A6F5230(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for FMIPGetURLInfoRequest(uint64_t a1)
{
  result = qword_27EF5D848;
  if (!qword_27EF5D848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A6F52C4(uint64_t a1)
{
  result = sub_24A82C8B4();
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

uint64_t sub_24A6F535C()
{
  v1 = v0;
  v2 = sub_24A82C814();
  v11 = MEMORY[0x277D837D0];
  *&v10 = v2;
  *(&v10 + 1) = v3;
  v4 = qword_27EF5D920;
  v5 = *(v0 + qword_27EF5D920);

  os_unfair_lock_lock(v5 + 6);

  os_unfair_lock_unlock(v5 + 6);

  sub_24A6A50DC(&v10, v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6A4F8C(v9, 7107189, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
  v7 = *(v1 + v4);

  os_unfair_lock_lock((v7 + 24));
  sub_24A6A3D28((v7 + 16));
  os_unfair_lock_unlock((v7 + 24));
}

uint64_t sub_24A6F546C()
{
  v1 = qword_27EF78C70;
  v2 = sub_24A82C8B4();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_24A6F54D4()
{
  v0 = sub_24A6F8F90();
  v1 = qword_27EF78C70;
  v2 = sub_24A82C8B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t FMIPNotifyActionType.hashValue.getter()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

uint64_t FMIPNotifyAction.__allocating_init(device:type:enabled:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v3 = a3;
  v6 = swift_allocObject();
  FMIPNotifyAction.init(device:type:enabled:)(a1, a2, v3);
  return v6;
}

uint64_t FMIPNotifyAction.init(device:type:enabled:)(uint64_t a1, _BYTE *a2, char a3)
{
  *(v3 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_type) = *a2;
  *(v3 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_enabled) = a3;
  *(v3 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v4 = (v3 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v3 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v3 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v3 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v3 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v8 = 0;
  v8[1] = 0;
  *(v3 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A68D558(a1, v3 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, type metadata accessor for FMIPDevice);
  return v3;
}

uint64_t static FMIPNotifyAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_enabled) == *(a2 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_enabled))
  {
    return static FMIPDevice.== infix(_:_:)(a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, a2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A6F57A4()
{
  v1 = sub_24A6FDDC4();
  if (*(v0 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_enabled))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_enabled))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v2, v3);

  MEMORY[0x24C21C9E0](0x64656C62616E6520, 0xEA0000000000203ALL);

  return v1;
}

uint64_t FMIPNotifyAction.__deallocating_deinit()
{
  FMIPDeviceAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24A6F5904(void *a1, void *a2)
{
  if (*(*a1 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_enabled) == *(*a2 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_enabled))
  {
    return static FMIPDevice.== infix(_:_:)(*a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, *a2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  }

  else
  {
    return 0;
  }
}

uint64_t FMIPNotifyItemActionType.hashValue.getter()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

uint64_t FMIPNotifyItemAction.__allocating_init(item:type:state:)(uint64_t a1, _BYTE *a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_type) = *a2;
  *(v6 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_state) = a3;
  sub_24A68D558(a1, v6 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, type metadata accessor for FMIPItem);
  return v6;
}

uint64_t FMIPNotifyItemAction.init(item:type:state:)(uint64_t a1, _BYTE *a2, char a3)
{
  *(v3 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_type) = *a2;
  *(v3 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_state) = a3;
  sub_24A68D558(a1, v3 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, type metadata accessor for FMIPItem);
  return v3;
}

uint64_t sub_24A6F5AE0()
{
  if (*(v0 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_state))
  {
    return 0x64656C62616E65;
  }

  else
  {
    return 0x64656C6261736964;
  }
}

uint64_t FMIPNotifyItemAction.__deallocating_deinit()
{
  sub_24A6CB3F0(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item);

  return swift_deallocClassInstance();
}

uint64_t _s8FMIPCore20FMIPNotifyItemActionC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (_s8FMIPCore8FMIPItemV2eeoiySbAC_ACtFZ_0(a1 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, a2 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item) && *(a1 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_type) == *(a2 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_type))
  {
    v4 = *(a1 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_state) ^ *(a2 + OBJC_IVAR____TtC8FMIPCore20FMIPNotifyItemAction_state) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

unint64_t sub_24A6F5C78()
{
  result = qword_27EF5D858;
  if (!qword_27EF5D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D858);
  }

  return result;
}

unint64_t sub_24A6F5CD0()
{
  result = qword_27EF5D860;
  if (!qword_27EF5D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D860);
  }

  return result;
}

unint64_t sub_24A6F5EE8(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5D800, &unk_24A834860);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  *(v1 + 56) = 0;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6F4230();
  sub_24A82DD64();
  if (v2)
  {
    sub_24A6876E8(a1);

    type metadata accessor for FMIPDeviceActionResponse();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_24A6BBA94(&unk_27EF5E220, &unk_24A8343D0);
    v26 = 4;
    sub_24A6815B0();
    sub_24A82DA84();
    *(v1 + 56) = v25[0];

    sub_24A698230(a1, v25);
    v3 = sub_24A814C20(v25);
    v9 = qword_281515DC8;

    if (v9 != -1)
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
      v22 = v13;
      v24 = swift_slowAlloc();
      v25[0] = v24;
      *v13 = 136315138;
      v23 = v11;
      v14 = sub_24A6F6244();
      v16 = sub_24A68761C(v14, v15, v25);

      v17 = v22;
      *(v22 + 1) = v16;
      v18 = v12;
      v19 = v23;
      _os_log_impl(&dword_24A675000, v23, v18, "FMIPDeviceContainingResponse: initialized with coder %s", v17, 0xCu);
      v20 = v24;
      sub_24A6876E8(v24);
      MEMORY[0x24C21E1D0](v20, -1, -1);
      MEMORY[0x24C21E1D0](v17, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v8, v5);
    sub_24A6876E8(a1);
  }

  return v3;
}

uint64_t sub_24A6F6244()
{
  v1 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v1);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  v14 = v0;
  sub_24A6CB660();
  v2 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v2);

  v3 = MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  v15 = 0x203A737574617473;
  v16 = 0xE800000000000000;
  (*(*v0 + 144))(&v13, v3);
  v14 = qword_24A834880[v13];
  v4 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v4);

  v5 = v15;
  v6 = v16;
  v15 = 60;
  v16 = 0xE100000000000000;

  MEMORY[0x24C21C9E0](v5, v6);

  v8 = v15;
  v7 = v16;
  v15 = 0x3A73656369766564;
  v16 = 0xE800000000000000;
  v14 = v0[7];

  sub_24A6BBA94(&qword_27EF5D890, &unk_24A834870);
  v9 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v9);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  v10 = v15;
  v11 = v16;
  v15 = v8;
  v16 = v7;

  MEMORY[0x24C21C9E0](v10, v11);

  return v15;
}

uint64_t sub_24A6F6520(uint64_t a1, uint64_t a2)
{
  result = sub_24A6F6578(&qword_27EF5D888, a2, type metadata accessor for FMIPDeviceActionResponse, &unk_24A83481C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24A6F6578(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t static FMSystemInfo.isKoreaSKU()()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 isInternalBuild];

  if (v1)
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = sub_24A82CF94();
    v4 = [v2 BOOLForKey_];

    if (v4)
    {
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v5 = sub_24A82CDC4();
      sub_24A6797D0(v5, qword_281518F88);
      v6 = sub_24A82CD94();
      v7 = sub_24A82D504();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_24A675000, v6, v7, "SystemInfo simulating Korea SKU device.", v8, 2u);
        MEMORY[0x24C21E1D0](v8, -1, -1);
      }

      return 1;
    }
  }

  if (sub_24A6F67B4() == 18507 && v9 == 0xE200000000000000)
  {

    return 1;
  }

  v11 = sub_24A82DC04();

  return v11 & 1;
}

uint64_t sub_24A6F67B4()
{
  sub_24A6F6A08(v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return v1;
    }
  }

  else
  {
    sub_24A6F6C40(v2);
  }

  return 0;
}

uint64_t static FMSystemInfo.isChinaSKU()()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 isInternalBuild];

  if (v1)
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = sub_24A82CF94();
    v4 = [v2 BOOLForKey_];

    if (v4)
    {
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v5 = sub_24A82CDC4();
      sub_24A6797D0(v5, qword_281518F88);
      v6 = sub_24A82CD94();
      v7 = sub_24A82D504();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_24A675000, v6, v7, "SystemInfo simulating China SKU device.", v8, 2u);
        MEMORY[0x24C21E1D0](v8, -1, -1);
      }

      return 1;
    }
  }

  if (sub_24A6F67B4() == 18499 && v9 == 0xE200000000000000)
  {

    return 1;
  }

  v11 = sub_24A82DC04();

  return v11 & 1;
}

double sub_24A6F6A08@<D0>(uint64_t a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = sub_24A82CF94();
  v5 = MGCopyAnswerWithError();

  if (v5)
  {
    *(a3 + 24) = swift_getObjectType();
    *a3 = v5;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_24A6F6C40(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5D898, qword_24A8354A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMIPUnknownItemUTMetadata.modelName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FMIPUnknownItemUTMetadata.manufacturerName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FMIPUnknownItemUTMetadata.learnMoreInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FMIPUnknownItemUTMetadata(0) + 24);

  return sub_24A6F6D4C(v3, a1);
}

uint64_t sub_24A6F6D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5D8A0, &qword_24A834940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FMIPUnknownItemUTMetadata.disableInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FMIPUnknownItemUTMetadata(0) + 28);

  return sub_24A6F6D4C(v3, a1);
}

uint64_t sub_24A6F6E0C()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6F6EEC(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A6F6FB8(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

unint64_t sub_24A6F7094@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A6F8F44(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A6F70C4(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000065;
  v3 = 0x6D614E6C65646F6DLL;
  v4 = 0xED00006F666E4965;
  v5 = 0x726F4D6E7261656CLL;
  if (*v1 != 2)
  {
    v5 = 0x49656C6261736964;
    v4 = 0xEB000000006F666ELL;
  }

  if (*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000024A843550;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_24A6F7160()
{
  v1 = 0x6D614E6C65646F6DLL;
  v2 = 0x726F4D6E7261656CLL;
  if (*v0 != 2)
  {
    v2 = 0x49656C6261736964;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

unint64_t sub_24A6F71F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A6F8F44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A6F7220(uint64_t a1)
{
  v2 = sub_24A6F7874();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A6F725C(uint64_t a1)
{
  v2 = sub_24A6F7874();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPUnknownItemUTMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v52 = type metadata accessor for FMIPUnknownItemProductMetadata(0);
  isa = v52[-1].isa;
  v3 = MEMORY[0x28223BE20](v52);
  v53 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - v5;
  v7 = sub_24A6BBA94(&qword_27EF5D8A8, &qword_24A834948);
  v54 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v10 = type metadata accessor for FMIPUnknownItemUTMetadata(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6F7874();
  v13 = v55;
  sub_24A82DD64();
  if (v13)
  {
    v19 = a1;
  }

  else
  {
    v49 = v10;
    v55 = v12;
    v14 = v52;
    v60 = 0;
    v15 = v9;
    v48 = sub_24A82DA44();
    v17 = v16;
    v59 = 1;
    v45 = sub_24A82DA44();
    v47 = v18;
    v58 = 2;
    v46 = sub_24A6F8DBC(&qword_27EF5D8B8, type metadata accessor for FMIPUnknownItemProductMetadata, &protocol conformance descriptor for FMIPUnknownItemProductMetadata);
    sub_24A82DA84();
    v44 = v6;
    v57 = 2;
    sub_24A82DA84();
    v46 = v15;
    v21 = v55;
    v22 = v49;
    *v55 = v48;
    v21[1] = v17;
    v23 = v44;
    v24 = v47;
    v21[2] = v45;
    v21[3] = v24;
    v25 = *(v22 + 24);
    sub_24A6F7924(v23, v21 + v25);
    v26 = *(isa + 56);
    v26(v21 + v25, 0, 1, v14);
    v27 = *(v22 + 28);
    v28 = v53;
    sub_24A6F7924(v53, v21 + v27);
    v26(v21 + v27, 0, 1, v14);
    v29 = FMIPUnknownItemUTMetadata.debugDescription.getter();
    v31 = v30;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v32 = sub_24A82CDC4();
    sub_24A6797D0(v32, qword_281518F88);

    v33 = sub_24A82CD94();
    v34 = sub_24A82D4C4();

    v52 = v33;
    v35 = a1;
    if (os_log_type_enabled(v33, v34))
    {
      v36 = v28;
      v37 = v34;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      isa = v7;
      v40 = v39;
      v56 = v39;
      *v38 = 136315138;
      v41 = sub_24A68761C(v29, v31, &v56);

      *(v38 + 4) = v41;
      v42 = v52;
      _os_log_impl(&dword_24A675000, v52, v37, "FMIPUnknownItemUTMetadata: initialized %s", v38, 0xCu);
      sub_24A6876E8(v40);
      MEMORY[0x24C21E1D0](v40, -1, -1);
      MEMORY[0x24C21E1D0](v38, -1, -1);

      sub_24A6F78C8(v36);
      sub_24A6F78C8(v44);
      (*(v54 + 8))(v46, isa);
    }

    else
    {

      sub_24A6F78C8(v28);
      sub_24A6F78C8(v44);
      (*(v54 + 8))(v46, v7);
    }

    sub_24A6F8D0C(v55, v51, type metadata accessor for FMIPUnknownItemUTMetadata);
    v19 = v35;
  }

  return sub_24A6876E8(v19);
}

unint64_t sub_24A6F7874()
{
  result = qword_27EF5D8B0;
  if (!qword_27EF5D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D8B0);
  }

  return result;
}

uint64_t sub_24A6F78C8(uint64_t a1)
{
  v2 = type metadata accessor for FMIPUnknownItemProductMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A6F7924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPUnknownItemProductMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FMIPUnknownItemUTMetadata.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_24A6BBA94(&qword_27EF5D8A0, &qword_24A834940);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_24A82D854();
  MEMORY[0x24C21C9E0](60, 0xE100000000000000);
  MEMORY[0x24C21C9E0](0xD000000000000019, 0x800000024A834930);
  MEMORY[0x24C21C9E0](0x4E6C65646F6D203ALL, 0xED0000203A656D61);
  v8 = v0[1];
  v24 = *v0;
  v25 = v8;

  sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
  v9 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v9);

  MEMORY[0x24C21C9E0](0xD000000000000013, 0x800000024A8458B0);
  v10 = v0[3];
  v24 = v0[2];
  v25 = v10;

  v11 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v11);

  MEMORY[0x24C21C9E0](0xD000000000000010, 0x800000024A8458D0);
  v12 = type metadata accessor for FMIPUnknownItemUTMetadata(0);
  sub_24A6F6D4C(v0 + *(v12 + 24), v7);
  v13 = type metadata accessor for FMIPUnknownItemProductMetadata(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v7, 1, v13) == 1)
  {
    sub_24A67F378(v7, &qword_27EF5D8A0, &qword_24A834940);
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v15 = FMIPUnknownItemProductMetadata.debugDescription.getter();
    v16 = v17;
    sub_24A6F78C8(v7);
  }

  v24 = v15;
  v25 = v16;
  v18 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v18);

  MEMORY[0x24C21C9E0](0x656C626173696420, 0xEE00203A6F666E49);
  sub_24A6F6D4C(v1 + *(v12 + 28), v5);
  if (v14(v5, 1, v13) == 1)
  {
    sub_24A67F378(v5, &qword_27EF5D8A0, &qword_24A834940);
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v19 = FMIPUnknownItemProductMetadata.debugDescription.getter();
    v20 = v21;
    sub_24A6F78C8(v5);
  }

  v24 = v19;
  v25 = v20;
  v22 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v22);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  return v26;
}

void FMIPUnknownItemUTMetadata.init(productInfo:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24A6BBA94(&qword_27EF5D8A0, &qword_24A834940);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v39 - v5;
  v6 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - v9;
  v11 = [a1 modelName];
  v12 = sub_24A82CFC4();
  v14 = v13;

  *a2 = v12;
  a2[1] = v14;
  v15 = [a1 manufacturerName];
  v16 = sub_24A82CFC4();
  v18 = v17;

  a2[2] = v16;
  a2[3] = v18;
  v40 = type metadata accessor for FMIPUnknownItemUTMetadata(0);
  v19 = *(v40 + 24);
  v20 = [a1 learnModeMetadata];
  v21 = sub_24A82C8B4();
  v22 = 1;
  v39 = *(*(v21 - 8) + 56);
  v39(v10, 1, 1, v21);
  FMIPUnknownItemProductMetadata.init(metadata:disableURL:)(v20, v10, a2 + v19);
  v23 = type metadata accessor for FMIPUnknownItemProductMetadata(0);
  v24 = *(*(v23 - 8) + 56);
  v24(a2 + v19, 0, 1, v23);
  v25 = [a1 disableMetadata];
  v43 = a1;
  v26 = [a1 disableURL];
  v27 = v41;
  if (v26)
  {
    v28 = v26;
    sub_24A82C884();

    v22 = 0;
  }

  v39(v27, v22, 1, v21);
  v29 = v42;
  FMIPUnknownItemProductMetadata.init(metadata:disableURL:)(v25, v27, v42);
  v24(v29, 0, 1, v23);
  sub_24A6F872C(v29, a2 + *(v40 + 28));
  v30 = FMIPUnknownItemUTMetadata.debugDescription.getter();
  v32 = v31;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v33 = sub_24A82CDC4();
  sub_24A6797D0(v33, qword_281518F88);

  v34 = sub_24A82CD94();
  v35 = sub_24A82D4C4();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v44 = v37;
    *v36 = 136315138;
    v38 = sub_24A68761C(v30, v32, &v44);

    *(v36 + 4) = v38;
    _os_log_impl(&dword_24A675000, v34, v35, "FMIPUnknownItemUTMetadata: initialized %s", v36, 0xCu);
    sub_24A6876E8(v37);
    MEMORY[0x24C21E1D0](v37, -1, -1);
    MEMORY[0x24C21E1D0](v36, -1, -1);
  }

  else
  {
  }
}

uint64_t FMIPUnknownItemUTMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5D8C0, &qword_24A834980);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6F7874();
  sub_24A82DD84();
  v10 = *v3;
  v11 = 0;
  sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
  sub_24A6CCEB0();
  sub_24A82DB44();
  if (!v2)
  {
    v10 = v3[1];
    v11 = 1;
    sub_24A82DB44();
    type metadata accessor for FMIPUnknownItemUTMetadata(0);
    LOBYTE(v10) = 2;
    sub_24A6BBA94(&qword_27EF5D8A0, &qword_24A834940);
    sub_24A6F879C();
    sub_24A82DB44();
    LOBYTE(v10) = 3;
    sub_24A82DB44();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t FMIPUnknownItemUTMetadata.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for FMIPUnknownItemProductMetadata(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A6BBA94(&qword_27EF5D8A0, &qword_24A834940);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  if (*(v1 + 8))
  {
    sub_24A82DCE4();
    sub_24A82D094();
    if (*(v1 + 24))
    {
LABEL_3:
      sub_24A82DCE4();
      sub_24A82D094();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24A82DCE4();
    if (*(v1 + 24))
    {
      goto LABEL_3;
    }
  }

  sub_24A82DCE4();
LABEL_6:
  v13 = type metadata accessor for FMIPUnknownItemUTMetadata(0);
  sub_24A6F6D4C(v1 + *(v13 + 24), v12);
  v14 = *(v4 + 48);
  if (v14(v12, 1, v3) == 1)
  {
    sub_24A82DCE4();
  }

  else
  {
    sub_24A6F8D0C(v12, v6, type metadata accessor for FMIPUnknownItemProductMetadata);
    sub_24A82DCE4();
    FMIPUnknownItemProductMetadata.hash(into:)(a1);
    sub_24A6F78C8(v6);
  }

  sub_24A6F6D4C(v1 + *(v13 + 28), v10);
  if (v14(v10, 1, v3) == 1)
  {
    return sub_24A82DCE4();
  }

  sub_24A6F8D0C(v10, v6, type metadata accessor for FMIPUnknownItemProductMetadata);
  sub_24A82DCE4();
  FMIPUnknownItemProductMetadata.hash(into:)(a1);
  return sub_24A6F78C8(v6);
}

uint64_t FMIPUnknownItemUTMetadata.hashValue.getter()
{
  sub_24A82DCC4();
  FMIPUnknownItemUTMetadata.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t sub_24A6F8678()
{
  sub_24A82DCC4();
  FMIPUnknownItemUTMetadata.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t sub_24A6F86BC(uint64_t a1)
{
  sub_24A82DCC4();
  FMIPUnknownItemUTMetadata.hash(into:)(v2);
  return sub_24A82DD24();
}

uint64_t sub_24A6F872C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5D8A0, &qword_24A834940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24A6F879C()
{
  result = qword_27EF5D8C8;
  if (!qword_27EF5D8C8)
  {
    sub_24A6CCDC0(&qword_27EF5D8A0, &qword_24A834940);
    sub_24A6F8DBC(&qword_27EF5D8D0, type metadata accessor for FMIPUnknownItemProductMetadata, &protocol conformance descriptor for FMIPUnknownItemProductMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D8C8);
  }

  return result;
}

uint64_t _s8FMIPCore25FMIPUnknownItemUTMetadataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for FMIPUnknownItemProductMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A6BBA94(&qword_27EF5D8A0, &qword_24A834940);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = sub_24A6BBA94(&qword_27EF5D918, &unk_24A834BD8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = a1[1];
  v21 = a2[1];
  if (v20)
  {
    if (!v21 || (*a1 != *a2 || v20 != v21) && (sub_24A82DC04() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v21)
  {
    goto LABEL_29;
  }

  v22 = a1[3];
  v23 = a2[3];
  if (v22)
  {
    if (!v23 || (a1[2] != a2[2] || v22 != v23) && (sub_24A82DC04() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v23)
  {
    goto LABEL_29;
  }

  v38 = v11;
  v40 = v7;
  v24 = v5;
  v39 = type metadata accessor for FMIPUnknownItemUTMetadata(0);
  v25 = *(v39 + 24);
  v26 = *(v14 + 48);
  sub_24A6F6D4C(a1 + v25, v19);
  sub_24A6F6D4C(a2 + v25, &v19[v26]);
  v27 = *(v24 + 48);
  if (v27(v19, 1, v4) == 1)
  {
    if (v27(&v19[v26], 1, v4) == 1)
    {
      v37 = v27;
      sub_24A67F378(v19, &qword_27EF5D8A0, &qword_24A834940);
      v28 = v40;
      goto LABEL_22;
    }

LABEL_20:
    v29 = v19;
LABEL_28:
    sub_24A67F378(v29, &qword_27EF5D918, &unk_24A834BD8);
    goto LABEL_29;
  }

  sub_24A6F6D4C(v19, v13);
  if (v27(&v19[v26], 1, v4) == 1)
  {
    sub_24A6F78C8(v13);
    goto LABEL_20;
  }

  v37 = v27;
  v28 = v40;
  sub_24A6F8D0C(&v19[v26], v40, type metadata accessor for FMIPUnknownItemProductMetadata);
  v30 = _s8FMIPCore30FMIPUnknownItemProductMetadataV2eeoiySbAC_ACtFZ_0(v13, v28);
  sub_24A6F78C8(v28);
  sub_24A6F78C8(v13);
  sub_24A67F378(v19, &qword_27EF5D8A0, &qword_24A834940);
  if ((v30 & 1) == 0)
  {
LABEL_29:
    v34 = 0;
    return v34 & 1;
  }

LABEL_22:
  v31 = *(v39 + 28);
  v32 = *(v14 + 48);
  sub_24A6F6D4C(a1 + v31, v17);
  sub_24A6F6D4C(a2 + v31, &v17[v32]);
  v33 = v37;
  if (v37(v17, 1, v4) != 1)
  {
    v35 = v38;
    sub_24A6F6D4C(v17, v38);
    if (v33(&v17[v32], 1, v4) != 1)
    {
      sub_24A6F8D0C(&v17[v32], v28, type metadata accessor for FMIPUnknownItemProductMetadata);
      v34 = _s8FMIPCore30FMIPUnknownItemProductMetadataV2eeoiySbAC_ACtFZ_0(v35, v28);
      sub_24A6F78C8(v28);
      sub_24A6F78C8(v35);
      sub_24A67F378(v17, &qword_27EF5D8A0, &qword_24A834940);
      return v34 & 1;
    }

    sub_24A6F78C8(v35);
    goto LABEL_27;
  }

  if (v33(&v17[v32], 1, v4) != 1)
  {
LABEL_27:
    v29 = v17;
    goto LABEL_28;
  }

  sub_24A67F378(v17, &qword_27EF5D8A0, &qword_24A834940);
  v34 = 1;
  return v34 & 1;
}

uint64_t sub_24A6F8D0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A6F8DBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24A6F8E40()
{
  result = qword_27EF5D900;
  if (!qword_27EF5D900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D900);
  }

  return result;
}

unint64_t sub_24A6F8E98()
{
  result = qword_27EF5D908;
  if (!qword_27EF5D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D908);
  }

  return result;
}

unint64_t sub_24A6F8EF0()
{
  result = qword_27EF5D910;
  if (!qword_27EF5D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D910);
  }

  return result;
}

unint64_t sub_24A6F8F44(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A82D9C4();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A6F8F90()
{
  v0 = sub_24A82CB74();

  v1 = qword_281518ED0;
  v2 = sub_24A82CA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

unint64_t sub_24A6F9090(char a1)
{
  result = 0x6E656B6F54737061;
  switch(a1)
  {
    case 1:
      result = 2037149030;
      break;
    case 2:
      result = 1752397168;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6954746E65696C63;
      break;
    case 5:
      result = 0x6973726556707061;
      break;
    case 6:
      result = 0x54746375646F7270;
      break;
    case 7:
      result = 0x6F6973726556736FLL;
      break;
    case 8:
      result = 0x646C697542736FLL;
      break;
    case 9:
      result = 0x4455656369766564;
      break;
    case 10:
      result = 0x6576697463616E69;
      break;
    case 11:
      result = 0x436C6C53776F6873;
      break;
    case 12:
      result = 0x73696365446C6C73;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0x6956776F646E6977;
      break;
    case 15:
      result = 0x736F4D746E6F7266;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24A6F9294(void *a1, uint64_t a2)
{

  *a1 = a2;
}

uint64_t sub_24A6F92DC()
{
  v1 = v0;
  v2 = *(v0 + qword_2815143A0);
  v13 = sub_24A6BBA94(&qword_27EF5D930, &qword_24A83B150);
  *&v12 = v2;
  v3 = qword_27EF5D920;
  v4 = *(v1 + qword_27EF5D920);

  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);

  os_unfair_lock_unlock((v4 + 24));

  v11 = v5;
  if (v13)
  {
    sub_24A6A50DC(&v12, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = sub_24A6A4F8C(v10, 0x6F43726576726573, 0xED0000747865746ELL, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    sub_24A6F6C40(&v12);
    sub_24A7C3F0C(0x6F43726576726573, 0xED0000747865746ELL, v10);
    v7 = sub_24A6F6C40(v10);
  }

  v8 = *(v1 + v3);
  MEMORY[0x28223BE20](v7);

  os_unfair_lock_lock((v8 + 24));
  sub_24A6A3BBC((v8 + 16));
  os_unfair_lock_unlock((v8 + 24));
}

uint64_t sub_24A6F9470()
{

  v1 = qword_281518ED0;
  v2 = sub_24A82CA34();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_24A6F9540()
{
  sub_24A6F8F90();

  return swift_deallocClassInstance();
}

uint64_t sub_24A6F959C(uint64_t a1)
{
  v2 = *(*v1 + qword_27EF5D928);

  os_unfair_lock_lock((v2 + 24));
  sub_24A6A3BBC((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t (*sub_24A6F9618(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  v4 = qword_27EF5D928;
  a1[1] = *v1;
  a1[2] = v4;
  v5 = *(v3 + v4);

  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);

  os_unfair_lock_unlock((v5 + 24));

  *a1 = v6;
  return sub_24A6F96A0;
}

uint64_t sub_24A6F96A0(uint64_t *a1, char a2)
{
  v2 = *(a1[1] + a1[2]);
  if (a2)
  {

    os_unfair_lock_lock((v2 + 24));
    sub_24A6A3BBC((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }

  else
  {

    os_unfair_lock_lock((v2 + 24));
    sub_24A6A3BBC((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }
}

FMIPCore::FMIPAirPodsPlaySoundType_optional __swiftcall FMIPAirPodsPlaySoundType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
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

  *v2 = v5;
  return result;
}

uint64_t FMIPAirPodsPlaySoundType.rawValue.getter()
{
  if (*v0)
  {
    return 29813;
  }

  else
  {
    return 0x72656E776FLL;
  }
}

uint64_t sub_24A6F9800(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 29813;
  }

  else
  {
    v3 = 0x72656E776FLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (*a2)
  {
    v5 = 29813;
  }

  else
  {
    v5 = 0x72656E776FLL;
  }

  if (*a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

uint64_t sub_24A6F9898()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6F990C(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A6F996C(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A6F99DC@<X0>(char *a2@<X8>)
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

void sub_24A6F9A3C(uint64_t *a1@<X8>)
{
  v2 = 29813;
  if (!*v1)
  {
    v2 = 0x72656E776FLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void *FMIPAirPodsPlaySoundEvent.onlinePlaySoundError.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *FMIPAirPodsPlaySoundEvent.offlinePlaySoundError.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

_BYTE *FMIPAirPodsPlaySoundEvent.init(soundEventType:includedCase:includedLeftBud:includedRightBud:onlinePlaySoundAttempted:onlinePlaySoundSuccess:onlinePlaySoundError:offlinePlaySoundAttempted:offlinePlaySoundSuccess:offlinePlaySoundError:userShownPlayingState:userShownFinishedPlayingState:)@<X0>(_BYTE *result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, char a13)
{
  *a9 = *result;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 8) = a7;
  *(a9 + 16) = a8;
  *(a9 + 17) = a10;
  *(a9 + 24) = a11;
  *(a9 + 32) = a12;
  *(a9 + 33) = a13;
  return result;
}

uint64_t sub_24A6F9D8C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v5 = 0xD000000000000015;
      if (a1 != 10)
      {
        v5 = 0xD00000000000001DLL;
      }

      if (a1 == 9)
      {
        return 0xD000000000000015;
      }

      else
      {
        return v5;
      }
    }

    else
    {
      v4 = 0xD000000000000017;
      if (a1 == 7)
      {
        v4 = 0xD000000000000019;
      }

      if (a1 == 6)
      {
        return 0xD000000000000014;
      }

      else
      {
        return v4;
      }
    }
  }

  else
  {
    v1 = 0x657645646E756F73;
    if (a1 == 4)
    {
      v2 = 0xD000000000000018;
    }

    else
    {
      v2 = 0xD000000000000016;
    }

    if (a1 == 3)
    {
      v2 = 0xD000000000000010;
    }

    if (a1)
    {
      v1 = 0x646564756C636E69;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t FMIPManager.enqueue(airpodsPlaySoundEvent:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return _s8FMIPCore13FMIPAnalyticsV25sendAirPodsPlaySoundEvent5eventyAA07FMIPAirefgH0V_tFZ_0(v3);
}

void sub_24A6F9F74(uint64_t a1)
{
  v2 = sub_24A6AE58C(MEMORY[0x277D84F90]);
  v3 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v4 = sub_24A82CF94();

  v5 = [v3 initWithString_];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v2;
  sub_24A6AE690(v5, 0x657645646E756F73, 0xEE0065707954746ELL, isUniquelyReferenced_nonNull_native);
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v8 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v2;
  sub_24A6AE690(v7, 0x646564756C636E69, 0xEC00000065736143, v8);
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v10 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v2;
  sub_24A6AE690(v9, 0xD000000000000010, 0x800000024A845C60, v10);
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v12 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v2;
  sub_24A6AE690(v11, 0x646564756C636E69, 0xEF6475427466654CLL, v12);
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v14 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v2;
  sub_24A6AE690(v13, 0xD000000000000018, 0x800000024A845C80, v14);
  v15 = v2;
  v16 = *(a1 + 8);
  if (v16)
  {
    swift_getErrorValue();
    v17 = v16;
    v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) 0x1FAA73D78];
    v19 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v2;
    sub_24A6AE690(v18, 0xD000000000000014, 0x800000024A845DA0, v19);
  }

  v20 = *(a1 + 5);
  if (v20 != 2)
  {
    v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v22 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v15;
    sub_24A6AE690(v21, 0xD000000000000016, 0x800000024A845D80, v22);
  }

  v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v24 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v15;
  sub_24A6AE690(v23, 0xD000000000000019, 0x800000024A845CA0, v24);
  v25 = *(a1 + 24);
  if (v25)
  {
    swift_getErrorValue();
    v26 = v25;
    v27 = [objc_allocWithZone(MEMORY[0x277CCABB0]) 0x1FAA73D78];
    v28 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v15;
    sub_24A6AE690(v27, 0xD000000000000015, 0x800000024A845D60, v28);
  }

  v29 = *(a1 + 17);
  if (v29 != 2)
  {
    v30 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v31 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v15;
    sub_24A6AE690(v30, 0xD000000000000017, 0x800000024A845D40, v31);
  }

  v32 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v33 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v15;
  sub_24A6AE690(v32, 0xD000000000000015, 0x800000024A845CC0, v33);
  v34 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v35 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v34, 0xD00000000000001DLL, 0x800000024A845CE0, v35);
  v36 = sub_24A82CF94();
  v37 = swift_allocObject();
  *(v37 + 16) = v15;
  aBlock[4] = sub_24A6AEBB4;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6AEADC;
  aBlock[3] = &unk_285DC3990;
  v38 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v38);
}

uint64_t _s8FMIPCore13FMIPAnalyticsV25sendAirPodsPlaySoundEvent5eventyAA07FMIPAirefgH0V_tFZ_0(uint64_t a1)
{
  v2 = sub_24A82CDF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A82CE54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v18[0] = *a1;
  v18[1] = v10;
  v19 = *(a1 + 32);
  if (qword_27EF5CC50 != -1)
  {
    swift_once();
  }

  v11 = swift_allocObject();
  v12 = *(a1 + 16);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a1 + 32);
  aBlock[4] = sub_24A6FA970;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC3940;
  v13 = _Block_copy(aBlock);
  sub_24A6FA978(v18, v16);
  sub_24A82CE24();
  v16[0] = MEMORY[0x277D84F90];
  sub_24A6FA9B0();
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A6F2828();
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v9, v5, v13);
  _Block_release(v13);
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

unint64_t sub_24A6FA834()
{
  result = qword_27EF5D948;
  if (!qword_27EF5D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D948);
  }

  return result;
}

__n128 sub_24A6FA898(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24A6FA8AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 34))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_24A6FA908(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_24A6FA9B0()
{
  result = qword_281515DB0;
  if (!qword_281515DB0)
  {
    sub_24A82CDF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281515DB0);
  }

  return result;
}

uint64_t FMIPPlaySoundDeviceAction.__allocating_init(device:channels:safetyWarningConfirmed:soundQueueingConfirmed:soundMethod:)(uint64_t a1, uint64_t a2, char a3, char a4, _BYTE *a5)
{
  v10 = swift_allocObject();
  LOBYTE(a5) = *a5;
  sub_24A82CA24();
  *(v10 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_channels) = a2;
  *(v10 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_safetyWarningConfirmed) = a3;
  *(v10 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_soundQueueingConfirmed) = a4;
  *(v10 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_soundMethod) = a5;
  *(v10 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v11 = (v10 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v10 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v10 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v10 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v10 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v15 = 0;
  v15[1] = 0;
  *(v10 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A68D5C0(a1, v10 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, type metadata accessor for FMIPDevice);
  return v10;
}

uint64_t FMIPPlaySoundMethod.description.getter()
{
  v1 = *v0;
  v2 = 1701601838;
  if (v1 != 2)
  {
    v2 = 0x697269732ELL;
  }

  if (v1 >= 2)
  {
    return v2;
  }

  else
  {
    return 0x63697373616C632ELL;
  }
}

uint64_t FMIPPlaySoundMethod.hashValue.getter()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

uint64_t sub_24A6FAC3C()
{
  v1 = *v0;
  v2 = 1701601838;
  if (v1 != 2)
  {
    v2 = 0x697269732ELL;
  }

  if (v1 >= 2)
  {
    return v2;
  }

  else
  {
    return 0x63697373616C632ELL;
  }
}

uint64_t FMIPPlaySoundDeviceAction.issueDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_issueDate;
  v4 = sub_24A82CA34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FMIPPlaySoundDeviceAction.init(device:channels:safetyWarningConfirmed:soundQueueingConfirmed:soundMethod:)(uint64_t a1, uint64_t a2, char a3, char a4, char *a5)
{
  v10 = *a5;
  sub_24A82CA24();
  *(v5 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_channels) = a2;
  *(v5 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_safetyWarningConfirmed) = a3;
  *(v5 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_soundQueueingConfirmed) = a4;
  *(v5 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_soundMethod) = v10;
  *(v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v11 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v15 = 0;
  v15[1] = 0;
  *(v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A68D5C0(a1, v5 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, type metadata accessor for FMIPDevice);
  return v5;
}

unint64_t sub_24A6FAE80()
{
  sub_24A82D854();

  sub_24A6CB660();
  v1 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v1);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  sub_24A82D854();

  v2 = MEMORY[0x24C21CB60](*(v0 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_channels), &type metadata for FMIPPlaySoundChannels);
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](0x203A637773202CLL, 0xE700000000000000);
  if (*(v0 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_safetyWarningConfirmed))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  v4 = 0xE400000000000000;
  if (*(v0 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_safetyWarningConfirmed))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v3, v5);

  MEMORY[0x24C21C9E0](0x203A637173202CLL, 0xE700000000000000);
  if (*(v0 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_soundQueueingConfirmed))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_soundQueueingConfirmed))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v6, v7);

  MEMORY[0x24C21C9E0](0x203A6D73202CLL, 0xE600000000000000);
  v8 = *(v0 + OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_soundMethod);
  if (v8 >= 2)
  {
    if (v8 == 2)
    {
      v9 = 1701601838;
    }

    else
    {
      v4 = 0xE500000000000000;
      v9 = 0x697269732ELL;
    }
  }

  else
  {
    v4 = 0xE800000000000000;
    v9 = 0x63697373616C632ELL;
  }

  MEMORY[0x24C21C9E0](v9, v4);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);

  MEMORY[0x24C21C9E0](0x736C656E6E616863, 0xEA0000000000203ALL);

  return 0xD00000000000001ELL;
}

uint64_t sub_24A6FB144()
{

  v1 = OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_issueDate;
  v2 = sub_24A82CA34();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t FMIPPlaySoundDeviceAction.deinit()
{
  v0 = FMIPDeviceAction.deinit();

  v1 = OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_issueDate;
  v2 = sub_24A82CA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t FMIPPlaySoundDeviceAction.__deallocating_deinit()
{
  v0 = FMIPDeviceAction.deinit();

  v1 = OBJC_IVAR____TtC8FMIPCore25FMIPPlaySoundDeviceAction_issueDate;
  v2 = sub_24A82CA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t FMIPIgnoreItemAction.init(unknownItem:until:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8FMIPCore20FMIPIgnoreItemAction_until) = a2;
  sub_24A68D5C0(a1, v2 + OBJC_IVAR____TtC8FMIPCore16FMIPUTItemAction_unknownItem, type metadata accessor for FMIPUnknownItem);
  return v2;
}

uint64_t _s8FMIPCore16FMIPUTItemActionCfD_0()
{
  sub_24A6FB9B0(v0 + OBJC_IVAR____TtC8FMIPCore16FMIPUTItemAction_unknownItem, type metadata accessor for FMIPUnknownItem);

  return swift_deallocClassInstance();
}

uint64_t _s8FMIPCore16FMIPUTItemActionC11unknownItemAcA011FMIPUnknownE0V_tcfC_0(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_24A68D5C0(a1, v2 + OBJC_IVAR____TtC8FMIPCore16FMIPUTItemAction_unknownItem, type metadata accessor for FMIPUnknownItem);
  return v2;
}

uint64_t sub_24A6FB4D8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + *a3) = a2;
  sub_24A68D5C0(a1, v6 + OBJC_IVAR____TtC8FMIPCore16FMIPUTItemAction_unknownItem, type metadata accessor for FMIPUnknownItem);
  return v6;
}

uint64_t FMIPPlayUTSoundAction.init(unknownItem:context:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8FMIPCore21FMIPPlayUTSoundAction_context) = a2;
  sub_24A68D5C0(a1, v2 + OBJC_IVAR____TtC8FMIPCore16FMIPUTItemAction_unknownItem, type metadata accessor for FMIPUnknownItem);
  return v2;
}

uint64_t FMIPUTItemAction.debugDescription.getter()
{
  v0 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v0);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v1 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v1);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  MEMORY[0x24C21C9E0](0x496E776F6E6B6E75, 0xEC0000003A6D6574);
  type metadata accessor for FMIPUnknownItem(0);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](62, 0xE100000000000000);

  MEMORY[0x24C21C9E0](0, 0xE000000000000000);

  return 60;
}

uint64_t FMIPPlaySoundItemAction.__allocating_init(item:context:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC8FMIPCore23FMIPPlaySoundItemAction_uuid;
  v8 = sub_24A82CAA4();
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  v9 = v6 + OBJC_IVAR____TtC8FMIPCore23FMIPPlaySoundItemAction_context;
  *v9 = a2;
  *(v9 + 8) = a3 & 1;
  sub_24A68D5C0(a1, v6 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, type metadata accessor for FMIPItem);
  return v6;
}

uint64_t FMIPPlaySoundItemAction.init(item:context:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = OBJC_IVAR____TtC8FMIPCore23FMIPPlaySoundItemAction_uuid;
  v8 = sub_24A82CAA4();
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = v3 + OBJC_IVAR____TtC8FMIPCore23FMIPPlaySoundItemAction_context;
  *v9 = a2;
  *(v9 + 8) = a3 & 1;
  sub_24A68D5C0(a1, v3 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, type metadata accessor for FMIPItem);
  return v3;
}

uint64_t FMIPPlaySoundItemAction.deinit()
{
  sub_24A6FB9B0(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, type metadata accessor for FMIPItem);
  sub_24A6FBA10(v0 + OBJC_IVAR____TtC8FMIPCore23FMIPPlaySoundItemAction_uuid);
  return v0;
}

uint64_t sub_24A6FB9B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A6FBA10(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMIPPlaySoundItemAction.__deallocating_deinit()
{
  sub_24A6FB9B0(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, type metadata accessor for FMIPItem);
  sub_24A6FBA10(v0 + OBJC_IVAR____TtC8FMIPCore23FMIPPlaySoundItemAction_uuid);

  return swift_deallocClassInstance();
}

unint64_t sub_24A6FBB08()
{
  result = qword_27EF5D950;
  if (!qword_27EF5D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D950);
  }

  return result;
}

uint64_t sub_24A6FBB94(uint64_t a1)
{
  result = sub_24A82CA34();
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

uint64_t sub_24A6FBE14(uint64_t a1)
{
  result = type metadata accessor for FMIPUnknownItem(319);
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

void sub_24A6FBEF8(uint64_t a1)
{
  sub_24A68FA94(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void FMIPItemImageSize.init(rawValue:)(char *a1@<X8>, double a2@<D0>)
{
  if (a2 == 66.0)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (a2 == 37.0)
  {
    v2 = 0;
  }

  *a1 = v2;
}

double FMIPItemImageSize.rawValue.getter()
{
  result = 37.0;
  if (*v0)
  {
    return 66.0;
  }

  return result;
}

BOOL sub_24A6FC098(_BYTE *a1, _BYTE *a2)
{
  v2 = 37.0;
  if (*a1)
  {
    v3 = 66.0;
  }

  else
  {
    v3 = 37.0;
  }

  if (*a2)
  {
    v2 = 66.0;
  }

  return v3 == v2;
}

uint64_t sub_24A6FC0DC()
{
  if (*v0)
  {
    v1 = 0x4050800000000000;
  }

  else
  {
    v1 = 0x4042800000000000;
  }

  return MEMORY[0x24C21D610](v1);
}

double *sub_24A6FC128@<X0>(double *result@<X0>, _BYTE *a2@<X8>)
{
  if (*result == 37.0)
  {
    *a2 = 0;
  }

  else if (*result == 66.0)
  {
    *a2 = 1;
  }

  else
  {
    *a2 = 2;
  }

  return result;
}

void sub_24A6FC174(double *a1@<X8>)
{
  v2 = 37.0;
  if (*v1)
  {
    v2 = 66.0;
  }

  *a1 = v2;
}

uint64_t FMIPItemImageCacheRequest.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[5];
  v4 = v0[6];
  sub_24A82D854();
  MEMORY[0x24C21C9E0](0xD00000000000001BLL, 0x800000024A846040);
  MEMORY[0x24C21C9E0](v1, v2);
  MEMORY[0x24C21C9E0](9071406774580000, 0xE700000000000000);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](0x203A656C61637320, 0xE800000000000000);
  v5 = sub_24A82D364();
  MEMORY[0x24C21C9E0](v5);

  MEMORY[0x24C21C9E0](0xD000000000000012, 0x800000024A846060);
  type metadata accessor for CGColor(0);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](0x6973726556736F20, 0xEC000000203A6E6FLL);
  MEMORY[0x24C21C9E0](v3, v4);
  return 0;
}

uint64_t FMIPItemImageCacheRequest.fileName.getter()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = sub_24A82D454();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v7 = *(v6 + 16);
  if (v7)
  {
    v24 = v1;
    v8 = v3;
    v25 = MEMORY[0x277D84F90];
    sub_24A6FC900(0, v7, 0);
    v9 = 32;
    v10 = v25;
    do
    {
      v11 = sub_24A82D364();
      v26 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        v23 = v11;
        v16 = v12;
        sub_24A6FC900((v13 > 1), v14 + 1, 1);
        v12 = v16;
        v11 = v23;
        v10 = v26;
      }

      *(v10 + 16) = v14 + 1;
      v15 = v10 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      v9 += 8;
      --v7;
    }

    while (v7);

    v3 = v8;
    v1 = v24;
  }

  else
  {
  }

  sub_24A6BBA94(&qword_27EF5D9D0, &qword_24A835090);
  sub_24A6FC920();
  v17 = sub_24A82CF74();
  v19 = v18;

  MEMORY[0x24C21C9E0](95, 0xE100000000000000);
  v20 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v20);

  result = MEMORY[0x24C21C9E0](95, 0xE100000000000000);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v2 < 9.22337204e18)
  {
    v22 = sub_24A82DB84();
    MEMORY[0x24C21C9E0](v22);

    MEMORY[0x24C21C9E0](95, 0xE100000000000000);
    MEMORY[0x24C21C9E0](v17, v19);

    MEMORY[0x24C21C9E0](95, 0xE100000000000000);
    MEMORY[0x24C21C9E0](v3, v4);
    return *&v1;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t FMIPItemImageCacheRequest.emoji.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FMIPItemImageCacheRequest.osVersion.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t FMIPItemImageCacheRequest.init(emoji:size:scale:backgroundColor:osVersion:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v8 = *a3;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = v8;
  *(a7 + 24) = a8;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  return result;
}

uint64_t FMIPItemImageCacheRequest.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_24A82D094();
  if (v2)
  {
    v3 = 0x4050800000000000;
  }

  else
  {
    v3 = 0x4042800000000000;
  }

  MEMORY[0x24C21D610](v3);
  sub_24A82D094();
  type metadata accessor for CGColor(0);
  sub_24A6FC984();
  return sub_24A82CD74();
}

uint64_t FMIPItemImageCacheRequest.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_24A82DCC4();
  sub_24A82D094();
  if (v1)
  {
    v2 = 0x4050800000000000;
  }

  else
  {
    v2 = 0x4042800000000000;
  }

  MEMORY[0x24C21D610](v2);
  sub_24A82D094();
  type metadata accessor for CGColor(0);
  sub_24A6FC984();
  sub_24A82CD74();
  return sub_24A82DD24();
}

uint64_t sub_24A6FC800()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v7[9] = *v0;
  v7[10] = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  sub_24A82DCC4();
  FMIPItemImageCacheRequest.hash(into:)(v7);
  return sub_24A82DD24();
}

uint64_t sub_24A6FC870(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 48);
  v8[9] = *v1;
  v8[10] = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  sub_24A82DCC4();
  FMIPItemImageCacheRequest.hash(into:)(v8);
  return sub_24A82DD24();
}

void *sub_24A6FC8E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A6FCCCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24A6FC900(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A6FCE14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_24A6FC920()
{
  result = qword_27EF5D9D8;
  if (!qword_27EF5D9D8)
  {
    sub_24A6CCDC0(&qword_27EF5D9D0, &qword_24A835090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D9D8);
  }

  return result;
}

unint64_t sub_24A6FC984()
{
  result = qword_27EF5D9E0;
  if (!qword_27EF5D9E0)
  {
    type metadata accessor for CGColor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D9E0);
  }

  return result;
}

char *sub_24A6FC9DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A6FDA9C(a1, a2, a3, *v3, &qword_27EF5DA50, &qword_24A8352E0);
  *v3 = result;
  return result;
}

char *sub_24A6FCA0C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A6FCF20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24A6FCA2C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A6FD048(a1, a2, a3, *v3, &qword_27EF5DA20, &unk_24A8352B0, &qword_27EF5DA28, &qword_24A8415A0);
  *v3 = result;
  return result;
}

void *sub_24A6FCA6C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A6FD048(a1, a2, a3, *v3, &qword_27EF5DA30, &qword_24A8352C0, &qword_27EF5DA38, &qword_24A8352C8);
  *v3 = result;
  return result;
}

void *sub_24A6FCAAC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A6FD17C(a1, a2, a3, *v3, &qword_27EF5E110, &unk_24A835280, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

void *sub_24A6FCAF0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A6FD048(a1, a2, a3, *v3, &qword_27EF5DAA0, &qword_24A835330, &qword_27EF5DAA8, &qword_24A835338);
  *v3 = result;
  return result;
}

void *sub_24A6FCB30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A6FD17C(a1, a2, a3, *v3, &qword_27EF5DAB0, &unk_24A835340, type metadata accessor for FMIPItem);
  *v3 = result;
  return result;
}

void *sub_24A6FCB74(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A6FD17C(a1, a2, a3, *v3, &qword_27EF5DA40, &qword_24A8352D0, type metadata accessor for FMIPItemGroup);
  *v3 = result;
  return result;
}

void *sub_24A6FCBB8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A6FD17C(a1, a2, a3, *v3, &qword_27EF5D5D0, qword_24A837A80, type metadata accessor for FMIPDevice);
  *v3 = result;
  return result;
}

void *sub_24A6FCBFC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A6FD478(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24A6FCC1C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A6FD5C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24A6FCC3C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A6FD6E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24A6FCC5C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A6FD834(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24A6FCC7C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A6FD954(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24A6FCC9C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A6FDA9C(a1, a2, a3, *v3, &qword_27EF5DA58, &qword_24A8352E8);
  *v3 = result;
  return result;
}

void *sub_24A6FCCCC(void *result, int64_t a2, char a3, void *a4)
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
    sub_24A6BBA94(&qword_27EF5DA78, &qword_24A835308);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_24A6BBA94(&qword_27EF5DA80, &unk_24A835310);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24A6FCE14(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24A6FCF20(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5DA48, &qword_24A8352D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 352);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[352 * v8])
    {
      memmove(v12, v13, 352 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24A6FD048(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_24A6BBA94(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_24A6BBA94(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_24A6FD17C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_24A6FD358(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5DA70, &qword_24A835300);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24A6FD478(void *result, int64_t a2, char a3, void *a4)
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
    sub_24A6BBA94(&qword_27EF5DA08, &unk_24A83D030);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_24A6BBA94(&qword_27EF5EF70, &unk_24A835290);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24A6FD5C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5DA88, &qword_24A838C20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24A6FD6E8(void *result, int64_t a2, char a3, void *a4)
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
    sub_24A6BBA94(&qword_27EF5DA90, &unk_24A835320);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 224);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[28 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 224 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_24A6BBA94(&qword_27EF5DA98, &qword_24A83D9B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24A6FD834(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5DA60, &qword_24A8352F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24A6FD954(void *result, int64_t a2, char a3, void *a4)
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
    sub_24A6BBA94(&qword_27EF5DA10, &qword_24A8352A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_24A6BBA94(&qword_27EF5DA18, &qword_24A8352A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24A6FDA9C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_24A6BBA94(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

uint64_t _s8FMIPCore25FMIPItemImageCacheRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 3);
  v4 = a1[5];
  v5 = a1[6];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (v3 == v7)
    {
      v10 = v2;
    }

    else
    {
      v10 = 0;
    }

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v7)
    {
      v11 = v2;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  type metadata accessor for CGColor(0);
  sub_24A6FC984();
  if ((sub_24A82CD64() & 1) == 0)
  {
    return 0;
  }

  if (v4 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_24A82DC04();
}

unint64_t sub_24A6FDCBC()
{
  result = qword_27EF5D9E8;
  if (!qword_27EF5D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D9E8);
  }

  return result;
}

__n128 sub_24A6FDD10(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t FMIPDeviceAction.init(device:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v2 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A6CAF68(a1, v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  return v1;
}

uint64_t sub_24A6FDDC4()
{
  v1 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v1);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v2 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  sub_24A82D854();

  v3 = (v0 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  MEMORY[0x24C21C9E0](*v3, v3[1]);
  MEMORY[0x24C21C9E0](0x3A656D616E20, 0xE600000000000000);
  MEMORY[0x24C21C9E0](v3[8], v3[9]);
  v4 = MEMORY[0x24C21C9E0](0xD000000000000014, 0x800000024A846080);
  v5 = (*(*v0 + 144))(v4);
  v6 = (v5 & 1) == 0;
  if (v5)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v6)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x24C21C9E0](v7, v8);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);

  MEMORY[0x24C21C9E0](0x3A656369766564, 0xE700000000000000);

  return 60;
}

uint64_t FMIPDeviceAction.deinit()
{
  sub_24A6FE094(v0 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);

  sub_24A6AFFE8(*(v0 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation), *(v0 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation + 8));

  sub_24A67E8E8(*(v0 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession), *(v0 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession + 8));
  return v0;
}

uint64_t sub_24A6FE094(uint64_t a1)
{
  v2 = type metadata accessor for FMIPDevice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_24A6FE0F0()
{
  v1 = OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_24A6FE13C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_24A6FE1F8()
{
  v1 = (v0 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  swift_beginAccess();
  v2 = *v1;
  sub_24A6A7314(*v1, v1[1]);
  return v2;
}

uint64_t sub_24A6FE254(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_24A6AFFE8(v6, v7);
}

uint64_t sub_24A6FE328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPDevice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A6FE38C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A6FEA8C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A6A7314(v4, v5);
}

uint64_t sub_24A6FE42C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t (*)(), uint64_t))
{
  v5 = *a1;
  v6 = *a2;
  v8 = *a3;
  v7 = a3[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;

  a4(v5, v6, sub_24A6FEA94, v9);
}

uint64_t sub_24A6FE4D4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A6FEA58;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24A6A7314(v3, v4);
  return sub_24A6AFFE8(v8, v9);
}

uint64_t sub_24A6FE59C(char a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *, void *))
{
  v12 = a1;
  v11 = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[0] = sub_24A6FEA60;
  v10[1] = v8;

  a5(&v12, &v11, v10);
}

uint64_t FMIPDeviceAction.__allocating_init(device:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v3 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v7 = 0;
  v7[1] = 0;
  *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A6CAF68(a1, v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  return v2;
}

uint64_t FMIPDeviceAction.__deallocating_deinit()
{
  FMIPDeviceAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMIPDeviceAction(uint64_t a1)
{
  result = qword_27EF5DAC0;
  if (!qword_27EF5DAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A6FE7FC(uint64_t a1)
{
  result = type metadata accessor for FMIPDevice(319);
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

uint64_t sub_24A6FEA94(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t FMIPCancelEraseAction.__allocating_init(device:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v3 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v7 = 0;
  v7[1] = 0;
  *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A6CAF68(a1, v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  return v2;
}

uint64_t FMIPCancelEraseAction.init(device:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v2 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A6CAF68(a1, v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  return v1;
}

uint64_t FMIPCancelEraseAction.__deallocating_deinit()
{
  FMIPDeviceAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMIPCancelEraseAction(uint64_t a1)
{
  result = qword_27EF5DAD0;
  if (!qword_27EF5DAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FMIPEraseRequest(uint64_t a1)
{
  result = qword_27EF5DAE0;
  if (!qword_27EF5DAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A6FEE08()
{
  v1 = v0;
  v2 = *(v0 + qword_27EF78D38);
  v4 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  v3 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 8);
  v5 = MEMORY[0x277D837D0];
  v67 = MEMORY[0x277D837D0];
  *&v65 = v4;
  *(&v65 + 1) = v3;
  v6 = qword_27EF5D920;
  v7 = *(v0 + qword_27EF5D920);

  os_unfair_lock_lock((v7 + 24));
  v8 = *(v7 + 16);

  os_unfair_lock_unlock((v7 + 24));

  sub_24A6A50DC(&v65, v63);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = v8;
  sub_24A6A4F8C(v63, 0x656369766564, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v10 = *(v1 + v6);

  os_unfair_lock_lock((v10 + 24));
  sub_24A6A3D28((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));

  v11 = *(v2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_isUserTextEnabled);
  v67 = MEMORY[0x277D839B0];
  LOBYTE(v65) = v11;
  v12 = *(v1 + v6);

  os_unfair_lock_lock((v12 + 24));
  v13 = *(v12 + 16);

  os_unfair_lock_unlock((v12 + 24));

  v64 = v13;
  if (v67)
  {
    sub_24A6A50DC(&v65, v63);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = sub_24A6A4F8C(v63, 0x7478655472657375, 0xE800000000000000, v14);
  }

  else
  {
    sub_24A6F6C40(&v65);
    sub_24A7C3F0C(0x7478655472657375, 0xE800000000000000, v63);
    v15 = sub_24A6F6C40(v63);
  }

  v16 = *(v1 + v6);
  MEMORY[0x28223BE20](v15);

  os_unfair_lock_lock((v16 + 24));
  sub_24A6FF740((v16 + 16));
  os_unfair_lock_unlock((v16 + 24));

  v17 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid + 8);
  if (v17)
  {
    v18 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
    v19 = MEMORY[0x277D837D0];
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v66 = 0;
  }

  *&v65 = v18;
  *(&v65 + 1) = v17;
  v67 = v19;
  v20 = *(v1 + v6);

  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);

  os_unfair_lock_unlock((v20 + 24));

  v64 = v21;
  if (v67)
  {
    sub_24A6A50DC(&v65, v63);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = sub_24A6A4F8C(v63, 1684632420, 0xE400000000000000, v22);
  }

  else
  {
    sub_24A6F6C40(&v65);
    sub_24A7C3F0C(1684632420, 0xE400000000000000, v63);
    v23 = sub_24A6F6C40(v63);
  }

  v24 = *(v1 + v6);
  MEMORY[0x28223BE20](v23);

  os_unfair_lock_lock((v24 + 24));
  sub_24A6FF740((v24 + 16));
  os_unfair_lock_unlock((v24 + 24));

  v25 = *(v2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_message + 8);
  if (v25)
  {
    v26 = *(v2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_message);
    v27 = MEMORY[0x277D837D0];
    v28 = *(v2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_message + 8);
  }

  else
  {
    v28 = 0;
    v26 = 0;
    v27 = 0;
    v66 = 0;
  }

  *&v65 = v26;
  *(&v65 + 1) = v28;
  v67 = v27;
  v29 = *(v1 + v6);

  os_unfair_lock_lock((v29 + 24));
  v30 = *(v29 + 16);

  os_unfair_lock_unlock((v29 + 24));

  v64 = v30;
  if (v25)
  {
    sub_24A6A50DC(&v65, v63);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v32 = sub_24A6A4F8C(v63, 1954047348, 0xE400000000000000, v31);
  }

  else
  {
    sub_24A6F6C40(&v65);
    sub_24A7C3F0C(1954047348, 0xE400000000000000, v63);
    v32 = sub_24A6F6C40(v63);
  }

  v33 = *(v1 + v6);
  MEMORY[0x28223BE20](v32);

  os_unfair_lock_lock((v33 + 24));
  sub_24A6FF740((v33 + 16));
  os_unfair_lock_unlock((v33 + 24));

  v34 = *(v2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_phoneNumber + 8);
  if (v34)
  {
    v35 = *(v2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_phoneNumber);
    v36 = MEMORY[0x277D837D0];
    v37 = *(v2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_phoneNumber + 8);
  }

  else
  {
    v37 = 0;
    v35 = 0;
    v36 = 0;
    v66 = 0;
  }

  *&v65 = v35;
  *(&v65 + 1) = v37;
  v67 = v36;
  v38 = *(v1 + v6);

  os_unfair_lock_lock((v38 + 24));
  v39 = *(v38 + 16);

  os_unfair_lock_unlock((v38 + 24));

  v64 = v39;
  if (v34)
  {
    sub_24A6A50DC(&v65, v63);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v41 = sub_24A6A4F8C(v63, 0x72624E72656E776FLL, 0xE800000000000000, v40);
  }

  else
  {
    sub_24A6F6C40(&v65);
    sub_24A7C3F0C(0x72624E72656E776FLL, 0xE800000000000000, v63);
    v41 = sub_24A6F6C40(v63);
  }

  v42 = *(v1 + v6);
  MEMORY[0x28223BE20](v41);

  os_unfair_lock_lock((v42 + 24));
  sub_24A6FF740((v42 + 16));
  os_unfair_lock_unlock((v42 + 24));

  v43 = *(v2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_passcode + 8);
  if (v43)
  {
    v44 = *(v2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_passcode);
    v45 = MEMORY[0x277D837D0];
    v46 = *(v2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_passcode + 8);
  }

  else
  {
    v46 = 0;
    v44 = 0;
    v45 = 0;
    v66 = 0;
  }

  *&v65 = v44;
  *(&v65 + 1) = v46;
  v67 = v45;
  v47 = *(v1 + v6);

  os_unfair_lock_lock((v47 + 24));
  v48 = *(v47 + 16);

  os_unfair_lock_unlock((v47 + 24));

  v64 = v48;
  if (v43)
  {
    sub_24A6A50DC(&v65, v63);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v50 = sub_24A6A4F8C(v63, 0x65646F6373736170, 0xE800000000000000, v49);
  }

  else
  {
    sub_24A6F6C40(&v65);
    sub_24A7C3F0C(0x65646F6373736170, 0xE800000000000000, v63);
    v50 = sub_24A6F6C40(v63);
  }

  v51 = *(v1 + v6);
  MEMORY[0x28223BE20](v50);

  os_unfair_lock_lock((v51 + 24));
  sub_24A6FF740((v51 + 16));
  os_unfair_lock_unlock((v51 + 24));

  v53 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession);
  v54 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession + 8);
  if (v54 >> 60 != 15)
  {
    v55 = *v53;
    sub_24A681458(*v53, *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession + 8));
    v56 = sub_24A82C8F4();
    v67 = v5;
    *&v65 = v56;
    *(&v65 + 1) = v57;
    v58 = *(v1 + v6);

    os_unfair_lock_lock((v58 + 24));
    v59 = *(v58 + 16);

    os_unfair_lock_unlock((v58 + 24));

    sub_24A6A50DC(&v65, v63);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v59;
    v61 = sub_24A6A4F8C(v63, 0xD000000000000011, 0x800000024A846180, v60);
    v62 = *(v1 + v6);
    MEMORY[0x28223BE20](v61);

    os_unfair_lock_lock((v62 + 24));
    sub_24A6FF740((v62 + 16));
    os_unfair_lock_unlock((v62 + 24));
    sub_24A67E8E8(v55, v54);
  }

  return result;
}

uint64_t sub_24A6FF6C4()
{
  sub_24A6F8F90();

  return swift_deallocClassInstance();
}

uint64_t sub_24A6FF758()
{
  sub_24A82DCC4();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A6FF7B4(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A6FF7FC@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_24A82D9C4();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_24A6FF874@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_24A82D9C4();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_24A6FF8CC(uint64_t a1)
{
  v2 = sub_24A700150();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A6FF908(uint64_t a1)
{
  v2 = sub_24A700150();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_24A6FF990(void *a1)
{
  v4 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_24A6BBA94(&qword_27EF5DB00, &qword_24A835508);
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A700150();
  sub_24A82DD64();
  if (v2)
  {
    sub_24A6876E8(a1);
    type metadata accessor for FMIPGetURLInfoResponse(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v28 = a1;
    v10 = v30;
    sub_24A82DA44();
    v27 = v7;
    v13 = v28;
    if (v11)
    {
      sub_24A82C8A4();
    }

    else
    {
      v12 = sub_24A82C8B4();
      (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    }

    sub_24A696DA0(v6, v1 + OBJC_IVAR____TtC8FMIPCore22FMIPGetURLInfoResponse_url);
    sub_24A698230(v13, v29);
    a1 = sub_24A814C20(v29);
    v14 = qword_281515DC8;

    if (v14 != -1)
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
      v19 = swift_slowAlloc();
      v29[0] = v19;
      *v18 = 136315138;
      v20 = sub_24A6FFD9C();
      v22 = sub_24A68761C(v20, v21, v29);
      v30 = v9;
      v23 = v10;
      v24 = v22;

      *(v18 + 4) = v24;
      _os_log_impl(&dword_24A675000, v16, v17, "FMIPGetURLInfoResponse: initialized with coder %s", v18, 0xCu);
      sub_24A6876E8(v19);
      MEMORY[0x24C21E1D0](v19, -1, -1);
      MEMORY[0x24C21E1D0](v18, -1, -1);

      v13 = v28;
      (*(v23 + 1))(v30, v27);
    }

    else
    {

      (*(v10 + 1))(v9, v27);
    }

    sub_24A6876E8(v13);
  }

  return a1;
}

uint64_t sub_24A6FFD9C()
{
  v1 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - v2;
  v15 = 60;
  v16 = 0xE100000000000000;
  v4 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v4);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  v14 = v0;
  sub_24A6CB660();
  v5 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v5);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  v7 = v15;
  v6 = v16;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_24A82D854();

  v15 = 980185717;
  v16 = 0xE400000000000000;
  sub_24A696E10(v0 + OBJC_IVAR____TtC8FMIPCore22FMIPGetURLInfoResponse_url, v3);
  v8 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v8);

  MEMORY[0x24C21C9E0](0x4373757461747320, 0xEC0000003A65646FLL);
  v14 = *(v0 + 48);
  v9 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v9);

  MEMORY[0x24C21C9E0](15913, 0xE200000000000000);
  v10 = v15;
  v11 = v16;
  v15 = v7;
  v16 = v6;

  MEMORY[0x24C21C9E0](v10, v11);

  return v15;
}

uint64_t sub_24A6FFFCC()
{

  sub_24A6D3E54(v0 + OBJC_IVAR____TtC8FMIPCore22FMIPGetURLInfoResponse_url);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMIPGetURLInfoResponse(uint64_t a1)
{
  result = qword_27EF5DAF0;
  if (!qword_27EF5DAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A70009C(uint64_t a1)
{
  sub_24A6790B0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_24A700150()
{
  result = qword_27EF5DB08;
  if (!qword_27EF5DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DB08);
  }

  return result;
}

unint64_t sub_24A7001B8()
{
  result = qword_27EF5DB10;
  if (!qword_27EF5DB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DB10);
  }

  return result;
}

unint64_t sub_24A700210()
{
  result = qword_27EF5DB18;
  if (!qword_27EF5DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DB18);
  }

  return result;
}

unint64_t sub_24A700268()
{
  result = qword_27EF5DB20;
  if (!qword_27EF5DB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DB20);
  }

  return result;
}

uint64_t FMIPDisableTagSafetyAlertAction.__allocating_init(disabled:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void FMIPAddress.init(label:placemark:)(uint64_t *__return_ptr a1@<X8>, id a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  v8 = [a2 country];
  if (v8)
  {
    v9 = v8;
    v10 = sub_24A82CFC4();
    v101 = v11;
    v102 = v10;
  }

  else
  {
    v101 = 0;
    v102 = 0;
  }

  v12 = [a2 ISOcountryCode];
  if (v12)
  {
    v13 = v12;
    v99 = sub_24A82CFC4();
    v100 = v14;
  }

  else
  {
    v99 = 0;
    v100 = 0;
  }

  v15 = [a2 thoroughfare];
  if (v15)
  {
    v16 = v15;
    v107 = sub_24A82CFC4();
    v18 = v17;
  }

  else
  {
    v107 = 0;
    v18 = 0;
  }

  v19 = [a2 thoroughfare];
  if (v19)
  {
    v20 = v19;
    v21 = sub_24A82CFC4();
    v97 = v22;
    v98 = v21;
  }

  else
  {
    v97 = 0;
    v98 = 0;
  }

  v23 = [a2 locality];
  if (v23)
  {
    v24 = v23;
    v105 = sub_24A82CFC4();
    v26 = v25;
  }

  else
  {
    v105 = 0;
    v26 = 0;
  }

  v27 = [a2 postalCode];
  if (v27)
  {
    v28 = v27;
    v29 = sub_24A82CFC4();
    v95 = v30;
    v96 = v29;
  }

  else
  {
    v95 = 0;
    v96 = 0;
  }

  v31 = [a2 administrativeArea];
  if (v31)
  {
    v32 = v31;
    v33 = sub_24A82CFC4();
    v93 = v34;
    v94 = v33;
  }

  else
  {
    v93 = 0;
    v94 = 0;
  }

  v35 = [a2 subAdministrativeArea];
  if (v35)
  {
    v36 = v35;
    v37 = sub_24A82CFC4();
    v91 = v38;
    v92 = v37;
  }

  else
  {
    v91 = 0;
    v92 = 0;
  }

  v39 = [a2 fullThoroughfare];
  if (v39)
  {
    v40 = v39;
    v41 = sub_24A82CFC4();
    v89 = v42;
    v90 = v41;
  }

  else
  {
    v89 = 0;
    v90 = 0;
  }

  v43 = [a2 areasOfInterest];
  v106 = v18;
  v104 = v26;
  if (v43)
  {
    v44 = v43;
    v88 = sub_24A82D244();
  }

  else
  {
    v88 = MEMORY[0x277D84F90];
  }

  v45 = [a2 _geoMapItem];
  v46 = &off_278FE8000;
  if (!v45)
  {
    goto LABEL_36;
  }

  v47 = [v45 addressObject];
  if (v47)
  {
    v48 = v47;
    v49 = [v47 fullAddressNoCurrentCountryWithMultiline_];

    if (v49)
    {
      v50 = sub_24A82CFC4();
      v85 = v51;
      v86 = v50;

      swift_unknownObjectRelease();
      goto LABEL_37;
    }

    swift_unknownObjectRelease();
LABEL_36:
    v85 = 0;
    v86 = 0;
LABEL_37:
    v52 = [a2 _geoMapItem];
    if (v52)
    {
      v53 = [v52 addressObject];
      swift_unknownObjectRelease();
      if (v53)
      {
        v54 = [v53 cityAndAboveNoCurrentCountryWithFallback_];
        v55 = v106;
        v56 = v104;
        if (v54)
        {
          v57 = a3;
          v58 = v54;
          v59 = sub_24A82CFC4();
          v61 = v60;

          v62 = HIBYTE(v61) & 0xF;
          v103 = v59;
          if ((v61 & 0x2000000000000000) == 0)
          {
            v62 = v59 & 0xFFFFFFFFFFFFLL;
          }

          if (!v62)
          {

            v103 = 0;
            v61 = 0;
          }

          v63 = v107;
          a3 = v57;
          v46 = &off_278FE8000;
          v84 = v61;
          if (!v106)
          {
            goto LABEL_55;
          }

LABEL_49:
          v64 = HIBYTE(v55) & 0xF;
          if ((v55 & 0x2000000000000000) == 0)
          {
            v64 = v63 & 0xFFFFFFFFFFFFLL;
          }

          if (v64)
          {

            v82 = v63;
            v83 = v55;
          }

          else
          {
            v82 = 0;
            v83 = 0;
          }

LABEL_56:
          v65 = sub_24A701FFC(v63, v55, v105, v56);
          v67 = v66;

          if (!v67)
          {
            goto LABEL_60;
          }

          v68 = HIBYTE(v67) & 0xF;
          if ((v67 & 0x2000000000000000) == 0)
          {
            v68 = v65 & 0xFFFFFFFFFFFFLL;
          }

          if (!v68)
          {

            v65 = 0;
            v67 = 0;
            v87 = a3;
            if (v53)
            {
LABEL_61:
              v69 = [v53 shortAddress];
              if (v69)
              {
                v70 = v69;
                v71 = sub_24A82CFC4();
                v73 = v72;

                v74 = HIBYTE(v73) & 0xF;
                if ((v73 & 0x2000000000000000) == 0)
                {
                  v74 = v71 & 0xFFFFFFFFFFFFLL;
                }

                if (v74)
                {
LABEL_67:
                  v75 = [v53 v46[214]];
                  if (v75)
                  {
                    v76 = v75;
                    v77 = sub_24A82CFC4();
                    v79 = v78;

                    v80 = HIBYTE(v79) & 0xF;
                    if ((v79 & 0x2000000000000000) == 0)
                    {
                      v80 = v77 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v80)
                    {
                      goto LABEL_76;
                    }
                  }

                  else
                  {
                  }

                  v77 = 0;
                  v79 = 0;
LABEL_76:
                  a4 = v81;
                  goto LABEL_77;
                }
              }

              v71 = 0;
              v73 = 0;
              goto LABEL_67;
            }
          }

          else
          {
LABEL_60:
            v87 = a3;
            if (v53)
            {
              goto LABEL_61;
            }
          }

          v71 = 0;
          v73 = 0;
          v77 = 0;
          v79 = 0;
LABEL_77:
          *a1 = v87;
          a1[1] = a4;
          a1[4] = v101;
          a1[5] = v99;
          a1[2] = 0;
          a1[3] = v102;
          a1[6] = v100;
          a1[7] = v107;
          a1[8] = v106;
          a1[9] = v98;
          a1[10] = v97;
          a1[11] = v105;
          a1[12] = v104;
          a1[13] = v96;
          a1[14] = v95;
          a1[15] = v94;
          a1[16] = v93;
          a1[17] = v92;
          a1[18] = v91;
          a1[19] = v86;
          a1[20] = v85;
          a1[21] = v88;
          a1[22] = v90;
          a1[23] = v89;
          a1[24] = v103;
          a1[25] = v84;
          a1[26] = v82;
          a1[27] = v83;
          a1[28] = v65;
          a1[29] = v67;
          a1[30] = v71;
          a1[31] = v73;
          a1[32] = v77;
          a1[33] = v79;
          a1[34] = 0;
          a1[35] = 0;
          return;
        }

        v103 = 0;
        v63 = v107;
        v84 = 0;
        if (v106)
        {
          goto LABEL_49;
        }

LABEL_55:
        v82 = v63;
        v83 = 0;
        goto LABEL_56;
      }

      v103 = 0;
    }

    else
    {
      v103 = 0;
      v53 = 0;
    }

    v55 = v106;
    v63 = v107;
    v56 = v104;
    v84 = 0;
    if (v106)
    {
      goto LABEL_49;
    }

    goto LABEL_55;
  }

  __break(1u);
}

uint64_t FMIPAddress.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FMIPAddress.country.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t FMIPAddress.countryCode.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t FMIPAddress.streetName.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t FMIPAddress.streetAddress.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t FMIPAddress.locality.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t FMIPAddress.stateCode.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t FMIPAddress.administrativeArea.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t FMIPAddress.subAdministrativeArea.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t FMIPAddress.mapItemFormattedAddress.getter()
{
  v1 = *(v0 + 152);

  return v1;
}

uint64_t FMIPAddress.fullThoroughfare.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t FMIPAddress.coarseAddressModern.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

uint64_t FMIPAddress.streetAddressModern.getter()
{
  v1 = *(v0 + 208);

  return v1;
}

uint64_t FMIPAddress.smallAddressModern.getter()
{
  v1 = *(v0 + 224);

  return v1;
}

uint64_t FMIPAddress.mediumAddressModern.getter()
{
  v1 = *(v0 + 240);

  return v1;
}

uint64_t FMIPAddress.largeAddressModern.getter()
{
  v1 = *(v0 + 256);

  return v1;
}

uint64_t FMIPAddress.poiAddressModern.getter()
{
  v1 = *(v0 + 272);

  return v1;
}

uint64_t FMIPAddress.displayAddress.getter()
{
  v2 = v0[3];
  v1 = v0[4];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[16];
  if (v5 && (v8 = v0[13], sub_24A82D0A4() >= 1))
  {

    if (!v3)
    {
      goto LABEL_4;
    }
  }

  else
  {

    v8 = v6;
    v5 = v7;
    if (!v3)
    {
LABEL_4:
      if (!v5)
      {
        if (!v1)
        {
          goto LABEL_6;
        }

LABEL_14:

        v8 = v2;
        v5 = v1;
        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  if (!v5)
  {
    goto LABEL_21;
  }

  if (v4 == v8 && v3 == v5 || (sub_24A82DC04() & 1) != 0)
  {

    if (!v1)
    {
LABEL_6:
      if (!v3)
      {
        return v3;
      }

      goto LABEL_21;
    }

    goto LABEL_14;
  }

LABEL_15:
  v9 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    type metadata accessor for FMLocalize();
    if (v3)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v11 = objc_opt_self();

      v12 = [v11 bundleForClass_];
      sub_24A82C6F4();

      sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_24A8356C0;
      v14 = MEMORY[0x277D837D0];
      *(v13 + 56) = MEMORY[0x277D837D0];
      v15 = sub_24A6B243C();
      *(v13 + 32) = v4;
      *(v13 + 40) = v3;
      *(v13 + 96) = v14;
      *(v13 + 104) = v15;
      *(v13 + 64) = v15;
      *(v13 + 72) = v8;
      *(v13 + 80) = v5;
    }

    else
    {
      v21 = swift_getObjCClassFromMetadata();
      v22 = [objc_opt_self() bundleForClass_];
      sub_24A82C6F4();

      sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_24A8327A0;
      *(v23 + 56) = MEMORY[0x277D837D0];
      *(v23 + 64) = sub_24A6B243C();
      *(v23 + 32) = v8;
      *(v23 + 40) = v5;
    }

    goto LABEL_22;
  }

  if (!v3)
  {
    return v3;
  }

LABEL_21:
  type metadata accessor for FMLocalize();
  v16 = swift_getObjCClassFromMetadata();
  v17 = objc_opt_self();

  v18 = [v17 bundleForClass_];
  sub_24A82C6F4();

  sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24A8327A0;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = sub_24A6B243C();
  *(v19 + 32) = v4;
  *(v19 + 40) = v3;
LABEL_22:
  v3 = sub_24A82CFF4();

  return v3;
}

unint64_t sub_24A701098(char a1)
{
  result = 0x6C6562616CLL;
  switch(a1)
  {
    case 1:
    case 9:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0x7972746E756F63;
      break;
    case 3:
      result = 0x437972746E756F63;
      break;
    case 4:
      result = 0x614E746565727473;
      break;
    case 5:
      result = 0x6441746565727473;
      break;
    case 6:
      result = 0x7974696C61636F6CLL;
      break;
    case 7:
      result = 0x646F436574617473;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x6E49664F61657261;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
    case 14:
    case 16:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0xD000000000000012;
      break;
    case 18:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24A70129C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24A701098(*a1);
  v5 = v4;
  if (v3 == sub_24A701098(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

uint64_t sub_24A701324()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A701098(v1);
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A701388(uint64_t a1)
{
  sub_24A701098(*v1);
  sub_24A82D094();
}

uint64_t sub_24A7013DC(uint64_t a1)
{
  v2 = *v1;
  sub_24A82DCC4();
  sub_24A701098(v2);
  sub_24A82D094();

  return sub_24A82DD24();
}

unint64_t sub_24A70143C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A70377C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_24A70146C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A701098(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_24A7014B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A70377C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A7014E8(uint64_t a1)
{
  v2 = sub_24A685408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A701524(uint64_t a1)
{
  v2 = sub_24A685408();

  return MEMORY[0x2821FE720](a1, v2);
}

void FMIPAddress.init(mapItem:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v120 = 0;
  v121 = 0;
  v118 = 0;
  v119 = 0;
  v4 = [a1 name];
  if (v4)
  {
    v5 = v4;
    sub_24A82CFC4();

    v6 = sub_24A82D194();
    v113 = v7;
    v114 = v6;
  }

  else
  {
    v113 = 0;
    v114 = 0;
  }

  v8 = [a1 geoAddress];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 formattedAddressLines];
    if (v10)
    {
      v11 = v10;
      sub_24A82D234();
    }

    v12 = [v9 structuredAddress];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 country];
      if (v14)
      {
        v15 = v14;
        sub_24A82CFC4();

        v16 = sub_24A82D194();
        v111 = v17;
        v112 = v16;
      }

      else
      {
        v111 = 0;
        v112 = 0;
      }

      v21 = [v13 countryCode];
      if (v21)
      {
        v22 = v21;
        sub_24A82CFC4();

        v23 = sub_24A82D194();
        v109 = v24;
        v110 = v23;
      }

      else
      {
        v109 = 0;
        v110 = 0;
      }

      v25 = [v13 thoroughfare];
      if (v25)
      {
        v26 = v25;
        sub_24A82CFC4();

        v25 = sub_24A82D194();
        v120 = v25;
        v121 = v27;
      }

      else
      {
        v27 = 0;
      }

      v116 = v27;
      v28 = v25;
      v29 = [v13 subThoroughfare];
      if (v29)
      {
        v30 = v29;
        sub_24A82CFC4();

        v31 = sub_24A82D194();
        v106 = v32;
        v107 = v31;
      }

      else
      {
        v106 = 0;
        v107 = 0;
      }

      v33 = [v13 locality];
      if (v33)
      {
        v34 = v33;
        sub_24A82CFC4();

        v105 = sub_24A82D194();
        v118 = v105;
        v119 = v35;
        v18 = v35;
      }

      else
      {
        v105 = 0;
        v18 = 0;
      }

      v36 = [v13 administrativeAreaCode];
      if (v36)
      {
        v37 = v36;
        sub_24A82CFC4();

        v38 = sub_24A82D194();
        v102 = v39;
        v103 = v38;
      }

      else
      {
        v102 = 0;
        v103 = 0;
      }

      v40 = [v13 administrativeArea];
      if (v40)
      {
        v41 = v40;
        sub_24A82CFC4();

        v42 = sub_24A82D194();
        v100 = v43;
        v101 = v42;
      }

      else
      {
        v100 = 0;
        v101 = 0;
      }

      v44 = [v13 subAdministrativeArea];
      if (v44)
      {
        v45 = v44;
        sub_24A82CFC4();

        v46 = sub_24A82D194();
        v98 = v47;
        v99 = v46;
      }

      else
      {

        v98 = 0;
        v99 = 0;
      }

      v19 = v28;
      v20 = v116;
      goto LABEL_36;
    }

    v98 = 0;
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v103 = 0;
    v106 = 0;
    v107 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v112 = 0;
  }

  else
  {
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v103 = 0;
    v106 = 0;
    v107 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v112 = 0;
  }

  v105 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
LABEL_36:

  v48 = [a1 geoAddress];
  if (v48 && (v49 = v48, v50 = [v48 structuredAddress], v49, v50) && (v51 = objc_msgSend(v50, sel_fullThoroughfare), v50, v51))
  {
    v52 = sub_24A82CFC4();
    v96 = v53;
    v97 = v52;
  }

  else
  {
    v96 = 0;
    v97 = 0;
  }

  v54 = [a1 geoAddress];
  if (v54 && (v55 = v54, v56 = [v54 structuredAddress], v55, v56))
  {
    v57 = [v56 areaOfInterests];

    v58 = MEMORY[0x277D84F90];
    if (v57)
    {
      sub_24A82D234();
    }
  }

  else
  {
    v58 = MEMORY[0x277D84F90];
  }

  v95 = v58;
  v59 = [a1 addressObject];
  if (v59 && (v60 = v59, v61 = [v59 fullAddressNoCurrentCountryWithMultiline_], v60, v61))
  {
    v62 = sub_24A82CFC4();
    v93 = v63;
    v94 = v62;
  }

  else
  {
    v93 = 0;
    v94 = 0;
  }

  v64 = [a1 addressObject];
  v65 = v64;
  if (!v64 || (v66 = [v64 cityAndAboveNoCurrentCountryWithFallback_]) == 0)
  {
LABEL_58:
    v115 = 0;
    v70 = 0;
    v117 = v20;
    if (!v20)
    {
      goto LABEL_63;
    }

    goto LABEL_59;
  }

  v67 = v66;
  v68 = sub_24A82CFC4();
  v70 = v69;

  v71 = HIBYTE(v70) & 0xF;
  v115 = v68;
  if ((v70 & 0x2000000000000000) == 0)
  {
    v71 = v68 & 0xFFFFFFFFFFFFLL;
  }

  if (!v71)
  {

    goto LABEL_58;
  }

  v117 = v20;
  if (!v20)
  {
    goto LABEL_63;
  }

LABEL_59:
  v72 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v72 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v72)
  {

    v90 = v20;
    v91 = v19;
    goto LABEL_64;
  }

LABEL_63:
  v90 = 0;
  v91 = 0;
LABEL_64:
  v73 = sub_24A701E30(&v120, &v118);
  v75 = v74;

  if (v75)
  {
    v76 = HIBYTE(v75) & 0xF;
    if ((v75 & 0x2000000000000000) == 0)
    {
      v76 = v73 & 0xFFFFFFFFFFFFLL;
    }

    if (!v76)
    {

      v73 = 0;
      v75 = 0;
    }
  }

  else
  {
    v73 = 0;
  }

  v108 = v19;
  v104 = v18;
  v92 = v70;
  if (!v65)
  {
    v89 = v117;

    swift_unknownObjectRelease();
    v79 = 0;
    v81 = 0;
LABEL_86:
    v85 = 0;
    v87 = 0;
    goto LABEL_87;
  }

  v77 = [v65 shortAddress];
  if (!v77)
  {
    goto LABEL_76;
  }

  v78 = v77;
  v79 = sub_24A82CFC4();
  v81 = v80;

  v82 = HIBYTE(v81) & 0xF;
  if ((v81 & 0x2000000000000000) == 0)
  {
    v82 = v79 & 0xFFFFFFFFFFFFLL;
  }

  if (!v82)
  {

LABEL_76:
    v79 = 0;
    v81 = 0;
  }

  v83 = [v65 fullAddressNoCurrentCountryWithMultiline_];
  if (!v83)
  {
    v89 = v117;

    swift_unknownObjectRelease();

    goto LABEL_86;
  }

  v84 = v83;
  v85 = sub_24A82CFC4();
  v87 = v86;

  swift_unknownObjectRelease();
  if ((v87 & 0x2000000000000000) != 0)
  {
    v88 = HIBYTE(v87) & 0xF;
  }

  else
  {
    v88 = v85 & 0xFFFFFFFFFFFFLL;
  }

  if (!v88)
  {

    v85 = 0;
    v87 = 0;
  }

  v89 = v117;
LABEL_87:
  *a2 = v114;
  a2[1] = v113;
  a2[2] = 0;
  a2[3] = v112;
  a2[4] = v111;
  a2[5] = v110;
  a2[6] = v109;
  a2[7] = v108;
  a2[8] = v89;
  a2[9] = v107;
  a2[10] = v106;
  a2[11] = v105;
  a2[12] = v104;
  a2[13] = v103;
  a2[14] = v102;
  a2[15] = v101;
  a2[16] = v100;
  a2[17] = v99;
  a2[18] = v98;
  a2[19] = v94;
  a2[20] = v93;
  a2[21] = v95;
  a2[22] = v97;
  a2[23] = v96;
  a2[24] = v115;
  a2[25] = v92;
  a2[26] = v91;
  a2[27] = v90;
  a2[28] = v73;
  a2[29] = v75;
  a2[30] = v79;
  a2[31] = v81;
  a2[32] = v85;
  a2[33] = v87;
  a2[34] = 0;
  a2[35] = 0;
}

uint64_t sub_24A701E30(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = a1[1];
  if (!v4)
  {
    return 0;
  }

  v5 = *a1;
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return 0;
  }

  swift_beginAccess();
  v7 = a2[1];
  if (!v7)
  {
    return 0;
  }

  v8 = *a2;
  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = *a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    return 0;
  }

  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();

  v12 = [v11 bundleForClass_];
  sub_24A82C6F4();

  sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24A8356C0;
  v14 = MEMORY[0x277D837D0];
  *(v13 + 56) = MEMORY[0x277D837D0];
  v15 = sub_24A6B243C();
  *(v13 + 32) = v5;
  *(v13 + 40) = v4;
  *(v13 + 96) = v14;
  *(v13 + 104) = v15;
  *(v13 + 64) = v15;
  *(v13 + 72) = v8;
  *(v13 + 80) = v7;
  v16 = sub_24A82CFE4();

  return v16;
}

uint64_t sub_24A701FFC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  result = 0;
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 && a4)
  {
    v7 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v7 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v8 = a1;
      type metadata accessor for FMLocalize();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = objc_opt_self();

      v14 = [v13 bundleForClass_];
      sub_24A82C6F4();

      sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_24A8356C0;
      v16 = MEMORY[0x277D837D0];
      *(v15 + 56) = MEMORY[0x277D837D0];
      v17 = sub_24A6B243C();
      *(v15 + 32) = v8;
      *(v15 + 40) = a2;
      *(v15 + 96) = v16;
      *(v15 + 104) = v17;
      *(v15 + 64) = v17;
      *(v15 + 72) = a3;
      *(v15 + 80) = a4;
      v18 = sub_24A82CFE4();

      return v18;
    }

    return 0;
  }

  return result;
}

uint64_t FMIPAddress.encode(to:)(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5DB38, &qword_24A8356D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v70 = v1[3];
  v71 = v9;
  v10 = v1[4];
  v11 = v1[5];
  v12 = v1[7];
  v68 = v1[6];
  v69 = v10;
  v65 = v12;
  v13 = v1[9];
  v66 = v1[8];
  v67 = v11;
  v14 = v1[10];
  v15 = v1[11];
  v63 = v13;
  v64 = v14;
  v16 = v1[12];
  v17 = v1[13];
  v61 = v15;
  v62 = v16;
  v18 = v1[14];
  v19 = v1[15];
  v59 = v17;
  v60 = v18;
  v20 = v1[16];
  v21 = v1[17];
  v57 = v19;
  v58 = v20;
  v23 = v1[18];
  v22 = v1[19];
  v55 = v21;
  v56 = v23;
  v54 = v22;
  v24 = v1[21];
  v53 = v1[20];
  v52 = v24;
  v25 = v1[23];
  v51 = v1[22];
  v50 = v25;
  v26 = v1[25];
  v49 = v1[24];
  v48 = v26;
  v27 = v1[27];
  v47 = v1[26];
  v46 = v27;
  v28 = v1[29];
  v45 = v1[28];
  v44 = v28;
  v29 = v1[31];
  v43 = v1[30];
  v42 = v29;
  v30 = v1[33];
  v39 = v1[32];
  v38 = v30;
  v31 = v1[35];
  v41 = v1[34];
  v40 = v31;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A685408();

  sub_24A82DD84();
  v73 = v7;
  v74 = v8;
  v75 = 0;
  v32 = sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
  sub_24A6CCEB0();
  v33 = v72;
  sub_24A82DB44();
  if (v33)
  {

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v36 = v69;
    v35 = v70;
    v72 = v32;

    v73 = v71;
    v75 = 1;
    sub_24A6BBA94(&qword_27EF5DB40, &qword_24A8356E0);
    sub_24A702900();
    sub_24A82DB44();
    v73 = v35;
    v74 = v36;
    v75 = 2;
    v71 = 0;
    sub_24A82DB44();
    v73 = v67;
    v74 = v68;
    v75 = 3;
    sub_24A82DB44();
    v73 = v65;
    v74 = v66;
    v75 = 4;
    sub_24A82DB44();
    v73 = v63;
    v74 = v64;
    v75 = 5;
    sub_24A82DB44();
    v73 = v61;
    v74 = v62;
    v75 = 6;
    sub_24A82DB44();
    v73 = v59;
    v74 = v60;
    v75 = 7;
    sub_24A82DB44();
    v73 = v57;
    v74 = v58;
    v75 = 8;
    sub_24A82DB44();
    v73 = v55;
    v74 = v56;
    v75 = 9;
    sub_24A82DB44();
    v73 = v54;
    v74 = v53;
    v75 = 10;
    sub_24A82DB44();
    v73 = v52;
    v75 = 11;
    sub_24A6BBA94(&qword_27EF5D9D0, &qword_24A835090);
    sub_24A7029A8(&qword_27EF5DB50, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_24A82DB44();
    v73 = v51;
    v74 = v50;
    v75 = 12;
    sub_24A82DB44();
    v73 = v49;
    v74 = v48;
    v75 = 13;
    sub_24A82DB44();
    v73 = v47;
    v74 = v46;
    v75 = 14;
    sub_24A82DB44();
    v73 = v45;
    v74 = v44;
    v75 = 15;
    sub_24A82DB44();
    v73 = v43;
    v74 = v42;
    v75 = 16;
    sub_24A82DB44();
    v73 = v39;
    v74 = v38;
    v75 = 17;
    sub_24A82DB44();
    v73 = v41;
    v74 = v40;
    v75 = 18;
    v37 = v71;
    sub_24A82DB44();
    return (*(v4 + 8))(v37, v3);
  }
}

unint64_t sub_24A702900()
{
  result = qword_27EF5DB48;
  if (!qword_27EF5DB48)
  {
    sub_24A6CCDC0(&qword_27EF5DB40, &qword_24A8356E0);
    sub_24A7029A8(&qword_27EF5DB50, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DB48);
  }

  return result;
}

uint64_t sub_24A7029A8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A6CCDC0(&qword_27EF5D9D0, &qword_24A835090);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t FMIPAddress.debugDescription.getter()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);

  sub_24A82D854();

  if (!v1)
  {

    sub_24A6BBA94(&qword_27EF5DB40, &qword_24A8356E0);
    v2 = sub_24A82D024();
    v1 = v3;
  }

  MEMORY[0x24C21C9E0](v2, v1);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  return 0xD000000000000017;
}

uint64_t _s8FMIPCore11FMIPAddressV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v176 = a1[4];
  v157 = a1[3];
  v165 = a1[6];
  v148 = a1[7];
  v155 = a1[8];
  v144 = a1[9];
  v151 = a1[10];
  v152 = a1[5];
  v140 = a1[11];
  v146 = a1[12];
  v136 = a1[13];
  v143 = a1[14];
  v139 = a1[16];
  v127 = a1[17];
  v135 = a1[18];
  v5 = a1[19];
  v6 = a1[20];
  v8 = a1[21];
  v7 = a1[22];
  v123 = a1[24];
  v9 = a1[25];
  v129 = a1[26];
  v130 = a1[23];
  v10 = a1[28];
  v131 = a1[27];
  v132 = a1[15];
  v11 = a1[29];
  v12 = a2[1];
  v13 = a2[2];
  v156 = a2[3];
  v167 = a2[4];
  v166 = a2[6];
  v149 = a2[7];
  v153 = a2[8];
  v154 = a2[5];
  v145 = a2[9];
  v150 = a2[10];
  v141 = a2[11];
  v147 = a2[12];
  v137 = a2[13];
  v142 = a2[14];
  v138 = a2[16];
  v126 = a2[17];
  v133 = a2[15];
  v134 = a2[18];
  v128 = a2[20];
  v14 = a2[22];
  v124 = a2[21];
  v125 = a2[19];
  v15 = a2[23];
  v16 = a2[24];
  v18 = a2[25];
  v17 = a2[26];
  v19 = a2[27];
  v121 = a2[28];
  v122 = a2[29];
  v119 = a2[30];
  v120 = a2[31];
  if (v3)
  {
    if (!v12)
    {
      return 0;
    }

    v110 = a2[32];
    v111 = a1[32];
    v113 = a1[30];
    v114 = a2[33];
    v115 = a1[33];
    v116 = a1[31];
    v112 = a2[35];
    v107 = a2[34];
    v108 = a1[34];
    v109 = a1[35];
    if (*a1 != *a2 || v3 != v12)
    {
      v104 = a2[24];
      v106 = a2[25];
      v20 = a1[29];
      v95 = a2[22];
      v21 = a1[28];
      v22 = a1[25];
      v23 = a2[27];
      v117 = a1[20];
      v24 = a1[22];
      v25 = a2[26];
      v26 = sub_24A82DC04();
      v17 = v25;
      v7 = v24;
      v6 = v117;
      v19 = v23;
      v9 = v22;
      v10 = v21;
      v14 = v95;
      v16 = v104;
      v11 = v20;
      v18 = v106;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v110 = a2[32];
    v111 = a1[32];
    v113 = a1[30];
    v114 = a2[33];
    v115 = a1[33];
    v116 = a1[31];
    v112 = a2[35];
    v107 = a2[34];
    v108 = a1[34];
    v109 = a1[35];
    if (v12)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v13)
    {
      return 0;
    }

    v27 = v4;
    v28 = v13;
    v105 = v16;
    v29 = v7;
    v30 = v10;
    v31 = v9;
    v118 = v6;
    v32 = v15;
    v33 = v5;
    v34 = v14;
    v35 = v19;
    v36 = v17;
    v37 = sub_24A7D8798(v27, v28);
    v17 = v36;
    v19 = v35;
    v14 = v34;
    v5 = v33;
    v15 = v32;
    v6 = v118;
    v9 = v31;
    v10 = v30;
    v7 = v29;
    v16 = v105;
    if ((v37 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v176)
  {
    if (!v167)
    {
      return 0;
    }

    if (v157 != v156 || v176 != v167)
    {
      v168 = v5;
      v38 = v10;
      v39 = v9;
      v158 = v11;
      v40 = v15;
      v96 = v14;
      v41 = v19;
      v42 = v17;
      v43 = sub_24A82DC04();
      v17 = v42;
      v19 = v41;
      v14 = v96;
      v15 = v40;
      v11 = v158;
      v9 = v39;
      v10 = v38;
      v5 = v168;
      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v167)
  {
    return 0;
  }

  if (v165)
  {
    if (!v166)
    {
      return 0;
    }

    if (v152 != v154 || v165 != v166)
    {
      v169 = v5;
      v44 = v10;
      v45 = v9;
      v159 = v11;
      v46 = v15;
      v97 = v14;
      v47 = v19;
      v48 = v17;
      v49 = sub_24A82DC04();
      v17 = v48;
      v19 = v47;
      v14 = v97;
      v15 = v46;
      v11 = v159;
      v9 = v45;
      v10 = v44;
      v5 = v169;
      if ((v49 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v166)
  {
    return 0;
  }

  if (v155)
  {
    if (!v153)
    {
      return 0;
    }

    if (v148 != v149 || v155 != v153)
    {
      v170 = v5;
      v50 = v10;
      v51 = v9;
      v160 = v11;
      v52 = v15;
      v98 = v14;
      v53 = v19;
      v54 = v17;
      v55 = sub_24A82DC04();
      v17 = v54;
      v19 = v53;
      v14 = v98;
      v15 = v52;
      v11 = v160;
      v9 = v51;
      v10 = v50;
      v5 = v170;
      if ((v55 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v153)
  {
    return 0;
  }

  if (v151)
  {
    if (!v150)
    {
      return 0;
    }

    if (v144 != v145 || v151 != v150)
    {
      v171 = v5;
      v56 = v10;
      v57 = v9;
      v161 = v11;
      v58 = v15;
      v99 = v14;
      v59 = v19;
      v60 = v17;
      v61 = sub_24A82DC04();
      v17 = v60;
      v19 = v59;
      v14 = v99;
      v15 = v58;
      v11 = v161;
      v9 = v57;
      v10 = v56;
      v5 = v171;
      if ((v61 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v150)
  {
    return 0;
  }

  if (v146)
  {
    if (!v147)
    {
      return 0;
    }

    if (v140 != v141 || v146 != v147)
    {
      v172 = v5;
      v62 = v10;
      v63 = v9;
      v162 = v11;
      v64 = v15;
      v100 = v14;
      v65 = v19;
      v66 = v17;
      v67 = sub_24A82DC04();
      v17 = v66;
      v19 = v65;
      v14 = v100;
      v15 = v64;
      v11 = v162;
      v9 = v63;
      v10 = v62;
      v5 = v172;
      if ((v67 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v147)
  {
    return 0;
  }

  if (v143)
  {
    if (!v142)
    {
      return 0;
    }

    if (v136 != v137 || v143 != v142)
    {
      v173 = v5;
      v68 = v10;
      v69 = v9;
      v163 = v11;
      v70 = v15;
      v101 = v14;
      v71 = v19;
      v72 = v17;
      v73 = sub_24A82DC04();
      v17 = v72;
      v19 = v71;
      v14 = v101;
      v15 = v70;
      v11 = v163;
      v9 = v69;
      v10 = v68;
      v5 = v173;
      if ((v73 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v142)
  {
    return 0;
  }

  if (v139)
  {
    if (!v138)
    {
      return 0;
    }

    if (v132 != v133 || v139 != v138)
    {
      v174 = v5;
      v74 = v10;
      v75 = v9;
      v164 = v11;
      v76 = v15;
      v102 = v14;
      v77 = v19;
      v78 = v17;
      v79 = sub_24A82DC04();
      v17 = v78;
      v19 = v77;
      v14 = v102;
      v15 = v76;
      v11 = v164;
      v9 = v75;
      v10 = v74;
      v5 = v174;
      if ((v79 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v138)
  {
    return 0;
  }

  if (v135)
  {
    if (!v134)
    {
      return 0;
    }

    v94 = v15;
    v103 = v14;
    v177 = v7;
    if (v127 != v126 || v135 != v134)
    {
      v175 = v5;
      v80 = v10;
      v81 = v9;
      v82 = v19;
      v83 = v17;
      v84 = sub_24A82DC04();
      v17 = v83;
      v19 = v82;
      v9 = v81;
      v10 = v80;
      v5 = v175;
      if ((v84 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v94 = v15;
    v103 = v14;
    v177 = v7;
    if (v134)
    {
      return 0;
    }
  }

  v85 = v11;
  v93 = v10;
  if (v6)
  {
    if (!v128)
    {
      return 0;
    }

    v86 = v5;
    v87 = v6;
    v88 = v17;
    v89 = v19;
    v90 = v9;
    v91 = v85;
    if ((v86 != v125 || v87 != v128) && (sub_24A82DC04() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v88 = v17;
    v89 = v19;
    v90 = v9;
    v91 = v85;
    if (v128)
    {
      return 0;
    }
  }

  if ((sub_24A7D8798(v8, v124) & 1) == 0)
  {
    return 0;
  }

  if (v130)
  {
    if (!v94 || (v177 != v103 || v130 != v94) && (sub_24A82DC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v94)
  {
    return 0;
  }

  if (v90)
  {
    if (!v18 || (v123 != v16 || v90 != v18) && (sub_24A82DC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v131)
  {
    if (!v89 || (v129 != v88 || v131 != v89) && (sub_24A82DC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v89)
  {
    return 0;
  }

  if (v91)
  {
    if (!v122 || (v93 != v121 || v91 != v122) && (sub_24A82DC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v122)
  {
    return 0;
  }

  if (v116)
  {
    if (!v120 || (v113 != v119 || v116 != v120) && (sub_24A82DC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v120)
  {
    return 0;
  }

  if (!v115)
  {
    if (!v114)
    {
      goto LABEL_117;
    }

    return 0;
  }

  if (!v114 || (v111 != v110 || v115 != v114) && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

LABEL_117:
  result = (v109 | v112) == 0;
  if (v109 && v112)
  {
    if (v108 == v107 && v109 == v112)
    {
      return 1;
    }

    else
    {

      return sub_24A82DC04();
    }
  }

  return result;
}

uint64_t sub_24A703558(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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
      *(result + 168) = (a2 - 1);
      return result;
    }

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPAddress.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMIPAddress.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A703728()
{
  result = qword_27EF5DB58;
  if (!qword_27EF5DB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DB58);
  }

  return result;
}

unint64_t sub_24A70377C(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A82DC24();

  if (v2 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v2;
  }
}

uint64_t FMIPRepairDeviceAction.__allocating_init(device:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v3 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v7 = 0;
  v7[1] = 0;
  *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A6CAF68(a1, v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  return v2;
}

uint64_t FMIPRepairDeviceAction.init(device:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v2 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A6CAF68(a1, v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  return v1;
}

uint64_t FMIPRepairDeviceAction.__deallocating_deinit()
{
  FMIPDeviceAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMIPRepairDeviceAction(uint64_t a1)
{
  result = qword_27EF5DB60;
  if (!qword_27EF5DB60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FMIPFirmwareUpdateAction.__allocating_init(item:updateInitiated:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + OBJC_IVAR____TtC8FMIPCore24FMIPFirmwareUpdateAction_updateInitiated) = a2;
  sub_24A6CB364(a1, v4 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item);
  return v4;
}

uint64_t FMIPFirmwareUpdateAction.init(item:updateInitiated:)(uint64_t a1, char a2)
{
  *(v2 + OBJC_IVAR____TtC8FMIPCore24FMIPFirmwareUpdateAction_updateInitiated) = a2;
  sub_24A6CB364(a1, v2 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item);
  return v2;
}

uint64_t FMIPFirmwareUpdateAction.__deallocating_deinit()
{
  sub_24A6CB3F0(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMIPFirmwareUpdateAction(uint64_t a1)
{
  result = qword_27EF5DB70;
  if (!qword_27EF5DB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FMIPLockMetadata.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FMIPLockMetadata(0) + 20);
  v4 = sub_24A82CA34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24A703D0C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F43737574617473;
  }

  else
  {
    v3 = 0x6954657461657263;
  }

  if (v2)
  {
    v4 = 0xEF706D617473656DLL;
  }

  else
  {
    v4 = 0xEA00000000006564;
  }

  if (*a2)
  {
    v5 = 0x6F43737574617473;
  }

  else
  {
    v5 = 0x6954657461657263;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006564;
  }

  else
  {
    v6 = 0xEF706D617473656DLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}