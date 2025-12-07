void sub_29D727F38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D72A4D4(255, a4, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], a5);
    v8 = sub_29D938838();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D727FCC(uint64_t a1)
{
  if (!qword_2A17B2FB0)
  {
    sub_29D728058(255, &qword_2A17B2FB8, &qword_2A17B2FC0, MEMORY[0x29EDBCA10], MEMORY[0x29EDBBE80]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2FB0);
    }
  }
}

void sub_29D728058(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D72A4D4(255, a3, MEMORY[0x29EDBCA18], a4, a5);
    v6 = sub_29D938838();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D7280C0(uint64_t a1)
{
  if (!qword_2A17B2FD0)
  {
    sub_29D9388D8();
    sub_29D728154(&qword_2A17B2FD8, MEMORY[0x29EDBC5C0], MEMORY[0x29EDBC5B8]);
    v1 = sub_29D938708();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2FD0);
    }
  }
}

uint64_t sub_29D728154(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D72819C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D7281EC(uint64_t a1)
{
  if (!qword_2A17B2FE8)
  {
    sub_29D728294(255);
    sub_29D72A13C(&qword_2A17B3000, sub_29D728294, sub_29D728318, MEMORY[0x29EDBCC48]);
    v1 = sub_29D9388F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2FE8);
    }
  }
}

void sub_29D728294(uint64_t a1)
{
  if (!qword_2A17B2FF0)
  {
    sub_29D72A4D4(255, &qword_2A17B2FF8, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA90], MEMORY[0x29EDBC270]);
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2FF0);
    }
  }
}

unint64_t sub_29D728318()
{
  result = qword_2A17B3008;
  if (!qword_2A17B3008)
  {
    sub_29D72A4D4(255, &qword_2A17B2FF8, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA90], MEMORY[0x29EDBC270]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3008);
  }

  return result;
}

unint64_t sub_29D72839C()
{
  result = qword_2A17B3010;
  if (!qword_2A17B3010)
  {
    sub_29D727DE4(255);
    sub_29D7285C8(&qword_2A17B3018, sub_29D727E2C, sub_29D728490, sub_29D72883C);
    sub_29D728154(&qword_2A17B3058, sub_29D7281EC, MEMORY[0x29EDBC608]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3010);
  }

  return result;
}

unint64_t sub_29D728490()
{
  result = qword_2A17B3020;
  if (!qword_2A17B3020)
  {
    sub_29D727814(255, &qword_2A17B2FA0, sub_29D727EFC, sub_29D7280C0, MEMORY[0x29EDBC558]);
    sub_29D7285C8(&qword_2A17B3028, sub_29D727EFC, sub_29D728654, sub_29D7287B8);
    sub_29D728154(&qword_2A17B3048, sub_29D7280C0, MEMORY[0x29EDBC3B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3020);
  }

  return result;
}

uint64_t sub_29D7285C8(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D728688()
{
  result = qword_2A17B3038;
  if (!qword_2A17B3038)
  {
    sub_29D728058(255, &qword_2A17B2FB8, &qword_2A17B2FC0, MEMORY[0x29EDBCA10], MEMORY[0x29EDBBE80]);
    sub_29D728734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3038);
  }

  return result;
}

unint64_t sub_29D728734()
{
  result = qword_2A17B4550;
  if (!qword_2A17B4550)
  {
    sub_29D72A4D4(255, &qword_2A17B2FC0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBBE80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4550);
  }

  return result;
}

unint64_t sub_29D7287B8()
{
  result = qword_2A17B3040;
  if (!qword_2A17B3040)
  {
    sub_29D72A4D4(255, &qword_2A17B2FC8, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3040);
  }

  return result;
}

unint64_t sub_29D72883C()
{
  result = qword_2A17B3050;
  if (!qword_2A17B3050)
  {
    sub_29D72819C(255, &qword_2A17B2FE0, MEMORY[0x29EDC9A98], MEMORY[0x29EDBC958]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3050);
  }

  return result;
}

void sub_29D72898C(uint64_t a1)
{
  if (!qword_2A17B3090)
  {
    sub_29D728A20(255);
    sub_29D728154(&qword_2A17B3168, sub_29D728A20, MEMORY[0x29EDBCB30]);
    v1 = sub_29D939758();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3090);
    }
  }
}

void sub_29D728A20(uint64_t a1)
{
  if (!qword_2A17B3098)
  {
    sub_29D728AB4(255);
    sub_29D728154(&qword_2A17B3160, sub_29D728AB4, MEMORY[0x29EDBCC30]);
    v1 = sub_29D939728();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3098);
    }
  }
}

void sub_29D728AB4(uint64_t a1)
{
  if (!qword_2A17B30A0)
  {
    sub_29D72750C(255, &qword_2A17B30A8, sub_29D728B3C, sub_29D728CBC);
    v1 = sub_29D9398E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B30A0);
    }
  }
}

void sub_29D728B64(uint64_t a1)
{
  if (!qword_2A17B30B8)
  {
    sub_29D727F38(255, &qword_2A17B30C0, sub_29D728BFC, &qword_2A17B2468, MEMORY[0x29EDBC8E8]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B30B8);
    }
  }
}

void sub_29D728C24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_29D938838();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D728CE4(uint64_t a1)
{
  if (!qword_2A17B30E0)
  {
    sub_29D728D70(255);
    sub_29D72819C(255, &qword_2A17B45A0, MEMORY[0x29EDBC400], MEMORY[0x29EDBC938]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B30E0);
    }
  }
}

void sub_29D728D70(uint64_t a1)
{
  if (!qword_2A17B30E8)
  {
    sub_29D728E04(255);
    sub_29D728154(&qword_2A17B3158, sub_29D728E04, MEMORY[0x29EDBCC30]);
    v1 = sub_29D939758();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B30E8);
    }
  }
}

void sub_29D728E38(uint64_t a1)
{
  if (!qword_2A17B30F8)
  {
    sub_29D6F90C0(255);
    sub_29D728EAC(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A17B30F8);
    }
  }
}

void sub_29D728EF4(uint64_t a1)
{
  if (!qword_2A17B3108)
  {
    sub_29D727814(255, &qword_2A17B3110, sub_29D728F98, sub_29D7280C0, MEMORY[0x29EDBC558]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3108);
    }
  }
}

void sub_29D728F98(uint64_t a1)
{
  if (!qword_2A17B3118)
  {
    sub_29D727814(255, &qword_2A17B3120, sub_29D729040, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    sub_29D729100();
    v1 = sub_29D939718();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3118);
    }
  }
}

void sub_29D729040(uint64_t a1)
{
  if (!qword_2A17B3128)
  {
    sub_29D728058(255, &qword_2A17B3130, &qword_2A17B1688, MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
    sub_29D72A4D4(255, &qword_2A17B2FC8, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8D8]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3128);
    }
  }
}

unint64_t sub_29D729100()
{
  result = qword_2A17B3138;
  if (!qword_2A17B3138)
  {
    sub_29D727814(255, &qword_2A17B3120, sub_29D729040, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    sub_29D7285C8(&qword_2A17B3140, sub_29D729040, sub_29D729238, sub_29D7287B8);
    sub_29D728154(&qword_2A17B46A0, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3138);
  }

  return result;
}

unint64_t sub_29D729238()
{
  result = qword_2A17B3148;
  if (!qword_2A17B3148)
  {
    v1 = MEMORY[0x29EDBC498];
    sub_29D728058(255, &qword_2A17B3130, &qword_2A17B1688, MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
    sub_29D72975C(&qword_2A17B3150, &qword_2A17B1688, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3148);
  }

  return result;
}

void sub_29D729308(uint64_t a1)
{
  if (!qword_2A17B3170)
  {
    sub_29D72939C(255);
    sub_29D728154(&qword_2A17B3210, sub_29D72939C, MEMORY[0x29EDBCC30]);
    v1 = sub_29D939758();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3170);
    }
  }
}

void sub_29D72939C(uint64_t a1)
{
  if (!qword_2A17B3178)
  {
    sub_29D72750C(255, &qword_2A17B3180, sub_29D729424, sub_29D7297E8);
    v1 = sub_29D9398E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3178);
    }
  }
}

void sub_29D729424(uint64_t a1)
{
  if (!qword_2A17B3188)
  {
    sub_29D7275B0(255, &qword_2A17B3190, sub_29D7294A0, MEMORY[0x29EDBC498]);
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3188);
    }
  }
}

void sub_29D729594(uint64_t a1)
{
  if (!qword_2A17B31B8)
  {
    sub_29D7295F8(255);
    sub_29D72968C();
    v1 = sub_29D939718();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B31B8);
    }
  }
}

void sub_29D7295F8(uint64_t a1)
{
  if (!qword_2A17B31C0)
  {
    sub_29D72A4D4(255, &qword_2A17B24E0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
    sub_29D939098();
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B31C0);
    }
  }
}

unint64_t sub_29D72968C()
{
  result = qword_2A17B31C8;
  if (!qword_2A17B31C8)
  {
    sub_29D7295F8(255);
    sub_29D72975C(&qword_2A17B24E8, &qword_2A17B24E0, MEMORY[0x29EDBC5F8]);
    sub_29D728154(&qword_2A17B46A0, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B31C8);
  }

  return result;
}

uint64_t sub_29D72975C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_29D72A4D4(255, a2, MEMORY[0x29EDBCA18], a3, MEMORY[0x29EDBC558]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D7297E8(uint64_t a1)
{
  if (!qword_2A17B31D0)
  {
    sub_29D727814(255, &qword_2A17B31D8, sub_29D729884, sub_29D7299D4, MEMORY[0x29EDBC7F0]);
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B31D0);
    }
  }
}

void sub_29D7298B8(uint64_t a1)
{
  if (!qword_2A17B31E8)
  {
    sub_29D7294A0(255);
    sub_29D729930(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A17B31E8);
    }
  }
}

void sub_29D729930(uint64_t a1)
{
  if (!qword_2A17B31F0)
  {
    sub_29D727814(255, &qword_2A17B31F8, sub_29D69A8C4, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B31F0);
    }
  }
}

void sub_29D7299D4(uint64_t a1)
{
  if (!qword_2A17B3200)
  {
    sub_29D727814(255, &qword_2A17B3208, sub_29D6F8CCC, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3200);
    }
  }
}

void sub_29D729A78(uint64_t a1)
{
  if (!qword_2A17B3220)
  {
    sub_29D729B40(255);
    sub_29D72A13C(&qword_2A17B32A8, sub_29D729B40, sub_29D72A1AC, MEMORY[0x29EDBC2E0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B3220);
    }
  }
}

void sub_29D729BA8(uint64_t a1)
{
  if (!qword_2A17B3238)
  {
    sub_29D729F98(255, &qword_2A17B3240, sub_29D729C48, sub_29D729D1C);
    sub_29D729E7C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B3238);
    }
  }
}

void sub_29D729C90(uint64_t a1)
{
  if (!qword_2A17B3250)
  {
    sub_29D9399D8();
    sub_29D72819C(255, &qword_2A17B2FE0, MEMORY[0x29EDC9A98], MEMORY[0x29EDBC958]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3250);
    }
  }
}

unint64_t sub_29D729D1C()
{
  result = qword_2A17B3258;
  if (!qword_2A17B3258)
  {
    sub_29D729C48(255);
    sub_29D729DCC();
    sub_29D728154(&qword_2A17B46A0, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3258);
  }

  return result;
}

unint64_t sub_29D729DCC()
{
  result = qword_2A17B3260;
  if (!qword_2A17B3260)
  {
    sub_29D729C90(255);
    sub_29D728154(&qword_2A17B3268, MEMORY[0x29EDC42F8], MEMORY[0x29EDC42F0]);
    sub_29D72883C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3260);
  }

  return result;
}

void sub_29D729EB0(uint64_t a1)
{
  if (!qword_2A17B3278)
  {
    sub_29D729F64(255);
    sub_29D728154(&qword_2A17B32A0, sub_29D729F64, MEMORY[0x29EDBBEC0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B3278);
    }
  }
}

void sub_29D729F98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_29D9386F8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_29D72A05C()
{
  result = qword_2A17B3290;
  if (!qword_2A17B3290)
  {
    sub_29D72A014(255);
    sub_29D728154(&qword_2A17B3298, MEMORY[0x29EDC4308], MEMORY[0x29EDC4300]);
    sub_29D728154(&qword_2A17B46A0, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3290);
  }

  return result;
}

uint64_t sub_29D72A13C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D72A1E0()
{
  result = qword_2A17B32B8;
  if (!qword_2A17B32B8)
  {
    sub_29D7271A8(255);
    sub_29D728154(&qword_2A17B32C0, sub_29D7271D0, MEMORY[0x29EDBCB58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B32B8);
  }

  return result;
}

void sub_29D72A290(uint64_t a1)
{
  if (!qword_2A17B32D0)
  {
    sub_29D726D88(255);
    sub_29D726F24(255);
    sub_29D727088(255);
    sub_29D7271A8(255);
    sub_29D729A78(255);
    sub_29D72A1E0();
    sub_29D729B40(255);
    sub_29D72A13C(&qword_2A17B32A8, sub_29D729B40, sub_29D72A1AC, MEMORY[0x29EDBC2E0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D69AB60();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v1 = sub_29D938678();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B32D0);
    }
  }
}

void sub_29D72A444(uint64_t a1)
{
  if (!qword_2A17B32D8)
  {
    sub_29D72A4D4(255, &qword_2A17B32E0, MEMORY[0x29EDBCA98], MEMORY[0x29EDBC950], MEMORY[0x29EDBC558]);
    sub_29D72A528();
    v1 = sub_29D938DD8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B32D8);
    }
  }
}

void sub_29D72A4D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_29D72A528()
{
  result = qword_2A17B32E8;
  if (!qword_2A17B32E8)
  {
    sub_29D72A4D4(255, &qword_2A17B32E0, MEMORY[0x29EDBCA98], MEMORY[0x29EDBC950], MEMORY[0x29EDBC558]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B32E8);
  }

  return result;
}

id sub_29D72A5D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29D728154(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel, &unk_29D94AF98);
  sub_29D933E18();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_29D72A68C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_29D7F1064(v1);
}

uint64_t sub_29D72A6BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29D728154(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel, &unk_29D94AF98);
  sub_29D933E18();

  *a2 = *(v3 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__notificationsAreDisabled);
  return result;
}

uint64_t sub_29D72A794(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D72A804()
{
  v1 = type metadata accessor for BloodPressureJournalSettingsView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 48) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

uint64_t sub_29D72A878()
{
  v1 = type metadata accessor for BloodPressureJournalSettingsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_29D71DF0C(0, &qword_2A17B2E70, type metadata accessor for BloodPressureJournalSettingsViewModel, MEMORY[0x29EDBCBA8]);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  if (*(v0 + v3 + v1[5]))
  {
  }

  if (*(v5 + v1[6]))
  {
  }

  if (*(v5 + v1[7]))
  {
  }

  if (*(v5 + v1[8]))
  {
  }

  if (*(v5 + v1[9]))
  {
  }

  if (*(v5 + v1[10]))
  {
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D72AA28()
{
  v1 = type metadata accessor for BloodPressureJournalSettingsView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 40) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

uint64_t sub_29D72AA9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29D938A88();
  *a1 = result;
  return result;
}

uint64_t sub_29D72AAF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29D938AA8();
  *a1 = result;
  return result;
}

uint64_t sub_29D72AB48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29D938AF8();
  *a1 = result & 1;
  return result;
}

