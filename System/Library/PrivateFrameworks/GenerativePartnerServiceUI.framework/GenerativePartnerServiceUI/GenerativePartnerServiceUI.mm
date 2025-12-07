uint64_t sub_1BE4BA520(uint64_t a1)
{
  sub_1BE4BF11C(&qword_1EBDABB00, &qword_1BE54DC28);
  sub_1BE4C745C();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1BE4BA57C(uint64_t *a1)
{
  if (sub_1BE4C7550())
  {
    sub_1BE54B78C();
  }

  else
  {
    sub_1BE54B73C();
  }

  return sub_1BE54B79C();
}

uint64_t sub_1BE4BA5D4(uint64_t *a1)
{
  if (sub_1BE4C7550())
  {
    sub_1BE54B78C();
    sub_1BE54B79C();
    sub_1BE4C6250();
  }

  else
  {
    sub_1BE54B73C();
    sub_1BE54B79C();
    sub_1BE4C6A5C(&qword_1EBDABCA0, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
  }

  sub_1BE4C74E8();
  return swift_getWitnessTable();
}

uint64_t sub_1BE4BA698(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1BE4BF11C(&qword_1EBDABC58, &qword_1BE54DD10);
    v9 = a1 + *(a3 + 40);

    return sub_1BE4C63BC(v9, a2, v8);
  }
}

void *sub_1BE4BA72C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1BE4BF11C(&qword_1EBDABC58, &qword_1BE54DD10);
    v8 = v5 + *(a4 + 40);

    return sub_1BE4C63F8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BE4BA7B8()
{
  sub_1BE4C5948(&qword_1EBDABB00, &qword_1BE54DC28);
  sub_1BE4C60E0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BE4BA824()
{
  type metadata accessor for GenerativePartnerOnboardingSheet(0);
  sub_1BE4C759C();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;

  if (*(v1 + v4 + 72))
  {
    sub_1BE4C58A8((v7 + 48));
  }

  v8 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v9 = *(v0 + 40);
  sub_1BE4BF11C(&qword_1EBDABC58, &qword_1BE54DD10);
  sub_1BE4C745C();
  (*(v10 + 8))(v7 + v9);

  sub_1BE4C58A8((v1 + v8));
  sub_1BE4C58A8((v1 + v8 + 40));

  return MEMORY[0x1EEE6BDD0](v1, v8 + 80, v3 | 7);
}

uint64_t sub_1BE4BA964()
{
  if (*(v0 + 40))
  {
    sub_1BE4C58A8((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1BE4BA9C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BE4BAA00()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BE4BAA38()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BE4BAADC()
{
  sub_1BE4CE8A4();
  sub_1BE4CE758();
  if (*(v3 + 84) == v1)
  {

    return sub_1BE4C63BC(v0, v1, v2);
  }

  else
  {
    sub_1BE4CE79C();
    return (v5 + 1);
  }
}

void sub_1BE4BAB70()
{
  sub_1BE4CE734();
  sub_1BE4CE758();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_1BE4CE884();

    sub_1BE4C63F8(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24) + 8) = (v0 - 1);
  }
}

uint64_t sub_1BE4BABF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE54ADAC();
  sub_1BE4CE758();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return sub_1BE4C63BC(v9, a2, v8);
  }

  sub_1BE4BF11C(&qword_1EBDABE68, &qword_1BE54E470);
  sub_1BE4CE758();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = *(a3 + 20);
LABEL_10:
    v9 = a1 + v12;
    goto LABEL_11;
  }

  if (a2 != 2147483646)
  {
    v8 = sub_1BE4BF11C(&qword_1EBDABE88, "\u070E");
    v12 = *(a3 + 32);
    goto LABEL_10;
  }

  sub_1BE4CE79C();
  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_1BE4BAD20()
{
  sub_1BE4CE734();
  sub_1BE4CE758();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_1BE4BF11C(&qword_1EBDABE68, &qword_1BE54E470);
    sub_1BE4CE758();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      if (v3 == 2147483646)
      {
        *(v1 + v2[6]) = v0;
        return;
      }

      v6 = sub_1BE4BF11C(&qword_1EBDABE88, "\u070E");
      v10 = v2[8];
    }

    v7 = v1 + v10;
  }

  sub_1BE4C63F8(v7, v0, v0, v6);
}

uint64_t sub_1BE4BAE54()
{
  sub_1BE4CE8A4();
  sub_1BE4CE758();
  if (*(v3 + 84) == v1)
  {

    return sub_1BE4C63BC(v0, v1, v2);
  }

  else
  {
    sub_1BE4CE79C();
    return (v5 + 1);
  }
}

void sub_1BE4BAEE4()
{
  sub_1BE4CE734();
  sub_1BE4CE758();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_1BE4CE884();

    sub_1BE4C63F8(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }
}

uint64_t sub_1BE4BAF68()
{
  sub_1BE54AE3C();
  sub_1BE4C7470();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1BE4BB038()
{
  v1 = *(type metadata accessor for OBKSheetData.ButtonConfiguration(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_1BE54ADAC();
  sub_1BE4C7470();
  (*(v5 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BE4BB138(uint64_t a1, uint64_t a2, int *a3)
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
    sub_1BE54ADAC();
    sub_1BE4CE758();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[6];
    }

    else
    {
      sub_1BE4BF11C(&qword_1EBDABE68, &qword_1BE54E470);
      sub_1BE4CE758();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = a3[7];
      }

      else
      {
        v11 = sub_1BE4BF11C(&qword_1EBDABF18, &qword_1BE54E4C0);
        v12 = a3[8];
      }
    }

    return sub_1BE4C63BC(a1 + v12, a2, v11);
  }
}

uint64_t sub_1BE4BB264(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    sub_1BE54ADAC();
    sub_1BE4CE758();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      sub_1BE4BF11C(&qword_1EBDABE68, &qword_1BE54E470);
      sub_1BE4CE758();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        v10 = sub_1BE4BF11C(&qword_1EBDABF18, &qword_1BE54E4C0);
        v11 = a4[8];
      }
    }

    return sub_1BE4C63F8(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1BE4BB380(uint64_t a1, int a2, uint64_t a3)
{
  sub_1BE4D97A4();
  sub_1BE54ADAC();
  sub_1BE4CE758();
  if (*(v5 + 84) != a2)
  {
    return sub_1BE4D9744(*(a3 + 20));
  }

  v6 = sub_1BE4D980C();

  return sub_1BE4C63BC(v6, v7, v8);
}

void sub_1BE4BB40C()
{
  sub_1BE4D972C();
  sub_1BE54ADAC();
  sub_1BE4CE758();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_1BE4CE884();

    sub_1BE4C63F8(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_1BE4BB494(uint64_t a1, int a2, uint64_t a3)
{
  v5 = sub_1BE4D97A4();
  type metadata accessor for OnboardingSheetSetup(v5);
  sub_1BE4CE758();
  if (*(v6 + 84) != a2)
  {
    return sub_1BE4D9744(*(a3 + 36));
  }

  v7 = sub_1BE4D980C();

  return sub_1BE4C63BC(v7, v8, v9);
}

void sub_1BE4BB520()
{
  v4 = sub_1BE4D972C();
  type metadata accessor for OnboardingSheetSetup(v4);
  sub_1BE4CE758();
  if (*(v5 + 84) == v3)
  {
    v6 = sub_1BE4CE884();

    sub_1BE4C63F8(v6, v7, v8, v9);
  }

  else
  {
    *(v1 + *(v2 + 36)) = (v0 - 1);
  }
}

uint64_t sub_1BE4BB5A8(uint64_t *a1)
{
  sub_1BE4C5948(&qword_1EBDABF38, &qword_1BE54E4D8);
  sub_1BE4D97D4();
  sub_1BE4D97C8();
  swift_getTupleTypeMetadata2();
  sub_1BE4D97D4();
  sub_1BE54C3AC();
  swift_getWitnessTable();
  sub_1BE4D9700();
  sub_1BE54C2FC();
  sub_1BE54B79C();
  sub_1BE54B79C();
  sub_1BE4C5948(&qword_1EBDABF40, &qword_1BE54E4E0);
  sub_1BE4D9700();
  sub_1BE54B79C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1BE4D97B0();
  sub_1BE4D9668(v1, &qword_1EBDABF40, &qword_1BE54E4E0);
  swift_getWitnessTable();
  sub_1BE4D9700();
  sub_1BE54B5CC();
  sub_1BE4D978C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1BE4D975C();
  swift_getOpaqueTypeMetadata2();
  sub_1BE4C5948(&qword_1EBDABF50, &qword_1BE54E4E8);
  sub_1BE4D9700();
  sub_1BE54B79C();
  sub_1BE4C5948(&qword_1EBDABB60, &unk_1BE54E4F0);
  sub_1BE4D97C8();
  swift_getTupleTypeMetadata();
  sub_1BE4D97D4();
  sub_1BE54C3AC();
  swift_getWitnessTable();
  sub_1BE4D96F0();
  sub_1BE54C2FC();
  sub_1BE4C5948(&qword_1EBDABF58, &qword_1BE54F660);
  sub_1BE4D96F0();
  sub_1BE54B79C();
  sub_1BE4C5948(&qword_1EBDABF60, &qword_1BE54E500);
  sub_1BE4D96F0();
  sub_1BE54B79C();
  sub_1BE4D9700();
  sub_1BE54BC1C();
  sub_1BE4C5948(&qword_1EBDABF68, &qword_1BE54E508);
  sub_1BE4D96F0();
  sub_1BE4D97C8();
  swift_getTupleTypeMetadata2();
  sub_1BE4D97D4();
  sub_1BE54C3AC();
  swift_getWitnessTable();
  sub_1BE4D96F0();
  sub_1BE54C2FC();
  sub_1BE4D985C();
  return swift_getWitnessTable();
}

uint64_t sub_1BE4BB8E8(uint64_t a1, int a2, uint64_t a3)
{
  sub_1BE4D97A4();
  sub_1BE54ADAC();
  sub_1BE4CE758();
  if (*(v5 + 84) != a2)
  {
    return sub_1BE4D9744(*(a3 + 24));
  }

  v6 = sub_1BE4D980C();

  return sub_1BE4C63BC(v6, v7, v8);
}

void sub_1BE4BB974()
{
  sub_1BE4D972C();
  sub_1BE54ADAC();
  sub_1BE4CE758();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_1BE4CE884();

    sub_1BE4C63F8(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }
}

double sub_1BE4BBA30(double *a1, void (*a2)(double *__return_ptr))
{
  a2(&v4);
  result = v4;
  *a1 = v4;
  return result;
}

uint64_t sub_1BE4BBAB8(uint64_t a1, uint64_t a2)
{
  sub_1BE4BF11C(&qword_1EBDAC090, &qword_1BE54E8D0);
  sub_1BE4C7470();
  v3 = sub_1BE4D9800();
  v4(v3);
  return a2;
}

uint64_t sub_1BE4BBB1C(uint64_t a1)
{
  sub_1BE4BF11C(&qword_1EBDAC090, &qword_1BE54E8D0);
  sub_1BE4C7470();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1BE4BBB7C()
{
  sub_1BE4D982C();
  result = sub_1BE54B8FC();
  *v0 = result;
  return result;
}

uint64_t sub_1BE4BBBD8()
{
  sub_1BE4D982C();
  result = sub_1BE54B91C();
  *v0 = result;
  return result;
}

uint64_t sub_1BE4BBC04()
{

  sub_1BE4D9838();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BE4BBE08()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BE4BBE68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE4DB7C0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BE4BBF98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE54B9BC();
  *a1 = result;
  return result;
}

uint64_t sub_1BE4BBFD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BE4BC0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1BE54CCDC() & 1;
  }
}

uint64_t sub_1BE4BC174()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BE4BC1C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BE4BC220()
{
  v0 = sub_1BE4FFD44();
  sub_1BE526408(v0);

  return sub_1BE54B6EC();
}

uint64_t sub_1BE4BC360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE54ADAC();
  sub_1BE4CE758();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_1BE4C63BC(v9, a2, v8);
  }

  sub_1BE4BF11C(&qword_1EBDAC4A8, &unk_1BE54F6E0);
  sub_1BE4CE758();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 32);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 36));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1BE4BC458(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1BE54ADAC();
  sub_1BE4CE758();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_1BE4BF11C(&qword_1EBDAC4A8, &unk_1BE54F6E0);
    sub_1BE4CE758();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 32);
  }

  sub_1BE4C63F8(v11, a2, a2, v10);
}

uint64_t sub_1BE4BC564()
{
  sub_1BE4FFB64();
  type metadata accessor for GenerativePartnerSettingsPanelView(0);
  sub_1BE4C759C();
  swift_unknownObjectRelease();
  sub_1BE4FFEE0();
  sub_1BE4C7470();
  v3 = *(v2 + 8);
  v4 = sub_1BE4FFBCC();
  v3(v4);
  v5 = sub_1BE4FFA28();
  v3(v5);
  v6 = sub_1BE4FFA18();
  v3(v6);
  sub_1BE4FF944();
  v7 = sub_1BE4BF11C(&qword_1EBDAC3C0, &qword_1BE54F5E8);
  if (sub_1BE4FFCFC(v7) == 1)
  {
    sub_1BE54B5BC();
    sub_1BE4C745C();
    (*(v8 + 8))(v0 + v1);
  }

  else
  {
  }

  sub_1BE4FFC1C();

  sub_1BE4FFB30();
  sub_1BE4FFC00();

  sub_1BE4FFB14();
  sub_1BE4FFAD8();
  sub_1BE4FFABC();
  sub_1BE4FFBE4();

  v9 = sub_1BE4FFA08();
  v3(v9);
  v10 = sub_1BE4FF9F8();
  v3(v10);
  sub_1BE4FFAAC();
  sub_1BE4FFB4C();

  return MEMORY[0x1EEE6BDD0](v11, v12, v13);
}

uint64_t sub_1BE4BC6F8()
{
  sub_1BE4FFB64();
  type metadata accessor for GenerativePartnerSettingsPanelView(0);
  sub_1BE4C759C();
  swift_unknownObjectRelease();
  sub_1BE4C58A8((v0 + 32));
  sub_1BE4FFEE0();
  sub_1BE4C7470();
  v4 = *(v3 + 8);
  v5 = sub_1BE4FFBCC();
  v4(v5);
  v6 = sub_1BE4FFA28();
  v4(v6);
  v7 = sub_1BE4FFA18();
  v4(v7);
  sub_1BE4FF944();
  v8 = sub_1BE4BF11C(&qword_1EBDAC3C0, &qword_1BE54F5E8);
  if (sub_1BE4FFCFC(v8) == 1)
  {
    sub_1BE54B5BC();
    sub_1BE4C745C();
    (*(v9 + 8))(v1 + v2);
  }

  else
  {
  }

  sub_1BE4FFC1C();

  sub_1BE4FFB30();
  sub_1BE4FFC00();

  sub_1BE4FFB14();
  sub_1BE4FFAD8();
  sub_1BE4FFABC();
  sub_1BE4FFBE4();

  v10 = sub_1BE4FFA08();
  v4(v10);
  v11 = sub_1BE4FF9F8();
  v4(v11);
  sub_1BE4FFAAC();
  sub_1BE4FFB4C();

  return MEMORY[0x1EEE6BDD0](v12, v13, v14);
}

uint64_t sub_1BE4BC898()
{
  sub_1BE4FFB64();
  type metadata accessor for GenerativePartnerSettingsPanelView(0);
  sub_1BE4C759C();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  v5 = v1 + v4;
  sub_1BE54ADAC();
  sub_1BE4C7470();
  v7 = *(v6 + 8);
  v8 = sub_1BE4FFBCC();
  v7(v8);
  v9 = sub_1BE4FFA28();
  v7(v9);
  v10 = sub_1BE4FFA18();
  v7(v10);
  sub_1BE4FF944();
  v11 = sub_1BE4BF11C(&qword_1EBDAC3C0, &qword_1BE54F5E8);
  if (sub_1BE4FFCFC(v11) == 1)
  {
    sub_1BE54B5BC();
    sub_1BE4C745C();
    (*(v12 + 8))(v5 + v2);
  }

  else
  {
  }

  sub_1BE4FFC58();

  sub_1BE4FFB30();

  sub_1BE4FFB14();
  sub_1BE4FFAD8();
  sub_1BE4FFABC();

  v13 = sub_1BE4FFA08();
  v7(v13);
  v14 = sub_1BE4FF9F8();
  v7(v14);
  sub_1BE4C58A8((v1 + v4));
  sub_1BE4FFB4C();

  return MEMORY[0x1EEE6BDD0](v15, v16, v17);
}

