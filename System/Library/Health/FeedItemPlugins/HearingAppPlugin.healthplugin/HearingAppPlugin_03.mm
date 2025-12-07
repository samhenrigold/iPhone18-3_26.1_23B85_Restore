unint64_t sub_29D62DE8C()
{
  result = qword_2A17ACDD8;
  if (!qword_2A17ACDD8)
  {
    sub_29D62DC90(255);
    sub_29D62DF3C();
    sub_29D62B1D4(&qword_2A17ACDF0, sub_29D62DD84, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACDD8);
  }

  return result;
}

unint64_t sub_29D62DF3C()
{
  result = qword_2A17ACDE0;
  if (!qword_2A17ACDE0)
  {
    v1 = MEMORY[0x29EDCA210];
    sub_29D62DD10(255, &qword_2A17ACDB0, &qword_2A17ACDB8, MEMORY[0x29EDCA210]);
    sub_29D62CB7C(&qword_2A17ACDE8, &qword_2A17ACDB8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACDE0);
  }

  return result;
}

unint64_t sub_29D62DFF4()
{
  result = qword_2A17ACE00;
  if (!qword_2A17ACE00)
  {
    sub_29D62D980(255);
    sub_29D65F444();
    swift_getOpaqueTypeConformance2();
    sub_29D62E0C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACE00);
  }

  return result;
}

unint64_t sub_29D62E0C0()
{
  result = qword_2A17ACE08;
  if (!qword_2A17ACE08)
  {
    sub_29D62DAB8(255);
    sub_29D62E810(255, &qword_2A17ACD90, sub_29D62DC20, &qword_2A17ACDF8, sub_29D62DC20);
    sub_29D62DC20(255);
    sub_29D62B1D4(&qword_2A17ACDF8, sub_29D62DC20, MEMORY[0x29EDB8618]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACE08);
  }

  return result;
}

void sub_29D62E218(uint64_t a1)
{
  if (!qword_2A17ACE18)
  {
    sub_29D62D768(255);
    sub_29D62F654(255, &qword_2A17ACD38, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D62D51C(255);
    sub_29D62D8B8(255);
    sub_29D62D4E8(255);
    sub_29D62D5EC();
    sub_29D62D6CC();
    swift_getOpaqueTypeConformance2();
    sub_29D62B1D4(&qword_2A17ACE10, sub_29D62D8B8, MEMORY[0x29EDB86F8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACE18);
    }
  }
}

void sub_29D62E3A8(uint64_t a1)
{
  if (!qword_2A17ACE20)
  {
    sub_29D62E218(255);
    sub_29D62E5AC(255);
    sub_29D62D768(255);
    sub_29D62F654(255, &qword_2A17ACD38, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D62D51C(255);
    sub_29D62D8B8(255);
    sub_29D62D4E8(255);
    sub_29D62D5EC();
    sub_29D62D6CC();
    swift_getOpaqueTypeConformance2();
    v1 = MEMORY[0x29EDB86F8];
    sub_29D62B1D4(&qword_2A17ACE10, sub_29D62D8B8, MEMORY[0x29EDB86F8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D62B1D4(&qword_2A17ACE80, sub_29D62E5AC, v1);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACE20);
    }
  }
}

void sub_29D62E628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29D65F454();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D62E6DC(uint64_t a1)
{
  if (!qword_2A17ACE40)
  {
    sub_29D62E810(255, &qword_2A17ACE48, sub_29D62E8C4, &qword_2A17ACE68, sub_29D62E8C4);
    sub_29D62E8C4(255);
    sub_29D62B1D4(&qword_2A17ACE68, sub_29D62E8C4, MEMORY[0x29EDB8618]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACE40);
    }
  }
}

void sub_29D62E810(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D62B1D4(a4, a5, MEMORY[0x29EDB8618]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_29D62E934(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_29D65FA14();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29D62E9D4(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_29D62EA54()
{
  result = qword_2A17ACE70;
  if (!qword_2A17ACE70)
  {
    sub_29D62E5F4(255);
    sub_29D62EAE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACE70);
  }

  return result;
}

unint64_t sub_29D62EAE0()
{
  result = qword_2A17ACE78;
  if (!qword_2A17ACE78)
  {
    sub_29D62E6A8(255);
    sub_29D62E810(255, &qword_2A17ACE48, sub_29D62E8C4, &qword_2A17ACE68, sub_29D62E8C4);
    sub_29D62E8C4(255);
    sub_29D62B1D4(&qword_2A17ACE68, sub_29D62E8C4, MEMORY[0x29EDB8618]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACE78);
  }

  return result;
}

void sub_29D62EC38()
{
  if (!qword_2A17ACE88)
  {
    sub_29D62E3A8(255);
    sub_29D65F574();
    sub_29D62E218(255);
    sub_29D62E5AC(255);
    sub_29D62D768(255);
    sub_29D62F654(255, &qword_2A17ACD38, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D62D51C(255);
    sub_29D62D8B8(255);
    sub_29D62D4E8(255);
    sub_29D62D5EC();
    sub_29D62D6CC();
    swift_getOpaqueTypeConformance2();
    v0 = MEMORY[0x29EDB86F8];
    sub_29D62B1D4(&qword_2A17ACE10, sub_29D62D8B8, MEMORY[0x29EDB86F8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D62B1D4(&qword_2A17ACE80, sub_29D62E5AC, v0);
    swift_getOpaqueTypeConformance2();
    sub_29D62B1D4(&qword_2A17ACE90, MEMORY[0x29EDB8630], MEMORY[0x29EDB8628]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACE88);
    }
  }
}

uint64_t sub_29D62EED4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D62EF7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29D65FA14();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_29D62F024()
{
  result = qword_2A17ACEA8;
  if (!qword_2A17ACEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACEA8);
  }

  return result;
}

void sub_29D62F080(uint64_t a1)
{
  if (!qword_2A17ACEB0)
  {
    sub_29D65F444();
    sub_29D62E6A8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17ACEB0);
    }
  }
}

uint64_t sub_29D62F0F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D62F194(uint64_t result, double a2)
{
  if (result)
  {
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    sub_29D65DA74();
    sub_29D62C43C(0, &qword_2A1A1E668, sub_29D5E618C, MEMORY[0x29EDC9E90]);
    result = swift_allocObject();
    *(result + 16) = xmmword_29D661D90;
    if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (a2 > -9.22337204e18)
      {
        if (a2 < 9.22337204e18)
        {
          v3 = result;
          v4 = sub_29D660674();
          v6 = v5;
          v3[7] = MEMORY[0x29EDC99B0];
          v3[8] = sub_29D5E3BCC();
          v3[4] = v4;
          v3[5] = v6;
          v7 = sub_29D65FF74();

          return v7;
        }

        goto LABEL_16;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_13;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a2 < 9.22337204e18)
  {
    return sub_29D660674();
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_29D62F3D4(uint64_t a1)
{
  if (!qword_2A17ACEC0)
  {
    sub_29D62DA2C(255, &qword_2A17ACD78, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548], MEMORY[0x29EDB86A8]);
    sub_29D62DAB8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17ACEC0);
    }
  }
}

uint64_t sub_29D62F47C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D62F4E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D62F56C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(a1 + 3);
  v6[0] = *(a1 + 1);
  v6[1] = v4;
  v7 = *(a1 + 20);
  return v2(v3, v6);
}

void sub_29D62F5BC(uint64_t a1)
{
  if (!qword_2A17ACED8)
  {
    sub_29D62C504(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17ACED8);
    }
  }
}

void sub_29D62F654(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_29D62F6FC@<X0>(uint64_t *a1@<X8>)
{
  sub_29D603048(*(v1 + 32), *(v1 + 16), *(v1 + 24), 0.0, 0.0, 12.0, 12.0);
  result = sub_29D65FC34();
  *a1 = result;
  return result;
}

uint64_t sub_29D62F768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29D62F7D8(uint64_t a1)
{
  if (!qword_2A17ACEF0)
  {
    sub_29D62C5B8(255);
    sub_29D62C7F4(255);
    sub_29D62CBE0(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A17ACEF0);
    }
  }
}

void sub_29D62F860(uint64_t a1)
{
  if (!qword_2A17ACF00)
  {
    type metadata accessor for Key(255);
    sub_29D62B1D4(&qword_2A17AC188, type metadata accessor for Key, &unk_29D661830);
    v1 = sub_29D660614();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17ACF00);
    }
  }
}

void sub_29D62F900(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D62CD58(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_29D62F978(uint64_t a1)
{
  if (!qword_2A17ACF18)
  {
    sub_29D62FA5C(255);
    sub_29D62FAFC(255, &qword_2A17ACF30, sub_29D62FB60);
    sub_29D62B1D4(&qword_2A17ACF90, sub_29D62FA5C, MEMORY[0x29EDC9A80]);
    v1 = sub_29D65FC54();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17ACF18);
    }
  }
}

void sub_29D62FA90(uint64_t a1)
{
  if (!qword_2A17ACF28)
  {
    type metadata accessor for AudiogramLongitudinalPDFChartData(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17ACF28);
    }
  }
}

void sub_29D62FAFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D65F454();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D62FB60(uint64_t a1)
{
  if (!qword_2A17ACF38)
  {
    sub_29D62E628(255, &qword_2A17ACF40, sub_29D62FBE8, sub_29D62CBE0);
    v1 = sub_29D660434();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17ACF38);
    }
  }
}

void sub_29D62FBE8(uint64_t a1)
{
  if (!qword_2A17ACF48)
  {
    sub_29D62C6FC(255);
    sub_29D62E934(255, &qword_2A17ACF50, sub_29D62FD54, MEMORY[0x29EDBC3E0]);
    sub_29D62CA4C(255, &qword_2A17ACC90, MEMORY[0x29EDB86D8], MEMORY[0x29EDB86D0], MEMORY[0x29EDB85E8]);
    sub_29D65F694();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D62FF44();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACF48);
    }
  }
}

void sub_29D62FD54(uint64_t a1)
{
  if (!qword_2A17ACF58)
  {
    sub_29D62FE20(255);
    sub_29D62FEF0();
    sub_29D62B1D4(&qword_2A17ACF78, sub_29D62FE20, MEMORY[0x29EDBC340]);
    v1 = sub_29D65FAD4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17ACF58);
    }
  }
}

void sub_29D62FE20(uint64_t a1)
{
  if (!qword_2A17ACF60)
  {
    sub_29D62FE9C();
    v1 = sub_29D65F9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17ACF60);
    }
  }
}

unint64_t sub_29D62FE9C()
{
  result = qword_2A17ACF68;
  if (!qword_2A17ACF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACF68);
  }

  return result;
}

unint64_t sub_29D62FEF0()
{
  result = qword_2A17ACF70;
  if (!qword_2A17ACF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACF70);
  }

  return result;
}

unint64_t sub_29D62FF44()
{
  result = qword_2A17ACF80;
  if (!qword_2A17ACF80)
  {
    sub_29D62E934(255, &qword_2A17ACF50, sub_29D62FD54, MEMORY[0x29EDBC3E0]);
    sub_29D62B1D4(&qword_2A17ACF88, sub_29D62FD54, MEMORY[0x29EDBC838]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACF80);
  }

  return result;
}

unint64_t sub_29D630018()
{
  result = qword_2A17ACFA0;
  if (!qword_2A17ACFA0)
  {
    sub_29D62FAFC(255, &qword_2A17ACF30, sub_29D62FB60);
    sub_29D62D0A0(&qword_2A17ACFA8, sub_29D62FB60, sub_29D6300F8, MEMORY[0x29EDB87B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACFA0);
  }

  return result;
}

unint64_t sub_29D6300F8()
{
  result = qword_2A17ACFB0;
  if (!qword_2A17ACFB0)
  {
    sub_29D62E628(255, &qword_2A17ACF40, sub_29D62FBE8, sub_29D62CBE0);
    sub_29D62C6FC(255);
    sub_29D62E934(255, &qword_2A17ACF50, sub_29D62FD54, MEMORY[0x29EDBC3E0]);
    sub_29D62CA4C(255, &qword_2A17ACC90, MEMORY[0x29EDB86D8], MEMORY[0x29EDB86D0], MEMORY[0x29EDB85E8]);
    sub_29D65F694();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D62FF44();
    swift_getOpaqueTypeConformance2();
    sub_29D62D380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACFB0);
  }

  return result;
}

uint64_t sub_29D6302C8(uint64_t a1, uint64_t a2)
{
  sub_29D62FA90(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29D63032C()
{
  if (!qword_2A17AC2B8)
  {
    v0 = sub_29D660614();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC2B8);
    }
  }
}

unint64_t sub_29D63038C()
{
  result = qword_2A17ACFC0;
  if (!qword_2A17ACFC0)
  {
    sub_29D62EF7C(255, &qword_2A17ACE98, sub_29D62EC38, sub_29D62EFF0);
    sub_29D62E3A8(255);
    sub_29D65F574();
    sub_29D62E218(255);
    sub_29D62E5AC(255);
    sub_29D62D768(255);
    sub_29D62F654(255, &qword_2A17ACD38, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D62D51C(255);
    sub_29D62D8B8(255);
    sub_29D62D4E8(255);
    sub_29D62D5EC();
    sub_29D62D6CC();
    swift_getOpaqueTypeConformance2();
    v1 = MEMORY[0x29EDB86F8];
    sub_29D62B1D4(&qword_2A17ACE10, sub_29D62D8B8, MEMORY[0x29EDB86F8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D62B1D4(&qword_2A17ACE80, sub_29D62E5AC, v1);
    swift_getOpaqueTypeConformance2();
    sub_29D62B1D4(&qword_2A17ACE90, MEMORY[0x29EDB8630], MEMORY[0x29EDB8628]);
    swift_getOpaqueTypeConformance2();
    sub_29D62B1D4(&qword_2A17ACFC8, sub_29D62EFF0, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACFC0);
  }

  return result;
}

uint64_t type metadata accessor for AudiogramAllDataViewController(uint64_t a1)
{
  result = qword_2A17ACFE0;
  if (!qword_2A17ACFE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_29D630740(void *a1)
{
  v2 = v1;
  *(v1 + qword_2A17ACFD0) = a1;
  type metadata accessor for AudiogramAllDataViewModel(0);
  swift_allocObject();
  v4 = a1;
  v5 = sub_29D641F68(v4, 1);
  *(v2 + qword_2A17ACFD8) = v5;
  sub_29D65EAF4();
  sub_29D631628(0, &qword_2A17ACFF0, sub_29D63168C, MEMORY[0x29EDC9E90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29D661D90;
  v7 = OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_dataSource;
  swift_beginAccess();
  *(v6 + 32) = *(v5 + v7);
  swift_unknownObjectRetain();
  sub_29D65EB04();

  v8 = sub_29D65F064();
  v9 = qword_2A1A1EAA0;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  v11 = sub_29D65FF24();

  [v10 setTitle_];

  return v10;
}

uint64_t sub_29D630940()
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_29D660594();
  __break(1u);
  return result;
}

void sub_29D630A00()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for AudiogramAllDataViewController(0);
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v1 = [v0 navigationItem];
  v2 = sub_29D65FF24();
  v3 = [objc_opt_self() systemImageNamed_];

  v4 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithImage:v3 style:0 target:v0 action:sel_didTapExportAll_];
  [v1 setRightBarButtonItem_];
}

void sub_29D630B04(void *a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  sub_29D630A00();
}

void sub_29D630BBC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29D65F394();
  MEMORY[0x2A1C7C4A8](v5, v6);
  v7 = sub_29D65E554();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v8 + 104))(v11, *MEMORY[0x29EDC1D50], v7);
  v12 = a1;
  sub_29D660274();
  sub_29D65F384();
  sub_29D660284();
  v13 = type metadata accessor for AudiogramAllDataViewController(0);
  v14.receiver = v12;
  v14.super_class = v13;
  objc_msgSendSuper2(&v14, sel_viewIsAppearing_, a3);
}

uint64_t sub_29D630DB0()
{
  v1 = sub_29D65FCA4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D65FCC4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D605BAC();
  v11 = sub_29D6602B4();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_29D6315C0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D60B5D0;
  aBlock[3] = &unk_2A2432E20;
  v13 = _Block_copy(aBlock);
  v14 = v0;
  sub_29D65FCB4();
  v16[1] = MEMORY[0x29EDCA190];
  sub_29D6315E0(&qword_2A17AC0F0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29D631628(0, &qword_2A17AC0F8, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D61244C();
  sub_29D660484();
  MEMORY[0x29ED62660](0, v10, v5, v13);
  _Block_release(v13);

  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

void sub_29D631084(char *a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *&a1[qword_2A17ACFD0];
  type metadata accessor for AudiogramPDFAsyncConfigurationDataSource();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 40) = 0x3FF8000000000000;
  *(v3 + 48) = 0;
  type metadata accessor for AudiogramPDFProvider();
  v4 = swift_allocObject();
  v4[2] = v2;
  v5 = sub_29D65EAA4();
  v6 = v2;
  v7 = sub_29D65EA94();
  v8 = MEMORY[0x29EDC24D0];
  v4[6] = v5;
  v4[7] = v8;
  v4[3] = v7;
  *(v3 + 24) = v4;
  *(v3 + 32) = v6;
  sub_29D6315E0(&qword_2A17AC950, type metadata accessor for AudiogramPDFAsyncConfigurationDataSource, &protocol conformance descriptor for AudiogramPDFAsyncConfigurationDataSource);
  v9 = objc_allocWithZone(sub_29D65EF34());

  v10 = sub_29D65EF24();
  v11 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  [a1 presentViewController:v11 animated:1 completion:0];
}

uint64_t sub_29D631288(void *a1, uint64_t a2, uint64_t a3)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v4 = a1;
  sub_29D660474();
  sub_29D65EE94();
  sub_29D630DB0();

  sub_29D5DF1C4(v6);
}

uint64_t sub_29D63138C()
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

uint64_t sub_29D631418()
{
}

id sub_29D631458()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiogramAllDataViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D631490(uint64_t a1)
{
}

uint64_t sub_29D6314E4@<X0>(uint64_t a1@<X8>)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *MEMORY[0x29EDC1D50];
  v3 = sub_29D65E554();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
}

uint64_t sub_29D6315C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D6315E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D631628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D63168C()
{
  result = qword_2A17ACFF8;
  if (!qword_2A17ACFF8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17ACFF8);
  }

  return result;
}

uint64_t type metadata accessor for HearingTestPromotionViewActionHandler(uint64_t a1)
{
  result = qword_2A1A1E390;
  if (!qword_2A1A1E390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D631780@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29D6320E8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_29D6317D4(uint64_t a1)
{
  v2 = sub_29D631FE4();

  return MEMORY[0x2A1C63270](a1, v2);
}

uint64_t sub_29D631820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D631FE4();

  return MEMORY[0x2A1C63268](a1, a2, a3, v6);
}

void sub_29D631874()
{
  swift_getObjectType();
  v0 = sub_29D65EDC4();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v19[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A1EA68 != -1)
  {
    swift_once();
  }

  v5 = sub_29D65F314();
  sub_29D5DE6EC(v5, qword_2A1A20C00);
  v6 = sub_29D65F2F4();
  v7 = sub_29D6601E4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136446210;
    v10 = sub_29D6607A4();
    v12 = sub_29D64A1D0(v10, v11, v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29D5D7000, v6, v7, "[%{public}s] Presenting Hearing Test.", v8, 0xCu);
    sub_29D5DF1C4(v9);
    MEMORY[0x29ED63350](v9, -1, -1);
    MEMORY[0x29ED63350](v8, -1, -1);
  }

  sub_29D65DD04();
  sub_29D65EF44();
  sub_29D65ED94();
  v13 = *(v1 + 8);
  v13(v4, v0);
  sub_29D5E32A8(v19, v19[3]);
  v14 = sub_29D65ED44();
  sub_29D65DD34();
  v15 = sub_29D65DD24();
  type metadata accessor for HearingTestArticleProvider();
  swift_allocObject();
  v16 = sub_29D65DCF4();

  sub_29D5DF1C4(v19);
  sub_29D65EF44();
  v17 = sub_29D65EDA4();
  v13(v4, v0);
  [v17 presentViewController:v16 animated:1 completion:0];
}

uint64_t sub_29D631B64(uint64_t a1)
{
  v3 = sub_29D65EDC4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_29D65EF54();
  (*(v4 + 8))(a1, v3);
  return v9;
}

id sub_29D631C64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingTestPromotionViewActionHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D631CEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D631D74(uint64_t a1)
{
  v2 = sub_29D632094();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D631DB0(uint64_t a1)
{
  v2 = sub_29D632094();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D631E14(void *a1)
{
  sub_29D632038(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5E32A8(a1, a1[3]);
  sub_29D632094();
  sub_29D660774();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_29D631F38()
{
  result = qword_2A17AD000;
  if (!qword_2A17AD000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD000);
  }

  return result;
}

unint64_t sub_29D631F90()
{
  result = qword_2A17AD008;
  if (!qword_2A17AD008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD008);
  }

  return result;
}

unint64_t sub_29D631FE4()
{
  result = qword_2A1A1E448;
  if (!qword_2A1A1E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A1E448);
  }

  return result;
}

void sub_29D632038(uint64_t a1)
{
  if (!qword_2A17AD010)
  {
    sub_29D632094();
    v1 = sub_29D660664();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AD010);
    }
  }
}

unint64_t sub_29D632094()
{
  result = qword_2A17AD018;
  if (!qword_2A17AD018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD018);
  }

  return result;
}

uint64_t sub_29D6320E8()
{
  if (qword_2A1A1EA68 != -1)
  {
    swift_once();
  }

  v0 = sub_29D65F314();
  sub_29D5DE6EC(v0, qword_2A1A20C00);
  v1 = sub_29D65F2F4();
  v2 = sub_29D660214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136446466;
    *(v3 + 4) = sub_29D64A1D0(0xD000000000000024, 0x800000029D664450, &v6);
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_29D64A1D0(0xD000000000000029, 0x800000029D668C50, &v6);
    _os_log_impl(&dword_29D5D7000, v1, v2, "[%{public}s.%{public}s]: Creating promo tile action handler user data object", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v4, -1, -1);
    MEMORY[0x29ED63350](v3, -1, -1);
  }

  return 1;
}

unint64_t sub_29D632290()
{
  result = qword_2A17AD020;
  if (!qword_2A17AD020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD020);
  }

  return result;
}

unint64_t sub_29D6322E8()
{
  result = qword_2A17AD028;
  if (!qword_2A17AD028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD028);
  }

  return result;
}