void sub_29D72ABCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_29D938788();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_29D72AC38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_29D72ACA0()
{
  result = qword_2A17B3320;
  if (!qword_2A17B3320)
  {
    sub_29D7288B8(255);
    sub_29D7285C8(&qword_2A17B3328, sub_29D728900, sub_29D72AD94, sub_29D7287B8);
    sub_29D728154(&qword_2A17B3048, sub_29D7280C0, MEMORY[0x29EDBC3B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3320);
  }

  return result;
}

uint64_t sub_29D72ADC8(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D72AE4C()
{
  result = qword_2A17B3338;
  if (!qword_2A17B3338)
  {
    sub_29D728964(255);
    sub_29D728154(&qword_2A17B3340, sub_29D72898C, MEMORY[0x29EDBCB58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3338);
  }

  return result;
}

uint64_t sub_29D72AEFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D72AF5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_29D72AFC4()
{
  result = qword_2A17B3350;
  if (!qword_2A17B3350)
  {
    sub_29D727898(255);
    sub_29D7285C8(&qword_2A17B3358, sub_29D7278E0, sub_29D72B0B8, sub_29D72B138);
    sub_29D728154(&qword_2A17B2448, sub_29D727974, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3350);
  }

  return result;
}

unint64_t sub_29D72B0B8()
{
  result = qword_2A17B2438;
  if (!qword_2A17B2438)
  {
    sub_29D69A8C4(255);
    sub_29D6F8E90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2438);
  }

  return result;
}

unint64_t sub_29D72B138()
{
  result = qword_2A17B3360;
  if (!qword_2A17B3360)
  {
    sub_29D72A4D4(255, &qword_2A17B2F40, MEMORY[0x29EDBC870], MEMORY[0x29EDBC868], MEMORY[0x29EDBC8E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3360);
  }

  return result;
}

unint64_t sub_29D72B208()
{
  result = qword_2A17B3388;
  if (!qword_2A17B3388)
  {
    sub_29D727CC8(255);
    sub_29D727DE4(255);
    sub_29D9339F8();
    sub_29D72839C();
    sub_29D728154(&qword_2A17B4C90, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]);
    swift_getOpaqueTypeConformance2();
    sub_29D728154(&qword_2A17B46A0, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3388);
  }

  return result;
}

uint64_t sub_29D72B338(uint64_t a1, uint64_t a2)
{
  sub_29D72A4D4(0, &qword_2A17B1688, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D72B3C8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_29D72A4D4(0, a2, MEMORY[0x29EDBCA18], a3, MEMORY[0x29EDBC558]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D72B444(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for BloodPressureJournalSettingsView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_29D72B4E0()
{
  v1 = type metadata accessor for BloodPressureJournalSettingsView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 44) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

unint64_t sub_29D72B588()
{
  result = qword_2A17B33B8;
  if (!qword_2A17B33B8)
  {
    sub_29D727814(255, &qword_2A17B3208, sub_29D6F8CCC, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    sub_29D6F8DB8();
    sub_29D728154(&qword_2A17B46A0, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B33B8);
  }

  return result;
}

uint64_t sub_29D72B67C()
{
  v1 = type metadata accessor for BloodPressureJournalSettingsView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 32) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

unint64_t sub_29D72B6F0()
{
  result = qword_2A17B33C0;
  if (!qword_2A17B33C0)
  {
    sub_29D7294E8(255);
    sub_29D7285C8(&qword_2A17B33C8, sub_29D729530, sub_29D72B7E4, sub_29D7287B8);
    sub_29D728154(&qword_2A17B3048, sub_29D7280C0, MEMORY[0x29EDBC3B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B33C0);
  }

  return result;
}

unint64_t sub_29D72B7E4()
{
  result = qword_2A17B33D0;
  if (!qword_2A17B33D0)
  {
    sub_29D72956C(255);
    sub_29D728154(&qword_2A17B33D8, sub_29D729594, MEMORY[0x29EDBC278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B33D0);
  }

  return result;
}

uint64_t sub_29D72B894()
{
  v1 = type metadata accessor for BloodPressureJournalSettingsView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 36) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

uint64_t sub_29D72B908(uint64_t a1, uint64_t a2)
{
  sub_29D7275B0(0, &qword_2A17B3190, sub_29D7294A0, MEMORY[0x29EDBC498]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D72B990(uint64_t a1)
{
  v2 = sub_29D939658();
  MEMORY[0x2A1C7C4A8](v2, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_29D938968();
}

uint64_t sub_29D72BA58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D72BAC0()
{
  v1 = type metadata accessor for BloodPressureJournalSettingsView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 28) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

unint64_t sub_29D72BB34()
{
  result = qword_2A17B33F0;
  if (!qword_2A17B33F0)
  {
    sub_29D727814(255, &qword_2A17B3110, sub_29D728F98, sub_29D7280C0, MEMORY[0x29EDBC558]);
    sub_29D728154(&qword_2A17B33F8, sub_29D728F98, MEMORY[0x29EDBC278]);
    sub_29D728154(&qword_2A17B3048, sub_29D7280C0, MEMORY[0x29EDBC3B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B33F0);
  }

  return result;
}

unint64_t sub_29D72BC58()
{
  result = qword_2A17B3400;
  if (!qword_2A17B3400)
  {
    sub_29D727814(255, &qword_2A17B32C8, sub_29D72A290, sub_29D72A444, MEMORY[0x29EDBC558]);
    sub_29D728154(&qword_2A17B3408, sub_29D72A290, MEMORY[0x29EDBBEA8]);
    sub_29D728154(&qword_2A17B3410, sub_29D72A444, MEMORY[0x29EDBC7E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3400);
  }

  return result;
}

uint64_t type metadata accessor for AFibBurdenPDFChartAverageQuery(uint64_t a1)
{
  result = qword_2A17B3418;
  if (!qword_2A17B3418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D72BDF8(uint64_t a1)
{
  result = sub_29D933CE8();
  if (v2 <= 0x3F)
  {
    result = sub_29D69567C(319, &qword_2A1A22230, 0x29EDBABE8);
    if (v3 <= 0x3F)
    {
      result = sub_29D69567C(319, &qword_2A1A24910, 0x29EDBAD20);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29D72BEB4(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  sub_29D72CCA4(0, &qword_2A17B3428, MEMORY[0x29EDB9D58]);
  v3[14] = swift_task_alloc();
  sub_29D72CCA4(0, &qword_2A17B1F98, MEMORY[0x29EDB9D18]);
  v3[15] = swift_task_alloc();
  sub_29D933318();
  v3[16] = swift_task_alloc();
  v4 = sub_29D9339F8();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  sub_29D72CCF8(0);
  v3[20] = swift_task_alloc();
  v5 = sub_29D939B98();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D72C0BC, 0, 0);
}

uint64_t sub_29D72C0BC()
{
  v1 = v0[19];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v17 = v0[14];
  v16 = v0[13];
  v18 = type metadata accessor for AFibBurdenPDFChartAverageQuery(0);
  v5 = objc_opt_self();
  sub_29D9331A8();
  v6 = sub_29D933958();
  v7 = *(v2 + 8);
  v0[24] = v7;
  v0[25] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  sub_29D933178();
  v8 = sub_29D933958();
  v7(v1, v3);
  v9 = [v5 predicateForSamplesWithStartDate:v6 endDate:v8 options:0];

  sub_29D69567C(0, &qword_2A17B18A8, 0x29EDBAD10);
  sub_29D939AB8();

  sub_29D933178();
  v10 = sub_29D933CE8();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v4, v16, v10);
  (*(v11 + 56))(v4, 0, 1, v10);
  v12 = sub_29D933D38();
  (*(*(v12 - 8) + 56))(v17, 1, 1, v12);
  sub_29D933308();
  sub_29D939B88();
  v13 = *(v16 + *(v18 + 20));
  v14 = swift_task_alloc();
  v0[26] = v14;
  *v14 = v0;
  v14[1] = sub_29D72C3FC;

  return MEMORY[0x2A1C5B5F8](v13);
}

uint64_t sub_29D72C3FC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = sub_29D72C784;
  }

  else
  {
    *(v4 + 224) = a1;
    v5 = sub_29D72C524;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D72C524()
{
  v1 = v0[24];
  v14 = v0[28];
  v15 = v0[22];
  v16 = v0[21];
  v17 = v0[23];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[12];
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x29EDCA190];
  sub_29D9331A8();
  v13 = sub_29D933958();
  v1(v2, v3);
  sub_29D933178();
  v6 = sub_29D933958();
  v1(v2, v3);
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  v0[6] = sub_29D72CD60;
  v0[7] = v7;
  v0[2] = MEMORY[0x29EDCA5F8];
  v0[3] = 1107296256;
  v0[4] = sub_29D72CB8C;
  v0[5] = &unk_2A2442DB8;
  v8 = _Block_copy(v0 + 2);
  v9 = v4;

  [v14 enumerateStatisticsFromDate:v13 toDate:v6 withBlock:v8];
  _Block_release(v8);

  (*(v15 + 8))(v17, v16);
  swift_beginAccess();
  v10 = *(v5 + 16);
  sub_29D935E88();

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_29D72C784()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

id sub_29D72C848(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v6 = type metadata accessor for AFibBurdenPDFChartPoint(0);
  v31 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D9339F8();
  v12 = MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v14 = sub_29D9331D8();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 averageQuantity];
  if (result)
  {
    v20 = result;
    [result doubleValueForUnit_];
    v22 = v21;

    v23 = [a1 startDate];
    sub_29D933998();

    v24 = [a1 endDate];
    sub_29D933998();

    sub_29D933188();
    (*(v15 + 16))(v9, v18, v14);
    *&v9[*(v6 + 20)] = v22;
    *&v9[*(v6 + 24)] = MEMORY[0x29EDCA1A0];
    swift_beginAccess();
    v25 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_29D68FC3C(0, v25[2] + 1, 1, v25);
      *(a4 + 16) = v25;
    }

    v28 = v25[2];
    v27 = v25[3];
    if (v28 >= v27 >> 1)
    {
      v25 = sub_29D68FC3C((v27 > 1), v28 + 1, 1, v25);
    }

    v25[2] = v28 + 1;
    sub_29D72CD80(v9, v25 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v28);
    *(a4 + 16) = v25;
    swift_endAccess();
    return (*(v15 + 8))(v18, v14);
  }

  return result;
}

void sub_29D72CB8C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_29D72CC00(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29D68E20C;

  return sub_29D72BEB4(a1, a2);
}

void sub_29D72CCA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D72CCF8(uint64_t a1)
{
  if (!qword_2A17B3430)
  {
    sub_29D69567C(255, &qword_2A17B18A8, 0x29EDBAD10);
    v1 = sub_29D939AD8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3430);
    }
  }
}

uint64_t sub_29D72CD68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D72CD80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFibBurdenPDFChartPoint(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D72CDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
  MEMORY[0x2A1C7C4A8](v14 - 8, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 16) = a1;
  sub_29D72CF44(a2, a1, v17);
  sub_29D6943BC(v17, v7 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorViewModel_state);
  *(v7 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorViewModel_healthStore) = a3;
  v18 = OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorViewModel_calendar;
  v19 = sub_29D933CE8();
  (*(*(v19 - 8) + 32))(v7 + v18, a4, v19);
  v20 = (v7 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorViewModel_dateGenerator);
  *v20 = a5;
  v20[1] = a6;

  return v7;
}

uint64_t sub_29D72CF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_29D73439C(a2);
  v6 = [v5 identifier];

  v7 = sub_29D939D68();
  v9 = v8;

  if (!*(a1 + 16))
  {

    goto LABEL_7;
  }

  v10 = sub_29D6907F0(v7, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_7:
    result = sub_29D93AB28();
    __break(1u);
    return result;
  }

  v13 = *(a1 + 56);
  v14 = v13 + *(*(type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0) - 8) + 72) * v10;

  return sub_29D694358(v14, a3);
}

void sub_29D72D070()
{
  v1 = [*(v0 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorViewModel_healthStore) displayTypeController];
  if (!v1)
  {
    __break(1u);
    goto LABEL_19;
  }

  v2 = v1;
  LODWORD(v3) = *(v0 + 16);
  v4 = sub_29D73439C(*(v0 + 16));
  v5 = [v2 displayTypeForObjectType_];

  if (!v5)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = [v5 displayCategory];
  v7 = [v6 color];

  if (!v7)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_29D6A0C58();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29D940030;
  *(v8 + 32) = v7;
  sub_29D72EFC8();
  v9 = v7;
  v10 = sub_29D939F18();

  v11 = objc_opt_self();
  v12 = [v11 configurationWithPaletteColors_];

  v13 = v12;
  v14 = [v11 configurationWithPointSize:6 weight:22.0];
  v15 = [v13 configurationByApplyingConfiguration_];

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      goto LABEL_12;
    }

    if (v3 != 3)
    {
      goto LABEL_14;
    }

    v16 = v15;
    v17 = sub_29D939D28();
    v3 = [objc_opt_self() _systemImageNamed_withConfiguration_];

    if (v3)
    {
LABEL_17:

      return;
    }

    __break(1u);
  }

  if (v3)
  {
    goto LABEL_16;
  }

  v18 = v15;
  v19 = sub_29D939D28();
  v20 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (v20)
  {
    goto LABEL_17;
  }

  __break(1u);
LABEL_12:
  v21 = v15;
  v22 = sub_29D939D28();
  v23 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (v23)
  {
    goto LABEL_17;
  }

  __break(1u);
LABEL_14:
  v24 = v15;
  v25 = sub_29D939D28();
  v26 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (v26)
  {
    goto LABEL_17;
  }

  __break(1u);
LABEL_16:
  v27 = v15;
  v28 = sub_29D939D28();
  v29 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (v29)
  {
    goto LABEL_17;
  }

LABEL_21:
  __break(1u);
}

void sub_29D72D448()
{
  v1 = [*(v0 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorViewModel_healthStore) displayTypeController];
  if (v1)
  {
    v2 = v1;
    v3 = sub_29D73439C(*(v0 + 16));
    v4 = [v2 displayTypeForObjectType_];

    if (v4)
    {
      v5 = [v4 localization];

      v6 = [v5 displayName];
      sub_29D939D68();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_29D72D530()
{
  v1 = v0;
  v194 = *v0;
  v179 = sub_29D933828();
  v178 = *(v179 - 8);
  MEMORY[0x2A1C7C4A8](v179, v2);
  v177 = &v161 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_29D9338A8();
  v175 = *(v176 - 8);
  MEMORY[0x2A1C7C4A8](v176, v4);
  v174 = &v161 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_29D933888();
  v172 = *(v173 - 8);
  MEMORY[0x2A1C7C4A8](v173, v6);
  v171 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D933CC8();
  v189 = *(v8 - 8);
  v190 = v8;
  MEMORY[0x2A1C7C4A8](v8, v9);
  v186 = &v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D933678();
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v188 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_29D933CE8();
  v187 = *(v196 - 1);
  v15 = MEMORY[0x2A1C7C4A8](v196, v14);
  v195 = &v161 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v185 = &v161 - v18;
  v19 = sub_29D933D38();
  MEMORY[0x2A1C7C4A8](v19 - 8, v20);
  v184 = &v161 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D72EEC0(0, &qword_2A17B3468, MEMORY[0x29EDB9B88]);
  MEMORY[0x2A1C7C4A8](v22 - 8, v23);
  v183 = &v161 - v24;
  sub_29D72EEC0(0, &qword_2A17B3470, MEMORY[0x29EDB9B90]);
  MEMORY[0x2A1C7C4A8](v25 - 8, v26);
  v182 = &v161 - v27;
  v28 = sub_29D9338F8();
  v192 = *(v28 - 8);
  v193 = v28;
  v30 = MEMORY[0x2A1C7C4A8](v28, v29);
  v167 = &v161 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x2A1C7C4A8](v30, v32);
  v168 = &v161 - v34;
  v36 = MEMORY[0x2A1C7C4A8](v33, v35);
  v169 = &v161 - v37;
  v39 = MEMORY[0x2A1C7C4A8](v36, v38);
  v170 = &v161 - v40;
  MEMORY[0x2A1C7C4A8](v39, v41);
  v191 = &v161 - v42;
  sub_29D72EEC0(0, &qword_2A17B1030, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v43 - 8, v44);
  v46 = &v161 - v45;
  v47 = sub_29D933AA8();
  v198 = *(v47 - 8);
  v49 = MEMORY[0x2A1C7C4A8](v47, v48);
  v181 = &v161 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v49, v51);
  v197 = &v161 - v52;
  sub_29D72EEC0(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v55 = MEMORY[0x2A1C7C4A8](v53 - 8, v54);
  v180 = &v161 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v55, v57);
  v59 = &v161 - v58;
  v60 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
  MEMORY[0x2A1C7C4A8](v60 - 8, v61);
  v63 = &v161 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_29D9339F8();
  v65 = *(v64 - 8);
  v67 = MEMORY[0x2A1C7C4A8](v64, v66);
  v69 = &v161 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v67, v70);
  v72 = &v161 - v71;
  v73 = OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorViewModel_state;
  swift_beginAccess();
  sub_29D694358(v1 + v73, v63);
  sub_29D6B1204(v63, v59);
  v74 = *(v65 + 48);
  if (v74(v59, 1, v64) == 1)
  {
    v75 = v1;
    sub_29D72EF14(v59, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v76 = sub_29D937898();
    sub_29D69C6C0(v76, qword_2A1A2BF28);

    v77 = sub_29D937878();
    v78 = sub_29D93A278();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v203 = v80;
      *v79 = 136446467;
      v205 = v194;
      swift_getMetatypeMetadata();
      v81 = sub_29D939DA8();
      v83 = sub_29D6C2364(v81, v82, &v203);

      *(v79 + 4) = v83;
      *(v79 + 12) = 2081;
      v84 = sub_29D73439C(*(v75 + 16));
      v85 = [v84 identifier];

      v86 = sub_29D939D68();
      v88 = v87;

      v89 = sub_29D6C2364(v86, v88, &v203);

      *(v79 + 14) = v89;
      _os_log_impl(&dword_29D677000, v77, v78, "[%{public}s] No last updated date for identifier %{private}s", v79, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v80, -1, -1);
      MEMORY[0x29ED6BE30](v79, -1, -1);
    }

    return 0;
  }

  v163 = v74;
  v166 = v65;
  v91 = *(v65 + 32);
  v194 = v72;
  v165 = v64;
  v92 = v91(v72, v59, v64);
  (*(v1 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorViewModel_dateGenerator))(v92);
  v93 = v198;
  v94 = OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorViewModel_calendar;
  v95 = v1;
  sub_29D933C68();
  v96 = *(v93 + 48);
  v97 = v96(v46, 1, v47);
  v98 = v69;
  v164 = v47;
  if (v97 == 1)
  {
    sub_29D933A78();
    v99 = v96(v46, 1, v47);
    v101 = v195;
    v100 = v196;
    if (v99 != 1)
    {
      sub_29D72EF14(v46, &qword_2A17B1030, MEMORY[0x29EDB9C70]);
    }
  }

  else
  {
    (*(v93 + 32))(v197, v46, v47);
    v101 = v195;
    v100 = v196;
  }

  v102 = sub_29D933C48();
  v103 = v165;
  if (v102)
  {
    v104 = v98;
    v105 = v182;
    sub_29D933768();
    v106 = sub_29D9337B8();
    (*(*(v106 - 8) + 56))(v105, 0, 1, v106);
    v107 = v183;
    sub_29D933778();
    v108 = sub_29D933788();
    (*(*(v108 - 8) + 56))(v107, 0, 1, v108);
    sub_29D933CA8();
    sub_29D933A78();
    sub_29D933BC8();
    sub_29D933668();
    v109 = v191;
    sub_29D9337D8();
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    v205 = sub_29D9334A8();
    v206 = v110;
    v203 = 0xD000000000000010;
    v204 = 0x800000029D95CF50;
    sub_29D72EF70();
    v111 = v193;
    v112 = v194;
    sub_29D9339D8();
    v199 = v201;
    v200 = v202;
    sub_29D69AB60();
    v113 = sub_29D93A828();

    (*(v192 + 8))(v109, v111);
    (*(v198 + 8))(v197, v164);
    v114 = *(v166 + 8);
    v114(v104, v103);
    v114(v112, v103);
    return v113;
  }

  v115 = v100;
  v116 = v165;
  v117 = v187;
  (*(v187 + 16))(v101, v95 + v94, v115);
  v119 = v189;
  v118 = v190;
  v120 = v186;
  (*(v189 + 104))(v186, *MEMORY[0x29EDB9CB8], v190);
  v121 = v180;
  sub_29D933C38();
  (*(v119 + 8))(v120, v118);
  result = v163(v121, 1, v116);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v122 = v195;
  v123 = sub_29D933C48();
  (*(v117 + 8))(v122, v196);
  v124 = v166 + 8;
  v196 = *(v166 + 8);
  (v196)(v121, v116);
  v162 = v98;
  if ((v123 & 1) == 0)
  {
    v146 = v116;
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    v205 = sub_29D9334A8();
    v206 = v147;
    v203 = 0xD000000000000010;
    v204 = 0x800000029D95CEA0;
    v148 = v167;
    MEMORY[0x29ED634A0]();
    v149 = v171;
    sub_29D933878();
    v150 = v168;
    sub_29D9337F8();
    (*(v172 + 8))(v149, v173);
    v151 = v193;
    v152 = *(v192 + 8);
    v152(v148, v193);
    v153 = v174;
    sub_29D933898();
    v154 = v169;
    sub_29D933808();
    (*(v175 + 8))(v153, v176);
    v152(v150, v151);
    v155 = v177;
    sub_29D933818();
    v156 = v170;
    sub_29D9337C8();
    (*(v178 + 8))(v155, v179);
    v152(v154, v151);
    v157 = v191;
    v158 = v197;
    sub_29D9338D8();
    v152(v156, v151);
    sub_29D72EF70();
    v159 = v194;
    sub_29D9339D8();
    v152(v157, v151);
    v199 = v201;
    v200 = v202;
    sub_29D69AB60();
    v113 = sub_29D93A828();

    (*(v198 + 8))(v158, v164);
    v160 = v196;
    (v196)(v162, v146);
    v160(v159, v146);
    return v113;
  }

  v166 = v124;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v205 = sub_29D9334A8();
  v206 = v125;
  v203 = 0x4452455453455940;
  v204 = 0xEB00000000405941;
  v201 = sub_29D9334A8();
  v202 = v126;
  sub_29D69AB60();
  v127 = sub_29D93A828();
  v129 = v128;

  v205 = v127;
  v206 = v129;
  v203 = 0xD000000000000010;
  v204 = 0x800000029D95CEA0;
  v131 = v167;
  MEMORY[0x29ED634A0](v130);
  v132 = v171;
  sub_29D933878();
  v133 = v168;
  sub_29D9337F8();
  (*(v172 + 8))(v132, v173);
  v134 = v193;
  v135 = *(v192 + 8);
  v135(v131, v193);
  v136 = v174;
  sub_29D933898();
  v137 = v169;
  sub_29D933808();
  (*(v175 + 8))(v136, v176);
  v135(v133, v134);
  v138 = v177;
  sub_29D933818();
  v139 = v170;
  sub_29D9337C8();
  (*(v178 + 8))(v138, v179);
  v135(v137, v134);
  v140 = v191;
  v141 = v197;
  sub_29D9338D8();
  v135(v139, v134);
  sub_29D72EF70();
  v142 = v194;
  sub_29D9339D8();
  v135(v140, v134);
  v199 = v201;
  v200 = v202;
  v143 = sub_29D93A828();

  (*(v198 + 8))(v141, v164);
  v144 = v165;
  v145 = v196;
  (v196)(v162, v165);
  v145(v142, v144);
  return v143;
}

uint64_t sub_29D72EAE8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D72CF44(a1, *(v2 + 16), v7);
  v8 = OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorViewModel_state;
  swift_beginAccess();
  sub_29D72EE5C(v7, v2 + v8);
  return swift_endAccess();
}

uint64_t sub_29D72EBCC()
{
  sub_29D72F014(v0 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorViewModel_state);

  v1 = OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorViewModel_calendar;
  v2 = sub_29D933CE8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AFibBurdenLifeFactorViewModel(uint64_t a1)
{
  result = qword_2A17B3458;
  if (!qword_2A17B3458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D72ECF0(uint64_t a1)
{
  sub_29D72EEC0(319, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  if (v1 <= 0x3F)
  {
    sub_29D933CE8();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double (*sub_29D72EE0C(uint64_t *a1))(uint64_t a1)
{
  *a1 = sub_29D6C3970(*(*v1 + 16) | 0x100u);
  a1[1] = v3;
  return sub_29D6C14A0;
}

uint64_t sub_29D72EE5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_29D72EEC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D72EF14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D72EEC0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29D72EF70()
{
  result = qword_2A17B22A8;
  if (!qword_2A17B22A8)
  {
    sub_29D9338F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B22A8);
  }

  return result;
}

unint64_t sub_29D72EFC8()
{
  result = qword_2A17B2CE8;
  if (!qword_2A17B2CE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17B2CE8);
  }

  return result;
}

uint64_t sub_29D72F014(uint64_t a1)
{
  v2 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_29D72F100(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for IRNInternalSettingsViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_29D72F168()
{
  sub_29D72FFD8(0, &qword_2A17B1100, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v0 = sub_29D934548();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D944700;
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v5 = qword_2A1A2C038;
  v6 = sub_29D939D28();
  v7 = [objc_opt_self() imageNamed:v6 inBundle:v5];

  if (v7)
  {
    v8 = v4 + v3;
    *v8 = v7;
    *(v8 + 8) = 0;
    v9 = *(v1 + 104);
    (v9)(v4 + v3, *MEMORY[0x29EDC1608], v0);
    v10 = (v4 + v3 + v2);
    *v10 = sub_29D9334A8();
    v10[1] = v11;
    (v9)(v10, *MEMORY[0x29EDC1610], v0);
    v12 = v4 + v3 + 2 * v2;
    *v12 = sub_29D9334A8();
    *(v12 + 8) = v13;
    *(v12 + 16) = 0;
    v41 = *MEMORY[0x29EDC1630];
    v9(v8 + 2 * v2);
    v14 = (v8 + 3 * v2);
    *v14 = sub_29D9334A8();
    v14[1] = v15;
    v14[2] = 0;
    v40 = *MEMORY[0x29EDC15D0];
    v9(v14);
    v16 = v8 + 4 * v2;
    *v16 = sub_29D9334A8();
    *(v16 + 8) = v17;
    *(v16 + 16) = 0;
    (v9)(v16, v41, v0);
    v18 = (v8 + 5 * v2);
    *v18 = sub_29D9334A8();
    v18[1] = v19;
    v18[2] = 0;
    (v9)(v18, v40, v0);
    v20 = v8 + 6 * v2;
    *v20 = sub_29D9334A8();
    *(v20 + 8) = v21;
    *(v20 + 16) = 0;
    (v9)(v20, v41, v0);
    v22 = v8 + 7 * v2;
    *v22 = sub_29D9334A8();
    *(v22 + 8) = v23;
    *(v22 + 16) = 0;
    (v9)(v22, v41, v0);
    v24 = (v8 + 8 * v2);
    *v24 = sub_29D9334A8();
    v24[1] = v25;
    v24[2] = 0;
    (v9)(v24, v40, v0);
    v26 = v8 + 9 * v2;
    *v26 = sub_29D9334A8();
    *(v26 + 8) = v27;
    *(v26 + 16) = 0;
    (v9)(v26, v41, v0);
    sub_29D72FA44((v8 + 10 * v2));
    v28 = (v8 + 11 * v2);
    *v28 = sub_29D9334A8();
    v28[1] = v29;
    v28[2] = 0;
    (v9)(v28, v40, v0);
    v30 = v8 + 12 * v2;
    *v30 = sub_29D9334A8();
    *(v30 + 8) = v31;
    *(v30 + 16) = 0;
    (v9)(v30, v41, v0);
    v32 = (v8 + 13 * v2);
    sub_29D7302FC(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_29D944710;
    *(v33 + 32) = sub_29D9334A8();
    *(v33 + 40) = v34;
    *(v33 + 48) = sub_29D9334A8();
    *(v33 + 56) = v35;
    *(v33 + 64) = sub_29D9334A8();
    *(v33 + 72) = v36;
    *(v33 + 80) = sub_29D9334A8();
    *(v33 + 88) = v37;
    *(v33 + 96) = sub_29D9334A8();
    *(v33 + 104) = v38;
    *(v33 + 112) = sub_29D9334A8();
    *(v33 + 120) = v39;
    *v32 = v33;
    (v9)(v32, *MEMORY[0x29EDC15D8], v0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D72FA44@<X0>(uint64_t *a1@<X8>)
{
  sub_29D72FFD8(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v25 - v4;
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v6 = sub_29D9334A8();
  v8 = v7;
  v9 = sub_29D730168(0xD00000000000001ELL, 0x800000029D95D100, 0, 0xE000000000000000);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    *a1 = v6;
    a1[1] = v8;
    a1[2] = v9;
    a1[3] = v10;
    a1[4] = 0;
    a1[5] = 0;
    sub_29D9336E8();
    v12 = sub_29D9336F8();
    v13 = *(v12 - 8);
    result = (*(v13 + 48))(v5, 1, v12);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      sub_29D6EA34C(0, v15);
      v17 = *(v16 + 80);
      (*(v13 + 32))(a1 + v17, v5, v12);
      v18 = *MEMORY[0x29EDC15C0];
      v19 = sub_29D934538();
      (*(*(v19 - 8) + 104))(a1 + v17, v18, v19);
      v20 = *MEMORY[0x29EDC15E8];
      v21 = sub_29D934548();
      return (*(*(v21 - 8) + 104))(a1, v20, v21);
    }
  }

  else
  {

    *a1 = v6;
    a1[1] = v8;
    *(a1 + 16) = 0;
    v22 = *MEMORY[0x29EDC1630];
    v23 = sub_29D934548();
    v24 = *(*(v23 - 8) + 104);

    return v24(a1, v22, v23);
  }

  return result;
}

uint64_t sub_29D72FDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D72FE70()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

void sub_29D72FF10()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A2C038;
  v1 = sub_29D939D28();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (!v2)
  {
    __break(1u);
  }
}

void sub_29D72FFD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D73003C()
{
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v0 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA908]);
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  v1 = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA498]);
  v2 = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA458]);
  sub_29D7302FC(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D9403F0;
  *(inited + 32) = v0;
  *(inited + 40) = v1;
  *(inited + 48) = v2;
  v4 = sub_29D7AF2C4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_29D730168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_opt_self();
  v5 = sub_29D939D28();
  v6 = [v4 modelSpecificLocalizedStringKeyForKey_];

  if (v6)
  {
    sub_29D939D68();

    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v7 = sub_29D9334A8();

    return v7;
  }

  else
  {
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    return sub_29D9334A8();
  }
}

void sub_29D7302FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for CardioFitnessOnboardingConfirmDetailsViewController(uint64_t a1)
{
  result = qword_2A17B3490;
  if (!qword_2A17B3490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D7303FC()
{
  v1 = v0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for CardioFitnessOnboardingConfirmDetailsViewController(0);
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v2 = [v0 hxui:0 addNextButtonWithAccessibilityIdentifier:?];
  v3 = *&v0[qword_2A17B3480];
  *&v1[qword_2A17B3480] = v2;
  v4 = v2;

  [v4 setEnabled_];
}

void sub_29D7304D0(void *a1)
{
  v1 = a1;
  sub_29D7303FC();
}

void sub_29D730518(char *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = a1;
    sub_29D888C58(v4, v3);
    sub_29D936978();
  }
}

void sub_29D730594(char *a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = a1;
    sub_29D77C72C();
    sub_29D936978();
  }
}

void sub_29D730610(void *a1)
{
  v3 = a1;
  v1 = [v3 presentedViewController];
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_29D7306B4()
{
  sub_29D68B77C(v0 + qword_2A17B3478);
}

id sub_29D730704()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardioFitnessOnboardingConfirmDetailsViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D73073C(uint64_t a1)
{
  sub_29D68B77C(a1 + qword_2A17B3478);
}

uint64_t sub_29D7307A0(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_2A17B3478 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

void sub_29D7307EC()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for CardioFitnessOnboardingAboutHealthDetailsViewController());
  v3 = sub_29D7B413C();
  v4 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  v6 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:0 target:v1 action:sel_dismissPresentedViewController];
  v5 = [v3 navigationItem];
  [v5 setRightBarButtonItem_];

  [v1 presentViewController:v4 animated:1 completion:0];
}

uint64_t type metadata accessor for HypertensionNotificationsSampleListHideableDataSource(uint64_t a1)
{
  result = qword_2A17B34B0;
  if (!qword_2A17B34B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D730990(uint64_t a1, void *a2)
{
  v5 = *v2;
  v6 = sub_29D937898();
  v75 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v7);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D733C88(0, &unk_2A1A248F0, MEMORY[0x29EDCA298]);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v74 = &v63 - v12;
  v13 = sub_29D93A248();
  v68 = *(v13 - 8);
  v69 = v13;
  MEMORY[0x2A1C7C4A8](v13, v14);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D733548(0);
  v71 = *(v17 - 8);
  v72 = v17;
  MEMORY[0x2A1C7C4A8](v17, v18);
  v70 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D73370C(0);
  v67 = v20;
  v21 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v73 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D733C88(0, &unk_2A17B37B0, MEMORY[0x29EDCA398]);
  MEMORY[0x2A1C7C4A8](v24 - 8, v25);
  v27 = &v63 - v26;
  sub_29D7337D8(0);
  MEMORY[0x2A1C7C4A8](v28, v29);
  *(v2 + qword_2A17B34A0) = MEMORY[0x29EDCA1A0];
  *(v2 + qword_2A17B34A8) = 0;
  (*(v31 + 104))(&v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x29EDC1FF8]);

  v32 = sub_29D935538();
  v33 = sub_29D93A028();
  (*(*(v33 - 8) + 56))(v27, 1, 1, v33);
  sub_29D939FF8();

  v34 = a2;
  v35 = sub_29D939FE8();
  v36 = swift_allocObject();
  v37 = MEMORY[0x29EDCA390];
  v36[2] = v35;
  v36[3] = v37;
  v36[4] = v32;
  v36[5] = v34;
  v36[6] = v5;
  sub_29D6BEBA4(0, 0, v27, &unk_29D944968, v36);

  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  v38 = [swift_getObjCClassFromMetadata() hypertensionEventType];
  if (v38)
  {
    v39 = v38;
    sub_29D6A0C58();
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_29D940030;
    *(v40 + 32) = v39;
    v76 = 0;
    v77 = 0xE000000000000000;
    v65 = v39;
    sub_29D93AA18();
    v41 = sub_29D93AF08();
    v43 = v42;

    v76 = v41;
    v77 = v43;
    MEMORY[0x29ED6A240](0xD000000000000015, 0x800000029D95D280);
    sub_29D93A258();

    *(swift_allocObject() + 16) = v34;
    v64 = v34;
    sub_29D938228();
    sub_29D733654(0, &qword_2A17B2958, MEMORY[0x29EDC9A40]);
    v44 = MEMORY[0x29EDB89F8];
    sub_29D733B28(0, &qword_2A17B34C8, MEMORY[0x29EDB89F8]);
    v66 = a1;
    sub_29D7336C4(&qword_2A1A22238, MEMORY[0x29EDC2E88], MEMORY[0x29EDC2E80]);
    v75 = v32;
    v45 = v67;
    sub_29D733BBC(&qword_2A17B34D0, &qword_2A17B34C8, v44, MEMORY[0x29EDB8A00]);
    v46 = v69;
    v47 = v70;
    sub_29D938508();

    (*(v68 + 8))(v16, v46);
    sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
    v48 = sub_29D93A468();
    v76 = v48;
    v49 = sub_29D93A448();
    v50 = v74;
    (*(*(v49 - 8) + 56))(v74, 1, 1, v49);
    sub_29D7336C4(&qword_2A17B34E0, sub_29D733548, MEMORY[0x29EDB89A8]);
    sub_29D706380();
    v52 = v72;
    v51 = v73;
    sub_29D938538();
    sub_29D7339C0(v50);

    (*(v71 + 8))(v47, v52);
    swift_allocObject();
    swift_weakInit();
    sub_29D7336C4(&qword_2A17B34F0, sub_29D73370C, MEMORY[0x29EDB89E8]);
    sub_29D938478();

    v53 = v45;
    v32 = v75;
    (*(v21 + 8))(v51, v53);
    swift_beginAccess();
    sub_29D938258();
    swift_endAccess();
  }

  else
  {
    sub_29D937818();
    v54 = sub_29D937878();
    v55 = sub_29D93A288();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v66 = a1;
      v58 = v57;
      v76 = v57;
      *v56 = 136446210;
      v59 = sub_29D93AF08();
      v61 = sub_29D6C2364(v59, v60, &v76);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_29D677000, v54, v55, "[%{public}s]: Failed to reference sample type", v56, 0xCu);
      sub_29D69417C(v58);
      MEMORY[0x29ED6BE30](v58, -1, -1);
      MEMORY[0x29ED6BE30](v56, -1, -1);
    }

    else
    {
    }

    (*(v75 + 8))(v9, v6);
  }

  return v32;
}

uint64_t sub_29D731388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  sub_29D7337D8(0);
  v5[3] = v7;
  v5[4] = *(v7 - 8);
  v5[5] = swift_task_alloc();
  v5[6] = sub_29D939FF8();
  v5[7] = sub_29D939FE8();
  v8 = swift_task_alloc();
  v5[8] = v8;
  *v8 = v5;
  v8[1] = sub_29D7314A4;

  return sub_29D731C94(a5);
}

uint64_t sub_29D7314A4(char a1)
{
  *(*v1 + 72) = a1;

  v3 = sub_29D939FD8();

  return MEMORY[0x2A1C73D48](sub_29D7315E8, v3, v2);
}

uint64_t sub_29D7315E8()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  *(v4 + qword_2A17B34A8) = v1;
  v6 = MEMORY[0x29EDC2000];
  if (!v1)
  {
    v6 = MEMORY[0x29EDC1FF8];
  }

  (*(v3 + 104))(v2, *v6, v5);
  sub_29D935528();

  v7 = *(v0 + 8);

  return v7();
}

void *sub_29D7316B4@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_29D733A40(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NotificationSamplesQuery();
  v10 = swift_allocObject();
  result = sub_29D732858(a1);
  if (*(v10 + 32))
  {
    v14[1] = *(v10 + 32);
    v12 = MEMORY[0x29EDB8AD0];
    sub_29D733B28(0, &qword_2A17B3500, MEMORY[0x29EDB8AD0]);
    sub_29D733654(0, &qword_2A17B2958, MEMORY[0x29EDC9A40]);
    sub_29D733BBC(&qword_2A17B3508, &qword_2A17B3500, v12, MEMORY[0x29EDB8AD8]);

    sub_29D938468();

    sub_29D7336C4(&qword_2A17B3510, sub_29D733A40, MEMORY[0x29EDB8908]);
    v13 = sub_29D938418();

    result = (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D7318D8(void **a1)
{
  v2 = sub_29D937898();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v25 - v9;
  v11 = *a1;
  if (*a1)
  {
    sub_29D937818();
    v12 = v11;
    v13 = sub_29D937878();
    v14 = sub_29D93A288();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v11;
      v26 = v16;
      *v15 = 136315138;
      v17 = v11;
      sub_29D6A0CD0();
      v18 = sub_29D939DA8();
      v20 = sub_29D6C2364(v18, v19, &v26);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_29D677000, v13, v14, "Encountered error in NotificationSamplesQuery: %s", v15, 0xCu);
      sub_29D69417C(v16);
      MEMORY[0x29ED6BE30](v16, -1, -1);
      MEMORY[0x29ED6BE30](v15, -1, -1);
    }

    return (*(v3 + 8))(v10, v2);
  }

  else
  {
    sub_29D937818();
    v22 = sub_29D937878();
    v23 = sub_29D93A2A8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_29D677000, v22, v23, "NotificationSamplesQuery succeeded", v24, 2u);
      MEMORY[0x29ED6BE30](v24, -1, -1);
    }

    return (*(v3 + 8))(v7, v2);
  }
}

uint64_t sub_29D731B4C(unint64_t *a1, uint64_t a2)
{
  sub_29D7337D8(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v9 >> 62)
    {
      v11 = sub_29D93A928();
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = MEMORY[0x29EDC2000];
    if (v11 <= 0)
    {
      v12 = MEMORY[0x29EDC1FF8];
    }

    (*(v5 + 104))(v8, *v12, v4);
    sub_29D935528();
  }

  return result;
}

uint64_t sub_29D731C94(uint64_t a1)
{
  v3 = *v1;
  v2[3] = a1;
  v2[4] = v3;
  v4 = sub_29D937898();
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  sub_29D733654(0, &qword_2A17B2908, MEMORY[0x29EDBA238]);
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();
  sub_29D939FF8();
  v2[12] = sub_29D939FE8();
  v7 = sub_29D939FD8();
  v2[13] = v7;
  v2[14] = v6;

  return MEMORY[0x2A1C73D48](sub_29D731E30, v7, v6);
}

uint64_t sub_29D731E30()
{
  v21 = v0;
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[15] = ObjCClassFromMetadata;
  v2 = [ObjCClassFromMetadata hypertensionEventType];
  v0[16] = v2;
  if (v2)
  {
    v3 = MEMORY[0x29EDBA210];
    sub_29D734210(0, &qword_2A17B2910, &qword_2A17B2918, MEMORY[0x29EDBA210], MEMORY[0x29EDC9E90]);
    sub_29D733654(0, &qword_2A17B2918, v3);
    *(swift_allocObject() + 16) = xmmword_29D93DDB0;
    sub_29D69567C(0, &unk_2A17B37A0, 0x29EDBAD60);
    sub_29D939AB8();
    sub_29D939B28();
    v4 = swift_task_alloc();
    v0[17] = v4;
    *v4 = v0;
    v4[1] = sub_29D7321AC;
    v5 = v0[9];
    v6 = v0[3];

    return MEMORY[0x2A1C5B578](v6, v5);
  }

  else
  {

    sub_29D937818();
    v7 = sub_29D937878();
    v8 = sub_29D93A288();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[8];
    v11 = v0[5];
    v12 = v0[6];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136446210;
      v15 = sub_29D93AF08();
      v17 = sub_29D6C2364(v15, v16, &v20);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_29D677000, v7, v8, "[%{public}s]: Failed to reference sample type", v13, 0xCu);
      sub_29D69417C(v14);
      MEMORY[0x29ED6BE30](v14, -1, -1);
      MEMORY[0x29ED6BE30](v13, -1, -1);
    }

    (*(v12 + 8))(v10, v11);

    v18 = v0[1];

    return v18(0);
  }
}

uint64_t sub_29D7321AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v5 = *(v3 + 112);
  v6 = *(v3 + 104);
  if (v1)
  {
    v7 = sub_29D732510;
  }

  else
  {
    v7 = sub_29D7322F0;
  }

  return MEMORY[0x2A1C73D48](v7, v6, v5);
}

uint64_t sub_29D7322F0()
{
  v1 = *(v0 + 144);

  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D93A928())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v19 = *(v0 + 144) + 32;
    v20 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v4)
      {
        v5 = MEMORY[0x29ED6AE30](v3, *(v0 + 144));
      }

      else
      {
        if (v3 >= *(v20 + 16))
        {
          goto LABEL_15;
        }

        v5 = *(v19 + 8 * v3);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = [*(v0 + 120) hypertensionEventType];
      if (v8)
      {
        v9 = v8;
        sub_29D69567C(0, &qword_2A1A21FD0, 0x29EDC9738);
        v10 = [v6 sampleType];
        v1 = sub_29D93A708();

        if (v1)
        {
          v11 = *(v0 + 128);
          (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

          v12 = 1;
          goto LABEL_18;
        }
      }

      else
      {
      }

      ++v3;
      if (v7 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:
  v13 = *(v0 + 128);
  v15 = *(v0 + 80);
  v14 = *(v0 + 88);
  v16 = *(v0 + 72);

  (*(v15 + 8))(v14, v16);
  v12 = 0;
LABEL_18:

  v17 = *(v0 + 8);

  return v17(v12);
}

uint64_t sub_29D732510()
{
  v33 = v0;
  v1 = v0[19];

  sub_29D937818();
  v2 = v1;
  v3 = sub_29D937878();
  v4 = sub_29D93A288();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v6 = v0[10];
    v30 = v0[9];
    v31 = v0[11];
    v7 = v0[6];
    v29 = v0[7];
    v27 = v0[16];
    v28 = v0[5];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = v9;
    *v8 = 136446466;
    v10 = sub_29D93AF08();
    v12 = sub_29D6C2364(v10, v11, &v32);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v0[2] = v5;
    v13 = v5;
    sub_29D6A0CD0();
    v14 = sub_29D939DB8();
    v16 = sub_29D6C2364(v14, v15, &v32);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_29D677000, v3, v4, "[%{public}s] Error querying for samples: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v9, -1, -1);
    MEMORY[0x29ED6BE30](v8, -1, -1);

    (*(v7 + 8))(v29, v28);
    (*(v6 + 8))(v31, v30);
  }

  else
  {
    v17 = v0[19];
    v18 = v0[16];
    v20 = v0[10];
    v19 = v0[11];
    v21 = v0[9];
    v23 = v0[6];
    v22 = v0[7];
    v24 = v0[5];

    (*(v23 + 8))(v22, v24);
    (*(v20 + 8))(v19, v21);
  }

  v25 = v0[1];

  return v25(0);
}

uint64_t sub_29D7327E8()
{
  sub_29D935568();

  return swift_deallocClassInstance();
}

void *sub_29D732858(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_29D937898();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D934708();
  swift_allocObject();
  v1[3] = sub_29D9346F8();
  v1[4] = 0;
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  v10 = [swift_getObjCClassFromMetadata() hypertensionEventType];
  v1[5] = v10;
  v1[2] = a1;
  if (v10)
  {
    v11 = v10;
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = v2;
    v12[4] = a1;
    v12[5] = v4;
    sub_29D733B28(0, &qword_2A17B3500, MEMORY[0x29EDB8AD0]);
    swift_allocObject();
    v13 = a1;
    v14 = v11;

    v2[4] = sub_29D938368();
  }

  else
  {
    v15 = a1;
    sub_29D937818();
    v16 = sub_29D937878();
    v17 = sub_29D93A288();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26 = v15;
      v19 = v6;
      v20 = v18;
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136446210;
      v22 = sub_29D93AF08();
      v24 = sub_29D6C2364(v22, v23, &v27);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_29D677000, v16, v17, "[%{public}s]: Failed to reference sample type", v20, 0xCu);
      sub_29D69417C(v21);
      MEMORY[0x29ED6BE30](v21, -1, -1);
      MEMORY[0x29ED6BE30](v20, -1, -1);

      (*(v19 + 8))(v9, v5);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }
  }

  return v2;
}

void sub_29D732B68(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = swift_allocObject();
  v13[2] = sub_29D6A0C18;
  v13[3] = v12;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a6;
  v14 = objc_allocWithZone(MEMORY[0x29EDBAD70]);
  v18[4] = sub_29D733C0C;
  v18[5] = v13;
  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 1107296256;
  v18[2] = sub_29D733900;
  v18[3] = &unk_2A2442F40;
  v15 = _Block_copy(v18);

  v16 = a3;

  v17 = [v14 initWithSampleType:v16 predicate:0 limit:1 sortDescriptors:0 resultsHandler:v15];
  _Block_release(v15);

  [a5 executeQuery_];
}

uint64_t sub_29D732CE8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

void sub_29D732D28(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = sub_29D937898();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v20 = swift_allocObject();
    v20[2] = a4;
    v20[3] = a5;
    v20[4] = a7;
    v20[5] = a8;

    v21 = sub_29D733CE8(a2, a6, sub_29D733CDC, v20);

    v41 = v21;
    sub_29D938278();
    sub_29D938218();
  }

  else
  {
    sub_29D937818();
    v22 = a3;
    v23 = sub_29D937878();
    v24 = sub_29D93A288();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v41 = v38;
      *v25 = 136446466;
      v26 = sub_29D93AF08();
      v28 = sub_29D6C2364(v26, v27, &v41);
      v39 = a4;
      v29 = v28;

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      v40 = a3;
      v30 = a3;
      sub_29D733C88(0, &qword_2A17B7AF0, sub_29D6A0CD0);
      v31 = sub_29D939DA8();
      v33 = sub_29D6C2364(v31, v32, &v41);

      *(v25 + 14) = v33;
      a4 = v39;
      _os_log_impl(&dword_29D677000, v23, v24, "[%{public}s]: Error fetching samples %{public}s", v25, 0x16u);
      v34 = v38;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v34, -1, -1);
      MEMORY[0x29ED6BE30](v25, -1, -1);
    }

    (*(v16 + 8))(v19, v15);
    v35 = a3;
    if (!a3)
    {
      sub_29D733C34();
      v35 = swift_allocError();
      *v36 = 0;
    }

    v37 = a3;
    a4(v35, 1);
  }
}

