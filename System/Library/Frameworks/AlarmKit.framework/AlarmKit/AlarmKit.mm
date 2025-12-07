uint64_t sub_1BBBB8AA0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BBBB8AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBBF5214();
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

uint64_t sub_1BBBB8B94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BBBF5214();
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

uint64_t sub_1BBBB8C78@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1BBBB8CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AlarmPresentation.Alert(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A600, &qword_1BBBF66D0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A608, &qword_1BBBF66D8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1BBBB8E1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for AlarmPresentation.Alert(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A600, &qword_1BBBF66D0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A608, &qword_1BBBF66D8);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1BBBB8F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBBF5214();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5C8, &qword_1BBBF6698);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 <= 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = *(a1 + *(a3 + 24));
  }

  v16 = v15 - 2;
  if (v14 >= 2)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BBBB90A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BBBF5214();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5C8, &qword_1BBBF6698);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1BBBB91C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBBF5214();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5C8, &qword_1BBBF6698);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BBBB92C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BBBF5214();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5C8, &qword_1BBBF6698);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1BBBB93CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBBF5214();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for AlarmButton(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BBBB94BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BBBF5214();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for AlarmButton(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1BBBB95F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBBF5284();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AlarmPresentationState.Mode(0);
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

uint64_t sub_1BBBB9710(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BBBF5284();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for AlarmPresentationState.Mode(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1BBBB981C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBBF5254();
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 24);

  return v7(v8, a2, v6);
}

uint64_t sub_1BBBB9898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BBBF5254();
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 24);

  return v8(v9, a2, a2, v7);
}