uint64_t PDFOverlayContextPill.init(renderable:color:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_29D5DBB48(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t PDFOverlayContextPill.render(context:document:)(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_29D6325AC(a2);
  v6 = v5;
  sub_29D65E354();
  MinX = CGRectGetMinX(v19);
  sub_29D65E354();
  MinY = CGRectGetMinY(v20);
  sub_29D65E354();
  v22.size.width = CGRectGetWidth(v21);
  v22.origin.x = MinX;
  v22.origin.y = MinY;
  v22.size.height = v6;
  v9 = CGPathCreateWithRoundedRect(v22, 12.0, 12.0, 0);
  v10 = [a1 CGContext];
  UIGraphicsPushContext(v10);

  v11 = [a1 CGContext];
  CGContextSaveGState(v11);

  v12 = [a1 CGContext];
  CGContextAddPath(v12, v9);

  v13 = [a1 CGContext];
  v14 = [*(v3 + 40) CGColor];
  CGContextSetFillColorWithColor(v13, v14);

  v15 = [a1 CGContext];
  CGContextDrawPath(v15, kCGPathFill);

  v16 = [a1 CGContext];
  CGContextRestoreGState(v16);

  UIGraphicsPopContext();
  sub_29D65E3E4();
  sub_29D65E354();
  CGRectGetMinX(v23);
  sub_29D65E354();
  CGRectGetMinY(v24);
  sub_29D65E354();
  CGRectGetWidth(v25);
  sub_29D65E364();
  sub_29D5E32A8(v3, *(v3 + 24));
  sub_29D65E5B4();
  sub_29D65E3C4();
}

void sub_29D6325AC(uint64_t a1)
{
  sub_29D65E3E4();
  sub_29D65E354();
  CGRectGetMinX(v10);
  sub_29D65E354();
  CGRectGetMinY(v11);
  sub_29D65E354();
  CGRectGetWidth(v12);
  sub_29D65E354();
  CGRectGetHeight(v13);
  sub_29D65E364();
  sub_29D5E32A8(v1, v1[3]);
  sub_29D65E594();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v14.origin.x = v3;
  v14.origin.y = v5;
  v14.size.width = v7;
  v14.size.height = v9;
  CGRectGetHeight(v14);
  sub_29D65E354();
  CGRectGetHeight(v15);
}

double sub_29D632704(uint64_t a1, double (*a2)(uint64_t, uint64_t, uint64_t))
{
  v5 = v2[3];
  v6 = v2[4];
  sub_29D5E32A8(v2, v5);
  v7 = a2(a1, v5, v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_29D65E354();
  MinX = CGRectGetMinX(v16);
  sub_29D65E354();
  CGRectGetMinY(v17);
  v18.origin.x = v7;
  v18.origin.y = v9;
  v18.size.width = v11;
  v18.size.height = v13;
  CGRectGetWidth(v18);
  sub_29D6325AC(a1);
  return MinX;
}

unint64_t sub_29D6327E4()
{
  result = qword_2A17AD030;
  if (!qword_2A17AD030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD030);
  }

  return result;
}

double sub_29D63286C(uint64_t a1, uint64_t a2, uint64_t a3, double (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = v4[3];
  v8 = v4[4];
  sub_29D5E32A8(v4, v7);
  v9 = a4(a1, v7, v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_29D65E354();
  MinX = CGRectGetMinX(v18);
  sub_29D65E354();
  CGRectGetMinY(v19);
  v20.origin.x = v9;
  v20.origin.y = v11;
  v20.size.width = v13;
  v20.size.height = v15;
  CGRectGetWidth(v20);
  sub_29D6325AC(a1);
  return MinX;
}

uint64_t sub_29D632948(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29D632AAC();
  *v3 = v1;
  v3[1] = sub_29D5F8D78;

  return MEMORY[0x2A1C61D30](a1, v4);
}

__n128 sub_29D6329F4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_29D632A08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29D632A50(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_29D632AAC()
{
  result = qword_2A17AD038;
  if (!qword_2A17AD038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD038);
  }

  return result;
}

uint64_t sub_29D632B00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  sub_29D63D8F4(0);
  v4 = v3 - 8;
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62DA2C(0, &qword_2A17ACD78, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548], MEMORY[0x29EDB86A8]);
  v9 = v8;
  sub_29D65F444();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v7, *a1, v9);
  v11 = sub_29D65F674();
  v12 = *(v4 + 56);
  v17 = v12;
  v13 = *(v11 - 8);
  (*(v13 + 16))(&v7[v12], a1[1], v11);
  sub_29D63AB20(0, &qword_2A17AD100, sub_29D63B614, MEMORY[0x29EDC9C68]);
  sub_29D63B918();
  v14 = *(v4 + 72);
  sub_29D63DD00(a1[2], &v7[v14], &qword_2A17AD100, sub_29D63B614);
  v15 = v18;
  (*(v10 + 32))(v18, v7, v9);
  (*(v13 + 32))(v15 + *(v4 + 56), &v7[v17], v11);
  return sub_29D63DD80(&v7[v14], v15 + *(v4 + 72), &qword_2A17AD100, sub_29D63B614);
}

void sub_29D632D40()
{
  v1 = type metadata accessor for AudiogramLongitudinalPDFChartData(0);
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v0;
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    while (v8 < *(v6 + 16))
    {
      sub_29D63AAB8(v9 + *(v2 + 72) * v8, v5, type metadata accessor for AudiogramLongitudinalPDFChartData);
      if (*(v5 + 8))
      {
        v11 = 0.0;
      }

      else
      {
        v11 = *v5;
      }

      v12 = v5[2];
      v13 = *(v5 + 24);
      sub_29D63C8A8(v5, type metadata accessor for AudiogramLongitudinalPDFChartData);
      v14 = v11 >= -15.0;
      if (v11 > 115.0)
      {
        v14 = 0;
      }

      if (v13 == 1)
      {
        if (!v14)
        {
          return;
        }
      }

      else
      {
        v10 = v12 >= -15.0;
        if (v12 > 115.0)
        {
          v10 = 0;
        }

        if (!v14 || !v10)
        {
          return;
        }
      }

      if (v7 == ++v8)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_29D632EEC()
{
  v0 = MEMORY[0x29EDBC990];
  sub_29D63AB20(0, &qword_2A17ACEB8, MEMORY[0x29EDBC990], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v4 = &v10 - v3;
  sub_29D65FB34();
  v5 = *MEMORY[0x29EDBC980];
  v6 = sub_29D65FB14();
  v7 = *(v6 - 8);
  (*(v7 + 104))(v4, v5, v6);
  (*(v7 + 56))(v4, 0, 1, v6);
  v8 = sub_29D65FB44();
  result = sub_29D63DC88(v4, &qword_2A17ACEB8, v0);
  qword_2A17AD040 = v8;
  return result;
}

uint64_t sub_29D633054(uint64_t *a1)
{
  v3 = type metadata accessor for AudiogramLongitudinalPDFChartData(0);
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v11 = &v32 - v10;
  MEMORY[0x2A1C7C4A8](v12, v13);
  v15 = &v32 - v14;
  MEMORY[0x2A1C7C4A8](v16, v17);
  v19 = &v32 - v18;
  sub_29D63AAB8(a1, v1 + OBJC_IVAR____TtC16HearingAppPlugin29AudiogramPDFLongitudinalChart_chartModel, type metadata accessor for AudiogramPDFLongitudinalChart.Model);
  result = sub_29D6229CC();
  v21 = *a1;
  v22 = *(*a1 + 16);
  if (result)
  {
    do
    {
      LOBYTE(v23) = v22 == 0;
      if (!v22)
      {
        break;
      }

      if (v22 > *(v21 + 16))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      --v22;
      sub_29D63AAB8(v21 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v22, v19, type metadata accessor for AudiogramLongitudinalPDFChartData);
      v24 = v19[8];
      result = sub_29D63C8A8(v19, type metadata accessor for AudiogramLongitudinalPDFChartData);
    }

    while ((v24 & 1) != 0);
  }

  else
  {
    if (v22)
    {
      v25 = 0;
      while (v25 < *(v21 + 16))
      {
        sub_29D63AAB8(v21 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v25, v15, type metadata accessor for AudiogramLongitudinalPDFChartData);
        v23 = v15[8];
        result = sub_29D63C8A8(v15, type metadata accessor for AudiogramLongitudinalPDFChartData);
        if (v23 != 1)
        {
          v22 = v25;
          goto LABEL_14;
        }

        if (v22 == ++v25)
        {
          v22 = 0;
          goto LABEL_14;
        }
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    LOBYTE(v23) = 1;
  }

LABEL_14:
  v26 = v1 + OBJC_IVAR____TtC16HearingAppPlugin29AudiogramPDFLongitudinalChart_leftEarAnnotationIndex;
  *v26 = v22;
  *(v26 + 8) = v23;
  result = sub_29D6229CC();
  v27 = *(v21 + 16);
  if (!result)
  {
    do
    {
      LOBYTE(v29) = v27 == 0;
      if (!v27)
      {
        break;
      }

      if (v27 > *(v21 + 16))
      {
        goto LABEL_29;
      }

      --v27;
      sub_29D63AAB8(v21 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v27, v7, type metadata accessor for AudiogramLongitudinalPDFChartData);
      v30 = v7[24];
      result = sub_29D63C8A8(v7, type metadata accessor for AudiogramLongitudinalPDFChartData);
    }

    while ((v30 & 1) != 0);
    goto LABEL_27;
  }

  if (!v27)
  {
    LOBYTE(v29) = 1;
LABEL_27:
    sub_29D63C8A8(a1, type metadata accessor for AudiogramPDFLongitudinalChart.Model);
    v31 = v1 + OBJC_IVAR____TtC16HearingAppPlugin29AudiogramPDFLongitudinalChart_rightEarAnnotationIndex;
    *v31 = v27;
    *(v31 + 8) = v29;
    return v1;
  }

  v28 = 0;
  while (v28 < *(v21 + 16))
  {
    sub_29D63AAB8(v21 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v28, v11, type metadata accessor for AudiogramLongitudinalPDFChartData);
    v29 = v11[24];
    result = sub_29D63C8A8(v11, type metadata accessor for AudiogramLongitudinalPDFChartData);
    if (v29 != 1)
    {
      v27 = v28;
      goto LABEL_27;
    }

    if (v27 == ++v28)
    {
      v27 = 0;
      goto LABEL_27;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_29D633490@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v91 = a4;
  LODWORD(v90) = a3;
  v88 = a2;
  v111 = a6;
  v110 = sub_29D65FA04();
  v109 = *(v110 - 8);
  MEMORY[0x2A1C7C4A8](v110, v9);
  v108 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = MEMORY[0x29EDB8710];
  sub_29D63AB20(0, &qword_2A17ACC38, MEMORY[0x29EDB8710], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v14 = &v86 - v13;
  sub_29D63AB84(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63B050(0);
  v92 = v21;
  MEMORY[0x2A1C7C4A8](v21, v22);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63B0B8(0);
  v94 = v25;
  v95 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25, v26);
  v89 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63B340(0);
  v99 = v28;
  v100 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28, v29);
  v93 = &v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63BA68(0);
  v102 = v31;
  v103 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31, v32);
  v96 = &v86 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63BC08(0);
  v104 = v34;
  v105 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34, v35);
  v98 = &v86 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63C518();
  v107 = v37;
  v106 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37, v38);
  v101 = &v86 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63B15C(0);
  v41 = v40;
  MEMORY[0x2A1C7C4A8](v40, v42);
  v44 = &v86 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = a1;
  v112 = v6;
  sub_29D6340BC(a1, v44);
  v117 = v6;
  v118 = a1;
  v119 = v88;
  v120 = v90 & 1;
  v121 = v91;
  v122 = a5 & 1;
  v123 = v44;
  v97 = v44;
  sub_29D63ABCC(0);
  sub_29D63AE04();
  sub_29D65F614();
  v126 = sub_29D65FF64();
  v127 = v45;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  MEMORY[0x29ED62350](0xD000000000000022, 0x800000029D668A20);

  sub_29D63E0DC(&qword_2A17AD0D8, sub_29D63AB84, MEMORY[0x29EDB8690]);
  sub_29D65FBC4();

  (*(v17 + 8))(v20, v16);
  v46 = sub_29D65F744();
  v47 = *(v46 - 8);
  v90 = *(v47 + 56);
  v91 = v47 + 56;
  v90(v14, 1, 1, v46);
  v48 = sub_29D63B1F0();
  v49 = sub_29D63B2D0();
  v50 = v89;
  v51 = v92;
  sub_29D65FB94();
  sub_29D63DC88(v14, &qword_2A17ACC38, v113);
  sub_29D5DAFCC(v24);
  v115 = v87;
  v116 = v112;
  sub_29D63B464(0);
  v53 = v52;
  v126 = v51;
  v127 = v41;
  v128 = v48;
  v129 = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v92 = MEMORY[0x29EDB86F8];
  v55 = sub_29D63E0DC(&qword_2A17AD138, sub_29D63B464, MEMORY[0x29EDB86F8]);
  v56 = v93;
  v57 = v94;
  sub_29D65FB74();
  (*(v95 + 8))(v50, v57);
  sub_29D632D40();
  v59 = -120.0;
  if (v58)
  {
    v59 = -200.0;
  }

  v60 = 50.0;
  if ((v58 & 1) == 0)
  {
    v60 = 20.0;
  }

  v124 = v59;
  v125 = v60;
  v90(v14, 1, 1, v46);
  sub_29D63DF60(0, &qword_2A17ACD38, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
  v62 = v61;
  v126 = v57;
  v127 = v53;
  v128 = OpaqueTypeConformance2;
  v129 = v55;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = sub_29D62D6CC();
  v65 = v96;
  v66 = v99;
  sub_29D65FBA4();
  sub_29D63DC88(v14, &qword_2A17ACC38, v113);
  (*(v100 + 8))(v56, v66);
  v114 = v112;
  sub_29D63BE1C(0);
  v68 = v67;
  v126 = v66;
  v127 = v62;
  v128 = v63;
  v129 = v64;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = sub_29D63E0DC(&qword_2A17AD1A8, sub_29D63BE1C, v92);
  v71 = v98;
  v72 = v102;
  sub_29D65FB84();
  (*(v103 + 8))(v65, v72);
  sub_29D65F574();
  v126 = v72;
  v127 = v68;
  v128 = v69;
  v129 = v70;
  swift_getOpaqueTypeConformance2();
  sub_29D63E0DC(&qword_2A17ACE90, MEMORY[0x29EDB8630], MEMORY[0x29EDB8628]);
  v73 = v101;
  v74 = v104;
  sub_29D65FBB4();
  (*(v105 + 8))(v71, v74);
  KeyPath = swift_getKeyPath();
  v76 = sub_29D6229CC();
  v77 = v109;
  v78 = MEMORY[0x29EDBC548];
  if (!v76)
  {
    v78 = MEMORY[0x29EDBC540];
  }

  v79 = v108;
  v80 = v110;
  (*(v109 + 104))(v108, *v78, v110);
  sub_29D63C810(0);
  v82 = v111;
  v83 = (v111 + *(v81 + 36));
  sub_29D63AB20(0, &qword_2A17ACEA0, MEMORY[0x29EDBC550], MEMORY[0x29EDBC938]);
  (*(v77 + 32))(v83 + *(v84 + 28), v79, v80);
  *v83 = KeyPath;
  (*(v106 + 32))(v82, v73, v107);
  return sub_29D63C8A8(v97, sub_29D63B15C);
}

uint64_t sub_29D6340BC@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v91 = a2;
  v3 = sub_29D65F314();
  v86 = *(v3 - 8);
  v87 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v85 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63DE08(0);
  v89 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v90 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v88 = &v74 - v11;
  v12 = sub_29D65DCC4();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63AB20(0, &qword_2A17AC3A8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v17 - 8, v18);
  v79 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v21);
  v23 = &v74 - v22;
  v24 = sub_29D65DBC4();
  v25 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v83 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v28, v29);
  v77 = &v74 - v30;
  MEMORY[0x2A1C7C4A8](v31, v32);
  v34 = &v74 - v33;
  MEMORY[0x2A1C7C4A8](v35, v36);
  v92 = &v74 - v37;
  v38 = *(type metadata accessor for AudiogramPDFLongitudinalChart.Model(0) + 20);
  v82 = a1;
  v78 = v38;
  sub_29D65D994();
  sub_29D65DC94();
  sub_29D65DC64();
  v39 = *(v13 + 8);
  v80 = v13 + 8;
  v81 = v12;
  v39(v16, v12);
  v40 = v25[1];
  v40(v34, v24);
  v41 = v25[6];
  v42 = v41(v23, 1, v24);
  v84 = v25;
  if (v42 == 1)
  {
    v82 = v34;
    v92 = v24;
LABEL_5:
    sub_29D63DC88(v23, &qword_2A17AC3A8, MEMORY[0x29EDB9BC8]);
    v44 = v85;
    sub_29D65F2E4();
    v45 = sub_29D65F2F4();
    v46 = sub_29D6601F4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v93 = v48;
      *v47 = 136446210;
      v49 = sub_29D6607A4();
      v51 = sub_29D64A1D0(v49, v50, &v93);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_29D5D7000, v45, v46, "[%{public}s] Unable to determine chart x scale domain", v47, 0xCu);
      sub_29D5DF1C4(v48);
      MEMORY[0x29ED63350](v48, -1, -1);
      MEMORY[0x29ED63350](v47, -1, -1);
    }

    (*(v86 + 8))(v44, v87);
    v53 = v82;
    v52 = v83;
    sub_29D65DB54();
    sub_29D65DB64();
    sub_29D63E0DC(&qword_2A17AD0C8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
    v54 = v92;
    result = sub_29D65FEF4();
    if (result)
    {
      v56 = v84[4];
      v57 = v88;
      v56(v88, v53, v54);
      v58 = v89;
      v56((v57 + *(v89 + 48)), v52, v54);
      v59 = v90;
      sub_29D63AAB8(v57, v90, sub_29D63DE08);
      v60 = *(v58 + 48);
      v61 = v91;
      v56(v91, v59, v54);
      v40((v59 + v60), v54);
      sub_29D63DE70(v57, v59);
      v62 = *(v58 + 48);
      sub_29D63B15C(0);
      v56(&v61[*(v63 + 36)], (v59 + v62), v54);
      return (v40)(v59, v54);
    }

    __break(1u);
    goto LABEL_13;
  }

  v75 = v25[4];
  v76 = v25 + 4;
  v75(v92, v23, v24);
  sub_29D65D974();
  sub_29D65DC94();
  v23 = v79;
  Date.lastDateOfTheYear(calendar:)(v79);
  v39(v16, v81);
  v40(v34, v24);
  if (v41(v23, 1, v24) == 1)
  {
    v82 = v34;
    v43 = v92;
    v92 = v24;
    v40(v43, v24);
    goto LABEL_5;
  }

  v64 = v77;
  v75(v77, v23, v24);
  sub_29D63E0DC(&qword_2A17AD0C8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
  v65 = v92;
  result = sub_29D65FEF4();
  if (result)
  {
    v54 = v24;
    v66 = v88;
    v67 = v24;
    v68 = v75;
    v75(v88, v65, v67);
    v69 = v89;
    v68(v66 + *(v89 + 48), v64, v54);
    v59 = v90;
    sub_29D63AAB8(v66, v90, sub_29D63DE08);
    v70 = *(v69 + 48);
    v71 = v91;
    v68(v91, v59, v54);
    v40((v59 + v70), v54);
    sub_29D63DE70(v66, v59);
    v72 = *(v69 + 48);
    sub_29D63B15C(0);
    v68(&v71[*(v73 + 36)], (v59 + v72), v54);
    return (v40)(v59, v54);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_29D634904@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, char a4@<W3>, char *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v90 = a7;
  v81 = a5;
  v86 = a8;
  v87 = a3;
  sub_29D63DA78(0, &qword_2A17AD208, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v15 = &OpaqueTypeConformance2 - v14;
  v16 = sub_29D65F6B4();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &OpaqueTypeConformance2 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62DA2C(0, &qword_2A17ACCF0, MEMORY[0x29EDB86E8], MEMORY[0x29EDB86E0], MEMORY[0x29EDB8598]);
  v80 = v21;
  v78 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v22);
  v75 = &OpaqueTypeConformance2 - v23;
  sub_29D62CD58(0);
  v84 = *(v24 - 8);
  v85 = v24;
  MEMORY[0x2A1C7C4A8](v24, v25);
  v83 = &OpaqueTypeConformance2 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27, v28);
  v82 = &OpaqueTypeConformance2 - v29;
  MEMORY[0x2A1C7C4A8](v30, v31);
  v76 = &OpaqueTypeConformance2 - v32;
  MEMORY[0x2A1C7C4A8](v33, v34);
  v89 = &OpaqueTypeConformance2 - v35;
  sub_29D62F978(0);
  v79 = v36;
  v77 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36, v37);
  v88 = &OpaqueTypeConformance2 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v39, v40);
  v42 = &OpaqueTypeConformance2 - v41;
  sub_29D62BDF0(*a2);
  v95 = v43;
  swift_getKeyPath();
  v44 = swift_allocObject();
  v45 = v81;
  *(v44 + 16) = a1;
  *(v44 + 24) = v45;
  *(v44 + 32) = a6 & 1;
  *(v44 + 40) = v87;
  *(v44 + 48) = a4 & 1;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_29D63DAE4;
  *(v46 + 24) = v44;
  sub_29D63AB20(0, &qword_2A17ACF20, sub_29D62FA90, MEMORY[0x29EDC9A40]);
  sub_29D63AC40(0);
  sub_29D63AD7C();
  sub_29D630018();
  v87 = v42;
  sub_29D65FC44();
  sub_29D65FAC4();
  v47 = sub_29D65DBC4();
  sub_29D65F544();

  v81 = v15;
  v74 = v47;
  sub_29D65F6A4();
  if (qword_2A17AC070 != -1)
  {
    swift_once();
  }

  v48 = qword_2A17AD730;
  *&v96 = qword_2A17AD730;

  v49 = MEMORY[0x29EDBCA98];
  v50 = MEMORY[0x29EDB86E0];
  v51 = MEMORY[0x29EDBCA88];
  v52 = v75;
  sub_29D65F484();
  v53 = *(v17 + 8);
  v72 = v17 + 8;
  v73 = v53;
  v53(v20, v16);
  v71 = v20;
  if (qword_2A17AC078 != -1)
  {
    swift_once();
  }

  v96 = xmmword_2A17AD738;
  v97 = *&qword_2A17AD748;
  v98 = qword_2A17AD758;
  v91 = v16;
  v92 = v49;
  v93 = v50;
  v94 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v80;
  sub_29D65F4A4();
  v78 = *(v78 + 8);
  (v78)(v52, v54);
  sub_29D65FAC4();
  v55 = v52;
  sub_29D63B15C(0);
  sub_29D65F544();

  v56 = v71;
  sub_29D65F6A4();
  v91 = v48;
  sub_29D65F484();

  v73(v56, v16);
  v57 = v76;
  sub_29D65F4A4();
  (v78)(v55, v54);
  v58 = v77;
  v59 = v88;
  v60 = v79;
  (*(v77 + 16))(v88, v87, v79);
  v91 = v59;
  v62 = v84;
  v61 = v85;
  v63 = *(v84 + 16);
  v64 = v82;
  v65 = v89;
  v63(v82, v89, v85);
  v92 = v64;
  v66 = v83;
  v63(v83, v57, v61);
  v93 = v66;
  sub_29D626BC4(&v91, v86);
  v67 = *(v62 + 8);
  v67(v57, v61);
  v67(v65, v61);
  v68 = *(v58 + 8);
  v68(v87, v60);
  v67(v66, v61);
  v67(v64, v61);
  return (v68)(v88, v60);
}

uint64_t sub_29D635218(uint64_t a1)
{
  v2 = sub_29D65F564();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v4 = sub_29D65F4D4();
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v6 = sub_29D65DCC4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D65DC94();
  sub_29D637B08(a1, 1, v10);
  (*(v7 + 8))(v10, v6);
  sub_29D65F4C4();
  sub_29D65F554();
  sub_29D63B52C(0);
  sub_29D65DBC4();
  sub_29D63B844();
  return sub_29D65F6D4();
}

uint64_t sub_29D635400()
{
  v1 = sub_29D65F564();
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v3 = sub_29D65F4D4();
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v5 = sub_29D65F4F4();
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  sub_29D62F024();
  sub_29D65F4E4();
  *(swift_allocObject() + 16) = v0;
  sub_29D65F4C4();
  sub_29D65F554();
  sub_29D63BE64(0);
  sub_29D63C2F8();
  return sub_29D65F6C4();
}

uint64_t sub_29D6355A0@<X0>(void (*a1)(char *, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t)@<X3>, int a4@<W4>, void (*a5)(char *, uint64_t, uint64_t, uint64_t)@<X5>, int a6@<W6>, uint64_t a7@<X8>)
{
  v245 = a6;
  v243 = a5;
  LODWORD(v244) = a4;
  v242 = a3;
  v261 = a1;
  v292 = a7;
  sub_29D63DB54(0);
  v291 = v8;
  MEMORY[0x2A1C7C4A8](v8, v9);
  v290 = &v230 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63DBE8(0);
  v288 = v11;
  MEMORY[0x2A1C7C4A8](v11, v12);
  v286 = &v230 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63ACD8(0);
  v15 = v14;
  v300 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v287 = &v230 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = sub_29D65F724();
  v249 = *(v251 - 8);
  MEMORY[0x2A1C7C4A8](v251, v18);
  v246 = &v230 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62CA4C(0, &qword_2A17ACCA8, MEMORY[0x29EDB8708], MEMORY[0x29EDB8700], MEMORY[0x29EDB8580]);
  v255 = v20;
  v248 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v21);
  v247 = &v230 - v22;
  sub_29D62C954(0);
  v257 = v23;
  v256 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23, v24);
  v254 = &v230 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = sub_29D65F5C4();
  v252 = *(v253 - 8);
  MEMORY[0x2A1C7C4A8](v253, v26);
  v28 = &v230 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v29, v30);
  v32 = &v230 - v31;
  v301 = sub_29D65DBC4();
  v284 = *(v301 - 8);
  MEMORY[0x2A1C7C4A8](v301, v33);
  v262 = &v230 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v35, v36);
  v258 = &v230 - v37;
  sub_29D62CC14(0);
  v298 = *(v38 - 8);
  v299 = v38;
  MEMORY[0x2A1C7C4A8](v38, v39);
  v241 = &v230 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v41, v42);
  v240 = &v230 - v43;
  v44 = MEMORY[0x29EDC9C68];
  sub_29D63AB20(0, &qword_2A17ACCD0, sub_29D62CC14, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v45 - 8, v46);
  v263 = &v230 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v48, v49);
  v285 = &v230 - v50;
  MEMORY[0x2A1C7C4A8](v51, v52);
  v259 = &v230 - v53;
  v54 = MEMORY[0x29EDB8620];
  sub_29D63DF60(0, &qword_2A17ACEE8, MEMORY[0x29EDC99B0], MEMORY[0x29EDB8788], MEMORY[0x29EDB8620]);
  MEMORY[0x2A1C7C4A8](v55 - 8, v56);
  v273 = &v230 - v57;
  sub_29D63DF60(0, &qword_2A17ACEC8, MEMORY[0x29EDC9AD8], MEMORY[0x29EDB8798], v54);
  MEMORY[0x2A1C7C4A8](v58 - 8, v59);
  v296 = &v230 - v60;
  sub_29D63AB20(0, &qword_2A17AD220, MEMORY[0x29EDB9D18], v44);
  MEMORY[0x2A1C7C4A8](v61 - 8, v62);
  v64 = &v230 - v63;
  v65 = sub_29D65DCA4();
  v66 = *(v65 - 8);
  MEMORY[0x2A1C7C4A8](v65, v67);
  v69 = &v230 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63DA78(0, &qword_2A17AD208, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  MEMORY[0x2A1C7C4A8](v70 - 8, v71);
  v294 = &v230 - v72;
  v73 = sub_29D65F694();
  v265 = *(v73 - 8);
  MEMORY[0x2A1C7C4A8](v73, v74);
  v264 = &v230 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62CA4C(0, &qword_2A17ACC90, MEMORY[0x29EDB86D8], MEMORY[0x29EDB86D0], MEMORY[0x29EDB85E8]);
  v270 = v76;
  v267 = *(v76 - 8);
  MEMORY[0x2A1C7C4A8](v76, v77);
  v266 = &v230 - v78;
  sub_29D62C6FC(0);
  v272 = v79;
  v271 = *(v79 - 8);
  MEMORY[0x2A1C7C4A8](v79, v80);
  v269 = &v230 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62FBE8(0);
  v279 = v82;
  v278 = *(v82 - 8);
  MEMORY[0x2A1C7C4A8](v82, v83);
  v295 = &v230 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v85, v86);
  v277 = &v230 - v87;
  MEMORY[0x2A1C7C4A8](v88, v89);
  v293 = &v230 - v90;
  v91 = v44;
  v92 = a2;
  sub_29D63AB20(0, &qword_2A17ACF38, sub_29D63ACD8, v91);
  MEMORY[0x2A1C7C4A8](v93 - 8, v94);
  v282 = &v230 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v96, v97);
  v281 = &v230 - v98;
  MEMORY[0x2A1C7C4A8](v99, v100);
  v280 = &v230 - v101;
  v104 = MEMORY[0x2A1C7C4A8](v102, v103);
  v105 = MEMORY[0x29EDB9CD0];
  v106 = *(v92 + 24);
  v297 = &v230 - v107;
  v275 = v65;
  v274 = v69;
  v289 = v15;
  v250 = v28;
  v283 = v92;
  v276 = v64;
  v268 = v73;
  if (v106)
  {
    v108 = *(v300 + 56);
    v108(v104);
  }

  else
  {
    v239 = v32;
    v109 = *(v92 + 16);
    v110 = *(type metadata accessor for AudiogramLongitudinalPDFChartData(0) + 24);
    v260 = sub_29D65FAC4();
    v111 = *(v66 + 104);
    v237 = *v105;
    v238 = v66 + 104;
    v236 = v111;
    v111(v69);
    v112 = sub_29D65DCC4();
    v113 = *(v112 - 8);
    v114 = *(v113 + 56);
    v235 = v112;
    v234 = v114;
    v233 = v113 + 56;
    (v114)(v64, 1, 1);
    v231 = v110;
    sub_29D65F534();

    sub_29D63DC88(v64, &qword_2A17AD220, MEMORY[0x29EDB9D18]);
    v260 = v66;
    v115 = *(v66 + 8);
    v230 = v66 + 8;
    v232 = v115;
    v115(v69, v65);
    sub_29D65FAC4();
    v116 = -v109;
    v308 = *&v116;
    sub_29D65F544();

    sub_29D65FAC4();
    v308 = 0x7468676952;
    v309 = 0xE500000000000000;
    sub_29D65F544();

    v117 = v264;
    sub_29D65F684();
    sub_29D65F9E4();
    v118 = v266;
    v119 = v268;
    v120 = MEMORY[0x29EDB86D0];
    sub_29D65F4A4();
    sub_29D62F6A8(&v307);
    (*(v265 + 8))(v117, v119);
    v121 = [objc_opt_self() hk_hearingHealthAudiogramRightEarLineColor];
    v302 = sub_29D65FBD4();
    v308 = v119;
    v309 = v120;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v123 = v269;
    v124 = v270;
    v125 = MEMORY[0x29EDBCA98];
    v126 = MEMORY[0x29EDBCA88];
    sub_29D65F484();
    v127 = v118;
    v128 = 1;
    (*(v267 + 8))(v127, v124);

    MEMORY[0x2A1C7C4A8](v129, v130);
    sub_29D63DA78(0, &qword_2A17ACF50, sub_29D62FD54, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    v308 = v124;
    v309 = v125;
    v310 = OpaqueTypeConformance2;
    v311 = v126;
    swift_getOpaqueTypeConformance2();
    sub_29D62FF44();
    v131 = v293;
    v132 = v272;
    sub_29D65F494();
    (*(v271 + 8))(v123, v132);
    v133 = v131;
    if ((v244 & 1) == 0 && v261 == v242)
    {
      (*(v284 + 16))(v258, v283 + v231, v301);
      if (sub_29D6229CC())
      {
        sub_29D65F5A4();
      }

      else
      {
        sub_29D65F5B4();
      }

      v134 = v276;
      v135 = v275;
      v136 = v274;
      sub_29D65FAC4();
      v236(v136, v237, v135);
      v234(v134, 1, 1, v235);
      sub_29D65F534();

      sub_29D63DC88(v134, &qword_2A17AD220, MEMORY[0x29EDB9D18]);
      v232(v136, v135);
      sub_29D65FAC4();
      v308 = *&v116;
      sub_29D65F544();

      v137 = v246;
      sub_29D65F714();
      v138 = v247;
      v139 = v251;
      v140 = MEMORY[0x29EDB8700];
      sub_29D65F474();
      (*(v249 + 8))(v137, v139);
      v302 = sub_29D65FC04();
      v308 = v139;
      v309 = v140;
      v141 = swift_getOpaqueTypeConformance2();
      v142 = v254;
      v143 = v255;
      v144 = MEMORY[0x29EDBCA98];
      v145 = MEMORY[0x29EDBCA88];
      sub_29D65F484();
      (*(v248 + 8))(v138, v143);

      MEMORY[0x2A1C7C4A8](v146, v147);
      sub_29D65FC64();
      v308 = v143;
      v309 = v144;
      v310 = v141;
      v311 = v145;
      swift_getOpaqueTypeConformance2();
      v148 = v240;
      v149 = v239;
      v150 = v257;
      sub_29D65F464();
      v151 = v301;
      (*(v256 + 8))(v142, v150);
      (*(v252 + 8))(v149, v253);
      (*(v284 + 8))(v258, v151);
      (*(v298 + 32))(v259, v148, v299);
      v128 = 0;
      v133 = v293;
    }

    v152 = v259;
    (*(v298 + 56))(v259, v128, 1, v299);
    v153 = v278;
    v154 = *(v278 + 16);
    v155 = v277;
    v156 = v279;
    v154(v277, v133, v279);
    v157 = v285;
    sub_29D63DD00(v152, v285, &qword_2A17ACCD0, sub_29D62CC14);
    v158 = v286;
    v154(v286, v155, v156);
    sub_29D62D380();
    v159 = v288;
    v160 = *(v288 + 48);
    sub_29D63DD00(v157, &v158[v160], &qword_2A17ACCD0, sub_29D62CC14);
    v161 = v287;
    (*(v153 + 32))(v287, v158, v156);
    sub_29D63DD80(&v158[v160], v161 + *(v159 + 48), &qword_2A17ACCD0, sub_29D62CC14);
    sub_29D63DC88(v152, &qword_2A17ACCD0, sub_29D62CC14);
    v162 = *(v153 + 8);
    v162(v293, v156);
    sub_29D63DC88(v157, &qword_2A17ACCD0, sub_29D62CC14);
    v162(v155, v156);
    v163 = v297;
    sub_29D5DB0DC(v161, v297);
    v108 = *(v300 + 56);
    v15 = v289;
    (v108)(v163, 0, 1, v289);
    v64 = v276;
    v66 = v260;
    v92 = v283;
  }

  v164 = MEMORY[0x29EDB9CD0];
  if (*(v92 + 8))
  {
    v165 = v280;
    (v108)(v280, 1, 1, v15);
  }

  else
  {
    v166 = *v92;
    v167 = *(type metadata accessor for AudiogramLongitudinalPDFChartData(0) + 24);
    sub_29D65FAC4();
    v168 = *v164;
    v169 = *(v66 + 104);
    v170 = v274;
    LODWORD(v259) = v168;
    v171 = v275;
    v293 = (v66 + 104);
    v258 = v169;
    (v169)(v274);
    v172 = sub_29D65DCC4();
    v173 = *(v172 - 8);
    v174 = *(v173 + 56);
    v244 = v172;
    v242 = v174;
    v240 = (v173 + 56);
    (v174)(v64, 1, 1);
    v238 = v167;
    sub_29D65F534();

    sub_29D63DC88(v64, &qword_2A17AD220, MEMORY[0x29EDB9D18]);
    v175 = *(v66 + 8);
    v260 = v66 + 8;
    v239 = v175;
    v175(v170, v171);
    sub_29D65FAC4();
    v176 = -v166;
    v308 = *&v176;
    sub_29D65F544();

    sub_29D65FAC4();
    v308 = 1952867660;
    v309 = 0xE400000000000000;
    sub_29D65F544();

    v177 = v264;
    v178 = v301;
    sub_29D65F684();
    sub_29D65F9E4();
    v179 = v266;
    v180 = v268;
    v181 = MEMORY[0x29EDB86D0];
    sub_29D65F4A4();
    sub_29D62F6A8(&v308);
    (*(v265 + 8))(v177, v180);
    v182 = [objc_opt_self() hk_hearingHealthAudiogramLeftEarLineColor];
    v306 = sub_29D65FBD4();
    v302 = v180;
    v303 = v181;
    v183 = swift_getOpaqueTypeConformance2();
    v184 = v269;
    v185 = v270;
    v186 = MEMORY[0x29EDBCA98];
    v187 = MEMORY[0x29EDBCA88];
    sub_29D65F484();
    (*(v267 + 8))(v179, v185);

    MEMORY[0x2A1C7C4A8](v188, v189);
    sub_29D63DA78(0, &qword_2A17ACF50, sub_29D62FD54, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    v302 = v185;
    v303 = v186;
    v190 = v295;
    v304 = v183;
    v305 = v187;
    swift_getOpaqueTypeConformance2();
    sub_29D62FF44();
    v191 = v272;
    sub_29D65F494();
    (*(v271 + 8))(v184, v191);
    if (v245)
    {
      v192 = 1;
    }

    else
    {
      v192 = 1;
      if (v261 == v243)
      {
        v193 = v178;
        (*(v284 + 16))(v262, v283 + v238, v178);
        if (sub_29D6229CC())
        {
          sub_29D65F5B4();
        }

        else
        {
          sub_29D65F5A4();
        }

        sub_29D65FAC4();
        v194 = v274;
        v195 = v275;
        (v258)(v274, v259, v275);
        v196 = v276;
        v242(v276, 1, 1, v244);
        sub_29D65F534();

        sub_29D63DC88(v196, &qword_2A17AD220, MEMORY[0x29EDB9D18]);
        v239(v194, v195);
        sub_29D65FAC4();
        v302 = *&v176;
        sub_29D65F544();

        v197 = v246;
        sub_29D65F714();
        v198 = v247;
        v199 = v251;
        v200 = MEMORY[0x29EDB8700];
        sub_29D65F474();
        (*(v249 + 8))(v197, v199);
        v306 = sub_29D65FC04();
        v302 = v199;
        v303 = v200;
        v201 = swift_getOpaqueTypeConformance2();
        v202 = v254;
        v203 = v255;
        v204 = MEMORY[0x29EDBCA98];
        v205 = MEMORY[0x29EDBCA88];
        sub_29D65F484();
        (*(v248 + 8))(v198, v203);

        MEMORY[0x2A1C7C4A8](v206, v207);
        sub_29D65FC64();
        v302 = v203;
        v303 = v204;
        v304 = v201;
        v305 = v205;
        swift_getOpaqueTypeConformance2();
        v208 = v241;
        v209 = v250;
        v210 = v257;
        sub_29D65F464();
        (*(v256 + 8))(v202, v210);
        (*(v252 + 8))(v209, v253);
        (*(v284 + 8))(v262, v193);
        (*(v298 + 32))(v263, v208, v299);
        v192 = 0;
        v190 = v295;
      }
    }

    v211 = v263;
    (*(v298 + 56))(v263, v192, 1, v299);
    v212 = v278;
    v213 = *(v278 + 16);
    v214 = v277;
    v215 = v279;
    v213(v277, v190, v279);
    v216 = v285;
    sub_29D63DD00(v211, v285, &qword_2A17ACCD0, sub_29D62CC14);
    v217 = v286;
    v213(v286, v214, v215);
    sub_29D62D380();
    v218 = v288;
    v219 = *(v288 + 48);
    sub_29D63DD00(v216, &v217[v219], &qword_2A17ACCD0, sub_29D62CC14);
    v220 = v287;
    (*(v212 + 32))(v287, v217, v215);
    sub_29D63DD80(&v217[v219], v220 + *(v218 + 48), &qword_2A17ACCD0, sub_29D62CC14);
    sub_29D63DC88(v211, &qword_2A17ACCD0, sub_29D62CC14);
    v221 = *(v212 + 8);
    v221(v295, v215);
    sub_29D63DC88(v216, &qword_2A17ACCD0, sub_29D62CC14);
    v221(v214, v215);
    v165 = v280;
    sub_29D5DB0DC(v220, v280);
    (*(v300 + 56))(v165, 0, 1, v289);
  }

  v222 = v297;
  v223 = v281;
  sub_29D63DD00(v297, v281, &qword_2A17ACF38, sub_29D63ACD8);
  v224 = v282;
  sub_29D63DD00(v165, v282, &qword_2A17ACF38, sub_29D63ACD8);
  sub_29D63AFA8();
  v225 = v290;
  sub_29D63DD00(v223, v290, &qword_2A17ACF38, sub_29D63ACD8);
  v226 = v291;
  v227 = *(v291 + 48);
  sub_29D63DD00(v224, v225 + v227, &qword_2A17ACF38, sub_29D63ACD8);
  v228 = v292;
  sub_29D63DD80(v225, v292, &qword_2A17ACF38, sub_29D63ACD8);
  sub_29D63DD80(v225 + v227, v228 + *(v226 + 48), &qword_2A17ACF38, sub_29D63ACD8);
  sub_29D63DC88(v165, &qword_2A17ACF38, sub_29D63ACD8);
  sub_29D63DC88(v222, &qword_2A17ACF38, sub_29D63ACD8);
  sub_29D63DC88(v224, &qword_2A17ACF38, sub_29D63ACD8);
  return sub_29D63DC88(v223, &qword_2A17ACF38, sub_29D63ACD8);
}

uint64_t sub_29D637930@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_29D65DA44();
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  sub_29D602DBC(a1 & 1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_29D65FB54();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

double sub_29D6379CC@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_29D65FC14();
  v5 = objc_opt_self();
  v6 = &selRef_hk_hearingHealthAudiogramRightEarLineColor;
  if ((a1 & 1) == 0)
  {
    v6 = &selRef_hk_hearingHealthAudiogramLeftEarLineColor;
  }

  v7 = [v5 *v6];
  v8 = sub_29D65FBD4();
  sub_29D65F9E4();
  v9 = sub_29D65FC64();
  v11 = v10;
  sub_29D65FC64();
  sub_29D65F9F4();
  *a2 = v16 * 0.5;
  *(a2 + 8) = v16;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  *(a2 + 32) = v19;
  *(a2 + 40) = v20;
  *(a2 + 48) = v8;
  *(a2 + 56) = 256;
  *(a2 + 64) = v4;
  *(a2 + 72) = 256;
  *(a2 + 80) = v9;
  *(a2 + 88) = v11;
  *(a2 + 96) = v13;
  *(a2 + 112) = v14;
  result = *&v15;
  *(a2 + 128) = v15;
  return result;
}

void *sub_29D637B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v185 = a3;
  v157 = a2;
  v176 = sub_29D65F314();
  v161 = *(v176 - 8);
  MEMORY[0x2A1C7C4A8](v176, v3);
  v173 = &v154 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v6);
  v158 = &v154 - v7;
  MEMORY[0x2A1C7C4A8](v8, v9);
  *&v155 = &v154 - v10;
  MEMORY[0x2A1C7C4A8](v11, v12);
  v174 = &v154 - v13;
  v14 = sub_29D65DCA4();
  v15 = *(v14 - 8);
  v182 = v14;
  v183 = v15;
  MEMORY[0x2A1C7C4A8](v14, v16);
  v181 = &v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_29D65DA14();
  v164 = *(v165 - 1);
  MEMORY[0x2A1C7C4A8](v165, v18);
  v163 = &v154 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63AB20(0, &qword_2A17AC3A8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v20 - 8, v21);
  v180 = &v154 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23, v24);
  v26 = &v154 - v25;
  MEMORY[0x2A1C7C4A8](v27, v28);
  v30 = &v154 - v29;
  v31 = sub_29D65DBC4();
  v184 = *(v31 - 8);
  v32 = v184;
  MEMORY[0x2A1C7C4A8](v31, v33);
  v162 = &v154 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v35, v36);
  v179 = &v154 - v37;
  MEMORY[0x2A1C7C4A8](v38, v39);
  v178 = &v154 - v40;
  MEMORY[0x2A1C7C4A8](v41, v42);
  v159 = &v154 - v43;
  MEMORY[0x2A1C7C4A8](v44, v45);
  v47 = &v154 - v46;
  MEMORY[0x2A1C7C4A8](v48, v49);
  v51 = &v154 - v50;
  MEMORY[0x2A1C7C4A8](v52, v53);
  v55 = &v154 - v54;
  type metadata accessor for AudiogramPDFLongitudinalChart.Model(0);
  sub_29D65D994();
  sub_29D65D974();
  v172 = v55;
  sub_29D65DC64();
  v156 = v32;
  v58 = *(v32 + 48);
  v56 = v32 + 48;
  v57 = v58;
  v59 = v58(v30, 1, v31);
  v177 = v51;
  if (v59 == 1)
  {
    v26 = v30;
LABEL_5:
    sub_29D63DC88(v26, &qword_2A17AC3A8, MEMORY[0x29EDB9BC8]);
    sub_29D63E0DC(&qword_2A17AD1D8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9C00]);
    v63 = sub_29D660674();
    v65 = v64;
    v66 = sub_29D660674();
    v68 = v67;
    v69 = v173;
    sub_29D65F2E4();
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v70 = sub_29D65F2F4();
    v71 = sub_29D6601F4();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v185 = v66;
      v73 = v63;
      v74 = v72;
      v75 = swift_slowAlloc();
      v186 = v75;
      *v74 = 136446722;
      v76 = sub_29D6607A4();
      v78 = sub_29D64A1D0(v76, v77, &v186);

      *(v74 + 4) = v78;
      *(v74 + 12) = 2080;
      v79 = sub_29D64A1D0(v73, v65, &v186);

      *(v74 + 14) = v79;
      *(v74 + 22) = 2080;
      v80 = sub_29D64A1D0(v185, v68, &v186);

      *(v74 + 24) = v80;
      _os_log_impl(&dword_29D5D7000, v70, v71, "[%{public}s] Unable to determine first and last date of the years with startDate:%s endDate:%s", v74, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v75, -1, -1);
      MEMORY[0x29ED63350](v74, -1, -1);

      (*(v161 + 8))(v173, v176);
    }

    else
    {

      (*(v161 + 8))(v69, v176);
    }

    v81 = *(v184 + 8);
    goto LABEL_9;
  }

  v60 = v30;
  v61 = *(v184 + 32);
  v62 = v184 + 32;
  v61(v47, v60, v31);
  Date.lastDateOfTheYear(calendar:)(v26);
  v175 = v57;
  if (v57(v26, 1, v31) == 1)
  {
    (*(v184 + 8))(v47, v31);
    goto LABEL_5;
  }

  v171 = v56;
  v84 = v159;
  v160 = v62;
  v170 = v61;
  v61(v159, v26, v31);
  sub_29D63AB20(0, &qword_2A17AD1E0, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
  v85 = v183;
  v86 = (*(v183 + 80) + 32) & ~*(v183 + 80);
  v87 = swift_allocObject();
  v154 = xmmword_29D661D90;
  *(v87 + 16) = xmmword_29D661D90;
  v88 = *(v85 + 104);
  v169 = *MEMORY[0x29EDB9CD0];
  v89 = v182;
  v167 = v88;
  v168 = v85 + 104;
  v88(v87 + v86);
  sub_29D63D4DC(v87);
  swift_setDeallocating();
  v90 = *(v85 + 8);
  v183 = v85 + 8;
  v166 = v90;
  v90((v87 + v86), v89);
  swift_deallocClassInstance();
  v91 = v163;
  sub_29D65DC54();

  v92 = sub_29D65D9F4();
  v94 = v93;
  result = (*(v164 + 1))(v91, v165);
  if (v94)
  {
    sub_29D63E0DC(&qword_2A17AD1D8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9C00]);
    v95 = sub_29D660674();
    v97 = v96;
    v98 = sub_29D660674();
    v100 = v99;
    v101 = v158;
    sub_29D65F2E4();
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v102 = sub_29D65F2F4();
    v103 = sub_29D6601F4();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v173 = v47;
      v185 = v98;
      v105 = v104;
      v106 = v95;
      v107 = swift_slowAlloc();
      v186 = v107;
      *v105 = 136446722;
      v108 = sub_29D6607A4();
      v110 = sub_29D64A1D0(v108, v109, &v186);

      *(v105 + 4) = v110;
      *(v105 + 12) = 2080;
      v111 = sub_29D64A1D0(v106, v97, &v186);

      *(v105 + 14) = v111;
      *(v105 + 22) = 2080;
      v112 = sub_29D64A1D0(v185, v100, &v186);

      *(v105 + 24) = v112;
      _os_log_impl(&dword_29D5D7000, v102, v103, "[%{public}s] Unable to years between firstDate:%s lastDate:%s", v105, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v107, -1, -1);
      v47 = v173;
      MEMORY[0x29ED63350](v105, -1, -1);

      (*(v161 + 8))(v158, v176);
    }

    else
    {

      (*(v161 + 8))(v101, v176);
    }

    v81 = *(v184 + 8);
    v81(v159, v31);
    v144 = v47;
