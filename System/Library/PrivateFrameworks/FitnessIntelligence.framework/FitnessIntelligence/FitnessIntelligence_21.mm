unint64_t sub_1B4B778CC()
{
  result = qword_1EB8AB460;
  if (!qword_1EB8AB460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB460);
  }

  return result;
}

unint64_t sub_1B4B77920()
{
  result = qword_1EB8AB468;
  if (!qword_1EB8AB468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB468);
  }

  return result;
}

unint64_t sub_1B4B77974()
{
  result = qword_1EB8AB470;
  if (!qword_1EB8AB470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB470);
  }

  return result;
}

unint64_t sub_1B4B779C8()
{
  result = qword_1EB8AB478;
  if (!qword_1EB8AB478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB478);
  }

  return result;
}

unint64_t sub_1B4B77A1C()
{
  result = qword_1EB8AB480;
  if (!qword_1EB8AB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB480);
  }

  return result;
}

BOOL _s19FitnessIntelligence17WorkoutVoiceAlertV5ValueO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    return !*(a2 + 16) && v2 == v3;
  }

  v5 = *(a2 + 8);
  if (*(a1 + 16) == 1)
  {
    if (v4 == 1 && v2 == v3)
    {
      return *(a1 + 8) == v5;
    }

    return 0;
  }

  v7 = *&v5 | *&v3;
  return v4 == 2 && v7 == 0;
}

unint64_t sub_1B4B77AF0()
{
  result = qword_1EB8AB4E0;
  if (!qword_1EB8AB4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB4E0);
  }

  return result;
}

unint64_t sub_1B4B77B44()
{
  result = qword_1EB8AB4E8;
  if (!qword_1EB8AB4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB4E8);
  }

  return result;
}

unint64_t sub_1B4B77B98()
{
  result = qword_1EB8AB4F0;
  if (!qword_1EB8AB4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB4F0);
  }

  return result;
}

unint64_t sub_1B4B77BEC()
{
  result = qword_1EB8AB4F8;
  if (!qword_1EB8AB4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB4F8);
  }

  return result;
}

unint64_t sub_1B4B77C44()
{
  result = qword_1EB8AB520;
  if (!qword_1EB8AB520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB520);
  }

  return result;
}

uint64_t sub_1B4B77C98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B4B77CE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutVoiceAlert.AlertType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WorkoutVoiceAlert.AlertType(uint64_t result, int a2, int a3)
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_1B4B77D9C(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4B77DB8(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutVoiceAlert.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutVoiceAlert.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B4B77E88(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1B4B77EA0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1B4B77F8C()
{
  result = qword_1EB8AB528;
  if (!qword_1EB8AB528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB528);
  }

  return result;
}

unint64_t sub_1B4B77FE4()
{
  result = qword_1EB8AB530;
  if (!qword_1EB8AB530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB530);
  }

  return result;
}

unint64_t sub_1B4B7803C()
{
  result = qword_1EB8AB538;
  if (!qword_1EB8AB538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB538);
  }

  return result;
}

unint64_t sub_1B4B78094()
{
  result = qword_1EB8AB540;
  if (!qword_1EB8AB540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB540);
  }

  return result;
}

unint64_t sub_1B4B780EC()
{
  result = qword_1EB8AB548;
  if (!qword_1EB8AB548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB548);
  }

  return result;
}

unint64_t sub_1B4B78144()
{
  result = qword_1EB8AB550;
  if (!qword_1EB8AB550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB550);
  }

  return result;
}

unint64_t sub_1B4B7819C()
{
  result = qword_1EB8AB558;
  if (!qword_1EB8AB558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB558);
  }

  return result;
}

unint64_t sub_1B4B781F4()
{
  result = qword_1EB8AB560;
  if (!qword_1EB8AB560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB560);
  }

  return result;
}

unint64_t sub_1B4B7824C()
{
  result = qword_1EB8AB568;
  if (!qword_1EB8AB568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB568);
  }

  return result;
}

unint64_t sub_1B4B782A4()
{
  result = qword_1EB8AB570;
  if (!qword_1EB8AB570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB570);
  }

  return result;
}

unint64_t sub_1B4B782FC()
{
  result = qword_1EB8AB578;
  if (!qword_1EB8AB578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB578);
  }

  return result;
}

unint64_t sub_1B4B78354()
{
  result = qword_1EB8AB580;
  if (!qword_1EB8AB580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB580);
  }

  return result;
}

unint64_t sub_1B4B783AC()
{
  result = qword_1EB8AB588;
  if (!qword_1EB8AB588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB588);
  }

  return result;
}

unint64_t sub_1B4B78404()
{
  result = qword_1EB8AB590;
  if (!qword_1EB8AB590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB590);
  }

  return result;
}

unint64_t sub_1B4B7845C()
{
  result = qword_1EB8AB598;
  if (!qword_1EB8AB598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB598);
  }

  return result;
}

unint64_t sub_1B4B784B4()
{
  result = qword_1EB8AB5A0;
  if (!qword_1EB8AB5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB5A0);
  }

  return result;
}

unint64_t sub_1B4B7850C()
{
  result = qword_1EB8AB5A8;
  if (!qword_1EB8AB5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB5A8);
  }

  return result;
}

unint64_t sub_1B4B78564()
{
  result = qword_1EB8AB5B0;
  if (!qword_1EB8AB5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB5B0);
  }

  return result;
}

unint64_t sub_1B4B785BC()
{
  result = qword_1EB8AB5B8;
  if (!qword_1EB8AB5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB5B8);
  }

  return result;
}

unint64_t sub_1B4B78614()
{
  result = qword_1EB8AB5C0;
  if (!qword_1EB8AB5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB5C0);
  }

  return result;
}

unint64_t sub_1B4B7866C()
{
  result = qword_1EB8AB5C8;
  if (!qword_1EB8AB5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB5C8);
  }

  return result;
}

unint64_t sub_1B4B786C4()
{
  result = qword_1EB8AB5D0;
  if (!qword_1EB8AB5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB5D0);
  }

  return result;
}

unint64_t sub_1B4B7871C()
{
  result = qword_1EB8AB5D8;
  if (!qword_1EB8AB5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB5D8);
  }

  return result;
}

unint64_t sub_1B4B78774()
{
  result = qword_1EB8AB5E0;
  if (!qword_1EB8AB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB5E0);
  }

  return result;
}

unint64_t sub_1B4B787CC()
{
  result = qword_1EB8AB5E8;
  if (!qword_1EB8AB5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB5E8);
  }

  return result;
}

unint64_t sub_1B4B78824()
{
  result = qword_1EB8AB5F0;
  if (!qword_1EB8AB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB5F0);
  }

  return result;
}

unint64_t sub_1B4B7887C()
{
  result = qword_1EB8AB5F8;
  if (!qword_1EB8AB5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB5F8);
  }

  return result;
}

unint64_t sub_1B4B788D4()
{
  result = qword_1EB8AB600;
  if (!qword_1EB8AB600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB600);
  }

  return result;
}

unint64_t sub_1B4B7892C()
{
  result = qword_1EB8AB608;
  if (!qword_1EB8AB608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB608);
  }

  return result;
}

unint64_t sub_1B4B78984()
{
  result = qword_1EB8AB610;
  if (!qword_1EB8AB610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB610);
  }

  return result;
}

uint64_t sub_1B4B789D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70795465756C6176 && a2 == 0xE900000000000065 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B4B78AF4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701011824 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461527472616568 && a2 == 0xE900000000000065 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65636E65646163 && a2 == 0xE700000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265776F70 && a2 == 0xE500000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73694474696C7073 && a2 == 0xED000065636E6174)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1B4B78CFC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E615265756C6176 && a2 == 0xEA00000000006567)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1B4B78E18()
{
  result = qword_1EB8AB618;
  if (!qword_1EB8AB618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB618);
  }

  return result;
}