uint64_t getEnumTagSinglePayload for Alarm.Schedule.Relative.Time(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Alarm.Schedule.Relative.Time(uint64_t result, int a2, int a3)
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

uint64_t sub_1BBBB9968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBBF5284();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A900, &qword_1BBBF7EE0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28));
      if (v14 >= 4)
      {
        return v14 - 3;
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

uint64_t sub_1BBBB9A7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BBBF5284();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A900, &qword_1BBBF7EE0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 3;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1BBBB9CDC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BBBB9D40()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BBBB9D80()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BBBB9DB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BBBB9E00()
{
  MEMORY[0x1BFB183F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BBBB9E38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AE30, &qword_1BBBF9EF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BBBB9ECC()
{
  v1 = sub_1BBBF5284();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BBBB9F54()
{
  v1 = sub_1BBBF5284();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BBBBA018()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BBBBA058()
{
  v1 = type metadata accessor for AlarmRequest(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_1BBBF5284();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[6];
  v8 = type metadata accessor for Alarm.Schedule(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v3 + v7, 1, v8))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v9 = sub_1BBBF5254();
      (*(*(v9 - 8) + 8))(v5 + v7, v9);
    }
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v11 = v1[9];
  v12 = sub_1BBBF52F4();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  v13 = v1[10];
  v14 = sub_1BBBF52C4();
  (*(*(v14 - 8) + 8))(v5 + v13, v14);
  sub_1BBBBBE78(*(v5 + v1[11]), *(v5 + v1[11] + 8));

  return MEMORY[0x1EEE6BDD0](v0, ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1BBBBA2A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BBBBA2E8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9AE50, &unk_1BBBFB0A0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for AlarmXPCServiceResponse.ScheduleAlarm(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = sub_1BBBF5284();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = *(type metadata accessor for Alarm(0) + 20);
    v9 = type metadata accessor for Alarm.Schedule(0);
    if (!(*(*(v9 - 8) + 48))(v5 + v8, 1, v9))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
      }

      else
      {
        v10 = sub_1BBBF5254();
        (*(*(v10 - 8) + 8))(v5 + v8, v10);
      }
    }
  }

  v11 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v11 + 8, v2 | 7);
}

uint64_t sub_1BBBBA4F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BBBF5284();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A900, &qword_1BBBF7EE0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 2147483646)
  {
    v15 = *(a1 + a3[7]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v16 = v15 - 1;
    if (v16 < 0)
    {
      v16 = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_1BBBF52F4();
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[9];
      goto LABEL_5;
    }

    v18 = sub_1BBBF52C4();
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[10];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_1BBBBA6C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1BBBF5284();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A900, &qword_1BBBF7EE0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[7]) = a2;
    return result;
  }

  v16 = sub_1BBBF52F4();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_5;
  }

  v17 = sub_1BBBF52C4();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[10];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1BBBBA93C()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1BBBBA974()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BBBBA9AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BBBBA9F4()
{
  MEMORY[0x1BFB183F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BBBBAA2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B300, &qword_1BBBFB188);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BBBBAAC0()
{
  v1 = sub_1BBBF5284();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BBBBAB48()
{
  v1 = sub_1BBBF5284();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BBBBAC0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1BBBBAC44()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BBBBAC84()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BBBBACD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BBBBAF18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmPresentation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBBBAF84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmPresentation(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AlarmAttributes.metadata.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1BBBF5574();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AlarmAttributes.metadata.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_1BBBF5574();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AlarmAttributes.tintColor.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);

  *(v2 + v4) = a1;
  return result;
}

uint64_t AlarmAttributes.init(presentation:metadata:tintColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = type metadata accessor for AlarmAttributes(0, a4, a5, a4);
  v12 = *(v11 + 36);
  (*(*(a4 - 8) + 56))(a6 + v12, 1, 1, a4);
  sub_1BBBBB28C(a1, a6);
  v13 = sub_1BBBF5574();
  result = (*(*(v13 - 8) + 40))(a6 + v12, a2, v13);
  *(a6 + *(v11 + 40)) = a3;
  return result;
}

uint64_t sub_1BBBBB28C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmPresentation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBBBB2F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6C6F43746E6974 && a2 == 0xE900000000000072 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61746E6573657270 && a2 == 0xEC0000006E6F6974)
  {

    return 3;
  }

  else
  {
    v6 = sub_1BBBF57A4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1BBBBB498(unsigned __int8 a1)
{
  sub_1BBBF5844();
  MEMORY[0x1BFB17D60](a1);
  return sub_1BBBF5884();
}

uint64_t sub_1BBBBB4E0(unsigned __int8 a1)
{
  v1 = 0x746E65746E6F63;
  v2 = 0x6F6C6F43746E6974;
  if (a1 != 2)
  {
    v2 = 0x61746E6573657270;
  }

  if (a1)
  {
    v1 = 0x617461646174656DLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BBBBB594(uint64_t a1)
{
  sub_1BBBF5844();
  sub_1BBBBB470(v3, *v1);
  return sub_1BBBF5884();
}

uint64_t sub_1BBBBB5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBBBB2F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBBBB624@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1BBBBCE30();
  *a2 = result;
  return result;
}

uint64_t sub_1BBBBB650(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BBBBB6A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t AlarmAttributes.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a4;
  v7 = sub_1BBBF5574();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v36 - v8;
  v40 = type metadata accessor for AlarmPresentation(0);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AlarmAttributes.CodingKeys(255, a2, a3, v10);
  swift_getWitnessTable();
  v11 = sub_1BBBF56E4();
  v43 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v42 = a3;
  v15 = type metadata accessor for AlarmAttributes(0, a2, a3, v14);
  v37 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - v17;
  v19 = *(v16 + 36);
  v20 = *(*(a2 - 8) + 56);
  v45 = v18;
  v49 = v19;
  v20(&v18[v19], 1, 1, a2);
  v21 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v22 = v44;
  sub_1BBBF5894();
  if (v22)
  {
    v29 = v47;
    v26 = v49;
    __swift_destroy_boxed_opaque_existential_1(v48);
    v28 = v45;
    v30 = v46;
    return (*(v30 + 8))(v28 + v26, v29);
  }

  v23 = v39;
  v44 = v15;
  LOBYTE(v50) = 3;
  sub_1BBBBC2F0(&qword_1EDD45A58, type metadata accessor for AlarmPresentation, &protocol conformance descriptor for AlarmPresentation);
  v24 = v41;
  sub_1BBBF56C4();
  v25 = v11;
  v28 = v45;
  sub_1BBBBB28C(v24, v45);
  LOBYTE(v50) = 1;
  sub_1BBBF5674();
  v29 = v47;
  v30 = v46;
  (*(v46 + 40))(v28 + v49, v23, v47);
  v52 = 2;
  sub_1BBBBBDDC();
  sub_1BBBF56C4();
  v42 = v13;
  v32 = v50;
  v31 = v51;
  sub_1BBBBBE30(0, &qword_1EDD456F8, 0x1E696ACD0);
  sub_1BBBBBE30(0, &qword_1EDD456D8, 0x1E69DC888);
  if (!sub_1BBBF5504())
  {
    sub_1BBBBBECC();
    swift_allocError();
    swift_willThrow();
    sub_1BBBBBE78(v32, v31);
    (*(v43 + 8))(v42, v25);
    v26 = v49;
    __swift_destroy_boxed_opaque_existential_1(v48);
    sub_1BBBBBD80(v28);
    return (*(v30 + 8))(v28 + v26, v29);
  }

  v33 = sub_1BBBF5334();
  sub_1BBBBBE78(v32, v31);
  (*(v43 + 8))(v42, v25);
  v34 = v44;
  *(v28 + *(v44 + 40)) = v33;
  v35 = v37;
  (*(v37 + 16))(v38, v28, v34);
  __swift_destroy_boxed_opaque_existential_1(v48);
  return (*(v35 + 8))(v28, v34);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_1BBBBBD80(uint64_t a1)
{
  v2 = type metadata accessor for AlarmPresentation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BBBBBDDC()
{
  result = qword_1EDD45BD0;
  if (!qword_1EDD45BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45BD0);
  }

  return result;
}

uint64_t sub_1BBBBBE30(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1BBBBBE78(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1BBBBBECC()
{
  result = qword_1EBC9A568;
  if (!qword_1EBC9A568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A568);
  }

  return result;
}

uint64_t AlarmAttributes.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v17[0] = *(a2 + 24);
  v17[1] = v6;
  type metadata accessor for AlarmAttributes.CodingKeys(255, v6, v17[0], a4);
  swift_getWitnessTable();
  v7 = sub_1BBBF5784();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v17[2];
  sub_1BBBF58A4();
  LOBYTE(v18) = 3;
  type metadata accessor for AlarmPresentation(0);
  sub_1BBBBC2F0(&qword_1EDD45628, type metadata accessor for AlarmPresentation, &protocol conformance descriptor for AlarmPresentation);
  v12 = v17[3];
  sub_1BBBF5774();
  if (v12)
  {
    return (*(v8 + 8))(v10, v7);
  }

  LOBYTE(v18) = 1;
  sub_1BBBF5724();
  v13 = Color.encoded()(*(v11 + *(a2 + 40)));
  v18 = v13;
  v19 = v14;
  v15 = v14;
  v20 = 2;
  sub_1BBBBC18C();
  sub_1BBBF5774();
  (*(v8 + 8))(v10, v7);
  return sub_1BBBBBE78(v13, v15);
}

unint64_t sub_1BBBBC18C()
{
  result = qword_1EDD45668;
  if (!qword_1EDD45668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45668);
  }

  return result;
}

uint64_t sub_1BBBBC2F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BBBBC378(uint64_t a1)
{
  result = type metadata accessor for AlarmPresentation(319);
  if (v2 <= 0x3F)
  {
    result = sub_1BBBF5574();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BBBBC408(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1BBBF5214();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = v9 - 1;
  if (v9 - 1 <= v8)
  {
    v11 = *(v7 + 84);
  }

  else
  {
    v11 = v9 - 1;
  }

  if (v11 - 1 < v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 - 1;
  }

  if (v10 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  v14 = *(*(a3 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(*(v6 - 8) + 64);
  v17 = *(v14 + 80);
  if (v15)
  {
    v18 = v15 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 <= v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = v18;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  if (v15)
  {
    v20 = *(v14 + 64);
  }

  else
  {
    v20 = *(v14 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = *(v7 + 80) & 0xF8 | 7;
  v22 = v16 + v21;
  v23 = (v16 + v21) & ~v21;
  v24 = v16 + 7;
  v25 = (((v24 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v23 + 16;
  v26 = v25 + v21;
  v27 = v25 + v21 + 1;
  v28 = ((v25 + v21 + (v27 & ~v21)) & ~v21) + v25 + v17;
  v29 = v20 + 7;
  if (v19 < a2)
  {
    v30 = ((v29 + (v28 & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v31 = a2 - v19;
    v32 = v30 & 0xFFFFFFF8;
    if ((v30 & 0xFFFFFFF8) != 0)
    {
      v33 = 2;
    }

    else
    {
      v33 = v31 + 1;
    }

    if (v33 >= 0x10000)
    {
      v34 = 4;
    }

    else
    {
      v34 = 2;
    }

    if (v33 < 0x100)
    {
      v34 = 1;
    }

    if (v33 >= 2)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    if (v35 > 1)
    {
      if (v35 == 2)
      {
        v36 = *(a1 + v30);
        if (v36)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v36 = *(a1 + v30);
        if (v36)
        {
          goto LABEL_40;
        }
      }
    }

    else if (v35)
    {
      v36 = *(a1 + v30);
      if (v36)
      {
LABEL_40:
        v37 = v36 - 1;
        if (v32)
        {
          v37 = 0;
          v38 = *a1;
        }

        else
        {
          v38 = 0;
        }

        return v19 + (v38 | v37) + 1;
      }
    }
  }

  if (v13 != v19)
  {
    v41 = (a1 + v28) & ~v17;
    if (v18 != v19)
    {
      v45 = *((v29 + v41) & 0xFFFFFFFFFFFFFFF8);
      if (v45 >= 0xFFFFFFFF)
      {
        LODWORD(v45) = -1;
      }

      return (v45 + 1);
    }

    if (v15 >= 2)
    {
      v47 = (*(v14 + 48))(v41, v15);
      goto LABEL_79;
    }

    return 0;
  }

  v39 = ~v21;
  if (v11 != v13)
  {
    v40 = (a1 + v27) & v39;
    if (v11 - 1 == v13)
    {
      if (v8 < v10)
      {
        v43 = (v22 + v40) & v39;
        if (v8 < 0x7FFFFFFF)
        {
          v49 = *((v24 + v43) & 0xFFFFFFFFFFFFFFF8);
          if (v49 >= 0xFFFFFFFF)
          {
            LODWORD(v49) = -1;
          }

          v44 = v49 + 1;
        }

        else
        {
          v44 = (*(v7 + 48))(v43);
        }

        if (v44 >= 2)
        {
          v47 = v44 - 1;
        }

        else
        {
          v47 = 0;
        }

        goto LABEL_79;
      }
    }

    else
    {
      v40 = (v26 + v40) & v39;
      if (v8 < 0x7FFFFFFF)
      {
        v40 = (v22 + v40) & v39;
LABEL_70:
        v48 = *((v24 + v40) & 0xFFFFFFFFFFFFFFF8);
        if (v48 >= 0xFFFFFFFF)
        {
          LODWORD(v48) = -1;
        }

        v47 = v48 + 1;
        goto LABEL_79;
      }
    }

    goto LABEL_66;
  }

  if (v8 < v10)
  {
    v40 = (a1 + v22) & v39;
    if (v8 < 0x7FFFFFFF)
    {
      goto LABEL_70;
    }

LABEL_66:
    v47 = (*(v7 + 48))(v40);
LABEL_79:
    if (v47 >= 2)
    {
      return v47 - 1;
    }

    else
    {
      return 0;
    }
  }

  v46 = *(v7 + 48);

  return v46(a1);
}

void sub_1BBBBC7C4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1BBBF5214() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = v11 - 1;
  if (v11 - 1 <= v10)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = v11 - 1;
  }

  if (v13 - 1 < v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 - 1;
  }

  if (v12 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v11 - 1;
  }

  v16 = *(*(a4 + 16) - 8);
  v17 = *(v16 + 84);
  v18 = *(v8 + 64);
  v19 = *(v16 + 80);
  v20 = *(v16 + 64);
  if (v17)
  {
    v21 = v17 - 1;
  }

  else
  {
    v21 = 0;
  }

  if (v21 <= v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = v21;
  }

  if (v22 <= 0x7FFFFFFF)
  {
    v23 = 0x7FFFFFFF;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(v9 + 80) & 0xF8 | 7;
  v25 = v18 + v24;
  v26 = v18 + 7;
  v27 = ((((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v28 = ((v18 + v24) & ~v24) + v27;
  v29 = v28 + v24 + 1;
  v30 = ((v28 + v24 + (v29 & ~v24)) & ~v24) + v28 + v19;
  if (!v17)
  {
    ++v20;
  }

  v31 = v20 + 7;
  v32 = ((v31 + (v30 & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v31 + (v30 & ~v19)) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v33 = a3 - v23 + 1;
  }

  else
  {
    v33 = 2;
  }

  if (v33 >= 0x10000)
  {
    v34 = 4;
  }

  else
  {
    v34 = 2;
  }

  if (v33 < 0x100)
  {
    v34 = 1;
  }

  if (v33 < 2)
  {
    v34 = 0;
  }

  if (v23 < a3)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  if (a2 > v23)
  {
    if (((v31 + (v30 & ~v19)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v36 = a2 - v23;
    }

    else
    {
      v36 = 1;
    }

    if (((v31 + (v30 & ~v19)) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v37 = ~v23 + a2;
      bzero(a1, ((v31 + (v30 & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v37;
    }

    if (v35 > 1)
    {
      if (v35 == 2)
      {
        *(a1 + v32) = v36;
      }

      else
      {
        *(a1 + v32) = v36;
      }
    }

    else if (v35)
    {
      *(a1 + v32) = v36;
    }

    return;
  }

  if (v35 > 1)
  {
    if (v35 != 2)
    {
      *(a1 + v32) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_55;
    }

    *(a1 + v32) = 0;
  }

  else if (v35)
  {
    *(a1 + v32) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_55;
  }

  if (!a2)
  {
    return;
  }

LABEL_55:
  if (v15 != v23)
  {
    v42 = (a1 + v30) & ~v19;
    if (v21 == v23)
    {
      v43 = *(v16 + 56);

      v43(v42, (a2 + 1), v17);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v46 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v46 = (a2 - 1);
      }

      *((v31 + v42) & 0xFFFFFFFFFFFFFFF8) = v46;
    }

    return;
  }

  v38 = ~v24;
  if (v13 == v15)
  {
    if (v10 >= v12)
    {
      v47 = *(v9 + 56);
      v48 = a1;
      v49 = a2;
LABEL_80:

      v47(v48, v49);
      return;
    }

    v39 = ((a1 + v25) & v38);
    if (a2 > v12)
    {
      if (!v27)
      {
        return;
      }

      v40 = a2 - v11;
LABEL_61:
      v41 = v39;
      goto LABEL_86;
    }

    v44 = a2 - v11;
    if (a2 < v11)
    {
      v49 = (a2 + 1);
      if (v10 < 0x7FFFFFFF)
      {
        v50 = v39 + v26;
        goto LABEL_102;
      }

LABEL_93:
      v47 = *(v9 + 56);
      v48 = v39;
      goto LABEL_80;
    }

    goto LABEL_96;
  }

  v39 = ((a1 + v29) & v38);
  if (v13 - 1 != v15)
  {
    v39 = ((v39 + v28 + v24) & v38);
    if (a2 > v12)
    {
      if (!v28)
      {
        return;
      }

      v40 = a2 - v11;
      v41 = v39;
      v27 = v28;
LABEL_86:
      bzero(v41, v27);
      *v39 = v40;
      return;
    }

    v44 = a2 - v11;
    if (a2 < v11)
    {
      v49 = (a2 + 1);
      if (v10 < 0x7FFFFFFF)
      {
        v50 = v26 + ((v39 + v25) & v38);
LABEL_102:
        v52 = (v50 & 0xFFFFFFFFFFFFFFF8);
        if ((v49 & 0x80000000) != 0)
        {
          *v52 = (a2 - 0x7FFFFFFF);
        }

        else
        {
          *v52 = a2;
        }

        return;
      }

      goto LABEL_93;
    }

    goto LABEL_94;
  }

  v44 = a2 - v13;
  if (a2 >= v13)
  {
LABEL_94:
    if (!v28)
    {
      return;
    }

    v51 = v39;
    v27 = v28;
LABEL_98:
    bzero(v51, v27);
    *v39 = v44;
    return;
  }

  v45 = (a2 + 1);
  if (v10 >= v12)
  {
    v47 = *(v9 + 56);
    v48 = v39;
    v49 = (a2 + 1);
    goto LABEL_80;
  }

  v39 = ((v39 + v25) & v38);
  v44 = a2 - v12;
  if (a2 >= v12)
  {
LABEL_96:
    if (!v27)
    {
      return;
    }

    v51 = v39;
    goto LABEL_98;
  }

  if (a2 + 2 > v11)
  {
    if (!v27)
    {
      return;
    }

    v40 = v45 - v11;
    goto LABEL_61;
  }

  if (v10 >= 0x7FFFFFFF)
  {
    v47 = *(v9 + 56);
    v48 = v39;
    v49 = (a2 + 2);
    goto LABEL_80;
  }

  v53 = ((v39 + v26) & 0xFFFFFFFFFFFFFFF8);
  if (a2 + 2 < 0)
  {
    v45 = (a2 - 2147483646);
  }

  *v53 = v45;
}

uint64_t getEnumTagSinglePayload for AlarmPresentationState.Mode.Countdown.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AlarmPresentationState.Mode.Countdown.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t AlarmButton.text.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BBBF5214();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AlarmButton.text.setter(uint64_t a1)
{
  v3 = sub_1BBBF5214();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AlarmButton.textColor.getter()
{
  type metadata accessor for AlarmButton(0);
}

uint64_t type metadata accessor for AlarmButton(uint64_t a1)
{
  result = qword_1EDD45DC8;
  if (!qword_1EDD45DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AlarmButton.textColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AlarmButton(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AlarmButton.systemImageName.getter()
{
  v1 = *(v0 + *(type metadata accessor for AlarmButton(0) + 24));

  return v1;
}

uint64_t AlarmButton.systemImageName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AlarmButton(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AlarmButton.init(text:textColor:systemImageName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1BBBF5214();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for AlarmButton(0);
  *(a5 + *(result + 20)) = a2;
  v12 = (a5 + *(result + 24));
  *v12 = a3;
  v12[1] = a4;
  return result;
}

uint64_t AlarmButton.init(text:textColor:systemImageName:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  sub_1BBBF5204();
  result = type metadata accessor for AlarmButton(0);
  *(a4 + *(result + 20)) = a1;
  v9 = (a4 + *(result + 24));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t sub_1BBBBD21C()
{
  v1 = *v0;
  sub_1BBBF5844();
  MEMORY[0x1BFB17D60](v1);
  return sub_1BBBF5884();
}

uint64_t sub_1BBBBD264(uint64_t a1)
{
  v2 = *v1;
  sub_1BBBF5844();
  MEMORY[0x1BFB17D60](v2);
  return sub_1BBBF5884();
}

uint64_t sub_1BBBBD2A8()
{
  v1 = 0x6F6C6F4374786574;
  if (*v0 != 1)
  {
    v1 = 0x6D496D6574737973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_1BBBBD30C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BBBBDF54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BBBBD334(uint64_t a1)
{
  v2 = sub_1BBBBD898();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBBD370(uint64_t a1)
{
  v2 = sub_1BBBBD898();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmButton.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_1BBBF5214();
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A570, &qword_1BBBF64A8);
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = type metadata accessor for AlarmButton(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBBD898();
  v11 = v33;
  sub_1BBBF5894();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v30;
  LOBYTE(v34) = 0;
  sub_1BBBBDBDC(qword_1EDD45BD8, MEMORY[0x1E6968E28]);
  v13 = v7;
  sub_1BBBF56C4();
  v15 = v10;
  (*(v12 + 32))(v10, v32, v3);
  LOBYTE(v34) = 2;
  v16 = sub_1BBBF5684();
  v17 = v8;
  v18 = (v15 + *(v8 + 24));
  *v18 = v16;
  v18[1] = v19;
  v36 = 1;
  sub_1BBBBBDDC();
  v33 = 0;
  sub_1BBBF56C4();
  v28 = v13;
  v32 = v5;
  v20 = v34;
  v21 = v35;
  sub_1BBBBBE30(0, &qword_1EDD456F8, 0x1E696ACD0);
  sub_1BBBBBE30(0, &qword_1EDD456D8, 0x1E69DC888);
  v22 = sub_1BBBF5504();
  v23 = a1;
  v26 = v31;
  if (v22)
  {
    v27 = sub_1BBBF5334();
    sub_1BBBBBE78(v20, v21);
    (*(v26 + 8))(v28, v32);
    *(v15 + *(v17 + 20)) = v27;
    sub_1BBBBD8EC(v15, v29);
    __swift_destroy_boxed_opaque_existential_1(v23);
    return sub_1BBBBD950(v15);
  }

  else
  {
    sub_1BBBBBECC();
    swift_allocError();
    swift_willThrow();
    sub_1BBBBBE78(v20, v21);
    (*(v26 + 8))(v28, v32);
    v24 = v23;
    v25 = v33;
    __swift_destroy_boxed_opaque_existential_1(v24);
    result = (*(v12 + 8))(v15, v3);
    if (!v25)
    {
    }
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1BBBBD898()
{
  result = qword_1EDD45998;
  if (!qword_1EDD45998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45998);
  }

  return result;
}

uint64_t sub_1BBBBD8EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBBBD950(uint64_t a1)
{
  v2 = type metadata accessor for AlarmButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AlarmButton.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A578, &qword_1BBBF64B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBBD898();
  sub_1BBBF58A4();
  LOBYTE(v15) = 0;
  sub_1BBBF5214();
  sub_1BBBBDBDC(&unk_1EDD45670, MEMORY[0x1E6968E18]);
  sub_1BBBF5774();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9 = type metadata accessor for AlarmButton(0);
  LOBYTE(v15) = 2;
  sub_1BBBF5734();
  v15 = Color.encoded()(*(v3 + *(v9 + 20)));
  v16 = v10;
  v14[15] = 1;
  v11 = v15;
  v12 = v10;
  sub_1BBBBC18C();
  sub_1BBBF5774();
  (*(v6 + 8))(v8, v5);
  return sub_1BBBBBE78(v11, v12);
}

uint64_t sub_1BBBBDBDC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1BBBF5214();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BBBBDC78(uint64_t a1)
{
  result = sub_1BBBF5214();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlarmButton.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AlarmButton.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BBBBDE50()
{
  result = qword_1EBC9A580;
  if (!qword_1EBC9A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A580);
  }

  return result;
}

unint64_t sub_1BBBBDEA8()
{
  result = qword_1EDD45988;
  if (!qword_1EDD45988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45988);
  }

  return result;
}

unint64_t sub_1BBBBDF00()
{
  result = qword_1EDD45990;
  if (!qword_1EDD45990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45990);
  }

  return result;
}

uint64_t sub_1BBBBDF54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6C6F4374786574 && a2 == 0xE900000000000072 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D496D6574737973 && a2 == 0xEF656D614E656761)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BBBF57A4();

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

uint64_t sub_1BBBBE094()
{
  if (*v0)
  {
    return 0x6D6F74737563;
  }

  else
  {
    return 0x776F64746E756F63;
  }
}

uint64_t sub_1BBBBE0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x776F64746E756F63 && a2 == 0xE90000000000006ELL;
  if (v6 || (sub_1BBBF57A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBBF57A4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1BBBBE1B0(uint64_t a1)
{
  v2 = sub_1BBBBE5D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBBE1EC(uint64_t a1)
{
  v2 = sub_1BBBBE5D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBBE234(uint64_t a1)
{
  v2 = sub_1BBBBE67C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBBE270(uint64_t a1)
{
  v2 = sub_1BBBBE67C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBBE2AC(uint64_t a1)
{
  v2 = sub_1BBBBE628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBBE2E8(uint64_t a1)
{
  v2 = sub_1BBBBE628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmPresentation.Alert.SecondaryButtonBehavior.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A588, &qword_1BBBF6660);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A590, &qword_1BBBF6668);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A598, &qword_1BBBF6670);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBBE5D4();
  sub_1BBBF58A4();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1BBBBE628();
    v14 = v18;
    sub_1BBBF56F4();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1BBBBE67C();
    sub_1BBBF56F4();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1BBBBE5D4()
{
  result = qword_1EDD45AE8;
  if (!qword_1EDD45AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45AE8);
  }

  return result;
}

unint64_t sub_1BBBBE628()
{
  result = qword_1EBC9A5A0;
  if (!qword_1EBC9A5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A5A0);
  }

  return result;
}

unint64_t sub_1BBBBE67C()
{
  result = qword_1EDD45AC0;
  if (!qword_1EDD45AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45AC0);
  }

  return result;
}

uint64_t AlarmPresentation.Alert.SecondaryButtonBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_1BBBF5844();
  MEMORY[0x1BFB17D60](v1);
  return sub_1BBBF5884();
}

uint64_t AlarmPresentation.Alert.SecondaryButtonBehavior.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5A8, &qword_1BBBF6678);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5B0, &qword_1BBBF6680);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5B8, &qword_1BBBF6688);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBBE5D4();
  v13 = v31;
  sub_1BBBF5894();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_1BBBF56D4();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1BBBF55D4();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5C0, &qword_1BBBF6690);
    *v21 = &type metadata for AlarmPresentation.Alert.SecondaryButtonBehavior;
    sub_1BBBF5644();
    sub_1BBBF55C4();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_1BBBBE628();
    sub_1BBBF5634();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1BBBBE67C();
    sub_1BBBF5634();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1BBBBEB98()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
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

uint64_t sub_1BBBBEBCC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
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

uint64_t sub_1BBBBEC00()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
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

uint64_t AlarmPresentation.Alert.stopButton.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1BBBF5204();
  v2 = sub_1BBBF5344();
  result = type metadata accessor for AlarmButton(0);
  *(a1 + *(result + 20)) = v2;
  v4 = (a1 + *(result + 24));
  *v4 = 0x6B72616D78;
  v4[1] = 0xE500000000000000;
  return result;
}

uint64_t sub_1BBBBECF0@<X0>(uint64_t a1@<X8>)
{
  sub_1BBBF5204();
  v2 = sub_1BBBF5344();
  result = type metadata accessor for AlarmButton(0);
  *(a1 + *(result + 20)) = v2;
  v4 = (a1 + *(result + 24));
  *v4 = 0x6B72616D78;
  v4[1] = 0xE500000000000000;
  return result;
}

void (*AlarmPresentation.Alert.stopButton.modify(char **a1))(uint64_t *a1)
{
  v2 = type metadata accessor for AlarmButton(0);
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(*(*(v2 - 8) + 64));
  }

  v4 = v3;
  *a1 = v3;
  sub_1BBBF5204();
  *&v4[*(v2 + 20)] = sub_1BBBF5344();
  v5 = &v4[*(v2 + 24)];
  *v5 = 0x6B72616D78;
  *(v5 + 1) = 0xE500000000000000;
  return sub_1BBBBEE48;
}

void sub_1BBBBEE48(uint64_t *a1)
{
  v1 = *a1;
  sub_1BBBBFD38(*a1, type metadata accessor for AlarmButton);

  free(v1);
}

uint64_t AlarmPresentation.Alert.secondaryButtonBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AlarmPresentation.Alert(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AlarmPresentation.Alert.secondaryButtonBehavior.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AlarmPresentation.Alert(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t AlarmPresentation.Alert.init(title:secondaryButton:secondaryButtonBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AlarmButton(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a3;
  sub_1BBBF5204();
  *&v11[*(v8 + 20)] = sub_1BBBF5344();
  v13 = &v11[*(v8 + 24)];
  *v13 = 0x6B72616D78;
  *(v13 + 1) = 0xE500000000000000;
  sub_1BBBBFD38(v11, type metadata accessor for AlarmButton);
  v14 = type metadata accessor for AlarmPresentation.Alert(0);
  v15 = *(v14 + 20);
  (*(v9 + 56))(a4 + v15, 1, 1, v8);
  v16 = *(v14 + 24);
  *(a4 + v16) = 2;
  v17 = sub_1BBBF5214();
  (*(*(v17 - 8) + 32))(a4, a1, v17);
  result = sub_1BBBC1754(a2, a4 + v15, &qword_1EBC9A5C8, &qword_1BBBF6698);
  *(a4 + v16) = v12;
  return result;
}

uint64_t AlarmPresentation.Alert.init(title:stopButton:secondaryButton:secondaryButtonBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = type metadata accessor for AlarmPresentation.Alert(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for AlarmButton(0);
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  *(a5 + v13) = 2;
  v14 = sub_1BBBF5214();
  (*(*(v14 - 8) + 32))(a5, a1, v14);
  sub_1BBBBFD38(a2, type metadata accessor for AlarmButton);
  result = sub_1BBBC1754(a3, a5 + v11, &qword_1EBC9A5C8, &qword_1BBBF6698);
  *(a5 + v13) = v9;
  return result;
}

uint64_t AlarmPresentation.Alert.init(title:stopButton:secondaryButton:secondaryButtonBehavior:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a5;
  v10 = type metadata accessor for AlarmPresentation.Alert(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for AlarmButton(0);
  (*(*(v12 - 8) + 56))(a6 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  *(a6 + v13) = 2;
  sub_1BBBF5204();
  sub_1BBBBFD38(a3, type metadata accessor for AlarmButton);
  result = sub_1BBBC1754(a4, a6 + v11, &qword_1EBC9A5C8, &qword_1BBBF6698);
  *(a6 + v13) = v9;
  return result;
}

unint64_t sub_1BBBBF3C0()
{
  v1 = 0x7261646E6F636573;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1BBBBF428@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BBBC3004(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BBBBF450(uint64_t a1)
{
  v2 = sub_1BBBBF710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBBF48C(uint64_t a1)
{
  v2 = sub_1BBBBF710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmPresentation.Alert.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5D0, &qword_1BBBF66A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBBF710();
  sub_1BBBF58A4();
  v11[15] = 0;
  sub_1BBBF5214();
  sub_1BBBBF764(&unk_1EDD45670, MEMORY[0x1E6968E10], MEMORY[0x1E6968E18]);
  sub_1BBBF5774();
  if (!v2)
  {
    v9 = type metadata accessor for AlarmPresentation.Alert(0);
    v11[14] = 1;
    type metadata accessor for AlarmButton(0);
    sub_1BBBBF764(&qword_1EDD455B8, type metadata accessor for AlarmButton, &protocol conformance descriptor for AlarmButton);
    sub_1BBBF5724();
    v11[13] = *(v3 + *(v9 + 24));
    v11[12] = 2;
    sub_1BBBBF7AC();
    sub_1BBBF5724();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1BBBBF710()
{
  result = qword_1EDD45B00;
  if (!qword_1EDD45B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45B00);
  }

  return result;
}

uint64_t sub_1BBBBF764(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BBBBF7AC()
{
  result = qword_1EDD45648;
  if (!qword_1EDD45648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45648);
  }

  return result;
}

uint64_t AlarmPresentation.Alert.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5C8, &qword_1BBBF6698);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v27 = &v24 - v4;
  v29 = sub_1BBBF5214();
  v26 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5D8, &qword_1BBBF66A8);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for AlarmPresentation.Alert(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 28);
  v14 = type metadata accessor for AlarmButton(0);
  v15 = *(*(v14 - 8) + 56);
  v33 = v13;
  v15(&v12[v13], 1, 1, v14);
  v16 = *(v10 + 32);
  v12[v16] = 2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBBF710();
  v17 = v32;
  sub_1BBBF5894();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1BBBC22E0(&v12[v33], &qword_1EBC9A5C8, &qword_1BBBF6698);
  }

  else
  {
    v24 = v16;
    v18 = v26;
    v19 = v27;
    v32 = a1;
    v37 = 0;
    sub_1BBBBF764(qword_1EDD45BD8, MEMORY[0x1E6968E10], MEMORY[0x1E6968E28]);
    v21 = v28;
    v20 = v29;
    sub_1BBBF56C4();
    (*(v18 + 32))(v12, v21, v20);
    v36 = 1;
    sub_1BBBBF764(&qword_1EDD45980, type metadata accessor for AlarmButton, &protocol conformance descriptor for AlarmButton);
    sub_1BBBF5674();
    sub_1BBBC1754(v19, &v12[v33], &qword_1EBC9A5C8, &qword_1BBBF6698);
    v34 = 2;
    sub_1BBBBFCE4();
    sub_1BBBF5674();
    (*(v30 + 8))(v8, v31);
    v22 = v25;
    v12[v24] = v35;
    sub_1BBBC0918(v12, v22, type metadata accessor for AlarmPresentation.Alert);
    __swift_destroy_boxed_opaque_existential_1(v32);
    return sub_1BBBBFD38(v12, type metadata accessor for AlarmPresentation.Alert);
  }
}

unint64_t sub_1BBBBFCE4()
{
  result = qword_1EDD45AA8;
  if (!qword_1EDD45AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45AA8);
  }

  return result;
}

uint64_t sub_1BBBBFD38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AlarmPresentation.Countdown.init(title:pauseButton:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for AlarmPresentation.Countdown(0) + 20);
  v7 = type metadata accessor for AlarmButton(0);
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = sub_1BBBF5214();
  (*(*(v8 - 8) + 32))(a3, a1, v8);
  return sub_1BBBC1754(a2, a3 + v6, &qword_1EBC9A5C8, &qword_1BBBF6698);
}

uint64_t AlarmPresentation.Countdown.init(title:pauseButton:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(type metadata accessor for AlarmPresentation.Countdown(0) + 20);
  v7 = type metadata accessor for AlarmButton(0);
  (*(*(v7 - 8) + 56))(a4 + v6, 1, 1, v7);
  sub_1BBBF5204();
  return sub_1BBBC1754(a3, a4 + v6, &qword_1EBC9A5C8, &qword_1BBBF6698);
}

uint64_t sub_1BBBC00D4()
{
  if (*v0)
  {
    return 0x7475426573756170;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1BBBC0114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_1BBBF57A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7475426573756170 && a2 == 0xEB000000006E6F74)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBBF57A4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1BBBC01F0(uint64_t a1)
{
  v2 = sub_1BBBC0468();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC022C(uint64_t a1)
{
  v2 = sub_1BBBC0468();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmPresentation.Countdown.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5E0, &qword_1BBBF66B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC0468();
  sub_1BBBF58A4();
  v8[15] = 0;
  sub_1BBBF5214();
  sub_1BBBBF764(&unk_1EDD45670, MEMORY[0x1E6968E10], MEMORY[0x1E6968E18]);
  sub_1BBBF5774();
  if (!v1)
  {
    type metadata accessor for AlarmPresentation.Countdown(0);
    v8[14] = 1;
    type metadata accessor for AlarmButton(0);
    sub_1BBBBF764(&qword_1EDD455B8, type metadata accessor for AlarmButton, &protocol conformance descriptor for AlarmButton);
    sub_1BBBF5724();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1BBBC0468()
{
  result = qword_1EDD45A78;
  if (!qword_1EDD45A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A78);
  }

  return result;
}

uint64_t AlarmPresentation.Countdown.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5C8, &qword_1BBBF6698);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v24 = sub_1BBBF5214();
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5E8, &qword_1BBBF66B8);
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v20 - v8;
  v10 = type metadata accessor for AlarmPresentation.Countdown(0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 28);
  v15 = type metadata accessor for AlarmButton(0);
  v16 = *(*(v15 - 8) + 56);
  v27 = v14;
  v16(&v13[v14], 1, 1, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC0468();
  v17 = v26;
  sub_1BBBF5894();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1BBBC22E0(&v13[v27], &qword_1EBC9A5C8, &qword_1BBBF6698);
  }

  else
  {
    v18 = v22;
    v29 = 0;
    sub_1BBBBF764(qword_1EDD45BD8, MEMORY[0x1E6968E10], MEMORY[0x1E6968E28]);
    sub_1BBBF56C4();
    (*(v18 + 32))(v13, v7, v24);
    v28 = 1;
    sub_1BBBBF764(&qword_1EDD45980, type metadata accessor for AlarmButton, &protocol conformance descriptor for AlarmButton);
    sub_1BBBF5674();
    (*(v23 + 8))(v9, v25);
    sub_1BBBC1754(v5, &v13[v27], &qword_1EBC9A5C8, &qword_1BBBF6698);
    sub_1BBBC0918(v13, v21, type metadata accessor for AlarmPresentation.Countdown);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1BBBBFD38(v13, type metadata accessor for AlarmPresentation.Countdown);
  }
}

uint64_t sub_1BBBC0918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s8AlarmKit0A12PresentationV5AlertV5title10Foundation23LocalizedStringResourceVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BBBF5214();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s8AlarmKit0A12PresentationV5AlertV5title10Foundation23LocalizedStringResourceVvs_0(uint64_t a1)
{
  v3 = sub_1BBBF5214();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AlarmPresentation.Paused.init(title:resumeButton:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BBBF5214();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = type metadata accessor for AlarmPresentation.Paused(0);
  return sub_1BBBC192C(a2, a3 + *(v7 + 20), type metadata accessor for AlarmButton);
}

uint64_t AlarmPresentation.Paused.init(title:resumeButton:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1BBBF5204();
  v6 = type metadata accessor for AlarmPresentation.Paused(0);
  return sub_1BBBC192C(a3, a4 + *(v6 + 20), type metadata accessor for AlarmButton);
}

uint64_t sub_1BBBC0C8C()
{
  if (*v0)
  {
    return 0x7542656D75736572;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1BBBC0CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_1BBBF57A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7542656D75736572 && a2 == 0xEC0000006E6F7474)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBBF57A4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1BBBC0DA8(uint64_t a1)
{
  v2 = sub_1BBBC1020();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC0DE4(uint64_t a1)
{
  v2 = sub_1BBBC1020();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmPresentation.Paused.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5F0, &qword_1BBBF66C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC1020();
  sub_1BBBF58A4();
  v8[15] = 0;
  sub_1BBBF5214();
  sub_1BBBBF764(&unk_1EDD45670, MEMORY[0x1E6968E10], MEMORY[0x1E6968E18]);
  sub_1BBBF5774();
  if (!v1)
  {
    type metadata accessor for AlarmPresentation.Paused(0);
    v8[14] = 1;
    type metadata accessor for AlarmButton(0);
    sub_1BBBBF764(&qword_1EDD455B8, type metadata accessor for AlarmButton, &protocol conformance descriptor for AlarmButton);
    sub_1BBBF5774();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1BBBC1020()
{
  result = qword_1EDD45A98;
  if (!qword_1EDD45A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A98);
  }

  return result;
}

uint64_t AlarmPresentation.Paused.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = type metadata accessor for AlarmButton(0);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BBBF5214();
  v21 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v23 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5F8, &qword_1BBBF66C8);
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v17 - v7;
  v9 = type metadata accessor for AlarmPresentation.Paused(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC1020();
  sub_1BBBF5894();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v9;
  v19 = v11;
  v12 = v21;
  v28 = 0;
  sub_1BBBBF764(qword_1EDD45BD8, MEMORY[0x1E6968E10], MEMORY[0x1E6968E28]);
  v13 = v23;
  v14 = v25;
  sub_1BBBF56C4();
  (*(v12 + 32))(v19, v13, v14);
  v27 = 1;
  sub_1BBBBF764(&qword_1EDD45980, type metadata accessor for AlarmButton, &protocol conformance descriptor for AlarmButton);
  sub_1BBBF56C4();
  (*(v24 + 8))(v8, v26);
  v15 = v19;
  sub_1BBBC192C(v5, &v19[*(v18 + 20)], type metadata accessor for AlarmButton);
  sub_1BBBC0918(v15, v20, type metadata accessor for AlarmPresentation.Paused);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BBBBFD38(v15, type metadata accessor for AlarmPresentation.Paused);
}

uint64_t sub_1BBBC151C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BBBC16A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BBBC1754(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t AlarmPresentation.init(alert:countdown:paused:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AlarmPresentation(0);
  v9 = *(v8 + 20);
  v10 = type metadata accessor for AlarmPresentation.Countdown(0);
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = *(v8 + 24);
  v12 = type metadata accessor for AlarmPresentation.Paused(0);
  (*(*(v12 - 8) + 56))(a4 + v11, 1, 1, v12);
  sub_1BBBC192C(a1, a4, type metadata accessor for AlarmPresentation.Alert);
  sub_1BBBC1754(a2, a4 + v9, &qword_1EBC9A600, &qword_1BBBF66D0);
  return sub_1BBBC1754(a3, a4 + v11, &qword_1EBC9A608, &qword_1BBBF66D8);
}

uint64_t sub_1BBBC192C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BBBC1994()
{
  v1 = 0x776F64746E756F63;
  if (*v0 != 1)
  {
    v1 = 0x646573756170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472656C61;
  }
}

uint64_t sub_1BBBC19EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BBBC3128(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BBBC1A14(uint64_t a1)
{
  v2 = sub_1BBBC1D04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC1A50(uint64_t a1)
{
  v2 = sub_1BBBC1D04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmPresentation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A610, &qword_1BBBF66E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC1D04();
  sub_1BBBF58A4();
  v8[15] = 0;
  type metadata accessor for AlarmPresentation.Alert(0);
  sub_1BBBBF764(&qword_1EDD45640, type metadata accessor for AlarmPresentation.Alert, &protocol conformance descriptor for AlarmPresentation.Alert);
  sub_1BBBF5774();
  if (!v1)
  {
    type metadata accessor for AlarmPresentation(0);
    v8[14] = 1;
    type metadata accessor for AlarmPresentation.Countdown(0);
    sub_1BBBBF764(&qword_1EDD45630, type metadata accessor for AlarmPresentation.Countdown, &protocol conformance descriptor for AlarmPresentation.Countdown);
    sub_1BBBF5724();
    v8[13] = 2;
    type metadata accessor for AlarmPresentation.Paused(0);
    sub_1BBBBF764(&qword_1EDD45638, type metadata accessor for AlarmPresentation.Paused, &protocol conformance descriptor for AlarmPresentation.Paused);
    sub_1BBBF5724();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1BBBC1D04()
{
  result = qword_1EDD45B18[0];
  if (!qword_1EDD45B18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD45B18);
  }

  return result;
}

uint64_t AlarmPresentation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A608, &qword_1BBBF66D8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A600, &qword_1BBBF66D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30 = &v27 - v6;
  v7 = type metadata accessor for AlarmPresentation.Alert(0);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A618, &qword_1BBBF66E8);
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v10 = &v27 - v9;
  v11 = type metadata accessor for AlarmPresentation(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 28);
  v16 = type metadata accessor for AlarmPresentation.Countdown(0);
  v17 = *(*(v16 - 8) + 56);
  v36 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = *(v12 + 32);
  v19 = type metadata accessor for AlarmPresentation.Paused(0);
  v20 = *(*(v19 - 8) + 56);
  v35 = v18;
  v20(&v14[v18], 1, 1, v19);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC1D04();
  v21 = v34;
  sub_1BBBF5894();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1BBBC22E0(&v14[v36], &qword_1EBC9A600, &qword_1BBBF66D0);
    return sub_1BBBC22E0(&v14[v35], &qword_1EBC9A608, &qword_1BBBF66D8);
  }

  else
  {
    v22 = v31;
    v39 = 0;
    sub_1BBBBF764(&qword_1EDD45AA0, type metadata accessor for AlarmPresentation.Alert, &protocol conformance descriptor for AlarmPresentation.Alert);
    sub_1BBBF56C4();
    sub_1BBBC192C(v32, v14, type metadata accessor for AlarmPresentation.Alert);
    v38 = 1;
    sub_1BBBBF764(&qword_1EDD45A60, type metadata accessor for AlarmPresentation.Countdown, &protocol conformance descriptor for AlarmPresentation.Countdown);
    v23 = v30;
    sub_1BBBF5674();
    v24 = v22;
    sub_1BBBC1754(v23, &v14[v36], &qword_1EBC9A600, &qword_1BBBF66D0);
    v37 = 2;
    sub_1BBBBF764(&qword_1EDD45A80, type metadata accessor for AlarmPresentation.Paused, &protocol conformance descriptor for AlarmPresentation.Paused);
    v25 = v33;
    sub_1BBBF5674();
    (*(v24 + 8))(v10, v25);
    sub_1BBBC1754(v29, &v14[v35], &qword_1EBC9A608, &qword_1BBBF66D8);
    sub_1BBBC0918(v14, v28, type metadata accessor for AlarmPresentation);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1BBBBFD38(v14, type metadata accessor for AlarmPresentation);
  }
}

uint64_t sub_1BBBC22E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1BBBC2344()
{
  result = qword_1EBC9A620;
  if (!qword_1EBC9A620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A620);
  }

  return result;
}

void sub_1BBBC23F0(uint64_t a1)
{
  type metadata accessor for AlarmPresentation.Alert(319);
  if (v1 <= 0x3F)
  {
    sub_1BBBC24C4(319, qword_1EDD460A8, type metadata accessor for AlarmPresentation.Countdown);
    if (v2 <= 0x3F)
    {
      sub_1BBBC24C4(319, qword_1EDD46140, type metadata accessor for AlarmPresentation.Paused);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BBBC24C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BBBF5574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BBBC2540(uint64_t a1)
{
  sub_1BBBF5214();
  if (v1 <= 0x3F)
  {
    sub_1BBBC24C4(319, qword_1EDD45D90, type metadata accessor for AlarmButton);
    if (v2 <= 0x3F)
    {
      sub_1BBBC25F8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BBBC25F8()
{
  if (!qword_1EDD46218[0])
  {
    v0 = sub_1BBBF5574();
    if (!v1)
    {
      atomic_store(v0, qword_1EDD46218);
    }
  }
}

void sub_1BBBC2680(uint64_t a1)
{
  sub_1BBBF5214();
  if (v1 <= 0x3F)
  {
    sub_1BBBC24C4(319, qword_1EDD45D90, type metadata accessor for AlarmButton);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BBBC2748(uint64_t a1)
{
  result = sub_1BBBF5214();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AlarmButton(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlarmPresentationState.Mode.Paused.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmPresentationState.Mode.Paused.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BBBC2980()
{
  result = qword_1EBC9A628;
  if (!qword_1EBC9A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A628);
  }

  return result;
}

unint64_t sub_1BBBC29D8()
{
  result = qword_1EBC9A630;
  if (!qword_1EBC9A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A630);
  }

  return result;
}

unint64_t sub_1BBBC2A30()
{
  result = qword_1EBC9A638;
  if (!qword_1EBC9A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A638);
  }

  return result;
}

unint64_t sub_1BBBC2A88()
{
  result = qword_1EBC9A640;
  if (!qword_1EBC9A640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A640);
  }

  return result;
}

unint64_t sub_1BBBC2AE0()
{
  result = qword_1EBC9A648;
  if (!qword_1EBC9A648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A648);
  }

  return result;
}

unint64_t sub_1BBBC2B38()
{
  result = qword_1EDD45B08;
  if (!qword_1EDD45B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45B08);
  }

  return result;
}

unint64_t sub_1BBBC2B90()
{
  result = qword_1EDD45B10;
  if (!qword_1EDD45B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45B10);
  }

  return result;
}

unint64_t sub_1BBBC2BE8()
{
  result = qword_1EDD45A88;
  if (!qword_1EDD45A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A88);
  }

  return result;
}

unint64_t sub_1BBBC2C40()
{
  result = qword_1EDD45A90;
  if (!qword_1EDD45A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A90);
  }

  return result;
}

unint64_t sub_1BBBC2C98()
{
  result = qword_1EDD45A68;
  if (!qword_1EDD45A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A68);
  }

  return result;
}

unint64_t sub_1BBBC2CF0()
{
  result = qword_1EDD45A70;
  if (!qword_1EDD45A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A70);
  }

  return result;
}

unint64_t sub_1BBBC2D48()
{
  result = qword_1EDD45AF0;
  if (!qword_1EDD45AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45AF0);
  }

  return result;
}

unint64_t sub_1BBBC2DA0()
{
  result = qword_1EDD45AF8;
  if (!qword_1EDD45AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45AF8);
  }

  return result;
}

unint64_t sub_1BBBC2DF8()
{
  result = qword_1EDD45AB0;
  if (!qword_1EDD45AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45AB0);
  }

  return result;
}

unint64_t sub_1BBBC2E50()
{
  result = qword_1EDD45AB8;
  if (!qword_1EDD45AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45AB8);
  }

  return result;
}

unint64_t sub_1BBBC2EA8()
{
  result = qword_1EDD45AC8;
  if (!qword_1EDD45AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45AC8);
  }

  return result;
}

unint64_t sub_1BBBC2F00()
{
  result = qword_1EDD45AD0;
  if (!qword_1EDD45AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45AD0);
  }

  return result;
}

unint64_t sub_1BBBC2F58()
{
  result = qword_1EDD45AD8;
  if (!qword_1EDD45AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45AD8);
  }

  return result;
}

unint64_t sub_1BBBC2FB0()
{
  result = qword_1EDD45AE0;
  if (!qword_1EDD45AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45AE0);
  }

  return result;
}

uint64_t sub_1BBBC3004(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xEF6E6F7474754279 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001BBC00D60 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BBBF57A4();

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

uint64_t sub_1BBBC3128(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472656C61 && a2 == 0xE500000000000000;
  if (v4 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x776F64746E756F63 && a2 == 0xE90000000000006ELL || (sub_1BBBF57A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646573756170 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BBBF57A4();

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

uint64_t AlarmPresentationState.Mode.Countdown.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AlarmPresentationState.Mode.Countdown(0) + 24);
  v4 = sub_1BBBF5254();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AlarmPresentationState.Mode.Countdown.startDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AlarmPresentationState.Mode.Countdown(0) + 24);
  v4 = sub_1BBBF5254();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AlarmPresentationState.Mode.Countdown.fireDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AlarmPresentationState.Mode.Countdown(0) + 28);
  v4 = sub_1BBBF5254();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AlarmPresentationState.Mode.Countdown.fireDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AlarmPresentationState.Mode.Countdown(0) + 28);
  v4 = sub_1BBBF5254();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AlarmPresentationState.Mode.Countdown.init(totalCountdownDuration:previouslyElapsedDuration:startDate:fireDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = a4;
  a3[1] = a5;
  v8 = type metadata accessor for AlarmPresentationState.Mode.Countdown(0);
  v9 = *(v8 + 24);
  v10 = sub_1BBBF5254();
  v13 = *(*(v10 - 8) + 32);
  (v13)((v10 - 8), a3 + v9, a1, v10);
  v11 = a3 + *(v8 + 28);

  return v13(v11, a2, v10);
}

uint64_t static AlarmPresentationState.Mode.Countdown.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for AlarmPresentationState.Mode.Countdown(0);
  if ((sub_1BBBF5244() & 1) == 0)
  {
    return 0;
  }

  return sub_1BBBF5244();
}

unint64_t sub_1BBBC36FC()
{
  v1 = 0x7461447472617473;
  if (*v0 != 2)
  {
    v1 = 0x6574614465726966;
  }

  v2 = 0xD000000000000016;
  if (*v0)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1BBBC3780@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BBBC8E44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BBBC37A8(uint64_t a1)
{
  v2 = sub_1BBBC3A74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC37E4(uint64_t a1)
{
  v2 = sub_1BBBC3A74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmPresentationState.Mode.Countdown.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A650, &qword_1BBBF7050);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC3A74();
  sub_1BBBF58A4();
  v12 = 0;
  sub_1BBBF5754();
  if (!v1)
  {
    v11 = 1;
    sub_1BBBF5754();
    type metadata accessor for AlarmPresentationState.Mode.Countdown(0);
    v10 = 2;
    sub_1BBBF5254();
    sub_1BBBC3BB4(&qword_1EDD45660, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1BBBF5774();
    v9 = 3;
    sub_1BBBF5774();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1BBBC3A74()
{
  result = qword_1EDD459C0;
  if (!qword_1EDD459C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD459C0);
  }

  return result;
}

uint64_t AlarmPresentationState.Mode.Countdown.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1BFB17D80](*&v2);
  v3 = v1[1];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1BFB17D80](*&v3);
  type metadata accessor for AlarmPresentationState.Mode.Countdown(0);
  sub_1BBBF5254();
  sub_1BBBC3BB4(&qword_1EBC9A658, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BBBF53C4();
  return sub_1BBBF53C4();
}

uint64_t sub_1BBBC3BB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AlarmPresentationState.Mode.Countdown.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v32 = sub_1BBBF5254();
  v30 = *(v32 - 8);
  v3 = MEMORY[0x1EEE9AC00](v32);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A660, &qword_1BBBF7058);
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v24 - v8;
  v10 = type metadata accessor for AlarmPresentationState.Mode.Countdown(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC3A74();
  v34 = v9;
  v13 = v35;
  sub_1BBBF5894();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = v10;
  v14 = a1;
  v28 = v5;
  v15 = v31;
  v16 = v32;
  v39 = 0;
  v17 = v33;
  sub_1BBBF56A4();
  *v12 = v18;
  v38 = 1;
  sub_1BBBF56A4();
  v27 = v12;
  *(v12 + 1) = v19;
  v37 = 2;
  sub_1BBBC3BB4(&qword_1EDD45BC8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1BBBF56C4();
  v20 = *(v35 + 24);
  v25 = *(v30 + 32);
  v26 = v20;
  v25(&v27[v20], v7, v16);
  v36 = 3;
  v21 = v28;
  sub_1BBBF56C4();
  (*(v15 + 8))(v34, v17);
  v22 = v27;
  v25(&v27[*(v35 + 28)], v21, v16);
  sub_1BBBC79D4(v22, v29, type metadata accessor for AlarmPresentationState.Mode.Countdown);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return sub_1BBBC7ED4(v22, type metadata accessor for AlarmPresentationState.Mode.Countdown);
}

uint64_t sub_1BBBC4080(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1] || (sub_1BBBF5244() & 1) == 0)
  {
    return 0;
  }

  return sub_1BBBF5244();
}

AlarmKit::AlarmPresentationState::Mode::Paused __swiftcall AlarmPresentationState.Mode.Paused.init(totalCountdownDuration:previouslyElapsedDuration:)(Swift::Double totalCountdownDuration, Swift::Double previouslyElapsedDuration)
{
  *v2 = totalCountdownDuration;
  v2[1] = previouslyElapsedDuration;
  result.previouslyElapsedDuration = previouslyElapsedDuration;
  result.totalCountdownDuration = totalCountdownDuration;
  return result;
}

unint64_t sub_1BBBC41DC()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_1BBBC4218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000001BBC00D80 == a2 || (sub_1BBBF57A4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001BBC00DA0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1BBBF57A4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1BBBC42FC(uint64_t a1)
{
  v2 = sub_1BBBC44FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC4338(uint64_t a1)
{
  v2 = sub_1BBBC44FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmPresentationState.Mode.Paused.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A668, &qword_1BBBF7060);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC44FC();
  sub_1BBBF58A4();
  v8[15] = 0;
  sub_1BBBF5754();
  if (!v1)
  {
    v8[14] = 1;
    sub_1BBBF5754();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1BBBC44FC()
{
  result = qword_1EBC9A670;
  if (!qword_1EBC9A670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A670);
  }

  return result;
}

uint64_t AlarmPresentationState.Mode.Paused.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1BFB17D80](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x1BFB17D80](*&v3);
}

uint64_t AlarmPresentationState.Mode.Paused.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BBBF5844();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1BFB17D80](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1BFB17D80](*&v4);
  return sub_1BBBF5884();
}

uint64_t AlarmPresentationState.Mode.Paused.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A678, &qword_1BBBF7068);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC44FC();
  sub_1BBBF5894();
  if (!v2)
  {
    v16 = 0;
    sub_1BBBF56A4();
    v10 = v9;
    v15 = 1;
    sub_1BBBF56A4();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 1) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBBC4828(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1BBBF5844();
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1BFB17D80](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x1BFB17D80](*&v5);
  return sub_1BBBF5884();
}

__n128 AlarmPresentationState.Mode.Alert.time.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 AlarmPresentationState.Mode.Alert.time.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t sub_1BBBC4910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701669236 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BBBF57A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BBBC4998(uint64_t a1)
{
  v2 = sub_1BBBC4B60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC49D4(uint64_t a1)
{
  v2 = sub_1BBBC4B60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmPresentationState.Mode.Alert.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A680, &qword_1BBBF7070);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v8 = *v1;
  v7 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC4B60();
  sub_1BBBF58A4();
  v10[0] = v8;
  v10[1] = v7;
  sub_1BBBC4BB4();
  sub_1BBBF5774();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1BBBC4B60()
{
  result = qword_1EDD459E0;
  if (!qword_1EDD459E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD459E0);
  }

  return result;
}

unint64_t sub_1BBBC4BB4()
{
  result = qword_1EDD45650;
  if (!qword_1EDD45650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45650);
  }

  return result;
}

uint64_t AlarmPresentationState.Mode.Alert.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1BFB17D60](*v0);
  return MEMORY[0x1BFB17D60](v1);
}

uint64_t AlarmPresentationState.Mode.Alert.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BBBF5844();
  MEMORY[0x1BFB17D60](v1);
  MEMORY[0x1BFB17D60](v2);
  return sub_1BBBF5884();
}

uint64_t AlarmPresentationState.Mode.Alert.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A688, &qword_1BBBF7078);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC4B60();
  sub_1BBBF5894();
  if (!v2)
  {
    sub_1BBBC752C();
    sub_1BBBF56C4();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBBC4E58()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BBBF5844();
  MEMORY[0x1BFB17D60](v1);
  MEMORY[0x1BFB17D60](v2);
  return sub_1BBBF5884();
}

uint64_t sub_1BBBC4EB4()
{
  v1 = v0[1];
  MEMORY[0x1BFB17D60](*v0);
  return MEMORY[0x1BFB17D60](v1);
}

uint64_t sub_1BBBC4EF0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1BBBF5844();
  MEMORY[0x1BFB17D60](v2);
  MEMORY[0x1BFB17D60](v3);
  return sub_1BBBF5884();
}

uint64_t sub_1BBBC4F58(uint64_t a1)
{
  v2 = sub_1BBBC7B38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC4F94(uint64_t a1)
{
  v2 = sub_1BBBC7B38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBC4FD0(uint64_t a1)
{
  v2 = sub_1BBBC7980();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC500C(uint64_t a1)
{
  v2 = sub_1BBBC7980();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBC5048(uint64_t a1)
{
  v2 = sub_1BBBC7AE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC5084(uint64_t a1)
{
  v2 = sub_1BBBC7AE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBC50C0()
{
  sub_1BBBF5844();
  MEMORY[0x1BFB17D60](0);
  return sub_1BBBF5884();
}

uint64_t sub_1BBBC5104(uint64_t a1)
{
  sub_1BBBF5844();
  MEMORY[0x1BFB17D60](0);
  return sub_1BBBF5884();
}

uint64_t sub_1BBBC5144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BBBF57A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BBBC51C4(uint64_t a1)
{
  v2 = sub_1BBBC7A3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC5200(uint64_t a1)
{
  v2 = sub_1BBBC7A3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmPresentationState.Mode.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A690, &qword_1BBBF7080);
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v34 = &v29 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A698, &qword_1BBBF7088);
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v29 - v5;
  v31 = type metadata accessor for AlarmPresentationState.Mode.Countdown(0);
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A6A0, &qword_1BBBF7090);
  v30 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = type metadata accessor for AlarmPresentationState.Mode(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A6A8, &qword_1BBBF7098);
  v13 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v15 = &v29 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC7980();
  sub_1BBBF58A4();
  sub_1BBBC79D4(v39, v12, type metadata accessor for AlarmPresentationState.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = v32;
      sub_1BBBC7C34(v12, v32, type metadata accessor for AlarmPresentationState.Mode.Countdown);
      LOBYTE(v41) = 1;
      sub_1BBBC7AE4();
      v18 = v33;
      v19 = v40;
      sub_1BBBF56F4();
      sub_1BBBC3BB4(&qword_1EDD45618, type metadata accessor for AlarmPresentationState.Mode.Countdown, &protocol conformance descriptor for AlarmPresentationState.Mode.Countdown);
      v20 = v36;
      sub_1BBBF5774();
      (*(v35 + 8))(v18, v20);
      sub_1BBBC7ED4(v17, type metadata accessor for AlarmPresentationState.Mode.Countdown);
    }

    else
    {
      v25 = *v12;
      v26 = v12[1];
      LOBYTE(v41) = 2;
      sub_1BBBC7A3C();
      v27 = v34;
      v19 = v40;
      sub_1BBBF56F4();
      v41 = v25;
      v42 = v26;
      sub_1BBBC7A90();
      v28 = v38;
      sub_1BBBF5774();
      (*(v37 + 8))(v27, v28);
    }

    return (*(v13 + 8))(v15, v19);
  }

  else
  {
    v22 = *v12;
    v21 = v12[1];
    LOBYTE(v41) = 0;
    sub_1BBBC7B38();
    v23 = v40;
    sub_1BBBF56F4();
    v41 = v22;
    v42 = v21;
    sub_1BBBC7B8C();
    sub_1BBBF5774();
    (*(v30 + 8))(v9, v7);
    return (*(v13 + 8))(v15, v23);
  }
}

uint64_t AlarmPresentationState.Mode.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for AlarmPresentationState.Mode.Countdown(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for AlarmPresentationState.Mode(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BBBC79D4(v2, v8, type metadata accessor for AlarmPresentationState.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BBBC7C34(v8, v5, type metadata accessor for AlarmPresentationState.Mode.Countdown);
      MEMORY[0x1BFB17D60](1);
      v10 = *v5;
      if (*v5 == 0.0)
      {
        v10 = 0.0;
      }

      MEMORY[0x1BFB17D80](*&v10);
      v11 = v5[1];
      if (v11 == 0.0)
      {
        v11 = 0.0;
      }

      MEMORY[0x1BFB17D80](*&v11);
      sub_1BBBF5254();
      sub_1BBBC3BB4(&qword_1EBC9A658, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      sub_1BBBF53C4();
      sub_1BBBF53C4();
      return sub_1BBBC7ED4(v5, type metadata accessor for AlarmPresentationState.Mode.Countdown);
    }

    else
    {
      v15 = *v8;
      v16 = v8[1];
      MEMORY[0x1BFB17D60](2);
      if (v15 == 0.0)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = v15;
      }

      MEMORY[0x1BFB17D80](*&v17);
      if (v16 == 0.0)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = v16;
      }

      return MEMORY[0x1BFB17D80](*&v18);
    }
  }

  else
  {
    v13 = *v8;
    v14 = *(v8 + 1);
    MEMORY[0x1BFB17D60](0);
    MEMORY[0x1BFB17D60](*&v13);
    return MEMORY[0x1BFB17D60](v14);
  }
}

uint64_t AlarmPresentationState.Mode.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A6C0, &qword_1BBBF70A0);
  v62 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v67 = &v53 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A6C8, &qword_1BBBF70A8);
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v53 - v5;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A6D0, &qword_1BBBF70B0);
  v58 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v53 - v6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A6D8, &unk_1BBBF70B8);
  v69 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v8 = &v53 - v7;
  v9 = type metadata accessor for AlarmPresentationState.Mode(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v53 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v53 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v53 - v19;
  v21 = a1[3];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1BBBC7980();
  v22 = v70;
  sub_1BBBF5894();
  if (!v22)
  {
    v53 = v18;
    v54 = v12;
    v55 = v15;
    v24 = v63;
    v23 = v64;
    v26 = v66;
    v25 = v67;
    v57 = 0;
    v56 = v20;
    v70 = v9;
    v27 = v68;
    v28 = v65;
    v29 = sub_1BBBF56D4();
    v30 = (2 * *(v29 + 16)) | 1;
    v72 = v29;
    v73 = v29 + 32;
    v74 = 0;
    v75 = v30;
    v31 = sub_1BBBC3250();
    v32 = v28;
    if (v31 == 3 || v74 != v75 >> 1)
    {
      v38 = sub_1BBBF55D4();
      swift_allocError();
      v40 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5C0, &qword_1BBBF6690);
      *v40 = v70;
      v33 = v32;
      sub_1BBBF5644();
      sub_1BBBF55C4();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
      swift_willThrow();
    }

    else if (v31)
    {
      if (v31 != 1)
      {
        LOBYTE(v71) = 2;
        sub_1BBBC7A3C();
        v47 = v25;
        v48 = v57;
        sub_1BBBF5634();
        if (!v48)
        {
          v35 = v27;
          sub_1BBBC7BE0();
          v49 = v59;
          sub_1BBBF56C4();
          v50 = v69;
          (*(v62 + 8))(v47, v49);
          (*(v50 + 8))(v8, v28);
          swift_unknownObjectRelease();
          v52 = v54;
          *v54 = v71;
          swift_storeEnumTagMultiPayload();
          v51 = v52;
          goto LABEL_17;
        }

        (*(v69 + 8))(v8, v28);
        goto LABEL_10;
      }

      LOBYTE(v71) = 1;
      sub_1BBBC7AE4();
      v33 = v28;
      v34 = v57;
      sub_1BBBF5634();
      if (!v34)
      {
        v35 = v27;
        type metadata accessor for AlarmPresentationState.Mode.Countdown(0);
        sub_1BBBC3BB4(&qword_1EDD459A8, type metadata accessor for AlarmPresentationState.Mode.Countdown, &protocol conformance descriptor for AlarmPresentationState.Mode.Countdown);
        v36 = v55;
        v37 = v61;
        sub_1BBBF56C4();
        (*(v60 + 8))(v26, v37);
        (*(v69 + 8))(v8, v28);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v51 = v36;
LABEL_17:
        v46 = v56;
        sub_1BBBC7C34(v51, v56, type metadata accessor for AlarmPresentationState.Mode);
        goto LABEL_18;
      }
    }

    else
    {
      LOBYTE(v71) = 0;
      sub_1BBBC7B38();
      v42 = v24;
      v33 = v28;
      v43 = v57;
      sub_1BBBF5634();
      if (!v43)
      {
        sub_1BBBC7C9C();
        sub_1BBBF56C4();
        (*(v58 + 8))(v42, v23);
        (*(v69 + 8))(v8, v28);
        swift_unknownObjectRelease();
        v44 = v53;
        *v53 = v71;
        swift_storeEnumTagMultiPayload();
        v45 = v44;
        v46 = v56;
        sub_1BBBC7C34(v45, v56, type metadata accessor for AlarmPresentationState.Mode);
        v35 = v27;
LABEL_18:
        sub_1BBBC7C34(v46, v35, type metadata accessor for AlarmPresentationState.Mode);
        return __swift_destroy_boxed_opaque_existential_1(v76);
      }
    }

    (*(v69 + 8))(v8, v33);
LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v76);
}

uint64_t AlarmPresentationState.alarmID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BBBF5284();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AlarmPresentationState.alarmID.setter(uint64_t a1)
{
  v3 = sub_1BBBF5284();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AlarmPresentationState.mode.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AlarmPresentationState(0) + 20);

  return sub_1BBBC7CF0(a1, v3);
}

uint64_t AlarmPresentationState.bundleID.getter()
{
  v1 = *(v0 + *(type metadata accessor for AlarmPresentationState(0) + 24));

  return v1;
}

uint64_t AlarmPresentationState.bundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AlarmPresentationState(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AlarmPresentationState.localizedAppName.getter()
{
  v1 = *(v0 + *(type metadata accessor for AlarmPresentationState(0) + 28));

  return v1;
}

uint64_t AlarmPresentationState.localizedAppName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AlarmPresentationState(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AlarmPresentationState.alarmLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for AlarmPresentationState(0) + 32));

  return v1;
}

uint64_t AlarmPresentationState.alarmLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AlarmPresentationState(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AlarmPresentationState.init(alarmID:mode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AlarmPresentationState(0);
  v7 = (a3 + v6[6]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a3 + v6[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a3 + v6[8]);
  v10 = sub_1BBBF5284();
  *v9 = 0;
  v9[1] = 0;
  (*(*(v10 - 8) + 32))(a3, a1, v10);
  return sub_1BBBC7C34(a2, a3 + v6[5], type metadata accessor for AlarmPresentationState.Mode);
}

uint64_t AlarmPresentationState.init(alarmID:mode:bundleID:localizedAppName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = type metadata accessor for AlarmPresentationState(0);
  v14 = (a7 + v13[6]);
  v15 = (a7 + v13[7]);
  v16 = (a7 + v13[8]);
  v17 = sub_1BBBF5284();
  *v16 = 0;
  v16[1] = 0;
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  result = sub_1BBBC7C34(a2, a7 + v13[5], type metadata accessor for AlarmPresentationState.Mode);
  *v14 = a3;
  v14[1] = a4;
  *v15 = a5;
  v15[1] = a6;
  return result;
}

uint64_t sub_1BBBC690C()
{
  v1 = *v0;
  v2 = 0x44496D72616C61;
  v3 = 0x4449656C646E7562;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x62614C6D72616C61;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701080941;
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

uint64_t sub_1BBBC69A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BBBC8FC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BBBC69DC(uint64_t a1)
{
  v2 = sub_1BBBC7E80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC6A18(uint64_t a1)
{
  v2 = sub_1BBBC7E80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmPresentationState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A6E8, &qword_1BBBF70C8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC7E80();
  sub_1BBBF58A4();
  v8[15] = 0;
  sub_1BBBF5284();
  sub_1BBBC3BB4(&qword_1EDD45658, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1BBBF5774();
  if (!v1)
  {
    type metadata accessor for AlarmPresentationState(0);
    v8[14] = 1;
    type metadata accessor for AlarmPresentationState.Mode(0);
    sub_1BBBC3BB4(&qword_1EDD45610, type metadata accessor for AlarmPresentationState.Mode, &protocol conformance descriptor for AlarmPresentationState.Mode);
    sub_1BBBF5774();
    v8[13] = 2;
    sub_1BBBF5704();
    v8[12] = 3;
    sub_1BBBF5704();
    v8[11] = 4;
    sub_1BBBF5704();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AlarmPresentationState.hash(into:)(uint64_t a1)
{
  sub_1BBBF5284();
  sub_1BBBC3BB4(&qword_1EBC9B310, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BBBF53C4();
  v3 = type metadata accessor for AlarmPresentationState(0);
  AlarmPresentationState.Mode.hash(into:)(a1);
  if (*(v1 + v3[6] + 8))
  {
    sub_1BBBF5864();
    sub_1BBBF5414();
  }

  else
  {
    sub_1BBBF5864();
  }

  if (*(v1 + v3[7] + 8))
  {
    sub_1BBBF5864();
    sub_1BBBF5414();
  }

  else
  {
    sub_1BBBF5864();
  }

  if (!*(v1 + v3[8] + 8))
  {
    return sub_1BBBF5864();
  }

  sub_1BBBF5864();

  return sub_1BBBF5414();
}

uint64_t sub_1BBBC6E7C(uint64_t (*a1)(void *))
{
  sub_1BBBF5844();
  a1(v3);
  return sub_1BBBF5884();
}

uint64_t AlarmPresentationState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v33 = type metadata accessor for AlarmPresentationState.Mode(0);
  MEMORY[0x1EEE9AC00](v33);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BBBF5284();
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A6F0, &qword_1BBBF70D0);
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = type metadata accessor for AlarmPresentationState(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC7E80();
  v37 = v9;
  v13 = v38;
  sub_1BBBF5894();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v10;
  v38 = v12;
  v14 = v32;
  v43 = 0;
  sub_1BBBC3BB4(&qword_1EDD45BC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1BBBF56C4();
  v15 = *(v14 + 32);
  v16 = v38;
  v34 = v5;
  v15();
  v42 = 1;
  sub_1BBBC3BB4(&qword_1EDD459A0, type metadata accessor for AlarmPresentationState.Mode, &protocol conformance descriptor for AlarmPresentationState.Mode);
  sub_1BBBF56C4();
  v17 = v30;
  sub_1BBBC7C34(v4, v16 + v30[5], type metadata accessor for AlarmPresentationState.Mode);
  v41 = 2;
  v18 = sub_1BBBF5654();
  v19 = (v16 + v17[6]);
  *v19 = v18;
  v19[1] = v20;
  v40 = 3;
  v21 = sub_1BBBF5654();
  v22 = (v16 + v17[7]);
  *v22 = v21;
  v22[1] = v23;
  v39 = 4;
  v24 = sub_1BBBF5654();
  v25 = (v16 + v17[8]);
  v27 = v26;
  (*(v35 + 8))(v37, v36);
  *v25 = v24;
  v25[1] = v27;
  sub_1BBBC79D4(v16, v31, type metadata accessor for AlarmPresentationState);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BBBC7ED4(v16, type metadata accessor for AlarmPresentationState);
}

uint64_t sub_1BBBC7480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_1BBBF5844();
  a3(v5);
  return sub_1BBBF5884();
}

uint64_t sub_1BBBC74E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1BBBF5844();
  a4(v6);
  return sub_1BBBF5884();
}

unint64_t sub_1BBBC752C()
{
  result = qword_1EDD45BA0;
  if (!qword_1EDD45BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45BA0);
  }

  return result;
}

BOOL _s8AlarmKit0A17PresentationStateV4ModeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v26 = type metadata accessor for AlarmPresentationState.Mode.Countdown(0);
  MEMORY[0x1EEE9AC00](v26);
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for AlarmPresentationState.Mode(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v25 - v11);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v25 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A760, &qword_1BBBF7DD8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v25 - v17;
  v19 = (&v25 + *(v16 + 56) - v17);
  sub_1BBBC79D4(a1, &v25 - v17, type metadata accessor for AlarmPresentationState.Mode);
  sub_1BBBC79D4(a2, v19, type metadata accessor for AlarmPresentationState.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1BBBC79D4(v18, v14, type metadata accessor for AlarmPresentationState.Mode);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_22;
    }

    v24 = *v14 == *v19 && v14[1] == *(v19 + 1);
LABEL_20:
    sub_1BBBC7ED4(v18, type metadata accessor for AlarmPresentationState.Mode);
    return v24;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1BBBC79D4(v18, v9, type metadata accessor for AlarmPresentationState.Mode);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_22;
    }

    v24 = v9[1] == v19[1] && *v9 == *v19;
    goto LABEL_20;
  }

  sub_1BBBC79D4(v18, v12, type metadata accessor for AlarmPresentationState.Mode);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BBBC7C34(v19, v5, type metadata accessor for AlarmPresentationState.Mode.Countdown);
    if (*v12 == *v5 && v12[1] == v5[1] && (sub_1BBBF5244() & 1) != 0)
    {
      v21 = sub_1BBBF5244();
      sub_1BBBC7ED4(v5, type metadata accessor for AlarmPresentationState.Mode.Countdown);
      if (v21)
      {
        sub_1BBBC7ED4(v12, type metadata accessor for AlarmPresentationState.Mode.Countdown);
        sub_1BBBC7ED4(v18, type metadata accessor for AlarmPresentationState.Mode);
        return 1;
      }
    }

    else
    {
      sub_1BBBC7ED4(v5, type metadata accessor for AlarmPresentationState.Mode.Countdown);
    }

    sub_1BBBC7ED4(v12, type metadata accessor for AlarmPresentationState.Mode.Countdown);
    sub_1BBBC7ED4(v18, type metadata accessor for AlarmPresentationState.Mode);
    return 0;
  }

  sub_1BBBC7ED4(v12, type metadata accessor for AlarmPresentationState.Mode.Countdown);
LABEL_22:
  sub_1BBBC9180(v18);
  return 0;
}

unint64_t sub_1BBBC7980()
{
  result = qword_1EDD45A38;
  if (!qword_1EDD45A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A38);
  }

  return result;
}

uint64_t sub_1BBBC79D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BBBC7A3C()
{
  result = qword_1EBC9A6B0;
  if (!qword_1EBC9A6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A6B0);
  }

  return result;
}

unint64_t sub_1BBBC7A90()
{
  result = qword_1EBC9A6B8;
  if (!qword_1EBC9A6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A6B8);
  }

  return result;
}

unint64_t sub_1BBBC7AE4()
{
  result = qword_1EDD459F8;
  if (!qword_1EDD459F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD459F8);
  }

  return result;
}

unint64_t sub_1BBBC7B38()
{
  result = qword_1EDD45A20;
  if (!qword_1EDD45A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A20);
  }

  return result;
}

unint64_t sub_1BBBC7B8C()
{
  result = qword_1EDD45620;
  if (!qword_1EDD45620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45620);
  }

  return result;
}

unint64_t sub_1BBBC7BE0()
{
  result = qword_1EBC9A6E0;
  if (!qword_1EBC9A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A6E0);
  }

  return result;
}

uint64_t sub_1BBBC7C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BBBC7C9C()
{
  result = qword_1EDD459C8;
  if (!qword_1EDD459C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD459C8);
  }

  return result;
}

uint64_t sub_1BBBC7CF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmPresentationState.Mode(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s8AlarmKit0A17PresentationStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1BBBF5264() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AlarmPresentationState(0);
  if (!_s8AlarmKit0A17PresentationStateV4ModeO2eeoiySbAE_AEtFZ_0(a1 + v4[5], a2 + v4[5]))
  {
    return 0;
  }

  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_1BBBF57A4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = *v12 == *v14 && v13 == v15;
    if (!v16 && (sub_1BBBF57A4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v17 = v4[8];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = v20[1];
  if (v19)
  {
    if (v21 && (*v18 == *v20 && v19 == v21 || (sub_1BBBF57A4() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v21)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1BBBC7E80()
{
  result = qword_1EDD45A50;
  if (!qword_1EDD45A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A50);
  }

  return result;
}

uint64_t sub_1BBBC7ED4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BBBC7F80()
{
  result = qword_1EBC9A700;
  if (!qword_1EBC9A700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A700);
  }

  return result;
}

unint64_t sub_1BBBC7FD8()
{
  result = qword_1EBC9A708;
  if (!qword_1EBC9A708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A708);
  }

  return result;
}

void sub_1BBBC80E4(uint64_t a1)
{
  sub_1BBBF5284();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AlarmPresentationState.Mode(319);
    if (v2 <= 0x3F)
    {
      sub_1BBBC8188();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BBBC8188()
{
  if (!qword_1EDD45D30[0])
  {
    v0 = sub_1BBBF5574();
    if (!v1)
    {
      atomic_store(v0, qword_1EDD45D30);
    }
  }
}

uint64_t sub_1BBBC8228(uint64_t a1)
{
  result = type metadata accessor for AlarmPresentationState.Mode.Countdown(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BBBC82C4(uint64_t a1)
{
  result = sub_1BBBF5254();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AlarmPresentationState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AlarmPresentationState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AlarmManager.AlarmError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AlarmManager.AlarmError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1BBBC8608()
{
  result = qword_1EBC9A710;
  if (!qword_1EBC9A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A710);
  }

  return result;
}

unint64_t sub_1BBBC8660()
{
  result = qword_1EBC9A718;
  if (!qword_1EBC9A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A718);
  }

  return result;
}

unint64_t sub_1BBBC86B8()
{
  result = qword_1EBC9A720;
  if (!qword_1EBC9A720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A720);
  }

  return result;
}

unint64_t sub_1BBBC8710()
{
  result = qword_1EBC9A728;
  if (!qword_1EBC9A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A728);
  }

  return result;
}

unint64_t sub_1BBBC8768()
{
  result = qword_1EBC9A730;
  if (!qword_1EBC9A730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A730);
  }

  return result;
}

unint64_t sub_1BBBC87C0()
{
  result = qword_1EBC9A738;
  if (!qword_1EBC9A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A738);
  }

  return result;
}

unint64_t sub_1BBBC8818()
{
  result = qword_1EBC9A740;
  if (!qword_1EBC9A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A740);
  }

  return result;
}

unint64_t sub_1BBBC8870()
{
  result = qword_1EBC9A748;
  if (!qword_1EBC9A748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A748);
  }

  return result;
}

unint64_t sub_1BBBC88C8()
{
  result = qword_1EDD45A40;
  if (!qword_1EDD45A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A40);
  }

  return result;
}

unint64_t sub_1BBBC8920()
{
  result = qword_1EDD45A48;
  if (!qword_1EDD45A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A48);
  }

  return result;
}

unint64_t sub_1BBBC8978()
{
  result = qword_1EDD45A10;
  if (!qword_1EDD45A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A10);
  }

  return result;
}

