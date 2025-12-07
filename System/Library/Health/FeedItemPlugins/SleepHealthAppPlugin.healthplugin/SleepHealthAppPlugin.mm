BOOL sub_29E5EFC10(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_29E5EFC40@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_29E5EFC6C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_29E5EFD3C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_29E5EFD64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E7541D8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_29E5EFD90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_29E5FDB3C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_29E5EFDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E74EFE8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_29E5FDB88(0, &qword_2A1A7CFB0, MEMORY[0x29EDC69D8]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_29E5FDB88(0, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_29E5EFF48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_29E74EFE8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_29E5FDB88(0, &qword_2A1A7CFB0, MEMORY[0x29EDC69D8]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_29E5FDB88(0, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_29E5F00D0()
{
  sub_29E751758();

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F0108()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F0168()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29E5F01A8()
{
  v1 = sub_29E754048();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_29E74F0D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2A1C733A0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_29E5F02F8()
{
  v1 = sub_29E754048();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_29E74F0D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_29E751758();
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2A1C733A0](v0, v11 + 8, v10 | 7);
}

uint64_t sub_29E5F0470()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F04EC()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F0524()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F055C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_29E74F9E8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29E5F0608(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_29E74F9E8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29E5F0708()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F0740(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_29E754048();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  sub_29E60DC24(0, &qword_2A1A7BEF8, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC390]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  sub_29E60DC24(0, &qword_2A1856AE8, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC390]);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[7];
    goto LABEL_11;
  }

  sub_29E60DC24(0, &qword_2A1856AF0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = a1 + a3[8];

  return v19(v20, a2, v18);
}

uint64_t sub_29E5F098C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_29E754048();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  sub_29E60DC24(0, &qword_2A1A7BEF8, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC390]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  sub_29E60DC24(0, &qword_2A1856AE8, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC390]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  sub_29E60DC24(0, &qword_2A1856AF0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
  v18 = v17;
  v19 = *(*(v17 - 8) + 56);
  v20 = a1 + a4[8];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_29E5F0BD8()
{
  v1 = type metadata accessor for FullScreenSleepScoreCard(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_29E754048();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = v1[6];
  sub_29E60DC24(0, &qword_2A1856970, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_29E74EE78();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v1[7];
  sub_29E60DC24(0, &qword_2A1856978, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_29E752AD8();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v1[8];
  sub_29E60DC24(0, &qword_2A1856980, MEMORY[0x29EDBC370], MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_29E752A38();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29E5F0E88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29E752E28();
  *a1 = result & 1;
  return result;
}

uint64_t sub_29E5F0F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E74FB08();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_29E5F0FB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E74FB08();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_29E5F1098(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_29E613590(0, &qword_2A1856D48, sub_29E6116C4);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_29E5F1164(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_29E613590(0, &qword_2A1856D48, sub_29E6116C4);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_29E5F1228()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E5F1280(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74EF88();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29E5F12EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74EF88();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29E5F135C()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F1394(uint64_t a1, uint64_t a2)
{
  sub_29E619C6C(0, &qword_2A1856F28, MEMORY[0x29EDBC7F0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E5F1414(uint64_t a1, uint64_t a2)
{
  sub_29E619864(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E5F1478(uint64_t a1)
{
  sub_29E619864(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E5F14D4(uint64_t a1, uint64_t a2)
{
  sub_29E6198F8(0, &qword_2A1856F48, sub_29E6199FC, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E5F1568(uint64_t a1)
{
  sub_29E6198F8(0, &qword_2A1856F48, sub_29E6199FC, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E5F15F4()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F162C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F1664()
{

  sub_29E5FECBC((v0 + 48));

  return MEMORY[0x2A1C733A0](v0, 88, 7);
}

uint64_t sub_29E5F16AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E74F9E8();
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

uint64_t sub_29E5F1778(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E74F9E8();
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

uint64_t sub_29E5F1834(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74ED28();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29E5F18A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74ED28();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29E5F1910()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F194C()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F19D4()
{

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29E5F1A24()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F1B00()
{
  sub_29E751758();

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E5F1B4C()
{

  return MEMORY[0x2A1C733A0](v0, 33, 7);
}

uint64_t sub_29E5F1BE8()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29E5F1C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E74F098();
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

uint64_t sub_29E5F1CEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E74F098();
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

uint64_t sub_29E5F1DA8()
{
  sub_29E629DBC(255);
  sub_29E629CE8(255);
  sub_29E6298B0(255);
  sub_29E753198();
  sub_29E62A828(&qword_2A1857468, sub_29E6298B0, MEMORY[0x29EDBC0F0]);
  swift_getOpaqueTypeConformance2();
  sub_29E60DE10();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29E5F1EC4()
{
  v1 = *(type metadata accessor for SleepScoreLevelSelection.SleepScoreLevelItem(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_29E74F098();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29E5F1FB8(uint64_t a1)
{
  sub_29E62A1C4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E5F2014()
{
  sub_29E62A1C4(255);
  sub_29E62A6C0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29E5F2080()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F2130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E62CEC0(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_29E5F2218(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E62CEC0(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }
}

uint64_t sub_29E5F22F4()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F232C()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E5F23B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E74F048();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_29E631834(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

void sub_29E5F24D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_29E74F048();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_29E631834(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_29E5F25DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SleepScoreCardComponentViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_29E5F2698(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SleepScoreCardComponentViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_29E5F2910()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29E5F2958()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F2990()
{

  return MEMORY[0x2A1C733A0](v0, 27, 7);
}

uint64_t sub_29E5F29C8()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F2A00()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F2A58(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a2)
  {
    return a2(a1);
  }

  return a1;
}

uint64_t sub_29E5F2A88()
{
  MEMORY[0x29ED98530](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F2AC0()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F2AF8()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F2B30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E752D48();
  *a1 = result;
  return result;
}

uint64_t sub_29E5F2BAC()
{
  MEMORY[0x29ED98530](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F2BE4()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F2C24()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F2C5C()
{
  v1 = sub_29E74FEB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  sub_29E64942C(0);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_29E74FFA8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  v12 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2A1C733A0](v0, v12 + 8, v3 | v7 | 7);
}

uint64_t sub_29E5F2E00()
{
  v1 = sub_29E74FEB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = *(v2 + 64);
  sub_29E64942C(0);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_29E74FFA8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  v12 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2A1C733A0](v0, v12 + 8, v3 | v7 | 7);
}

uint64_t sub_29E5F2FA4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29E74FE48();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_29E5F3050(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_29E74FE48();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29E5F3144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E631834(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_29E5F3210(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E631834(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }
}

uint64_t sub_29E5F32C8()
{
  v1 = *(type metadata accessor for SleepScoreRoomScoreBreakdown(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_29E74F2D8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29E5F33D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E74EFE8();
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

uint64_t sub_29E5F3494(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E74EFE8();
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

uint64_t sub_29E5F35B0(uint64_t a1, uint64_t a2)
{
  sub_29E650160(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E5F3614(uint64_t a1, uint64_t a2)
{
  sub_29E650160(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E5F36C0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_29E65AA54(0, &qword_2A1A7BEF8, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC390]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_29E5F37A0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_29E65AA54(0, &qword_2A1A7BEF8, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC390]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_29E5F3874(uint64_t a1, uint64_t a2)
{
  sub_29E6538E0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E5F3904@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E752DC8();
  *a1 = result;
  return result;
}

uint64_t sub_29E5F395C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E65AA54(0, &qword_2A1857E80, type metadata accessor for SleepScoreGalleryModelProvider, MEMORY[0x29EDBCBA8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_29E65AA54(0, &qword_2A1857E88, sub_29E6545B8, MEMORY[0x29EDBCB00]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 48));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_29E5F3AC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E65AA54(0, &qword_2A1857E80, type metadata accessor for SleepScoreGalleryModelProvider, MEMORY[0x29EDBCBA8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_29E65AA54(0, &qword_2A1857E88, sub_29E6545B8, MEMORY[0x29EDBCB00]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 48)) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_29E5F3C98()
{
  v1 = type metadata accessor for SleepScoreGallery(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_29E754048();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v14 = *(v6 + 64);
  sub_29E65AA54(0, &qword_2A1857E80, type metadata accessor for SleepScoreGalleryModelProvider, MEMORY[0x29EDBCBA8]);
  (*(*(v8 - 8) + 8))(v0 + v3, v8);
  v9 = v0 + v3 + *(v1 + 20);
  v10 = type metadata accessor for SleepScoreGallery.Sheet(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    (*(v6 + 8))(v9, v5);
  }

  v11 = v2 | v7;
  v12 = (v3 + v4 + v7) & ~v7;
  sub_29E65AA54(0, &qword_2A1857E88, sub_29E6545B8, MEMORY[0x29EDBCB00]);

  sub_29E5FAF18(*(v0 + v3 + *(v1 + 24)), *(v0 + v3 + *(v1 + 24) + 8));

  (*(v6 + 8))(v0 + v12, v5);

  return MEMORY[0x2A1C733A0](v0, v12 + v14, v11 | 7);
}

uint64_t sub_29E5F3F60()
{
  sub_29E65A3BC(255);
  sub_29E65A23C(255);
  type metadata accessor for SleepScoreGallery.Sheet(255);
  type metadata accessor for FullScreenSleepScoreCard(255);
  sub_29E65A0EC(255);
  sub_29E659FE8(255);
  sub_29E659F34(255);
  sub_29E753348();
  sub_29E659480(255);
  sub_29E65AFE8(&qword_2A1857F70, sub_29E659480, MEMORY[0x29EDBBEA8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_29E65AFE8(&qword_2A1857F98, type metadata accessor for SleepScoreGallery.Sheet, &unk_29E7669F4);
  sub_29E65AFE8(&qword_2A1856990, type metadata accessor for FullScreenSleepScoreCard, &unk_29E763B1C);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29E5F41C8()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F4200()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F4238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E74EE78();
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_29E5F42F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E74EE78();
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_29E5F43B8()
{
  v1 = sub_29E74EAF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E5F4440()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F4478()
{
  v1 = sub_29E74FEB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  sub_29E751758();

  return MEMORY[0x2A1C733A0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29E5F4540()
{
  v1 = sub_29E74FEB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29E5F45D4()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F46AC()
{
  MEMORY[0x29ED98530](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F46F8()
{
  MEMORY[0x29ED98530](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F4730()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29E5F4784()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F47E0()
{
  sub_29E5FECBC((v0 + 16));
  sub_29E5FECBC((v0 + 56));

  return MEMORY[0x2A1C733A0](v0, 96, 7);
}

uint64_t sub_29E5F4820()
{
  sub_29E751758();
  sub_29E5FECBC((v0 + 24));

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29E5F4860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E7500C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_29E5F4918(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E7500C8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_29E5F49D0()
{
  MEMORY[0x29ED98530](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F4A08()
{

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29E5F4A98()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F4AD0()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F4B08()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F4BDC()
{
  sub_29E751758();

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29E5F4C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E7501E8();
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

uint64_t sub_29E5F4CE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E7501E8();
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

uint64_t sub_29E5F4DFC()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F4E48()
{
  v1 = sub_29E74FEB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  sub_29E751758();

  return MEMORY[0x2A1C733A0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29E5F4EF8()
{
  v1 = sub_29E74FEB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29E5F4F8C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F4FC4()
{
  MEMORY[0x29ED98530](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F501C()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F50E0()
{
  sub_29E751758();

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29E5F5130()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E5F5178()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F51BC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_29E5F51CC()
{
  MEMORY[0x29ED98530](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F5204()
{
  sub_29E751758();

  return MEMORY[0x2A1C733A0](v0, 25, 7);
}

uint64_t sub_29E5F5248()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F5280()
{
  sub_29E5FECBC((v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29E5F52B8()
{
  sub_29E5FECBC((v0 + 16));
  sub_29E5FECBC((v0 + 56));

  return MEMORY[0x2A1C733A0](v0, 96, 7);
}

uint64_t sub_29E5F5300()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F5338()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F53C4(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeatureOnboardedHideableDataSource(255, AssociatedTypeWitness, AssociatedConformanceWitness, v3);

  return swift_getWitnessTable();
}

uint64_t sub_29E5F5484(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SleepApneaEventSummaryViewModel(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_29E5F5530(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SleepApneaEventSummaryViewModel(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29E5F55D4()
{
  sub_29E6ADCE4(255);
  sub_29E6AC948(255);
  sub_29E6ADAC8(255);
  sub_29E6ADEE0(255);
  sub_29E6AD4C4(255);
  sub_29E6AE764(255, &qword_2A1858E40, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
  sub_29E6AC9DC(255);
  sub_29E6AD5C8(255);
  sub_29E6AE80C(&qword_2A1858E28, sub_29E6AC9DC, MEMORY[0x29EDB8690]);
  v0 = MEMORY[0x29EDB86F8];
  sub_29E6AE80C(&qword_2A1858E30, sub_29E6AD5C8, MEMORY[0x29EDB86F8]);
  swift_getOpaqueTypeConformance2();
  sub_29E6ADC48();
  swift_getOpaqueTypeConformance2();
  sub_29E6AE80C(&qword_2A1858E70, sub_29E6ADEE0, v0);
  swift_getOpaqueTypeConformance2();
  sub_29E6AE1DC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29E5F57EC()
{
  sub_29E6B1EF0(0, &qword_2A1858F18, MEMORY[0x29EDCA420]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_29E751758();
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x2A1C733A0](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_29E5F58F0()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E5F5930()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29E5F5978()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F59B0()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F59E8()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F5A20()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F5A58()
{
  sub_29E751758();

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E5F5A98()
{
  sub_29E751758();
  sub_29E6B8B00(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29E5F5AE4()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F5B20()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F5B58()
{
  v1 = (type metadata accessor for TestOptions(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = sub_29E74EAF8();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  return MEMORY[0x2A1C733A0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_29E5F5CA0()
{
  v1 = (type metadata accessor for TestOptions(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = sub_29E74EAF8();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2A1C733A0](v0, v8 + 8, v2 | 7);
}

uint64_t sub_29E5F5DE4()
{

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29E5F5E34()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E5F5E74(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_29E6BF43C(0, qword_2A1A7CFF0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_29E5F5F54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_29E6BF43C(0, qword_2A1A7CFF0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_29E5F602C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E65AA20(0);
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
    v12 = *(a1 + *(a3 + 24));
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

void sub_29E5F60F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E65AA20(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }
}

uint64_t sub_29E5F61BC(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_29E6C34F8(0, a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E5F6220()
{
  v1 = type metadata accessor for SleepScoreCard(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  sub_29E5FAF18(*(v0 + v4), *(v0 + v4 + 8));
  v5 = v0 + v4 + *(v1 + 20);
  v6 = type metadata accessor for SleepScoreRoomModel(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v12 = v3;
    v7 = sub_29E74F048();
    (*(*(v7 - 8) + 8))(v5, v7);
    v8 = *(v6 + 20);
    v9 = sub_29E74F2D8();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }

    v3 = v12;
  }

  if (*(v0 + v4 + *(v1 + 24)))
  {
  }

  return MEMORY[0x2A1C733A0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_29E5F6414(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_29E6C34F8(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E5F6478(uint64_t a1, __n128 a2)
{
  sub_29E6C34F8(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E5F64DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29E752BD8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_29E5F650C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E631834(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_29E5F65C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E631834(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }
}

uint64_t sub_29E5F6690@<X0>(uint64_t a1@<X8>)
{
  result = sub_29E752E88();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_29E5F674C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F6784()
{
  sub_29E751758();

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29E5F67CC()
{
  sub_29E751758();

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29E5F6814()
{

  sub_29E5FECBC((v0 + 32));

  return MEMORY[0x2A1C733A0](v0, 80, 7);
}

uint64_t sub_29E5F685C()
{

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29E5F68BC()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29E5F6904()
{

  sub_29E5FECBC((v0 + 32));
  sub_29E5FECBC((v0 + 72));

  return MEMORY[0x2A1C733A0](v0, 120, 7);
}

uint64_t sub_29E5F6954()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F698C()
{

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29E5F69F4(uint64_t a1)
{
  sub_29E6D06AC(0, &qword_2A18595C0, sub_29E6D0720, sub_29E6D0890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E5F6A88()
{
  sub_29E6D06AC(255, &qword_2A18595C0, sub_29E6D0720, sub_29E6D0890);
  sub_29E6D0968();
  sub_29E60DE10();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29E5F6B28()
{
  sub_29E751758();

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29E5F6B7C()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F6BB4()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29E5F6BF4()
{
  MEMORY[0x29ED98530](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F6C2C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F6C6C()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F6CA4()
{

  return MEMORY[0x2A1C733A0](v0, 25, 7);
}

uint64_t sub_29E5F6CFC()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F6D34()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E5F6DBC()
{
  MEMORY[0x29ED98530](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F6DF4()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F6E2C()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E5F6EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E74ED28();
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

uint64_t sub_29E5F6F70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E74ED28();
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

uint64_t sub_29E5F7028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E65AA20(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_29E74F5F8();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_29E5F7144(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E65AA20(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_29E74F5F8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_29E5F72D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E631834(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_29E5F73A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E631834(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }
}

uint64_t sub_29E5F745C(uint64_t *a1)
{
  sub_29E6E3888(255);
  swift_getTupleTypeMetadata2();
  sub_29E753C78();
  swift_getWitnessTable();
  sub_29E753AA8();

  return swift_getWitnessTable();
}

uint64_t sub_29E5F7500(uint64_t *a1)
{
  type metadata accessor for ScoreLevelTitle(255);
  swift_getTupleTypeMetadata2();
  sub_29E753C78();
  swift_getWitnessTable();
  sub_29E753A78();
  sub_29E752C28();
  type metadata accessor for SleepScoreRoomScoreBreakdown(255);
  swift_getTupleTypeMetadata2();
  sub_29E753C78();
  swift_getWitnessTable();
  sub_29E753AA8();

  return swift_getWitnessTable();
}

uint64_t sub_29E5F760C(uint64_t *a1)
{
  sub_29E6E4548(255);
  swift_getTupleTypeMetadata2();
  sub_29E753C78();
  swift_getWitnessTable();
  sub_29E753A78();

  return swift_getWitnessTable();
}

void sub_29E5F76B4()
{
  if (MEMORY[0x29EDCA1F8])
  {
    sub_29E6E6734(0);
  }
}

uint64_t sub_29E5F76F0()
{
  v1 = sub_29E7513C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E5F7778()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F77B4()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F780C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F7844()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F787C()
{

  return MEMORY[0x2A1C733A0](v0, 33, 7);
}

uint64_t sub_29E5F7928()
{

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29E5F7978()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F79B0()
{

  return MEMORY[0x2A1C733A0](v0, 25, 7);
}

uint64_t sub_29E5F79E8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F7A28()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29E5F7A70()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29E5F7AC0()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F7B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SleepApneaEventSummaryViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_29E6F6090(0, &qword_2A1856AE8, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC390]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_29E6F6090(0, qword_2A1A7D0D0, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_29E5F7CA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SleepApneaEventSummaryViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_29E6F6090(0, &qword_2A1856AE8, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC390]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_29E6F6090(0, qword_2A1A7D0D0, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_29E5F7EA0()
{
  sub_29E6F7888(255);
  sub_29E6FFF1C(&qword_2A1859EE8, sub_29E6F7888, MEMORY[0x29EDBBF10]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29E5F7F28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29E752E08();
  *a1 = result;
  return result;
}

uint64_t sub_29E5F7F7C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_29E6FDCFC(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_29E5F8028(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_29E6FDCFC(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_29E5F81D4()
{
  v1 = (type metadata accessor for SleepApneaSummaryTextAndAction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = type metadata accessor for SleepApneaEventSummaryViewModel(0);
  if (!(*(*(v6 - 1) + 48))(v5, 1, v6))
  {
    v7 = sub_29E74ED28();
    v8 = *(*(v7 - 8) + 8);
    v8(v5, v7);
    v8(v5 + v6[5], v7);
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29E5F8358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SleepApneaEventSummaryViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
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

  else
  {
    sub_29E6F6090(0, &qword_2A1856AF0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_29E5F84BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SleepApneaEventSummaryViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    sub_29E6F6090(0, &qword_2A1856AF0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_29E5F8618()
{
  sub_29E6FF7F4(255, &qword_2A185A190, sub_29E6FF144, sub_29E6FE75C, MEMORY[0x29EDBC558]);
  sub_29E6FF1D0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29E5F86B4(uint64_t a1, uint64_t a2)
{
  sub_29E6FD740(0, &qword_2A185A1E0, sub_29E6FF5D4, &qword_2A1859DB8, MEMORY[0x29EDBC8D8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E5F8750(uint64_t a1, uint64_t a2)
{
  sub_29E6FF75C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E5F87B8(uint64_t a1)
{
  sub_29E6FF7F4(0, &qword_2A185A1F0, sub_29E6FF75C, sub_29E6FF878, MEMORY[0x29EDBC558]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E5F8858()
{
  sub_29E6FF7F4(255, &qword_2A185A1F0, sub_29E6FF75C, sub_29E6FF878, MEMORY[0x29EDBC558]);
  sub_29E6FFB48(255);
  sub_29E6FFBDC();
  sub_29E6FFF1C(&qword_2A185A238, sub_29E6FFB48, MEMORY[0x29EDC1F78]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29E5F8954()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F898C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F89C4()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F89FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74EFE8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29E5F8A68(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74EFE8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29E5F8AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SleepApneaEventSummaryViewModel(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29E5F8B84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SleepApneaEventSummaryViewModel(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29E5F8C40()
{
  sub_29E5FECBC((v0 + 16));
  sub_29E5FECBC((v0 + 56));

  return MEMORY[0x2A1C733A0](v0, 96, 7);
}

uint64_t sub_29E5F8C8C()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F8CD0()
{

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29E5F8D18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E752E38();
  *a1 = result;
  return result;
}

uint64_t sub_29E5F8D74(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29E74FE48();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_29E5F8E20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_29E74FE48();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29E5F8EC4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F8EFC()
{
  sub_29E5FECBC((v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29E5F8F3C()
{
  sub_29E751758();

  return MEMORY[0x2A1C733A0](v0, 42, 7);
}

uint64_t sub_29E5F8F7C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F8FBC()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F8FF4()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E5F907C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_29E725164(0, &qword_2A1A7D350, MEMORY[0x29EDC2968], MEMORY[0x29EDC9C68]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for BreathingDisturbancesHighlightDataModel(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    sub_29E725164(0, qword_2A1A7D0D0, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_29E5F9250(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_29E725164(0, &qword_2A1A7D350, MEMORY[0x29EDC2968], MEMORY[0x29EDC9C68]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for BreathingDisturbancesHighlightDataModel(0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    sub_29E725164(0, qword_2A1A7D0D0, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 56);
    v18 = a1 + a4[7];

    return v17(v18, a2, a2, v16);
  }

  return result;
}

uint64_t sub_29E5F9424(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29E74ED28();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_29E5F94D0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_29E74ED28();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29E5F9574(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74ED28();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29E5F95E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74ED28();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29E5F96E8(uint64_t a1, uint64_t a2)
{
  sub_29E725A50(0, &qword_2A185A718, sub_29E725ABC, MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E5F9784(uint64_t a1)
{
  sub_29E725A50(0, &qword_2A185A718, sub_29E725ABC, MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E5F9818(uint64_t a1, uint64_t a2)
{
  sub_29E725ABC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E5F987C()
{
  v1 = type metadata accessor for BreathingDisturbancesHighlightView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = sub_29E7517C8();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = v5 + *(v1 + 20);

  v9 = *(type metadata accessor for BreathingDisturbancesHighlightDataModel(0) + 44);
  v10 = sub_29E74ED28();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  v11 = *(v1 + 28);
  sub_29E725164(0, &qword_2A1A7BF00, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_29E752BF8();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29E5F9B18()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F9B50()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F9B88()
{
  sub_29E5FECBC((v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 96, 7);
}

uint64_t sub_29E5F9BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E74F9E8();
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

uint64_t sub_29E5F9C9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E74F9E8();
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

uint64_t sub_29E5F9D58()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F9D90()
{
  sub_29E5FECBC((v0 + 24));

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29E5F9DD8@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_29E5F9E60(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 246)
  {
    v4 = *a1;
    if (v4 >= 0xA)
    {
      return v4 - 9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_29E73447C(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = &a1[*(a3 + 20)];

    return v10(v11, a2, v9);
  }
}

_BYTE *sub_29E5F9F24(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 246)
  {
    *result = a2 + 9;
  }

  else
  {
    sub_29E73447C(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = &v5[*(a4 + 20)];

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_29E5F9FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E74ED28();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_29E74E838();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_29E5FA100(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_29E74ED28();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_29E74E838();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_29E5FA208()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5FA240()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_29E5FA274()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5FA2AC()
{
  sub_29E5FECBC((v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 88, 7);
}

id sub_29E5FA2F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 endDate];
  *a2 = v4;
  return result;
}

uint64_t sub_29E5FA3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E73E938(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel, MEMORY[0x29EDC9C68]);
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

void sub_29E5FA49C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E73E938(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel, MEMORY[0x29EDC9C68]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_29E5FA588()
{
  v1 = type metadata accessor for SleepScoreGalleryCard(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for SleepScoreRoomModel(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = sub_29E74F048();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = *(v6 + 20);
    v9 = sub_29E74F2D8();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  sub_29E5FAF18(*(v5 + *(v1 + 28)), *(v5 + *(v1 + 28) + 8));

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29E5FA778(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74ED28();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29E5FA7E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74ED28();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29E5FA900()
{
  sub_29E745C28(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E5FA988()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E5FA9C8()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5FAA00()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5FAA40(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74FFA8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29E5FAAAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74FFA8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29E5FAB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SleepApneaEventSummaryViewModel(0);
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

uint64_t sub_29E5FABF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SleepApneaEventSummaryViewModel(0);
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

uint64_t sub_29E5FACA8(uint64_t a1)
{
  sub_29E74DA44(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E5FAD04()
{
  sub_29E74E240(255);
  sub_29E6AC948(255);
  sub_29E74DF44(255);
  sub_29E74E684(255, &qword_2A185AD88, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548], MEMORY[0x29EDB86F0]);
  sub_29E74DDE0(255);
  sub_29E74E048(255);
  sub_29E74DA44(255);
  sub_29E74DE64();
  swift_getOpaqueTypeConformance2();
  sub_29E74D97C(&qword_2A185AD78, sub_29E74E048, MEMORY[0x29EDB86F8]);
  swift_getOpaqueTypeConformance2();
  sub_29E74E3CC();
  swift_getOpaqueTypeConformance2();
  sub_29E6AE1DC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29E5FAEB4()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_29E5FAEE4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_29E5FAF18(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_29E5FAF38()
{
  v1 = sub_29E754188();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x29EDC6AA8];
  sub_29E5FDB88(0, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for SleepScoreCardComponentViewModel(0);
  sub_29E5FDD10(v0 + *(v9 + 24), v8, &unk_2A1856658, v5);
  v10 = sub_29E74F688();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_29E5FDD7C(v8, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
    sub_29E754118();
    v12 = sub_29E65B0B4(v4);
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v12 = sub_29E74F658();
    (*(v11 + 8))(v8, v10);
  }

  return v12;
}

uint64_t sub_29E5FB170()
{
  v1 = sub_29E74F278();
  v39 = *(v1 - 8);
  v40 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v38 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E74F298();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E74EFE8();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v41 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E5FDB88(0, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v34 - v8;
  v10 = sub_29E74F688();
  v45 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v42 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x29EDC69D8];
  sub_29E5FDB88(0, &qword_2A1A7CFB0, MEMORY[0x29EDC69D8]);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v34 - v14;
  v16 = sub_29E74F2D8();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SleepScoreCardComponentViewModel(0);
  sub_29E5FDD10(v0 + *(v20 + 20), v15, &qword_2A1A7CFB0, v12);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v21 = &qword_2A1A7CFB0;
    v22 = MEMORY[0x29EDC69D8];
    v23 = v15;
LABEL_5:
    sub_29E5FDD7C(v23, v21, v22);
    return 0;
  }

  (*(v17 + 32))(v19, v15, v16);
  sub_29E5FDD10(v0 + *(v20 + 24), v9, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
  v24 = v45;
  if ((*(v45 + 48))(v9, 1, v10) == 1)
  {
    (*(v17 + 8))(v19, v16);
    v21 = &unk_2A1856658;
    v22 = MEMORY[0x29EDC6AA8];
    v23 = v9;
    goto LABEL_5;
  }

  v26 = v42;
  (*(v24 + 32))(v42, v9, v10);
  v27 = v41;
  sub_29E74F678();
  v29 = v43;
  v28 = v44;
  if ((*(v43 + 88))(v27, v44) != *MEMORY[0x29EDC6908])
  {
    (*(v24 + 8))(v26, v10);
    (*(v17 + 8))(v19, v16);
    (*(v29 + 8))(v27, v28);
    return 0;
  }

  (*(v29 + 8))(v27, v28);
  v30 = v35;
  sub_29E74F2B8();
  v31 = v38;
  sub_29E74F288();
  (*(v36 + 8))(v30, v37);
  v32 = (*(v39 + 88))(v31, v40);
  if (v32 == *MEMORY[0x29EDC69D0])
  {
    (*(v24 + 8))(v26, v10);
    (*(v17 + 8))(v19, v16);
    return 0;
  }

  if (v32 == *MEMORY[0x29EDC69C8] || v32 == *MEMORY[0x29EDC69B8] || v32 == *MEMORY[0x29EDC69C0])
  {
    v33 = sub_29E74F668();
    (*(v24 + 8))(v26, v10);
    (*(v17 + 8))(v19, v16);
    return v33;
  }

  else
  {
    result = sub_29E754E48();
    __break(1u);
  }

  return result;
}

uint64_t sub_29E5FB83C()
{
  v1 = sub_29E754188();
  v54 = *(v1 - 8);
  v55 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v53 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E74F278();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v49 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E74F298();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E5FDB88(0, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
  v8 = MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v45 - v11;
  v13 = sub_29E74F688();
  v56 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v50 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x29EDC69D8];
  sub_29E5FDB88(0, &qword_2A1A7CFB0, MEMORY[0x29EDC69D8]);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v18 = &v45 - v17;
  v19 = sub_29E74F2D8();
  v20 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SleepScoreCardComponentViewModel(0);
  sub_29E5FDD10(v0 + *(v23 + 20), v18, &qword_2A1A7CFB0, v15);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_29E5FDD7C(v18, &qword_2A1A7CFB0, MEMORY[0x29EDC69D8]);
    v24 = v13;
    v25 = v56;
    goto LABEL_5;
  }

  (*(v20 + 32))(v22, v18, v19);
  sub_29E5FDD10(v0 + *(v23 + 24), v12, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
  v26 = v56;
  v27 = (*(v56 + 48))(v12, 1, v13);
  v24 = v13;
  v25 = v26;
  if (v27 == 1)
  {
    (*(v20 + 8))(v22, v19);
    sub_29E5FDD7C(v12, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
LABEL_5:
    sub_29E5FDD10(v0 + *(v23 + 24), v10, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
    if ((*(v25 + 48))(v10, 1, v24) == 1)
    {
      sub_29E5FDD7C(v10, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
      v28 = v53;
      sub_29E754118();
      v29 = sub_29E65B0B4(v28);
      (*(v54 + 8))(v28, v55);
    }

    else
    {
      v29 = sub_29E74F668();
      (*(v25 + 8))(v10, v24);
    }

    return v29;
  }

  v30 = v50;
  (*(v26 + 32))(v50, v12, v24);
  v31 = v46;
  sub_29E74F2B8();
  v32 = v49;
  sub_29E74F288();
  (*(v47 + 8))(v31, v48);
  v34 = v51;
  v33 = v52;
  v35 = (*(v51 + 88))(v32, v52);
  if (v35 == *MEMORY[0x29EDC69D0])
  {
    v36 = v19;
    v29 = sub_29E74F668();
    (*(v25 + 8))(v30, v24);
    (*(v20 + 8))(v22, v36);
  }

  else
  {
    if (v35 == *MEMORY[0x29EDC69C8])
    {
      v37 = v53;
      sub_29E754118();
      v38 = v22;
      v39 = v19;
      v29 = sub_29E65B0B4(v37);
      (*(v54 + 8))(v37, v55);
      (*(v25 + 8))(v30, v24);
      v40 = *(v20 + 8);
      v41 = v38;
    }

    else
    {
      v48 = v22;
      if (v35 == *MEMORY[0x29EDC69B8])
      {
        v42 = v53;
        sub_29E754118();
        v43 = sub_29E65B0B4(v42);
        v39 = v19;
      }

      else
      {
        v39 = v19;
        if (v35 != *MEMORY[0x29EDC69C0])
        {
          v29 = sub_29E74F668();
          (*(v25 + 8))(v30, v24);
          (*(v20 + 8))(v48, v39);
          (*(v34 + 8))(v32, v33);
          return v29;
        }

        v42 = v53;
        sub_29E754118();
        v43 = sub_29E65B0B4(v42);
      }

      v29 = v43;
      (*(v54 + 8))(v42, v55);
      (*(v25 + 8))(v30, v24);
      v40 = *(v20 + 8);
      v41 = v48;
    }

    v40(v41, v39);
  }

  return v29;
}

uint64_t sub_29E5FC098()
{
  v1 = sub_29E754188();
  v57 = *(v1 - 8);
  v58 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v56 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E74F278();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v49 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E74F298();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E74EFE8();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E5FDB88(0, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
  v10 = MEMORY[0x2A1C7C4A8](v9 - 8);
  v59 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v43 - v12;
  v14 = sub_29E74F688();
  v60 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v53 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x29EDC69D8];
  sub_29E5FDB88(0, &qword_2A1A7CFB0, MEMORY[0x29EDC69D8]);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v19 = &v43 - v18;
  v20 = sub_29E74F2D8();
  v21 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SleepScoreCardComponentViewModel(0);
  sub_29E5FDD10(v0 + *(v24 + 20), v19, &qword_2A1A7CFB0, v16);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_29E5FDD7C(v19, &qword_2A1A7CFB0, MEMORY[0x29EDC69D8]);
    v25 = v14;
    v26 = v60;
    goto LABEL_9;
  }

  (*(v21 + 32))(v23, v19, v20);
  v27 = v0;
  sub_29E5FDD10(v0 + *(v24 + 24), v13, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
  v28 = v60;
  v29 = (*(v60 + 48))(v13, 1, v14);
  v30 = v21;
  v25 = v14;
  v26 = v28;
  v0 = v27;
  if (v29 == 1)
  {
    (*(v30 + 8))(v23, v20);
    sub_29E5FDD7C(v13, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
    goto LABEL_9;
  }

  v44 = v27;
  v45 = v20;
  v31 = v53;
  (*(v26 + 32))(v53, v13, v25);
  v32 = v52;
  sub_29E74F678();
  v34 = v54;
  v33 = v55;
  if ((*(v54 + 88))(v32, v55) != *MEMORY[0x29EDC6908])
  {
    (*(v26 + 8))(v31, v25);
    (*(v30 + 8))(v23, v45);
    (*(v34 + 8))(v32, v33);
    v0 = v44;
LABEL_9:
    v39 = v59;
    sub_29E5FDD10(v0 + *(v24 + 24), v59, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
    if ((*(v26 + 48))(v39, 1, v25) == 1)
    {
      sub_29E5FDD7C(v39, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
      v40 = v56;
      sub_29E754118();
      v41 = sub_29E65B0B4(v40);
      (*(v57 + 8))(v40, v58);
    }

    else
    {
      v41 = sub_29E74F668();
      (*(v26 + 8))(v39, v25);
    }

    return v41;
  }

  (*(v34 + 8))(v32, v33);
  v35 = v46;
  sub_29E74F2B8();
  v36 = v49;
  sub_29E74F288();
  (*(v47 + 8))(v35, v48);
  v37 = (*(v50 + 88))(v36, v51);
  if (v37 == *MEMORY[0x29EDC69D0])
  {
    v38 = sub_29E74F668();
LABEL_16:
    v41 = v38;
    (*(v26 + 8))(v31, v25);
    (*(v30 + 8))(v23, v45);
    return v41;
  }

  if (v37 == *MEMORY[0x29EDC69C8] || v37 == *MEMORY[0x29EDC69B8] || v37 == *MEMORY[0x29EDC69C0])
  {
    v38 = sub_29E5FB83C();
    goto LABEL_16;
  }

  result = sub_29E754E48();
  __break(1u);
  return result;
}

uint64_t sub_29E5FC8F8()
{
  v1 = v0;
  v2 = sub_29E754188();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E74EFE8();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x29EDC6908] || v10 == *MEMORY[0x29EDC6900] || v10 == *MEMORY[0x29EDC68F8])
  {
    sub_29E754118();
    v11 = sub_29E65B0B4(v5);
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    return 0;
  }

  return v11;
}

uint64_t sub_29E5FCB98(uint64_t a1, id *a2)
{
  result = sub_29E7541B8();
  *a2 = 0;
  return result;
}

uint64_t sub_29E5FCC10(uint64_t a1, id *a2)
{
  v3 = sub_29E7541C8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_29E5FCC90@<X0>(uint64_t *a2@<X8>)
{
  sub_29E7541D8();
  v3 = sub_29E754198();

  *a2 = v3;
  return result;
}

uint64_t sub_29E5FCCD4()
{
  v0 = sub_29E7541D8();
  v1 = MEMORY[0x29ED96C80](v0);

  return v1;
}

uint64_t sub_29E5FCD10(uint64_t a1)
{
  sub_29E7541D8();
  sub_29E7542D8();
}

uint64_t sub_29E5FCD64(uint64_t a1)
{
  sub_29E7541D8();
  sub_29E7550C8();
  sub_29E7542D8();
  v1 = sub_29E755108();

  return v1;
}

uint64_t sub_29E5FCDD8(void *a1, uint64_t *a2)
{
  v2 = sub_29E7541D8();
  v4 = v3;
  if (v2 == sub_29E7541D8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_29E755028();
  }

  return v7 & 1;
}

uint64_t sub_29E5FCE60(uint64_t a1)
{
  v2 = sub_29E5FCFAC(&unk_2A1A7D460, type metadata accessor for HKFeatureIdentifier, &unk_29E762320);
  v3 = sub_29E5FCFAC(&qword_2A18563E8, type metadata accessor for HKFeatureIdentifier, &unk_29E7622C8);
  v4 = MEMORY[0x29EDC99C0];

  return MEMORY[0x2A1C72EC8](a1, v2, v3, v4);
}

uint64_t sub_29E5FCFAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E5FD03C(uint64_t a1)
{
  v2 = sub_29E5FCFAC(&qword_2A1856610, type metadata accessor for NSKeyValueChangeKey, &unk_29E762DD0);
  v3 = sub_29E5FCFAC(&qword_2A1856618, type metadata accessor for NSKeyValueChangeKey, &unk_29E762CB4);
  v4 = MEMORY[0x29EDC99C0];

  return MEMORY[0x2A1C72EC8](a1, v2, v3, v4);
}

uint64_t sub_29E5FD0F8(uint64_t a1)
{
  v2 = sub_29E5FCFAC(&qword_2A1856640, type metadata accessor for Key, &unk_29E762E9C);
  v3 = sub_29E5FCFAC(&unk_2A1856648, type metadata accessor for Key, &unk_29E762768);
  v4 = MEMORY[0x29EDC99C0];

  return MEMORY[0x2A1C72EC8](a1, v2, v3, v4);
}

uint64_t sub_29E5FD1B4(uint64_t a1)
{
  v2 = sub_29E5FCFAC(&qword_2A1856620, type metadata accessor for OpenURLOptionsKey, &unk_29E762E14);
  v3 = sub_29E5FCFAC(&qword_2A1856628, type metadata accessor for OpenURLOptionsKey, &unk_29E762BA0);
  v4 = MEMORY[0x29EDC99C0];

  return MEMORY[0x2A1C72EC8](a1, v2, v3, v4);
}

uint64_t sub_29E5FD270@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_29E754198();

  *a2 = v3;
  return result;
}

uint64_t sub_29E5FD2B8(uint64_t a1)
{
  v2 = sub_29E5FCFAC(&qword_2A1856630, type metadata accessor for OpenExternalURLOptionsKey, &unk_29E762E58);
  v3 = sub_29E5FCFAC(&qword_2A1856638, type metadata accessor for OpenExternalURLOptionsKey, &unk_29E7628FC);
  v4 = MEMORY[0x29EDC99C0];

  return MEMORY[0x2A1C72EC8](a1, v2, v3, v4);
}

void sub_29E5FD450(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_29E5FD91C()
{
  v1 = *v0;
  sub_29E7550C8();
  MEMORY[0x29ED979F0](v1);
  return sub_29E755108();
}

uint64_t sub_29E5FD990(uint64_t a1)
{
  v2 = *v1;
  sub_29E7550C8();
  MEMORY[0x29ED979F0](v2);
  return sub_29E755108();
}

uint64_t sub_29E5FDB3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_29E5FDB88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for SleepScoreCardComponentViewModel(uint64_t a1)
{
  result = qword_2A1856668;
  if (!qword_2A1856668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E5FDC3C(uint64_t a1)
{
  sub_29E74EFE8();
  if (v1 <= 0x3F)
  {
    sub_29E5FDB88(319, &qword_2A1A7CFB0, MEMORY[0x29EDC69D8]);
    if (v2 <= 0x3F)
    {
      sub_29E5FDB88(319, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29E5FDD10(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E5FDB88(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E5FDD7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E5FDB88(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E5FDE58(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC20SleepHealthAppPlugin26SleepApneaEventPDFProvider_characteristicsProvider);
  v3 = type metadata accessor for SleepApneaEventPDFSectionProvider(0);
  v11[3] = v3;
  v11[4] = sub_29E5FFBDC(&qword_2A1856760, type metadata accessor for SleepApneaEventPDFSectionProvider, &unk_29E76B960);
  v4 = sub_29E5FEBF4(v11);
  v5 = sub_29E751068();
  v6 = MEMORY[0x29EDC24D0];
  v4[3] = v5;
  v4[4] = v6;
  *v4 = v2;
  sub_29E5FEC58(a1 + OBJC_IVAR____TtC20SleepHealthAppPlugin26SleepApneaEventPDFProvider_viewModel, v4 + *(v3 + 20));

  v7 = sub_29E751038();
  sub_29E5FECBC(v11);
  sub_29E5FED08(0, &qword_2A1856768, sub_29E5FED6C, MEMORY[0x29EDC9E90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29E762F30;
  *(v8 + 32) = v7;
  v9 = sub_29E751028();

  return v9;
}

uint64_t sub_29E5FDFA0()
{
  v1 = v0;
  v2 = sub_29E750DB8();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v45 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_29E750A48();
  v39 = *(v41 - 8);
  MEMORY[0x2A1C7C4A8](v41);
  v42 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E7507B8();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v40 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_29E74EDB8();
  v7 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E74EE78();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v35 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E74F8B8();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v34 = sub_29E74F7C8();
  v33 = v16;
  (*(v13 + 8))(v15, v12);
  v32 = sub_29E750A38();
  v17 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin26SleepApneaEventPDFProvider_characteristicsProvider);
  v48 = sub_29E751068();
  v49 = MEMORY[0x29EDC24D0];
  v47 = v17;
  sub_29E5FED08(0, &qword_2A1856750, MEMORY[0x29EDC2148], MEMORY[0x29EDC9E90]);
  v18 = sub_29E750B18();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_29E762F40;
  v23 = v22 + v21;
  v24 = *(v19 + 104);
  v24(v23, *MEMORY[0x29EDC2138], v18);
  v24(v23 + v20, *MEMORY[0x29EDC2140], v18);

  sub_29E5FE8D8(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v25 = v36;
  (*(v7 + 104))(v9, *MEMORY[0x29EDB9C78], v36);
  sub_29E74EDC8();
  (*(v7 + 8))(v9, v25);

  v26 = v32;
  v27 = sub_29E750A28();
  v48 = v26;
  v49 = MEMORY[0x29EDC20A0];
  v47 = v27;
  (*(v37 + 104))(v40, *MEMORY[0x29EDC1F48], v38);
  (*(v39 + 104))(v42, *MEMORY[0x29EDC20B0], v41);
  (*(v43 + 104))(v45, *MEMORY[0x29EDC22A0], v44);
  v46[3] = sub_29E7507D8();
  v46[4] = MEMORY[0x29EDC1F50];
  sub_29E5FEBF4(v46);

  sub_29E7507C8();
  v28 = objc_allocWithZone(sub_29E750D88());
  v29 = sub_29E750D78();
  sub_29E5FFBDC(&qword_2A1856758, type metadata accessor for SleepApneaEventPDFProvider, &unk_29E762F7C);

  sub_29E750D68();

  return v29;
}

uint64_t sub_29E5FE690()
{
  sub_29E5FFC24(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin26SleepApneaEventPDFProvider_viewModel);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SleepApneaEventPDFProvider(uint64_t a1)
{
  result = qword_2A1856740;
  if (!qword_2A1856740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E5FE758(uint64_t a1)
{
  result = type metadata accessor for SleepApneaEventSummaryViewModel(319);
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

void sub_29E5FE860(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_29E5FE8D8(uint64_t a1)
{
  v2 = sub_29E750B18();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_29E5FEE04(0);
    v9 = sub_29E754D48();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_29E5FFBDC(&qword_2A1856788, MEMORY[0x29EDC2148], MEMORY[0x29EDC2150]);
      v16 = sub_29E7540A8();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_29E5FFBDC(&qword_2A1856790, MEMORY[0x29EDC2148], MEMORY[0x29EDC2158]);
          v23 = sub_29E754108();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

uint64_t *sub_29E5FEBF4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_29E5FEC58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepApneaEventSummaryViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E5FECBC(void *a1)
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

void sub_29E5FED08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E5FEDA0()
{
  result = qword_2A1856778;
  if (!qword_2A1856778)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1856778);
  }

  return result;
}

void sub_29E5FEE04(uint64_t a1)
{
  if (!qword_2A1856780)
  {
    sub_29E750B18();
    sub_29E5FFBDC(&qword_2A1856788, MEMORY[0x29EDC2148], MEMORY[0x29EDC2150]);
    v1 = sub_29E754D58();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1856780);
    }
  }
}

uint64_t sub_29E5FEE98(char a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin26SleepApneaEventPDFProvider_viewModel;
  v6 = type metadata accessor for SleepApneaEventSummaryViewModel(0);
  v7 = *(v5 + *(v6 + 28));
  type metadata accessor for BreathingDisturbancesRoomInteractionAnalyticsEvent();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 17) = v7;
  v9 = *(v5 + *(v6 + 32));
  v12[4] = sub_29E6DE8B4;
  v12[5] = 0;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1107296256;
  v12[2] = sub_29E5FE860;
  v12[3] = a2;
  v10 = _Block_copy(v12);

  [v9 submitEvent:v8 completion:v10];
  _Block_release(v10);
}

uint64_t sub_29E5FEFAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E5FEFC4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_29E754C98())
    {
LABEL_3:
      sub_29E5FF284(0);
      v3 = sub_29E754D48();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_29E754C98();
      if (!v5)
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

  v3 = MEMORY[0x29EDCA1A0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x29ED976A0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_29E754B78();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_29E5FF318();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_29E754B88();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        sub_29E751758();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
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
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_29E754B78();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_29E5FF318();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_29E754B88();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_29E5FF284(uint64_t a1)
{
  if (!qword_2A1A7BD38)
  {
    sub_29E5FF318();
    sub_29E5FFBDC(&qword_2A1A7D488, sub_29E5FF318, MEMORY[0x29EDCA2F0]);
    v1 = sub_29E754D58();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7BD38);
    }
  }
}

unint64_t sub_29E5FF318()
{
  result = qword_2A1A7D490;
  if (!qword_2A1A7D490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A7D490);
  }

  return result;
}

uint64_t sub_29E5FF364(uint64_t a1)
{
  v2 = sub_29E74FB98();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_29E5FFB48(0);
    v9 = sub_29E754D48();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_29E5FFBDC(&qword_2A1A7D6D8, MEMORY[0x29EDC3798], MEMORY[0x29EDC37A0]);
      v16 = sub_29E7540A8();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_29E5FFBDC(&unk_2A1A7CF60, MEMORY[0x29EDC3798], MEMORY[0x29EDC37A8]);
          v23 = sub_29E754108();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

unint64_t sub_29E5FF678(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_29E754C98();
    if (result)
    {
LABEL_3:
      sub_29E5FFAB4(0);
      result = sub_29E754D48();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_29E754C98();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x29EDCA1A0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x29ED976A0](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_29E752738();
    sub_29E5FFBDC(&qword_2A18567A0, MEMORY[0x29EDB8A18], MEMORY[0x29EDB8A20]);
    result = sub_29E7540A8();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_29E5FFBDC(&qword_2A18567A8, MEMORY[0x29EDB8A18], MEMORY[0x29EDB8A28]);
      do
      {
        result = sub_29E754108();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_29E5FF900(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29E5FFA5C();
    v3 = sub_29E754D48();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_29E7550C8();

      sub_29E7542D8();
      result = sub_29E755108();
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
          result = sub_29E755028();
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

void sub_29E5FFA5C()
{
  if (!qword_2A1A7BD40)
  {
    v0 = sub_29E754D58();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BD40);
    }
  }
}

void sub_29E5FFAB4(uint64_t a1)
{
  if (!qword_2A1856798)
  {
    sub_29E752738();
    sub_29E5FFBDC(&qword_2A18567A0, MEMORY[0x29EDB8A18], MEMORY[0x29EDB8A20]);
    v1 = sub_29E754D58();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1856798);
    }
  }
}

void sub_29E5FFB48(uint64_t a1)
{
  if (!qword_2A1A7D410)
  {
    sub_29E74FB98();
    sub_29E5FFBDC(&qword_2A1A7D6D8, MEMORY[0x29EDC3798], MEMORY[0x29EDC37A0]);
    v1 = sub_29E754D58();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7D410);
    }
  }
}

uint64_t sub_29E5FFBDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E5FFC24(uint64_t a1)
{
  v2 = type metadata accessor for SleepApneaEventSummaryViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E5FFD18(uint64_t a1, uint64_t a2)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
  }

  sub_29E602EFC(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v2 = *(sub_29E750CA8() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E762F30;
  sub_29E5FFEB0(v4 + v3);
  sub_29E750D18();
}

uint64_t sub_29E5FFEB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v51 = *MEMORY[0x29EDCA608];
  v3 = sub_29E74ED88();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + qword_2A18567C0);
  v8 = sub_29E74F368();
  v9 = (v2 + qword_2A18567B0);
  v10 = v2 + qword_2A18567B8;
  Strong = swift_unknownObjectWeakLoadStrong();
  v12 = *(v10 + 8);
  if (v8)
  {
    *&v48 = 0;
    *(&v48 + 1) = 0xE000000000000000;
    sub_29E754D78();

    *&v48 = 0xD000000000000018;
    *(&v48 + 1) = 0x800000029E757FD0;
    sub_29E601938(v9, v9[3]);
    v13 = sub_29E74F588();
    v14 = (v13 & 1) == 0;
    if (v13)
    {
      v15 = 1702195828;
    }

    else
    {
      v15 = 0x65736C6166;
    }

    v46 = v12;
    if (v14)
    {
      v16 = 0xE500000000000000;
    }

    else
    {
      v16 = 0xE400000000000000;
    }

    MEMORY[0x29ED96C20](v15, v16);

    v17 = sub_29E74F328();
    v18 = (v17 & 1) == 0;
    if (v17)
    {
      v19 = 1702195828;
    }

    else
    {
      v19 = 0x65736C6166;
    }

    if (v18)
    {
      v20 = 0xE500000000000000;
    }

    else
    {
      v20 = 0xE400000000000000;
    }

    MEMORY[0x29ED96C20](v19, v20);

    sub_29E601938(v9, v9[3]);
    v21 = sub_29E74F568();
    v22 = (v21 & 1) == 0;
    if (v21)
    {
      v23 = 1702195828;
    }

    else
    {
      v23 = 0x65736C6166;
    }

    if (v22)
    {
      v24 = 0xE500000000000000;
    }

    else
    {
      v24 = 0xE400000000000000;
    }

    MEMORY[0x29ED96C20](v23, v24);

    MEMORY[0x29ED96C20](93, 0xE100000000000000);
    sub_29E602EFC(0, &qword_2A18568D0, sub_29E602F60, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E762F30;
    sub_29E602E20(v9, &v48);
    v26 = type metadata accessor for ScheduleItem(0);
    v27 = swift_allocObject();
    swift_unknownObjectRetain();

    v28 = sub_29E601A10(&v48, Strong, v46, v2, v27);
    sub_29E751758();

    *(inited + 56) = v26;
    *(inited + 64) = sub_29E603018(&qword_2A18568D8, type metadata accessor for ScheduleItem, MEMORY[0x29EDC2450]);
    *(inited + 32) = v28;
    sub_29E601938(v9, v9[3]);
    if (sub_29E74F588())
    {
      v29 = type metadata accessor for SleepFocusItem(0);
      *(swift_allocObject() + qword_2A1856818) = v7;
      v30 = qword_2A1A7D6F0;
      v31 = v7;
      if (v30 != -1)
      {
        swift_once();
      }

      sub_29E74E9D8();
      v32 = sub_29E751008();

      inited = sub_29E6DAD84(1, 2, 1, inited);
      v49 = v29;
      v50 = sub_29E603018(&qword_2A18568E8, type metadata accessor for SleepFocusItem, MEMORY[0x29EDC2450]);
      *&v48 = v32;
      *(inited + 16) = 2;
      sub_29E5FAEE4(&v48, inited + 72);
    }

    sub_29E6CC108(inited);
  }

  else
  {
    sub_29E602EFC(0, &qword_2A18568D0, sub_29E602F60, MEMORY[0x29EDC9E90]);
    v33 = swift_initStackObject();
    *(v33 + 16) = xmmword_29E762F30;
    sub_29E602E20(v9, &v48);
    v34 = type metadata accessor for ScheduleItem(0);
    v35 = swift_allocObject();

    swift_unknownObjectRetain();
    v36 = sub_29E601A10(&v48, Strong, v12, v2, v35);
    sub_29E751758();

    *(v33 + 56) = v34;
    *(v33 + 64) = sub_29E603018(&qword_2A18568D8, type metadata accessor for ScheduleItem, MEMORY[0x29EDC2450]);
    *(v33 + 32) = v36;
    sub_29E601938(v9, v9[3]);
    if (sub_29E74F588())
    {
      if (qword_2A1A7D6F0 != -1)
      {
        swift_once();
      }

      v37 = sub_29E74E9D8();
      v39 = v38;
      type metadata accessor for LinkCollectionViewCell(0);
      v40 = sub_29E7506A8();
      v42 = v41;
      v33 = sub_29E6DAD84(1, 2, 1, v33);
      v49 = &type metadata for SetUpSleepFocusItem;
      v50 = sub_29E602FC4();
      v43 = swift_allocObject();
      *&v48 = v43;
      v43[2] = v37;
      v43[3] = v39;
      v43[4] = v40;
      v43[5] = v42;
      *(v33 + 16) = 2;
      sub_29E5FAEE4(&v48, v33 + 72);
    }

    sub_29E6CC108(v33);

    sub_29E74ED78();
    sub_29E74ED48();
    (*(v4 + 8))(v6, v3);
  }

  sub_29E750C98();
  return sub_29E751758();
}

uint64_t sub_29E600654()
{
  sub_29E5FECBC((v0 + qword_2A18567B0));
  sub_29E5F0140(v0 + qword_2A18567B8);
}

uint64_t sub_29E6006B4()
{
  v0 = sub_29E750D58();
  v1 = qword_2A18567B0;

  sub_29E5FECBC((v2 + v1));
  sub_29E5F0140(v0 + qword_2A18567B8);

  return swift_deallocClassInstance();
}

uint64_t sub_29E6007C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E750E78();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v16[-v7];
  sub_29E750E38();
  sub_29E750E18();
  v9 = *(v3 + 8);
  v9(v6, v2);
  v10 = sub_29E750E48();
  *v11 = 0x4039000000000000;
  v10(v16, 0);
  v12 = sub_29E750E48();
  *(v13 + 16) = 0;
  v12(v16, 0);
  v14 = sub_29E750E68();
  v9(v8, v2);
  return v14;
}

uint64_t sub_29E60099C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E751908();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E602EFC(0, &qword_2A1856850, MEMORY[0x29EDC1DC0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v12 - v8;
  sub_29E601938((v1 + qword_2A18567B0), *(v1 + qword_2A18567B0 + 24));
  if (sub_29E74F588())
  {

    return sub_29E600C2C(a1);
  }

  else
  {
    v11 = sub_29E7506F8();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74E9D8();
    (*(v4 + 104))(v6, *MEMORY[0x29EDC2A38], v3);
    return sub_29E7506E8();
  }
}

uint64_t sub_29E600C2C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = sub_29E751908();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDC9C68];
  sub_29E602EFC(0, &qword_2A1856850, MEMORY[0x29EDC1DC0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v35 - v8;
  sub_29E602EFC(0, qword_2A1A7CFF0, MEMORY[0x29EDB9B18], v6);
  v11 = MEMORY[0x2A1C7C4A8](v10 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v35 - v14;
  v16 = sub_29E74F8B8();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_29E74F368())
  {
    sub_29E601938((v2 + qword_2A18567B0), *(v2 + qword_2A18567B0 + 24));
    sub_29E74F568();
    sub_29E74F328();
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74F8A8();
    v20 = sub_29E74F7C8();
    v36 = v21;
    v37 = v20;

    v22 = *(v17 + 8);
    v22(v19, v16);
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74F8A8();
    v35 = sub_29E74F7C8();
    v24 = v23;
    v22(v19, v16);
    v25 = HKSPSleepFocusConfigurationURL();
    if (v25)
    {
      v26 = v25;
      sub_29E74EAD8();

      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    v28 = sub_29E74EAF8();
    v29 = *(v28 - 8);
    (*(v29 + 56))(v13, v27, 1, v28);
    sub_29E60197C(v13, v15);
    if ((*(v29 + 48))(v15, 1, v28) == 1)
    {
      sub_29E602E84(v15, qword_2A1A7CFF0, MEMORY[0x29EDB9B18]);
      v30 = 0;
      v31 = 0xE000000000000000;
    }

    else
    {
      v30 = sub_29E74EA98();
      v31 = v32;
      (*(v29 + 8))(v15, v28);
    }

    v41 = v37;
    v42 = v36;
    MEMORY[0x29ED96C20](23328, 0xE200000000000000);
    MEMORY[0x29ED96C20](v35, v24);

    MEMORY[0x29ED96C20](10333, 0xE200000000000000);
    MEMORY[0x29ED96C20](v30, v31);

    MEMORY[0x29ED96C20](41, 0xE100000000000000);
  }

  else
  {
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74E9D8();
  }

  v33 = sub_29E7506F8();
  (*(*(v33 - 8) + 56))(v9, 1, 1, v33);
  (*(v38 + 104))(v5, *MEMORY[0x29EDC2A38], v39);
  return sub_29E7506E8();
}

uint64_t sub_29E6012C4@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_29E750708();
  a1[4] = sub_29E603018(&qword_2A1856848, MEMORY[0x29EDC1DC8], MEMORY[0x29EDC1DB0]);
  v2 = sub_29E5FEBF4(a1);
  return sub_29E60099C(v2);
}

uint64_t sub_29E60133C()
{
  sub_29E750FF8();
  sub_29E7547D8();
  type metadata accessor for LinkCollectionViewCell(0);
  sub_29E7547D8();
  sub_29E750408();
  return sub_29E7547E8();
}

uint64_t sub_29E6013D4()
{
  sub_29E5FECBC((v0 + qword_2A18567E0));
  sub_29E5F0140(v0 + qword_2A18567E8);
  v1 = v0 + qword_2A18567F0;

  return sub_29E5F0140(v1);
}

uint64_t sub_29E601424()
{
  v0 = sub_29E751018();
  v1 = qword_2A18567E0;

  sub_29E5FECBC((v2 + v1));
  sub_29E5F0140(v0 + qword_2A18567E8);
  sub_29E5F0140(v0 + qword_2A18567F0);

  return swift_deallocClassInstance();
}

uint64_t sub_29E6014C8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E601550(uint64_t result, uint64_t a2)
{
  if (result && a2)
  {
    sub_29E602EFC(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
    v2 = *(sub_29E750CA8() - 8);
    v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_29E762F30;
    sub_29E5FFEB0(v4 + v3);
    sub_29E750D18();
  }

  return result;
}

uint64_t sub_29E601668()
{
  sub_29E601938((v0 + qword_2A18567E0), *(v0 + qword_2A18567E0 + 24));
  sub_29E74F4D8();
  sub_29E7527B8();

  return v2;
}

uint64_t sub_29E601718()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29E6017CC()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_29E60181C(uint64_t a1)
{
  v2 = sub_29E602FC4();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29E601870@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 1;
  v2 = *MEMORY[0x29EDC22C0];
  v3 = sub_29E750DC8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void *sub_29E601938(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_29E60197C(uint64_t a1, uint64_t a2)
{
  sub_29E602EFC(0, qword_2A1A7CFF0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E601A10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a5 + qword_2A18567E8;
  *(a5 + qword_2A18567E8 + 8) = 0;
  swift_unknownObjectWeakInit();
  v9 = a5 + qword_2A18567F0;
  *(a5 + qword_2A18567F0 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_29E602E20(a1, a5 + qword_2A18567E0);
  *(v8 + 8) = a3;
  swift_unknownObjectWeakAssign();
  *(v9 + 8) = &off_2A24FD7B8;
  swift_unknownObjectWeakAssign();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  v10 = sub_29E751008();
  sub_29E5FECBC(a1);
  return v10;
}

uint64_t sub_29E601B78(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v45[0] = a3;
  v54 = a2;
  v55 = a1;
  v56 = MEMORY[0x29EDCA298];
  sub_29E602EFC(0, &qword_2A1856860, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v51 = v45 - v9;
  sub_29E602924(0);
  v48 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v45[2] = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6029C0(0);
  v47 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v45[1] = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E602B54(0);
  v45[3] = v14;
  MEMORY[0x2A1C7C4A8](v14);
  sub_29E602BC0(0);
  v16 = *(v15 - 8);
  v49 = v15;
  v50 = v16;
  MEMORY[0x2A1C7C4A8](v15);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E602CE8(0);
  v20 = *(v19 - 8);
  v52 = v19;
  v53 = v20;
  MEMORY[0x2A1C7C4A8](v19);
  v46 = v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29E74ED88();
  v23 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v25 = v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v5 + qword_2A18567B8;
  *(v5 + qword_2A18567B8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + qword_2A18567C8) = MEMORY[0x29EDCA1A0];
  sub_29E602E20(a1, v5 + qword_2A18567B0);
  *(v26 + 8) = v45[0];
  swift_unknownObjectWeakAssign();
  *(v5 + qword_2A18567C0) = a4;
  v57[0] = 0;
  v57[1] = 0xE000000000000000;
  v27 = a4;
  sub_29E754D78();

  strcpy(v57, "MutableArray<");
  HIWORD(v57[1]) = -4864;
  sub_29E74ED78();
  v28 = sub_29E74ED48();
  v30 = v29;
  (*(v23 + 8))(v25, v22);
  MEMORY[0x29ED96C20](v28, v30);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v31 = sub_29E750D08();
  sub_29E74F418();
  sub_29E603018(&qword_2A18568C0, MEMORY[0x29EDC6A30], MEMORY[0x29EDC6A28]);
  swift_retain_n();
  v57[0] = sub_29E752758();
  sub_29E7527F8();
  sub_29E7528B8();

  v32 = (v31 + qword_2A18567B0);
  sub_29E601938((v31 + qword_2A18567B0), *(v31 + qword_2A18567B0 + 24));
  v57[0] = sub_29E74F518();
  sub_29E602A9C(0);
  v33 = MEMORY[0x29EDB8A70];
  sub_29E603018(&qword_2A1856878, sub_29E602A9C, MEMORY[0x29EDB8A70]);
  sub_29E7528B8();

  sub_29E601938(v32, v32[3]);
  v57[0] = sub_29E74F4D8();
  sub_29E602960();
  sub_29E603018(&qword_2A1A7BF68, sub_29E602960, v33);
  sub_29E7528B8();

  v34 = MEMORY[0x29EDB8908];
  sub_29E603018(&qword_2A1856890, sub_29E602B54, MEMORY[0x29EDB8908]);
  sub_29E603018(&qword_2A1856898, sub_29E6029C0, v34);
  sub_29E603018(&qword_2A18568A0, sub_29E602924, v34);
  sub_29E752698();
  sub_29E602DD4();
  v35 = sub_29E754908();
  v57[0] = v35;
  v36 = sub_29E7548D8();
  v37 = v51;
  (*(*(v36 - 8) + 56))(v51, 1, 1, v36);
  sub_29E603018(&qword_2A18568B0, sub_29E602BC0, MEMORY[0x29EDB8970]);
  sub_29E603018(&qword_2A18568B8, sub_29E602DD4, MEMORY[0x29EDCA280]);
  v38 = v46;
  v39 = v49;
  sub_29E752968();
  sub_29E602E84(v37, &qword_2A1856860, v56);

  (*(v50 + 8))(v18, v39);
  swift_allocObject();
  swift_weakInit();

  sub_29E603018(&qword_2A18568C8, sub_29E602CE8, MEMORY[0x29EDB89E8]);
  v40 = v52;
  sub_29E7529A8();

  (*(v53 + 8))(v38, v40);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  sub_29E602EFC(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v41 = *(sub_29E750CA8() - 8);
  v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_29E762F30;
  sub_29E5FFEB0(v43 + v42);
  sub_29E750D18();

  sub_29E751758();

  sub_29E5FECBC(v55);
  return v31;
}

uint64_t sub_29E602500(char a1)
{
  sub_29E601938((v1 + qword_2A18567E0), *(v1 + qword_2A18567E0 + 24));
  v3 = sub_29E74F548();
  [v3 setEnabled_];
  v4 = v1 + qword_2A18567F0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = swift_allocObject();
    *(v7 + 16) = Strong;
    *(v7 + 24) = v6;
    swift_unknownObjectRetain();
    sub_29E69E39C(v3, sub_29E60261C, v7);

    sub_29E751758();
  }

  else
  {
  }

  return sub_29E751758();
}

uint64_t sub_29E602624()
{
  v0 = sub_29E752098();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E74F7B8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E74EAF8();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = HKSPSleepFocusOnboardingURL();
  if (v12)
  {
    v13 = v12;
    sub_29E74EAD8();

    sub_29E74F7A8();
    sub_29E74F798();
    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    sub_29E752048();
    v15 = sub_29E752088();
    v16 = sub_29E7546A8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_29E6B9C90(0xD00000000000003ALL, 0x800000029E757E40, &v20);
      _os_log_impl(&dword_29E5ED000, v15, v16, "[%{public}s] Error trying to open Sleep Focus onboarding from Sleep Options view", v17, 0xCu);
      sub_29E5FECBC(v18);
      MEMORY[0x29ED98410](v18, -1, -1);
      MEMORY[0x29ED98410](v17, -1, -1);
    }

    return (*(v1 + 8))(v3, v0);
  }
}

void sub_29E602960()
{
  if (!qword_2A1A7BF60)
  {
    v0 = sub_29E7527D8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BF60);
    }
  }
}

void sub_29E6029FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E603018(a4, a5, MEMORY[0x29EDB8A70]);
    v8 = sub_29E752638();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E602A9C(uint64_t a1)
{
  if (!qword_2A1A7BF58)
  {
    sub_29E602B04();
    v1 = sub_29E7527D8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7BF58);
    }
  }
}

void sub_29E602B04()
{
  if (!qword_2A1A7BDC8)
  {
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BDC8);
    }
  }
}

void sub_29E602B54(uint64_t a1)
{
  if (!qword_2A1856880)
  {
    sub_29E7527F8();
    v1 = sub_29E752638();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1856880);
    }
  }
}

void sub_29E602BC0(uint64_t a1)
{
  if (!qword_2A1856888)
  {
    sub_29E602B54(255);
    sub_29E6029C0(255);
    sub_29E602924(255);
    v1 = MEMORY[0x29EDB8908];
    sub_29E603018(&qword_2A1856890, sub_29E602B54, MEMORY[0x29EDB8908]);
    sub_29E603018(&qword_2A1856898, sub_29E6029C0, v1);
    sub_29E603018(&qword_2A18568A0, sub_29E602924, v1);
    v2 = sub_29E752688();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1856888);
    }
  }
}

void sub_29E602CE8(uint64_t a1)
{
  if (!qword_2A18568A8)
  {
    sub_29E602BC0(255);
    sub_29E602DD4();
    sub_29E603018(&qword_2A18568B0, sub_29E602BC0, MEMORY[0x29EDB8970]);
    sub_29E603018(&qword_2A18568B8, sub_29E602DD4, MEMORY[0x29EDCA280]);
    v1 = sub_29E7526C8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18568A8);
    }
  }
}

unint64_t sub_29E602DD4()
{
  result = qword_2A1A7D470;
  if (!qword_2A1A7D470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A7D470);
  }

  return result;
}

uint64_t sub_29E602E20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_29E602E84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E602EFC(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29E602EFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E602F60()
{
  result = qword_2A1858310;
  if (!qword_2A1858310)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1858310);
  }

  return result;
}

unint64_t sub_29E602FC4()
{
  result = qword_2A18568E0;
  if (!qword_2A18568E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18568E0);
  }

  return result;
}

uint64_t sub_29E603018(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_29E603060(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_29E60306C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_29E6030B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29E603108()
{
  result = qword_2A18568F0;
  if (!qword_2A18568F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18568F0);
  }

  return result;
}

double sub_29E603170(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0.0;
  }

  v3 = (a2 + 32);
  v4 = 0.0;
  do
  {
    sub_29E601938(v3, v3[3]);
    sub_29E750718();
    v4 = v4 + CGRectGetHeight(v6);
    v3 += 5;
    --v2;
  }

  while (v2);
  return v4;
}

void sub_29E6031FC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = (a3 + 32);
    do
    {
      sub_29E601938(v4, v4[3]);
      sub_29E750718();
      CGRectGetHeight(v5);
      sub_29E7504A8();
      sub_29E750468();
      sub_29E750468();
      CGRectGetWidth(v6);
      sub_29E750478();
      sub_29E601938(v4, v4[3]);
      sub_29E750728();
      sub_29E750498();
      sub_29E750498();

      v4 += 5;
      --v3;
    }

    while (v3);
  }
}

double sub_29E603314(uint64_t a1, uint64_t a2)
{
  sub_29E7504B8();
  v4 = v3;
  sub_29E7504B8();
  CGRectGetWidth(v9);
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 32);
    v7 = 0.0;
    do
    {
      sub_29E601938(v6, v6[3]);
      sub_29E750718();
      v7 = v7 + CGRectGetHeight(v10);
      v6 += 5;
      --v5;
    }

    while (v5);
  }

  return v4;
}

double sub_29E6033E8(uint64_t a1)
{
  v3 = *v1;
  sub_29E7504B8();
  v5 = v4;
  sub_29E7504B8();
  CGRectGetWidth(v7);
  sub_29E603170(a1, v3);
  return v5;
}

uint64_t sub_29E603460(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29E603664();
  *v3 = v1;
  v3[1] = sub_29E60350C;

  return MEMORY[0x2A1C61D30](a1, v4);
}

uint64_t sub_29E60350C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_29E603610()
{
  result = qword_2A18568F8;
  if (!qword_2A18568F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18568F8);
  }

  return result;
}

unint64_t sub_29E603664()
{
  result = qword_2A1856900;
  if (!qword_2A1856900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856900);
  }

  return result;
}

uint64_t type metadata accessor for SleepScoreChartTapOutFormatter(uint64_t a1)
{
  result = qword_2A1856908;
  if (!qword_2A1856908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E603744(void *a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v29 = a3;
  v30 = sub_29E74F0D8();
  v4 = *(v30 - 8);
  MEMORY[0x2A1C7C4A8](v30);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v5;
  v6 = MEMORY[0x29EDBA2F8];
  sub_29E605EB8(0, &qword_2A1856918, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v25 - v8;
  v10 = sub_29E754048();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v14 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v25 - v15;
  sub_29E605BE0(a2, v9, &qword_2A1856918, v6);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_29E605E40(v9, &qword_2A1856918, MEMORY[0x29EDBA2F8]);
  }

  v25 = *(v11 + 32);
  v26 = v16;
  v25(v16, v9, v10);
  (*(v11 + 16))(v14, v16, v10);
  v18 = v27;
  v19 = v30;
  (*(v4 + 16))(v27, v29, v30);
  v20 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v21 = (v12 + *(v4 + 80) + v20) & ~*(v4 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v32;
  v25((v22 + v20), v14, v10);
  (*(v4 + 32))(v22 + v21, v18, v19);
  aBlock[4] = sub_29E605494;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E603B18;
  aBlock[3] = &unk_2A24FD910;
  v23 = _Block_copy(aBlock);
  v24 = v32;

  [v31 setTitleTapOutBlock_];
  _Block_release(v23);
  return (*(v11 + 8))(v26, v10);
}

void sub_29E603B18(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

uint64_t sub_29E603B9C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v54 = a2;
  v55 = a3;
  ObjectType = swift_getObjectType();
  v6 = sub_29E74F0D8();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = *(v56 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v62 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E605EB8(0, &qword_2A1859CD0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v61 = &v46 - v9;
  v10 = sub_29E754048();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v58 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v13;
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v46 - v14;
  v51 = sub_29E752098();
  v16 = *(v51 - 8);
  MEMORY[0x2A1C7C4A8](v51);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v59 = v11;
  v60 = v10;
  v52 = *(v11 + 16);
  v52(v15, a1, v10);
  v19 = sub_29E752088();
  v20 = sub_29E7546C8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v49 = a4;
    v22 = v21;
    v47 = swift_slowAlloc();
    v63 = v47;
    *v22 = 136446466;
    v23 = sub_29E755178();
    v25 = sub_29E6B9C90(v23, v24, &v63);
    ObjectType = a1;
    v48 = v7;
    v26 = v25;

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    sub_29E605FB0(&qword_2A1856920, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA328]);
    v27 = v60;
    v28 = sub_29E754FD8();
    v30 = v29;
    (*(v59 + 8))(v15, v27);
    v31 = sub_29E6B9C90(v28, v30, &v63);
    v7 = v48;
    a1 = ObjectType;

    *(v22 + 14) = v31;
    _os_log_impl(&dword_29E5ED000, v19, v20, "[%{public}s] Opening detail for date: %{public}s", v22, 0x16u);
    v32 = v47;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v32, -1, -1);
    v33 = v22;
    a4 = v49;
    MEMORY[0x29ED98410](v33, -1, -1);
  }

  else
  {

    (*(v59 + 8))(v15, v60);
  }

  (*(v16 + 8))(v18, v51);
  v34 = sub_29E7544F8();
  (*(*(v34 - 8) + 56))(v61, 1, 1, v34);
  v35 = v60;
  v52(v58, a1, v60);
  v37 = v56;
  v36 = v57;
  (*(v56 + 16))(v62, v54, v57);
  sub_29E7544C8();
  v54 = v55;
  v55 = a4;
  v38 = sub_29E7544B8();
  v39 = v59;
  v40 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v41 = (v53 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (*(v37 + 80) + v41 + 8) & ~*(v37 + 80);
  v43 = swift_allocObject();
  v44 = MEMORY[0x29EDCA390];
  *(v43 + 16) = v38;
  *(v43 + 24) = v44;
  (*(v39 + 32))(v43 + v40, v58, v35);
  *(v43 + v41) = v54;
  (*(v37 + 32))(v43 + v42, v62, v36);
  *(v43 + ((v7 + v42 + 7) & 0xFFFFFFFFFFFFFFF8)) = v55;
  sub_29E6E4804(0, 0, v61, &unk_29E7633F8, v43);
}

uint64_t sub_29E604170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  sub_29E605908();
  v7[25] = v8;
  v7[26] = *(v8 - 8);
  v7[27] = swift_task_alloc();
  v7[28] = type metadata accessor for FullScreenSleepScoreCard(0);
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v9 = MEMORY[0x29EDC9C68];
  sub_29E605EB8(0, &qword_2A1856860, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v7[31] = swift_task_alloc();
  sub_29E60596C(0);
  v7[32] = v10;
  v7[33] = *(v10 - 8);
  v7[34] = swift_task_alloc();
  sub_29E605ADC(0);
  v7[35] = v11;
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  sub_29E605B44(0, &qword_2A1A7BE00, MEMORY[0x29EDC9930]);
  v7[38] = v12;
  v7[39] = swift_task_alloc();
  sub_29E605EB8(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel, v9);
  v7[40] = swift_task_alloc();
  v13 = sub_29E74F0D8();
  v7[41] = v13;
  v7[42] = *(v13 - 8);
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v14 = sub_29E74EDB8();
  v7[45] = v14;
  v7[46] = *(v14 - 8);
  v7[47] = swift_task_alloc();
  v15 = sub_29E74EE78();
  v7[48] = v15;
  v7[49] = *(v15 - 8);
  v7[50] = swift_task_alloc();
  v7[51] = swift_task_alloc();
  v16 = sub_29E754048();
  v7[52] = v16;
  v7[53] = *(v16 - 8);
  v7[54] = swift_task_alloc();
  v7[55] = swift_task_alloc();
  v7[56] = swift_task_alloc();
  v7[57] = swift_task_alloc();
  sub_29E7544C8();
  v7[58] = sub_29E7544B8();
  v18 = sub_29E754468();
  v7[59] = v18;
  v7[60] = v17;

  return MEMORY[0x2A1C73D48](sub_29E6045E0, v18, v17);
}

uint64_t sub_29E6045E0()
{
  v70 = v0[54];
  v1 = v0[53];
  v66 = v0[52];
  v68 = v0[55];
  v64 = v0[51];
  v2 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[45];
  v62 = v0[44];
  v7 = v0[41];
  v6 = v0[42];
  v60 = v0[40];
  v8 = v0[23];
  v74 = v0[48];
  v73 = *(v1 + 16);
  v73();
  (*(v4 + 104))(v3, *MEMORY[0x29EDB9C78], v5);
  sub_29E74EDC8();
  (*(v4 + 8))(v3, v5);
  v9 = *(v6 + 16);
  v9(v62, v8, v7);
  v10 = type metadata accessor for SleepScoreRoomModel(0);
  (*(*(v10 - 8) + 56))(v60, 1, 1, v10);
  type metadata accessor for SleepScoreGalleryModelProvider(0);
  v11 = swift_allocObject();
  v12 = v11 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__primaryDayIndexID;
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v11 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__updateCount) = 0;
  v13 = (v11 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_showInChartsButtonHandler);
  *v13 = 0;
  v13[1] = 0;
  *(v11 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_daysUpdatedPublisherObserver) = 0;
  sub_29E74EF38();
  *v12 = sub_29E753FF8();
  *(v12 + 8) = 0;
  v14 = *(v2 + 16);
  v14(v11 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_gregorianCalendar, v64, v74);
  sub_29E605BE0(v60, v11 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_initialModel, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  sub_29E753FE8();
  sub_29E753FC8();
  sub_29E753FD8();
  v15 = *(v1 + 8);
  v15(v70, v66);
  v15(v68, v66);
  sub_29E605FB0(&qword_2A1A7BE20, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA308]);
  v16 = sub_29E7540E8();
  if (v16)
  {
    v17 = v0[57];
    v49 = v17;
    v18 = v0[52];
    v72 = v0[51];
    v41 = v0[50];
    v55 = v0[49];
    v69 = v0[44];
    v71 = v0[48];
    v42 = v0[43];
    v51 = v0[42];
    v67 = v0[41];
    v50 = v0[40];
    v65 = v15;
    v19 = v0[39];
    v39 = v0[38];
    v63 = v11;
    v21 = v0[36];
    v20 = v0[37];
    v40 = v9;
    v22 = v0[35];
    v47 = v0[32];
    v48 = v0[33];
    v44 = v0[31];
    v45 = v0[34];
    v53 = v0[30];
    v54 = v0[28];
    v58 = v0[27];
    v59 = v0[26];
    v56 = v0[29];
    v57 = v0[25];
    v61 = v0[24];
    v43 = v0[22];
    v52 = v0[21];
    v23 = *(v0[53] + 32);
    v23(v20, v0[56], v18);
    (v73)(v20 + *(v22 + 48), v17, v18);
    sub_29E605C60(v20, v21, sub_29E605ADC);
    v24 = *(v22 + 48);
    v23(v19, v21, v18);
    v65(v21 + v24, v18);
    sub_29E605CC8(v20, v21);
    v46 = v18;
    v23(v19 + *(v39 + 36), v21 + *(v22 + 48), v18);
    v65(v21, v18);
    sub_29E605D2C(v19, v63 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_galleryRange);
    v14(v41, v72, v71);
    v40(v42, v69, v67);
    type metadata accessor for SleepScoreDaySummaryProviderDataSource(0);
    swift_allocObject();
    v25 = v43;
    v26 = sub_29E6A7D54(v25, v41, v42);

    v0[18] = v26;
    sub_29E605DAC(0);
    swift_allocObject();
    *(v63 + 16) = sub_29E753E08();
    v0[19] = sub_29E753E28();
    sub_29E602DD4();
    v27 = sub_29E754908();
    v0[20] = v27;
    v28 = sub_29E7548D8();
    (*(*(v28 - 8) + 56))(v44, 1, 1, v28);
    sub_29E605A58(0);
    sub_29E605FB0(&qword_2A1856948, sub_29E605A58, MEMORY[0x29EDB8A58]);
    sub_29E605FB0(&qword_2A18568B8, sub_29E602DD4, MEMORY[0x29EDCA280]);
    sub_29E752968();
    sub_29E605E40(v44, &qword_2A1856860, MEMORY[0x29EDCA298]);

    swift_allocObject();
    swift_weakInit();
    sub_29E605FB0(&qword_2A1856968, sub_29E60596C, MEMORY[0x29EDB89E8]);
    v29 = sub_29E7529A8();

    (*(v48 + 8))(v45, v47);
    *(v63 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_daysUpdatedPublisherObserver) = v29;

    sub_29E67F504();
    sub_29E605E40(v50, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
    (*(v51 + 8))(v69, v67);
    (*(v55 + 8))(v72, v71);
    v65(v49, v46);
    (v73)(v53, v52, v46);
    *(v53 + v54[5]) = v63;
    v30 = v54[6];
    *(v53 + v30) = swift_getKeyPath();
    v31 = MEMORY[0x29EDBC388];
    sub_29E605EB8(0, &qword_2A1856970, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC388]);
    swift_storeEnumTagMultiPayload();
    v32 = v54[7];
    *(v53 + v32) = swift_getKeyPath();
    sub_29E605EB8(0, &qword_2A1856978, MEMORY[0x29EDBBED0], v31);
    swift_storeEnumTagMultiPayload();
    v33 = v54[8];
    *(v53 + v33) = swift_getKeyPath();
    sub_29E605EB8(0, &qword_2A1856980, MEMORY[0x29EDBC370], v31);
    swift_storeEnumTagMultiPayload();
    sub_29E605C60(v53, v56, type metadata accessor for FullScreenSleepScoreCard);
    sub_29E605F1C(0);
    v35 = objc_allocWithZone(v34);
    v36 = sub_29E753038();
    v0[61] = v36;
    v0[2] = v0;
    v0[3] = sub_29E60506C;
    swift_continuation_init();
    v0[17] = v57;
    v37 = sub_29E5FEBF4(v0 + 14);
    sub_29E754478();
    (*(v59 + 32))(v37, v58, v57);
    v0[10] = MEMORY[0x29EDCA5F8];
    v0[11] = 1107296256;
    v0[12] = sub_29E6052D4;
    v0[13] = &unk_2A24FD988;
    [v61 hk:v36 presentModalCardViewController:0 fullScreen:1 animated:? completion:?];
    (*(v59 + 8))(v37, v57);
    v16 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2A1C73CC0](v16);
}

uint64_t sub_29E60506C()
{
  v1 = *(*v0 + 480);
  v2 = *(*v0 + 472);

  return MEMORY[0x2A1C73D48](sub_29E605174, v2, v1);
}

uint64_t sub_29E605174()
{
  v1 = v0[61];
  v2 = v0[30];

  sub_29E60606C(v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_29E6052D4(uint64_t a1)
{
  sub_29E601938((a1 + 32), *(a1 + 56));
  sub_29E605908();
  return sub_29E754498();
}

id sub_29E605310(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for SleepScoreChartTapOutFormatter(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_29E605354(uint64_t a1)
{
  v3 = sub_29E753F18();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v1);
  (*(v4 + 16))(v6, a1, v3);
  v8 = sub_29E753EC8();
  (*(v4 + 8))(a1, v3);
  return v8;
}

id sub_29E605454()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepScoreChartTapOutFormatter(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E605494(void *a1, void *a2)
{
  v5 = *(sub_29E754048() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_29E74F0D8() - 8);
  return sub_29E603B9C(v2 + v6, (v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80))), a1, a2);
}

uint64_t sub_29E605574(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E60558C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29E754048() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_29E74F0D8() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_29E605728;

  return sub_29E604170(a1, v10, v11, v1 + v6, v12, v1 + v9, v13);
}

uint64_t sub_29E605728()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_29E605840(uint64_t a1)
{
  v2 = sub_29E752A38();
  MEMORY[0x2A1C7C4A8](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_29E752D98();
}

void sub_29E605908()
{
  if (!qword_2A1856928)
  {
    v0 = sub_29E7544A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856928);
    }
  }
}

void sub_29E60596C(uint64_t a1)
{
  if (!qword_2A1856930)
  {
    sub_29E605A58(255);
    sub_29E602DD4();
    sub_29E605FB0(&qword_2A1856948, sub_29E605A58, MEMORY[0x29EDB8A58]);
    sub_29E605FB0(&qword_2A18568B8, sub_29E602DD4, MEMORY[0x29EDCA280]);
    v1 = sub_29E7526C8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1856930);
    }
  }
}

void sub_29E605A58(uint64_t a1)
{
  if (!qword_2A1856938)
  {
    sub_29E605B44(255, &qword_2A1856940, MEMORY[0x29EDC9C30]);
    v1 = sub_29E752788();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1856938);
    }
  }
}

void sub_29E605ADC(uint64_t a1)
{
  if (!qword_2A1856950)
  {
    sub_29E754048();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1856950);
    }
  }
}

void sub_29E605B44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E754048();
    v7 = sub_29E605FB0(&qword_2A1A7BE20, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA308]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E605BE0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E605EB8(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E605C60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E605CC8(uint64_t a1, uint64_t a2)
{
  sub_29E605ADC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E605D2C(uint64_t a1, uint64_t a2)
{
  sub_29E605B44(0, &qword_2A1A7BE00, MEMORY[0x29EDC9930]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E605DAC(uint64_t a1)
{
  if (!qword_2A1856958)
  {
    type metadata accessor for SleepScoreDaySummaryProviderDataSource(255);
    sub_29E605FB0(&qword_2A1856960, type metadata accessor for SleepScoreDaySummaryProviderDataSource, &unk_29E7694B0);
    v1 = sub_29E753E38();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1856958);
    }
  }
}

uint64_t sub_29E605E40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E605EB8(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29E605EB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E605F1C(uint64_t a1)
{
  if (!qword_2A1856988)
  {
    type metadata accessor for FullScreenSleepScoreCard(255);
    sub_29E605FB0(&qword_2A1856990, type metadata accessor for FullScreenSleepScoreCard, &unk_29E763B1C);
    v1 = sub_29E753048();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1856988);
    }
  }
}

uint64_t sub_29E605FB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E606008(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_29E60606C(uint64_t a1)
{
  v2 = type metadata accessor for FullScreenSleepScoreCard(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E60613C(void *a1)
{
  v3 = *v1;
  v4 = sub_29E74ED88();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + qword_2A18569A0) = 0;
  sub_29E602E20(a1, v1 + qword_2A1856998);
  sub_29E606420(a1);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_29E754D78();

  strcpy(v16, "MutableArray<");
  HIWORD(v16[1]) = -4864;
  sub_29E74ED78();
  v8 = sub_29E74ED48();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  MEMORY[0x29ED96C20](v8, v10);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v11 = sub_29E750D08();
  sub_29E601938((v11 + qword_2A1856998), *(v11 + qword_2A1856998 + 24));

  v16[0] = sub_29E74F4E8();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v3;
  sub_29E60990C(0);
  sub_29E609FB0(&qword_2A18569F0, sub_29E60990C, MEMORY[0x29EDB8A70]);
  v14 = sub_29E7529A8();

  sub_29E5FECBC(a1);

  *(v11 + qword_2A18569A0) = v14;

  return v11;
}

uint64_t sub_29E606420(void *a1)
{
  v78 = sub_29E750CA8();
  v77 = *(v78 - 8);
  MEMORY[0x2A1C7C4A8](v78);
  v76 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E752098();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E74F9B8();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v89 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_29E74F698();
  v75 = *(v92 - 8);
  MEMORY[0x2A1C7C4A8](v92);
  v91 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ScheduleOccurrenceItem(0);
  v11 = MEMORY[0x2A1C7C4A8](v10);
  v96 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v88 = &v73 - v14;
  MEMORY[0x2A1C7C4A8](v13);
  v95 = &v73 - v15;
  v16 = a1[3];
  v90 = a1;
  sub_29E601938(a1, v16);
  v17 = sub_29E74F528();
  if (v17)
  {
    v74 = v17;
    v18 = [v17 occurrences];
    sub_29E609B5C(0, &qword_2A1856A10, 0x29EDC68C0);
    v19 = sub_29E7543F8();

    *&v97 = MEMORY[0x29EDCA190];
    if (v19 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E754C98())
    {
      v21 = 0;
      v94 = v19 & 0xC000000000000001;
      v22 = v19 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v94)
        {
          v23 = MEMORY[0x29ED976A0](v21, v19);
        }

        else
        {
          if (v21 >= *(v22 + 16))
          {
            goto LABEL_21;
          }

          v23 = *(v19 + 8 * v21 + 32);
        }

        v24 = v23;
        v25 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v26 = v19;
        sub_29E7544C8();
        sub_29E7544B8();
        sub_29E754468();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v27 = [v24 isRepeating];

        if (v27)
        {
          sub_29E754DE8();
          sub_29E754E18();
          sub_29E754E28();
          sub_29E754DF8();
        }

        else
        {
        }

        v19 = v26;
        ++v21;
        if (v25 == i)
        {
          v28 = v97;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

    v28 = MEMORY[0x29EDCA190];
LABEL_24:

    if (v28 < 0 || (v28 & 0x4000000000000000) != 0)
    {
      goto LABEL_41;
    }

    for (j = *(v28 + 16); j; j = sub_29E754C98())
    {
      v38 = 0;
      v87 = v28 & 0xC000000000000001;
      v83 = *MEMORY[0x29EDC6AD0];
      v81 = 0x800000029E7582F0;
      v82 = (v75 + 104);
      v80 = (v75 + 8);
      v36 = MEMORY[0x29EDCA190];
      v79 = xmmword_29E762F40;
      v85 = v28;
      v86 = v10;
      v84 = j;
      while (1)
      {
        if (v87)
        {
          v39 = MEMORY[0x29ED976A0](v38, v28);
        }

        else
        {
          if (v38 >= *(v28 + 16))
          {
            goto LABEL_40;
          }

          v39 = *(v28 + 8 * v38 + 32);
        }

        v40 = v39;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        v94 = v38 + 1;
        sub_29E602E20(v90, &v97);
        v93 = v40;
        v41 = [v40 weekdays];
        v42 = v88;
        v43 = (v88 + SLODWORD(v10[2].Kind));
        sub_29E602E20(&v97, v88);
        *(v42 + 40) = v41;
        *(v42 + 48) = v38 == 0;
        v44 = v91;
        v45 = v92;
        (*v82)(v91, v83, v92);
        sub_29E609D54(0, &qword_2A1A7BCF0, MEMORY[0x29EDC9E90]);
        v46 = swift_allocObject();
        *(v46 + 16) = v79;
        *(v46 + 32) = sub_29E754608();
        *(v46 + 40) = v47;
        *(v46 + 48) = 0xD000000000000010;
        *(v46 + 56) = v81;
        v48 = sub_29E754258();
        v49 = v36;
        v51 = v50;

        v52 = v45;
        v10 = v86;
        (*v80)(v44, v52);
        *v43 = v48;
        v43[1] = v51;
        v36 = v49;
        sub_29E601938(&v97, v98);
        sub_29E74F558();
        sub_29E74F998();
        sub_29E74F968();
        v53 = v95;
        sub_29E609458(v42, v95);
        sub_29E5FECBC(&v97);
        sub_29E6094BC(v42);
        sub_29E609458(v53, v96);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_29E6DAD84(0, v49[2] + 1, 1, v49);
        }

        v54 = v84;
        v28 = v85;
        v56 = v36[2];
        v55 = v36[3];
        if (v56 >= v55 >> 1)
        {
          v36 = sub_29E6DAD84((v55 > 1), v56 + 1, 1, v36);
        }

        sub_29E6094BC(v95);
        v98 = v10;
        v99 = sub_29E609FB0(&qword_2A1856A18, type metadata accessor for ScheduleOccurrenceItem, &unk_29E76387C);
        v57 = sub_29E5FEBF4(&v97);
        v58 = v96;
        sub_29E609458(v96, v57);
        v36[2] = v56 + 1;
        sub_29E5FAEE4(&v97, &v36[5 * v56 + 4]);
        sub_29E6094BC(v58);
        ++v38;
        if (v94 == v54)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }

    v36 = MEMORY[0x29EDCA190];
LABEL_43:
  }

  else
  {
    sub_29E752048();
    v29 = sub_29E752088();
    v30 = sub_29E7546C8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v97 = v32;
      *v31 = 136446210;
      v33 = sub_29E755178();
      v35 = sub_29E6B9C90(v33, v34, &v97);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_29E5ED000, v29, v30, "[%{public}s] Sleep schedule is nil", v31, 0xCu);
      sub_29E5FECBC(v32);
      MEMORY[0x29ED98410](v32, -1, -1);
      MEMORY[0x29ED98410](v31, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    v36 = MEMORY[0x29EDCA190];
  }

  v59 = v78;
  v60 = v77;
  v61 = v76;
  if (!v36[2])
  {
    v62 = v75;
    v63 = v91;
    v64 = v92;
    (*(v75 + 104))(v91, *MEMORY[0x29EDC6AD0], v92);
    v65 = sub_29E754258();
    v67 = v66;
    (*(v62 + 8))(v63, v64);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_29E6DAD84(0, v36[2] + 1, 1, v36);
    }

    v69 = v36[2];
    v68 = v36[3];
    if (v69 >= v68 >> 1)
    {
      v36 = sub_29E6DAD84((v68 > 1), v69 + 1, 1, v36);
    }

    v98 = &type metadata for EmptyScheduleItem;
    v99 = sub_29E609B08();
    *&v97 = v65;
    *(&v97 + 1) = v67;
    v36[2] = v69 + 1;
    sub_29E5FAEE4(&v97, &v36[5 * v69 + 4]);
  }

  sub_29E6CC108(v36);

  sub_29E750C98();
  sub_29E609A1C(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v70 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_29E762F30;
  (*(v60 + 32))(v71 + v70, v61, v59);
  return v71;
}

uint64_t sub_29E606EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v3 = sub_29E753CF8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E753D18();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v36 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_29E752098();
  v10 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v37 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v31 = v8;
    v32 = v6;
    v33 = v7;
    sub_29E752048();
    v15 = sub_29E752088();
    v16 = sub_29E7546C8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30 = v4;
      v19 = v18;
      aBlock[0] = v18;
      *v17 = 136446210;
      v20 = sub_29E755178();
      v22 = v3;
      v23 = sub_29E6B9C90(v20, v21, aBlock);

      *(v17 + 4) = v23;
      v3 = v22;
      _os_log_impl(&dword_29E5ED000, v15, v16, "[%{public}s] Responding to sleep schedule change", v17, 0xCu);
      sub_29E5FECBC(v19);
      v24 = v19;
      v4 = v30;
      MEMORY[0x29ED98410](v24, -1, -1);
      MEMORY[0x29ED98410](v17, -1, -1);
    }

    (*(v10 + 8))(v12, v35);
    sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
    v25 = sub_29E754908();
    aBlock[4] = sub_29E6099FC;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29E6A1514;
    aBlock[3] = &unk_2A24FDA58;
    v26 = _Block_copy(aBlock);

    v27 = v36;
    sub_29E753D08();
    v38 = MEMORY[0x29EDCA190];
    sub_29E609FB0(&qword_2A18569F8, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
    sub_29E609A1C(0, &unk_2A1858A50, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    sub_29E609A80();
    v28 = v32;
    sub_29E754C58();
    MEMORY[0x29ED97230](0, v27, v28, v26);
    _Block_release(v26);

    (*(v4 + 8))(v28, v3);
    (*(v31 + 8))(v27, v33);
  }
}

uint64_t sub_29E6073F4(uint64_t a1)
{
  v2 = sub_29E753D78();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  *v5 = sub_29E754908();
  (*(v3 + 104))(v5, *MEMORY[0x29EDCA278], v2);
  v6 = sub_29E753DA8();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    sub_29E606420((a1 + qword_2A1856998));
    sub_29E750D18();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E6075D8()
{
  v1 = v0;
  v2 = sub_29E753D78();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  *v5 = sub_29E754908();
  (*(v3 + 104))(v5, *MEMORY[0x29EDCA278], v2);
  v6 = sub_29E753DA8();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    sub_29E606420((v1 + qword_2A1856998));
    sub_29E750D18();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E607780()
{
  sub_29E5FECBC((v0 + qword_2A1856998));
}

uint64_t sub_29E6077C0()
{
  sub_29E750D58();
  v0 = qword_2A1856998;

  sub_29E5FECBC((v1 + v0));

  return swift_deallocClassInstance();
}

uint64_t sub_29E607838(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E750E78();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E750E38();
  v6 = sub_29E750E68();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_29E607968()
{
  v1 = *v0;
  sub_29E7544C8();
  v4 = v0;
  v5 = v1;
  return sub_29E607C50(sub_29E608D50, &v3, "SleepHealthAppPlugin/SleepRoomScheduleSection.swift", 51, 2u, 91);
}

uint64_t sub_29E607A04(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E752098();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v20 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752048();
  v7 = sub_29E752088();
  v8 = sub_29E7546C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v2;
    v11 = v10;
    v21 = v10;
    *v9 = 136446210;
    v12 = sub_29E755178();
    v14 = sub_29E6B9C90(v12, v13, &v21);
    v18 = v3;
    v15 = v14;

    *(v9 + 4) = v15;
    _os_log_impl(&dword_29E5ED000, v7, v8, "[%{public}s] Responding to sleep event occurring", v9, 0xCu);
    sub_29E5FECBC(v11);
    MEMORY[0x29ED98410](v11, -1, -1);
    MEMORY[0x29ED98410](v9, -1, -1);

    (*(v4 + 8))(v6, v18);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  sub_29E6075D8();
}

uint64_t sub_29E607C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_29E7544B8();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_29E608D6C();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_29E754D78();
    MEMORY[0x29ED96C20](0xD00000000000003FLL, 0x800000029E7581A0);
    v12 = sub_29E755178();
    MEMORY[0x29ED96C20](v12);

    MEMORY[0x29ED96C20](46, 0xE100000000000000);
    result = sub_29E754E48();
    __break(1u);
  }

  return result;
}

uint64_t sub_29E607DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a3;
  sub_29E7544B8();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    sub_29E609BA4(v15);
    if (v6)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return v7 & 1;
      }

      __break(1u);
    }

    v7 = v15[0];
    v12 = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return v7 & 1;
    }

    __break(1u);
  }

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_29E754D78();
  MEMORY[0x29ED96C20](0xD00000000000003FLL, 0x800000029E7581A0);
  v14 = sub_29E755178();
  MEMORY[0x29ED96C20](v14);

  MEMORY[0x29ED96C20](46, 0xE100000000000000);
  result = sub_29E754E48();
  __break(1u);
  return result;
}

uint64_t sub_29E607FB4()
{
  type metadata accessor for ScheduleAlertCell();
  sub_29E609FB0(&qword_2A18569C8, type metadata accessor for ScheduleAlertCell, &unk_29E7691C4);
  sub_29E7547D8();
  type metadata accessor for ScheduleOccurrenceCell();
  sub_29E609FB0(&qword_2A18569D0, type metadata accessor for ScheduleOccurrenceCell, &unk_29E764230);
  return sub_29E7547D8();
}

uint64_t sub_29E608074()
{
  type metadata accessor for ScheduleOccurrenceItem(0);
  sub_29E609F68();
  v5 = sub_29E7541F8();
  MEMORY[0x29ED96C20](45, 0xE100000000000000);
  sub_29E74F9E8();
  sub_29E609FB0(&qword_2A1856A58, MEMORY[0x29EDC6B70], MEMORY[0x29EDC6B80]);
  v1 = sub_29E754FD8();
  MEMORY[0x29ED96C20](v1);

  MEMORY[0x29ED96C20](45, 0xE100000000000000);
  if (*(v0 + 48))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + 48))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x29ED96C20](v2, v3);

  return v5;
}

uint64_t sub_29E608198()
{
  type metadata accessor for ScheduleOccurrenceCell();
  sub_29E609FB0(&qword_2A18569D0, type metadata accessor for ScheduleOccurrenceCell, &unk_29E764230);
  return sub_29E7506A8();
}

uint64_t sub_29E608200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_29E74F9E8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_29E608274(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

uint64_t sub_29E6082AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 32));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_29E608318(uint64_t a1)
{
  v2 = sub_29E609FB0(&qword_2A1856A18, type metadata accessor for ScheduleOccurrenceItem, &unk_29E76387C);

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29E608394()
{
  sub_29E7550C8();
  sub_29E74F9E8();
  sub_29E609FB0(&qword_2A18569D8, MEMORY[0x29EDC6B70], MEMORY[0x29EDC6B78]);
  sub_29E7540B8();
  MEMORY[0x29ED979F0](*(v0 + 40));
  return sub_29E755108();
}

uint64_t sub_29E608440(uint64_t a1)
{
  sub_29E74F9E8();
  sub_29E609FB0(&qword_2A18569D8, MEMORY[0x29EDC6B70], MEMORY[0x29EDC6B78]);
  sub_29E7540B8();
  return MEMORY[0x29ED979F0](*(v1 + 40));
}

uint64_t sub_29E6084D0(uint64_t a1)
{
  sub_29E7550C8();
  sub_29E74F9E8();
  sub_29E609FB0(&qword_2A18569D8, MEMORY[0x29EDC6B70], MEMORY[0x29EDC6B78]);
  sub_29E7540B8();
  MEMORY[0x29ED979F0](*(v1 + 40));
  return sub_29E755108();
}

uint64_t sub_29E608588@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E74F698();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = 0;
  v9 = *(v1 + 48);
  if (v9 == 1)
  {
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    v7 = sub_29E74E9D8();
    v8 = v10;
  }

  (*(v4 + 104))(v6, *MEMORY[0x29EDC6AD0], v3);
  v11 = sub_29E754258();
  v13 = v12;
  result = (*(v4 + 8))(v6, v3);
  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v11;
  *(a1 + 32) = v13;
  return result;
}

double sub_29E608738@<D0>(uint64_t a1@<X8>)
{
  sub_29E608588(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_29E608784()
{
  type metadata accessor for ScheduleAlertCell();
  sub_29E609FB0(&qword_2A18569C8, type metadata accessor for ScheduleAlertCell, &unk_29E7691C4);
  return sub_29E7506A8();
}

uint64_t sub_29E6087EC()
{
  v1 = *(v0 + 8);
  sub_29E7550C8();
  sub_29E7550E8();
  if (v1)
  {
    sub_29E7542D8();
  }

  return sub_29E755108();
}

uint64_t sub_29E60885C(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return sub_29E7550E8();
  }

  sub_29E7550E8();

  return sub_29E7542D8();
}

uint64_t sub_29E6088D4(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_29E7550C8();
  sub_29E7550E8();
  if (v2)
  {
    sub_29E7542D8();
  }

  return sub_29E755108();
}

uint64_t sub_29E608974(uint64_t a1)
{
  v2 = sub_29E609B08();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29E6089C0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_29E755028() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_29E608A1C()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  return sub_29E74E9D8();
}

uint64_t sub_29E608AA8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E74F698();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v6 = sub_29E74E9D8();
  v8 = v7;
  (*(v3 + 104))(v5, *MEMORY[0x29EDC6AD0], v2);
  v9 = sub_29E754258();
  v11 = v10;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = v11;
  return result;
}

uint64_t sub_29E608C40(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_29E608D94(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ScheduleOccurrenceItem(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v58 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E752098();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v13 = &v56 - v12;
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v56 - v14;
  sub_29E752048();
  v16 = sub_29E752088();
  v17 = sub_29E7546C8();
  v18 = os_log_type_enabled(v16, v17);
  v59 = v7;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v57 = v2;
    v21 = v10;
    v22 = v13;
    v23 = v7;
    v24 = v20;
    v63[0] = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_29E6B9C90(0xD00000000000003DLL, 0x800000029E758220, v63);
    _os_log_impl(&dword_29E5ED000, v16, v17, "[%{public}s] Current schedule tapped", v19, 0xCu);
    sub_29E5FECBC(v24);
    MEMORY[0x29ED98410](v24, -1, -1);
    MEMORY[0x29ED98410](v19, -1, -1);

    v25 = v23;
    v13 = v22;
    v10 = v21;
    v2 = v57;
    v26 = *(v25 + 8);
  }

  else
  {

    v26 = *(v7 + 8);
  }

  v26(v15, v6);
  v27 = v6;
  v62 = a1;
  sub_29E609B5C(0, &qword_2A185A670, 0x29EDC7DA8);
  sub_29E609CF8(0, &qword_2A18569E0, MEMORY[0x29EDC6B58]);
  v28 = a1;
  if (swift_dynamicCast())
  {
    sub_29E5FAEE4(v60, v63);
    sub_29E601938(v2, v2[3]);
    v29 = sub_29E74F558();
    if (v29)
    {
      v30 = v29;
      sub_29E601938(v63, v63[3]);
      sub_29E74F8D8();
    }

    else
    {
      sub_29E752048();
      v45 = v58;
      sub_29E609458(v2, v58);
      v46 = sub_29E752088();
      v47 = sub_29E7546A8();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *&v60[0] = v49;
        *v48 = 136446466;
        *(v48 + 4) = sub_29E6B9C90(0xD00000000000003DLL, 0x800000029E758220, v60);
        *(v48 + 12) = 2082;
        v50 = sub_29E7545F8();
        v51 = v45;
        v52 = v50;
        v54 = v53;
        sub_29E6094BC(v51);
        v55 = sub_29E6B9C90(v52, v54, v60);

        *(v48 + 14) = v55;
        _os_log_impl(&dword_29E5ED000, v46, v47, "[%{public}s] Unable to edit occurrence for identifier: %{public}s", v48, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED98410](v49, -1, -1);
        MEMORY[0x29ED98410](v48, -1, -1);
      }

      else
      {

        sub_29E6094BC(v45);
      }

      v26(v13, v6);
    }

    return sub_29E5FECBC(v63);
  }

  else
  {
    v61 = 0;
    memset(v60, 0, sizeof(v60));
    sub_29E6093D0(v60);
    sub_29E752048();
    v31 = v28;
    v32 = sub_29E752088();
    v33 = sub_29E7546C8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v63[0] = v35;
      *v34 = 136446466;
      *(v34 + 4) = sub_29E6B9C90(0xD00000000000003DLL, 0x800000029E758220, v63);
      *(v34 + 12) = 2082;
      v36 = v31;
      v37 = [v36 description];
      v38 = sub_29E7541D8();
      v58 = v27;
      v40 = v39;

      v41 = sub_29E6B9C90(v38, v40, v63);

      *(v34 + 14) = v41;
      _os_log_impl(&dword_29E5ED000, v32, v33, "[%{public}s] Unable to present schedule edit on unknown view controller: %{public}s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v35, -1, -1);
      MEMORY[0x29ED98410](v34, -1, -1);

      v42 = v58;
      v43 = v10;
    }

    else
    {

      v43 = v10;
      v42 = v6;
    }

    return (v26)(v43, v42);
  }
}

uint64_t sub_29E6093D0(uint64_t a1)
{
  sub_29E6099A0(0, &qword_2A18569E8, &qword_2A18569E0, MEMORY[0x29EDC6B58], sub_29E609CF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E609458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleOccurrenceItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E6094BC(uint64_t a1)
{
  v2 = type metadata accessor for ScheduleOccurrenceItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E609518(void *a1)
{
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v30 - v7;
  sub_29E752048();
  v9 = sub_29E752088();
  v10 = sub_29E7546C8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_29E6B9C90(0xD000000000000038, 0x800000029E758290, v35);
    _os_log_impl(&dword_29E5ED000, v9, v10, "[%{public}s] Edit schedule tapped", v11, 0xCu);
    sub_29E5FECBC(v12);
    MEMORY[0x29ED98410](v12, -1, -1);
    MEMORY[0x29ED98410](v11, -1, -1);
  }

  v13 = *(v3 + 8);
  v13(v8, v2);
  v34 = a1;
  sub_29E609B5C(0, &qword_2A185A670, 0x29EDC7DA8);
  sub_29E609CF8(0, &qword_2A18569E0, MEMORY[0x29EDC6B58]);
  v14 = a1;
  if (swift_dynamicCast())
  {
    sub_29E5FAEE4(v32, v35);
    sub_29E601938(v35, v35[3]);
    sub_29E74F8C8();
    return sub_29E5FECBC(v35);
  }

  else
  {
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    sub_29E6093D0(v32);
    sub_29E752048();
    v16 = v14;
    v17 = sub_29E752088();
    v18 = sub_29E7546C8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v35[0] = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_29E6B9C90(0xD000000000000038, 0x800000029E758290, v35);
      *(v19 + 12) = 2082;
      v21 = v16;
      v22 = [v21 description];
      v23 = sub_29E7541D8();
      v30 = v3;
      v31 = v2;
      v24 = v23;
      v26 = v25;

      v27 = sub_29E6B9C90(v24, v26, v35);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_29E5ED000, v17, v18, "[%{public}s] Unable to present schedule add on unknown view controller: %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v20, -1, -1);
      MEMORY[0x29ED98410](v19, -1, -1);

      v28 = v31;
      v29 = v6;
    }

    else
    {

      v29 = v6;
      v28 = v2;
    }

    return (v13)(v29, v28);
  }
}

void sub_29E60990C(uint64_t a1)
{
  if (!qword_2A1A7BF50)
  {
    sub_29E6099A0(255, &qword_2A1A7BDA0, &unk_2A1A7BDA8, 0x29EDC68B8, sub_29E609B5C);
    v1 = sub_29E7527D8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7BF50);
    }
  }
}

void sub_29E6099A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_29E754BD8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_29E609A04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E609A1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E609A80()
{
  result = qword_2A1856A00;
  if (!qword_2A1856A00)
  {
    sub_29E609A1C(255, &unk_2A1858A50, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856A00);
  }

  return result;
}

unint64_t sub_29E609B08()
{
  result = qword_2A1856A08;
  if (!qword_2A1856A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856A08);
  }

  return result;
}

uint64_t sub_29E609B5C(uint64_t a1, unint64_t *a2, void *a3)
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

void *sub_29E609BA4@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void sub_29E609C10(uint64_t a1)
{
  sub_29E609CF8(319, &qword_2A1856A30, MEMORY[0x29EDC6A78]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for HKSPWeekdays(319);
    if (v2 <= 0x3F)
    {
      sub_29E74F9E8();
      if (v3 <= 0x3F)
      {
        sub_29E609D54(319, &qword_2A1A7D0C8, MEMORY[0x29EDC9C68]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_29E609CF8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_29E609D54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDC99B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 sub_29E609DA8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_29E609DB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_29E609E10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_29E609E74()
{
  result = qword_2A1856A38;
  if (!qword_2A1856A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856A38);
  }

  return result;
}

unint64_t sub_29E609F14()
{
  result = qword_2A1856A48;
  if (!qword_2A1856A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856A48);
  }

  return result;
}

unint64_t sub_29E609F68()
{
  result = qword_2A1856A50;
  if (!qword_2A1856A50)
  {
    type metadata accessor for ScheduleOccurrenceItem(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1856A50);
  }

  return result;
}

uint64_t sub_29E609FB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29E609FF8()
{
  result = qword_2A1856A60;
  if (!qword_2A1856A60)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1856A60);
  }

  return result;
}

uint64_t sub_29E60A044()
{
  result = sub_29E754198();
  qword_2A1A7F920 = result;
  return result;
}

uint64_t sub_29E60A08C()
{
  v1 = *v0;
  sub_29E7550C8();
  MEMORY[0x29ED979F0](v1);
  return sub_29E755108();
}

uint64_t sub_29E60A0D4(uint64_t a1)
{
  v2 = *v1;
  sub_29E7550C8();
  MEMORY[0x29ED979F0](v2);
  return sub_29E755108();
}

uint64_t sub_29E60A118(uint64_t result)
{
  if (result == 4)
  {
    return 0;
  }

  if (byte_2A24FC178 == result)
  {
    v1 = 0;
    return *(&unk_2A24FC158 + v1 + 33);
  }

  if (byte_2A24FC179 == result)
  {
    v1 = 1u;
    return *(&unk_2A24FC158 + v1 + 33);
  }

  if (byte_2A24FC17A == result)
  {
    v1 = 2u;
    return *(&unk_2A24FC158 + v1 + 33);
  }

  if (byte_2A24FC17B == result)
  {
    return 4;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E60A1A0(uint64_t result)
{
  if (result == 4)
  {
    return 3;
  }

  if (byte_2A24FC1A0 == result)
  {
    return 4;
  }

  if (byte_2A24FC1A1 == result)
  {
    v1 = 1u;
    return *(&unk_2A24FC180 + v1 + 31);
  }

  if (byte_2A24FC1A2 == result)
  {
    v1 = 2u;
    return *(&unk_2A24FC180 + v1 + 31);
  }

  if (byte_2A24FC1A3 == result)
  {
    v1 = 3u;
    return *(&unk_2A24FC180 + v1 + 31);
  }

  __break(1u);
  return result;
}

uint64_t sub_29E60A228(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = sub_29E752098();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  sub_29E7544C8();
  v2[19] = sub_29E7544B8();
  v5 = sub_29E754468();

  return MEMORY[0x2A1C73D48](sub_29E60A31C, v5, v4);
}

uint64_t sub_29E60A31C()
{
  v21 = v0;
  v1 = *(v0 + 120);

  ObjectType = swift_getObjectType();
  if ((*(v1 + 8))(ObjectType, v1) != 1)
  {
    v7 = 3;
    goto LABEL_11;
  }

  v19 = *(v0 + 112);
  *(v0 + 96) = v19;
  sub_29E60A664(0, &unk_2A185A680, &protocol descriptor for SleepApneaOnboardingViewControllerProtocol, 0);
  sub_29E60A664(0, &qword_2A1856A68, &protocol descriptor for SleepApneaOnboardingHealthDetailsProvider, 1);
  v3 = v19;
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_29E60A6C0(v0 + 56);
LABEL_8:
    sub_29E752048();
    v8 = sub_29E752088();
    v9 = sub_29E7546A8();
    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 136);
    v11 = *(v0 + 144);
    v13 = *(v0 + 128);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_29E6B9C90(0xD000000000000019, 0x800000029E763900, &v20);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_29E6B9C90(0xD000000000000020, 0x800000029E758380, &v20);
      _os_log_impl(&dword_29E5ED000, v8, v9, "[%s.%s] Asked to determine progression state without health details", v14, 0x16u);
      v7 = 2;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v15, -1, -1);
      MEMORY[0x29ED98410](v14, -1, -1);

      (*(v12 + 8))(v11, v13);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
      v7 = 2;
    }

    goto LABEL_11;
  }

  sub_29E5FAEE4((v0 + 56), v0 + 16);
  sub_29E601938((v0 + 16), *(v0 + 40));
  v4 = sub_29E680A7C();
  if (v4 == 2 || (v5 = v4, sub_29E601938((v0 + 16), *(v0 + 40)), v6 = sub_29E680A70(), v6 == 2))
  {
    sub_29E5FECBC((v0 + 16));
    goto LABEL_8;
  }

  if (v5)
  {
    v18 = v6;
    sub_29E5FECBC((v0 + 16));
    if (v18)
    {
      v7 = 1;
    }

    else
    {
      v7 = 3;
    }
  }

  else
  {
    sub_29E5FECBC((v0 + 16));
    v7 = 0;
  }

LABEL_11:

  v16 = *(v0 + 8);

  return v16(v7);
}

uint64_t sub_29E60A664(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29E60A6C0(uint64_t a1)
{
  sub_29E60A71C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E60A71C(uint64_t a1)
{
  if (!qword_2A185A690)
  {
    sub_29E60A664(255, &qword_2A1856A68, &protocol descriptor for SleepApneaOnboardingHealthDetailsProvider, 1);
    v1 = sub_29E754BD8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A690);
    }
  }
}

__n128 sub_29E60A788(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_29E60A79C(uint64_t a1, int a2)
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

uint64_t sub_29E60A7E4(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SleepApneaOnboardingCannotProgressReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SleepApneaOnboardingCannotProgressReason(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepApneaOnboardingStage(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SleepApneaOnboardingStage(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29E60AAF4()
{
  result = qword_2A1856A70;
  if (!qword_2A1856A70)
  {
    sub_29E60AB4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856A70);
  }

  return result;
}

void sub_29E60AB4C()
{
  if (!qword_2A1856A78)
  {
    v0 = sub_29E754448();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856A78);
    }
  }
}

unint64_t sub_29E60ABA0()
{
  result = qword_2A1856A80;
  if (!qword_2A1856A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856A80);
  }

  return result;
}

unint64_t sub_29E60ABF8()
{
  result = qword_2A1856A88;
  if (!qword_2A1856A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856A88);
  }

  return result;
}

uint64_t sub_29E60AC64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v49 = a2;
  v2 = sub_29E751908();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v46 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E750DC8();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v45 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDC9C68];
  sub_29E60B66C(0, &qword_2A1856A90, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v41 = &v34 - v8;
  sub_29E60B66C(0, &qword_2A1856A98, MEMORY[0x29EDC7770], v6);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v37 = &v34 - v10;
  v38 = sub_29E752108();
  v36 = *(v38 - 8);
  MEMORY[0x2A1C7C4A8](v38);
  v35 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_29E7520C8();
  v12 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E74F8B8();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29E752258();
  v20 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752248();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v16 + 8))(v18, v15);
  sub_29E752228();
  v23 = swift_allocObject();
  v24 = v42;
  *(v23 + 16) = v42;
  v50[3] = v19;
  v50[4] = MEMORY[0x29EDC7800];
  v25 = sub_29E5FEBF4(v50);
  v39 = v20;
  v40 = v19;
  (*(v20 + 16))(v25, v22, v19);
  sub_29E60B66C(0, &qword_2A1856AA0, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  sub_29E752128();
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  v26 = v34;
  (*(v12 + 104))(v14, *MEMORY[0x29EDC7768], v34);
  v27 = sub_29E7520D8();
  (*(*(v27 - 8) + 56))(v37, 1, 1, v27);
  v28 = v24;
  v29 = v35;
  sub_29E7520F8();
  sub_29E7520E8();
  (*(v36 + 8))(v29, v38);
  (*(v12 + 8))(v14, v26);
  v30 = sub_29E752178();
  (*(*(v30 - 8) + 56))(v41, 1, 1, v30);
  v31 = sub_29E7543D8();
  v32 = HKUIJoinStringsForAutomationIdentifier();

  if (v32)
  {
    sub_29E7541D8();
  }

  (*(v43 + 104))(v45, *MEMORY[0x29EDC22C8], v44);
  (*(v47 + 104))(v46, *MEMORY[0x29EDC2A38], v48);
  sub_29E750ED8();
  return (*(v39 + 8))(v22, v40);
}

void sub_29E60B434(void *a1, void *a2)
{
  v4 = sub_29E752098();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  sub_29E60B66C(0, &qword_2A1856AA8, MEMORY[0x29EDC4378], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = v18 - v6;
  v8 = sub_29E753F08();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v9 = *MEMORY[0x29EDBA748];
  v10 = type metadata accessor for SleepApneaFeatureRegulatoryInfoTransformProvider(0);
  swift_allocObject();
  v11 = a2;
  v12 = v9;
  v13 = sub_29E753F68();
  v18[4] = v10;
  v18[5] = MEMORY[0x29EDC43B8];
  v18[1] = v13;
  v14 = sub_29E753EB8();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  sub_29E752068();
  sub_29E753EF8();
  sub_29E60B6D0(0);
  v16 = objc_allocWithZone(v15);
  v17 = sub_29E753E58();
  [a1 showAdaptively:v17 sender:0];
}

void sub_29E60B66C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E60B6D0(uint64_t a1)
{
  if (!qword_2A1856AB0)
  {
    sub_29E753F08();
    sub_29E60B734();
    v1 = sub_29E753E68();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1856AB0);
    }
  }
}

unint64_t sub_29E60B734()
{
  result = qword_2A1856AB8;
  if (!qword_2A1856AB8)
  {
    sub_29E753F08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856AB8);
  }

  return result;
}

uint64_t type metadata accessor for LinkCollectionViewCell(uint64_t a1)
{
  result = qword_2A1856AC0;
  if (!qword_2A1856AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E60B818()
{
  sub_29E7514A8();
  v1 = sub_29E751678();
  v1();
  v2 = sub_29E751668();
  v3 = [v0 tintColor];
  [v2 setTextColor_];

  return MEMORY[0x2A1C62D38](0);
}

uint64_t sub_29E60B8B8(uint64_t a1)
{
  sub_29E60BC20(a1, v7);
  if (v8)
  {
    sub_29E609CF8(0, &qword_2A1858310, MEMORY[0x29EDC1910]);
    sub_29E609CF8(0, &qword_2A1856AE0, MEMORY[0x29EDC2A50]);
    if (swift_dynamicCast())
    {
      if (*(&v5 + 1))
      {
        sub_29E5FAEE4(&v4, v7);
        v1 = sub_29E751668();
        sub_29E601938(v7, v8);
        sub_29E751938();
        v2 = sub_29E754198();

        [v1 setText_];

        return sub_29E5FECBC(v7);
      }
    }

    else
    {
      v6 = 0;
      v4 = 0u;
      v5 = 0u;
    }
  }

  else
  {
    sub_29E60BC9C(v7, &qword_2A1856AD0, &qword_2A1858310, MEMORY[0x29EDC1910]);
    v4 = 0u;
    v5 = 0u;
    v6 = 0;
  }

  return sub_29E60BC9C(&v4, &qword_2A1856AD8, &qword_2A1856AE0, MEMORY[0x29EDC2A50]);
}

id sub_29E60BA18(void *a1, double a2, double a3, double a4, double a5)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12.receiver = a1;
  v12.super_class = type metadata accessor for LinkCollectionViewCell(0);
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a2, a3, a4, a5);

  return v10;
}

id sub_29E60BAFC(void *a1, uint64_t a2, void *a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = a1;
  v8.super_class = type metadata accessor for LinkCollectionViewCell(0);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_29E60BBE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E60BC20(uint64_t a1, uint64_t a2)
{
  sub_29E60BCF8(0, &qword_2A1856AD0, &qword_2A1858310, MEMORY[0x29EDC1910]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E60BC9C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_29E60BCF8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_29E60BCF8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29E609CF8(255, a3, a4);
    v5 = sub_29E754BD8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata accessor for FullScreenSleepScoreCard(uint64_t a1)
{
  result = qword_2A1856AF8;
  if (!qword_2A1856AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E60BDC4(uint64_t a1)
{
  sub_29E754048();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SleepScoreGalleryModelProvider(319);
    if (v2 <= 0x3F)
    {
      sub_29E60DC24(319, &qword_2A1A7BEF8, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC390]);
      if (v3 <= 0x3F)
      {
        sub_29E60DC24(319, &qword_2A1856AE8, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC390]);
        if (v4 <= 0x3F)
        {
          sub_29E60DC24(319, &qword_2A1856AF0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_29E60BF3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v44 = sub_29E752EC8();
  v42 = *(v44 - 8);
  MEMORY[0x2A1C7C4A8](v44);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E60D498(0);
  v5 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E60D414(0);
  v38 = *(v8 - 8);
  v39 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E60D358(0);
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v43 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v41 = sub_29E7544B8();
  sub_29E754468();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x2A1C7C4A8](isCurrentExecutor);
  *(&v38 - 2) = a1;
  sub_29E753388();
  sub_29E60D588(0);
  sub_29E60D5E8();
  sub_29E752A08();
  v14 = sub_29E753C48();
  v16 = v15;
  sub_29E60C584(&v48);
  v17 = v49;
  v18 = v50;
  v19 = &v7[*(v5 + 36)];
  *v19 = v48;
  *(v19 + 1) = v17;
  v19[16] = v18;
  *(v19 + 3) = v14;
  *(v19 + 4) = v16;
  v20 = sub_29E60C798();
  v22 = v21;
  v24 = v23;
  v25 = sub_29E60D7E8();
  sub_29E7537B8();
  sub_29E60DB44(v20, v22, v24 & 1);

  sub_29E60DB54(v7);
  v26 = v42;
  v27 = v40;
  v28 = v44;
  (*(v42 + 104))(v40, *MEMORY[0x29EDBBF98], v44);
  v48 = v5;
  v49 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v43;
  v31 = v39;
  sub_29E753858();
  (*(v26 + 8))(v27, v28);
  v32 = (*(v38 + 8))(v10, v31);
  MEMORY[0x2A1C7C4A8](v32);
  *(&v38 - 2) = a1;
  sub_29E60D9A0(0);
  v48 = v31;
  v49 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_29E60DA54(255);
  v34 = v33;
  v35 = sub_29E60DAF4(&qword_2A1856B90, sub_29E60DA54, MEMORY[0x29EDBBEC0]);
  v48 = v34;
  v49 = v35;
  swift_getOpaqueTypeConformance2();
  v36 = v46;
  sub_29E753898();
  (*(v45 + 8))(v30, v36);
}

double sub_29E60C470@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for FullScreenSleepScoreCard(0);
  v4 = type metadata accessor for SleepScoreCard(0);
  sub_29E67EB70(a1, (a2 + *(v4 + 20)));
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  v5 = (a2 + *(v4 + 24));
  *v5 = 0;
  v5[1] = 0;
  v6 = sub_29E7533A8();

  sub_29E60D588(0);
  v8 = a2 + *(v7 + 36);
  *v8 = v6;
  result = 0.0;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 1;
  return result;
}