uint64_t sub_1BE4BCA70()
{

  sub_1BE4C58A8((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1BE4BCAC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE54B97C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BE4BCB1C()
{
  sub_1BE4FFDA4();
  sub_1BE4BF11C(&qword_1EBDAC838, &qword_1BE54FAA8);
  sub_1BE4C7470();
  v1 = sub_1BE4D9800();
  v2(v1);
  return v0;
}

uint64_t sub_1BE4BCB7C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1BE54B99C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1BE4BCBCC()
{
  sub_1BE4FFB64();
  type metadata accessor for GenerativePartnerSettingsPanelView(0);
  sub_1BE4C759C();
  sub_1BE4C58A8((v0 + 16));
  sub_1BE4FFEE0();
  sub_1BE4C7470();
  v4 = *(v3 + 8);
  v5 = sub_1BE4FFBCC();
  v4(v5);
  v6 = sub_1BE4FFA28();
  v4(v6);
  v7 = sub_1BE4FFA18();
  v4(v7);
  sub_1BE4FF944();
  v8 = sub_1BE4BF11C(&qword_1EBDAC3C0, &qword_1BE54F5E8);
  if (sub_1BE4FFCFC(v8) == 1)
  {
    sub_1BE54B5BC();
    sub_1BE4C745C();
    (*(v9 + 8))(v1 + v2);
  }

  else
  {
  }

  sub_1BE4FFC1C();

  sub_1BE4FFB30();
  sub_1BE4FFC00();

  sub_1BE4FFB14();
  sub_1BE4FFAD8();
  sub_1BE4FFABC();
  sub_1BE4FFBE4();

  v10 = sub_1BE4FFA08();
  v4(v10);
  v11 = sub_1BE4FF9F8();
  v4(v11);
  sub_1BE4FFAAC();
  sub_1BE4FFB4C();

  return MEMORY[0x1EEE6BDD0](v12, v13, v14);
}

uint64_t sub_1BE4BCD64()
{
  sub_1BE4FFB64();
  type metadata accessor for GenerativePartnerSettingsPanelView(0);
  sub_1BE4C759C();
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + v4;
  sub_1BE54ADAC();
  sub_1BE4C7470();
  v7 = *(v6 + 8);
  v8 = sub_1BE4FFBCC();
  v7(v8);
  v9 = sub_1BE4FFA28();
  v7(v9);
  v10 = sub_1BE4FFA18();
  v7(v10);
  sub_1BE4FF944();
  v11 = sub_1BE4BF11C(&qword_1EBDAC3C0, &qword_1BE54F5E8);
  if (sub_1BE4FFCFC(v11) == 1)
  {
    sub_1BE54B5BC();
    sub_1BE4C745C();
    (*(v12 + 8))(v5 + v2);
  }

  else
  {
  }

  sub_1BE4FFC58();

  sub_1BE4FFB30();

  sub_1BE4FFB14();
  sub_1BE4FFAD8();
  sub_1BE4FFABC();

  v13 = sub_1BE4FFA08();
  v7(v13);
  v14 = sub_1BE4FF9F8();
  v7(v14);
  sub_1BE4C58A8((v1 + v4));
  sub_1BE4FFB4C();

  return MEMORY[0x1EEE6BDD0](v15, v16, v17);
}

uint64_t sub_1BE4BCFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE4D97A4();
  v6 = sub_1BE54AEDC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1BE4C63BC(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1BE4BD084(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BE54AEDC();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = sub_1BE50AA28();

    return sub_1BE4C63F8(v9, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1BE4BD150(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  v5 = sub_1BE4C63BC(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BE4BD1A4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v4 = (a2 + 4);
  }

  else
  {
    v4 = 0;
  }

  sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  v5 = sub_1BE50AA28();

  return sub_1BE4C63F8(v5, v4, a3, v6);
}

uint64_t sub_1BE4BD20C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BE4BD254()
{
  sub_1BE50A878();
  result = sub_1BE5024AC();
  *v0 = result;
  return result;
}

uint64_t sub_1BE4BD280()
{
  v1 = sub_1BE54B40C();
  sub_1BE4C7500();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_1BE4BD34C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BE4BD448()
{
  sub_1BE50A878();
  result = sub_1BE502848();
  *v0 = result;
  return result;
}

uint64_t sub_1BE4BD4D4()
{
  sub_1BE50A878();
  v0 = sub_1BE5023E4();
  return sub_1BE50A8D4(v0);
}

uint64_t sub_1BE4BD520()
{
  sub_1BE50A878();
  result = sub_1BE502204();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1BE4BD54C()
{
  sub_1BE50A878();
  v0 = sub_1BE5021C8();
  return sub_1BE50A8D4(v0);
}

uint64_t sub_1BE4BD598()
{
  sub_1BE50A878();
  result = sub_1BE502160();
  *v0 = result;
  return result;
}

uint64_t sub_1BE4BD5C4()
{
  sub_1BE50A878();
  v0 = sub_1BE502110();
  return sub_1BE50A8D4(v0);
}

uint64_t sub_1BE4BD610()
{
  sub_1BE50A878();
  v0 = sub_1BE501FC8();
  return sub_1BE50A8D4(v0);
}

uint64_t sub_1BE4BD65C()
{
  sub_1BE50A878();
  v0 = sub_1BE501F10();
  return sub_1BE50A8D4(v0);
}

uint64_t sub_1BE4BD6A8()
{
  sub_1BE50A878();
  v0 = sub_1BE501D68();
  return sub_1BE50A8D4(v0);
}

uint64_t sub_1BE4BD6F4()
{
  sub_1BE50A878();
  v0 = sub_1BE501CA4();
  return sub_1BE50A8D4(v0);
}

uint64_t sub_1BE4BD740()
{
  sub_1BE50A878();
  v0 = sub_1BE501C68();
  return sub_1BE50A8D4(v0);
}

uint64_t sub_1BE4BD82C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BE4BD874()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BE4BD8C8()
{
  MEMORY[0x1BFB48B80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BE4BD900()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BE4BD998()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BE4BD9D8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BE4BDA20()
{
  v1 = sub_1BE54B12C();
  sub_1BE4C7500();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1BE4BDAE0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1BE4BF11C(&qword_1EBDACD70, &qword_1BE550630);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1BE4BDB10()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1BE4BF11C(&qword_1EBDACCF0, &qword_1BE550508);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1BE4BDB40()
{

  sub_1BE4D9838();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BE4BDB74()
{
  MEMORY[0x1BFB48B80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BE4BDBAC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BE4BDC94()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BE4BDCCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE4BF11C(&qword_1EBDACF68, &qword_1BE5508F0);
  sub_1BE4CE758();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_1BE4C63BC(v9, a2, v8);
  }

  sub_1BE4BF11C(&qword_1EBDACF70, &qword_1BE5508F8);
  sub_1BE4CE758();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24) + 24);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1BE4BDDD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1BE4BF11C(&qword_1EBDACF68, &qword_1BE5508F0);
  sub_1BE4CE758();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_1BE4BF11C(&qword_1EBDACF70, &qword_1BE5508F8);
    sub_1BE4CE758();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_1BE4C63F8(v11, a2, a2, v10);
}

uint64_t sub_1BE4BDED8(uint64_t *a1)
{
  sub_1BE4C5948(&qword_1EBDACE30, &qword_1BE550778);
  sub_1BE4C5948(&qword_1EBDACE38, &unk_1BE550780);
  v1 = sub_1BE4D97D4();
  sub_1BE516C40(v1);
  sub_1BE4D97D4();
  sub_1BE54C3AC();
  sub_1BE516B68();
  swift_getWitnessTable();
  sub_1BE516B9C();
  sub_1BE54C2FC();
  sub_1BE4C5948(&qword_1EBDACE40, &qword_1BE551510);
  sub_1BE516B9C();
  sub_1BE54B79C();
  v2 = sub_1BE516BAC();
  sub_1BE516C40(v2);
  sub_1BE4D97D4();
  sub_1BE54C3AC();
  swift_getWitnessTable();
  sub_1BE516BAC();
  sub_1BE54C2CC();
  sub_1BE54B79C();
  sub_1BE54B79C();
  sub_1BE54B79C();
  sub_1BE516B84();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BE4BE060@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE54B89C();
  *a1 = result;
  return result;
}

uint64_t sub_1BE4BE1F8()
{
  sub_1BE50A878();
  result = sub_1BE522C74();
  *v0 = result;
  return result;
}

uint64_t sub_1BE4BE248()
{
  sub_1BE50A878();
  result = sub_1BE521FA8();
  *v0 = result;
  return result;
}

uint64_t sub_1BE4BE298()
{
  sub_1BE50A878();
  result = sub_1BE522030();
  *v0 = result;
  return result;
}

uint64_t sub_1BE4BE2C4()
{
  sub_1BE4BF11C(&qword_1EBDAD140, &qword_1BE551150);
  sub_1BE4C745C();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1BE4BE388()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BE4BE3D0()
{
  sub_1BE50A878();
  result = sub_1BE522D04();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1BE4BE400()
{
  sub_1BE50A878();
  result = sub_1BE5205BC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1BE4BE454()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BE4BE48C()
{
  swift_unknownObjectRelease();

  sub_1BE4C58A8((v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1BE4BE500()
{
  MEMORY[0x1BFB48B80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BE4BE538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE4BF11C(&qword_1EBDAD1B0, &qword_1BE5513D8);
  sub_1BE4CE758();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_1BE4C63BC(v9, a2, v8);
  }

  sub_1BE54ADAC();
  sub_1BE4CE758();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1BE4BE630(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1BE4BF11C(&qword_1EBDAD1B0, &qword_1BE5513D8);
  sub_1BE4CE758();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_1BE54ADAC();
    sub_1BE4CE758();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_1BE4C63F8(v11, a2, a2, v10);
}

uint64_t sub_1BE4BE748@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE527E4C();
  *a1 = result & 1;
  return result;
}

id sub_1BE4BE7EC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 useConfirmationPrompts];
  *a2 = result;
  return result;
}

uint64_t sub_1BE4BE820()
{
  MEMORY[0x1BFB48B80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BE4BE888()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BE4BE9BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE539558();
  *a1 = result;
  return result;
}

unint64_t sub_1BE4BE9EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE53CFF0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BE4BEA34()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BE4BEA74()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BE4BEAAC()
{
  v1 = sub_1BE54B12C();
  sub_1BE4C7500();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_1BE4BEB90()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BE4BEBC8()
{
  v1 = sub_1BE54B12C();
  sub_1BE4C7500();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

char *sub_1BE4BECA8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_1BE543184(a3, result);
  }

  return result;
}

uint64_t sub_1BE4BED44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BE5456C4(a2, a3);
  *a1 = result & 1;
  return result;
}

__n128 sub_1BE4BED7C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1BE4BEE74(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1BE54B05C();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
      v10 = *(a3 + 32);
    }

    return sub_1BE4C63BC(a1 + v10, a2, v9);
  }
}

uint64_t sub_1BE4BEF4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1BE54B05C();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
      v10 = *(a4 + 32);
    }

    return sub_1BE4C63F8(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1BE4BF07C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BE4BF094(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1BE4BF0D8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BE4BF11C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BE4BF16C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDABAF8, &qword_1BE54DC20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_1BE4BF260()
{
  v1 = v0[3];
  LOBYTE(v7) = *(v0 + 16);
  v8 = v1;
  sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
  sub_1BE54C24C();
  if (v6 != 1)
  {
    return 0;
  }

  sub_1BE4C6EFC((v0 + 6), &v7, &qword_1EBDABAF8, &qword_1BE54DC20);
  v2 = v9;
  sub_1BE4C6F5C(&v7, &qword_1EBDABAF8, &qword_1BE54DC20);
  if (!v2)
  {
    return 0;
  }

  v3 = v0[1];
  v7 = *v0;
  v8 = v3;
  sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
  sub_1BE54C24C();
  sub_1BE4DB08C(&v7);

  v4 = v9 == 0;
  sub_1BE4C6F5C(&v7, &qword_1EBDABAF8, &qword_1BE54DC20);
  return v4;
}

uint64_t sub_1BE4BF374()
{
  sub_1BE4C6EFC((v0 + 6), v20, &qword_1EBDABAF8, &qword_1BE54DC20);
  v1 = v21;
  if (v21)
  {
    v2 = v22;
    sub_1BE4C52F4(v20, v21);
    v3 = (*(v2 + 8))(v1, v2);
    v1 = v4;
    sub_1BE4C58A8(v20);
  }

  else
  {
    sub_1BE4C6F5C(v20, &qword_1EBDABAF8, &qword_1BE54DC20);
    v3 = 0;
  }

  v5 = v0[1];
  v20[0] = *v0;
  v20[1] = v5;
  sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
  sub_1BE54C24C();
  sub_1BE4DB08C(v20);

  v6 = v21;
  if (!v21)
  {
    sub_1BE4C6F5C(v20, &qword_1EBDABAF8, &qword_1BE54DC20);
    if (v1)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  v7 = v22;
  v8 = sub_1BE4C52F4(v20, v21);
  v9 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8, v8);
  v11 = &v20[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  sub_1BE4C6F5C(v20, &qword_1EBDABAF8, &qword_1BE54DC20);
  v12 = (*(v7 + 8))(v6, v7);
  v14 = v13;
  (*(v9 + 8))(v11, v6);
  if (!v1)
  {
    if (v14)
    {
LABEL_15:

      v17 = 1;
      return v17 & 1;
    }

LABEL_17:
    v17 = 0;
    return v17 & 1;
  }

  if (!v14)
  {
    goto LABEL_15;
  }

  if (v3 == v12 && v1 == v14)
  {

    goto LABEL_17;
  }

  v16 = sub_1BE54CCDC();

  v17 = v16 ^ 1;
  return v17 & 1;
}

uint64_t sub_1BE4BF610()
{
  sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
  sub_1BE54C24C();
  v0 = sub_1BE4DB5F0();

  sub_1BE4D98B8(v0);
  v2 = v1;
  v4 = v3;

  if (v2)
  {

    if (sub_1BE4D9918(v4) == 0x6F72746E69 && v5 == 0xE500000000000000)
    {

      v7 = 1;
    }

    else
    {
      v7 = sub_1BE54CCDC();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t GenerativePartnerOnboardingSheet.init(skipToDefaultProviderSetup:forceShowNotNowButton:dismissAction:)@<X0>(char a1@<W0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  if (qword_1EBDABAB8 != -1)
  {
    sub_1BE4C7514(&qword_1EBDABAB8);
  }

  v9 = sub_1BE54B2EC();
  sub_1BE4C52BC(v9, qword_1EBDB0C68);
  v10 = sub_1BE54B2BC();
  v11 = sub_1BE54C97C();
  if (!os_log_type_enabled(v10, v11))
  {

    if ((a1 & 1) == 0)
    {
      return sub_1BE4BF9A0(a3, a4, x8_0);
    }

    goto LABEL_12;
  }

  v25 = a4;
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v26 = v13;
  *v12 = 136446210;
  if (qword_1EDDD6890 != -1)
  {
    sub_1BE4C7480(&qword_1EDDD6890);
  }

  sub_1BE53C930(v27);
  v14 = v28;
  if (v28)
  {
    v15 = v29;
    sub_1BE4C52F4(v27, v28);
    sub_1BE4C75D0();
    v17 = v16(v14, v15);
    v19 = v18;
    sub_1BE4C58A8(v27);
  }

  else
  {
    sub_1BE4C6F5C(v27, &qword_1EBDABAF8, &qword_1BE54DC20);
    v19 = 0xE600000000000000;
    v17 = 0x3E656E6F6E3CLL;
  }

  v20 = sub_1BE4C5338(v17, v19, &v26);

  *(v12 + 4) = v20;
  _os_log_impl(&dword_1BE4B8000, v10, v11, "[Onboarding.init] defaultLLM.id = %{public}s", v12, 0xCu);
  sub_1BE4C58A8(v13);
  sub_1BE4C75DC();
  sub_1BE4C75DC();

  a4 = v25;
  if (a1)
  {
LABEL_12:
    if (qword_1EDDD6890 != -1)
    {
      sub_1BE4C7480(&qword_1EDDD6890);
    }

    sub_1BE53C930(v27);
    v21 = v28;
    if (v28)
    {
      v22 = v29;
      sub_1BE4C52F4(v27, v28);
      sub_1BE4C75D0();
      v23(v21, v22);
      sub_1BE4C58A8(v27);
    }

    else
    {
      sub_1BE4C6F5C(v27, &qword_1EBDABAF8, &qword_1BE54DC20);
    }
  }

  return sub_1BE4BF9A0(a3, a4, x8_0);
}

uint64_t sub_1BE4BF9A0@<X0>(uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  type metadata accessor for PartnerOnboardingViewModel(0);
  swift_allocObject();
  *&v44[0] = sub_1BE4DC8EC();
  sub_1BE54C23C();
  v5 = *(&v45 + 1);
  *a4 = v45;
  *(a4 + 8) = v5;
  LOBYTE(v44[0]) = 0;
  sub_1BE54C23C();
  v6 = *(&v45 + 1);
  *(a4 + 32) = v45;
  *(a4 + 40) = v6;
  v7 = type metadata accessor for GenerativePartnerOnboardingSheet(0);
  *&v45 = 0x4042000000000000;
  sub_1BE4C667C(v7, v8, v9);
  sub_1BE54B67C();
  v10 = *(v7 + 44);
  *(a4 + v10) = sub_1BE54C19C();
  if (qword_1EDDD6890 != -1)
  {
    sub_1BE4C7480(&qword_1EDDD6890);
  }

  v11 = off_1EDDD6898;
  sub_1BE53C930(&v45);
  v12 = *(&v46 + 1);
  if (*(&v46 + 1))
  {
    v13 = v47;
    sub_1BE4C52F4(&v45, *(&v46 + 1));
    sub_1BE4C75D0();
    v15 = v14(v12, v13);
    v12 = v16;
    sub_1BE4C58A8(&v45);
  }

  else
  {
    sub_1BE4C6F5C(&v45, &qword_1EBDABAF8, &qword_1BE54DC20);
    v15 = 0;
  }

  sub_1BE53CA80(&v45);
  swift_beginAccess();
  v17 = v11[2];
  v18 = *(v17 + 16);
  v19 = v17 + 32;

  if (!v18)
  {
LABEL_16:
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    goto LABEL_19;
  }

  while (1)
  {
    sub_1BE4C6918(v19, &v38);
    v20 = v39;
    v21 = v40;
    sub_1BE4C52F4(&v38, v39);
    sub_1BE4C75D0();
    v23 = v22(v20, v21);
    if (!v12)
    {

      goto LABEL_15;
    }

    if (v23 == v15 && v12 == v24)
    {
      break;
    }

    v26 = sub_1BE54CCDC();

    if (v26)
    {
      goto LABEL_18;
    }

LABEL_15:
    sub_1BE4C58A8(&v38);
    v19 += 40;
    if (!--v18)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  sub_1BE4BF094(&v38, &v41);
LABEL_19:

  if (*(&v42 + 1))
  {
    sub_1BE4BF094(&v41, v44);
    sub_1BE4BF094(v44, a4 + 48);
  }

  else
  {
    sub_1BE4C6F5C(&v41, &qword_1EBDABAF8, &qword_1BE54DC20);
    sub_1BE4C6EFC(&v45, a4 + 48, &qword_1EBDABAF8, &qword_1BE54DC20);
    if (v12)
    {
      if (qword_1EBDABAB8 != -1)
      {
        sub_1BE4C7514(&qword_1EBDABAB8);
      }

      v27 = sub_1BE54B2EC();
      sub_1BE4C52BC(v27, qword_1EBDB0C68);

      v28 = sub_1BE54B2BC();
      v29 = sub_1BE54C98C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *&v44[0] = v31;
        *v30 = 136446210;
        v32 = sub_1BE4C5338(v15, v12, v44);

        *(v30 + 4) = v32;
        _os_log_impl(&dword_1BE4B8000, v28, v29, "[Onboarding.preselectedProvider] Failed to find LLM provider with ID '%{public}s'", v30, 0xCu);
        sub_1BE4C58A8(v31);
        sub_1BE4C75DC();
        sub_1BE4C75DC();
      }

      else
      {
      }
    }
  }

  *(a4 + 88) = 1;
  v33 = swift_allocObject();
  v34 = v46;
  *(v33 + 16) = v45;
  *(v33 + 32) = v34;
  *(v33 + 48) = v47;
  *(v33 + 56) = a2;
  *(v33 + 64) = a3;

  *(a4 + 96) = sub_1BE4C7018;
  *(a4 + 104) = v33;
  *(a4 + 16) = 1;
  *(a4 + 24) = 0;
  return result;
}

uint64_t sub_1BE4BFDE0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a2;
  sub_1BE4C6EFC(a3, v49, &qword_1EBDABAF8, &qword_1BE54DC20);
  sub_1BE4C7024(a1, &v41);
  if (v44)
  {
    if (v44 == 1)
    {
      sub_1BE4C6F5C(v49, &qword_1EBDABAF8, &qword_1BE54DC20);
      sub_1BE4BF094(&v41, &v46);
      sub_1BE4C6918(&v46, v49);
      sub_1BE4C58A8(&v46);
      v40 = 0;
      v7 = 0;
      goto LABEL_9;
    }

    if (*(&v42 + 1) | v43 | v41 | v42 | *(&v41 + 1))
    {
      v7 = 0;
      v40 = v41 == 1 && (*(&v42 + 1) | v43 | v42 | *(&v41 + 1)) == 0;
      goto LABEL_9;
    }

    sub_1BE4C6F5C(v49, &qword_1EBDABAF8, &qword_1BE54DC20);
    v40 = 0;
    memset(v49, 0, sizeof(v49));
    v50 = 0;
  }

  else
  {
    sub_1BE4C6F5C(v49, &qword_1EBDABAF8, &qword_1BE54DC20);
    sub_1BE4BF094(&v41, &v46);
    sub_1BE4C6918(&v46, v49);
    sub_1BE4C58A8(&v46);
    v40 = 0;
  }

  v7 = 1;
LABEL_9:
  sub_1BE4C6EFC(v49, &v46, &qword_1EBDABAF8, &qword_1BE54DC20);
  if (v47)
  {
    v8 = a4;
    sub_1BE4BF094(&v46, &v41);
    v9 = *(&v42 + 1);
    v10 = v43;
    sub_1BE4C52F4(&v41, *(&v42 + 1));
    v11 = (*(v10 + 8))(v9, v10);
    v13 = v12;
    sub_1BE4C6EFC(a3, &v46, &qword_1EBDABAF8, &qword_1BE54DC20);
    v14 = v47;
    if (v47)
    {
      v15 = v48;
      sub_1BE4C52F4(&v46, v47);
      v16 = (*(v15 + 8))(v14, v15);
      v18 = v17;
      sub_1BE4C58A8(&v46);
      if (v11 == v16 && v13 == v18)
      {

LABEL_26:

        goto LABEL_27;
      }

      v20 = sub_1BE54CCDC();

      if (v20)
      {
LABEL_27:
        sub_1BE4C58A8(&v41);
        a4 = v8;
        if (!v7)
        {
          goto LABEL_39;
        }

        goto LABEL_28;
      }
    }

    else
    {
      sub_1BE4C6F5C(&v46, &qword_1EBDABAF8, &qword_1BE54DC20);
    }

    if (qword_1EDDD6890 != -1)
    {
      swift_once();
    }

    v21 = *(&v42 + 1);
    v22 = v43;
    sub_1BE4C52F4(&v41, *(&v42 + 1));
    (*(v22 + 8))(v21, v22);
    sub_1BE53CD40();
    goto LABEL_26;
  }

  sub_1BE4C6F5C(&v46, &qword_1EBDABAF8, &qword_1BE54DC20);
  if (qword_1EDDD6890 != -1)
  {
    swift_once();
  }

  type metadata accessor for GenerativePartnerServiceUserDefaults();
  sub_1BE53F998(0, 0xE000000000000000, 0);
  if (v7)
  {
LABEL_28:
    sub_1BE4C6EFC(v49, &v46, &qword_1EBDABAF8, &qword_1BE54DC20);
    if (v47)
    {
      sub_1BE4BF094(&v46, &v41);
      v23 = *(&v42 + 1);
      v24 = v43;
      sub_1BE4C52F4(&v41, *(&v42 + 1));
      v25 = (*(v24 + 8))(v23, v24);
      v27 = v26;
      sub_1BE4C6EFC(a3, &v46, &qword_1EBDABAF8, &qword_1BE54DC20);
      v28 = v47;
      if (v47)
      {
        v29 = v48;
        sub_1BE4C52F4(&v46, v47);
        v30 = (*(v29 + 8))(v28, v29);
        v32 = v31;
        sub_1BE4C58A8(&v46);
        if (v25 != v30 || v27 != v32)
        {
          sub_1BE54CCDC();
        }
      }

      else
      {
        sub_1BE4C6F5C(&v46, &qword_1EBDABAF8, &qword_1BE54DC20);
      }

      sub_1BE4C58A8(&v41);
    }

    else
    {
      sub_1BE4C6F5C(&v46, &qword_1EBDABAF8, &qword_1BE54DC20);
    }
  }

LABEL_39:
  if (v5 != 5)
  {
    type metadata accessor for GenerativePartnerServiceAnalytics();
    sub_1BE4BF11C(&qword_1EBDABD90, &unk_1BE54E420);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE54DC10;
    *(inited + 32) = 0x547373696D736964;
    *(inited + 40) = 0xEB00000000657079;
    v35 = sub_1BE54C6DC();

    *(inited + 48) = v35;
    *(inited + 56) = 0x6567617473;
    *(inited + 64) = 0xE500000000000000;
    sub_1BE4D9918(v5);
    v36 = sub_1BE54C6DC();

    *(inited + 72) = v36;
    sub_1BE4C70B0();
    v37 = sub_1BE54C61C();
    sub_1BE52D9C4(1, v37);
  }

  sub_1BE4C6EFC(v49, &v46, &qword_1EBDABAF8, &qword_1BE54DC20);
  v41 = 0u;
  v42 = 0u;
  v43 = 0;
  sub_1BE4BF16C(&v46, &v41);
  v44 = v7;
  v45 = v40;
  a4(&v41);
  sub_1BE4C6F5C(v49, &qword_1EBDABAF8, &qword_1BE54DC20);
  return sub_1BE4C7080(&v41);
}

uint64_t GenerativePartnerOnboardingSheet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = type metadata accessor for GenerativePartnerOnboardingSheet(0);
  v3 = *(v2 - 8);
  v68 = v2 - 8;
  v67 = v3;
  v66 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v65 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1BE4BF11C(&qword_1EBDABB00, &qword_1BE54DC28);
  sub_1BE4C7470();
  MEMORY[0x1EEE9AC00](v6, v7);
  v64 = &v52 - v8;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1;
  v63 = v1;
  v83 = v9;
  v84 = v10;
  sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
  sub_1BE54C26C();
  v12 = v72;
  v13 = v73;
  v14 = v74;
  swift_getKeyPath();
  v83 = v12;
  v84 = v13;
  v85 = v14;
  sub_1BE4BF11C(&qword_1EBDABB10, &qword_1BE54DC60);
  sub_1BE54C31C();

  v15 = v81;
  v62 = v82;

  v79 = v15;
  v80 = v62;
  v71 = v11;
  *&v62 = sub_1BE4BF11C(&qword_1EBDABB18, &qword_1BE54DC68);
  v61 = sub_1BE4BF11C(&qword_1EBDABB20, &qword_1BE54DC70);
  v60 = sub_1BE4C75B4(&qword_1EBDABB28);
  v59 = sub_1BE4C75B4(&qword_1EBDABB30);
  v58 = sub_1BE4C75B4(&qword_1EBDABB38);
  v57 = sub_1BE4C5948(&qword_1EBDABB40, &qword_1BE54DC78);
  v53 = sub_1BE4C5948(&qword_1EBDABB48, &qword_1BE54DC80);
  v56 = sub_1BE4C5948(&qword_1EBDABB50, &qword_1BE54DC88);
  v16 = sub_1BE4C5948(&qword_1EBDABB58, &unk_1BE54DC90);
  v55 = sub_1BE4C5948(&qword_1EBDABB60, &unk_1BE54E4F0);
  v54 = sub_1BE4C5948(&qword_1EBDABB68, &qword_1BE54DCA0);
  v17 = sub_1BE4C5948(&qword_1EBDABB70, &qword_1BE54DCA8);
  v18 = sub_1BE4C5948(&qword_1EBDABB78, &qword_1BE54DCB0);
  v19 = sub_1BE4C5990();
  v22 = sub_1BE4C5A40(v19, v20, v21);
  v23 = sub_1BE4C5948(&qword_1EBDABBA0, &qword_1BE54DCC0);
  v24 = sub_1BE4C5948(&qword_1EBDABBA8, &qword_1BE54DCC8);
  v25 = sub_1BE4C5A94();
  v72 = v24;
  v73 = v25;
  v26 = sub_1BE4C7534();
  v27 = sub_1BE4C5948(&qword_1EBDABC38, &qword_1BE54DD08);
  sub_1BE4C74D0();
  v30 = sub_1BE4C6A14(v28, &qword_1EBDABC38, &qword_1BE54DD08, v29);
  v72 = v27;
  v73 = v30;
  v31 = sub_1BE4C7534();
  v32 = v53;
  v72 = v23;
  v73 = v53;
  v74 = v26;
  v75 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v72 = v17;
  v73 = &type metadata for PartnerOnboardingStageData;
  v74 = v18;
  v75 = v19;
  v76 = v22;
  v77 = OpaqueTypeConformance2;
  v34 = sub_1BE4C7534();
  sub_1BE4C74A0();
  v37 = sub_1BE4C6A14(v35, &qword_1EBDABB58, &unk_1BE54DC90, v36);
  v72 = v54;
  v73 = v16;
  v74 = MEMORY[0x1E6981148];
  v75 = &type metadata for PartnerOnboardingConfirmationConfiguration;
  v76 = v34;
  v77 = v37;
  v78 = MEMORY[0x1E6981138];
  v38 = sub_1BE4C7534();
  v39 = sub_1BE4C5F2C();
  v72 = v56;
  v73 = v16;
  v74 = v55;
  v75 = v38;
  v76 = v37;
  v77 = v39;
  v40 = sub_1BE4C7534();
  v72 = v57;
  v73 = v32;
  v74 = v40;
  v75 = v31;
  swift_getOpaqueTypeConformance2();
  v41 = v64;
  sub_1BE54B7AC();
  v42 = v63;
  v43 = v65;
  sub_1BE4C5FA8(v63, v65);
  v44 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v45 = swift_allocObject();
  sub_1BE4C600C(v43, v45 + v44);
  v46 = (v41 + *(sub_1BE4BF11C(&qword_1EBDABC60, &qword_1BE54DD18) + 36));
  *v46 = sub_1BE4C6070;
  v46[1] = v45;
  v46[2] = 0;
  v46[3] = 0;
  v47 = *(v42 + *(v68 + 52));
  KeyPath = swift_getKeyPath();
  v72 = v47;

  v49 = sub_1BE54B6AC();
  v50 = (v41 + *(v69 + 36));
  *v50 = KeyPath;
  v50[1] = v49;
  sub_1BE4C60E0();
  sub_1BE54C0DC();
  return sub_1BE4BA520(v41);
}

uint64_t sub_1BE4C0B64@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1BE4DB5F0();
  *a2 = result;
  return result;
}

uint64_t sub_1BE4C0BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v3 = sub_1BE54C69C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v111 = v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE54AF6C();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v125 = v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1BE54AD8C();
  v129 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124, v9);
  v123 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE54C6BC();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v121 = (v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = sub_1BE54ADAC();
  v130 = *(v128 - 8);
  v15 = MEMORY[0x1EEE9AC00](v128, v14);
  v126 = v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v118 = v94 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v127 = v94 - v21;
  v22 = type metadata accessor for GenerativePartnerOnboardingSheet(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22 - 8, v25);
  v119 = sub_1BE4BF11C(&qword_1EBDABB70, &qword_1BE54DCA8);
  MEMORY[0x1EEE9AC00](v119, v26);
  v106 = v94 - v27;
  v108 = sub_1BE4BF11C(&qword_1EBDABB68, &qword_1BE54DCA0);
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108, v28);
  v120 = v94 - v29;
  v114 = sub_1BE4BF11C(&qword_1EBDABB50, &qword_1BE54DC88);
  v112 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v30);
  v122 = v94 - v31;
  v116 = sub_1BE4BF11C(&qword_1EBDABB40, &qword_1BE54DC78);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v32);
  v113 = v94 - v33;
  sub_1BE4C1D2C();
  v131 = a1;
  sub_1BE4C5FA8(a1, v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v35 = swift_allocObject();
  sub_1BE4C600C(v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34);
  v36 = sub_1BE4BF11C(&qword_1EBDABB78, &qword_1BE54DCB0);
  v37 = sub_1BE4C5990();
  v40 = sub_1BE4C5A40(v37, v38, v39);
  v41 = sub_1BE4C5948(&qword_1EBDABBA0, &qword_1BE54DCC0);
  v42 = sub_1BE4C5948(&qword_1EBDABB48, &qword_1BE54DC80);
  v43 = sub_1BE4C5948(&qword_1EBDABBA8, &qword_1BE54DCC8);
  v44 = sub_1BE4C5A94();
  v138 = v43;
  v139 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = sub_1BE4C5948(&qword_1EBDABC38, &qword_1BE54DD08);
  v47 = sub_1BE4C6A14(&qword_1EBDABC40, &qword_1EBDABC38, &qword_1BE54DD08, MEMORY[0x1E697BEF0]);
  v138 = v46;
  v139 = v47;
  v48 = swift_getOpaqueTypeConformance2();
  v138 = v41;
  v139 = v42;
  v110 = v42;
  v140 = OpaqueTypeConformance2;
  v141 = v48;
  v109 = v48;
  v99 = swift_getOpaqueTypeConformance2();
  v102 = v36;
  v101 = v37;
  v100 = v40;
  v49 = v106;
  sub_1BE54C0BC();

  sub_1BE4C6F5C(v49, &qword_1EBDABB70, &qword_1BE54DCA8);
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v50 = sub_1BE4C52BC(v124, qword_1EBDB0C08);
  v51 = v129[2];
  v106 = v50;
  v129 += 2;
  v105 = v51;
  (v51)(v123);
  sub_1BE54AF2C();
  sub_1BE54ADBC();
  v52 = *(v131 + 8);
  v132 = *v131;
  v53 = v132;
  v98 = v132;
  v133 = v52;
  v54 = v52;
  v97 = v52;
  v96 = sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
  sub_1BE54C26C();
  v55 = v138;
  v56 = v139;
  v57 = v140;
  swift_getKeyPath();
  v148 = v55;
  v149 = v56;
  v150 = v57;
  sub_1BE4BF11C(&qword_1EBDABB10, &qword_1BE54DC60);
  sub_1BE54C31C();

  v94[2] = v145;
  v94[1] = v146;
  v95 = v147;

  v138 = v53;
  v139 = v54;
  sub_1BE54C24C();
  sub_1BE4DB8D0(&v138);

  v94[0] = v94;
  MEMORY[0x1EEE9AC00](v58, v59);
  v60 = v130;
  v61 = *(v130 + 16);
  v104 = v130 + 16;
  v103 = v61;
  v61(v118, v127, v128);
  v62 = sub_1BE54BF7C();
  v64 = v63;
  LOBYTE(v53) = v65;
  v66 = sub_1BE4BF11C(&qword_1EBDABB58, &unk_1BE54DC90);
  v132 = v119;
  v133 = &type metadata for PartnerOnboardingStageData;
  v134 = v102;
  v135 = v101;
  v136 = v100;
  v137 = v99;
  v67 = swift_getOpaqueTypeConformance2();
  v119 = sub_1BE4C6A14(&qword_1EBDABC48, &qword_1EBDABB58, &unk_1BE54DC90, MEMORY[0x1E697D680]);
  v102 = v67;
  v118 = v66;
  v68 = v108;
  v69 = v120;
  sub_1BE54C06C();
  sub_1BE4C68C8(v62, v64, v53 & 1);

  sub_1BE4C6F5C(&v138, &qword_1EBDABD30, &qword_1BE54DEC0);
  v70 = v127;
  v71 = v128;
  v101 = *(v60 + 8);
  v101(v127, v128);
  (*(v107 + 8))(v69, v68);
  sub_1BE54C68C();
  sub_1BE54C67C();
  v138 = v98;
  v139 = v97;
  sub_1BE54C24C();
  sub_1BE4DB08C(&v138);

  v72 = v60 + 8;
  v73 = v68;
  v130 = v72;
  if (v141)
  {
    sub_1BE4C6918(&v138, &v132);
    sub_1BE4C6F5C(&v138, &qword_1EBDABAF8, &qword_1BE54DC20);
    v74 = v135;
    v75 = v136;
    sub_1BE4C52F4(&v132, v135);
    (*(v75 + 16))(v74, v75);
    sub_1BE4C58A8(&v132);
  }

  else
  {
    sub_1BE4C6F5C(&v138, &qword_1EBDABAF8, &qword_1BE54DC20);
  }

  sub_1BE54C66C();

  sub_1BE54C67C();
  sub_1BE54C6AC();
  v105(v123, v106, v124);
  sub_1BE54AF2C();
  v76 = v126;
  sub_1BE54ADBC();
  v77 = *(v131 + 40);
  LOBYTE(v132) = *(v131 + 32);
  v133 = v77;
  sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
  v78 = sub_1BE54C26C();
  v129 = v94;
  v124 = v138;
  v123 = v139;
  LODWORD(v125) = v140;
  v80 = MEMORY[0x1EEE9AC00](v78, v79);
  MEMORY[0x1EEE9AC00](v80, v81);
  v103(v70, v76, v71);
  v111 = sub_1BE54BF7C();
  v107 = v82;
  LOBYTE(v76) = v83;
  v120 = sub_1BE4BF11C(&qword_1EBDABB60, &unk_1BE54E4F0);
  v138 = v73;
  v139 = v118;
  v140 = MEMORY[0x1E6981148];
  v141 = &type metadata for PartnerOnboardingConfirmationConfiguration;
  v142 = v102;
  v84 = v119;
  v143 = v119;
  v144 = MEMORY[0x1E6981138];
  v121 = swift_getOpaqueTypeConformance2();
  v127 = sub_1BE4C5F2C();
  v85 = v114;
  v86 = v113;
  v87 = v111;
  v88 = v107;
  v89 = v122;
  sub_1BE54C07C();
  sub_1BE4C68C8(v87, v88, v76 & 1);

  v101(v126, v128);
  v90 = (*(v112 + 8))(v89, v85);
  MEMORY[0x1EEE9AC00](v90, v91);
  v138 = v85;
  v139 = v118;
  v140 = v120;
  v141 = v121;
  v142 = v84;
  v143 = v127;
  swift_getOpaqueTypeConformance2();
  v92 = v116;
  sub_1BE54C14C();
  return (*(v115 + 8))(v86, v92);
}

uint64_t sub_1BE4C1D2C()
{
  v0 = sub_1BE4BF11C(&qword_1EBDABD80, &qword_1BE54DF18);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v9 - v2;
  v4 = sub_1BE4BF11C(&qword_1EBDABB90, &qword_1BE54DCB8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v9 - v6;
  if (AFMontaraRestricted() & 1) == 0 && (static GenerativePartnerRestrictionUtils.isHardDisabled.getter() & 1) == 0 && (sub_1BE52AA84())
  {
    sub_1BE52AC38();
  }

  sub_1BE4C4A60(v7);
  sub_1BE4C6EFC(v7, v3, &qword_1EBDABB90, &qword_1BE54DCB8);
  swift_storeEnumTagMultiPayload();
  sub_1BE4C6A14(&qword_1EBDABB88, &qword_1EBDABB90, &qword_1BE54DCB8, &protocol conformance descriptor for OnboardingSheetView<A>);
  sub_1BE54BC0C();
  return sub_1BE4C6F5C(v7, &qword_1EBDABB90, &qword_1BE54DCB8);
}

uint64_t sub_1BE4C1ECC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDABBA0, &qword_1BE54DCC0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14[-v7];
  sub_1BE4C2108(*a1, *(a1 + 8), *(a1 + 16), a2);
  sub_1BE4BF610();
  v9 = sub_1BE4BF11C(&qword_1EBDABBA8, &qword_1BE54DCC8);
  v10 = sub_1BE4C5A94();
  sub_1BE54C0EC();
  sub_1BE4C6F5C(&v16, &qword_1EBDABBA8, &qword_1BE54DCC8);
  v15 = a2;
  sub_1BE4BF11C(&qword_1EBDABB48, &qword_1BE54DC80);
  v16 = v9;
  v17 = v10;
  swift_getOpaqueTypeConformance2();
  v11 = sub_1BE4C5948(&qword_1EBDABC38, &qword_1BE54DD08);
  v12 = sub_1BE4C6A14(&qword_1EBDABC40, &qword_1EBDABC38, &qword_1BE54DD08, MEMORY[0x1E697BEF0]);
  v16 = v11;
  v17 = v12;
  swift_getOpaqueTypeConformance2();
  sub_1BE54C14C();
  return (*(v5 + 8))(v8, v4);
}

void *sub_1BE4C2108(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = type metadata accessor for GenerativePartnerOnboardingSheet(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v12 = type metadata accessor for OBKSheetData(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a3)
  {
    case 1:
      result = sub_1BE4D99CC(a1, a2, __src);
      if (!*(&__src[1] + 1))
      {
        goto LABEL_27;
      }

      sub_1BE4C6918(__src, &v50);
      v30 = a4[1];
      v48 = *a4;
      v49 = v30;
      sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
      sub_1BE54C24C();
      v31 = v54[0];
      v32 = *(a4 + 88) == 1 && sub_1BE4BF260();
      v44 = sub_1BE4BF610();
      v45 = sub_1BE4BF374();
      type metadata accessor for OBKSheetsManager();
      swift_allocObject();
      sub_1BE4CEA08(&v50, v31, v32, v44 & 1, v45 & 1);
      sub_1BE4CA39C(v15);
      v41 = sub_1BE4CEA6C(v15);
      sub_1BE4C6DB0(v15, type metadata accessor for OBKSheetData);
      v46 = sub_1BE54B7BC();
      v47 = sub_1BE54BE4C();

      sub_1BE4C58A8(__src);
      *&v50 = v41;
      *(&v50 + 1) = v46;
      v51 = v47;
      v52 = 1;
      goto LABEL_20;
    case 2:
      result = sub_1BE4D99CC(a1, a2, __src);
      if (*(&__src[1] + 1))
      {
        sub_1BE4C6918(__src, &v50);
        v20 = a4[1];
        v48 = *a4;
        v49 = v20;
        sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
        sub_1BE54C24C();
        v21 = v54[0];
        v22 = *(a4 + 88) == 1 && sub_1BE4BF260();
        v33 = sub_1BE4BF610();
        v34 = sub_1BE4BF374();
        type metadata accessor for OBKSheetsManager();
        swift_allocObject();
        sub_1BE4CEA08(&v50, v21, v22, v33 & 1, v34 & 1);
        sub_1BE4CBE14(v15);
        v35 = sub_1BE4CEA6C(v15);
        sub_1BE4C6DB0(v15, type metadata accessor for OBKSheetData);
        v36 = sub_1BE54B7BC();
        v37 = sub_1BE54BE4C();

        sub_1BE4C58A8(__src);
        *&__src[0] = v35;
        *(&__src[0] + 1) = v36;
        LOBYTE(__src[1]) = v37;
        v56 = 0;
        v38 = v35;
        sub_1BE4BF11C(&qword_1EBDABBF0, &qword_1BE54DCE8);
        sub_1BE4BF11C(&qword_1EBDABC18, &qword_1BE54DCF8);
        sub_1BE4C5CB4();
        sub_1BE4C5E20();
        sub_1BE54BC0C();
        sub_1BE4C6EFC(&v48, __src, &qword_1EBDABC08, &qword_1BE54DCF0);
        v57 = 1;
        sub_1BE4BF11C(&qword_1EBDABBE0, &qword_1BE54DCE0);
        sub_1BE4BF11C(&qword_1EBDABC08, &qword_1BE54DCF0);
        sub_1BE4C5C30();
        sub_1BE4C5D94();
        sub_1BE54BC0C();
        sub_1BE4C6F5C(&v48, &qword_1EBDABC08, &qword_1BE54DCF0);
LABEL_21:
        sub_1BE4C6EFC(&v50, __src, &qword_1EBDABBD0, &qword_1BE54DCD8);
        v58 = 0;
        sub_1BE4BF11C(&qword_1EBDABBD0, &qword_1BE54DCD8);
        sub_1BE4C5BA4();
        sub_1BE54BC0C();

        v27 = &v50;
        v28 = &qword_1EBDABBD0;
        v29 = &qword_1BE54DCD8;
        return sub_1BE4C6F5C(v27, v28, v29);
      }

      else
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
      }

      return result;
    case 3:
      result = sub_1BE4D99CC(a1, a2, &v50);
      if (!v53)
      {
        goto LABEL_25;
      }

      sub_1BE4C5FA8(a4, &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v23 = (*(v9 + 80) + 16) & ~*(v9 + 80);
      v24 = swift_allocObject();
      sub_1BE4C600C(&v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
      sub_1BE4BF094(&v50, __src);
      *(&__src[2] + 1) = sub_1BE4C6CE0;
      *&__src[3] = v24;
      LOBYTE(v54[0]) = 3;
      sub_1BE4BF11C(&qword_1EBDABD70, &qword_1BE54DEE8);
      sub_1BE54C23C();
      BYTE8(__src[3]) = v48;
      *&__src[4] = v49;
      KeyPath = swift_getKeyPath();
      sub_1BE4C5FA8(a4, &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v26 = swift_allocObject();
      sub_1BE4C600C(&v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v23);
      memcpy(v54, __src, 0x48uLL);
      v54[9] = KeyPath;
      v54[10] = sub_1BE4C6D4C;
      v54[11] = v26;
      sub_1BE4C6EFC(v54, __src, &qword_1EBDABC18, &qword_1BE54DCF8);
      v56 = 1;
      sub_1BE4BF11C(&qword_1EBDABBF0, &qword_1BE54DCE8);
      sub_1BE4BF11C(&qword_1EBDABC18, &qword_1BE54DCF8);
      sub_1BE4C5CB4();
      sub_1BE4C5E20();
      sub_1BE54BC0C();
      sub_1BE4C6EFC(&v48, __src, &qword_1EBDABC08, &qword_1BE54DCF0);
      v57 = 1;
      sub_1BE4BF11C(&qword_1EBDABBE0, &qword_1BE54DCE0);
      sub_1BE4BF11C(&qword_1EBDABC08, &qword_1BE54DCF0);
      sub_1BE4C5C30();
      sub_1BE4C5D94();
      sub_1BE54BC0C();
      sub_1BE4C6F5C(&v48, &qword_1EBDABC08, &qword_1BE54DCF0);
      sub_1BE4C6EFC(&v50, __src, &qword_1EBDABBD0, &qword_1BE54DCD8);
      v58 = 0;
      sub_1BE4BF11C(&qword_1EBDABBD0, &qword_1BE54DCD8);
      sub_1BE4C5BA4();
      sub_1BE54BC0C();
      sub_1BE4C6F5C(&v50, &qword_1EBDABBD0, &qword_1BE54DCD8);
      v27 = v54;
      v28 = &qword_1EBDABC18;
      v29 = &qword_1BE54DCF8;
      return sub_1BE4C6F5C(v27, v28, v29);
    case 4:
      v58 = 1;
      sub_1BE4BF11C(&qword_1EBDABBD0, &qword_1BE54DCD8);
      sub_1BE4C5BA4();
      return sub_1BE54BC0C();
    default:
      result = sub_1BE4D99CC(a1, a2, __src);
      if (!*(&__src[1] + 1))
      {
        goto LABEL_26;
      }

      sub_1BE4C6918(__src, &v50);
      v17 = a4[1];
      v48 = *a4;
      v49 = v17;
      sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
      sub_1BE54C24C();
      v18 = v54[0];
      v19 = *(a4 + 88) == 1 && sub_1BE4BF260();
      v39 = sub_1BE4BF610();
      v40 = sub_1BE4BF374();
      type metadata accessor for OBKSheetsManager();
      swift_allocObject();
      sub_1BE4CEA08(&v50, v18, v19, v39 & 1, v40 & 1);
      sub_1BE4C8308(v15);
      v41 = sub_1BE4CEA6C(v15);
      sub_1BE4C6DB0(v15, type metadata accessor for OBKSheetData);
      v42 = sub_1BE54B7BC();
      v43 = sub_1BE54BE4C();

      sub_1BE4C58A8(__src);
      *&v50 = v41;
      *(&v50 + 1) = v42;
      v51 = v43;
      v52 = 0;
LABEL_20:
      v38 = v41;
      sub_1BE4BF11C(&qword_1EBDABBF0, &qword_1BE54DCE8);
      sub_1BE4C5CB4();
      sub_1BE54BC0C();
      v57 = 0;
      sub_1BE4BF11C(&qword_1EBDABBE0, &qword_1BE54DCE0);
      sub_1BE4BF11C(&qword_1EBDABC08, &qword_1BE54DCF0);
      sub_1BE4C5C30();
      sub_1BE4C5D94();
      sub_1BE54BC0C();
      goto LABEL_21;
  }
}

uint64_t sub_1BE4C2AAC(uint64_t a1, uint64_t *a2)
{
  sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
  sub_1BE54C24C();
  sub_1BE4DC120(a1);

  sub_1BE54C24C();
  sub_1BE4DB664(&unk_1F3CCAA90);
}

uint64_t sub_1BE4C2B50(uint64_t *a1)
{
  sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
  sub_1BE54C24C();
  v1 = sub_1BE4DB5F0();

  v2 = *(v1 + 16);

  if (v2)
  {
    sub_1BE54C24C();
    swift_getKeyPath();
    sub_1BE4C6A5C(&qword_1EBDABD78, type metadata accessor for PartnerOnboardingViewModel, &unk_1BE54EDC4);
    sub_1BE54AFCC();

    swift_getKeyPath();
    sub_1BE54AFEC();

    swift_beginAccess();
    sub_1BE4C2CF8();
    swift_endAccess();

    sub_1BE4DB27C(v4);
    swift_getKeyPath();
    sub_1BE54AFDC();
  }

  return result;
}

void sub_1BE4C2CF8()
{
  if (*(*v0 + 16))
  {
    sub_1BE4C6E98();
    if (!v1)
    {
      sub_1BE4C6E04(*(*v0 + 16) - 1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BE4C2D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v29 = a1;
  v30 = a3;
  v3 = type metadata accessor for GenerativePartnerOnboardingSheet(0);
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v6 = sub_1BE54AF6C();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v8 = sub_1BE54AD8C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE54C6BC();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v15 = sub_1BE54ADAC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v20 = sub_1BE4C52BC(v8, qword_1EBDB0C08);
  (*(v9 + 16))(v12, v20, v8);
  sub_1BE54AF2C();
  sub_1BE54ADBC();
  sub_1BE4C5FA8(v28, &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BE4C6B90(v29, __src);
  v21 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v22 = swift_allocObject();
  sub_1BE4C600C(&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v23 = memcpy((v22 + ((v4 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)), __src, 0x50uLL);
  MEMORY[0x1EEE9AC00](v23, v24);
  *(&v26 - 2) = v19;
  sub_1BE54C29C();
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_1BE4C3100(void *a1, void *a2)
{
  sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
  sub_1BE54C24C();
  sub_1BE4DBFD4(0, a2);
}

uint64_t sub_1BE4C3168@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE54BACC();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  sub_1BE54BABC();
  sub_1BE54BAAC();
  v6 = a1[3];
  v7 = a1[4];
  sub_1BE4C52F4(a1, v6);
  (*(v7 + 16))(v6, v7);
  sub_1BE54BA9C();

  sub_1BE54BAAC();
  v8 = a1[8];
  v9 = a1[9];
  sub_1BE4C52F4(a1 + 5, v8);
  (*(v9 + 16))(v8, v9);
  sub_1BE54BA9C();

  sub_1BE54BAAC();
  sub_1BE54BAEC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v10 = qword_1EBDB0C00;
  result = sub_1BE54BF6C();
  *a2 = result;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v14;
  return result;
}

uint64_t sub_1BE4C336C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = type metadata accessor for GenerativePartnerOnboardingSheet(0);
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v5 = sub_1BE4BF11C(&qword_1EBDABD68, &qword_1BE54DEE0);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v32 - v10;
  v12 = sub_1BE54AF6C();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v14 = sub_1BE54AD8C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BE54C6BC();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v32 = sub_1BE54ADAC();
  v21 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v22);
  v24 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v25 = sub_1BE4C52BC(v14, qword_1EBDB0C08);
  (*(v15 + 16))(v18, v25, v14);
  sub_1BE54AF2C();
  sub_1BE54ADBC();
  sub_1BE54B56C();
  v26 = sub_1BE54B58C();
  sub_1BE4C63F8(v11, 0, 1, v26);
  sub_1BE4C5FA8(v34, &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v28 = swift_allocObject();
  sub_1BE4C600C(&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
  v29 = sub_1BE4C6EFC(v11, v35, &qword_1EBDABD68, &qword_1BE54DEE0);
  MEMORY[0x1EEE9AC00](v29, v30);
  *(&v32 - 2) = v24;
  sub_1BE54C28C();
  sub_1BE4C6F5C(v11, &qword_1EBDABD68, &qword_1BE54DEE0);
  return (*(v21 + 8))(v24, v32);
}

uint64_t sub_1BE4C37E4()
{
  sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
  sub_1BE54C24C();
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  v3 = 2;
  sub_1BE4DC120(v1);

  return sub_1BE4C6AB4(v1);
}

uint64_t sub_1BE4C3860@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BE54BACC();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v6 = a1[1];
  v18[0] = *a1;
  v18[1] = v6;
  sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
  sub_1BE54C24C();
  sub_1BE4DB08C(v18);

  if (v18[3])
  {
    sub_1BE4C6918(v18, v15);
    sub_1BE4C6F5C(v18, &qword_1EBDABAF8, &qword_1BE54DC20);
    v7 = v16;
    v8 = v17;
    sub_1BE4C52F4(v15, v16);
    (*(v8 + 16))(v7, v8);
    sub_1BE4C58A8(v15);
    sub_1BE54BABC();
    sub_1BE54BAAC();
    sub_1BE54BA9C();

    sub_1BE54BAAC();
    sub_1BE54BAEC();
    if (qword_1EBDABA80 != -1)
    {
      swift_once();
    }

    v9 = qword_1EBDB0C00;
    result = sub_1BE54BF6C();
    v14 = v13 & 1;
  }

  else
  {
    sub_1BE4C6F5C(v18, &qword_1EBDABAF8, &qword_1BE54DC20);
    result = 0;
    v11 = 0;
    v14 = 0;
    v12 = 0;
  }

  *a2 = result;
  a2[1] = v11;
  a2[2] = v14;
  a2[3] = v12;
  return result;
}

uint64_t sub_1BE4C3AAC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v24[1] = a3;
  v4 = sub_1BE54BCBC();
  v5 = sub_1BE4C7570(v4);
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_1BE4C757C();
  v7 = sub_1BE4BF11C(&qword_1EBDABC38, &qword_1BE54DD08);
  sub_1BE4C7500();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v24 - v12;
  if (sub_1BE4BF610())
  {
    v14 = sub_1BE54BC9C();
  }

  else
  {
    v14 = sub_1BE54BCAC();
  }

  MEMORY[0x1EEE9AC00](v14, v15);
  v24[-2] = a1;
  sub_1BE4BF11C(&qword_1EBDABD38, &qword_1BE54DEC8);
  sub_1BE4C74A0();
  sub_1BE4C6A14(v16, &qword_1EBDABD38, &qword_1BE54DEC8, v17);
  sub_1BE54B65C();
  sub_1BE4C74D0();
  v22 = sub_1BE4C6A14(v18, v19, v20, v21);
  MEMORY[0x1BFB471E0](v13, v7, v22);
  return (*(v9 + 8))(v13, v7);
}

uint64_t sub_1BE4C3C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for GenerativePartnerOnboardingSheet(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  sub_1BE4C5FA8(a1, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1BE4C600C(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_1BE4BF11C(&qword_1EBDABD48, &qword_1BE54DED0);
  v10 = sub_1BE4C5948(&qword_1EBDABD50, &qword_1BE54DED8);
  v11 = sub_1BE54BA6C();
  v12 = sub_1BE4C6A14(&qword_1EBDABD58, &qword_1EBDABD50, &qword_1BE54DED8, MEMORY[0x1E697D658]);
  v13 = sub_1BE4C6A5C(&qword_1EBDABD60, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  v15[0] = v10;
  v15[1] = v11;
  v15[2] = v12;
  v15[3] = v13;
  swift_getOpaqueTypeConformance2();
  return sub_1BE54C29C();
}

uint64_t sub_1BE4C3E7C(uint64_t *a1)
{
  v2 = type metadata accessor for GenerativePartnerOnboardingSheet(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *a1;
  v6 = a1[1];
  v53 = *a1;
  v54 = v6;
  v7 = sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
  sub_1BE54C24C();
  if (qword_1EDDD6890 != -1)
  {
    swift_once();
  }

  v49 = off_1EDDD6898;
  sub_1BE53CA80(&v53);
  sub_1BE4DB16C(&v53);

  v53 = v5;
  v54 = v6;
  sub_1BE54C24C();
  sub_1BE4C6EFC((a1 + 6), &v53, &qword_1EBDABAF8, &qword_1BE54DC20);
  sub_1BE4DAFF8(&v53);

  v46 = v6;
  v47 = v5;
  v53 = v5;
  v54 = v6;
  v48 = v7;
  sub_1BE54C24C();
  v8 = a1[12];
  v9 = a1[13];

  sub_1BE4DBC1C(v8, v9);

  if (qword_1EBDABAB8 != -1)
  {
    swift_once();
  }

  v10 = sub_1BE54B2EC();
  sub_1BE4C52BC(v10, qword_1EBDB0C68);
  v11 = sub_1BE54B2BC();
  v12 = sub_1BE54C97C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v53 = v14;
    *v13 = 136446210;
    v15 = [objc_opt_self() processInfo];
    v16 = [v15 processName];

    v17 = sub_1BE54C70C();
    v19 = v18;

    v20 = sub_1BE4C5338(v17, v19, &v53);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_1BE4B8000, v11, v12, "[Onboarding.onAppear] process id: %{public}s", v13, 0xCu);
    sub_1BE4C58A8(v14);
    MEMORY[0x1BFB48AC0](v14, -1, -1);
    MEMORY[0x1BFB48AC0](v13, -1, -1);
  }

  v21 = sub_1BE54B2BC();
  v22 = sub_1BE54C97C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v51 = v24;
    *v23 = 136446210;
    sub_1BE53CA80(&v53);
    v25 = v55;
    if (v55)
    {
      v26 = v56;
      sub_1BE4C52F4(&v53, v55);
      v27 = (*(v26 + 8))(v25, v26);
      v29 = v28;
      sub_1BE4C58A8(&v53);
    }

    else
    {
      v27 = 0x3E656E6F6E3CLL;
      sub_1BE4C6F5C(&v53, &qword_1EBDABAF8, &qword_1BE54DC20);
      v29 = 0xE600000000000000;
    }

    v30 = sub_1BE4C5338(v27, v29, &v51);

    *(v23 + 4) = v30;
    _os_log_impl(&dword_1BE4B8000, v21, v22, "[Onboarding.onAppear] previouslyActiveProvider.id = %{public}s", v23, 0xCu);
    sub_1BE4C58A8(v24);
    MEMORY[0x1BFB48AC0](v24, -1, -1);
    MEMORY[0x1BFB48AC0](v23, -1, -1);
  }

  v31 = v50;
  sub_1BE4C5FA8(a1, v50);
  v32 = sub_1BE54B2BC();
  v33 = sub_1BE54C97C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v51 = v35;
    *v34 = 136446210;
    sub_1BE4C6EFC(v31 + 48, &v53, &qword_1EBDABAF8, &qword_1BE54DC20);
    v36 = v55;
    if (v55)
    {
      v37 = v56;
      sub_1BE4C52F4(&v53, v55);
      v38 = (*(v37 + 8))(v36, v37);
      v40 = v39;
      sub_1BE4C58A8(&v53);
    }

    else
    {
      v38 = 0x3E656E6F6E3CLL;
      sub_1BE4C6F5C(&v53, &qword_1EBDABAF8, &qword_1BE54DC20);
      v40 = 0xE600000000000000;
    }

    sub_1BE4C6DB0(v50, type metadata accessor for GenerativePartnerOnboardingSheet);
    v41 = sub_1BE4C5338(v38, v40, &v51);

    *(v34 + 4) = v41;
    _os_log_impl(&dword_1BE4B8000, v32, v33, "[Onboarding.onAppear] preselectedProvider.id = %{public}s", v34, 0xCu);
    sub_1BE4C58A8(v35);
    MEMORY[0x1BFB48AC0](v35, -1, -1);
    MEMORY[0x1BFB48AC0](v34, -1, -1);
  }

  else
  {

    sub_1BE4C6DB0(v31, type metadata accessor for GenerativePartnerOnboardingSheet);
  }

  v42 = v47;
  v43 = v46;
  if (sub_1BE4BF260())
  {
    sub_1BE4C6EFC((a1 + 6), &v51, &qword_1EBDABAF8, &qword_1BE54DC20);
    if (v52)
    {
      goto LABEL_23;
    }

    sub_1BE4C6F5C(&v51, &qword_1EBDABAF8, &qword_1BE54DC20);
  }

  v44 = v49;
  result = swift_beginAccess();
  if (*(v44[2] + 16) != 1)
  {
    return result;
  }

  sub_1BE53C930(&v51);
  if (!v52)
  {
    return sub_1BE4C6F5C(&v51, &qword_1EBDABAF8, &qword_1BE54DC20);
  }

LABEL_23:
  sub_1BE4BF094(&v51, &v53);
  *&v51 = v42;
  *(&v51 + 1) = v43;
  sub_1BE54C24C();
  sub_1BE4DBFD4(0, &v53);

  return sub_1BE4C58A8(&v53);
}

uint64_t sub_1BE4C4570@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1BE54BA6C();
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE54AF6C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v6 = sub_1BE54AD8C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE54C6BC();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v29 = sub_1BE54ADAC();
  v13 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BE4BF11C(&qword_1EBDABD50, &qword_1BE54DED8);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v29 - v20;
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v22 = sub_1BE4C52BC(v6, qword_1EBDB0C08);
  (*(v7 + 16))(v10, v22, v6);
  sub_1BE54AF2C();
  v23 = sub_1BE54ADBC();
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  *(&v29 - 2) = v16;
  MEMORY[0x1EEE9AC00](v25, &v29 - 4);
  *(&v29 - 2) = 0x6B72616D78;
  *(&v29 - 1) = 0xE500000000000000;
  sub_1BE54C22C();
  (*(v13 + 8))(v16, v29);
  v26 = v30;
  sub_1BE54BA5C();
  sub_1BE4C6A14(&qword_1EBDABD58, &qword_1EBDABD50, &qword_1BE54DED8, MEMORY[0x1E697D658]);
  sub_1BE4C6A5C(&qword_1EBDABD60, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  v27 = v33;
  sub_1BE54C00C();
  (*(v32 + 8))(v26, v27);
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_1BE4C4A60@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GenerativePartnerOnboardingSheet(0);
  v34 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v35 = v4;
  v36 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE54AF6C();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v7 = sub_1BE54AD8C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE54C6BC();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v33 = sub_1BE54C20C();
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v14 = sub_1BE4C52BC(v7, qword_1EBDB0C08);
  v15 = *(v8 + 16);
  v15(v11, v14, v7);
  sub_1BE54AF2C();
  v16 = type metadata accessor for OnboardingSheetSetup(0);
  sub_1BE54ADBC();
  static GenerativePartnerRestrictionUtils.restrictionReasonText.getter();
  v17 = a1 + *(v16 + 32);
  sub_1BE54C65C();
  v15(v11, v14, v7);
  sub_1BE54AF2C();
  sub_1BE54ADBC();
  v18 = v36;
  sub_1BE4C5FA8(v37, v36);
  v19 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v20 = swift_allocObject();
  sub_1BE4C600C(v18, v20 + v19);
  v21 = type metadata accessor for OnboardingSheetSetup.ButtonSetup(0);
  v22 = (v17 + *(v21 + 20));
  *v22 = sub_1BE4C6FB0;
  v22[1] = v20;
  v23 = (v17 + *(v21 + 24));
  *v23 = sub_1BE4D15F4;
  v23[1] = 0;
  sub_1BE4C63F8(v17, 0, 1, v21);
  sub_1BE4C63F8(a1 + *(v16 + 36), 1, 1, v21);
  *a1 = 0;
  *(a1 + 8) = v33;
  v24 = sub_1BE4BF11C(&qword_1EBDABB90, &qword_1BE54DCB8);
  v25 = (a1 + v24[10]);
  v38 = 0;
  sub_1BE54C23C();
  v26 = v40;
  *v25 = v39;
  v25[1] = v26;
  v27 = (a1 + v24[11]);
  v38 = 0;
  sub_1BE54C23C();
  v28 = v40;
  *v27 = v39;
  v27[1] = v28;
  v29 = a1 + v24[12];
  result = swift_getKeyPath();
  *v29 = result;
  *(v29 + 8) = 0;
  *(v29 + 16) = 0;
  *(a1 + v24[13]) = 0x407C200000000000;
  v31 = (a1 + v24[9]);
  *v31 = j_nullsub_1;
  v31[1] = 0;
  return result;
}

uint64_t sub_1BE4C4EFC(uint64_t *a1, uint64_t a2)
{
  v2 = a1[12];
  v12 = 0u;
  v13 = 0u;
  v14 = 2;
  v3 = *a1;
  v4 = a1[1];
  v11 = a2;
  sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
  sub_1BE54C24C();
  v5 = sub_1BE4DB5F0();

  sub_1BE4D98B8(v5);
  v7 = v6;
  v9 = v8;

  if (v7)
  {
  }

  else
  {
    v9 = 5;
  }

  v2(&v11, v9);
  sub_1BE4C6AB4(&v11);
  v11 = v3;
  *&v12 = v4;
  sub_1BE54C24C();
  sub_1BE4DB664(&unk_1F3CCAA90);
}

uint64_t sub_1BE4C5034@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1BE4C7318(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1BE4C5068@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1BE54C6DC();

  *a2 = v3;
  return result;
}

uint64_t sub_1BE4C50B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE4C50DC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BE4C50E0(uint64_t a1)
{
  v2 = sub_1BE4C6A5C(&qword_1EBDABDC8, type metadata accessor for NSKeyValueChangeKey, &unk_1BE54E0BC);
  v3 = sub_1BE4C6A5C(&qword_1EBDABDD0, type metadata accessor for NSKeyValueChangeKey, &unk_1BE54E010);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BE4C519C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE54ADAC();
  MEMORY[0x1EEE9AC00](v4, v5);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  result = sub_1BE54BF7C();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_1BE4C5274@<X0>(uint64_t *a3@<X8>)
{

  result = sub_1BE54C1FC();
  *a3 = result;
  return result;
}

uint64_t sub_1BE4C52BC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_1BE4C52F4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1BE4C5338(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BE4C53FC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1BE4C6FB8(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1BE4C58A8(v11);
  return v7;
}

unint64_t sub_1BE4C53FC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1BE4C54FC(a5, a6);
    *a1 = v9;
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
    result = sub_1BE54CB0C();
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

uint64_t sub_1BE4C54FC(uint64_t a1, unint64_t a2)
{
  v3 = sub_1BE4C5548(a1, a2);
  sub_1BE4C5660(&unk_1F3CCA928);
  return v3;
}

uint64_t sub_1BE4C5548(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1BE54C7AC())
  {
    result = sub_1BE4C5744(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1BE54CACC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1BE54CB0C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BE4C5660(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1BE4C57B4(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1BE4C5744(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1BE4BF11C(&qword_1EBDABD88, qword_1BE54DF20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1BE4C57B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BE4BF11C(&qword_1EBDABD88, qword_1BE54DF20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_1BE4C58A8(void *a1)
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

uint64_t type metadata accessor for GenerativePartnerOnboardingSheet(uint64_t a1)
{
  result = qword_1EDDD64C0;
  if (!qword_1EDDD64C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BE4C5948(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1BE4C5990()
{
  result = qword_1EBDABB80;
  if (!qword_1EBDABB80)
  {
    sub_1BE4C5948(&qword_1EBDABB70, &qword_1BE54DCA8);
    sub_1BE4C6A14(&qword_1EBDABB88, &qword_1EBDABB90, &qword_1BE54DCB8, &protocol conformance descriptor for OnboardingSheetView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABB80);
  }

  return result;
}

unint64_t sub_1BE4C5A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDABB98;
  if (!qword_1EBDABB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABB98);
  }

  return result;
}

unint64_t sub_1BE4C5A94()
{
  result = qword_1EBDABBB0;
  if (!qword_1EBDABBB0)
  {
    sub_1BE4C5948(&qword_1EBDABBA8, &qword_1BE54DCC8);
    sub_1BE4C5B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABBB0);
  }

  return result;
}

unint64_t sub_1BE4C5B18()
{
  result = qword_1EBDABBB8;
  if (!qword_1EBDABBB8)
  {
    sub_1BE4C5948(&qword_1EBDABBC0, &qword_1BE54DCD0);
    sub_1BE4C5BA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABBB8);
  }

  return result;
}

unint64_t sub_1BE4C5BA4()
{
  result = qword_1EBDABBC8;
  if (!qword_1EBDABBC8)
  {
    sub_1BE4C5948(&qword_1EBDABBD0, &qword_1BE54DCD8);
    sub_1BE4C5C30();
    sub_1BE4C5D94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABBC8);
  }

  return result;
}

unint64_t sub_1BE4C5C30()
{
  result = qword_1EBDABBD8;
  if (!qword_1EBDABBD8)
  {
    sub_1BE4C5948(&qword_1EBDABBE0, &qword_1BE54DCE0);
    sub_1BE4C5CB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABBD8);
  }

  return result;
}

unint64_t sub_1BE4C5CB4()
{
  result = qword_1EBDABBE8;
  if (!qword_1EBDABBE8)
  {
    v1 = sub_1BE4C5948(&qword_1EBDABBF0, &qword_1BE54DCE8);
    sub_1BE4C5D40(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABBE8);
  }

  return result;
}

unint64_t sub_1BE4C5D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDABBF8;
  if (!qword_1EBDABBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABBF8);
  }

  return result;
}

unint64_t sub_1BE4C5D94()
{
  result = qword_1EBDABC00;
  if (!qword_1EBDABC00)
  {
    sub_1BE4C5948(&qword_1EBDABC08, &qword_1BE54DCF0);
    sub_1BE4C5CB4();
    sub_1BE4C5E20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABC00);
  }

  return result;
}

unint64_t sub_1BE4C5E20()
{
  result = qword_1EBDABC10;
  if (!qword_1EBDABC10)
  {
    v1 = sub_1BE4C5948(&qword_1EBDABC18, &qword_1BE54DCF8);
    sub_1BE4C5ED8(v1, v2, v3);
    sub_1BE4C6A14(&qword_1EBDABC28, &qword_1EBDABC30, &qword_1BE54DD00, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABC10);
  }

  return result;
}

unint64_t sub_1BE4C5ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDABC20;
  if (!qword_1EBDABC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABC20);
  }

  return result;
}

unint64_t sub_1BE4C5F2C()
{
  result = qword_1EBDABC50;
  if (!qword_1EBDABC50)
  {
    sub_1BE4C5948(&qword_1EBDABB60, &unk_1BE54E4F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABC50);
  }

  return result;
}

uint64_t sub_1BE4C5FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativePartnerOnboardingSheet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE4C600C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativePartnerOnboardingSheet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE4C6088@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1BFB46E40]();
  *a1 = result;
  return result;
}

unint64_t sub_1BE4C60E0()
{
  result = qword_1EBDABC68;
  if (!qword_1EBDABC68)
  {
    sub_1BE4C5948(&qword_1EBDABB00, &qword_1BE54DC28);
    sub_1BE4C6198();
    sub_1BE4C6A14(&qword_1EBDABC88, &qword_1EBDABC90, &unk_1BE54DD58, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABC68);
  }

  return result;
}

unint64_t sub_1BE4C6198()
{
  result = qword_1EBDABC70;
  if (!qword_1EBDABC70)
  {
    sub_1BE4C5948(&qword_1EBDABC60, &qword_1BE54DD18);
    sub_1BE4C6A14(&qword_1EBDABC78, &qword_1EBDABC80, &qword_1BE54DD50, MEMORY[0x1E697C1A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABC70);
  }

  return result;
}

unint64_t sub_1BE4C6250()
{
  result = qword_1EBDABC98;
  if (!qword_1EBDABC98)
  {
    sub_1BE54B78C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABC98);
  }

  return result;
}

uint64_t sub_1BE4C62B8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1BE4C62D0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BE4C62E4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 42))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_1BE4C6338(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void sub_1BE4C6420(uint64_t a1)
{
  sub_1BE4C651C(319);
  if (v1 <= 0x3F)
  {
    sub_1BE4C7408(319, &qword_1EDDD63F8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1BE4C6574(319);
      if (v3 <= 0x3F)
      {
        sub_1BE4C65D8();
        if (v4 <= 0x3F)
        {
          sub_1BE4C6620(319, v4, v5);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BE4C651C(uint64_t a1)
{
  if (!qword_1EDDD6400)
  {
    type metadata accessor for PartnerOnboardingViewModel(255);
    v1 = sub_1BE54C27C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDD6400);
    }
  }
}

void sub_1BE4C6574(uint64_t a1)
{
  if (!qword_1EDDD6410[0])
  {
    sub_1BE4C5948(&unk_1EBDABCB8, &qword_1BE54DE88);
    v1 = sub_1BE54C9EC();
    if (!v2)
    {
      atomic_store(v1, qword_1EDDD6410);
    }
  }
}

unint64_t sub_1BE4C65D8()
{
  result = qword_1EDDD63F0;
  if (!qword_1EDDD63F0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDDD63F0);
  }

  return result;
}

void sub_1BE4C6620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_1EDDD6408)
  {
    sub_1BE4C667C(0, a2, a3);
    v3 = sub_1BE54B68C();
    if (!v4)
    {
      atomic_store(v3, &qword_1EDDD6408);
    }
  }
}

unint64_t sub_1BE4C667C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDDD6520;
  if (!qword_1EDDD6520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD6520);
  }

  return result;
}

uint64_t sub_1BE4C66D0(uint64_t a1, uint64_t a2)
{
  sub_1BE54C70C();
  sub_1BE54C77C();
}

uint64_t sub_1BE4C6724()
{
  type metadata accessor for GenerativePartnerOnboardingSheet(0);
  sub_1BE4C759C();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;

  if (*(v1 + v4 + 72))
  {
    sub_1BE4C58A8((v7 + 48));
  }

  v8 = *(v0 + 40);
  sub_1BE4BF11C(&qword_1EBDABC58, &qword_1BE54DD10);
  sub_1BE4C745C();
  (*(v9 + 8))(v7 + v8);

  return MEMORY[0x1EEE6BDD0](v1, v4 + v6, v3 | 7);
}

uint64_t sub_1BE4C6844(uint64_t a1)
{
  v3 = type metadata accessor for GenerativePartnerOnboardingSheet(0);
  sub_1BE4C7570(v3);
  v5 = (v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  return sub_1BE4C1ECC(a1, v5);
}

uint64_t sub_1BE4C68C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1BE4C6918(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1BE4C69BC(uint64_t a1)
{
  v2 = type metadata accessor for GenerativePartnerOnboardingSheet(0);
  sub_1BE4C7570(v2);
  v4 = sub_1BE4C758C(*(v3 + 80));
  return sub_1BE4C4EFC(v4, a1);
}

uint64_t sub_1BE4C6A14(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BE4C5948(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BE4C6A5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BE4C6B20(uint64_t (*a1)(uint64_t))
{
  v1 = type metadata accessor for GenerativePartnerOnboardingSheet(0);
  sub_1BE4C7570(v1);
  v3 = sub_1BE4C758C(*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BE4C6BEC()
{
  v1 = *(type metadata accessor for GenerativePartnerOnboardingSheet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BE4C3100((v0 + v2), v3);
}

uint64_t sub_1BE4C6CE0(uint64_t a1)
{
  v3 = type metadata accessor for GenerativePartnerOnboardingSheet(0);
  sub_1BE4C7570(v3);
  v5 = (v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  return sub_1BE4C2AAC(a1, v5);
}

uint64_t sub_1BE4C6D4C()
{
  v0 = type metadata accessor for GenerativePartnerOnboardingSheet(0);
  sub_1BE4C7570(v0);
  v2 = sub_1BE4C758C(*(v1 + 80));

  return sub_1BE4C2B50(v2);
}

uint64_t sub_1BE4C6DB0(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  sub_1BE4C745C();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1BE4C6E04(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BE542DB8();
    v3 = v6;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    sub_1BE542548((v3 + 24 * a1 + 56), v4 - 1 - a1, (v3 + 24 * a1 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

void sub_1BE4C6E98()
{
  v1 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BE542DB8();
    v1 = v3;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    *(v1 + 16) = v2 - 1;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BE4C6EFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1BE4BF11C(a3, a4);
  sub_1BE4C7470();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BE4C6F5C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1BE4BF11C(a2, a3);
  sub_1BE4C745C();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BE4C6FB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1BE4C70B0()
{
  result = qword_1EBDABD98;
  if (!qword_1EBDABD98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBDABD98);
  }

  return result;
}

uint64_t sub_1BE4C721C(uint64_t a1, id *a2)
{
  v3 = sub_1BE54C6FC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1BE4C72A0(uint64_t a1, id *a2)
{
  result = sub_1BE54C6EC();
  *a2 = 0;
  return result;
}

uint64_t sub_1BE4C7318(uint64_t a1)
{
  sub_1BE54C70C();
  v1 = sub_1BE54C6DC();

  return v1;
}

uint64_t sub_1BE4C7350(uint64_t a1)
{
  v1 = sub_1BE54C70C();
  v2 = MEMORY[0x1BFB47CC0](v1);

  return v2;
}

__n128 sub_1BE4C7388(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1BE4C7398(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BE4C73B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void sub_1BE4C7408(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BE4C7480(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1BE4C7514(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1BE4C7534()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BE4C7550()
{

  return sub_1BE54A794(2, 26, 4, 0);
}

uint64_t sub_1BE4C75B4(unint64_t *a1)
{

  return sub_1BE4C6A14(a1, v2, v3, v1);
}

void sub_1BE4C75DC()
{

  JUMPOUT(0x1BFB48AC0);
}

uint64_t GenerativePartnerOnboardingSheetController.__allocating_init(willDismissAction:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  GenerativePartnerOnboardingSheetController.__allocating_init(skipToDefaultProviderSetup:forceShowNotNowButton:willDismissAction:)(1, 0, sub_1BE4C76F4, v6);
  sub_1BE4C81EC();
  return a2;
}

uint64_t GenerativePartnerOnboardingSheetController.init(willDismissAction:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  GenerativePartnerOnboardingSheetController.__allocating_init(skipToDefaultProviderSetup:forceShowNotNowButton:willDismissAction:)(1, 0, sub_1BE4C81CC, v4);
  sub_1BE4C81EC();
  return a2;
}

char *GenerativePartnerOnboardingSheetController.__allocating_init(skipToDefaultProviderSetup:forceShowNotNowButton:willDismissAction:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (a1)
  {
    if (qword_1EDDD6890 != -1)
    {
      swift_once();
    }

    sub_1BE53C930(v14);
    v8 = v15;
    if (v15)
    {
      v9 = v16;
      sub_1BE4C52F4(v14, v15);
      v10 = (*(v9 + 8))(v8, v9);
      v8 = v11;
      sub_1BE4C58A8(v14);
    }

    else
    {
      sub_1BE4C8048(v14);
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0;
  }

  v12 = objc_allocWithZone(type metadata accessor for GenerativePartnerOnboardingSheetController());
  return sub_1BE4C78C0(v10, v8, v7 & 1, a2 & 1, a3, a4);
}

char *sub_1BE4C78C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for GenerativePartnerOnboardingSheet(0);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v25 - v15;
  *&v6[OBJC_IVAR____TtC26GenerativePartnerServiceUI42GenerativePartnerOnboardingSheetController_hostingController] = 0;
  v17 = type metadata accessor for GenerativePartnerOnboardingSheetController();
  v25.receiver = v6;
  v25.super_class = v17;
  v18 = objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, 0, 0);
  [v18 setModalInPresentation_];
  [v18 setModalPresentationStyle_];
  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = v18;

  sub_1BE4BF9A0(sub_1BE4C811C, v19, v16);
  sub_1BE4C5FA8(v16, v13);
  v20 = objc_allocWithZone(sub_1BE4BF11C(&qword_1EBDABE58, &unk_1BE54E180));
  v21 = sub_1BE54BB2C();
  v22 = *&v18[OBJC_IVAR____TtC26GenerativePartnerServiceUI42GenerativePartnerOnboardingSheetController_hostingController];
  *&v18[OBJC_IVAR____TtC26GenerativePartnerServiceUI42GenerativePartnerOnboardingSheetController_hostingController] = v21;
  v23 = v21;

  [v18 addChildViewController_];

  sub_1BE4C8170(v16);
  return v18;
}

void sub_1BE4C7AB4()
{
  *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI42GenerativePartnerOnboardingSheetController_hostingController) = 0;
  sub_1BE54CBBC();
  __break(1u);
}

void sub_1BE4C7B34()
{
  v45.receiver = v0;
  v45.super_class = type metadata accessor for GenerativePartnerOnboardingSheetController();
  objc_msgSendSuper2(&v45, sel_viewDidLoad);
  v1 = sub_1BE4C8210();
  if (!v1)
  {
    __break(1u);
    goto LABEL_20;
  }

  v2 = v1;
  v3 = OBJC_IVAR____TtC26GenerativePartnerServiceUI42GenerativePartnerOnboardingSheetController_hostingController;
  v4 = *&v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI42GenerativePartnerOnboardingSheetController_hostingController];
  if (!v4)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = [v4 view];
  if (!v5)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = v5;
  [v2 addSubview_];

  v7 = *&v0[v3];
  if (!v7)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = [v7 view];
  if (!v8)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];

  sub_1BE4BF11C(&qword_1EBDABE48, &unk_1BE550660);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BE54E130;
  v11 = sub_1BE4C8210();
  if (!v11)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v12 = v11;
  v13 = [v11 leadingAnchor];

  v14 = *&v0[v3];
  if (!v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = [v14 view];
  if (!v15)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v16 = v15;
  v17 = [v15 leadingAnchor];

  v18 = sub_1BE4C81D0();
  *(v10 + 32) = v18;
  v19 = sub_1BE4C8210();
  if (!v19)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = v19;
  v21 = [v19 trailingAnchor];

  v22 = *&v0[v3];
  if (!v22)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v23 = [v22 view];
  if (!v23)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v24 = v23;
  v25 = [v23 trailingAnchor];

  v26 = sub_1BE4C81D0();
  *(v10 + 40) = v26;
  v27 = sub_1BE4C8210();
  if (!v27)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v28 = v27;
  v29 = [v27 topAnchor];

  v30 = *&v0[v3];
  if (!v30)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v31 = [v30 view];
  if (!v31)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v32 = v31;
  v33 = [v31 topAnchor];

  v34 = sub_1BE4C81D0();
  *(v10 + 48) = v34;
  v35 = sub_1BE4C8210();
  if (!v35)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v36 = v35;
  v37 = [v35 bottomAnchor];

  v38 = *&v0[v3];
  if (!v38)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v39 = [v38 view];
  if (v39)
  {
    v40 = v39;
    v41 = objc_opt_self();
    v42 = [v40 bottomAnchor];

    v43 = sub_1BE4C81D0();
    *(v10 + 56) = v43;
    sub_1BE4C80B0();
    v44 = sub_1BE54C80C();

    [v41 activateConstraints_];

    return;
  }

LABEL_35:
  __break(1u);
}

id GenerativePartnerOnboardingSheetController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BE54C6DC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id GenerativePartnerOnboardingSheetController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativePartnerOnboardingSheetController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BE4C8048(uint64_t a1)
{
  v2 = sub_1BE4BF11C(&qword_1EBDABAF8, &qword_1BE54DC20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BE4C80B0()
{
  result = qword_1EBDABE50;
  if (!qword_1EBDABE50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBDABE50);
  }

  return result;
}

id sub_1BE4C811C()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))();

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_1BE4C8170(uint64_t a1)
{
  v2 = type metadata accessor for GenerativePartnerOnboardingSheet(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1BE4C81D0()
{

  return [v0 (v2 + 3941)];
}

uint64_t sub_1BE4C81EC()
{

  return MEMORY[0x1EEE6BDD8](v0, v1, 16, 7);
}

id sub_1BE4C8210()
{

  return [v0 (v1 + 2808)];
}

uint64_t sub_1BE4C8260(char a1)
{
  sub_1BE54CD8C();
  MEMORY[0x1BFB482A0](a1 & 1);
  return sub_1BE54CDAC();
}

uint64_t sub_1BE4C82C4(uint64_t a1)
{
  v2 = *v1;
  sub_1BE54CD8C();
  MEMORY[0x1BFB482A0](v2);
  return sub_1BE54CDAC();
}

uint64_t sub_1BE4C8308@<X0>(uint64_t a1@<X8>)
{
  v174 = a1;
  v3 = sub_1BE4BF11C(&qword_1EBDABE60, &unk_1BE54E1D0);
  v4 = sub_1BE4CE78C(v3);
  v181 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  sub_1BE4CE770();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v162 - v9;
  type metadata accessor for OBKSheetData.BulletPoint(0);
  sub_1BE4C7500();
  v190 = v12;
  v191 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  sub_1BE4CE5E4();
  v192 = v14;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v15, v16);
  sub_1BE4CE710();
  sub_1BE4CE6A0();
  MEMORY[0x1EEE9AC00](v17, v18);
  sub_1BE4CE710();
  sub_1BE4CE6A0();
  MEMORY[0x1EEE9AC00](v19, v20);
  sub_1BE4CE710();
  sub_1BE4CE6A0();
  MEMORY[0x1EEE9AC00](v21, v22);
  sub_1BE4CE764();
  v163 = v23;
  v24 = sub_1BE4BF11C(&qword_1EBDABE68, &qword_1BE54E470);
  v25 = sub_1BE4C7570(v24);
  MEMORY[0x1EEE9AC00](v25, v26);
  v179 = &v162 - v27;
  sub_1BE4CE71C();
  v28 = sub_1BE54AF6C();
  v29 = sub_1BE4C7570(v28);
  MEMORY[0x1EEE9AC00](v29, v30);
  sub_1BE4C757C();
  v183 = v32 - v31;
  sub_1BE4CE71C();
  v189 = sub_1BE54AD8C();
  sub_1BE4C7500();
  v185 = v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  sub_1BE4C757C();
  v38 = v37 - v36;
  sub_1BE4CE71C();
  v39 = sub_1BE54C6BC();
  v40 = sub_1BE4C7570(v39);
  MEMORY[0x1EEE9AC00](v40, v41);
  sub_1BE4C757C();
  v44 = v43 - v42;
  v45 = sub_1BE54C69C();
  v46 = sub_1BE4C7570(v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  sub_1BE4C757C();
  sub_1BE54ADAC();
  sub_1BE4C7500();
  v186 = v49;
  v187 = v48;
  MEMORY[0x1EEE9AC00](v48, v50);
  sub_1BE4CE5E4();
  sub_1BE4CE6A0();
  MEMORY[0x1EEE9AC00](v51, v52);
  sub_1BE4CE710();
  v178 = v53;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v54, v55);
  sub_1BE4CE710();
  sub_1BE4CE6A0();
  MEMORY[0x1EEE9AC00](v56, v57);
  sub_1BE4CE710();
  v177 = v58;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v59, v60);
  sub_1BE4CE710();
  sub_1BE4CE6A0();
  MEMORY[0x1EEE9AC00](v61, v62);
  sub_1BE4CE710();
  v176 = v63;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v64, v65);
  sub_1BE4CE710();
  sub_1BE4CE6A0();
  MEMORY[0x1EEE9AC00](v66, v67);
  sub_1BE4CE710();
  v175 = v68;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v69, v70);
  v72 = &v162 - v71;
  sub_1BE54C68C();
  _s26GenerativePartnerServiceUI0aB17SettingsDeepLinksO11DestinationO8rawValueSSvg_0();
  sub_1BE54C67C();
  v74 = v1[5];
  v73 = v1[6];
  v188 = v1;
  sub_1BE4C52F4(v1 + 2, v74);
  sub_1BE4CE704();
  v75(v74, v73);
  sub_1BE54C66C();

  _s26GenerativePartnerServiceUI0aB17SettingsDeepLinksO11DestinationO8rawValueSSvg_0();
  sub_1BE54C67C();
  v76 = v44;
  sub_1BE54C6AC();
  if (qword_1EBDABA88 != -1)
  {
    sub_1BE4CE5C4(&qword_1EBDABA88);
  }

  v77 = v189;
  v184 = sub_1BE4C52BC(v189, qword_1EBDB0C08);
  v78 = (v185 + 16);
  v182 = *(v185 + 2);
  v79 = v38;
  v182(v38, v184, v77);
  v80 = v183;
  sub_1BE54AF2C();
  v173 = v72;
  v81 = sub_1BE4CE690();
  sub_1BE4CE6D0(v81, v82, v83, v80, v79);
  sub_1BE4C90CC(v188, v179);
  sub_1BE4BF11C(&qword_1EBDABE70, &qword_1BE54E1E0);
  sub_1BE4CE870();
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_1BE54E190;
  v171 = v84;
  v85 = v84 + v77;
  v196[0] = 0;
  v167 = sub_1BE4C9400(v196);
  sub_1BE4CE6B0();
  sub_1BE54C65C();
  v86 = v184;
  v87 = v182;
  v182(v79, v184, v189);
  sub_1BE54AF2C();
  v88 = sub_1BE4CE690();
  sub_1BE4CE6D0(v88, v89, v90, v80, v79);
  sub_1BE4CE6B0();
  sub_1BE54C65C();
  v185 = v78;
  v87(v79, v86, v189);
  sub_1BE54AF2C();
  v91 = v168;
  v180 = v76;
  v181 = v79;
  v92 = sub_1BE4CE690();
  sub_1BE4CE6D0(v92, v93, v94, v80, v79);
  v95 = v91;
  v96 = v187;
  if (v167)
  {
    v97 = *(v186 + 32);
    v78 = v163;
    v97(v163, v175, v187);
    v98 = v191;
    v97((v78 + *(v191 + 20)), v95, v96);
    v99 = (v78 + *(v98 + 24));
    *v99 = 1769105779;
    v99[1] = 0xE400000000000000;
    sub_1BE4CD62C(v78, v85);
    v100 = 0;
  }

  else
  {
    v101 = *(v186 + 8);
    v101(v95, v187);
    v101(v175, v96);
    v100 = 1;
    v98 = v191;
  }

  sub_1BE4C63F8(v85, v100, 1, v98);
  v195[0] = 1;
  LODWORD(v175) = sub_1BE4C9400(v195);
  sub_1BE4CE6B0();
  sub_1BE54C65C();
  v102 = sub_1BE4CE7F4();
  v78(v102);
  sub_1BE54AF2C();
  sub_1BE4CE60C();
  sub_1BE4CE6B0();
  sub_1BE54C65C();
  v103 = sub_1BE4CE80C();
  v78(v103);
  sub_1BE54AF2C();
  v104 = v169;
  sub_1BE4CE60C();
  v105 = v187;
  if (v175)
  {
    v106 = *(v186 + 32);
    v107 = v164;
    v106(v164, v176, v187);
    v108 = v191;
    v106(v107 + *(v191 + 20), v104, v105);
    v109 = (v107 + *(v108 + 24));
    *v109 = 0x6275622E74786574;
    v109[1] = 0xEB00000000656C62;
    sub_1BE4CD62C(v107, &v72[v85]);
    v110 = 0;
    v111 = v108;
  }

  else
  {
    v112 = *(v186 + 8);
    v112(v104, v187);
    v112(v176, v105);
    v110 = 1;
    v111 = v191;
  }

  sub_1BE4C63F8(&v72[v85], v110, 1, v111);
  v176 = v85 + 2 * v72;
  v194[0] = 2;
  LODWORD(v175) = sub_1BE4C9400(v194);
  sub_1BE4CE6B0();
  sub_1BE54C65C();
  v113 = sub_1BE4CE7F4();
  v104(v113);
  sub_1BE54AF2C();
  sub_1BE4CE60C();
  sub_1BE4CE6B0();
  sub_1BE54C65C();
  v114 = sub_1BE4CE80C();
  v104(v114);
  sub_1BE54AF2C();
  v115 = v170;
  sub_1BE4CE60C();
  if (v175)
  {
    v175 = 0x80000001BE552F20;
    v116 = v187;
    v117 = *(v186 + 32);
    v118 = v115;
    v119 = v165;
    v117(v165, v177, v187);
    v120 = v191;
    v117(v119 + *(v191 + 20), v118, v116);
    v121 = (v119 + *(v120 + 24));
    *v121 = 0xD000000000000013;
    v122 = v176;
    v121[1] = v175;
    sub_1BE4CD62C(v119, v122);
    v123 = 0;
    v124 = v120;
    v125 = v122;
  }

  else
  {
    v126 = v187;
    v127 = *(v186 + 8);
    v127(v115, v187);
    v127(v177, v126);
    v123 = 1;
    v124 = v191;
    v125 = v176;
  }

  sub_1BE4C63F8(v125, v123, 1, v124);
  v177 = 3 * v72;
  v193[0] = 3;
  LODWORD(v176) = sub_1BE4C9400(v193);
  sub_1BE54C65C();
  v128 = v181;
  v129 = v182;
  v182(v181, v184, v189);
  v130 = v183;
  sub_1BE54AF2C();
  sub_1BE4CE6EC();
  sub_1BE4CE6D0(v131, v132, v133, v130, v128);
  sub_1BE4CE6B0();
  sub_1BE54C65C();
  v129(v128, v184, v189);
  sub_1BE54AF2C();
  v134 = v172;
  sub_1BE4CE6EC();
  sub_1BE4CE6D0(v135, v136, v137, v130, v128);
  v138 = v187;
  if (v176)
  {
    v139 = *(v186 + 32);
    v140 = v166;
    v139(v166, v178, v187);
    v139(v140 + *(v191 + 20), v134, v138);
    v124 = v191;
    v141 = (v140 + *(v191 + 24));
    *v141 = 0xD000000000000016;
    v141[1] = 0x80000001BE552FB0;
    v142 = v177;
    sub_1BE4CD62C(v140, v85 + v177);
    v143 = 0;
    v144 = v142;
  }

  else
  {
    v145 = *(v186 + 8);
    v145(v134, v187);
    v145(v178, v138);
    v143 = 1;
    v144 = v177;
  }

  sub_1BE4C63F8(v85 + v144, v143, 1, v124);
  sub_1BE4C94E8(v188, v85 + 4 * v72);
  v146 = MEMORY[0x1E69E7CC0];
  v147 = 5;
  do
  {
    sub_1BE4CD474(v85, v10);
    sub_1BE4CD5C4(v10, v2, &qword_1EBDABE60, &unk_1BE54E1D0);
    if (sub_1BE4C63BC(v2, 1, v124) == 1)
    {
      sub_1BE4CD4E4(v2);
    }

    else
    {
      sub_1BE4CD62C(v2, v192);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v152 = sub_1BE4CE7AC();
        v146 = sub_1BE541A70(v152, v153, v154, v146);
      }

      v149 = v146[2];
      v148 = v146[3];
      if (v149 >= v148 >> 1)
      {
        v146 = sub_1BE541A70((v148 > 1), v149 + 1, 1, v146);
      }

      v146[2] = v149 + 1;
      sub_1BE4CE7CC();
      sub_1BE4CD62C(v192, v146 + v150 + *(v151 + 72) * v149);
      v124 = v191;
    }

    v85 += v72;
    --v147;
  }

  while (v147);
  swift_setDeallocating();
  sub_1BE52B734();
  v155 = type metadata accessor for OBKSheetData(0);
  v156 = v174;
  v157 = v188;
  sub_1BE4C9AB4(v188, v174 + v155[8]);
  v158 = v155[9];
  v159 = 1;
  if (*(v157 + 64) == 1)
  {
    sub_1BE4CA12C(v156 + v158);
    v159 = 0;
  }

  v160 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);
  sub_1BE4C63F8(v156 + v158, v159, 1, v160);
  (*(v186 + 32))(v156, v173, v187);
  result = sub_1BE4CD5C4(v179, v156 + v155[5], &qword_1EBDABE68, &qword_1BE54E470);
  *(v156 + v155[6]) = v146;
  *(v156 + v155[7]) = 1;
  return result;
}

uint64_t sub_1BE4C90CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE54AF6C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v6 = sub_1BE54AD8C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE54C6BC();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v13 = sub_1BE54C69C();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  if (*(a1 + 66) == 1)
  {
    v22 = a2;
    sub_1BE54C68C();
    sub_1BE54C67C();
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    sub_1BE4C52F4((a1 + 16), v15);
    (*(v16 + 16))(v15, v16);
    sub_1BE54C66C();

    sub_1BE54C67C();
    sub_1BE54C6AC();
    if (qword_1EBDABA88 != -1)
    {
      swift_once();
    }

    v17 = sub_1BE4C52BC(v6, qword_1EBDB0C08);
    (*(v7 + 16))(v10, v17, v6);
    sub_1BE54AF2C();
    v18 = v22;
    sub_1BE54ADBC();
    v19 = sub_1BE54ADAC();
    return sub_1BE4C63F8(v18, 0, 1, v19);
  }

  else
  {
    v21 = sub_1BE54ADAC();

    return sub_1BE4C63F8(a2, 1, 1, v21);
  }
}

uint64_t sub_1BE4C9400(char *a1)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = *a1;
  sub_1BE4C52F4(v1 + 2, v2);
  v5 = (*(v3 + 224))(v2, v3);
  v8 = sub_1BE52DE30(v5, v6, v7);
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  v11 = sub_1BE5433EC(v10);

  v12 = sub_1BE4CD6B0(v11, v8);

  v13 = sub_1BE52913C(v4, v12);

  return v13 & 1;
}

uint64_t sub_1BE4C94E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v55 = type metadata accessor for OBKSheetData.BulletPoint(0);
  MEMORY[0x1EEE9AC00](v55, v3);
  v53 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE54AF6C();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v51 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1BE54AD8C();
  v52 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE54C6BC();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v50 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE54C69C();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v16 = sub_1BE54ADAC();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v43 - v23;
  v26 = a1[5];
  v25 = a1[6];
  sub_1BE4C52F4(a1 + 2, v26);
  (*(v25 + 216))(&v56, v26, v25);
  if (v56 >> 6)
  {
    v27 = v54;
    v28 = v55;

    return sub_1BE4C63F8(v27, 1, 1, v28);
  }

  else
  {
    v47 = v10;
    v48 = v24;
    v44 = v21;
    v45 = v17;
    v46 = v16;
    v30 = v49;
    sub_1BE54C68C();
    sub_1BE54C67C();
    v31 = a1[5];
    v32 = a1[6];
    sub_1BE4C52F4(a1 + 2, v31);
    (*(v32 + 16))(v31, v32);
    sub_1BE54C66C();

    sub_1BE54C67C();
    sub_1BE54C6AC();
    if (qword_1EBDABA88 != -1)
    {
      swift_once();
    }

    v43 = sub_1BE4C52BC(v30, qword_1EBDB0C08);
    v52 = *(v52 + 16);
    v33 = v47;
    (v52)(v47, v43, v30);
    sub_1BE54AF2C();
    sub_1BE54ADBC();
    sub_1BE54C68C();
    sub_1BE54C67C();
    v34 = a1[5];
    v35 = a1[6];
    sub_1BE4C52F4(a1 + 2, v34);
    (*(v35 + 16))(v34, v35);
    sub_1BE54C66C();

    sub_1BE54C67C();
    sub_1BE54C6AC();
    (v52)(v33, v43, v30);
    sub_1BE54AF2C();
    v36 = v44;
    sub_1BE54ADBC();
    v37 = v46;
    v38 = *(v45 + 32);
    v39 = v53;
    v38(v53, v48, v46);
    v40 = v55;
    v38((v39 + *(v55 + 20)), v36, v37);
    v41 = (v39 + *(v40 + 24));
    *v41 = 0xD000000000000012;
    v41[1] = 0x80000001BE553070;
    v42 = v54;
    sub_1BE4CD62C(v39, v54);
    return sub_1BE4C63F8(v42, 0, 1, v40);
  }
}

uint64_t sub_1BE4C9AB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[5];
  v4 = a1[6];
  sub_1BE4C52F4(a1 + 2, v3);
  (*(v4 + 216))(&v7, v3, v4);
  if (v7 == 128)
  {
    sub_1BE4C9B74(a2);
  }

  else
  {
    sub_1BE4C9EC4(a2);
  }

  v5 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);

  return sub_1BE4C63F8(a2, 0, 1, v5);
}

id sub_1BE4C9B74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE54AF6C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = sub_1BE54AD8C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1BE54C6BC();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v12 = sub_1BE54ADAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v26[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v17 = sub_1BE4C52BC(v5, qword_1EBDB0C08);
  (*(v6 + 16))(v9, v17, v5);
  sub_1BE54AF2C();
  sub_1BE54ADBC();
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v19 = result;
    v20 = [result isExternalIntelligenceSignInAllowed];

    if (qword_1EBDABA48 != -1)
    {
      swift_once();
    }

    v22 = qword_1EBDB0BA8;
    v21 = unk_1EBDB0BB0;
    v23 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);
    v24 = (a1 + v23[7]);
    (*(v13 + 32))(a1, v16, v12);
    *(a1 + v23[5]) = v20;
    *v24 = v22;
    v24[1] = v21;
    v25 = (a1 + v23[6]);
    *v25 = sub_1BE4CE5C0;
    v25[1] = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BE4C9EC4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE54AF6C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = sub_1BE54AD8C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE54C6BC();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v12 = sub_1BE4C52BC(v5, qword_1EBDB0C08);
  (*(v6 + 16))(v9, v12, v5);
  sub_1BE54AF2C();
  sub_1BE54ADBC();
  if (qword_1EBDABA48 != -1)
  {
    swift_once();
  }

  v14 = qword_1EBDB0BA8;
  v13 = unk_1EBDB0BB0;
  v15 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);
  v16 = (a1 + v15[7]);
  *(a1 + v15[5]) = 1;
  *v16 = v14;
  v16[1] = v13;
  v17 = (a1 + v15[6]);
  *v17 = sub_1BE4CD6A0;
  v17[1] = v1;
}

uint64_t sub_1BE4CA12C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE54AF6C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = sub_1BE54AD8C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE54C6BC();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v12 = sub_1BE4C52BC(v5, qword_1EBDB0C08);
  (*(v6 + 16))(v9, v12, v5);
  sub_1BE54AF2C();
  sub_1BE54ADBC();
  if (qword_1EBDABA40 != -1)
  {
    swift_once();
  }

  v14 = qword_1EBDB0B98;
  v13 = unk_1EBDB0BA0;
  v15 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);
  v16 = (a1 + v15[7]);
  *(a1 + v15[5]) = 1;
  *v16 = v14;
  v16[1] = v13;
  v17 = (a1 + v15[6]);
  *v17 = sub_1BE4CD690;
  v17[1] = v1;
}

uint64_t sub_1BE4CA39C@<X0>(uint64_t a1@<X8>)
{
  v128 = a1;
  v3 = sub_1BE4BF11C(&qword_1EBDABE60, &unk_1BE54E1D0);
  v4 = sub_1BE4CE78C(v3);
  v122 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  sub_1BE4CE770();
  MEMORY[0x1EEE9AC00](v7, v8);
  sub_1BE4CE764();
  v141 = v9;
  v10 = sub_1BE4CE71C();
  v127 = type metadata accessor for OBKSheetData.BulletPoint(v10);
  sub_1BE4C7500();
  v139 = v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  sub_1BE4CE5E4();
  v140 = v14;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v15, v16);
  sub_1BE4CE764();
  v125 = v17;
  v18 = sub_1BE4BF11C(&qword_1EBDABE68, &qword_1BE54E470);
  v19 = sub_1BE4C7570(v18);
  MEMORY[0x1EEE9AC00](v19, v20);
  v132 = v121 - v21;
  sub_1BE4CE71C();
  v22 = sub_1BE54AF6C();
  v23 = sub_1BE4C7570(v22);
  MEMORY[0x1EEE9AC00](v23, v24);
  sub_1BE4C757C();
  v134 = v26 - v25;
  sub_1BE4CE71C();
  v131 = sub_1BE54AD8C();
  sub_1BE4C7500();
  v137 = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  sub_1BE4C757C();
  v124 = v31 - v30;
  sub_1BE4CE71C();
  v32 = sub_1BE54C6BC();
  v33 = sub_1BE4C7570(v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  sub_1BE4C757C();
  v37 = v36 - v35;
  v38 = sub_1BE54C69C();
  v39 = sub_1BE4C7570(v38);
  MEMORY[0x1EEE9AC00](v39, v40);
  sub_1BE4C757C();
  sub_1BE54ADAC();
  sub_1BE4C7500();
  v135 = v42;
  v136 = v41;
  MEMORY[0x1EEE9AC00](v41, v43);
  sub_1BE4CE5E4();
  v123 = v44;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v45, v46);
  sub_1BE4CE710();
  v130 = v47;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = v121 - v50;
  sub_1BE54C68C();
  sub_1BE54C67C();
  v53 = v1[5];
  v52 = v1[6];
  v138 = v1;
  sub_1BE4C52F4(v1 + 2, v53);
  sub_1BE4CE704();
  v54(v53, v52);
  sub_1BE54C66C();

  _s26GenerativePartnerServiceUI0aB17SettingsDeepLinksO11DestinationO8rawValueSSvg_0();
  sub_1BE54C67C();
  sub_1BE54C6AC();
  if (qword_1EBDABA88 != -1)
  {
    sub_1BE4CE5C4(&qword_1EBDABA88);
  }

  v55 = v131;
  v129 = sub_1BE4C52BC(v131, qword_1EBDB0C08);
  v56 = *(v137 + 2);
  v137 += 16;
  v133 = v56;
  v57 = v124;
  v56(v124, v129, v55);
  v58 = v134;
  sub_1BE54AF2C();
  v126 = v51;
  v59 = sub_1BE4CE690();
  sub_1BE4CE6D0(v59, v60, v61, v58, v57);
  sub_1BE54C68C();
  sub_1BE4CE7BC();
  sub_1BE54C67C();
  v62 = v138[5];
  v63 = v138[6];
  sub_1BE4CE670(v138 + 2, v62);
  v64(v62, v63);
  sub_1BE54C66C();

  sub_1BE54C67C();
  v65 = v37;
  sub_1BE54C6AC();
  v66 = v129;
  v133(v57, v129, v55);
  v67 = v58;
  sub_1BE54AF2C();
  v68 = v132;
  sub_1BE4CE6EC();
  sub_1BE4CE6D0(v69, v70, v71, v67, v57);
  sub_1BE4CE728();
  sub_1BE4C63F8(v72, v73, v74, v136);
  sub_1BE4BF11C(&qword_1EBDABE70, &qword_1BE54E1E0);
  sub_1BE4CE870();
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1BE54DC10;
  v122 = v75;
  v76 = v75 + v68;
  v121[1] = v65;
  sub_1BE54C65C();
  v133(v57, v66, v55);
  v77 = v134;
  sub_1BE54AF2C();
  sub_1BE4CE6EC();
  sub_1BE4CE6D0(v78, v79, v80, v77, v57);
  sub_1BE54C68C();
  sub_1BE54C67C();
  v81 = v138;
  v83 = v138[5];
  v82 = v138[6];
  sub_1BE4C52F4(v138 + 2, v83);
  sub_1BE4CE704();
  v84(v83, v82);
  sub_1BE54C66C();

  sub_1BE54C67C();
  v85 = v81[5];
  v86 = v81[6];
  sub_1BE4C52F4(v81 + 2, v85);
  sub_1BE4CE704();
  v87(v85, v86);
  sub_1BE54C66C();

  sub_1BE54C67C();
  sub_1BE54C6AC();
  v133(v57, v129, v131);
  sub_1BE54AF2C();
  v88 = v123;
  sub_1BE4CE6EC();
  sub_1BE54ADBC();
  v89 = v136;
  v90 = v135 + 32;
  v91 = *(v135 + 32);
  v92 = v125;
  v91(v125, v130, v136);
  v93 = v127;
  v94 = v92 + *(v127 + 20);
  v135 = v90;
  v137 = v91;
  v91(v94, v88, v89);
  v95 = (v92 + *(v93 + 24));
  *v95 = 0xD000000000000010;
  v95[1] = 0x80000001BE5531F0;
  sub_1BE4CD62C(v92, v76);
  sub_1BE4CE728();
  sub_1BE4C63F8(v96, v97, v98, v93);
  sub_1BE4CAD18(v138, v76 + v67);
  v99 = 0;
  v100 = 0;
  v101 = MEMORY[0x1E69E7CC0];
  v102 = v93;
  do
  {
    v103 = v99;
    v104 = v141;
    sub_1BE4CD474(v76 + v100 * v67, v141);
    sub_1BE4CD5C4(v104, v2, &qword_1EBDABE60, &unk_1BE54E1D0);
    if (sub_1BE4C63BC(v2, 1, v93) == 1)
    {
      sub_1BE4CD4E4(v2);
    }

    else
    {
      sub_1BE4CD62C(v2, v140);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v110 = sub_1BE4CE7AC();
        v101 = sub_1BE541A70(v110, v111, v112, v101);
      }

      v106 = v101[2];
      v105 = v101[3];
      if (v106 >= v105 >> 1)
      {
        v101 = sub_1BE541A70((v105 > 1), v106 + 1, 1, v101);
      }

      v101[2] = v106 + 1;
      sub_1BE4CE7CC();
      sub_1BE4CD62C(v109, v101 + v107 + *(v108 + 72) * v106);
      v93 = v102;
    }

    v99 = 1;
    v100 = 1;
  }

  while ((v103 & 1) == 0);
  swift_setDeallocating();
  sub_1BE52B734();
  v113 = type metadata accessor for OBKSheetData(0);
  v114 = v128;
  v115 = v138;
  sub_1BE4CB654(v128 + v113[8]);
  type metadata accessor for OBKSheetData.ButtonConfiguration(0);
  sub_1BE4CE728();
  sub_1BE4C63F8(v116, v117, v118, v119);
  sub_1BE4CB988(v115, v114 + v113[9]);
  (v137)(v114, v126, v136);
  result = sub_1BE4CD5C4(v132, v114 + v113[5], &qword_1EBDABE68, &qword_1BE54E470);
  *(v114 + v113[6]) = v101;
  *(v114 + v113[7]) = 0;
  return result;
}

uint64_t sub_1BE4CAD18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v84 = type metadata accessor for OBKSheetData.BulletPoint(0);
  v4 = MEMORY[0x1EEE9AC00](v84, v3);
  v74 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v72 - v7);
  v9 = sub_1BE54AF6C();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v82 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE54AD8C();
  v80 = *(v12 - 8);
  v81 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v79 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE54C6BC();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v17 = sub_1BE54C69C();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v19 = sub_1BE54ADAC();
  v77 = *(v19 - 8);
  v78 = v19;
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v75 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = &v72 - v25;
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v30 = &v72 - v29;
  MEMORY[0x1EEE9AC00](v28, v31);
  v33 = &v72 - v32;
  v35 = a1[5];
  v34 = a1[6];
  sub_1BE4C52F4(a1 + 2, v35);
  (*(v34 + 216))(&v85, v35, v34);
  v36 = v85 >> 6;
  if (!v36)
  {
    v75 = v30;
    v76 = v85;
    v72 = v8;
    sub_1BE54C68C();
    sub_1BE54C67C();
    v50 = a1[5];
    v51 = a1[6];
    sub_1BE4C52F4(a1 + 2, v50);
    (*(v51 + 16))(v50, v51);
    sub_1BE54C66C();

    sub_1BE54C67C();
    sub_1BE54C6AC();
    if (qword_1EBDABA88 != -1)
    {
      swift_once();
    }

    v52 = v81;
    v53 = sub_1BE4C52BC(v81, qword_1EBDB0C08);
    v54 = v79;
    v73 = *(v80 + 2);
    v74 = v53;
    v73(v79, v53, v52);
    sub_1BE54AF2C();
    v80 = v33;
    sub_1BE54ADBC();
    sub_1BE54C68C();
    sub_1BE54C67C();
    v55 = a1[5];
    v56 = a1[6];
    sub_1BE4C52F4(a1 + 2, v55);
    (*(v56 + 16))(v55, v56);
    sub_1BE54C66C();

    sub_1BE54C67C();
    sub_1BE4C52F4(a1 + 2, a1[5]);
    LLMProvider.localizedAttributionDisplayName()();
    sub_1BE54C66C();

    sub_1BE54C67C();
    sub_1BE54C6AC();
    v73(v54, v74, v52);
    sub_1BE54AF2C();
    v57 = v75;
    sub_1BE54ADBC();
    if (v76)
    {
      v58 = v78;
      v59 = *(v77 + 32);
      v60 = v72;
      v59(v72, v80, v78);
      v61 = v84;
      v59(v60 + *(v84 + 20), v57, v58);
      v62 = (v60 + *(v61 + 24));
      *v62 = 0xD00000000000001ELL;
      v62[1] = 0x80000001BE553330;
      v63 = v83;
      sub_1BE4CD62C(v60, v83);
      v47 = v63;
      v48 = 0;
      v49 = v61;
      return sub_1BE4C63F8(v47, v48, 1, v49);
    }

    v70 = v78;
    v71 = *(v77 + 8);
    v71(v57, v78);
    v71(v80, v70);
LABEL_16:
    v47 = v83;
    v49 = v84;
    v48 = 1;
    return sub_1BE4C63F8(v47, v48, 1, v49);
  }

  if (v36 == 1)
  {
    v76 = v85;
    v37 = v79;
    sub_1BE54C65C();
    if (qword_1EBDABA88 != -1)
    {
      swift_once();
    }

    v38 = v81;
    v39 = sub_1BE4C52BC(v81, qword_1EBDB0C08);
    v72 = *(v80 + 2);
    v73 = v39;
    v72(v37, v39, v38);
    sub_1BE54AF2C();
    v80 = v26;
    sub_1BE54ADBC();
    sub_1BE54C68C();
    sub_1BE54C67C();
    sub_1BE4C52F4(a1 + 2, a1[5]);
    LLMProvider.localizedAttributionDisplayName()();
    sub_1BE54C66C();

    sub_1BE54C67C();
    sub_1BE54C6AC();
    v72(v37, v73, v38);
    sub_1BE54AF2C();
    v40 = v75;
    sub_1BE54ADBC();
    if (v76)
    {
      v41 = v78;
      v42 = *(v77 + 32);
      v43 = v74;
      v42(v74, v80, v78);
      v44 = v84;
      v42((v43 + *(v84 + 20)), v40, v41);
      v45 = (v43 + *(v44 + 24));
      *v45 = 0xD000000000000016;
      v45[1] = 0x80000001BE553290;
      v46 = v83;
      sub_1BE4CD62C(v43, v83);
      v47 = v46;
      v48 = 0;
      v49 = v44;
      return sub_1BE4C63F8(v47, v48, 1, v49);
    }

    v67 = *(v77 + 8);
    v68 = v40;
    v69 = v78;
    v67(v68, v78);
    v67(v80, v69);
    goto LABEL_16;
  }

  v64 = v83;
  v65 = v84;

  return sub_1BE4C63F8(v64, 1, 1, v65);
}

uint64_t sub_1BE4CB654@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v3 = sub_1BE54AF6C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = sub_1BE54AD8C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE54C6BC();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v12 = sub_1BE54C69C();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  sub_1BE54C68C();
  sub_1BE54C67C();
  v14 = *(v1 + 40);
  v15 = *(v1 + 48);
  sub_1BE4C52F4((v2 + 16), *(v2 + 40));
  (*(v15 + 16))(v14, v15);
  sub_1BE54C66C();

  sub_1BE54C67C();
  sub_1BE54C6AC();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v16 = sub_1BE4C52BC(v5, qword_1EBDB0C08);
  (*(v6 + 16))(v9, v16, v5);
  sub_1BE54AF2C();
  v17 = v25;
  sub_1BE54ADBC();
  v18 = v17;
  if (qword_1EBDABA48 != -1)
  {
    swift_once();
  }

  v20 = qword_1EBDB0BA8;
  v19 = unk_1EBDB0BB0;
  v21 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);
  v22 = (v18 + v21[7]);
  *(v18 + v21[5]) = 1;
  *v22 = v20;
  v22[1] = v19;
  v23 = (v18 + v21[6]);
  *v23 = sub_1BE4CE014;
  v23[1] = v2;
}

uint64_t sub_1BE4CB988@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[5];
  v4 = a1[6];
  sub_1BE4C52F4(a1 + 2, v3);
  (*(v4 + 216))(&v8, v3, v4);
  if (v8 > 0x3Fu)
  {
    v5 = 1;
  }

  else
  {
    sub_1BE4CBA44(a2);
    v5 = 0;
  }

  v6 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);

  return sub_1BE4C63F8(a2, v5, 1, v6);
}

id sub_1BE4CBA44@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = sub_1BE54AF6C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE54AD8C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE54C6BC();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v12 = sub_1BE54C69C();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v14 = sub_1BE54ADAC();
  v29 = *(v14 - 8);
  v30 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE54C68C();
  sub_1BE54C67C();
  v19 = *(v1 + 5);
  v18 = *(v1 + 6);
  v32 = v1;
  sub_1BE4C52F4(v1 + 2, v19);
  (*(v18 + 16))(v19, v18);
  sub_1BE54C66C();

  sub_1BE54C67C();
  sub_1BE54C6AC();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v20 = sub_1BE4C52BC(v5, qword_1EBDB0C08);
  (*(v6 + 16))(v9, v20, v5);
  sub_1BE54AF2C();
  sub_1BE54ADBC();
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v22 = result;
    v23 = [result isExternalIntelligenceSignInAllowed];

    v24 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);
    v25 = v31;
    v26 = (v31 + v24[7]);
    (*(v29 + 32))(v31, v17, v30);
    *(v25 + v24[5]) = v23;
    *v26 = 0;
    v26[1] = 0;
    v27 = (v25 + v24[6]);
    v28 = v32;
    *v27 = sub_1BE4CE004;
    v27[1] = v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BE4CBE14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE4BF11C(&qword_1EBDABE60, &unk_1BE54E1D0);
  v5 = sub_1BE4CE78C(v4);
  v186 = v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  sub_1BE4CE5E4();
  v192 = v8;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_1BE4CE764();
  v190 = v11;
  v12 = sub_1BE4CE71C();
  v191 = type metadata accessor for OBKSheetData.BulletPoint(v12);
  sub_1BE4C7500();
  v183 = v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  sub_1BE4CE5E4();
  v182 = v16;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v17, v18);
  sub_1BE4CE764();
  v188 = v19;
  v20 = sub_1BE4BF11C(&qword_1EBDABE68, &qword_1BE54E470);
  v21 = sub_1BE4C7570(v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v196 = &v180 - v23;
  sub_1BE4CE71C();
  v24 = sub_1BE54AF6C();
  v25 = sub_1BE4C7570(v24);
  MEMORY[0x1EEE9AC00](v25, v26);
  sub_1BE4C757C();
  v194 = v28 - v27;
  sub_1BE4CE71C();
  v198 = sub_1BE54AD8C();
  sub_1BE4C7500();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  sub_1BE4C757C();
  v35 = v34 - v33;
  sub_1BE4CE71C();
  v36 = sub_1BE54C6BC();
  v37 = sub_1BE4C7570(v36);
  MEMORY[0x1EEE9AC00](v37, v38);
  sub_1BE4C757C();
  v41 = v40 - v39;
  v42 = sub_1BE54C69C();
  v43 = sub_1BE4C7570(v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  sub_1BE4C757C();
  v199 = sub_1BE54ADAC();
  sub_1BE4C7500();
  v189 = v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  sub_1BE4CE5E4();
  v187 = v48;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v49, v50);
  sub_1BE4CE710();
  v193 = v51;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v52, v53);
  sub_1BE4CE764();
  v195 = v54;
  v55 = v1[5];
  v56 = v1[6];
  sub_1BE4C52F4(v1 + 2, v55);
  (*(v56 + 216))(&v200, v55, v56);
  if (v200 == 128)
  {
    v181 = a1;
    sub_1BE54C68C();
    sub_1BE54C67C();
    v57 = sub_1BE4CE63C();
    v59 = v58(v57);
    sub_1BE4CE7DC(v59, v60);

    _s26GenerativePartnerServiceUI0aB17SettingsDeepLinksO11DestinationO8rawValueSSvg_0();
    sub_1BE54C67C();
    sub_1BE54C6AC();
    if (qword_1EBDABA88 != -1)
    {
      sub_1BE4CE5C4(&qword_1EBDABA88);
    }

    v61 = v198;
    v62 = sub_1BE4C52BC(v198, qword_1EBDB0C08);
    v63 = *(v30 + 16);
    v197 = v30 + 16;
    v184 = v63;
    v185 = v62;
    v63(v35, v62, v61);
    sub_1BE54AF2C();
    sub_1BE4CE5F8();
    sub_1BE4CE6D0(v64, v65, v66, v67, v68);
    sub_1BE54C68C();
    sub_1BE54C67C();
    v70 = v1[5];
    v69 = v1[6];
    sub_1BE4C52F4(v1 + 2, v70);
    sub_1BE4CE704();
    v72 = v71(v70, v69);
    sub_1BE4CE7DC(v72, v73);

    sub_1BE54C67C();
    v74 = sub_1BE4CE63C();
    v76 = v75(v74);
    sub_1BE4CE7DC(v76, v77);

    sub_1BE54C67C();
    v78 = sub_1BE4CE63C();
    v80 = v79(v78);
    sub_1BE4CE7DC(v80, v81);

    sub_1BE54C67C();
    v82 = sub_1BE4CE63C();
    v84 = v83(v82);
    sub_1BE4CE7DC(v84, v85);

    sub_1BE54C67C();
    sub_1BE54C6AC();
    v87 = v184;
    v86 = v185;
    v184(v35, v185, v61);
    sub_1BE54AF2C();
    sub_1BE4CE5F8();
    sub_1BE54ADBC();
    sub_1BE4CE728();
    sub_1BE4C63F8(v88, v89, v90, v199);
    sub_1BE4BF11C(&qword_1EBDABE70, &qword_1BE54E1E0);
    v91 = (*(v186 + 80) + 32) & ~*(v186 + 80);
    v186 = swift_allocObject();
    *(v186 + 16) = xmmword_1BE54E1A0;
    sub_1BE54C65C();
    v87(v35, v86, v61);
    sub_1BE54AF2C();
    sub_1BE4CE5F8();
    sub_1BE4CE6D0(v92, v93, v94, v95, v96);
    sub_1BE54C68C();
    sub_1BE54C67C();
    v97 = v2[6];
    sub_1BE4C52F4(v2 + 2, v2[5]);
    v98 = sub_1BE4CE6C0();
    v100 = v99(v98, v97);
    sub_1BE4CE7DC(v100, v101);

    sub_1BE54C67C();
    v102 = v2[6];
    sub_1BE4C52F4(v2 + 2, v2[5]);
    v103 = sub_1BE4CE6C0();
    v105 = v104(v103, v102);
    sub_1BE4CE7DC(v105, v106);

    sub_1BE54C67C();
    sub_1BE54C6AC();
    v184(v35, v185, v198);
    sub_1BE54AF2C();
    v107 = v187;
    sub_1BE4CE5F8();
    sub_1BE54ADBC();
    v108 = v188;
    v109 = *(v189 + 32);
    v110 = v199;
    v109(v188, v193, v199);
    v111 = v191;
    v112 = v107;
    v113 = v186;
    v109(v108 + *(v191 + 20), v112, v110);
    v114 = (v108 + *(v111 + 24));
    *v114 = 0xD000000000000010;
    v114[1] = 0x80000001BE5531F0;
    sub_1BE4CD62C(v108, v113 + v91);
    sub_1BE4CE728();
    sub_1BE4C63F8(v115, v116, v117, v111);
    v118 = v113 + v91;
    v119 = v190;
    sub_1BE4CD474(v118, v190);
    v120 = v119;
    v121 = v192;
    sub_1BE4CD5C4(v120, v192, &qword_1EBDABE60, &unk_1BE54E1D0);
    if (sub_1BE4C63BC(v121, 1, v111) == 1)
    {
      sub_1BE4CD4E4(v121);
      v122 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v167 = v182;
      sub_1BE4CD62C(v121, v182);
      v122 = MEMORY[0x1E69E7CC0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v177 = sub_1BE4CE7AC();
        v122 = sub_1BE541A70(v177, v178, v179, v122);
      }

      v169 = v122[2];
      v168 = v122[3];
      if (v169 >= v168 >> 1)
      {
        v122 = sub_1BE541A70((v168 > 1), v169 + 1, 1, v122);
      }

      v122[2] = v169 + 1;
      sub_1BE4CE7CC();
      sub_1BE4CD62C(v167, v122 + v170 + *(v171 + 72) * v169);
    }

    swift_setDeallocating();
    sub_1BE52B734();
    v137 = type metadata accessor for OBKSheetData(0);
    v172 = v181;
    sub_1BE4C9B74(v181 + v137[8]);
    v173 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);
    v162 = v172;
    sub_1BE4CE728();
    sub_1BE4C63F8(v174, v175, v176, v173);
    sub_1BE4C63F8(v172 + v137[9], 1, 1, v173);
    v109(v172, v195, v199);
    result = sub_1BE4CD5C4(v196, v172 + v137[5], &qword_1EBDABE68, &qword_1BE54E470);
  }

  else
  {
    sub_1BE54C68C();
    sub_1BE54C67C();
    v123 = v41;
    v124 = v1[6];
    sub_1BE4C52F4(v1 + 2, v1[5]);
    v125 = sub_1BE4CE6C0();
    v127 = v126(v125, v124);
    sub_1BE4CE7DC(v127, v128);

    sub_1BE54C67C();
    sub_1BE54C6AC();
    if (qword_1EBDABA88 != -1)
    {
      sub_1BE4CE5C4(&qword_1EBDABA88);
    }

    v129 = v198;
    v130 = sub_1BE4C52BC(v198, qword_1EBDB0C08);
    v131 = *(v30 + 16);
    v196 = v130;
    v197 = v30 + 16;
    v195 = v131;
    v131(v35, v130, v129);
    sub_1BE54AF2C();
    sub_1BE4CE5F8();
    sub_1BE4CE6D0(v132, v133, v134, v135, v136);
    v137 = type metadata accessor for OBKSheetData(0);
    v193 = v137[5];
    sub_1BE54C68C();
    sub_1BE4CE7BC();
    sub_1BE54C67C();
    v192 = v123;
    sub_1BE4CE670(v2 + 2, v2[5]);
    v138 = sub_1BE4CE80C();
    v140 = v139(v138);
    sub_1BE4CE858(v140, v141);

    sub_1BE54C67C();
    sub_1BE4CE670(v2 + 2, v2[5]);
    v142 = sub_1BE4CE80C();
    v144 = v143(v142);
    sub_1BE4CE858(v144, v145);

    sub_1BE54C67C();
    sub_1BE4CE670(v2 + 2, v2[5]);
    v146 = sub_1BE4CE80C();
    v148 = v147(v146);
    sub_1BE4CE858(v148, v149);

    sub_1BE4CE7BC();
    sub_1BE54C67C();
    v150 = sub_1BE4CE818();
    sub_1BE4CE858(v150, v151);

    sub_1BE54C67C();
    v152 = sub_1BE4CE818();
    sub_1BE4CE858(v152, v153);

    sub_1BE54C67C();
    sub_1BE54C6AC();
    v195(v35, v196, v198);
    sub_1BE54AF2C();
    sub_1BE4CE5F8();
    sub_1BE54ADBC();
    sub_1BE4CE728();
    sub_1BE4C63F8(v154, v155, v156, v199);
    v157 = a1;
    sub_1BE4CCAFC(a1 + v137[8]);
    v158 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);
    sub_1BE4CE728();
    sub_1BE4C63F8(v159, v160, v161, v158);
    sub_1BE4CCCA8(v157 + v137[9]);
    v162 = v157;
    sub_1BE4CE728();
    result = sub_1BE4C63F8(v163, v164, v165, v158);
    v122 = 0;
  }

  *(v162 + v137[6]) = v122;
  *(v162 + v137[7]) = 0;
  return result;
}

id sub_1BE4CCAFC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE54ADAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE4CCFA8(v1, v7);
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v9 = result;
    v10 = [result isExternalIntelligenceSignInAllowed];

    if (qword_1EBDABA48 != -1)
    {
      swift_once();
    }

    v12 = qword_1EBDB0BA8;
    v11 = unk_1EBDB0BB0;
    v13 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);
    v14 = (a1 + v13[7]);
    (*(v4 + 32))(a1, v7, v3);
    *(a1 + v13[5]) = v10;
    *v14 = v12;
    v14[1] = v11;
    v15 = (a1 + v13[6]);
    *v15 = sub_1BE4CE024;
    v15[1] = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BE4CCCA8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE54AF6C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v22[0] = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE54AD8C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE54C6BC();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v13 = sub_1BE54C69C();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  sub_1BE54C68C();
  sub_1BE54C67C();
  v15 = *(v1 + 5);
  v16 = *(v1 + 6);
  sub_1BE4C52F4(v1 + 2, v15);
  (*(v16 + 16))(v15, v16);
  sub_1BE54C66C();

  sub_1BE54C67C();
  sub_1BE54C6AC();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v17 = sub_1BE4C52BC(v6, qword_1EBDB0C08);
  (*(v7 + 16))(v10, v17, v6);
  sub_1BE54AF2C();
  sub_1BE54ADBC();
  v18 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);
  v19 = (a1 + v18[7]);
  *(a1 + v18[5]) = 1;
  *v19 = 0;
  v19[1] = 0;
  v20 = (a1 + v18[6]);
  *v20 = sub_1BE4CE5BC;
  v20[1] = v1;
}