unint64_t sub_1BBBC89D0()
{
  result = qword_1EDD45A18;
  if (!qword_1EDD45A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A18);
  }

  return result;
}

unint64_t sub_1BBBC8A28()
{
  result = qword_1EDD459E8;
  if (!qword_1EDD459E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD459E8);
  }

  return result;
}

unint64_t sub_1BBBC8A80()
{
  result = qword_1EDD459F0;
  if (!qword_1EDD459F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD459F0);
  }

  return result;
}

unint64_t sub_1BBBC8AD8()
{
  result = qword_1EDD45A00;
  if (!qword_1EDD45A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A00);
  }

  return result;
}

unint64_t sub_1BBBC8B30()
{
  result = qword_1EDD45A08;
  if (!qword_1EDD45A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A08);
  }

  return result;
}

unint64_t sub_1BBBC8B88()
{
  result = qword_1EDD45A28;
  if (!qword_1EDD45A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A28);
  }

  return result;
}

unint64_t sub_1BBBC8BE0()
{
  result = qword_1EDD45A30;
  if (!qword_1EDD45A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A30);
  }

  return result;
}

unint64_t sub_1BBBC8C38()
{
  result = qword_1EDD459D0;
  if (!qword_1EDD459D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD459D0);
  }

  return result;
}