void sub_29D73305C(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_29D937898();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x2A1C7C4A8](a1, v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12)
  {
    a3(v12, 0);
  }

  else
  {
    sub_29D937818();
    v15 = a2;
    v16 = sub_29D937878();
    v17 = sub_29D93A288();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      HIDWORD(v31) = v17;
      v19 = v18;
      v32 = swift_slowAlloc();
      v34 = v32;
      *v19 = 136446466;
      v20 = sub_29D93AF08();
      v22 = sub_29D6C2364(v20, v21, &v34);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2082;
      v33 = a2;
      v23 = a2;
      sub_29D733C88(0, &qword_2A17B7AF0, sub_29D6A0CD0);
      v24 = sub_29D939DA8();
      v26 = sub_29D6C2364(v24, v25, &v34);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_29D677000, v16, BYTE4(v31), "[%{public}s]: Error filtering samples %{public}s", v19, 0x16u);
      v27 = v32;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v27, -1, -1);
      MEMORY[0x29ED6BE30](v19, -1, -1);
    }

    (*(v10 + 8))(v14, v9);
    v28 = a2;
    if (!a2)
    {
      sub_29D733C34();
      v28 = swift_allocError();
      *v29 = 1;
    }

    v30 = a2;
    a3(v28, 1);
  }
}

uint64_t sub_29D733310(void **a1, uint64_t a2)
{
  v2 = *a1;
  sub_29D69567C(0, &qword_2A1A21FD0, 0x29EDC9738);
  v3 = [v2 sampleType];
  v4 = sub_29D93A708();

  return v4 & 1;
}

void sub_29D73338C(_BYTE *a1, void (*a2)(void, void *))
{
  if ((*a1 & 1) == 0)
  {
    v4 = swift_allocError();
    a2(0, v4);
  }
}

uint64_t sub_29D733408(unint64_t *a1, void (*a2)(uint64_t, void))
{
  v3 = *a1;
  if (!(v3 >> 62))
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
    sub_29D935E88();
    goto LABEL_3;
  }

  v6 = v3;
  v7 = sub_29D93A928();
  if (v7)
  {
    v8 = v7;
    v4 = sub_29D7042EC();
    sub_29D935E88();
    sub_29D703580(v4 + 32, v8, v6);
    v10 = v9;

    if (v10 == v8)
    {
      goto LABEL_3;
    }

    __break(1u);
  }

  v4 = MEMORY[0x29EDCA190];
LABEL_3:
  a2(v4, 0);
}

uint64_t sub_29D7334D4()
{

  return swift_deallocClassInstance();
}

void sub_29D733548(uint64_t a1)
{
  if (!qword_2A17B34C0)
  {
    v1 = MEMORY[0x29EDB89F8];
    sub_29D733B28(255, &qword_2A17B34C8, MEMORY[0x29EDB89F8]);
    sub_29D93A248();
    sub_29D733BBC(&qword_2A17B34D0, &qword_2A17B34C8, v1, MEMORY[0x29EDB8A00]);
    sub_29D7336C4(&qword_2A1A22238, MEMORY[0x29EDC2E88], MEMORY[0x29EDC2E80]);
    v2 = sub_29D938198();
    if (!v3)
    {
      atomic_store(v2, &qword_2A17B34C0);
    }
  }
}

void sub_29D733654(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D69567C(255, &unk_2A17B37A0, 0x29EDBAD60);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D7336C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D73370C(uint64_t a1)
{
  if (!qword_2A17B34D8)
  {
    sub_29D733548(255);
    sub_29D69567C(255, &qword_2A1A248D0, 0x29EDCA548);
    sub_29D7336C4(&qword_2A17B34E0, sub_29D733548, MEMORY[0x29EDB89A8]);
    sub_29D706380();
    v1 = sub_29D9381E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B34D8);
    }
  }
}

void sub_29D7337D8(uint64_t a1)
{
  if (!qword_2A17B34E8)
  {
    sub_29D934C28();
    v1 = sub_29D935508();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B34E8);
    }
  }
}

uint64_t sub_29D733838(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29D6AC948;

  return sub_29D731388(a1, v4, v5, v6, v7);
}

double sub_29D733900(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_29D69567C(0, &unk_2A17B37A0, 0x29EDBAD60);
    v5 = sub_29D939F38();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);

  return result;
}