uint64_t sub_1BE4CCFA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_1BE54AF6C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = sub_1BE54AD8C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE54C6BC();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v12 = sub_1BE54C69C();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  sub_1BE54C68C();
  sub_1BE54C67C();
  v14 = a1[5];
  v15 = a1[6];
  sub_1BE4C52F4(a1 + 2, v14);
  (*(v15 + 16))(v14, v15);
  sub_1BE54C66C();

  sub_1BE54C67C();
  sub_1BE54C6AC();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v16 = sub_1BE4C52BC(v5, qword_1EBDB0C08);
  (*(v6 + 16))(v9, v16, v5);
  sub_1BE54AF2C();
  return sub_1BE54ADBC();
}

uint64_t sub_1BE4CD260(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1BE4CD35C(a3);
}

uint64_t sub_1BE4CD2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1BE4CD2F0(a3);
}

uint64_t sub_1BE4CD2F0(uint64_t a1)
{
  swift_unownedRetainStrong();
  v3 = a1;
  v4 = 0u;
  v5 = 0u;
  v6 = 2;
  sub_1BE4DC120(&v3);

  return sub_1BE4C6AB4(&v3);
}

uint64_t sub_1BE4CD35C(uint64_t a1)
{
  v2 = a1;
  swift_unownedRetainStrong();
  sub_1BE4DBCF0(v2, (v1 + 16));
}

