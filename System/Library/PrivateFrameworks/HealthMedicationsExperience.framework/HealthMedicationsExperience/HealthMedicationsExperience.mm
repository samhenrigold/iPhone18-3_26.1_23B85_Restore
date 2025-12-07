void *sub_1D15E81F8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D15E8250()
{
  MEMORY[0x1D388E2F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D15E8288@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_circular;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1D15E82E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_config;
  swift_beginAccess();
  return sub_1D15F2F9C(v3 + v4, a2, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
}

uint64_t sub_1D15E8360()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15E8398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HKHealthStore.HKMedicationClusterPublisher.Configuration(0);
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

uint64_t sub_1D15E8454(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HKHealthStore.HKMedicationClusterPublisher.Configuration(0);
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

uint64_t sub_1D15E850C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Descriptor = type metadata accessor for HKMedicationClusterQueryDescriptor(0);
  v7 = *(Descriptor - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, Descriptor);
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

uint64_t sub_1D15E85D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HKMedicationClusterQueryDescriptor(0);
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

uint64_t sub_1D15E86A0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1D15F96D0(0, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1D15E8780(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1D15F96D0(0, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D15E8854@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1D15E889C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_1D15E88E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 25);
  return result;
}

uint64_t sub_1D15E8928(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 25) = v2;
  return result;
}

uint64_t sub_1D15E89B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15E8A3C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D15E8A74()
{
  sub_1D1609BB8(0, &qword_1EDEC9FB8, MEMORY[0x1E69E8660]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v3 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1D15E8DA4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D15E8DE4()
{
  v1 = sub_1D166F174();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1D15E8E8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D15E8EC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D15E8F04()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D15E8F3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D15E8F8C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1D15E8FCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_color;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1D15E9034(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D1615EA8(v1);
}

uint64_t sub_1D15E9078()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D15E90B0()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D15E90F8()
{
  MEMORY[0x1D388E2F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D15E9130()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D15E9178(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D15E9188()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D15E91C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15E9200()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15E9240()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15E9278()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D15E93D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D15E9410()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D15E9448()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D15E9488()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D15E94C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D15E9508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D15FB870(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 32) + 8);
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
    v12 = sub_1D166F8E4();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

void sub_1D15E963C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D15FB870(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 32) + 8) = a2;
  }

  else
  {
    v11 = sub_1D166F8E4();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    v12(v13, a2, a2, v11);
  }
}

uint64_t sub_1D15E9764()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15E97A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15E97D8()
{
  MEMORY[0x1D388E2F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D15E9810()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D15E9860()
{
  sub_1D162F4E8(0, &qword_1EC63DE70, sub_1D162E7F0, MEMORY[0x1E69E8548]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_1D15E9988()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1D16372D4(0, &qword_1EC63DF10, &type metadata for MedicationsScheduleIncompatibilityCache.MutableValues, MEMORY[0x1E69E8300]);
  }
}

uint64_t sub_1D15E99EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15E9A24()
{
  sub_1D1637118(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D15EA3A8()
{
  v1 = sub_1D166F174();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D15EA430()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D15EA500()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D15EA5EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15EA624()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D15EA6F4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D15EA734()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D15EA784()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D15EA7CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D15EA80C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15EA868()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15EA8A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D15EA8E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_config;
  swift_beginAccess();
  return sub_1D165370C(v3 + v4, a2, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
}

uint64_t sub_1D15EA964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D166F174();
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
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D15EAA34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D166F174();
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
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D15EAAF0(uint64_t a1, uint64_t a2)
{
  sub_1D1654BAC(0, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D15EAB8C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  sub_1D1654BAC(0, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D15EAC3C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D15EAC78()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15EACB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
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
    sub_1D165BA98(0, &qword_1EDECB378, MEMORY[0x1E6969530]);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 44);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1D166F8E4();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 48);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D15EADFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    sub_1D165BA98(0, &qword_1EDECB378, MEMORY[0x1E6969530]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1D166F8E4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D15EAF3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1D15EAF84(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_1D15EAFC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 33);
  return result;
}

uint64_t sub_1D15EB010(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 33) = v2;
  return result;
}

uint64_t sub_1D15EB260()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D15EB298()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15EB2D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15EB310()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D15EB36C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1D15EB3B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_1D15EB3F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1D15EB440(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_1D15EB484@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_1D15EB4D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 48);
  *a2 = *(v3 + 40);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1D15EB524(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  result = swift_beginAccess();
  *(v4 + 40) = v2;
  *(v4 + 48) = v3;
  return result;
}

uint64_t sub_1D15EB578@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 49);
  return result;
}

uint64_t sub_1D15EB5C0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 49) = v2;
  return result;
}

uint64_t sub_1D15EB604@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 64);
  *a2 = *(v3 + 56);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1D15EB654(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  result = swift_beginAccess();
  *(v4 + 56) = v2;
  *(v4 + 64) = v3;
  return result;
}

HealthMedicationsExperience::PregnancyTrimesterLactationRatings::Rating_optional __swiftcall PregnancyTrimesterLactationRatings.Rating.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D15EB70C()
{
  v1 = *v0;
  sub_1D16706A4();
  MEMORY[0x1D388D890](v1);
  return sub_1D16706E4();
}

uint64_t sub_1D15EB754(uint64_t a1)
{
  v2 = *v1;
  sub_1D16706A4();
  MEMORY[0x1D388D890](v2);
  return sub_1D16706E4();
}

HealthMedicationsExperience::PregnancyTrimesterLactationRatings __swiftcall PregnancyTrimesterLactationRatings.init(firstTrimester:secondTrimester:thirdTrimester:lactation:)(HealthMedicationsExperience::PregnancyTrimesterLactationRatings::Rating firstTrimester, HealthMedicationsExperience::PregnancyTrimesterLactationRatings::Rating secondTrimester, HealthMedicationsExperience::PregnancyTrimesterLactationRatings::Rating thirdTrimester, HealthMedicationsExperience::PregnancyTrimesterLactationRatings::Rating lactation)
{
  v5 = *secondTrimester;
  v6 = *thirdTrimester;
  v7 = *lactation;
  *v4 = *firstTrimester;
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  result.pregnancyFirstTrimester = firstTrimester;
  return result;
}

HealthMedicationsExperience::PregnancyTrimesterLactationRatings_optional __swiftcall PregnancyTrimesterLactationRatings.init(ratingsString:)(Swift::String ratingsString)
{
  v2 = v1;
  v42 = 44;
  v43 = 0xE100000000000000;
  v40 = &v42;
  v3 = sub_1D15EC5D0(0x7FFFFFFFFFFFFFFFLL, 1, sub_1D15ED988, v39, ratingsString._countAndFlagsBits, ratingsString._object, &v42);
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v3 + 56;
    v8 = v5 - 1;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = (v7 + 32 * v6);
      v11 = v6;
      while (1)
      {
        if (v11 >= *(v4 + 16))
        {
          __break(1u);
          return v3;
        }

        v12 = *(v10 - 3);
        v13 = *(v10 - 2);
        if (!((v13 ^ v12) >> 14))
        {
          goto LABEL_4;
        }

        v14 = *(v10 - 1);
        v15 = *v10;
        if ((*v10 & 0x1000000000000000) == 0)
        {
          break;
        }

        v18 = *v10;
        v33 = *(v10 - 3);
        v36 = *(v10 - 2);
        v31 = *(v10 - 1);

        v34 = sub_1D15ED3F0(v33, v36, v31, v18, 10);
        LOBYTE(v36) = v19;

        if ((v36 & 1) == 0)
        {
          LODWORD(v3) = v34;
          if (v34 < 4)
          {
            goto LABEL_19;
          }
        }

LABEL_4:
        ++v11;
        v10 += 4;
        if (v5 == v11)
        {
          goto LABEL_26;
        }
      }

      if ((v15 & 0x2000000000000000) != 0)
      {
        v42 = *(v10 - 1);
        v43 = v15 & 0xFFFFFFFFFFFFFFLL;
        v16 = &v42;
      }

      else if ((v14 & 0x1000000000000000) != 0)
      {
        v16 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v35 = *(v10 - 3);
        v37 = v2;
        v20 = v8;
        v21 = *v10;
        v22 = v7;
        v23 = *(v10 - 2);
        v32 = *(v10 - 1);
        v16 = sub_1D1670354();
        v14 = v32;
        v12 = v35;
        v13 = v23;
        v7 = v22;
        v2 = v37;
        v15 = v21;
        v8 = v20;
      }

      v3 = sub_1D15ED9E0(v16, v12, v13, v14, v15, 10);
      v41 = v17 & 1;
      if ((v17 & 1) != 0 || v3 >= 4)
      {
        goto LABEL_4;
      }

LABEL_19:
      v38 = v2;
      v24 = v7;
      v25 = v3;
      LODWORD(v3) = swift_isUniquelyReferenced_nonNull_native();
      v26 = v8;
      if ((v3 & 1) == 0)
      {
        v3 = sub_1D15ED2EC(0, *(v9 + 16) + 1, 1, v9, &qword_1EC63D7D8, &type metadata for PregnancyTrimesterLactationRatings.Rating);
        v9 = v3;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      if (v28 >= v27 >> 1)
      {
        v3 = sub_1D15ED2EC((v27 > 1), v28 + 1, 1, v9, &qword_1EC63D7D8, &type metadata for PregnancyTrimesterLactationRatings.Rating);
        v9 = v3;
      }

      v29 = v25;
      v7 = v24;
      v6 = v11 + 1;
      *(v9 + 16) = v28 + 1;
      *(v9 + v28 + 32) = v29;
      v8 = v26;
      v2 = v38;
      if (v26 == v11)
      {
        goto LABEL_26;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_26:

  if (*(v9 + 16) == 4)
  {
    v30 = *(v9 + 32);
  }

  else
  {
    v30 = 4;
  }

  *v2 = v30;
  return v3;
}

HealthMedicationsExperience::PregnancyTrimesterLactationRatings_optional __swiftcall PregnancyTrimesterLactationRatings.init(ratings:)(Swift::OpaquePointer ratings)
{
  v2 = v1;
  if (*(ratings._rawValue + 2) == 4)
  {
    v3 = *(ratings._rawValue + 8);
  }

  else
  {
    v3 = 4;
  }

  *v2 = v3;
  return v4;
}

HealthMedicationsExperience::PregnancyTrimesterLactationRatings_optional HKMedicationUserDomainConcept.pregnancyTrimesterLactationRatings.getter@<W0>(int *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_1D161E974(KeyPath, 0x53555F6E65, 0xE500000000000000);
  v5 = v4;

  if (v5)
  {
    v7._countAndFlagsBits = v3;
    v7._object = v5;
    result = PregnancyTrimesterLactationRatings.init(ratingsString:)(v7);
    v8 = v9;
    if (v9 == 4)
    {
      v8 = 4;
    }
  }

  else
  {
    v8 = 4;
  }

  *a1 = v8;
  return result;
}

void sub_1D15EBBC0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 localizedOntologyPregnancyTrimesterLactationRatings];
  v4 = sub_1D166F944();

  *a2 = v4;
}

uint64_t sub_1D15EBC28(uint64_t a1)
{
  v2 = sub_1D15EE3F4(&qword_1EC63D830, type metadata accessor for HKError, &unk_1D1671EC0);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D15EBC94(uint64_t a1)
{
  v2 = sub_1D15EE3F4(&qword_1EC63D830, type metadata accessor for HKError, &unk_1D1671EC0);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D15EBD04(uint64_t a1)
{
  v2 = sub_1D15EE3F4(&qword_1EC63D868, type metadata accessor for HKError, &unk_1D167205C);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1D15EBD78(uint64_t a1, id *a2)
{
  result = sub_1D166F9E4();
  *a2 = 0;
  return result;
}

uint64_t sub_1D15EBDF0(uint64_t a1, id *a2)
{
  v3 = sub_1D166F9F4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D15EBE70@<X0>(uint64_t *a1@<X8>)
{
  sub_1D166FA04();
  v2 = sub_1D166F9C4();

  *a1 = v2;
  return result;
}

uint64_t sub_1D15EBEB4()
{
  v0 = sub_1D166FA04();
  v1 = MEMORY[0x1D388CD70](v0);

  return v1;
}

uint64_t sub_1D15EBEF0(uint64_t a1)
{
  sub_1D166FA04();
  sub_1D166FAE4();
}

uint64_t sub_1D15EBF44(uint64_t a1)
{
  sub_1D166FA04();
  sub_1D16706A4();
  sub_1D166FAE4();
  v1 = sub_1D16706E4();

  return v1;
}

uint64_t sub_1D15EC02C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1D16706A4();
  a3(v5);
  return sub_1D16706E4();
}

uint64_t sub_1D15EC0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1D16706A4();
  a4(v6);
  return sub_1D16706E4();
}

uint64_t sub_1D15EC12C(uint64_t a1)
{
  v2 = sub_1D15EE3F4(&qword_1EC63D868, type metadata accessor for HKError, &unk_1D167205C);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1D15EC198(uint64_t a1)
{
  v2 = sub_1D15EE3F4(&qword_1EC63D868, type metadata accessor for HKError, &unk_1D167205C);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1D15EC204(void *a1, uint64_t a2)
{
  v4 = sub_1D15EE3F4(&qword_1EC63D868, type metadata accessor for HKError, &unk_1D167205C);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1D15EC2B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D15EE3F4(&qword_1EC63D868, type metadata accessor for HKError, &unk_1D167205C);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1D15EC334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D16706A4();
  sub_1D166F984();
  return sub_1D16706E4();
}

uint64_t sub_1D15EC394(void *a1, uint64_t *a2)
{
  v2 = sub_1D166FA04();
  v4 = v3;
  if (v2 == sub_1D166FA04() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D16705D4();
  }

  return v7 & 1;
}

uint64_t sub_1D15EC41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D15EE3F4(&qword_1EC63D868, type metadata accessor for HKError, &unk_1D167205C);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1D15EC4A0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1D166F9C4();

  *a2 = v3;
  return result;
}

uint64_t sub_1D15EC4E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D166FA04();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D15EC514(uint64_t a1)
{
  v2 = sub_1D15EE3F4(&qword_1EDEC9E10, type metadata accessor for Key, &unk_1D1672018);
  v3 = sub_1D15EE3F4(&qword_1EC63D878, type metadata accessor for Key, &unk_1D1671F6C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

unint64_t sub_1D15EC5D0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1D166FBC4();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1D15EC990(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1D15EC990((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1D166FBA4();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1D166FB04();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1D166FB04();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1D166FBC4();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1D15EC990(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1D166FBC4();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1D15EC990(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1D15EC990((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1D166FB04();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_1D15EC990(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D15EE9A0(0, &qword_1EDEC9D38, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D15ECAB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D15EE9A0(0, &qword_1EDECABA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D15ECC40(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D15EE468(0, &qword_1EC63D790, sub_1D15EE4BC);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1D15ECD54(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D15EE468(0, &qword_1EC63D7B8, sub_1D15EE514);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D15EE514(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D15ECEC0(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1D15EE468(0, a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

char *sub_1D15ED0A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D15EE9A0(0, &qword_1EC63D7A8, &type metadata for MedicationSearchCluster, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D15ED1C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D15EE468(0, &qword_1EC63D788, type metadata accessor for HKMedicationFreeTextFormTypeCode);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1D15ED2EC(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
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
    sub_1D15EE9A0(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
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

unsigned __int8 *sub_1D15ED3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1D15EE5F0();

  result = sub_1D166FBB4();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1D164F4AC(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1D1670354();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1D15ED988(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D16705D4() & 1;
  }
}

uint64_t sub_1D15ED9E0(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1D164F8A4(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1D166FB54();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1D164F8A4(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1D164F8A4(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_1D166FB54();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

unint64_t sub_1D15EDE5C()
{
  result = qword_1EC63D6F0;
  if (!qword_1EC63D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63D6F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PregnancyTrimesterLactationRatings(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[4])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PregnancyTrimesterLactationRatings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PregnancyTrimesterLactationRatings.Rating(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PregnancyTrimesterLactationRatings.Rating(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D15EE3F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D15EE468(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D16705A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D15EE4BC()
{
  if (!qword_1EC63D798)
  {
    v0 = sub_1D166FEF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63D798);
    }
  }
}

void sub_1D15EE514(uint64_t a1)
{
  if (!qword_1EC63D7C0)
  {
    sub_1D15EE5A8(255, &qword_1EDECACB0, 0x1E69A3B10);
    sub_1D15EE5A8(255, &qword_1EDECACF0, 0x1E69A3AD0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC63D7C0);
    }
  }
}

uint64_t sub_1D15EE5A8(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_1D15EE5F0()
{
  result = qword_1EC63D7E0;
  if (!qword_1EC63D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63D7E0);
  }

  return result;
}

uint64_t sub_1D15EE678(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D15EE698(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_1D15EE9A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D15EEA3C()
{
  result = qword_1EC63D858;
  if (!qword_1EC63D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63D858);
  }

  return result;
}

uint64_t UIView.isAtExtraExtraLargeOrBigger.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = sub_1D1670054();
  return v1 & 1;
}

id sub_1D15EEBB8()
{
  v1 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground;
  v2 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground);
  }

  else
  {
    type metadata accessor for MedicationGradientBackground();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D15EEC30()
{
  v1 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientDefaultBackgroundColor;
  v2 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientDefaultBackgroundColor);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientDefaultBackgroundColor);
  }

  else
  {
    v4 = [objc_opt_self() systemGray3Color];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D15EECAC()
{
  v1 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___shapeView;
  v2 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___shapeView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___shapeView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for MedicationShapeView(0)) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D15EED44()
{
  v1 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView;
  v2 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView);
  }

  else
  {
    v4 = sub_1D15EEDA8(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D15EEDA8(uint64_t a1)
{
  v2 = [objc_opt_self() whiteColor];
  v3 = objc_opt_self();
  v4 = [v3 configurationWithHierarchicalColor_];

  v5 = (a1 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_placeholderConfiguration);
  v6 = [v3 configurationWithWeight_];
  v7 = [v4 configurationByApplyingConfiguration_];

  v8 = v7;
  v9 = sub_1D166F9C4();
  v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

  if (v10)
  {
    v11 = [v10 imageWithoutBaseline];
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  v13 = v12;
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setContentMode_];
  [v13 setHidden_];

  return v13;
}

id sub_1D15EEF70(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_circular;
  result = swift_beginAccess();
  v6 = v3[v4];
  v3[v4] = v2;
  if (v2 != v6)
  {
    return [v3 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1D15EEFE0()
{
  v1 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_circular;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1D15EF024(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_circular;
  result = swift_beginAccess();
  v6 = v1[v4];
  v1[v4] = a1;
  if (v6 != v3)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

void (*sub_1D15EF094(uint64_t *a1))(id **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_circular;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1D15EF128;
}

void sub_1D15EF128(id **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = *(*a1 + 40);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    [v1[3] setNeedsLayout];
  }

  free(v1);
}

uint64_t sub_1D15EF184(uint64_t a1, uint64_t *a2)
{
  sub_1D15F290C(0, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1D15F2F9C(a1, &v10 - v5, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_config;
  swift_beginAccess();
  sub_1D15EF390(v6, v7 + v8);
  swift_endAccess();
  sub_1D15F04C4();
  return sub_1D15F32D0(v6, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
}

uint64_t sub_1D15EF294@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_config;
  swift_beginAccess();
  return sub_1D15F2F9C(v1 + v3, a1, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
}

uint64_t sub_1D15EF308(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_config;
  swift_beginAccess();
  sub_1D15EF390(a1, v1 + v3);
  swift_endAccess();
  sub_1D15F04C4();
  return sub_1D15F32D0(a1, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
}

uint64_t sub_1D15EF390(uint64_t a1, uint64_t a2)
{
  sub_1D15F290C(0, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_1D15EF424(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D15EF488;
}

uint64_t sub_1D15EF488(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D15F04C4();
  }

  return result;
}

void *MedicationView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_placeholderConfiguration;
  if (qword_1EDECB080 != -1)
  {
    swift_once();
  }

  *&v4[v9] = xmmword_1EDECB090;
  *&v4[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground] = 0;
  *&v4[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientDefaultBackgroundColor] = 0;
  *&v4[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___shapeView] = 0;
  *&v4[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView] = 0;
  v4[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_circular] = 1;
  v10 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_config;
  v11 = type metadata accessor for MedicationVisualizationConfig(0);
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v24.receiver = v4;
  v24.super_class = type metadata accessor for MedicationView(0);
  v12 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  [v12 setClipsToBounds_];
  v13 = sub_1D15EEBB8();
  [v12 addSubview_];

  v14 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground;
  v15 = *(v12 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground);
  [v12 bounds];
  [v15 setFrame_];

  [*(v12 + v14) setAutoresizingMask_];
  v16 = sub_1D15EECAC();
  [v12 addSubview_];

  v17 = MEMORY[0x1E69E7D40];
  v18 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x148);
  v19 = *(v12 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___shapeView);
  v18();

  v20 = sub_1D15EED44();
  [v12 addSubview_];

  v21 = *((*v17 & *v12) + 0x140);
  v22 = *(v12 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView);
  v21();

  sub_1D15F04C4();
  return v12;
}

char *MedicationView.__allocating_init(frame:placeholderConfiguration:)(uint64_t *a1, double a2, double a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = *a1;
  v13 = a1[1];
  v14 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_placeholderConfiguration;
  if (qword_1EDECB080 != -1)
  {
    swift_once();
  }

  *&v11[v14] = xmmword_1EDECB090;
  *&v11[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground] = 0;
  *&v11[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientDefaultBackgroundColor] = 0;
  *&v11[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___shapeView] = 0;
  *&v11[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView] = 0;
  v11[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_circular] = 1;
  v15 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_config;
  v16 = type metadata accessor for MedicationVisualizationConfig(0);
  (*(*(v16 - 8) + 56))(&v11[v15], 1, 1, v16);
  v31.receiver = v11;
  v31.super_class = v5;
  v17 = objc_msgSendSuper2(&v31, sel_initWithFrame_, a2, a3, a4, a5);
  v18 = (v17 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_placeholderConfiguration);
  *v18 = v12;
  v18[1] = v13;
  v19 = v17;
  [v19 setClipsToBounds_];
  v20 = sub_1D15EEBB8();
  [v19 addSubview_];

  v21 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground;
  v22 = *(v19 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground);
  [v19 bounds];
  [v22 setFrame_];

  [*(v19 + v21) setAutoresizingMask_];
  v23 = sub_1D15EECAC();
  [v19 addSubview_];

  v24 = MEMORY[0x1E69E7D40];
  v25 = *((*MEMORY[0x1E69E7D40] & *v19) + 0x148);
  v26 = *(v19 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___shapeView);
  v25();

  v27 = sub_1D15EED44();
  [v19 addSubview_];

  v28 = *((*v24 & *v19) + 0x140);
  v29 = *(v19 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView);
  v28();

  sub_1D15F04C4();
  return v19;
}

char *MedicationView.init(frame:placeholderConfiguration:)(uint64_t *a1, double a2, double a3, double a4, double a5)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_placeholderConfiguration;
  if (qword_1EDECB080 != -1)
  {
    swift_once();
  }

  *&v5[v12] = xmmword_1EDECB090;
  *&v5[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground] = 0;
  *&v5[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientDefaultBackgroundColor] = 0;
  *&v5[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___shapeView] = 0;
  *&v5[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView] = 0;
  v5[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_circular] = 1;
  v13 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_config;
  v14 = type metadata accessor for MedicationVisualizationConfig(0);
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v29.receiver = v5;
  v29.super_class = type metadata accessor for MedicationView(0);
  v15 = objc_msgSendSuper2(&v29, sel_initWithFrame_, a2, a3, a4, a5);
  v16 = (v15 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_placeholderConfiguration);
  *v16 = v10;
  v16[1] = v11;
  v17 = v15;
  [v17 setClipsToBounds_];
  v18 = sub_1D15EEBB8();
  [v17 addSubview_];

  v19 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground;
  v20 = *(v17 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground);
  [v17 bounds];
  [v20 setFrame_];

  [*(v17 + v19) setAutoresizingMask_];
  v21 = sub_1D15EECAC();
  [v17 addSubview_];

  v22 = MEMORY[0x1E69E7D40];
  v23 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x148);
  v24 = *(v17 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___shapeView);
  v23();

  v25 = sub_1D15EED44();
  [v17 addSubview_];

  v26 = *((*v22 & *v17) + 0x140);
  v27 = *(v17 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView);
  v26();

  sub_1D15F04C4();
  return v17;
}

uint64_t sub_1D15EFDA4()
{
  [v0 setClipsToBounds_];
  v1 = sub_1D15EEBB8();
  [v0 addSubview_];

  v2 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground;
  v3 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground);
  [v0 bounds];
  [v3 setFrame_];

  [*(v0 + v2) setAutoresizingMask_];
  v4 = sub_1D15EECAC();
  [v0 addSubview_];

  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x148);
  v7 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___shapeView);
  v6();

  v8 = sub_1D15EED44();
  [v0 addSubview_];

  v9 = *((*v5 & *v0) + 0x140);
  v10 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView);
  v9();

  return sub_1D15F04C4();
}

void sub_1D15F0018()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for MedicationView(0);
  objc_msgSendSuper2(&v11, sel_setNeedsUpdateConstraints);
  v1 = sub_1D15EECAC();
  v2 = [v1 constraints];

  if (!v2)
  {
    sub_1D15EE5A8(0, &unk_1EDEC9E38, 0x1E696ACD8);
    sub_1D166FC54();
    v2 = sub_1D166FC44();
  }

  v3 = objc_opt_self();
  [v3 deactivateConstraints_];

  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x148);
  v6 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___shapeView);
  v5();

  v7 = sub_1D15EED44();
  v8 = [v7 constraints];

  if (!v8)
  {
    sub_1D15EE5A8(0, &unk_1EDEC9E38, 0x1E696ACD8);
    sub_1D166FC54();
    v8 = sub_1D166FC44();
  }

  [v3 deactivateConstraints_];

  v9 = *((*v4 & *v0) + 0x140);
  v10 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView);
  v9();
}

void sub_1D15F0278(void *a1)
{
  v3 = objc_opt_self();
  sub_1D15F2860();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D1672190;
  v5 = [v1 leadingAnchor];
  v6 = [a1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v1 trailingAnchor];
  v9 = [a1 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  v11 = [v1 topAnchor];
  v12 = [a1 topAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v4 + 48) = v13;
  v14 = [v1 bottomAnchor];
  v15 = [a1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v4 + 56) = v16;
  sub_1D15EE5A8(0, &unk_1EDEC9E38, 0x1E696ACD8);
  v17 = sub_1D166FC44();

  [v3 activateConstraints_];
}

uint64_t sub_1D15F04C4()
{
  v1 = v0;
  sub_1D15F2ED0(0);
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MedicationVisualizationConfig(0);
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15F290C(0, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig, MEMORY[0x1E69E6720]);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v46 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v40 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v40 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v40 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - v18;
  v20 = sub_1D15EECAC();
  v21 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_config;
  swift_beginAccess();
  sub_1D15F2F9C(v1 + v21, v19, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  v22 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_config;
  swift_beginAccess();
  sub_1D15F2F9C(v20 + v22, v17, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  swift_beginAccess();
  sub_1D15EF390(v19, v20 + v22);
  swift_endAccess();
  sub_1D16518D8(v17);

  sub_1D15F32D0(v17, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  sub_1D15F32D0(v19, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  v23 = *(v1 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___shapeView);
  sub_1D15F2F9C(v1 + v21, v14, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  v24 = v45;
  v25 = *(v44 + 48);
  v26 = v25(v14, 1, v45) == 1;
  v27 = v23;
  sub_1D15F32D0(v14, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  [v27 setHidden_];

  v28 = v24;
  v29 = sub_1D15EED44();
  sub_1D15F2F9C(v1 + v21, v11, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  v30 = v25(v11, 1, v24) != 1;
  sub_1D15F32D0(v11, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  v31 = v46;
  [v29 setHidden_];

  v32 = sub_1D15EEBB8();
  sub_1D15F2F9C(v1 + v21, v31, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  if (v25(v31, 1, v28))
  {
    sub_1D15F32D0(v31, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
    v33 = sub_1D15EEC30();
  }

  else
  {
    v34 = v40;
    sub_1D15F346C(v31, v40, type metadata accessor for MedicationVisualizationConfig);
    sub_1D15F32D0(v31, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
    v36 = v41;
    v35 = v42;
    v37 = v34 + *(v28 + 24);
    v38 = v43;
    (*(v42 + 16))(v41, v37, v43);
    sub_1D15F31C8(v34, type metadata accessor for MedicationVisualizationConfig);
    v33 = sub_1D166F894();
    (*(v35 + 8))(v36, v38);
  }

  [v32 setBackgroundColor_];

  return sub_1D15F09F4();
}

uint64_t sub_1D15F09F4()
{
  v1 = v0;
  sub_1D15F2E34(0);
  v75 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v74 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15F290C(0, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v66 - v5;
  v7 = type metadata accessor for MedicationVisualizationConfig(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_config;
  swift_beginAccess();
  sub_1D15F2F9C(v1 + v11, v6, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1D15F32D0(v6, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  }

  sub_1D15F2F38(v6, v10);
  [v1 setIsAccessibilityElement_];
  v13 = sub_1D166F9C4();
  v69 = v1;
  [v1 setAccessibilityIdentifier_];

  LOBYTE(v77) = *v10;
  v14 = MedicationShape.accessibilityLabel.getter();
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = 0xE000000000000000;
  if (v15)
  {
    v17 = v15;
  }

  v66 = v17;
  v67 = v16;
  v68 = v10;
  v18 = *(v10 + 8);
  v21 = *(v18 + 64);
  v20 = v18 + 64;
  v19 = v21;
  v22 = 1 << *(*(v10 + 8) + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v73 = *(v10 + 8);

  v26 = 0;
  v27 = 0;
  v70 = MEMORY[0x1E69E7CC0];
  v71 = v25;
  v72 = v20;
LABEL_11:
  v28 = v26;
  if (!v24)
  {
    goto LABEL_13;
  }

  do
  {
    v76 = v27;
    v26 = v28;
LABEL_17:
    v10 = __clz(__rbit64(v24)) | (v26 << 6);
    v29 = *(v73 + 56);
    v30 = (*(v73 + 48) + 32 * v10);
    v31 = *v30;
    v32 = v30[1];
    v34 = v30[2];
    v33 = v30[3];
    sub_1D15F290C(0, &qword_1EDECAE48, sub_1D15F2ED0, MEMORY[0x1E69E6720]);
    v36 = v29 + *(*(v35 - 8) + 72) * v10;
    v37 = v74;
    sub_1D15F2F9C(v36, &v74[*(v75 + 48)], &qword_1EDECAE48, sub_1D15F2ED0);
    *v37 = v31;
    v37[1] = v32;
    v37[2] = v34;
    v37[3] = v33;

    v38 = sub_1D15F301C(v34, v33);
    if (qword_1EDECA9B0 != -1)
    {
      v38 = swift_once();
    }

    v24 &= v24 - 1;
    MEMORY[0x1EEE9AC00](v38);
    v27 = v76;
    sub_1D15F1494(sub_1D15F3030, v39, &v77);
    v40 = v77;
    if (v77)
    {
      v42 = v78;
      v41 = v79;
      if (qword_1EDECB050 != -1)
      {
        swift_once();
      }

      v10 = sub_1D166F004();
      v44 = v43;
      sub_1D15F3050(v40, v42, v41);
      sub_1D15F31C8(v37, sub_1D15F2E34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = sub_1D15ECAB4(0, *(v70 + 2) + 1, 1, v70);
      }

      v20 = v72;
      v46 = *(v70 + 2);
      v45 = *(v70 + 3);
      if (v46 >= v45 >> 1)
      {
        v70 = sub_1D15ECAB4((v45 > 1), v46 + 1, 1, v70);
      }

      v47 = v70;
      *(v70 + 2) = v46 + 1;
      v48 = &v47[16 * v46];
      *(v48 + 4) = v10;
      *(v48 + 5) = v44;
      v25 = v71;
      goto LABEL_11;
    }

    sub_1D15F31C8(v37, sub_1D15F2E34);
    v28 = v26;
    v25 = v71;
    v20 = v72;
  }

  while (v24);
  while (1)
  {
LABEL_13:
    v26 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v26 >= v25)
    {
      break;
    }

    v24 = *(v20 + 8 * v26);
    ++v28;
    if (v24)
    {
      v76 = v27;
      goto LABEL_17;
    }
  }

  v49 = objc_opt_self();
  v20 = MEMORY[0x1E69E6158];
  v50 = sub_1D166FC44();

  v51 = [v49 localizedStringByJoiningStrings_];

  v24 = sub_1D166FA04();
  v10 = v52;

  if (qword_1EDECA998 == -1)
  {
    goto LABEL_30;
  }

LABEL_39:
  v53 = swift_once();
LABEL_30:
  MEMORY[0x1EEE9AC00](v53);
  v54 = v68;
  sub_1D15F1494(sub_1D15F3090, v55, &v77);
  v56 = v77;
  if (v77)
  {
    v57 = v78;
    v58 = v79;
    if (qword_1EDECB050 != -1)
    {
      swift_once();
    }

    v59 = sub_1D166F004();
    v61 = v60;
    sub_1D15F3050(v56, v57, v58);
  }

  else
  {
    v59 = 0;
    v61 = 0xE000000000000000;
  }

  if (qword_1EDECB050 != -1)
  {
    swift_once();
  }

  sub_1D166F004();
  sub_1D15F30B0(0);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1D16721A0;
  *(v62 + 56) = v20;
  v63 = sub_1D15F3174();
  v64 = v66;
  *(v62 + 32) = v67;
  *(v62 + 40) = v64;
  *(v62 + 96) = v20;
  *(v62 + 104) = v63;
  *(v62 + 64) = v63;
  *(v62 + 72) = v24;
  *(v62 + 80) = v10;
  *(v62 + 136) = v20;
  *(v62 + 144) = v63;
  *(v62 + 112) = v59;
  *(v62 + 120) = v61;
  sub_1D166FA44();

  v65 = sub_1D166F9C4();

  [v69 setAccessibilityLabel_];

  return sub_1D15F31C8(v54, type metadata accessor for MedicationVisualizationConfig);
}

uint64_t sub_1D15F1250(void **a1, uint64_t a2)
{
  sub_1D15F2E34(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15F290C(0, &qword_1EDECAE48, sub_1D15F2ED0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  v11 = *a1;
  sub_1D15F346C(a2, v7, sub_1D15F2E34);
  v12 = *(v7 + 2);
  v13 = *(v7 + 3);
  v14 = v11;

  sub_1D15F3228(v12, v13);
  sub_1D15F323C(&v7[*(v5 + 56)], v10);
  sub_1D15F2ED0(0);
  v16 = v15;
  v17 = *(v15 - 8);
  if ((*(v17 + 48))(v10, 1, v15) == 1)
  {
    sub_1D15F32D0(v10, &qword_1EDECAE48, sub_1D15F2ED0);
    v18 = 0;
  }

  else
  {
    v19 = sub_1D166F894();
    (*(v17 + 8))(v10, v16);
    sub_1D15EE5A8(0, &qword_1EDECACA8, 0x1E69DC888);
    v18 = sub_1D16700A4();
  }

  return v18 & 1;
}

void sub_1D15F1494(uint64_t (*a1)(id *)@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = (a2 + 48);
    while (1)
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v15 = *(v7 - 2);
      v16 = v8;
      v17 = v9;
      v10 = v15;

      v11 = a1(&v15);
      v12 = v15;
      if (v3)
      {

        return;
      }

      if (v11)
      {
        break;
      }

      v7 += 3;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v13 = v16;
    v14 = v17;
    *a3 = v15;
    a3[1] = v13;
    a3[2] = v14;
  }

  else
  {
LABEL_6:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

uint64_t sub_1D15F156C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  for (i = (a3 + 32); ; ++i)
  {
    v7 = *i;
    v10 = *i;

    v8 = a1(&v10);
    if (v3)
    {
      break;
    }

    if (v8)
    {
      return v7;
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1D15F1610(uint64_t *a1)
{
  sub_1D15EE5A8(0, &qword_1EDEC9D80, 0x1E69E58C0);
  type metadata accessor for MedicationVisualizationConfig(0);
  sub_1D15F2ED0(0);
  v1 = sub_1D166F894();
  v2 = sub_1D16700A4();

  return v2 & 1;
}

double sub_1D15F17A8()
{
  *&result = 2;
  xmmword_1EDECB090 = xmmword_1D16721B0;
  return result;
}

double sub_1D15F1804()
{
  *&result = 1;
  xmmword_1EC63D8F0 = xmmword_1D16721C0;
  return result;
}

__n128 sub_1D15F1840@<Q0>(void *a1@<X0>, __n128 *a2@<X1>, __n128 *a4@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a4;
    swift_once();
    a4 = v6;
    a2 = v5;
  }

  result = *a2;
  *a4 = *a2;
  return result;
}

id _s27HealthMedicationsExperience14MedicationViewC5frameACSo6CGRectV_tcfC_0(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MedicationListAvatarView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC27HealthMedicationsExperience24MedicationListAvatarView_shapeViewConstraints] = MEMORY[0x1E69E7CC0];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for MedicationListAvatarView(0);
  v9 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1D15F290C(0, &qword_1EC63D940, sub_1D15F2970, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D16721D0;
  v11 = sub_1D166F504();
  v12 = MEMORY[0x1E69DC2B0];
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D15F29D0();
  v13 = v9;
  sub_1D1670074();

  swift_unknownObjectRelease();

  return v13;
}

void sub_1D15F1A70(void *a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [a2 preferredContentSizeCategory];
    v8 = sub_1D1670054() & 1;
    v9 = [a1 traitCollection];
    v10 = [v9 preferredContentSizeCategory];

    LODWORD(v9) = sub_1D1670054() & 1;
    if (v8 != v9)
    {
      v11 = v6;
      v12 = sub_1D15EECAC();
      sub_1D15F1C30(v12);

      sub_1D15F04C4();
      v13 = sub_1D15EED44();

      sub_1D15F2118(v13);
      v6 = v7;
      v7 = v13;
    }
  }
}

void sub_1D15F1C30(void *a1)
{
  v3 = objc_opt_self();
  v4 = OBJC_IVAR____TtC27HealthMedicationsExperience24MedicationListAvatarView_shapeViewConstraints;
  sub_1D15EE5A8(0, &unk_1EDEC9E38, 0x1E696ACD8);

  v5 = sub_1D166FC44();

  [v3 deactivateConstraints_];

  v6 = [v1 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  LOBYTE(v6) = sub_1D1670054();
  if (v6)
  {
    sub_1D15F2860();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D1672190;
    v9 = [a1 centerYAnchor];
    v10 = [v1 centerYAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    *(v8 + 32) = v11;
    v12 = [a1 leadingAnchor];
    v13 = [v1 leadingAnchor];
    v14 = [v12 constraintEqualToAnchor_];

    *(v8 + 40) = v14;
    v15 = [a1 heightAnchor];
    v16 = &property descriptor for MedicationView.config;
    v17 = [v15 constraintEqualToConstant_];

    *(v8 + 48) = v17;
  }

  else
  {
    v31 = v3;
    v18 = [v1 traitCollection];
    v19 = [v18 preferredContentSizeCategory];

    v20 = sub_1D1670054();
    sub_1D15F2860();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D1672190;
    v21 = [v1 centerXAnchor];
    v22 = [a1 centerXAnchor];
    v23 = [v21 constraintEqualToAnchor_];

    *(v8 + 32) = v23;
    if (v20)
    {
      v24 = [v1 topAnchor];
      v25 = [a1 topAnchor];
      v26 = [v24 constraintEqualToAnchor:v25 constant:-13.0];
    }

    else
    {
      v24 = [v1 centerYAnchor];
      v25 = [a1 centerYAnchor];
      v26 = [v24 constraintEqualToAnchor_];
    }

    *(v8 + 40) = v26;
    v27 = [a1 heightAnchor];
    v16 = 0x1FBB28000;
    v28 = [v27 0x1FBB28FF1];

    *(v8 + 48) = v28;
    v3 = v31;
  }

  v29 = [a1 widthAnchor];
  v30 = [v29 v16[159]];

  *(v8 + 56) = v30;
  *&v1[v4] = v8;

  v32 = sub_1D166FC44();

  [v3 activateConstraints_];
}

void sub_1D15F2118(void *a1)
{
  v2 = v1;
  v4 = [a1 constraints];
  if (!v4)
  {
    sub_1D15EE5A8(0, &unk_1EDEC9E38, 0x1E696ACD8);
    sub_1D166FC54();
    v4 = sub_1D166FC44();
  }

  v5 = objc_opt_self();
  [v5 deactivateConstraints_];

  v6 = [v2 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  LOBYTE(v6) = sub_1D1670054();
  if (v6)
  {
    sub_1D15F2860();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D1672190;
    v9 = [a1 centerYAnchor];
    v10 = [v2 centerYAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    *(v8 + 32) = v11;
    v12 = [a1 leadingAnchor];
    v13 = [v2 leadingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:16.0];

    *(v8 + 40) = v14;
    v15 = [a1 heightAnchor];
    v16 = [v15 constraintEqualToConstant_];

    *(v8 + 48) = v16;
    v17 = [a1 widthAnchor];
    v18 = [v17 constraintEqualToConstant_];

    *(v8 + 56) = v18;
LABEL_7:
    sub_1D15EE5A8(0, &unk_1EDEC9E38, 0x1E696ACD8);
    v30 = sub_1D166FC44();

    [v5 activateConstraints_];

    return;
  }

  v19 = [v2 traitCollection];
  v20 = [v19 preferredContentSizeCategory];

  LOBYTE(v19) = sub_1D1670054();
  if (v19)
  {
    sub_1D15F2860();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D16721E0;
    v22 = [a1 centerXAnchor];
    v23 = [v2 centerXAnchor];
    v24 = [v22 constraintEqualToAnchor_];

    *(v21 + 32) = v24;
    v25 = [a1 topAnchor];
    v26 = [v2 topAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:48.0];

    *(v21 + 40) = v27;
    v28 = [a1 widthAnchor];
    v29 = [v28 constraintEqualToConstant_];

    *(v21 + 48) = v29;
    goto LABEL_7;
  }

  sub_1D15F2658();
}

id sub_1D15F2608(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1D15F2658()
{
  v1 = objc_opt_self();
  sub_1D15F2860();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D16721E0;
  v3 = [v0 centerXAnchor];
  v4 = sub_1D15EED44();
  v5 = [v4 centerXAnchor];

  v6 = [v3 constraintEqualToAnchor_];
  *(v2 + 32) = v6;
  v7 = [v0 centerYAnchor];
  v8 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView;
  v9 = [*&v0[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView] centerYAnchor];
  v10 = [v7 constraintEqualToAnchor_];

  *(v2 + 40) = v10;
  v11 = [*&v0[v8] widthAnchor];
  v12 = [v0 widthAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 multiplier:0.6];

  *(v2 + 48) = v13;
  sub_1D15EE5A8(0, &unk_1EDEC9E38, 0x1E696ACD8);
  v14 = sub_1D166FC44();

  [v1 activateConstraints_];
}

void sub_1D15F2860()
{
  if (!qword_1EDECB330)
  {
    v0 = sub_1D16705A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDECB330);
    }
  }
}

uint64_t sub_1D15F28D4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D15F290C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D15F2970()
{
  result = qword_1EC63D948;
  if (!qword_1EC63D948)
  {
    sub_1D15F3118(255, &qword_1EC63D950, MEMORY[0x1E69DC048]);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EC63D948);
  }

  return result;
}

unint64_t sub_1D15F29D0()
{
  result = qword_1EC63D958;
  if (!qword_1EC63D958)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC63D958);
  }

  return result;
}

void sub_1D15F2A3C(uint64_t a1)
{
  sub_1D15F290C(319, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MedicationView.PlaceholderConfiguration(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MedicationView.PlaceholderConfiguration(uint64_t result, int a2, int a3)
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

void sub_1D15F2E34(uint64_t a1)
{
  if (!qword_1EDECA290[0])
  {
    sub_1D15F290C(255, &qword_1EDECAE48, sub_1D15F2ED0, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDECA290);
    }
  }
}

void sub_1D15F2ED0(uint64_t a1)
{
  if (!qword_1EDECAE50)
  {
    sub_1D15EE5A8(255, &qword_1EDECACA8, 0x1E69DC888);
    v1 = sub_1D166F8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDECAE50);
    }
  }
}

uint64_t sub_1D15F2F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationVisualizationConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D15F2F9C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D15F290C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D15F301C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void *sub_1D15F3050(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

void sub_1D15F30B0(uint64_t a1)
{
  if (!qword_1EDEC9D30)
  {
    sub_1D15F3118(255, &qword_1EDEC9D28, MEMORY[0x1E69E7740]);
    v1 = sub_1D16705A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEC9D30);
    }
  }
}

uint64_t sub_1D15F3118(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1D15F3174()
{
  result = qword_1EDECA010;
  if (!qword_1EDECA010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECA010);
  }

  return result;
}

uint64_t sub_1D15F31C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D15F3228(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1D15F323C(uint64_t a1, uint64_t a2)
{
  sub_1D15F290C(0, &qword_1EDECAE48, sub_1D15F2ED0, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D15F32D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D15F290C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D15F3340()
{
  v1 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_placeholderConfiguration;
  if (qword_1EDECB080 != -1)
  {
    swift_once();
  }

  *(v0 + v1) = xmmword_1EDECB090;
  *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground) = 0;
  *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientDefaultBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___shapeView) = 0;
  *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView) = 0;
  *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_circular) = 1;
  v2 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_config;
  v3 = type metadata accessor for MedicationVisualizationConfig(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  sub_1D1670424();
  __break(1u);
}

uint64_t sub_1D15F346C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ScheduleItem.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ScheduleItem.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_date;
  v4 = sub_1D166F174();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ScheduleItem.medicationIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier);

  return v1;
}

uint64_t ScheduleItem.__allocating_init(identifier:date:medicationIdentifier:doseAmount:isLastScheduledDose:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_date;
  v16 = sub_1D166F174();
  (*(*(v16 - 8) + 32))(v14 + v15, a3, v16);
  v17 = (v14 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier);
  *v17 = a4;
  v17[1] = a5;
  *(v14 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_doseAmount) = a7;
  *(v14 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_isLastScheduledDose) = a6;
  return v14;
}

uint64_t ScheduleItem.init(identifier:date:medicationIdentifier:doseAmount:isLastScheduledDose:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7)
{
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v13 = OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_date;
  v14 = sub_1D166F174();
  (*(*(v14 - 8) + 32))(v7 + v13, a3, v14);
  v15 = (v7 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier);
  *v15 = a4;
  v15[1] = a5;
  *(v7 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_doseAmount) = a7;
  *(v7 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_isLastScheduledDose) = a6;
  return v7;
}

uint64_t ScheduleItem.deinit()
{

  v1 = OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_date;
  v2 = sub_1D166F174();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ScheduleItem.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_date;
  v2 = sub_1D166F174();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s27HealthMedicationsExperience12ScheduleItemC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v4 || (sub_1D16705D4()) && (sub_1D166F134() & 1) != 0 && (*(a1 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier) == *(a2 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier) ? (v5 = *(a1 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier + 8) == *(a2 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier + 8)) : (v5 = 0), (v5 || (sub_1D16705D4()) && *(a1 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_doseAmount) == *(a2 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_doseAmount)))
  {
    v6 = *(a1 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_isLastScheduledDose) ^ *(a2 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_isLastScheduledDose) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t type metadata accessor for ScheduleItem(uint64_t a1)
{
  result = qword_1EDECB0C8;
  if (!qword_1EDECB0C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D15F39EC(uint64_t a1)
{
  result = sub_1D166F174();
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

id HKHealthStore.publisher(for:debugIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1D15F3BDC(a1, a4, type metadata accessor for HKMedicationClusterQueryDescriptor);
  v7 = (a4 + *(type metadata accessor for HKHealthStore.HKMedicationClusterPublisher.Configuration(0) + 20));
  *v7 = a2;
  v7[1] = a3;
  *(a4 + *(type metadata accessor for HKHealthStore.HKMedicationClusterPublisher(0) + 20)) = v9;

  return v9;
}

uint64_t sub_1D15F3BDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id HKHealthStore.HKMedicationClusterPublisher.healthStore.getter()
{
  v1 = *(v0 + *(type metadata accessor for HKHealthStore.HKMedicationClusterPublisher(0) + 20));

  return v1;
}

id static HKHealthStore.HKMedicationClusterPublisher.makeQuery(with:outputHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_1D165ACE8(sub_1D15F3F4C, v6);

  v8 = *(a1 + *(type metadata accessor for HKHealthStore.HKMedicationClusterPublisher.Configuration(0) + 20) + 8);
  v9 = v7;
  if (v8)
  {
    v8 = sub_1D166F9C4();
  }

  [v7 setDebugIdentifier_];

  return v7;
}

uint64_t sub_1D15F3D50(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *))
{
  sub_1D15F4354(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = (v18 - v13);
  if (a2)
  {
    *v12 = a2;
    (*(v9 + 104))(v12, *MEMORY[0x1E69A3898], v8);

    v14 = v12;
  }

  else
  {
    if (a3)
    {
      v15 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      v18[0] = 0;
      sub_1D165BD30(MEMORY[0x1E69E7CC0]);
      sub_1D15F430C(&qword_1EC63D868, type metadata accessor for HKError, &unk_1D167205C);
      sub_1D166F074();
      v15 = v18[1];
    }

    *v14 = v15;
    (*(v9 + 104))(v14, *MEMORY[0x1E69A38A0], v8);
    v16 = a3;
  }

  a4(v14);
  return (*(v9 + 8))(v14, v8);
}

id sub_1D15F3FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_1D165ACE8(sub_1D15F4414, v6);

  v8 = *(a1 + *(type metadata accessor for HKHealthStore.HKMedicationClusterPublisher.Configuration(0) + 20) + 8);
  v9 = v7;
  if (v8)
  {
    v8 = sub_1D166F9C4();
  }

  [v7 setDebugIdentifier_];

  return v7;
}

uint64_t sub_1D15F40C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D15F430C(&qword_1EC63D9B8, type metadata accessor for HKHealthStore.HKMedicationClusterPublisher, &protocol conformance descriptor for HKHealthStore.HKMedicationClusterPublisher);

  return MEMORY[0x1EEE0EB08](a1, a4, a2, v8, a3);
}

uint64_t sub_1D15F417C(uint64_t a1)
{
  result = type metadata accessor for HKHealthStore.HKMedicationClusterPublisher.Configuration(319);
  if (v2 <= 0x3F)
  {
    result = sub_1D15EE5A8(319, &qword_1EDECADC8, 0x1E696C1C0);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D15F4238(uint64_t a1)
{
  type metadata accessor for HKMedicationClusterQueryDescriptor(319);
  if (v1 <= 0x3F)
  {
    sub_1D15F42BC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D15F42BC()
{
  if (!qword_1EDECAE20)
  {
    v0 = sub_1D16700E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDECAE20);
    }
  }
}

uint64_t sub_1D15F430C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D15F4354(uint64_t a1)
{
  if (!qword_1EC63D9C0)
  {
    sub_1D15F43AC(255);
    v1 = sub_1D166F404();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63D9C0);
    }
  }
}

void sub_1D15F43AC(uint64_t a1)
{
  if (!qword_1EC63D9C8)
  {
    sub_1D15EE5A8(255, &qword_1EC63D9D0, 0x1E69A3B08);
    v1 = sub_1D166FCF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63D9C8);
    }
  }
}

uint64_t sub_1D15F4418()
{
  v1 = type metadata accessor for MedicationDoseEventLogSource(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15F8F04(v0, v3, type metadata accessor for MedicationDoseEventLogSource);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D15F9034(0);
    v5 = *(v4 + 64);

    v6 = objc_opt_self();

    v7 = sub_1D166F9C4();

    v8 = sub_1D166F9C4();

    v9 = [v6 syncIdentifierForScheduleItemIdentifier:v7 medicationIdentifier:v8];

    v10 = sub_1D166FA04();
  }

  else
  {

    sub_1D15F933C(0);
    v5 = *(v11 + 48);

    v9 = [objc_opt_self() syncIdentifierForScheduleItemIdentifier:0 medicationIdentifier:0];
    v10 = sub_1D166FA04();
  }

  v12 = sub_1D166F174();
  (*(*(v12 - 8) + 8))(&v3[v5], v12);
  return v10;
}

uint64_t MedicationDoseEventUpdateModel.logDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MedicationDoseEventUpdateModel(0) + 24);

  return sub_1D15F8A24(v3, a1);
}

uint64_t MedicationDoseEventUpdateModel.init(medicationDoseEvent:status:logDate:doseAmount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  updated = type metadata accessor for MedicationDoseEventUpdateModel(0);
  result = sub_1D15F8AB8(a4, a7 + *(updated + 24));
  v13 = a7 + *(updated + 28);
  *v13 = a5;
  *(v13 + 8) = a6 & 1;
  return result;
}

uint64_t sub_1D15F4730()
{
  v1 = v0;
  sub_1D15F96D0(0, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v51 - v6;
  v8 = sub_1D166F174();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v60 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v51 - v15;
  if (*(v0 + 16) == 1)
  {
    v59 = [*v0 logStatus];
  }

  else
  {
    v59 = *(v0 + 8);
  }

  updated = type metadata accessor for MedicationDoseEventUpdateModel(0);
  v18 = v0 + *(updated + 28);
  if (*(v18 + 8) == 1)
  {
    v57 = sub_1D1670014();
    v56 = v19;
  }

  else
  {
    v56 = 0;
    v57 = *v18;
  }

  sub_1D15F8A24(v0 + *(updated + 24), v7);
  v20 = *(v9 + 48);
  if (v20(v7, 1, v8) == 1)
  {
    v21 = [*v0 startDate];
    sub_1D166F144();

    if (v20(v7, 1, v8) != 1)
    {
      sub_1D15F8E38(v7);
    }
  }

  else
  {
    (*(v9 + 32))(v16, v7, v8);
  }

  Date.dateWithOutSecsAndNanoSecs()(v14);
  v22 = *v1;
  v23 = [v22 metadata];
  v58 = v16;
  if (v23)
  {
    v24 = v23;
    v25 = sub_1D166F944();

    v26 = sub_1D166FA04();
    if (*(v25 + 16))
    {
      v28 = sub_1D16061DC(v26, v27);
      v30 = v29;

      if (v30)
      {
        sub_1D15F928C(*(v25 + 56) + 32 * v28, v61);

        sub_1D15FA184(v61, &v62);
        v31 = objc_opt_self();
        __swift_project_boxed_opaque_existential_0(&v62, v63);
        v32 = sub_1D16705C4();
        v33 = [v31 syncVersionForStatus_];
        v34 = [v31 _metadataWithSyncIdentifier_syncVersion_isLastScheduledDose_];
        swift_unknownObjectRelease();

        v55 = sub_1D166F944();
        __swift_destroy_boxed_opaque_existential_0(&v62);
        goto LABEL_18;
      }
    }

    else
    {
    }
  }

  v55 = 0;
LABEL_18:
  v54 = [v22 logOrigin];
  v35 = [v22 scheduleItemIdentifier];
  if (v35)
  {
    v36 = v35;
    v37 = sub_1D166FA04();
    v52 = v38;
    v53 = v37;
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v39 = [v22 medicationIdentifier];
  sub_1D166FA04();
  v51 = v40;

  sub_1D1670004();
  v41 = [v22 scheduledDate];
  if (v41)
  {
    v42 = v14;
    v43 = v41;
    sub_1D166F144();

    v14 = v42;
    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  (*(v9 + 56))(v5, v44, 1, v8);
  v45 = v14;
  (*(v9 + 16))(v60, v14, v8);
  v46 = [v22 doseUnitString];
  if (v46)
  {
    v47 = v46;
    sub_1D166FA04();
  }

  sub_1D15EE5A8(0, &unk_1EDECACE0, 0x1E696C280);
  v48 = sub_1D1670024();
  v49 = *(v9 + 8);
  v49(v45, v8);
  v49(v58, v8);
  return v48;
}

uint64_t Date.dateWithOutSecsAndNanoSecs()@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  sub_1D15F96D0(0, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v25 = &v24 - v2;
  v30 = sub_1D166F2D4();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D166EFA4();
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D166F2B4();
  sub_1D15F96D0(0, &qword_1EC63D9D8, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v7 = sub_1D166F2C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = 4 * v9;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D1672470;
  v13 = v12 + v10;
  v14 = *(v8 + 104);
  v14(v13, *MEMORY[0x1E6969A68], v7);
  v14(v13 + v9, *MEMORY[0x1E6969A78], v7);
  v14(v13 + 2 * v9, *MEMORY[0x1E6969A48], v7);
  v15 = 3 * v9;
  v16 = v26;
  v14(v13 + v15, *MEMORY[0x1E6969A58], v7);
  v14(v13 + v11, *MEMORY[0x1E6969A88], v7);
  v17 = v25;
  sub_1D15F8B4C(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D166F244();

  v18 = *(v28 + 8);
  v19 = v30;
  v18(v4, v30);
  sub_1D166F2B4();
  sub_1D166F294();
  v18(v4, v19);
  (*(v27 + 8))(v6, v29);
  v20 = sub_1D166F174();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v17, 1, v20) != 1)
  {
    return (*(v21 + 32))(v31, v17, v20);
  }

  (*(v21 + 16))(v31, v16, v20);
  result = (v22)(v17, 1, v20);
  if (result != 1)
  {
    return sub_1D15F8E38(v17);
  }

  return result;
}

uint64_t MedicationDoseEventLogger.__allocating_init(healthStore:)(id a1)
{
  result = swift_allocObject();
  if (!a1)
  {
    v3 = result;
    a1 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    [a1 setSourceBundleIdentifier_];
    [a1 resume];
    result = v3;
  }

  *(result + 16) = a1;
  return result;
}

uint64_t MedicationDoseEventLogger.init(healthStore:)(id a1)
{
  if (!a1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    [v2 setSourceBundleIdentifier_];
    [v2 resume];
    a1 = v2;
  }

  *(v1 + 16) = a1;
  return v1;
}

uint64_t MedicationDoseEventLogger.saveMedicationDoseEvents(_:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *(type metadata accessor for MedicationDoseEventUpdateModel(0) - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = *(type metadata accessor for MedicationDoseEventLogSource(0) - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v3 = type metadata accessor for MedicationDoseEventSaveRequest(0);
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D15F547C, 0, 0);
}

uint64_t sub_1D15F547C()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[12];
    v4 = v0[8];
    v5 = v0[5];
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v33 = *(v3 + 72);
    v29 = (v4 + 72);
    v30 = (v4 + 80);
    v27 = (v5 + 72);
    v28 = (v5 + 80);
    v32 = v0 + 10;
    v31 = v0 + 7;
    v34 = MEMORY[0x1E69E7CC0];
    v35 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D15F8F04(v6, v0[13], type metadata accessor for MedicationDoseEventSaveRequest);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v11 = v0[13];
      if (EnumCaseMultiPayload == 1)
      {
        v12 = *v31;
        v13 = v0[6];
        sub_1D15F8F6C(v11, *v31, type metadata accessor for MedicationDoseEventUpdateModel);
        sub_1D15F8F04(v12, v13, type metadata accessor for MedicationDoseEventUpdateModel);
        v14 = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1D15ECBD8(0, v34[2] + 1, 1, v34);
        }

        v16 = v14[2];
        v15 = v14[3];
        v17 = v16 + 1;
        v18 = type metadata accessor for MedicationDoseEventUpdateModel;
        v19 = type metadata accessor for MedicationDoseEventUpdateModel;
        if (v16 >= v15 >> 1)
        {
          v14 = sub_1D15ECBD8((v15 > 1), v16 + 1, 1, v14);
          v18 = type metadata accessor for MedicationDoseEventUpdateModel;
          v19 = type metadata accessor for MedicationDoseEventUpdateModel;
        }

        v21 = v0 + 6;
        v20 = v0 + 7;
        v22 = v27;
        v23 = v28;
        v34 = v14;
      }

      else
      {
        v24 = *v32;
        v25 = v0[9];
        sub_1D15F8F6C(v11, *v32, type metadata accessor for MedicationDoseEventLogSource);
        sub_1D15F8F04(v24, v25, type metadata accessor for MedicationDoseEventLogSource);
        v14 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1D15ECC0C(0, v35[2] + 1, 1, v35);
        }

        v16 = v14[2];
        v26 = v14[3];
        v17 = v16 + 1;
        v18 = type metadata accessor for MedicationDoseEventLogSource;
        v19 = type metadata accessor for MedicationDoseEventLogSource;
        if (v16 >= v26 >> 1)
        {
          v14 = sub_1D15ECC0C((v26 > 1), v16 + 1, 1, v14);
          v18 = type metadata accessor for MedicationDoseEventLogSource;
          v19 = type metadata accessor for MedicationDoseEventLogSource;
        }

        v21 = v0 + 9;
        v20 = v0 + 10;
        v22 = v29;
        v23 = v30;
        v35 = v14;
      }

      v9 = *v21;
      sub_1D15F8FD4(*v20, v19);
      v14[2] = v17;
      sub_1D15F8F6C(v9, v14 + ((*v23 + 32) & ~*v23) + *v22 * v16, v18);
      v6 += v33;
      --v2;
    }

    while (v2);
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
    v35 = MEMORY[0x1E69E7CC0];
  }

  v0[14] = v34;
  v0[15] = v35;
  v0[2] = MEMORY[0x1E69E7CC0];
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_1D15F5860;

  return MedicationDoseEventLogger.logMedicationDoseEvents(_:)(v35);
}

uint64_t sub_1D15F5860(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D15F5C3C, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[19] = v5;
    *v5 = v4;
    v5[1] = sub_1D15F5A10;
    v6 = v3[14];

    return MedicationDoseEventLogger.updateMedicationDoseEvents(_:)(v6);
  }
}

uint64_t sub_1D15F5A10(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {

    v5 = sub_1D15F5CD8;
  }

  else
  {
    *(v4 + 168) = a1;
    v5 = sub_1D15F5B54;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D15F5B54()
{
  v1 = v0[21];
  sub_1D15F7174(v0[17], sub_1D1626B98);
  sub_1D15F7174(v1, sub_1D1626B98);
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1D15F5C3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D15F5CD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MedicationDoseEventLogger.logMedicationDoseEvents(_:)(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v2[21] = *v1;
  sub_1D15F96D0(0, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v2[22] = swift_task_alloc();
  v3 = sub_1D166F174();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v4 = type metadata accessor for MedicationDoseEventLogSource(0);
  v2[27] = v4;
  v2[28] = *(v4 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D15F5F2C, 0, 0);
}

uint64_t sub_1D15F5F2C()
{
  v68 = v0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[18] = MEMORY[0x1E69E7CC0];
  v2 = v0[19];
  v66 = *(v2 + 16);
  if (v66)
  {
    v3 = v0[28];
    v4 = v0[29];
    v5 = v0[24];
    v6 = v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v62 = *(v3 + 72);
    v60 = (v5 + 56);
    v61 = (v5 + 32);
    v58 = (v5 + 8);
    v59 = (v5 + 16);
    v63 = v4;
    do
    {
      v7 = v0[29];
      v8 = v0[30];
      sub_1D15F8F04(v6, v8, type metadata accessor for MedicationDoseEventLogSource);
      sub_1D15F8F04(v8, v7, type metadata accessor for MedicationDoseEventLogSource);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v10 = v0[29];
      v11 = v0[26];
      v12 = v0[23];
      v64 = v0[22];
      v65 = v0[25];
      if (EnumCaseMultiPayload == 1)
      {
        v13 = *(v4 + 16);
        sub_1D15F9034(0);
        v15 = *(v10 + *(v14 + 80));
        (*v61)(v11, v10 + *(v14 + 64), v12);
        sub_1D15F4418();
        v16 = objc_opt_self();

        v17 = sub_1D166F9C4();

        v18 = [v16 syncVersionForStatus_];
        v19 = [v16 _metadataWithSyncIdentifier_syncVersion_isLastScheduledDose_];

        sub_1D166F944();
        sub_1D15EE5A8(0, &unk_1EDECACE0, 0x1E696C280);
        v20 = v11;
        v21 = *v59;
        (*v59)(v64, v13 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_date, v12);
        (*v60)(v64, 0, 1, v12);
        v21(v65, v20, v12);

        v22 = sub_1D1670024();
      }

      else
      {
        sub_1D15F933C(0);
        v24 = *(v10 + *(v23 + 64));
        (*v61)(v11, v10 + *(v23 + 48), v12);
        sub_1D15F4418();
        v25 = objc_opt_self();
        v26 = sub_1D166F9C4();

        v27 = [v25 syncVersionForStatus_];
        v28 = [v25 _metadataWithSyncIdentifier_syncVersion_isLastScheduledDose_];

        sub_1D166F944();
        sub_1D15EE5A8(0, &unk_1EDECACE0, 0x1E696C280);
        (*v60)(v64, 1, 1, v12);
        (*v59)(v65, v11, v12);
        v22 = sub_1D1670024();
      }

      (*v58)(v0[26], v0[23]);
      v29 = v22;
      MEMORY[0x1D388CE10](v29, v30, v31, v32, v33, v34, v35);
      if (*((v0[18] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[18] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D166FC84();
      }

      v36 = v0[30];
      sub_1D166FCC4();

      sub_1D15F8FD4(v36, type metadata accessor for MedicationDoseEventLogSource);
      v4 = v63;
      v6 += v62;
      --v66;
    }

    while (v66);
    v1 = v0[18];
  }

  v0[31] = v1;
  if (v1 >> 62)
  {
    if (sub_1D1670224())
    {
      goto LABEL_12;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v37 = sub_1D166F4E4();
    v0[32] = __swift_project_value_buffer(v37, qword_1EDECB360);
    v38 = sub_1D166F4D4();
    v39 = sub_1D166FF64();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v67[0] = v41;
      *v40 = 136315394;
      v42 = sub_1D1670754();
      v44 = sub_1D15F7A30(v42, v43, v67);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      v45 = sub_1D15EE5A8(0, &unk_1EDECACE0, 0x1E696C280);

      v47 = MEMORY[0x1D388CE40](v46, v45);
      v49 = v48;

      v50 = sub_1D15F7A30(v47, v49, v67);

      *(v40 + 14) = v50;
      _os_log_impl(&dword_1D15E6000, v38, v39, "%s Saving medication dose events to healthStore: %s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D388E250](v41, -1, -1);
      MEMORY[0x1D388E250](v40, -1, -1);
    }

    v51 = *(v0[20] + 16);
    if (v1 >> 62)
    {
      sub_1D15EE5A8(0, &qword_1EC63D9F0, 0x1E696C2D0);

      sub_1D1670434();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      sub_1D16705E4();
      sub_1D15EE5A8(0, &qword_1EC63D9F0, 0x1E696C2D0);
    }

    sub_1D15EE5A8(0, &qword_1EC63D9F0, 0x1E696C2D0);
    v52 = sub_1D166FC44();
    v0[33] = v52;

    v0[2] = v0;
    v0[3] = sub_1D15F68B8;
    v53 = swift_continuation_init();
    sub_1D15F94CC(0, &qword_1EC63D9F8, MEMORY[0x1E69E7CA8] + 8);
    v0[17] = v54;
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D15F7284;
    v0[13] = &block_descriptor;
    v0[14] = v53;
    [v51 saveObjects:v52 withCompletion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  v55 = v0[1];
  v56 = v0[31];

  return v55(v56);
}

uint64_t sub_1D15F68B8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_1D15F6B44;
  }

  else
  {
    v2 = sub_1D15F69C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D15F69C8()
{
  v12 = v0;

  v1 = sub_1D166F4D4();
  v2 = sub_1D166FF64();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136315138;
    v5 = sub_1D1670754();
    v7 = sub_1D15F7A30(v5, v6, &v11);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1D15E6000, v1, v2, "%s SUCCESS: medication dose events saved in healthStore!", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x1D388E250](v4, -1, -1);
    MEMORY[0x1D388E250](v3, -1, -1);
  }

  v8 = *(v0 + 8);
  v9 = *(v0 + 248);

  return v8(v9);
}

uint64_t sub_1D15F6B44()
{
  v1 = *(v0 + 264);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t MedicationDoseEventLogger.updateMedicationDoseEvents(_:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D15F6C2C, 0, 0);
}

uint64_t sub_1D15F6C2C()
{
  v1 = MEMORY[0x1E69E7CC0];
  v0[18] = MEMORY[0x1E69E7CC0];
  v2 = v0 + 18;
  v3 = v0[19];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(type metadata accessor for MedicationDoseEventUpdateModel(0) - 8);
    v6 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      v8 = sub_1D15F4730();
      MEMORY[0x1D388CE10]();
      if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D166FC84();
      }

      sub_1D166FCC4();

      v6 += v7;
      --v4;
    }

    while (v4);
    v1 = *v2;
  }

  v0[21] = v1;
  if (v1 >> 62)
  {
    if (sub_1D1670224())
    {
      v9 = *(v0[20] + 16);
      sub_1D15EE5A8(0, &qword_1EC63D9F0, 0x1E696C2D0);

      sub_1D1670434();

      goto LABEL_10;
    }

    v1 = v0[21];
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v0[20] + 16);

    sub_1D16705E4();
    sub_1D15EE5A8(0, &qword_1EC63D9F0, 0x1E696C2D0);
LABEL_10:
    sub_1D15EE5A8(0, &qword_1EC63D9F0, 0x1E696C2D0);
    v10 = sub_1D166FC44();
    v0[22] = v10;

    v0[2] = v0;
    v0[3] = sub_1D15F6F6C;
    v11 = swift_continuation_init();
    sub_1D15F94CC(0, &qword_1EC63D9F8, MEMORY[0x1E69E7CA8] + 8);
    v0[17] = v12;
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D15F7284;
    v0[13] = &block_descriptor_7;
    v0[14] = v11;
    [v9 saveObjects:v10 withCompletion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  v13 = v0[1];

  return v13(v1);
}

uint64_t sub_1D15F6F6C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {

    v2 = sub_1D15F70EC;
  }

  else
  {
    v2 = sub_1D15F7084;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D15F7084()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 168);

  return v1(v2);
}

uint64_t sub_1D15F70EC()
{
  v1 = *(v0 + 176);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D15F7174(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1D1670224();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1D1670224();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1D15F7F7C(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D15F7284(uint64_t a1, int a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v5 = *v5;

    return MEMORY[0x1EEE6DEE0](v5);
  }

  if (!a3)
  {
    __break(1u);
    return MEMORY[0x1EEE6DEE0](v5);
  }

  sub_1D15F9218();
  swift_allocError();
  *v6 = a3;
  v7 = a3;

  return swift_continuation_throwingResumeWithError();
}

uint64_t MedicationDoseEventLogger.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D15F7388(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D15F7420;

  return MedicationDoseEventLogger.logMedicationDoseEvents(_:)(a1);
}

uint64_t sub_1D15F7420(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1D15F7520(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D15FA328;

  return MedicationDoseEventLogger.updateMedicationDoseEvents(_:)(a1);
}

uint64_t MedicationDoseEventLogger.logUnloggedMedications(for:status:logDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D15F75E0, 0, 0);
}

uint64_t sub_1D15F75E0()
{
  v1 = v0[20];
  v2 = [objc_allocWithZone(MEMORY[0x1E69A3AE0]) initWithHealthStore_];
  v0[23] = v2;
  v3 = sub_1D166F9C4();
  v0[24] = v3;
  v4 = sub_1D166F124();
  v0[25] = v4;
  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_1D15F776C;
  v5 = swift_continuation_init();
  sub_1D15F94CC(0, &qword_1EC63DA08, MEMORY[0x1E69E6370]);
  v0[17] = v6;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D15F7970;
  v0[13] = &block_descriptor_11;
  v0[14] = v5;
  [v2 logUnloggedDoseEventsForScheduledItemIdentifier:v3 status:v1 logDate:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D15F776C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_1D15F78EC;
  }

  else
  {
    v2 = sub_1D15F787C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D15F787C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D15F78EC()
{
  v1 = v0[25];
  v3 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D15F7970(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1D15F9218();
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

unint64_t sub_1D15F7A30(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D15F7AFC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1D15F928C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1D15F7AFC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1D15F7C08(a5, a6);
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
    result = sub_1D1670354();
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

void *sub_1D15F7C08(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D15F7C54(a1, a2);
  sub_1D15F7D84(&unk_1F4D4ACF8);
  return v3;
}

void *sub_1D15F7C54(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D164F434(v5, 0);
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

  result = sub_1D1670354();
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
        v10 = sub_1D166FB24();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D164F434(v10, 0);
        result = sub_1D16702C4();
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

uint64_t sub_1D15F7D84(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D15F7E70(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1D15F7E70(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D15FA194(0, &qword_1EC63DA68, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

uint64_t sub_1D15F7F7C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1D1670224();
LABEL_9:
  result = sub_1D1670304();
  *v2 = result;
  return result;
}

uint64_t _s27HealthMedicationsExperience28MedicationDoseEventLogSourceO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v100 = sub_1D166F174();
  v102 = *(v100 - 8);
  v4 = MEMORY[0x1EEE9AC00](v100);
  v98 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v87 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v97 = &v87 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v87 - v11;
  v13 = type metadata accessor for MedicationDoseEventLogSource(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (&v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v87 - v17);
  sub_1D15FA2A8(0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = &v22[*(v20 + 56)];
  sub_1D15F8F04(a1, v22, type metadata accessor for MedicationDoseEventLogSource);
  sub_1D15F8F04(a2, v23, type metadata accessor for MedicationDoseEventLogSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v101 = v22;
  if (EnumCaseMultiPayload != 1)
  {
    v98 = v12;
    sub_1D15F8F04(v22, v18, type metadata accessor for MedicationDoseEventLogSource);
    v46 = *v18;
    v45 = v18[1];
    sub_1D15F933C(0);
    v48 = v47[12];
    v29 = v18 + v48;
    v49 = v47[16];
    v96 = *(v18 + v49);
    v50 = v47[20];
    v51 = *(v18 + v50);
    LODWORD(v95) = *(v18 + v50 + 8);
    v52 = v47[24];
    v53 = *(v18 + v52);
    v54 = *(v18 + v52 + 8);
    v94 = v53;
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      goto LABEL_9;
    }

    v99 = v54;
    v57 = *v23;
    v58 = *(v23 + 1);
    v93 = *&v23[v49];
    v59 = *&v23[v50];
    LODWORD(v92) = v23[v50 + 8];
    v60 = *&v23[v52];
    v39 = *&v23[v52 + 8];
    v91 = v60;
    v61 = *(v102 + 32);
    v62 = v29;
    v42 = v100;
    v61(v98, v62, v100);
    v63 = &v23[v48];
    v64 = v97;
    v61(v97, v63, v42);
    if (v46 == v57 && v45 == v58)
    {
    }

    else
    {
      v68 = sub_1D16705D4();

      if ((v68 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v69 = v98;
    if ((sub_1D166F134() & 1) == 0)
    {

      v71 = *(v102 + 8);
      v71(v64, v42);
      v71(v69, v42);
      goto LABEL_30;
    }

    if (v96 == v93)
    {
      if (v95)
      {
        if (!v92)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v51 == v59)
        {
          v76 = v92;
        }

        else
        {
          v76 = 1;
        }

        if (v76)
        {
          goto LABEL_29;
        }
      }

      if (v99)
      {
        if (v39)
        {
          if (v94 == v91 && v99 == v39)
          {

            v77 = *(v102 + 8);
            v77(v64, v42);
            v78 = v98;
LABEL_51:
            v77(v78, v42);
            v55 = 1;
            goto LABEL_31;
          }

          v83 = sub_1D16705D4();

          v84 = *(v102 + 8);
          v84(v64, v42);
          v84(v98, v42);
          goto LABEL_63;
        }

        v82 = *(v102 + 8);
        v82(v64, v42);
        v82(v98, v42);
LABEL_60:
        v74 = v101;
LABEL_61:
        v55 = 0;
        v56 = type metadata accessor for MedicationDoseEventLogSource;
        goto LABEL_33;
      }

      v80 = *(v102 + 8);
      v80(v64, v42);
      v81 = v98;
LABEL_56:
      v80(v81, v42);
      v56 = type metadata accessor for MedicationDoseEventLogSource;
      if (!v39)
      {
        v55 = 1;
        goto LABEL_32;
      }

      goto LABEL_60;
    }

LABEL_29:

    v73 = *(v102 + 8);
    v73(v64, v42);
    v73(v98, v42);
    goto LABEL_30;
  }

  v97 = v8;
  sub_1D15F8F04(v22, v16, type metadata accessor for MedicationDoseEventLogSource);
  v25 = *v16;
  v96 = v16[1];
  v26 = v16[2];
  sub_1D15F9034(0);
  v28 = v27[16];
  v29 = v16 + v28;
  v30 = v27[20];
  v95 = *(v16 + v30);
  v31 = v27[24];
  v32 = *(v16 + v31);
  LODWORD(v94) = *(v16 + v31 + 8);
  v33 = v27[28];
  v34 = v16 + v33;
  v35 = *(v16 + v33);
  v99 = *(v34 + 1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v89 = v35;
    v37 = *v23;
    v36 = *(v23 + 1);
    v92 = *(v23 + 2);
    v93 = v26;
    v91 = *&v23[v30];
    v38 = *&v23[v31];
    v90 = v23[v31 + 8];
    v39 = *&v23[v33 + 8];
    v88 = *&v23[v33];
    v40 = *(v102 + 32);
    v41 = v29;
    v42 = v100;
    v40(v97, v41, v100);
    v43 = &v23[v28];
    v44 = v98;
    v40(v98, v43, v42);
    if (v25 == v37 && v96 == v36)
    {
    }

    else
    {
      v65 = sub_1D16705D4();

      if ((v65 & 1) == 0)
      {

        v72 = *(v102 + 8);
        v72(v44, v42);
        v72(v97, v42);
        goto LABEL_30;
      }
    }

    v66 = _s27HealthMedicationsExperience12ScheduleItemC2eeoiySbAC_ACtFZ_0(v93, v92);
    v67 = v97;
    if ((v66 & 1) == 0 || (sub_1D166F134() & 1) == 0 || v95 != v91)
    {
      goto LABEL_26;
    }

    if (v94)
    {
      if (!v90)
      {
LABEL_26:

        v70 = *(v102 + 8);
        v70(v44, v42);
        v70(v67, v42);
LABEL_30:
        v55 = 0;
LABEL_31:
        v56 = type metadata accessor for MedicationDoseEventLogSource;
        goto LABEL_32;
      }
    }

    else
    {
      v79 = v90;
      if (v32 != v38)
      {
        v79 = 1;
      }

      if (v79)
      {
        goto LABEL_26;
      }
    }

    if (v99)
    {
      if (v39)
      {
        if (v89 == v88 && v99 == v39)
        {

          v77 = *(v102 + 8);
          v77(v44, v42);
          v78 = v67;
          goto LABEL_51;
        }

        v83 = sub_1D16705D4();

        v86 = *(v102 + 8);
        v86(v44, v42);
        v86(v67, v42);
LABEL_63:
        v56 = type metadata accessor for MedicationDoseEventLogSource;
        v74 = v101;
        if (v83)
        {
          v55 = 1;
          goto LABEL_33;
        }

        goto LABEL_61;
      }

      v85 = *(v102 + 8);
      v85(v44, v42);
      v85(v67, v42);
      goto LABEL_60;
    }

    v80 = *(v102 + 8);
    v80(v44, v42);
    v81 = v67;
    goto LABEL_56;
  }

LABEL_9:

  (*(v102 + 8))(v29, v100);
  v55 = 0;
  v56 = sub_1D15FA2A8;
LABEL_32:
  v74 = v101;
LABEL_33:
  sub_1D15F8FD4(v74, v56);
  return v55;
}

uint64_t sub_1D15F8A24(uint64_t a1, uint64_t a2)
{
  sub_1D15F96D0(0, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D15F8AB8(uint64_t a1, uint64_t a2)
{
  sub_1D15F96D0(0, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D15F8B4C(uint64_t a1)
{
  v2 = sub_1D166F2C4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D15FA1E4(0);
    v9 = sub_1D16702A4();
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
      sub_1D15FA264(&qword_1EC63DA78, MEMORY[0x1E6969AD8]);
      v16 = sub_1D166F974();
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
          sub_1D15FA264(&qword_1EC63DA80, MEMORY[0x1E6969AE0]);
          v23 = sub_1D166F9B4();
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

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D15F8E38(uint64_t a1)
{
  sub_1D15F96D0(0, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D15F8F04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D15F8F6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D15F8FD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D15F9034(uint64_t a1)
{
  if (!qword_1EC63D9E0)
  {
    MEMORY[0x1EEE9AC00](a1);
    v1 = MEMORY[0x1E69E6158];
    type metadata accessor for ScheduleItem(255);
    sub_1D166F174();
    type metadata accessor for LogStatus(255);
    v2 = MEMORY[0x1E69E6720];
    sub_1D15FA194(255, &qword_1EC63D9E8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    sub_1D15FA194(255, &qword_1EDECAE20, v1, v2);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC63D9E0);
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1D15F9218()
{
  result = qword_1EDECB320;
  if (!qword_1EDECB320)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDECB320);
  }

  return result;
}

uint64_t sub_1D15F928C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

void sub_1D15F933C(uint64_t a1)
{
  if (!qword_1EC63DA00)
  {
    MEMORY[0x1EEE9AC00](a1);
    v1 = MEMORY[0x1E69E6158];
    sub_1D166F174();
    type metadata accessor for LogStatus(255);
    v2 = MEMORY[0x1E69E6720];
    sub_1D15FA194(255, &qword_1EC63D9E8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    sub_1D15FA194(255, &qword_1EDECAE20, v1, v2);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC63DA00);
    }
  }
}

void sub_1D15F94CC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_1D15F9218();
    v4 = sub_1D166FDD4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D15F9588(uint64_t a1)
{
  sub_1D15EE5A8(319, &unk_1EDECACE0, 0x1E696C280);
  if (v1 <= 0x3F)
  {
    sub_1D15F96D0(319, &qword_1EC63DA30, type metadata accessor for LogStatus, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D15F96D0(319, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1D15FA194(319, &qword_1EC63D9E8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D15F96D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D15F97B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of MedicationDoseEventLogging.logMedicationDoseEvents(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D15F9958;

  return v9(a1, a2, a3);
}

uint64_t sub_1D15F9958(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of MedicationDoseEventLogging.updateMedicationDoseEvents(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D15FA320;

  return v9(a1, a2, a3);
}

void sub_1D15F9BCC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1D1670224())
    {
LABEL_3:
      sub_1D15F9EB0(0);
      v3 = sub_1D16702A4();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1D1670224();
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

  v3 = MEMORY[0x1E69E7CD0];
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
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x1D388D4D0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1D1670094();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1D15EE5A8(0, &qword_1EC63DA50, 0x1E696AD98);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1D16700A4();

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
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
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
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_1D1670094();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_1D15EE5A8(0, &qword_1EC63DA50, 0x1E696AD98);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1D16700A4();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_1D15F9EB0(uint64_t a1)
{
  if (!qword_1EC63DA48)
  {
    sub_1D15EE5A8(255, &qword_1EC63DA50, 0x1E696AD98);
    sub_1D15F9F24();
    v1 = sub_1D16702B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DA48);
    }
  }
}

unint64_t sub_1D15F9F24()
{
  result = qword_1EC63DA58;
  if (!qword_1EC63DA58)
  {
    sub_1D15EE5A8(255, &qword_1EC63DA50, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DA58);
  }

  return result;
}

uint64_t sub_1D15F9F8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D15FA0E8();
    v3 = sub_1D16702A4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1D16706A4();

      sub_1D166FAE4();
      result = sub_1D16706E4();
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
          result = sub_1D16705D4();
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
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void sub_1D15FA0E8()
{
  if (!qword_1EC63DA60)
  {
    v0 = sub_1D16702B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DA60);
    }
  }
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_OWORD *sub_1D15FA184(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1D15FA194(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D15FA1E4(uint64_t a1)
{
  if (!qword_1EC63DA70)
  {
    sub_1D166F2C4();
    sub_1D15FA264(&qword_1EC63DA78, MEMORY[0x1E6969AD8]);
    v1 = sub_1D16702B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DA70);
    }
  }
}

uint64_t sub_1D15FA264(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D166F2C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D15FA2A8(uint64_t a1)
{
  if (!qword_1EC63DA88)
  {
    type metadata accessor for MedicationDoseEventLogSource(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC63DA88);
    }
  }
}

uint64_t sub_1D15FA368(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1D15FA42C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 25) = a1;
  return result;
}

uint64_t MedicationRoomInteractionAnalyticsManager.__allocating_init(provenance:hasSideEffectsContent:hasPregnancyContent:)(uint64_t a1, char a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 32) = [objc_allocWithZone(MEMORY[0x1E696BF70]) init];
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 25) = a3;
  return v6;
}

uint64_t MedicationRoomInteractionAnalyticsManager.init(provenance:hasSideEffectsContent:hasPregnancyContent:)(uint64_t a1, char a2, char a3)
{
  *(v3 + 32) = [objc_allocWithZone(MEMORY[0x1E696BF70]) init];
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 25) = a3;
  return v3;
}

void sub_1D15FA594(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EDECB358 != -1)
  {
    swift_once();
  }

  v6 = sub_1D166F4E4();
  __swift_project_value_buffer(v6, qword_1EDECB360);
  v7 = sub_1D166F4D4();
  v8 = sub_1D166FF64();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136315650;
    v11 = sub_1D1670754();
    v13 = sub_1D15F7A30(v11, v12, aBlock);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = HKStringFromMedicationRoomAnalyticsAction();
    v15 = sub_1D166FA04();
    v17 = v16;

    v18 = sub_1D15F7A30(v15, v17, aBlock);

    *(v9 + 14) = v18;
    *(v9 + 22) = 2048;
    *(v9 + 24) = a2;
    _os_log_impl(&dword_1D15E6000, v7, v8, "[%s] Submitting analytics for action: %s, roomType: %ld", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D388E250](v10, -1, -1);
    MEMORY[0x1D388E250](v9, -1, -1);
  }

  v19 = a1;
  v34 = *(v3 + 16);
  v20 = *(v3 + 32);
  swift_beginAccess();
  v21 = *(v3 + 24);
  swift_beginAccess();
  v22 = *(v3 + 25);
  type metadata accessor for MedicationRoomInteractionEvent();
  v23 = swift_allocObject();
  *(v23 + 56) = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  if (qword_1EDECB1C0 != -1)
  {
    swift_once();
  }

  v24 = a2;
  v25 = off_1EDECB1C8;
  v26 = qword_1EDECAD88;
  v27 = *(off_1EDECB1C8 + 2);
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = qword_1EDECAD90;
  type metadata accessor for MedicationsSettingsManager(0);
  swift_allocObject();
  v29 = sub_1D163E808(v27, 0, v28);

  *(v23 + 64) = v29;
  v30 = [v20 currentCalendar];
  if (v30)
  {
    *(v23 + 16) = v30;
    *(v23 + 24) = v19;
    *(v23 + 32) = v24;
    *(v23 + 40) = v34;
    *(v23 + 48) = v21;
    *(v23 + 49) = v22;
    v31 = HKLogMedication();
    v32 = [objc_allocWithZone(MEMORY[0x1E696BF00]) initWithLoggingCategory:v31 healthDataSource:v25[2]];

    aBlock[4] = sub_1D15FA9B0;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D15FABB0;
    aBlock[3] = &block_descriptor_0;
    v33 = _Block_copy(aBlock);
    [v32 submitEvent:v23 completion:v33];
    _Block_release(v33);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D15FA9B0(char a1, void *a2)
{
  if (a1)
  {
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v2 = sub_1D166F4E4();
    __swift_project_value_buffer(v2, qword_1EDECB360);
    oslog = sub_1D166F4D4();
    v3 = sub_1D166FF34();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1D15E6000, oslog, v3, "[MedicationRoomInteractionAnalytics] Successfully submitted analytics", v4, 2u);
LABEL_13:
      MEMORY[0x1D388E250](v4, -1, -1);
    }
  }

  else
  {
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v6 = sub_1D166F4E4();
    __swift_project_value_buffer(v6, qword_1EDECB360);
    v7 = a2;
    oslog = sub_1D166F4D4();
    v8 = sub_1D166FF44();

    if (os_log_type_enabled(oslog, v8))
    {
      v4 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v4 = 138412290;
      if (a2)
      {
        v10 = a2;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        v12 = v11;
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }

      *(v4 + 4) = v11;
      *v9 = v12;
      _os_log_impl(&dword_1D15E6000, oslog, v8, "[MedicationRoomInteractionAnalytics] Failed to submit analytics with error: %@.", v4, 0xCu);
      sub_1D15FADE4(v9);
      MEMORY[0x1D388E250](v9, -1, -1);
      goto LABEL_13;
    }
  }
}

void sub_1D15FABB0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t MedicationRoomInteractionAnalyticsManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D15FADE4(uint64_t a1)
{
  sub_1D15FAE40(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D15FAE40(uint64_t a1)
{
  if (!qword_1EC63DF40)
  {
    sub_1D15FAE98();
    v1 = sub_1D16700E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DF40);
    }
  }
}

unint64_t sub_1D15FAE98()
{
  result = qword_1EDEC9D80;
  if (!qword_1EDEC9D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEC9D80);
  }

  return result;
}

uint64_t sub_1D15FAEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D15FA328;

  return MedicationScheduleItemDataSourcing.scheduleItems(for:medicationsIdentifiers:)(a1, a2, a3, a4, a5);
}

uint64_t MedicationScheduleItemDataSourcing.scheduleItems(for:medicationsIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 40) + **(a5 + 40));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D15FA328;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t MedicationScheduleItemDataSource.__allocating_init(healthStore:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t MedicationScheduleItemDataSource.fetchScheduleItem(_:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  sub_1D15FB870(0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  sub_1D15FB8C8(0, qword_1EDECAE90, &qword_1EDECACD0, 0x1E69A3AF0, type metadata accessor for HKMedicationScheduleItemQueryDescriptor);
  v3[16] = v4;
  v3[17] = swift_task_alloc();
  sub_1D15FB8C8(0, &unk_1EDECB310, &qword_1EDECACD0, 0x1E69A3AF0, MEMORY[0x1E69682B8]);
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D15FB2B0, 0, 0);
}

uint64_t sub_1D15FB2B0()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[16];
  v16 = v4;
  v6 = v0[14];
  v17 = v6;
  v18 = v0[18];
  v20 = v0[12];
  v21 = v0[13];
  v19 = v0[11];
  KeyPath = swift_getKeyPath();
  MEMORY[0x1D388C1D0](KeyPath, 0);
  v8 = sub_1D166F174();
  v9 = *(*(v8 - 8) + 56);
  v9(v4, 1, 1, v8);
  v9(v6, 1, 1, v8);
  sub_1D15FB948(0);
  v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D16721D0;
  (*(v2 + 16))(v11 + v10, v1, v18);
  v9(v3, 1, 1, v8);
  v12 = v5[7];
  v9(v3 + v12, 1, 1, v8);
  v13 = v5[9];
  v14 = (v3 + v5[8]);
  sub_1D166F8D4();
  sub_1D15FB9CC(v16, v3);
  sub_1D15FB9CC(v17, v3 + v12);
  *v14 = v19;
  v14[1] = v20;
  *(v3 + v13) = v11;
  v0[21] = *(v21 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D15FB4B4, 0, 0);
}

uint64_t sub_1D15FB4B4()
{
  v1 = v0[21];
  v2 = v0[17];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1D15FB564;
  v3 = swift_continuation_init();
  sub_1D15FF730(v3, v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D15FB564()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1D15FB7C4;
  }

  else
  {
    *(v1 + 184) = *(v1 + 80);
    v3 = sub_1D15FB688;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D15FB688()
{
  v1 = v0[23];
  if (v1 >> 62)
  {
    result = sub_1D1670224();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1D388D4D0](0, v0[23]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[23] + 32);
  }

LABEL_9:
  v4 = v0[17];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_1D15FFC9C(v4);

  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_1D15FB7C4()
{
  v1 = v0[17];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_1D15FFC9C(v1);

  v2 = v0[1];

  return v2();
}

void sub_1D15FB870(uint64_t a1)
{
  if (!qword_1EDECB378)
  {
    sub_1D166F174();
    v1 = sub_1D16700E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDECB378);
    }
  }
}

void sub_1D15FB8C8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D15EE5A8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D15FB948(uint64_t a1)
{
  if (!qword_1EDECABC0)
  {
    sub_1D15FB8C8(255, &unk_1EDECB310, &qword_1EDECACD0, 0x1E69A3AF0, MEMORY[0x1E69682B8]);
    v1 = sub_1D16705A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDECABC0);
    }
  }
}

uint64_t sub_1D15FB9CC(uint64_t a1, uint64_t a2)
{
  sub_1D15FB870(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MedicationScheduleItemDataSource.hk_scheduleItems(for:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  sub_1D15FB870(0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  sub_1D15FB8C8(0, qword_1EDECAE90, &qword_1EDECACD0, 0x1E69A3AF0, type metadata accessor for HKMedicationScheduleItemQueryDescriptor);
  v3[16] = v4;
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D15FBB2C, 0, 0);
}

uint64_t sub_1D15FBB2C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[12];
  v12 = v0[11];
  v13 = v0[13];
  v6 = sub_1D166F174();
  v7 = *(*(v6 - 8) + 56);
  v7(v4, 1, 1, v6);
  v7(v3, 1, 1, v6);
  v7(v1, 1, 1, v6);
  v8 = v2[7];
  v7(v1 + v8, 1, 1, v6);
  v9 = v2[9];
  v10 = (v1 + v2[8]);
  sub_1D166F8D4();
  sub_1D15FB9CC(v4, v1);
  sub_1D15FB9CC(v3, v1 + v8);
  *v10 = v12;
  v10[1] = v5;
  *(v1 + v9) = 0;
  v0[18] = *(v13 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D15FBCB4, 0, 0);
}

uint64_t sub_1D15FBCB4()
{
  v2 = v0[17];
  v1 = v0[18];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1D15FBD60;
  v3 = swift_continuation_init();
  sub_1D15FF730(v3, v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D15FBD60()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 152) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1D15FBF14;
  }

  else
  {
    *(v1 + 160) = *(v1 + 80);
    v3 = sub_1D15FBE84;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D15FBE84()
{
  sub_1D15FFC9C(v0[17]);

  v1 = v0[1];
  v2 = v0[20];

  return v1(v2);
}

uint64_t sub_1D15FBF14()
{
  sub_1D15FFC9C(*(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MedicationScheduleItemDataSource.fetchScheduleItems(in:)(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  sub_1D15FB870(0);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  sub_1D15FB8C8(0, qword_1EDECAE90, &qword_1EDECACD0, 0x1E69A3AF0, type metadata accessor for HKMedicationScheduleItemQueryDescriptor);
  v2[15] = v3;
  v2[16] = swift_task_alloc();
  sub_1D15FB8C8(0, &unk_1EDECB310, &qword_1EDECACD0, 0x1E69A3AF0, MEMORY[0x1E69682B8]);
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v5 = sub_1D166F174();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D15FC188, 0, 0);
}

uint64_t sub_1D15FC188()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[16];
  v18 = v0[19];
  v19 = v0[17];
  v6 = v0[14];
  v16 = v0[22];
  v17 = v0[13];
  v20 = v0[15];
  v21 = v0[12];
  sub_1D166EF64();
  sub_1D166EF54();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1D388C1D0](KeyPath, 0);
  v8 = *(v3 + 16);
  v8(v6, v1, v2);
  v9 = *(v3 + 56);
  v9(v6, 0, 1, v2);
  v8(v17, v16, v2);
  v9(v17, 0, 1, v2);
  sub_1D15FB948(0);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D16721D0;
  (*(v4 + 16))(v11 + v10, v18, v19);
  v9(v5, 1, 1, v2);
  v12 = v20[7];
  v9(v5 + v12, 1, 1, v2);
  v13 = v20[9];
  v14 = (v5 + v20[8]);
  sub_1D166F8D4();
  sub_1D15FB9CC(v6, v5);
  sub_1D15FB9CC(v17, v5 + v12);
  *v14 = 0;
  v14[1] = 0;
  *(v5 + v13) = v11;
  v0[24] = *(v21 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D15FC3A8, 0, 0);
}

uint64_t sub_1D15FC3A8()
{
  v1 = v0[24];
  v2 = v0[16];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1D15FC458;
  v3 = swift_continuation_init();
  sub_1D15FF730(v3, v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D15FC458()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1D15FC688;
  }

  else
  {
    *(v1 + 208) = *(v1 + 80);
    v3 = sub_1D15FC57C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D15FC57C()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[16];
  (*(v0[18] + 8))(v0[19], v0[17]);
  v6 = *(v4 + 8);
  v6(v1, v3);
  v6(v2, v3);
  sub_1D15FFC9C(v5);

  v7 = v0[1];
  v8 = v0[26];

  return v7(v8);
}

uint64_t sub_1D15FC688()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[16];
  (*(v0[18] + 8))(v0[19], v0[17]);
  v6 = *(v4 + 8);
  v6(v1, v3);
  v6(v2, v3);
  sub_1D15FFC9C(v5);

  v7 = v0[1];

  return v7();
}

uint64_t MedicationScheduleItemDataSource.doseEvents(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1D15FB8C8(0, &unk_1EDECAE30, &qword_1EDECACA0, 0x1E696C3A8, MEMORY[0x1E696B3D0]);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D15FC880, 0, 0);
}

uint64_t sub_1D15FC880()
{
  v13 = v0[4];
  v1 = objc_opt_self();
  v2 = sub_1D166F9C4();
  v3 = [v1 predicateForMedicationDoseEventWithScheduleItemIdentifier_];
  v0[8] = v3;

  v4 = MEMORY[0x1E696B3A0];
  sub_1D15FFD24(0, &qword_1EDECABA8, &qword_1EDECAE40, MEMORY[0x1E696B3A0]);
  sub_1D15FB8C8(0, &qword_1EDECAE40, &qword_1EDECACA0, 0x1E696C3A8, v4);
  *(swift_allocObject() + 16) = xmmword_1D16721D0;
  sub_1D15EE5A8(0, &unk_1EDECADD0, 0x1E696C3D0);
  v5 = [swift_getObjCClassFromMetadata() medicationDoseEventType];
  sub_1D15EE5A8(0, &qword_1EDECACA0, 0x1E696C3A8);
  v6 = v3;
  sub_1D166F8F4();

  v7 = MEMORY[0x1E69682B8];
  sub_1D15FFD24(0, &unk_1EDECABB0, &qword_1EDECB308, MEMORY[0x1E69682B8]);
  sub_1D15FB8C8(0, &qword_1EDECB308, &qword_1EDECACA0, 0x1E696C3A8, v7);
  *(swift_allocObject() + 16) = xmmword_1D16721D0;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1D388C1D0](KeyPath, 0);
  sub_1D166F904();
  v9 = *(v13 + 16);
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_1D15FCBC4;
  v11 = v0[5];

  return MEMORY[0x1EEDC7698](v9, v11);
}

uint64_t sub_1D15FCBC4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_1D15FCDD4;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_1D15FCCEC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D15FCCEC()
{
  v1 = v0[6];
  v2 = sub_1D15FCECC(v0[11]);

  v3 = (v1 + 8);
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  if (v2)
  {
    (*v3)(v0[7], v0[5]);
  }

  else
  {

    (*v3)(v4, v6);
    v2 = MEMORY[0x1E69E7CC0];
  }

  v7 = v0[1];

  return v7(v2);
}

uint64_t sub_1D15FCDD4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

void sub_1D15FCE70(id *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v4 = [*a1 *a4];
  sub_1D166F144();
}

uint64_t sub_1D15FCECC(unint64_t a1)
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_1D16703A4();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1670224())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1D388D4D0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_1D1670374();
      sub_1D16703B4();
      sub_1D16703C4();
      sub_1D1670384();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1D1670224();
    sub_1D16703A4();
  }

  return v8;
}

uint64_t sub_1D15FD034(uint64_t a1)
{
  v2 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  sub_1D162306C(0, v2, 0);
  v3 = v11;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1D15F928C(i, v10);
      sub_1D15F42BC();
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v5 = v9;
      v11 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D162306C((v6 > 1), v7 + 1, 1);
        v5 = v9;
        v3 = v11;
      }

      *(v3 + 16) = v7 + 1;
      *(v3 + 16 * v7 + 32) = v5;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1D15FD140(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1D162308C(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1D15F928C(i, v9);
      sub_1D15FB8C8(0, &qword_1EC63DA90, &qword_1EC63DA98, 0x1E696C010, MEMORY[0x1E69E62F8]);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D162308C((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1D15FD28C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D162304C(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1D15F928C(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D162304C((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t MedicationScheduleItemDataSource.unloggedScheduleItems(for:)(uint64_t a1, uint64_t a2)
{
  v3[191] = v2;
  v3[185] = a2;
  v3[179] = a1;
  v4 = sub_1D166F174();
  v3[197] = v4;
  v3[203] = *(v4 - 8);
  v3[209] = swift_task_alloc();
  v3[210] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D15FD474, 0, 0);
}

uint64_t sub_1D15FD474()
{
  v1 = v0[191];
  v2 = v0[185];
  v3 = v0[179];
  v4 = swift_allocObject();
  v0[211] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;

  v5 = MEMORY[0x1E69E62F8];
  sub_1D15FB8C8(0, &qword_1EDECAE00, &unk_1EDECACE0, 0x1E696C280, MEMORY[0x1E69E62F8]);
  swift_asyncLet_begin();
  v6 = swift_allocObject();
  v0[212] = v6;
  v6[2] = v1;
  v6[3] = v3;
  v6[4] = v2;

  sub_1D15FB8C8(0, &qword_1EDECADF0, &qword_1EDECACD0, 0x1E69A3AF0, v5);
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v0 + 2, v0 + 167, sub_1D15FD610, v0 + 162);
}

uint64_t sub_1D15FD610()
{
  v1[213] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 173, sub_1D15FE274, v1 + 168);
  }

  else
  {
    v1[214] = v1[167];

    return MEMORY[0x1EEE6DEC0](v1 + 82, v1 + 173, sub_1D15FD6C4, v1 + 180);
  }
}

uint64_t sub_1D15FD6C4()
{
  *(v1 + 1720) = v0;
  if (v0)
  {
    v2 = sub_1D15FE35C;
  }

  else
  {
    v2 = sub_1D15FD6F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D15FD6F8()
{
  v1 = *(v0 + 1712);
  i = *(v0 + 1384);
  v114 = MEMORY[0x1E69E7CC0];
  v110 = v1;
  if (v1 >> 62)
  {
    goto LABEL_101;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v91 = i;

  v4 = MEMORY[0x1E69E7CC0];
  v113 = v3;
  if (v3)
  {
    v5 = 0;
    v6 = v97[214] + 32;
    do
    {
      if ((v110 & 0xC000000000000001) != 0)
      {
        i = MEMORY[0x1D388D4D0](v5, v97[214]);
      }

      else
      {
        if (v5 >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_96;
        }

        i = *(v6 + 8 * v5);
      }

      v7 = i;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_95;
      }

      if ([i logStatus] == 4 || objc_msgSend(v7, sel_logStatus) == 5)
      {
      }

      else
      {
        sub_1D1670374();
        sub_1D16703B4();
        v3 = v113;
        sub_1D16703C4();
        i = sub_1D1670384();
      }

      ++v5;
    }

    while (v8 != v3);
    v9 = v114;
    v114 = v4;
    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_102;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
    v114 = MEMORY[0x1E69E7CC0];
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
    {
      goto LABEL_102;
    }
  }

  if ((v9 & 0x4000000000000000) == 0)
  {
    v10 = *(v9 + 16);
    goto LABEL_20;
  }

LABEL_102:
  i = sub_1D1670224();
  v10 = i;
LABEL_20:
  v11 = v97[203];
  v95 = (v11 + 32);
  if (v10)
  {
    v12 = v9 & 0xC000000000000001;
    v111 = (v11 + 8);
    v108 = (v11 + 16);
    v90 = MEMORY[0x1E69E7CC0];
    v13 = 0;
    if ((v9 & 0xC000000000000001) == 0)
    {
      goto LABEL_27;
    }

LABEL_37:
    for (i = MEMORY[0x1D388D4D0](v13, v9); ; i = *(v9 + 8 * v13 + 32))
    {
      v14 = i;
      v15 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        goto LABEL_97;
      }

      v16 = [i scheduleItemIdentifier];
      if (v16)
      {
        v17 = v16;
        v18 = sub_1D166FA04();
        v20 = v19;

        v21 = [v14 scheduledDate];
        if (v21)
        {
          v22 = v21;
          sub_1D166F144();

          v23 = sub_1D1670004();
          v24 = v97[210];
          if ((v25 & 1) == 0)
          {
            v104 = v97[209];
            v26 = v97[197];
            v106 = v23;
            v27 = v97[210];
            (*v108)(v104, v24, v26);
            v28 = [v14 medicationIdentifier];
            v29 = sub_1D166FA04();
            v100 = v30;
            v102 = v29;

            LOBYTE(v28) = [v14 isLastScheduledDose];
            (*v111)(v27, v26);
            type metadata accessor for ScheduleItem(0);
            v31 = swift_allocObject();
            *(v31 + 16) = v18;
            *(v31 + 24) = v20;
            v32 = (*v95)(v31 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_date, v104, v26);
            v33 = (v31 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier);
            *v33 = v102;
            v33[1] = v100;
            *(v31 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_doseAmount) = v106;
            *(v31 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_isLastScheduledDose) = v28;
            MEMORY[0x1D388CE10](v32);
            if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D166FC84();
            }

            i = sub_1D166FCC4();
            v90 = v114;
            if (v15 == v10)
            {
              goto LABEL_39;
            }

            v13 = v15;
            if (v12)
            {
              goto LABEL_37;
            }

            goto LABEL_27;
          }

          (*v111)(v24, v97[197]);
        }
      }

      ++v13;
      if (v15 == v10)
      {
        goto LABEL_39;
      }

      if (v12)
      {
        goto LABEL_37;
      }

LABEL_27:
      if (v13 >= *(v9 + 16))
      {
        goto LABEL_98;
      }
    }
  }

  v90 = MEMORY[0x1E69E7CC0];
LABEL_39:

  if (v91 >> 62)
  {
    i = sub_1D1670224();
  }

  else
  {
    i = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = v113;
  v35 = MEMORY[0x1E69E7CC0];
  if (i)
  {
    v36 = 0;
    v112 = v110 & 0xC000000000000001;
    v110 &= 0xFFFFFFFFFFFFFF8uLL;
    v37 = v97[214] + 32;
    v92 = i;
    do
    {
      v94 = v35;
      if ((v91 & 0xC000000000000001) != 0)
      {
        i = MEMORY[0x1D388D4D0](v36, v91);
      }

      else
      {
        if (v36 >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_100;
        }

        i = *(v91 + v36 + 4);
      }

      v109 = i;
      v38 = __OFADD__(v36, 1);
      v39 = v36 + 1;
      if (v38)
      {
        goto LABEL_99;
      }

      v93 = v39;
      v40 = [i doses];
      sub_1D15EE5A8(0, &unk_1EDECACC0, 0x1E69A3AF8);
      v41 = sub_1D166FC54();

      v114 = MEMORY[0x1E69E7CC0];
      if (v41 >> 62)
      {
        i = sub_1D1670224();
        v42 = i;
        if (i)
        {
LABEL_51:
          v43 = 0;
          v103 = v41 & 0xFFFFFFFFFFFFFF8;
          v105 = v41 & 0xC000000000000001;
          v101 = v41 + 32;
          v96 = MEMORY[0x1E69E7CC0];
          v98 = v42;
          v99 = v41;
          while (1)
          {
            if (v105)
            {
              i = MEMORY[0x1D388D4D0](v43, v41);
            }

            else
            {
              if (v43 >= *(v103 + 16))
              {
                goto LABEL_94;
              }

              i = *(v101 + 8 * v43);
            }

            v45 = i;
            v38 = __OFADD__(v43, 1);
            v46 = (v43 + 1);
            if (v38)
            {
              goto LABEL_93;
            }

            v107 = v46;
            if (v34)
            {
              break;
            }

LABEL_81:
            v70 = v97[209];
            v71 = v97[197];
            v72 = [v109 identifier];
            v73 = sub_1D166FA04();
            v75 = v74;

            v76 = [v109 scheduledDateTime];
            sub_1D166F144();

            v77 = [v45 medicationIdentifier];
            v78 = sub_1D166FA04();
            v80 = v79;

            v81 = [v45 dose];
            [v81 doubleValue];
            v83 = v82;

            LOBYTE(v81) = [v45 isLastScheduledDose];
            type metadata accessor for ScheduleItem(0);
            v84 = swift_allocObject();
            *(v84 + 16) = v73;
            *(v84 + 24) = v75;
            v85 = (*v95)(v84 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_date, v70, v71);
            v86 = (v84 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier);
            *v86 = v78;
            v86[1] = v80;
            *(v84 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_doseAmount) = v83;
            *(v84 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_isLastScheduledDose) = v81;
            MEMORY[0x1D388CE10](v85);
            if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D166FC84();
            }

            i = sub_1D166FCC4();
            v96 = v114;
            v43 = v107;
            v44 = v107 == v98;
            v34 = v113;
LABEL_54:
            v41 = v99;
            if (v44)
            {
              goto LABEL_44;
            }
          }

          v47 = 0;
          while (2)
          {
            if (v112)
            {
              i = MEMORY[0x1D388D4D0](v47, v97[214]);
            }

            else
            {
              if (v47 >= *(v110 + 16))
              {
                goto LABEL_92;
              }

              i = *(v37 + 8 * v47);
            }

            v48 = i;
            v49 = v47 + 1;
            if (__OFADD__(v47, 1))
            {
              __break(1u);
LABEL_92:
              __break(1u);
LABEL_93:
              __break(1u);
LABEL_94:
              __break(1u);
LABEL_95:
              __break(1u);
LABEL_96:
              __break(1u);
LABEL_97:
              __break(1u);
LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
LABEL_101:
              v88 = i;
              v3 = sub_1D1670224();
              i = v88;
              goto LABEL_3;
            }

            v50 = [v45 medicationIdentifier];
            v51 = sub_1D166FA04();
            v53 = v52;

            v54 = [v48 medicationIdentifier];
            v55 = sub_1D166FA04();
            v57 = v56;

            if (v51 == v55 && v53 == v57)
            {

              goto LABEL_75;
            }

            v59 = sub_1D16705D4();

            if (v59)
            {
LABEL_75:
              v60 = [v109 identifier];
              v61 = sub_1D166FA04();
              v63 = v62;

              v64 = [v48 scheduleItemIdentifier];
              if (v64)
              {
                v65 = v64;
                v66 = sub_1D166FA04();
                v68 = v67;

                if (v61 == v66 && v63 == v68)
                {

                  v34 = v113;
LABEL_53:

                  v43 = v107;
                  v44 = v107 == v98;
                  goto LABEL_54;
                }

                v69 = sub_1D16705D4();

                v34 = v113;
                if (v69)
                {
                  v48 = v45;
                  goto LABEL_53;
                }

                goto LABEL_63;
              }
            }

            v34 = v113;
LABEL_63:
            ++v47;
            if (v49 == v34)
            {
              goto LABEL_81;
            }

            continue;
          }
        }
      }

      else
      {
        v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v42)
        {
          goto LABEL_51;
        }
      }

      v96 = MEMORY[0x1E69E7CC0];
LABEL_44:

      v114 = v94;

      sub_1D15F715C(v96);

      v35 = v94;
      v36 = v93;
    }

    while (v93 != v92);
  }

  v87 = v35;

  sub_1D15F715C(v87);
  v97[216] = v90;

  return MEMORY[0x1EEE6DEB0](v97 + 82, v97 + 173, sub_1D15FE188, v97 + 198);
}

uint64_t sub_1D15FE1E0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 1728);

  return v1(v2);
}

uint64_t sub_1D15FE2CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D15FE35C()
{

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1384, sub_1D15FE3C8, v0 + 1488);
}

uint64_t sub_1D15FE420()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D15FE4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_1D15FE560;

  return MedicationScheduleItemDataSource.doseEvents(for:)(a3, a4);
}

uint64_t sub_1D15FE560(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D1600960, 0, 0);
  }
}

uint64_t sub_1D15FE6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_1D15FE75C;

  return MedicationScheduleItemDataSource.hk_scheduleItems(for:)(a3, a4);
}

uint64_t sub_1D15FE75C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D15FE8A8, 0, 0);
  }
}

uint64_t sub_1D15FE8CC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1D15FE978(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t MedicationScheduleItemDataSource.scheduleItems(for:medicationsIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v4[4] = a3;
  v4[5] = v7;
  v4[2] = a1;
  v4[3] = a2;
  v8 = sub_1D166F174();
  v4[6] = v8;
  v4[7] = *(v8 - 8);
  v4[8] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[9] = v9;
  *v9 = v4;
  v9[1] = sub_1D15FEB54;

  return MedicationScheduleItemDataSource.hk_scheduleItems(for:)(a1, a2);
}

uint64_t sub_1D15FEB54(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D15FECA4, 0, 0);
  }
}

uint64_t sub_1D15FECA4()
{
  v64 = v0;
  v1 = v0[10];
  if (v1 >> 62)
  {
    goto LABEL_35;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v2 = MEMORY[0x1D388D4D0](0, v0[10]);
      }

      else
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_46;
        }

        v2 = *(v0[10] + 32);
      }

      v1 = [v2 doses];
      sub_1D15EE5A8(0, &unk_1EDECACC0, 0x1E69A3AF8);
      v3 = sub_1D166FC54();

      v63 = MEMORY[0x1E69E7CC0];
      v4 = v3 >> 62 ? sub_1D1670224() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v52 = v3;
      v55 = v2;
      if (!v4)
      {
        break;
      }

      v5 = 0;
      v0 = v56[4];
      v61 = v52 & 0xFFFFFFFFFFFFFF8;
      v62 = v52 & 0xC000000000000001;
      v53 = (v56[7] + 32);
      v57 = v0 + 5;
      v58 = v52 + 32;
      v54 = MEMORY[0x1E69E7CC0];
      v59 = v0;
      v60 = v4;
      while (1)
      {
        if (v62)
        {
          v6 = MEMORY[0x1D388D4D0](v5, v52);
        }

        else
        {
          if (v5 >= *(v61 + 16))
          {
            goto LABEL_34;
          }

          v6 = *(v58 + 8 * v5);
        }

        v1 = v6;
        if (__OFADD__(v5++, 1))
        {
          break;
        }

        if (v0)
        {
          v8 = v0[2];
          v9 = v6;
          v10 = v8 + 1;
          v11 = v57;
          while (1)
          {
            if (!--v10)
            {

              goto LABEL_11;
            }

            v12 = *(v11 - 1);
            v13 = *v11;

            v14 = [v9 medicationIdentifier];
            v15 = sub_1D166FA04();
            v17 = v16;

            if (v15 == v12 && v17 == v13)
            {
              break;
            }

            v11 += 2;
            v19 = sub_1D16705D4();

            if (v19)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          v38 = v6;
        }

LABEL_26:
        v20 = v56[8];
        v21 = v56[6];
        v22 = [v55 identifier];
        v23 = sub_1D166FA04();
        v25 = v24;

        v26 = [v55 scheduledDateTime];
        sub_1D166F144();

        v27 = [v1 medicationIdentifier];
        v28 = sub_1D166FA04();
        v30 = v29;

        v31 = [v1 dose];
        [v31 doubleValue];
        v33 = v32;

        v34 = [v1 isLastScheduledDose];
        type metadata accessor for ScheduleItem(0);
        v35 = swift_allocObject();
        *(v35 + 16) = v23;
        *(v35 + 24) = v25;
        v36 = (*v53)(v35 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_date, v20, v21);
        v37 = (v35 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier);
        *v37 = v28;
        v37[1] = v30;
        *(v35 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_doseAmount) = v33;
        *(v35 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_isLastScheduledDose) = v34;
        MEMORY[0x1D388CE10](v36);
        if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D166FC84();
        }

        v1 = &v63;
        sub_1D166FCC4();
        v54 = v63;
LABEL_11:
        v0 = v59;
        if (v5 == v60)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      v56 = v0;
      if (!sub_1D1670224())
      {
        goto LABEL_36;
      }
    }

    v54 = MEMORY[0x1E69E7CC0];
LABEL_32:

    v0 = v56;
    v39 = v54;
  }

  else
  {
LABEL_36:

    if (qword_1EDECB358 != -1)
    {
LABEL_46:
      swift_once();
    }

    v40 = sub_1D166F4E4();
    __swift_project_value_buffer(v40, qword_1EDECB360);

    v41 = sub_1D166F4D4();
    v42 = sub_1D166FF44();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = v56[3];
      v44 = v56[2];
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v63 = v46;
      *v45 = 136315394;
      v47 = sub_1D1670754();
      v49 = sub_1D15F7A30(v47, v48, &v63);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      v0 = v56;
      *(v45 + 14) = sub_1D15F7A30(v44, v43, &v63);
      _os_log_impl(&dword_1D15E6000, v41, v42, "[%s] Schedule item with identifier %s is not found", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D388E250](v46, -1, -1);
      MEMORY[0x1D388E250](v45, -1, -1);
    }

    v39 = MEMORY[0x1E69E7CC0];
  }

  v50 = v0[1];

  return v50(v39);
}