unint64_t sub_1BBBC8C90()
{
  result = qword_1EDD459D8;
  if (!qword_1EDD459D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD459D8);
  }

  return result;
}

unint64_t sub_1BBBC8CE8()
{
  result = qword_1EBC9A750;
  if (!qword_1EBC9A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A750);
  }

  return result;
}

unint64_t sub_1BBBC8D40()
{
  result = qword_1EBC9A758;
  if (!qword_1EBC9A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A758);
  }

  return result;
}

unint64_t sub_1BBBC8D98()
{
  result = qword_1EDD459B0;
  if (!qword_1EDD459B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD459B0);
  }

  return result;
}

unint64_t sub_1BBBC8DF0()
{
  result = qword_1EDD459B8;
  if (!qword_1EDD459B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD459B8);
  }

  return result;
}

uint64_t sub_1BBBC8E44(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x80000001BBC00D80 == a2 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001BBC00DA0 == a2 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574614465726966 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1BBBF57A4();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1BBBC8FC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D72616C61 && a2 == 0xE700000000000000;
  if (v4 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BBC00DC0 == a2 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x62614C6D72616C61 && a2 == 0xEA00000000006C65)
  {

    return 4;
  }

  else
  {
    v6 = sub_1BBBF57A4();

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

uint64_t sub_1BBBC9180(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A760, &qword_1BBBF7DD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

AlarmKit::Alarm::Schedule::Relative::Time __swiftcall Alarm.Schedule.Relative.Time.init(hour:minute:)(Swift::Int hour, Swift::Int minute)
{
  *v2 = hour;
  v2[1] = minute;
  result.minute = minute;
  result.hour = hour;
  return result;
}

uint64_t sub_1BBBC929C()
{
  if (*v0)
  {
    return 0x6574756E696DLL;
  }

  else
  {
    return 1920298856;
  }
}

uint64_t sub_1BBBC92CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1920298856 && a2 == 0xE400000000000000;
  if (v5 || (sub_1BBBF57A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574756E696DLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBBF57A4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1BBBC93A4(uint64_t a1)
{
  v2 = sub_1BBBC95A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC93E0(uint64_t a1)
{
  v2 = sub_1BBBC95A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Alarm.Schedule.Relative.Time.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A768, &qword_1BBBF7DF0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC95A8();
  sub_1BBBF58A4();
  v11 = 0;
  sub_1BBBF5764();
  if (!v2)
  {
    v10 = 1;
    sub_1BBBF5764();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1BBBC95A8()
{
  result = qword_1EDD45BB8;
  if (!qword_1EDD45BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45BB8);
  }

  return result;
}

uint64_t Alarm.Schedule.Relative.Time.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1BFB17D60](*v0);
  return MEMORY[0x1BFB17D60](v1);
}

uint64_t Alarm.Schedule.Relative.Time.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BBBF5844();
  MEMORY[0x1BFB17D60](v1);
  MEMORY[0x1BFB17D60](v2);
  return sub_1BBBF5884();
}

uint64_t Alarm.Schedule.Relative.Time.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A770, &qword_1BBBF7DF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC95A8();
  sub_1BBBF5894();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_1BBBF56B4();
    v13 = 1;
    v10 = sub_1BBBF56B4();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static Alarm.Schedule.Relative.Recurrence.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {

      v4 = sub_1BBBC9914(v3, v2);

      return v4 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t sub_1BBBC9914(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BBBF5294();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_1BBBCA3BC(&qword_1EBC9AAB0, MEMORY[0x1E69696F0], MEMORY[0x1E6969708]);
    v21 = sub_1BBBF53D4();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BBBC9B28()
{
  if (*v0)
  {
    return 0x726576656ELL;
  }

  else
  {
    return 0x796C6B656577;
  }
}

uint64_t sub_1BBBC9B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x796C6B656577 && a2 == 0xE600000000000000;
  if (v6 || (sub_1BBBF57A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726576656ELL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBBF57A4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1BBBC9C30(uint64_t a1)
{
  v2 = sub_1BBBCA0E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC9C6C(uint64_t a1)
{
  v2 = sub_1BBBCA0E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBC9CA8(uint64_t a1)
{
  v2 = sub_1BBBCA13C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC9CE4(uint64_t a1)
{
  v2 = sub_1BBBCA13C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBC9D20(uint64_t a1)
{
  v2 = sub_1BBBCA190();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC9D5C(uint64_t a1)
{
  v2 = sub_1BBBCA190();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Alarm.Schedule.Relative.Recurrence.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A778, &qword_1BBBF7E00);
  v18 = *(v3 - 8);
  v19 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v17 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A780, &qword_1BBBF7E08);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A788, &qword_1BBBF7E10);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBCA0E8();
  sub_1BBBF58A4();
  if (v12)
  {
    v23 = 0;
    sub_1BBBCA190();
    sub_1BBBF56F4();
    v22 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A7A8, &qword_1BBBF7E18);
    sub_1BBBCAAA0(&qword_1EBC9A7B0, &qword_1EBC9A7B8, MEMORY[0x1E69696F8], MEMORY[0x1E69E6300]);
    v13 = v21;
    sub_1BBBF5774();
    (*(v20 + 8))(v7, v13);
  }

  else
  {
    v24 = 1;
    sub_1BBBCA13C();
    v15 = v17;
    sub_1BBBF56F4();
    (*(v18 + 8))(v15, v19);
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1BBBCA0E8()
{
  result = qword_1EBC9A790;
  if (!qword_1EBC9A790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A790);
  }

  return result;
}

unint64_t sub_1BBBCA13C()
{
  result = qword_1EBC9A798;
  if (!qword_1EBC9A798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A798);
  }

  return result;
}

unint64_t sub_1BBBCA190()
{
  result = qword_1EBC9A7A0;
  if (!qword_1EBC9A7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A7A0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t Alarm.Schedule.Relative.Recurrence.hash(into:)(uint64_t a1)
{
  v2 = sub_1BBBF5294();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  if (!*v1)
  {
    return MEMORY[0x1BFB17D60](1);
  }

  MEMORY[0x1BFB17D60](0);
  result = MEMORY[0x1BFB17D60](*(v6 + 16));
  v8 = *(v6 + 16);
  if (v8)
  {
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = v6 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v5, v12, v2);
      sub_1BBBCA3BC(&qword_1EBC9A7C0, MEMORY[0x1E69696F0], MEMORY[0x1E6969700]);
      sub_1BBBF53C4();
      result = (*(v9 - 8))(v5, v2);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1BBBCA3BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Alarm.Schedule.Relative.Recurrence.hashValue.getter()
{
  v2[9] = *v0;
  sub_1BBBF5844();
  Alarm.Schedule.Relative.Recurrence.hash(into:)(v2);
  return sub_1BBBF5884();
}

uint64_t Alarm.Schedule.Relative.Recurrence.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v34 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A7C8, &qword_1BBBF7E20);
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A7D0, &qword_1BBBF7E28);
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A7D8, &unk_1BBBF7E30);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  v12 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1BBBCA0E8();
  v13 = v35;
  sub_1BBBF5894();
  if (!v13)
  {
    v30 = v5;
    v35 = v9;
    v15 = v33;
    v14 = v34;
    v16 = sub_1BBBF56D4();
    v17 = (2 * *(v16 + 16)) | 1;
    v37 = v16;
    v38 = v16 + 32;
    v39 = 0;
    v40 = v17;
    v18 = sub_1BBBC324C();
    v19 = v8;
    if (v18 == 2 || v39 != v40 >> 1)
    {
      v21 = v11;
      v22 = sub_1BBBF55D4();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5C0, &qword_1BBBF6690);
      *v24 = &type metadata for Alarm.Schedule.Relative.Recurrence;
      sub_1BBBF5644();
      sub_1BBBF55C4();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v35 + 8))(v21, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = v35;
      if (v18)
      {
        LOBYTE(v41) = 1;
        sub_1BBBCA13C();
        sub_1BBBF5634();
        (*(v15 + 8))(v4, v31);
        (*(v20 + 8))(v11, v19);
        swift_unknownObjectRelease();
        *v14 = 0;
      }

      else
      {
        LOBYTE(v41) = 0;
        sub_1BBBCA190();
        v26 = v7;
        sub_1BBBF5634();
        v27 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A7A8, &qword_1BBBF7E18);
        sub_1BBBCAAA0(&qword_1EBC9A7E0, &qword_1EBC9A7E8, MEMORY[0x1E6969710], MEMORY[0x1E69E6330]);
        v28 = v30;
        sub_1BBBF56C4();
        (*(v32 + 8))(v26, v28);
        (*(v20 + 8))(v11, v19);
        swift_unknownObjectRelease();
        *v27 = v41;
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_1BBBCA984(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {

      v4 = sub_1BBBC9914(v3, v2);

      return v4 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t sub_1BBBCAA08()
{
  v2[9] = *v0;
  sub_1BBBF5844();
  Alarm.Schedule.Relative.Recurrence.hash(into:)(v2);
  return sub_1BBBF5884();
}

uint64_t sub_1BBBCAA58(uint64_t a1)
{
  v3[9] = *v1;
  sub_1BBBF5844();
  Alarm.Schedule.Relative.Recurrence.hash(into:)(v3);
  return sub_1BBBF5884();
}

uint64_t sub_1BBBCAAA0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC9A7A8, &qword_1BBBF7E18);
    sub_1BBBCA3BC(a2, MEMORY[0x1E69696F0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Alarm.Schedule.Relative.repeats.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

__n128 Alarm.Schedule.Relative.time.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

__n128 Alarm.Schedule.Relative.time.setter(__n128 *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

__n128 Alarm.Schedule.Relative.init(time:repeats:)@<Q0>(__n128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a2;
  result = *a1;
  *(a3 + 8) = *a1;
  return result;
}

uint64_t sub_1BBBCABE4()
{
  if (*v0)
  {
    return 1701669236;
  }

  else
  {
    return 0x73746165706572;
  }
}

uint64_t sub_1BBBCAC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73746165706572 && a2 == 0xE700000000000000;
  if (v6 || (sub_1BBBF57A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBBF57A4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1BBBCACF4(uint64_t a1)
{
  v2 = sub_1BBBCEC20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBCAD30(uint64_t a1)
{
  v2 = sub_1BBBCEC20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Alarm.Schedule.Relative.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A7F0, &qword_1BBBF7E40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v9 = *v1;
  v8 = v1[1];
  v11 = v1[2];
  v12 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBCEC20();

  sub_1BBBF58A4();
  v13 = v9;
  v15 = 0;
  sub_1BBBCEC74();
  sub_1BBBF5774();

  if (!v2)
  {
    v13 = v12;
    v14 = v11;
    v15 = 1;
    sub_1BBBC4BB4();
    sub_1BBBF5774();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Alarm.Schedule.Relative.hash(into:)(uint64_t a1)
{
  v2 = sub_1BBBF5294();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = v1[2];
  v15 = v1[1];
  v16 = v7;
  if (v6)
  {
    MEMORY[0x1BFB17D60](0);
    MEMORY[0x1BFB17D60](*(v6 + 16));
    v8 = *(v6 + 16);
    if (v8)
    {
      v11 = *(v3 + 16);
      v10 = v3 + 16;
      v9 = v11;
      v12 = v6 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
      v13 = *(v10 + 56);
      do
      {
        v9(v5, v12, v2);
        sub_1BBBCA3BC(&qword_1EBC9A7C0, MEMORY[0x1E69696F0], MEMORY[0x1E6969700]);
        sub_1BBBF53C4();
        (*(v10 - 8))(v5, v2);
        v12 += v13;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    MEMORY[0x1BFB17D60](1);
  }

  MEMORY[0x1BFB17D60](v15);
  return MEMORY[0x1BFB17D60](v16);
}

uint64_t Alarm.Schedule.Relative.hashValue.getter()
{
  v1 = *(v0 + 2);
  v4 = *v0;
  v5 = v1;
  sub_1BBBF5844();
  Alarm.Schedule.Relative.hash(into:)(v3);
  return sub_1BBBF5884();
}

uint64_t Alarm.Schedule.Relative.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A808, &qword_1BBBF7E48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBCEC20();
  sub_1BBBF5894();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = 0;
  sub_1BBBCECC8();
  sub_1BBBF56C4();
  v9 = v12;
  v13 = 1;
  sub_1BBBC752C();
  sub_1BBBF56C4();
  (*(v6 + 8))(v8, v5);
  v10 = v12;
  *a2 = v9;
  *(a2 + 8) = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBBCB348()
{
  v1 = *(v0 + 2);
  v4 = *v0;
  v5 = v1;
  sub_1BBBF5844();
  Alarm.Schedule.Relative.hash(into:)(v3);
  return sub_1BBBF5884();
}

uint64_t sub_1BBBCB3A0(uint64_t a1)
{
  v2 = *(v1 + 2);
  v5 = *v1;
  v6 = v2;
  sub_1BBBF5844();
  Alarm.Schedule.Relative.hash(into:)(v4);
  return sub_1BBBF5884();
}

uint64_t sub_1BBBCB3F4()
{
  if (*v0)
  {
    return 0x65766974616C6572;
  }

  else
  {
    return 0x6465786966;
  }
}

uint64_t sub_1BBBCB42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6465786966 && a2 == 0xE500000000000000;
  if (v6 || (sub_1BBBF57A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65766974616C6572 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBBF57A4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1BBBCB504(uint64_t a1)
{
  v2 = sub_1BBBCED3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBCB540(uint64_t a1)
{
  v2 = sub_1BBBCED3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBCB57C(uint64_t a1)
{
  v2 = sub_1BBBCEE38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBCB5B8(uint64_t a1)
{
  v2 = sub_1BBBCEE38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBCB5F4(uint64_t a1)
{
  v2 = sub_1BBBCED90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBCB630(uint64_t a1)
{
  v2 = sub_1BBBCED90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Alarm.Schedule.encode(to:)(void *a1)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A818, &qword_1BBBF7E50);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v25 = &v24 - v2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A820, &qword_1BBBF7E58);
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v4 = &v24 - v3;
  v26 = sub_1BBBF5254();
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Alarm.Schedule(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A828, &qword_1BBBF7E60);
  v10 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBCED3C();
  sub_1BBBF58A4();
  sub_1BBBCF3E0(v31, v9, type metadata accessor for Alarm.Schedule);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v9;
    v14 = v9[1];
    v15 = v9[2];
    LOBYTE(v33) = 1;
    sub_1BBBCED90();
    v16 = v25;
    v17 = v32;
    sub_1BBBF56F4();
    v33 = v13;
    v34 = v14;
    v35 = v15;
    sub_1BBBCEDE4();
    v18 = v30;
    sub_1BBBF5774();
    (*(v28 + 8))(v16, v18);
    (*(v10 + 8))(v12, v17);
  }

  else
  {
    v20 = v24;
    v21 = v26;
    (*(v24 + 32))(v6, v9, v26);
    LOBYTE(v33) = 0;
    sub_1BBBCEE38();
    v22 = v32;
    sub_1BBBF56F4();
    sub_1BBBCA3BC(&qword_1EDD45660, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    v23 = v29;
    sub_1BBBF5774();
    (*(v27 + 8))(v4, v23);
    (*(v20 + 8))(v6, v21);
    return (*(v10 + 8))(v12, v22);
  }
}

uint64_t Alarm.Schedule.hash(into:)(uint64_t a1)
{
  v2 = sub_1BBBF5294();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BBBF5254();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Alarm.Schedule(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BBBCF3E0(v1, v12, type metadata accessor for Alarm.Schedule);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    MEMORY[0x1BFB17D60](1);
    if (v13)
    {
      MEMORY[0x1BFB17D60](0);
      MEMORY[0x1BFB17D60](*(v13 + 16));
      v16 = *(v13 + 16);
      if (v16)
      {
        v24 = v14;
        v25 = v13;
        v26 = v15;
        v19 = *(v3 + 16);
        v18 = v3 + 16;
        v17 = v19;
        v20 = v13 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
        v21 = *(v18 + 56);
        do
        {
          v17(v5, v20, v2);
          sub_1BBBCA3BC(&qword_1EBC9A7C0, MEMORY[0x1E69696F0], MEMORY[0x1E6969700]);
          sub_1BBBF53C4();
          (*(v18 - 8))(v5, v2);
          v20 += v21;
          --v16;
        }

        while (v16);
        v15 = v26;
        v14 = v24;
      }
    }

    else
    {
      MEMORY[0x1BFB17D60](1);
    }

    MEMORY[0x1BFB17D60](v14);
    MEMORY[0x1BFB17D60](v15);
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    MEMORY[0x1BFB17D60](0);
    sub_1BBBCA3BC(&qword_1EBC9A658, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1BBBF53C4();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t Alarm.Schedule.hashValue.getter()
{
  sub_1BBBF5844();
  Alarm.Schedule.hash(into:)(v1);
  return sub_1BBBF5884();
}

uint64_t Alarm.Schedule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A850, &qword_1BBBF7E68);
  v44 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v47 = &v39 - v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A858, &qword_1BBBF7E70);
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v5 = &v39 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A860, &qword_1BBBF7E78);
  v49 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v7 = &v39 - v6;
  v8 = type metadata accessor for Alarm.Schedule(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v39 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - v15;
  v17 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1BBBCED3C();
  v18 = v50;
  sub_1BBBF5894();
  if (!v18)
  {
    v40 = v11;
    v41 = v16;
    v50 = v14;
    v20 = v47;
    v19 = v48;
    v21 = v46;
    v22 = sub_1BBBF56D4();
    v23 = (2 * *(v22 + 16)) | 1;
    v53 = v22;
    v54 = v22 + 32;
    v55 = 0;
    v56 = v23;
    v24 = sub_1BBBC324C();
    if (v24 == 2 || v55 != v56 >> 1)
    {
      v30 = sub_1BBBF55D4();
      swift_allocError();
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5C0, &qword_1BBBF6690);
      *v32 = v8;
      sub_1BBBF5644();
      sub_1BBBF55C4();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
      swift_willThrow();
      (*(v49 + 8))(v7, v21);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v24)
      {
        LOBYTE(v51) = 1;
        sub_1BBBCED90();
        sub_1BBBF5634();
        v25 = v19;
        sub_1BBBCEE8C();
        v26 = v42;
        sub_1BBBF56C4();
        (*(v44 + 8))(v20, v26);
        (*(v49 + 8))(v7, v21);
        swift_unknownObjectRelease();
        v27 = v52;
        v28 = v40;
        *v40 = v51;
        *(v28 + 2) = v27;
        swift_storeEnumTagMultiPayload();
        v29 = v28;
      }

      else
      {
        LOBYTE(v51) = 0;
        sub_1BBBCEE38();
        v34 = v5;
        sub_1BBBF5634();
        v25 = v19;
        sub_1BBBF5254();
        sub_1BBBCA3BC(&qword_1EDD45BC8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
        v35 = v50;
        v36 = v45;
        sub_1BBBF56C4();
        v37 = v49;
        (*(v43 + 8))(v34, v36);
        (*(v37 + 8))(v7, v21);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v29 = v35;
      }

      v38 = v41;
      sub_1BBBCEEE0(v29, v41);
      sub_1BBBCEEE0(v38, v25);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_1BBBCC510()
{
  sub_1BBBF5844();
  Alarm.Schedule.hash(into:)(v1);
  return sub_1BBBF5884();
}

uint64_t sub_1BBBCC554(uint64_t a1)
{
  sub_1BBBF5844();
  Alarm.Schedule.hash(into:)(v2);
  return sub_1BBBF5884();
}

uint64_t Alarm.CountdownDuration.preAlert.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t Alarm.CountdownDuration.postAlert.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

void __swiftcall Alarm.CountdownDuration.init(preAlert:postAlert:)(AlarmKit::Alarm::CountdownDuration *__return_ptr retstr, Swift::Double_optional preAlert, Swift::Double_optional postAlert)
{
  retstr->preAlert.value = *&preAlert.is_nil;
  retstr->preAlert.is_nil = postAlert.is_nil;
  *(&retstr->postAlert.value + 7) = v3;
  BYTE6(retstr[1].preAlert.value) = v4 & 1;
}

uint64_t sub_1BBBCC628()
{
  if (*v0)
  {
    return 0x72656C4174736F70;
  }

  else
  {
    return 0x7472656C41657270;
  }
}

uint64_t sub_1BBBCC668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472656C41657270 && a2 == 0xE800000000000000;
  if (v6 || (sub_1BBBF57A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72656C4174736F70 && a2 == 0xE900000000000074)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBBF57A4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1BBBCC74C(uint64_t a1)
{
  v2 = sub_1BBBCEF44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBCC788(uint64_t a1)
{
  v2 = sub_1BBBCEF44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Alarm.CountdownDuration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A870, &qword_1BBBF7E80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v9[0] = *(v1 + 16);
  v10 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBCEF44();
  sub_1BBBF58A4();
  v12 = 0;
  v7 = v9[1];
  sub_1BBBF5714();
  if (!v7)
  {
    v11 = 1;
    sub_1BBBF5714();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Alarm.CountdownDuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A880, &qword_1BBBF7E88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBCEF44();
  sub_1BBBF5894();
  if (!v2)
  {
    v19 = 0;
    v9 = sub_1BBBF5664();
    v17 = v10;
    v11 = v9;
    v18 = 1;
    v13 = sub_1BBBF5664();
    v15 = v14;
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
    *(a2 + 8) = v17 & 1;
    *(a2 + 16) = v13;
    *(a2 + 24) = v15 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBBCCB70(uint64_t a1)
{
  v2 = sub_1BBBCEFEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBCCBAC(uint64_t a1)
{
  v2 = sub_1BBBCEFEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBCCBE8()
{
  v1 = 0x656C756465686373;
  v2 = 0x646573756170;
  if (*v0 != 2)
  {
    v2 = 0x676E697472656C61;
  }

  if (*v0)
  {
    v1 = 0x776F64746E756F63;
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

uint64_t sub_1BBBCCC64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BBBD0924(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BBBCCC8C(uint64_t a1)
{
  v2 = sub_1BBBCEF98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBCCCC8(uint64_t a1)
{
  v2 = sub_1BBBCEF98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBCCD04(uint64_t a1)
{
  v2 = sub_1BBBCF094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBCCD40(uint64_t a1)
{
  v2 = sub_1BBBCF094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBCCD7C(uint64_t a1)
{
  v2 = sub_1BBBCF040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBCCDB8(uint64_t a1)
{
  v2 = sub_1BBBCF040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBCCDF4(uint64_t a1)
{
  v2 = sub_1BBBCF0E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBCCE30(uint64_t a1)
{
  v2 = sub_1BBBCF0E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Alarm.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A888, &qword_1BBBF7E90);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A890, &qword_1BBBF7E98);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A898, &qword_1BBBF7EA0);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A8A0, &qword_1BBBF7EA8);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A8A8, &qword_1BBBF7EB0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBCEF98();
  sub_1BBBF58A4();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1BBBCF040();
      v18 = v27;
      sub_1BBBF56F4();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1BBBCEFEC();
      v18 = v30;
      sub_1BBBF56F4();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1BBBCF094();
    v18 = v24;
    sub_1BBBF56F4();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1BBBCF0E8();
  sub_1BBBF56F4();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t Alarm.State.hashValue.getter()
{
  v1 = *v0;
  sub_1BBBF5844();
  MEMORY[0x1BFB17D60](v1);
  return sub_1BBBF5884();
}

uint64_t Alarm.State.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A8D8, &qword_1BBBF7EB8);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A8E0, &qword_1BBBF7EC0);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A8E8, &qword_1BBBF7EC8);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A8F0, &qword_1BBBF7ED0);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A8F8, &qword_1BBBF7ED8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1BBBCEF98();
  v15 = v46;
  sub_1BBBF5894();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1BBBF56D4();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1BBBBEB98();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1BBBF55D4();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5C0, &qword_1BBBF6690);
      *v28 = &type metadata for Alarm.State;
      sub_1BBBF5644();
      sub_1BBBF55C4();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1BBBCF094();
        v32 = v35;
        sub_1BBBF5634();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1BBBCF0E8();
        v25 = v35;
        sub_1BBBF5634();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1BBBCF040();
      v31 = v35;
      sub_1BBBF5634();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1BBBCEFEC();
      v33 = v35;
      sub_1BBBF5634();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t Alarm.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BBBF5284();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Alarm.id.setter(uint64_t a1)
{
  v3 = sub_1BBBF5284();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Alarm.schedule.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Alarm(0) + 20);

  return sub_1BBBCF15C(v3, a1);
}

uint64_t Alarm.schedule.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Alarm(0) + 20);

  return sub_1BBBCF1CC(a1, v3);
}

__n128 Alarm.countdownDuration.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Alarm(0) + 24));
  v4 = v3[1].n128_u64[0];
  v5 = v3[1].n128_u8[8];
  v6 = v3[1].n128_u8[9];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u64[0] = v4;
  a1[1].n128_u8[8] = v5;
  a1[1].n128_u8[9] = v6;
  return result;
}

__n128 Alarm.countdownDuration.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = a1[1].n128_u8[9];
  v5 = (v1 + *(type metadata accessor for Alarm(0) + 24));
  result = v7;
  *v5 = v7;
  v5[1].n128_u64[0] = v2;
  v5[1].n128_u8[8] = v3;
  v5[1].n128_u8[9] = v4;
  return result;
}

uint64_t Alarm.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Alarm(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t Alarm.state.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Alarm(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

__n128 Alarm.init(id:schedule:countdownDuration:state:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v18 = *a3;
  v8 = a3[1].n128_u64[0];
  v9 = a3[1].n128_u8[8];
  v10 = a3[1].n128_u8[9];
  v11 = *a4;
  v12 = type metadata accessor for Alarm(0);
  v13 = v12[5];
  v14 = type metadata accessor for Alarm.Schedule(0);
  (*(*(v14 - 8) + 56))(a5 + v13, 1, 1, v14);
  v15 = a5 + v12[6];
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *(v15 + 24) = 256;
  v16 = sub_1BBBF5284();
  (*(*(v16 - 8) + 32))(a5, a1, v16);
  sub_1BBBCF1CC(a2, a5 + v13);
  result = v18;
  *v15 = v18;
  *(v15 + 16) = v8;
  *(v15 + 24) = v9;
  *(v15 + 25) = v10;
  *(a5 + v12[7]) = v11;
  return result;
}

unint64_t sub_1BBBCDE40()
{
  v1 = 25705;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x6574617473;
  }

  if (*v0)
  {
    v1 = 0x656C756465686373;
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

uint64_t sub_1BBBCDEB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BBBD0A90(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BBBCDED8(uint64_t a1)
{
  v2 = sub_1BBBCF23C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBCDF14(uint64_t a1)
{
  v2 = sub_1BBBCF23C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Alarm.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A908, &qword_1BBBF7EE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBCF23C();
  sub_1BBBF58A4();
  LOBYTE(v17) = 0;
  sub_1BBBF5284();
  sub_1BBBCA3BC(&qword_1EDD45658, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1BBBF5774();
  if (!v2)
  {
    v9 = type metadata accessor for Alarm(0);
    LOBYTE(v17) = 1;
    type metadata accessor for Alarm.Schedule(0);
    sub_1BBBCA3BC(&qword_1EBC9A918, type metadata accessor for Alarm.Schedule, &protocol conformance descriptor for Alarm.Schedule);
    sub_1BBBF5724();
    v10 = (v3 + *(v9 + 24));
    v11 = *(v10 + 2);
    v12 = *(v10 + 24);
    v13 = *(v10 + 25);
    v17 = *v10;
    v18 = v11;
    v19 = v12;
    v20 = v13;
    v16 = 2;
    sub_1BBBCF290();
    sub_1BBBF5724();
    LOBYTE(v17) = *(v3 + *(v9 + 28));
    v16 = 3;
    sub_1BBBCF2E4();
    sub_1BBBF5774();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Alarm.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A900, &qword_1BBBF7EE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v28 = &v27 - v4;
  v5 = sub_1BBBF5284();
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A930, &qword_1BBBF7EF0);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v8 = &v27 - v7;
  v9 = type metadata accessor for Alarm(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 20);
  v14 = type metadata accessor for Alarm.Schedule(0);
  v15 = *(*(v14 - 8) + 56);
  v36 = v13;
  v15(&v12[v13], 1, 1, v14);
  v16 = *(v9 + 24);
  v35 = v12;
  v17 = &v12[v16];
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  *(v17 + 12) = 256;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBCF23C();
  v32 = v8;
  v18 = v34;
  sub_1BBBF5894();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1BBBC22E0(&v35[v36], &qword_1EBC9A900, &qword_1BBBF7EE0);
  }

  else
  {
    v19 = v29;
    v34 = a1;
    LOBYTE(v37) = 0;
    sub_1BBBCA3BC(&qword_1EDD45BC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1BBBF56C4();
    v20 = v35;
    (*(v19 + 32))(v35, v31, v5);
    LOBYTE(v37) = 1;
    sub_1BBBCA3BC(&qword_1EBC9A938, type metadata accessor for Alarm.Schedule, &protocol conformance descriptor for Alarm.Schedule);
    v21 = v28;
    sub_1BBBF5674();
    sub_1BBBCF1CC(v21, v20 + v36);
    v41 = 2;
    sub_1BBBCF338();
    sub_1BBBF5674();
    v22 = v30;
    v23 = v38;
    v24 = v39;
    v25 = v40;
    *v17 = v37;
    *(v17 + 2) = v23;
    v17[24] = v24;
    v17[25] = v25;
    v41 = 3;
    sub_1BBBCF38C();
    sub_1BBBF56C4();
    (*(v22 + 8))(v32, v33);
    *(v20 + *(v9 + 28)) = v37;
    sub_1BBBCF3E0(v20, v27, type metadata accessor for Alarm);
    __swift_destroy_boxed_opaque_existential_1(v34);
    return sub_1BBBD0BF0(v20, type metadata accessor for Alarm);
  }
}

uint64_t _s8AlarmKit0A20XPCServiceParametersO0A19IDOwnerIDActionTypeV2id10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BBBF5284();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

BOOL _s8AlarmKit0A0V17CountdownDurationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    return (v3 & 1) == 0;
  }

  return (*(a2 + 24) & 1) != 0;
}

uint64_t _s8AlarmKit0A0V8ScheduleO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  *&v23 = sub_1BBBF5254();
  v4 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Alarm.Schedule(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AAA8, &qword_1BBBF9318);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v23 - v15;
  v17 = &v23 + *(v14 + 56) - v15;
  sub_1BBBCF3E0(a1, &v23 - v15, type metadata accessor for Alarm.Schedule);
  sub_1BBBCF3E0(a2, v17, type metadata accessor for Alarm.Schedule);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BBBCF3E0(v16, v10, type metadata accessor for Alarm.Schedule);
    v18 = *v10;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = *(v17 + 2);
      v26 = v18;
      v27 = *(v10 + 8);
      v23 = *v17;
      v24 = v23;
      v19 = _s8AlarmKit0A0V8ScheduleO8RelativeV2eeoiySbAG_AGtFZ_0(&v26, &v24);

LABEL_9:
      sub_1BBBD0BF0(v16, type metadata accessor for Alarm.Schedule);
      return v19 & 1;
    }
  }

  else
  {
    sub_1BBBCF3E0(v16, v12, type metadata accessor for Alarm.Schedule);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v20 = v23;
      (*(v4 + 32))(v6, v17, v23);
      v19 = sub_1BBBF5244();
      v21 = *(v4 + 8);
      v21(v6, v20);
      v21(v12, v20);
      goto LABEL_9;
    }

    (*(v4 + 8))(v12, v23);
  }

  sub_1BBBC22E0(v16, &qword_1EBC9AAA8, &qword_1BBBF9318);
  v19 = 0;
  return v19 & 1;
}

BOOL _s8AlarmKit0A0V8ScheduleO8RelativeV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if (*a1)
  {
    if (!v4)
    {

      return 0;
    }

    v8 = sub_1BBBC9914(v7, v4);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {

    if (v4)
    {
      return 0;
    }
  }

  return v2 == v5 && v3 == v6;
}

unint64_t sub_1BBBCEC20()
{
  result = qword_1EBC9A7F8;
  if (!qword_1EBC9A7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A7F8);
  }

  return result;
}

unint64_t sub_1BBBCEC74()
{
  result = qword_1EBC9A800;
  if (!qword_1EBC9A800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A800);
  }

  return result;
}

unint64_t sub_1BBBCECC8()
{
  result = qword_1EBC9A810;
  if (!qword_1EBC9A810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A810);
  }

  return result;
}

unint64_t sub_1BBBCED3C()
{
  result = qword_1EBC9A830;
  if (!qword_1EBC9A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A830);
  }

  return result;
}

unint64_t sub_1BBBCED90()
{
  result = qword_1EBC9A838;
  if (!qword_1EBC9A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A838);
  }

  return result;
}

unint64_t sub_1BBBCEDE4()
{
  result = qword_1EBC9A840;
  if (!qword_1EBC9A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A840);
  }

  return result;
}

unint64_t sub_1BBBCEE38()
{
  result = qword_1EBC9A848;
  if (!qword_1EBC9A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A848);
  }

  return result;
}

unint64_t sub_1BBBCEE8C()
{
  result = qword_1EBC9A868;
  if (!qword_1EBC9A868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A868);
  }

  return result;
}

uint64_t sub_1BBBCEEE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alarm.Schedule(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BBBCEF44()
{
  result = qword_1EBC9A878;
  if (!qword_1EBC9A878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A878);
  }

  return result;
}

unint64_t sub_1BBBCEF98()
{
  result = qword_1EBC9A8B0;
  if (!qword_1EBC9A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A8B0);
  }

  return result;
}

unint64_t sub_1BBBCEFEC()
{
  result = qword_1EBC9A8B8;
  if (!qword_1EBC9A8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A8B8);
  }

  return result;
}

unint64_t sub_1BBBCF040()
{
  result = qword_1EBC9A8C0;
  if (!qword_1EBC9A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A8C0);
  }

  return result;
}

unint64_t sub_1BBBCF094()
{
  result = qword_1EBC9A8C8;
  if (!qword_1EBC9A8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A8C8);
  }

  return result;
}

unint64_t sub_1BBBCF0E8()
{
  result = qword_1EBC9A8D0;
  if (!qword_1EBC9A8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A8D0);
  }

  return result;
}

uint64_t sub_1BBBCF15C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A900, &qword_1BBBF7EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBBCF1CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A900, &qword_1BBBF7EE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BBBCF23C()
{
  result = qword_1EBC9A910;
  if (!qword_1EBC9A910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A910);
  }

  return result;
}

unint64_t sub_1BBBCF290()
{
  result = qword_1EBC9A920;
  if (!qword_1EBC9A920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A920);
  }

  return result;
}

unint64_t sub_1BBBCF2E4()
{
  result = qword_1EBC9A928;
  if (!qword_1EBC9A928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A928);
  }

  return result;
}

unint64_t sub_1BBBCF338()
{
  result = qword_1EBC9A940;
  if (!qword_1EBC9A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A940);
  }

  return result;
}

unint64_t sub_1BBBCF38C()
{
  result = qword_1EBC9A948;
  if (!qword_1EBC9A948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A948);
  }

  return result;
}

uint64_t sub_1BBBCF3E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BBBCF44C()
{
  result = qword_1EBC9A950;
  if (!qword_1EBC9A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A950);
  }

  return result;
}

unint64_t sub_1BBBCF4A4()
{
  result = qword_1EBC9A958;
  if (!qword_1EBC9A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A958);
  }

  return result;
}

unint64_t sub_1BBBCF4FC()
{
  result = qword_1EBC9A960;
  if (!qword_1EBC9A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A960);
  }

  return result;
}

unint64_t sub_1BBBCF59C()
{
  result = qword_1EBC9A970;
  if (!qword_1EBC9A970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A970);
  }

  return result;
}

void sub_1BBBCF660(uint64_t a1)
{
  sub_1BBBF5284();
  if (v1 <= 0x3F)
  {
    sub_1BBBCF704(319);
    if (v2 <= 0x3F)
    {
      sub_1BBBCF75C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BBBCF704(uint64_t a1)
{
  if (!qword_1EDD45CE8[0])
  {
    type metadata accessor for Alarm.Schedule(255);
    v1 = sub_1BBBF5574();
    if (!v2)
    {
      atomic_store(v1, qword_1EDD45CE8);
    }
  }
}

void sub_1BBBCF75C()
{
  if (!qword_1EDD45D28)
  {
    v0 = sub_1BBBF5574();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD45D28);
    }
  }
}

uint64_t sub_1BBBCF7AC(uint64_t a1)
{
  result = sub_1BBBF5254();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BBBCF828(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BBBCF884(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1BBBCF904(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BBBCF954(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1BBBCF9A8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1BBBCF9C0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1BBBCFA04(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BBBCFA24(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

unint64_t sub_1BBBCFB68()
{
  result = qword_1EBC9A978;
  if (!qword_1EBC9A978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A978);
  }

  return result;
}

unint64_t sub_1BBBCFBC0()
{
  result = qword_1EBC9A980;
  if (!qword_1EBC9A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A980);
  }

  return result;
}

unint64_t sub_1BBBCFC18()
{
  result = qword_1EBC9A988;
  if (!qword_1EBC9A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A988);
  }

  return result;
}

unint64_t sub_1BBBCFC70()
{
  result = qword_1EBC9A990;
  if (!qword_1EBC9A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A990);
  }

  return result;
}

unint64_t sub_1BBBCFCC8()
{
  result = qword_1EBC9A998;
  if (!qword_1EBC9A998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A998);
  }

  return result;
}

unint64_t sub_1BBBCFD20()
{
  result = qword_1EBC9A9A0;
  if (!qword_1EBC9A9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A9A0);
  }

  return result;
}

unint64_t sub_1BBBCFD78()
{
  result = qword_1EBC9A9A8;
  if (!qword_1EBC9A9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A9A8);
  }

  return result;
}

unint64_t sub_1BBBCFDD0()
{
  result = qword_1EBC9A9B0;
  if (!qword_1EBC9A9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A9B0);
  }

  return result;
}

unint64_t sub_1BBBCFE28()
{
  result = qword_1EBC9A9B8;
  if (!qword_1EBC9A9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A9B8);
  }

  return result;
}

unint64_t sub_1BBBCFE80()
{
  result = qword_1EBC9A9C0;
  if (!qword_1EBC9A9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A9C0);
  }

  return result;
}

unint64_t sub_1BBBCFED8()
{
  result = qword_1EBC9A9C8;
  if (!qword_1EBC9A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A9C8);
  }

  return result;
}

unint64_t sub_1BBBCFF30()
{
  result = qword_1EBC9A9D0;
  if (!qword_1EBC9A9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A9D0);
  }

  return result;
}

unint64_t sub_1BBBCFF88()
{
  result = qword_1EBC9A9D8;
  if (!qword_1EBC9A9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A9D8);
  }

  return result;
}

unint64_t sub_1BBBCFFE0()
{
  result = qword_1EBC9A9E0;
  if (!qword_1EBC9A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A9E0);
  }

  return result;
}

unint64_t sub_1BBBD0038()
{
  result = qword_1EBC9A9E8;
  if (!qword_1EBC9A9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A9E8);
  }

  return result;
}