uint64_t sub_1BE4CD3BC()
{
  swift_unownedRetainStrong();
  sub_1BE4C6918(v0 + 16, v2);
  v2[40] = 0;
  sub_1BE4DC120(v2);

  return sub_1BE4C6AB4(v2);
}

uint64_t sub_1BE4CD474(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDABE60, &unk_1BE54E1D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE4CD4E4(uint64_t a1)
{
  v2 = sub_1BE4BF11C(&qword_1EBDABE60, &unk_1BE54E1D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BE4CD58C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BE4CD5C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1BE4BF11C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BE4CD62C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OBKSheetData.BulletPoint(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t *sub_1BE4CD6B0(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe, v8);
    v9 = (v14 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1BE530F88(0, v6, v9);
    sub_1BE4CD908(v9, v6, a2, a1);
    v11 = v10;
  }

  else
  {
    v13 = swift_slowAlloc();

    v11 = sub_1BE4CD878(v13, v6, a2, a1);

    MEMORY[0x1BFB48AC0](v13, -1, -1);
  }

  return v11;
}

unint64_t *sub_1BE4CD878(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1BE4CD908(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1BE4CD908(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_34:
    v57 = 0;
    v27 = 0;
    v28 = v5 + 56;
    v29 = 1 << *(v5 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(v5 + 56);
    v51 = (v29 + 63) >> 6;
    v32 = v4 + 56;
LABEL_38:
    while (v31)
    {
      v33 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
LABEL_45:
      v59 = v33 | (v27 << 6);
      v36 = *(*(v5 + 48) + v59);
      sub_1BE54CD8C();
      sub_1BE54C77C();

      v37 = sub_1BE54CDAC();
      v38 = -1 << *(v4 + 32);
      v39 = v37 & ~v38;
      if ((*(v32 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
      {
        v55 = v31;
        v40 = ~v38;
        v41 = v36;
        while (1)
        {
          v42 = 0xEF6E6F6974617267;
          v43 = 0x65746E4969726973;
          switch(*(*(v4 + 48) + v39))
          {
            case 1:
              v43 = 0xD000000000000016;
              v42 = 0x80000001BE552A90;
              break;
            case 2:
              v43 = 0xD000000000000013;
              v42 = 0x80000001BE552AB0;
              break;
            case 3:
              v43 = 0xD000000000000018;
              v42 = 0x80000001BE552AD0;
              break;
            default:
              break;
          }

          v44 = 0x65746E4969726973;
          v45 = 0xEF6E6F6974617267;
          switch(v41)
          {
            case 1:
              v44 = 0xD000000000000016;
              v45 = 0x80000001BE552A90;
              break;
            case 2:
              v44 = 0xD000000000000013;
              v45 = 0x80000001BE552AB0;
              break;
            case 3:
              v44 = 0xD000000000000018;
              v45 = 0x80000001BE552AD0;
              break;
            default:
              break;
          }

          if (v43 == v44 && v42 == v45)
          {
            break;
          }

          v47 = sub_1BE54CCDC();

          if (v47)
          {
            goto LABEL_63;
          }

          v39 = (v39 + 1) & v40;
          v4 = a4;
          if (((*(v32 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
          {
            v5 = a3;
            v31 = v55;
            goto LABEL_38;
          }
        }

LABEL_63:
        v31 = v55;
        *(result + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
        v48 = __OFADD__(v57++, 1);
        v5 = a3;
        v4 = a4;
        if (v48)
        {
          __break(1u);
LABEL_66:
          v6 = v57;
          goto LABEL_67;
        }
      }
    }

    v34 = v27;
    while (1)
    {
      v27 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v27 >= v51)
      {
        goto LABEL_66;
      }

      v35 = *(v28 + 8 * v27);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v31 = (v35 - 1) & v35;
        goto LABEL_45;
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v50 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v54 = v9 & *(a4 + 56);
    v49 = (v8 + 63) >> 6;
    v58 = a3 + 56;
LABEL_6:
    while (v54)
    {
      v10 = __clz(__rbit64(v54));
      v54 &= v54 - 1;
LABEL_13:
      v13 = *(*(v4 + 48) + (v10 | (v7 << 6)));
      sub_1BE54CD8C();
      sub_1BE54C77C();

      v14 = sub_1BE54CDAC();
      v15 = -1 << *(v5 + 32);
      v16 = v14 & ~v15;
      v17 = v16 >> 6;
      v18 = 1 << v16;
      if (((1 << v16) & *(v58 + 8 * (v16 >> 6))) != 0)
      {
        v56 = v6;
        v19 = ~v15;
        v20 = v13;
        while (1)
        {
          v21 = 0xEF6E6F6974617267;
          v22 = 0x65746E4969726973;
          switch(*(*(v5 + 48) + v16))
          {
            case 1:
              v22 = 0xD000000000000016;
              v21 = 0x80000001BE552A90;
              break;
            case 2:
              v22 = 0xD000000000000013;
              v21 = 0x80000001BE552AB0;
              break;
            case 3:
              v22 = 0xD000000000000018;
              v21 = 0x80000001BE552AD0;
              break;
            default:
              break;
          }

          v23 = 0x65746E4969726973;
          v24 = 0xEF6E6F6974617267;
          switch(v20)
          {
            case 1:
              v23 = 0xD000000000000016;
              v24 = 0x80000001BE552A90;
              break;
            case 2:
              v23 = 0xD000000000000013;
              v24 = 0x80000001BE552AB0;
              break;
            case 3:
              v23 = 0xD000000000000018;
              v24 = 0x80000001BE552AD0;
              break;
            default:
              break;
          }

          if (v22 == v23 && v21 == v24)
          {
            break;
          }

          v26 = sub_1BE54CCDC();

          if (v26)
          {
            goto LABEL_31;
          }

          v16 = (v16 + 1) & v19;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          v5 = a3;
          if ((*(v58 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
          {
            v4 = a4;
            v6 = v56;
            goto LABEL_6;
          }
        }

LABEL_31:
        result[v17] |= v18;
        v6 = v56 + 1;
        v5 = a3;
        v4 = a4;
        if (__OFADD__(v56, 1))
        {
          __break(1u);
          goto LABEL_34;
        }
      }
    }

    v11 = v7;
    while (1)
    {
      v7 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v7 >= v49)
      {
LABEL_67:

        sub_1BE531E18(result, a2, v6, v5);
        return;
      }

      v12 = *(v50 + 8 * v7);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v54 = (v12 - 1) & v12;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BE4CE05C(uint64_t a1)
{
  result = sub_1BE54ADAC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BE4CE100(uint64_t a1)
{
  sub_1BE54ADAC();
  if (v1 <= 0x3F)
  {
    sub_1BE4CE278(319, &qword_1EBDABEA0, MEMORY[0x1E6968E10]);
    if (v2 <= 0x3F)
    {
      sub_1BE4CE214(319);
      if (v3 <= 0x3F)
      {
        sub_1BE4CE518(319, &qword_1EBDABEB8, &type metadata for OBKSheetData.LegalLink);
        if (v4 <= 0x3F)
        {
          sub_1BE4CE278(319, &qword_1EBDABEC0, type metadata accessor for OBKSheetData.ButtonConfiguration);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BE4CE214(uint64_t a1)
{
  if (!qword_1EBDABEA8)
  {
    sub_1BE4C5948(&qword_1EBDABEB0, "̎");
    v1 = sub_1BE54C9EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBDABEA8);
    }
  }
}

void sub_1BE4CE278(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE54C9EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for OBKSheetData.LegalLink(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for OBKSheetData.LegalLink(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1BE4CE464(uint64_t a1)
{
  sub_1BE54ADAC();
  if (v1 <= 0x3F)
  {
    sub_1BE4C65D8();
    if (v2 <= 0x3F)
    {
      sub_1BE4CE518(319, &qword_1EDDD6558, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BE4CE518(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1BE54C9EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BE4CE568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDABED8;
  if (!qword_1EBDABED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABED8);
  }

  return result;
}

uint64_t sub_1BE4CE5C4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1BE4CE60C()
{

  return sub_1BE54ADBC();
}

uint64_t sub_1BE4CE63C()
{
  v1 = *(v0 + 40);
  sub_1BE4C52F4((v0 + 16), v1);
  return v1;
}

uint64_t sub_1BE4CE6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1BE54ADBC();
}

uint64_t sub_1BE4CE734()
{

  return sub_1BE54ADAC();
}

uint64_t sub_1BE4CE7DC(uint64_t a1, uint64_t a2)
{

  return sub_1BE54C66C();
}

uint64_t sub_1BE4CE818()
{
  sub_1BE4C52F4((v0 + 16), *(v0 + 40));

  return LLMProvider.localizedAttributionDisplayName()()._countAndFlagsBits;
}

uint64_t sub_1BE4CE858(uint64_t a1, uint64_t a2)
{

  return sub_1BE54C66C();
}

uint64_t sub_1BE4CE8A4()
{

  return sub_1BE54ADAC();
}

uint64_t sub_1BE4CE918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE4D01DC(a1, a2, a3);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BE4CE97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE4D01DC(a1, a2, a3);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BE4CE9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE4D01DC(a1, a2, a3);
  sub_1BE54BDDC();
  __break(1u);
}

uint64_t sub_1BE4CEA08(__int128 *a1, uint64_t a2, char a3, char a4, char a5)
{
  sub_1BE4BF094(a1, v5 + 16);
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;
  *(v5 + 65) = a4;
  *(v5 + 66) = a5;
  swift_unownedRetain();

  return v5;
}

id sub_1BE4CEA6C(uint64_t a1)
{
  v3 = sub_1BE4BF11C(&qword_1EBDABE88, "\u070E");
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  sub_1BE4CE5E4();
  v74 = v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  v72 = &v66 - v8;
  v73 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);
  sub_1BE4C7470();
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_1BE4CE5E4();
  v68 = v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v67 = &v66 - v14;
  type metadata accessor for OBKSheetData.BulletPoint(0);
  sub_1BE4C7500();
  v76 = v16;
  v77 = v15;
  MEMORY[0x1EEE9AC00](v15, v17);
  sub_1BE4C757C();
  v20 = v19 - v18;
  sub_1BE54ADAC();
  sub_1BE4C7500();
  MEMORY[0x1EEE9AC00](v21, v22);
  sub_1BE4C757C();
  v25 = v24 - v23;
  v27 = *(v26 + 16);
  v71 = v28;
  v29 = v27;
  (v27)(v25, a1);
  v30 = sub_1BE54C72C();
  v78 = v31;
  v79 = v30;
  v32 = sub_1BE4CF020(a1);
  v34 = v33;
  v35 = v1[5];
  v36 = v1[6];
  v75 = v1;
  sub_1BE4C52F4(v1 + 2, v35);
  v37 = (*(v36 + 88))(v35, v36);
  v38 = objc_allocWithZone(MEMORY[0x1E69B7D70]);
  v39 = sub_1BE4D0A9C(v79, v78, v32, v34, v37);
  result = [v39 view];
  if (result)
  {
    v41 = result;
    v42 = [objc_opt_self() systemBlueColor];
    [v41 setTintColor_];

    v69 = type metadata accessor for OBKSheetData(0);
    v70 = a1;
    v43 = *(a1 + *(v69 + 24));
    v79 = v39;
    v44 = v71;
    if (v43)
    {
      v45 = *(v43 + 16);
      if (v45)
      {
        v46 = *(v77 + 20);
        v77 = v20 + *(v77 + 24);
        v78 = v46;
        v47 = v43 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
        v76 = *(v76 + 72);
        do
        {
          sub_1BE4D0D88(v47, v20, type metadata accessor for OBKSheetData.BulletPoint);
          v29(v25, v20, v44);
          sub_1BE54C72C();
          v48 = sub_1BE54C6DC();

          v29(v25, v20 + v78, v44);
          sub_1BE54C72C();
          v49 = v29;
          v50 = v44;
          v51 = sub_1BE54C6DC();

          v52 = sub_1BE54C6DC();
          sub_1BE4D0BA0(v20, type metadata accessor for OBKSheetData.BulletPoint);
          [v79 addBulletedListItemWithTitle:v48 description:v51 symbolName:v52];

          v44 = v50;
          v29 = v49;

          v47 += v76;
          --v45;
        }

        while (v45);
      }
    }

    v54 = v69;
    v53 = v70;
    v55 = *(v70 + *(v69 + 28));
    v56 = v72;
    v57 = v73;
    v58 = v79;
    if (v55 != 2)
    {
      if (v55)
      {
        sub_1BE4CF348(v79);
      }

      else
      {
        sub_1BE4CF214(v79);
      }
    }

    sub_1BE4C6EFC(v53 + *(v54 + 32), v56, &qword_1EBDABE88, "\u070E");
    if (sub_1BE4C63BC(v56, 1, v57) == 1)
    {
      sub_1BE4D0E58(v56, &qword_1EBDABE88, "\u070E");
    }

    else
    {
      v59 = v67;
      sub_1BE4D0B3C(v56, v67);
      v60 = [objc_opt_self() boldButton];
      sub_1BE4CFEE0(v60, v59, v58);

      sub_1BE4D0EB4();
      sub_1BE4D0BA0(v59, v61);
    }

    v62 = v74;
    sub_1BE4C6EFC(v53 + *(v54 + 36), v74, &qword_1EBDABE88, "\u070E");
    if (sub_1BE4C63BC(v62, 1, v57) == 1)
    {
      sub_1BE4D0E58(v62, &qword_1EBDABE88, "\u070E");
    }

    else
    {
      v63 = v68;
      sub_1BE4D0B3C(v62, v68);
      v64 = [objc_opt_self() linkButton];
      sub_1BE4CFEE0(v64, v63, v58);

      sub_1BE4D0EB4();
      sub_1BE4D0BA0(v63, v65);
    }

    return v58;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BE4CF020(uint64_t a1)
{
  v2 = sub_1BE4BF11C(&qword_1EBDABE68, &qword_1BE54E470);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v18 - v4;
  v6 = sub_1BE54ADAC();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v18 - v13;
  v15 = type metadata accessor for OBKSheetData(0);
  sub_1BE4C6EFC(a1 + *(v15 + 20), v5, &qword_1EBDABE68, &qword_1BE54E470);
  if (sub_1BE4C63BC(v5, 1, v6) == 1)
  {
    sub_1BE4D0E58(v5, &qword_1EBDABE68, &qword_1BE54E470);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v14, v5, v6);
    (*(v7 + 16))(v11, v14, v6);
    v16 = sub_1BE54C72C();
    (*(v7 + 8))(v14, v6);
  }

  return v16;
}

void sub_1BE4CF214(void *a1)
{
  v3 = [a1 buttonTray];
  v4 = sub_1BE54C80C();
  [v3 setPrivacyLinkForBundles_];

  v5 = [a1 buttonTray];
  v7[4] = sub_1BE4D0BF8;
  v8 = v1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1BE4D0388;
  v7[3] = &unk_1F3CCB440;
  v6 = _Block_copy(v7);

  [v5 setPrivacyLinkCallback_];
  _Block_release(v6);
}

void sub_1BE4CF348(void *a1)
{
  v89 = a1;
  v88 = type metadata accessor for CaptionWithModalLink(0);
  MEMORY[0x1EEE9AC00](v88, v2);
  v90 = (v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1BE54AF6C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v87 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1BE54AD8C();
  v101 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105, v7);
  v86 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE54C6BC();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v85 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE54C69C();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v14 = sub_1BE54ADAC();
  v97 = *(v14 - 8);
  v98 = v14;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v96 = v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v95 = v82 - v20;
  MEMORY[0x1EEE9AC00](v19, v21);
  v94 = v82 - v22;
  v23 = sub_1BE54AE3C();
  v24 = *(v23 - 8);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v83 = v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v27;
  MEMORY[0x1EEE9AC00](v26, v28);
  v104 = v82 - v29;
  v30 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v34 = v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v32, v35);
  v38 = v82 - v37;
  MEMORY[0x1EEE9AC00](v36, v39);
  v41 = v82 - v40;
  v43 = v1[5];
  v42 = v1[6];
  v99 = v1;
  sub_1BE4C52F4(v1 + 2, v43);
  (*(v42 + 176))(v43, v42);
  v44 = sub_1BE4C63BC(v41, 1, v23);
  v103 = v24;
  if (v44 == 1)
  {
    sub_1BE4D0E58(v41, &qword_1EBDABEE8, &unk_1BE54F050);
    v45 = 0;
    v93 = 0xE000000000000000;
  }

  else
  {
    v45 = sub_1BE54ADEC();
    v93 = v46;
    (*(v24 + 8))(v41, v23);
  }

  v47 = v99;
  v48 = v99[5];
  v49 = v99[6];
  sub_1BE4C52F4(v99 + 2, v48);
  (*(v49 + 176))(v48, v49);
  v50 = sub_1BE4C63BC(v38, 1, v23);
  v82[1] = v45;
  if (v50 == 1)
  {
    sub_1BE54AE1C();
    if (sub_1BE4C63BC(v34, 1, v23) == 1)
    {
      goto LABEL_16;
    }

    (*(v103 + 32))(v104, v34, v23);
    if (sub_1BE4C63BC(v38, 1, v23) != 1)
    {
      sub_1BE4D0E58(v38, &qword_1EBDABEE8, &unk_1BE54F050);
    }
  }

  else
  {
    (*(v103 + 32))(v104, v38, v23);
  }

  v92 = v23;
  sub_1BE4C52F4(v47 + 2, v47[5]);
  v51 = LLMProvider.localizedTermsTitle()();
  sub_1BE54C68C();
  sub_1BE54C67C();
  countAndFlagsBits = v51._countAndFlagsBits;
  object = v51._object;
  sub_1BE54C66C();
  sub_1BE54C67C();
  sub_1BE54C6AC();
  v52 = v47;
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v53 = v105;
  v54 = sub_1BE4C52BC(v105, qword_1EBDB0C08);
  v101 = *(v101 + 16);
  v102 = v54;
  v55 = v86;
  (v101)(v86, v54, v53);
  sub_1BE54AF2C();
  sub_1BE54ADBC();
  sub_1BE54C68C();
  v82[0] = "s of use link title";
  sub_1BE54C67C();
  v56 = v47[5];
  v57 = v47[6];
  sub_1BE4C52F4(v47 + 2, v56);
  (*(v57 + 16))(v56, v57);
  sub_1BE54C66C();

  sub_1BE54C67C();
  sub_1BE54C66C();
  sub_1BE54C67C();
  sub_1BE54C6AC();
  (v101)(v55, v102, v105);
  sub_1BE54AF2C();
  sub_1BE54ADBC();
  sub_1BE54C68C();
  sub_1BE54C67C();
  v58 = v47[5];
  v59 = v47[6];
  sub_1BE4C52F4(v47 + 2, v58);
  (*(v59 + 16))(v58, v59);
  sub_1BE54C66C();

  sub_1BE54C67C();
  sub_1BE54C66C();
  sub_1BE54C67C();
  sub_1BE54C66C();
  sub_1BE54C67C();
  sub_1BE54C6AC();
  (v101)(v55, v102, v105);
  sub_1BE54AF2C();
  v60 = v96;
  sub_1BE54ADBC();
  v61 = v88;
  v62 = v90;
  (*(v97 + 16))(v90 + *(v88 + 20), v60, v98);
  v63 = v103;
  v64 = v83;
  v65 = v92;
  (*(v103 + 16))(v83, v104, v92);
  v66 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v67 = (v84 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  (*(v63 + 32))(v68 + v66, v64, v65);
  v69 = v89;
  *(v68 + v67) = v89;
  *(v68 + ((v67 + 15) & 0xFFFFFFFFFFFFFFF8)) = v52;
  *v62 = swift_getKeyPath();
  sub_1BE4BF11C(&qword_1EBDABEF0, &qword_1BE54E460);
  swift_storeEnumTagMultiPayload();
  v70 = (v62 + *(v61 + 24));
  *v70 = sub_1BE4D0C18;
  v70[1] = v68;
  v71 = v62 + *(v61 + 28);
  v106 = 0;
  v72 = v69;

  sub_1BE54C23C();
  v73 = v108;
  *v71 = v107;
  *(v71 + 1) = v73;
  v74 = objc_allocWithZone(sub_1BE4BF11C(&qword_1EBDABEF8, &qword_1BE54E468));
  v75 = sub_1BE54BB2C();
  v76 = [v75 view];
  if (v76)
  {
    v77 = v76;
    v78 = [objc_opt_self() clearColor];
    [v77 setBackgroundColor_];

    v79 = [v75 view];
    if (v79)
    {

      sub_1BE4D06D0(v79, v72);

      v80 = *(v97 + 8);
      v81 = v98;
      v80(v96, v98);
      v80(v95, v81);
      v80(v94, v81);
      (*(v63 + 8))(v104, v92);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1BE4CFEE0(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6, v10);
  v11 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE54ADAC();
  MEMORY[0x1EEE9AC00](v12, v13);
  (*(v15 + 16))(&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v16 = sub_1BE54C72C();
  sub_1BE4D0CD4(v16, v17, 0, a1);
  sub_1BE4D0D48(0, &qword_1EBDABF10, 0x1E69DC628);
  sub_1BE4D0D88(a2, v11, type metadata accessor for OBKSheetData.ButtonConfiguration);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  sub_1BE4D0B3C(v11, v19 + v18);
  v20 = sub_1BE54C9DC();
  [a1 addAction:v20 forControlEvents:64];

  [a1 setEnabled_];
  v21 = [a3 buttonTray];
  [v21 addButton_];
}

uint64_t sub_1BE4D0158()
{
  sub_1BE4C58A8((v0 + 16));
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDC0](v0, 67, 7);
}

unint64_t sub_1BE4D01DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDABEE0;
  if (!qword_1EBDABEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABEE0);
  }

  return result;
}

uint64_t sub_1BE4D0230(uint64_t a1)
{
  swift_unownedRetainStrong();
  v1 = sub_1BE4DB5F0();

  sub_1BE4D98B8(v1);
  v3 = v2;
  v5 = v4;

  if (v3)
  {

    type metadata accessor for GenerativePartnerServiceAnalytics();
    sub_1BE4BF11C(&qword_1EBDABD90, &unk_1BE54E420);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE54DC10;
    *(inited + 32) = 1802398060;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = sub_1BE54C6DC();
    *(inited + 56) = 0x6567617473;
    *(inited + 64) = 0xE500000000000000;
    sub_1BE4D9918(v5);
    v8 = sub_1BE54C6DC();

    *(inited + 72) = v8;
    sub_1BE4D0D48(0, &qword_1EBDABD98, 0x1E69E58C0);
    v9 = sub_1BE54C61C();
    sub_1BE52D9C4(2, v9);
  }

  return result;
}

uint64_t sub_1BE4D0388(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1BE4D03CC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_1BE54AE3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE54D74C(v10);
  sub_1BE4D0D48(0, v12, (v11 + 2104));
  (*(v6 + 16))(v9, a1, v5);
  v13 = sub_1BE4D0634(v9);
  [v13 setModalPresentationStyle_];
  [a2 presentViewController:v13 animated:1 completion:0];
  swift_unownedRetainStrong();
  v14 = sub_1BE4DB5F0();

  sub_1BE4D98B8(v14);
  v16 = v15;
  v18 = v17;

  if (v16)
  {

    type metadata accessor for GenerativePartnerServiceAnalytics();
    sub_1BE4BF11C(&qword_1EBDABD90, &unk_1BE54E420);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE54DC10;
    *(inited + 32) = 1802398060;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = sub_1BE54C6DC();
    *(inited + 56) = 0x6567617473;
    *(inited + 64) = 0xE500000000000000;
    sub_1BE4D9918(v18);
    v20 = sub_1BE54C6DC();

    *(inited + 72) = v20;
    sub_1BE4D0D48(0, &qword_1EBDABD98, 0x1E69E58C0);
    v21 = sub_1BE54C61C();
    sub_1BE52D9C4(2, v21);
  }
}

id sub_1BE4D0634(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1BE54ADFC();
  v4 = [v2 initWithURL_];

  v5 = sub_1BE54AE3C();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void sub_1BE4D06D0(uint64_t a1, id a2)
{
  v3 = [a2 buttonTray];
  v4 = [v3 subviews];

  sub_1BE4D0D48(0, &qword_1EBDABF00, 0x1E69DD250);
  v5 = sub_1BE54C82C();

  v6 = sub_1BE4D0CB0(v5);
  for (i = 0; v6 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1BFB47FF0](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v8 = *(v5 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v11 = v8;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;

      [v10 insertArrangedSubview:a1 atIndex:0];

      return;
    }
  }
}

uint64_t sub_1BE4D08E0(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, void *a4)
{
  v7 = sub_1BE54B6DC();
  sub_1BE4C7500();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  sub_1BE4C757C();
  v14 = v13 - v12;
  a2();
  v15 = sub_1BE54B6CC();
  v17 = v16;
  result = (*(v9 + 8))(v14, v7);
  *a3 = v15;
  *a4 = v17;
  return result;
}

uint64_t sub_1BE4D09E8(uint64_t a1)
{
  sub_1BE54B70C();
  sub_1BE4C7500();
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1BE4C757C();
  (*(v6 + 16))(v5 - v4, a1);
  return sub_1BE54B96C();
}

id sub_1BE4D0A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1BE54C6DC();

  if (a4)
  {
    v9 = sub_1BE54C6DC();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithTitle:v8 detailText:v9 icon:a5];

  return v10;
}

uint64_t sub_1BE4D0B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE4D0BA0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1BE4C7470();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BE4D0C00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1BE4D0C18()
{
  v1 = *(sub_1BE54AE3C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1BE4D03CC(v0 + v2, v4, v5);
}

uint64_t sub_1BE4D0CB0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1BE54CBCC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_1BE4D0CD4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1BE54C6DC();

  [a4 setTitle:v6 forState:a3];
}

uint64_t sub_1BE4D0D48(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1BE4D0D88(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1BE4C7470();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BE4D0DE8(uint64_t a1)
{
  v3 = *(type metadata accessor for OBKSheetData.ButtonConfiguration(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BE4D086C(a1, v4);
}

uint64_t sub_1BE4D0E58(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1BE4BF11C(a2, a3);
  sub_1BE4C7470();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BE4D0F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1BE54BBFC();
  MEMORY[0x1EEE9AC00](v7, v8);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1BE54BC0C();
}

uint64_t sub_1BE4D1008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1BE54BBFC();
  MEMORY[0x1EEE9AC00](v7, v8);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1BE54BC0C();
}

uint64_t (*sub_1BE4D1100(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  sub_1BE4D92B0(a1, a2, a3);
  sub_1BE54B9FC();
  if (!v5)
  {
    return 0;
  }

  sub_1BE4D9838();
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  *(v3 + 24) = v6;
  return sub_1BE4D96CC;
}

uint64_t (*sub_1BE4D1184())()
{
  sub_1BE4D982C();
  result = sub_1BE4D1100(v1, v2, v3);
  if (result)
  {
    v6 = result;
    v7 = v5;
    sub_1BE4D9838();
    result = swift_allocObject();
    *(result + 2) = v6;
    *(result + 3) = v7;
    v8 = sub_1BE4D96E8;
  }

  else
  {
    v8 = 0;
  }

  *v0 = v8;
  v0[1] = result;
  return result;
}

uint64_t sub_1BE4D11EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    sub_1BE4D9838();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1BE4D92A8;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1BE4BF0D8(v1, v2);
  return sub_1BE4D1274(v4, v3, v5);
}

uint64_t sub_1BE4D1274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = a1;
    sub_1BE4D9838();
    a1 = swift_allocObject();
    *(a1 + 16) = v4;
    *(a1 + 24) = a2;
  }

  sub_1BE4D92B0(a1, a2, a3);
  return sub_1BE54BA0C();
}

uint64_t OnboardingSheetView.init(setup:contentView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = type metadata accessor for OnboardingSheetView(0, a4, a5, a4);
  v11 = (a6 + v10[10]);
  v12 = sub_1BE4D2128();
  *v11 = v13;
  v11[1] = v12;
  v14 = (a6 + v10[11]);
  v15 = sub_1BE4D2128();
  *v14 = v16;
  v14[1] = v15;
  v17 = a6 + v10[12];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  *(a6 + v10[13]) = 0x407C200000000000;
  result = sub_1BE4D224C(a1, a6, type metadata accessor for OnboardingSheetSetup);
  v19 = (a6 + v10[9]);
  *v19 = a2;
  v19[1] = a3;
  return result;
}

uint64_t sub_1BE4D13E8(uint64_t *TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata, a2);
    sub_1BE4C757C();
    v9 = v8 - v7;
    for (i = 0; a2 != i; ++i)
    {
      *(v9 + 8 * i) = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    sub_1BE4D97C8();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata, a2);
  sub_1BE4C757C();
  v13 = v12 - v11;
  if (a2)
  {
    v14 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v15 = (v6 + 32);
    v16 = a2;
    do
    {
      if (a2 == 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = *v15;
      }

      v19 = *v14++;
      v18 = v19;
      v20 = *v5++;
      (*(*(v18 - 8) + 16))(v13 + v17, v20);
      v15 += 4;
      --v16;
    }

    while (v16);
  }

  return sub_1BE54C3BC();
}

uint64_t OnboardingSheetSetup.SheetStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1BE54CD8C();
  MEMORY[0x1BFB482A0](v1);
  return sub_1BE54CDAC();
}

uint64_t OnboardingSheetSetup.icon.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t OnboardingSheetSetup.title.getter()
{
  v2 = *(sub_1BE4D9868() + 24);
  sub_1BE54ADAC();
  sub_1BE4C7470();
  v5 = *(v4 + 16);

  return v5(v0, v1 + v2, v3);
}

uint64_t OnboardingSheetSetup.title.setter()
{
  v2 = sub_1BE4D97A4();
  v3 = *(type metadata accessor for OnboardingSheetSetup(v2) + 24);
  sub_1BE54ADAC();
  sub_1BE4C7470();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t OnboardingSheetSetup.title.modify()
{
  v0 = sub_1BE4D97A4();
  type metadata accessor for OnboardingSheetSetup(v0);
  return sub_1BE4D9850();
}

uint64_t OnboardingSheetSetup.detailText.setter()
{
  v0 = sub_1BE4D97A4();
  type metadata accessor for OnboardingSheetSetup(v0);
  v1 = sub_1BE4D9844();
  return sub_1BE4D2184(v1, v2, v3, v4);
}

uint64_t OnboardingSheetSetup.detailText.modify()
{
  v0 = sub_1BE4D97A4();
  type metadata accessor for OnboardingSheetSetup(v0);
  return sub_1BE4D9850();
}

uint64_t OnboardingSheetSetup.primaryButton.setter()
{
  v0 = sub_1BE4D97A4();
  type metadata accessor for OnboardingSheetSetup(v0);
  v1 = sub_1BE4D9844();
  return sub_1BE4D2184(v1, v2, v3, v4);
}

uint64_t OnboardingSheetSetup.primaryButton.modify()
{
  v0 = sub_1BE4D97A4();
  type metadata accessor for OnboardingSheetSetup(v0);
  return sub_1BE4D9850();
}

uint64_t OnboardingSheetSetup.secondaryButton.setter()
{
  v0 = sub_1BE4D97A4();
  type metadata accessor for OnboardingSheetSetup(v0);
  v1 = sub_1BE4D9844();
  return sub_1BE4D2184(v1, v2, v3, v4);
}

uint64_t OnboardingSheetSetup.secondaryButton.modify()
{
  v0 = sub_1BE4D97A4();
  type metadata accessor for OnboardingSheetSetup(v0);
  return sub_1BE4D9850();
}

BOOL static OnboardingSheetSetup.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for OnboardingSheetSetup.ButtonSetup(0);
  sub_1BE4C7470();
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_1BE4C757C();
  v9 = v8 - v7;
  v10 = sub_1BE4BF11C(&qword_1EBDABF18, &qword_1BE54E4C0);
  v11 = sub_1BE4C7570(v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  sub_1BE4D981C();
  v76 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v78 = &v73 - v17;
  v79 = sub_1BE4BF11C(&qword_1EBDABF20, &qword_1BE54E4C8);
  sub_1BE4C7470();
  MEMORY[0x1EEE9AC00](v18, v19);
  sub_1BE4D981C();
  v77 = v20 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v73 - v24;
  v26 = sub_1BE54ADAC();
  sub_1BE4C7500();
  v80 = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  sub_1BE4C757C();
  v32 = v31 - v30;
  v33 = sub_1BE4BF11C(&qword_1EBDABE68, &qword_1BE54E470);
  v34 = sub_1BE4C7570(v33);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v73 - v36;
  v38 = sub_1BE4BF11C(&qword_1EBDABF28, &qword_1BE54E4D0);
  sub_1BE4C7470();
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v73 - v41;
  if (*a1 != *a2)
  {
    return 0;
  }

  v74 = v9;
  v75 = v4;
  v44 = *(a2 + 1);
  if (*(a1 + 1))
  {
    if (!v44)
    {
      return 0;
    }

    v45 = sub_1BE54C21C();

    if ((v45 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v44)
  {
    return 0;
  }

  v46 = type metadata accessor for OnboardingSheetSetup(0);
  if ((MEMORY[0x1BFB462A0](&a1[*(v46 + 24)], &a2[*(v46 + 24)]) & 1) == 0)
  {
    return 0;
  }

  v73 = v46;
  v47 = *(v46 + 28);
  v48 = *(v38 + 48);
  sub_1BE4D9250(&a1[v47], v42, &qword_1EBDABE68, &qword_1BE54E470);
  sub_1BE4D9250(&a2[v47], &v42[v48], &qword_1EBDABE68, &qword_1BE54E470);
  sub_1BE4D9898(v42);
  if (v49)
  {
    sub_1BE4D9898(&v42[v48]);
    if (v49)
    {
      sub_1BE4D0E58(v42, &qword_1EBDABE68, &qword_1BE54E470);
      goto LABEL_20;
    }

LABEL_18:
    v50 = &qword_1EBDABF28;
    v51 = &qword_1BE54E4D0;
    v52 = v42;
LABEL_39:
    sub_1BE4D0E58(v52, v50, v51);
    return 0;
  }

  sub_1BE4D9250(v42, v37, &qword_1EBDABE68, &qword_1BE54E470);
  sub_1BE4D9898(&v42[v48]);
  if (v49)
  {
    (*(v80 + 8))(v37, v26);
    goto LABEL_18;
  }

  v53 = v80;
  (*(v80 + 32))(v32, &v42[v48], v26);
  sub_1BE4D83D4(&qword_1EBDABF30, MEMORY[0x1E6968E10]);
  v54 = sub_1BE54C64C();
  v55 = *(v53 + 8);
  v56 = sub_1BE4D9800();
  v55(v56);
  (v55)(v37, v26);
  sub_1BE4D0E58(v42, &qword_1EBDABE68, &qword_1BE54E470);
  if ((v54 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v57 = *(v73 + 32);
  v58 = v79;
  v59 = *(v79 + 48);
  sub_1BE4D9880(&a1[v57], v25);
  sub_1BE4D9880(&a2[v57], &v25[v59]);
  sub_1BE4D970C(v25);
  if (v49)
  {
    sub_1BE4D970C(&v25[v59]);
    v60 = v74;
    if (v49)
    {
      sub_1BE4D0E58(v25, &qword_1EBDABF18, &qword_1BE54E4C0);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v61 = v78;
  sub_1BE4D9250(v25, v78, &qword_1EBDABF18, &qword_1BE54E4C0);
  sub_1BE4D970C(&v25[v59]);
  v60 = v74;
  if (v62)
  {
    sub_1BE4D21F0(v61);
LABEL_28:
    v50 = &qword_1EBDABF20;
    v51 = &qword_1BE54E4C8;
    v52 = v25;
    goto LABEL_39;
  }

  sub_1BE4D9774();
  sub_1BE4D224C(&v25[v59], v60, v63);
  v64 = MEMORY[0x1BFB462A0](v61, v60);
  sub_1BE4D21F0(v60);
  sub_1BE4D21F0(v61);
  sub_1BE4D0E58(v25, &qword_1EBDABF18, &qword_1BE54E4C0);
  if ((v64 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v65 = *(v73 + 36);
  v66 = *(v58 + 48);
  v67 = &a1[v65];
  v68 = v77;
  sub_1BE4D9880(v67, v77);
  sub_1BE4D9880(&a2[v65], v68 + v66);
  sub_1BE4D970C(v68);
  if (v49)
  {
    sub_1BE4D970C(v68 + v66);
    if (v49)
    {
      sub_1BE4D0E58(v68, &qword_1EBDABF18, &qword_1BE54E4C0);
      return 1;
    }

    goto LABEL_38;
  }

  v69 = v76;
  sub_1BE4D9250(v68, v76, &qword_1EBDABF18, &qword_1BE54E4C0);
  sub_1BE4D970C(v68 + v66);
  if (v70)
  {
    sub_1BE4D21F0(v69);
LABEL_38:
    v50 = &qword_1EBDABF20;
    v51 = &qword_1BE54E4C8;
    v52 = v68;
    goto LABEL_39;
  }

  sub_1BE4D9774();
  sub_1BE4D224C(v68 + v66, v60, v71);
  v72 = MEMORY[0x1BFB462A0](v69, v60);
  sub_1BE4D21F0(v60);
  sub_1BE4D21F0(v69);
  sub_1BE4D0E58(v68, &qword_1EBDABF18, &qword_1BE54E4C0);
  return (v72 & 1) != 0;
}

double sub_1BE4D2064(uint64_t a1)
{
  sub_1BE4BF11C(&qword_1EBDAC1A0, &qword_1BE54E9A0);
  sub_1BE54C24C();
  return v2;
}

uint64_t sub_1BE4D2184(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1BE4D97E0(a1, a2, a3, a4);
  sub_1BE4C7470();
  v5 = sub_1BE4D9800();
  v6(v5);
  return v4;
}

uint64_t sub_1BE4D21F0(uint64_t a1)
{
  v2 = type metadata accessor for OnboardingSheetSetup.ButtonSetup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BE4D224C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1BE4C7470();
  v4 = sub_1BE4D9800();
  v5(v4);
  return a2;
}

double sub_1BE4D22A8(uint64_t a1)
{
  sub_1BE4BF11C(&qword_1EBDAC1A0, &qword_1BE54E9A0);
  sub_1BE54C24C();
  return v2;
}

uint64_t OnboardingSheetView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v24 = a2;
  sub_1BE4C5948(&qword_1EBDABF38, &qword_1BE54E4D8);
  v3 = *(a1 + 16);
  sub_1BE4D97C8();
  swift_getTupleTypeMetadata2();
  sub_1BE4D97D4();
  sub_1BE54C3AC();
  swift_getWitnessTable();
  sub_1BE4D9700();
  sub_1BE54C2FC();
  sub_1BE54B79C();
  sub_1BE54B79C();
  sub_1BE4C5948(&qword_1EBDABF40, &qword_1BE54E4E0);
  sub_1BE4D96F0();
  sub_1BE54B79C();
  WitnessTable = swift_getWitnessTable();
  v38 = MEMORY[0x1E697E5D8];
  v35 = swift_getWitnessTable();
  v36 = MEMORY[0x1E697EBF8];
  v4 = swift_getWitnessTable();
  sub_1BE4D97B0();
  v33 = v4;
  v34 = sub_1BE4D9668(v5, &qword_1EBDABF40, &qword_1BE54E4E0);
  swift_getWitnessTable();
  sub_1BE4D9700();
  sub_1BE54B5CC();
  sub_1BE4D978C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1BE4D975C();
  swift_getOpaqueTypeMetadata2();
  sub_1BE4C5948(&qword_1EBDABF50, &qword_1BE54E4E8);
  sub_1BE4D9700();
  sub_1BE54B79C();
  v6 = MEMORY[0x1E6981840];
  v28 = MEMORY[0x1E6981840];
  v29 = v3;
  v30 = MEMORY[0x1E6981148];
  v31 = sub_1BE4C5948(&qword_1EBDABB60, &unk_1BE54E4F0);
  v32 = v6;
  sub_1BE4D97C8();
  swift_getTupleTypeMetadata();
  sub_1BE4D97D4();
  sub_1BE54C3AC();
  swift_getWitnessTable();
  sub_1BE4D9700();
  sub_1BE54C2FC();
  sub_1BE4C5948(&qword_1EBDABF58, &qword_1BE54F660);
  sub_1BE4D9700();
  sub_1BE54B79C();
  sub_1BE4C5948(&qword_1EBDABF60, &qword_1BE54E500);
  sub_1BE4D9700();
  sub_1BE54B79C();
  sub_1BE4D9700();
  sub_1BE54BC1C();
  sub_1BE4C5948(&qword_1EBDABF68, &qword_1BE54E508);
  sub_1BE4D9700();
  sub_1BE4D97C8();
  swift_getTupleTypeMetadata2();
  sub_1BE4D97D4();
  sub_1BE54C3AC();
  swift_getWitnessTable();
  v7 = sub_1BE54C2FC();
  sub_1BE4C7500();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  sub_1BE4D981C();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v23 - v17;
  v19 = *(a1 + 24);
  v25 = v3;
  v26 = v19;
  v27 = v23;
  sub_1BE54BB0C();
  sub_1BE54C2EC();
  swift_getWitnessTable();
  v20 = *(v9 + 16);
  v20(v18, v14, v7);
  v21 = *(v9 + 8);
  v21(v14, v7);
  v20(v24, v18, v7);
  return (v21)(v18, v7);
}

uint64_t sub_1BE4D27F4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a3;
  v96 = a1;
  v89 = a4;
  v86 = sub_1BE4BF11C(&qword_1EBDABF68, &qword_1BE54E508);
  v6 = MEMORY[0x1EEE9AC00](v86, v5);
  v88 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v87 = &v79 - v9;
  v10 = MEMORY[0x1E6981840];
  v114 = MEMORY[0x1E6981840];
  v115 = a2;
  v116 = MEMORY[0x1E6981148];
  v117 = sub_1BE4C5948(&qword_1EBDABB60, &unk_1BE54E4F0);
  v118 = v10;
  swift_getTupleTypeMetadata();
  sub_1BE54C3AC();
  swift_getWitnessTable();
  v11 = sub_1BE54C2FC();
  sub_1BE4C5948(&qword_1EBDABF58, &qword_1BE54F660);
  v92 = v11;
  v12 = sub_1BE54B79C();
  sub_1BE4C5948(&qword_1EBDABF60, &qword_1BE54E500);
  v93 = v12;
  v13 = sub_1BE54B79C();
  v81 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v80 = &v79 - v19;
  sub_1BE4C5948(&qword_1EBDABF38, &qword_1BE54E4D8);
  swift_getTupleTypeMetadata2();
  sub_1BE54C3AC();
  swift_getWitnessTable();
  sub_1BE54C2FC();
  sub_1BE54B79C();
  sub_1BE54B79C();
  sub_1BE4C5948(&qword_1EBDABF40, &qword_1BE54E4E0);
  sub_1BE54B79C();
  v113[12] = swift_getWitnessTable();
  v113[13] = MEMORY[0x1E697E5D8];
  v113[10] = swift_getWitnessTable();
  v113[11] = MEMORY[0x1E697EBF8];
  WitnessTable = swift_getWitnessTable();
  v21 = sub_1BE4D9668(&qword_1EBDABF48, &qword_1EBDABF40, &qword_1BE54E4E0);
  v113[8] = WitnessTable;
  v113[9] = v21;
  swift_getWitnessTable();
  v22 = sub_1BE54B5CC();
  v23 = swift_getWitnessTable();
  v114 = v22;
  v115 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v114 = v22;
  v115 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v91 = OpaqueTypeMetadata2;
  v114 = OpaqueTypeMetadata2;
  v115 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  sub_1BE4C5948(&qword_1EBDABF50, &qword_1BE54E4E8);
  v25 = sub_1BE54B79C();
  v26 = *(v25 - 8);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v30 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v31);
  v33 = &v79 - v32;
  v94 = v13;
  v83 = sub_1BE54BC1C();
  v85 = *(v83 - 8);
  v35 = MEMORY[0x1EEE9AC00](v83, v34);
  v84 = &v79 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v37);
  v95 = &v79 - v38;
  LOBYTE(v22) = *v96;
  v40 = type metadata accessor for OnboardingSheetView(0, a2, v82, v39);
  v41 = v40;
  if (v22)
  {
    sub_1BE4D3C40(v40, v17);
    v42 = swift_getWitnessTable();
    v43 = sub_1BE4D9668(&qword_1EBDAC0B8, &qword_1EBDABF58, &qword_1BE54F660);
    v113[6] = v42;
    v113[7] = v43;
    v44 = swift_getWitnessTable();
    v45 = sub_1BE4D9668(&qword_1EBDAC0F8, &qword_1EBDABF60, &qword_1BE54E500);
    v113[4] = v44;
    v113[5] = v45;
    v46 = v94;
    v79 = swift_getWitnessTable();
    v82 = v41;
    v47 = v80;
    v48 = v81;
    v49 = *(v81 + 16);
    v49(v80, v17, v46);
    v50 = *(v48 + 8);
    v50(v17, v46);
    v49(v17, v47, v46);
    v114 = v91;
    v115 = OpaqueTypeConformance2;
    v51 = swift_getOpaqueTypeConformance2();
    v52 = sub_1BE4D9668(&qword_1EBDAC100, &qword_1EBDABF50, &qword_1BE54E4E8);
    v113[2] = v51;
    v113[3] = v52;
    v53 = swift_getWitnessTable();
    sub_1BE4D1008(v17, v25, v46, v53, v79);
    v50(v17, v46);
    v50(v47, v46);
    v41 = v82;
  }

  else
  {
    sub_1BE4D345C(v40, v30);
    v114 = v91;
    v115 = OpaqueTypeConformance2;
    v54 = swift_getOpaqueTypeConformance2();
    v55 = sub_1BE4D9668(&qword_1EBDAC100, &qword_1EBDABF50, &qword_1BE54E4E8);
    v101 = v54;
    v102 = v55;
    v82 = swift_getWitnessTable();
    v56 = *(v26 + 16);
    v56(v33, v30, v25);
    v57 = *(v26 + 8);
    v57(v30, v25);
    v56(v30, v33, v25);
    v58 = swift_getWitnessTable();
    v59 = sub_1BE4D9668(&qword_1EBDAC0B8, &qword_1EBDABF58, &qword_1BE54F660);
    v99 = v58;
    v100 = v59;
    v60 = swift_getWitnessTable();
    v61 = sub_1BE4D9668(&qword_1EBDAC0F8, &qword_1EBDABF60, &qword_1BE54E500);
    v97 = v60;
    v98 = v61;
    v62 = v94;
    v63 = swift_getWitnessTable();
    sub_1BE4D0F10(v30, v25, v62, v82, v63);
    v57(v30, v25);
    v57(v33, v25);
  }

  v64 = v87;
  sub_1BE4D4094(v41);
  v66 = v84;
  v65 = v85;
  v67 = v83;
  (*(v85 + 16))(v84, v95, v83);
  v114 = v66;
  v68 = v88;
  sub_1BE4D9250(v64, v88, &qword_1EBDABF68, &qword_1BE54E508);
  v115 = v68;
  v113[0] = v67;
  v113[1] = v86;
  v111 = v91;
  v112 = OpaqueTypeConformance2;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = sub_1BE4D9668(&qword_1EBDAC100, &qword_1EBDABF50, &qword_1BE54E4E8);
  v109 = v69;
  v110 = v70;
  v71 = swift_getWitnessTable();
  v72 = swift_getWitnessTable();
  v73 = sub_1BE4D9668(&qword_1EBDAC0B8, &qword_1EBDABF58, &qword_1BE54F660);
  v107 = v72;
  v108 = v73;
  v74 = swift_getWitnessTable();
  v75 = sub_1BE4D9668(&qword_1EBDAC0F8, &qword_1EBDABF60, &qword_1BE54E500);
  v105 = v74;
  v106 = v75;
  v76 = swift_getWitnessTable();
  v103 = v71;
  v104 = v76;
  v111 = swift_getWitnessTable();
  v112 = sub_1BE4D8558();
  sub_1BE4D13E8(&v114, 2, v113);
  sub_1BE4D0E58(v64, &qword_1EBDABF68, &qword_1BE54E508);
  v77 = *(v65 + 8);
  v77(v95, v67);
  sub_1BE4D0E58(v68, &qword_1EBDABF68, &qword_1BE54E508);
  return (v77)(v66, v67);
}

unint64_t sub_1BE4D33C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDABF70;
  if (!qword_1EBDABF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABF70);
  }

  return result;
}

uint64_t sub_1BE4D345C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v55 = a1;
  v62 = a2;
  v61 = sub_1BE54BC8C();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v3);
  v59 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE4C5948(&qword_1EBDABF38, &qword_1BE54E4D8);
  v44 = *(a1 + 16);
  v5 = v44;
  swift_getTupleTypeMetadata2();
  sub_1BE54C3AC();
  swift_getWitnessTable();
  sub_1BE54C2FC();
  sub_1BE54B79C();
  sub_1BE54B79C();
  sub_1BE4C5948(&qword_1EBDABF40, &qword_1BE54E4E0);
  v6 = sub_1BE54B79C();
  WitnessTable = swift_getWitnessTable();
  v79 = MEMORY[0x1E697E5D8];
  v7 = MEMORY[0x1E697E858];
  v76 = swift_getWitnessTable();
  v77 = MEMORY[0x1E697EBF8];
  v57 = v7;
  v8 = swift_getWitnessTable();
  v56 = MEMORY[0x1E697F940];
  v9 = sub_1BE4D9668(&qword_1EBDABF48, &qword_1EBDABF40, &qword_1BE54E4E0);
  v74 = v8;
  v75 = v9;
  v52 = v6;
  v51 = swift_getWitnessTable();
  v10 = sub_1BE54B5CC();
  v53 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v43 - v12;
  v14 = swift_getWitnessTable();
  v72 = v10;
  v73 = v14;
  v15 = v14;
  v45 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v50 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v17);
  v19 = &v43 - v18;
  v72 = v10;
  v73 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v72 = OpaqueTypeMetadata2;
  v73 = OpaqueTypeConformance2;
  v47 = MEMORY[0x1E697D298];
  v48 = swift_getOpaqueTypeMetadata2();
  v54 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v21);
  v23 = &v43 - v22;
  sub_1BE4C5948(&qword_1EBDABF50, &qword_1BE54E4E8);
  v24 = sub_1BE54B79C();
  v25 = *(v24 - 8);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v46 = &v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v49 = &v43 - v30;
  v31 = *(v55 + 24);
  v67 = v5;
  v68 = v31;
  v32 = v58;
  v69 = v58;
  v33 = sub_1BE54BE2C();
  sub_1BE4D4D88(v33, sub_1BE4D89B0, v66, v52, v51);
  sub_1BE54C08C();
  (*(v53 + 8))(v13, v10);
  v34 = v59;
  sub_1BE54BC7C();
  sub_1BE4D4DA0(OpaqueTypeMetadata2);
  sub_1BE54C0AC();
  (*(v60 + 8))(v34, v61);
  (*(v50 + 8))(v19, OpaqueTypeMetadata2);
  v63 = v44;
  v64 = v31;
  v65 = v32;
  sub_1BE4BF11C(&qword_1EBDAC190, &qword_1BE54E998);
  v72 = OpaqueTypeMetadata2;
  v73 = OpaqueTypeConformance2;
  v35 = swift_getOpaqueTypeConformance2();
  sub_1BE4D9668(&qword_1EBDAC198, &qword_1EBDAC190, &qword_1BE54E998);
  sub_1BE54C39C();
  v36 = v46;
  v37 = v48;
  sub_1BE54BFEC();
  (*(v54 + 8))(v23, v37);
  v38 = sub_1BE4D9668(&qword_1EBDAC100, &qword_1EBDABF50, &qword_1BE54E4E8);
  v70 = v35;
  v71 = v38;
  swift_getWitnessTable();
  v39 = *(v25 + 16);
  v40 = v49;
  v39(v49, v36, v24);
  v41 = *(v25 + 8);
  v41(v36, v24);
  v39(v62, v40, v24);
  return (v41)(v40, v24);
}

uint64_t sub_1BE4D3C40@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v31 = a1;
  v33 = a2;
  v2 = MEMORY[0x1E6981840];
  v30 = *(a1 + 16);
  v41 = MEMORY[0x1E6981840];
  v42 = v30;
  v43 = MEMORY[0x1E6981148];
  v44 = sub_1BE4C5948(&qword_1EBDABB60, &unk_1BE54E4F0);
  v45 = v2;
  swift_getTupleTypeMetadata();
  sub_1BE54C3AC();
  swift_getWitnessTable();
  v3 = sub_1BE54C2FC();
  v28 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v28 - v5;
  sub_1BE4C5948(&qword_1EBDABF58, &qword_1BE54F660);
  v7 = sub_1BE54B79C();
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v28 - v9;
  sub_1BE4C5948(&qword_1EBDABF60, &qword_1BE54E500);
  v11 = sub_1BE54B79C();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v28 - v18;
  sub_1BE54BB0C();
  v20 = *(v31 + 24);
  v34 = v30;
  v35 = v20;
  v36 = v32;
  sub_1BE54C2EC();
  WitnessTable = swift_getWitnessTable();
  sub_1BE54C0CC();
  (*(v28 + 8))(v6, v3);
  v22 = sub_1BE4D9668(&qword_1EBDAC0B8, &qword_1EBDABF58, &qword_1BE54F660);
  v39 = WitnessTable;
  v40 = v22;
  v23 = swift_getWitnessTable();
  sub_1BE54C18C();
  (*(v29 + 8))(v10, v7);
  v24 = sub_1BE4D9668(&qword_1EBDAC0F8, &qword_1EBDABF60, &qword_1BE54E500);
  v37 = v23;
  v38 = v24;
  swift_getWitnessTable();
  v25 = *(v12 + 16);
  v25(v19, v16, v11);
  v26 = *(v12 + 8);
  v26(v16, v11);
  v25(v33, v19, v11);
  return (v26)(v19, v11);
}

uint64_t sub_1BE4D4094(uint64_t a1)
{
  v2 = sub_1BE4BF11C(&qword_1EBDAC178, &qword_1BE54E988);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v21 - v4;
  v6 = sub_1BE4BF11C(&qword_1EBDAC258, &qword_1BE54EA80);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v21 - v8;
  v10 = sub_1BE4BF11C(&qword_1EBDAC118, &qword_1BE54E958);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v21 - v12;
  v14 = sub_1BE4D2064(a1);
  if (v14 - sub_1BE4D22A8(a1) >= 1.0)
  {
    sub_1BE4D6420(v5);
    v18 = &v5[*(v2 + 36)];
    sub_1BE54C38C();
    v19 = sub_1BE54BE4C();
    v18[*(sub_1BE4BF11C(&qword_1EBDAC188, &qword_1BE54E990) + 36)] = v19;
    sub_1BE4D9250(v5, v9, &qword_1EBDAC178, &qword_1BE54E988);
    swift_storeEnumTagMultiPayload();
    sub_1BE4D85E4();
    sub_1BE4D88F8();
    sub_1BE54BC0C();
    v15 = v5;
    v16 = &qword_1EBDAC178;
    v17 = &qword_1BE54E988;
  }

  else
  {
    sub_1BE4D6420(v13);
    sub_1BE4D9250(v13, v9, &qword_1EBDAC118, &qword_1BE54E958);
    swift_storeEnumTagMultiPayload();
    sub_1BE4D85E4();
    sub_1BE4D88F8();
    sub_1BE54BC0C();
    v15 = v13;
    v16 = &qword_1EBDAC118;
    v17 = &qword_1BE54E958;
  }

  return sub_1BE4D0E58(v15, v16, v17);
}

uint64_t sub_1BE4D4328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v49 = a4;
  sub_1BE4C5948(&qword_1EBDABF38, &qword_1BE54E4D8);
  swift_getTupleTypeMetadata2();
  sub_1BE54C3AC();
  swift_getWitnessTable();
  v7 = sub_1BE54C2FC();
  v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v38 - v9;
  v11 = sub_1BE54B79C();
  v44 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v38 - v13;
  v42 = sub_1BE54B79C();
  v48 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v15);
  v40 = &v38 - v16;
  sub_1BE4C5948(&qword_1EBDABF40, &qword_1BE54E4E0);
  v17 = sub_1BE54B79C();
  v18 = *(v17 - 8);
  v46 = v17;
  v47 = v18;
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v45 = &v38 - v23;
  v39 = a2;
  v53 = a2;
  v54 = a3;
  v55 = a1;
  sub_1BE54BB0C();
  sub_1BE54C2EC();
  sub_1BE54BE3C();
  WitnessTable = swift_getWitnessTable();
  sub_1BE54C13C();
  (*(v41 + 8))(v10, v7);
  type metadata accessor for OnboardingSheetView(0, a2, a3, v25);
  v60 = WitnessTable;
  v61 = MEMORY[0x1E697E5D8];
  v37 = swift_getWitnessTable();
  sub_1BE54C39C();
  v26 = v40;
  sub_1BE54C11C();
  (*(v44 + 8))(v14, v11);
  v50 = v39;
  v51 = a3;
  v52 = a1;
  sub_1BE4BF11C(&qword_1EBDAC1A8, &qword_1BE54E9A8);
  v58 = v37;
  v59 = MEMORY[0x1E697EBF8];
  v27 = v42;
  v28 = swift_getWitnessTable();
  sub_1BE4D9668(&qword_1EBDAC1B0, &qword_1EBDAC1A8, &qword_1BE54E9A8);
  sub_1BE54C39C();
  v29 = v43;
  sub_1BE54BFEC();
  (*(v48 + 8))(v26, v27);
  v30 = sub_1BE4D9668(&qword_1EBDABF48, &qword_1EBDABF40, &qword_1BE54E4E0);
  v56 = v28;
  v57 = v30;
  v31 = v46;
  swift_getWitnessTable();
  v32 = v47;
  v33 = *(v47 + 16);
  v34 = v45;
  v33(v45, v29, v31);
  v35 = *(v32 + 8);
  v35(v29, v31);
  v33(v49, v34, v31);
  return (v35)(v34, v31);
}

uint64_t sub_1BE4D4934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28[0] = a3;
  v28[1] = a4;
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v28 - v12;
  v14 = sub_1BE4BF11C(&qword_1EBDABF38, &qword_1BE54E4D8);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = v28 - v20;
  v23 = type metadata accessor for OnboardingSheetView(0, a2, a3, v22);
  v24 = sub_1BE4D4BB0(v23, v21);
  (*(a1 + *(v23 + 36)))(v24);
  v25 = *(v7 + 16);
  v25(v13, v10, a2);
  v26 = *(v7 + 8);
  v26(v10, a2);
  sub_1BE4D9250(v21, v18, &qword_1EBDABF38, &qword_1BE54E4D8);
  v30[0] = v18;
  v25(v10, v13, a2);
  v30[1] = v10;
  v29[0] = v14;
  v29[1] = a2;
  v28[2] = sub_1BE4D8E2C();
  v28[3] = v28[0];
  sub_1BE4D13E8(v30, 2, v29);
  v26(v13, a2);
  sub_1BE4D0E58(v21, &qword_1EBDABF38, &qword_1BE54E4D8);
  v26(v10, a2);
  return sub_1BE4D0E58(v18, &qword_1EBDABF38, &qword_1BE54E4D8);
}

uint64_t sub_1BE4D4BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE54BB1C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = sub_1BE4BF11C(&qword_1EBDAC210, &qword_1BE54E9D8);
  sub_1BE4D5190(v2, *(a1 + 16), *(a1 + 24), a2 + *(v5 + 44));
  *(a2 + *(sub_1BE4BF11C(&qword_1EBDAC1F8, &qword_1BE54E9C8) + 36)) = 256;
  v6 = sub_1BE54BE5C();
  sub_1BE54B59C();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a2 + *(sub_1BE4BF11C(&qword_1EBDAC1E8, &qword_1BE54E9C0) + 36);
  *v15 = v6;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  v16 = sub_1BE54BE6C();
  sub_1BE54B59C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = a2 + *(sub_1BE4BF11C(&qword_1EBDAC1D8, &qword_1BE54E9B8) + 36);
  *v25 = v16;
  *(v25 + 8) = v18;
  *(v25 + 16) = v20;
  *(v25 + 24) = v22;
  *(v25 + 32) = v24;
  *(v25 + 40) = 0;
  KeyPath = swift_getKeyPath();
  v27 = a2 + *(sub_1BE4BF11C(&qword_1EBDAC1C8, &qword_1BE54E9B0) + 36);
  *v27 = KeyPath;
  *(v27 + 8) = 0;
  v28 = swift_getKeyPath();
  result = sub_1BE4BF11C(&qword_1EBDABF38, &qword_1BE54E4D8);
  v30 = a2 + *(result + 36);
  *v30 = v28;
  *(v30 + 8) = 0;
  *(v30 + 16) = 1;
  return result;
}

uint64_t sub_1BE4D4D44(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = type metadata accessor for OnboardingSheetView(0, a3, a4, a4);
  return sub_1BE4D20C4(v5, v4);
}

uint64_t sub_1BE4D4DA0(uint64_t a1)
{
  v1 = sub_1BE54BE2C();
  v2 = sub_1BE54BE1C();
  sub_1BE54BE1C();
  if (sub_1BE54BE1C() == v1)
  {
    return v2;
  }

  return sub_1BE54BE1C();
}

uint64_t sub_1BE4D4E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = type metadata accessor for OnboardingSheetView(0, a2, a3, a4);
  sub_1BE4C7500();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v21 - v16;
  (*(v13 + 16))(&v21 - v16, a1, v11);
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  result = (*(v13 + 32))(v19 + v18, v17, v11);
  *a6 = a5;
  a6[1] = v19;
  return result;
}

uint64_t sub_1BE4D4F34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v39 = a4;
  v40 = a5;
  v37 = a1;
  v38 = a3;
  v8 = type metadata accessor for OnboardingSheetView(0, a2, a3, a3);
  sub_1BE4C7500();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v37 - v13;
  v15 = sub_1BE54BCCC();
  sub_1BE4C7500();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  sub_1BE4C757C();
  v22 = v21 - v20;
  sub_1BE54BD2C();
  sub_1BE54B6BC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  (*(v17 + 8))(v22, v15);
  v31 = sub_1BE54C1BC();
  v41.origin.x = v24;
  v41.origin.y = v26;
  v41.size.width = v28;
  v41.size.height = v30;
  MaxY = CGRectGetMaxY(v41);
  (*(v10 + 16))(v14, v37, v8);
  v33 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v34 = swift_allocObject();
  v35 = v38;
  *(v34 + 16) = a2;
  *(v34 + 24) = v35;
  result = (*(v10 + 32))(v34 + v33, v14, v8);
  *a6 = v31;
  *(a6 + 1) = MaxY;
  a6[2] = v40;
  a6[3] = v34;
  return result;
}

uint64_t sub_1BE4D514C(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = type metadata accessor for OnboardingSheetView(0, a3, a4, a4);
  return sub_1BE4D2308(v5, v4);
}

uint64_t sub_1BE4D5190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v97 = a3;
  v95 = a2;
  v6 = sub_1BE4BF11C(&qword_1EBDABE68, &qword_1BE54E470);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v85 - v8;
  v10 = sub_1BE54ADAC();
  v89 = *(v10 - 8);
  v90 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v86 = &v85 - v16;
  v17 = sub_1BE4BF11C(&qword_1EBDAC218, &qword_1BE54EA10);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v85 - v19;
  v21 = sub_1BE4BF11C(&qword_1EBDAC220, &qword_1BE54EA18);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v98 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v85 - v26;
  v28 = *(a1 + 8);
  if (v28)
  {

    *v20 = sub_1BE54BA4C();
    *(v20 + 1) = 0;
    v20[16] = 1;
    v29 = sub_1BE4BF11C(&qword_1EBDAC238, &unk_1BE54EA30);
    sub_1BE4D5908(v28, &v20[*(v29 + 44)]);
    v30 = sub_1BE54BE6C();
    sub_1BE54B59C();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    v39 = &v20[*(v17 + 36)];
    *v39 = v30;
    *(v39 + 1) = v32;
    *(v39 + 2) = v34;
    *(v39 + 3) = v36;
    *(v39 + 4) = v38;
    v39[40] = 0;
    sub_1BE4D9204(v20, v27, &qword_1EBDAC218, &qword_1BE54EA10);
    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = v27;
  sub_1BE4C63F8(v27, v40, 1, v17);
  v96 = sub_1BE54BA4C();
  sub_1BE4D5B2C(a1, &v100);
  v93 = v101;
  v94 = v100;
  v87 = v104;
  v97 = v105;
  v121 = 1;
  LODWORD(v95) = v102;
  v120 = v102;
  v88 = v106;
  v119 = v106;
  v92 = sub_1BE54BE5C();
  sub_1BE54B59C();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  LOBYTE(v100) = 0;
  v50 = type metadata accessor for OnboardingSheetSetup(0);
  sub_1BE4D9250(a1 + *(v50 + 28), v9, &qword_1EBDABE68, &qword_1BE54E470);
  v51 = v90;
  v52 = sub_1BE4C63BC(v9, 1, v90);
  v91 = v27;
  if (v52 == 1)
  {
    sub_1BE4D0E58(v9, &qword_1EBDABE68, &qword_1BE54E470);
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
  }

  else
  {
    v57 = v89;
    v58 = v86;
    (*(v89 + 32))(v86, v9, v51);
    (*(v57 + 16))(v14, v58, v51);
    v59 = sub_1BE54BF7C();
    v61 = v60;
    v63 = v62;
    sub_1BE54BEFC();
    v64 = sub_1BE54BF5C();
    v66 = v65;
    v85 = a4;
    v68 = v67;

    sub_1BE4C68C8(v59, v61, v63 & 1);

    sub_1BE54BECC();
    v69 = sub_1BE54BF3C();
    v71 = v70;
    LOBYTE(v58) = v72;
    sub_1BE4C68C8(v64, v66, v68 & 1);

    LODWORD(v100) = sub_1BE54BCFC();
    v53 = sub_1BE54BF4C();
    v54 = v73;
    v75 = v74;
    v56 = v76;
    v77 = v69;
    v41 = v91;
    sub_1BE4C68C8(v77, v71, v58 & 1);

    (*(v89 + 8))(v86, v90);
    v55 = v75 & 1;
    a4 = v85;
    sub_1BE4D91B0(v53, v54, v55);
  }

  v78 = v98;
  sub_1BE4D9250(v41, v98, &qword_1EBDAC220, &qword_1BE54EA18);
  sub_1BE4D9250(v78, a4, &qword_1EBDAC220, &qword_1BE54EA18);
  v79 = sub_1BE4BF11C(&qword_1EBDAC228, &qword_1BE54EA20);
  v80 = *(v79 + 48);
  v99[0] = v96;
  v99[1] = 0;
  LOBYTE(v99[2]) = 1;
  *(&v99[2] + 1) = v125[0];
  HIDWORD(v99[2]) = *(v125 + 3);
  v99[3] = v94;
  v99[4] = v93;
  LOBYTE(v99[5]) = v95;
  *(&v99[5] + 1) = *v124;
  HIDWORD(v99[5]) = *&v124[3];
  v81 = v87;
  v99[6] = v87;
  v99[7] = v97;
  v82 = v88;
  LOBYTE(v99[8]) = v88;
  HIDWORD(v99[8]) = *&v123[3];
  *(&v99[8] + 1) = *v123;
  LOBYTE(v99[9]) = v92;
  HIDWORD(v99[9]) = *&v122[3];
  *(&v99[9] + 1) = *v122;
  v99[10] = v43;
  v99[11] = v45;
  v99[12] = v47;
  v99[13] = v49;
  LOBYTE(v99[14]) = 0;
  memcpy((a4 + v80), v99, 0x71uLL);
  v83 = (a4 + *(v79 + 64));
  sub_1BE4D9250(v99, &v100, &qword_1EBDAC230, &qword_1BE54EA28);
  sub_1BE4D916C(v53, v54, v55, v56);
  sub_1BE4D91C0(v53, v54, v55, v56);
  *v83 = v53;
  v83[1] = v54;
  v83[2] = v55;
  v83[3] = v56;
  sub_1BE4D0E58(v91, &qword_1EBDAC220, &qword_1BE54EA18);
  sub_1BE4D91C0(v53, v54, v55, v56);
  v100 = v96;
  v101 = 0;
  v102 = 1;
  *v103 = v125[0];
  *&v103[3] = *(v125 + 3);
  v104 = v94;
  v105 = v93;
  v106 = v95;
  *v107 = *v124;
  *&v107[3] = *&v124[3];
  v108 = v81;
  v109 = v97;
  v110 = v82;
  *&v111[3] = *&v123[3];
  *v111 = *v123;
  v112 = v92;
  *&v113[3] = *&v122[3];
  *v113 = *v122;
  v114 = v43;
  v115 = v45;
  v116 = v47;
  v117 = v49;
  v118 = 0;
  sub_1BE4D0E58(&v100, &qword_1EBDAC230, &qword_1BE54EA28);
  return sub_1BE4D0E58(v98, &qword_1EBDAC220, &qword_1BE54EA18);
}

uint64_t sub_1BE4D5908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAC240, &qword_1BE5509B0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v22 - v6;
  v8 = sub_1BE4BF11C(&qword_1EBDAC248, &qword_1BE54EA40);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = (&v22 - v14);
  v16 = sub_1BE54BEAC();
  sub_1BE4C63F8(v7, 1, 1, v16);
  sub_1BE54BEEC();
  sub_1BE4D0E58(v7, &qword_1EBDAC240, &qword_1BE5509B0);
  sub_1BE54BECC();
  v17 = sub_1BE54BF1C();

  KeyPath = swift_getKeyPath();

  sub_1BE54B75C();
  *v15 = a1;
  v15[1] = KeyPath;
  v15[2] = v17;
  sub_1BE4D9250(v15, v12, &qword_1EBDAC248, &qword_1BE54EA40);
  *a2 = 0;
  *(a2 + 8) = 1;
  v19 = sub_1BE4BF11C(&qword_1EBDAC250, &qword_1BE54EA78);
  sub_1BE4D9250(v12, a2 + *(v19 + 48), &qword_1EBDAC248, &qword_1BE54EA40);
  v20 = a2 + *(v19 + 64);
  *v20 = 0;
  *(v20 + 8) = 1;
  sub_1BE4D0E58(v15, &qword_1EBDAC248, &qword_1BE54EA40);
  return sub_1BE4D0E58(v12, &qword_1EBDAC248, &qword_1BE54EA40);
}