LABEL_35:
    v81(v144, v31);
LABEL_9:
    v81(v177, v31);
    v81(v172, v31);
    return MEMORY[0x29EDCA190];
  }

  if (v92 < 1)
  {
    v145 = v47;
    v146 = v155;
    sub_29D65F2E4();
    v147 = sub_29D65F2F4();
    v148 = sub_29D6601F4();
    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v186 = v150;
      *v149 = 136446210;
      v151 = sub_29D6607A4();
      v153 = sub_29D64A1D0(v151, v152, &v186);

      *(v149 + 4) = v153;
      v84 = v159;
      _os_log_impl(&dword_29D5D7000, v147, v148, "[%{public}s] 0 years between key dates found.", v149, 0xCu);
      sub_29D5DF1C4(v150);
      MEMORY[0x29ED63350](v150, -1, -1);
      MEMORY[0x29ED63350](v149, -1, -1);
    }

    (*(v161 + 8))(v146, v176);
    v81 = *(v184 + 8);
    v81(v84, v31);
    v144 = v145;
    goto LABEL_35;
  }

  v173 = v47;
  v113 = __OFADD__(v92, v157 & 1);
  v114 = v92 + (v157 & 1);
  if (v113)
  {
LABEL_36:
    __break(1u);
  }

  else
  {
    sub_29D63AB20(0, &qword_2A17AD1E8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9E90]);
    v115 = v184;
    v116 = (*(v184 + 80) + 32) & ~*(v184 + 80);
    v158 = *(v184 + 72);
    v117 = swift_allocObject();
    *(v117 + 16) = v154;
    v119 = *(v115 + 16);
    v118 = v115 + 16;
    v82 = v117;
    v157 = v116;
    v164 = v119;
    result = (v119)(v117 + v116, v173, v31);
    v121 = v174;
    if (v114 >= 1)
    {
      v165 = (v156 + 8);
      v161 += 8;
      v122 = 1;
      *&v120 = 136446722;
      v155 = v120;
      v184 = v118;
      v163 = v114;
      while (1)
      {
        v123 = v181;
        v124 = v182;
        v167(v181, v169, v182);
        v125 = v180;
        v126 = v173;
        sub_29D65DC84();
        v166(v123, v124);
        if (v175(v125, 1, v31) == 1)
        {
          sub_29D63DC88(v125, &qword_2A17AC3A8, MEMORY[0x29EDB9BC8]);
          sub_29D65F2E4();
          v127 = v162;
          v164(v162, v126, v31);
          v128 = v121;
          v129 = sub_29D65F2F4();
          v130 = sub_29D6601F4();
          if (os_log_type_enabled(v129, v130))
          {
            v131 = swift_slowAlloc();
            v156 = swift_slowAlloc();
            v186 = v156;
            *v131 = v155;
            v132 = sub_29D6607A4();
            v134 = sub_29D64A1D0(v132, v133, &v186);

            *(v131 + 4) = v134;
            *(v131 + 12) = 2080;
            sub_29D63E0DC(&qword_2A17AD1D8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9C00]);
            v135 = sub_29D660674();
            v137 = v136;
            v138 = *v165;
            (*v165)(v127, v31);
            v139 = sub_29D64A1D0(v135, v137, &v186);

            *(v131 + 14) = v139;
            *(v131 + 22) = 2048;
            *(v131 + 24) = v122;
            _os_log_impl(&dword_29D5D7000, v129, v130, "[%{public}s] Unable to determine first date of the year for date:%s + years:%ld", v131, 0x20u);
            v140 = v156;
            swift_arrayDestroy();
            MEMORY[0x29ED63350](v140, -1, -1);
            MEMORY[0x29ED63350](v131, -1, -1);

            v121 = v174;
            result = (*v161)(v174, v176);
          }

          else
          {

            v138 = *v165;
            (*v165)(v127, v31);
            result = (*v161)(v128, v176);
            v121 = v128;
          }
        }

        else
        {
          v141 = v178;
          v170(v178, v125, v31);
          v164(v179, v141, v31);
          v143 = v82[2];
          v142 = v82[3];
          if (v143 >= v142 >> 1)
          {
            v82 = sub_29D65BA9C((v142 > 1), v143 + 1, 1, v82);
          }

          v138 = *v165;
          (*v165)(v178, v31);
          v82[2] = v143 + 1;
          result = (v170)(v82 + v157 + v143 * v158, v179, v31);
          v121 = v174;
        }

        if (v163 == v122)
        {
          break;
        }

        v113 = __OFADD__(v122++, 1);
        if (v113)
        {
          __break(1u);
          goto LABEL_36;
        }
      }

      v138(v159, v31);
      v138(v173, v31);
      v138(v177, v31);
      v138(v172, v31);
      return v82;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29D638D14@<X0>(uint64_t a1@<X8>)
{
  v117 = a1;
  v3 = sub_29D65F5E4();
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v106 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D65F604();
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v102 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_29D65DB34();
  v94 = *(v95 - 8);
  MEMORY[0x2A1C7C4A8](v95, v9);
  v93 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_29D65DB44();
  v92 = *(v97 - 8);
  MEMORY[0x2A1C7C4A8](v97, v11);
  v91 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v14);
  v96 = &v91 - v15;
  sub_29D63DF60(0, &qword_2A17AD118, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
  v103 = v16;
  v99 = *(v16 - 1);
  MEMORY[0x2A1C7C4A8](v16, v17);
  v98 = &v91 - v18;
  sub_29D63B710(0);
  v105 = v19;
  v104 = *(v19 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v19, v20);
  v101 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63B614(0, v21);
  v115 = v23;
  v114 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23, v24);
  v100 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63AB20(0, &qword_2A17AD100, sub_29D63B614, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v26 - 8, v27);
  v116 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v29, v30);
  v112 = &v91 - v31;
  v32 = sub_29D65F654();
  MEMORY[0x2A1C7C4A8](v32 - 8, v33);
  v113 = sub_29D65F674();
  v109 = *(v113 - 8);
  MEMORY[0x2A1C7C4A8](v113, v34);
  v111 = &v91 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v36, v37);
  v118 = &v91 - v38;
  v39 = sub_29D65F444();
  v40 = *(v39 - 8);
  MEMORY[0x2A1C7C4A8](v39, v41);
  v43 = &v91 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62DA2C(0, &qword_2A17ACD78, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548], MEMORY[0x29EDB86A8]);
  v110 = v44;
  v108 = *(v44 - 8);
  MEMORY[0x2A1C7C4A8](v44, v45);
  v107 = &v91 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v47, v48);
  v119 = &v91 - v49;
  v50 = sub_29D65F704();
  v51 = sub_29D65F704();
  v52 = sub_29D65F6F4();
  v53 = v52 - 1;
  if (__OFSUB__(v52, 1))
  {
    __break(1u);
LABEL_33:
    swift_once();
    goto LABEL_17;
  }

  v54 = v51 == v53 || v50 == 0;
  LODWORD(v50) = v54;
  v2 = 0x2A17AC000uLL;
  v1 = 0x2A17AC000uLL;
  if (v54)
  {
    if (qword_2A17AC078 != -1)
    {
      swift_once();
    }

    v55 = &xmmword_2A17AD738;
  }

  else
  {
    if (qword_2A17AC080 != -1)
    {
      swift_once();
    }

    v55 = &xmmword_2A17AD760;
  }

  v56 = *v55;
  v57 = *(v55 + 2);
  v58 = *(v55 + 4);
  v59 = *(v55 + 1);
  v60 = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v129 = v56;
  v130 = v59;
  v131 = v57;
  v132 = v60;
  v133 = v58;
  sub_29D65F434();
  if (qword_2A17AC070 != -1)
  {
    goto LABEL_33;
  }