unint64_t sub_1BBBD0090()
{
  result = qword_1EBC9A9F0;
  if (!qword_1EBC9A9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A9F0);
  }

  return result;
}

unint64_t sub_1BBBD00E8()
{
  result = qword_1EBC9A9F8;
  if (!qword_1EBC9A9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A9F8);
  }

  return result;
}

unint64_t sub_1BBBD0140()
{
  result = qword_1EBC9AA00;
  if (!qword_1EBC9AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AA00);
  }

  return result;
}

unint64_t sub_1BBBD0198()
{
  result = qword_1EBC9AA08;
  if (!qword_1EBC9AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AA08);
  }

  return result;
}

unint64_t sub_1BBBD01F0()
{
  result = qword_1EBC9AA10;
  if (!qword_1EBC9AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AA10);
  }

  return result;
}

unint64_t sub_1BBBD0248()
{
  result = qword_1EBC9AA18;
  if (!qword_1EBC9AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AA18);
  }

  return result;
}

unint64_t sub_1BBBD02A0()
{
  result = qword_1EBC9AA20;
  if (!qword_1EBC9AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AA20);
  }

  return result;
}

unint64_t sub_1BBBD02F8()
{
  result = qword_1EBC9AA28;
  if (!qword_1EBC9AA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AA28);
  }

  return result;
}