uint64_t sub_29D7339C0(uint64_t a1)
{
  sub_29D733C88(0, &unk_2A1A248F0, MEMORY[0x29EDCA298]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D733A40(uint64_t a1)
{
  if (!qword_2A17B34F8)
  {
    v1 = MEMORY[0x29EDB8AD0];
    sub_29D733B28(255, &qword_2A17B3500, MEMORY[0x29EDB8AD0]);
    sub_29D733654(255, &qword_2A17B2958, MEMORY[0x29EDC9A40]);
    sub_29D733BBC(&qword_2A17B3508, &qword_2A17B3500, v1, MEMORY[0x29EDB8AD8]);
    v2 = sub_29D9380F8();
    if (!v3)
    {
      atomic_store(v2, &qword_2A17B34F8);
    }
  }
}

void sub_29D733B28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_29D733654(255, &qword_2A17B2958, MEMORY[0x29EDC9A40]);
    v7 = v6;
    v8 = sub_29D6A0CD0();
    v9 = a3(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D733BBC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D733B28(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D733C1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D733C34()
{
  result = qword_2A17B3518;
  if (!qword_2A17B3518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3518);
  }

  return result;
}

void sub_29D733C88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D733CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v30 = a1;
  v31 = a2;
  sub_29D734058(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D733654(0, &qword_2A17B3530, MEMORY[0x29EDB8B08]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v29 - v14;
  v16 = MEMORY[0x29EDC9A40];
  sub_29D734210(0, &qword_2A17B3538, &qword_2A17B2958, MEMORY[0x29EDC9A40], MEMORY[0x29EDB8B08]);
  v32 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = &v29 - v20;
  v36 = v30;
  sub_29D733654(0, &qword_2A17B2958, v16);
  sub_29D7340F4();
  sub_29D939EA8();
  v35 = v31;
  sub_29D9381A8();
  (*(v6 + 8))(v9, v5);
  sub_29D93A7D8();
  (*(v12 + 8))(v15, v11);
  v22 = swift_allocObject();
  v24 = v33;
  v23 = v34;
  *(v22 + 16) = v33;
  *(v22 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v23;
  sub_29D734180();
  swift_retain_n();
  v26 = v32;
  v27 = sub_29D938478();

  (*(v18 + 8))(v21, v26);
  return v27;
}

void sub_29D734058(uint64_t a1)
{
  if (!qword_2A17B3520)
  {
    sub_29D733654(255, &qword_2A17B2958, MEMORY[0x29EDC9A40]);
    sub_29D7340F4();
    v1 = sub_29D9381B8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3520);
    }
  }
}

unint64_t sub_29D7340F4()
{
  result = qword_2A17B3528;
  if (!qword_2A17B3528)
  {
    sub_29D733654(255, &qword_2A17B2958, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3528);
  }

  return result;
}

unint64_t sub_29D734180()
{
  result = qword_2A17B3540;
  if (!qword_2A17B3540)
  {
    sub_29D734210(255, &qword_2A17B3538, &qword_2A17B2958, MEMORY[0x29EDC9A40], MEMORY[0x29EDB8B08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3540);
  }

  return result;
}

void sub_29D734210(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D733654(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_29D73428C()
{
  result = qword_2A17B3548;
  if (!qword_2A17B3548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3548);
  }

  return result;
}

unint64_t sub_29D7342F4()
{
  result = qword_2A17B3550;
  if (!qword_2A17B3550)
  {
    sub_29D73434C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3550);
  }

  return result;
}

void sub_29D73434C()
{
  if (!qword_2A17B3558)
  {
    v0 = sub_29D939FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3558);
    }
  }
}

uint64_t sub_29D73439C(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (!a1)
    {
      sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
      v1 = MEMORY[0x29EDBA848];
      return MEMORY[0x29ED6A6C0](*v1);
    }

    sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
    v3 = MEMORY[0x29EDBA4D0];
  }

  else
  {
    if (a1 == 2)
    {
      sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
      v1 = MEMORY[0x29EDBA898];
      return MEMORY[0x29ED6A6C0](*v1);
    }

    if (a1 == 3)
    {
      sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
      v1 = MEMORY[0x29EDBA930];
      return MEMORY[0x29ED6A6C0](*v1);
    }

    sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
    v3 = MEMORY[0x29EDBA4A8];
  }

  return MEMORY[0x29ED6A6B0](*v3);
}

unint64_t sub_29D7344C8()
{
  result = qword_2A17B3560;
  if (!qword_2A17B3560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3560);
  }

  return result;
}

uint64_t sub_29D73451C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  sub_29D6945AC(a1 + 32, &v12);
  type metadata accessor for FeatureStatusObservable(0);
  sub_29D737AA8(&qword_2A17B3598, type metadata accessor for FeatureStatusObservable, &unk_29D944B48);
  v5 = v4;
  v11[0] = sub_29D938918();
  v11[1] = v6;
  v11[2] = v5;
  v7 = *(a1 + 16);
  sub_29D737F38(v11, v10);
  sub_29D737F38(v10, a2);
  *(a2 + 64) = v7;
  v8 = v7;
  sub_29D737F70(v11);

  return sub_29D737F70(v10);
}

uint64_t sub_29D73460C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = [objc_allocWithZone(MEMORY[0x29EDBAC88]) init];
  v7 = [v6 currentEstimate];
  v8 = v7;
  v9 = *MEMORY[0x29EDBA6B0];
  if (v7)
  {
    v10 = [v7 ISOCode];
    v11 = sub_29D939D68();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = sub_29D8FC9F4(v9, v11, v13);

  if (v14)
  {
    v15 = objc_allocWithZone(type metadata accessor for FeatureStatusObservable(0));
    v16 = v14;
    sub_29D7372AC(v16, v15);
    sub_29D737AA8(&qword_2A17B3598, type metadata accessor for FeatureStatusObservable, &unk_29D944B48);
    *a3 = sub_29D9387E8();
    a3[1] = v17;
    a3[2] = a1;
    sub_29D6945AC(a2, (a3 + 4));
    v18 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:v9 healthStore:a1];

    result = sub_29D69417C(a2);
    a3[3] = v18;
  }

  else
  {
    result = sub_29D93AB28();
    __break(1u);
  }

  return result;
}

id sub_29D734800@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29D938898();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D737C48(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  sub_29D737CF8(0);
  sub_29D737AA8(&qword_2A17B35B8, sub_29D737CF8, MEMORY[0x29EDBCC30]);
  sub_29D939278();
  sub_29D938888();
  sub_29D737AA8(&qword_2A17B35C0, sub_29D737C48, MEMORY[0x29EDBC0F0]);
  sub_29D939508();
  (*(v5 + 8))(v8, v4);
  (*(v11 + 8))(v14, v10);
  v21 = *(v2 + 8);
  type metadata accessor for FeatureStatusObservable(0);
  sub_29D737AA8(&qword_2A17B3598, type metadata accessor for FeatureStatusObservable, &unk_29D944B48);
  v15 = sub_29D938288();
  sub_29D737D94(0);
  v17 = (a1 + *(v16 + 36));
  v18 = v21;
  *v17 = v15;
  v17[1] = v18;

  return v18;
}

uint64_t sub_29D734AB4()
{
  sub_29D938C18();
  sub_29D9392D8();
  sub_29D734BE4();
  sub_29D69AB60();
  sub_29D9392F8();
  sub_29D7382D0();
  sub_29D737AA8(&qword_2A17B3618, sub_29D7382D0, MEMORY[0x29EDBC278]);
  return sub_29D939808();
}

uint64_t sub_29D734BE4()
{
  sub_29D6B805C(0);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D9371A8();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v11 = v10;
    sub_29D9383C8();

    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      v12 = 0xD00000000000001BLL;
      sub_29D737AF8(v4, sub_29D6B805C);
      return v12;
    }

    (*(v6 + 32))(v9, v4, v5);
    if (sub_29D937198())
    {
      v13 = sub_29D9371B8();
      v14 = [v13 areAllRequirementsSatisfied];

      if (v14)
      {
        (*(v6 + 8))(v9, v5);
        return 0xD000000000000026;
      }

      v17 = sub_29D9371B8();
      v18 = [v17 unsatisfiedRequirementIdentifiers];

      type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
      v19 = sub_29D939F38();

      sub_29D737058(0, &qword_2A17B18F0, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier, MEMORY[0x29EDC9E90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_29D93DDB0;
      v21 = *MEMORY[0x29EDBA608];
      *(inited + 32) = *MEMORY[0x29EDBA608];
      v22 = v21;
      sub_29D6971AC(v19, inited);
      v24 = v23;

      swift_setDeallocating();
      swift_arrayDestroy();
      if (v24)
      {
        (*(v6 + 8))(v9, v5);
        return 0xD000000000000027;
      }

      v69 = 0;
      v70 = 0xE000000000000000;
      sub_29D93AA18();
      MEMORY[0x29ED6A240](0xD000000000000046, 0x800000029D95D630);
      v39 = sub_29D9371B8();
      v40 = [v39 unsatisfiedRequirementIdentifiers];

      v41 = sub_29D939F38();
      v42 = *(v41 + 16);
      if (v42)
      {
        v68 = MEMORY[0x29EDCA190];
        sub_29D7EE600(0, v42, 0);
        v43 = 32;
        v32 = v68;
        do
        {
          v44 = sub_29D939D68();
          v68 = v32;
          v47 = *(v32 + 16);
          v46 = *(v32 + 24);
          if (v47 >= v46 >> 1)
          {
            v67 = v44;
            v49 = v45;
            sub_29D7EE600((v46 > 1), v47 + 1, 1);
            v45 = v49;
            v44 = v67;
            v32 = v68;
          }

          *(v32 + 16) = v47 + 1;
          v48 = v32 + 16 * v47;
          *(v48 + 32) = v44;
          *(v48 + 40) = v45;
          v43 += 8;
          --v42;
        }

        while (v42);
LABEL_29:

LABEL_31:
        v68 = v32;
        sub_29D738864(0, &qword_2A17B3628, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
        sub_29D738398(v61);
        v62 = sub_29D939CA8();
        v64 = v63;

        MEMORY[0x29ED6A240](v62, v64);

        v12 = v69;
        (*(v6 + 8))(v9, v5);
        return v12;
      }
    }

    else
    {
      v15 = sub_29D9371B8();
      v16 = [v15 areAllRequirementsSatisfied];

      if (v16)
      {
        (*(v6 + 8))(v9, v5);
        return 0xD00000000000002BLL;
      }

      v25 = sub_29D9371B8();
      v26 = [v25 areAllRequirementsSatisfied];

      if (v26)
      {
        v69 = 0;
        v70 = 0xE000000000000000;
        sub_29D93AA18();
        MEMORY[0x29ED6A240](0xD000000000000056, 0x800000029D95D5A0);
        v27 = sub_29D9371B8();
        v28 = [v27 unsatisfiedRequirementIdentifiers];

        type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
        v29 = sub_29D939F38();

        v30 = *(v29 + 16);
        if (v30)
        {
          v68 = MEMORY[0x29EDCA190];
          sub_29D7EE600(0, v30, 0);
          v31 = 32;
          v32 = v68;
          do
          {
            v33 = sub_29D939D68();
            v68 = v32;
            v36 = *(v32 + 16);
            v35 = *(v32 + 24);
            if (v36 >= v35 >> 1)
            {
              v67 = v33;
              v38 = v34;
              sub_29D7EE600((v35 > 1), v36 + 1, 1);
              v34 = v38;
              v33 = v67;
              v32 = v68;
            }

            *(v32 + 16) = v36 + 1;
            v37 = v32 + 16 * v36;
            *(v37 + 32) = v33;
            *(v37 + 40) = v34;
            v31 += 8;
            --v30;
          }

          while (v30);
          goto LABEL_29;
        }
      }

      else
      {
        v69 = 0;
        v70 = 0xE000000000000000;
        sub_29D93AA18();
        MEMORY[0x29ED6A240](0xD00000000000004ALL, 0x800000029D95D550);
        v50 = sub_29D9371B8();
        v51 = [v50 unsatisfiedRequirementIdentifiers];

        type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
        v52 = sub_29D939F38();

        v53 = *(v52 + 16);
        if (v53)
        {
          v68 = MEMORY[0x29EDCA190];
          sub_29D7EE600(0, v53, 0);
          v54 = 32;
          v32 = v68;
          do
          {
            v55 = sub_29D939D68();
            v68 = v32;
            v58 = *(v32 + 16);
            v57 = *(v32 + 24);
            if (v58 >= v57 >> 1)
            {
              v67 = v55;
              v60 = v56;
              sub_29D7EE600((v57 > 1), v58 + 1, 1);
              v56 = v60;
              v55 = v67;
              v32 = v68;
            }

            *(v32 + 16) = v58 + 1;
            v59 = v32 + 16 * v58;
            *(v59 + 32) = v55;
            *(v59 + 40) = v56;
            v54 += 8;
            --v53;
          }

          while (v53);
          goto LABEL_29;
        }
      }
    }

    v32 = MEMORY[0x29EDCA190];
    goto LABEL_31;
  }

  type metadata accessor for FeatureStatusObservable(0);
  sub_29D737AA8(&qword_2A17B3598, type metadata accessor for FeatureStatusObservable, &unk_29D944B48);
  result = sub_29D938908();
  __break(1u);
  return result;
}

uint64_t sub_29D735434(uint64_t a1)
{
  sub_29D938C18();
  sub_29D737F38(a1, v6);
  v2 = swift_allocObject();
  v3 = v6[1];
  v2[1] = v6[0];
  v2[2] = v3;
  v4 = v6[3];
  v2[3] = v6[2];
  v2[4] = v4;
  return sub_29D9396F8();
}

double sub_29D7354FC(void *a1)
{
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  sub_29D69C6C0(v2, qword_2A1A2BF58);
  v12[0] = 0;
  sub_29D9371C8();
  v3 = a1[2];
  v12[4] = sub_29D7357F8;
  v12[5] = 0;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1107296256;
  v12[2] = sub_29D8E44F0;
  v12[3] = &unk_2A24432B0;
  v4 = _Block_copy(v12);
  [v3 resetOnboardingWithCompletion_];
  _Block_release(v4);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v5 = sub_29D937898();
  sub_29D69C6C0(v5, qword_2A1A2C008);
  v6 = sub_29D937878();
  v7 = sub_29D93A2A8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12[0] = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_29D6C2364(0xD000000000000011, 0x800000029D944CB0, v12);
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_29D6C2364(2036625250, 0xE400000000000000, v12);
    _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s.%{public}s] Un-favoriting AFib History data type", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v9, -1, -1);
    MEMORY[0x29ED6BE30](v8, -1, -1);
  }

  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v10 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  sub_29D693E2C(a1 + 3, a1[6]);
  sub_29D93A1F8();
  sub_29D934308();

  return result;
}

uint64_t sub_29D7357F8(uint64_t result, void *a2)
{
  if ((result & 1) == 0)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v3, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = a2;
    v4 = a2;
    sub_29D9371E8();
  }

  return result;
}

uint64_t sub_29D7358D4(ValueMetadata *a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  sub_29D738350();
  v2 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](0xD00000000000002ELL, 0x800000029D95D4C0);
  v3 = a1;
  sub_29D737058(0, &qword_2A17B7AF0, sub_29D6A0CD0, MEMORY[0x29EDC9C68]);
  v4 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v4);

  return 0;
}

uint64_t sub_29D7359F0(uint64_t a1)
{
  sub_29D938C18();
  sub_29D9392D8();
  sub_29D735B1C(a1);
  sub_29D69AB60();
  sub_29D9392F8();
  sub_29D7381C8(0);
  sub_29D737AA8(&qword_2A17B3608, sub_29D7381C8, MEMORY[0x29EDBCC30]);
  return sub_29D939808();
}

unint64_t sub_29D735B1C(uint64_t a1)
{
  v2 = sub_29D9339F8();
  v30 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2, v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v29 - v8;
  sub_29D6A08F8(0);
  v12 = MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v12, v15);
  v18 = &v29 - v17;
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v29 - v20;
  v22 = [objc_opt_self() hkhr:a1 aFibBurdenSyncedDefaultsDomainWithHealthStore:?];
  sub_29D939D68();
  sub_29D93A318();

  v31 = 0;
  v32 = 0xE000000000000000;
  sub_29D93AA18();

  v31 = 0xD00000000000001ELL;
  v32 = 0x800000029D95D480;
  sub_29D738260(v21, v18, sub_29D6A08F8);
  sub_29D738260(v18, v14, sub_29D6A08F8);
  v23 = v30;
  if ((*(v30 + 48))(v14, 1, v2) == 1)
  {
    v24 = 0xE300000000000000;
    v25 = 7104878;
  }

  else
  {
    (*(v23 + 32))(v9, v14, v2);
    (*(v23 + 16))(v6, v9, v2);
    v25 = sub_29D939DA8();
    v24 = v26;
    (*(v23 + 8))(v9, v2);
  }

  sub_29D737AF8(v18, sub_29D6A08F8);
  MEMORY[0x29ED6A240](v25, v24);

  v27 = v31;
  sub_29D737AF8(v21, sub_29D6A08F8);
  return v27;
}

void *sub_29D735EC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v4 = *MEMORY[0x29EDBA870];
  v5 = a1;
  v6 = MEMORY[0x29ED6A6C0](v4);
  sub_29D939688();
  v7 = [objc_opt_self() heartbeatSeriesType];
  result = sub_29D939688();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = 0x7275422062694641;
  *(a2 + 24) = 0xEB000000006E6564;
  *(a2 + 32) = v5;
  *(a2 + 40) = v9;
  *(a2 + 48) = v10;
  *(a2 + 56) = v7;
  *(a2 + 64) = 0x6172676F68636154;
  *(a2 + 72) = 0xE90000000000006DLL;
  *(a2 + 80) = v5;
  *(a2 + 88) = v9;
  *(a2 + 96) = v10;
  return result;
}

uint64_t sub_29D736014@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = sub_29D938C08();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  sub_29D7382D0();
  v5 = *(v4 - 8);
  v21 = v4;
  v22 = v5;
  MEMORY[0x2A1C7C4A8](v4, v6);
  v19 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D938BF8();
  sub_29D938BE8();
  v20 = *(v1 + 8);
  sub_29D938BD8();
  sub_29D938BE8();
  sub_29D938C28();
  v8 = *v1;
  v9 = *(v1 + 24);
  v27 = *(v1 + 32);
  v10 = swift_allocObject();
  v11 = *(v1 + 16);
  v10[1] = *v1;
  v10[2] = v11;
  v10[3] = *(v1 + 32);
  v12 = v8;
  sub_29D935E88();
  v13 = v9;
  sub_29D738770(&v27, &v25, v14);
  v15 = v19;
  sub_29D9396F8();
  sub_29D938BF8();
  sub_29D938BE8();
  sub_29D938BD8();
  sub_29D938BE8();
  sub_29D938C28();
  v26 = v27;
  sub_29D738864(0, &qword_2A17B2390, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
  sub_29D9396B8();
  v24 = v1;
  sub_29D737AA8(&qword_2A17B3618, sub_29D7382D0, MEMORY[0x29EDBC278]);
  v16 = v21;
  sub_29D939488();

  return (*(v22 + 8))(v15, v16);
}

uint64_t sub_29D736398(uint64_t a1)
{
  sub_29D737058(0, &qword_2A17B3658, MEMORY[0x29EDBBE78], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v16[-v4];
  sub_29D938C18();
  sub_29D9385B8();
  v6 = sub_29D9385D8();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v17 = *(a1 + 32);
  v18 = v8;
  v10 = swift_allocObject();
  v11 = *(a1 + 16);
  v10[1] = *a1;
  v10[2] = v11;
  v10[3] = *(a1 + 32);
  v12 = v7;
  sub_29D738808(&v18, v16);
  v13 = v9;
  sub_29D738770(&v17, v16, v14);
  return sub_29D9396E8();
}

void sub_29D736548(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 24);
  sub_29D738864(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D940030;
  v5 = *a1;
  *(v4 + 32) = *a1;
  sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
  v6 = v5;
  v7 = sub_29D939F18();

  v17 = *(a1 + 8);
  v16 = *(a1 + 32);
  v8 = swift_allocObject();
  v9 = *(a1 + 16);
  v8[1] = *a1;
  v8[2] = v9;
  v8[3] = *(a1 + 32);
  aBlock[4] = sub_29D738904;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D8E44F0;
  aBlock[3] = &unk_2A2443428;
  v10 = _Block_copy(aBlock);
  v11 = v6;
  sub_29D738808(&v17, v14);
  v12 = v3;
  sub_29D738770(&v16, v14, v13);

  [v12 deleteAllSamplesWithTypes:v7 sourceBundleIdentifier:0 options:2 completion:v10];
  _Block_release(v10);
}

uint64_t sub_29D736708(uint64_t result, void *a2, uint64_t a3)
{
  if ((result & 1) == 0)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v5, qword_2A1A2BF58);
    v6 = *a3;
    v7 = *(a3 + 8);
    v8 = *(a3 + 24);
    v17 = *(a3 + 32);
    v18 = v7;
    v9 = swift_allocObject();
    v10 = *(a3 + 16);
    *(v9 + 16) = *a3;
    *(v9 + 32) = v10;
    *(v9 + 48) = *(a3 + 32);
    *(v9 + 64) = a2;
    v16 = 0;
    v11 = v6;
    sub_29D738808(&v18, v15);
    v12 = v8;
    sub_29D738770(&v17, v15, v13);
    v14 = a2;
    sub_29D9371E8();
  }

  return result;
}

uint64_t sub_29D73683C(uint64_t a1, ValueMetadata *a2)
{
  sub_29D93AA18();

  sub_29D738918();
  v4 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v4);

  MEMORY[0x29ED6A240](0xD000000000000017, 0x800000029D95D710);
  MEMORY[0x29ED6A240](*(a1 + 8), *(a1 + 16));
  MEMORY[0x29ED6A240](0x73656C706D617320, 0xEA0000000000203ALL);
  v5 = a2;
  sub_29D737058(0, &qword_2A17B7AF0, sub_29D6A0CD0, MEMORY[0x29EDC9C68]);
  v6 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v6);

  return 91;
}

void sub_29D7369BC(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x29EDC51E0]) initWithHealthStore_];
  [v1 triggerAnalysis];
}

uint64_t sub_29D736A24()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();
}

uint64_t sub_29D736A9C()
{
  v1 = *v0;
  sub_29D938C18();
  *(swift_allocObject() + 16) = v1;
  v2 = v1;

  return sub_29D9396F8();
}

uint64_t sub_29D736B68(void *a1, void *a2)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  swift_getMetatypeMetadata();
  v3 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](0xD00000000000003CLL, 0x800000029D95D3F0);
  v4 = a1;
  sub_29D6A0CD0();
  v5 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v5);

  return 0;
}