LABEL_17:
  v124 = qword_2A17AD730;
  sub_29D65F624();
  (*(v40 + 8))(v43, v39);
  if (v50)
  {
    if (*(v1 + 120) != -1)
    {
      swift_once();
    }

    v61 = &xmmword_2A17AD738;
  }

  else
  {
    if (*(v2 + 128) != -1)
    {
      swift_once();
    }

    v61 = &xmmword_2A17AD760;
  }

  v62 = v115;
  v63 = *v61;
  v64 = *(v61 + 2);
  v65 = *(v61 + 3);
  v66 = *(v61 + 4);
  v67 = *(v61 + 1);
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  sub_29D65F644();
  v124 = v63;
  v125 = v67;
  v126 = v64;
  v127 = v65;
  v128 = v66;
  v68 = sub_29D65F664();
  if (v51 == v53)
  {
    v69 = 1;
    v70 = v114;
    v71 = v112;
  }

  else
  {
    v72 = v91;
    MEMORY[0x29ED5FCB0](v68);
    v73 = v93;
    sub_29D65DB24();
    sub_29D65DB14();
    (*(v94 + 8))(v73, v95);
    (*(v92 + 8))(v72, v97);
    sub_29D65FC94();
    sub_29D65F5F4();
    sub_29D65F5D4();
    sub_29D63E0DC(&qword_2A17AD1C8, MEMORY[0x29EDB9BB0], MEMORY[0x29EDB9BA8]);
    v74 = v98;
    sub_29D65F504();
    if (qword_2A17AC068 != -1)
    {
      swift_once();
    }

    v75 = sub_29D63B7C0();
    v76 = v101;
    v77 = v103;
    sub_29D65F634();
    (*(v99 + 8))(v74, v77);
    v71 = v112;
    if (qword_2A17AC088 != -1)
    {
      swift_once();
    }

    v123 = qword_2A17AD788;
    v120 = v77;
    v121 = v75;
    swift_getOpaqueTypeConformance2();
    v78 = v100;
    v79 = v105;
    sub_29D65F624();
    (*(v104 + 8))(v76, v79);
    v70 = v114;
    (*(v114 + 32))(v71, v78, v62);
    v69 = 0;
  }

  (*(v70 + 56))(v71, v69, 1, v62);
  v80 = v108;
  v81 = v107;
  v82 = v110;
  (*(v108 + 16))(v107, v119, v110);
  v120 = v81;
  v83 = v109;
  v84 = v111;
  v85 = v118;
  v86 = v113;
  (*(v109 + 16))(v111, v118, v113);
  v121 = v84;
  v87 = v116;
  sub_29D63DD00(v71, v116, &qword_2A17AD100, sub_29D63B614);
  v122 = v87;
  sub_29D632B00(&v120, v117);
  sub_29D63DC88(v71, &qword_2A17AD100, sub_29D63B614);
  v88 = *(v83 + 8);
  v88(v85, v86);
  v89 = *(v80 + 8);
  v89(v119, v82);
  sub_29D63DC88(v87, &qword_2A17AD100, sub_29D63B614);
  v88(v84, v86);
  return (v89)(v81, v82);
}

uint64_t sub_29D639A54@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v77[1] = a1;
  v93 = a2;
  sub_29D63C910(0);
  v92 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v91 = v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D65F5E4();
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v77[2] = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D65F604();
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  sub_29D63C0F4(0);
  v82 = v10;
  v79 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10, v11);
  v78 = (v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D63C040(0, v12);
  v84 = v14;
  v83 = *(v14 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v14, v15);
  v81 = v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63BF40(0, v16);
  v90 = v18;
  v19 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v80 = v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63AB20(0, &qword_2A17AD160, sub_29D63BF40, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v22 - 8, v23);
  v89 = v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v25, v26);
  v88 = v77 - v27;
  v28 = sub_29D65F444();
  v29 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28, v30);
  v32 = v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62DA2C(0, &qword_2A17ACD78, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548], MEMORY[0x29EDB86A8]);
  v87 = v33;
  v34 = *(v33 - 8);
  MEMORY[0x2A1C7C4A8](v33, v35);
  v86 = v77 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v37, v38);
  v40 = v77 - v39;
  if (!sub_29D65F704())
  {
    goto LABEL_4;
  }

  v41 = sub_29D65F704();
  v42 = sub_29D65F6F4();
  if (__OFSUB__(v42, 1))
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  if (v41 != v42 - 1)
  {
    if (qword_2A17AC080 != -1)
    {
      swift_once();
    }

    v43 = &xmmword_2A17AD760;
  }

  else
  {
LABEL_4:
    if (qword_2A17AC078 != -1)
    {
      swift_once();
    }

    v43 = &xmmword_2A17AD738;
  }

  v44 = *v43;
  v45 = *(v43 + 2);
  v46 = *(v43 + 4);
  v47 = *(v43 + 1);
  v48 = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v97 = v44;
  v98 = v47;
  v99 = v45;
  v100 = v48;
  v101 = v46;
  sub_29D65F434();
  if (qword_2A17AC070 != -1)
  {
    swift_once();
  }

  v94 = qword_2A17AD730;
  sub_29D65F624();
  v29[1](v32, v28);
  sub_29D65F6E4();
  if (v95)
  {
    v49 = 1;
    v50 = v88;
    v51 = v90;
    goto LABEL_18;
  }

  v52 = sub_29D65FC84();
  MEMORY[0x2A1C7C4A8](v52, v53);
  sub_29D65F5F4();
  sub_29D65F5D4();
  sub_29D63DA78(0, &qword_2A17AD180, sub_29D63C190, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
  v75 = v54;
  v76 = sub_29D63C240();
  v73 = sub_29D63C9E8;
  v74 = &v71;
  LOBYTE(v72) = 0;
  v71 = 0;
  v29 = v78;
  sub_29D65F514();
  if (qword_2A17AC068 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v55 = sub_29D63E0DC(&qword_2A17AD190, sub_29D63C0F4, MEMORY[0x29EDB8618]);
  v56 = v81;
  v57 = v82;
  sub_29D65F634();
  (*(v79 + 8))(v29, v57);
  if (qword_2A17AC088 != -1)
  {
    swift_once();
  }

  v95 = v55;
  v96 = qword_2A17AD788;
  v94 = v57;
  swift_getOpaqueTypeConformance2();
  v58 = v80;
  v59 = v84;
  sub_29D65F624();
  (*(v83 + 8))(v56, v59);
  v50 = v88;
  v51 = v90;
  (*(v19 + 32))(v88, v58, v90);
  v49 = 0;
LABEL_18:
  (*(v19 + 56))(v50, v49, 1, v51);
  v60 = *(v34 + 16);
  v61 = v86;
  v85 = v40;
  v62 = v40;
  v63 = v87;
  v60(v86, v62, v87);
  v64 = v89;
  sub_29D63DD00(v50, v89, &qword_2A17AD160, sub_29D63BF40);
  v65 = v91;
  v60(v91, v61, v63);
  sub_29D63C3C4();
  v66 = v92;
  v67 = *(v92 + 48);
  sub_29D63DD00(v64, &v65[v67], &qword_2A17AD160, sub_29D63BF40);
  v68 = v93;
  (*(v34 + 32))(v93, v65, v63);
  sub_29D63DD80(&v65[v67], v68 + *(v66 + 48), &qword_2A17AD160, sub_29D63BF40);
  sub_29D63DC88(v50, &qword_2A17AD160, sub_29D63BF40);
  v69 = *(v34 + 8);
  v69(v85, v63);
  sub_29D63DC88(v64, &qword_2A17AD160, sub_29D63BF40);
  return (v69)(v61, v63);
}

double sub_29D63A4B8@<D0>(uint64_t a1@<X8>, double a2@<D0>, uint64_t a3@<X0>)
{
  *&v14 = sub_29D63D7F0(a3, -a2);
  *(&v14 + 1) = v4;
  sub_29D60C02C();
  v5 = sub_29D65FB64();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  KeyPath = swift_getKeyPath();
  sub_29D65FC74();
  sub_29D65F9F4();
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v11;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0x3FF0000000000000;
  *(a1 + 48) = v14;
  *(a1 + 64) = v15;
  result = *&v16;
  *(a1 + 80) = v16;
  return result;
}

uint64_t sub_29D63A580()
{
  sub_29D63C8A8(v0 + OBJC_IVAR____TtC16HearingAppPlugin29AudiogramPDFLongitudinalChart_chartModel, type metadata accessor for AudiogramPDFLongitudinalChart.Model);

  return swift_deallocClassInstance();
}

uint64_t sub_29D63A620(uint64_t a1)
{
  result = type metadata accessor for AudiogramPDFLongitudinalChart.Model(319);
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

void sub_29D63A704(uint64_t a1)
{
  sub_29D63AB20(319, &qword_2A17AD080, type metadata accessor for AudiogramLongitudinalPDFChartData, MEMORY[0x29EDC9A40]);
  if (v1 <= 0x3F)
  {
    sub_29D65D9A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29D63A7EC(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = sub_29D63E0DC(&qword_2A17AC340, type metadata accessor for AudiogramPDFLongitudinalChart, &unk_29D664840);

  return MEMORY[0x2A1C635D0](a1, a2, a3, v7);
}

uint64_t sub_29D63A8A0(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = sub_29D63E0DC(&qword_2A17AC340, type metadata accessor for AudiogramPDFLongitudinalChart, &unk_29D664840);

  return a5(a1, a2, v7);
}

uint64_t sub_29D63A930(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29D63E0DC(&qword_2A17AD090, type metadata accessor for AudiogramPDFLongitudinalChart, &unk_29D664800);
  *v3 = v1;
  v3[1] = sub_29D5F8D78;

  return MEMORY[0x2A1C61D30](a1, v4);
}

uint64_t sub_29D63AAB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29D63AB20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D63ABCC(uint64_t a1)
{
  if (!qword_2A17AD0A0)
  {
    sub_29D62F978(255);
    sub_29D62CD58(255);
    v1 = sub_29D65F454();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AD0A0);
    }
  }
}

void sub_29D63AC40(uint64_t a1)
{
  if (!qword_2A17ACF30)
  {
    sub_29D63AB20(255, &qword_2A17ACF38, sub_29D63ACD8, MEMORY[0x29EDC9C68]);
    v1 = sub_29D65F454();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17ACF30);
    }
  }
}

void sub_29D63ACD8(uint64_t a1)
{
  if (!qword_2A17ACF40)
  {
    sub_29D62FBE8(255);
    sub_29D63AB20(255, &qword_2A17ACCD0, sub_29D62CC14, MEMORY[0x29EDC9C68]);
    v1 = sub_29D65F454();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17ACF40);
    }
  }
}

unint64_t sub_29D63AD7C()
{
  result = qword_2A17ACF90;
  if (!qword_2A17ACF90)
  {
    sub_29D63AB20(255, &qword_2A17ACF20, sub_29D62FA90, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACF90);
  }

  return result;
}

unint64_t sub_29D63AE04()
{
  result = qword_2A17AD0A8;
  if (!qword_2A17AD0A8)
  {
    sub_29D63ABCC(255);
    sub_29D63AF30();
    sub_29D62DA2C(255, &qword_2A17ACCF0, MEMORY[0x29EDB86E8], MEMORY[0x29EDB86E0], MEMORY[0x29EDB8598]);
    sub_29D65F6B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD0A8);
  }

  return result;
}

unint64_t sub_29D63AF30()
{
  result = qword_2A17ACF98;
  if (!qword_2A17ACF98)
  {
    sub_29D62F978(255);
    sub_29D630018();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACF98);
  }

  return result;
}