unint64_t sub_1BBBD0350()
{
  result = qword_1EBC9AA30;
  if (!qword_1EBC9AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AA30);
  }

  return result;
}

unint64_t sub_1BBBD03A8()
{
  result = qword_1EBC9AA38;
  if (!qword_1EBC9AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AA38);
  }

  return result;
}

unint64_t sub_1BBBD0400()
{
  result = qword_1EBC9AA40;
  if (!qword_1EBC9AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AA40);
  }

  return result;
}

unint64_t sub_1BBBD0458()
{
  result = qword_1EBC9AA48;
  if (!qword_1EBC9AA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AA48);
  }

  return result;
}

unint64_t sub_1BBBD04B0()
{
  result = qword_1EBC9AA50;
  if (!qword_1EBC9AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AA50);
  }

  return result;
}

unint64_t sub_1BBBD0508()
{
  result = qword_1EBC9AA58;
  if (!qword_1EBC9AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AA58);
  }

  return result;
}

unint64_t sub_1BBBD0560()
{
  result = qword_1EBC9AA60;
  if (!qword_1EBC9AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AA60);
  }

  return result;
}

unint64_t sub_1BBBD05B8()
{
  result = qword_1EBC9AA68;
  if (!qword_1EBC9AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AA68);
  }

  return result;
}

