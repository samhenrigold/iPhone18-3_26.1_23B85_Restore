uint64_t sub_1E475DDD0()
{
  v1 = type metadata accessor for Event(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[5];
  v7 = sub_1E487732C();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v8(v0 + v3 + v1[6], v7);

  v9 = v1[11];
  v10 = sub_1E487725C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v5 + v1[15];
  v13 = type metadata accessor for Location(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = sub_1E487719C();
    (*(*(v14 - 8) + 8))(v12, v14);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t getEnumTagSinglePayload for RoundedCorner(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RoundedCorner(uint64_t result, int a2, int a3)
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

uint64_t sub_1E475E09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for TimeScalingEngine.SpatialViewParameters(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1E475E1A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E487732C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for TimeScalingEngine.SpatialViewParameters(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E475E2EC(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1E487732C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[10];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  v17 = *(*(v16 - 8) + 48);
  v18 = &a1[a3[12]];

  return v17(v18, a2, v16);
}

char *sub_1E475E518(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1E487732C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[10];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  v17 = *(*(v16 - 8) + 56);
  v18 = &v5[a4[12]];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1E475E798()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BA18, &unk_1E487AC60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BA10, &qword_1E487AC58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BA08, &qword_1E487AC50);
  v0 = sub_1E4773680(&qword_1EE2B0E50, &qword_1ECF7BA08, &qword_1E487AC50, MEMORY[0x1E69859E0]);
  sub_1E477A374(v0, v1, v2);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E475E8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CalendarEventsTimelineEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E475E9C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CalendarEventsTimelineEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E475EAE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E4877EAC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E475EB44(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v11 = *(a1 + a3[6]);
    if (v11 >= 2)
    {
      return v11 - 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[10];

  return v18(v19, a2, v17);
}

uint64_t sub_1E475ED28(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[6]) = a2 + 1;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[10];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1E475EF10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BAD0, &qword_1E487AFE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E475EF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E487719C();
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

uint64_t sub_1E475F050(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E487719C();
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

uint64_t sub_1E475F10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Event(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E475F23C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Event(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E475F38C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB48, &qword_1E487B148);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E475F440(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E487736C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_1E475F4EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1E487736C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E475F590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ColorBarView.Styling(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
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

uint64_t sub_1E475F6A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ColorBarView.Styling(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E475F7C0()
{
  v1 = type metadata accessor for ColorBarView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(type metadata accessor for ColorBarView.Styling(0) + 40);
  v6 = sub_1E487736C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1E4877CCC();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1E475F94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E475FA7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E487732C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E475FBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E475FCF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E487732C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E475FE28()
{
  v1 = type metadata accessor for MultiDaySpatialView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_1E487732C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1E487753C();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E475FFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E487732C();
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

uint64_t sub_1E4760064(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E487732C();
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

uint64_t sub_1E4760164()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E47601E4()
{
  v1 = (type metadata accessor for DayGroup(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_1E487732C();
  (*(*(v6 - 8) + 8))(v5, v6);

  sub_1E477A484(*(v5 + v1[11]), *(v5 + v1[11] + 8));

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1E476037C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for Event(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1E47604E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = type metadata accessor for Event(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E47606B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BE88, &qword_1E487BCE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BE80, &qword_1E487BCE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BE78, &qword_1E487BCD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BE70, &qword_1E487BCD0);
  v0 = sub_1E4773680(&qword_1EE2B0E60, &qword_1ECF7BE70, &qword_1E487BCD0, MEMORY[0x1E69859E0]);
  sub_1E477A374(v0, v1, v2);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E476082C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CalendarEventsTimelineEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E4760928(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CalendarEventsTimelineEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void *sub_1E4760A38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1E478E700(a2, a3, a4);
  result = sub_1E4877F2C();
  *a1 = v6;
  return result;
}

uint64_t sub_1E4760B0C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1E4760C98(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1E487732C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E4760E24()
{
  EventContentView = type metadata accessor for RectangularNextEventContentView(0);
  v2 = *(*(EventContentView - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(EventContentView - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_1E487732C();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = EventContentView[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1E487753C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = EventContentView[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1E4877CCC();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  sub_1E477A484(*(v5 + EventContentView[10]), *(v5 + EventContentView[10] + 8));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E4761040(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1E487719C();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1E4761174(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = sub_1E487719C();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1E47612A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for Event(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_7;
  }

  v11 = sub_1E487719C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[9] + 56);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1E4761408(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = type metadata accessor for Event(0);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      result = sub_1E487719C();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9] + 56) = (a2 - 1);
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[7];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

uint64_t sub_1E4761564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4877CCC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40) + 56);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1E4761628(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E4877CCC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40) + 56) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E47617A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for RectangularNextEventContentView.RedactionProvider(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = *(*v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = (((((v7 + *(*v5 + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v4 + v7;
  sub_1E477A484(*(v4 + v7), *(v4 + v7 + 8));
  v10 = v5[11];
  v11 = sub_1E4877CCC();
  (*(*(v11 - 8) + 8))(v9 + v10, v11);

  return MEMORY[0x1EEE6BDD0](v4, v8 + 16, v6 | 7);
}

uint64_t sub_1E476198C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C168, &qword_1E487C710);
  sub_1E487804C();
  sub_1E4773680(&qword_1EE2B1620, &qword_1ECF7C168, &qword_1E487C710, MEMORY[0x1E697E370]);
  return swift_getWitnessTable();
}

uint64_t sub_1E4761A38()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C1D8, &unk_1E487C788);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C1D0, &qword_1E487C780);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C1C8, &qword_1E487C778);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C1C0, &qword_1E487C770);
  v0 = sub_1E4773680(&qword_1EE2B0E40, &qword_1ECF7C1C0, &qword_1E487C770, MEMORY[0x1E6985A00]);
  sub_1E477A374(v0, v1, v2);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E4761BB0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for CalendarDateTimelineEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 > 1)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1E4761D38(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for CalendarDateTimelineEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1E4761EC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C1E0, &qword_1E487C868);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4761F34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C1F0, &qword_1E487C878);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E476215C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Event(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E47621C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Event(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4762238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Event(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for CellDisplayContext(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E4762328(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Event(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for CellDisplayContext(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E4762424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Event(0);
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
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1E47624DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Event(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1E47625E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for Event(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return v14 - 1;
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

uint64_t sub_1E47626F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Event(0);
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

uint64_t sub_1E476282C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for CellDisplayContext(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[8]];

  return v16(v17, a2, v15);
}

char *sub_1E4762A04(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for CellDisplayContext(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[8]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E4762C28()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_1E4762C5C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_id);
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
}

uint64_t sub_1E4762C78(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_id);
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1E4762CC8()
{
  v1 = sub_1E487732C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E4762D50@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v3);
  result = (*(v4 + 24))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1E4762DA8()
{
  v1 = sub_1E487732C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E4762E9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E47CDCB4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E4762EC8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1E4762F84(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4763090(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Event(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for CellDisplayContext(0);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
      if (*(*(v14 - 8) + 84) == a2)
      {
        v8 = v14;
        v12 = *(v14 - 8);
        v13 = a3[6];
      }

      else
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
        if (*(*(v15 - 8) + 84) == a2)
        {
          v8 = v15;
          v12 = *(v15 - 8);
          v13 = a3[7];
        }

        else
        {
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
          if (*(*(v16 - 8) + 84) != a2)
          {
            v18 = *(a1 + a3[9] + 8);
            if (v18 > 1)
            {
              return (v18 ^ 0xFF) + 1;
            }

            else
            {
              return 0;
            }
          }

          v8 = v16;
          v12 = *(v16 - 8);
          v13 = a3[8];
        }
      }
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1E4763298(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Event(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for CellDisplayContext(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[7];
        }

        else
        {
          result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[9] + 8) = -a2;
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[8];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E47634D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E476355C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Event(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_1E487732C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  if (a2 == 254)
  {
    v18 = *(a1 + a3[9] + 8);
    if (v18 > 1)
    {
      return (v18 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[10];
    goto LABEL_11;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  v21 = *(*(v20 - 8) + 48);
  v22 = a1 + a3[11];

  return v21(v22, a2, v20);
}

uint64_t sub_1E4763828(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Event(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1E487732C();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  if (a3 == 254)
  {
    *(a1 + a4[9] + 8) = -a2;
    return result;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[10];
    goto LABEL_11;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[11];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_1E4763B74(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E487732C();
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

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[10];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[11];
    goto LABEL_11;
  }

  v17 = sub_1E48783DC();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[14];

  return v18(v19, a2, v17);
}

uint64_t sub_1E4763D48(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1E487732C();
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

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[10];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[11];
    goto LABEL_9;
  }

  v17 = sub_1E48783DC();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[14];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1E4763F1C()
{
  v1 = type metadata accessor for NarrowMultidayEventsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_1E487732C();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  sub_1E477A484(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v7 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1E487893C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1E4877B3C();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v1[14];
  v12 = sub_1E48783DC();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E4764178(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1E487732C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[15];

  return v15(v16, a2, v14);
}

uint64_t sub_1E47642FC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1E487732C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[15];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E4764480(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for DayEvents(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[9];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[11];
    goto LABEL_9;
  }

  if (a2 == 2147483646)
  {
    v17 = *(a1 + a3[13] + 32);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  else
  {
    v19 = sub_1E48783DC();
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + a3[15];

    return v20(v21, a2, v19);
  }
}

uint64_t sub_1E47646AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1E487732C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for DayEvents(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[11];
    goto LABEL_9;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[13] + 32) = a2;
  }

  else
  {
    v18 = sub_1E48783DC();
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + a4[15];

    return v19(v20, a2, a2, v18);
  }

  return result;
}

uint64_t sub_1E476494C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1E4764A08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4764AE4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Event(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for CellDisplayContext(0);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
      if (*(*(v14 - 8) + 84) == a2)
      {
        v8 = v14;
        v12 = *(v14 - 8);
        v13 = a3[6];
      }

      else
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
        if (*(*(v15 - 8) + 84) == a2)
        {
          v8 = v15;
          v12 = *(v15 - 8);
          v13 = a3[7];
        }

        else
        {
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
          if (*(*(v16 - 8) + 84) != a2)
          {
            v18 = *(a1 + a3[9] + 8);
            if (v18 > 1)
            {
              return (v18 ^ 0xFF) + 1;
            }

            else
            {
              return 0;
            }
          }

          v8 = v16;
          v12 = *(v16 - 8);
          v13 = a3[8];
        }
      }
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1E4764CEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Event(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for CellDisplayContext(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[7];
        }

        else
        {
          result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[9] + 8) = -a2;
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[8];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E4764F70(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Event(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_1E487732C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 254)
  {
    v15 = *(a1 + a3[6]);
    if (v15 >= 2)
    {
      return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_5;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_5;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[12];

  return v20(v21, a2, v19);
}

uint64_t sub_1E47651F8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Event(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1E487732C();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6]) = a2 + 1;
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[9];
    goto LABEL_5;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[10];
    goto LABEL_5;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[12];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_1E47654A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Event(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_1E487732C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[8];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[9];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1E4765674(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Event(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1E487732C();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1E4765848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Event(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E4765978(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Event(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E4765B14(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Event(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[11];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1E4765C48(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for Event(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[11];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1E4765D7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E4877E2C();
  *a1 = result;
  return result;
}

uint64_t sub_1E4765DF4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1E48783DC();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[8];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1E4765F28(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = sub_1E48783DC();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1E476605C()
{
  v1 = type metadata accessor for AllDayCirclesView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1E4877B3C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 32);
  v9 = sub_1E48783DC();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1E47661FC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for Event(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_1E4766380(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Event(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E476650C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1E48783DC();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E4766630(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E487732C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1E48783DC();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E4766754()
{
  v1 = (type metadata accessor for WideMultidayEventsView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1E487732C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[10];
  v7 = sub_1E48783DC();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E4766884()
{
  v1 = sub_1E487732C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 72, v3 | 7);
}

uint64_t sub_1E476698C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDB8, &unk_1E487F890);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[12] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_1E4766B50(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1E487732C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDB8, &unk_1E487F890);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[12] + 8) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[8];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E4766D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E487732C();
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

uint64_t sub_1E4766E10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E487732C();
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

uint64_t sub_1E4766EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E4766FF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E487732C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E4767140(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDB8, &unk_1E487F890);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[8];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[9] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1E47672B0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1E487732C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDB8, &unk_1E487F890);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[8];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E4767478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E487732C();
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

uint64_t sub_1E4767534(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E487732C();
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

uint64_t sub_1E47675EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFA8, &qword_1E487FBA0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E47676E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E487732C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFA8, &qword_1E487FBA0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E47677F0(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[12]];

  return v15(v16, a2, v14);
}

char *sub_1E4767980(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[12]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E4767B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E4767C88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E487732C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E4767DE4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[9];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1E4767F70(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1E487732C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E4768144(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1E487732C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[10]];

  return v15(v16, a2, v14);
}

char *sub_1E47682C8(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1E487732C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[10]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E476844C()
{
  EventContentView = type metadata accessor for InlineNextEventContentView(0);
  v2 = *(*(EventContentView - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(EventContentView - 1) + 64);
  v5 = v0 + v3;

  v6 = EventContentView[5];
  v7 = sub_1E487732C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  v8 = EventContentView[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1E487753C();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = EventContentView[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877CCC();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E476863C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E4768684(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1E4768740(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E47687F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E487736C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_1E487719C();
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

uint64_t sub_1E476890C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E487736C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1E487719C();
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

uint64_t sub_1E4768A14()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D348, &unk_1E4880DD0);
  sub_1E4816980();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E4768A78()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D3C8, &unk_1E4880FD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D3C0, &qword_1E4880FD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D3B8, &qword_1E4880FC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D3B0, &qword_1E4880FC0);
  v0 = sub_1E4773680(&qword_1EE2B0E48, &qword_1ECF7D3B0, &qword_1E4880FC0, MEMORY[0x1E6985A00]);
  sub_1E477A374(v0, v1, v2);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E4768BF0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for CalendarDateTimelineEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D3D0, &qword_1E4881050);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  if (a2 == 254)
  {
    v17 = *(a1 + a3[8] + 8);
    if (v17 > 1)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[9];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_1E4768E20(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for CalendarDateTimelineEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D3D0, &qword_1E4881050);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  if (a3 == 254)
  {
    *(a1 + a4[8] + 8) = -a2;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + a4[9];

    return v19(v20, a2, a2, v18);
  }

  return result;
}

uint64_t sub_1E4769054(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D3E0, &qword_1E48810C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1E4769110@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1E48218D4(a2, a3, a4);
  result = sub_1E4877F2C();
  *a1 = v6;
  return result;
}

uint64_t sub_1E47691A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1E4769330(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1E487732C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E47694E0()
{
  v1 = type metadata accessor for MediumListContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_1E487732C();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1E4877F9C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_1E477A484(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  v9 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1E487893C();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E4769750(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 > 1)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1E47698E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1E4769A7C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E487732C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1E4769BAC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1E487732C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E4769D50(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1E487732C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[10];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  v17 = *(*(v16 - 8) + 48);
  v18 = &a1[a3[12]];

  return v17(v18, a2, v16);
}

char *sub_1E4769F7C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1E487732C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[10];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  v17 = *(*(v16 - 8) + 56);
  v18 = &v5[a4[12]];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1E476A1C4()
{
  v1 = type metadata accessor for NarrowConflictsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[5];
  v7 = sub_1E487732C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1E487894C();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877CCC();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  sub_1E477A484(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v12 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487893C();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
  }

  v14 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1E4877B3C();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E476A4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Event(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E476A5D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Event(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E476A70C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E476A758()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D588, &unk_1E4881DB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D580, &qword_1E4881DB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D578, &qword_1E4881DA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D570, &qword_1E4881DA0);
  v0 = sub_1E4773680(&qword_1EE2B0E58, &qword_1ECF7D570, &qword_1E4881DA0, MEMORY[0x1E69859E0]);
  sub_1E477A374(v0, v1, v2);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E476A8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CalendarEventsTimelineEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E476A9CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CalendarEventsTimelineEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E476AB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
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

uint64_t sub_1E476ABF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
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

uint64_t sub_1E476ACBC()
{
  v1 = *(type metadata accessor for ConflictColorBarView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1E4877B3C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E476AE2C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Event(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for CellDisplayContext(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  if (a2 == 254)
  {
    v18 = *(a1 + a3[9] + 8);
    if (v18 > 1)
    {
      return (v18 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + a3[10];

    return v20(v21, a2, v19);
  }
}

uint64_t sub_1E476B0A4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Event(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for CellDisplayContext(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  if (a3 == 254)
  {
    *(a1 + a4[9] + 8) = -a2;
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
    v20 = *(*(v19 - 8) + 56);
    v21 = a1 + a4[10];

    return v20(v21, a2, a2, v19);
  }

  return result;
}

uint64_t sub_1E476B394@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4877E4C();
  *a1 = result;
  return result;
}

uint64_t sub_1E476B3EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4877DBC();
  *a1 = result;
  return result;
}

uint64_t sub_1E476B444@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E4877EEC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E476B4D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E476B51C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[7];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[8];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[9]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1E476B63C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[9]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[8];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1E476B758()
{
  v1 = type metadata accessor for TimelineHoursView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_1E477A484(*(v0 + v4 + 16), *(v0 + v4 + 24));
  v6 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1E487753C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1E4877CCC();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_1E476B900(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E487732C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v7 = v13;
    v8 = *(v13 - 8);
    v9 = a3[8];
    goto LABEL_3;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v7 = v14;
    v8 = *(v14 - 8);
    v9 = a3[9];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[10];

  return v16(v17, a2, v15);
}

uint64_t sub_1E476BAE8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1E487732C();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 254)
  {
    *(a1 + a4[7]) = a2 + 1;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_3;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E476BCD8()
{
  v1 = type metadata accessor for SpatialGridView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = v1[6];
  v7 = sub_1E487732C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1E487753C();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877B3C();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  v12 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877CCC();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E476BF18(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[11]];

  return v15(v16, a2, v14);
}

char *sub_1E476C0A8(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[11]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E476C27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1E476C398(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E487732C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E476C4B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0F8, &qword_1E4880020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E476C524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DayEvents(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E476C5E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DayEvents(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E476C6C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[10];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1E476C854(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1E487732C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[10];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E476CA3C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1E476CBC8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1E487732C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E476CD64(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1E476CE20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E476CED0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_1E487732C();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[7]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    EventContentViewModel = type metadata accessor for CircularNextEventContentViewModel(0);
    v15 = *(*(EventContentViewModel - 8) + 48);
    v16 = a1 + a3[8];

    return v15(v16, a2, EventContentViewModel);
  }
}

uint64_t sub_1E476D04C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = sub_1E487732C();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    EventContentViewModel = type metadata accessor for CircularNextEventContentViewModel(0);
    v15 = *(*(EventContentViewModel - 8) + 56);
    v16 = a1 + a4[8];

    return v15(v16, a2, a2, EventContentViewModel);
  }

  return result;
}

uint64_t sub_1E476D1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  EventContentViewModel = type metadata accessor for CircularNextEventContentViewModel(0);
  v12 = *(EventContentViewModel - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = EventContentViewModel;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1E476D2E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for CircularNextEventContentViewModel(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E476D448()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7DA98, &qword_1E4883438);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7DA90, &qword_1E4883430);
  sub_1E4855A4C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E476D53C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E476D584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Event(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for ColorBarView.Styling(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E476D674(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Event(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for ColorBarView.Styling(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E476D7B0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1E476D86C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E476D924()
{
  v1 = (type metadata accessor for TextStringThatFits(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1E4877CCC();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E476DAA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBF8, &qword_1E4883930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E476DB14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBF8, &qword_1E4883930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E476DBC0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mirrorCalendarApp];
  *a2 = result;
  return result;
}

id sub_1E476DC40@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 hideAllDayEvents];
  *a2 = result;
  return result;
}

uint64_t sub_1E476DC90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___EKUICalendarsIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E476DCE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___EKUICalendarsIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_1E476DD44@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mirrorCalendarApp];
  *a2 = result;
  return result;
}

uint64_t sub_1E476DDC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E476DE1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1E476DE80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E476DED8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E476DF68(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E476DF88(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1E476DFDC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Event(0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  if (v9)
  {
    sub_1E47707EC(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v9 == 1)
    {
      sub_1E4771108(&v8[*(v5 + 44)], a3);
      return sub_1E47710AC(v8);
    }

    else
    {
      sub_1E4877A6C();
      sub_1E47710AC(v8);
      v13 = sub_1E487725C();
      return (*(*(v13 - 8) + 56))(a3, 0, 1, v13);
    }
  }

  else
  {
    sub_1E4877A6C();
    v11 = sub_1E487725C();
    v12 = *(*(v11 - 8) + 56);

    return v12(a3, 0, 1, v11);
  }
}

uint64_t sub_1E476E19C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Event(0);
  v5 = v4 - 8;
  v30 = *(v4 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4877B3C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  if (*(a1 + *(v5 + 64)) - 3 > 1)
  {
    v32 = sub_1E487863C();
    v17 = a2;
    v18 = *(v9 + 16);
    v29 = v17;
    v18(v14);
    v19 = (*(v9 + 88))(v14, v8);
    if (v19 == *MEMORY[0x1E697DBC0])
    {
      v20 = 1;
    }

    else if (v19 == *MEMORY[0x1E697DBB0])
    {
      v20 = 2;
    }

    else
    {
      (*(v9 + 8))(v14, v8);
      v20 = 0;
    }

    v21 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
    sub_1E47707EC(a1, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (v18)(v12, v29, v8);
    v22 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v23 = (v6 + *(v9 + 80) + v22) & ~*(v9 + 80);
    v24 = swift_allocObject();
    sub_1E4770850(v7, v24 + v22);
    (*(v9 + 32))(v24 + v23, v12, v8);
    *(v24 + ((v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = &v32;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1E47716D8;
    *(v25 + 24) = v24;
    aBlock[4] = sub_1E4771954;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E476E894;
    aBlock[3] = &block_descriptor_79;
    v26 = _Block_copy(aBlock);

    [v21 performAsCurrentTraitCollection_];

    _Block_release(v26);
    LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

    if (v26)
    {
      __break(1u);
    }

    else
    {
      v27 = v32;

      return v27;
    }
  }

  else
  {
    v15 = CUIKDeclinedEventBackgroundColor();

    return sub_1E48785FC();
  }

  return result;
}

uint64_t sub_1E476E5B0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_1E4877B3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E487861C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + *(type metadata accessor for Event(0) + 56));
  if ((v14 - 3) < 2)
  {
    (*(v11 + 104))(v13, *MEMORY[0x1E69814D0], v10);
    sub_1E487871C();
LABEL_6:
    sub_1E477090C();
    v15 = sub_1E4878E0C();
    goto LABEL_7;
  }

  if ((v14 - 6) > 1)
  {

    goto LABEL_6;
  }

  v15 = [objc_opt_self() whiteColor];
LABEL_7:
  v16 = v15;
  (*(v7 + 16))(v9, a2, v6);
  v17 = (*(v7 + 88))(v9, v6);
  if (v17 == *MEMORY[0x1E697DBC0] || v17 == *MEMORY[0x1E697DBB0])
  {
    v18 = v16;
  }

  else
  {
    v19 = *(v7 + 8);
    v20 = v16;
    v19(v9, v6);
  }

  v21 = CUIKAdjustedColorForColor();

  v22 = CUIKBackgroundColorForCalendarColorWithOpaqueForStyle();
  v23 = sub_1E48785FC();

  *a3 = v23;
}

uint64_t sub_1E476E8BC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1E487861C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for Event(0) + 56)) - 3 > 1)
  {
  }

  else
  {
    (*(v6 + 104))(v8, *MEMORY[0x1E69814D0], v5);
    sub_1E487871C();
  }

  sub_1E477090C();
  v9 = sub_1E4878E0C();
  v10 = CUIKAdjustedColorForColor();
  v11 = sub_1E48785FC();

  *a3 = v11;
}

uint64_t sub_1E476EA20(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v3 = type metadata accessor for Event(0);
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4877B3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v28 = sub_1E487863C();
  v13 = *(v7 + 16);
  v13(v12, a2, v6);
  v14 = (*(v7 + 88))(v12, v6);
  if (v14 == *MEMORY[0x1E697DBC0])
  {
    v15 = 1;
  }

  else if (v14 == *MEMORY[0x1E697DBB0])
  {
    v15 = 2;
  }

  else
  {
    (*(v7 + 8))(v12, v6);
    v15 = 0;
  }

  v16 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  sub_1E47707EC(v26, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13(v10, a2, v6);
  v17 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v18 = (v4 + *(v7 + 80) + v17) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_1E4770850(v5, v19 + v17);
  (*(v7 + 32))(v19 + v18, v10, v6);
  *(v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = &v28;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1E4770958;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1E4771954;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E476E894;
  aBlock[3] = &block_descriptor_20;
  v21 = _Block_copy(aBlock);

  [v16 performAsCurrentTraitCollection_];

  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    v23 = v28;

    return v23;
  }

  return result;
}

uint64_t sub_1E476EDDC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v20 = a3;
  v5 = sub_1E487861C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4877B3C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + *(type metadata accessor for Event(0) + 56));
  (*(v10 + 16))(v12, a2, v9);
  v14 = (*(v10 + 88))(v12, v9);
  if (v14 != *MEMORY[0x1E697DBC0] && v14 != *MEMORY[0x1E697DBB0])
  {
    (*(v10 + 8))(v12, v9);
  }

  if ((v13 - 3) > 1)
  {
  }

  else
  {
    (*(v6 + 104))(v8, *MEMORY[0x1E69814D0], v5);
    sub_1E487871C();
  }

  sub_1E477090C();
  v15 = sub_1E4878E0C();
  v16 = CUIKOccurrenceTextColor();
  v17 = sub_1E48785FC();

  *v20 = v17;
}

id sub_1E476F0D0(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v3 = type metadata accessor for Event(0);
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4877B3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v28 = [objc_opt_self() systemRedColor];
  v13 = *(v7 + 16);
  v13(v12, a2, v6);
  v14 = (*(v7 + 88))(v12, v6);
  if (v14 == *MEMORY[0x1E697DBC0])
  {
    v15 = 1;
  }

  else if (v14 == *MEMORY[0x1E697DBB0])
  {
    v15 = 2;
  }

  else
  {
    (*(v7 + 8))(v12, v6);
    v15 = 0;
  }

  v16 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  sub_1E47707EC(v26, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13(v10, a2, v6);
  v17 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v18 = (v4 + *(v7 + 80) + v17) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_1E4770850(v5, v19 + v17);
  (*(v7 + 32))(v19 + v18, v10, v6);
  *(v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = &v28;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1E47708B4;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1E47708CC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E476E894;
  aBlock[3] = &block_descriptor;
  v21 = _Block_copy(aBlock);

  [v16 performAsCurrentTraitCollection_];

  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    v23 = v28;

    return v23;
  }

  return result;
}

void sub_1E476F4A8(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = sub_1E4877B3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E487861C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for Event(0) + 56)) - 3 > 1)
  {
  }

  else
  {
    (*(v11 + 104))(v13, *MEMORY[0x1E69814D0], v10);
    sub_1E487871C();
  }

  sub_1E477090C();
  v14 = sub_1E4878E0C();
  (*(v7 + 16))(v9, a2, v6);
  v15 = (*(v7 + 88))(v9, v6);
  if (v15 != *MEMORY[0x1E697DBC0] && v15 != *MEMORY[0x1E697DBB0])
  {
    (*(v7 + 8))(v9, v6);
  }

  v16 = CUIKOccurrenceSecondaryTextColor();

  v17 = *a3;
  *a3 = v16;
}

id sub_1E476F76C(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v3 = type metadata accessor for Event(0);
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4877B3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v29 = [objc_opt_self() redColor];
  v13 = *(v7 + 16);
  v13(v12, a2, v6);
  v14 = (*(v7 + 88))(v12, v6);
  if (v14 == *MEMORY[0x1E697DBC0])
  {
    v15 = 1;
  }

  else if (v14 == *MEMORY[0x1E697DBB0])
  {
    v15 = 2;
  }

  else
  {
    (*(v7 + 8))(v12, v6);
    v15 = 0;
  }

  v16 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  sub_1E47707EC(v27, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13(v10, a2, v6);
  v17 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v18 = (v4 + *(v7 + 80) + v17) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_1E4770850(v5, v19 + v17);
  (*(v7 + 32))(v19 + v18, v10, v6);
  *(v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = &v29;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1E47711D8;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1E4771954;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E476E894;
  aBlock[3] = &block_descriptor_69;
  v21 = _Block_copy(aBlock);

  [v16 performAsCurrentTraitCollection_];

  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    v23 = [v29 CGColor];
    v24 = v29;

    return v23;
  }

  return result;
}

void sub_1E476FB64(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = sub_1E4877B3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E487861C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for Event(0) + 56)) - 3 > 1)
  {
  }

  else
  {
    (*(v11 + 104))(v13, *MEMORY[0x1E69814D0], v10);
    sub_1E487871C();
  }

  sub_1E477090C();
  v14 = sub_1E4878E0C();
  (*(v7 + 16))(v9, a2, v6);
  v15 = (*(v7 + 88))(v9, v6);
  if (v15 != *MEMORY[0x1E697DBC0] && v15 != *MEMORY[0x1E697DBB0])
  {
    (*(v7 + 8))(v9, v6);
  }

  v16 = CUIKAdjustedColorForColor();
  v17 = CUIKBackgroundColorForCalendarColorWithOpaqueForStyle();

  v18 = *a3;
  *a3 = v17;
}

id sub_1E476FE00(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v3 = type metadata accessor for Event(0);
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4877B3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v29 = [objc_opt_self() redColor];
  v13 = *(v7 + 16);
  v13(v12, a2, v6);
  v14 = (*(v7 + 88))(v12, v6);
  if (v14 == *MEMORY[0x1E697DBC0])
  {
    v15 = 1;
  }

  else if (v14 == *MEMORY[0x1E697DBB0])
  {
    v15 = 2;
  }

  else
  {
    (*(v7 + 8))(v12, v6);
    v15 = 0;
  }

  v16 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  sub_1E47707EC(v27, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13(v10, a2, v6);
  v17 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v18 = (v4 + *(v7 + 80) + v17) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_1E4770850(v5, v19 + v17);
  (*(v7 + 32))(v19 + v18, v10, v6);
  *(v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = &v29;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1E47711C0;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1E4771954;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E476E894;
  aBlock[3] = &block_descriptor_59;
  v21 = _Block_copy(aBlock);

  [v16 performAsCurrentTraitCollection_];

  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    v23 = [v29 CGColor];
    v24 = v29;

    return v23;
  }

  return result;
}

void sub_1E47701F8(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = sub_1E4877B3C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v13 = sub_1E487861C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for Event(0) + 56)) - 3 > 1)
  {
  }

  else
  {
    (*(v14 + 104))(v16, *MEMORY[0x1E69814D0], v13);
    sub_1E487871C();
  }

  sub_1E477090C();
  v17 = sub_1E4878E0C();
  (*(v7 + 16))(v12, a2, v6);
  v18 = (*(v7 + 88))(v12, v6);
  v19 = *MEMORY[0x1E697DBB0];
  if (v18 != *MEMORY[0x1E697DBC0] && v18 != v19)
  {
    (*(v7 + 8))(v12, v6);
  }

  v20 = CUIKAdjustedColorForColor();
  (*(v7 + 104))(v10, v19, v6);
  v21 = sub_1E4877B2C();
  (*(v7 + 8))(v10, v6);
  if (v21)
  {
    v22 = CUIKColorDarkenedToPercentageWithFinalAlpha();
  }

  else
  {
    v22 = CUIKLightStripeColorForColor();
  }

  v23 = v22;

  v24 = *a3;
  *a3 = v23;
}

uint64_t sub_1E477050C()
{
  v0 = sub_1E4878BDC();
  v1 = MEMORY[0x1E69192F0](v0);

  return v1;
}

uint64_t sub_1E4770548(uint64_t a1)
{
  sub_1E4878BDC();
  sub_1E4878C0C();
}

uint64_t sub_1E477059C(uint64_t a1)
{
  sub_1E4878BDC();
  sub_1E487914C();
  sub_1E4878C0C();
  v1 = sub_1E487917C();

  return v1;
}

uint64_t sub_1E4770618(uint64_t a1, id *a2)
{
  result = sub_1E4878BBC();
  *a2 = 0;
  return result;
}

uint64_t sub_1E4770690(uint64_t a1, id *a2)
{
  v3 = sub_1E4878BCC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1E4770710@<X0>(uint64_t *a2@<X8>)
{
  sub_1E4878BDC();
  v3 = sub_1E4878B9C();

  *a2 = v3;
  return result;
}

void *sub_1E4770754@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1E4770764(void *a1, uint64_t *a2)
{
  v2 = sub_1E4878BDC();
  v4 = v3;
  if (v2 == sub_1E4878BDC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1E48790EC();
  }

  return v7 & 1;
}

uint64_t sub_1E47707EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Event(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4770850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Event(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1E477090C()
{
  result = qword_1EE2B0D30;
  if (!qword_1EE2B0D30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2B0D30);
  }

  return result;
}

uint64_t sub_1E4770970@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1E4878B9C();

  *a2 = v3;
  return result;
}

uint64_t sub_1E47709B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4878BDC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E47709E4(uint64_t a1)
{
  v2 = sub_1E47718C4(&qword_1EE2B0D70, &unk_1E487A460);
  v3 = sub_1E47718C4(&qword_1ECF7B6A8, &unk_1E487A3B4);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1E4770A7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Event(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v45 = v6;
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4877B3C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - v13;
  v15 = sub_1E487861C();
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v4 + 56);
  v46 = a1;
  v20 = *(a1 + v19);
  if ((v20 - 3) > 1)
  {
    v43 = v5;
    v44 = v7;
    v41 = v20;
    v40 = v4;
    v22 = *(v9 + 16);
    v42 = a2;
    v22(v14, a2, v8);
    v23 = *(v9 + 88);
    v24 = v23(v14, v8);
    v25 = *MEMORY[0x1E697DBC0];
    v26 = MEMORY[0x1E697DBB0];
    if (v24 == *MEMORY[0x1E697DBC0])
    {
      v27 = 1;
    }

    else if (v24 == *MEMORY[0x1E697DBB0])
    {
      v27 = 2;
    }

    else
    {
      (*(v9 + 8))(v14, v8);
      v27 = 0;
    }

    v48 = sub_1E487863C();
    v22(v12, v42, v8);
    v28 = v23(v12, v8);
    if (v28 == v25)
    {
      v29 = 1;
      v30 = v44;
    }

    else
    {
      v30 = v44;
      if (v28 == *v26)
      {
        v29 = 2;
      }

      else
      {
        (*(v9 + 8))(v12, v8);
        v29 = 0;
      }
    }

    v31 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
    v32 = v46;
    sub_1E47707EC(v46, v30);
    v33 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v34 = (v45 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    sub_1E4770850(v30, v35 + v33);
    *(v35 + v34) = v27;
    *(v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v48;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1E4770FB8;
    *(v36 + 24) = v35;
    aBlock[4] = sub_1E4771954;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E476E894;
    aBlock[3] = &block_descriptor_30;
    v37 = _Block_copy(aBlock);

    [v31 performAsCurrentTraitCollection_];

    _Block_release(v37);
    LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

    if (v37)
    {
      __break(1u);
    }

    else
    {
      if (v41 == 7 && (*(v32 + *(v40 + 76)) & 1) == 0)
      {

        v39 = sub_1E48786DC();
      }

      else
      {
        v38 = v48;

        v39 = v38;
      }

      return v39;
    }
  }

  else
  {
    (*(v16 + 104))(v18, *MEMORY[0x1E69814D0]);
    return sub_1E487871C();
  }

  return result;
}

uint64_t sub_1E4770FB8()
{
  v1 = *(type metadata accessor for Event(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E476E8BC(v0 + v2, v4, v5);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1E47710AC(uint64_t a1)
{
  v2 = type metadata accessor for Event(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4771108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

id sub_1E4771220(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_1E4877B3C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2(v6);
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 88))(v8, v4);
  if (v10 == *MEMORY[0x1E697DBC0])
  {
    v11 = 1;
  }

  else if (v10 == *MEMORY[0x1E697DBB0])
  {
    v11 = 2;
  }

  else
  {
    (*(v5 + 8))(v8, v4);
    v11 = 0;
  }

  v12 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v13 = [v9 resolvedColorWithTraitCollection_];

  v14 = [v13 CGColor];
  return v14;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for Event(0);
  v2 = *(*(v1 - 1) + 80);
  v18 = *(*(v1 - 1) + 64);
  v19 = sub_1E4877B3C();
  v3 = *(v19 - 8);
  v4 = *(v3 + 80);
  v17 = *(v3 + 64);
  v5 = v0 + ((v2 + 16) & ~v2);

  v6 = v1[5];
  v7 = sub_1E487732C();
  v8 = *(*(v7 - 8) + 8);
  v8(v5 + v6, v7);
  v8(v5 + v1[6], v7);

  v9 = v1[11];
  v10 = sub_1E487725C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v5 + v1[15];
  v13 = type metadata accessor for Location(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = sub_1E487719C();
    (*(*(v14 - 8) + 8))(v12, v14);
  }

  v15 = (((v2 + 16) & ~v2) + v18 + v4) & ~v4;

  (*(v3 + 8))(v0 + v15, v19);

  return MEMORY[0x1EEE6BDD0](v0, ((v17 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v4 | 7);
}

uint64_t sub_1E47716F0(uint64_t (*a1)(unint64_t, unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for Event(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1E4877B3C() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v1 + v6, v7);
}

void sub_1E4771810(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1E47718C4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpatialHeaderView.Style(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SpatialHeaderView.Style(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E4771AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF7B770;
  if (!qword_1ECF7B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7B770);
  }

  return result;
}

uint64_t sub_1E4771B50()
{
  v1 = *v0;
  sub_1E487914C();
  MEMORY[0x1E6919800](v1);
  return sub_1E487917C();
}

uint64_t sub_1E4771BC4(uint64_t a1)
{
  v2 = *v1;
  sub_1E487914C();
  MEMORY[0x1E6919800](v2);
  return sub_1E487917C();
}

uint64_t type metadata accessor for SpatialHeaderView(uint64_t a1)
{
  result = qword_1EE2B3518;
  if (!qword_1EE2B3518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4771C7C(uint64_t a1)
{
  sub_1E487732C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for TimeScalingEngine.SpatialViewParameters(319);
    if (v2 <= 0x3F)
    {
      sub_1E4771D30();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E4771D30()
{
  if (!qword_1EE2B4638)
  {
    v0 = sub_1E4878E5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2B4638);
    }
  }
}

uint64_t sub_1E4771D9C@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B778, &qword_1E487A5A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v35 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B780, &qword_1E487A5A8);
  v5 = MEMORY[0x1EEE9AC00](v37);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v35 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B788, &qword_1E487A5B0);
  MEMORY[0x1EEE9AC00](v39);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B790, &qword_1E487A5B8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B798, &qword_1E487A5C0);
  MEMORY[0x1EEE9AC00](v38);
  v15 = &v35 - v14;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7A0, &qword_1E487A5C8);
  MEMORY[0x1EEE9AC00](v36);
  v17 = &v35 - v16;
  v18 = v1 + *(type metadata accessor for SpatialHeaderView(0) + 20);
  v19 = type metadata accessor for TimeScalingEngine.SpatialViewParameters(0);
  if (!*(v18 + *(v19 + 32)))
  {
    *v17 = sub_1E4877FBC();
    *(v17 + 1) = 0;
    v17[16] = 0;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7B0, &qword_1E487A5D8);
    sub_1E47722DC(v1, &v17[*(v33 + 44)]);
    v31 = &qword_1ECF7B7A0;
    v32 = &qword_1E487A5C8;
    sub_1E4773850(v17, v13, &qword_1ECF7B7A0, &qword_1E487A5C8);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B0ED0, &qword_1ECF7B7A0, &qword_1E487A5C8, MEMORY[0x1E6981868]);
    sub_1E47735C8();
    goto LABEL_5;
  }

  if (*(v18 + *(v19 + 32)) == 1)
  {
    *v4 = sub_1E4877F5C();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7A8, &qword_1E487A5D0);
    sub_1E4772C30(v1, &v4[*(v20 + 44)]);
    v21 = sub_1E487817C();
    sub_1E4877B0C();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    sub_1E477372C(v4, v7, &qword_1ECF7B778, &qword_1E487A5A0);
    v30 = &v7[*(v37 + 36)];
    *v30 = v21;
    *(v30 + 1) = v23;
    *(v30 + 2) = v25;
    *(v30 + 3) = v27;
    *(v30 + 4) = v29;
    v30[40] = 0;
    v31 = &qword_1ECF7B780;
    v32 = &qword_1E487A5A8;
    v17 = v35;
    sub_1E477372C(v7, v35, &qword_1ECF7B780, &qword_1E487A5A8);
    sub_1E4773850(v17, v13, &qword_1ECF7B780, &qword_1E487A5A8);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B0ED0, &qword_1ECF7B7A0, &qword_1E487A5C8, MEMORY[0x1E6981868]);
    sub_1E47735C8();
LABEL_5:
    sub_1E487803C();
    sub_1E4773850(v15, v10, &qword_1ECF7B798, &qword_1E487A5C0);
    swift_storeEnumTagMultiPayload();
    sub_1E47734C8();
    sub_1E487803C();
    sub_1E47738B8(v15, &qword_1ECF7B798, &qword_1E487A5C0);
    return sub_1E47738B8(v17, v31, v32);
  }

  swift_storeEnumTagMultiPayload();
  sub_1E47734C8();
  return sub_1E487803C();
}

uint64_t sub_1E47722DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NarrowAllDayView(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7B8, &qword_1E487A5E0);
  v57 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v53 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7C0, &qword_1E487A5E8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v58 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7C8, &qword_1E487A5F0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v56 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v49 - v18;
  sub_1E4878D2C();
  v55 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v19 = sub_1E4877F6C();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D0, &qword_1E487A5F8);
  sub_1E4772920(a1, &v19[*(v20 + 44)]);
  v21 = type metadata accessor for SpatialHeaderView(0);
  v22 = a1 + *(v21 + 20);
  v23 = *(v22 + *(type metadata accessor for DayEvents(0) + 24));
  v24 = 1;
  if (*(v23 + 16))
  {
    v51 = v7;
    v25 = v4[5];
    v26 = sub_1E487732C();
    (*(*(v26 - 8) + 16))(&v6[v25], v22, v26);
    v50 = *(a1 + *(v21 + 32));
    *&v6[v4[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
    swift_storeEnumTagMultiPayload();
    *&v6[v4[9]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v6[v4[10]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    *&v6[v4[12]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    v28 = swift_getKeyPath();
    *v6 = v23;
    *&v6[v4[6]] = v50;
    v6[v4[7]] = 1;
    v29 = &v6[v4[11]];
    *v29 = KeyPath;
    v7 = v51;
    v29[8] = 0;
    v30 = &v6[v4[13]];
    *v30 = v28;
    v30[8] = 0;

    v31 = sub_1E487817C();
    sub_1E4877B0C();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = v53;
    sub_1E47736C8(v6, v53);
    v41 = v40 + *(v7 + 36);
    *v41 = v31;
    *(v41 + 8) = v33;
    *(v41 + 16) = v35;
    *(v41 + 24) = v37;
    *(v41 + 32) = v39;
    *(v41 + 40) = 0;
    v42 = v40;
    v43 = v52;
    sub_1E477372C(v42, v52, &qword_1ECF7B7B8, &qword_1E487A5E0);
    v44 = v54;
    sub_1E477372C(v43, v54, &qword_1ECF7B7B8, &qword_1E487A5E0);
    v24 = 0;
  }

  else
  {
    v44 = v54;
  }

  (*(v57 + 56))(v44, v24, 1, v7);
  v45 = v56;
  sub_1E4773850(v19, v56, &qword_1ECF7B7C8, &qword_1E487A5F0);
  v46 = v58;
  sub_1E4773850(v44, v58, &qword_1ECF7B7C0, &qword_1E487A5E8);
  sub_1E4773850(v45, a2, &qword_1ECF7B7C8, &qword_1E487A5F0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F0, &qword_1E487A730);
  sub_1E4773850(v46, a2 + *(v47 + 48), &qword_1ECF7B7C0, &qword_1E487A5E8);
  sub_1E47738B8(v44, &qword_1ECF7B7C0, &qword_1E487A5E8);
  sub_1E47738B8(v19, &qword_1ECF7B7C8, &qword_1E487A5F0);
  sub_1E47738B8(v46, &qword_1ECF7B7C0, &qword_1E487A5E8);
  sub_1E47738B8(v45, &qword_1ECF7B7C8, &qword_1E487A5F0);
}

uint64_t sub_1E4772920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IconicDateHeader(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(type metadata accessor for SpatialHeaderView(0) + 20);
  v11 = sub_1E487732C();
  (*(*(v11 - 8) + 16))(v9, a1 + v10, v11);
  *&v9[v4[5]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  *&v9[v4[6]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v13 = &v9[v4[7]];
  *v13 = KeyPath;
  v13[8] = 0;
  v20 = 0x4038000000000000;
  sub_1E4773794(KeyPath, v14, v15);
  sub_1E4877B6C();
  v20 = 0x403F000000000000;
  sub_1E4877B6C();
  v20 = 0x4046000000000000;
  sub_1E4877B6C();
  v20 = 0x4024000000000000;
  sub_1E4877B6C();
  v16 = &v9[v4[12]];
  strcpy(v16, "EEEE, MMMM dd");
  *(v16 + 7) = -4864;
  sub_1E47737E8(v9, v7, type metadata accessor for IconicDateHeader);
  sub_1E47737E8(v7, a2, type metadata accessor for IconicDateHeader);
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B800, &qword_1E487A798) + 48);
  *v17 = 0;
  *(v17 + 8) = 0;
  sub_1E4773918(v9, type metadata accessor for IconicDateHeader);
  sub_1E4773918(v7, type metadata accessor for IconicDateHeader);
}

uint64_t sub_1E4772C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B808, &qword_1E487A7A0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v9 = sub_1E4877FBC();
  *(v9 + 1) = 0x4018000000000000;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B810, &qword_1E487A7A8);
  sub_1E4772DF0(a1, &v9[*(v10 + 44)]);
  sub_1E4773850(v9, v7, &qword_1ECF7B808, &qword_1E487A7A0);
  sub_1E4773850(v7, a2, &qword_1ECF7B808, &qword_1E487A7A0);
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B818, &unk_1E487A7B0) + 48);
  *v11 = 0;
  *(v11 + 8) = 0;
  sub_1E47738B8(v9, &qword_1ECF7B808, &qword_1E487A7A0);
  sub_1E47738B8(v7, &qword_1ECF7B808, &qword_1E487A7A0);
}

uint64_t sub_1E4772DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = type metadata accessor for NarrowAllDayView(0);
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B820, &unk_1E487E2E0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v45 - v9;
  v51 = sub_1E48782AC();
  v10 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NarrowTextHeaderView(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v53 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - v15;
  sub_1E4878D2C();
  v52 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = sub_1E487732C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v20 = v18 + 16;
  v19(v16, a1, v17);
  v21 = type metadata accessor for SpatialHeaderView(0);
  v22 = a1 + *(v21 + 20);
  v23 = &v16[v12[5]];
  v48 = v20;
  v49 = v19;
  v19(v23, v22, v17);
  v47 = v21;
  LOBYTE(v19) = *(a1 + *(v21 + 28));
  KeyPath = swift_getKeyPath();
  v46 = a1;
  *&v16[v12[7]] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  swift_storeEnumTagMultiPayload();
  v16[v12[6]] = v19;
  v25 = &v16[v12[8]];
  *v25 = 0x4D4D202C45454545;
  *(v25 + 1) = 0xEB0000000064204DLL;
  v26 = &v16[v12[9]];
  strcpy(v26, "EEEE, MMMM d");
  v26[13] = 0;
  *(v26 + 7) = -5120;
  v27 = &v16[v12[10]];
  *v27 = 1162167621;
  *(v27 + 1) = 0xE400000000000000;
  v28 = v12[11];
  sub_1E48782DC();
  v29 = v50;
  v30 = v51;
  (*(v10 + 104))(v50, *MEMORY[0x1E6980EA0], v51);
  sub_1E48782CC();

  (*(v10 + 8))(v29, v30);
  v31 = sub_1E48781FC();

  *&v16[v28] = v31;
  v32 = *(v22 + *(type metadata accessor for DayEvents(0) + 24));
  if (*(v32 + 16))
  {
    v33 = v55;
    v49(&v5[v55[5]], v22, v17);
    v34 = *(v46 + *(v47 + 32));
    *&v5[v33[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
    swift_storeEnumTagMultiPayload();
    *&v5[v33[9]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v5[v33[10]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    v35 = swift_getKeyPath();
    *&v5[v33[12]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    v36 = swift_getKeyPath();
    *v5 = v32;
    *&v5[v33[6]] = v34;
    v5[v33[7]] = 1;
    v37 = &v5[v33[11]];
    *v37 = v35;
    v37[8] = 0;
    v38 = &v5[v33[13]];
    *v38 = v36;
    v38[8] = 0;
    v39 = v56;
    sub_1E47736C8(v5, v56);
    (*(v54 + 56))(v39, 0, 1, v33);
  }

  else
  {
    v39 = v56;
    (*(v54 + 56))(v56, 1, 1, v55);
  }

  v40 = v53;
  sub_1E47737E8(v16, v53, type metadata accessor for NarrowTextHeaderView);
  v41 = v57;
  sub_1E4773850(v39, v57, &qword_1ECF7B820, &unk_1E487E2E0);
  v42 = v58;
  sub_1E47737E8(v40, v58, type metadata accessor for NarrowTextHeaderView);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B828, &qword_1E487A7C0);
  sub_1E4773850(v41, v42 + *(v43 + 48), &qword_1ECF7B820, &unk_1E487E2E0);
  sub_1E47738B8(v39, &qword_1ECF7B820, &unk_1E487E2E0);
  sub_1E4773918(v16, type metadata accessor for NarrowTextHeaderView);
  sub_1E47738B8(v41, &qword_1ECF7B820, &unk_1E487E2E0);
  sub_1E4773918(v40, type metadata accessor for NarrowTextHeaderView);
}

unint64_t sub_1E47734C8()
{
  result = qword_1EE2B1180;
  if (!qword_1EE2B1180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B798, &qword_1E487A5C0);
    sub_1E4773680(&qword_1EE2B0ED0, &qword_1ECF7B7A0, &qword_1E487A5C8, MEMORY[0x1E6981868]);
    sub_1E47735C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1180);
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

unint64_t sub_1E47735C8()
{
  result = qword_1EE2B14A8;
  if (!qword_1EE2B14A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B780, &qword_1E487A5A8);
    sub_1E4773680(&qword_1EE2B0F88, &qword_1ECF7B778, &qword_1E487A5A0, MEMORY[0x1E6981800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B14A8);
  }

  return result;
}

uint64_t sub_1E4773680(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E47736C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NarrowAllDayView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E477372C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1E4773794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2B0E38;
  if (!qword_1EE2B0E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B0E38);
  }

  return result;
}

uint64_t sub_1E47737E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4773850(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E47738B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1E4773918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E4773978()
{
  result = qword_1EE2B1130;
  if (!qword_1EE2B1130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B830, &qword_1E487A7C8);
    sub_1E47734C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1130);
  }

  return result;
}

uint64_t type metadata accessor for NarrowAllDayView(uint64_t a1)
{
  result = qword_1EE2B57F0;
  if (!qword_1EE2B57F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4773A78(uint64_t a1)
{
  sub_1E4773D64(319, &qword_1EE2B0DE0, type metadata accessor for Event, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1E487732C();
    if (v2 <= 0x3F)
    {
      sub_1E4773D14(319, &qword_1EE2B10A0, MEMORY[0x1E6980F58], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1E4773D64(319, &qword_1EE2B1690, MEMORY[0x1E6985840], MEMORY[0x1E697DCC8]);
        if (v4 <= 0x3F)
        {
          sub_1E4773D64(319, &qword_1EE2B1680, MEMORY[0x1E697EA50], MEMORY[0x1E697DCC8]);
          if (v5 <= 0x3F)
          {
            sub_1E4773D64(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
            if (v6 <= 0x3F)
            {
              sub_1E4773D14(319, &qword_1EE2B1670, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC8]);
              if (v7 <= 0x3F)
              {
                sub_1E4773D64(319, &qword_1EE2B1698, MEMORY[0x1E6985780], MEMORY[0x1E697DCC8]);
                if (v8 <= 0x3F)
                {
                  sub_1E4773D64(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E4773D14(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1E4773D64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E4773DE4()
{
  v1 = sub_1E48782AC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(type metadata accessor for NarrowAllDayView(0) + 24);
  if (*(v0 + v5))
  {
    v6 = *(v0 + v5);
  }

  else
  {
    v7 = (v2 + 104);
    v8 = (v2 + 8);
    if (sub_1E4773F9C())
    {
      sub_1E48782EC();
      (*v7)(v4, *MEMORY[0x1E6980EA0], v1);
      sub_1E48782CC();

      (*v8)(v4, v1);
      v6 = sub_1E48781FC();
    }

    else
    {
      sub_1E48782FC();
      (*v7)(v4, *MEMORY[0x1E6980EA0], v1);
      v6 = sub_1E48782CC();

      (*v8)(v4, v1);
    }
  }

  return v6;
}

uint64_t sub_1E4773F9C()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for NarrowAllDayView(0) + 44);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC(v7, &dword_1E475C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1E47740F4()
{
  v1 = sub_1E4877B3C();
  v19 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for Event(0);
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E487893C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  sub_1E47743A4((&v18 - v12));
  sub_1E487892C();
  v14 = sub_1E48788FC();
  v15 = *(v8 + 8);
  v15(v11, v7);
  v15(v13, v7);
  if ((v14 & 1) == 0 || *(*v0 + 16) != 1)
  {
    return sub_1E48786EC();
  }

  sub_1E477AAB4(*v0 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v6, type metadata accessor for Event);
  sub_1E47745AC(v3);
  v16 = sub_1E476EA20(v6, v3);
  (*(v19 + 8))(v3, v1);
  sub_1E477AB1C(v6, type metadata accessor for Event);
  return v16;
}

uint64_t sub_1E47743A4@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for NarrowAllDayView(0);
  sub_1E4773850(v1 + *(v10 + 48), v9, &qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487893C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47745AC@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for NarrowAllDayView(0);
  sub_1E4773850(v1 + *(v10 + 40), v9, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877B3C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47747B4()
{
  v18 = type metadata accessor for Event(0);
  v1 = *(v18 - 8);
  v2 = MEMORY[0x1EEE9AC00](v18);
  v17 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - v5;
  v7 = *v0;
  v16 = *(*v0 + 16);
  if (v16)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (v8 < *(v7 + 16))
    {
      v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v11 = *(v1 + 72);
      sub_1E477AAB4(v7 + v10 + v11 * v8, v6, type metadata accessor for Event);
      sub_1E4878D2C();
      sub_1E4878D1C();
      sub_1E4878D0C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v12 = v6[*(v18 + 56)];

      if (v12 == 5)
      {
        sub_1E477A6A8(v6, v17, type metadata accessor for Event);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4858038(0, *(v9 + 16) + 1, 1);
          v9 = v19;
        }

        v15 = *(v9 + 16);
        v14 = *(v9 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1E4858038((v14 > 1), v15 + 1, 1);
          v9 = v19;
        }

        *(v9 + 16) = v15 + 1;
        result = sub_1E477A6A8(v17, v9 + v10 + v15 * v11, type metadata accessor for Event);
      }

      else
      {
        result = sub_1E477AB1C(v6, type metadata accessor for Event);
      }

      if (v16 == ++v8)
      {
        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1E4774A4C()
{
  v18 = type metadata accessor for Event(0);
  v1 = *(v18 - 8);
  v2 = MEMORY[0x1EEE9AC00](v18);
  v16 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - v5;
  v7 = *v0;
  v17 = *(*v0 + 16);
  if (v17)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (v8 < *(v7 + 16))
    {
      v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v11 = *(v1 + 72);
      sub_1E477AAB4(v7 + v10 + v11 * v8, v6, type metadata accessor for Event);
      sub_1E4878D2C();
      sub_1E4878D1C();
      sub_1E4878D0C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v12 = v6[*(v18 + 56)];
      if (v12 == 5)
      {
        sub_1E477AB1C(v6, type metadata accessor for Event);
      }

      else
      {

        if ((v12 & 0xFE) == 6)
        {
          result = sub_1E477AB1C(v6, type metadata accessor for Event);
        }

        else
        {
          sub_1E477A6A8(v6, v16, type metadata accessor for Event);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v19 = v9;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1E4858038(0, *(v9 + 16) + 1, 1);
            v9 = v19;
          }

          v15 = *(v9 + 16);
          v14 = *(v9 + 24);
          if (v15 >= v14 >> 1)
          {
            sub_1E4858038((v14 > 1), v15 + 1, 1);
            v9 = v19;
          }

          *(v9 + 16) = v15 + 1;
          result = sub_1E477A6A8(v16, v9 + v10 + v15 * v11, type metadata accessor for Event);
        }
      }

      if (v17 == ++v8)
      {
        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1E4774D18()
{
  v18 = type metadata accessor for Event(0);
  v1 = *(v18 - 8);
  v2 = MEMORY[0x1EEE9AC00](v18);
  v17 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - v5;
  v7 = *v0;
  v16 = *(*v0 + 16);
  if (v16)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (v8 < *(v7 + 16))
    {
      v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v11 = *(v1 + 72);
      sub_1E477AAB4(v7 + v10 + v11 * v8, v6, type metadata accessor for Event);
      sub_1E4878D2C();
      sub_1E4878D1C();
      sub_1E4878D0C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v12 = v6[*(v18 + 56)];

      if ((v12 & 0xFE) == 6)
      {
        sub_1E477A6A8(v6, v17, type metadata accessor for Event);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4858038(0, *(v9 + 16) + 1, 1);
          v9 = v19;
        }

        v15 = *(v9 + 16);
        v14 = *(v9 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1E4858038((v14 > 1), v15 + 1, 1);
          v9 = v19;
        }

        *(v9 + 16) = v15 + 1;
        result = sub_1E477A6A8(v17, v9 + v10 + v15 * v11, type metadata accessor for Event);
      }

      else
      {
        result = sub_1E477AB1C(v6, type metadata accessor for Event);
      }

      if (v16 == ++v8)
      {
        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1E4774FB4()
{
  v1 = type metadata accessor for Event(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(*v0 + 16) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F8, &qword_1E487AC28);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1E487A7E0;
    sub_1E477AAB4(v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v4, type metadata accessor for Event);
    v7 = sub_1E47CC708();
    v9 = v8;
    sub_1E477AB1C(v4, type metadata accessor for Event);
    result = v6;
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    return result;
  }

  v11 = *(sub_1E4774A4C() + 16);

  if (!v11)
  {
    v12 = *(sub_1E4774D18() + 16);

    if (!v12)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F8, &qword_1E487AC28);
      v27 = swift_allocObject();
      v35 = xmmword_1E487A7E0;
      *(v27 + 16) = xmmword_1E487A7E0;
      if (qword_1EE2B4848 != -1)
      {
        swift_once();
      }

      sub_1E48771EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
      v28 = swift_allocObject();
      *(v28 + 16) = v35;
      v29 = sub_1E47747B4();
      goto LABEL_16;
    }
  }

  v13 = *(sub_1E4774A4C() + 16);

  if (!v13)
  {
    v14 = *(sub_1E47747B4() + 16);

    if (!v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F8, &qword_1E487AC28);
      v27 = swift_allocObject();
      v35 = xmmword_1E487A7E0;
      *(v27 + 16) = xmmword_1E487A7E0;
      if (qword_1EE2B4848 != -1)
      {
        swift_once();
      }

      sub_1E48771EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
      v28 = swift_allocObject();
      *(v28 + 16) = v35;
      v29 = sub_1E4774D18();
LABEL_16:
      v30 = *(v29 + 16);

      v31 = MEMORY[0x1E69E65A8];
      *(v28 + 56) = MEMORY[0x1E69E6530];
      *(v28 + 64) = v31;
      *(v28 + 32) = v30;
      v32 = sub_1E4878BAC();
      v34 = v33;

      result = v27;
      *(v27 + 32) = v32;
      *(v27 + 40) = v34;
      return result;
    }
  }

  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  sub_1E48771EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
  v15 = swift_allocObject();
  v35 = xmmword_1E487A7E0;
  *(v15 + 16) = xmmword_1E487A7E0;
  v16 = MEMORY[0x1E69E6530];
  v17 = *(v5 + 16);
  v18 = MEMORY[0x1E69E65A8];
  *(v15 + 56) = MEMORY[0x1E69E6530];
  *(v15 + 64) = v18;
  *(v15 + 32) = v17;
  v19 = sub_1E4878BAC();
  v21 = v20;

  sub_1E48771EC();
  v22 = swift_allocObject();
  *(v22 + 16) = v35;
  v23 = *(v5 + 16);
  *(v22 + 56) = v16;
  *(v22 + 64) = v18;
  *(v22 + 32) = v23;
  v24 = sub_1E4878BAC();
  v26 = v25;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F8, &qword_1E487AC28);
  result = swift_allocObject();
  *(result + 16) = xmmword_1E487A7F0;
  *(result + 32) = v19;
  *(result + 40) = v21;
  *(result + 48) = v24;
  *(result + 56) = v26;
  return result;
}

uint64_t sub_1E4775568()
{
  v0 = type metadata accessor for Event(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(sub_1E47747B4() + 16);

  if (v4)
  {
    return 0;
  }

  v5 = *(sub_1E4774D18() + 16);

  if (v5)
  {
    return 0;
  }

  v6 = *(sub_1E4774A4C() + 16);

  if (v6 != 1)
  {
    return 0;
  }

  result = sub_1E4774A4C();
  if (*(result + 16))
  {
    sub_1E477AAB4(result + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v3, type metadata accessor for Event);

    v8 = v3[*(v0 + 56)];
    sub_1E477AB1C(v3, type metadata accessor for Event);
    return v8 == 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E47756C0()
{
  v0 = *(sub_1E47747B4() + 16);

  if (!v0)
  {
    v1 = *(sub_1E4774D18() + 16);

    if (!v1)
    {
      v2 = *(sub_1E4774A4C() + 16);

      if (v2 == 1)
      {
        if (qword_1EE2B4848 != -1)
        {
          swift_once();
        }

        v3 = sub_1E48771EC();
        MEMORY[0x1E69192D0](v3);
      }
    }
  }

  if (sub_1E4775568())
  {
    if (qword_1EE2B4848 != -1)
    {
      swift_once();
    }

    v4 = sub_1E48771EC();
    MEMORY[0x1E69192D0](v4);
  }

  return 0;
}

uint64_t sub_1E47758A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4877CCC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  sub_1E4775B14((&v19 - v9));
  sub_1E4877CAC();
  sub_1E477AB7C(&qword_1EE2B5A60, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]);
  v11 = sub_1E4878EAC();
  v12 = *(v5 + 8);
  v12(v8, v4);
  result = (v12)(v10, v4);
  if (v11)
  {
    v14 = sub_1E487725C();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }

  else
  {
    v15 = *v2;
    v16 = *(*v2 + 16);
    if (v16 < 2)
    {
      if (v16 == 1)
      {
        v18 = type metadata accessor for Event(0);
        return sub_1E4773850(v15 + *(v18 + 44) + ((*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80)), a1, &unk_1ECF7B688, &qword_1E487C160);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      type metadata accessor for NarrowAllDayView(0);
      sub_1E4877A6C();
      v17 = sub_1E487725C();
      return (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
    }
  }

  return result;
}

uint64_t sub_1E4775B14@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for NarrowAllDayView(0);
  sub_1E4773850(v1 + *(v10 + 36), v9, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877CCC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E4775D1C()
{
  v1 = type metadata accessor for Event(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(sub_1E47747B4() + 16);

  if (v5)
  {
    return 0;
  }

  v6 = *(sub_1E4774D18() + 16);

  if (v6)
  {
    return 0;
  }

  v7 = *(sub_1E4774A4C() + 16);

  if (v7 != 1)
  {
    return 0;
  }

  if (*(*v0 + 16))
  {
    sub_1E477AAB4(*v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v4, type metadata accessor for Event);
    v9 = v4[*(v1 + 56)];
    sub_1E477AB1C(v4, type metadata accessor for Event);
    return (v9 - 3) < 2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4775E6C()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for NarrowAllDayView(0) + 52));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_1E4775FBC@<X0>(uint64_t a1@<X8>)
{
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8B8, &qword_1E487A900);
  MEMORY[0x1EEE9AC00](v78);
  v70 = &v69 - v3;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8F8, &qword_1E487A940);
  MEMORY[0x1EEE9AC00](v74);
  v77 = &v69 - v4;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B890, &qword_1E487A8D8);
  MEMORY[0x1EEE9AC00](v73);
  v6 = &v69 - v5;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B888, &qword_1E487A8D0);
  MEMORY[0x1EEE9AC00](v75);
  v71 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B868, &qword_1E487A8A8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v76 = &v69 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8A0, &qword_1E487A8E8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v69 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B898, &qword_1E487A8E0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v69 - v14;
  v16 = type metadata accessor for Event(0);
  v17 = *(v16 - 8);
  result = MEMORY[0x1EEE9AC00](v16);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v1;
  if (*(*v1 + 16))
  {
    v72 = a1;
    sub_1E477AAB4(v21 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v20, type metadata accessor for Event);
    v22 = *(sub_1E4775E6C() + 72);

    *v12 = sub_1E4877F6C();
    *(v12 + 1) = v22;
    v12[16] = 0;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B900, &qword_1E487A948);
    sub_1E4776874(v20, v1, &v12[*(v23 + 44)]);
    LOBYTE(v22) = sub_1E487819C();
    sub_1E4775E6C();

    sub_1E4877B0C();
    v24 = &v12[*(v10 + 36)];
    *v24 = v22;
    *(v24 + 1) = v25;
    *(v24 + 2) = v26;
    *(v24 + 3) = v27;
    *(v24 + 4) = v28;
    v24[40] = 0;
    v29 = sub_1E487813C();
    if (sub_1E4773F9C())
    {
      sub_1E4775E6C();
    }

    sub_1E4877B0C();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    sub_1E477372C(v12, v15, &qword_1ECF7B8A0, &qword_1E487A8E8);
    v38 = &v15[*(v13 + 36)];
    *v38 = v29;
    *(v38 + 1) = v31;
    *(v38 + 2) = v33;
    *(v38 + 3) = v35;
    *(v38 + 4) = v37;
    v38[40] = 0;
    if (sub_1E4773F9C())
    {
      v39 = &v6[*(v73 + 36)];
      sub_1E477AAB4(v20, v39, type metadata accessor for Event);
      (*(v17 + 56))(v39, 0, 1, v16);
      KeyPath = swift_getKeyPath();
      v41 = swift_getKeyPath();
      v42 = type metadata accessor for EventBackgroundView(0);
      *(v39 + v42[8]) = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
      swift_storeEnumTagMultiPayload();
      *(v39 + v42[9]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
      swift_storeEnumTagMultiPayload();
      *(v39 + v42[10]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
      swift_storeEnumTagMultiPayload();
      v43 = swift_getKeyPath();
      *(v39 + v42[5]) = 3;
      *(v39 + v42[6]) = 1;
      v44 = v39 + v42[7];
      *v44 = KeyPath;
      *(v44 + 8) = 0;
      v45 = v39 + v42[11];
      *v45 = v43;
      *(v45 + 8) = 0;
      v46 = sub_1E487889C();
      v48 = v47;
      v49 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8B0, &qword_1E487DEA0) + 36));
      *v49 = v46;
      v49[1] = v48;
      sub_1E4773850(v15, v6, &qword_1ECF7B898, &qword_1E487A8E0);
      v79 = sub_1E47756C0();
      v80 = v50;
      sub_1E477A374(v79, v50, v51);
      v52 = sub_1E487848C();
      v54 = v53;
      LOBYTE(v39) = v55;
      sub_1E4779D60();
      v56 = v71;
      sub_1E487857C();
      sub_1E477A3C8(v52, v54, v39 & 1);

      sub_1E47738B8(v6, &qword_1ECF7B890, &qword_1E487A8D8);
      v57 = &qword_1ECF7B888;
      v58 = &qword_1E487A8D0;
      sub_1E4773850(v56, v77, &qword_1ECF7B888, &qword_1E487A8D0);
      swift_storeEnumTagMultiPayload();
      sub_1E477A00C(&qword_1EE2B12B0, &qword_1ECF7B888, &qword_1E487A8D0, sub_1E4779D60);
      sub_1E477A00C(&qword_1EE2B12E0, &qword_1ECF7B8B8, &qword_1E487A900, sub_1E4779E40);
      v59 = v76;
      sub_1E487803C();
      v60 = v56;
    }

    else
    {
      v79 = sub_1E47756C0();
      v80 = v61;
      sub_1E477A374(v79, v61, v62);
      v63 = sub_1E487848C();
      v65 = v64;
      v67 = v66;
      sub_1E4779E40();
      v68 = v70;
      sub_1E487857C();
      sub_1E477A3C8(v63, v65, v67 & 1);

      v57 = &qword_1ECF7B8B8;
      v58 = &qword_1E487A900;
      sub_1E4773850(v68, v77, &qword_1ECF7B8B8, &qword_1E487A900);
      swift_storeEnumTagMultiPayload();
      sub_1E477A00C(&qword_1EE2B12B0, &qword_1ECF7B888, &qword_1E487A8D0, sub_1E4779D60);
      sub_1E477A00C(&qword_1EE2B12E0, &qword_1ECF7B8B8, &qword_1E487A900, sub_1E4779E40);
      v59 = v76;
      sub_1E487803C();
      v60 = v68;
    }

    sub_1E47738B8(v60, v57, v58);
    sub_1E47738B8(v15, &qword_1ECF7B898, &qword_1E487A8E0);
    sub_1E477372C(v59, v72, &qword_1ECF7B868, &qword_1E487A8A8);
    return sub_1E477AB1C(v20, type metadata accessor for Event);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4776874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a2;
  v71 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B908, &unk_1E487AA50);
  v72 = *(v4 - 8);
  v73 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v70 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v61 - v7;
  v8 = sub_1E4877B3C();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v61 - v12);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60);
  MEMORY[0x1EEE9AC00](v62);
  v15 = &v61 - v14;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0);
  v16 = MEMORY[0x1EEE9AC00](v63);
  v68 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v61 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v74 = &v61 - v21;
  sub_1E4878D2C();
  v66 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for Event(0);
  sub_1E4878BDC();
  v22 = sub_1E487874C();
  v23 = (v13 + *(v11 + 36));
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
  v25 = *MEMORY[0x1E69816D8];
  v26 = sub_1E487877C();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  *v13 = v22;
  v27 = sub_1E4773DE4();
  KeyPath = swift_getKeyPath();
  sub_1E477372C(v13, v15, &qword_1ECF7B910, &unk_1E487E050);
  v29 = &v15[*(v62 + 36)];
  *v29 = KeyPath;
  v29[1] = v27;
  sub_1E47745AC(v10);
  v30 = sub_1E4770A7C(a1, v10);
  (*(v64 + 8))(v10, v65);
  v31 = swift_getKeyPath();
  sub_1E477372C(v15, v20, &qword_1ECF7B918, &unk_1E487AA60);
  v32 = &v20[*(v63 + 36)];
  *v32 = v31;
  v32[1] = v30;
  sub_1E477372C(v20, v74, &qword_1ECF7B920, &unk_1E487DCF0);
  v75 = sub_1E47CC708();
  v76 = v33;
  sub_1E477A374(v75, v33, v34);
  v35 = sub_1E487848C();
  v37 = v36;
  LOBYTE(v24) = v38;
  sub_1E4773DE4();
  v39 = sub_1E487842C();
  v41 = v40;
  LOBYTE(v31) = v42;

  sub_1E477A3C8(v35, v37, v24 & 1);

  sub_1E47740F4();
  v43 = sub_1E48783FC();
  v45 = v44;
  LOBYTE(KeyPath) = v46;
  v48 = v47;

  sub_1E477A3C8(v39, v41, v31 & 1);

  v49 = swift_getKeyPath();
  v75 = v43;
  v76 = v45;
  LOBYTE(KeyPath) = KeyPath & 1;
  v77 = KeyPath;
  v78 = v48;
  v79 = v49;
  v80 = 1;
  v81 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  sub_1E477A490();
  v50 = v69;
  sub_1E487855C();
  sub_1E477A3C8(v43, v45, KeyPath);

  v51 = v68;
  sub_1E4773850(v74, v68, &qword_1ECF7B920, &unk_1E487DCF0);
  v53 = v72;
  v52 = v73;
  v54 = *(v72 + 16);
  v55 = v70;
  v54(v70, v50, v73);
  v56 = v71;
  sub_1E4773850(v51, v71, &qword_1ECF7B920, &unk_1E487DCF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B940, &qword_1E487AB48);
  v54((v56 + *(v57 + 48)), v55, v52);
  v58 = v56 + *(v57 + 64);
  *v58 = 0;
  *(v58 + 8) = 0;
  v59 = *(v53 + 8);
  v59(v50, v52);
  sub_1E47738B8(v74, &qword_1ECF7B920, &unk_1E487DCF0);
  v59(v55, v52);
  sub_1E47738B8(v51, &qword_1ECF7B920, &unk_1E487DCF0);
}

uint64_t sub_1E4776F78@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8F0, &qword_1E487A938);
  MEMORY[0x1EEE9AC00](v75);
  v3 = &v69 - v2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B948, &unk_1E487AB50);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v69 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = &v69 - v6;
  v7 = type metadata accessor for EventBackgroundView(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8C8, &qword_1E487A910);
  MEMORY[0x1EEE9AC00](v70);
  v11 = &v69 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8C0, &qword_1E487A908);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8D8, &qword_1E487A920);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v69 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8D0, &qword_1E487A918);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v69 - v18;
  *v16 = sub_1E487810C();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B958, &qword_1E487AB60);
  sub_1E47777E0(v1, &v16[*(v20 + 44)]);
  v21 = sub_1E487819C();
  sub_1E4775E6C();

  sub_1E4877B0C();
  v22 = &v16[*(v14 + 44)];
  *v22 = v21;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  v27 = sub_1E487813C();
  if (sub_1E4773F9C())
  {
    sub_1E4775E6C();
  }

  sub_1E4877B0C();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_1E477372C(v16, v19, &qword_1ECF7B8D8, &qword_1E487A920);
  v36 = &v19[*(v17 + 36)];
  *v36 = v27;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  if (sub_1E4773F9C())
  {
    v37 = *v1;
    v38 = *(*v1 + 16);
    v39 = type metadata accessor for Event(0);
    v40 = *(v39 - 8);
    if (v38 == 1)
    {
      v41 = v69;
      sub_1E477AAB4(v37 + ((*(*(v39 - 8) + 80) + 32) & ~*(*(v39 - 8) + 80)), v69, type metadata accessor for Event);
      v42 = 0;
    }

    else
    {
      v42 = 1;
      v41 = v69;
    }

    (*(v40 + 56))(v41, v42, 1, v39);
    v52 = *(v1 + *(type metadata accessor for NarrowAllDayView(0) + 28));
    KeyPath = swift_getKeyPath();
    *&v9[v7[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    *&v9[v7[9]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v9[v7[10]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    v54 = swift_getKeyPath();
    sub_1E477372C(v41, v9, &qword_1ECF7B950, &unk_1E487AE90);
    *&v9[v7[5]] = 3;
    v9[v7[6]] = v52;
    v55 = &v9[v7[7]];
    *v55 = KeyPath;
    v55[8] = 0;
    v56 = &v9[v7[11]];
    *v56 = v54;
    v56[8] = 0;
    v57 = sub_1E487889C();
    v59 = v58;
    v60 = &v11[*(v70 + 36)];
    sub_1E477A6A8(v9, v60, type metadata accessor for EventBackgroundView);
    v61 = (v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8B0, &qword_1E487DEA0) + 36));
    *v61 = v57;
    v61[1] = v59;
    sub_1E4773850(v19, v11, &qword_1ECF7B8D0, &qword_1E487A918);
    v77 = sub_1E47756C0();
    v78 = v62;
    sub_1E477A374(v77, v62, v63);
    v64 = sub_1E487848C();
    v66 = v65;
    LOBYTE(v59) = v67;
    sub_1E477A0C0();
    v3 = v71;
    sub_1E487857C();
    sub_1E477A3C8(v64, v66, v59 & 1);

    sub_1E47738B8(v11, &qword_1ECF7B8C8, &qword_1E487A910);
    v50 = &qword_1ECF7B8C0;
    v51 = &qword_1E487A908;
    sub_1E4773850(v3, v74, &qword_1ECF7B8C0, &qword_1E487A908);
    swift_storeEnumTagMultiPayload();
    sub_1E477A00C(&qword_1EE2B12A0, &qword_1ECF7B8C0, &qword_1E487A908, sub_1E477A0C0);
  }

  else
  {
    v77 = sub_1E47756C0();
    v78 = v43;
    sub_1E477A374(v77, v43, v44);
    v45 = sub_1E487848C();
    v47 = v46;
    v49 = v48;
    sub_1E477A0F0();
    sub_1E487857C();
    sub_1E477A3C8(v45, v47, v49 & 1);

    v50 = &qword_1ECF7B8F0;
    v51 = &qword_1E487A938;
    sub_1E4773850(v3, v74, &qword_1ECF7B8F0, &qword_1E487A938);
    swift_storeEnumTagMultiPayload();
    sub_1E477A00C(&qword_1EE2B12A0, &qword_1ECF7B8C0, &qword_1E487A908, sub_1E477A0C0);
  }

  sub_1E477A00C(&qword_1EE2B12C0, &qword_1ECF7B8F0, &qword_1E487A938, sub_1E477A0F0);
  sub_1E487803C();
  sub_1E47738B8(v3, v50, v51);
  return sub_1E47738B8(v19, &qword_1ECF7B8D0, &qword_1E487A918);
}

uint64_t sub_1E47777E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v53 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B960, &qword_1E487AB68);
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v44 = &v40 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B968, &qword_1E487AB70);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v52 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v40 - v7;
  v8 = type metadata accessor for NarrowAllDayView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B970, &unk_1E487AB78);
  v47 = *(v11 - 8);
  v48 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v46 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v40 - v14;
  sub_1E4878D2C();
  v45 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = sub_1E4774FB4();
  v56 = MEMORY[0x1E69E7CD0];
  v16 = sub_1E477A548(v15);
  v54 = a1;
  v17 = v16;
  v43 = 0;

  v56 = v17;
  swift_getKeyPath();
  sub_1E477AAB4(v54, &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NarrowAllDayView);
  v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v19 = swift_allocObject();
  sub_1E477A6A8(&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for NarrowAllDayView);
  v42 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B978, &qword_1E487ABA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B980, &qword_1E487ABB0);
  v41 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4773680(&qword_1EE2B0DC0, &qword_1ECF7B978, &qword_1E487ABA8, MEMORY[0x1E69E6338]);
  sub_1E4773680(&qword_1EE2B0F48, &qword_1ECF7B980, &qword_1E487ABB0, MEMORY[0x1E6981808]);
  v20 = v54;
  sub_1E487885C();
  if (*(*v20 + 16) < 2uLL)
  {
    v29 = 1;
    v27 = v50;
    v28 = v51;
    v26 = v49;
  }

  else
  {
    v21 = sub_1E4774FB4();
    v56 = MEMORY[0x1E69E7CD0];
    v22 = sub_1E477A548(v21);

    v56 = v22;
    swift_getKeyPath();
    v23 = v41;
    sub_1E477AAB4(v20, v41, type metadata accessor for NarrowAllDayView);
    v24 = swift_allocObject();
    sub_1E477A6A8(v23, v24 + v18, type metadata accessor for NarrowAllDayView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B990, &qword_1E487ABC0);
    sub_1E4773680(&qword_1EE2B0F30, &qword_1ECF7B990, &qword_1E487ABC0, MEMORY[0x1E6981808]);
    v25 = v44;
    sub_1E487885C();
    v26 = v49;
    v27 = v50;
    v28 = v51;
    (*(v49 + 32))(v50, v25, v51);
    v29 = 0;
  }

  (*(v26 + 56))(v27, v29, 1, v28);
  v31 = v46;
  v30 = v47;
  v32 = *(v47 + 16);
  v33 = v55;
  v34 = v48;
  v32(v46, v55, v48);
  v35 = v52;
  sub_1E4773850(v27, v52, &qword_1ECF7B968, &qword_1E487AB70);
  v36 = v53;
  v32(v53, v31, v34);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B988, &qword_1E487ABB8);
  sub_1E4773850(v35, &v36[*(v37 + 48)], &qword_1ECF7B968, &qword_1E487AB70);
  sub_1E47738B8(v27, &qword_1ECF7B968, &qword_1E487AB70);
  v38 = *(v30 + 8);
  v38(v33, v34);
  sub_1E47738B8(v35, &qword_1ECF7B968, &qword_1E487AB70);
  v38(v31, v34);
}

uint64_t sub_1E4777ED0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_1E4877F6C();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9E0, &qword_1E487AC10);
  sub_1E4778028(a2, v5, v6, a3 + *(v7 + 44));
  sub_1E4878F9C();

  MEMORY[0x1E69192D0](v5, v6);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B980, &qword_1E487ABB0);
  v9 = (a3 + *(result + 52));
  *v9 = 0x63207961646C6C61;
  v9[1] = 0xEF2073656C637269;
  return result;
}

uint64_t sub_1E4778028@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a2;
  v40 = a3;
  v42 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9A0, &unk_1E487ABD0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - v9;
  v11 = type metadata accessor for AllDayCirclesView(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  sub_1E4878D2C();
  v41 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = *a1;

  v18 = sub_1E4773DE4();
  KeyPath = swift_getKeyPath();
  *&v16[v11[5]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *v16 = KeyPath;
  v16[8] = 0;
  *&v16[v11[6]] = v17;
  *&v16[v11[7]] = v18;
  sub_1E48783CC();
  sub_1E4775E6C();

  sub_1E487889C();
  sub_1E4877BCC();
  v37 = v48;
  v38 = v46;
  v35 = v51;
  v36 = v50;
  v45 = 1;
  v44 = v47;
  v43 = v49;
  *v10 = sub_1E4877F4C();
  *(v10 + 1) = 0x4000000000000000;
  v10[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9C0, &qword_1E487ABF0);
  sub_1E4778C24(v39, v40, &v10[*(v20 + 44)]);
  sub_1E477AAB4(v16, v14, type metadata accessor for AllDayCirclesView);
  v21 = v45;
  v22 = v44;
  v23 = v10;
  v24 = v14;
  v25 = v43;
  sub_1E4773850(v23, v8, &qword_1ECF7B9A0, &unk_1E487ABD0);
  v26 = v8;
  v27 = v42;
  sub_1E477AAB4(v24, v42, type metadata accessor for AllDayCirclesView);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9E8, &qword_1E487AC18);
  v29 = v27 + v28[12];
  *v29 = 0;
  *(v29 + 8) = v21;
  v30 = v37;
  *(v29 + 16) = v38;
  *(v29 + 24) = v22;
  *(v29 + 32) = v30;
  *(v29 + 40) = v25;
  v31 = v35;
  *(v29 + 48) = v36;
  *(v29 + 56) = v31;
  sub_1E4773850(v26, v27 + v28[16], &qword_1ECF7B9A0, &unk_1E487ABD0);
  v32 = v27 + v28[20];
  *v32 = 0;
  *(v32 + 8) = 0;
  sub_1E47738B8(v23, &qword_1ECF7B9A0, &unk_1E487ABD0);
  sub_1E477AB1C(v16, type metadata accessor for AllDayCirclesView);
  sub_1E47738B8(v26, &qword_1ECF7B9A0, &unk_1E487ABD0);
  sub_1E477AB1C(v24, type metadata accessor for AllDayCirclesView);
}

uint64_t sub_1E477840C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_1E4877F6C();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B998, &qword_1E487ABC8);
  sub_1E4778544(a2, v5, v6, a3 + *(v7 + 44));
  strcpy(v11, "allday bars ");
  BYTE5(v11[1]) = 0;
  HIWORD(v11[1]) = -5120;
  MEMORY[0x1E69192D0](v5, v6);

  v8 = v11[1];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B990, &qword_1E487ABC0);
  v10 = (a3 + *(result + 52));
  *v10 = v11[0];
  v10[1] = v8;
  return result;
}

uint64_t sub_1E4778544@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9A0, &unk_1E487ABD0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - v8;
  v10 = sub_1E4877B3C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9A8, &unk_1E4881BA0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v42 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - v17;
  sub_1E4878D2C();
  v43 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = *(sub_1E4775E6C() + 104);

  *v18 = sub_1E4877F6C();
  *(v18 + 1) = v19;
  v18[16] = 0;
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9B0, &qword_1E487ABE0);
  v20 = *a1;
  sub_1E47745AC(v13);
  v21 = sub_1E486B590(v20, 3, v13);
  (*(v11 + 8))(v13, v10);
  v51 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9B8, &qword_1E487ABE8);
  sub_1E487736C();
  type metadata accessor for ColorBarView(0);
  sub_1E4773680(&qword_1EE2B46F0, &qword_1ECF7B9B8, &qword_1E487ABE8, MEMORY[0x1E69E6338]);
  sub_1E477AB7C(qword_1EE2B58D8, type metadata accessor for ColorBarView, &unk_1E487B2D8);
  sub_1E477AB7C(&qword_1EE2B4080, type metadata accessor for ColorBarView.Styling, &unk_1E487B328);
  v37 = v18;
  sub_1E487886C();

  sub_1E4775E6C();

  sub_1E487889C();
  sub_1E4877BCC();
  v40 = v53;
  v41 = v51;
  v38 = v56;
  v39 = v55;
  v50 = 1;
  v49 = v52;
  v48 = v54;
  *v9 = sub_1E4877F4C();
  *(v9 + 1) = 0x4000000000000000;
  v9[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9C0, &qword_1E487ABF0);
  sub_1E4778C24(v45, v46, &v9[*(v22 + 44)]);
  v23 = v42;
  sub_1E4773850(v18, v42, &qword_1ECF7B9A8, &unk_1E4881BA0);
  v24 = v9;
  v25 = v50;
  v26 = v49;
  v27 = v48;
  v28 = v44;
  sub_1E4773850(v24, v44, &qword_1ECF7B9A0, &unk_1E487ABD0);
  v29 = v47;
  sub_1E4773850(v23, v47, &qword_1ECF7B9A8, &unk_1E4881BA0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9C8, &qword_1E487ABF8);
  v31 = v29 + v30[12];
  *v31 = 0;
  *(v31 + 8) = v25;
  v32 = v40;
  *(v31 + 16) = v41;
  *(v31 + 24) = v26;
  *(v31 + 32) = v32;
  *(v31 + 40) = v27;
  v33 = v38;
  *(v31 + 48) = v39;
  *(v31 + 56) = v33;
  sub_1E4773850(v28, v29 + v30[16], &qword_1ECF7B9A0, &unk_1E487ABD0);
  v34 = v29 + v30[20];
  *v34 = 0;
  *(v34 + 8) = 0;
  sub_1E47738B8(v24, &qword_1ECF7B9A0, &unk_1E487ABD0);
  sub_1E47738B8(v37, &qword_1ECF7B9A8, &unk_1E4881BA0);
  sub_1E47738B8(v28, &qword_1ECF7B9A0, &unk_1E487ABD0);
  sub_1E47738B8(v23, &qword_1ECF7B9A8, &unk_1E4881BA0);
}

uint64_t sub_1E4778B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E477AAB4(a1, a2, type metadata accessor for ColorBarView.Styling);
  KeyPath = swift_getKeyPath();
  v5 = type metadata accessor for ColorBarView(0);
  *(a2 + *(v5 + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  v6 = swift_getKeyPath();

  v8 = a2 + *(v5 + 24);
  *v8 = v6;
  *(v8 + 8) = 0;
  return result;
}

uint64_t sub_1E4778C24@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v75 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B908, &unk_1E487AA50);
  v76 = *(v7 - 8);
  v77 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v74 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v69 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v69 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9D0, &qword_1E487AC00);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v72 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v69 - v18;
  sub_1E4878D2C();
  v71 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = sub_1E4775568();
  v70 = v19;
  if (v20)
  {
    v69 = sub_1E487874C();
    v21 = a2;
    v22 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050) + 36));
    v23 = a3;
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
    v25 = *MEMORY[0x1E69816D0];
    v26 = sub_1E487877C();
    v27 = v22 + v24;
    a3 = v23;
    (*(*(v26 - 8) + 104))(v27, v25, v26);
    *v22 = swift_getKeyPath();
    a2 = v21;
    *v14 = v69;
    v28 = sub_1E4773DE4();
    KeyPath = swift_getKeyPath();
    v30 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60) + 36));
    *v30 = KeyPath;
    v30[1] = v28;
    v31 = sub_1E487864C();
    v32 = swift_getKeyPath();
    v33 = (v14 + *(v11 + 36));
    *v33 = v32;
    v33[1] = v31;
    sub_1E477372C(v14, v19, &qword_1ECF7B920, &unk_1E487DCF0);
    v34 = (*(v12 + 56))(v19, 0, 1, v11);
  }

  else
  {
    v34 = (*(v12 + 56))(v19, 1, 1, v11);
  }

  v78 = a2;
  v79 = a3;
  sub_1E477A374(v34, v35, v36);

  v37 = sub_1E487848C();
  v39 = v38;
  v41 = v40;
  sub_1E4775D1C();
  v42 = sub_1E48783EC();
  v44 = v43;
  v46 = v45;
  sub_1E477A3C8(v37, v39, v41 & 1);

  sub_1E4773DE4();
  v47 = sub_1E487842C();
  v49 = v48;
  LOBYTE(v37) = v50;

  sub_1E477A3C8(v42, v44, v46 & 1);

  sub_1E47740F4();
  v51 = sub_1E48783FC();
  v53 = v52;
  LOBYTE(v44) = v54;
  v56 = v55;

  sub_1E477A3C8(v47, v49, v37 & 1);

  v57 = swift_getKeyPath();
  v78 = v51;
  v79 = v53;
  v80 = v44 & 1;
  v81 = v56;
  v82 = v57;
  v83 = 1;
  v84 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  sub_1E477A490();
  v58 = v73;
  sub_1E487855C();
  sub_1E477A3C8(v51, v53, v44 & 1);

  v59 = v70;
  v60 = v72;
  sub_1E4773850(v70, v72, &qword_1ECF7B9D0, &qword_1E487AC00);
  v62 = v76;
  v61 = v77;
  v63 = *(v76 + 16);
  v64 = v74;
  v63(v74, v58, v77);
  v65 = v75;
  sub_1E4773850(v60, v75, &qword_1ECF7B9D0, &qword_1E487AC00);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9D8, &qword_1E487AC08);
  v63((v65 + *(v66 + 48)), v64, v61);
  v67 = *(v62 + 8);
  v67(v58, v61);
  sub_1E47738B8(v59, &qword_1ECF7B9D0, &qword_1E487AC00);
  v67(v64, v61);
  sub_1E47738B8(v60, &qword_1ECF7B9D0, &qword_1E487AC00);
}

uint64_t sub_1E47792A0@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B858, &qword_1E487A898);
  MEMORY[0x1EEE9AC00](v38);
  v33 = &v32 - v2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B860, &qword_1E487A8A0);
  MEMORY[0x1EEE9AC00](v35);
  v4 = &v32 - v3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B868, &qword_1E487A8A8);
  MEMORY[0x1EEE9AC00](v36);
  v32 = &v32 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B870, &qword_1E487A8B0);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v32 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B878, &qword_1E487A8B8);
  MEMORY[0x1EEE9AC00](v39);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B880, &unk_1E487A8C0);
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v32 - v13;
  v15 = sub_1E487725C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v32 - v20;
  sub_1E47758A8(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v34 = v8;
    sub_1E47738B8(v14, &unk_1ECF7B688, &qword_1E487C160);
    v22 = *(sub_1E47747B4() + 16);

    if (v22 || (v23 = *(sub_1E4774A4C() + 16), , v23) || (v24 = *(sub_1E4774D18() + 16), , v24 != 1))
    {
      v25 = v33;
      sub_1E4776F78(v33);
      v26 = &qword_1ECF7B858;
      v27 = &qword_1E487A898;
      sub_1E4773850(v25, v4, &qword_1ECF7B858, &qword_1E487A898);
    }

    else
    {
      v25 = v32;
      sub_1E4775FBC(v32);
      v26 = &qword_1ECF7B868;
      v27 = &qword_1E487A8A8;
      sub_1E4773850(v25, v4, &qword_1ECF7B868, &qword_1E487A8A8);
    }

    swift_storeEnumTagMultiPayload();
    sub_1E4779C7C();
    sub_1E4779F28();
    v31 = v37;
    sub_1E487803C();
    sub_1E47738B8(v25, v26, v27);
    sub_1E4773850(v31, v34, &qword_1ECF7B870, &qword_1E487A8B0);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B1068, &qword_1ECF7B880, &unk_1E487A8C0, MEMORY[0x1E697CD08]);
    sub_1E477A2E0();
    sub_1E487803C();
    return sub_1E47738B8(v31, &qword_1ECF7B870, &qword_1E487A8B0);
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
    v28 = (*(v16 + 16))(v19, v21, v15);
    MEMORY[0x1EEE9AC00](v28);
    *(&v32 - 2) = v1;
    sub_1E477A2E0();
    sub_1E487831C();
    v29 = v34;
    (*(v34 + 2))(v8, v11, v9);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B1068, &qword_1ECF7B880, &unk_1E487A8C0, MEMORY[0x1E697CD08]);
    sub_1E487803C();
    (*(v29 + 8))(v11, v9);
    return (*(v16 + 8))(v21, v15);
  }
}