unint64_t sub_29D63AFA8()
{
  result = qword_2A17ACFA8;
  if (!qword_2A17ACFA8)
  {
    sub_29D63AB20(255, &qword_2A17ACF38, sub_29D63ACD8, MEMORY[0x29EDC9C68]);
    sub_29D6300F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACFA8);
  }

  return result;
}

void sub_29D63B050(uint64_t a1)
{
  if (!qword_2A17AD0B0)
  {
    sub_29D63AB84(255);
    sub_29D65FAF4();
    v1 = sub_29D65FA14();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AD0B0);
    }
  }
}

void sub_29D63B0B8(uint64_t a1)
{
  if (!qword_2A17AD0B8)
  {
    sub_29D63B050(255);
    sub_29D63B15C(255);
    sub_29D63B1F0();
    sub_29D63B2D0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17AD0B8);
    }
  }
}

void sub_29D63B15C(uint64_t a1)
{
  if (!qword_2A17AD0C0)
  {
    sub_29D65DBC4();
    sub_29D63E0DC(&qword_2A17AD0C8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
    v1 = sub_29D65FF04();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AD0C0);
    }
  }
}

unint64_t sub_29D63B1F0()
{
  result = qword_2A17AD0D0;
  if (!qword_2A17AD0D0)
  {
    sub_29D63B050(255);
    sub_29D63E0DC(&qword_2A17AD0D8, sub_29D63AB84, MEMORY[0x29EDB8690]);
    sub_29D63E0DC(&qword_2A17ACD50, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD0D0);
  }

  return result;
}

unint64_t sub_29D63B2D0()
{
  result = qword_2A17AD0E0;
  if (!qword_2A17AD0E0)
  {
    sub_29D63B15C(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD0E0);
  }

  return result;
}

void sub_29D63B340(uint64_t a1)
{
  if (!qword_2A17AD0E8)
  {
    sub_29D63B0B8(255);
    sub_29D63B464(255);
    sub_29D63B050(255);
    sub_29D63B15C(255);
    sub_29D63B1F0();
    sub_29D63B2D0();
    swift_getOpaqueTypeConformance2();
    sub_29D63E0DC(&qword_2A17AD138, sub_29D63B464, MEMORY[0x29EDB86F8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17AD0E8);
    }
  }
}

void sub_29D63B4AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29D63B52C(uint64_t a1)
{
  if (!qword_2A17AD0F8)
  {
    sub_29D62DA2C(255, &qword_2A17ACD78, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548], MEMORY[0x29EDB86A8]);
    sub_29D65F674();
    sub_29D63AB20(255, &qword_2A17AD100, sub_29D63B614, MEMORY[0x29EDC9C68]);
    v1 = sub_29D65F454();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AD0F8);
    }
  }
}

void sub_29D63B614(uint64_t a1, double a2)
{
  if (!qword_2A17AD108)
  {
    sub_29D63B710(255);
    sub_29D63DF60(255, &qword_2A17AD118, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
    sub_29D63B7C0();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17AD108);
    }
  }
}

void sub_29D63B710(uint64_t a1)
{
  if (!qword_2A17AD110)
  {
    sub_29D63DF60(255, &qword_2A17AD118, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
    sub_29D63B7C0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17AD110);
    }
  }
}

unint64_t sub_29D63B7C0()
{
  result = qword_2A17AD120;
  if (!qword_2A17AD120)
  {
    sub_29D63DF60(255, &qword_2A17AD118, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD120);
  }

  return result;
}

unint64_t sub_29D63B844()
{
  result = qword_2A17AD128;
  if (!qword_2A17AD128)
  {
    sub_29D63B52C(255);
    sub_29D65F444();
    swift_getOpaqueTypeConformance2();
    sub_29D63B918();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD128);
  }

  return result;
}

unint64_t sub_29D63B918()
{
  result = qword_2A17AD130;
  if (!qword_2A17AD130)
  {
    sub_29D63AB20(255, &qword_2A17AD100, sub_29D63B614, MEMORY[0x29EDC9C68]);
    sub_29D63B710(255);
    sub_29D63DF60(255, &qword_2A17AD118, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
    sub_29D63B7C0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD130);
  }

  return result;
}

void sub_29D63BA68(uint64_t a1)
{
  if (!qword_2A17AD140)
  {
    sub_29D63B340(255);
    sub_29D63DF60(255, &qword_2A17ACD38, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D63B0B8(255);
    sub_29D63B464(255);
    sub_29D63B050(255);
    sub_29D63B15C(255);
    sub_29D63B1F0();
    sub_29D63B2D0();
    swift_getOpaqueTypeConformance2();
    sub_29D63E0DC(&qword_2A17AD138, sub_29D63B464, MEMORY[0x29EDB86F8]);
    swift_getOpaqueTypeConformance2();
    sub_29D62D6CC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17AD140);
    }
  }
}

void sub_29D63BC08(uint64_t a1)
{
  if (!qword_2A17AD148)
  {
    sub_29D63BA68(255);
    sub_29D63BE1C(255);
    sub_29D63B340(255);
    sub_29D63DF60(255, &qword_2A17ACD38, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D63B0B8(255);
    sub_29D63B464(255);
    sub_29D63B050(255);
    sub_29D63B15C(255);
    sub_29D63B1F0();
    sub_29D63B2D0();
    swift_getOpaqueTypeConformance2();
    v1 = MEMORY[0x29EDB86F8];
    sub_29D63E0DC(&qword_2A17AD138, sub_29D63B464, MEMORY[0x29EDB86F8]);
    swift_getOpaqueTypeConformance2();
    sub_29D62D6CC();
    swift_getOpaqueTypeConformance2();
    sub_29D63E0DC(&qword_2A17AD1A8, sub_29D63BE1C, v1);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17AD148);
    }
  }
}

void sub_29D63BE64(uint64_t a1)
{
  if (!qword_2A17AD158)
  {
    sub_29D62DA2C(255, &qword_2A17ACD78, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548], MEMORY[0x29EDB86A8]);
    sub_29D63AB20(255, &qword_2A17AD160, sub_29D63BF40, MEMORY[0x29EDC9C68]);
    v1 = sub_29D65F454();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AD158);
    }
  }
}

void sub_29D63BF40(uint64_t a1, double a2)
{
  if (!qword_2A17AD168)
  {
    sub_29D63C040(255, a2);
    sub_29D63C0F4(255);
    sub_29D63E0DC(&qword_2A17AD190, sub_29D63C0F4, MEMORY[0x29EDB8618]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17AD168);
    }
  }
}

void sub_29D63C040(uint64_t a1, double a2)
{
  if (!qword_2A17AD170)
  {
    sub_29D63C0F4(255);
    sub_29D63E0DC(&qword_2A17AD190, sub_29D63C0F4, MEMORY[0x29EDB8618]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17AD170);
    }
  }
}

void sub_29D63C0F4(uint64_t a1)
{
  if (!qword_2A17AD178)
  {
    sub_29D63DA78(255, &qword_2A17AD180, sub_29D63C190, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29D63C240();
    v1 = sub_29D65F524();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AD178);
    }
  }
}

void sub_29D63C190(uint64_t a1)
{
  if (!qword_2A17ACDB0)
  {
    sub_29D63C1F0();
    v1 = sub_29D65FA14();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17ACDB0);
    }
  }
}

void sub_29D63C1F0()
{
  if (!qword_2A17ACDB8)
  {
    v0 = sub_29D65FAE4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17ACDB8);
    }
  }
}

unint64_t sub_29D63C240()
{
  result = qword_2A17AD188;
  if (!qword_2A17AD188)
  {
    sub_29D63DA78(255, &qword_2A17AD180, sub_29D63C190, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29D62DF3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD188);
  }

  return result;
}

unint64_t sub_29D63C2F8()
{
  result = qword_2A17AD198;
  if (!qword_2A17AD198)
  {
    sub_29D63BE64(255);
    sub_29D65F444();
    swift_getOpaqueTypeConformance2();
    sub_29D63C3C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD198);
  }

  return result;
}

unint64_t sub_29D63C3C4()
{
  result = qword_2A17AD1A0;
  if (!qword_2A17AD1A0)
  {
    sub_29D63AB20(255, &qword_2A17AD160, sub_29D63BF40, MEMORY[0x29EDC9C68]);
    sub_29D63C040(255, v1);
    sub_29D63C0F4(255);
    sub_29D63E0DC(&qword_2A17AD190, sub_29D63C0F4, MEMORY[0x29EDB8618]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD1A0);
  }

  return result;
}

void sub_29D63C518()
{
  if (!qword_2A17AD1B0)
  {
    sub_29D63BC08(255);
    sub_29D65F574();
    sub_29D63BA68(255);
    sub_29D63BE1C(255);
    sub_29D63B340(255);
    sub_29D63DF60(255, &qword_2A17ACD38, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D63B0B8(255);
    sub_29D63B464(255);
    sub_29D63B050(255);
    sub_29D63B15C(255);
    sub_29D63B1F0();
    sub_29D63B2D0();
    swift_getOpaqueTypeConformance2();
    v0 = MEMORY[0x29EDB86F8];
    sub_29D63E0DC(&qword_2A17AD138, sub_29D63B464, MEMORY[0x29EDB86F8]);
    swift_getOpaqueTypeConformance2();
    sub_29D62D6CC();
    swift_getOpaqueTypeConformance2();
    sub_29D63E0DC(&qword_2A17AD1A8, sub_29D63BE1C, v0);
    swift_getOpaqueTypeConformance2();
    sub_29D63E0DC(&qword_2A17ACE90, MEMORY[0x29EDB8630], MEMORY[0x29EDB8628]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17AD1B0);
    }
  }
}

void sub_29D63C810(uint64_t a1)
{
  if (!qword_2A17AD1B8)
  {
    sub_29D63C518();
    sub_29D63AB20(255, &qword_2A17ACEA0, MEMORY[0x29EDBC550], MEMORY[0x29EDBC938]);
    v1 = sub_29D65FA14();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AD1B8);
    }
  }
}

uint64_t sub_29D63C8A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D63C910(uint64_t a1)
{
  if (!qword_2A17AD1C0)
  {
    sub_29D62DA2C(255, &qword_2A17ACD78, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548], MEMORY[0x29EDB86A8]);
    sub_29D63AB20(255, &qword_2A17AD160, sub_29D63BF40, MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17AD1C0);
    }
  }
}

uint64_t sub_29D63C9F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D63DF60(0, &qword_2A1A1E6C8, MEMORY[0x29EDC99B0], MEMORY[0x29EDC99C0], MEMORY[0x29EDC9D70]);
    v3 = sub_29D660514();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_29D660724();
      _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
      sub_29D65FFA4();
      result = sub_29D660744();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_29D660694();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA1A0];
  }

  return result;
}