unint64_t sub_1BBBD0610()
{
  result = qword_1EBC9AA70;
  if (!qword_1EBC9AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AA70);
  }

  return result;
}

unint64_t sub_1BBBD0668()
{
  result = qword_1EBC9AA78;
  if (!qword_1EBC9AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AA78);
  }

  return result;
}

unint64_t sub_1BBBD06C0()
{
  result = qword_1EBC9AA80;
  if (!qword_1EBC9AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AA80);
  }

  return result;
}

unint64_t sub_1BBBD0718()
{
  result = qword_1EBC9AA88;
  if (!qword_1EBC9AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AA88);
  }

  return result;
}

unint64_t sub_1BBBD0770()
{
  result = qword_1EBC9AA90;
  if (!qword_1EBC9AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AA90);
  }

  return result;
}

unint64_t sub_1BBBD07C8()
{
  result = qword_1EBC9AA98;
  if (!qword_1EBC9AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AA98);
  }

  return result;
}

unint64_t sub_1BBBD0820()
{
  result = qword_1EBC9AAA0;
  if (!qword_1EBC9AAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9AAA0);
  }

  return result;
}

unint64_t sub_1BBBD0878()
{
  result = qword_1EDD45BA8;
  if (!qword_1EDD45BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45BA8);
  }

  return result;
}