uint64_t sub_29D736C4C(uint64_t a1, uint64_t a2)
{
  sub_29D6B805C(0);
  v5 = MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v14 - v9;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = sub_29D9371A8();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v10, a1, v12);
    (*(v13 + 56))(v10, 0, 1, v12);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29D738260(v10, v7, sub_29D6B805C);
    sub_29D9383D8();
    return sub_29D737AF8(v10, sub_29D6B805C);
  }

  return result;
}

id sub_29D736E3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeatureStatusObservable(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for FeatureStatusObservable(uint64_t a1)
{
  result = qword_2A17B3580;
  if (!qword_2A17B3580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D736F84(uint64_t a1)
{
  sub_29D737058(319, &qword_2A17B3590, sub_29D6B805C, MEMORY[0x29EDB8B00]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_29D737058(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D7370C8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FeatureStatusObservable(0);
  result = sub_29D938298();
  *a2 = result;
  return result;
}

uint64_t sub_29D737108(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();
}

uint64_t sub_29D737184(uint64_t a1, void **a2)
{
  sub_29D6B805C(0);
  v6 = MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v15 - v10;
  sub_29D738260(a1, &v15 - v10, sub_29D6B805C);
  v12 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D738260(v11, v8, sub_29D6B805C);
  v13 = v12;
  sub_29D9383D8();
  return sub_29D737AF8(v11, sub_29D6B805C);
}

char *sub_29D7372AC(uint64_t a1, char *a2)
{
  v45 = a2;
  v54 = a1;
  v43[5] = swift_getObjectType();
  sub_29D7061B8(0);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v48 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D710880(0);
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v49 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D737058(0, &qword_2A17B3590, sub_29D6B805C, MEMORY[0x29EDB8B00]);
  v10 = *(v9 - 8);
  v52 = v9;
  v53 = v10;
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = v43 - v12;
  sub_29D6B805C(0);
  v15 = v14;
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v19 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x2A1C7C4A8](v17, v20);
  v23 = v43 - v22;
  MEMORY[0x2A1C7C4A8](v21, v24);
  v26 = v43 - v25;
  v27 = sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  v58[3] = v27;
  v58[4] = MEMORY[0x29EDC2EA8];
  v58[0] = a1;
  v28 = OBJC_IVAR____TtC5HeartP33_54C08C4D7764374DD7023E6C2D378D7623FeatureStatusObservable__featureStatus;
  v29 = sub_29D9371A8();
  v30 = *(*(v29 - 8) + 56);
  v30(v26, 1, 1, v29);
  sub_29D738260(v26, v23, sub_29D6B805C);
  v43[4] = v23;
  v46 = v15;
  sub_29D938398();
  sub_29D737AF8(v26, sub_29D6B805C);
  v31 = *(v53 + 32);
  v32 = v45;
  v44 = v28;
  v31(&v45[v28], v13, v52);
  *&v32[OBJC_IVAR____TtC5HeartP33_54C08C4D7764374DD7023E6C2D378D7623FeatureStatusObservable_subscription] = 0;
  sub_29D6945AC(v58, &v32[OBJC_IVAR____TtC5HeartP33_54C08C4D7764374DD7023E6C2D378D7623FeatureStatusObservable_featureStatusManager]);
  v47 = v27;
  sub_29D937278();
  v30(v19, 0, 1, v29);
  v33 = v44;
  swift_beginAccess();
  (*(v53 + 8))(&v32[v33], v52);
  sub_29D738260(v19, v26, sub_29D6B805C);
  sub_29D938398();
  sub_29D737AF8(v19, sub_29D6B805C);
  swift_endAccess();
  v34 = v51;
  v35 = type metadata accessor for FeatureStatusObservable(0);
  v56.receiver = v32;
  v56.super_class = v35;
  v36 = objc_msgSendSuper2(&v56, sel_init);
  v57 = sub_29D937288();
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v37 = sub_29D93A468();
  v55 = v37;
  v38 = sub_29D93A448();
  v39 = v48;
  (*(*(v38 - 8) + 56))(v48, 1, 1, v38);
  sub_29D6B7D8C(0);
  sub_29D737AA8(&qword_2A1A22420, sub_29D6B7D8C, MEMORY[0x29EDB8A00]);
  sub_29D706380();
  v40 = v49;
  sub_29D938538();
  sub_29D737AF8(v39, sub_29D7061B8);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29D737AA8(&qword_2A17B2C70, sub_29D710880, MEMORY[0x29EDB89E8]);
  v41 = sub_29D938588();

  (*(v50 + 8))(v40, v34);
  *&v36[OBJC_IVAR____TtC5HeartP33_54C08C4D7764374DD7023E6C2D378D7623FeatureStatusObservable_subscription] = v41;

  sub_29D69417C(v58);
  return v36;
}

uint64_t sub_29D737AA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D737AF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_29D737B60(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_29D737B84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_29D737BCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_29D737C48(uint64_t a1)
{
  if (!qword_2A17B35A0)
  {
    sub_29D737CF8(255);
    sub_29D737AA8(&qword_2A17B35B8, sub_29D737CF8, MEMORY[0x29EDBCC30]);
    v1 = sub_29D939288();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B35A0);
    }
  }
}

void sub_29D737D2C()
{
  if (!qword_2A17B35B0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B35B0);
    }
  }
}

void sub_29D737D94(uint64_t a1)
{
  if (!qword_2A17B35C8)
  {
    sub_29D737DFC(255);
    sub_29D737ED0(255);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B35C8);
    }
  }
}

void sub_29D737DFC(uint64_t a1)
{
  if (!qword_2A17B35D0)
  {
    sub_29D737C48(255);
    sub_29D938898();
    sub_29D737AA8(&qword_2A17B35C0, sub_29D737C48, MEMORY[0x29EDBC0F0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B35D0);
    }
  }
}

uint64_t sub_29D737FB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_29D737FF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29D738058()
{
  result = qword_2A17B35E8;
  if (!qword_2A17B35E8)
  {
    sub_29D737D94(255);
    sub_29D737C48(255);
    sub_29D938898();
    sub_29D737AA8(&qword_2A17B35C0, sub_29D737C48, MEMORY[0x29EDBC0F0]);
    swift_getOpaqueTypeConformance2();
    sub_29D737AA8(&qword_2A17B35F0, sub_29D737ED0, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B35E8);
  }

  return result;
}

void sub_29D7381FC()
{
  if (!qword_2A17B3600)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A17B3600);
    }
  }
}

uint64_t sub_29D738260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29D7382D0()
{
  if (!qword_2A17B3610)
  {
    v0 = sub_29D939718();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3610);
    }
  }
}

uint64_t sub_29D738330(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D738350()
{
  result = qword_2A17B3620;
  if (!qword_2A17B3620)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B3620);
  }

  return result;
}

unint64_t sub_29D738398(__n128 a1)
{
  result = qword_2A17B3630;
  if (!qword_2A17B3630)
  {
    sub_29D738864(255, &qword_2A17B3628, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3630);
  }

  return result;
}

uint64_t sub_29D738414(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29D73845C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29D7384C8()
{
  result = qword_2A17B3638;
  if (!qword_2A17B3638)
  {
    sub_29D738668(255, &qword_2A17B3640, sub_29D7381C8);
    sub_29D737AA8(&qword_2A17B3608, sub_29D7381C8, MEMORY[0x29EDBCC30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3638);
  }

  return result;
}

unint64_t sub_29D738598()
{
  result = qword_2A17B3648;
  if (!qword_2A17B3648)
  {
    sub_29D738668(255, &qword_2A17B3650, sub_29D7382D0);
    sub_29D737AA8(&qword_2A17B3618, sub_29D7382D0, MEMORY[0x29EDBC278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3648);
  }

  return result;
}

void sub_29D738668(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D939838();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D738770(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_29D738864(0, &qword_2A17B2390, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29D738864(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D7388B4()
{

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

unint64_t sub_29D738918()
{
  result = qword_2A17B3660;
  if (!qword_2A17B3660)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B3660);
  }

  return result;
}

id sub_29D738970(char a1)
{
  *&v1[OBJC_IVAR____TtC5Heart45AFibBurdenOnboardingLifeFactorsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC5Heart45AFibBurdenOnboardingLifeFactorsViewController_isInOnboardingModalFlow] = a1;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v3 = sub_29D939D28();

  sub_29D9334A8();
  v4 = sub_29D939D28();

  v7.receiver = v1;
  v7.super_class = type metadata accessor for AFibBurdenOnboardingLifeFactorsViewController();
  v5 = objc_msgSendSuper2(&v7, sel_initWithTitle_detailText_icon_contentLayout_, v3, v4, 0, 2, 0xE000000000000000);

  return v5;
}

void sub_29D738AEC()
{
  sub_29D877FB0();

  if (*(v0 + OBJC_IVAR____TtC5Heart45AFibBurdenOnboardingLifeFactorsViewController_isInOnboardingModalFlow) == 1)
  {
  }

  v2 = [v0 navigationItem];
  [v2 setBackButtonDisplayMode_];

  v62 = v0;
  v3 = [v0 headerView];
  if (qword_2A17B0BD8 != -1)
  {
    swift_once();
  }

  v4 = qword_2A17B1B70;
  v5 = *algn_2A17B1B78;
  v76 = qword_2A17B1B70;
  v77 = *algn_2A17B1B78;
  sub_29D935E88();
  MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
  MEMORY[0x29ED6A240](0x746361466566694CLL, 0xEB0000000073726FLL);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D957120);
  v6 = sub_29D939D28();

  [v3 setAccessibilityIdentifier_];

  sub_29D739C78();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29D944EA0;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v54 = sub_29D9334A8();
  v58 = v8;
  v63 = objc_opt_self();
  v9 = [v63 hk_activityKeyColor];
  v65 = v4;
  sub_29D935E88();
  MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
  strcpy(v75, "LifeFactors.");
  BYTE5(v75[1]) = 0;
  HIWORD(v75[1]) = -5120;
  MEMORY[0x29ED6A240](0x6573696372657845, 0xEF736574756E694DLL);
  MEMORY[0x29ED6A240](v75[0], v75[1]);

  v74 = 0;
  v73 = 0;
  v10 = sub_29D939D28();
  v11 = objc_opt_self();
  v12 = [v11 systemImageNamed_];

  if (!v12)
  {
    v13 = sub_29D939D28();
    v12 = [v11 _systemImageNamed_];

    if (!v12)
    {
      v12 = [objc_allocWithZone(MEMORY[0x29EDC7AC8]) init];
    }
  }

  v14 = v74;
  v15 = v73;
  *(v7 + 32) = v54;
  *(v7 + 40) = v58;
  *(v7 + 48) = v12;
  *(v7 + 56) = 0;
  *(v7 + 64) = v9;
  *(v7 + 72) = 0x403D000000000000;
  *(v7 + 80) = v14;
  *(v7 + 88) = 3;
  *(v7 + 96) = v15;
  *(v7 + 104) = v4;
  *(v7 + 112) = v5;
  v16 = sub_29D9334A8();
  v55 = v17;
  v59 = v16;
  v18 = [v63 hk_sleepKeyColor];
  sub_29D935E88();
  MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
  strcpy(v75, "LifeFactors.");
  BYTE5(v75[1]) = 0;
  HIWORD(v75[1]) = -5120;
  MEMORY[0x29ED6A240](0x7065656C53, 0xE500000000000000);
  MEMORY[0x29ED6A240](v75[0], v75[1]);

  v72 = 0;
  v71 = 0;
  v19 = sub_29D939D28();
  v20 = [v11 systemImageNamed_];

  if (!v20)
  {
    v21 = sub_29D939D28();
    v20 = [v11 _systemImageNamed_];

    if (!v20)
    {
      v20 = [objc_allocWithZone(MEMORY[0x29EDC7AC8]) init];
    }
  }

  v22 = v72;
  v23 = v71;
  *(v7 + 120) = v59;
  *(v7 + 128) = v55;
  *(v7 + 136) = v20;
  *(v7 + 144) = 0;
  *(v7 + 152) = v18;
  *(v7 + 160) = 0x4039000000000000;
  *(v7 + 168) = v22;
  *(v7 + 176) = 6;
  *(v7 + 184) = v23;
  *(v7 + 192) = v4;
  *(v7 + 200) = v5;
  v24 = sub_29D9334A8();
  v56 = v25;
  v60 = v24;
  v26 = [v63 hk_bodyMeasurementsKeyColor];
  sub_29D935E88();
  MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
  strcpy(v75, "LifeFactors.");
  BYTE5(v75[1]) = 0;
  HIWORD(v75[1]) = -5120;
  MEMORY[0x29ED6A240](0x746867696557, 0xE600000000000000);
  MEMORY[0x29ED6A240](v75[0], v75[1]);

  v70 = 0;
  v69 = 0;
  v27 = sub_29D939D28();
  v28 = [v11 systemImageNamed_];

  if (!v28)
  {
    v29 = sub_29D939D28();
    v28 = [v11 _systemImageNamed_];

    if (!v28)
    {
      v28 = [objc_allocWithZone(MEMORY[0x29EDC7AC8]) init];
    }
  }

  v30 = v70;
  v31 = v69;
  *(v7 + 208) = v60;
  *(v7 + 216) = v56;
  *(v7 + 224) = v28;
  *(v7 + 232) = 0;
  *(v7 + 240) = v26;
  *(v7 + 248) = 0x403D000000000000;
  *(v7 + 256) = v30;
  *(v7 + 264) = 4;
  *(v7 + 272) = v31;
  *(v7 + 280) = v4;
  *(v7 + 288) = v5;
  v32 = sub_29D9334A8();
  v57 = v33;
  v61 = v32;
  v34 = [v63 hk_otherKeyColor];
  sub_29D935E88();
  MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
  strcpy(v75, "LifeFactors.");
  BYTE5(v75[1]) = 0;
  HIWORD(v75[1]) = -5120;
  MEMORY[0x29ED6A240](0xD000000000000012, 0x800000029D959510);
  MEMORY[0x29ED6A240](v75[0], v75[1]);

  v68 = 0;
  v67 = 0;
  v35 = sub_29D939D28();
  v36 = [v11 systemImageNamed_];

  if (!v36)
  {
    v37 = sub_29D939D28();
    v36 = [v11 _systemImageNamed_];

    if (!v36)
    {
      v36 = [objc_allocWithZone(MEMORY[0x29EDC7AC8]) init];
    }
  }

  v38 = v68;
  v39 = v67;
  *(v7 + 296) = v61;
  *(v7 + 304) = v57;
  *(v7 + 312) = v36;
  *(v7 + 320) = 0;
  *(v7 + 328) = v34;
  *(v7 + 336) = 0x4039000000000000;
  *(v7 + 344) = v38;
  *(v7 + 352) = 6;
  *(v7 + 360) = v39;
  *(v7 + 368) = v4;
  *(v7 + 376) = v5;
  v64 = sub_29D9334A8();
  v41 = v40;
  v42 = [v63 hk_mindfulnessKeyColor];
  v76 = v65;
  v77 = v5;
  sub_29D935E88();
  MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
  strcpy(v75, "LifeFactors.");
  BYTE5(v75[1]) = 0;
  HIWORD(v75[1]) = -5120;
  MEMORY[0x29ED6A240](0x4D6C7566646E694DLL, 0xEE00736574756E69);
  MEMORY[0x29ED6A240](v75[0], v75[1]);

  v43 = v5;
  LOBYTE(v76) = 0;
  LOBYTE(v75[0]) = 0;
  v44 = sub_29D939D28();
  v45 = [v11 systemImageNamed_];

  if (!v45)
  {
    v46 = sub_29D939D28();
    v45 = [v11 _systemImageNamed_];

    if (!v45)
    {
      v45 = [objc_allocWithZone(MEMORY[0x29EDC7AC8]) init];
    }
  }

  v47 = v76;
  v48 = v75[0];
  *(v7 + 384) = v64;
  *(v7 + 392) = v41;
  *(v7 + 400) = v45;
  *(v7 + 408) = 0;
  *(v7 + 416) = v42;
  *(v7 + 424) = 0x403A000000000000;
  *(v7 + 432) = v47;
  *(v7 + 440) = 7;
  *(v7 + 448) = v48;
  *(v7 + 456) = v65;
  *(v7 + 464) = v43;
  v49 = type metadata accessor for BulletedIconListView();
  v50 = objc_allocWithZone(v49);
  *&v50[OBJC_IVAR____TtC5Heart20BulletedIconListView____lazy_storage___stackView] = 0;
  *&v50[OBJC_IVAR____TtC5Heart20BulletedIconListView_bulletedItems] = v7;
  v66.receiver = v50;
  v66.super_class = v49;
  v51 = objc_msgSendSuper2(&v66, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_29D765420();
  v52 = [v62 contentView];
  [v52 addSubview_];

  v53 = [v62 contentView];
  [v51 hk:v53 alignConstraintsWithView:?];
}

id sub_29D739934(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AFibBurdenOnboardingLifeFactorsViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D7399D8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC5Heart45AFibBurdenOnboardingLifeFactorsViewController_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

void sub_29D739A24()
{
  v1 = [v0 navigationItem];
  sub_29D69567C(0, &qword_2A17B2B08, 0x29EDC7940);
  sub_29D69567C(0, &qword_2A17B3678, 0x29EDC7908);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29D93A738();
  v3 = sub_29D93A2E8();
  [v1 setRightBarButtonItem_];
}

void sub_29D739B58(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_29D739C78()
{
  if (!qword_2A17B3680)
  {
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3680);
    }
  }
}

void sub_29D739CF4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x800000029D95D900 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_29D93AD78();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_29D739D88(uint64_t a1)
{
  v2 = sub_29D739F50();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D739DC4(uint64_t a1)
{
  v2 = sub_29D739F50();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t CardioFitnessClassificationStatus.encode(to:)(void *a1, uint64_t a2)
{
  sub_29D73A51C(0, &unk_2A1A21F90, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v10 - v7;
  sub_29D693E2C(a1, a1[3]);
  sub_29D739F50();
  sub_29D93AED8();
  sub_29D93ACF8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_29D739F50()
{
  result = qword_2A1A23BD0;
  if (!qword_2A1A23BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A23BD0);
  }

  return result;
}

uint64_t CardioFitnessClassificationStatus.hashValue.getter(char a1)
{
  sub_29D93AE58();
  sub_29D93AE78();
  return sub_29D93AE98();
}

uint64_t CardioFitnessClassificationStatus.init(from:)(void *a1)
{
  sub_29D73A51C(0, &qword_2A17B3688, MEMORY[0x29EDC9E80]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v11 - v7;
  v9 = sub_29D693E2C(a1, a1[3]);
  sub_29D739F50();
  sub_29D93AEC8();
  if (!v1)
  {
    v9 = sub_29D93AC68();
    (*(v5 + 8))(v8, v4);
  }

  sub_29D69417C(a1);
  return v9 & 1;
}

uint64_t sub_29D73A190@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_29D73A51C(0, &qword_2A17B3688, MEMORY[0x29EDC9E80]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v13 - v9;
  sub_29D693E2C(a1, a1[3]);
  sub_29D739F50();
  sub_29D93AEC8();
  if (v2)
  {
    return sub_29D69417C(a1);
  }

  v11 = sub_29D93AC68();
  (*(v7 + 8))(v10, v6);
  result = sub_29D69417C(a1);
  *a2 = v11 & 1;
  return result;
}

uint64_t sub_29D73A31C(void *a1)
{
  sub_29D73A51C(0, &unk_2A1A21F90, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v9 - v6;
  sub_29D693E2C(a1, a1[3]);
  sub_29D739F50();
  sub_29D93AED8();
  sub_29D93ACF8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_29D73A464()
{
  sub_29D93AE58();
  sub_29D93AE78();
  return sub_29D93AE98();
}

uint64_t sub_29D73A4D8(uint64_t a1)
{
  sub_29D93AE58();
  sub_29D93AE78();
  return sub_29D93AE98();
}

void sub_29D73A51C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D739F50();
    v7 = a3(a1, &type metadata for CardioFitnessClassificationStatus.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D73A584()
{
  result = qword_2A17B3690;
  if (!qword_2A17B3690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3690);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CardioFitnessClassificationStatus(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_29D73A69C()
{
  result = qword_2A17B3698;
  if (!qword_2A17B3698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3698);
  }

  return result;
}

unint64_t sub_29D73A6F4()
{
  result = qword_2A1A23BC0;
  if (!qword_2A1A23BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A23BC0);
  }

  return result;
}

unint64_t sub_29D73A74C()
{
  result = qword_2A1A23BC8;
  if (!qword_2A1A23BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A23BC8);
  }

  return result;
}

uint64_t sub_29D73A7A0()
{
  v0 = sub_29D933F78();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D937898();
  sub_29D6FD494(v5, qword_2A1A2C008);
  sub_29D69C6C0(v5, qword_2A1A2C008);
  (*(v1 + 104))(v4, *MEMORY[0x29EDC37C8], v0);
  sub_29D933F68();
  (*(v1 + 8))(v4, v0);
  return sub_29D937888();
}

uint64_t sub_29D73A8F0()
{
  v0 = sub_29D937898();
  sub_29D6FD494(v0, qword_2A1A2BF40);
  sub_29D69C6C0(v0, qword_2A1A2BF40);
  return sub_29D937888();
}

uint64_t sub_29D73A968()
{
  v0 = sub_29D937898();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6A9ED4(0);
  v6 = v5;
  sub_29D6FD494(v5, qword_2A1A2BF58);
  sub_29D69C6C0(v6, qword_2A1A2BF58);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v7 = sub_29D69C6C0(v0, qword_2A1A2C008);
  (*(v1 + 16))(v4, v7, v0);
  type metadata accessor for HKHRAFibBurdenLoggingCategory(0);
  sub_29D73AD6C(&qword_2A1A22190, &protocol conformance descriptor for HKHRAFibBurdenLoggingCategory);
  sub_29D73AD6C(&qword_2A1A22188, &protocol conformance descriptor for HKHRAFibBurdenLoggingCategory);
  sub_29D73AD6C(&unk_2A1A22160, &protocol conformance descriptor for HKHRAFibBurdenLoggingCategory);
  sub_29D73AD6C(&qword_2A1A22180, &unk_29D93DF40);
  sub_29D73AD6C(&qword_2A1A22170, &unk_29D93DFA8);
  return sub_29D937208();
}

uint64_t sub_29D73AB9C()
{
  v0 = sub_29D933F78();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D937898();
  sub_29D6FD494(v5, qword_2A1A2BF28);
  sub_29D69C6C0(v5, qword_2A1A2BF28);
  (*(v1 + 104))(v4, *MEMORY[0x29EDC37C8], v0);
  sub_29D933F68();
  (*(v1 + 8))(v4, v0);
  return sub_29D937888();
}

uint64_t sub_29D73ACEC()
{
  v0 = sub_29D937898();
  sub_29D6FD494(v0, qword_2A1A2BF10);
  sub_29D69C6C0(v0, qword_2A1A2BF10);
  return sub_29D937888();
}

uint64_t sub_29D73AD6C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HKHRAFibBurdenLoggingCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D73ADB0(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(type metadata accessor for ProfileCharacteristicsViewControllerWithDoneButton()) initWithHealthStore_];
  [v3 setAccessType_];
  v4 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  [a1 presentViewController:v4 animated:1 completion:0];
}

id sub_29D73B05C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileCharacteristicsViewControllerWithDoneButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D73B0B8(uint64_t a1)
{
  v2 = sub_29D937898();
  v79 = *(v2 - 8);
  v80 = v2;
  v4 = MEMORY[0x2A1C7C4A8](v2, v3);
  v78 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v77 = &v70 - v7;
  v8 = sub_29D9342F8();
  v74 = *(v8 - 8);
  v75 = v8;
  v10 = MEMORY[0x2A1C7C4A8](v8, v9);
  v73 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v76 = &v70 - v13;
  v14 = sub_29D934358();
  v70 = *(v14 - 8);
  v71 = v14;
  MEMORY[0x2A1C7C4A8](v14, v15);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D73B834(0);
  v72 = v18;
  v20 = MEMORY[0x2A1C7C4A8](v18, v19);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x2A1C7C4A8](v20, v23);
  v26 = &v70 - v25;
  MEMORY[0x2A1C7C4A8](v24, v27);
  v29 = &v70 - v28;
  sub_29D69BECC(0);
  v31 = v30;
  v32 = *(v30 - 8);
  v34 = MEMORY[0x2A1C7C4A8](v30, v33);
  v36 = &v70 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v34, v37);
  v39 = &v70 - v38;
  v40 = a1;
  sub_29D73B948(a1, v29, sub_29D73B834);
  if ((*(v32 + 48))(v29, 1, v31) == 1)
  {
    sub_29D73B9B0(v29, sub_29D73B834);
    v41 = v78;
    sub_29D934D28();
    sub_29D73B948(v40, v26, sub_29D73B834);
    v42 = sub_29D937878();
    v43 = sub_29D93A288();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v81 = v45;
      *v44 = 136446210;
      sub_29D73B948(v26, v22, sub_29D73B834);
      v46 = sub_29D939DB8();
      v48 = v47;
      sub_29D73B9B0(v26, sub_29D73B834);
      v49 = sub_29D6C2364(v46, v48, &v81);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_29D677000, v42, v43, "GeneratorContext.country is empty: %{public}s", v44, 0xCu);
      sub_29D69417C(v45);
      MEMORY[0x29ED6BE30](v45, -1, -1);
      MEMORY[0x29ED6BE30](v44, -1, -1);
    }

    else
    {

      sub_29D73B9B0(v26, sub_29D73B834);
    }

    (*(v79 + 8))(v41, v80);
  }

  else
  {
    sub_29D73B8E4(v29, v39);
    sub_29D73B948(v39, v36, sub_29D69BECC);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v66 = v70;
      v65 = v71;
      (*(v70 + 32))(v17, v36, v71);
      v67 = sub_29D934348();
      (*(v66 + 8))(v17, v65);
      sub_29D73B9B0(v39, sub_29D69BECC);
      return v67;
    }

    v51 = v74;
    v50 = v75;
    v52 = v76;
    (*(v74 + 32))(v76, v36, v75);
    v53 = v77;
    sub_29D934D28();
    v54 = v73;
    (*(v51 + 16))(v73, v52, v50);
    v55 = sub_29D937878();
    v56 = sub_29D93A288();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v81 = v58;
      *v57 = 136446210;
      sub_29D73B88C();
      v59 = sub_29D93ADF8();
      v60 = v54;
      v62 = v61;
      v63 = *(v51 + 8);
      v63(v60, v50);
      v64 = sub_29D6C2364(v59, v62, &v81);

      *(v57 + 4) = v64;
      _os_log_impl(&dword_29D677000, v55, v56, "Could not reference Mobile Country Code from GeneratorContext with error: %{public}s", v57, 0xCu);
      sub_29D69417C(v58);
      MEMORY[0x29ED6BE30](v58, -1, -1);
      MEMORY[0x29ED6BE30](v57, -1, -1);

      (*(v79 + 8))(v77, v80);
      v63(v76, v50);
    }

    else
    {

      v69 = *(v51 + 8);
      v69(v54, v50);
      (*(v79 + 8))(v53, v80);
      v69(v52, v50);
    }

    sub_29D73B9B0(v39, sub_29D69BECC);
  }

  return 0;
}

void sub_29D73B834(uint64_t a1)
{
  if (!qword_2A1A21ED0)
  {
    sub_29D69BECC(255);
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A21ED0);
    }
  }
}

unint64_t sub_29D73B88C()
{
  result = qword_2A1A24770;
  if (!qword_2A1A24770)
  {
    sub_29D9342F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A24770);
  }

  return result;
}

uint64_t sub_29D73B8E4(uint64_t a1, uint64_t a2)
{
  sub_29D69BECC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D73B948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D73B9B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D73BA10()
{
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D73BA9C(uint64_t a1, void *a2)
{
  sub_29D73C0A4(0);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D9371A8();
  v31 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C3320(0, &qword_2A1A22330, MEMORY[0x29EDB8AC0]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v31 - v15;
  v17 = [v2 profileIdentifier];
  v18 = [v17 type];

  if (v18 == 1)
  {
    v19 = *MEMORY[0x29EDBA6F0];
    if (a2)
    {
      a2 = sub_29D939D28();
    }

    v20 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v19 healthStore:v2 currentCountryCode:a2];

    sub_29D6B8230();
    v21 = sub_29D937288();
    sub_29D937278();
    v35 = v21;
    sub_29D73C308(0, &qword_2A1A21F50, MEMORY[0x29EDC9E90]);
    v22 = v31;
    v23 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_29D93DDB0;
    (*(v22 + 16))(v24 + v23, v10, v7);
    v25 = MEMORY[0x29EDB89F8];
    sub_29D6C3320(0, &qword_2A1A22410, MEMORY[0x29EDB89F8]);
    sub_29D6C3444(&qword_2A1A22420, &qword_2A1A22410, v25, MEMORY[0x29EDB8A00]);

    v26 = v32;
    sub_29D938518();

    sub_29D73C2C0(&qword_2A1A226D0, sub_29D73C0A4, MEMORY[0x29EDB88B0]);
    v27 = v34;
    v28 = sub_29D938418();

    (*(v33 + 8))(v26, v27);
    (*(v22 + 8))(v10, v7);
    return v28;
  }

  else
  {
    sub_29D938348();
    sub_29D6C3444(&qword_2A17B1B60, &qword_2A1A22330, MEMORY[0x29EDB8AC0], MEMORY[0x29EDB8AC8]);
    v29 = sub_29D938418();
    (*(v13 + 8))(v16, v12);
  }

  return v29;
}

void sub_29D73C0A4(uint64_t a1)
{
  if (!qword_2A1A226C8)
  {
    sub_29D73C1B0(255);
    v1 = MEMORY[0x29EDB89F8];
    sub_29D6C3320(255, &qword_2A1A22410, MEMORY[0x29EDB89F8]);
    sub_29D73C2C0(&qword_2A1A22468, sub_29D73C1B0, MEMORY[0x29EDB89C0]);
    sub_29D6C3444(&qword_2A1A22420, &qword_2A1A22410, v1, MEMORY[0x29EDB8A00]);
    v2 = sub_29D938088();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A226C8);
    }
  }
}

void sub_29D73C1B0(uint64_t a1)
{
  if (!qword_2A1A22460)
  {
    sub_29D73C308(255, &unk_2A1A22278, MEMORY[0x29EDC9A40]);
    sub_29D73C24C();
    v1 = sub_29D9381B8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22460);
    }
  }
}