uint64_t sub_29D63CBA4(uint64_t a1)
{
  v2 = sub_29D65DD54();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_29D63DFB4(0);
    v11 = sub_29D660514();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_29D63E0DC(&qword_2A1A1EA58, MEMORY[0x29EDC3798], MEMORY[0x29EDC37A0]);
      v18 = sub_29D65FED4();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_29D63E0DC(&qword_2A1A1E550, MEMORY[0x29EDC3798], MEMORY[0x29EDC37A8]);
          v25 = sub_29D65FF14();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

void sub_29D63CEDC(unint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a5;
    v11 = a2;
    v12 = sub_29D6604B4();
    a2 = v11;
    a5 = v10;
    if (v12)
    {
LABEL_3:
      sub_29D63DED4(0, a2, a3, a4, a5);
      v7 = sub_29D660514();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_29D6604B4();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x29EDCA1A0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v46 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v42 = v5;
    while (1)
    {
      v15 = MEMORY[0x29ED62900](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = sub_29D660364();
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *(v13 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        sub_29D5DF448(0, a3, a4);
        while (1)
        {
          v25 = *(*(v7 + 48) + 8 * v20);
          v26 = sub_29D660374();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *(v13 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            v5 = v42;
            goto LABEL_18;
          }
        }

        sub_29D65EE94();
        v9 = v46;
        v5 = v42;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v21) = v23 | v22;
        *(*(v7 + 48) + 8 * v20) = v17;
        v27 = *(v7 + 16);
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v43 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = *(v5 + 32 + 8 * v29);
      v31 = sub_29D660364();
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      v35 = *(v13 + 8 * (v33 >> 6));
      v36 = 1 << v33;
      if (((1 << v33) & v35) != 0)
      {
        v37 = ~v32;
        sub_29D5DF448(0, a3, a4);
        while (1)
        {
          v38 = *(*(v7 + 48) + 8 * v33);
          v39 = sub_29D660374();

          if (v39)
          {
            break;
          }

          v33 = (v33 + 1) & v37;
          v34 = v33 >> 6;
          v35 = *(v13 + 8 * (v33 >> 6));
          v36 = 1 << v33;
          if (((1 << v33) & v35) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v34) = v36 | v35;
        *(*(v7 + 48) + 8 * v33) = v30;
        v40 = *(v7 + 16);
        v16 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v41;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_29D63D1C8(uint64_t a1)
{
  v2 = sub_29D65E844();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_29D63E048(0);
    v11 = sub_29D660514();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_29D63E0DC(&qword_2A17AD238, MEMORY[0x29EDC2148], MEMORY[0x29EDC2150]);
      v18 = sub_29D65FED4();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_29D63E0DC(&qword_2A17AD240, MEMORY[0x29EDC2148], MEMORY[0x29EDC2158]);
          v25 = sub_29D65FF14();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

uint64_t sub_29D63D4DC(uint64_t a1)
{
  v2 = sub_29D65DCA4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_29D63D9E4(0);
    v11 = sub_29D660514();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_29D63E0DC(&qword_2A17AD1F8, MEMORY[0x29EDB9D00], MEMORY[0x29EDB9D08]);
      v18 = sub_29D65FED4();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_29D63E0DC(&qword_2A17AD200, MEMORY[0x29EDB9D00], MEMORY[0x29EDB9D10]);
          v25 = sub_29D65FF14();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

uint64_t sub_29D63D7F0(uint64_t result, double a2)
{
  if (result)
  {
    if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (a2 > -9.22337204e18)
      {
        if (a2 < 9.22337204e18)
        {
          v2 = sub_29D660674();
          MEMORY[0x29ED62350](0x4C48426420, 0xE500000000000000);
          return v2;
        }

        goto LABEL_14;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a2 < 9.22337204e18)
  {
    return sub_29D660674();
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_29D63D8F4(uint64_t a1)
{
  if (!qword_2A17AD1D0)
  {
    sub_29D62DA2C(255, &qword_2A17ACD78, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548], MEMORY[0x29EDB86A8]);
    sub_29D65F674();
    sub_29D63AB20(255, &qword_2A17AD100, sub_29D63B614, MEMORY[0x29EDC9C68]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A17AD1D0);
    }
  }
}

void sub_29D63D9E4(uint64_t a1)
{
  if (!qword_2A17AD1F0)
  {
    sub_29D65DCA4();
    sub_29D63E0DC(&qword_2A17AD1F8, MEMORY[0x29EDB9D00], MEMORY[0x29EDB9D08]);
    v1 = sub_29D660524();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AD1F0);
    }
  }
}

void sub_29D63DA78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_29D63DAF8(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  sub_29D62FA90(0);
  return v3(v4, &a1[*(v5 + 48)]);
}

void sub_29D63DB54(uint64_t a1)
{
  if (!qword_2A17AD210)
  {
    sub_29D63AB20(255, &qword_2A17ACF38, sub_29D63ACD8, MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17AD210);
    }
  }
}

void sub_29D63DBE8(uint64_t a1)
{
  if (!qword_2A17AD218)
  {
    sub_29D62FBE8(255);
    sub_29D63AB20(255, &qword_2A17ACCD0, sub_29D62CC14, MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17AD218);
    }
  }
}

uint64_t sub_29D63DC88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D63AB20(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D63DD00(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D63AB20(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D63DD80(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D63AB20(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_29D63DE08(uint64_t a1)
{
  if (!qword_2A17AD228)
  {
    sub_29D65DBC4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17AD228);
    }
  }
}

uint64_t sub_29D63DE70(uint64_t a1, uint64_t a2)
{
  sub_29D63DE08(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29D63DED4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_29D5DF448(255, a3, a4);
    sub_29D5F3048(a5, a3, a4);
    v9 = sub_29D660524();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D63DF60(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_29D63DFB4(uint64_t a1)
{
  if (!qword_2A1A1E6D0)
  {
    sub_29D65DD54();
    sub_29D63E0DC(&qword_2A1A1EA58, MEMORY[0x29EDC3798], MEMORY[0x29EDC37A0]);
    v1 = sub_29D660524();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A1E6D0);
    }
  }
}

void sub_29D63E048(uint64_t a1)
{
  if (!qword_2A17AD230)
  {
    sub_29D65E844();
    sub_29D63E0DC(&qword_2A17AD238, MEMORY[0x29EDC2148], MEMORY[0x29EDC2150]);
    v1 = sub_29D660524();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AD230);
    }
  }
}

uint64_t sub_29D63E0DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D63E124()
{
  result = qword_2A17AD248;
  if (!qword_2A17AD248)
  {
    sub_29D63C810(255);
    sub_29D63BC08(255);
    sub_29D65F574();
    sub_29D63BA68(255);
    sub_29D63BE1C(255);
    sub_29D63B340(255);
    sub_29D63DF60(255, &qword_2A17ACD38, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D63B0B8(255);
    sub_29D63B464(255);
    sub_29D63B050(255);
    sub_29D63B15C(255);
    sub_29D63B1F0();
    sub_29D63B2D0();
    swift_getOpaqueTypeConformance2();
    v1 = MEMORY[0x29EDB86F8];
    sub_29D63E0DC(&qword_2A17AD138, sub_29D63B464, MEMORY[0x29EDB86F8]);
    swift_getOpaqueTypeConformance2();
    sub_29D62D6CC();
    swift_getOpaqueTypeConformance2();
    sub_29D63E0DC(&qword_2A17AD1A8, sub_29D63BE1C, v1);
    swift_getOpaqueTypeConformance2();
    sub_29D63E0DC(&qword_2A17ACE90, MEMORY[0x29EDB8630], MEMORY[0x29EDB8628]);
    swift_getOpaqueTypeConformance2();
    sub_29D63E3E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD248);
  }

  return result;
}

unint64_t sub_29D63E3E0()
{
  result = qword_2A17ACFC8;
  if (!qword_2A17ACFC8)
  {
    sub_29D63AB20(255, &qword_2A17ACEA0, MEMORY[0x29EDBC550], MEMORY[0x29EDBC938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACFC8);
  }

  return result;
}

uint64_t AudiogramAllDataViewModel.__allocating_init(healthStore:)(void *a1)
{
  type metadata accessor for AudiogramAllDataViewModel(0);
  swift_allocObject();
  v2 = sub_29D641F68(a1, 1);

  return v2;
}

uint64_t type metadata accessor for AudiogramAllDataViewModel(uint64_t a1)
{
  result = qword_2A17AD258;
  if (!qword_2A17AD258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AudiogramAllDataViewModel.unitTest_didPublishAudiograms.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_unitTest_didPublishAudiograms);
  swift_beginAccess();
  v2 = *v1;
  sub_29D5FB9B0(*v1, v1[1]);
  return v2;
}

uint64_t AudiogramAllDataViewModel.unitTest_didPublishAudiograms.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_unitTest_didPublishAudiograms);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_29D5FB9C0(v6, v7);
}

uint64_t sub_29D63E62C(__int128 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_dataSource;
  swift_beginAccess();
  *(v3 + v4) = *a1;
  swift_unknownObjectRetain();
  return sub_29D65EE94();
}

uint64_t sub_29D63E6E8(uint64_t a1, void *a2)
{
  sub_29D642748(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D65DC14();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D65DC04();
  v15 = sub_29D65DBD4();
  v17 = v16;
  (*(v11 + 8))(v14, v10);
  v23[1] = a1;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = v15;
  v19 = v23[0];
  v18[4] = v17;
  v18[5] = v19;
  sub_29D5DE590(0);
  sub_29D6428E8(0, &qword_2A17AC5A8, MEMORY[0x29EDC2240], MEMORY[0x29EDC9A40]);
  sub_29D642830(&qword_2A17AD2F0, sub_29D5DE590, MEMORY[0x29EDB8A70]);
  v20 = a2;
  sub_29D65F954();

  sub_29D642830(&qword_2A17AD2F8, sub_29D642748, MEMORY[0x29EDB8908]);
  sub_29D65F924();
  (*(v6 + 8))(v9, v5);
  sub_29D65ECB4();
  sub_29D65E6B4();

  sub_29D5FA930(0);
  sub_29D642830(&qword_2A17AC5C0, sub_29D5FA930, MEMORY[0x29EDC1E90]);
  v21 = sub_29D65E6C4();

  sub_29D642830(&qword_2A17AC5C8, sub_29D5FA89C, MEMORY[0x29EDC2110]);
  return v21;
}

void sub_29D63EA88(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v38[2] = a3;
  v38[3] = a4;
  v42 = a6;
  v9 = sub_29D65E904();
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x2A1C7C4A8](v9, v10);
  v39 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6428E8(0, &qword_2A17AD300, MEMORY[0x29EDC23F8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v15 = v38 - v14;
  v16 = sub_29D65E9E4();
  v46 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v17);
  v51 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19, v20);
  v45 = v38 - v21;
  v22 = *a1;
  sub_29D6600C4();
  v38[1] = sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v22 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D6604B4())
  {
    v24 = 0;
    v53 = 0;
    v49 = v22 & 0xFFFFFFFFFFFFFF8;
    v50 = v22 & 0xC000000000000001;
    v47 = (v46 + 32);
    v48 = (v46 + 48);
    v25 = MEMORY[0x29EDCA190];
    v43 = a2;
    v44 = a5;
    v52 = v16;
    while (1)
    {
      if (v50)
      {
        v26 = v22;
        v27 = MEMORY[0x29ED62900](v24, v22);
      }

      else
      {
        if (v24 >= *(v49 + 16))
        {
          goto LABEL_20;
        }

        v26 = v22;
        v27 = *(v22 + 8 * v24 + 32);
      }

      v22 = v27;
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v54[0] = v27;
      v28 = v53;
      sub_29D63EFB0(v54, a2, v15);
      v53 = v28;

      v29 = v52;
      if ((*v48)(v15, 1, v52) == 1)
      {
        sub_29D642878(v15, &qword_2A17AD300, MEMORY[0x29EDC23F8]);
      }

      else
      {
        v30 = *v47;
        v31 = v45;
        (*v47)(v45, v15, v29);
        v30(v51, v31, v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_29D65BAD0(0, *(v25 + 2) + 1, 1, v25);
        }

        v33 = *(v25 + 2);
        v32 = *(v25 + 3);
        if (v33 >= v32 >> 1)
        {
          v25 = sub_29D65BAD0((v32 > 1), v33 + 1, 1, v25);
        }

        *(v25 + 2) = v33 + 1;
        v30(&v25[((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v33], v51, v52);
        a2 = v43;
        a5 = v44;
      }

      ++v24;
      v22 = v26;
      if (v16 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v25 = MEMORY[0x29EDCA190];
LABEL_23:
  sub_29D61F7BC(v25);

  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v34 = v39;
  sub_29D65E8F4();
  sub_29D6428E8(0, &qword_2A17AC5E0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v35 = v40;
  v36 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_29D661D90;
  (*(v35 + 32))(v37 + v36, v34, v41);

  *v42 = v37;
}

double sub_29D63EFB0@<D0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D63F0B4(v5, a2, a3);
  v6 = sub_29D65E9E4();
  (*(*(v6 - 8) + 56))(a3, 0, 1, v6);

  return result;
}

uint64_t sub_29D63F0B4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a3;
  v73 = a2;
  v4 = sub_29D65EF84();
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v74 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D65E974();
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v70 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x29EDC9C68];
  sub_29D6428E8(0, &qword_2A17ACA40, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v69 = &v55 - v13;
  sub_29D6428E8(0, &qword_2A17ACA48, MEMORY[0x29EDC7770], v10);
  MEMORY[0x2A1C7C4A8](v14 - 8, v15);
  v66 = &v55 - v16;
  v17 = sub_29D65F364();
  v67 = *(v17 - 8);
  v68 = v17;
  MEMORY[0x2A1C7C4A8](v17, v18);
  v65 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29D65F324();
  v63 = *(v20 - 8);
  v64 = v20;
  MEMORY[0x2A1C7C4A8](v20, v21);
  v62 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_29D65DC14();
  v23 = *(v57 - 8);
  MEMORY[0x2A1C7C4A8](v57, v24);
  v26 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_29D65DBC4();
  v28 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27, v29);
  v31 = &v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_29D65F414();
  v56 = *(v55 - 8);
  v32 = v56;
  MEMORY[0x2A1C7C4A8](v55, v33);
  v35 = &v55 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D65F404();
  v36 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
  [v36 setDateStyle_];
  v61 = v36;
  [v36 setTimeStyle_];
  v60 = a1;
  sub_29D63FB94(a1);
  sub_29D65F3F4();
  v37 = [a1 endDate];
  sub_29D65DB94();

  v38 = sub_29D65DB84();
  (*(v28 + 8))(v31, v27);
  v39 = [v36 stringFromDate_];

  sub_29D65FF64();
  sub_29D65F3B4();
  sub_29D65DC04();
  v59 = sub_29D65DBD4();
  v58 = v40;
  (*(v23 + 8))(v26, v57);
  v41 = v55;
  v79[3] = v55;
  v79[4] = MEMORY[0x29EDC7800];
  v42 = sub_29D5E3C20(v79);
  (*(v32 + 16))(v42, v35, v41);
  sub_29D6428E8(0, &qword_2A17ACA50, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  sub_29D65F374();
  *(swift_allocObject() + 16) = xmmword_29D661D90;
  v44 = v63;
  v43 = v64;
  v45 = v62;
  (*(v63 + 104))(v62, *MEMORY[0x29EDC7768], v64);
  v46 = sub_29D65F334();
  (*(*(v46 - 8) + 56))(v66, 1, 1, v46);
  v47 = v65;
  sub_29D65F354();
  sub_29D65F344();
  (*(v67 + 8))(v47, v68);
  (*(v44 + 8))(v45, v43);
  v48 = swift_allocObject();
  v49 = v60;
  v50 = v73;
  v48[2] = v60;
  v48[3] = v50;
  v48[4] = v78;
  v51 = sub_29D65F3A4();
  (*(*(v51 - 8) + 56))(v69, 1, 1, v51);
  (*(v71 + 104))(v70, *MEMORY[0x29EDC22C8], v72);
  (*(v75 + 104))(v74, *MEMORY[0x29EDC2A38], v76);
  v52 = v49;
  v53 = v50;
  sub_29D65E9D4();

  return (*(v56 + 8))(v35, v41);
}

double sub_29D63F994()
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D65F074();
  sub_29D660254();

  return result;
}

uint64_t sub_29D63FA48(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D65E9A4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D65E984();
  v7 = sub_29D65E994();
  (*(v3 + 8))(v6, v2);

  return v7;
}

uint64_t sub_29D63FB94(void *a1)
{
  v2 = sub_29D63FE30(a1, 0);
  v4 = v3;
  v5 = sub_29D63FE30(a1, 1);
  v7 = v6;
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  sub_29D600DF8(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29D661D20;
  v9 = MEMORY[0x29EDC99B0];
  *(v8 + 56) = MEMORY[0x29EDC99B0];
  v10 = sub_29D5E3BCC();
  *(v8 + 32) = v2;
  *(v8 + 40) = v4;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 64) = v10;
  *(v8 + 72) = v5;
  *(v8 + 80) = v7;
  v11 = sub_29D65FF34();

  return v11;
}

void sub_29D63FCFC(void *a1, void *a2, void *a3)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = objc_allocWithZone(type metadata accessor for AudiogramAllDataChartViewController());
  v7 = a3;
  v8 = a2;
  v11 = sub_29D644AF8(v7, v8);

  v9 = [a1 navigationController];
  if (v9)
  {
    v10 = v9;
    [v9 pushViewController:v11 animated:1];
  }

  else
  {
  }
}

uint64_t sub_29D63FE30(void *a1, uint64_t a2)
{
  v4 = sub_29D65F314();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D65D964();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v9, v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v15 = 0;
    if (a2 != 1)
    {
      goto LABEL_6;
    }

    v16 = &selRef_averageRightEarSensitivity;
  }

  else
  {
    v16 = &selRef_averageLeftEarSensitivity;
  }

  v15 = [a1 *v16];
LABEL_6:
  HKHearingLevelClassificationForSensitivity();
  v17 = HKLocalizedStringForHearingLevelClassification();
  if (v17)
  {
    v40 = v9;
    v41 = v15;
    v18 = v17;
    v19 = sub_29D65FF64();
    v21 = v20;

    v22 = sub_29D640244(a1, a2);
    v24 = v23;
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    sub_29D65DA74();
    sub_29D600DF8(0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_29D661D20;
    v26 = MEMORY[0x29EDC99B0];
    *(v25 + 56) = MEMORY[0x29EDC99B0];
    v27 = sub_29D5E3BCC();
    *(v25 + 32) = v19;
    *(v25 + 40) = v21;
    *(v25 + 96) = v26;
    *(v25 + 104) = v27;
    *(v25 + 64) = v27;
    *(v25 + 72) = v22;
    *(v25 + 80) = v24;
    v28 = sub_29D65FF34();
    v30 = v29;

    v42[0] = v28;
    v42[1] = v30;
    sub_29D65D954();
    sub_29D60C02C();
    v31 = sub_29D660444();

    (*(v10 + 8))(v14, v40);
  }

  else
  {
    sub_29D65F2E4();
    v32 = sub_29D65F2F4();
    v33 = sub_29D660204();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v42[0] = v35;
      *v34 = 136446210;
      v36 = sub_29D6607A4();
      v38 = sub_29D64A1D0(v36, v37, v42);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_29D5D7000, v32, v33, "[%{public}s] Got nil result from classification utility", v34, 0xCu);
      sub_29D5DF1C4(v35);
      MEMORY[0x29ED63350](v35, -1, -1);
      MEMORY[0x29ED63350](v34, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }

  return v31;
}

id sub_29D640244(void *a1, uint64_t a2)
{
  if (a2 == 1)
  {
    result = [a1 averageRightEarSensitivity];
    if (!result)
    {
      return result;
    }

LABEL_6:
    v3 = result;
    v4 = [objc_opt_self() decibelHearingLevelUnit];
    [v3 doubleValueForUnit_];

    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    v5 = 0xE000000000000000;
    sub_29D65DA74();
    v6 = sub_29D640420();
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      v5 = v7;
    }

    sub_29D600DF8(0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_29D661D90;
    *(v9 + 56) = MEMORY[0x29EDC99B0];
    *(v9 + 64) = sub_29D5E3BCC();
    *(v9 + 32) = v8;
    *(v9 + 40) = v5;
    v10 = sub_29D65FF34();

    return v10;
  }

  if (a2)
  {
    return 0;
  }

  result = [a1 averageLeftEarSensitivity];
  if (result)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_29D640420()
{
  v0 = sub_29D65F314();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = HKIntegerFormatter();
  v6 = v5;
  if (v5 && (v7 = v5, v8 = sub_29D6600D4(), v9 = [v7 stringFromNumber_], v7, v8, v9))
  {
    v10 = sub_29D65FF64();

    return v10;
  }

  else
  {
    sub_29D65F2E4();
    v12 = sub_29D65F2F4();
    v13 = sub_29D660204();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136446466;
      v16 = sub_29D6607A4();
      v18 = sub_29D64A1D0(v16, v17, &v20);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_29D64A1D0(0x656C62756F44, 0xE600000000000000, &v20);
      _os_log_impl(&dword_29D5D7000, v12, v13, "[%{public}s] Failed to format filter value for type: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v15, -1, -1);
      MEMORY[0x29ED63350](v14, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }
}

double _s16HearingAppPlugin25AudiogramAllDataViewModelC33unitTest_startAudiogramsPublisheryyF_0()
{
  v90 = MEMORY[0x29EDCA298];
  sub_29D6428E8(0, &qword_2A17AC760, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v89 = &v69 - v3;
  v69 = sub_29D6601A4();
  v70 = *(v69 - 8);
  MEMORY[0x2A1C7C4A8](v69, v4);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D614D5C(0);
  v71 = v7;
  v72 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D614F30(0);
  v12 = *(v11 - 8);
  v73 = v11;
  v74 = v12;
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D642174(0);
  v17 = *(v16 - 8);
  v76 = v16;
  v77 = v17;
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D642220(0);
  v79 = v21;
  v81 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v22);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6423D8(0);
  v82 = v25;
  v84 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25, v26);
  v75 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D642534(0);
  v29 = *(v28 - 8);
  v85 = v28;
  v86 = v29;
  MEMORY[0x2A1C7C4A8](v28, v30);
  v78 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D642650(0);
  v33 = *(v32 - 8);
  v87 = v32;
  v88 = v33;
  MEMORY[0x2A1C7C4A8](v32, v34);
  v83 = &v69 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_29D65DBC4();
  v37 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36, v38);
  v40 = &v69 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16HearingAppPlugin25AudiogramAllDataViewModelC012startInitialD13PublisherTime33_BC65D8BC09683B795C348539971D0E1CLL10Foundation4DateVvpfi_0();
  v41 = OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_startInitialAudiogramPublisherTime;
  v80 = v0;
  swift_beginAccess();
  (*(v37 + 40))(v0 + v41, v40, v36);
  swift_endAccess();
  v42 = *(v0 + 16);
  sub_29D5DF448(0, &qword_2A1A1E700, 0x29EDBAD78);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v44 = [ObjCClassFromMetadata audiogramSampleType];
  v45 = [objc_allocWithZone(MEMORY[0x29EDBAD40]) initWithSampleType:v44 predicate:0];

  sub_29D5ED310();
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_29D662030;
  *(v46 + 32) = [ObjCClassFromMetadata audiogramSampleType];
  sub_29D6601C4();

  sub_29D614E48(0);
  sub_29D642830(&qword_2A17AC998, MEMORY[0x29EDC2E88], MEMORY[0x29EDC2E80]);
  sub_29D642830(&qword_2A17AC9A0, sub_29D614E48, MEMORY[0x29EDB8AC8]);
  v47 = v69;
  sub_29D65F964();
  (*(v70 + 8))(v6, v47);
  sub_29D660194();
  sub_29D5DF210(0, &qword_2A17AC108, MEMORY[0x29EDC9F18]);
  v48 = MEMORY[0x29EDB8928];
  sub_29D642830(&qword_2A17AC9B0, sub_29D614D5C, MEMORY[0x29EDB8928]);
  v49 = v71;
  sub_29D65F914();
  (*(v72 + 8))(v10, v49);
  v50 = swift_allocObject();
  *(v50 + 16) = v42;
  *(v50 + 24) = v45;
  sub_29D660164();
  sub_29D642830(&qword_2A17AC9C0, sub_29D614F30, MEMORY[0x29EDC1AC0]);
  v51 = v42;
  v52 = v45;
  v53 = v73;
  sub_29D65F954();

  (*(v74 + 8))(v15, v53);
  v54 = MEMORY[0x29EDB8908];
  sub_29D642830(&qword_2A17AD280, sub_29D642174, MEMORY[0x29EDB8908]);
  sub_29D642830(&qword_2A17AD288, MEMORY[0x29EDC2E58], MEMORY[0x29EDC2E50]);
  v55 = v76;
  sub_29D65F9A4();
  (*(v77 + 8))(v20, v55);
  sub_29D6424C4(0);
  sub_29D642830(&qword_2A17AD2B0, sub_29D642220, MEMORY[0x29EDB88E0]);
  sub_29D642830(&qword_2A17AD2B8, sub_29D6424C4, MEMORY[0x29EDB8AB8]);
  v56 = v75;
  v57 = v79;
  sub_29D65F964();
  (*(v81 + 8))(v24, v57);
  sub_29D6425F8(0, &qword_2A17AC0B0, &unk_2A17AC0B8, 0x29EDBAA28);
  sub_29D642830(&qword_2A17AD2C8, sub_29D6423D8, v48);
  v58 = v78;
  v59 = v82;
  sub_29D65F954();
  (*(v84 + 8))(v56, v59);
  sub_29D5DF448(0, &qword_2A17AC0E8, 0x29EDCA548);
  v60 = sub_29D6602B4();
  v91 = v60;
  v61 = sub_29D6602A4();
  v62 = v89;
  (*(*(v61 - 8) + 56))(v89, 1, 1, v61);
  sub_29D642830(&qword_2A17AD2D8, sub_29D642534, v54);
  sub_29D60C0D8();
  v63 = v83;
  v64 = v85;
  sub_29D65F984();
  sub_29D642878(v62, &qword_2A17AC760, v90);

  (*(v86 + 8))(v58, v64);
  swift_allocObject();
  v65 = v80;
  swift_weakInit();
  sub_29D642830(&qword_2A17AD2E0, sub_29D642650, MEMORY[0x29EDB89E8]);
  v66 = v87;
  v67 = sub_29D65F9B4();

  (*(v88 + 8))(v63, v66);
  *(v65 + 40) = v67;

  return result;
}

double sub_29D6412BC()
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D614EB0(0);
  sub_29D65F874();

  return result;
}

double sub_29D641378(uint64_t a1, uint64_t a2, void *a3)
{
  sub_29D5ED310();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D661DA0;
  sub_29D65FF64();
  v5 = objc_allocWithZone(MEMORY[0x29EDBA0F0]);
  v6 = sub_29D65FF24();

  v7 = [v5 initWithKey:v6 ascending:0];

  *(v4 + 32) = v7;
  sub_29D65FF64();
  v8 = objc_allocWithZone(MEMORY[0x29EDBA0F0]);
  v9 = sub_29D65FF24();

  v10 = [v8 initWithKey:v9 ascending:0];

  *(v4 + 40) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29D662030;
  *(v11 + 32) = a3;
  v12 = a3;
  sub_29D660174();

  return result;
}

double sub_29D641518(void **a1)
{
  v2 = sub_29D65F314();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  sub_29D6600C4();
  v8 = sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D65F2A4();
  v9 = v7;
  v10 = sub_29D65F2F4();
  v11 = sub_29D6601F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25 = v8;
    v13 = v12;
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 136446210;
    ErrorValue = swift_getErrorValue();
    v24 = v2;
    v16 = MEMORY[0x2A1C7C4A8](ErrorValue, v26);
    (*(v18 + 16))(&v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
    v19 = sub_29D65FF84();
    v21 = sub_29D64A1D0(v19, v20, &v27);

    *(v13 + 4) = v21;
    _os_log_impl(&dword_29D5D7000, v10, v11, "Error fetching audiogram samples: %{public}s", v13, 0xCu);
    sub_29D5DF1C4(v14);
    MEMORY[0x29ED63350](v14, -1, -1);
    MEMORY[0x29ED63350](v13, -1, -1);

    (*(v3 + 8))(v6, v24);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v27 = MEMORY[0x29EDCA190];
  sub_29D6425F8(0, &qword_2A17AD2A8, &qword_2A17AC3B8, 0x29EDBAD60);
  sub_29D65F864();

  return result;
}

void sub_29D641844(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v10 = MEMORY[0x29EDCA190];
  if (!(*a1 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_20:
    v6 = MEMORY[0x29EDCA190];
    goto LABEL_21;
  }

LABEL_19:
  v4 = sub_29D6604B4();
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x29EDCA190];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x29ED62900](v7, v3);
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x29ED623B0]();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_29D660064();
    }

    sub_29D660074();
    v6 = v10;
  }

  while (v5 != v4);
LABEL_21:
  *a2 = v6;
}

double sub_29D6419B8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x2A1C7C4A8](isCurrentExecutor, v5);
  v7[2] = a2;
  v7[3] = v3;
  sub_29D653EB0(sub_29D64272C, v7, "HearingAppPlugin/AudiogramAllDataViewModel.swift", 48, 2u, 190);

  return result;
}

void sub_29D641AB0(uint64_t a1, unint64_t a2)
{
  v3 = sub_29D65DBC4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v11 = v20 - v10;
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a2 >> 62)
    {
      sub_29D6604B4();
      if (*(v13 + 48))
      {
        goto LABEL_7;
      }
    }

    else if (*(Strong + 48))
    {
LABEL_7:
      v20[1] = a2;
      _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
      sub_29D65F824();
      v17 = v13 + OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_unitTest_didPublishAudiograms;
      swift_beginAccess();
      v18 = *v17;
      if (*v17)
      {
        v19 = *(v17 + 8);

        v18(a2);
        sub_29D5FB9C0(v18, v19);
      }

      goto LABEL_10;
    }

    _s16HearingAppPlugin25AudiogramAllDataViewModelC012startInitialD13PublisherTime33_BC65D8BC09683B795C348539971D0E1CLL10Foundation4DateVvpfi_0();
    v14 = OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_startInitialAudiogramPublisherTime;
    swift_beginAccess();
    (*(v4 + 16))(v7, v13 + v14, v3);
    sub_29D65DB74();
    v15 = *(v4 + 8);
    v15(v7, v3);
    v15(v11, v3);
    sub_29D65FE24();
    v16 = sub_29D65FE14();
    sub_29D65FDC4();

    *(v13 + 48) = 1;
    goto LABEL_7;
  }

LABEL_10:
}

uint64_t AudiogramAllDataViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_startInitialAudiogramPublisherTime;
  v2 = sub_29D65DBC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D5FB9C0(*(v0 + OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_unitTest_didPublishAudiograms), *(v0 + OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_unitTest_didPublishAudiograms + 8));
  sub_29D65EE94();
  return v0;
}

uint64_t AudiogramAllDataViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_startInitialAudiogramPublisherTime;
  v2 = sub_29D65DBC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D5FB9C0(*(v0 + OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_unitTest_didPublishAudiograms), *(v0 + OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_unitTest_didPublishAudiograms + 8));
  sub_29D65EE94();

  return swift_deallocClassInstance();
}

uint64_t static AudiogramAllDataViewModel.makeUnitTestingInstance(healthStore:)(void *a1)
{
  type metadata accessor for AudiogramAllDataViewModel(0);
  swift_allocObject();
  v2 = a1;
  v3 = sub_29D641F68(v2, 0);

  return v3;
}

uint64_t sub_29D641F68(void *a1, char a2)
{
  v3 = v2;
  sub_29D5DE590(0);
  swift_allocObject();
  *(v2 + 32) = sub_29D65F844();
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  _s16HearingAppPlugin25AudiogramAllDataViewModelC012startInitialD13PublisherTime33_BC65D8BC09683B795C348539971D0E1CLL10Foundation4DateVvpfi_0();
  v6 = (v2 + OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_unitTest_didPublishAudiograms);
  *v6 = 0;
  v6[1] = 0;
  *(v2 + 16) = a1;
  v7 = objc_allocWithZone(sub_29D65FDE4());
  v8 = a1;
  *(v2 + 24) = sub_29D65FDD4();

  v10 = sub_29D63E6E8(v9, v8);
  v12 = v11;

  v13 = (v3 + OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_dataSource);
  *v13 = v10;
  v13[1] = v12;
  if (a2)
  {
    _s16HearingAppPlugin25AudiogramAllDataViewModelC33unitTest_startAudiogramsPublisheryyF_0();
  }

  return v3;
}

uint64_t sub_29D64209C(uint64_t a1)
{
  result = sub_29D65DBC4();
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

void sub_29D642174(uint64_t a1)
{
  if (!qword_2A17AD268)
  {
    sub_29D614F30(255);
    sub_29D660164();
    sub_29D642830(&qword_2A17AC9C0, sub_29D614F30, MEMORY[0x29EDC1AC0]);
    v1 = sub_29D65F794();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AD268);
    }
  }
}

void sub_29D642220(uint64_t a1)
{
  if (!qword_2A17AD270)
  {
    sub_29D660164();
    sub_29D64230C(255);
    sub_29D642830(&qword_2A17AD288, MEMORY[0x29EDC2E58], MEMORY[0x29EDC2E50]);
    sub_29D642830(&qword_2A17AD290, sub_29D64230C, MEMORY[0x29EDB88D8]);
    v1 = sub_29D65F774();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AD270);
    }
  }
}

void sub_29D64230C(uint64_t a1)
{
  if (!qword_2A17AD278)
  {
    sub_29D642174(255);
    sub_29D5DF210(255, &qword_2A17AC108, MEMORY[0x29EDC9F18]);
    sub_29D642830(&qword_2A17AD280, sub_29D642174, MEMORY[0x29EDB8908]);
    v1 = sub_29D65F764();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AD278);
    }
  }
}

void sub_29D6423D8(uint64_t a1)
{
  if (!qword_2A17AD298)
  {
    sub_29D642220(255);
    sub_29D6424C4(255);
    sub_29D642830(&qword_2A17AD2B0, sub_29D642220, MEMORY[0x29EDB88E0]);
    sub_29D642830(&qword_2A17AD2B8, sub_29D6424C4, MEMORY[0x29EDB8AB8]);
    v1 = sub_29D65F7B4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AD298);
    }
  }
}

void sub_29D6424C4(uint64_t a1)
{
  if (!qword_2A17AD2A0)
  {
    sub_29D6425F8(255, &qword_2A17AD2A8, &qword_2A17AC3B8, 0x29EDBAD60);
    v1 = sub_29D65F854();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AD2A0);
    }
  }
}