uint64_t WeeklySummaryContext.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v38 = a2;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v38 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v14 = type metadata accessor for HKActivitySummaryRepresentable(0);
  v46 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v45 = (&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v38 - v17);
  v19 = *a1;
  v20 = *(*a1 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  v47 = v5;
  v39 = a1;
  if (v20)
  {
    v48 = MEMORY[0x1E69E7CC0];
    v42 = v20;
    result = sub_1B4BCED7C(0, v20, 0);
    v23 = 0;
    v24 = v48;
    v43 = v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    while (1)
    {
      if (v23 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      sub_1B4B79CAC(v43 + *(v5 + 72) * v23, v13, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      v25 = v44;
      sub_1B4B79CAC(v13, v44, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      HKActivitySummaryRepresentable.init(_:)(v25, v18);
      if (v2)
      {
        break;
      }

      sub_1B4B79D5C(v13, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      v48 = v24;
      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1B4BCED7C((v26 > 1), v27 + 1, 1);
        v24 = v48;
      }

      ++v23;
      *(v24 + 16) = v27 + 1;
      result = sub_1B4B79DBC(v18, v24 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v27, type metadata accessor for HKActivitySummaryRepresentable);
      v5 = v47;
      if (v42 == v23)
      {
        a1 = v39;
        v21 = MEMORY[0x1E69E7CC0];
        goto LABEL_11;
      }
    }

    sub_1B4B79D5C(v13, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
    sub_1B4B79D5C(v39, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v28 = a1[1];
    v29 = *(v28 + 16);
    if (v29)
    {
      v48 = v21;
      result = sub_1B4BCED7C(0, v29, 0);
      v30 = 0;
      v31 = v48;
      v44 = v28 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      while (v30 < *(v28 + 16))
      {
        v32 = v44 + *(v5 + 72) * v30;
        v33 = v41;
        sub_1B4B79CAC(v32, v41, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
        v34 = v40;
        sub_1B4B79CAC(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
        HKActivitySummaryRepresentable.init(_:)(v34, v45);
        if (v2)
        {

          sub_1B4B79D5C(v33, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
          sub_1B4B79D5C(v39, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
        }

        sub_1B4B79D5C(v33, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
        v48 = v31;
        v36 = *(v31 + 16);
        v35 = *(v31 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_1B4BCED7C((v35 > 1), v36 + 1, 1);
          v31 = v48;
        }

        ++v30;
        *(v31 + 16) = v36 + 1;
        result = sub_1B4B79DBC(v45, v31 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v36, type metadata accessor for HKActivitySummaryRepresentable);
        v5 = v47;
        if (v29 == v30)
        {
          result = sub_1B4B79D5C(v39, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
          goto LABEL_22;
        }
      }

LABEL_24:
      __break(1u);
    }

    else
    {
      result = sub_1B4B79D5C(a1, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
      v31 = MEMORY[0x1E69E7CC0];
LABEL_22:
      v37 = v38;
      *v38 = v24;
      v37[1] = v31;
    }
  }

  return result;
}

uint64_t WeeklySummaryContext.protobuf()(double a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  sub_1B4B79D14(&qword_1EB8AA718, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B7948C(void *a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v5 = type metadata accessor for HKActivitySummaryRepresentable(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = a2;
  v16 = *(a2 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  v36 = a1;
  v34 = v6;
  if (v16)
  {
    v33 = v11;
    v40 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF65C(0, v16, 0);
    v17 = v40;
    v18 = v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v37 = *(v6 + 72);
    do
    {
      v19 = sub_1B4B79CAC(v18, v8, type metadata accessor for HKActivitySummaryRepresentable);
      MEMORY[0x1EEE9AC00](v19);
      *(&v32 - 2) = v8;
      sub_1B4B79D14(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummary);
      sub_1B4D17DAC();
      sub_1B4B79D5C(v8, type metadata accessor for HKActivitySummaryRepresentable);
      v40 = v17;
      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B4BCF65C((v20 > 1), v21 + 1, 1);
        v17 = v40;
      }

      *(v17 + 16) = v21 + 1;
      sub_1B4B79DBC(v14, v17 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v21, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      v18 += v37;
      --v16;
    }

    while (v16);
    a1 = v36;
    v11 = v33;
  }

  v22 = v35;

  *a1 = v17;
  v23 = *(v22 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  v25 = v34;
  if (v23)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF65C(0, v23, 0);
    v24 = v40;
    v26 = v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v37 = *(v25 + 72);
    do
    {
      v27 = sub_1B4B79CAC(v26, v8, type metadata accessor for HKActivitySummaryRepresentable);
      v28 = v11;
      MEMORY[0x1EEE9AC00](v27);
      *(&v32 - 2) = v8;
      sub_1B4B79D14(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummary);
      sub_1B4D17DAC();
      sub_1B4B79D5C(v8, type metadata accessor for HKActivitySummaryRepresentable);
      v40 = v24;
      v30 = *(v24 + 16);
      v29 = *(v24 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1B4BCF65C((v29 > 1), v30 + 1, 1);
        v24 = v40;
      }

      *(v24 + 16) = v30 + 1;
      sub_1B4B79DBC(v28, v24 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v30, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      v26 += v37;
      --v23;
      v11 = v28;
    }

    while (v23);
    a1 = v36;
  }

  a1[1] = v24;
  return result;
}

__int128 *sub_1B4B79964(uint64_t a1, double a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v8 = sub_1B4B79C58();
  v9 = &v11;
  (*(v8 + 32))(a1, v8);
  if (!v3)
  {
    sub_1B4B79D14(&qword_1EB8AA718, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_WeeklySummaryContext);
    v9 = sub_1B4D17D6C();
    sub_1B4B79D5C(v7, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  }

  return v9;
}

double sub_1B4B79AAC@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1B4B244CC(a1, a2, &v6);
  if (!v3)
  {
    result = *&v6;
    *a3 = v6;
  }

  return result;
}

uint64_t sub_1B4B79AE8(double a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  sub_1B4B79D14(&qword_1EB8AA718, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  return sub_1B4D17DAC();
}

unint64_t sub_1B4B79C58()
{
  result = qword_1EB8AB628;
  if (!qword_1EB8AB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB628);
  }

  return result;
}

uint64_t sub_1B4B79CAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B79D14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4B79D5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4B79DBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static WorkoutGoalAchievementStatusFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1B49C016C;

  return sub_1B4B7A120(a1, a3);
}

uint64_t WorkoutGoalAchievementStatusFact.QueryIdentifier.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1B4B79F94@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1B4D18B1C();

  *a2 = v3 != 0;
  return result;
}

uint64_t WorkoutGoalAchievementStatusFact.makePrompt(promptFormatter:)()
{
  sub_1B4D1491C(v0);

  return 0;
}

uint64_t sub_1B4B7A024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1B49C0344;

  return sub_1B4B7A120(a1, a3);
}

uint64_t sub_1B4B7A0E4()
{
  sub_1B4D1491C(v0);

  return 0;
}

uint64_t sub_1B4B7A120(uint64_t a1, uint64_t a2)
{
  v2[4] = a2;
  v3 = sub_1B4D179EC();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v2[14] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v2[19] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v2[26] = swift_task_alloc();
  v7 = type metadata accessor for WorkoutState(0);
  v2[27] = v7;
  v2[28] = *(v7 - 8);
  v2[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B7A470, 0, 0);
}

uint64_t sub_1B4B7A470()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  sub_1B4974FBC(v0[4], v3, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v4 = v0[29];
    v5 = v0[27];
    v6 = v0[20];
    v7 = v0[21];
    v8 = v0[19];
    sub_1B49B46E0(v0[26], v4);
    sub_1B4974FBC(v4 + *(v5 + 60), v8, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    v9 = *(v7 + 48);
    if (v9(v8, 1, v6) == 1)
    {
      v11 = v0[19];
      v10 = v0[20];
      v12 = [objc_opt_self() miles];
      sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
      sub_1B4D1741C();
      if (v9(v11, 1, v10) != 1)
      {
        sub_1B4975024(v0[19], &qword_1EB8A6CC0, &unk_1B4D1BC00);
      }
    }

    else
    {
      (*(v0[21] + 32))(v0[25], v0[19], v0[20]);
    }

    v13 = v0[15];
    v14 = v0[16];
    v15 = v0[14];
    sub_1B4974FBC(v0[29] + *(v0[27] + 72), v15, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    v16 = *(v14 + 48);
    if (v16(v15, 1, v13) == 1)
    {
      if (qword_1EDC36DF0 != -1)
      {
        swift_once();
      }

      v18 = v0[14];
      v17 = v0[15];
      v19 = qword_1EDC36DF8;
      sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
      v20 = v19;
      sub_1B4D1741C();
      if (v16(v18, 1, v17) != 1)
      {
        sub_1B4975024(v0[14], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      }
    }

    else
    {
      (*(v0[16] + 32))(v0[18], v0[14], v0[15]);
    }

    v21 = v0[29];
    v22 = v0[27];
    v24 = v0[6];
    v23 = v0[7];
    v25 = v0[5];
    v26 = [objc_opt_self() seconds];
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    sub_1B4D1741C();
    v27 = *(v22 + 28);
    v28 = *(v24 + 16);
    v28(v23, v21 + v27, v25);
    v29 = (*(v24 + 88))(v23, v25);
    if (v29 == *MEMORY[0x1E6985B50])
    {
      v30 = v0[24];
      v31 = v0[20];
      v32 = v0[21];
    }

    else if (v29 == *MEMORY[0x1E6985B40])
    {
      v30 = v0[12];
      v31 = v0[8];
      v32 = v0[9];
    }

    else
    {
      if (v29 != *MEMORY[0x1E6985B48])
      {
        if (v29 != *MEMORY[0x1E6985B30])
        {
          if (v29 != *MEMORY[0x1E6985B38])
          {
            sub_1B4D1896C();
            v0[2] = 0;
            v0[3] = 0xE000000000000000;
            MEMORY[0x1B8C7C620](0xD00000000000002ALL, 0x80000001B4D62600);
            sub_1B4D18A8C();
            return sub_1B4D18A9C();
          }

          goto LABEL_20;
        }

        v88 = v28;
        v91 = v27;
        v45 = v0[23];
        v46 = v0[20];
        v47 = v0[21];
        v85 = v21;
        v48 = v0[11];
        v49 = v0[8];
        v50 = v0[9];
        v51 = v0[7];
        (*(v0[6] + 96))(v51, v0[5]);
        v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F68, &qword_1B4D204A0) + 48);
        (*(v47 + 32))(v45, v51, v46);
        (*(v50 + 32))(v48, v51 + v52, v49);
        v53 = sub_1B4D1740C();
        sub_1B4D1745C();

        v54 = sub_1B4D1740C();
        sub_1B4D1745C();

        sub_1B4D1742C();
        v56 = v55;
        sub_1B4D1742C();
        if (v57 <= v56)
        {
          sub_1B4D1742C();
          v60 = v59;
          sub_1B4D1742C();
          v83 = v61 <= v60;
        }

        else
        {
          v83 = 0;
        }

        v62 = v0[22];
        v63 = v0[23];
        v64 = v0[20];
        v65 = v0[21];
        v66 = v0[11];
        v67 = v0[8];
        v68 = *(v0[9] + 8);
        v68(v0[10], v67);
        v69 = *(v65 + 8);
        v69(v62, v64);
        v68(v66, v67);
        v69(v63, v64);
        v21 = v85;
        v28 = v88;
        v27 = v91;
        if (!v83)
        {
LABEL_20:
          v38 = v0[29];
          v39 = v0[25];
          v40 = v0[20];
          v41 = v0[21];
          v42 = v0[18];
          v43 = v0[15];
          v44 = v0[16];
          (*(v0[9] + 8))(v0[13], v0[8]);
          (*(v44 + 8))(v42, v43);
          (*(v41 + 8))(v39, v40);
          sub_1B49AA7C0(v38);
          goto LABEL_21;
        }

LABEL_29:
        v87 = v0[29];
        v89 = v28;
        v70 = v0[21];
        v84 = v0[20];
        v86 = v0[25];
        v71 = v0[16];
        v81 = v0[15];
        v82 = v0[18];
        v72 = v0[9];
        v79 = v0[8];
        v80 = v0[13];
        v73 = v0[5];
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8AB658, &qword_1B4D35168);
        v74 = *(type metadata accessor for WorkoutGoalAchievementStatusFact(0) - 8);
        v75 = v27;
        v76 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v77 = swift_allocObject();
        *(v77 + 16) = xmmword_1B4D1A800;
        v90 = v77;
        v89(v77 + v76, v21 + v75, v73);
        (*(v72 + 8))(v80, v79);
        (*(v71 + 8))(v82, v81);
        (*(v70 + 8))(v86, v84);
        sub_1B49AA7C0(v87);
        goto LABEL_30;
      }

      v30 = v0[17];
      v31 = v0[15];
      v32 = v0[16];
    }

    v33 = v0[7];
    (*(v0[6] + 96))(v33, v0[5]);
    v34 = *v33;
    v35 = *(v33 + 8);
    sub_1B4D1745C();
    sub_1B4D1742C();
    v37 = v36;

    (*(v32 + 8))(v30, v31);
    if (v34 > v37)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

  sub_1B4975024(v0[26], &qword_1EB8A6A98, &unk_1B4D1CBE0);
LABEL_21:
  v90 = MEMORY[0x1E69E7CC0];
LABEL_30:

  v78 = v0[1];

  return v78(v90);
}

unint64_t sub_1B4B7ADB4()
{
  result = qword_1EB8AB630;
  if (!qword_1EB8AB630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB630);
  }

  return result;
}

unint64_t sub_1B4B7AE08(uint64_t a1)
{
  *(a1 + 8) = sub_1B4B7AE38();
  result = sub_1B4B7AE8C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4B7AE38()
{
  result = qword_1EB8AB638;
  if (!qword_1EB8AB638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB638);
  }

  return result;
}

unint64_t sub_1B4B7AE8C()
{
  result = qword_1EB8AB640;
  if (!qword_1EB8AB640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB640);
  }

  return result;
}

uint64_t sub_1B4B7AEE0(uint64_t a1)
{
  *(a1 + 8) = sub_1B4B7AF48(&qword_1EB8AB648, &protocol conformance descriptor for WorkoutGoalAchievementStatusFact);
  result = sub_1B4B7AF48(&qword_1EB8AB650, &protocol conformance descriptor for WorkoutGoalAchievementStatusFact);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4B7AF48(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutGoalAchievementStatusFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t UnfairLock.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t UnfairLock.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t UnfairLock.__deallocating_deinit()
{
  MEMORY[0x1B8C7DDA0](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

void sub_1B4B7B098(void (*a1)(void))
{
  os_unfair_lock_lock(*(v1 + 16));
  a1();
  os_unfair_lock_unlock(*(v1 + 16));
}

double FitnessPlusDictionaryPropertyValue.dictionary.getter()
{
  sub_1B4959850();

  return result;
}

uint64_t FitnessPlusDictionaryPropertyValue.init(dictionary:missed:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static FitnessPlusDictionaryPropertyValue.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1[1];
  v7 = a2[1];
  return sub_1B4D1803C() & (v6 == v7);
}

uint64_t FitnessPlusDictionaryPropertyValue.hash(into:)(uint64_t a1, void *a2)
{
  v3 = *(v2 + 8);
  sub_1B4D1802C();
  return MEMORY[0x1B8C7D290](v3);
}

uint64_t FitnessPlusDictionaryPropertyValue.hashValue.getter(void *a1)
{
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  sub_1B4D18E8C();
  FitnessPlusDictionaryPropertyValue.hash(into:)(v5, a1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B7B320(uint64_t a1, void *a2)
{
  sub_1B4D18E8C();
  FitnessPlusDictionaryPropertyValue.hash(into:)(v4, a2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B7B374(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4B7B3B0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4B7B3EC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4B7B468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static RingsDeltaStatisticsPropertyGenerator.from(_:for:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B4D1746C();
  v9 = sub_1B4D1880C();
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  v19 = *a2;
  sub_1B49A8448(a1, &v33);
  if (v34)
  {
    v32 = a4;
    sub_1B49A24C4(&v33, v35);
    v20 = v19 - 15;
    if ((v19 - 15) < 4u)
    {
      v21 = v36;
      v22 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      LOBYTE(v33) = v20;
      RingsRepresentable.delta<A>(for:)(&v33, v21, a3, v22, v11);
      if ((*(v12 + 48))(v11, 1, v8) != 1)
      {
        (*(v12 + 32))(v18, v11, v8);
        (*(v12 + 16))(v15, v18, v8);
        v27 = v32;
        StatisticsPropertyValue.init(measurement:)(v15, a3, v32);
        (*(v12 + 8))(v18, v8);
        v30 = type metadata accessor for StatisticsPropertyValue(0, a3, v28, v29);
        (*(*(v30 - 8) + 56))(v27, 0, 1, v30);
        return __swift_destroy_boxed_opaque_existential_1Tm(v35);
      }

      (*(v31 + 8))(v11, v9);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    a4 = v32;
  }

  else
  {
    sub_1B49A84B8(&v33);
  }

  v25 = type metadata accessor for StatisticsPropertyValue(0, a3, v23, v24);
  return (*(*(v25 - 8) + 56))(a4, 1, 1, v25);
}

uint64_t sub_1B4B7B7EC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t Sequence.asyncFlatMap<A>(transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[9] = AssociatedTypeWitness;
  v6[10] = *(AssociatedTypeWitness - 8);
  v6[11] = swift_task_alloc();
  sub_1B4D1880C();
  v6[12] = swift_task_alloc();
  v6[13] = *(a3 - 8);
  v6[14] = swift_task_alloc();
  v9 = swift_getAssociatedTypeWitness();
  v6[15] = v9;
  v6[16] = *(v9 - 8);
  v6[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B7BA30, 0, 0);
}

uint64_t sub_1B4B7BA30()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[8];
  v4 = v0[5];
  v0[2] = sub_1B4D17F8C();
  (*(v2 + 16))(v1, v3, v4);
  sub_1B4D182AC();
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  swift_getAssociatedConformanceWitness();
  sub_1B4D1882C();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
    v8 = v0[2];

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    v11 = v0[3];
    (*(v0[10] + 32))(v0[11], v0[12], v0[9]);
    v14 = (v11 + *v11);
    v12 = swift_task_alloc();
    v0[18] = v12;
    *v12 = v0;
    v12[1] = sub_1B4B7BC8C;
    v13 = v0[11];

    return v14(v13);
  }
}

uint64_t sub_1B4B7BC8C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {

    v4 = sub_1B4B7BFE4;
  }

  else
  {
    v4 = sub_1B4B7BDA8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B4B7BDA8()
{
  if (v0[19])
  {
    sub_1B4D1846C();
  }

  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  swift_getAssociatedConformanceWitness();
  sub_1B4D1882C();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
    v4 = v0[2];

    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    v7 = v0[3];
    (*(v0[10] + 32))(v0[11], v0[12], v0[9]);
    v10 = (v7 + *v7);
    v8 = swift_task_alloc();
    v0[18] = v8;
    *v8 = v0;
    v8[1] = sub_1B4B7BC8C;
    v9 = v0[11];

    return v10(v9);
  }
}

uint64_t sub_1B4B7BFE4()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t static Array<A>.allCases.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_1B4D1897C();
  sub_1B4D184BC();
  swift_dynamicCast();
  return v4;
}

uint64_t Sequence.asyncMap<A>(transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v6[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[10] = AssociatedTypeWitness;
  v6[11] = *(AssociatedTypeWitness - 8);
  v6[12] = swift_task_alloc();
  sub_1B4D1880C();
  v6[13] = swift_task_alloc();
  v6[14] = *(a3 - 8);
  v6[15] = swift_task_alloc();
  v9 = swift_getAssociatedTypeWitness();
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B7C388, 0, 0);
}

uint64_t sub_1B4B7C388()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[8];
  v4 = v0[5];
  v0[2] = sub_1B4D17F8C();
  (*(v2 + 16))(v1, v3, v4);
  sub_1B4D182AC();
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  swift_getAssociatedConformanceWitness();
  sub_1B4D1882C();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v8 = v0[2];

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    v11 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v15 = (v11 + *v11);
    v12 = swift_task_alloc();
    v0[19] = v12;
    *v12 = v0;
    v12[1] = sub_1B4B7C5F4;
    v13 = v0[12];
    v14 = v0[9];

    return v15(v14, v13);
  }
}

uint64_t sub_1B4B7C5F4()
{
  *(*v1 + 160) = v0;

  if (v0)
  {

    v2 = sub_1B4B7C968;
  }

  else
  {
    v2 = sub_1B4B7C710;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4B7C710()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_1B4D184BC();
  sub_1B4D1848C();
  (*(v2 + 8))(v1, v3);
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  swift_getAssociatedConformanceWitness();
  sub_1B4D1882C();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v7 = v0[2];

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    v10 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v14 = (v10 + *v10);
    v11 = swift_task_alloc();
    v0[19] = v11;
    *v11 = v0;
    v11[1] = sub_1B4B7C5F4;
    v12 = v0[12];
    v13 = v0[9];

    return v14(v13, v12);
  }
}

uint64_t sub_1B4B7C968()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t Sequence.asyncCompactMap<A>(transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v9 = sub_1B4D1880C();
  v6[9] = v9;
  v6[10] = *(v9 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = *(a4 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[15] = AssociatedTypeWitness;
  v6[16] = *(AssociatedTypeWitness - 8);
  v6[17] = swift_task_alloc();
  sub_1B4D1880C();
  v6[18] = swift_task_alloc();
  v6[19] = *(a3 - 8);
  v6[20] = swift_task_alloc();
  v11 = swift_getAssociatedTypeWitness();
  v6[21] = v11;
  v6[22] = *(v11 - 8);
  v6[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B7CCF4, 0, 0);
}

uint64_t sub_1B4B7CCF4()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[8];
  v4 = v0[5];
  v0[2] = sub_1B4D17F8C();
  (*(v2 + 16))(v1, v3, v4);
  sub_1B4D182AC();
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];
  swift_getAssociatedConformanceWitness();
  sub_1B4D1882C();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);
    v8 = v0[2];

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    v11 = v0[3];
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    v15 = (v11 + *v11);
    v12 = swift_task_alloc();
    v0[24] = v12;
    *v12 = v0;
    v12[1] = sub_1B4B7CF7C;
    v13 = v0[17];
    v14 = v0[11];

    return v15(v14, v13);
  }
}

uint64_t sub_1B4B7CF7C()
{
  *(*v1 + 200) = v0;

  if (v0)
  {

    v2 = sub_1B4B7D3D4;
  }

  else
  {
    v2 = sub_1B4B7D098;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4B7D098()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[6];
  v4 = (*(v2 + 48))(v1, 1, v3);
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  if (v4 == 1)
  {
    v8 = v0[9];
    v9 = v0[10];
    (*(v6 + 8))(v0[17], v0[15]);
    (*(v9 + 8))(v1, v8);
  }

  else
  {
    v11 = v0[13];
    v10 = v0[14];
    (*(v2 + 32))(v10, v1, v3);
    (*(v2 + 16))(v11, v10, v3);
    sub_1B4D184BC();
    sub_1B4D1848C();
    (*(v2 + 8))(v10, v3);
    (*(v6 + 8))(v5, v7);
  }

  v12 = v0[18];
  v13 = v0[15];
  v14 = v0[16];
  swift_getAssociatedConformanceWitness();
  sub_1B4D1882C();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);
    v15 = v0[2];

    v16 = v0[1];

    return v16(v15);
  }

  else
  {
    v18 = v0[3];
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    v22 = (v18 + *v18);
    v19 = swift_task_alloc();
    v0[24] = v19;
    *v19 = v0;
    v19[1] = sub_1B4B7CF7C;
    v20 = v0[17];
    v21 = v0[11];

    return v22(v21, v20);
  }
}

uint64_t sub_1B4B7D3D4()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t Sequence.asyncReduce<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v8[10] = *(a6 - 8);
  v8[11] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[12] = AssociatedTypeWitness;
  v8[13] = *(AssociatedTypeWitness - 8);
  v8[14] = swift_task_alloc();
  sub_1B4D1880C();
  v8[15] = swift_task_alloc();
  v8[16] = *(a5 - 8);
  v8[17] = swift_task_alloc();
  v11 = swift_getAssociatedTypeWitness();
  v8[18] = v11;
  v8[19] = *(v11 - 8);
  v8[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B7D710, 0, 0);
}

uint64_t sub_1B4B7D710()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[9];
  v4 = v0[6];
  (*(v0[10] + 16))(v0[2], v0[3], v0[7]);
  (*(v2 + 16))(v1, v3, v4);
  sub_1B4D182AC();
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  swift_getAssociatedConformanceWitness();
  sub_1B4D1882C();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[4];
    (*(v0[13] + 32))(v0[14], v0[15], v0[12]);
    v15 = (v10 + *v10);
    v11 = swift_task_alloc();
    v0[21] = v11;
    *v11 = v0;
    v11[1] = sub_1B4B7D980;
    v12 = v0[14];
    v13 = v0[11];
    v14 = v0[2];

    return v15(v13, v14, v12);
  }
}

uint64_t sub_1B4B7D980()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1B4B7DD00;
  }

  else
  {
    v2 = sub_1B4B7DA94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4B7DA94()
{
  v1 = v0[11];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[2];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v2 + 8))(v4, v3);
  (*(v2 + 32))(v4, v1, v3);
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  swift_getAssociatedConformanceWitness();
  sub_1B4D1882C();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[4];
    (*(v0[13] + 32))(v0[14], v0[15], v0[12]);
    v15 = (v10 + *v10);
    v11 = swift_task_alloc();
    v0[21] = v11;
    *v11 = v0;
    v11[1] = sub_1B4B7D980;
    v12 = v0[14];
    v13 = v0[11];
    v14 = v0[2];

    return v15(v13, v14, v12);
  }
}

uint64_t sub_1B4B7DD00()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[2];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v2 + 8))(v1, v3);
  (*(v4 + 8))(v6, v5);

  v7 = v0[1];

  return v7();
}

unint64_t Sequence.groupBy<A>(key:)(void (*a1)(char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = a1;
  v72 = a2;
  v60 = sub_1B4D1880C();
  v57 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v70 = &v48 - v10;
  v65 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v48 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v48 - v16;
  v68 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v50 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;
  v22 = sub_1B4D1880C();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v48 - v23;
  v67 = a3;
  v69 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = swift_getAssociatedTypeWitness();
  v48 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v29 = &v48 - v28;
  v30 = sub_1B4D184BC();
  swift_getTupleTypeMetadata2();
  v31 = sub_1B4D1843C();
  v59 = v30;
  v54 = a6;
  v32 = sub_1B49BD4DC(v31, a4, v30, a6);

  v76 = v32;
  v33 = v61;
  (*(v69 + 16))(v27, v74, v67);
  sub_1B4D182AC();
  v34 = v52;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v74 = v29;
  v69 = AssociatedConformanceWitness;
  sub_1B4D1882C();
  v67 = *(v34 + 48);
  v68 = v34 + 48;
  if (v67(v24, 1, AssociatedTypeWitness) == 1)
  {
LABEL_2:
    (*(v48 + 8))(v74, v33);
    return v76;
  }

  else
  {
    v64 = *(v34 + 32);
    v62 = (v65 + 48);
    v58 = (v65 + 32);
    v56 = (v65 + 16);
    v53 = (v34 + 16);
    v55 = (v65 + 8);
    v65 = v34 + 32;
    v63 = (v34 + 8);
    ++v57;
    v37 = v73;
    v64(v21, v24, AssociatedTypeWitness);
    while (1)
    {
      v38 = v70;
      v71(v21);
      if (v37)
      {
        break;
      }

      if ((*v62)(v38, 1, a4) == 1)
      {
        (*v63)(v21, AssociatedTypeWitness);
        (*v57)(v38, v60);
      }

      else
      {
        v73 = 0;
        v39 = v66;
        (*v58)(v66, v38, a4);
        sub_1B4D1805C();
        if (v75[0])
        {

          v40 = v51;
          (*v56)(v51, v39, a4);
          sub_1B4D1801C();
          v41 = sub_1B4D1804C();
          if (*v42)
          {
            (*v53)(v50, v21, AssociatedTypeWitness);
            v33 = v61;
            sub_1B4D1848C();
          }

          v41(v75, 0);
          v43 = *v55;
          (*v55)(v40, a4);
          v43(v66, a4);
          (*v63)(v21, AssociatedTypeWitness);
          v37 = v73;
        }

        else
        {
          (*v56)(v49, v39, a4);
          sub_1B4B05BD4(AssociatedTypeWitness, AssociatedTypeWitness);
          v44 = v52;
          swift_allocObject();
          v45 = sub_1B4D1841C();
          (*(v44 + 16))(v46, v21, AssociatedTypeWitness);
          v75[0] = sub_1B49BA6A8(v45, AssociatedTypeWitness);
          sub_1B4D1801C();
          sub_1B4D1806C();
          (*v55)(v66, a4);
          v47 = *(v44 + 8);
          v33 = v61;
          v47(v21, AssociatedTypeWitness);
          v37 = v73;
        }
      }

      sub_1B4D1882C();
      if (v67(v24, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_2;
      }

      v64(v21, v24, AssociatedTypeWitness);
    }

    (*v63)(v21, AssociatedTypeWitness);
    (*(v48 + 8))(v74, v33);
  }
}

uint64_t (*sub_1B4B7E70C(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1B4B7FE04(v4, a2);
  return sub_1B4B81254;
}

uint64_t (*sub_1B4B7E784(uint64_t **a1, __int128 *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1B4B7FEA8(v4, a2);
  return sub_1B4B81254;
}

uint64_t (*sub_1B4B7E7FC(uint64_t **a1, int a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1B4B7FF4C(v4, a2 & 0xFFFFFF);
  return sub_1B4B7E874;
}

void sub_1B4B7E878(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t Sequence.chunked(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v25 - v6;
  v8 = sub_1B4D1880C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  v31 = a1;
  if (a1 < 1)
  {
    sub_1B4D184BC();
    return sub_1B4D1843C();
  }

  else
  {
    v26 = v16;
    sub_1B4D184BC();
    v34 = sub_1B4D1843C();
    v33 = sub_1B4D1843C();
    (*(v11 + 16))(v14, AssociatedConformanceWitness, a2);
    sub_1B4D182AC();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1B4D1882C();
    v19 = v27;
    v29 = *(v27 + 48);
    v20 = v15;
    if (v29(v10, 1, AssociatedTypeWitness) != 1)
    {
      v23 = *(v19 + 32);
      v28 = v10;
      v23(v7, v10, AssociatedTypeWitness);
      while (1)
      {
        sub_1B4D1848C();
        v24 = v33;
        if (sub_1B4D1847C() == v31)
        {
          v32 = v24;
          sub_1B4D184BC();

          v10 = v28;
          sub_1B4D1848C();
          sub_1B4D184AC();
        }

        sub_1B4D1882C();
        if (v29(v10, 1, AssociatedTypeWitness) == 1)
        {
          break;
        }

        v23(v7, v10, AssociatedTypeWitness);
      }
    }

    (*(v26 + 8))(v18, v20);
    v21 = v33;
    v32 = v33;
    swift_getWitnessTable();
    if (sub_1B4D186AC())
    {
    }

    else
    {
      v32 = v21;
      sub_1B4D184BC();
      sub_1B4D1848C();
    }

    return v34;
  }
}

void sub_1B4B7ED64(unint64_t a1, uint64_t a2)
{
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  v4 = *(Descriptor - 8);
  MEMORY[0x1EEE9AC00](Descriptor);
  v28 = &Descriptor - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (a1 + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = (sub_1B4D188EC() + 1) & ~v7;
    v11 = *(v4 + 72);
    v27 = a2 + 64;
    do
    {
      v12 = v11;
      v13 = v11 * v8;
      v14 = a1;
      v15 = v28;
      sub_1B4B81124(*(a2 + 48) + v11 * v8, v28, type metadata accessor for FitnessContextQueryDescriptor);
      sub_1B4D18E8C();
      FitnessContextQueryDescriptor.hash(into:)(v29);
      v16 = sub_1B4D18EDC();
      v17 = v15;
      a1 = v14;
      sub_1B4B8118C(v17, type metadata accessor for FitnessContextQueryDescriptor);
      v18 = v16 & v9;
      if (v14 >= v10)
      {
        if (v18 < v10)
        {
          v6 = v27;
          v11 = v12;
          goto LABEL_4;
        }

        v11 = v12;
        if (v14 >= v18)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v11 = v12;
        if (v18 >= v10 || v14 >= v18)
        {
LABEL_11:
          v19 = v11 * v14;
          if (v11 * v14 < v13 || *(a2 + 48) + v11 * v14 >= (*(a2 + 48) + v13 + v11))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v27;
          }

          else
          {
            v6 = v27;
            if (v19 != v13)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 8 * a1);
          v22 = (v20 + 8 * v8);
          if (a1 != v8 || v21 >= v22 + 1)
          {
            *v21 = *v22;
            a1 = v8;
          }

          goto LABEL_4;
        }
      }

      v6 = v27;
LABEL_4:
      v8 = (v8 + 1) & v9;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  *(v6 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

unint64_t sub_1B4B7F020(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v22 = a2 + 64;
    v8 = (sub_1B4D188EC() + 1) & ~v5;
    while (1)
    {
      sub_1B4D18E8C();
      sub_1B4D1820C();

      result = sub_1B4D18EDC();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(type metadata accessor for FitnessContextQueryDescriptor(0) - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      v4 = v22;
      if (((*(v22 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B4B7F24C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4D188EC() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1B4D18E8C();
      MEMORY[0x1B8C7D290](v9);
      result = sub_1B4D18EDC();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + v3);
      v13 = (v11 + v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for WorkoutState(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1B4B7F41C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4D188EC() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_1B4D1879C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_1B4B7F5A8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4D188EC() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 48) + 56 * v6;
      v11 = *(v9 + 16);
      v10 = *(v9 + 32);
      v12 = *v9;
      v35 = *(v9 + 48);
      v34[1] = v11;
      v34[2] = v10;
      v34[0] = v12;
      v13 = *(v9 + 16);
      v30 = *v9;
      v31 = v13;
      v32 = *(v9 + 32);
      v33 = *(v9 + 48);
      sub_1B4D18E8C();
      sub_1B498B0D4(v34, &v28);
      WorkoutPropertyDimensions.hash(into:)(v29);
      v14 = sub_1B4D18EDC();
      result = sub_1B498AD54(v34);
      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = v16 + 56 * v3;
        v18 = (v16 + 56 * v6);
        if (v3 != v6 || v17 >= v18 + 56)
        {
          v19 = *v18;
          v20 = v18[1];
          v21 = v18[2];
          *(v17 + 48) = *(v18 + 6);
          *(v17 + 16) = v20;
          *(v17 + 32) = v21;
          *v17 = v19;
        }

        v22 = *(a2 + 56);
        v23 = (v22 + 8 * v3);
        v24 = (v22 + 8 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
        goto LABEL_18;
      }
    }
  }

  *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
LABEL_18:
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B4B7F7BC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4D188EC() + 1) & ~v5;
    v24 = v4;
    do
    {
      v9 = (*(a2 + 48) + 3 * v6);
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      sub_1B4D18E8C();
      sub_1B4D18EAC();
      if (v10 != 12)
      {
        sub_1B4D1820C();
      }

      if (v11 == 7)
      {
        sub_1B4D18EAC();
        if (v12 != 2)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_1B4D18EAC();
        sub_1B4D1820C();

        if (v12 != 2)
        {
LABEL_11:
          sub_1B4D18EAC();
        }
      }

      sub_1B4D18EAC();
      result = sub_1B4D18EDC();
      v13 = result & v7;
      if (v3 >= v8)
      {
        v4 = v24;
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v24;
        if (v13 >= v8)
        {
          goto LABEL_17;
        }
      }

      if (v3 >= v13)
      {
LABEL_17:
        v14 = *(a2 + 48);
        v15 = v14 + 3 * v3;
        v16 = (v14 + 3 * v6);
        if (v3 != v6 || v15 >= v16 + 3)
        {
          v17 = *v16;
          *(v15 + 2) = *(v16 + 2);
          *v15 = v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B4B7FC18(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4D188EC() + 1) & ~v5;
    while (1)
    {
      sub_1B4D18E8C();

      sub_1B4D1820C();
      v9 = sub_1B4D18EDC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for WorkoutMetadata(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t (*sub_1B4B7FE04(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1B4B805BC(v5);
  v5[9] = sub_1B4B80054(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1B4B81258;
}

uint64_t (*sub_1B4B7FEA8(uint64_t *a1, __int128 *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1B4B805BC(v5);
  v5[9] = sub_1B4B8024C(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1B4B81258;
}

uint64_t (*sub_1B4B7FF4C(uint64_t *a1, int a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1B4B805E4(v5);
  v5[9] = sub_1B4B80454((v5 + 4), a2 & 0xFFFFFF, isUniquelyReferenced_nonNull_native);
  return sub_1B4B7FFF0;
}

void sub_1B4B7FFF4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1B4B80054(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_1B49E9DFC(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1B4989F38();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1B4986BA4(v16, a3 & 1);
    v11 = sub_1B49E9DFC(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    sub_1B4B29E60();
    result = sub_1B4D18E1C();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_1B4B8019C;
}

void sub_1B4B8019C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      v8 = v1[1];
      sub_1B4BA408C(v4, v8, v2, v5);
      v9 = v8;
    }
  }

  else if ((*a1)[4])
  {
    v6 = v1[3];
    v7 = *v1[2];

    sub_1B4B7F41C(v6, v7);
  }

  free(v1);
}

void (*sub_1B4B8024C(uint64_t *a1, __int128 *a2, char a3))(uint64_t *a1)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x60uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 64) = a2;
  *(v8 + 72) = v3;
  v10 = *v3;
  v11 = sub_1B49EA514(a2);
  *(v9 + 88) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1B4989F4C();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1B4986BB8(v16, a3 & 1);
    v11 = sub_1B49EA514(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1B4D18E1C();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 80) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *(v9 + 56) = v21;
  return sub_1B4B80394;
}

void sub_1B4B80394(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  v3 = *(*a1 + 88);
  if (v2)
  {
    v4 = *(v1 + 80);
    v5 = **(v1 + 72);
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      v8 = *(v1 + 64);
      sub_1B4BA40D0(v4, v8, v2, v5);
      sub_1B498B0D4(v8, v1);
    }
  }

  else if (*(*a1 + 88))
  {
    v6 = *(v1 + 80);
    v7 = **(v1 + 72);
    sub_1B498AD54(*(v7 + 48) + 56 * v6);
    sub_1B4B7F5A8(v6, v7);
  }

  free(v1);
}

unint64_t (*sub_1B4B80454(uint64_t a1, int a2, char a3))(unint64_t result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_1B49EA598(a2 & 0xFFFFFF);
  *(a1 + 28) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1B498A0FC();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1B4986EEC(v14, a3 & 1);
    v9 = sub_1B49EA598(a2 & 0xFFFFFF);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_1B4D18E1C();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v19;
  return sub_1B4B80570;
}

unint64_t sub_1B4B80570(unint64_t result)
{
  v1 = *result;
  if (*result)
  {
    v2 = **(result + 8);
    if (*(result + 28))
    {
      *(v2[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      return sub_1B4BA4130(*(result + 16), *(result + 24) & 0xFFFFFF, v1, v2);
    }
  }

  else if (*(result + 28))
  {
    return sub_1B4B7F7BC(*(result + 16), **(result + 8));
  }

  return result;
}

uint64_t (*sub_1B4B805BC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1B4B81250;
}

uint64_t (*sub_1B4B805E4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1B4B8060C;
}

uint64_t sub_1B4B80618(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, double a4)
{
  v50 = a2;
  v51 = a3;
  v6 = type metadata accessor for WorkoutRecord(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  result = sub_1B4C95A10(MEMORY[0x1E69E7CC0]);
  v53 = result;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return result;
  }

  v44 = v4;
  v47 = *(v7 + 80);
  v14 = *(v7 + 72);
  v49 = (v47 + 32) & ~v47;
  v15 = a1 + v49;
  v46 = xmmword_1B4D1A800;
  v48 = v14;
  while (1)
  {
    sub_1B4B81124(v15, v11, type metadata accessor for WorkoutRecord);
    v16 = v50(v11);
    v17 = v16;
    v18 = v53;
    if (*(v53 + 16))
    {
      sub_1B49E9DFC(v16);
      if (v19)
      {
        v21 = sub_1B4B7E70C(v52, v17);
        if (*v20)
        {
          v22 = v20;
          sub_1B4B81124(v11, v45, type metadata accessor for WorkoutRecord);
          v23 = *v22;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v22 = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v23 = sub_1B4A1D454(0, v23[2] + 1, 1, v23);
            *v22 = v23;
          }

          v27 = v23[2];
          v26 = v23[3];
          if (v27 >= v26 >> 1)
          {
            v23 = sub_1B4A1D454((v26 > 1), v27 + 1, 1, v23);
            *v22 = v23;
          }

          v23[2] = v27 + 1;
          v28 = v23 + v49;
          v14 = v48;
          sub_1B4B811EC(v45, &v28[v27 * v48], v25);
        }

        (v21)(v52, 0);

        sub_1B4B8118C(v11, type metadata accessor for WorkoutRecord);
        goto LABEL_5;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C08, &qword_1B4D200A8);
    v29 = v49;
    v30 = swift_allocObject();
    *(v30 + 16) = v46;
    sub_1B4B81124(v11, v30 + v29, type metadata accessor for WorkoutRecord);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v52[0] = v18;
    v33 = sub_1B49E9DFC(v17);
    v34 = v18[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      break;
    }

    v37 = v32;
    if (v18[3] >= v36)
    {
      if (v31)
      {
        v40 = v52[0];
        if ((v32 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_1B4989F38();
        v40 = v52[0];
        if ((v37 & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      sub_1B4986BA4(v36, v31);
      v38 = sub_1B49E9DFC(v17);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_30;
      }

      v33 = v38;
      v40 = v52[0];
      if ((v37 & 1) == 0)
      {
LABEL_22:
        v40[(v33 >> 6) + 8] |= 1 << v33;
        *(v40[6] + 8 * v33) = v17;
        *(v40[7] + 8 * v33) = v30;
        sub_1B4B8118C(v11, type metadata accessor for WorkoutRecord);
        v41 = v40[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_29;
        }

        v40[2] = v43;
        goto LABEL_4;
      }
    }

    *(v40[7] + 8 * v33) = v30;

    sub_1B4B8118C(v11, type metadata accessor for WorkoutRecord);
LABEL_4:
    v53 = v40;
    v14 = v48;
LABEL_5:
    v15 += v14;
    if (!--v13)
    {
      return v53;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:

  sub_1B4B29E60();
  result = sub_1B4D18E1C();
  __break(1u);
  return result;
}

uint64_t sub_1B4B80A54(uint64_t a1, void (*a2)(_OWORD *__return_ptr, _BYTE *), uint64_t a3)
{
  result = sub_1B4C95C90(MEMORY[0x1E69E7CC0]);
  v46 = result;
  v5 = *(a1 + 16);
  if (!v5)
  {
    return result;
  }

  for (i = a1 + 32; ; i += 64)
  {
    sub_1B4B6F2FC(i, v45);
    a2(v43, v45);
    v7 = v43[0];
    v8 = BYTE1(v43[0]);
    v9 = BYTE2(v43[0]);
    v10 = v46;
    v11 = LOBYTE(v43[0]) | (BYTE1(v43[0]) << 8);
    v12 = v11 | (BYTE2(v43[0]) << 16);
    if (*(v46 + 16))
    {
      sub_1B49EA598(v11 | (BYTE2(v43[0]) << 16));
      if (v13)
      {
        v15 = sub_1B4B7E7FC(v44, v12);
        if (*v14)
        {
          v16 = v14;
          sub_1B4B6F2FC(v45, v43);
          v17 = *v16;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v16 = v17;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v17 = sub_1B4A1DC00(0, *(v17 + 2) + 1, 1, v17);
            *v16 = v17;
          }

          v20 = *(v17 + 2);
          v19 = *(v17 + 3);
          if (v20 >= v19 >> 1)
          {
            v17 = sub_1B4A1DC00((v19 > 1), v20 + 1, 1, v17);
            *v16 = v17;
          }

          *(v17 + 2) = v20 + 1;
          v21 = &v17[64 * v20];
          v22 = v43[0];
          v23 = v43[1];
          v24 = v43[3];
          *(v21 + 4) = v43[2];
          *(v21 + 5) = v24;
          *(v21 + 2) = v22;
          *(v21 + 3) = v23;
        }

        (v15)(v44, 0);
        sub_1B4B6F358(v45);
        goto LABEL_5;
      }
    }

    v40 = v9;
    v42 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C50, &qword_1B4D20100);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1B4D1A800;
    sub_1B4B6F2FC(v45, v25 + 32);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    *&v43[0] = v10;
    v28 = sub_1B49EA598(v12);
    v29 = *(v10 + 16);
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (*(v10 + 24) >= v31)
    {
      if (v26)
      {
        v35 = *&v43[0];
        if ((v27 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_1B498A0FC();
        v35 = *&v43[0];
        if ((v32 & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      sub_1B4986EEC(v31, v26);
      v33 = sub_1B49EA598(v12);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_30;
      }

      v28 = v33;
      v35 = *&v43[0];
      if ((v32 & 1) == 0)
      {
LABEL_22:
        v35[(v28 >> 6) + 8] |= 1 << v28;
        v36 = (v35[6] + 3 * v28);
        *v36 = v7;
        v36[1] = v8;
        v36[2] = v40;
        *(v35[7] + 8 * v28) = v25;
        sub_1B4B6F358(v45);
        v37 = v35[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_29;
        }

        v35[2] = v39;
        goto LABEL_4;
      }
    }

    *(v35[7] + 8 * v28) = v25;

    sub_1B4B6F358(v45);
LABEL_4:
    v46 = v35;
    v5 = v42;
LABEL_5:
    if (!--v5)
    {
      return v46;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:

  result = sub_1B4D18E1C();
  __break(1u);
  return result;
}

uint64_t sub_1B4B80D88(uint64_t a1, void (*a2)(__int128 *__return_ptr, _BYTE *), uint64_t a3)
{
  result = sub_1B4C95B30(MEMORY[0x1E69E7CC0]);
  v51 = result;
  v7 = *(a1 + 16);
  if (!v7)
  {
    return result;
  }

  v8 = a1 + 32;
  v56 = a3;
  while (1)
  {
    sub_1B498ADFC(v8, v50);
    a2(&v42, v50);
    v52 = v42;
    v53 = v43;
    v54 = v44;
    v55 = v45;
    v9 = v51;
    if (*(v51 + 16))
    {
      sub_1B49EA514(&v52);
      if (v10)
      {
        v12 = sub_1B4B7E784(v49, &v52);
        if (*v11)
        {
          v13 = v11;
          sub_1B498ADFC(v50, &v42);
          v14 = *v13;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v13 = v14;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v14 = sub_1B4A1DD0C(0, *(v14 + 2) + 1, 1, v14);
            *v13 = v14;
          }

          v17 = *(v14 + 2);
          v16 = *(v14 + 3);
          if (v17 >= v16 >> 1)
          {
            v14 = sub_1B4A1DD0C((v16 > 1), v17 + 1, 1, v14);
            *v13 = v14;
          }

          *(v14 + 2) = v17 + 1;
          v18 = &v14[112 * v17];
          v19 = v42;
          v20 = v44;
          *(v18 + 3) = v43;
          *(v18 + 4) = v20;
          *(v18 + 2) = v19;
          v21 = v45;
          v22 = v46;
          v23 = v48;
          *(v18 + 7) = v47;
          *(v18 + 8) = v23;
          *(v18 + 5) = v21;
          *(v18 + 6) = v22;
          (v12)(v49, 0);
          sub_1B498AD54(&v52);
          sub_1B498AE58(v50);
        }

        else
        {
          (v12)(v49, 0);
          sub_1B498AD54(&v52);
          sub_1B498AE58(v50);
        }

        goto LABEL_5;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6848, &unk_1B4D1AB60);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1B4D1A800;
    sub_1B498ADFC(v50, v24 + 32);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *&v42 = v9;
    v26 = sub_1B49EA514(&v52);
    v28 = *(v9 + 16);
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      break;
    }

    v32 = v27;
    if (*(v9 + 24) < v31)
    {
      sub_1B4986BB8(v31, v25);
      v26 = sub_1B49EA514(&v52);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_29;
      }

LABEL_19:
      v34 = v42;
      if ((v32 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_3;
    }

    if (v25)
    {
      goto LABEL_19;
    }

    v41 = v26;
    sub_1B4989F4C();
    v26 = v41;
    v34 = v42;
    if ((v32 & 1) == 0)
    {
LABEL_20:
      v34[(v26 >> 6) + 8] |= 1 << v26;
      v35 = v34[6] + 56 * v26;
      v36 = v52;
      v37 = v53;
      v38 = v54;
      *(v35 + 48) = v55;
      *(v35 + 16) = v37;
      *(v35 + 32) = v38;
      *v35 = v36;
      *(v34[7] + 8 * v26) = v24;
      sub_1B498AE58(v50);
      v39 = v34[2];
      v30 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v30)
      {
        goto LABEL_28;
      }

      v34[2] = v40;
      goto LABEL_4;
    }

LABEL_3:
    *(v34[7] + 8 * v26) = v24;

    sub_1B498AD54(&v52);
    sub_1B498AE58(v50);
LABEL_4:
    v51 = v34;
LABEL_5:
    v8 += 112;
    if (!--v7)
    {
      return v51;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:

  result = sub_1B4D18E1C();
  __break(1u);
  return result;
}

uint64_t sub_1B4B81124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B8118C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4B811EC(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for WorkoutRecord(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t AudioSynthesisVoiceAsset.init(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  sub_1B4974FBC(&a1[*(v12 + 28)], v7, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v13 = *(v9 + 48);
  if (v13(v7, 1, v8) == 1)
  {
    sub_1B4D17BBC();
    v14 = &v11[*(v8 + 20)];
    *v14 = 0;
    *(v14 + 1) = 0;
    v15 = &v11[*(v8 + 24)];
    *v15 = 0;
    *(v15 + 1) = 0;
    if (v13(v7, 1, v8) != 1)
    {
      sub_1B4975024(v7, &qword_1EB8A6938, &qword_1B4D1ACF8);
    }
  }

  else
  {
    sub_1B4B82130(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  v16 = &v11[*(v8 + 20)];
  v17 = *(v16 + 1);
  if (!v17)
  {
    v24 = 0;
LABEL_11:
    sub_1B498C3D8();
    swift_allocError();
    *v25 = v24;
    swift_willThrow();
    sub_1B4B821EC(v11, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
    return sub_1B4B821EC(a1, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
  }

  v18 = &v11[*(v8 + 24)];
  v19 = *(v18 + 1);
  if (!v19)
  {
    v24 = 1;
    goto LABEL_11;
  }

  v20 = *v16;
  v21 = *v18;

  sub_1B4B821EC(v11, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  v22 = *a1;
  sub_1B4B81578(a1, &v28);
  result = sub_1B4B821EC(a1, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
  if (v2)
  {
  }

  else
  {
    v26 = v29;
    v27 = v30;
    *a2 = v20;
    *(a2 + 8) = v17;
    *(a2 + 16) = v21;
    *(a2 + 24) = v19;
    *(a2 + 32) = v22;
    *(a2 + 40) = v28;
    *(a2 + 56) = v26;
    *(a2 + 57) = v27;
  }

  return result;
}

void sub_1B4B81578(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v32 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v28 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8788, &qword_1B4D22448);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  if (*(a1 + 16) != 1)
  {
    sub_1B4B82198();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v19 = *(a1 + 8);
  if (!v19)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
LABEL_9:
    *(a2 + 16) = 256;
    return;
  }

  if (v19 != 1)
  {
    *a2 = xmmword_1B4D35370;
    goto LABEL_9;
  }

  v31 = a2;
  v30 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0) + 32);
  sub_1B4974FBC(a1 + v30, v18, &qword_1EB8A8788, &qword_1B4D22448);
  v29 = *(v5 + 48);
  v20 = v29(v18, 1, v4);
  sub_1B4975024(v18, &qword_1EB8A8788, &qword_1B4D22448);
  if (v20 == 1)
  {
    v21 = v31;
    *v31 = 0;
    v21[1] = 0;
    *(v21 + 8) = 1;
  }

  else
  {
    v22 = v30;
    sub_1B4974FBC(a1 + v30, v15, &qword_1EB8A8788, &qword_1B4D22448);
    v23 = v29;
    if (v29(v15, 1, v4) == 1)
    {
      *v9 = 0;
      v9[1] = 0;
      sub_1B4D17BBC();
      if (v23(v15, 1, v4) != 1)
      {
        sub_1B4975024(v15, &qword_1EB8A8788, &qword_1B4D22448);
      }
    }

    else
    {
      sub_1B4B82130(v15, v9, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
    }

    v24 = *v9;
    sub_1B4B821EC(v9, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
    sub_1B4974FBC(a1 + v22, v12, &qword_1EB8A8788, &qword_1B4D22448);
    if (v23(v12, 1, v4) == 1)
    {
      v25 = v32;
      *v32 = 0;
      v25[1] = 0;
      sub_1B4D17BBC();
      if (v23(v12, 1, v4) != 1)
      {
        sub_1B4975024(v12, &qword_1EB8A8788, &qword_1B4D22448);
      }
    }

    else
    {
      v25 = v32;
      sub_1B4B82130(v12, v32, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
    }

    v26 = v25[1];
    sub_1B4B821EC(v25, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
    v27 = v31;
    *v31 = v24;
    v27[1] = v26;
    *(v27 + 8) = 0;
  }
}

uint64_t AudioSynthesisVoiceAsset.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  sub_1B4B820E8(qword_1EDC3B640, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B81A54(uint64_t a1, __int128 *a2)
{
  v25 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
  v21 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 2);
  v11 = *(a2 + 3);
  v22 = *a2;
  v23 = v10;
  v24 = v11;
  sub_1B4B820E8(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4D17DAC();
  v12 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  v13 = *(v12 + 28);
  sub_1B4975024(a1 + v13, &qword_1EB8A6938, &qword_1B4D1ACF8);
  sub_1B4B82130(v9, a1 + v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  result = (*(v7 + 56))(a1 + v13, 0, 1, v6);
  *a1 = *(a2 + 32);
  v15 = *(a2 + 56);
  if (*(a2 + 57) == 1)
  {
    if (*(a2 + 40) != 0 || *(a2 + 56))
    {
      *(a1 + 8) = 2;
    }

    else
    {
      *(a1 + 8) = 0;
    }

    *(a1 + 16) = 1;
  }

  else
  {
    *(a1 + 8) = 1;
    *(a1 + 16) = 1;
    if ((v15 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](result);
      *(&v20 - 2) = v16;
      *(&v20 - 1) = v17;
      sub_1B4B820E8(&qword_1EB8A8980, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
      v18 = v25;
      sub_1B4D17DAC();
      v19 = *(v12 + 32);
      sub_1B4975024(a1 + v19, &qword_1EB8A8788, &qword_1B4D22448);
      sub_1B4B82130(v5, a1 + v19, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
      return (*(v21 + 56))(a1 + v19, 0, 1, v18);
    }
  }

  return result;
}

_OWORD *sub_1B4B81DC0(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[1];
  v11[0] = *v1;
  v11[1] = v7;
  v12[0] = v1[2];
  *(v12 + 10) = *(v1 + 42);
  v8 = sub_1B4B5B384();
  v9 = v11;
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4B820E8(qword_1EDC3B640, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
    v9 = sub_1B4D17D6C();
    sub_1B4B821EC(v6, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
  }

  return v9;
}

double sub_1B4B81F18@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1B4B24718(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    a3[1] = v6;
    a3[2] = v8[0];
    result = *(v8 + 10);
    *(a3 + 42) = *(v8 + 10);
  }

  return result;
}

uint64_t sub_1B4B81F64()
{
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  sub_1B4B820E8(qword_1EDC3B640, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B820E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4B82130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B4B82198()
{
  result = qword_1EB8AB6E0;
  if (!qword_1EB8AB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB6E0);
  }

  return result;
}

uint64_t sub_1B4B821EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B4B82260()
{
  result = qword_1EB8AB6E8;
  if (!qword_1EB8AB6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB6E8);
  }

  return result;
}

uint64_t WorkoutMetricsFact.TemplateString.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1B4B8234C()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B823C0(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B82414@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1B4D18B1C();

  *a2 = v3 != 0;
  return result;
}

uint64_t WorkoutMetricsFact.SubTemplateString.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  v6 = 12;
  if (v4 < 0xC)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t WorkoutMetricsFact.SubTemplateString.rawValue.getter()
{
  v1 = 0xD000000000000029;
  v2 = *v0;
  if (v2 > 5)
  {
    v6 = 0xD000000000000033;
    v7 = 0xD000000000000044;
    if (v2 != 10)
    {
      v7 = 0xD000000000000041;
    }

    if (v2 == 9)
    {
      v7 = 0xD000000000000033;
    }

    if (v2 == 7)
    {
      v6 = 0xD000000000000027;
    }

    if (v2 != 6)
    {
      v1 = v6;
    }

    if (*v0 <= 8u)
    {
      return v1;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v3 = 0xD000000000000031;
    if (v2 != 4)
    {
      v3 = 0xD000000000000029;
    }

    if (v2 == 3)
    {
      v3 = 0xD000000000000029;
    }

    v4 = 0xD00000000000002ELL;
    if (v2 == 1)
    {
      v4 = 0xD00000000000002CLL;
    }

    if (!*v0)
    {
      v4 = 0xD000000000000025;
    }

    if (*v0 <= 2u)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1B4B8264C()
{
  v0 = WorkoutMetricsFact.SubTemplateString.rawValue.getter();
  v2 = v1;
  if (v0 == WorkoutMetricsFact.SubTemplateString.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B4D18DCC();
  }

  return v5 & 1;
}

uint64_t sub_1B4B826E8()
{
  sub_1B4D18E8C();
  WorkoutMetricsFact.SubTemplateString.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B82750(uint64_t a1)
{
  WorkoutMetricsFact.SubTemplateString.rawValue.getter();
  sub_1B4D1820C();
}

uint64_t sub_1B4B827B4(uint64_t a1)
{
  sub_1B4D18E8C();
  WorkoutMetricsFact.SubTemplateString.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

unint64_t sub_1B4B82824@<X0>(unint64_t *a1@<X8>)
{
  result = WorkoutMetricsFact.SubTemplateString.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::String __swiftcall WorkoutMetricsFact.separator()()
{
  v0 = 10;
  v1 = 0xE100000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t WorkoutMetricsFact.placeholders()()
{
  v1 = type metadata accessor for WorkoutMetricsFact(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D35480;
  sub_1B4AFDC64(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_1B4B82E90(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B4B82EF4;
  *(v7 + 24) = v6;
  *(v4 + 32) = 0xD000000000000012;
  *(v4 + 40) = 0x80000001B4D62340;
  *(v4 + 48) = sub_1B4AF87E4;
  *(v4 + 56) = v7;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  sub_1B4AFDC64(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = swift_allocObject();
  sub_1B4B82E90(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v5);
  *(v4 + 80) = 0xD000000000000012;
  *(v4 + 88) = 0x80000001B4D62360;
  *(v4 + 96) = sub_1B4B8310C;
  *(v4 + 104) = v8;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  sub_1B4AFDC64(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = swift_allocObject();
  sub_1B4B82E90(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v5);
  *(v4 + 128) = 0xD000000000000017;
  *(v4 + 136) = 0x80000001B4D622E0;
  *(v4 + 144) = sub_1B4B83364;
  *(v4 + 152) = v9;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  sub_1B4AFDC64(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = swift_allocObject();
  sub_1B4B82E90(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v5);
  *(v4 + 176) = 0xD000000000000018;
  *(v4 + 184) = 0x80000001B4D62380;
  *(v4 + 192) = sub_1B4B835D8;
  *(v4 + 200) = v10;
  *(v4 + 208) = 0;
  *(v4 + 216) = 0;
  sub_1B4AFDC64(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  sub_1B4B82E90(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v5);
  *(v4 + 224) = 0xD000000000000017;
  *(v4 + 232) = 0x80000001B4D62660;
  *(v4 + 240) = sub_1B4B83864;
  *(v4 + 248) = v11;
  *(v4 + 256) = 0;
  *(v4 + 264) = 0;
  sub_1B4AFDC64(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  sub_1B4B82E90(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v5);
  *(v4 + 272) = 0xD000000000000017;
  *(v4 + 280) = 0x80000001B4D62680;
  *(v4 + 288) = sub_1B4B8387C;
  *(v4 + 296) = v12;
  *(v4 + 304) = 0;
  *(v4 + 312) = 0;
  sub_1B4AFDC64(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = swift_allocObject();
  sub_1B4B82E90(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v5);
  *(v4 + 320) = 0xD000000000000016;
  *(v4 + 328) = 0x80000001B4D626A0;
  *(v4 + 336) = sub_1B4B83F44;
  *(v4 + 344) = v13;
  *(v4 + 352) = 0;
  *(v4 + 360) = 0;
  sub_1B4AFDC64(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  sub_1B4B82E90(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v5);
  *(v4 + 368) = 0xD00000000000001CLL;
  *(v4 + 376) = 0x80000001B4D626C0;
  *(v4 + 384) = sub_1B4B841C4;
  *(v4 + 392) = v14;
  *(v4 + 400) = 0;
  *(v4 + 408) = 0;
  sub_1B4AFDC64(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  sub_1B4B82E90(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v5);
  *(v4 + 416) = 0xD00000000000001CLL;
  *(v4 + 424) = 0x80000001B4D626E0;
  *(v4 + 432) = sub_1B4B84444;
  *(v4 + 440) = v15;
  *(v4 + 448) = 0;
  *(v4 + 456) = 0;
  sub_1B4AFDC64(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  sub_1B4B82E90(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v5);
  *(v4 + 464) = 0xD000000000000010;
  *(v4 + 472) = 0x80000001B4D62700;
  *(v4 + 480) = sub_1B4B84918;
  *(v4 + 488) = v16;
  *(v4 + 496) = 0;
  *(v4 + 504) = 0;
  return v4;
}

uint64_t sub_1B4B82D34(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for WorkoutMetricsFact(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
  sub_1B4D18F8C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1B2D0;
  sub_1B4D18F4C();
  sub_1B4D18F5C();
  sub_1B4D18F6C();
  sub_1B4D18F7C();
  v5 = sub_1B4BCA7BC(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v6 = sub_1B4D15F5C(a2 + v3, v5);

  return v6;
}

uint64_t sub_1B4B82E90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutMetricsFact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B82F0C(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  v10 = type metadata accessor for WorkoutMetricsFact(0);
  sub_1B4974FBC(a2 + *(v10 + 20), v5, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    if (*(a2 + *(v10 + 60)))
    {
      v12 = 2;
      v13 = 0;
    }

    else
    {
      v12 = 0;
      v13 = 1;
    }

    v14 = sub_1B4D133E8(v9, *a2, v12, v13);
    (*(v7 + 8))(v9, v6);
    return v14;
  }
}

uint64_t sub_1B4B83124(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for WorkoutMetricsFact(0);
  sub_1B4974FBC(a2 + *(v13 + 36), v5, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v15);
    v17 = v16;
    sub_1B4D1745C();
    v18 = sub_1B4D12160();
    v19 = sub_1B4D12A28(v9);

    v20 = *(v7 + 8);
    v20(v9, v6);
    v20(v12, v6);
    return v19;
  }
}

uint64_t sub_1B4B8337C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for WorkoutMetricsFact(0);
  sub_1B4974FBC(a2 + *(v13 + 40), v5, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    FIUnitManager.userMeasurementUnitForElevation()(v15);
    v17 = v16;
    sub_1B4D1745C();
    v18 = sub_1B4D12160();
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v19 = sub_1B4D1878C();

    v20 = *(v7 + 8);
    v20(v9, v6);
    v20(v12, v6);
    return v19;
  }
}

uint64_t sub_1B4B835F0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for WorkoutMetricsFact(0);
  sub_1B4974FBC(a2 + *(v13 + 44), v5, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    v15 = sub_1B4D12160();
    v16 = [objc_opt_self() watts];
    sub_1B4D1745C();

    sub_1B498AFB8(0, &qword_1EB8A7990, 0x1E696B068);
    v17 = sub_1B4D1878C();

    v18 = *(v7 + 8);
    v18(v9, v6);
    v18(v12, v6);
    return v17;
  }
}

uint64_t sub_1B4B838E0(uint64_t a1)
{
  v27 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v2 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v25 = &v25 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB748, &unk_1B4D35710);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = *(type metadata accessor for WorkoutMetricsFact(0) + 24);
  v26 = v1;
  sub_1B4974FBC(v1 + v17, v10, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1B4975024(v10, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    v18 = 1;
  }

  else
  {
    if (qword_1EDC36E80 != -1)
    {
      swift_once();
    }

    sub_1B4D1745C();
    sub_1B4D1742C();
    v19 = *(v5 + 8);
    v19(v7, v4);
    v20 = [objc_opt_self() metersPerSecond];
    sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
    sub_1B4D1741C();
    v19(v10, v4);
    v18 = 0;
  }

  v21 = v28;
  (*(v2 + 56))(v16, v18, 1, v28);
  sub_1B4974FBC(v16, v13, &qword_1EB8AB748, &unk_1B4D35710);
  if ((*(v2 + 48))(v13, 1, v21) == 1)
  {
    sub_1B4975024(v16, &qword_1EB8AB748, &unk_1B4D35710);
    sub_1B4975024(v13, &qword_1EB8AB748, &unk_1B4D35710);
    return 0;
  }

  else
  {
    v23 = v25;
    (*(v2 + 32))(v25, v13, v21);
    v24 = sub_1B4D13D94(v23, *v26, 1);
    (*(v2 + 8))(v23, v21);
    sub_1B4975024(v16, &qword_1EB8AB748, &unk_1B4D35710);
    return v24;
  }
}

uint64_t sub_1B4B83D6C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  v10 = type metadata accessor for WorkoutMetricsFact(0);
  sub_1B4974FBC(a2 + *(v10 + 24), v5, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = sub_1B4D13AE8(v9, *a2, 2);
    (*(v7 + 8))(v9, v6);
    return v12;
  }
}

uint64_t sub_1B4B83F5C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for WorkoutMetricsFact(0);
  sub_1B4974FBC(a2 + *(v13 + 48), v5, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A6CC8, &unk_1B4D464B0);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    v15 = sub_1B4D12160();
    if (qword_1EDC36DD8 != -1)
    {
      swift_once();
    }

    sub_1B4D1745C();
    sub_1B4D14174(v9);
    v17 = v16;

    v18 = *(v7 + 8);
    v18(v9, v6);
    v18(v12, v6);
    return v17;
  }
}

uint64_t sub_1B4B841DC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for WorkoutMetricsFact(0);
  sub_1B4974FBC(a2 + *(v13 + 52), v5, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A6CC8, &unk_1B4D464B0);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    v15 = sub_1B4D12160();
    if (qword_1EDC36DD8 != -1)
    {
      swift_once();
    }

    sub_1B4D1745C();
    sub_1B4D14174(v9);
    v17 = v16;

    v18 = *(v7 + 8);
    v18(v9, v6);
    v18(v12, v6);
    return v17;
  }
}

uint64_t sub_1B4B8445C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutMetricsFact(0);
  result = 0;
  v5 = (a2 + *(v3 + 56));
  if ((v5[1] & 1) == 0)
  {
    v6 = *v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74F0, &unk_1B4D35700);
    v7 = swift_allocObject();
    v8 = MEMORY[0x1E69E63B0];
    *(v7 + 16) = xmmword_1B4D1A800;
    v9 = MEMORY[0x1E69E6438];
    *(v7 + 56) = v8;
    *(v7 + 64) = v9;
    *(v7 + 32) = v6;
    return sub_1B4D1819C();
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for WorkoutMetricsFact(0);
  v2 = *(*(v1 - 1) + 80);
  v26 = *(*(v1 - 1) + 64);
  v27 = (v2 + 16) & ~v2;
  v28 = v0;
  v3 = v0 + v27;

  v4 = v1[5];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v0 + v27 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v8 = v1[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = v1[7];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  (*(*(v12 - 8) + 8))(v3 + v11, v12);
  v13 = v1[9];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v3 + v13, 1, v14))
  {
    (*(v15 + 8))(v3 + v13, v14);
  }

  v16 = v1[10];
  if (!v7(v3 + v16, 1, v5))
  {
    (*(v6 + 8))(v3 + v16, v5);
  }

  v17 = v1[11];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v3 + v17, 1, v18))
  {
    (*(v19 + 8))(v3 + v17, v18);
  }

  v20 = v1[12];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (!v23(v3 + v20, 1, v21))
  {
    (*(v22 + 8))(v3 + v20, v21);
  }

  v24 = v1[13];
  if (!v23(v3 + v24, 1, v21))
  {
    (*(v22 + 8))(v3 + v24, v21);
  }

  return MEMORY[0x1EEE6BDD0](v28, v27 + v26, v2 | 7);
}

uint64_t sub_1B4B84930(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for WorkoutMetricsFact(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

char *sub_1B4B849FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v140 = &v127 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v149 = &v127 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v141 = *(v5 - 8);
  v142 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v133 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v132 = &v127 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v153 = &v127 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v147 = *(v11 - 8);
  v148 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v136 = &v127 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v145 = &v127 - v14;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  v146 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v135 = &v127 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v127 - v17;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v144 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v134 = &v127 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v130 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v129 = &v127 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v131 = &v127 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v139 = &v127 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v127 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v150 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v128 = &v127 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v137 = &v127 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v127 - v36;
  v155 = type metadata accessor for WorkoutMetricsFact(0);
  v38 = *(v0 + v155[8]);
  v39 = sub_1B4A1E8EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v41 = *(v39 + 2);
  v40 = *(v39 + 3);
  v42 = (v38 & 1) == 0;
  if (v41 >= v40 >> 1)
  {
    v39 = sub_1B4A1E8EC((v40 > 1), v41 + 1, 1, v39);
  }

  *(v39 + 2) = v41 + 1;
  v154 = v39;
  v39[v41 + 32] = v42;
  v43 = v0;
  sub_1B4974FBC(v0 + v155[5], v30, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v44 = v150;
  v143 = *(v150 + 48);
  v45 = v143(v30, 1, v31);
  v46 = v152;
  if (v45 == 1)
  {
    sub_1B4975024(v30, &qword_1EB8A6CC0, &unk_1B4D1BC00);
LABEL_7:
    v48 = v145;
    v49 = v138;
    goto LABEL_8;
  }

  (*(v44 + 32))(v37, v30, v31);
  sub_1B4D1742C();
  if (v47 == 0.0)
  {
    (*(v44 + 8))(v37, v31);
    goto LABEL_7;
  }

  v58 = *(v154 + 2);
  v57 = *(v154 + 3);
  v48 = v145;
  v49 = v138;
  v127 = v58 + 1;
  if (v58 >= v57 >> 1)
  {
    v154 = sub_1B4A1E8EC((v57 > 1), v58 + 1, 1, v154);
  }

  (*(v150 + 8))(v37, v31);
  v59 = v154;
  *(v154 + 2) = v127;
  v59[v58 + 32] = 2;
LABEL_8:
  v50 = v155;
  sub_1B4974FBC(v43 + v155[9], v18, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v51 = v144;
  if ((*(v144 + 48))(v18, 1, v49) == 1)
  {
    sub_1B4975024(v18, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    v52 = v149;
    v53 = v153;
  }

  else
  {
    v54 = v48;
    v55 = v134;
    (*(v51 + 32))(v134, v18, v49);
    sub_1B4D1742C();
    if (v56 == 0.0)
    {
      (*(v51 + 8))(v55, v49);
      v52 = v149;
      v53 = v153;
      v48 = v54;
    }

    else
    {
      v61 = *(v154 + 2);
      v60 = *(v154 + 3);
      v52 = v149;
      if (v61 >= v60 >> 1)
      {
        v154 = sub_1B4A1E8EC((v60 > 1), v61 + 1, 1, v154);
      }

      v48 = v54;
      (*(v144 + 8))(v134, v49);
      v62 = v154;
      *(v154 + 2) = v61 + 1;
      v62[v61 + 32] = 3;
      v50 = v155;
      v53 = v153;
    }

    v46 = v152;
  }

  v63 = v139;
  sub_1B4974FBC(v43 + v50[10], v139, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v64 = v143(v63, 1, v31);
  v151 = v43;
  if (v64 == 1)
  {
    v65 = v141;
    sub_1B4975024(v63, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    goto LABEL_30;
  }

  v66 = v150;
  v67 = v137;
  v68 = v63;
  v69 = *(v150 + 32);
  v69(v137, v68, v31);
  sub_1B4D1742C();
  if (v70 == 0.0)
  {
    v65 = v141;
    (*(v66 + 8))(v67, v31);
LABEL_23:
    v52 = v149;
    v46 = v152;
    v53 = v153;
    goto LABEL_30;
  }

  v139 = v69;
  v144 = *(v66 + 56);
  v71 = v131;
  (v144)(v131, 1, 1, v31);
  [*v43 effectiveTypeIdentifier];
  v72 = [objc_opt_self() feet];
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  v73 = v129;
  sub_1B4D1741C();
  sub_1B4975024(v71, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  (v144)(v73, 0, 1, v31);
  sub_1B4B016F8(v73, v71);
  v74 = v130;
  sub_1B4974FBC(v71, v130, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (v143(v74, 1, v31) == 1)
  {
    sub_1B4975024(v71, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    (*(v66 + 8))(v137, v31);
    sub_1B4975024(v74, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    v65 = v141;
    v52 = v149;
    v50 = v155;
    v46 = v152;
    v53 = v153;
    v48 = v145;
  }

  else
  {
    v75 = v128;
    (v139)(v128, v74, v31);
    v76 = v75;
    sub_1B49B0578(&qword_1EDC37878, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968088]);
    v77 = v137;
    v78 = sub_1B4D1810C();
    v65 = v141;
    v50 = v155;
    v48 = v145;
    if ((v78 & 1) == 0)
    {
      v126 = *(v150 + 8);
      v126(v76, v31);
      sub_1B4975024(v71, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      v126(v77, v31);
      goto LABEL_23;
    }

    v80 = *(v154 + 2);
    v79 = *(v154 + 3);
    v52 = v149;
    v81 = v150;
    v46 = v152;
    if (v80 >= v79 >> 1)
    {
      v154 = sub_1B4A1E8EC((v79 > 1), v80 + 1, 1, v154);
    }

    v82 = *(v81 + 8);
    v82(v128, v31);
    sub_1B4975024(v131, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    v82(v137, v31);
    v83 = v154;
    *(v154 + 2) = v80 + 1;
    v83[v80 + 32] = 4;
    v50 = v155;
    v53 = v153;
  }

LABEL_30:
  sub_1B4974FBC(v151 + v50[11], v48, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v84 = v146;
  v85 = (*(v146 + 48))(v48, 1, v46);
  v86 = v142;
  v87 = v148;
  if (v85 == 1)
  {
    sub_1B4975024(v48, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
LABEL_34:
    v90 = v65;
    goto LABEL_35;
  }

  v88 = v135;
  (*(v84 + 32))(v135, v48, v46);
  sub_1B4D1742C();
  if (v89 == 0.0)
  {
    (*(v84 + 8))(v88, v46);
    v53 = v153;
    goto LABEL_34;
  }

  v97 = *(v154 + 2);
  v96 = *(v154 + 3);
  if (v97 >= v96 >> 1)
  {
    v154 = sub_1B4A1E8EC((v96 > 1), v97 + 1, 1, v154);
  }

  v90 = v65;
  (*(v146 + 8))(v135, v46);
  v98 = v154;
  *(v154 + 2) = v97 + 1;
  v98[v97 + 32] = 5;
  v87 = v148;
  v53 = v153;
LABEL_35:
  v91 = v151;
  sub_1B4974FBC(v151 + v50[6], v53, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v92 = v147;
  if ((*(v147 + 48))(v53, 1, v87) == 1)
  {
    sub_1B4975024(v53, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  }

  else
  {
    v93 = v53;
    v94 = v136;
    (*(v92 + 32))(v136, v93, v87);
    sub_1B4D1742C();
    if (v95 == 0.0)
    {
      (*(v92 + 8))(v94, v87);
    }

    else
    {
      v99 = [*v91 effectiveTypeIdentifier];
      v101 = *(v154 + 2);
      v100 = *(v154 + 3);
      v102 = v100 >> 1;
      v103 = v101 + 1;
      if (v99 == 13)
      {
        if (v102 <= v101)
        {
          v154 = sub_1B4A1E8EC((v100 > 1), v101 + 1, 1, v154);
        }

        (*(v147 + 8))();
        v104 = v154;
        *(v154 + 2) = v103;
        v105 = &v104[v101];
        v106 = 6;
      }

      else
      {
        if (v102 <= v101)
        {
          v154 = sub_1B4A1E8EC((v100 > 1), v101 + 1, 1, v154);
        }

        (*(v147 + 8))();
        v107 = v154;
        *(v154 + 2) = v103;
        v105 = &v107[v101];
        v106 = 7;
      }

      v105[32] = v106;
    }
  }

  sub_1B4974FBC(v91 + v50[12], v52, &qword_1EB8A6CC8, &unk_1B4D464B0);
  v108 = *(v90 + 48);
  if (v108(v52, 1, v86) == 1)
  {
    sub_1B4975024(v52, &qword_1EB8A6CC8, &unk_1B4D464B0);
  }

  else
  {
    v109 = v132;
    (*(v90 + 32))(v132, v52, v86);
    sub_1B4D1742C();
    if (v110 == 0.0)
    {
      (*(v90 + 8))(v109, v86);
    }

    else
    {
      v112 = *(v154 + 2);
      v111 = *(v154 + 3);
      if (v112 >= v111 >> 1)
      {
        v154 = sub_1B4A1E8EC((v111 > 1), v112 + 1, 1, v154);
      }

      (*(v90 + 8))(v109, v86);
      v113 = v154;
      *(v154 + 2) = v112 + 1;
      v113[v112 + 32] = 8;
    }
  }

  v114 = v140;
  sub_1B4974FBC(v91 + v155[13], v140, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if (v108(v114, 1, v86) == 1)
  {
    sub_1B4975024(v114, &qword_1EB8A6CC8, &unk_1B4D464B0);
LABEL_61:
    v117 = v154;
    goto LABEL_62;
  }

  v115 = v133;
  (*(v90 + 32))(v133, v114, v86);
  sub_1B4D1742C();
  if (v116 == 0.0)
  {
    (*(v90 + 8))(v115, v86);
    goto LABEL_61;
  }

  v125 = *(v154 + 2);
  v124 = *(v154 + 3);
  if (v125 >= v124 >> 1)
  {
    v154 = sub_1B4A1E8EC((v124 > 1), v125 + 1, 1, v154);
  }

  (*(v90 + 8))(v115, v86);
  v117 = v154;
  *(v154 + 2) = v125 + 1;
  v117[v125 + 32] = 9;
LABEL_62:
  v118 = (v91 + v155[14]);
  if ((v118[1] & 1) == 0)
  {
    if (*v118 >= 9.0)
    {
      v120 = *(v117 + 2);
      v119 = *(v117 + 3);
      v121 = v120 + 1;
      v122 = 10;
    }

    else
    {
      if (*v118 < 7.0)
      {
        return v117;
      }

      v120 = *(v117 + 2);
      v119 = *(v117 + 3);
      v121 = v120 + 1;
      v122 = 11;
    }

    if (v120 >= v119 >> 1)
    {
      v117 = sub_1B4A1E8EC((v119 > 1), v121, 1, v117);
    }

    *(v117 + 2) = v121;
    v117[v120 + 32] = v122;
  }

  return v117;
}

unint64_t sub_1B4B85C30()
{
  result = qword_1EB8AB6F0;
  if (!qword_1EB8AB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB6F0);
  }

  return result;
}

unint64_t sub_1B4B85CCC()
{
  result = qword_1EB8AB708;
  if (!qword_1EB8AB708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB708);
  }

  return result;
}

unint64_t sub_1B4B85D68()
{
  result = qword_1EB8AB720;
  if (!qword_1EB8AB720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB720);
  }

  return result;
}

unint64_t sub_1B4B85DC0()
{
  result = qword_1EB8AB728;
  if (!qword_1EB8AB728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB728);
  }

  return result;
}

uint64_t sub_1B4B85E14(uint64_t a1)
{
  result = sub_1B4B85F4C(&qword_1EB8A6BC0, &protocol conformance descriptor for WorkoutMetricsFact);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4B85E5C()
{
  result = qword_1EB8AB730;
  if (!qword_1EB8AB730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB730);
  }

  return result;
}

unint64_t sub_1B4B85EB4()
{
  result = qword_1EB8AB738;
  if (!qword_1EB8AB738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB738);
  }

  return result;
}

uint64_t sub_1B4B85F08(uint64_t a1)
{
  result = sub_1B4B85F4C(&qword_1EB8AB740, &protocol conformance descriptor for WorkoutMetricsFact);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4B85F4C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutMetricsFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4B85FB0(uint64_t a1)
{
  sub_1B4D173DC();
  swift_allocObject();
  sub_1B4D173CC();
  sub_1B4B861A8(&qword_1EB8A7770, MEMORY[0x1E69695B0]);
  v1 = sub_1B4D173BC();

  return v1;
}

uint64_t sub_1B4B86054(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1B4D173AC();
  swift_allocObject();
  sub_1B4D1739C();
  sub_1B4B861A8(&qword_1EB8A7780, MEMORY[0x1E69695D0]);
  sub_1B4D1738C();
  sub_1B49DDD2C(a1, a2);
}

uint64_t sub_1B4B8611C(void *a1)
{
  a1[1] = sub_1B4B861A8(&qword_1EB8AB750, &protocol conformance descriptor for UUID);
  a1[2] = sub_1B4B861A8(&qword_1EB8A7780, MEMORY[0x1E69695D0]);
  result = sub_1B4B861A8(&qword_1EB8A7770, MEMORY[0x1E69695B0]);
  a1[3] = result;
  return result;
}

uint64_t sub_1B4B861A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B4D177CC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4B861F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationCoordinate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LocationContext.country.getter()
{
  v1 = *(v0 + *(type metadata accessor for LocationContext(0) + 20));

  return v1;
}

uint64_t type metadata accessor for LocationContext(uint64_t a1)
{
  result = qword_1EB8AB758;
  if (!qword_1EB8AB758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LocationContext.locality.getter()
{
  v1 = *(v0 + *(type metadata accessor for LocationContext(0) + 24));

  return v1;
}

uint64_t LocationContext.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for LocationContext(0) + 28));

  return v1;
}

int *LocationContext.init(location:country:locality:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1B4B863EC(a1, a8);
  result = type metadata accessor for LocationContext(0);
  v16 = (a8 + result[5]);
  *v16 = a2;
  v16[1] = a3;
  v17 = (a8 + result[6]);
  *v17 = a4;
  v17[1] = a5;
  v18 = (a8 + result[7]);
  *v18 = a6;
  v18[1] = a7;
  return result;
}

uint64_t sub_1B4B863EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationCoordinate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B4B86478(uint64_t a1)
{
  type metadata accessor for LocationCoordinate(319);
  if (v1 <= 0x3F)
  {
    sub_1B4ABA5F0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t HKActivitySummaryRepresentable.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v116 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v127 = &v109[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v126 = &v109[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v125 = &v109[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v124 = &v109[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v123 = &v109[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v122 = &v109[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v121 = &v109[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v120 = &v109[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v119 = &v109[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v118 = &v109[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v117 = &v109[-v24];
  v25 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v111 = &v109[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = &unk_1B4D3CDE0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB768, &unk_1B4D3CDE0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v109[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v109[-v33];
  v35 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  v115 = a1;
  v36 = *(a1 + v35);
  swift_beginAccess();
  v114 = *(v36 + 2);
  v37 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  swift_beginAccess();
  sub_1B4974FBC(&v36[v37], v34, &qword_1EB8AB768, &unk_1B4D3CDE0);
  v38 = *(v26 + 48);
  v112 = v25;
  LODWORD(v25) = (v38)(v34, 1, v25);
  sub_1B4975024(v34, &qword_1EB8AB768, &unk_1B4D3CDE0);
  v39 = 0;
  v40 = 0;
  v113 = v25;
  if (v25 != 1)
  {
    v41 = v36;
    sub_1B4974FBC(&v36[v37], v31, &qword_1EB8AB768, &unk_1B4D3CDE0);
    v42 = v112;
    if ((v38)(v31, 1, v112) == 1)
    {
      v43 = v111;
      *v111 = 0;
      v43[1] = 0;
      sub_1B4D17BBC();
      if ((v38)(v31, 1, v42) != 1)
      {
        sub_1B4975024(v31, &qword_1EB8AB768, &unk_1B4D3CDE0);
      }
    }

    else
    {
      v43 = v111;
      sub_1B4B88ED0(v31, v111);
    }

    v44 = *v43;
    v45 = v43[1];
    sub_1B4B88E70(v43, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
    if (v45 < v44)
    {
      __break(1u);
LABEL_46:
      swift_once();
      goto LABEL_11;
    }

    v40 = v45;
    v39 = v44;
  }

  v111 = v40;
  v112 = v39;
  v46 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused;
  swift_beginAccess();
  v110 = v36[v46];
  v28 = v36;
  v47 = &v36[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveGoal];
  swift_beginAccess();
  v41 = 0x1EDC36000uLL;
  v45 = 0x1EDC36000uLL;
  if (v47[8])
  {
    v48 = 1;
    v38 = v117;
    goto LABEL_12;
  }

  v38 = v117;
  if (qword_1EDC36DF0 != -1)
  {
    goto LABEL_46;
  }

LABEL_11:
  v49 = *(v45 + 3576);
  sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
  v50 = v49;
  sub_1B4D1741C();
  v48 = 0;
LABEL_12:
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v52 = 1;
  (*(*(v51 - 8) + 56))(v38, v48, 1, v51);
  v53 = &v28[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveProgress];
  swift_beginAccess();
  if ((v53[8] & 1) == 0)
  {
    if (*(v41 + 3568) != -1)
    {
      swift_once();
    }

    v54 = *(v45 + 3576);
    sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
    v55 = v54;
    sub_1B4D1741C();
    v52 = 0;
  }

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v57 = 1;
  (*(*(v56 - 8) + 56))(v118, v52, 1, v56);
  v58 = &v28[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesGoal];
  swift_beginAccess();
  if ((v58[8] & 1) == 0)
  {
    v59 = [objc_opt_self() minutes];
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    sub_1B4D1741C();
    v57 = 0;
  }

  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v61 = 1;
  (*(*(v60 - 8) + 56))(v119, v57, 1, v60);
  v62 = &v28[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesProgress];
  swift_beginAccess();
  if ((v62[8] & 1) == 0)
  {
    v63 = [objc_opt_self() minutes];
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    sub_1B4D1741C();
    v61 = 0;
  }

  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v65 = 1;
  (*(*(v64 - 8) + 56))(v120, v61, 1, v64);
  v66 = &v28[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseGoal];
  swift_beginAccess();
  if ((v66[8] & 1) == 0)
  {
    v67 = [objc_opt_self() minutes];
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    sub_1B4D1741C();
    v65 = 0;
  }

  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v69 = 1;
  (*(*(v68 - 8) + 56))(v121, v65, 1, v68);
  v70 = &v28[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseProgress];
  swift_beginAccess();
  if ((v70[8] & 1) == 0)
  {
    v71 = [objc_opt_self() minutes];
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    sub_1B4D1741C();
    v69 = 0;
  }

  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v73 = 1;
  (*(*(v72 - 8) + 56))(v122, v69, 1, v72);
  v74 = &v28[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standGoal];
  swift_beginAccess();
  if ((v74[8] & 1) == 0)
  {
    if (qword_1EDC36E70 != -1)
    {
      swift_once();
    }

    v75 = qword_1EDC36E78;
    type metadata accessor for UnitCount();
    v76 = v75;
    sub_1B4D1741C();
    v73 = 0;
  }

  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v78 = 1;
  (*(*(v77 - 8) + 56))(v123, v73, 1, v77);
  v79 = &v28[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standProgress];
  swift_beginAccess();
  if ((v79[8] & 1) == 0)
  {
    if (qword_1EDC36E70 != -1)
    {
      swift_once();
    }

    v80 = qword_1EDC36E78;
    type metadata accessor for UnitCount();
    v81 = v80;
    sub_1B4D1741C();
    v78 = 0;
  }

  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v83 = 1;
  (*(*(v82 - 8) + 56))(v124, v78, 1, v82);
  v84 = &v28[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__stepCount];
  swift_beginAccess();
  if ((v84[8] & 1) == 0)
  {
    if (qword_1EDC36E70 != -1)
    {
      swift_once();
    }

    v85 = qword_1EDC36E78;
    type metadata accessor for UnitCount();
    v86 = v85;
    sub_1B4D1741C();
    v83 = 0;
  }

  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v88 = 1;
  (*(*(v87 - 8) + 56))(v125, v83, 1, v87);
  v89 = &v28[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__flightCount];
  swift_beginAccess();
  if ((v89[8] & 1) == 0)
  {
    if (qword_1EDC36E70 != -1)
    {
      swift_once();
    }

    v90 = qword_1EDC36E78;
    type metadata accessor for UnitCount();
    v91 = v90;
    sub_1B4D1741C();
    v88 = 0;
  }

  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v93 = 1;
  (*(*(v92 - 8) + 56))(v126, v88, 1, v92);
  v94 = &v28[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__distance];
  swift_beginAccess();
  if ((v94[8] & 1) == 0)
  {
    v95 = [objc_opt_self() meters];
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    sub_1B4D1741C();
    v93 = 0;
  }

  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  (*(*(v96 - 8) + 56))(v127, v93, 1, v96);
  v97 = &v28[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode];
  swift_beginAccess();
  v98 = 0;
  v99 = v97[4];
  if ((v99 & 1) == 0)
  {
    v98 = *v97;
  }

  v100 = v113 == 1;
  v101 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
  swift_beginAccess();
  v113 = v28[v101];
  sub_1B4B88E70(v115, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  v102 = type metadata accessor for HKActivitySummaryRepresentable(0);
  v103 = v102[19];
  v104 = v116;
  v105 = v116 + v102[18];
  v106 = v111;
  v107 = v112;
  *v116 = v114;
  v104[1] = v107;
  v104[2] = v106;
  *(v104 + 24) = v100;
  *(v104 + 25) = v110;
  sub_1B498B270(v117, v104 + v102[7], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B498B270(v118, v104 + v102[8], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B498B270(v119, v104 + v102[9], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B498B270(v120, v104 + v102[10], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B498B270(v121, v104 + v102[11], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B498B270(v122, v104 + v102[12], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B498B270(v123, v104 + v102[13], &qword_1EB8A6D18, &unk_1B4D1BCA0);
  sub_1B498B270(v124, v104 + v102[14], &qword_1EB8A6D18, &unk_1B4D1BCA0);
  sub_1B498B270(v125, v104 + v102[15], &qword_1EB8A6D18, &unk_1B4D1BCA0);
  sub_1B498B270(v126, v104 + v102[16], &qword_1EB8A6D18, &unk_1B4D1BCA0);
  result = sub_1B498B270(v127, v104 + v102[17], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  *v105 = v98;
  v105[8] = v99;
  *(v104 + v103) = v113;
  return result;
}

uint64_t HKActivitySummaryRepresentable.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  sub_1B4B88FC4(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummary);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B87604(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v219 = &v191 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v207 = *(v6 - 8);
  v208 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v216 = &v191 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v206 = &v191 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v205 = &v191 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v204 = &v191 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v202 = &v191 - v15;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v215 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v213 = &v191 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v195 = &v191 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v194 = &v191 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v203 = &v191 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v201 = &v191 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v200 = &v191 - v26;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v210 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v193 = &v191 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v192 = &v191 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v198 = &v191 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v197 = &v191 - v33;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v211 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v199 = &v191 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v196 = &v191 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB768, &unk_1B4D3CDE0);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v39 = &v191 - v38;
  v40 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  v222 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v191 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = a2;
  v43 = *a2;
  v44 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = *&v44[a1];
  v221 = a1;
  v217 = v44;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v47 = a1;
    type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    swift_allocObject();
    v48 = sub_1B4C3D764(v46);

    *&v44[v47] = v48;
    v46 = v48;
  }

  v49 = swift_beginAccess();
  *(v46 + 16) = v43;
  v50 = v220;
  if ((v220[3] & 1) == 0)
  {
    *&v51 = MEMORY[0x1EEE9AC00](v49);
    *(&v191 - 1) = v51;
    sub_1B4B88FC4(&qword_1EB8A9808, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange, &protocol conformance descriptor for Apple_Fitness_Intelligence_CacheIndexRange);
    v52 = v212;
    sub_1B4D17DAC();
    v212 = v52;
    v53 = v221;
    v54 = v217;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v56 = *&v54[v53];
    if ((v55 & 1) == 0)
    {
      type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
      swift_allocObject();
      v57 = sub_1B4C3D764(v56);

      *&v54[v53] = v57;
      v56 = v57;
    }

    sub_1B4B88ED0(v42, v39);
    (*(v222 + 56))(v39, 0, 1, v40);
    v58 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
    swift_beginAccess();
    sub_1B4B8900C(v39, v56 + v58);
    swift_endAccess();
    v50 = v220;
  }

  v59 = *(v50 + 25);
  v60 = v221;
  v61 = v217;
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *&v61[v60];
  if ((v62 & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    swift_allocObject();
    v64 = sub_1B4C3D764(v63);

    *&v61[v60] = v64;
    v63 = v64;
  }

  v65 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused;
  swift_beginAccess();
  *(v63 + v65) = v59;
  v222 = type metadata accessor for HKActivitySummaryRepresentable(0);
  v66 = v197;
  sub_1B4974FBC(v50 + *(v222 + 28), v197, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v67 = v211;
  v68 = *(v211 + 48);
  v69 = v209;
  if (v68(v66, 1, v209) == 1)
  {
    sub_1B4975024(v66, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    v70 = v199;
  }

  else
  {
    v71 = v196;
    (*(v67 + 32))();
    sub_1B4D1742C();
    v73 = v72;
    v74 = v221;
    v75 = v217;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v67 + 8))(v71, v69);
      v76 = *&v75[v74];
    }

    else
    {
      type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
      swift_allocObject();

      v76 = sub_1B4C3D764(v77);

      (*(v211 + 8))(v196, v69);

      *&v75[v74] = v76;
    }

    v70 = v199;
    v78 = v76 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveGoal;
    swift_beginAccess();
    *v78 = v73;
    *(v78 + 8) = 0;
    v69 = v209;
  }

  v79 = v198;
  sub_1B4974FBC(v50 + *(v222 + 32), v198, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  if (v68(v79, 1, v69) == 1)
  {
    sub_1B4975024(v79, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    v80 = v219;
    v81 = v210;
    v82 = v216;
  }

  else
  {
    v83 = v211;
    (*(v211 + 32))(v70, v79, v69);
    v84 = v70;
    sub_1B4D1742C();
    v86 = v85;
    v87 = v221;
    v88 = v217;
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v81 = v210;
    if (v89)
    {
      (*(v83 + 8))(v84, v69);
      v90 = *&v88[v87];
      v82 = v216;
    }

    else
    {
      type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
      swift_allocObject();

      v90 = sub_1B4C3D764(v91);

      (*(v83 + 8))(v84, v69);
      v82 = v216;

      *&v88[v221] = v90;
    }

    v92 = v90 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveProgress;
    swift_beginAccess();
    *v92 = v86;
    *(v92 + 8) = 0;
    v80 = v219;
  }

  v93 = v200;
  sub_1B4974FBC(v50 + *(v222 + 44), v200, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  v94 = *(v81 + 48);
  v95 = v214;
  if (v94(v93, 1, v214) == 1)
  {
    sub_1B4975024(v93, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    v96 = v201;
    v97 = v217;
  }

  else
  {
    v98 = v192;
    (*(v81 + 32))(v192, v93, v95);
    sub_1B4D1742C();
    v100 = v99;
    v101 = v221;
    v97 = v217;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v81 + 8))(v98, v95);
      v102 = *&v97[v101];
    }

    else
    {
      type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
      swift_allocObject();

      v102 = sub_1B4C3D764(v103);

      (*(v81 + 8))(v98, v95);
      v82 = v216;

      *&v97[v221] = v102;
    }

    v104 = v102 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseGoal;
    swift_beginAccess();
    *v104 = v100;
    *(v104 + 8) = 0;
    v80 = v219;
    v50 = v220;
    v96 = v201;
  }

  sub_1B4974FBC(v50 + *(v222 + 48), v96, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  v105 = v214;
  if (v94(v96, 1, v214) == 1)
  {
    sub_1B4975024(v96, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    v106 = v215;
    v107 = v202;
  }

  else
  {
    v108 = v96;
    v109 = v210;
    v110 = v193;
    (*(v210 + 32))(v193, v108, v105);
    sub_1B4D1742C();
    v112 = v111;
    v113 = v221;
    v114 = swift_isUniquelyReferenced_nonNull_native();
    v106 = v215;
    if (v114)
    {
      (*(v109 + 8))(v110, v105);
      v115 = *&v97[v113];
    }

    else
    {
      type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
      swift_allocObject();
      v116 = v110;
      v117 = v109;
      v118 = v113;

      v115 = sub_1B4C3D764(v119);

      (*(v117 + 8))(v116, v214);
      v82 = v216;

      *&v97[v118] = v115;
    }

    v107 = v202;
    v120 = v115 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseProgress;
    swift_beginAccess();
    *v120 = v112;
    *(v120 + 8) = 0;
    v80 = v219;
  }

  v121 = v203;
  sub_1B4974FBC(v50 + *(v222 + 52), v107, &qword_1EB8A6D18, &unk_1B4D1BCA0);
  v122 = v218;
  v217 = *(v106 + 48);
  if ((v217)(v107, 1, v218) == 1)
  {
    sub_1B4975024(v107, &qword_1EB8A6D18, &unk_1B4D1BCA0);
    v123 = v213;
    v124 = v222;
    v125 = v204;
    v126 = v206;
  }

  else
  {
    (*(v106 + 32))(v121, v107, v122);
    sub_1B4D1742C();
    v128 = v127;
    v129 = v221;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v106 + 8))(v121, v122);
      v130 = *&v97[v129];
    }

    else
    {
      type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
      swift_allocObject();
      v131 = v129;

      v130 = sub_1B4C3D764(v132);

      (*(v106 + 8))(v121, v122);
      v82 = v216;

      *&v97[v131] = v130;
    }

    v126 = v206;
    v133 = v130 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standGoal;
    swift_beginAccess();
    *v133 = v128;
    *(v133 + 8) = 0;
    v80 = v219;
    v123 = v213;
    v124 = v222;
    v125 = v204;
  }

  sub_1B4974FBC(v220 + *(v124 + 56), v125, &qword_1EB8A6D18, &unk_1B4D1BCA0);
  v134 = v218;
  if ((v217)(v125, 1, v218) == 1)
  {
    sub_1B4975024(v125, &qword_1EB8A6D18, &unk_1B4D1BCA0);
    v135 = v222;
    v136 = v205;
  }

  else
  {
    v137 = v215;
    v138 = v194;
    (*(v215 + 32))();
    sub_1B4D1742C();
    v140 = v139;
    v141 = v221;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v137 + 8))(v138, v134);
      v142 = *&v97[v141];
    }

    else
    {
      type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
      swift_allocObject();

      v142 = sub_1B4C3D764(v143);

      (*(v137 + 8))(v138, v134);
      v82 = v216;

      *&v97[v221] = v142;
    }

    v136 = v205;
    v144 = v142 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standProgress;
    swift_beginAccess();
    *v144 = v140;
    *(v144 + 8) = 0;
    v80 = v219;
    v123 = v213;
    v135 = v222;
  }

  sub_1B4974FBC(v220 + *(v135 + 60), v136, &qword_1EB8A6D18, &unk_1B4D1BCA0);
  v145 = v218;
  if ((v217)(v136, 1, v218) == 1)
  {
    sub_1B4975024(v136, &qword_1EB8A6D18, &unk_1B4D1BCA0);
  }

  else
  {
    v146 = v215;
    v147 = v136;
    v148 = v195;
    (*(v215 + 32))(v195, v147, v145);
    sub_1B4D1742C();
    v150 = v149;
    v151 = v221;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v146 + 8))(v148, v145);
      v152 = *&v97[v151];
    }

    else
    {
      type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
      swift_allocObject();

      v152 = sub_1B4C3D764(v153);

      (*(v146 + 8))(v148, v145);
      v82 = v216;

      *&v97[v221] = v152;
    }

    v154 = v152 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__stepCount;
    swift_beginAccess();
    *v154 = v150;
    *(v154 + 8) = 0;
    v80 = v219;
    v123 = v213;
  }

  sub_1B4974FBC(v220 + *(v222 + 64), v126, &qword_1EB8A6D18, &unk_1B4D1BCA0);
  v155 = v218;
  if ((v217)(v126, 1, v218) == 1)
  {
    sub_1B4975024(v126, &qword_1EB8A6D18, &unk_1B4D1BCA0);
    v157 = v207;
    v156 = v208;
  }

  else
  {
    v158 = v215;
    (*(v215 + 32))(v123, v126, v155);
    sub_1B4D1742C();
    v160 = v159;
    v161 = v221;
    v162 = swift_isUniquelyReferenced_nonNull_native();
    v163 = v123;
    v157 = v207;
    v156 = v208;
    if (v162)
    {
      (*(v158 + 8))(v163, v155);
      v164 = *&v97[v161];
    }

    else
    {
      type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
      swift_allocObject();

      v164 = sub_1B4C3D764(v165);

      (*(v158 + 8))(v163, v155);
      v82 = v216;

      *&v97[v221] = v164;
    }

    v166 = v164 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__flightCount;
    swift_beginAccess();
    *v166 = v160;
    *(v166 + 8) = 0;
    v80 = v219;
  }

  v167 = v220;
  sub_1B4974FBC(v220 + *(v222 + 68), v80, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((*(v157 + 48))(v80, 1, v156) == 1)
  {
    result = sub_1B4975024(v80, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  }

  else
  {
    (*(v157 + 32))(v82, v80, v156);
    sub_1B4D1742C();
    v170 = v169;
    v171 = v221;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v157 + 8))(v82, v156);
      v172 = *&v97[v171];
    }

    else
    {
      type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
      swift_allocObject();
      v173 = v171;

      v172 = sub_1B4C3D764(v174);

      (*(v157 + 8))(v82, v156);

      *&v97[v173] = v172;
    }

    v175 = v172 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__distance;
    result = swift_beginAccess();
    *v175 = v170;
    *(v175 + 8) = 0;
  }

  v177 = v221;
  v176 = v222;
  v178 = v167 + *(v222 + 72);
  if (v178[8])
  {
    goto LABEL_69;
  }

  v179 = *v178;
  if (*v178 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_75;
  }

  if (v179 > 0x7FFFFFFF)
  {
LABEL_75:
    __break(1u);
    return result;
  }

  v180 = swift_isUniquelyReferenced_nonNull_native();
  v181 = *&v97[v177];
  if ((v180 & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    swift_allocObject();
    v182 = v177;
    v183 = sub_1B4C3D764(v181);

    *&v97[v182] = v183;
    v181 = v183;
  }

  v184 = v181 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
  result = swift_beginAccess();
  *v184 = v179;
  *(v184 + 4) = 0;
  v177 = v221;
  v176 = v222;
LABEL_69:
  v185 = *(v167 + *(v176 + 76));
  if (v185 != 2)
  {
    v186 = swift_isUniquelyReferenced_nonNull_native();
    v187 = *&v97[v177];
    if ((v186 & 1) == 0)
    {
      type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
      swift_allocObject();
      v188 = v177;
      v189 = sub_1B4C3D764(v187);

      *&v97[v188] = v189;
      v187 = v189;
    }

    v190 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
    result = swift_beginAccess();
    *(v187 + v190) = v185 & 1;
  }

  return result;
}

uint64_t sub_1B4B88C30(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B4B88FC4(&qword_1EB8AB778, type metadata accessor for HKActivitySummaryRepresentable, &protocol conformance descriptor for HKActivitySummaryRepresentable);
  (*(v7 + 32))(a1, v7);
  if (!v2)
  {
    sub_1B4B88FC4(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummary);
    v1 = sub_1B4D17D6C();
    sub_1B4B88E70(v6, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  }

  return v1;
}

uint64_t sub_1B4B88DB0()
{
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  sub_1B4B88FC4(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummary);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B88E70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4B88ED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B88FC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4B8900C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB768, &unk_1B4D3CDE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B8907C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, void *a10, void (*a11)(uint64_t, void **, uint64_t, uint64_t), uint64_t a12)
{
  v212 = a8;
  v222 = a7;
  v251 = a6;
  v216 = a5;
  v215 = a4;
  v252 = a3;
  v256 = a1;
  v239 = a9;
  v205 = a12;
  v206 = a11;
  v253 = a10;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7D0, &qword_1B4D35948);
  MEMORY[0x1EEE9AC00](v223);
  v207 = &v197 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v227 = &v197 - v15;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7D8, &qword_1B4D3B8B0);
  v234 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v241 = &v197 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v214 = &v197 - v18;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v19 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v210 = &v197 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v220 = &v197 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v221 = (&v197 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v233 = (&v197 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v226 = &v197 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v231 = &v197 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v232 = &v197 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v230 = (&v197 - v34);
  MEMORY[0x1EEE9AC00](v35);
  v225 = &v197 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v254 = &v197 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  MEMORY[0x1EEE9AC00](v39);
  v217 = &v197 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v219 = &v197 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v229 = &v197 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v228 = &v197 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v211 = &v197 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v246 = &v197 - v51;
  v52 = a2 + 64;
  v53 = 1 << *(a2 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & *(a2 + 64);
  v56 = (v53 + 63) >> 6;
  v248 = (v50 + 48);
  v244 = (v50 + 32);
  v243 = (v50 + 8);
  v213 = (v19 + 48);
  v209 = (v19 + 32);
  v208 = (v19 + 8);
  v236 = (v50 + 16);
  v240 = (v50 + 56);
  v255 = a2;

  v57 = 0;
  v257 = 0;
  *&v58 = 136315138;
  v245 = v58;
  v247 = v39;
  v249 = v56;
  v250 = a2 + 64;
  if (!v55)
  {
LABEL_5:
    v60 = v254;
    while (1)
    {
      v61 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        break;
      }

      if (v61 >= v56)
      {

        v176 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact(0);
        return (*(*(v176 - 8) + 56))(v239, 1, 1, v176);
      }

      v55 = *(v52 + 8 * v61);
      ++v57;
      if (v55)
      {
        v59 = v39;
        v57 = v61;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_113:

    v178 = v227;
    v179 = v207;
    sub_1B4974FBC(v227, v207, &qword_1EB8AB7D0, &qword_1B4D35948);
    v180 = v179 + *(v223 + 64);
    v181 = *v180;
    v182 = *(v180 + 8);
    LOBYTE(v258) = *(v179 + *(v223 + 48));
    v206(v179, &v258, v181, v182);

    sub_1B4975024(v178, &qword_1EB8AB7D0, &qword_1B4D35948);
    v183 = *v243;
    v184 = v247;
    (*v243)(v228, v247);
    sub_1B4975024(v241, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
    v183(v246, v184);
    return (v183)(v179, v184);
  }

  while (1)
  {
    v59 = v39;
    v60 = v254;
LABEL_10:
    v62 = __clz(__rbit64(v55));
    v55 &= v55 - 1;
    v63 = v62 | (v57 << 6);
    v64 = *(*(v255 + 48) + v63);
    v65 = *(v255 + 56) + 24 * v63;
    v66 = *v65;
    v67 = *(v65 + 8);
    v68 = *(v65 + 16);

    v69 = v257;
    sub_1B4B8DB74(v66, v67, v68, v256, v253, v252, v251, v60);
    if (v69)
    {

      v70 = v69;
      v69 = 0;
      v39 = v59;
LABEL_64:
      if (qword_1EDC3CEC8 != -1)
      {
        swift_once();
      }

      v257 = v69;
      v126 = sub_1B4D17F6C();
      __swift_project_value_buffer(v126, qword_1EDC3CED0);
      v127 = v70;
      v128 = sub_1B4D17F5C();
      v129 = sub_1B4D1873C();

      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v258 = v131;
        *v130 = v245;
        ErrorValue = swift_getErrorValue();
        v133 = MEMORY[0x1EEE9AC00](ErrorValue);
        (*(v135 + 16))(&v197 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0), v133);
        v136 = sub_1B4D181AC();
        v138 = sub_1B49558AC(v136, v137, &v258);

        *(v130 + 4) = v138;
        _os_log_impl(&dword_1B4953000, v128, v129, "MilestoneFactComponents not created with error %s", v130, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v131);
        v139 = v131;
        v39 = v247;
        MEMORY[0x1B8C7DDA0](v139, -1, -1);
        MEMORY[0x1B8C7DDA0](v130, -1, -1);
      }

      else
      {
      }

      goto LABEL_69;
    }

    v242 = v64;
    v237 = v67;
    v238 = v66;
    v71 = *v248;
    v39 = v59;
    if ((*v248)(v60, 1, v59) != 1)
    {
      break;
    }

    v257 = 0;

    sub_1B4975024(v60, &qword_1EB8A6C90, &unk_1B4D1BBD0);
LABEL_69:
    v56 = v249;
    v52 = v250;
    if (!v55)
    {
      goto LABEL_5;
    }
  }

  v235 = *v244;
  v235(v246, v60, v59);
  if (v256 > 1u)
  {
    if (v256 == 2)
    {
      v77 = v71;
      v78 = v225;
      sub_1B4974FBC(v216, v225, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      v79 = v78;
      v71 = v77;
      if (v77(v79, 1, v59) == 1)
      {

        sub_1B4975024(v225, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      }

      else
      {
        v235(v211, v225, v59);
        v99 = sub_1B4BFA890(v212 & 1);
        if (*(v99 + 16))
        {
          v100 = sub_1B49EA3C0(v242);
          if (v101)
          {
            v95 = *(*(v99 + 56) + 8 * v100);
            v257 = 0;
            v102 = *v243;

            v102(v211, v39);
            v69 = v257;

            goto LABEL_74;
          }
        }

        (*v243)(v211, v59);
      }

LABEL_62:
      LOBYTE(v258) = 0;
      sub_1B4B9462C();
      swift_willThrowTypedImpl();
      v82 = 0;
      goto LABEL_63;
    }

    v83 = [v253 userDistanceElevationUnit];
    v84 = objc_opt_self();
    v85 = &selRef_miles;
    if ((v83 - 1) <= 4)
    {
      v85 = off_1E7C11890[(v83 - 1)];
    }

    v86 = [v84 *v85];
    v87 = sub_1B4BFB398(v86);
    if (v87[2])
    {
      v88 = sub_1B49EF0C0();
      if (v89)
      {
        v90 = *(v87[7] + 8 * v88);

        if (*(v90 + 16))
        {
          v91 = sub_1B49EA3C0(v242);
          if (v92)
          {
            v93 = *(*(v90 + 56) + 8 * v91);

            v94 = *(v93 + 16);
            v258 = MEMORY[0x1E69E7CC0];
            sub_1B4BCF25C(0, v94, 0);
            v95 = v258;
            if (v94)
            {

LABEL_55:

              v39 = v247;
              goto LABEL_62;
            }

            goto LABEL_73;
          }
        }
      }
    }

    goto LABEL_58;
  }

  if (!v256)
  {
    v72 = [v253 userActiveEnergyBurnedUnit];
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    v73 = objc_opt_self();
    v74 = [v73 kilocalorieUnit];
    v75 = sub_1B4D187AC();

    if (v75)
    {
      v76 = [objc_opt_self() kilocalories];
    }

    else
    {
      v96 = [v73 largeCalorieUnit];
      v97 = sub_1B4D187AC();

      if (v97)
      {
        if (qword_1EDC36DF0 != -1)
        {
          swift_once();
        }

        v98 = qword_1EDC36DF8;
        goto LABEL_51;
      }

      v76 = [objc_opt_self() kilojoules];
    }

    v98 = v76;
LABEL_51:
    v119 = v98;

    v120 = sub_1B4BFAE5C(v119);
    if (*(v120 + 16))
    {
      v121 = sub_1B49EA3C0(v242);
      if (v122)
      {
        v123 = *(*(v120 + 56) + 8 * v121);

        v124 = *(v123 + 16);
        v258 = MEMORY[0x1E69E7CC0];
        sub_1B4BCF25C(0, v124, 0);
        v95 = v258;
        if (v124)
        {

          goto LABEL_55;
        }

        goto LABEL_73;
      }
    }

LABEL_58:

    v39 = v247;
    goto LABEL_62;
  }

  v257 = 0;
  v80 = v214;
  sub_1B4974FBC(v215, v214, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v81 = v224;
  if ((*v213)(v80, 1, v224) == 1)
  {

    sub_1B4975024(v80, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    v82 = 1;
    LOBYTE(v258) = 1;
    sub_1B4B9462C();
    swift_willThrowTypedImpl();
    v69 = v257;
LABEL_63:
    sub_1B4B9462C();
    v70 = swift_allocError();
    *v125 = v82;
    (*v243)(v246, v39);
    goto LABEL_64;
  }

  (*v209)(v210, v80, v81);
  v103 = objc_allocWithZone(MEMORY[0x1E699C9F0]);
  v104 = [v103 initWithActivityTypeIdentifier:v252 isIndoor:0];
  v105 = [v253 userDistanceHKUnitForActivityType_];
  sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
  v106 = [objc_opt_self() mileUnit];
  v107 = sub_1B4D187AC();

  v108 = objc_opt_self();
  v109 = &selRef_miles;
  if ((v107 & 1) == 0)
  {
    v109 = &selRef_kilometers;
  }

  v110 = [v108 *v109];

  v111 = sub_1B4BF9640(v110, v212 & 1);
  if (!v111[2] || (v112 = sub_1B49EF0C0(), (v113 & 1) == 0))
  {
    v39 = v247;
    v69 = v257;
LABEL_61:

    (*v208)(v210, v224);
    goto LABEL_62;
  }

  v114 = *(v111[7] + 8 * v112);

  v69 = v257;
  if (!*(v114 + 16) || (v115 = sub_1B49EA3C0(v242), (v116 & 1) == 0))
  {
    v39 = v247;
    goto LABEL_61;
  }

  v117 = *(*(v114 + 56) + 8 * v115);

  v118 = *(v117 + 16);
  v258 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF25C(0, v118, 0);
  v95 = v258;

  if (v118)
  {

    (*v208)(v210, v224);
    goto LABEL_58;
  }

  (*v208)(v210, v224);
LABEL_73:
  v39 = v247;
LABEL_74:
  v258 = v95;

  sub_1B4B90AAC(&v258, &qword_1EB8AB7D8, &qword_1B4D3B8B0, sub_1B4CDE264, sub_1B4B90B70);
  if (v69)
  {
    goto LABEL_123;
  }

  v140 = v258;
  v198 = v258[2];
  if (!v198)
  {
LABEL_109:
    v257 = v69;
    (*v243)(v246, v39);

    goto LABEL_69;
  }

  v141 = 0;
  v200 = v258 + ((*(v234 + 80) + 32) & ~*(v234 + 80));
  v142 = v241;
  v143 = v232;
  v201 = v71;
  v199 = v258;
  while (v141 < *(v140 + 16))
  {
    v257 = v69;
    v144 = *(v234 + 72);
    v203 = v141;
    v69 = &qword_1EB8A6C90;
    sub_1B4974FBC(&v200[v144 * v141], v142, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
    v202 = *v236;
    v202(v143, v246, v39);
    v204 = *v240;
    v204(v143, 0, 1, v39);
    v145 = v231;
    sub_1B4974FBC(v143, v231, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    if (v71(v145, 1, v39) == 1)
    {
      sub_1B4975024(v143, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B4975024(v145, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      v69 = v230;
      v146 = v242;
      v71 = v201;
      v147 = v204;
      v204(v230, 1, 1, v39);
    }

    else
    {
      v235(v229, v145, v39);
      sub_1B4D1742C();
      v149 = v148;
      sub_1B4D1742C();
      v151 = v149 / v150;
      if ((*&v151 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_117;
      }

      v143 = v232;
      v69 = v230;
      v146 = v242;
      v71 = v201;
      v147 = v204;
      if (v151 <= -9.22337204e18)
      {
        goto LABEL_118;
      }

      if (v151 >= 9.22337204e18)
      {
        goto LABEL_119;
      }

      if (v151 <= 0)
      {
        v39 = v247;
        (*v243)(v229, v247);
        sub_1B4975024(v143, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        v153 = 1;
      }

      else
      {
        v152 = v241;
        if (*(v241 + *(v218 + 28)))
        {
          v39 = v247;
          (*v243)(v229, v247);
          sub_1B4975024(v143, &qword_1EB8A6C90, &unk_1B4D1BBD0);
          v147 = v204;
          v202(v69, v152, v39);
        }

        else
        {
          sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
          sub_1B4D173FC();
          v39 = v247;
          (*v243)(v229, v247);
          sub_1B4975024(v143, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        }

        v153 = 0;
      }

      v147(v69, v153, 1, v39);
    }

    if (v71(v69, 1, v39) == 1)
    {
      sub_1B4975024(v241, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
      sub_1B4975024(v69, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    }

    else
    {
      v154 = v228;
      v235(v228, v69, v39);
      v155 = v154;
      v156 = *(v223 + 48);
      v157 = v227;
      v158 = v227 + *(v223 + 64);
      v202(v227, v155, v39);
      *(v157 + v156) = v146;
      v159 = v252;
      *v158 = v252;
      *(v158 + 8) = 0;
      if (!v68)
      {
        goto LABEL_113;
      }

      v160 = v226;
      v161 = v257;
      sub_1B4B8DB74(v238, v237, v68, v256, v253, v159, v222, v226);
      if (v161)
      {

        sub_1B4975024(v227, &qword_1EB8AB7D0, &qword_1B4D35948);
        v175 = *v243;
        v39 = v247;
        (*v243)(v228, v247);
        sub_1B4975024(v241, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
        v175(v246, v39);
        v70 = v161;
        v69 = 0;
        goto LABEL_64;
      }

      v257 = 0;
      v69 = v221;
      sub_1B4974FBC(v160, v221, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      v39 = v247;
      if (v71(v69, 1, v247) == 1)
      {
        sub_1B4975024(v69, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        v162 = 1;
        v163 = v228;
      }

      else
      {
        v235(v219, v69, v39);
        sub_1B4D1742C();
        v165 = v164;
        sub_1B4D1742C();
        v167 = v165 / v166;
        if ((*&v167 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_120;
        }

        if (v167 <= -9.22337204e18)
        {
          goto LABEL_121;
        }

        v163 = v228;
        if (v167 >= 9.22337204e18)
        {
          goto LABEL_122;
        }

        if (v167 <= 0)
        {
          v39 = v247;
          (*v243)(v219, v247);
          v162 = 1;
        }

        else
        {
          v168 = v241;
          if (*(v241 + *(v218 + 28)))
          {
            v39 = v247;
            (*v243)(v219, v247);
            v202(v233, v168, v39);
          }

          else
          {
            sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
            sub_1B4D173FC();
            v39 = v247;
            (*v243)(v219, v247);
          }

          v162 = 0;
        }
      }

      v169 = v233;
      v147(v233, v162, 1, v39);
      v170 = v169;
      v171 = v220;
      sub_1B4974FBC(v170, v220, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      if (v71(v171, 1, v39) == 1)
      {

        sub_1B4975024(v171, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        v185 = v227;
        v186 = v207;
        sub_1B4974FBC(v227, v207, &qword_1EB8AB7D0, &qword_1B4D35948);
        v187 = v186 + *(v223 + 64);
        v188 = *v187;
        v189 = *(v187 + 8);
        LOBYTE(v258) = *(v186 + *(v223 + 48));
        v206(v186, &v258, v188, v189);

        sub_1B4975024(v233, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        sub_1B4975024(v226, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        sub_1B4975024(v185, &qword_1EB8AB7D0, &qword_1B4D35948);
        v190 = *v243;
        (*v243)(v163, v39);
        sub_1B4975024(v241, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
        v190(v246, v39);
        return (v190)(v186, v39);
      }

      v172 = v217;
      v235(v217, v171, v39);
      sub_1B4B9474C(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10);
      v173 = v163;
      if (sub_1B4D180EC())
      {

        v191 = v227;
        v192 = v207;
        sub_1B4974FBC(v227, v207, &qword_1EB8AB7D0, &qword_1B4D35948);
        v193 = v192 + *(v223 + 64);
        v194 = *v193;
        v195 = *(v193 + 8);
        LOBYTE(v258) = *(v192 + *(v223 + 48));
        v206(v192, &v258, v194, v195);

        v196 = *v243;
        (*v243)(v172, v39);
        sub_1B4975024(v233, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        sub_1B4975024(v226, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        sub_1B4975024(v191, &qword_1EB8AB7D0, &qword_1B4D35948);
        v196(v173, v39);
        sub_1B4975024(v241, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
        v196(v246, v39);
        return (v196)(v192, v39);
      }

      v174 = *v243;
      (*v243)(v172, v39);
      sub_1B4975024(v233, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B4975024(v226, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B4975024(v227, &qword_1EB8AB7D0, &qword_1B4D35948);
      v174(v163, v39);
      sub_1B4975024(v241, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
      v143 = v232;
      v71 = v201;
    }

    v141 = v203 + 1;
    v142 = v241;
    v69 = v257;
    v140 = v199;
    if (v198 == v203 + 1)
    {
      goto LABEL_109;
    }
  }

  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:

  __break(1u);
  return result;
}

uint64_t sub_1B4B8B05C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, void *a10, void (*a11)(uint64_t, void **, uint64_t, uint64_t), uint64_t a12)
{
  v212 = a8;
  v218 = a7;
  v247 = a6;
  v211 = a5;
  v210 = a4;
  v248 = a3;
  v251 = a1;
  v235 = a9;
  v200 = a12;
  v201 = a11;
  v249 = a10;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7B8, &qword_1B4D35940);
  MEMORY[0x1EEE9AC00](v219);
  v202 = &v193 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v223 = (&v193 - v15);
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7C0, &unk_1B4D47180);
  v229 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v238 = &v193 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v209 = &v193 - v18;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v19 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v206 = &v193 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v216 = &v193 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v217 = (&v193 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v227 = (&v193 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v222 = &v193 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v228 = &v193 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&v193 - v32);
  MEMORY[0x1EEE9AC00](v34);
  v226 = &v193 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v208 = &v193 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v250 = &v193 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  MEMORY[0x1EEE9AC00](v40);
  v213 = &v193 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v215 = &v193 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v225 = &v193 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v224 = &v193 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v221 = &v193 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v242 = &v193 - v52;
  v53 = a2 + 64;
  v54 = 1 << *(a2 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & *(a2 + 64);
  v57 = (v54 + 63) >> 6;
  v244 = (v51 + 48);
  v240 = (v51 + 32);
  v207 = (v19 + 48);
  v205 = (v19 + 32);
  v204 = (v19 + 8);
  v239 = (v51 + 8);
  v232 = (v51 + 16);
  v236 = (v51 + 56);
  v252 = a2;

  v58 = 0;
  v253 = 0;
  *&v59 = 136315138;
  v241 = v59;
  v243 = v40;
  v231 = v33;
  v245 = v57;
  v246 = a2 + 64;
  if (!v56)
  {
LABEL_5:
    v61 = v250;
    while (1)
    {
      v62 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        break;
      }

      if (v62 >= v57)
      {

        v172 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact(0);
        return (*(*(v172 - 8) + 56))(v235, 1, 1, v172);
      }

      v56 = *(v53 + 8 * v62);
      ++v58;
      if (v56)
      {
        v60 = v40;
        v58 = v62;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_109:

    v174 = v223;
    v175 = v202;
    sub_1B4974FBC(v223, v202, &qword_1EB8AB7B8, &qword_1B4D35940);
    v176 = v175 + *(v219 + 64);
    v177 = *v176;
    v178 = *(v176 + 8);
    LOBYTE(v254) = *(v175 + *(v219 + 48));
    v201(v175, &v254, v177, v178);

    sub_1B4975024(v174, &qword_1EB8AB7B8, &qword_1B4D35940);
    v179 = *v239;
    v180 = v243;
    (*v239)(v224, v243);
    sub_1B4975024(v238, &qword_1EB8AB7C0, &unk_1B4D47180);
    v179(v242, v180);
    return (v179)(v175, v180);
  }

  while (1)
  {
    v60 = v40;
    v61 = v250;
LABEL_10:
    v63 = __clz(__rbit64(v56));
    v56 &= v56 - 1;
    v64 = v63 | (v58 << 6);
    v65 = *(*(v252 + 48) + v64);
    v66 = *(v252 + 56) + 24 * v64;
    v67 = *v66;
    v68 = *(v66 + 8);
    v69 = *(v66 + 16);

    v70 = v253;
    sub_1B4B8F29C(v67, v68, v69, v251, v249, v248, v247, v61);
    if (v70)
    {

      v71 = v70;
      v70 = 0;
      v40 = v60;
LABEL_60:
      if (qword_1EDC3CEC8 != -1)
      {
        swift_once();
      }

      v253 = v70;
      v123 = sub_1B4D17F6C();
      __swift_project_value_buffer(v123, qword_1EDC3CED0);
      v124 = v71;
      v125 = sub_1B4D17F5C();
      v126 = sub_1B4D1873C();

      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v254 = v128;
        *v127 = v241;
        ErrorValue = swift_getErrorValue();
        v130 = MEMORY[0x1EEE9AC00](ErrorValue);
        (*(v132 + 16))(&v193 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0), v130);
        v133 = sub_1B4D181AC();
        v135 = sub_1B49558AC(v133, v134, &v254);

        *(v127 + 4) = v135;
        _os_log_impl(&dword_1B4953000, v125, v126, "MilestoneFactComponents not created with error %s", v127, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v128);
        v136 = v128;
        v40 = v243;
        MEMORY[0x1B8C7DDA0](v136, -1, -1);
        MEMORY[0x1B8C7DDA0](v127, -1, -1);
      }

      else
      {
      }

      goto LABEL_65;
    }

    v233 = v68;
    v234 = v67;
    v237 = v65;
    v72 = *v244;
    v40 = v60;
    if ((*v244)(v61, 1, v60) != 1)
    {
      break;
    }

    v253 = 0;

    sub_1B4975024(v61, &qword_1EB8A6CC0, &unk_1B4D1BC00);
LABEL_65:
    v57 = v245;
    v53 = v246;
    if (!v56)
    {
      goto LABEL_5;
    }
  }

  v230 = *v240;
  v230(v242, v61, v60);
  if (v251 > 1u)
  {
    if (v251 == 2)
    {
      v253 = 0;
      v78 = v209;
      sub_1B4974FBC(v211, v209, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      v79 = v220;
      if ((*v207)(v78, 1, v220) == 1)
      {

        sub_1B4975024(v78, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        LOBYTE(v254) = 0;
        sub_1B4B9462C();
        swift_willThrowTypedImpl();
        v80 = 0;
        v70 = v253;
LABEL_59:
        sub_1B4B9462C();
        v71 = swift_allocError();
        *v122 = v80;
        (*v239)(v242, v40);
        goto LABEL_60;
      }

      (*v205)(v206, v78, v79);
      v96 = sub_1B4BFA890(v212 & 1);
      if (!*(v96 + 16) || (v97 = sub_1B49EA3C0(v237), (v98 & 1) == 0))
      {

        (*v204)(v206, v220);
        v70 = v253;
LABEL_58:
        LOBYTE(v254) = 0;
        sub_1B4B9462C();
        swift_willThrowTypedImpl();
        v80 = 0;
        goto LABEL_59;
      }

      v99 = *(*(v96 + 56) + 8 * v97);

      v100 = *(v99 + 16);
      v254 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF27C(0, v100, 0);
      v92 = v254;
      v70 = v253;
      if (!*(v99 + 16))
      {

        (*v204)(v206, v220);
        goto LABEL_70;
      }

      v101 = *(v99 + 16);

      if (!v101)
      {
        goto LABEL_119;
      }

      (*v204)(v206, v220);
LABEL_55:
    }

    else
    {
      v82 = [v249 userDistanceElevationUnit];
      v83 = objc_opt_self();
      v84 = &selRef_miles;
      if ((v82 - 1) <= 4)
      {
        v84 = off_1E7C11890[(v82 - 1)];
      }

      v85 = [v83 *v84];
      v86 = sub_1B4BFB398(v85);
      if (v86[2])
      {
        v87 = sub_1B49EF0C0();
        if (v88)
        {
          v89 = *(v86[7] + 8 * v87);

          if (*(v89 + 16))
          {
            v90 = sub_1B49EA3C0(v237);
            if (v91)
            {
              v92 = *(*(v89 + 56) + 8 * v90);

LABEL_67:

LABEL_70:
              v40 = v243;
              goto LABEL_71;
            }
          }
        }
      }

LABEL_56:
    }

    v40 = v243;
    goto LABEL_58;
  }

  if (!v251)
  {
    v73 = [v249 userActiveEnergyBurnedUnit];
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    v74 = objc_opt_self();
    v75 = [v74 kilocalorieUnit];
    v76 = sub_1B4D187AC();

    if (v76)
    {
      v77 = [objc_opt_self() kilocalories];
    }

    else
    {
      v93 = [v74 largeCalorieUnit];
      v94 = sub_1B4D187AC();

      if (v94)
      {
        v95 = v237;
        if (qword_1EDC36DF0 != -1)
        {
          swift_once();
        }

        v85 = qword_1EDC36DF8;
LABEL_51:

        v117 = sub_1B4BFAE5C(v85);
        if (!*(v117 + 16))
        {
          goto LABEL_56;
        }

        v118 = sub_1B49EA3C0(v95);
        if ((v119 & 1) == 0)
        {
          goto LABEL_56;
        }

        v120 = *(*(v117 + 56) + 8 * v118);

        v121 = *(v120 + 16);
        v254 = MEMORY[0x1E69E7CC0];
        sub_1B4BCF27C(0, v121, 0);
        v92 = v254;
        if (v121)
        {

          goto LABEL_55;
        }

        goto LABEL_67;
      }

      v77 = [objc_opt_self() kilojoules];
    }

    v85 = v77;
    v95 = v237;
    goto LABEL_51;
  }

  v253 = 0;
  v81 = v208;
  sub_1B4974FBC(v210, v208, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (v72(v81, 1, v60) == 1)
  {

    sub_1B4975024(v81, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    v80 = 1;
    LOBYTE(v254) = 1;
    sub_1B4B9462C();
    swift_willThrowTypedImpl();
    v70 = v253;
    goto LABEL_59;
  }

  v230(v221, v81, v60);
  v102 = objc_allocWithZone(MEMORY[0x1E699C9F0]);
  v103 = [v102 initWithActivityTypeIdentifier:v248 isIndoor:0];
  v104 = [v249 userDistanceHKUnitForActivityType_];
  sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
  v105 = [objc_opt_self() mileUnit];
  v106 = sub_1B4D187AC();

  v107 = objc_opt_self();
  v108 = &selRef_miles;
  if ((v106 & 1) == 0)
  {
    v108 = &selRef_kilometers;
  }

  v109 = [v107 *v108];

  v110 = sub_1B4BF9640(v109, v212 & 1);
  if (!v110[2] || (v111 = sub_1B49EF0C0(), (v112 & 1) == 0))
  {
    v70 = v253;
LABEL_68:

    v40 = v243;
    (*v239)(v221, v243);
    goto LABEL_58;
  }

  v113 = *(v110[7] + 8 * v111);

  v70 = v253;
  if (!*(v113 + 16))
  {
    goto LABEL_68;
  }

  v114 = sub_1B49EA3C0(v237);
  if ((v115 & 1) == 0)
  {
    goto LABEL_68;
  }

  v116 = *(*(v113 + 56) + 8 * v114);

  v92 = v116;
  v40 = v243;
  (*v239)(v221, v243);

LABEL_71:
  v137 = v228;
  v254 = v92;

  sub_1B4B90AAC(&v254, &qword_1EB8AB7C0, &unk_1B4D47180, sub_1B4CDE2AC, sub_1B4B90CF8);
  if (v70)
  {
    goto LABEL_120;
  }

  v138 = v254;
  v194 = v254[2];
  if (!v194)
  {
LABEL_105:
    v253 = v70;
    (*v239)(v242, v40);

    goto LABEL_65;
  }

  v139 = 0;
  v196 = v254 + ((*(v229 + 80) + 32) & ~*(v229 + 80));
  v140 = v238;
  v197 = v72;
  v195 = v254;
  while (v139 < *(v138 + 16))
  {
    v253 = v70;
    v141 = *(v229 + 72);
    v199 = v139;
    v70 = &qword_1EB8A6CC0;
    sub_1B4974FBC(&v196[v141 * v139], v140, &qword_1EB8AB7C0, &unk_1B4D47180);
    v142 = v72;
    v143 = v231;
    v198 = *v232;
    v198(v231, v242, v40);
    v203 = *v236;
    v203(v143, 0, 1, v40);
    sub_1B4974FBC(v143, v137, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    if (v142(v137, 1, v40) == 1)
    {
      sub_1B4975024(v143, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      sub_1B4975024(v137, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      v144 = 1;
      v145 = v226;
      v72 = v197;
    }

    else
    {
      v230(v225, v137, v40);
      sub_1B4D1742C();
      v147 = v146;
      sub_1B4D1742C();
      v149 = v147 / v148;
      if ((*&v149 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_113;
      }

      v70 = v231;
      v145 = v226;
      v72 = v197;
      if (v149 <= -9.22337204e18)
      {
        goto LABEL_114;
      }

      v137 = v228;
      if (v149 >= 9.22337204e18)
      {
        goto LABEL_115;
      }

      if (v149 <= 0)
      {
        v40 = v243;
        (*v239)(v225, v243);
        sub_1B4975024(v70, &qword_1EB8A6CC0, &unk_1B4D1BC00);
        v144 = 1;
      }

      else
      {
        v150 = v238;
        if (*(v238 + *(v214 + 28)))
        {
          v40 = v243;
          (*v239)(v225, v243);
          sub_1B4975024(v70, &qword_1EB8A6CC0, &unk_1B4D1BC00);
          v198(v145, v150, v40);
        }

        else
        {
          sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
          sub_1B4D173FC();
          v40 = v243;
          (*v239)(v225, v243);
          sub_1B4975024(v70, &qword_1EB8A6CC0, &unk_1B4D1BC00);
        }

        v144 = 0;
      }
    }

    v203(v145, v144, 1, v40);
    if (v72(v145, 1, v40) == 1)
    {
      sub_1B4975024(v238, &qword_1EB8AB7C0, &unk_1B4D47180);
      sub_1B4975024(v145, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      v70 = v253;
    }

    else
    {
      v151 = v224;
      v230(v224, v145, v40);
      v152 = v151;
      v153 = *(v219 + 48);
      v154 = v223;
      v155 = v223 + *(v219 + 64);
      v198(v223, v152, v40);
      *(v154 + v153) = v237;
      v156 = v248;
      *v155 = v248;
      *(v155 + 8) = 0;
      if (!v69)
      {
        goto LABEL_109;
      }

      v157 = v222;
      v158 = v253;
      sub_1B4B8F29C(v234, v233, v69, v251, v249, v156, v218, v222);
      if (v158)
      {

        sub_1B4975024(v223, &qword_1EB8AB7B8, &qword_1B4D35940);
        v171 = *v239;
        v40 = v243;
        (*v239)(v224, v243);
        sub_1B4975024(v238, &qword_1EB8AB7C0, &unk_1B4D47180);
        v171(v242, v40);
        v71 = v158;
        v70 = 0;
        goto LABEL_60;
      }

      v253 = 0;
      v70 = v217;
      sub_1B4974FBC(v157, v217, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      v40 = v243;
      if (v72(v70, 1, v243) == 1)
      {
        sub_1B4975024(v70, &qword_1EB8A6CC0, &unk_1B4D1BC00);
        v159 = 1;
        v160 = v224;
      }

      else
      {
        v230(v215, v70, v40);
        sub_1B4D1742C();
        v162 = v161;
        sub_1B4D1742C();
        v164 = v162 / v163;
        if ((*&v164 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_116;
        }

        if (v164 <= -9.22337204e18)
        {
          goto LABEL_117;
        }

        v160 = v224;
        if (v164 >= 9.22337204e18)
        {
          goto LABEL_118;
        }

        if (v164 <= 0)
        {
          v40 = v243;
          (*v239)(v215, v243);
          v159 = 1;
        }

        else
        {
          v165 = v238;
          if (*(v238 + *(v214 + 28)))
          {
            v40 = v243;
            (*v239)(v215, v243);
            v198(v227, v165, v40);
          }

          else
          {
            sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
            sub_1B4D173FC();
            v40 = v243;
            (*v239)(v215, v243);
          }

          v159 = 0;
        }
      }

      v166 = v227;
      v203(v227, v159, 1, v40);
      v167 = v166;
      v168 = v216;
      sub_1B4974FBC(v167, v216, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      if (v72(v168, 1, v40) == 1)
      {

        sub_1B4975024(v168, &qword_1EB8A6CC0, &unk_1B4D1BC00);
        v181 = v223;
        v182 = v202;
        sub_1B4974FBC(v223, v202, &qword_1EB8AB7B8, &qword_1B4D35940);
        v183 = v182 + *(v219 + 64);
        v184 = *v183;
        v185 = *(v183 + 8);
        LOBYTE(v254) = *(v182 + *(v219 + 48));
        v201(v182, &v254, v184, v185);

        sub_1B4975024(v227, &qword_1EB8A6CC0, &unk_1B4D1BC00);
        sub_1B4975024(v222, &qword_1EB8A6CC0, &unk_1B4D1BC00);
        sub_1B4975024(v181, &qword_1EB8AB7B8, &qword_1B4D35940);
        v186 = *v239;
        (*v239)(v160, v40);
        sub_1B4975024(v238, &qword_1EB8AB7C0, &unk_1B4D47180);
        v186(v242, v40);
        return (v186)(v182, v40);
      }

      v169 = v213;
      v230(v213, v168, v40);
      sub_1B4B9474C(&qword_1EDC37878, &qword_1EB8A6830, &unk_1B4D1AB40);
      if (sub_1B4D180EC())
      {

        v187 = v223;
        v188 = v202;
        sub_1B4974FBC(v223, v202, &qword_1EB8AB7B8, &qword_1B4D35940);
        v189 = v188 + *(v219 + 64);
        v190 = *v189;
        v191 = *(v189 + 8);
        LOBYTE(v254) = *(v188 + *(v219 + 48));
        v201(v188, &v254, v190, v191);

        v192 = *v239;
        (*v239)(v169, v40);
        sub_1B4975024(v227, &qword_1EB8A6CC0, &unk_1B4D1BC00);
        sub_1B4975024(v222, &qword_1EB8A6CC0, &unk_1B4D1BC00);
        sub_1B4975024(v187, &qword_1EB8AB7B8, &qword_1B4D35940);
        v192(v160, v40);
        sub_1B4975024(v238, &qword_1EB8AB7C0, &unk_1B4D47180);
        v192(v242, v40);
        return (v192)(v188, v40);
      }

      v170 = *v239;
      (*v239)(v169, v40);
      sub_1B4975024(v227, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      sub_1B4975024(v222, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      sub_1B4975024(v223, &qword_1EB8AB7B8, &qword_1B4D35940);
      v170(v160, v40);
      sub_1B4975024(v238, &qword_1EB8AB7C0, &unk_1B4D47180);
      v137 = v228;
      v70 = v253;
      v72 = v197;
    }

    v139 = v199 + 1;
    v140 = v238;
    v138 = v195;
    if (v194 == v199 + 1)
    {
      goto LABEL_105;
    }
  }

  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:

  __break(1u);
  return result;
}

unint64_t static WorkoutVoiceMilestoneWorkoutDistanceFact.queries(workoutVoiceWorkoutState:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4B928C0(v3, v1, v2);
}

uint64_t static WorkoutVoiceMilestoneWorkoutDistanceFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49AA274;

  return sub_1B4B933AC(a1, a2, a3, a4);
}

uint64_t WorkoutVoiceMilestoneWorkoutDistanceFact.QueryIdentifier.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  v6 = 4;
  if (v4 < 4)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t WorkoutVoiceMilestoneWorkoutDistanceFact.QueryIdentifier.rawValue.getter()
{
  v1 = 0x6665725072657375;
  v2 = 0xD000000000000019;
  if (*v0 == 2)
  {
    v2 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000016;
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

uint64_t sub_1B4B8D224()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B8D300(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4B8D3C8(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4B8D4AC(unint64_t *a1@<X8>)
{
  v2 = 0xEF7365636E657265;
  v3 = 0x6665725072657375;
  v4 = 0x80000001B4D4AAF0;
  v5 = 0xD000000000000019;
  if (*v1 == 2)
  {
    v5 = 0xD00000000000001DLL;
  }

  else
  {
    v4 = 0x80000001B4D4AB10;
  }

  if (*v1)
  {
    v3 = 0xD000000000000016;
    v2 = 0x80000001B4D4BF20;
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

int *sub_1B4B8D544@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, _BYTE *a5@<X8>)
{
  v9 = *a2;
  v10 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact(0);
  v11 = v10[5];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  (*(*(v12 - 8) + 16))(&a5[v11], a1, v12);
  result = type metadata accessor for WorkoutState(0);
  if (__OFADD__(a4, 1))
  {
    __break(1u);
  }

  else
  {
    v14 = *(a3 + result[6]);
    *a5 = 1;
    a5[v10[6]] = v9;
    *&a5[v10[7]] = v14;
    *&a5[v10[8]] = a4 + 1;
    (*(*(v10 - 1) + 56))(a5, 0, 1, v10);

    return v14;
  }

  return result;
}

id WorkoutVoiceMilestoneWorkoutDistanceFact.makePrompt(promptFormatter:)()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact(0);
  v3 = *(v0 + v2[7]);
  v4 = sub_1B4D133E8(v0 + v2[5], v3, 0, 1);
  v6 = v5;
  [v3 effectiveTypeIdentifier];
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v8 = result;
    v9 = 0x7961642073696874;
    v10 = sub_1B4D1818C();
    v12 = v11;

    sub_1B4D1896C();

    strcpy(v23, "I passed the ");
    HIWORD(v23[1]) = -4864;
    MEMORY[0x1B8C7C620](v4, v6);

    MEMORY[0x1B8C7C620](0x6F66206B72616D20, 0xEA00000000002072);
    MEMORY[0x1B8C7C620](v10, v12);
    MEMORY[0x1B8C7C620](0x74756F6B726F7720, 0xEA00000000002073);
    v13 = v2[6];
    v14 = *(v1 + v13);
    if (v14 <= 1)
    {
      if (*(v1 + v13))
      {
        v15 = 0x6565772073696874;
        v16 = 0xE90000000000006BLL;
      }

      else
      {
        v16 = 0xE800000000000000;
        v15 = 0x7961642073696874;
      }
    }

    else if (v14 == 2)
    {
      v15 = 0x6E6F6D2073696874;
      v16 = 0xEA00000000006874;
    }

    else if (v14 == 3)
    {
      v15 = 0x6165792073696874;
      v16 = 0xE900000000000072;
    }

    else
    {
      v16 = 0xE400000000000000;
      v15 = 1919252069;
    }

    MEMORY[0x1B8C7C620](v15, v16);

    MEMORY[0x1B8C7C620](46, 0xE100000000000000);
    sub_1B4D1896C();

    v17 = *(v1 + v2[8]);
    v18 = sub_1B4D18D5C();
    MEMORY[0x1B8C7C620](v18);

    MEMORY[0x1B8C7C620](32, 0xE100000000000000);
    MEMORY[0x1B8C7C620](v10, v12);

    v19 = 0xE800000000000000;
    MEMORY[0x1B8C7C620](0x74756F6B726F7720, 0xE800000000000000);
    if (v17 <= 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = 115;
    }

    if (v17 <= 1)
    {
      v21 = 0xE000000000000000;
    }

    else
    {
      v21 = 0xE100000000000000;
    }

    MEMORY[0x1B8C7C620](v20, v21);

    MEMORY[0x1B8C7C620](32, 0xE100000000000000);
    v22 = *(v1 + v13);
    if (v22 <= 1)
    {
      if (*(v1 + v13))
      {
        v9 = 0x6565772073696874;
        v19 = 0xE90000000000006BLL;
      }
    }

    else if (v22 == 2)
    {
      v9 = 0x6E6F6D2073696874;
      v19 = 0xEA00000000006874;
    }

    else if (v22 == 3)
    {
      v9 = 0x6165792073696874;
      v19 = 0xE900000000000072;
    }

    else
    {
      v19 = 0xE400000000000000;
      v9 = 1919252069;
    }

    MEMORY[0x1B8C7C620](v9, v19);

    MEMORY[0x1B8C7C620](0xD000000000000019, 0x80000001B4D591D0);

    return v23[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B4B8DA64(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4B928C0(v3, v1, v2);
}

uint64_t sub_1B4B8DAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49DD034;

  return sub_1B4B933AC(a1, a2, a3, a4);
}

uint64_t sub_1B4B8DB74@<X0>(void (*a1)(char *, uint64_t, uint64_t, uint64_t)@<X0>, char *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v205 = a7;
  v206 = a6;
  v200 = a5;
  LODWORD(v209) = a4;
  v210 = a1;
  v211 = a2;
  v208 = a8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v189 = &v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v188 = &v176 - v12;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v204 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v194 = &v176 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v193 = &v176 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v196 = &v176 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v191 = &v176 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v182 = &v176 - v21;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v199 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v187 = &v176 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v185 = &v176 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v192 = &v176 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v186 = &v176 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v183 = &v176 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v184 = &v176 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v181 = &v176 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v180 = &v176 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v179 = &v176 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v177 = &v176 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v178 = &v176 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v198 = &v176 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v195 = &v176 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7978, &unk_1B4D1F2F0);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v50 = &v176 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v176 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v203 = &v176 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v202 = &v176 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7970, &unk_1B4D1F2E0);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v60 = &v176 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v201 = &v176 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7530, &unk_1B4D40250);
  MEMORY[0x1EEE9AC00](v63 - 8);
  v65 = &v176 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1EEE9AC00](v66);
  if (!a3)
  {
    return (*(v36 + 56))(v208, 1, 1, v35, v68);
  }

  v176 = v36;
  v197 = v35;
  if (v209 > 1u)
  {
    v85 = v207;
    if (v209 == 2)
    {
      memset(v212, 0, sizeof(v212));
      v86 = v216;
      v87 = &v176 - v67;
      result = sub_1B4CE5168(v212, a3, &v176 - v67);
      v216 = v86;
      v88 = v197;
      if (!v86)
      {
        v211 = v87;
        sub_1B4974FBC(v87, v65, &qword_1EB8A7530, &unk_1B4D40250);
        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
        if ((*(*(v89 - 8) + 48))(v65, 1, v89) == 1)
        {
          sub_1B4975024(v65, &qword_1EB8A7530, &unk_1B4D40250);
          v90 = v176;
          v91 = *(v176 + 56);
          v92 = v181;
          v91(v181, 1, 1, v88);
          v93 = [objc_opt_self() seconds];
          sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
          v94 = v195;
          sub_1B4D1741C();
          if ((*(v90 + 48))(v92, 1, v88) != 1)
          {
            sub_1B4975024(v92, &qword_1EB8A6C90, &unk_1B4D1BBD0);
          }

          v95 = v176;
        }

        else
        {
          v95 = v176;
          v129 = v181;
          (*(v176 + 16))(v181, v65, v88);
          sub_1B4975024(v65, &qword_1EB8A6858, &qword_1B4D1AB70);
          v91 = *(v95 + 56);
          v91(v129, 0, 1, v88);
          v94 = v195;
          (*(v95 + 32))(v195, v129, v88);
        }

        v130 = objc_opt_self();
        v131 = [v130 seconds];
        sub_1B4D1745C();

        v132 = v184;
        sub_1B4974FBC(v205, v184, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        if ((*(v95 + 48))(v132, 1, v88) == 1)
        {
          (*(v95 + 8))(v94, v88);
          sub_1B4975024(v211, &qword_1EB8A7530, &unk_1B4D40250);
          sub_1B4975024(v132, &qword_1EB8A6C90, &unk_1B4D1BBD0);
          v133 = v208;
          (*(v95 + 32))(v208, v198, v88);
          return (v91)(v133, 0, 1, v88);
        }

        else
        {
          v209 = *(v95 + 32);
          v210 = v91;
          v165 = v177;
          v166 = v132;
          v167 = v209;
          v209(v177, v166, v88);
          v168 = v178;
          v167(v178, v165, v88);
          v169 = [v130 seconds];
          v170 = v179;
          sub_1B4D1745C();

          sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
          v171 = v180;
          v172 = v198;
          sub_1B4D1743C();
          v173 = *(v95 + 8);
          v173(v170, v88);
          v173(v168, v88);
          v173(v172, v88);
          v173(v195, v88);
          sub_1B4975024(v211, &qword_1EB8A7530, &unk_1B4D40250);
          v174 = v208;
          v209(v208, v171, v88);
          return (v210)(v174, 0, 1, v88);
        }
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B4D1A800;
      *(inited + 32) = v206;
      v214[0] = MEMORY[0x1E69E7CC0];
      v214[1] = MEMORY[0x1E69E7CC0];
      v214[2] = MEMORY[0x1E69E7CC0];
      v214[3] = inited;
      v214[4] = MEMORY[0x1E69E7CC0];
      v214[5] = MEMORY[0x1E69E7CC0];
      v101 = v202;
      v102 = v216;
      sub_1B4CE68B0(v214, a3, v202);

      result = swift_bridgeObjectRelease_n();
      v103 = v197;
      if (!v102)
      {
        v216 = 0;
        sub_1B4974FBC(v101, v53, &qword_1EB8A7978, &unk_1B4D1F2F0);
        v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
        if ((*(*(v104 - 8) + 48))(v53, 1, v104) == 1)
        {
          sub_1B4975024(v53, &qword_1EB8A7978, &unk_1B4D1F2F0);
          v105 = v204;
          v106 = v188;
          (*(v204 + 56))(v188, 1, 1, v85);
          v107 = [objc_opt_self() meters];
          sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
          v108 = v191;
          sub_1B4D1741C();
          v109 = v105;
          v110 = v108;
          v111 = (*(v109 + 48))(v106, 1, v85);
          v113 = v176;
          v114 = v196;
          if (v111 != 1)
          {
            sub_1B4975024(v106, &qword_1EB8A6CC0, &unk_1B4D1BC00);
          }
        }

        else
        {
          v134 = v204;
          v135 = v188;
          (*(v204 + 16))(v188, v53, v85);
          sub_1B4975024(v53, &qword_1EB8A6840, &unk_1B4D20FA0);
          (*(v134 + 56))(v135, 0, 1, v85);
          v110 = v191;
          (*(v134 + 32))(v191, v135, v85);
          v113 = v176;
          v114 = v196;
        }

        FIUnitManager.userMeasurementUnitForElevation()(v112);
        v137 = v136;
        sub_1B4D1745C();

        v138 = v186;
        sub_1B4974FBC(v205, v186, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        v139 = (*(v113 + 48))(v138, 1, v103);
        v140 = v208;
        if (v139 == 1)
        {
          v141 = v208;
          v142 = v103;
          v143 = v138;
          v144 = *(v204 + 8);
          v144(v110, v85);
          sub_1B4975024(v202, &qword_1EB8A7978, &unk_1B4D1F2F0);
          v145 = &qword_1EB8A6C90;
          v146 = &unk_1B4D1BBD0;
          v147 = v143;
          v103 = v142;
          v140 = v141;
          v114 = v196;
        }

        else
        {
          sub_1B4975024(v138, &qword_1EB8A6C90, &unk_1B4D1BBD0);
          v144 = *(v204 + 8);
          v144(v110, v85);
          v145 = &qword_1EB8A7978;
          v146 = &unk_1B4D1F2F0;
          v147 = v202;
        }

        sub_1B4975024(v147, v145, v146);
        v144(v114, v85);
        return (*(v113 + 56))(v140, 1, 1, v103);
      }
    }
  }

  else if (v209)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
    v96 = swift_initStackObject();
    *(v96 + 16) = xmmword_1B4D1A800;
    v97 = v206;
    *(v96 + 32) = v206;
    v215[0] = MEMORY[0x1E69E7CC0];
    v215[1] = MEMORY[0x1E69E7CC0];
    v215[2] = MEMORY[0x1E69E7CC0];
    v215[3] = v96;
    v215[4] = MEMORY[0x1E69E7CC0];
    v215[5] = MEMORY[0x1E69E7CC0];
    v98 = v203;
    v99 = v216;
    sub_1B4CE458C(v215, a3, v203);
    v216 = v99;
    if (v99)
    {

      return swift_bridgeObjectRelease_n();
    }

    else
    {

      swift_bridgeObjectRelease_n();
      sub_1B4974FBC(v98, v50, &qword_1EB8A7978, &unk_1B4D1F2F0);
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
      if ((*(*(v115 - 8) + 48))(v50, 1, v115) == 1)
      {
        sub_1B4975024(v50, &qword_1EB8A7978, &unk_1B4D1F2F0);
        v116 = v204;
        v117 = v189;
        v118 = v207;
        (*(v204 + 56))(v189, 1, 1, v207);
        v119 = [objc_opt_self() meters];
        sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
        v120 = v193;
        sub_1B4D1741C();
        if ((*(v116 + 48))(v117, 1, v118) != 1)
        {
          sub_1B4975024(v117, &qword_1EB8A6CC0, &unk_1B4D1BC00);
        }
      }

      else
      {
        v148 = v204;
        v149 = v189;
        v118 = v207;
        (*(v204 + 16))(v189, v50, v207);
        sub_1B4975024(v50, &qword_1EB8A6840, &unk_1B4D20FA0);
        (*(v148 + 56))(v149, 0, 1, v118);
        v120 = v193;
        (*(v148 + 32))(v193, v149, v118);
      }

      v150 = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:v97 isIndoor:0];
      v151 = [v200 userDistanceHKUnitForActivityType_];
      sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
      v152 = [objc_opt_self() mileUnit];
      v153 = sub_1B4D187AC();

      v154 = objc_opt_self();
      v155 = &selRef_miles;
      if ((v153 & 1) == 0)
      {
        v155 = &selRef_kilometers;
      }

      v156 = [v154 *v155];

      v157 = v194;
      sub_1B4D1745C();

      v158 = v192;
      sub_1B4974FBC(v205, v192, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      v159 = v176;
      v160 = v197;
      if ((*(v176 + 48))(v158, 1, v197) == 1)
      {
        v161 = *(v204 + 8);
        v161(v120, v118);
        sub_1B4975024(v203, &qword_1EB8A7978, &unk_1B4D1F2F0);
        v162 = &qword_1EB8A6C90;
        v163 = &unk_1B4D1BBD0;
        v164 = v158;
      }

      else
      {
        sub_1B4975024(v158, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        v161 = *(v204 + 8);
        v161(v120, v118);
        v162 = &qword_1EB8A7978;
        v163 = &unk_1B4D1F2F0;
        v164 = v203;
      }

      sub_1B4975024(v164, v162, v163);
      v175 = v208;
      v161(v157, v118);
      return (*(v159 + 56))(v175, 1, 1, v160);
    }
  }

  else
  {
    memset(v213, 0, sizeof(v213));
    v69 = v201;
    v70 = v216;
    result = sub_1B4CE5D0C(v213, a3, v201);
    if (!v70)
    {
      v216 = 0;
      sub_1B4974FBC(v69, v60, &qword_1EB8A7970, &unk_1B4D1F2E0);
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
      if ((*(*(v72 - 8) + 48))(v60, 1, v72) == 1)
      {
        sub_1B4975024(v60, &qword_1EB8A7970, &unk_1B4D1F2E0);
        v73 = v199;
        v74 = v182;
        v75 = v190;
        (*(v199 + 56))(v182, 1, 1, v190);
        v76 = v176;
        v77 = v183;
        if (qword_1EDC36DF0 != -1)
        {
          swift_once();
        }

        v78 = qword_1EDC36DF8;
        sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
        v79 = v78;
        v80 = v185;
        sub_1B4D1741C();
        v81 = (*(v73 + 48))(v74, 1, v75) == 1;
        v83 = v187;
        v84 = v74;
        v69 = v201;
        if (!v81)
        {
          sub_1B4975024(v84, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
        }
      }

      else
      {
        v121 = v199;
        v122 = v182;
        v75 = v190;
        (*(v199 + 16))(v182, v60, v190);
        sub_1B4975024(v60, &qword_1EB8A6D68, &qword_1B4D208D0);
        (*(v121 + 56))(v122, 0, 1, v75);
        v80 = v185;
        (*(v121 + 32))(v185, v122, v75);
        v76 = v176;
        v83 = v187;
        v77 = v183;
      }

      FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v82);
      v124 = v123;
      sub_1B4D1745C();

      sub_1B4974FBC(v205, v77, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      if ((*(v76 + 48))(v77, 1, v197) == 1)
      {
        v125 = *(v199 + 8);
        v125(v80, v75);
        sub_1B4975024(v69, &qword_1EB8A7970, &unk_1B4D1F2E0);
        v126 = &qword_1EB8A6C90;
        v127 = &unk_1B4D1BBD0;
        v128 = v77;
      }

      else
      {
        sub_1B4975024(v77, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        v125 = *(v199 + 8);
        v125(v80, v75);
        v126 = &qword_1EB8A7970;
        v127 = &unk_1B4D1F2E0;
        v128 = v69;
      }

      sub_1B4975024(v128, v126, v127);
      v125(v83, v75);
      return (*(v76 + 56))(v208, 1, 1, v197);
    }
  }

  return result;
}

uint64_t sub_1B4B8F29C@<X0>(void (*a1)(uint64_t, char *, uint64_t)@<X0>, void (*a2)(char *, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v208 = a7;
  v209 = a6;
  v204 = a5;
  v211 = a4;
  v212 = a1;
  v213 = a2;
  v210 = a8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v214 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v179 = &v177 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v180 = &v177 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v196 = &v177 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v200 = &v177 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v203 = &v177 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v197 = &v177 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v177 = &v177 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v178 = &v177 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v195 = &v177 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v199 = &v177 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v188 = &v177 - v30;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v202 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v192 = &v177 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v191 = &v177 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v194 = &v177 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v184 = &v177 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v190 = &v177 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v183 = &v177 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v186 = &v177 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v187 = &v177 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v181 = &v177 - v47;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v201 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v185 = &v177 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v182 = &v177 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7978, &unk_1B4D1F2F0);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v53 = &v177 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v177 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v207 = &v177 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v206 = &v177 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7970, &unk_1B4D1F2E0);
  MEMORY[0x1EEE9AC00](v61 - 8);
  v63 = &v177 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v205 = &v177 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7530, &unk_1B4D40250);
  MEMORY[0x1EEE9AC00](v66 - 8);
  v68 = &v177 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x1EEE9AC00](v69);
  v72 = &v177 - v70;
  if (!a3)
  {
    return (*(v214 + 7))(v210, 1, 1, v9, v71);
  }

  v73 = a3;
  v198 = v9;
  if (v211 <= 1u)
  {
    if (!v211)
    {
      memset(v216, 0, sizeof(v216));
      v74 = v205;
      v75 = v219;
      result = sub_1B4CE5D0C(v216, a3, v205);
      if (!v75)
      {
        v219 = 0;
        sub_1B4974FBC(v74, v63, &qword_1EB8A7970, &unk_1B4D1F2E0);
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
        if ((*(*(v77 - 8) + 48))(v63, 1, v77) == 1)
        {
          sub_1B4975024(v63, &qword_1EB8A7970, &unk_1B4D1F2E0);
          v78 = v202;
          v79 = v188;
          v80 = v193;
          (*(v202 + 56))(v188, 1, 1, v193);
          v81 = v214;
          v82 = v191;
          v83 = v192;
          if (qword_1EDC36DF0 != -1)
          {
            swift_once();
          }

          v84 = qword_1EDC36DF8;
          sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
          v85 = v84;
          sub_1B4D1741C();
          v86 = (*(v78 + 48))(v79, 1, v80) == 1;
          v88 = v79;
          v74 = v205;
          if (!v86)
          {
            sub_1B4975024(v88, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
          }
        }

        else
        {
          v127 = v202;
          v128 = v188;
          v80 = v193;
          (*(v202 + 16))(v188, v63, v193);
          sub_1B4975024(v63, &qword_1EB8A6D68, &qword_1B4D208D0);
          (*(v127 + 56))(v128, 0, 1, v80);
          v82 = v191;
          (*(v127 + 32))(v191, v128, v80);
          v81 = v214;
          v83 = v192;
        }

        FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v87);
        v130 = v129;
        sub_1B4D1745C();

        v131 = v186;
        sub_1B4974FBC(v208, v186, &qword_1EB8A6CC0, &unk_1B4D1BC00);
        if ((*(v81 + 6))(v131, 1, v198) == 1)
        {
          v132 = *(v202 + 8);
          v132(v82, v80);
          sub_1B4975024(v74, &qword_1EB8A7970, &unk_1B4D1F2E0);
          v133 = &qword_1EB8A6CC0;
          v134 = &unk_1B4D1BC00;
          v135 = v131;
        }

        else
        {
          sub_1B4975024(v131, &qword_1EB8A6CC0, &unk_1B4D1BC00);
          v132 = *(v202 + 8);
          v132(v82, v80);
          v133 = &qword_1EB8A7970;
          v134 = &unk_1B4D1F2E0;
          v135 = v74;
        }

        sub_1B4975024(v135, v133, v134);
        v132(v83, v80);
        return (*(v81 + 7))(v210, 1, 1, v198);
      }

      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B4D1A800;
    v102 = v209;
    *(inited + 32) = v209;
    v218[0] = MEMORY[0x1E69E7CC0];
    v218[1] = MEMORY[0x1E69E7CC0];
    v218[2] = MEMORY[0x1E69E7CC0];
    v218[3] = inited;
    v218[4] = MEMORY[0x1E69E7CC0];
    v218[5] = MEMORY[0x1E69E7CC0];
    v103 = v207;
    v104 = v219;
    sub_1B4CE458C(v218, v73, v207);
    v105 = v198;
    if (v104)
    {

      return swift_bridgeObjectRelease_n();
    }

    swift_bridgeObjectRelease_n();
    sub_1B4974FBC(v103, v53, &qword_1EB8A7978, &unk_1B4D1F2F0);
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
    v120 = (*(*(v119 - 8) + 48))(v53, 1, v119);
    v219 = 0;
    if (v120 == 1)
    {
      sub_1B4975024(v53, &qword_1EB8A7978, &unk_1B4D1F2F0);
      v121 = v214;
      v122 = v184;
      v213 = *(v214 + 7);
      v213(v184, 1, 1, v105);
      v123 = [objc_opt_self() meters];
      sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
      v124 = v200;
      sub_1B4D1741C();
      if ((*(v121 + 6))(v122, 1, v105) != 1)
      {
        sub_1B4975024(v122, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      }

      v125 = v214;
      v126 = v196;
      v102 = v209;
    }

    else
    {
      v125 = v214;
      v152 = v184;
      (*(v214 + 2))(v184, v53, v105);
      sub_1B4975024(v53, &qword_1EB8A6840, &unk_1B4D20FA0);
      v213 = *(v125 + 7);
      v213(v152, 0, 1, v105);
      v124 = v200;
      (*(v125 + 4))(v200, v152, v105);
      v126 = v196;
    }

    v153 = v194;
    v214 = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:v102 isIndoor:0];
    v154 = [v204 userDistanceHKUnitForActivityType_];
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    v155 = [objc_opt_self() mileUnit];
    v156 = sub_1B4D187AC();

    v157 = objc_opt_self();
    v158 = &selRef_miles;
    if ((v156 & 1) == 0)
    {
      v158 = &selRef_kilometers;
    }

    v159 = [v157 *v158];

    sub_1B4D1745C();
    sub_1B4974FBC(v208, v153, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    if ((*(v125 + 6))(v153, 1, v105) == 1)
    {

      (*(v125 + 1))(v124, v105);
      sub_1B4975024(v207, &qword_1EB8A7978, &unk_1B4D1F2F0);
      sub_1B4975024(v153, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      v160 = v210;
      (*(v125 + 4))(v210, v126, v105);
    }

    else
    {
      v171 = v126;
      v172 = *(v125 + 4);
      v212 = v172;
      v173 = v179;
      v172(v179, v153, v105);
      v174 = v180;
      v172(v180, v173, v105);
      v175 = v197;
      sub_1B4D1745C();
      sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
      sub_1B4D1743C();

      v176 = *(v125 + 1);
      v176(v175, v105);
      v176(v174, v105);
      v176(v171, v105);
      v176(v200, v105);
      sub_1B4975024(v207, &qword_1EB8A7978, &unk_1B4D1F2F0);
      v160 = v210;
      v212(v210, v203, v105);
    }

    v169 = v160;
    v170 = v105;
    return (v213)(v169, 0, 1, v170);
  }

  if (v211 != 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
    v106 = swift_initStackObject();
    *(v106 + 16) = xmmword_1B4D1A800;
    *(v106 + 32) = v209;
    v217[0] = MEMORY[0x1E69E7CC0];
    v217[1] = MEMORY[0x1E69E7CC0];
    v217[2] = MEMORY[0x1E69E7CC0];
    v217[3] = v106;
    v217[4] = MEMORY[0x1E69E7CC0];
    v217[5] = MEMORY[0x1E69E7CC0];
    v107 = v206;
    v108 = v219;
    sub_1B4CE68B0(v217, a3, v206);

    result = swift_bridgeObjectRelease_n();
    if (v108)
    {
      return result;
    }

    v219 = 0;
    sub_1B4974FBC(v107, v56, &qword_1EB8A7978, &unk_1B4D1F2F0);
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
    if ((*(*(v109 - 8) + 48))(v56, 1, v109) == 1)
    {
      sub_1B4975024(v56, &qword_1EB8A7978, &unk_1B4D1F2F0);
      v110 = v214;
      v111 = v183;
      v112 = v198;
      v213 = *(v214 + 7);
      v213(v183, 1, 1, v198);
      v113 = [objc_opt_self() meters];
      sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
      v114 = v199;
      sub_1B4D1741C();
      v115 = (v110[6])(v111, 1, v112);
      v117 = v195;
      v118 = v190;
      if (v115 != 1)
      {
        sub_1B4975024(v111, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      }
    }

    else
    {
      v146 = v214;
      v147 = v183;
      v112 = v198;
      (*(v214 + 2))(v183, v56, v198);
      v148 = v56;
      v110 = v146;
      sub_1B4975024(v148, &qword_1EB8A6840, &unk_1B4D20FA0);
      v213 = v146[7];
      v213(v147, 0, 1, v112);
      v114 = v199;
      (v146[4])(v199, v147, v112);
      v117 = v195;
      v118 = v190;
    }

    FIUnitManager.userMeasurementUnitForElevation()(v116);
    v150 = v149;
    sub_1B4D1745C();
    sub_1B4974FBC(v208, v118, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    if ((v110[6])(v118, 1, v112) == 1)
    {

      (v110[1])(v114, v112);
      sub_1B4975024(v206, &qword_1EB8A7978, &unk_1B4D1F2F0);
      sub_1B4975024(v118, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      v151 = v210;
      (v110[4])(v210, v117, v112);
    }

    else
    {
      v162 = v110[4];
      v163 = v177;
      (v162)(v177, v118, v112);
      v164 = v162;
      v214 = v162;
      v165 = v178;
      (v164)(v178, v163, v112);
      v166 = v117;
      v167 = v197;
      sub_1B4D1745C();
      sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
      sub_1B4D1743C();

      v168 = v110[1];
      (v168)(v167, v112);
      (v168)(v165, v112);
      (v168)(v166, v112);
      (v168)(v199, v112);
      sub_1B4975024(v206, &qword_1EB8A7978, &unk_1B4D1F2F0);
      v151 = v210;
      (v214)(v210, v203, v112);
    }

    v169 = v151;
    v170 = v112;
    return (v213)(v169, 0, 1, v170);
  }

  memset(v215, 0, sizeof(v215));
  v89 = v219;
  result = sub_1B4CE5168(v215, a3, &v177 - v70);
  if (!v89)
  {
    v219 = 0;
    sub_1B4974FBC(v72, v68, &qword_1EB8A7530, &unk_1B4D40250);
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
    if ((*(*(v90 - 8) + 48))(v68, 1, v90) == 1)
    {
      sub_1B4975024(v68, &qword_1EB8A7530, &unk_1B4D40250);
      v91 = v201;
      v92 = v181;
      v93 = v189;
      (*(v201 + 56))(v181, 1, 1, v189);
      v94 = [objc_opt_self() seconds];
      sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
      v95 = v182;
      sub_1B4D1741C();
      v96 = v91;
      v97 = v92;
      v98 = (*(v96 + 48))(v92, 1, v93);
      v99 = v198;
      v100 = v214;
      if (v98 != 1)
      {
        sub_1B4975024(v97, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      }
    }

    else
    {
      v136 = v201;
      v137 = v181;
      v93 = v189;
      (*(v201 + 16))(v181, v68, v189);
      sub_1B4975024(v68, &qword_1EB8A6858, &qword_1B4D1AB70);
      (*(v136 + 56))(v137, 0, 1, v93);
      v138 = *(v136 + 32);
      v95 = v182;
      v138(v182, v137, v93);
      v99 = v198;
      v100 = v214;
    }

    v139 = [objc_opt_self() seconds];
    v140 = v185;
    sub_1B4D1745C();

    v141 = v187;
    sub_1B4974FBC(v208, v187, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    if ((*(v100 + 6))(v141, 1, v99) == 1)
    {
      v142 = *(v201 + 8);
      v142(v95, v93);
      sub_1B4975024(v72, &qword_1EB8A7530, &unk_1B4D40250);
      v143 = &qword_1EB8A6CC0;
      v144 = &unk_1B4D1BC00;
      v145 = v141;
    }

    else
    {
      sub_1B4975024(v141, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      v142 = *(v201 + 8);
      v142(v95, v93);
      v143 = &qword_1EB8A7530;
      v144 = &unk_1B4D40250;
      v145 = v72;
    }

    sub_1B4975024(v145, v143, v144);
    v161 = v210;
    v142(v140, v93);
    return (*(v100 + 7))(v161, 1, 1, v198);
  }

  return result;
}

uint64_t sub_1B4B90AAC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void *))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = a4(v9);
  }

  v10 = *(v9 + 16);
  v12[0] = v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v12[1] = v10;
  result = a5(v12);
  *a1 = v9;
  return result;
}

void sub_1B4B90B70(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B4D18D4C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7D8, &qword_1B4D3B8B0);
        v6 = sub_1B4D1844C();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7D8, &qword_1B4D3B8B0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1B4B913A0(v8, v9, a1, v4, &qword_1EB8AB7D8, &qword_1B4D3B8B0, &qword_1EB8A6850, &unk_1B4D1BC10, &qword_1EDC37870, sub_1B4B91D58);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1B4B90E80(0, v2, 1, a1);
  }
}

void sub_1B4B90CF8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B4D18D4C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7C0, &unk_1B4D47180);
        v6 = sub_1B4D1844C();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7C0, &unk_1B4D47180) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1B4B913A0(v8, v9, a1, v4, &qword_1EB8AB7C0, &unk_1B4D47180, &qword_1EB8A6830, &unk_1B4D1AB40, &qword_1EDC37878, sub_1B4B9230C);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1B4B91110(0, v2, 1, a1);
  }
}

void sub_1B4B90E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7D8, &qword_1B4D3B8B0);
  v8 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v26 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    v17 = *(v8 + 72);
    v18 = v16 + v17 * (a3 - 1);
    v31 = -v17;
    v32 = v16;
    v19 = a1 - a3;
    v25 = v17;
    v20 = v16 + v17 * a3;
LABEL_5:
    v29 = v18;
    v30 = a3;
    v27 = v20;
    v28 = v19;
    while (1)
    {
      sub_1B4974FBC(v20, v15, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
      sub_1B4974FBC(v18, v12, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
      sub_1B4B9474C(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10);
      v21 = sub_1B4D180EC();
      sub_1B4975024(v12, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
      sub_1B4975024(v15, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
      if ((v21 & 1) == 0)
      {
LABEL_4:
        a3 = v30 + 1;
        v18 = v29 + v25;
        v19 = v28 - 1;
        v20 = v27 + v25;
        if (v30 + 1 == v26)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v32)
      {
        break;
      }

      v22 = v33;
      sub_1B498B270(v20, v33, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
      swift_arrayInitWithTakeFrontToBack();
      sub_1B498B270(v22, v18, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
      v18 += v31;
      v20 += v31;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}