unint64_t sub_29D73C24C()
{
  result = qword_2A1A22270;
  if (!qword_2A1A22270)
  {
    sub_29D73C308(255, &unk_2A1A22278, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22270);
  }

  return result;
}

uint64_t sub_29D73C2C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D73C308(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D9371A8();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

id sub_29D73C368()
{
  v1 = OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController____lazy_storage___bpjControl;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController____lazy_storage___bpjControl);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController____lazy_storage___bpjControl);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC51F8]) initWithHealthStore_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_29D73C460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_opt_self() sharedApplication];
  v8 = sub_29D9336B8();
  sub_29D73F804(MEMORY[0x29EDCA190], sub_29D73F1BC, &unk_2A17B3710, type metadata accessor for OpenExternalURLOptionsKey, sub_29D6959E0);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_29D740418(&qword_2A17B3700, type metadata accessor for OpenExternalURLOptionsKey, &unk_29D93F538);
  v9 = sub_29D939C58();

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v12[4] = sub_29D73F1B0;
  v12[5] = v10;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1107296256;
  v12[2] = sub_29D73C804;
  v12[3] = &unk_2A2443768;
  v11 = _Block_copy(v12);
  sub_29D695554(a2, a3);

  [v7 openURL:v8 options:v9 completionHandler:v11];
  _Block_release(v11);
}

void sub_29D73C65C(char a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  if ((a1 & 1) == 0)
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v5 = sub_29D937898();
    sub_29D69C6C0(v5, qword_2A1A2BF10);
    v6 = sub_29D937878();
    v7 = sub_29D93A288();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315394;
      v10 = sub_29D93AF08();
      v12 = sub_29D6C2364(v10, v11, &v13);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D95DB60, &v13);
      _os_log_impl(&dword_29D677000, v6, v7, "[%s.%s]: Failed to open URL", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v9, -1, -1);
      MEMORY[0x29ED6BE30](v8, -1, -1);
    }
  }

  if (a2)
  {
    a2();
  }
}

uint64_t sub_29D73C804(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_29D73C858(char a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = sub_29D73C368();

      aBlock[4] = a3;
      aBlock[5] = a4;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29D8E44F0;
      aBlock[3] = &unk_2A24437B8;
      v12 = _Block_copy(aBlock);

      [v11 saveJournal:a6 completion:v12];
      _Block_release(v12);
    }
  }

  else
  {
    (a3)(0, a2, a3, a4, a5, a6);
  }
}

id sub_29D73CA9C()
{
  v1 = [v0 presentationController];

  return v1;
}

void sub_29D73CAD4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v8[4] = a3;
    v8[5] = a4;
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 1107296256;
    v8[2] = sub_29D6C1F10;
    v8[3] = &unk_2A2443790;
    v7 = _Block_copy(v8);
  }

  else
  {
    v7 = 0;
  }

  [v4 presentViewController:a1 animated:a2 & 1 completion:v7];
  _Block_release(v7);
}

void sub_29D73CBAC(uint64_t a1, char a2)
{
  sub_29D69567C(0, &unk_2A17B3720, 0x29EDC7DA8);
  v4 = sub_29D939F18();
  [v2 setViewControllers:v4 animated:a2 & 1];
}

uint64_t sub_29D73CC38(uint64_t a1, uint64_t a2)
{
  sub_29D6FE77C(a2, v11);
  v4 = v12;
  if (v12)
  {
    v5 = sub_29D693E2C(v11, v12);
    v6 = *(v4 - 8);
    MEMORY[0x2A1C7C4A8](v5, v5);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_29D93AD68();
    (*(v6 + 8))(v8, v4);
    sub_29D69417C(v11);
  }

  else
  {
    v9 = 0;
  }

  [v2 showViewController:a1 sender:v9];
  return sub_29D936978();
}

void sub_29D73CD98(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6[4] = a2;
    v6[5] = a3;
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 1107296256;
    v6[2] = sub_29D6C1F10;
    v6[3] = &unk_2A2443678;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  [v3 dismissViewControllerAnimated:a1 & 1 completion:v5];
  _Block_release(v5);
}

uint64_t sub_29D73CE68()
{
  sub_29D7401EC(0, &unk_2A17B37B0, MEMORY[0x29EDCA398]);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v4 = &v20 - v3;
  if ((v0[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_isInNavigationController] & 1) == 0)
  {
    v5 = objc_allocWithZone(MEMORY[0x29EDC5F58]);
    v6 = sub_29D939D28();
    v7 = [v5 initWithTitle:v6 detailText:0 icon:0];

    v8 = &v0[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_rootViewController];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 1);
      ObjectType = swift_getObjectType();
      sub_29D6C5040(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_29D940030;
      *(v11 + 32) = v7;
      v12 = *(v9 + 24);
      v13 = v7;
      v12(v11, 0, ObjectType, v9);

      sub_29D936978();
    }
  }

  v14 = sub_29D93A028();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_29D939FF8();
  v15 = v0;
  v16 = sub_29D939FE8();
  v17 = swift_allocObject();
  v18 = MEMORY[0x29EDCA390];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v15;
  sub_29D6BEBA4(0, 0, v4, &unk_29D945358, v17);
}

uint64_t sub_29D73D0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v4[7] = sub_29D939FF8();
  v4[8] = sub_29D939FE8();
  v5 = swift_task_alloc();
  v4[9] = v5;
  *v5 = v4;
  v5[1] = sub_29D73D178;

  return sub_29D73D59C();
}

uint64_t sub_29D73D178(char a1)
{
  *(*v1 + 80) = a1;

  v3 = sub_29D939FD8();

  return MEMORY[0x2A1C73D48](sub_29D73D2BC, v3, v2);
}

uint64_t sub_29D73D2BC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 80);

  v3 = sub_29D8CEF30(v2);
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 24);
  v8 = swift_unknownObjectRetain();
  v7(v8, &off_2A2443618, ObjectType, v5);
  if (*(v1 + OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_isInNavigationController))
  {
    v9 = *(v0 + 48) + OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_rootViewController;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v9 + 8);
      swift_getObjectType();
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      v11 = *(v10 + 32);
      v12 = v3;
      v11();

      sub_29D936978();
      sub_29D6FE6B0(v0 + 16);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v9 + 8);
      v14 = swift_getObjectType();
      v15 = (*(v13 + 8))(v14, v13);
      sub_29D936978();
      if (v15)
      {
        [v15 setDelegate_];

        goto LABEL_11;
      }
    }
  }

  else
  {
    v16 = *(v0 + 48);
    v17 = sub_29D8CEF30(*(v0 + 80));
    v19 = v18;
    v20 = swift_getObjectType();
    v21 = *(v19 + 24);
    swift_unknownObjectRetain();
    v21(v1, &off_2A2443618, v20, v19);
    v22 = v16 + OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_rootViewController;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v23 = *(v22 + 8);
      v24 = swift_getObjectType();
      sub_29D6C5040(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_29D940030;
      *(v25 + 32) = v17;
      v26 = *(v23 + 24);
      v27 = v17;
      v26(v25, 0, v24, v23);

      sub_29D936978();

      goto LABEL_11;
    }
  }

LABEL_11:
  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_29D73D59C()
{
  v1[4] = v0;
  v1[5] = sub_29D939FF8();
  v1[6] = sub_29D939FE8();
  v2 = swift_task_alloc();
  v1[7] = v2;
  *v2 = v1;
  v2[1] = sub_29D73D64C;

  return sub_29D73D918();
}

uint64_t sub_29D73D64C(char a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_29D939FD8();
    v7 = v6;
    v8 = sub_29D73D8A8;
  }

  else
  {
    *(v4 + 25) = a1 & 1;
    v5 = sub_29D939FD8();
    v7 = v9;
    v8 = sub_29D73D7D0;
  }

  return MEMORY[0x2A1C73D48](v8, v5, v7);
}

uint64_t sub_29D73D7D0()
{
  v1 = *(v0 + 25);

  if (v1 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;

    sub_29D9383D8();
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_29D73D8A8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_29D73D918()
{
  v1[2] = v0;
  sub_29D740108(0, &qword_2A17B2908, MEMORY[0x29EDBA238]);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_29D740108(0, &qword_2A17B2918, MEMORY[0x29EDBA210]);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_29D933CE8();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = sub_29D9339F8();
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  sub_29D939FF8();
  v1[17] = sub_29D939FE8();
  v7 = sub_29D939FD8();
  v1[18] = v7;
  v1[19] = v6;

  return MEMORY[0x2A1C73D48](sub_29D73DB70, v7, v6);
}

uint64_t sub_29D73DB70()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  v26 = objc_opt_self();
  sub_29D933C88();
  sub_29D9339E8();
  sub_29D933938();
  v9 = *(v4 + 8);
  v9(v3, v5);
  sub_29D933AD8();
  v9(v2, v5);
  (*(v8 + 8))(v6, v7);
  v10 = sub_29D933958();
  v9(v1, v5);
  sub_29D9339E8();
  v11 = sub_29D933958();
  v9(v1, v5);
  v12 = [v26 predicateForSamplesWithStartDate:v10 endDate:v11 inclusiveEndDates:1 options:0];
  v0[20] = v12;

  sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
  v13 = [swift_getObjCClassFromMetadata() hypertensionEventType];
  if (v13)
  {
    v15 = v13;
    v17 = v0[7];
    v16 = v0[8];
    v18 = v0[6];
    v19 = v0[2];
    sub_29D69567C(0, &unk_2A17B37A0, 0x29EDBAD60);
    v20 = v12;
    sub_29D939AB8();

    sub_29D740178(0);
    v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_29D93DDB0;
    (*(v17 + 16))(v22 + v21, v16, v18);
    sub_29D939B28();
    v23 = *(v19 + OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_healthStore);
    v24 = swift_task_alloc();
    v0[21] = v24;
    *v24 = v0;
    v24[1] = sub_29D73DE50;
    v14 = v0[3];
    v13 = v23;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2A1C5B578](v13, v14);
}

uint64_t sub_29D73DE50(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v5 = *(v3 + 152);
  v6 = *(v3 + 144);
  if (v1)
  {
    v7 = sub_29D73E0EC;
  }

  else
  {
    v7 = sub_29D73DF94;
  }

  return MEMORY[0x2A1C73D48](v7, v6, v5);
}

uint64_t sub_29D73DF94()
{
  v1 = v0[22];

  if (v1 >> 62)
  {
    v11 = sub_29D93A928();
  }

  else
  {
    v11 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v0[20];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];

  (*(v7 + 8))(v6, v8);
  (*(v3 + 8))(v4, v5);

  v9 = v0[1];

  return v9(v11 > 0);
}

uint64_t sub_29D73E0EC()
{
  v1 = v0[20];
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v7 = v0[3];
  v6 = v0[4];

  (*(v6 + 8))(v5, v7);
  (*(v2 + 8))(v3, v4);

  v8 = v0[1];

  return v8(0);
}

void sub_29D73E1F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v11 = a1;
  ObjectType = swift_getObjectType();

  sub_29D73E6B4(v11, a2, a4, v7, a6, ObjectType, a3);
}

void sub_29D73E26C(unsigned __int8 a1)
{
  v2 = v1;
  sub_29D7401EC(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = v32 - v6;
  v8 = sub_29D9339F8();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v13 = (v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 <= 1u)
  {
    if (a1)
    {
      v15 = v11;
      sub_29D9339E8();
      v16 = sub_29D81CBA0(v13);
      (*(v9 + 8))(v13, v15);
      if (v16)
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }
    }

    else
    {
      v14 = 1;
    }

    goto LABEL_9;
  }

  if (a1 == 2)
  {
    v14 = 3;
LABEL_9:
    v17 = sub_29D8CEF30(v14);
    v19 = v18;
    ObjectType = swift_getObjectType();
    v21 = *(v19 + 24);
    v22 = swift_unknownObjectRetain();
    v21(v22, &off_2A2443618, ObjectType, v19);
    v23 = v2 + OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_rootViewController;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v24 = *(v23 + 8);
      swift_getObjectType();
      memset(v32, 0, sizeof(v32));
      v25 = *(v24 + 32);
      v26 = v17;
      v25();
      sub_29D936978();

      sub_29D6FE6B0(v32);
    }

    else
    {
    }

    return;
  }

  v27 = v2 + OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_rootViewController;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v28 = *(v27 + 8);
    v29 = swift_getObjectType();
    v30 = HKHRBloodPressureDetailRoomBaseLink();
    sub_29D9336D8();

    v31 = sub_29D9336F8();
    (*(*(v31 - 8) + 56))(v7, 0, 1, v31);
    (*(v28 + 40))(1, v7, 0, 0, v29, v28);
    sub_29D936978();
    sub_29D6D96C0(v7);
  }
}

id sub_29D73E5D4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D73E69C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D73E6B4(char a1, void *a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 == 2)
  {
    sub_29D695734(0, &qword_2A17B3758, &protocol descriptor for BloodPressureJournalCreationStageViewController, 0);
    sub_29D695734(0, &qword_2A17B3760, &protocol descriptor for BloodPressureJournalCreationCompletionProviding, 1);
    v10 = a2;
    if (swift_dynamicCast())
    {
      v11 = *(*sub_29D693E2C(&v32, *(&v33 + 1)) + qword_2A17B3D00);
      sub_29D69417C(&v32);
      if (v11)
      {
        v12 = *(a3 + OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_healthStore);
        type metadata accessor for BloodPressureJournalLoggingFlowManager();
        *(swift_initStackObject() + 16) = v12;
        v13 = a3 + OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_rootViewController;
        Strong = swift_unknownObjectWeakLoadStrong();
        v15 = *(v13 + 8);
        v16 = *(a3 + OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_source);
        v17 = v12;
        sub_29D783C64(Strong, v15, 2, v16);

        sub_29D936978();
        return;
      }
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      sub_29D73FE80(&v32);
    }

    sub_29D73E26C(a4);
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v18 = sub_29D937898();
    sub_29D69C6C0(v18, qword_2A1A2C008);
    oslog = sub_29D937878();
    v19 = sub_29D93A2A8();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v32 = v21;
      *v20 = 136315650;
      v22 = sub_29D93AF08();
      v24 = sub_29D6C2364(v22, v23, &v32);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v25 = sub_29D939DA8();
      v27 = sub_29D6C2364(v25, v26, &v32);

      *(v20 + 14) = v27;
      *(v20 + 22) = 2080;
      v28 = sub_29D939DA8();
      v30 = sub_29D6C2364(v28, v29, &v32);

      *(v20 + 24) = v30;
      _os_log_impl(&dword_29D677000, oslog, v19, "[%s] Unable to proceed to next stage from %s due to reason: %s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v21, -1, -1);
      MEMORY[0x29ED6BE30](v20, -1, -1);
    }

    else
    {
    }
  }
}