void sub_29D642534(uint64_t a1)
{
  if (!qword_2A17AD2C0)
  {
    sub_29D6423D8(255);
    sub_29D6425F8(255, &qword_2A17AC0B0, &unk_2A17AC0B8, 0x29EDBAA28);
    sub_29D642830(&qword_2A17AD2C8, sub_29D6423D8, MEMORY[0x29EDB8928]);
    v1 = sub_29D65F794();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AD2C0);
    }
  }
}

void sub_29D6425F8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_29D5DF448(255, a3, a4);
    v5 = sub_29D660084();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D642650(uint64_t a1)
{
  if (!qword_2A17AD2D0)
  {
    sub_29D642534(255);
    sub_29D5DF448(255, &qword_2A17AC0E8, 0x29EDCA548);
    sub_29D642830(&qword_2A17AD2D8, sub_29D642534, MEMORY[0x29EDB8908]);
    sub_29D60C0D8();
    v1 = sub_29D65F804();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AD2D0);
    }
  }
}

void sub_29D642748(uint64_t a1)
{
  if (!qword_2A17AD2E8)
  {
    sub_29D5DE590(255);
    sub_29D6428E8(255, &qword_2A17AC5A8, MEMORY[0x29EDC2240], MEMORY[0x29EDC9A40]);
    sub_29D642830(&qword_2A17AD2F0, sub_29D5DE590, MEMORY[0x29EDB8A70]);
    v1 = sub_29D65F794();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AD2E8);
    }
  }
}

uint64_t sub_29D642830(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D642878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D6428E8(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D6428E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D642958()
{
  v0 = sub_29D65FBE4();
  v2 = MEMORY[0x2A1C7C4A8](v0, v1);
  (*(v4 + 104))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x29EDBCA80], v2);
  result = sub_29D65FC24();
  qword_2A17AD730 = result;
  return result;
}

double sub_29D642A34()
{
  sub_29D65F9E4();
  result = *&v1;
  xmmword_2A17AD738 = v1;
  *&qword_2A17AD748 = v2;
  qword_2A17AD758 = v3;
  return result;
}

double sub_29D642A90()
{
  sub_29D65F9E4();
  result = *&v1;
  xmmword_2A17AD760 = v1;
  *&qword_2A17AD770 = v2;
  qword_2A17AD780 = v3;
  return result;
}

uint64_t sub_29D642AEC()
{
  result = sub_29D65FBF4();
  qword_2A17AD788 = result;
  return result;
}

uint64_t DataTypeDetailConfiguration.InlineChartComponent.init(hkType:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for DataTypeDetailConfiguration.InlineChartComponent(0);
  v3 = a1;
  return sub_29D65EB74();
}

uint64_t type metadata accessor for DataTypeDetailConfiguration.InlineChartComponent(uint64_t a1)
{
  result = qword_2A17AD320;
  if (!qword_2A17AD320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DataTypeDetailConfiguration.InlineChartComponent.makeDataSource(context:)(uint64_t a1)
{
  type metadata accessor for DataTypeDetailConfiguration.InlineChartComponent(0);
  sub_29D65EB84();
  sub_29D642F84(0, v1);
  swift_allocObject();
  v2 = sub_29D65E804();
  sub_29D643060(v2, v3);
  sub_29D65E674();

  v4 = sub_29D65E644();

  return v4;
}

uint64_t sub_29D642CD4(uint64_t a1)
{
  sub_29D65EB84();
  sub_29D642F84(0, v1);
  swift_allocObject();
  v2 = sub_29D65E804();
  sub_29D643060(v2, v3);
  sub_29D65E674();

  v4 = sub_29D65E644();

  return v4;
}

uint64_t sub_29D642D98()
{
  v0 = sub_29D65E724();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5, v6);
  v8 = &v16[-v7];
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D65EAE4();
  sub_29D65E704();
  sub_29D65EE94();
  sub_29D65E714();
  sub_29D65E6E4();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v4, v0);
  v12 = sub_29D65E6F4();
  *(v13 + 16) = v10;
  v12(v16, 0);
  v14 = sub_29D65E6D4();
  v11(v8, v0);

  return v14;
}

void sub_29D642F84(uint64_t a1, uint64_t a2)
{
  if (!qword_2A17AD308)
  {
    sub_29D643000(255, a2);
    swift_getOpaqueTypeConformance2();
    v2 = sub_29D65E7F4();
    if (!v3)
    {
      atomic_store(v2, &qword_2A17AD308);
    }
  }
}

void sub_29D643000(uint64_t a1, uint64_t a2)
{
  if (!qword_2A17AD310)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17AD310);
    }
  }
}

unint64_t sub_29D643060(uint64_t a1, uint64_t a2)
{
  result = qword_2A17AD318;
  if (!qword_2A17AD318)
  {
    sub_29D642F84(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD318);
  }

  return result;
}

unint64_t sub_29D6430FC(uint64_t a1)
{
  result = sub_29D5F0640();
  if (v2 <= 0x3F)
  {
    result = sub_29D65EB94();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_29D6431A0(uint64_t a1)
{
  sub_29D5DF448(0, &qword_2A17AD380, 0x29EDC7940);
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  swift_unknownObjectRetain();
  return sub_29D660244();
}

id sub_29D6432CC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_29D643330(uint64_t a1)
{
  v36 = a1;
  sub_29D644864(0, &qword_2A17AD378, MEMORY[0x29EDC78D0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v34 = &v31 - v3;
  v33 = sub_29D660394();
  v4 = *(v33 - 8);
  MEMORY[0x2A1C7C4A8](v33, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D65E554();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D6603D4();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_29D660404();
  v18 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35, v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = [objc_opt_self() buttonWithType_];
  sub_29D6603E4();
  (*(v14 + 104))(v17, *MEMORY[0x29EDC78B8], v13);
  sub_29D660384();
  (*(v9 + 104))(v12, *MEMORY[0x29EDC1D60], v8);
  sub_29D65E544();
  (*(v9 + 8))(v12, v8);
  sub_29D6603B4();
  v22 = [objc_opt_self() hk_appTintColor];
  sub_29D6603C4();
  (*(v4 + 104))(v7, *MEMORY[0x29EDC7898], v33);
  sub_29D6603A4();
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  sub_29D6603F4();
  v23 = v34;
  v24 = v35;
  (*(v18 + 16))(v34, v21, v35);
  (*(v18 + 56))(v23, 0, 1, v24);
  v25 = v32;
  sub_29D660414();
  v26 = v36;
  v27 = *(v36 + OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_automationIdentifierBase + 8);
  v37 = *(v36 + OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_automationIdentifierBase);
  v38 = v27;
  v28 = v25;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  MEMORY[0x29ED62350](0x747475424644502ELL, 0xEA00000000006E6FLL);
  v29 = sub_29D65FF24();

  [v28 setAccessibilityIdentifier_];

  [v28 setContentHorizontalAlignment_];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];

  [v28 addTarget:v26 action:sel_shareButtonTapped_ forControlEvents:64];
  (*(v18 + 8))(v21, v24);
  return v28;
}

id sub_29D643944()
{
  v1 = v0;
  swift_getObjectType();
  v55.receiver = v0;
  v55.super_class = type metadata accessor for AudiogramAllDataChartViewController();
  objc_msgSendSuper2(&v55, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  v4 = [objc_opt_self() secondarySystemBackgroundColor];
  [v3 setBackgroundColor_];

  result = [v1 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  v6 = *&v1[OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_scrollView];
  [result addSubview_];

  v7 = *&v1[OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_scrollViewContainer];
  [v6 addSubview_];
  v8 = *&v1[OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_chartController];
  [v1 addChildViewController_];
  result = [v8 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  MEMORY[0x29ED62350](0x616843657361422ELL, 0xEA00000000007472);
  v10 = sub_29D65FF24();

  [v9 setAccessibilityIdentifier_];

  result = [v8 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  [v7 addArrangedSubview_];

  [v8 didMoveToParentViewController_];
  v12 = [v1 navigationItem];
  v13 = sub_29D643180();
  [v12 setRightBarButtonItem_];

  v14 = sub_29D6432AC();
  [v7 addArrangedSubview_];

  sub_29D5ED310();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29D664A70;
  v16 = [v6 topAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = result;
  v18 = [result topAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v15 + 32) = v19;
  v20 = [v6 bottomAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = result;
  v22 = [result bottomAnchor];

  v23 = [v20 constraintEqualToAnchor_];
  *(v15 + 40) = v23;
  v24 = [v6 leadingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v25 = result;
  v26 = [result leadingAnchor];

  v27 = [v24 constraintEqualToAnchor_];
  *(v15 + 48) = v27;
  v28 = [v6 trailingAnchor];
  result = [v1 view];
  if (result)
  {
    v29 = result;
    v30 = objc_opt_self();
    v31 = [v29 trailingAnchor];

    v32 = [v28 constraintEqualToAnchor_];
    *(v15 + 56) = v32;
    v33 = [v7 topAnchor];
    v34 = [v6 topAnchor];
    v35 = [v33 constraintEqualToAnchor_];

    *(v15 + 64) = v35;
    v36 = [v7 bottomAnchor];
    v37 = [v6 bottomAnchor];
    v38 = [v36 constraintEqualToAnchor:v37 constant:-20.0];

    *(v15 + 72) = v38;
    v39 = [v7 leadingAnchor];
    v40 = [v6 leadingAnchor];
    v41 = [v39 constraintEqualToAnchor_];

    *(v15 + 80) = v41;
    v42 = [v7 trailingAnchor];
    v43 = [v6 trailingAnchor];
    v44 = [v42 constraintEqualToAnchor_];

    *(v15 + 88) = v44;
    v45 = [v7 widthAnchor];
    v46 = [v6 widthAnchor];
    v47 = [v45 constraintEqualToAnchor_];

    *(v15 + 96) = v47;
    sub_29D5DF448(0, &qword_2A17AD388, 0x29EDBA008);
    v48 = sub_29D660024();

    [v30 activateConstraints_];

    v49 = [v1 traitCollection];
    sub_29D6602D4();

    sub_29D660324();
    [v7 setDirectionalLayoutMargins_];
    sub_29D644864(0, &qword_2A17AD390, sub_29D6448C8, MEMORY[0x29EDC9E90]);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_29D661D20;
    v51 = sub_29D65FDB4();
    v52 = sub_29D644974();
    *(v50 + 32) = v51;
    *(v50 + 40) = v52;
    v53 = sub_29D65F424();
    v54 = MEMORY[0x29EDC7870];
    *(v50 + 48) = v53;
    *(v50 + 56) = v54;
    sub_29D660294();

    return sub_29D65EE94();
  }

LABEL_17:
  __break(1u);
  return result;
}

double sub_29D6441C8()
{
  v16 = *(v0 + OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_scrollViewContainer);
  v1 = [v16 arrangedSubviews];
  sub_29D5DF448(0, &qword_2A17AD370, 0x29EDC7DA0);
  v2 = sub_29D660034();

  v17 = MEMORY[0x29EDCA190];
  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D6604B4())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x29ED62900](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      sub_29D6600C4();
      sub_29D6600B4();
      sub_29D6600A4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      [v6 removeFromSuperview];
      v8 = v6;
      MEMORY[0x29ED623B0]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29D660064();
      }

      sub_29D660074();

      v9 = v17;

      ++v4;
      if (v7 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v9 = MEMORY[0x29EDCA190];
LABEL_19:

  if (v9 >> 62)
  {
    goto LABEL_32;
  }

  for (j = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_29D6604B4())
  {
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x29ED62900](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      sub_29D6600C4();
      sub_29D6600B4();
      sub_29D6600A4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      [v16 addArrangedSubview_];

      ++v11;
      if (v14 == j)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_33:

  return result;
}

void sub_29D6444F0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_healthStore];
  type metadata accessor for AudiogramPDFProvider();
  v3 = swift_allocObject();
  v3[2] = v2;
  v4 = sub_29D65EAA4();
  v5 = v2;
  v6 = sub_29D65EA94();
  v7 = MEMORY[0x29EDC24D0];
  v3[6] = v4;
  v3[7] = v7;
  v3[3] = v6;
  v8 = sub_29D61E694(*&v1[OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_audiogramSample]);
  v9 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];

  [v1 presentViewController:v9 animated:1 completion:0];
}

id sub_29D64475C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AudiogramAllDataChartViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29D644864(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D6448C8()
{
  result = qword_2A17AD398;
  if (!qword_2A17AD398)
  {
    sub_29D644910();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2A17AD398);
  }

  return result;
}

unint64_t sub_29D644910()
{
  result = qword_2A17AD3A0;
  if (!qword_2A17AD3A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17AD3A0);
  }

  return result;
}

unint64_t sub_29D644974()
{
  result = qword_2A17AD3A8;
  if (!qword_2A17AD3A8)
  {
    sub_29D65FDB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD3A8);
  }

  return result;
}

double sub_29D6449CC(char *a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [a1 traitCollection];
  v3 = sub_29D6602D4();

  if (v3 != sub_29D6602D4())
  {
    v4 = [a1 traitCollection];
    sub_29D6602D4();

    v5 = *&a1[OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_scrollViewContainer];
    sub_29D660324();
    [v5 setDirectionalLayoutMargins_];
  }

  sub_29D6441C8();

  return result;
}

id sub_29D644AF8(void *a1, void *a2)
{
  v5 = &v2[OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_automationIdentifierBase];
  *v5 = 0xD000000000000019;
  *(v5 + 1) = 0x800000029D669150;
  v6 = OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_scrollView;
  v7 = [objc_allocWithZone(MEMORY[0x29EDC7C50]) init];
  [v7 setShowsHorizontalScrollIndicator_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v6] = v7;
  v8 = OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_scrollViewContainer;
  v9 = [objc_allocWithZone(MEMORY[0x29EDC7C90]) init];
  [v9 setAxis_];
  [v9 setSpacing_];
  [v9 setDistribution_];
  [v9 setLayoutMarginsRelativeArrangement_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v8] = v9;
  *&v2[OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController____lazy_storage___shareBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController____lazy_storage___exportPDFButton] = 0;
  *&v2[OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_healthStore] = a1;
  *&v2[OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_audiogramSample] = a2;
  v10 = objc_allocWithZone(MEMORY[0x29EDC46B8]);
  v11 = a1;
  v12 = a2;
  v13 = [v10 initWithHealthStore_];
  v14 = [v13 staticAudiogramChartViewControllerWithAudiogramSample:v12 hideEnhancedUI:0];

  *&v2[OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_chartController] = v14;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for AudiogramAllDataChartViewController();
  return objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, 0, 0);
}

void sub_29D644CE8()
{
  v1 = (v0 + OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_automationIdentifierBase);
  *v1 = 0xD000000000000019;
  v1[1] = 0x800000029D669150;
  v2 = OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_scrollView;
  v3 = [objc_allocWithZone(MEMORY[0x29EDC7C50]) init];
  [v3 setShowsHorizontalScrollIndicator_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v2) = v3;
  v4 = OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_scrollViewContainer;
  v5 = [objc_allocWithZone(MEMORY[0x29EDC7C90]) init];
  [v5 setAxis_];
  [v5 setSpacing_];
  [v5 setDistribution_];
  [v5 setLayoutMarginsRelativeArrangement_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v4) = v5;
  *(v0 + OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController____lazy_storage___shareBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController____lazy_storage___exportPDFButton) = 0;
  sub_29D660594();
  __break(1u);
}

void sub_29D644E58(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];
      _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
      sub_29D646D08(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_29D644F5C@<X0>(int a2@<W1>, uint64_t a3@<X8>)
{
  v86 = sub_29D65DDE4();
  v83 = *(v86 - 8);
  MEMORY[0x2A1C7C4A8](v86, v5);
  v7 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_29D65E7C4();
  v84 = *(v85 - 8);
  MEMORY[0x2A1C7C4A8](v85, v8);
  v10 = v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D65DE74();
  v87 = *(v11 - 8);
  v88 = v11;
  MEMORY[0x2A1C7C4A8](v11, v12);
  v14 = v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D65F314();
  v89 = *(v15 - 8);
  v90 = v15;
  MEMORY[0x2A1C7C4A8](v15, v16);
  v82 = v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v19);
  v21 = v76 - v20;
  MEMORY[0x2A1C7C4A8](v22, v23);
  v25 = v76 - v24;
  MEMORY[0x2A1C7C4A8](v26, v27);
  v29 = v76 - v28;
  v30 = sub_29D65DDA4();
  v31 = sub_29D65DD94();

  if ((v31 & 1) == 0)
  {
    sub_29D65F2E4();
    v32 = sub_29D65F2F4();
    v33 = sub_29D660214();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = a3;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v91[0] = v36;
      *v35 = 136315394;
      *(v35 + 4) = sub_29D64A1D0(0xD000000000000023, 0x800000029D669170, v91);
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_29D64A1D0(0xD000000000000022, 0x800000029D6691A0, v91);
      _os_log_impl(&dword_29D5D7000, v32, v33, "[%s.%s]: Non-primary source", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v36, -1, -1);
      v37 = v35;
      a3 = v34;
      MEMORY[0x29ED63350](v37, -1, -1);
    }

    (*(v89 + 8))(v21, v90);
    v38 = 1;
    goto LABEL_29;
  }

  if (a2 > 1u)
  {
    v39 = 0xED0000656C626173;
    LODWORD(v81) = a2;
  }

  else
  {
    if (!a2)
    {

LABEL_11:
      v41 = a3;
      sub_29D65F2E4();
      v42 = sub_29D65F2F4();
      v43 = sub_29D660214();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v91[0] = v45;
        *v44 = 136315394;
        *(v44 + 4) = sub_29D64A1D0(0xD000000000000023, 0x800000029D669170, v91);
        *(v44 + 12) = 2080;
        *(v44 + 14) = sub_29D64A1D0(0xD000000000000022, 0x800000029D6691A0, v91);
        _os_log_impl(&dword_29D5D7000, v42, v43, "[%s.%s]: Feed item will be marked for deletion given no unavailability reasons", v44, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED63350](v45, -1, -1);
        MEMORY[0x29ED63350](v44, -1, -1);
      }

      (*(v89 + 8))(v25, v90);
      v38 = 1;
      a3 = v41;
LABEL_29:
      v73 = v87;
      v74 = v88;
      return (*(v73 + 56))(a3, v38, 1, v74);
    }

    LODWORD(v81) = a2;
    v39 = 0xED0000656C626173;
  }

  v40 = sub_29D660694();

  if (v40)
  {
    goto LABEL_11;
  }

  sub_29D65F2E4();
  v46 = sub_29D65F2F4();
  v47 = sub_29D660214();
  v48 = os_log_type_enabled(v46, v47);
  v80 = a3;
  v78 = v10;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v91[0] = v50;
    *v49 = 136315650;
    *(v49 + 4) = sub_29D64A1D0(0xD000000000000023, 0x800000029D669170, v91);
    *(v49 + 12) = 2080;
    *(v49 + 14) = sub_29D64A1D0(0xD000000000000022, 0x800000029D6691A0, v91);
    *(v49 + 22) = 2080;
    v51 = 0x6970784564656573;
    v52 = 0xEA00000000007972;
    if (v81 != 2)
    {
      v51 = 0x61476E6F69676572;
      v52 = 0xEB00000000646574;
    }

    if (v81 == 1)
    {
      v53 = 0x694465746F6D6572;
    }

    else
    {
      v53 = v51;
    }

    if (v81 != 1)
    {
      v39 = v52;
    }

    v54 = v7;
    v55 = sub_29D64A1D0(v53, v39, v91);

    *(v49 + 24) = v55;
    _os_log_impl(&dword_29D5D7000, v46, v47, "[%s.%s]: Feed item created with state %s", v49, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v50, -1, -1);
    MEMORY[0x29ED63350](v49, -1, -1);
  }

  else
  {
    v54 = v7;
  }

  v77 = *(v89 + 8);
  v77(v29, v90);
  v56 = v14;
  if (qword_2A1A1E460 != -1)
  {
    swift_once();
  }

  v57 = qword_2A1A20B48;
  sub_29D5F0640();
  v76[1] = v57;
  v58 = sub_29D660104();
  sub_29D649050(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D661D90;
  *(inited + 32) = sub_29D65DF54();
  *(inited + 40) = v60;
  v79 = sub_29D647FA0(inited, v58);
  swift_setDeallocating();
  sub_29D5E606C(inited + 32);
  sub_29D648020(0);
  v61 = v78;
  sub_29D6463D8(v78);
  v81 = sub_29D648C68(v81);
  v63 = v62;
  if (qword_2A1A1E468 != -1)
  {
    swift_once();
  }

  v64 = sub_29D65DD54();
  sub_29D5DE6EC(v64, qword_2A1A20B50);
  v65 = sub_29D65DDA4();
  v66 = v83;
  v67 = v54;
  v68 = v54;
  v69 = v86;
  (*(v83 + 104))(v68, *MEMORY[0x29EDC1B28], v86);
  sub_29D649008(&qword_2A17AD3C0, sub_29D648020, MEMORY[0x29EDC2120]);
  v70 = v81;
  sub_29D65DDC4();

  sub_29D5E60C0(v70, v63);
  (*(v66 + 8))(v67, v69);
  (*(v84 + 8))(v61, v85);
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  sub_29D65DE34();
  sub_29D65DE04();
  v71 = sub_29D65DE44();
  sub_29D644E58(v79);
  v71(v91, 0);
  v73 = v87;
  v72 = v88;
  a3 = v80;
  (*(v87 + 32))(v80, v56, v88);
  v74 = v72;
  v38 = 0;
  return (*(v73 + 56))(a3, v38, 1, v74);
}

uint64_t sub_29D645C04()
{
  sub_29D660724();
  sub_29D65FFA4();

  return sub_29D660744();
}

double sub_29D645CD8(uint64_t a1)
{
  sub_29D65FFA4();

  return result;
}

uint64_t sub_29D645D98(uint64_t a1)
{
  sub_29D660724();
  sub_29D65FFA4();

  return sub_29D660744();
}

unint64_t sub_29D645E68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D6491D4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_29D645E98(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0xEA00000000007972;
  v5 = 0x6970784564656573;
  if (*v1 != 2)
  {
    v5 = 0x61476E6F69676572;
    v4 = 0xEB00000000646574;
  }

  if (*v1)
  {
    v3 = 0x694465746F6D6572;
    v2 = 0xED0000656C626173;
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

uint64_t sub_29D645FD8(void *a1, char a2)
{
  sub_29D6493B8(0, &qword_2A17AD3D0, MEMORY[0x29EDC9E88]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v11[-v8];
  sub_29D5E32A8(a1, a1[3]);
  sub_29D64912C();
  sub_29D660774();
  v11[15] = a2;
  sub_29D649180();
  sub_29D660654();
  return (*(v6 + 8))(v9, v5);
}

void sub_29D646144(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_29D660694();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_29D6461C8(uint64_t a1)
{
  v2 = sub_29D64912C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D646204(uint64_t a1)
{
  v2 = sub_29D64912C();

  return MEMORY[0x2A1C73280](a1, v2);
}

void *sub_29D646240@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_29D649220(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_29D646288()
{
  sub_29D649050(0, &qword_2A1A1DD90, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D662030;
  *(inited + 32) = [objc_opt_self() audiogramSampleType];
  v1 = sub_29D647E40(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_2A1A20B48 = v1;
  return result;
}

uint64_t sub_29D646350()
{
  v0 = sub_29D65DD54();
  sub_29D5EDFD0(v0, qword_2A1A20B50);
  v1 = sub_29D5DE6EC(v0, qword_2A1A20B50);
  v2 = *MEMORY[0x29EDC3750];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_29D6463D8@<X0>(uint64_t a1@<X8>)
{
  v29[4] = a1;
  v1 = sub_29D65E7B4();
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v29[3] = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x29EDC9C68];
  sub_29D5F083C(0, &qword_2A1A1E538, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = v29 - v7;
  v9 = sub_29D65EAD4();
  MEMORY[0x2A1C7C4A8](v9, v10);
  sub_29D5F083C(0, &qword_2A17AC428, MEMORY[0x29EDC17D8], v4);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v14 = v29 - v13;
  sub_29D5F083C(0, &qword_2A17AC430, MEMORY[0x29EDC20F8], v4);
  MEMORY[0x2A1C7C4A8](v15 - 8, v16);
  v18 = v29 - v17;
  v19 = sub_29D65E7E4();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = sub_29D65E104();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  v21 = MEMORY[0x29EDC2550];
  sub_29D5F083C(0, &qword_2A17AC438, MEMORY[0x29EDC2550], MEMORY[0x29EDC9E90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_29D661D20;
  sub_29D65EAC4();
  sub_29D65EAB4();
  v29[5] = v22;
  sub_29D649008(&qword_2A17AC440, MEMORY[0x29EDC2550], MEMORY[0x29EDC2558]);
  sub_29D5F083C(0, &qword_2A17AC448, v21, MEMORY[0x29EDC9A40]);
  sub_29D5F07B4();
  sub_29D660484();
  sub_29D65EA34();
  swift_allocObject();
  v29[2] = sub_29D65EA24();
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v29[1] = sub_29D65DA74();
  sub_29D65DA74();
  sub_29D65DA74();
  v23 = sub_29D65E154();
  (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  sub_29D5F083C(0, &qword_2A17AC458, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9E90]);
  v24 = sub_29D65E554();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_29D661D90;
  (*(v25 + 104))(v27 + v26, *MEMORY[0x29EDC1D60], v24);
  sub_29D65E7A4();
  return sub_29D65E784();
}

unint64_t sub_29D646A6C(uint64_t a1, uint64_t a2)
{
  sub_29D660364();
  result = sub_29D660494();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_29D646AF0(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v9 = sub_29D6604C4();

    if (v9)
    {

      sub_29D5F0640();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_29D6604B4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_29D646E58(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_29D647028(v20 + 1);
    }

    v18 = v8;
    sub_29D646A6C(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_29D5F0640();
  v11 = sub_29D660364();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_29D647498(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_29D660374();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_29D646D08(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_29D660724();
  sub_29D65FFA4();
  v8 = sub_29D660744();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_29D660694() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    sub_29D6475F8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_29D646E58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29D5F2FB4(0);
    v2 = sub_29D660504();
    v15 = v2;
    sub_29D6604A4();
    if (sub_29D6604D4())
    {
      sub_29D5F0640();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_29D647028(v9 + 1);
        }

        v2 = v15;
        result = sub_29D660364();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_29D6604D4());
    }
  }

  else
  {
    sub_29D65EE94();
    return MEMORY[0x29EDCA1A0];
  }

  return v2;
}

void sub_29D647028(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_29D5F2FB4(0);
  v4 = sub_29D6604F4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_29D660364();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_29D647244(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_29D648F5C();
  v4 = sub_29D6604F4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_29D660724();
      sub_29D65FFA4();
      v21 = sub_29D660744();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_29D647498(unint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_29D647028(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_29D647778();
      goto LABEL_12;
    }

    sub_29D647A0C(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_29D660364();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_29D5F0640();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_29D660374();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_29D6606B4();
  __break(1u);
}

void sub_29D6475F8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_29D647244(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_29D6478BC();
      goto LABEL_16;
    }

    sub_29D647C14(v8 + 1);
  }

  v10 = *v4;
  sub_29D660724();
  sub_29D65FFA4();
  v11 = sub_29D660744();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_29D660694() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_29D6606B4();
  __break(1u);
}

void sub_29D647778()
{
  v1 = v0;
  sub_29D5F2FB4(0);
  v2 = *v0;
  v3 = sub_29D6604E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_29D6478BC()
{
  v1 = v0;
  sub_29D648F5C();
  v2 = *v0;
  v3 = sub_29D6604E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
        _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_29D647A0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_29D5F2FB4(0);
  v4 = sub_29D6604F4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_29D660364();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_29D647C14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_29D648F5C();
  v4 = sub_29D6604F4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_29D660724();
      _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
      sub_29D65FFA4();
      v20 = sub_29D660744();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

uint64_t sub_29D647E40(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29D6604B4())
  {
    v4 = sub_29D5F0640();
    v5 = sub_29D649008(&qword_2A1A1E708, sub_29D5F0640, MEMORY[0x29EDCA2F0]);
    result = MEMORY[0x29ED62490](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x29ED62900](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_29D646AF0(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_29D6604B4();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_29D647FA0(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
      sub_29D646D08(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

void sub_29D648020(uint64_t a1)
{
  if (!qword_2A17AD3B0)
  {
    type metadata accessor for HearingTestRescindedTileActionHandler(255);
    sub_29D649008(&qword_2A17AD3B8, type metadata accessor for HearingTestRescindedTileActionHandler, &unk_29D661CBC);
    v1 = sub_29D65E814();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AD3B0);
    }
  }
}

uint64_t sub_29D6480B4()
{
  v0 = sub_29D65F314();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v83[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5, v6);
  v8 = &v83[-v7];
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = &v83[-v11];
  MEMORY[0x2A1C7C4A8](v13, v14);
  v16 = &v83[-v15];
  v17 = sub_29D65F264();
  if ((sub_29D65F244() & 1) == 0)
  {
    sub_29D65F2E4();
    v20 = sub_29D65F2F4();
    v21 = sub_29D660214();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v92 = v23;
      *v22 = 136315394;
      *(v22 + 4) = sub_29D64A1D0(0xD000000000000023, 0x800000029D669170, &v92);
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_29D64A1D0(0xD000000000000015, 0x800000029D669260, &v92);
      _os_log_impl(&dword_29D5D7000, v20, v21, "[%s.%s]: Feed item will not be created given onboarding and feature enabled status", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v23, -1, -1);
      MEMORY[0x29ED63350](v22, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }

  v18 = *MEMORY[0x29EDBA600];
  v19 = v17;
  if ([v19 isRequirementSatisfiedWithIdentifier_])
  {
    if ([v19 isRequirementSatisfiedWithIdentifier_])
    {
      if ([v19 isRequirementSatisfiedWithIdentifier_])
      {

        return 0;
      }

      sub_29D65F2E4();
      v54 = sub_29D65F2F4();
      v55 = sub_29D660214();
      if (os_log_type_enabled(v54, v55))
      {
        v89 = v0;
        v90 = v1;
        v56 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v92 = v87;
        *v56 = 136315650;
        *(v56 + 4) = sub_29D64A1D0(0xD000000000000023, 0x800000029D669170, &v92);
        *(v56 + 12) = 2080;
        *(v56 + 14) = sub_29D64A1D0(0xD000000000000015, 0x800000029D669260, &v92);
        *(v56 + 22) = 2080;
        v57 = [v19 unsatisfiedRequirementIdentifiers];
        type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
        v58 = sub_29D660034();

        v59 = *(v58 + 16);
        if (v59)
        {
          LODWORD(v86) = v55;
          v88 = v19;
          v91 = MEMORY[0x29EDCA190];
          sub_29D5F8EB8(0, v59, 0);
          v60 = 32;
          v61 = v91;
          do
          {
            v62 = sub_29D65FF64();
            v91 = v61;
            v65 = *(v61 + 16);
            v64 = *(v61 + 24);
            if (v65 >= v64 >> 1)
            {
              v85 = v62;
              v67 = v63;
              sub_29D5F8EB8((v64 > 1), v65 + 1, 1);
              v63 = v67;
              v62 = v85;
              v61 = v91;
            }

            *(v61 + 16) = v65 + 1;
            v66 = v61 + 16 * v65;
            *(v66 + 32) = v62;
            *(v66 + 40) = v63;
            v60 += 8;
            --v59;
          }

          while (v59);

          v19 = v88;
          LOBYTE(v55) = v86;
        }

        else
        {

          v61 = MEMORY[0x29EDCA190];
        }

        v91 = v61;
        sub_29D649050(0, &qword_2A17AC388, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
        sub_29D6490A0();
        v78 = sub_29D65FEE4();
        v80 = v79;

        v81 = sub_29D64A1D0(v78, v80, &v92);

        *(v56 + 24) = v81;
        _os_log_impl(&dword_29D5D7000, v54, v55, "[%s.%s]: Returning regionGated state from unavailability %s", v56, 0x20u);
        v38 = 3;
        v82 = v87;
        swift_arrayDestroy();
        MEMORY[0x29ED63350](v82, -1, -1);
        MEMORY[0x29ED63350](v56, -1, -1);

        (*(v90 + 8))(v8, v89);
      }

      else
      {

        (*(v1 + 8))(v8, v0);
        return 3;
      }
    }

    else
    {
      sub_29D65F2E4();
      v40 = sub_29D65F2F4();
      v41 = sub_29D660214();
      if (os_log_type_enabled(v40, v41))
      {
        v89 = v0;
        v90 = v1;
        v42 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v92 = v87;
        *v42 = 136315650;
        *(v42 + 4) = sub_29D64A1D0(0xD000000000000023, 0x800000029D669170, &v92);
        *(v42 + 12) = 2080;
        *(v42 + 14) = sub_29D64A1D0(0xD000000000000015, 0x800000029D669260, &v92);
        *(v42 + 22) = 2080;
        v43 = [v19 unsatisfiedRequirementIdentifiers];
        type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
        v44 = sub_29D660034();

        v45 = *(v44 + 16);
        if (v45)
        {
          LODWORD(v86) = v41;
          v88 = v19;
          v91 = MEMORY[0x29EDCA190];
          sub_29D5F8EB8(0, v45, 0);
          v46 = 32;
          v47 = v91;
          do
          {
            v48 = sub_29D65FF64();
            v91 = v47;
            v51 = *(v47 + 16);
            v50 = *(v47 + 24);
            if (v51 >= v50 >> 1)
            {
              v85 = v48;
              v53 = v49;
              sub_29D5F8EB8((v50 > 1), v51 + 1, 1);
              v49 = v53;
              v48 = v85;
              v47 = v91;
            }

            *(v47 + 16) = v51 + 1;
            v52 = v47 + 16 * v51;
            *(v52 + 32) = v48;
            *(v52 + 40) = v49;
            v46 += 8;
            --v45;
          }

          while (v45);

          v19 = v88;
          LOBYTE(v41) = v86;
        }

        else
        {

          v47 = MEMORY[0x29EDCA190];
        }

        v91 = v47;
        sub_29D649050(0, &qword_2A17AC388, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
        sub_29D6490A0();
        v73 = sub_29D65FEE4();
        v75 = v74;

        v76 = sub_29D64A1D0(v73, v75, &v92);

        *(v42 + 24) = v76;
        _os_log_impl(&dword_29D5D7000, v40, v41, "[%s.%s]: Returning seedExpiry state from unavailability %s", v42, 0x20u);
        v77 = v87;
        swift_arrayDestroy();
        MEMORY[0x29ED63350](v77, -1, -1);
        MEMORY[0x29ED63350](v42, -1, -1);

        (*(v90 + 8))(v12, v89);
        return 2;
      }

      else
      {

        (*(v1 + 8))(v12, v0);
        return 2;
      }
    }
  }

  else
  {
    sub_29D65F2E4();
    v24 = sub_29D65F2F4();
    v25 = sub_29D660214();
    if (os_log_type_enabled(v24, v25))
    {
      v89 = v0;
      v90 = v1;
      v26 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v92 = v87;
      *v26 = 136315650;
      *(v26 + 4) = sub_29D64A1D0(0xD000000000000023, 0x800000029D669170, &v92);
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_29D64A1D0(0xD000000000000015, 0x800000029D669260, &v92);
      *(v26 + 22) = 2080;
      v27 = [v19 unsatisfiedRequirementIdentifiers];
      type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
      v28 = sub_29D660034();

      v29 = *(v28 + 16);
      if (v29)
      {
        v84 = v25;
        v85 = v26;
        v86 = v24;
        v88 = v19;
        v91 = MEMORY[0x29EDCA190];
        sub_29D5F8EB8(0, v29, 0);
        v30 = 32;
        v31 = v91;
        do
        {
          v32 = sub_29D65FF64();
          v34 = v33;
          v91 = v31;
          v36 = *(v31 + 16);
          v35 = *(v31 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_29D5F8EB8((v35 > 1), v36 + 1, 1);
            v31 = v91;
          }

          *(v31 + 16) = v36 + 1;
          v37 = v31 + 16 * v36;
          *(v37 + 32) = v32;
          *(v37 + 40) = v34;
          v30 += 8;
          --v29;
        }

        while (v29);

        v19 = v88;
        v26 = v85;
        v24 = v86;
        LOBYTE(v25) = v84;
      }

      else
      {

        v31 = MEMORY[0x29EDCA190];
      }

      v91 = v31;
      sub_29D649050(0, &qword_2A17AC388, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
      sub_29D6490A0();
      v68 = sub_29D65FEE4();
      v70 = v69;

      v71 = sub_29D64A1D0(v68, v70, &v92);

      *(v26 + 24) = v71;
      _os_log_impl(&dword_29D5D7000, v24, v25, "[%s.%s]: Returning remoteDisable state from unavailability %s", v26, 0x20u);
      v72 = v87;
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v72, -1, -1);
      MEMORY[0x29ED63350](v26, -1, -1);

      (*(v90 + 8))(v16, v89);
      return 1;
    }

    else
    {

      (*(v1 + 8))(v16, v0);
      return 1;
    }
  }

  return v38;
}

uint64_t sub_29D648C68(char a1)
{
  v1 = sub_29D65F314();
  MEMORY[0x2A1C7C4A8](v1, v2);
  sub_29D65D944();
  swift_allocObject();
  sub_29D65D934();
  sub_29D648FB4();
  v3 = sub_29D65D924();

  return v3;
}

void sub_29D648F5C()
{
  if (!qword_2A1A1E6C8)
  {
    v0 = sub_29D660524();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A1E6C8);
    }
  }
}

unint64_t sub_29D648FB4()
{
  result = qword_2A17AD3C8;
  if (!qword_2A17AD3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD3C8);
  }

  return result;
}

uint64_t sub_29D649008(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D649050(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29D6490A0()
{
  result = qword_2A17AC390;
  if (!qword_2A17AC390)
  {
    sub_29D649050(255, &qword_2A17AC388, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC390);
  }

  return result;
}

unint64_t sub_29D64912C()
{
  result = qword_2A17AD3D8;
  if (!qword_2A17AD3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD3D8);
  }

  return result;
}

unint64_t sub_29D649180()
{
  result = qword_2A17AD3E0;
  if (!qword_2A17AD3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD3E0);
  }

  return result;
}

unint64_t sub_29D6491D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D660634();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

void *sub_29D649220(void *a1)
{
  sub_29D6493B8(0, &qword_2A17AD3E8, MEMORY[0x29EDC9E80]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v11[-v7];
  v9 = sub_29D5E32A8(a1, a1[3]);
  sub_29D64912C();
  sub_29D660764();
  if (!v1)
  {
    sub_29D64941C();
    sub_29D660644();
    (*(v5 + 8))(v8, v4);
    v9 = v11[15];
  }

  sub_29D5DF1C4(a1);
  return v9;
}

void sub_29D6493B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D64912C();
    v7 = a3(a1, &type metadata for HearingTestRescindedFeedItemConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D64941C()
{
  result = qword_2A17AD3F0;
  if (!qword_2A17AD3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD3F0);
  }

  return result;
}

unint64_t sub_29D649494()
{
  result = qword_2A17AD3F8;
  if (!qword_2A17AD3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD3F8);
  }

  return result;
}

unint64_t sub_29D6494EC()
{
  result = qword_2A17AD400;
  if (!qword_2A17AD400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD400);
  }

  return result;
}

unint64_t sub_29D649544()
{
  result = qword_2A17AD408;
  if (!qword_2A17AD408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD408);
  }

  return result;
}

unint64_t sub_29D64959C()
{
  result = qword_2A17AD410;
  if (!qword_2A17AD410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD410);
  }

  return result;
}

unint64_t sub_29D6495F0()
{
  result = qword_2A17AD418;
  if (!qword_2A17AD418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD418);
  }

  return result;
}

void sub_29D64964C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_29D660634())
  {
    if (qword_2A17AC050 != -1)
    {
      swift_once();
    }

    v6 = sub_29D65F314();
    sub_29D5DE6EC(v6, qword_2A17AD6F0);
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v7 = sub_29D65F2F4();
    v8 = sub_29D6601F4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136446466;
      v11 = sub_29D6607A4();
      v13 = sub_29D64A1D0(v11, v12, &v18);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      *(v9 + 14) = sub_29D64A1D0(a1, a2, &v18);
      _os_log_impl(&dword_29D5D7000, v7, v8, "[%{public}s] Onboarding identifier %{public}s could not be found", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v10, -1, -1);
      MEMORY[0x29ED63350](v9, -1, -1);
    }

    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    *(a3 + 24) = type metadata accessor for EnvironmentAudioNotificationOnboardingDataProvider(0);
    *(a3 + 32) = &off_2A2432298;
    v14 = sub_29D5E3C20(a3);
    if (qword_2A1A1EA68 != -1)
    {
      swift_once();
    }

    v15 = sub_29D65F314();
    v16 = sub_29D5DE6EC(v15, qword_2A1A20C00);
    v17 = *(*(v15 - 8) + 16);

    v17(v14, v16, v15);
  }
}

Swift::Void __swiftcall OnboardingTileActionHandler.didTap()()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29D65EDC4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_2A17AD420;
  v8 = sub_29D65F2F4();
  v9 = sub_29D660214();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v29[1] = v7;
    v11 = v10;
    v12 = swift_slowAlloc();
    v32[0] = v12;
    *v11 = 136446210;
    v13 = sub_29D6607A4();
    v29[0] = v3;
    v15 = sub_29D64A1D0(v13, v14, v32);
    v3 = v29[0];

    *(v11 + 4) = v15;
    _os_log_impl(&dword_29D5D7000, v8, v9, "[%{public}s] Did begin onboarding...", v11, 0xCu);
    sub_29D5DF1C4(v12);
    MEMORY[0x29ED63350](v12, -1, -1);
    MEMORY[0x29ED63350](v11, -1, -1);
  }

  sub_29D65EF44();
  sub_29D65ED94();
  (*(v3 + 8))(v6, v2);
  sub_29D5E32A8(v32, v33);
  v16 = sub_29D65ED64();
  v18 = v17;
  sub_29D5DF1C4(v32);
  sub_29D64964C(v16, v18, &v30);
  if (v31)
  {

    sub_29D5DBB48(&v30, v32);
    v19 = v33;
    v20 = v34;
    sub_29D5E32A8(v32, v33);
    (*(v20 + 40))(v1, v19, v20);
    sub_29D5DF1C4(v32);
  }

  else
  {
    sub_29D649C94(&v30);
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v21 = sub_29D65F2F4();
    v22 = sub_29D6601F4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32[0] = v24;
      *v23 = 136446466;
      v25 = sub_29D6607A4();
      v27 = sub_29D64A1D0(v25, v26, v32);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2082;
      v28 = sub_29D64A1D0(v16, v18, v32);

      *(v23 + 14) = v28;
      _os_log_impl(&dword_29D5D7000, v21, v22, "[%{public}s] Could not get onboarding experience for identifier: %{public}s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v24, -1, -1);
      MEMORY[0x29ED63350](v23, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_29D649C94(uint64_t a1)
{
  sub_29D649CF0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D649CF0(uint64_t a1)
{
  if (!qword_2A17AD428)
  {
    sub_29D649D48();
    v1 = sub_29D660434();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AD428);
    }
  }
}

unint64_t sub_29D649D48()
{
  result = qword_2A1A1EA00;
  if (!qword_2A1A1EA00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A1EA00);
  }

  return result;
}

uint64_t OnboardingTileActionHandler.__allocating_init(context:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29D65EDC4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v2);
  v10 = qword_2A17AD420;
  if (qword_2A17AC050 != -1)
  {
    swift_once();
  }

  v11 = sub_29D65F314();
  v12 = sub_29D5DE6EC(v11, qword_2A17AD6F0);
  (*(*(v11 - 8) + 16))(&v9[v10], v12, v11);
  (*(v5 + 16))(v8, a1, v4);
  v13 = sub_29D65EF54();
  (*(v5 + 8))(a1, v4);
  return v13;
}

uint64_t OnboardingTileActionHandler.init(context:)(uint64_t a1)
{
  v3 = sub_29D65EDC4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_2A17AD420;
  if (qword_2A17AC050 != -1)
  {
    swift_once();
  }

  v9 = sub_29D65F314();
  v10 = sub_29D5DE6EC(v9, qword_2A17AD6F0);
  (*(*(v9 - 8) + 16))(v1 + v8, v10, v9);
  (*(v4 + 16))(v7, a1, v3);
  v11 = sub_29D65EF54();
  (*(v4 + 8))(a1, v3);
  return v11;
}

uint64_t sub_29D64A0C0()
{
  v1 = qword_2A17AD420;
  v2 = sub_29D65F314();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id OnboardingTileActionHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingTileActionHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D64A160(uint64_t a1)
{
  v2 = qword_2A17AD420;
  v3 = sub_29D65F314();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

unint64_t sub_29D64A1D0(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v6 = sub_29D64A29C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x29EDC9D78];
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
    sub_29D5E0D1C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_29D5DF1C4(v11);
  return v7;
}

unint64_t sub_29D64A29C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_29D64A3A8(a5, a6);
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
    result = sub_29D660584();
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

void *sub_29D64A3A8(uint64_t a1, unint64_t a2)
{
  v3 = sub_29D64A3F4(a1, a2);
  sub_29D64A524(&unk_2A2431190);
  return v3;
}

void *sub_29D64A3F4(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  v6 = sub_29D64A610(v5, 0);
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

  result = sub_29D660584();
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
        v10 = sub_29D65FFD4();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
        }

        v11 = v10;
        v7 = sub_29D64A610(v10, 0);
        result = sub_29D660534();
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

void sub_29D64A524(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_29D64A678(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}