void sub_29D73EA04(uint64_t a1, uint64_t (*a2)(), uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  sub_29D7401EC(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v39 - v10;
  v12 = sub_29D9336F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v39 - v19;
  sub_29D6D962C(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v40 = a3;
    v41 = a2;
    v30 = *(v13 + 32);
    v30(v20, v11, v12);
    if (v4[OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController_navigateToDetailRoomUponCompletion] == 1)
    {
      (*(v13 + 16))(v17, v20, v12);
      v31 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v32 = (v14 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
      v39 = v4;
      v33 = (v32 + 23) & 0xFFFFFFFFFFFFFFF8;
      v34 = swift_allocObject();
      v30((v34 + v31), v17, v12);
      v35 = (v34 + v32);
      v36 = v40;
      v37 = v41;
      *v35 = v41;
      v35[1] = v36;
      *(v34 + v33) = ObjectType;
      v4 = v39;
      v47 = sub_29D73EF74;
      v48 = v34;
      aBlock = MEMORY[0x29EDCA5F8];
      v44 = 1107296256;
      v45 = sub_29D6C1F10;
      v46 = &unk_2A2443718;
      v38 = _Block_copy(&aBlock);
      sub_29D695554(v37, v36);
    }

    else
    {
      if (!v41)
      {
        v38 = 0;
        goto LABEL_13;
      }

      v47 = v41;
      v48 = v40;
      aBlock = MEMORY[0x29EDCA5F8];
      v44 = 1107296256;
      v45 = sub_29D6C1F10;
      v46 = &unk_2A24436C8;
      v38 = _Block_copy(&aBlock);
    }

LABEL_13:
    [v4 dismissViewControllerAnimated:1 completion:v38];
    _Block_release(v38);
    (*(v13 + 8))(v20, v12);
    return;
  }

  sub_29D6D96C0(v11);
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v21 = sub_29D937898();
  sub_29D69C6C0(v21, qword_2A1A2BF10);
  v22 = sub_29D937878();
  v23 = sub_29D93A288();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock = v25;
    *v24 = 136315394;
    v26 = sub_29D93AF08();
    v28 = sub_29D6C2364(v26, v27, &aBlock);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D95DB60, &aBlock);
    _os_log_impl(&dword_29D677000, v22, v23, "[%s.%s]: Failed to construct deep link URL to go to detail room", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v25, -1, -1);
    MEMORY[0x29ED6BE30](v24, -1, -1);
  }

  if (a2)
  {
    v47 = a2;
    v48 = a3;
    aBlock = MEMORY[0x29EDCA5F8];
    v44 = 1107296256;
    v45 = sub_29D6C1F10;
    v46 = &unk_2A24436A0;
    v29 = _Block_copy(&aBlock);
  }

  else
  {
    v29 = 0;
  }

  [v4 dismissViewControllerAnimated:1 completion:v29];
  _Block_release(v29);
}

void sub_29D73EF74()
{
  v1 = *(sub_29D9336F8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);

  sub_29D73C460(v0 + v2, v6, v7, v8);
}

unint64_t sub_29D73F010(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x29EDC99B0];
    sub_29D73FF48(0, &qword_2A17B1128, MEMORY[0x29EDC99B0], MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC99C0]);
    v4 = sub_29D93ABA8();
    v5 = a1 + 32;

    while (1)
    {
      sub_29D73F25C(v5, &v14, &qword_2A17B3750, v3, sub_29D73FF9C);
      v6 = v14;
      v7 = v15;
      result = sub_29D6907F0(v14, v15);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v4[6] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      result = sub_29D6940E0(&v16, (v4[7] + 32 * result));
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
      v5 += 48;
      if (!--v1)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

void sub_29D73F1BC(uint64_t a1)
{
  if (!qword_2A17B3708)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    sub_29D740418(&qword_2A17B3700, type metadata accessor for OpenExternalURLOptionsKey, &unk_29D93F538);
    v1 = sub_29D93ABB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3708);
    }
  }
}

uint64_t sub_29D73F25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t sub_29D73F2CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x29EDC9D48];
    sub_29D73FF48(0, &qword_2A17B3770, MEMORY[0x29EDC9D48], MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9D50]);
    v4 = sub_29D93ABA8();
    v5 = a1 + 32;

    while (1)
    {
      sub_29D73F25C(v5, v14, &unk_2A17B3778, v3, sub_29D73FF9C);
      result = sub_29D6908F8(v14);
      if (v7)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = v4[6] + 40 * result;
      v9 = v14[0];
      v10 = v14[1];
      *(v8 + 32) = v15;
      *v8 = v9;
      *(v8 + 16) = v10;
      result = sub_29D6940E0(&v16, (v4[7] + 32 * result));
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
      v5 += 72;
      if (!--v1)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29D73F430(uint64_t a1)
{
  sub_29D73F6F0(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_29D6942F0(0);
    v9 = sub_29D93ABA8();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_29D73F758(v11, v7);
      v13 = *v7;
      v14 = v7[1];
      result = sub_29D6907F0(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
      result = sub_29D6943BC(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29D73F5E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D73FF48(0, &qword_2A17B1098, MEMORY[0x29EDC99B0], &type metadata for ArticleIdentifiers, MEMORY[0x29EDC99C0]);
    v3 = sub_29D93ABA8();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_29D935E88();
      result = sub_29D6907F0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

void sub_29D73F6F0(uint64_t a1)
{
  if (!qword_2A17B3730)
  {
    type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B3730);
    }
  }
}

uint64_t sub_29D73F758(uint64_t a1, uint64_t a2)
{
  sub_29D73F6F0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D73F804(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v5 = *(a1 + 16);
  if (v5)
  {
    a2(0);
    v10 = sub_29D93ABA8();
    v11 = a1 + 32;

    while (1)
    {
      sub_29D73F25C(v11, &v18, a3, a4, sub_29D7400A0);
      v12 = v18;
      result = a5(v18);
      if (v14)
      {
        break;
      }

      *(v10 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v10[6] + 8 * result) = v12;
      result = sub_29D6940E0(&v19, (v10[7] + 32 * result));
      v15 = v10[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v10[2] = v17;
      v11 += 40;
      if (!--v5)
      {

        return v10;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29D73F938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D695790(0);
    v3 = sub_29D93ABA8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_29D6959E0();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29D73FA18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x29EDCA198];
  }

  sub_29D7402F4(0);
  v3 = sub_29D93ABA8();
  v4 = *(a1 + 32);
  v16 = *(a1 + 40);
  v5 = *(a1 + 56);
  result = sub_29D6959E4();
  v7 = v16;
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v3;
  }

  v9 = (a1 + 88);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v10 = v3[7] + 24 * result;
    *v10 = v7;
    *(v10 + 16) = v5;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 4;
    v4 = *(v9 - 3);
    v17 = *(v9 - 1);
    v5 = *v9;
    swift_unknownObjectRetain();
    result = sub_29D6959E4();
    v9 = v14;
    v7 = v17;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_29D73FB40(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x29EDCA198];
  }

  sub_29D73FC3C(0);
  v3 = sub_29D93ABA8();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_29D6959E4();
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_29D935E88();
    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;
    sub_29D935E88();
    v8 = sub_29D6959E4();
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_29D73FC3C(uint64_t a1)
{
  if (!qword_2A1A21FA0)
  {
    type metadata accessor for HKBloodPressureClassificationGuidelines(255);
    sub_29D73FCE8(255);
    sub_29D740418(qword_2A1A22018, type metadata accessor for HKBloodPressureClassificationGuidelines, &unk_29D93DFE0);
    v1 = sub_29D93ABB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A21FA0);
    }
  }
}

void sub_29D73FCE8(uint64_t a1)
{
  if (!qword_2A1A22288)
  {
    sub_29D7403BC(255, &qword_2A1A25730, MEMORY[0x29EDC1640], MEMORY[0x29EDC1648], 1);
    v1 = sub_29D939FB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22288);
    }
  }
}

unint64_t sub_29D73FD5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D73FF48(0, &unk_2A17B3740, MEMORY[0x29EDC99B0], MEMORY[0x29EDC99B0], MEMORY[0x29EDC99C0]);
    v3 = sub_29D93ABA8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;
      sub_29D935E88();
      sub_29D935E88();
      result = sub_29D6907F0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t sub_29D73FE80(uint64_t a1)
{
  sub_29D73FEDC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D73FEDC(uint64_t a1)
{
  if (!qword_2A17B3768)
  {
    sub_29D695734(255, &qword_2A17B3760, &protocol descriptor for BloodPressureJournalCreationCompletionProviding, 1);
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3768);
    }
  }
}

void sub_29D73FF48(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    v6 = sub_29D93ABB8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D73FF9C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29D740000(uint64_t a1)
{
  if (!qword_2A17B3780)
  {
    type metadata accessor for OpenURLOptionsKey(255);
    sub_29D740418(&unk_2A17B55C0, type metadata accessor for OpenURLOptionsKey, &unk_29D93F3A4);
    v1 = sub_29D93ABB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3780);
    }
  }
}

void sub_29D7400A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29D740108(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D69567C(255, &unk_2A17B37A0, 0x29EDBAD60);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29D740178(uint64_t a1)
{
  if (!qword_2A17B2910)
  {
    sub_29D740108(255, &qword_2A17B2918, MEMORY[0x29EDBA210]);
    v1 = sub_29D93AD48();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2910);
    }
  }
}

void sub_29D7401EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D740240(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29D6AC948;

  return sub_29D73D0C8(a1, v4, v5, v6);
}

void sub_29D7402F4(uint64_t a1)
{
  if (!qword_2A17B37D0)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    sub_29D7403BC(255, &qword_2A17B37D8, MEMORY[0x29EDC2A30], MEMORY[0x29EDC2040], 0);
    sub_29D740418(&unk_2A17B37E0, type metadata accessor for UIUserInterfaceSizeClass, &unk_29D93F360);
    v1 = sub_29D93ABB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B37D0);
    }
  }
}

uint64_t sub_29D7403BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29D740418(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D740490()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize:4 weight:-1 scale:51.0];
  v2 = [objc_opt_self() systemPinkColor];
  v4 = [v0 configurationWithHierarchicalColor_];

  v3 = [v1 configurationByApplyingConfiguration_];
  sub_29D934778();
}

void sub_29D74059C()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize:4 weight:-1 scale:82.0];
  v2 = [objc_opt_self() systemPinkColor];
  v3 = [v0 configurationWithHierarchicalColor_];

  v4 = [v1 configurationByApplyingConfiguration_];
  v5 = sub_29D939D28();
  v6 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (v6)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_29D7406DC()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize:4 weight:-1 scale:82.0];
  v2 = [objc_opt_self() systemPinkColor];
  v3 = [v0 configurationWithHierarchicalColor_];

  v4 = [v1 configurationByApplyingConfiguration_];
  v5 = sub_29D939D28();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  if (v6)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_29D74081C()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize:4 weight:-1 scale:82.0];
  v2 = [objc_opt_self() systemPinkColor];
  v3 = [v0 configurationWithHierarchicalColor_];

  v4 = [v1 configurationByApplyingConfiguration_];
  v5 = sub_29D939D28();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  if (v6)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_29D7409C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_opt_self() sharedApplication];
  v8 = sub_29D9336B8();
  sub_29D73F168(MEMORY[0x29EDCA190]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_29D7427BC(&qword_2A17B3700, type metadata accessor for OpenExternalURLOptionsKey, &unk_29D93F538);
  v9 = sub_29D939C58();

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v12[4] = sub_29D73F1B0;
  v12[5] = v10;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1107296256;
  v12[2] = sub_29D73C804;
  v12[3] = &unk_2A2443928;
  v11 = _Block_copy(v12);
  sub_29D695554(a2, a3);

  [v7 openURL:v8 options:v9 completionHandler:v11];
  _Block_release(v11);
}

void sub_29D740C58(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v8[4] = a3;
    v8[5] = a4;
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 1107296256;
    v8[2] = sub_29D6C1F10;
    v8[3] = &unk_2A2443950;
    v7 = _Block_copy(v8);
  }

  else
  {
    v7 = 0;
  }

  [v4 presentViewController:a1 animated:a2 & 1 completion:v7];
  _Block_release(v7);
}

void sub_29D740D40(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6[4] = a2;
    v6[5] = a3;
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 1107296256;
    v6[2] = sub_29D6C1F10;
    v6[3] = &unk_2A2443860;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  [v3 dismissViewControllerAnimated:a1 & 1 completion:v5];
  _Block_release(v5);
}

void sub_29D740E10()
{
  v1 = v0;
  v2 = sub_29D9339F8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D9339E8();
  v7 = sub_29D81CBA0(v6);
  (*(v3 + 8))(v6, v2);
  if (*(v0 + OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_isInNavigationController))
  {
    sub_29D74109C(v7 & 1);
  }

  else
  {
    v8 = sub_29D8EB3E8(v7 & 1);
    v10 = v9;
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 24);
    v13 = swift_unknownObjectRetain();
    v12(v13, &off_2A2443808, ObjectType, v10);
    v14 = v1 + OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_rootViewController;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v14 + 8);
      v16 = swift_getObjectType();
      sub_29D6C5040(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_29D940030;
      *(v17 + 32) = v8;
      v18 = *(v15 + 24);
      v19 = v8;
      v18(v17, 0, v16, v15);

      sub_29D936978();
    }

    else
    {
    }
  }

  v20 = v1 + OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_rootViewController;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v21 = *(v20 + 8);
    v22 = swift_getObjectType();
    v23 = (*(v21 + 8))(v22, v21);
    sub_29D936978();
    if (v23)
    {
      [v23 setDelegate_];
    }
  }
}

void sub_29D74109C(uint64_t a1)
{
  v2 = a1;
  v16 = sub_29D8EB3E8(a1);
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 24);
  v7 = swift_unknownObjectRetain();
  v6(v7, &off_2A2443808, ObjectType, v4);
  if (v2 == 2)
  {
    v8 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
    v9 = v1 + OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_rootViewController;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v9 + 8);
      v11 = swift_getObjectType();
      (*(v10 + 16))(v8, 1, 0, 0, v11, v10);

      sub_29D936978();
    }

    else
    {
    }
  }

  else
  {
    v12 = v1 + OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_rootViewController;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 8);
      swift_getObjectType();
      memset(v17, 0, sizeof(v17));
      v14 = *(v13 + 32);
      v15 = v16;
      v14();
      sub_29D936978();

      sub_29D742868(v17, &qword_2A1A24810, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68], sub_29D6C5040);
      return;
    }
  }
}

uint64_t sub_29D74129C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  ObjectType = swift_getObjectType();

  return sub_29D741ED4(v9, a2, a3, a5, ObjectType, a4);
}

void sub_29D74130C(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a1 == 2)
  {
    v7 = *(a2 + OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_model);
    ObjectType = swift_getObjectType();
    v9 = (*(a4 + 8))(ObjectType, a4);
    v10 = 1;
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (!v9)
      {
LABEL_13:
        sub_29D74109C(v10);
        return;
      }

      swift_getKeyPath();
      v28 = v7;
      sub_29D7427BC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel, &unk_29D948F98);
      sub_29D933E18();

      v11 = *(v7 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__isHypertensiveCrisis);
      if (v11 != 2 && (v11 & 1) != 0)
      {
        v10 = 2;
        goto LABEL_13;
      }
    }

    sub_29D741688(1, 0, 0, a3);
    return;
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v12 = sub_29D937898();
  sub_29D69C6C0(v12, qword_2A1A2C008);
  v13 = a3;
  oslog = sub_29D937878();
  v14 = sub_29D93A2A8();

  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136446978;
    v17 = sub_29D93AF08();
    v19 = sub_29D6C2364(v17, v18, &v28);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_29D6C2364(0xD00000000000002ELL, 0x800000029D95DD60, &v28);
    *(v15 + 22) = 2080;
    v20 = swift_getObjectType();
    (*(a4 + 8))(v20, a4);
    v21 = sub_29D939DA8();
    v23 = sub_29D6C2364(v21, v22, &v28);

    *(v15 + 24) = v23;
    *(v15 + 32) = 2080;
    v24 = sub_29D939DA8();
    v26 = sub_29D6C2364(v24, v25, &v28);

    *(v15 + 34) = v26;
    _os_log_impl(&dword_29D677000, oslog, v14, "[%{public}s.%{public}s]: Unable to proceed to next stage from %s due to reason: %s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v16, -1, -1);
    MEMORY[0x29ED6BE30](v15, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_29D741688(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  swift_getObjectType();
  sub_29D742804(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  result = MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v14 = &v39 - v13;
  if (a1)
  {
    if (a4)
    {
      [a4 dismissViewControllerAnimated:1 completion:0];
    }

    if (*(v5 + OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_isDetailRoomOnStack))
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v15 = sub_29D937898();
      sub_29D69C6C0(v15, qword_2A1A2C008);
      v16 = sub_29D937878();
      v17 = sub_29D93A2A8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v40 = v19;
        *v18 = 136446466;
        v20 = sub_29D93AF08();
        v22 = sub_29D6C2364(v20, v21, &v40);

        *(v18 + 4) = v22;
        *(v18 + 12) = 2082;
        *(v18 + 14) = sub_29D6C2364(0xD000000000000037, 0x800000029D95DD90, &v40);
        _os_log_impl(&dword_29D677000, v16, v17, "[%{public}s.%{public}s]: Finished logging, dismissing root view controller", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v19, -1, -1);
        MEMORY[0x29ED6BE30](v18, -1, -1);
      }

      v23 = v5 + OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_rootViewController;
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v24 = *(v23 + 8);
        ObjectType = swift_getObjectType();
        (*(v24 + 48))(1, a2, a3, ObjectType, v24);

        return sub_29D936978();
      }
    }

    else
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v26 = sub_29D937898();
      sub_29D69C6C0(v26, qword_2A1A2C008);
      v27 = sub_29D937878();
      v28 = sub_29D93A2A8();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v40 = v30;
        *v29 = 136446466;
        v31 = sub_29D93AF08();
        v33 = sub_29D6C2364(v31, v32, &v40);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2082;
        *(v29 + 14) = sub_29D6C2364(0xD000000000000037, 0x800000029D95DD90, &v40);
        _os_log_impl(&dword_29D677000, v27, v28, "[%{public}s.%{public}s]: Finished logging, routing to blood pressure data room", v29, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v30, -1, -1);
        MEMORY[0x29ED6BE30](v29, -1, -1);
      }

      v34 = v5 + OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_rootViewController;
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v35 = *(v34 + 8);
        v36 = swift_getObjectType();
        v37 = HKHRBloodPressureDetailRoomBaseLink();
        sub_29D9336D8();

        v38 = sub_29D9336F8();
        (*(*(v38 - 8) + 56))(v14, 0, 1, v38);
        (*(v35 + 40))(1, v14, a2, a3, v36, v35);
        sub_29D936978();
        return sub_29D742868(v14, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D742804);
      }
    }
  }

  return result;
}

id sub_29D741BE8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D741CB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D741CC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29D7427BC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel, &unk_29D948F98);
  sub_29D933E18();

  *a2 = *(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__isHypertensiveCrisis);
  return result;
}

id sub_29D741DA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = type metadata accessor for BloodPressureJournalLoggingCoordinator();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_rootViewController + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a9;
  swift_unknownObjectWeakAssign();
  sub_29D936978();
  *&v15[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_model] = a2;
  *&v15[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_vcFactory] = a3;
  *&v15[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_healthStore] = a4;
  v15[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_isInNavigationController] = a5;
  v15[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_isDetailRoomOnStack] = a6;
  v19.receiver = v15;
  v19.super_class = v14;

  v16 = a4;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  sub_29D740E10();

  return v17;
}

uint64_t sub_29D741ED4(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a6;
  v27 = a4;
  v9 = sub_29D939968();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_29D939998();
  v14 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v18 = sub_29D93A468();
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  v20 = v27;
  *(v19 + 40) = v26;
  *(v19 + 48) = v20;
  aBlock[4] = sub_29D7427AC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A24439A0;
  v21 = _Block_copy(aBlock);
  v22 = a2;
  v23 = a3;

  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D7427BC(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29D742804(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v17, v13, v21);
  _Block_release(v21);

  (*(v10 + 8))(v13, v9);
  return (*(v14 + 8))(v17, v28);
}

void sub_29D7421D8(uint64_t a1, void (*a2)(), uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  sub_29D742804(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v39 - v10;
  v12 = sub_29D9336F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v39 - v19;
  sub_29D6D962C(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_29D742868(v11, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D742804);
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v21 = sub_29D937898();
    sub_29D69C6C0(v21, qword_2A1A2BF10);
    v22 = sub_29D937878();
    v23 = sub_29D93A288();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock = v25;
      *v24 = 136315394;
      v26 = sub_29D93AF08();
      v28 = sub_29D6C2364(v26, v27, &aBlock);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D95DB60, &aBlock);
      _os_log_impl(&dword_29D677000, v22, v23, "[%s.%s]: Failed to construct deep link URL to go to detail room", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v25, -1, -1);
      MEMORY[0x29ED6BE30](v24, -1, -1);
    }

    if (a2)
    {
      v47 = a2;
      v48 = a3;
      aBlock = MEMORY[0x29EDCA5F8];
      v44 = 1107296256;
      v45 = sub_29D6C1F10;
      v46 = &unk_2A2443888;
      v29 = _Block_copy(&aBlock);
    }

    else
    {
      v29 = 0;
    }

    [v4 dismissViewControllerAnimated:1 completion:v29];
    _Block_release(v29);
  }

  else
  {
    v41 = v4;
    v30 = *(v13 + 32);
    v30(v20, v11, v12);
    (*(v13 + 16))(v17, v20, v12);
    v31 = *(v13 + 80);
    v39 = a3;
    v40 = a2;
    v32 = (v31 + 16) & ~v31;
    v33 = (v14 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    v30((v34 + v32), v17, v12);
    v35 = (v34 + v33);
    v37 = v39;
    v36 = v40;
    *v35 = v40;
    v35[1] = v37;
    *(v34 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
    v47 = sub_29D742710;
    v48 = v34;
    aBlock = MEMORY[0x29EDCA5F8];
    v44 = 1107296256;
    v45 = sub_29D6C1F10;
    v46 = &unk_2A24438D8;
    v38 = _Block_copy(&aBlock);
    sub_29D695554(v36, v37);

    [v41 dismissViewControllerAnimated:1 completion:v38];
    _Block_release(v38);
    (*(v13 + 8))(v20, v12);
  }
}

void sub_29D742710()
{
  v1 = *(sub_29D9336F8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);

  sub_29D7409C4(v0 + v2, v6, v7, v8);
}

uint64_t sub_29D7427BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D742804(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D742868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void *sub_29D7428F0(uint64_t a1)
{
  v1[2] = 0xD00000000000001DLL;
  v1[3] = 0x800000029D95E0C0;
  v1[4] = 0x5F4D50425F4449;
  v1[5] = 0xE700000000000000;
  v3 = objc_opt_self();
  v4 = [v3 heartRateSectionDescription];
  v5 = sub_29D939D68();
  v7 = v6;

  v1[7] = v5;
  v1[8] = v7;
  v8 = [v3 heartRateThresholdOffDescription];
  v9 = sub_29D939D68();
  v11 = v10;

  v1[9] = v9;
  v1[10] = v11;
  v1[6] = a1;
  return v1;
}

uint64_t sub_29D7429C8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D9346E8();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v32 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v10 = v30 - v9;
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = v30 - v12;
  v14 = sub_29D934798();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7D00B0();
  v19 = sub_29D934758();
  (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v30[0] = objc_opt_self();
    v20 = [v30[0] isTachycardiaDetectionEnabled];
    v21 = *(v3 + 104);
    v30[1] = v19;
    v31 = a1;
    if (v20)
    {
      v22 = *MEMORY[0x29EDC1760];
      v21(v13, v22, v2);
    }

    else
    {
      v21(v13, *MEMORY[0x29EDC1768], v2);
      v22 = *MEMORY[0x29EDC1760];
    }

    v21(v10, v22, v2);
    v24 = sub_29D9346D8();
    v25 = *(v3 + 8);
    v25(v10, v2);
    v25(v13, v2);
    sub_29D7D0144(v24 & 1);
    if ([v30[0] isTachycardiaDetectionEnabled])
    {
      v26 = v22;
    }

    else
    {
      v26 = *MEMORY[0x29EDC1768];
    }

    v27 = v32;
    v21(v32, v26, v2);
    sub_29D9347C8();
    sub_29D9347A8();
    v25(v27, v2);
    a1 = v31;
    sub_29D9368E8();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v28 = sub_29D9368F8();
  return (*(*(v28 - 8) + 56))(a1, v23, 1, v28);
}

uint64_t sub_29D742D70(void *a1)
{
  sub_29D744388(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29D93F680;
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  *(v3 + 56) = MEMORY[0x29EDC99B0];
  *(v3 + 64) = sub_29D69AD24();
  *(v3 + 32) = v5;
  *(v3 + 40) = v4;
  v6 = objc_opt_self();
  sub_29D935E88();
  v7 = [v6 _countPerMinuteUnit];
  [a1 doubleValueForUnit_];
  v9 = v8;

  v10 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithDouble_];
  v11 = [v10 integerValue];

  v12 = MEMORY[0x29EDC9C10];
  *(v3 + 96) = MEMORY[0x29EDC9BA8];
  *(v3 + 104) = v12;
  *(v3 + 72) = v11;

  return sub_29D939D88();
}

uint64_t sub_29D742ED0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29D742F8C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() isTachycardiaDetectionEnabled];
  v3 = sub_29D9346E8();
  v4 = *(*(v3 - 8) + 104);
  v5 = MEMORY[0x29EDC1760];
  if (!v2)
  {
    v5 = MEMORY[0x29EDC1768];
  }

  v6 = *v5;

  return v4(a1, v6, v3);
}

uint64_t sub_29D74304C()
{
  v1 = *(*v0 + 56);
  sub_29D935E88();
  return v1;
}

uint64_t sub_29D743080()
{
  v1 = *(*v0 + 72);
  sub_29D935E88();
  return v1;
}

id sub_29D7430BC()
{
  v0 = objc_opt_self();
  if (![v0 isTachycardiaDetectionEnabled])
  {
    return 0;
  }

  v1 = [v0 tachycardiaThresholdHeartRate];
  v2 = [objc_opt_self() _countPerMinuteUnit];
  v3 = [objc_opt_self() quantityWithUnit:v2 doubleValue:v1];

  return v3;
}

uint64_t sub_29D743198(void *a1)
{
  [a1 _beatsPerMinute];
  v2 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithDouble_];
  v3 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v4 = sub_29D8EFDF0(v2, v3);

  return v4;
}

void sub_29D743240(void *a1)
{
  [a1 _beatsPerMinute];
  v2 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithDouble_];
  [objc_opt_self() setTachycardiaThresholdHeartRate_];
}

id sub_29D7432C4()
{
  v0 = objc_opt_self();

  return [v0 setTachycardiaThresholdHeartRate_];
}

uint64_t sub_29D743300()
{
  sub_29D744388(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v3 = v27 - v2;
  sub_29D7061EC(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D706220(0);
  v28 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7062B4(0);
  v16 = *(v15 - 8);
  v29 = v15;
  v30 = v16;
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_29D744388(0, &qword_2A1A249E0, sub_29D6D278C, MEMORY[0x29EDB8B00]);

  sub_29D9383A8();
  swift_endAccess();

  sub_29D7443EC(&qword_2A1A249F0, sub_29D7061EC, MEMORY[0x29EDB8AF8]);
  sub_29D938548();
  (*(v6 + 8))(v9, v5);
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v20 = sub_29D93A468();
  v31 = v20;
  v21 = sub_29D93A448();
  (*(*(v21 - 8) + 56))(v3, 1, 1, v21);
  sub_29D7443EC(&qword_2A17B2A18, sub_29D706220, MEMORY[0x29EDB8918]);
  sub_29D706380();
  v22 = v28;
  sub_29D938538();
  sub_29D7339C0(v3);

  (*(v11 + 8))(v14, v22);
  swift_allocObject();
  v23 = v27[1];
  swift_unknownObjectWeakInit();
  sub_29D7443EC(&qword_2A17B2A28, sub_29D7062B4, MEMORY[0x29EDB89E8]);
  v24 = v29;
  v25 = sub_29D938588();

  (*(v30 + 8))(v19, v24);
  *(v23 + qword_2A17B3840) = v25;
}

void sub_29D7437C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_29D936E98();

    if (v4)
    {
      swift_getObjectType();
      sub_29D9367C8();
      sub_29D936978();
    }
  }
}

uint64_t sub_29D743874()
{
}

uint64_t sub_29D7438CC(uint64_t a1)
{
}

uint64_t sub_29D743A30()
{
}

id sub_29D743A88(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D743AC8(uint64_t a1)
{
}

id sub_29D743B1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  sub_29D744388(0, &qword_2A17B1FF0, MEMORY[0x29EDC1C10], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = v18 - v8;
  *(v3 + qword_2A17B3840) = 0;
  v10 = [objc_allocWithZone(MEMORY[0x29EDBABF8]) initWithHealthStore_];
  type metadata accessor for TachycardiaFeatureStatusAvailability(0);
  swift_allocObject();
  *(v3 + qword_2A17B3838) = sub_29D700E18(v10);
  v11 = type metadata accessor for TachycardiaThresholdSpecifierConfiguration();
  swift_allocObject();

  v13 = sub_29D7428F0(v12);
  sub_29D7D048C();
  v14 = sub_29D934C58();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v9, a2, v14);
  (*(v15 + 56))(v9, 0, 1, v14);
  v18[4] = v11;
  v18[5] = sub_29D7443EC(&qword_2A17B3888, type metadata accessor for TachycardiaThresholdSpecifierConfiguration, &unk_29D945504);
  v18[1] = v13;

  v16 = sub_29D936E88();
  sub_29D743300();

  (*(v15 + 8))(a2, v14);
  return v16;
}

char *sub_29D743DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v7 = sub_29D934C58();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a2, v7);
  v12 = objc_allocWithZone(type metadata accessor for TachycardiaSettingsDataSource(0));
  v13 = sub_29D743B1C(a1, v11);
  v14 = qword_2A17B3868;
  *(v4 + qword_2A17B3868) = v13;
  v15 = v13;
  sub_29D936EB8();

  sub_29D936CF8();
  swift_allocObject();
  *(v4 + qword_2A17B3870) = sub_29D936CE8();
  v16 = *(v4 + v14);

  v17 = v16;
  v18 = sub_29D9365D8();
  sub_29D7D04B0();
  v19 = sub_29D939D28();

  [v18 setTitle_];

  v20 = *&v18[qword_2A17B3868];
  sub_29D936E98();
  sub_29D936EA8();

  (*(v8 + 8))(a2, v7);
  return v18;
}

uint64_t sub_29D743FC4()
{
  v0 = objc_opt_self();
  if ([v0 isTachycardiaDetectionEnabled])
  {
    v1 = [v0 tachycardiaThresholdHeartRate];
    v2 = [objc_opt_self() _countPerMinuteUnit];
    v3 = [objc_opt_self() quantityWithUnit:v2 doubleValue:v1];

    [v3 _beatsPerMinute];
    v5 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithDouble_];
    v6 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
    sub_29D8EFDF0(v5, v6);

    v7 = sub_29D939D28();

    v8 = [v0 tachycardiaHeartThresholdFooterDescriptionWithThresholdValue_];

    v9 = sub_29D939D68();
  }

  else
  {
    v10 = sub_29D939D28();
    v8 = [v0 tachycardiaHeartThresholdFooterDescriptionWithThresholdValue_];

    v9 = sub_29D939D68();
  }

  return v9;
}

uint64_t sub_29D744190()
{
  v0 = [objc_opt_self() tachycardiaHeartRateOptions];
  sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
  v1 = sub_29D939F38();

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x29EDCA190];
  }

  v2 = sub_29D93A928();
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v13 = MEMORY[0x29EDCA190];
  result = sub_29D93AAD8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = objc_opt_self();
    v5 = objc_opt_self();
    v6 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x29ED6AE30](v6, v1);
      }

      else
      {
        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      [v7 doubleValue];
      v10 = v9;
      v11 = [v4 _countPerMinuteUnit];
      v12 = [v5 quantityWithUnit:v11 doubleValue:v10];

      sub_29D93AAB8();
      sub_29D93AAE8();
      sub_29D93AAF8();
      sub_29D93AAC8();
    }

    while (v2 != v6);

    return v13;
  }

  return result;
}

void sub_29D744388(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D7443EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D74445C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D744A08(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_29D74448C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v7 = 0xEE00646577656956;
    v8 = 0x73676E6974746573;
    if (v2 != 6)
    {
      v8 = 0x6E776F6E6B6E75;
      v7 = 0xE700000000000000;
    }

    v9 = 0x800000029D956CA0;
    v10 = 0xD000000000000016;
    if (v2 == 4)
    {
      v10 = 0xD000000000000019;
    }

    else
    {
      v9 = 0x800000029D956CC0;
    }

    if (*v1 <= 5u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v8;
    }

    if (*v1 <= 5u)
    {
      v7 = v9;
    }

    *a1 = v11;
    a1[1] = v7;
  }

  else
  {
    v3 = 0x800000029D956C60;
    v4 = 0xD00000000000001FLL;
    if (v2 == 2)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v3 = 0x800000029D956C80;
    }

    v5 = 0x800000029D956C20;
    if (*v1)
    {
      v5 = 0x800000029D956C40;
    }

    if (*v1 <= 1u)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = v4;
    }

    if (*v1 <= 1u)
    {
      v3 = v5;
    }

    *a1 = v6;
    a1[1] = v3;
  }
}

void sub_29D74466C(void *a1)
{
  v3 = [a1 healthDataSource];
  if (v3)
  {
    v4 = v3;
    v5 = [a1 environmentDataSource];
    v6 = sub_29D744A54(v4, v5);
    if (v1)
    {
      sub_29D936978();
    }

    else
    {
      v15 = v6;

      sub_29D8C3BB0(v15);
      sub_29D936978();
    }
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v7 = sub_29D937898();
    sub_29D69C6C0(v7, qword_2A1A2C008);
    v8 = sub_29D937878();
    v9 = sub_29D93A298();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      v12 = sub_29D93AF08();
      v14 = sub_29D6C2364(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_29D677000, v8, v9, "[%s] Tried to create a payload with a dataSource containing nil healthDataSource", v10, 0xCu);
      sub_29D69417C(v11);
      MEMORY[0x29ED6BE30](v11, -1, -1);
      MEMORY[0x29ED6BE30](v10, -1, -1);
    }

    sub_29D73F010(MEMORY[0x29EDCA190]);
  }
}

unint64_t sub_29D7449B4()
{
  result = qword_2A17B3890;
  if (!qword_2A17B3890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3890);
  }

  return result;
}

unint64_t sub_29D744A08(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D93ABF8();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_29D744A54(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = MEMORY[0x29EDCA198];
  v71 = MEMORY[0x29EDCA198];
  v6 = v3[16];
  if (v6 > 3)
  {
    if (v3[16] > 5u)
    {
      if (v6 == 6)
      {
        v8 = 0xEE00646577656956;
        v9 = 0x73676E6974746573;
      }

      else
      {
        v8 = 0xE700000000000000;
        v9 = 0x6E776F6E6B6E75;
      }
    }

    else if (v6 == 4)
    {
      v8 = 0x800000029D956CA0;
      v9 = 0xD000000000000019;
    }

    else
    {
      v8 = 0x800000029D956CC0;
      v9 = 0xD000000000000016;
    }
  }

  else if (v3[16] > 1u)
  {
    if (v6 == 2)
    {
      v8 = 0x800000029D956C60;
      v9 = 0xD000000000000014;
    }

    else
    {
      v8 = 0x800000029D956C80;
      v9 = 0xD00000000000001FLL;
    }
  }

  else
  {
    if (v3[16])
    {
      v7 = "notificationViewed";
    }

    else
    {
      v7 = "dataTypeRoomViewed";
    }

    v8 = (v7 - 32) | 0x8000000000000000;
    v9 = 0xD000000000000012;
  }

  *(&v69 + 1) = MEMORY[0x29EDC99B0];
  v70 = MEMORY[0x29EDC99D8];
  *&v68 = v9;
  *(&v68 + 1) = v8;
  sub_29D6959E8(&v68, &v65);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = v5;
  v11 = sub_29D693DDC(&v65, v66);
  MEMORY[0x2A1C7C4A8](v11, v11);
  v13 = (&v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  sub_29D8C439C(*v13, v13[1], 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native, &v64);
  sub_29D69417C(&v65);
  v15 = v64;
  v16 = v3[17];
  if (v16 <= 2)
  {
    if (v3[17])
    {
      v17 = MEMORY[0x29EDC99B0];
      v18 = MEMORY[0x29EDC99D8];
      if (v16 == 1)
      {
        v19 = 0xE600000000000000;
        v20 = 0x6573776F7262;
      }

      else
      {
        v19 = 0xEC0000006E6F6974;
        v20 = 0x6163696669746F6ELL;
      }
    }

    else
    {
      v19 = 0xE700000000000000;
      v20 = 0x7972616D6D7573;
      v17 = MEMORY[0x29EDC99B0];
      v18 = MEMORY[0x29EDC99D8];
    }
  }

  else if (v3[17] > 4u)
  {
    v17 = MEMORY[0x29EDC99B0];
    v18 = MEMORY[0x29EDC99D8];
    if (v16 == 5)
    {
      v19 = 0xED0000656C69666FLL;
      v20 = 0x725068746C616568;
    }

    else
    {
      v19 = 0xE700000000000000;
      v20 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v17 = MEMORY[0x29EDC99B0];
    v18 = MEMORY[0x29EDC99D8];
    if (v16 == 3)
    {
      v19 = 0xEC0000006D6F6F52;
      v20 = 0x6570795461746164;
    }

    else
    {
      v19 = 0xEF7473696C6B6365;
      v20 = 0x684368746C616568;
    }
  }

  *(&v69 + 1) = v17;
  v70 = v18;
  *&v68 = v20;
  *(&v68 + 1) = v19;
  sub_29D6959E8(&v68, &v65);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v64 = v15;
  v22 = sub_29D693DDC(&v65, v66);
  MEMORY[0x2A1C7C4A8](v22, v22);
  v24 = (&v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  sub_29D8C439C(*v24, v24[1], 0x6E616E65766F7270, 0xEA00000000006563, v21, &v64);
  sub_29D69417C(&v65);
  v26 = v64;
  v71 = v64;
  v27 = v3[18];
  if (v27 == 2)
  {
    v70 = 0;
    v68 = 0u;
    v69 = 0u;
  }

  else
  {
    v66 = MEMORY[0x29EDC9A98];
    v67 = MEMORY[0x29EDC9AB0];
    LOBYTE(v65) = v27 & 1;
    sub_29D6959E8(&v65, &v68);
    if (*(&v69 + 1))
    {
      sub_29D6959E8(&v68, &v65);
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v64 = v26;
      v29 = v66;
      v30 = v67;
      v31 = sub_29D693DDC(&v65, v66);
      MEMORY[0x2A1C7C4A8](v31, v31);
      v33 = &v63 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v34 + 16))(v33);
      sub_29D8C4A50(v33, 0x6E6F69746361, 0xE600000000000000, v28, &v64, v29, v30);
      sub_29D69417C(&v65);
      v71 = v64;
      goto LABEL_35;
    }
  }

  sub_29D745454(&v68);
  sub_29D8C424C(0x6E6F69746361, 0xE600000000000000, &v65);
  sub_29D745454(&v65);
LABEL_35:
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v35 = sub_29D937898();
  sub_29D69C6C0(v35, qword_2A1A2C008);
  v36 = sub_29D93A2F8();
  *(&v69 + 1) = sub_29D6B73CC();
  v70 = sub_29D6B7418();
  *&v68 = v36;
  sub_29D6959E8(&v68, &v65);
  v37 = v71;
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v64 = v37;
  v39 = sub_29D693DDC(&v65, v66);
  MEMORY[0x2A1C7C4A8](v39, v39);
  v41 = (&v63 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41);
  sub_29D8C46F4(*v41, 6645601, 0xE300000000000000, v38, &v64);
  sub_29D69417C(&v65);
  v43 = v64;
  v44 = sub_29D93A308();
  v45 = MEMORY[0x29EDC99B0];
  *(&v69 + 1) = MEMORY[0x29EDC99B0];
  v46 = MEMORY[0x29EDC99D8];
  v70 = MEMORY[0x29EDC99D8];
  *&v68 = v44;
  *(&v68 + 1) = v47;
  sub_29D6959E8(&v68, &v65);
  LOBYTE(v37) = swift_isUniquelyReferenced_nonNull_native();
  v64 = v43;
  v48 = sub_29D693DDC(&v65, v66);
  MEMORY[0x2A1C7C4A8](v48, v48);
  v50 = (&v63 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v51 + 16))(v50);
  sub_29D8C439C(*v50, v50[1], 0x6369676F6C6F6962, 0xED00007865536C61, v37, &v64);
  sub_29D69417C(&v65);
  v52 = v64;
  v53 = [a2 activePairedDeviceProductType];
  if (v53)
  {
    v54 = v53;
    v55 = sub_29D939D68();
    v57 = v56;

    *(&v69 + 1) = v45;
    v70 = v46;
    *&v68 = v55;
    *(&v68 + 1) = v57;
    sub_29D6959E8(&v68, &v65);
    LOBYTE(v54) = swift_isUniquelyReferenced_nonNull_native();
    v64 = v52;
    v58 = sub_29D693DDC(&v65, v66);
    MEMORY[0x2A1C7C4A8](v58, v58);
    v60 = (&v63 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v61 + 16))(v60);
    sub_29D8C439C(*v60, v60[1], 0xD000000000000016, 0x800000029D95E150, v54, &v64);
    sub_29D69417C(&v65);
    return v64;
  }

  return v52;
}

uint64_t sub_29D745454(uint64_t a1)
{
  sub_29D7454B0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D7454B0(uint64_t a1)
{
  if (!qword_2A17B1B30)
  {
    sub_29D745508();
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1B30);
    }
  }
}

unint64_t sub_29D745508()
{
  result = qword_2A17B1120;
  if (!qword_2A17B1120)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B1120);
  }

  return result;
}

uint64_t sub_29D74556C()
{

  return swift_deallocClassInstance();
}

id sub_29D7455C8()
{
  v0 = sub_29D933AA8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
  sub_29D933A78();
  v6 = sub_29D933A68();
  (*(v1 + 8))(v4, v0);
  [v5 setLocale_];

  [v5 setDateStyle_];
  [v5 setTimeStyle_];
  result = [v5 setDoesRelativeDateFormatting_];
  qword_2A17D0928 = v5;
  return result;
}

uint64_t sub_29D745710()
{
  v0 = sub_29D9338C8();
  v55 = *(v0 - 8);
  v56 = v0;
  MEMORY[0x2A1C7C4A8](v0, v1);
  v54 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29D933858();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v49 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D933868();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v48 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D933828();
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_29D9338A8();
  v13 = *(v45 - 8);
  MEMORY[0x2A1C7C4A8](v45, v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D9338F8();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x2A1C7C4A8](v20, v23);
  v26 = &v44 - v25;
  v28 = MEMORY[0x2A1C7C4A8](v24, v27);
  v30 = &v44 - v29;
  v32 = MEMORY[0x2A1C7C4A8](v28, v31);
  v34 = &v44 - v33;
  v36 = MEMORY[0x2A1C7C4A8](v32, v35);
  v38 = &v44 - v37;
  MEMORY[0x29ED63900](v36);
  sub_29D933898();
  sub_29D933808();
  (*(v13 + 8))(v16, v45);
  v39 = *(v18 + 8);
  v39(v22, v17);
  sub_29D933818();
  sub_29D9337C8();
  (*(v46 + 8))(v12, v47);
  v39(v26, v17);
  v40 = v49;
  sub_29D933848();
  v41 = v48;
  sub_29D933838();
  (*(v52 + 8))(v40, v53);
  sub_29D9337E8();
  (*(v50 + 8))(v41, v51);
  v39(v30, v17);
  v42 = v54;
  sub_29D9338B8();
  sub_29D9338E8();
  (*(v55 + 8))(v42, v56);
  v39(v34, v17);
  sub_29D72EF70();
  sub_29D9339D8();
  v39(v38, v17);
  return v57;
}

uint64_t sub_29D745C20()
{
  v0 = sub_29D933CC8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D9339F8();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D933CE8();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D933C88();
  if (sub_29D933B18() & 1) != 0 || (sub_29D933B78())
  {
    (*(v11 + 8))(v14, v10);
    v15 = 1;
  }

  else
  {
    sub_29D9339A8();
    (*(v1 + 104))(v4, *MEMORY[0x29EDB9CD0], v0);
    v16 = sub_29D933C58();
    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v9, v5);
    (*(v11 + 8))(v14, v10);
    v15 = v16 ^ 1;
  }

  return v15 & 1;
}

uint64_t type metadata accessor for ECGFeatureRegulatoryInfoTransformProvider(uint64_t a1)
{
  result = qword_2A17B3898;
  if (!qword_2A17B3898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D745F60()
{
  if (qword_2A17B0D58 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

double sub_29D745FFC()
{
  if (qword_2A17B0D58 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9336E8();

  return result;
}

uint64_t sub_29D7460BC()
{
  sub_29D939AA8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ElectrocardiogramFeatureStatusActionHandler(uint64_t a1)
{
  result = qword_2A1A23210;
  if (!qword_2A1A23210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_29D74618C(void *a1)
{
  v2 = [a1 onboardingNavigationController];
  if (v2)
  {
    v3 = v2;
    [v2 setModalInPresentation_];
    return v3;
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v5 = sub_29D937898();
    sub_29D69C6C0(v5, qword_2A1A2C008);
    v6 = v1;
    v7 = sub_29D937878();
    v8 = sub_29D93A298();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136446466;
      swift_getObjectType();
      sub_29D747508();
      v11 = sub_29D939DA8();
      v13 = sub_29D6C2364(v11, v12, &v14);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      *(v9 + 14) = sub_29D6C2364(0xD00000000000002FLL, 0x800000029D95E360, &v14);
      _os_log_impl(&dword_29D677000, v7, v8, "[%{public}s.%{public}s] Onboarding navigation controller not initialized", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v10, -1, -1);
      MEMORY[0x29ED6BE30](v9, -1, -1);
    }

    return 0;
  }
}