char *initializeWithTake for TTRRemindersListViewModel.DisplayDate(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[6];
  v8 = sub_21DBF563C();
  (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
  v9 = a3[7];
  v10 = sub_21DBF5C4C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(&a2[v9], 1, v10))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
    memcpy(&a1[v9], &a2[v9], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v11 + 32))(&a1[v9], &a2[v9], v10);
    (*(v11 + 56))(&a1[v9], 0, 1, v10);
  }

  v13 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  a1[v13] = a2[v13];
  a1[a3[10]] = a2[a3[10]];
  return a1;
}

char *assignWithTake for TTRRemindersListViewModel.DisplayDate(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v7;

  v8 = a3[6];
  v9 = sub_21DBF563C();
  (*(*(v9 - 8) + 40))(&a1[v8], &a2[v8], v9);
  v10 = a3[7];
  v11 = sub_21DBF5C4C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(&a1[v10], 1, v11);
  v15 = v13(&a2[v10], 1, v11);
  if (!v14)
  {
    if (!v15)
    {
      (*(v12 + 40))(&a1[v10], &a2[v10], v11);
      goto LABEL_7;
    }

    (*(v12 + 8))(&a1[v10], v11);
    goto LABEL_6;
  }

  if (v15)
  {
LABEL_6:
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
    memcpy(&a1[v10], &a2[v10], *(*(v16 - 8) + 64));
    goto LABEL_7;
  }

  (*(v12 + 32))(&a1[v10], &a2[v10], v11);
  (*(v12 + 56))(&a1[v10], 0, 1, v11);
LABEL_7:
  v17 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  a1[v17] = a2[v17];
  a1[a3[10]] = a2[a3[10]];
  return a1;
}

void sub_21DB267EC(uint64_t a1)
{
  sub_21DBF563C();
  if (v1 <= 0x3F)
  {
    sub_21D0DBFB4(319, &qword_280D17168, MEMORY[0x277CC9A70]);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

double destroy for TTRRemindersListViewModel.LocationData(id *a1)
{

  return result;
}

uint64_t initializeWithCopy for TTRRemindersListViewModel.LocationData(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  *(a1 + 48) = *(a2 + 48);
  v7 = v3;
  v8 = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRRemindersListViewModel.LocationData(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for TTRRemindersListViewModel.LocationData(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListViewModel.LocationData(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for TTRRemindersListViewModel.LocationData(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void **initializeBufferWithCopyOfBuffer for TTRRemindersListViewModel.LinkAttachment(void **a1, char **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v6 = a1;
    v7 = *(a3 + 20);
    v9 = sub_21DBF54CC();
    v10 = *(*(v9 - 8) + 16);
    v11 = v4;
    v10(v6 + v7, a2 + v7, v9);
    v12 = *(a3 + 24);
    v13 = *(a2 + v12);
    *(v6 + v12) = v13;
    v14 = v13;
  }

  return v6;
}

void destroy for TTRRemindersListViewModel.LinkAttachment(id *a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_21DBF54CC();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = *(a1 + *(a2 + 24));
}

void **initializeWithCopy for TTRRemindersListViewModel.LinkAttachment(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  *a1 = *a2;
  v7 = *(a3 + 20);
  v8 = sub_21DBF54CC();
  v9 = *(*(v8 - 8) + 16);
  v10 = v6;
  v9(a1 + v7, a2 + v7, v8);
  v11 = *(a3 + 24);
  v12 = *(a2 + v11);
  *(a1 + v11) = v12;
  v13 = v12;
  return a1;
}

void **assignWithCopy for TTRRemindersListViewModel.LinkAttachment(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a3 + 20);
  v10 = sub_21DBF54CC();
  (*(*(v10 - 8) + 24))(a1 + v9, a2 + v9, v10);
  v11 = *(a3 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  *(a1 + v11) = v13;
  v14 = v13;

  return a1;
}

char *initializeWithTake for TTRRemindersListViewModel.LinkAttachment(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_21DBF54CC();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

void **assignWithTake for TTRRemindersListViewModel.LinkAttachment(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = sub_21DBF54CC();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  v9 = *(a3 + 24);
  v10 = *(a1 + v9);
  *(a1 + v9) = *(a2 + v9);

  return a1;
}

uint64_t sub_21DB26F58(uint64_t a1)
{
  result = sub_21DBF54CC();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void **initializeBufferWithCopyOfBuffer for TTRRemindersListViewModel.ImageAttachment(void **a1, void **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v7 = a1;
    v8 = *(a3 + 20);
    v9 = sub_21DBF54CC();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    v12 = v4;
    if (v11(a2 + v8, 1, v9))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
      memcpy(v7 + v8, a2 + v8, *(*(v13 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(v7 + v8, a2 + v8, v9);
      (*(v10 + 56))(v7 + v8, 0, 1, v9);
    }

    v14 = *(a3 + 24);
    v15 = *(a2 + v14);
    *(v7 + v14) = v15;
    v16 = v15;
  }

  return v7;
}

void destroy for TTRRemindersListViewModel.ImageAttachment(id *a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_21DBF54CC();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }

  v7 = *(a1 + *(a2 + 24));
}

void **initializeWithCopy for TTRRemindersListViewModel.ImageAttachment(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  *a1 = *a2;
  v7 = *(a3 + 20);
  v8 = sub_21DBF54CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v6;
  if (v10(a2 + v7, 1, v8))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
    memcpy(a1 + v7, a2 + v7, *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  v13 = *(a3 + 24);
  v14 = *(a2 + v13);
  *(a1 + v13) = v14;
  v15 = v14;
  return a1;
}

void **assignWithCopy for TTRRemindersListViewModel.ImageAttachment(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a3 + 20);
  v10 = sub_21DBF54CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(a1 + v9, 1, v10);
  v14 = v12(a2 + v9, 1, v10);
  if (!v13)
  {
    if (!v14)
    {
      (*(v11 + 24))(a1 + v9, a2 + v9, v10);
      goto LABEL_7;
    }

    (*(v11 + 8))(a1 + v9, v10);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
    memcpy(a1 + v9, a2 + v9, *(*(v15 - 8) + 64));
    goto LABEL_7;
  }

  (*(v11 + 16))(a1 + v9, a2 + v9, v10);
  (*(v11 + 56))(a1 + v9, 0, 1, v10);
LABEL_7:
  v16 = *(a3 + 24);
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  *(a1 + v16) = v18;
  v19 = v18;

  return a1;
}

char *initializeWithTake for TTRRemindersListViewModel.ImageAttachment(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_21DBF54CC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a2[v6], 1, v7))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
    memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

void **assignWithTake for TTRRemindersListViewModel.ImageAttachment(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = sub_21DBF54CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 40))(a1 + v7, a2 + v7, v8);
      goto LABEL_7;
    }

    (*(v9 + 8))(a1 + v7, v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
    memcpy(a1 + v7, a2 + v7, *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 32))(a1 + v7, a2 + v7, v8);
  (*(v9 + 56))(a1 + v7, 0, 1, v8);
LABEL_7:
  v14 = *(a3 + 24);
  v15 = *(a1 + v14);
  *(a1 + v14) = *(a2 + v14);

  return a1;
}

void sub_21DB27830(uint64_t a1)
{
  sub_21D0DBFB4(319, &qword_280D1B888, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void **initializeBufferWithCopyOfBuffer for TTRRemindersListViewModel.ReminderID(void **a1, void **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];

    return v6;
  }

  v6 = a1;
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v4;
  if (!v10(a2 + v7, 1, v8))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload <= 7)
      {
        if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
        {
          goto LABEL_13;
        }

        goto LABEL_20;
      }

      if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (EnumCaseMultiPayload > 2)
      {
LABEL_13:
        v14 = sub_21DBF563C();
        (*(*(v14 - 8) + 16))(v6 + v7, a2 + v7, v14);
        swift_storeEnumTagMultiPayload();
LABEL_21:
        (*(v9 + 56))(v6 + v7, 0, 1, v8);
        return v6;
      }

      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          goto LABEL_13;
        }

LABEL_20:
        memcpy(v6 + v7, a2 + v7, *(v9 + 64));
        goto LABEL_21;
      }
    }

    v15 = *(a2 + v7);
    *(v6 + v7) = v15;
    v16 = v15;
    swift_storeEnumTagMultiPayload();
    goto LABEL_21;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  memcpy(v6 + v7, a2 + v7, *(*(v12 - 8) + 64));
  return v6;
}

void destroy for TTRRemindersListViewModel.ReminderID(id *a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  if ((*(*(v5 - 8) + 48))(a1 + v4, 1, v5))
  {
    return;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload != 5 && EnumCaseMultiPayload != 6)
      {
        return;
      }

      goto LABEL_11;
    }

    if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
    {
      return;
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 2)
    {
LABEL_11:
      v7 = sub_21DBF563C();
      v8 = *(*(v7 - 8) + 8);

      v8(a1 + v4, v7);
      return;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  v9 = *(a1 + v4);
}

void **initializeWithCopy for TTRRemindersListViewModel.ReminderID(void **a1, void **a2, uint64_t a3)
{
  v5 = *a2;
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v5;
  if (!v9(a2 + v6, 1, v7))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload <= 7)
      {
        if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
        {
          goto LABEL_11;
        }

        goto LABEL_18;
      }

      if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (EnumCaseMultiPayload > 2)
      {
LABEL_11:
        v13 = sub_21DBF563C();
        (*(*(v13 - 8) + 16))(a1 + v6, a2 + v6, v13);
        swift_storeEnumTagMultiPayload();
LABEL_19:
        (*(v8 + 56))(a1 + v6, 0, 1, v7);
        return a1;
      }

      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          goto LABEL_11;
        }

LABEL_18:
        memcpy(a1 + v6, a2 + v6, *(v8 + 64));
        goto LABEL_19;
      }
    }

    v14 = *(a2 + v6);
    *(a1 + v6) = v14;
    v15 = v14;
    swift_storeEnumTagMultiPayload();
    goto LABEL_19;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  memcpy(a1 + v6, a2 + v6, *(*(v11 - 8) + 64));
  return a1;
}

void **assignWithCopy for TTRRemindersListViewModel.ReminderID(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a3 + 20);
  v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  LODWORD(v7) = v12(a1 + v9, 1, v10);
  v13 = v12(a2 + v9, 1, v10);
  if (v7)
  {
    if (!v13)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload <= 7)
        {
          if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
          {
            goto LABEL_21;
          }

          goto LABEL_32;
        }

        if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (EnumCaseMultiPayload > 2)
        {
LABEL_21:
          v17 = sub_21DBF563C();
          (*(*(v17 - 8) + 16))(a1 + v9, a2 + v9, v17);
          swift_storeEnumTagMultiPayload();
LABEL_33:
          (*(v11 + 56))(a1 + v9, 0, 1, v10);
          return a1;
        }

        if (EnumCaseMultiPayload != 1)
        {
          if (EnumCaseMultiPayload == 2)
          {
            goto LABEL_21;
          }

LABEL_32:
          memcpy(a1 + v9, a2 + v9, *(v11 + 64));
          goto LABEL_33;
        }
      }

      v18 = *(a2 + v9);
      *(a1 + v9) = v18;
      v19 = v18;
      swift_storeEnumTagMultiPayload();
      goto LABEL_33;
    }

    goto LABEL_10;
  }

  if (!v13)
  {
    if (a1 == a2)
    {
      return a1;
    }

    sub_21D107038(a1 + v9, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v16 = swift_getEnumCaseMultiPayload();
    if (v16 > 4)
    {
      if (v16 <= 7)
      {
        if (v16 == 5 || v16 == 6)
        {
          goto LABEL_35;
        }

        goto LABEL_42;
      }

      if (v16 != 8 && v16 != 9)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (v16 > 2)
      {
LABEL_35:
        v21 = sub_21DBF563C();
        (*(*(v21 - 8) + 16))(a1 + v9, a2 + v9, v21);
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      if (v16 != 1)
      {
        if (v16 == 2)
        {
          goto LABEL_35;
        }

LABEL_42:
        v15 = *(v11 + 64);
        goto LABEL_11;
      }
    }

    v22 = *(a2 + v9);
    *(a1 + v9) = v22;
    v23 = v22;
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  sub_21D107038(a1 + v9, type metadata accessor for TTRRemindersListViewModel.SectionID);
LABEL_10:
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230) - 8) + 64);
LABEL_11:
  memcpy(a1 + v9, a2 + v9, v15);
  return a1;
}

char *initializeWithTake for TTRRemindersListViewModel.ReminderID(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(&a2[v5], 1, v6))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
      {
        goto LABEL_7;
      }
    }

    else if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
    {
LABEL_7:
      v10 = sub_21DBF563C();
      (*(*(v10 - 8) + 32))(&a1[v5], &a2[v5], v10);
      swift_storeEnumTagMultiPayload();
LABEL_15:
      (*(v7 + 56))(&a1[v5], 0, 1, v6);
      return a1;
    }

    memcpy(&a1[v5], &a2[v5], *(v7 + 64));
    goto LABEL_15;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  return a1;
}

void **assignWithTake for TTRRemindersListViewModel.ReminderID(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (v11)
  {
    if (!v12)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
        {
          goto LABEL_7;
        }
      }

      else if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
      {
LABEL_7:
        v14 = sub_21DBF563C();
        (*(*(v14 - 8) + 32))(a1 + v7, a2 + v7, v14);
        swift_storeEnumTagMultiPayload();
LABEL_25:
        (*(v9 + 56))(a1 + v7, 0, 1, v8);
        return a1;
      }

      memcpy(a1 + v7, a2 + v7, *(v9 + 64));
      goto LABEL_25;
    }

    goto LABEL_10;
  }

  if (!v12)
  {
    if (a1 == a2)
    {
      return a1;
    }

    sub_21D107038(a1 + v7, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v16 = swift_getEnumCaseMultiPayload();
    if (v16 <= 3)
    {
      if (v16 == 2 || v16 == 3)
      {
        goto LABEL_17;
      }
    }

    else if (v16 == 4 || v16 == 5 || v16 == 6)
    {
LABEL_17:
      v17 = sub_21DBF563C();
      (*(*(v17 - 8) + 32))(a1 + v7, a2 + v7, v17);
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v15 = *(v9 + 64);
    goto LABEL_11;
  }

  sub_21D107038(a1 + v7, type metadata accessor for TTRRemindersListViewModel.SectionID);
LABEL_10:
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230) - 8) + 64);
LABEL_11:
  memcpy(a1 + v7, a2 + v7, v15);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_92Tm(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

void *__swift_store_extra_inhabitant_index_93Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v10 = *(*(v9 - 8) + 56);
    v11 = v7 + *(a4 + 20);

    return v10(v11, a2, a2, v9);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRRemindersListViewModel.SharingStatusData(uint64_t *a1, uint64_t *a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66838, &unk_21DC3D2B0) - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = v4;
  v7 = type metadata accessor for TTRSharedWithYouHighlight(0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    v12 = sub_21DBF54CC();
    (*(*(v12 - 8) + 16))(a1, a2, v12);
    v13 = *(v7 + 20);
    v14 = *(a2 + v13);
    *(a1 + v13) = v14;
    v15 = *(v8 + 56);
    v16 = v14;
    v15(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

void destroy for TTRRemindersListViewModel.SharingStatusData(uint64_t a1)
{
  v2 = type metadata accessor for TTRSharedWithYouHighlight(0);
  if (!(*(*(v2 - 8) + 48))(a1, 1, v2))
  {
    v3 = sub_21DBF54CC();
    (*(*(v3 - 8) + 8))(a1, v3);
    v4 = *(a1 + *(v2 + 20));
  }
}

char *initializeWithCopy for TTRRemindersListViewModel.SharingStatusData(char *a1, char *a2)
{
  v4 = type metadata accessor for TTRSharedWithYouHighlight(0);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66838, &unk_21DC3D2B0) - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = sub_21DBF54CC();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    v9 = *(v4 + 20);
    v10 = *&a2[v9];
    *&a1[v9] = v10;
    v11 = *(v5 + 56);
    v12 = v10;
    v11(a1, 0, 1, v4);
    return a1;
  }
}

char *assignWithCopy for TTRRemindersListViewModel.SharingStatusData(char *a1, char *a2)
{
  v4 = type metadata accessor for TTRSharedWithYouHighlight(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      v9 = sub_21DBF54CC();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      v10 = *(v4 + 20);
      v11 = *&a2[v10];
      *&a1[v10] = v11;
      v12 = *(v5 + 56);
      v13 = v11;
      v12(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      v16 = sub_21DBF54CC();
      (*(*(v16 - 8) + 24))(a1, a2, v16);
      v17 = *(v4 + 20);
      v18 = *&a2[v17];
      v19 = *&a1[v17];
      *&a1[v17] = v18;
      v20 = v18;

      return a1;
    }

    sub_21D107038(a1, type metadata accessor for TTRSharedWithYouHighlight);
  }

  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66838, &unk_21DC3D2B0) - 8) + 64);

  return memcpy(a1, a2, v14);
}

char *initializeWithTake for TTRRemindersListViewModel.SharingStatusData(char *a1, char *a2)
{
  v4 = type metadata accessor for TTRSharedWithYouHighlight(0);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66838, &unk_21DC3D2B0) - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = sub_21DBF54CC();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    *&a1[*(v4 + 20)] = *&a2[*(v4 + 20)];
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

char *assignWithTake for TTRRemindersListViewModel.SharingStatusData(char *a1, char *a2)
{
  v4 = type metadata accessor for TTRSharedWithYouHighlight(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      v9 = sub_21DBF54CC();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      *&a1[*(v4 + 20)] = *&a2[*(v4 + 20)];
      (*(v5 + 56))(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      v12 = sub_21DBF54CC();
      (*(*(v12 - 8) + 40))(a1, a2, v12);
      v13 = *(v4 + 20);
      v14 = *&a1[v13];
      *&a1[v13] = *&a2[v13];

      return a1;
    }

    sub_21D107038(a1, type metadata accessor for TTRSharedWithYouHighlight);
  }

  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66838, &unk_21DC3D2B0) - 8) + 64);

  return memcpy(a1, a2, v10);
}

void sub_21DB29A98(uint64_t a1)
{
  sub_21D0DBFB4(319, qword_280D14080, type metadata accessor for TTRSharedWithYouHighlight);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t sub_21DB29B48(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  v3 = *(a2 + 16);
  *(a1 + 16) = v3;
  v4 = v3;
  return a1;
}

uint64_t assignWithCopy for TTRRemindersListViewModel.CompletedRemindersState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 10);
  v3 = *(a2 + 16);
  v4 = *(a1 + 16);
  *(a1 + 16) = v3;
  v5 = v3;

  return a1;
}

uint64_t assignWithTake for TTRRemindersListViewModel.CompletedRemindersState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 10);
  v3 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

char *initializeBufferWithCopyOfBuffer for TTRRemindersListViewModel.HashtagLabelSelectorState(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v6 = a1;
    v7 = *(a3 + 20);
    v8 = sub_21DBF6C1C();
    v9 = *(*(v8 - 8) + 16);
    sub_21DBF8E0C();
    v9(v6 + v7, a2 + v7, v8);
  }

  return v6;
}

uint64_t destroy for TTRRemindersListViewModel.HashtagLabelSelectorState(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = sub_21DBF6C1C();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

char *initializeWithCopy for TTRRemindersListViewModel.HashtagLabelSelectorState(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_21DBF6C1C();
  v7 = *(*(v6 - 8) + 16);
  sub_21DBF8E0C();
  v7(&a1[v5], &a2[v5], v6);
  return a1;
}

char *assignWithCopy for TTRRemindersListViewModel.HashtagLabelSelectorState(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  v6 = *(a3 + 20);
  v7 = sub_21DBF6C1C();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  return a1;
}

char *initializeWithTake for TTRRemindersListViewModel.HashtagLabelSelectorState(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_21DBF6C1C();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *assignWithTake for TTRRemindersListViewModel.HashtagLabelSelectorState(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 20);
  v7 = sub_21DBF6C1C();
  (*(*(v7 - 8) + 40))(&a1[v6], &a2[v6], v7);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_89Tm(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *__swift_store_extra_inhabitant_index_90Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_21DB2A148(uint64_t a1)
{
  result = sub_21DBF6C1C();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRRemindersListViewModel.HashtagsState(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      *a1 = *a2;
      v11 = *(v7 + 20);
      v12 = sub_21DBF6C1C();
      v13 = *(*(v12 - 8) + 16);
      sub_21DBF8E0C();
      v13(a1 + v11, a2 + v11, v12);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v14 = *(a3 + 20);
    v15 = (a1 + v14);
    v16 = (a2 + v14);
    v17 = v16[1];
    if (v17)
    {
      *v15 = *v16;
      v15[1] = v17;
      v18 = v16[2];
      v15[2] = v18;
      sub_21DBF8E0C();
      v19 = v18;
    }

    else
    {
      *v15 = *v16;
      v15[2] = v16[2];
    }
  }

  return a1;
}

void destroy for TTRRemindersListViewModel.HashtagsState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v4 - 8) + 48))(a1, 1, v4))
  {

    v5 = *(v4 + 20);
    v6 = sub_21DBF6C1C();
    (*(*(v6 - 8) + 8))(a1 + v5, v6);
  }

  v7 = a1 + *(a2 + 20);
  if (*(v7 + 8))
  {

    v8 = *(v7 + 16);
  }
}

uint64_t *initializeWithCopy for TTRRemindersListViewModel.HashtagsState(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    *a1 = *a2;
    v9 = *(v6 + 20);
    v10 = sub_21DBF6C1C();
    v11 = *(*(v10 - 8) + 16);
    sub_21DBF8E0C();
    v11(a1 + v9, a2 + v9, v10);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v12 = *(a3 + 20);
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  v15 = v14[1];
  if (v15)
  {
    *v13 = *v14;
    v13[1] = v15;
    v16 = v14[2];
    v13[2] = v16;
    sub_21DBF8E0C();
    v17 = v16;
  }

  else
  {
    *v13 = *v14;
    v13[2] = v14[2];
  }

  return a1;
}

char *assignWithCopy for TTRRemindersListViewModel.HashtagsState(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      *a1 = *a2;
      v11 = *(v6 + 20);
      v12 = sub_21DBF6C1C();
      v13 = *(*(v12 - 8) + 16);
      sub_21DBF8E0C();
      v13(&a1[v11], &a2[v11], v12);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    sub_21D107038(a1, type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState);
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
    memcpy(a1, a2, *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  *a1 = *a2;
  sub_21DBF8E0C();

  v26 = *(v6 + 20);
  v27 = sub_21DBF6C1C();
  (*(*(v27 - 8) + 24))(&a1[v26], &a2[v26], v27);
LABEL_7:
  v15 = *(a3 + 20);
  v16 = &a1[v15];
  v17 = &a2[v15];
  v18 = *&a1[v15 + 8];
  v19 = *(v17 + 1);
  if (v18)
  {
    if (v19)
    {
      *v16 = *v17;
      *(v16 + 1) = *(v17 + 1);
      sub_21DBF8E0C();

      v20 = *(v16 + 2);
      v21 = *(v17 + 2);
      *(v16 + 2) = v21;
      v22 = v21;
    }

    else
    {
      sub_21D122250(v16);
      v25 = *(v17 + 2);
      *v16 = *v17;
      *(v16 + 2) = v25;
    }
  }

  else if (v19)
  {
    *v16 = *v17;
    *(v16 + 1) = *(v17 + 1);
    v23 = *(v17 + 2);
    *(v16 + 2) = v23;
    sub_21DBF8E0C();
    v24 = v23;
  }

  else
  {
    v28 = *v17;
    *(v16 + 2) = *(v17 + 2);
    *v16 = v28;
  }

  return a1;
}

void *initializeWithTake for TTRRemindersListViewModel.HashtagsState(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    *a1 = *a2;
    v9 = *(v6 + 20);
    v10 = sub_21DBF6C1C();
    (*(*(v10 - 8) + 32))(a1 + v9, a2 + v9, v10);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v11 = *(a3 + 20);
  v12 = a1 + v11;
  v13 = a2 + v11;
  *v12 = *v13;
  *(v12 + 2) = *(v13 + 2);
  return a1;
}

char *assignWithTake for TTRRemindersListViewModel.HashtagsState(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      *a1 = *a2;
      v11 = *(v6 + 20);
      v12 = sub_21DBF6C1C();
      (*(*(v12 - 8) + 32))(&a1[v11], &a2[v11], v12);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    sub_21D107038(a1, type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState);
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
    memcpy(a1, a2, *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  *a1 = *a2;

  v20 = *(v6 + 20);
  v21 = sub_21DBF6C1C();
  (*(*(v21 - 8) + 40))(&a1[v20], &a2[v20], v21);
LABEL_7:
  v14 = *(a3 + 20);
  v15 = &a1[v14];
  v16 = &a2[v14];
  if (!*&a1[v14 + 8])
  {
LABEL_11:
    *v15 = *v16;
    *(v15 + 2) = *(v16 + 2);
    return a1;
  }

  v17 = *(v16 + 1);
  if (!v17)
  {
    sub_21D122250(v15);
    goto LABEL_11;
  }

  *v15 = *v16;
  *(v15 + 1) = v17;

  v18 = *(v15 + 2);
  *(v15 + 2) = *(v16 + 2);

  return a1;
}

void sub_21DB2ACE0(uint64_t a1)
{
  sub_21D0DBFB4(319, qword_280D146F8, type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

char *initializeBufferWithCopyOfBuffer for TTRRemindersListViewModel.ItemID(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v18 = *a2;
      *a1 = *a2;
      v19 = v18;
      goto LABEL_47;
    case 1:
      v11 = *a2;
      *a1 = *a2;
      v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v14 = *(v13 - 8);
      v15 = *(v14 + 48);
      v16 = v11;
      if (v15(&a2[v12], 1, v13))
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(&a1[v12], &a2[v12], *(*(v17 - 8) + 64));
LABEL_47:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v22 = swift_getEnumCaseMultiPayload();
      if (v22 > 4)
      {
        if (v22 <= 7)
        {
          if (v22 == 5 || v22 == 6)
          {
            goto LABEL_38;
          }

          goto LABEL_45;
        }

        if (v22 != 8 && v22 != 9)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v22 > 2)
        {
LABEL_38:
          v26 = sub_21DBF563C();
          (*(*(v26 - 8) + 16))(&a1[v12], &a2[v12], v26);
          swift_storeEnumTagMultiPayload();
LABEL_46:
          (*(v14 + 56))(&a1[v12], 0, 1, v13);
          goto LABEL_47;
        }

        if (v22 != 1)
        {
          if (v22 == 2)
          {
            goto LABEL_38;
          }

LABEL_45:
          memcpy(&a1[v12], &a2[v12], *(v14 + 64));
          goto LABEL_46;
        }
      }

      v27 = *&a2[v12];
      *&a1[v12] = v27;
      v28 = v27;
      swift_storeEnumTagMultiPayload();
      goto LABEL_46;
    case 0:
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = swift_getEnumCaseMultiPayload();
      if (v9 > 4)
      {
        if (v9 <= 7)
        {
          if (v9 == 5 || v9 == 6)
          {
            goto LABEL_26;
          }

          goto LABEL_37;
        }

        if (v9 != 8 && v9 != 9)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v9 > 2)
        {
LABEL_26:
          v23 = sub_21DBF563C();
          (*(*(v23 - 8) + 16))(a1, a2, v23);
          swift_storeEnumTagMultiPayload();
          goto LABEL_47;
        }

        if (v9 != 1)
        {
          if (v9 == 2)
          {
            goto LABEL_26;
          }

LABEL_37:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          goto LABEL_47;
        }
      }

      v24 = *a2;
      *a1 = *a2;
      v25 = v24;
      swift_storeEnumTagMultiPayload();
      goto LABEL_47;
  }

  v20 = *(v6 + 64);

  return memcpy(a1, a2, v20);
}

void destroy for TTRRemindersListViewModel.ItemID(id *a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        return;
      }

      type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v4 = swift_getEnumCaseMultiPayload();
      if (v4 > 4)
      {
        if (v4 <= 7)
        {
          if (v4 != 5 && v4 != 6)
          {
            return;
          }

          goto LABEL_20;
        }

        if (v4 != 8 && v4 != 9)
        {
          return;
        }
      }

      else
      {
        if (v4 > 2)
        {
LABEL_20:
          v8 = sub_21DBF563C();
          v9 = *(*(v8 - 8) + 8);
          v10 = v8;
          v11 = a1;
LABEL_31:

          v9(v11, v10);
          return;
        }

        if (v4 != 1)
        {
          if (v4 != 2)
          {
            return;
          }

          goto LABEL_20;
        }
      }

      goto LABEL_23;
    }

    v5 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v6 - 8) + 48))(a1 + v5, 1, v6))
    {
      return;
    }

    v7 = swift_getEnumCaseMultiPayload();
    if (v7 > 4)
    {
      if (v7 <= 7)
      {
        if (v7 != 5 && v7 != 6)
        {
          return;
        }

        goto LABEL_30;
      }

      if (v7 != 8 && v7 != 9)
      {
        return;
      }
    }

    else
    {
      if (v7 > 2)
      {
LABEL_30:
        v10 = sub_21DBF563C();
        v9 = *(*(v10 - 8) + 8);
        v11 = (a1 + v5);
        goto LABEL_31;
      }

      if (v7 != 1)
      {
        if (v7 != 2)
        {
          return;
        }

        goto LABEL_30;
      }
    }

    v12 = *(a1 + v5);
    goto LABEL_24;
  }

LABEL_23:
  v12 = *a1;
LABEL_24:
}

void **initializeWithCopy for TTRRemindersListViewModel.ItemID(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v16 = *a2;
      *a1 = *a2;
      v17 = v16;
      goto LABEL_45;
    case 1:
      v9 = *a2;
      *a1 = *a2;
      v10 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v12 = *(v11 - 8);
      v13 = *(v12 + 48);
      v14 = v9;
      if (v13(a2 + v10, 1, v11))
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v10, a2 + v10, *(*(v15 - 8) + 64));
LABEL_45:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v20 = swift_getEnumCaseMultiPayload();
      if (v20 > 4)
      {
        if (v20 <= 7)
        {
          if (v20 == 5 || v20 == 6)
          {
            goto LABEL_36;
          }

          goto LABEL_43;
        }

        if (v20 != 8 && v20 != 9)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v20 > 2)
        {
LABEL_36:
          v24 = sub_21DBF563C();
          (*(*(v24 - 8) + 16))(a1 + v10, a2 + v10, v24);
          swift_storeEnumTagMultiPayload();
LABEL_44:
          (*(v12 + 56))(a1 + v10, 0, 1, v11);
          goto LABEL_45;
        }

        if (v20 != 1)
        {
          if (v20 == 2)
          {
            goto LABEL_36;
          }

LABEL_43:
          memcpy(a1 + v10, a2 + v10, *(v12 + 64));
          goto LABEL_44;
        }
      }

      v25 = *(a2 + v10);
      *(a1 + v10) = v25;
      v26 = v25;
      swift_storeEnumTagMultiPayload();
      goto LABEL_44;
    case 0:
      v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v8 = swift_getEnumCaseMultiPayload();
      if (v8 > 4)
      {
        if (v8 <= 7)
        {
          if (v8 == 5 || v8 == 6)
          {
            goto LABEL_24;
          }

          goto LABEL_35;
        }

        if (v8 != 8 && v8 != 9)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v8 > 2)
        {
LABEL_24:
          v21 = sub_21DBF563C();
          (*(*(v21 - 8) + 16))(a1, a2, v21);
          swift_storeEnumTagMultiPayload();
          goto LABEL_45;
        }

        if (v8 != 1)
        {
          if (v8 == 2)
          {
            goto LABEL_24;
          }

LABEL_35:
          memcpy(a1, a2, *(*(v7 - 8) + 64));
          goto LABEL_45;
        }
      }

      v22 = *a2;
      *a1 = *a2;
      v23 = v22;
      swift_storeEnumTagMultiPayload();
      goto LABEL_45;
  }

  v18 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v18);
}

void **assignWithCopy for TTRRemindersListViewModel.ItemID(void **a1, void **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D107038(a1, type metadata accessor for TTRRemindersListViewModel.ItemID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v16 = *a2;
      *a1 = *a2;
      v17 = v16;
      goto LABEL_46;
    case 1:
      v9 = *a2;
      *a1 = *a2;
      v10 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v12 = *(v11 - 8);
      v13 = *(v12 + 48);
      v14 = v9;
      if (v13(a2 + v10, 1, v11))
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v10, a2 + v10, *(*(v15 - 8) + 64));
LABEL_46:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v20 = swift_getEnumCaseMultiPayload();
      if (v20 > 4)
      {
        if (v20 <= 7)
        {
          if (v20 == 5 || v20 == 6)
          {
            goto LABEL_37;
          }

          goto LABEL_44;
        }

        if (v20 != 8 && v20 != 9)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v20 > 2)
        {
LABEL_37:
          v24 = sub_21DBF563C();
          (*(*(v24 - 8) + 16))(a1 + v10, a2 + v10, v24);
          swift_storeEnumTagMultiPayload();
LABEL_45:
          (*(v12 + 56))(a1 + v10, 0, 1, v11);
          goto LABEL_46;
        }

        if (v20 != 1)
        {
          if (v20 == 2)
          {
            goto LABEL_37;
          }

LABEL_44:
          memcpy(a1 + v10, a2 + v10, *(v12 + 64));
          goto LABEL_45;
        }
      }

      v25 = *(a2 + v10);
      *(a1 + v10) = v25;
      v26 = v25;
      swift_storeEnumTagMultiPayload();
      goto LABEL_45;
    case 0:
      v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v8 = swift_getEnumCaseMultiPayload();
      if (v8 > 4)
      {
        if (v8 <= 7)
        {
          if (v8 == 5 || v8 == 6)
          {
            goto LABEL_25;
          }

          goto LABEL_36;
        }

        if (v8 != 8 && v8 != 9)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v8 > 2)
        {
LABEL_25:
          v21 = sub_21DBF563C();
          (*(*(v21 - 8) + 16))(a1, a2, v21);
          swift_storeEnumTagMultiPayload();
          goto LABEL_46;
        }

        if (v8 != 1)
        {
          if (v8 == 2)
          {
            goto LABEL_25;
          }

LABEL_36:
          memcpy(a1, a2, *(*(v7 - 8) + 64));
          goto LABEL_46;
        }
      }

      v22 = *a2;
      *a1 = *a2;
      v23 = v22;
      swift_storeEnumTagMultiPayload();
      goto LABEL_46;
  }

  v18 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v18);
}

char *initializeWithTake for TTRRemindersListViewModel.ItemID(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v10 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(&a2[v10], 1, v11))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(&a1[v10], &a2[v10], *(*(v13 - 8) + 64));
      goto LABEL_33;
    }

    v16 = swift_getEnumCaseMultiPayload();
    if (v16 <= 3)
    {
      if (v16 == 2 || v16 == 3)
      {
        goto LABEL_20;
      }
    }

    else if (v16 == 4 || v16 == 5 || v16 == 6)
    {
LABEL_20:
      v17 = sub_21DBF563C();
      (*(*(v17 - 8) + 32))(&a1[v10], &a2[v10], v17);
      swift_storeEnumTagMultiPayload();
LABEL_32:
      (*(v12 + 56))(&a1[v10], 0, 1, v11);
      goto LABEL_33;
    }

    memcpy(&a1[v10], &a2[v10], *(v12 + 64));
    goto LABEL_32;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 <= 3)
    {
      if (v8 == 2 || v8 == 3)
      {
        goto LABEL_7;
      }
    }

    else if (v8 == 4 || v8 == 5 || v8 == 6)
    {
LABEL_7:
      v9 = sub_21DBF563C();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      swift_storeEnumTagMultiPayload();
LABEL_33:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    memcpy(a1, a2, *(*(v7 - 8) + 64));
    goto LABEL_33;
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

char *assignWithTake for TTRRemindersListViewModel.ItemID(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D107038(a1, type metadata accessor for TTRRemindersListViewModel.ItemID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v10 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(&a2[v10], 1, v11))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(&a1[v10], &a2[v10], *(*(v13 - 8) + 64));
      goto LABEL_34;
    }

    v16 = swift_getEnumCaseMultiPayload();
    if (v16 <= 3)
    {
      if (v16 == 2 || v16 == 3)
      {
        goto LABEL_21;
      }
    }

    else if (v16 == 4 || v16 == 5 || v16 == 6)
    {
LABEL_21:
      v17 = sub_21DBF563C();
      (*(*(v17 - 8) + 32))(&a1[v10], &a2[v10], v17);
      swift_storeEnumTagMultiPayload();
LABEL_33:
      (*(v12 + 56))(&a1[v10], 0, 1, v11);
      goto LABEL_34;
    }

    memcpy(&a1[v10], &a2[v10], *(v12 + 64));
    goto LABEL_33;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 <= 3)
    {
      if (v8 == 2 || v8 == 3)
      {
        goto LABEL_8;
      }
    }

    else if (v8 == 4 || v8 == 5 || v8 == 6)
    {
LABEL_8:
      v9 = sub_21DBF563C();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      swift_storeEnumTagMultiPayload();
LABEL_34:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    memcpy(a1, a2, *(*(v7 - 8) + 64));
    goto LABEL_34;
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

void **assignWithCopy for TTRRemindersListViewModel.Item(void **a1, void **a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  v5 = a2;
  sub_21D107038(a1, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v21 = *v5;
        *v3 = *v5;
        v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v14 = *(v13 - 8);
        v22 = *(v14 + 48);
        v23 = v21;
        if (v22(v5 + v12, 1, v13))
        {
          goto LABEL_27;
        }

        v37 = swift_getEnumCaseMultiPayload();
        if (v37 > 4)
        {
          if (v37 <= 7)
          {
            if (v37 == 5 || v37 == 6)
            {
              goto LABEL_116;
            }

            goto LABEL_129;
          }

          if (v37 != 8 && v37 != 9)
          {
            goto LABEL_129;
          }

          goto LABEL_115;
        }

        if (v37 > 2)
        {
          goto LABEL_116;
        }

        if (v37 == 1)
        {
          goto LABEL_115;
        }

        if (v37 != 2)
        {
          goto LABEL_129;
        }
      }

      else
      {
        v11 = *v5;
        *v3 = *v5;
        v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v14 = *(v13 - 8);
        v15 = *(v14 + 48);
        v16 = v11;
        if (v15(v5 + v12, 1, v13))
        {
          goto LABEL_27;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_116;
            }

            goto LABEL_129;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_129;
          }

          goto LABEL_115;
        }

        if (v36 > 2)
        {
          goto LABEL_116;
        }

        if (v36 == 1)
        {
          goto LABEL_115;
        }

        if (v36 != 2)
        {
          goto LABEL_129;
        }
      }

      goto LABEL_116;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_34;
      }

      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = swift_getEnumCaseMultiPayload();
      if (v10 > 4)
      {
        if (v10 <= 7)
        {
          if (v10 == 5 || v10 == 6)
          {
            goto LABEL_66;
          }

          goto LABEL_92;
        }

        if (v10 != 8 && v10 != 9)
        {
          goto LABEL_92;
        }
      }

      else
      {
        if (v10 > 2)
        {
LABEL_66:
          v50 = sub_21DBF563C();
          (*(*(v50 - 8) + 16))(v3, v5, v50);
          swift_storeEnumTagMultiPayload();
LABEL_93:
          v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v57 = v56[5];
          v58 = v3 + v57;
          v59 = v5 + v57;
          if (*(v5 + v57 + 8))
          {
            v117 = v5;
            v120 = v3;
            *v58 = *v59;
            *(v58 + 1) = *(v59 + 1);
            v60 = *(v59 + 2);
            v61 = *(v59 + 3);
            v62 = *(v59 + 4);
            v63 = *(v59 + 5);
            v65 = *(v59 + 6);
            v64 = *(v59 + 7);
            v66 = v59[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v60, v61, v62, v63, v65, v64, v66);
            *(v58 + 2) = v60;
            *(v58 + 3) = v61;
            *(v58 + 4) = v62;
            *(v58 + 5) = v63;
            *(v58 + 6) = v65;
            *(v58 + 7) = v64;
            v58[64] = v66;
            v58[65] = v59[65];
            v58[66] = v59[66];
            v58[67] = v59[67];
            v58[68] = v59[68];
            v67 = v59[120];
            if (v67 == 255)
            {
              v81 = *(v59 + 72);
              v82 = *(v59 + 88);
              v83 = *(v59 + 104);
              v58[120] = v59[120];
              *(v58 + 104) = v83;
              *(v58 + 88) = v82;
              *(v58 + 72) = v81;
            }

            else
            {
              v68 = *(v59 + 9);
              v69 = *(v59 + 10);
              v70 = *(v59 + 11);
              v71 = *(v59 + 12);
              v72 = *(v59 + 13);
              v73 = *(v59 + 14);
              v74 = v67 & 1;
              sub_21D0FB960(v68, v69, v70, v71, v72, v73, v67 & 1);
              *(v58 + 9) = v68;
              *(v58 + 10) = v69;
              *(v58 + 11) = v70;
              *(v58 + 12) = v71;
              *(v58 + 13) = v72;
              *(v58 + 14) = v73;
              v58[120] = v74;
            }

            v3 = v120;
            v58[121] = v59[121];
            v5 = v117;
          }

          else
          {
            v75 = *v59;
            v76 = *(v59 + 1);
            v77 = *(v59 + 3);
            *(v58 + 2) = *(v59 + 2);
            *(v58 + 3) = v77;
            *v58 = v75;
            *(v58 + 1) = v76;
            v78 = *(v59 + 4);
            v79 = *(v59 + 5);
            v80 = *(v59 + 6);
            *(v58 + 106) = *(v59 + 106);
            *(v58 + 5) = v79;
            *(v58 + 6) = v80;
            *(v58 + 4) = v78;
          }

          *(v3 + v56[6]) = *(v5 + v56[6]);
          *(v3 + v56[7]) = *(v5 + v56[7]);
          *(v3 + v56[8]) = *(v5 + v56[8]);
          *(v3 + v56[9]) = *(v5 + v56[9]);
          *(v3 + v56[10]) = *(v5 + v56[10]);
          v84 = v56[11];
          v85 = *(v5 + v84);
          *(v3 + v84) = v85;
          v86 = v85;
          goto LABEL_131;
        }

        if (v10 != 1)
        {
          if (v10 == 2)
          {
            goto LABEL_66;
          }

LABEL_92:
          memcpy(v3, v5, *(*(v9 - 8) + 64));
          goto LABEL_93;
        }
      }

      v51 = *v5;
      *v3 = *v5;
      v52 = v51;
      swift_storeEnumTagMultiPayload();
      goto LABEL_93;
    }

    v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v20 = swift_getEnumCaseMultiPayload();
    if (v20 > 4)
    {
      if (v20 <= 7)
      {
        if (v20 == 5 || v20 == 6)
        {
          goto LABEL_70;
        }

        goto LABEL_100;
      }

      if (v20 != 8 && v20 != 9)
      {
        goto LABEL_100;
      }
    }

    else
    {
      if (v20 > 2)
      {
LABEL_70:
        v53 = sub_21DBF563C();
        (*(*(v53 - 8) + 16))(v3, v5, v53);
        swift_storeEnumTagMultiPayload();
LABEL_101:
        v87 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v88 = v87[5];
        v89 = v3 + v88;
        v90 = v5 + v88;
        if (*(v5 + v88 + 8))
        {
          *v89 = *v90;
          *(v89 + 1) = *(v90 + 1);
          v91 = *(v90 + 2);
          v92 = *(v90 + 3);
          v93 = *(v90 + 4);
          v94 = *(v90 + 5);
          v95 = *(v90 + 6);
          v118 = *(v90 + 7);
          v121 = v90[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v91, v92, v93, v94, v95, v118, v121);
          *(v89 + 2) = v91;
          *(v89 + 3) = v92;
          *(v89 + 4) = v93;
          *(v89 + 5) = v94;
          *(v89 + 6) = v95;
          *(v89 + 7) = v118;
          v89[64] = v121;
          v89[65] = v90[65];
          v89[66] = v90[66];
          v89[67] = v90[67];
          v89[68] = v90[68];
          v96 = v90[120];
          if (v96 == 255)
          {
            v108 = *(v90 + 72);
            v109 = *(v90 + 88);
            v110 = *(v90 + 104);
            v89[120] = v90[120];
            *(v89 + 104) = v110;
            *(v89 + 88) = v109;
            *(v89 + 72) = v108;
          }

          else
          {
            v119 = *(v90 + 10);
            v122 = *(v90 + 9);
            v97 = *(v90 + 11);
            v98 = *(v90 + 12);
            v99 = *(v90 + 13);
            v100 = *(v90 + 14);
            v101 = v96 & 1;
            sub_21D0FB960(v122, v119, v97, v98, v99, v100, v96 & 1);
            *(v89 + 9) = v122;
            *(v89 + 10) = v119;
            *(v89 + 11) = v97;
            *(v89 + 12) = v98;
            *(v89 + 13) = v99;
            *(v89 + 14) = v100;
            v89[120] = v101;
          }

          v89[121] = v90[121];
        }

        else
        {
          v102 = *v90;
          v103 = *(v90 + 1);
          v104 = *(v90 + 3);
          *(v89 + 2) = *(v90 + 2);
          *(v89 + 3) = v104;
          *v89 = v102;
          *(v89 + 1) = v103;
          v105 = *(v90 + 4);
          v106 = *(v90 + 5);
          v107 = *(v90 + 6);
          *(v89 + 106) = *(v90 + 106);
          *(v89 + 5) = v106;
          *(v89 + 6) = v107;
          *(v89 + 4) = v105;
        }

        *(v3 + v87[6]) = *(v5 + v87[6]);
        *(v3 + v87[7]) = *(v5 + v87[7]);
        *(v3 + v87[8]) = *(v5 + v87[8]);
        *(v3 + v87[9]) = *(v5 + v87[9]);
        *(v3 + v87[10]) = *(v5 + v87[10]);
        v111 = v87[11];
        v112 = *(v5 + v111);
        *(v3 + v111) = v112;
        v113 = v112;
        goto LABEL_131;
      }

      if (v20 != 1)
      {
        if (v20 == 2)
        {
          goto LABEL_70;
        }

LABEL_100:
        memcpy(v3, v5, *(*(v19 - 8) + 64));
        goto LABEL_101;
      }
    }

    v54 = *v5;
    *v3 = *v5;
    v55 = v54;
    swift_storeEnumTagMultiPayload();
    goto LABEL_101;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *v3 = *v5;
      *(v3 + 8) = *(v5 + 8);
      *(v3 + 9) = *(v5 + 9);
      *(v3 + 10) = *(v5 + 10);
      v17 = v5[2];
      v3[2] = v17;
      v18 = v17;
      goto LABEL_131;
    }

    v28 = *v5;
    *v3 = *v5;
    v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v14 = *(v13 - 8);
    v29 = *(v14 + 48);
    v30 = v28;
    if (v29(v5 + v12, 1, v13))
    {
LABEL_27:
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(v3 + v12, v5 + v12, *(*(v24 - 8) + 64));
      goto LABEL_131;
    }

    v47 = swift_getEnumCaseMultiPayload();
    if (v47 > 4)
    {
      if (v47 <= 7)
      {
        if (v47 == 5 || v47 == 6)
        {
          goto LABEL_116;
        }

        goto LABEL_129;
      }

      if (v47 != 8 && v47 != 9)
      {
        goto LABEL_129;
      }

LABEL_115:
      v114 = *(v5 + v12);
      *(v3 + v12) = v114;
      v115 = v114;
      swift_storeEnumTagMultiPayload();
LABEL_130:
      (*(v14 + 56))(v3 + v12, 0, 1, v13);
      goto LABEL_131;
    }

    if (v47 <= 2)
    {
      if (v47 != 1)
      {
        if (v47 == 2)
        {
          goto LABEL_116;
        }

LABEL_129:
        memcpy(v3 + v12, v5 + v12, *(v14 + 64));
        goto LABEL_130;
      }

      goto LABEL_115;
    }

LABEL_116:
    v116 = sub_21DBF563C();
    (*(*(v116 - 8) + 16))(v3 + v12, v5 + v12, v116);
    swift_storeEnumTagMultiPayload();
    goto LABEL_130;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v25 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v5, 1, v25))
      {
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
        memcpy(v3, v5, *(*(v27 - 8) + 64));
      }

      else
      {
        *v3 = *v5;
        v38 = *(v25 + 20);
        v39 = sub_21DBF6C1C();
        v40 = *(*(v39 - 8) + 16);
        sub_21DBF8E0C();
        v40(v3 + v38, v5 + v38, v39);
        (*(v26 + 56))(v3, 0, 1, v25);
      }

      v41 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v42 = (v3 + v41);
      v43 = (v5 + v41);
      if (v43[1])
      {
        *v42 = *v43;
        v42[1] = v43[1];
        v44 = v43[2];
        v42[2] = v44;
        sub_21DBF8E0C();
        v45 = v44;
      }

      else
      {
        v46 = *v43;
        v42[2] = v43[2];
        *v42 = v46;
      }

      goto LABEL_131;
    case 7:
      v31 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(v5, 1, v31))
      {
        v33 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(v3, v5, *(*(v33 - 8) + 64));
      }

      else
      {
        v48 = sub_21DBF563C();
        (*(*(v48 - 8) + 16))(v3, v5, v48);
        *(v3 + *(v31 + 20)) = *(v5 + *(v31 + 20));
        (*(v32 + 56))(v3, 0, 1, v31);
      }

      v49 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(v3 + *(v49 + 20)) = *(v5 + *(v49 + 20));
      goto LABEL_131;
    case 8:
      *v3 = *v5;
      v7 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v8 = sub_21DBF8D7C();
      (*(*(v8 - 8) + 16))(v3 + v7, v5 + v7, v8);
LABEL_131:
      swift_storeEnumTagMultiPayload();
      return v3;
  }

LABEL_34:
  v34 = *(*(a3 - 8) + 64);

  return memcpy(v3, v5, v34);
}

_BYTE *assignWithTake for TTRRemindersListViewModel.Item(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D107038(a1, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v20 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(a2, 1, v20))
        {
          v22 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v22 - 8) + 64));
        }

        else
        {
          v27 = sub_21DBF563C();
          (*(*(v27 - 8) + 32))(a1, a2, v27);
          a1[*(v20 + 20)] = a2[*(v20 + 20)];
          (*(v21 + 56))(a1, 0, 1, v20);
        }

        v28 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *&a1[*(v28 + 20)] = *&a2[*(v28 + 20)];
        goto LABEL_90;
      }

      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_33;
      }

      *a1 = *a2;
      v16 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v17 = sub_21DBF8D7C();
      (*(*(v17 - 8) + 32))(&a1[v16], &a2[v16], v17);
LABEL_90:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v10 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v11 = *(v10 - 8);
        if ((*(v11 + 48))(a2, 1, v10))
        {
          v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
          memcpy(a1, a2, *(*(v12 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v29 = *(v10 + 20);
          v30 = sub_21DBF6C1C();
          (*(*(v30 - 8) + 32))(&a1[v29], &a2[v29], v30);
          (*(v11 + 56))(a1, 0, 1, v10);
        }

        v31 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v32 = &a1[v31];
        v33 = &a2[v31];
        *v32 = *v33;
        *(v32 + 2) = *(v33 + 2);
        goto LABEL_90;
      }

      goto LABEL_33;
    }

    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(&a2[v13], 1, v14))
    {
      v25 = swift_getEnumCaseMultiPayload();
      if (v25 <= 3)
      {
        if (v25 == 2 || v25 == 3)
        {
          goto LABEL_60;
        }
      }

      else if (v25 == 4 || v25 == 5 || v25 == 6)
      {
        goto LABEL_60;
      }

      goto LABEL_88;
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *a1 = *a2;
      v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(&a2[v13], 1, v14))
      {
        goto LABEL_30;
      }

      v34 = swift_getEnumCaseMultiPayload();
      if (v34 <= 3)
      {
        if (v34 == 2 || v34 == 3)
        {
          goto LABEL_60;
        }
      }

      else if (v34 == 4 || v34 == 5 || v34 == 6)
      {
LABEL_60:
        v35 = sub_21DBF563C();
        (*(*(v35 - 8) + 32))(&a1[v13], &a2[v13], v35);
        swift_storeEnumTagMultiPayload();
LABEL_89:
        (*(v15 + 56))(&a1[v13], 0, 1, v14);
        goto LABEL_90;
      }

LABEL_88:
      memcpy(&a1[v13], &a2[v13], *(v15 + 64));
      goto LABEL_89;
    }

    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(&a2[v13], 1, v14))
    {
      v26 = swift_getEnumCaseMultiPayload();
      if (v26 <= 3)
      {
        if (v26 == 2 || v26 == 3)
        {
          goto LABEL_60;
        }
      }

      else if (v26 == 4 || v26 == 5 || v26 == 6)
      {
        goto LABEL_60;
      }

      goto LABEL_88;
    }

LABEL_30:
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
    memcpy(&a1[v13], &a2[v13], *(*(v19 - 8) + 64));
    goto LABEL_90;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v18 = swift_getEnumCaseMultiPayload();
    if (v18 <= 3)
    {
      if (v18 == 2 || v18 == 3)
      {
        goto LABEL_10;
      }
    }

    else if (v18 == 4 || v18 == 5 || v18 == 6)
    {
      goto LABEL_10;
    }

    goto LABEL_67;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 <= 3)
    {
      if (v8 == 2 || v8 == 3)
      {
        goto LABEL_10;
      }
    }

    else if (v8 == 4 || v8 == 5 || v8 == 6)
    {
LABEL_10:
      v9 = sub_21DBF563C();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      swift_storeEnumTagMultiPayload();
LABEL_68:
      v36 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v37 = v36[5];
      v38 = &a1[v37];
      v39 = &a2[v37];
      v40 = v39[3];
      v38[2] = v39[2];
      v38[3] = v40;
      v41 = v39[1];
      *v38 = *v39;
      v38[1] = v41;
      *(v38 + 106) = *(v39 + 106);
      v42 = v39[6];
      v38[5] = v39[5];
      v38[6] = v42;
      v38[4] = v39[4];
      a1[v36[6]] = a2[v36[6]];
      a1[v36[7]] = a2[v36[7]];
      a1[v36[8]] = a2[v36[8]];
      a1[v36[9]] = a2[v36[9]];
      a1[v36[10]] = a2[v36[10]];
      *&a1[v36[11]] = *&a2[v36[11]];
      goto LABEL_90;
    }

LABEL_67:
    memcpy(a1, a2, *(*(v7 - 8) + 64));
    goto LABEL_68;
  }

LABEL_33:
  v23 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v23);
}

uint64_t sub_21DB2F63C(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.SectionHeader(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListViewModel.ReminderID(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for TTRRemindersListViewModel.HashtagsState(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for TTRTemplatePublicLinkData(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for TTRRemindersListTips(319);
          if (v6 <= 0x3F)
          {
            swift_initEnumMetadataMultiPayload();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListViewModel.EmptyListMessagingType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3E)
  {
    goto LABEL_17;
  }

  if (a2 + 194 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 194) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 194;
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

      return (*a1 | (v4 << 8)) - 194;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 194;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v6 >= 0x3D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListViewModel.EmptyListMessagingType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3E)
  {
    v4 = 0;
  }

  if (a2 > 0x3D)
  {
    v5 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
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
    *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21DB2F918(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 3u) + 2;
  }
}

_BYTE *sub_21DB2F934(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 & 3 ^ 0x82;
  }

  return result;
}

double destroy for TTRRemindersListViewModel.SuggestedSectionDisplayStyle(uint64_t a1)
{
  if (*(a1 + 8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

__n128 initializeWithCopy for TTRRemindersListViewModel.SuggestedSectionDisplayStyle(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 < 0xFFFFFFFF)
  {
    result = *a2;
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = v2;
    v3 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v3;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  return result;
}

void *assignWithCopy for TTRRemindersListViewModel.SuggestedSectionDisplayStyle(void *a1, void *a2)
{
  v4 = a2[1];
  if (a1[1] < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];
      a1[3] = a2[3];
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      return a1;
    }

LABEL_7:
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  a1[2] = a2[2];
  a1[3] = a2[3];
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRRemindersListViewModel.SuggestedSectionDisplayStyle(uint64_t result, uint64_t a2)
{
  if (*(result + 8) < 0xFFFFFFFFuLL)
  {
    v6 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v6;
  }

  else
  {
    v3 = *(a2 + 8);
    if (v3 < 0xFFFFFFFF)
    {
      v4 = result;

      v7 = *(a2 + 16);
      *v4 = *a2;
      *(v4 + 16) = v7;
    }

    else
    {
      *result = *a2;
      *(result + 8) = v3;
      v4 = result;

      v5 = *(a2 + 24);
      *(v4 + 16) = *(a2 + 16);
      *(v4 + 24) = v5;
    }

    return v4;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRRemindersListViewModel.ListInfo(char *a1, char *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));

    return a1;
  }

  v7 = type metadata accessor for TTRListType(0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        v16 = *a2;
        *a1 = *a2;
        a1[8] = a2[8];
        v17 = v16;
        swift_storeEnumTagMultiPayload();
        goto LABEL_17;
      }

      if (EnumCaseMultiPayload == 1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 3:
          v14 = sub_21DBF6C1C();
          (*(*(v14 - 8) + 16))(a1, a2, v14);
          swift_storeEnumTagMultiPayload();
          goto LABEL_17;
        case 4:
          v15 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v15;
          sub_21DBF8E0C();
          swift_storeEnumTagMultiPayload();
          goto LABEL_17;
        case 5:
LABEL_9:
          v12 = *a2;
          *a1 = *a2;
          v13 = v12;
          swift_storeEnumTagMultiPayload();
LABEL_17:
          (*(v8 + 56))(a1, 0, 1, v7);
          goto LABEL_18;
      }
    }

    memcpy(a1, a2, *(v8 + 64));
    goto LABEL_17;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0, &unk_21DC1BD10);
  memcpy(a1, a2, *(*(v9 - 8) + 64));
LABEL_18:
  v18 = a3[5];
  v19 = a3[6];
  v20 = &a1[v18];
  v21 = &a2[v18];
  v22 = *(v21 + 1);
  *v20 = *v21;
  *(v20 + 1) = v22;
  v23 = *&a2[v19];
  *&a1[v19] = v23;
  v24 = a3[7];
  v25 = a3[8];
  v26 = &a1[v24];
  v27 = &a2[v24];
  *v26 = *v27;
  v26[8] = v27[8];
  a1[v25] = a2[v25];
  v28 = a3[9];
  v29 = &a1[v28];
  v30 = &a2[v28];
  v31 = *&a2[v28 + 8];
  sub_21DBF8E0C();
  v32 = v23;
  if (v31 == 3)
  {
    *v29 = *v30;
  }

  else
  {
    *v29 = *v30;
    *(v29 + 1) = v31;
    if ((v31 - 1) >= 2)
    {
      v33 = v31;
    }
  }

  v34 = a3[10];
  v35 = &a1[v34];
  v36 = &a2[v34];
  v37 = type metadata accessor for TTRRemindersListTip(0);
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v36, 1, v37))
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA0, &unk_21DC36080);
    memcpy(v35, v36, *(*(v39 - 8) + 64));
  }

  else
  {
    *v35 = *v36;
    v40 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
    v41 = sub_21DBF8D7C();
    (*(*(v41 - 8) + 16))(&v35[v40], &v36[v40], v41);
    (*(v38 + 56))(v35, 0, 1, v37);
  }

  v42 = a3[12];
  a1[a3[11]] = a2[a3[11]];
  a1[v42] = a2[v42];
  v43 = a3[14];
  a1[a3[13]] = a2[a3[13]];
  a1[v43] = a2[v43];
  v44 = a3[16];
  a1[a3[15]] = a2[a3[15]];
  a1[v44] = a2[v44];
  v45 = a3[18];
  a1[a3[17]] = a2[a3[17]];
  a1[v45] = a2[v45];
  v46 = a3[20];
  a1[a3[19]] = a2[a3[19]];
  *&a1[v46] = *&a2[v46];
  v47 = a3[22];
  a1[a3[21]] = a2[a3[21]];
  v48 = &a1[v47];
  v49 = &a2[v47];
  v50 = *(v49 + 1);
  *v48 = *v49;
  *(v48 + 1) = v50;
  v51 = a3[24];
  a1[a3[23]] = a2[a3[23]];
  v52 = &a1[v51];
  v53 = &a2[v51];
  v54 = type metadata accessor for TTRRemindersListViewModel.HashtagsState(0);
  v55 = *(v54 - 8);
  v56 = *(v55 + 48);
  sub_21DBF8E0C();
  if (v56(v53, 1, v54))
  {
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66848, &qword_21DC3D2C8);
    memcpy(v52, v53, *(*(v57 - 8) + 64));
  }

  else
  {
    v58 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v59 = *(v58 - 8);
    if ((*(v59 + 48))(v53, 1, v58))
    {
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
      memcpy(v52, v53, *(*(v60 - 8) + 64));
    }

    else
    {
      *v52 = *v53;
      v85 = *(v58 + 20);
      v61 = sub_21DBF6C1C();
      v84 = *(*(v61 - 8) + 16);
      sub_21DBF8E0C();
      v84(&v52[v85], &v53[v85], v61);
      (*(v59 + 56))(v52, 0, 1, v58);
    }

    v62 = *(v54 + 20);
    v63 = &v52[v62];
    v64 = &v53[v62];
    v65 = *(v64 + 1);
    if (v65)
    {
      *v63 = *v64;
      *(v63 + 1) = v65;
      v66 = *(v64 + 2);
      *(v63 + 2) = v66;
      sub_21DBF8E0C();
      v67 = v66;
    }

    else
    {
      *v63 = *v64;
      *(v63 + 2) = *(v64 + 2);
    }

    (*(v55 + 56))(v52, 0, 1, v54);
  }

  v68 = a3[25];
  v69 = &a1[v68];
  v70 = &a2[v68];
  v71 = type metadata accessor for TTRTemplatePublicLinkData(0);
  v72 = *(v71 - 8);
  if ((*(v72 + 48))(v70, 1, v71))
  {
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66850, &unk_21DC3D2D0);
    memcpy(v69, v70, *(*(v73 - 8) + 64));
  }

  else
  {
    v74 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v75 = *(v74 - 8);
    if ((*(v75 + 48))(v70, 1, v74))
    {
      v76 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(v69, v70, *(*(v76 - 8) + 64));
    }

    else
    {
      v77 = sub_21DBF563C();
      (*(*(v77 - 8) + 16))(v69, v70, v77);
      v69[*(v74 + 20)] = v70[*(v74 + 20)];
      (*(v75 + 56))(v69, 0, 1, v74);
    }

    *&v69[*(v71 + 20)] = *&v70[*(v71 + 20)];
    (*(v72 + 56))(v69, 0, 1, v71);
  }

  v78 = a3[27];
  a1[a3[26]] = a2[a3[26]];
  a1[v78] = a2[v78];
  v79 = a3[29];
  a1[a3[28]] = a2[a3[28]];
  a1[v79] = a2[v79];
  v80 = a3[31];
  a1[a3[30]] = a2[a3[30]];
  v81 = &a1[v80];
  v82 = &a2[v80];
  *v81 = *v82;
  v81[2] = v82[2];
  a1[a3[32]] = a2[a3[32]];
  return a1;
}

uint64_t destroy for TTRRemindersListViewModel.ListInfo(id *a1, int *a2)
{
  v4 = type metadata accessor for TTRListType(0);
  if ((*(*(v4 - 8) + 48))(a1, 1, v4))
  {
    goto LABEL_11;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  switch(EnumCaseMultiPayload)
  {
    case 3:
      v6 = sub_21DBF6C1C();
      (*(*(v6 - 8) + 8))(a1, v6);
      break;
    case 4:

      break;
    case 5:
LABEL_8:

      break;
  }

LABEL_11:

  v7 = *(a1 + a2[9] + 8);
  if ((v7 - 1) >= 3)
  {
  }

  v8 = a1 + a2[10];
  v9 = type metadata accessor for TTRRemindersListTip(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
    v11 = sub_21DBF8D7C();
    (*(*(v11 - 8) + 8))(&v8[v10], v11);
  }

  v12 = a1 + a2[24];
  v13 = type metadata accessor for TTRRemindersListViewModel.HashtagsState(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    if (!(*(*(v14 - 8) + 48))(v12, 1, v14))
    {

      v15 = *(v14 + 20);
      v16 = sub_21DBF6C1C();
      (*(*(v16 - 8) + 8))(&v12[v15], v16);
    }

    v17 = &v12[*(v13 + 20)];
    if (*(v17 + 1))
    {
    }
  }

  v18 = a2[25];
  v19 = type metadata accessor for TTRTemplatePublicLinkData(0);
  result = (*(*(v19 - 8) + 48))(a1 + v18, 1, v19);
  if (!result)
  {
    v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    result = (*(*(v21 - 8) + 48))(a1 + v18, 1, v21);
    if (!result)
    {
      v22 = sub_21DBF563C();
      v23 = *(*(v22 - 8) + 8);

      return v23(a1 + v18, v22);
    }
  }

  return result;
}

_BYTE *initializeWithCopy for TTRRemindersListViewModel.ListInfo(_BYTE *a1, void **a2, int *a3)
{
  v6 = type metadata accessor for TTRListType(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0, &unk_21DC1BD10);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
    goto LABEL_16;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v14 = *a2;
      *a1 = *a2;
      a1[8] = *(a2 + 8);
      v15 = v14;
      swift_storeEnumTagMultiPayload();
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload == 1)
    {
      goto LABEL_7;
    }

LABEL_14:
    memcpy(a1, a2, *(v7 + 64));
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v12 = sub_21DBF6C1C();
    (*(*(v12 - 8) + 16))(a1, a2, v12);
    swift_storeEnumTagMultiPayload();
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v13 = a2[1];
    *a1 = *a2;
    *(a1 + 1) = v13;
    sub_21DBF8E0C();
    swift_storeEnumTagMultiPayload();
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 5)
  {
    goto LABEL_14;
  }

LABEL_7:
  v10 = *a2;
  *a1 = *a2;
  v11 = v10;
  swift_storeEnumTagMultiPayload();
LABEL_15:
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_16:
  v16 = a3[5];
  v17 = a3[6];
  v18 = &a1[v16];
  v19 = (a2 + v16);
  v20 = v19[1];
  *v18 = *v19;
  v18[1] = v20;
  v21 = *(a2 + v17);
  *&a1[v17] = v21;
  v22 = a3[7];
  v23 = a3[8];
  v24 = &a1[v22];
  v25 = a2 + v22;
  *v24 = *v25;
  v24[8] = v25[8];
  a1[v23] = *(a2 + v23);
  v26 = a3[9];
  v27 = &a1[v26];
  v28 = (a2 + v26);
  v29 = *(a2 + v26 + 8);
  sub_21DBF8E0C();
  v30 = v21;
  if (v29 == 3)
  {
    *v27 = *v28;
  }

  else
  {
    *v27 = *v28;
    *(v27 + 1) = v29;
    if ((v29 - 1) >= 2)
    {
      v31 = v29;
    }
  }

  v32 = a3[10];
  v33 = &a1[v32];
  v34 = a2 + v32;
  v35 = type metadata accessor for TTRRemindersListTip(0);
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v34, 1, v35))
  {
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA0, &unk_21DC36080);
    memcpy(v33, v34, *(*(v37 - 8) + 64));
  }

  else
  {
    *v33 = *v34;
    v38 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
    v39 = sub_21DBF8D7C();
    (*(*(v39 - 8) + 16))(&v33[v38], &v34[v38], v39);
    (*(v36 + 56))(v33, 0, 1, v35);
  }

  v40 = a3[12];
  a1[a3[11]] = *(a2 + a3[11]);
  a1[v40] = *(a2 + v40);
  v41 = a3[14];
  a1[a3[13]] = *(a2 + a3[13]);
  a1[v41] = *(a2 + v41);
  v42 = a3[16];
  a1[a3[15]] = *(a2 + a3[15]);
  a1[v42] = *(a2 + v42);
  v43 = a3[18];
  a1[a3[17]] = *(a2 + a3[17]);
  a1[v43] = *(a2 + v43);
  v44 = a3[20];
  a1[a3[19]] = *(a2 + a3[19]);
  *&a1[v44] = *(a2 + v44);
  v45 = a3[22];
  a1[a3[21]] = *(a2 + a3[21]);
  v46 = &a1[v45];
  v47 = (a2 + v45);
  v48 = v47[1];
  *v46 = *v47;
  v46[1] = v48;
  v49 = a3[24];
  a1[a3[23]] = *(a2 + a3[23]);
  v50 = &a1[v49];
  v51 = (a2 + v49);
  v52 = type metadata accessor for TTRRemindersListViewModel.HashtagsState(0);
  v53 = *(v52 - 8);
  v54 = *(v53 + 48);
  sub_21DBF8E0C();
  if (v54(v51, 1, v52))
  {
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66848, &qword_21DC3D2C8);
    memcpy(v50, v51, *(*(v55 - 8) + 64));
  }

  else
  {
    v56 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v57 = *(v56 - 8);
    if ((*(v57 + 48))(v51, 1, v56))
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
      memcpy(v50, v51, *(*(v58 - 8) + 64));
    }

    else
    {
      *v50 = *v51;
      v83 = *(v56 + 20);
      v59 = sub_21DBF6C1C();
      v82 = *(*(v59 - 8) + 16);
      sub_21DBF8E0C();
      v82(v50 + v83, v51 + v83, v59);
      (*(v57 + 56))(v50, 0, 1, v56);
    }

    v60 = *(v52 + 20);
    v61 = (v50 + v60);
    v62 = (v51 + v60);
    v63 = v62[1];
    if (v63)
    {
      *v61 = *v62;
      v61[1] = v63;
      v64 = v62[2];
      v61[2] = v64;
      sub_21DBF8E0C();
      v65 = v64;
    }

    else
    {
      *v61 = *v62;
      v61[2] = v62[2];
    }

    (*(v53 + 56))(v50, 0, 1, v52);
  }

  v66 = a3[25];
  v67 = &a1[v66];
  v68 = a2 + v66;
  v69 = type metadata accessor for TTRTemplatePublicLinkData(0);
  v70 = *(v69 - 8);
  if ((*(v70 + 48))(v68, 1, v69))
  {
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66850, &unk_21DC3D2D0);
    memcpy(v67, v68, *(*(v71 - 8) + 64));
  }

  else
  {
    v72 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v73 = *(v72 - 8);
    if ((*(v73 + 48))(v68, 1, v72))
    {
      v74 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(v67, v68, *(*(v74 - 8) + 64));
    }

    else
    {
      v75 = sub_21DBF563C();
      (*(*(v75 - 8) + 16))(v67, v68, v75);
      v67[*(v72 + 20)] = v68[*(v72 + 20)];
      (*(v73 + 56))(v67, 0, 1, v72);
    }

    *&v67[*(v69 + 20)] = *&v68[*(v69 + 20)];
    (*(v70 + 56))(v67, 0, 1, v69);
  }

  v76 = a3[27];
  a1[a3[26]] = *(a2 + a3[26]);
  a1[v76] = *(a2 + v76);
  v77 = a3[29];
  a1[a3[28]] = *(a2 + a3[28]);
  a1[v77] = *(a2 + v77);
  v78 = a3[31];
  a1[a3[30]] = *(a2 + a3[30]);
  v79 = &a1[v78];
  v80 = a2 + v78;
  *v79 = *v80;
  v79[2] = v80[2];
  a1[a3[32]] = *(a2 + a3[32]);
  return a1;
}

_BYTE *assignWithCopy for TTRRemindersListViewModel.ListInfo(_BYTE *a1, _BYTE *a2, int *a3)
{
  v6 = type metadata accessor for TTRListType(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (!EnumCaseMultiPayload)
        {
          v19 = *a2;
          *a1 = *a2;
          a1[8] = a2[8];
          v20 = v19;
          swift_storeEnumTagMultiPayload();
          goto LABEL_25;
        }

        if (EnumCaseMultiPayload == 1)
        {
          goto LABEL_7;
        }
      }

      else
      {
        switch(EnumCaseMultiPayload)
        {
          case 3:
            v18 = sub_21DBF6C1C();
            (*(*(v18 - 8) + 16))(a1, a2, v18);
            swift_storeEnumTagMultiPayload();
            goto LABEL_25;
          case 4:
            *a1 = *a2;
            *(a1 + 1) = *(a2 + 1);
            sub_21DBF8E0C();
            swift_storeEnumTagMultiPayload();
            goto LABEL_25;
          case 5:
LABEL_7:
            v12 = *a2;
            *a1 = *a2;
            v13 = v12;
            swift_storeEnumTagMultiPayload();
LABEL_25:
            (*(v7 + 56))(a1, 0, 1, v6);
            goto LABEL_26;
        }
      }

      memcpy(a1, a2, *(v7 + 64));
      goto LABEL_25;
    }

    goto LABEL_10;
  }

  if (v10)
  {
    sub_21D107038(a1, type metadata accessor for TTRListType);
LABEL_10:
    v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0, &unk_21DC1BD10) - 8) + 64);
LABEL_11:
    memcpy(a1, a2, v14);
    goto LABEL_26;
  }

  if (a1 == a2)
  {
    goto LABEL_26;
  }

  sub_21D107038(a1, type metadata accessor for TTRListType);
  v15 = swift_getEnumCaseMultiPayload();
  if (v15 <= 2)
  {
    if (v15)
    {
      if (v15 == 1)
      {
        goto LABEL_17;
      }

      goto LABEL_96;
    }

    v122 = *a2;
    *a1 = *a2;
    a1[8] = a2[8];
    v123 = v122;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    switch(v15)
    {
      case 3:
        v121 = sub_21DBF6C1C();
        (*(*(v121 - 8) + 16))(a1, a2, v121);
        swift_storeEnumTagMultiPayload();
        break;
      case 4:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        sub_21DBF8E0C();
        swift_storeEnumTagMultiPayload();
        break;
      case 5:
LABEL_17:
        v16 = *a2;
        *a1 = *a2;
        v17 = v16;
        swift_storeEnumTagMultiPayload();
        break;
      default:
LABEL_96:
        v14 = *(v7 + 64);
        goto LABEL_11;
    }
  }

LABEL_26:
  v21 = a3[5];
  v22 = &a1[v21];
  v23 = &a2[v21];
  *v22 = *v23;
  v22[1] = v23[1];
  sub_21DBF8E0C();

  v24 = a3[6];
  v25 = *&a2[v24];
  v26 = *&a1[v24];
  *&a1[v24] = v25;
  v27 = v25;

  v28 = a3[7];
  v29 = &a1[v28];
  v30 = &a2[v28];
  v31 = *v30;
  v29[8] = v30[8];
  *v29 = v31;
  a1[a3[8]] = a2[a3[8]];
  v32 = a3[9];
  v33 = &a1[v32];
  v34 = &a2[v32];
  v35 = &a1[v32 + 8];
  v36 = *v35;
  v37 = *&a2[v32 + 8];
  if (*v35 == 3)
  {
    if (v37 != 3)
    {
      *v33 = *v34;
      v33[1] = v34[1];
      v38 = *(v34 + 1);
      if ((v38 - 1) < 2)
      {
LABEL_29:
        *v35 = v38;
        goto LABEL_39;
      }

      goto LABEL_35;
    }

LABEL_32:
    *v33 = *v34;
    goto LABEL_39;
  }

  if (v37 == 3)
  {
    sub_21DB32264(v33);
    goto LABEL_32;
  }

  *v33 = *v34;
  v33[1] = v34[1];
  v38 = *(v34 + 1);
  v39 = (v38 - 1);
  if ((v36 - 1) < 2)
  {
    if (v39 < 2)
    {
      goto LABEL_29;
    }

LABEL_35:
    *v35 = v38;
    v40 = v38;
    goto LABEL_39;
  }

  if (v39 >= 2)
  {
    *v35 = v38;
    v41 = v38;
  }

  else
  {
    sub_21DB32238(v35);
    *v35 = *(v34 + 1);
  }

LABEL_39:
  v42 = a3[10];
  v43 = &a1[v42];
  v44 = &a2[v42];
  v45 = type metadata accessor for TTRRemindersListTip(0);
  v46 = *(v45 - 8);
  v47 = *(v46 + 48);
  v48 = v47(v43, 1, v45);
  v49 = v47(v44, 1, v45);
  if (v48)
  {
    if (!v49)
    {
      *v43 = *v44;
      v50 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v51 = sub_21DBF8D7C();
      (*(*(v51 - 8) + 16))(&v43[v50], &v44[v50], v51);
      (*(v46 + 56))(v43, 0, 1, v45);
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (v49)
  {
    sub_21D107038(v43, type metadata accessor for TTRRemindersListTip);
LABEL_44:
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA0, &unk_21DC36080);
    memcpy(v43, v44, *(*(v52 - 8) + 64));
    goto LABEL_45;
  }

  *v43 = *v44;
  v68 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v69 = sub_21DBF8D7C();
  (*(*(v69 - 8) + 24))(&v43[v68], &v44[v68], v69);
LABEL_45:
  a1[a3[11]] = a2[a3[11]];
  a1[a3[12]] = a2[a3[12]];
  a1[a3[13]] = a2[a3[13]];
  a1[a3[14]] = a2[a3[14]];
  a1[a3[15]] = a2[a3[15]];
  a1[a3[16]] = a2[a3[16]];
  a1[a3[17]] = a2[a3[17]];
  a1[a3[18]] = a2[a3[18]];
  a1[a3[19]] = a2[a3[19]];
  *&a1[a3[20]] = *&a2[a3[20]];
  a1[a3[21]] = a2[a3[21]];
  v53 = a3[22];
  v54 = &a1[v53];
  v55 = &a2[v53];
  *v54 = *v55;
  v54[1] = v55[1];
  sub_21DBF8E0C();

  a1[a3[23]] = a2[a3[23]];
  v56 = a3[24];
  v57 = &a1[v56];
  v58 = &a2[v56];
  v59 = type metadata accessor for TTRRemindersListViewModel.HashtagsState(0);
  v60 = *(v59 - 8);
  v61 = *(v60 + 48);
  v62 = v61(v57, 1, v59);
  v63 = v61(v58, 1, v59);
  if (!v62)
  {
    if (v63)
    {
      sub_21D107038(v57, type metadata accessor for TTRRemindersListViewModel.HashtagsState);
      goto LABEL_51;
    }

    v70 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v126 = *(v70 - 8);
    v71 = *(v126 + 48);
    v72 = v71(v57, 1, v70);
    v73 = v71(v58, 1, v70);
    if (v72)
    {
      if (!v73)
      {
        *v57 = *v58;
        v74 = *(v70 + 20);
        v75 = sub_21DBF6C1C();
        v125 = *(*(v75 - 8) + 16);
        sub_21DBF8E0C();
        v125(&v57[v74], &v58[v74], v75);
        (*(v126 + 56))(v57, 0, 1, v70);
        goto LABEL_76;
      }
    }

    else
    {
      if (!v73)
      {
        *v57 = *v58;
        sub_21DBF8E0C();

        v117 = *(v70 + 20);
        v118 = sub_21DBF6C1C();
        (*(*(v118 - 8) + 24))(&v57[v117], &v58[v117], v118);
LABEL_76:
        v102 = *(v59 + 20);
        v103 = &v57[v102];
        v104 = &v58[v102];
        v105 = *&v58[v102 + 8];
        if (*(v103 + 1))
        {
          if (v105)
          {
            *v103 = *v104;
            *(v103 + 1) = *(v104 + 1);
            sub_21DBF8E0C();

            v106 = *(v103 + 2);
            v107 = *(v104 + 2);
            *(v103 + 2) = v107;
            v108 = v107;
          }

          else
          {
            sub_21D122250(v103);
            v116 = *(v104 + 2);
            *v103 = *v104;
            *(v103 + 2) = v116;
          }
        }

        else if (v105)
        {
          *v103 = *v104;
          *(v103 + 1) = *(v104 + 1);
          v114 = *(v104 + 2);
          *(v103 + 2) = v114;
          sub_21DBF8E0C();
          v115 = v114;
        }

        else
        {
          v120 = *v104;
          *(v103 + 2) = *(v104 + 2);
          *v103 = v120;
        }

        goto LABEL_61;
      }

      sub_21D107038(v57, type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState);
    }

    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
    memcpy(v57, v58, *(*(v101 - 8) + 64));
    goto LABEL_76;
  }

  if (v63)
  {
LABEL_51:
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66848, &qword_21DC3D2C8);
    memcpy(v57, v58, *(*(v67 - 8) + 64));
    goto LABEL_61;
  }

  v64 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  v65 = *(v64 - 8);
  if ((*(v65 + 48))(v58, 1, v64))
  {
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
    memcpy(v57, v58, *(*(v66 - 8) + 64));
  }

  else
  {
    *v57 = *v58;
    v127 = *(v64 + 20);
    v76 = sub_21DBF6C1C();
    v124 = *(*(v76 - 8) + 16);
    sub_21DBF8E0C();
    v124(&v57[v127], &v58[v127], v76);
    (*(v65 + 56))(v57, 0, 1, v64);
  }

  v77 = *(v59 + 20);
  v78 = &v57[v77];
  v79 = &v58[v77];
  if (*(v79 + 1))
  {
    *v78 = *v79;
    *(v78 + 1) = *(v79 + 1);
    v80 = *(v79 + 2);
    *(v78 + 2) = v80;
    sub_21DBF8E0C();
    v81 = v80;
  }

  else
  {
    v82 = *v79;
    *(v78 + 2) = *(v79 + 2);
    *v78 = v82;
  }

  (*(v60 + 56))(v57, 0, 1, v59);
LABEL_61:
  v83 = a3[25];
  v84 = &a1[v83];
  v85 = &a2[v83];
  v86 = type metadata accessor for TTRTemplatePublicLinkData(0);
  v87 = *(v86 - 8);
  v88 = *(v87 + 48);
  v89 = v88(v84, 1, v86);
  v90 = v88(v85, 1, v86);
  if (!v89)
  {
    if (v90)
    {
      sub_21D107038(v84, type metadata accessor for TTRTemplatePublicLinkData);
      goto LABEL_67;
    }

    v95 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v128 = *(v95 - 8);
    v96 = *(v128 + 48);
    v97 = v96(v84, 1, v95);
    v98 = v96(v85, 1, v95);
    if (v97)
    {
      if (!v98)
      {
        v99 = sub_21DBF563C();
        (*(*(v99 - 8) + 16))(v84, v85, v99);
        v84[*(v95 + 20)] = v85[*(v95 + 20)];
        (*(v128 + 56))(v84, 0, 1, v95);
LABEL_82:
        *&v84[*(v86 + 20)] = *&v85[*(v86 + 20)];
        goto LABEL_83;
      }
    }

    else
    {
      if (!v98)
      {
        v119 = sub_21DBF563C();
        (*(*(v119 - 8) + 24))(v84, v85, v119);
        v84[*(v95 + 20)] = v85[*(v95 + 20)];
        goto LABEL_82;
      }

      sub_21D107038(v84, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
    }

    v109 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
    memcpy(v84, v85, *(*(v109 - 8) + 64));
    goto LABEL_82;
  }

  if (v90)
  {
LABEL_67:
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66850, &unk_21DC3D2D0);
    memcpy(v84, v85, *(*(v94 - 8) + 64));
    goto LABEL_83;
  }

  v91 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v92 = *(v91 - 8);
  if ((*(v92 + 48))(v85, 1, v91))
  {
    v93 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
    memcpy(v84, v85, *(*(v93 - 8) + 64));
  }

  else
  {
    v100 = sub_21DBF563C();
    (*(*(v100 - 8) + 16))(v84, v85, v100);
    v84[*(v91 + 20)] = v85[*(v91 + 20)];
    (*(v92 + 56))(v84, 0, 1, v91);
  }

  *&v84[*(v86 + 20)] = *&v85[*(v86 + 20)];
  (*(v87 + 56))(v84, 0, 1, v86);
LABEL_83:
  a1[a3[26]] = a2[a3[26]];
  a1[a3[27]] = a2[a3[27]];
  a1[a3[28]] = a2[a3[28]];
  a1[a3[29]] = a2[a3[29]];
  a1[a3[30]] = a2[a3[30]];
  v110 = a3[31];
  v111 = &a1[v110];
  v112 = &a2[v110];
  *v111 = *v112;
  v111[1] = v112[1];
  v111[2] = v112[2];
  a1[a3[32]] = a2[a3[32]];
  return a1;
}

uint64_t sub_21DB32264(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 - 1) >= 2)
  {
    v2 = result;

    return v2;
  }

  return result;
}

char *initializeWithTake for TTRRemindersListViewModel.ListInfo(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for TTRListType(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0, &unk_21DC1BD10);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v9 = sub_21DBF6C1C();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(v7 + 64));
    }

    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v10 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  *&a1[v10] = *&a2[v10];
  v11 = a3[7];
  v12 = a3[8];
  v13 = &a1[v11];
  v14 = &a2[v11];
  *v13 = *v14;
  v13[8] = v14[8];
  a1[v12] = a2[v12];
  v15 = a3[10];
  *&a1[a3[9]] = *&a2[a3[9]];
  v16 = &a1[v15];
  v17 = &a2[v15];
  v18 = type metadata accessor for TTRRemindersListTip(0);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18))
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA0, &unk_21DC36080);
    memcpy(v16, v17, *(*(v20 - 8) + 64));
  }

  else
  {
    *v16 = *v17;
    v21 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
    v22 = sub_21DBF8D7C();
    (*(*(v22 - 8) + 32))(&v16[v21], &v17[v21], v22);
    (*(v19 + 56))(v16, 0, 1, v18);
  }

  v23 = a3[12];
  a1[a3[11]] = a2[a3[11]];
  a1[v23] = a2[v23];
  v24 = a3[14];
  a1[a3[13]] = a2[a3[13]];
  a1[v24] = a2[v24];
  v25 = a3[16];
  a1[a3[15]] = a2[a3[15]];
  a1[v25] = a2[v25];
  v26 = a3[18];
  a1[a3[17]] = a2[a3[17]];
  a1[v26] = a2[v26];
  v27 = a3[20];
  a1[a3[19]] = a2[a3[19]];
  *&a1[v27] = *&a2[v27];
  v28 = a3[22];
  a1[a3[21]] = a2[a3[21]];
  *&a1[v28] = *&a2[v28];
  v29 = a3[24];
  a1[a3[23]] = a2[a3[23]];
  v30 = &a1[v29];
  v31 = &a2[v29];
  v32 = type metadata accessor for TTRRemindersListViewModel.HashtagsState(0);
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v31, 1, v32))
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66848, &qword_21DC3D2C8);
    memcpy(v30, v31, *(*(v34 - 8) + 64));
  }

  else
  {
    v35 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v31, 1, v35))
    {
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
      memcpy(v30, v31, *(*(v37 - 8) + 64));
    }

    else
    {
      *v30 = *v31;
      v38 = *(v35 + 20);
      v39 = sub_21DBF6C1C();
      (*(*(v39 - 8) + 32))(&v30[v38], &v31[v38], v39);
      (*(v36 + 56))(v30, 0, 1, v35);
    }

    v40 = *(v32 + 20);
    v41 = &v30[v40];
    v42 = &v31[v40];
    *v41 = *v42;
    *(v41 + 2) = *(v42 + 2);
    (*(v33 + 56))(v30, 0, 1, v32);
  }

  v43 = a3[25];
  v44 = &a1[v43];
  v45 = &a2[v43];
  v46 = type metadata accessor for TTRTemplatePublicLinkData(0);
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v45, 1, v46))
  {
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66850, &unk_21DC3D2D0);
    memcpy(v44, v45, *(*(v48 - 8) + 64));
  }

  else
  {
    v49 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v45, 1, v49))
    {
      v51 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(v44, v45, *(*(v51 - 8) + 64));
    }

    else
    {
      v52 = sub_21DBF563C();
      (*(*(v52 - 8) + 32))(v44, v45, v52);
      v44[*(v49 + 20)] = v45[*(v49 + 20)];
      (*(v50 + 56))(v44, 0, 1, v49);
    }

    *&v44[*(v46 + 20)] = *&v45[*(v46 + 20)];
    (*(v47 + 56))(v44, 0, 1, v46);
  }

  v53 = a3[27];
  a1[a3[26]] = a2[a3[26]];
  a1[v53] = a2[v53];
  v54 = a3[29];
  a1[a3[28]] = a2[a3[28]];
  a1[v54] = a2[v54];
  v55 = a3[31];
  a1[a3[30]] = a2[a3[30]];
  v56 = &a1[v55];
  v57 = &a2[v55];
  *v56 = *v57;
  v56[2] = v57[2];
  a1[a3[32]] = a2[a3[32]];
  return a1;
}

char *assignWithTake for TTRRemindersListViewModel.ListInfo(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for TTRListType(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      if (a1 == a2)
      {
        goto LABEL_14;
      }

      sub_21D107038(a1, type metadata accessor for TTRListType);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v13 = sub_21DBF6C1C();
        (*(*(v13 - 8) + 32))(a1, a2, v13);
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      v12 = *(v7 + 64);
LABEL_8:
      memcpy(a1, a2, v12);
      goto LABEL_14;
    }

    sub_21D107038(a1, type metadata accessor for TTRListType);
LABEL_7:
    v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0, &unk_21DC1BD10) - 8) + 64);
    goto LABEL_8;
  }

  if (v10)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v11 = sub_21DBF6C1C();
    (*(*(v11 - 8) + 32))(a1, a2, v11);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(v7 + 64));
  }

  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_14:
  v14 = a3[5];
  v15 = &a1[v14];
  v16 = &a2[v14];
  v18 = *v16;
  v17 = *(v16 + 1);
  *v15 = v18;
  *(v15 + 1) = v17;

  v19 = a3[6];
  v20 = *&a1[v19];
  *&a1[v19] = *&a2[v19];

  v21 = a3[7];
  v22 = a3[8];
  v23 = &a1[v21];
  v24 = &a2[v21];
  *v23 = *v24;
  v23[8] = v24[8];
  a1[v22] = a2[v22];
  v25 = a3[9];
  v26 = &a1[v25];
  v27 = &a2[v25];
  v29 = &a1[v25 + 8];
  v28 = *v29;
  if (*v29 == 3)
  {
LABEL_17:
    *v26 = *v27;
    goto LABEL_18;
  }

  v30 = *(v27 + 1);
  if (v30 == 3)
  {
    sub_21DB32264(v26);
    goto LABEL_17;
  }

  *v26 = *v27;
  v26[1] = v27[1];
  if ((v28 - 1) >= 2)
  {
    if ((v30 - 1) >= 2)
    {
      *v29 = v30;
    }

    else
    {
      sub_21DB32238(v29);
      *v29 = *(v27 + 1);
    }
  }

  else
  {
    *v29 = v30;
  }

LABEL_18:
  v31 = a3[10];
  v32 = &a1[v31];
  v33 = &a2[v31];
  v34 = type metadata accessor for TTRRemindersListTip(0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  v37 = v36(v32, 1, v34);
  v38 = v36(v33, 1, v34);
  if (v37)
  {
    if (!v38)
    {
      *v32 = *v33;
      v39 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v40 = sub_21DBF8D7C();
      (*(*(v40 - 8) + 32))(&v32[v39], &v33[v39], v40);
      (*(v35 + 56))(v32, 0, 1, v34);
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v38)
  {
    sub_21D107038(v32, type metadata accessor for TTRRemindersListTip);
LABEL_23:
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA0, &unk_21DC36080);
    memcpy(v32, v33, *(*(v41 - 8) + 64));
    goto LABEL_24;
  }

  *v32 = *v33;
  v64 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v65 = sub_21DBF8D7C();
  (*(*(v65 - 8) + 40))(&v32[v64], &v33[v64], v65);
LABEL_24:
  v42 = a3[12];
  a1[a3[11]] = a2[a3[11]];
  a1[v42] = a2[v42];
  v43 = a3[14];
  a1[a3[13]] = a2[a3[13]];
  a1[v43] = a2[v43];
  v44 = a3[16];
  a1[a3[15]] = a2[a3[15]];
  a1[v44] = a2[v44];
  v45 = a3[18];
  a1[a3[17]] = a2[a3[17]];
  a1[v45] = a2[v45];
  v46 = a3[20];
  a1[a3[19]] = a2[a3[19]];
  *&a1[v46] = *&a2[v46];
  v47 = a3[22];
  a1[a3[21]] = a2[a3[21]];
  v48 = &a1[v47];
  v49 = &a2[v47];
  v51 = *v49;
  v50 = *(v49 + 1);
  *v48 = v51;
  *(v48 + 1) = v50;

  v52 = a3[24];
  a1[a3[23]] = a2[a3[23]];
  v53 = &a1[v52];
  v54 = &a2[v52];
  v55 = type metadata accessor for TTRRemindersListViewModel.HashtagsState(0);
  v56 = *(v55 - 8);
  v57 = *(v56 + 48);
  v58 = v57(v53, 1, v55);
  v59 = v57(v54, 1, v55);
  if (v58)
  {
    if (!v59)
    {
      v60 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v61 = *(v60 - 8);
      if ((*(v61 + 48))(v54, 1, v60))
      {
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
        memcpy(v53, v54, *(*(v62 - 8) + 64));
      }

      else
      {
        *v53 = *v54;
        v72 = *(v60 + 20);
        v73 = sub_21DBF6C1C();
        (*(*(v73 - 8) + 32))(&v53[v72], &v54[v72], v73);
        (*(v61 + 56))(v53, 0, 1, v60);
      }

      v74 = *(v55 + 20);
      v75 = &v53[v74];
      v76 = &v54[v74];
      *v75 = *v76;
      *(v75 + 2) = *(v76 + 2);
      (*(v56 + 56))(v53, 0, 1, v55);
      goto LABEL_51;
    }

LABEL_30:
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66848, &qword_21DC3D2C8);
    memcpy(v53, v54, *(*(v63 - 8) + 64));
    goto LABEL_51;
  }

  if (v59)
  {
    sub_21D107038(v53, type metadata accessor for TTRRemindersListViewModel.HashtagsState);
    goto LABEL_30;
  }

  v66 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  v111 = *(v66 - 8);
  v67 = *(v111 + 48);
  v68 = v67(v53, 1, v66);
  v69 = v67(v54, 1, v66);
  if (!v68)
  {
    if (!v69)
    {
      *v53 = *v54;

      v108 = *(v66 + 20);
      v109 = sub_21DBF6C1C();
      (*(*(v109 - 8) + 40))(&v53[v108], &v54[v108], v109);
      goto LABEL_45;
    }

    sub_21D107038(v53, type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState);
    goto LABEL_44;
  }

  if (v69)
  {
LABEL_44:
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
    memcpy(v53, v54, *(*(v77 - 8) + 64));
    goto LABEL_45;
  }

  *v53 = *v54;
  v70 = *(v66 + 20);
  v71 = sub_21DBF6C1C();
  (*(*(v71 - 8) + 32))(&v53[v70], &v54[v70], v71);
  (*(v111 + 56))(v53, 0, 1, v66);
LABEL_45:
  v78 = *(v55 + 20);
  v79 = &v53[v78];
  v80 = &v54[v78];
  if (*(v79 + 1))
  {
    v81 = *(v80 + 1);
    if (v81)
    {
      *v79 = *v80;
      *(v79 + 1) = v81;

      v82 = *(v79 + 2);
      *(v79 + 2) = *(v80 + 2);

      goto LABEL_51;
    }

    sub_21D122250(v79);
  }

  *v79 = *v80;
  *(v79 + 2) = *(v80 + 2);
LABEL_51:
  v83 = a3[25];
  v84 = &a1[v83];
  v85 = &a2[v83];
  v86 = type metadata accessor for TTRTemplatePublicLinkData(0);
  v87 = *(v86 - 8);
  v88 = *(v87 + 48);
  v89 = v88(v84, 1, v86);
  v90 = v88(v85, 1, v86);
  if (!v89)
  {
    if (v90)
    {
      sub_21D107038(v84, type metadata accessor for TTRTemplatePublicLinkData);
      goto LABEL_57;
    }

    v95 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v112 = *(v95 - 8);
    v96 = *(v112 + 48);
    v97 = v96(v84, 1, v95);
    v98 = v96(v85, 1, v95);
    if (v97)
    {
      if (!v98)
      {
        v99 = sub_21DBF563C();
        (*(*(v99 - 8) + 32))(v84, v85, v99);
        v84[*(v95 + 20)] = v85[*(v95 + 20)];
        (*(v112 + 56))(v84, 0, 1, v95);
LABEL_66:
        *&v84[*(v86 + 20)] = *&v85[*(v86 + 20)];
        goto LABEL_67;
      }
    }

    else
    {
      if (!v98)
      {
        v110 = sub_21DBF563C();
        (*(*(v110 - 8) + 40))(v84, v85, v110);
        v84[*(v95 + 20)] = v85[*(v95 + 20)];
        goto LABEL_66;
      }

      sub_21D107038(v84, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
    }

    v101 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
    memcpy(v84, v85, *(*(v101 - 8) + 64));
    goto LABEL_66;
  }

  if (v90)
  {
LABEL_57:
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66850, &unk_21DC3D2D0);
    memcpy(v84, v85, *(*(v94 - 8) + 64));
    goto LABEL_67;
  }

  v91 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v92 = *(v91 - 8);
  if ((*(v92 + 48))(v85, 1, v91))
  {
    v93 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
    memcpy(v84, v85, *(*(v93 - 8) + 64));
  }

  else
  {
    v100 = sub_21DBF563C();
    (*(*(v100 - 8) + 32))(v84, v85, v100);
    v84[*(v91 + 20)] = v85[*(v91 + 20)];
    (*(v92 + 56))(v84, 0, 1, v91);
  }

  *&v84[*(v86 + 20)] = *&v85[*(v86 + 20)];
  (*(v87 + 56))(v84, 0, 1, v86);
LABEL_67:
  v102 = a3[27];
  a1[a3[26]] = a2[a3[26]];
  a1[v102] = a2[v102];
  v103 = a3[29];
  a1[a3[28]] = a2[a3[28]];
  a1[v103] = a2[v103];
  v104 = a3[31];
  a1[a3[30]] = a2[a3[30]];
  v105 = &a1[v104];
  v106 = &a2[v104];
  *v105 = *v106;
  v105[1] = v106[1];
  v105[2] = v106[2];
  a1[a3[32]] = a2[a3[32]];
  return a1;
}

void sub_21DB33814(uint64_t a1)
{
  sub_21D0DBFB4(319, qword_280D16AB8, type metadata accessor for TTRListType);
  if (v1 <= 0x3F)
  {
    sub_21D0DBFB4(319, &qword_280D15E58, type metadata accessor for TTRRemindersListTip);
    if (v2 <= 0x3F)
    {
      sub_21D0DBFB4(319, qword_280D148D0, type metadata accessor for TTRRemindersListViewModel.HashtagsState);
      if (v3 <= 0x3F)
      {
        sub_21D0DBFB4(319, qword_280D13ED8, type metadata accessor for TTRTemplatePublicLinkData);
        if (v4 <= 0x3F)
        {
          swift_initStructMetadata();
        }
      }
    }
  }
}

void destroy for TTRRemindersListViewModel.ListSharingInfo(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 - 1) >= 2)
  {
  }
}

uint64_t sub_21DB33A80(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 8);
  if ((v2 - 1) >= 2)
  {
    v3 = result;
    v4 = v2;
    result = v3;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t assignWithCopy for TTRRemindersListViewModel.ListSharingInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  v6 = v5 - 1;
  if ((v4 - 1) >= 2)
  {
    if (v6 >= 2)
    {
      *v3 = v5;
      v9 = v5;

      return a1;
    }

    sub_21DB32238((a1 + 8));
    v5 = *(a2 + 8);
    goto LABEL_6;
  }

  if (v6 < 2)
  {
LABEL_6:
    *v3 = v5;
    return a1;
  }

  *v3 = v5;
  v7 = v5;
  return a1;
}

uint64_t assignWithTake for TTRRemindersListViewModel.ListSharingInfo(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 1) = *(a2 + 1);
  v3 = (result + 8);
  v2 = *(result + 8);
  v4 = *(a2 + 8);
  if ((v2 - 1) >= 2)
  {
    v5 = result;
    if ((v4 - 1) >= 2)
    {
      *v3 = v4;
    }

    else
    {
      sub_21DB32238((result + 8));
      *v3 = v4;
    }

    return v5;
  }

  else
  {
    *v3 = v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListViewModel.ListSharingInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 2;
  if (v4 < 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListViewModel.ListSharingInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *result = a2 - 2147483645;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void destroy for TTRRemindersListViewModel.ListSharingInfo.Status(void **a1)
{
  v1 = *a1;
  v2 = -1;
  if (v1 < 0xFFFFFFFF)
  {
    v2 = v1;
  }

  if (v2 - 1 < 0)
  {
  }
}

void **assignWithCopy for TTRRemindersListViewModel.ListSharingInfo.Status(void **result, void **a2)
{
  v2 = *result;
  LODWORD(v3) = -1;
  if (*result >= 0xFFFFFFFF)
  {
    LODWORD(v4) = -1;
  }

  else
  {
    v4 = *result;
  }

  v5 = v4 - 1;
  v6 = *a2;
  if (*a2 < 0xFFFFFFFF)
  {
    v3 = *a2;
  }

  v7 = v3 - 1;
  if (v5 < 0)
  {
    if (v7 < 0)
    {
      *result = v6;
      v12 = result;
      v13 = v6;

      return v12;
    }

    else
    {
      v8 = result;

      result = v8;
      *v8 = *a2;
    }
  }

  else
  {
    *result = v6;
    if (v7 < 0)
    {
      v10 = result;
      v11 = v6;
      return v10;
    }
  }

  return result;
}

void **assignWithTake for TTRRemindersListViewModel.ListSharingInfo.Status(void **result, void **a2)
{
  v2 = *result;
  LODWORD(v3) = -1;
  if (*result < 0xFFFFFFFF)
  {
    v3 = *result;
  }

  v4 = *a2;
  if (v3 - 1 < 0)
  {
    LODWORD(v5) = -1;
    if (v4 < 0xFFFFFFFF)
    {
      v5 = *a2;
    }

    if (v5 - 1 < 0)
    {
      *result = v4;
      v7 = result;

      return v7;
    }

    else
    {
      v6 = result;

      result = v6;
      *v6 = v4;
    }
  }

  else
  {
    *result = v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListViewModel.ListSharingInfo.Status(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
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

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListViewModel.ListSharingInfo.Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_21DB33EA0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

uint64_t initializeWithCopy for TTRRemindersListViewModel.DeleteCompletedMenuItem(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRRemindersListViewModel.DeleteCompletedMenuItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  v4 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v4;
  return a1;
}

uint64_t assignWithTake for TTRRemindersListViewModel.DeleteCompletedMenuItem(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

unint64_t sub_21DB34014()
{
  result = qword_27CE66930;
  if (!qword_27CE66930)
  {
    result = swift_getWitnessTable(byte_21DC3F13C, &type metadata for TTRRemindersListViewModel.SectionID.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CE66930);
  }

  return result;
}

unint64_t sub_21DB3406C()
{
  result = qword_280D14108;
  if (!qword_280D14108)
  {
    result = swift_getWitnessTable(byte_21DC3F0AC, &type metadata for TTRRemindersListViewModel.SectionID.CodingKeys, v0, v1);
    atomic_store(result, &qword_280D14108);
  }

  return result;
}

unint64_t sub_21DB340C4()
{
  result = qword_280D14110;
  if (!qword_280D14110)
  {
    result = swift_getWitnessTable(byte_21DC3F0D4, &type metadata for TTRRemindersListViewModel.SectionID.CodingKeys, v0, v1);
    atomic_store(result, &qword_280D14110);
  }

  return result;
}

uint64_t sub_21DB34118(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656D616ELL && a2 == 0xE500000000000000;
  if (v4 || (sub_21DBFC64C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44497463656A626FLL && a2 == 0xE800000000000000 || (sub_21DBFC64C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021DC77FF0 == a2 || (sub_21DBFC64C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_21DBFC64C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7954788 && a2 == 0xE300000000000000 || (sub_21DBFC64C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000 || (sub_21DBFC64C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1918985593 && a2 == 0xE400000000000000 || (sub_21DBFC64C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x706D6F4365746164 && a2 == 0xEE0073746E656E6FLL || (sub_21DBFC64C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C6E6F6974636573 && a2 == 0xEB00000000737365 || (sub_21DBFC64C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000019 && 0x800000021DC78010 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_21DBFC64C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

void sub_21DB34454(id a1)
{
  if (a1 - 1 >= 2)
  {
  }
}

void sub_21DB34468(uint64_t a1, void *a2)
{
  if (a2 != 3)
  {
    sub_21DB34454(a2);
  }
}

id TTRListBadgeView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t TTRListBadgeView.ColorInfo.localizedDescription.getter()
{
  v1 = *(v0 + 48);
  if (v1 < 0)
  {
    LOBYTE(v8) = *v0;
    v4 = TTRListType.PredefinedSmartListType.color.getter();
    v5 = [v4 accessibilityName];
  }

  else
  {
    v2 = *(v0 + 4);
    v3 = *(v0 + 5);
    if ((v1 & 1) == 0)
    {
      sub_21DBF8E0C();
      return v2;
    }

    v9 = *v0;
    v10 = v0[1];
    v11 = *(v0 + 4);
    LOBYTE(v12) = 1;
    v4 = TTRListColors.Color.nativeColor.getter();
    v5 = [v4 accessibilityName];
  }

  v6 = v5;

  v2 = sub_21DBFA16C();
  return v2;
}

void TTRListBadgeView.ActionBadgeParams.init(size:cornerRadius:margin:symbolSize:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

void TTRListBadgeView.ShadowParams.init(offset:radius:opacity:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

RemindersUICore::TTRListBadgeView::LinearGradient __swiftcall TTRListBadgeView.LinearGradient.init(from:to:)(UIColor from, UIColor to)
{
  v2->super.isa = from.super.isa;
  v2[1].super.isa = to.super.isa;
  result.to = to;
  result.from = from;
  return result;
}

uint64_t static TTRListBadgeView.LinearGradient.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  if (sub_21DBFB63C())
  {
    return sub_21DBFB63C() & 1;
  }

  else
  {
    return 0;
  }
}

id TTRListBadgeView.GradientSettings.lighteningGradient.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  a1[1] = v3;
  return sub_21D10EC0C(v2, v3);
}

id TTRListBadgeView.GradientSettings.darkeningGradient.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return sub_21D10EC0C(v2, v3);
}

__n128 TTRListBadgeView.GradientSettings.init(lighteningGradient:lightenBlendMode:darkeningGradient:darkenBlendMode:)@<Q0>(_OWORD *a1@<X0>, int a2@<W1>, __n128 *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = *a1;
  *(a5 + 16) = a2;
  result = *a3;
  *(a5 + 24) = *a3;
  *(a5 + 40) = a4;
  return result;
}

__n128 TTRListBadgeView.GradientSettings.init(gradient:blendMode:)@<Q0>(__n128 *a1@<X0>, unsigned __int32 a2@<W1>, __n128 *a3@<X8>)
{
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u32[0] = a2;
  *(&a3[1] + 8) = 0uLL;
  a3[2].n128_u32[2] = 0;
  return result;
}

uint64_t TTRListBadgeView.BackgroundParams.gradientStyleOverride.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  return sub_21DB3A9B0(v2, v3, v4, v5, v6, v7);
}

__n128 TTRListBadgeView.BackgroundParams.gradientStyleOverride.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_21D10E2C8(*(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  result = *a1;
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 8) = result;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  return result;
}

id TTRListBadgeView.BackgroundParams.gradientSettingsOverride.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  return sub_21D10F3DC(v2, v3, v4, v5, v6);
}

__n128 TTRListBadgeView.BackgroundParams.gradientSettingsOverride.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_21D10EC4C(*(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88));
  result = *a1;
  *(v1 + 72) = *(a1 + 16);
  *(v1 + 56) = result;
  *(v1 + 88) = v3;
  *(v1 + 96) = v4;
  return result;
}

__n128 TTRListBadgeView.BackgroundParams.init(gradientVisibilityOverride:gradientStyleOverride:hasBorder:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  *(a4 + 56) = 1;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0;
  *a4 = a1;
  sub_21D10E2C8(3, 0, 0, 0, 0, 0);
  result = *a2;
  *(a4 + 24) = *(a2 + 16);
  *(a4 + 8) = result;
  *(a4 + 40) = v7;
  *(a4 + 48) = v8;
  *(a4 + 100) = a3;
  return result;
}

uint64_t TTRListBadgeView.ImageParams.init(color:blendMode:contentMode:)@<X0>(uint64_t result@<X0>, int a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 12) = v4;
  return result;
}

uint64_t TTRListBadgeView.ImageContentMode.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRListBadgeView.SelectionParams.init(borderColor:borderWidth:borderSpacing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  return result;
}

BOOL static TTRListBadgeView.SelectionParams.== infix(_:_:)(double *a1, double *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v5 = a2[1];
  v4 = a2[2];
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  v6 = sub_21DBFB63C();
  result = 0;
  if ((v6 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

BOOL sub_21DB34DF4(double *a1, double *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v5 = a2[1];
  v4 = a2[2];
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  v6 = sub_21DBFB63C();
  result = 0;
  if ((v6 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

__n128 sub_21DB34E78@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundLayer) + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape;
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  result = *v2;
  v6 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v6;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  return result;
}

void (*sub_21DB34EAC(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundLayer) + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape;
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = *(v4 + 16);
  *v3 = *v4;
  *(v3 + 16) = v7;
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  return sub_21DB34F40;
}

void sub_21DB34F40(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[1];
  v4 = (*a1)[2];
  v3 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = *(*a1 + 40);
  v7[0] = **a1;
  v7[1] = v2;
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v5;
  v8 = v6;
  sub_21D113874(v7);

  free(v1);
}

double sub_21DB34FB0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_listColorInfo;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  v10 = *(v3 + 48);
  *(a2 + 48) = v10;
  return sub_21DB3AD64(v4, v5, v6, v7, v8, v9, v10);
}

void sub_21DB35020(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8[0] = *a1;
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v5;
  v8[5] = v6;
  v9 = v7;
  sub_21DB3AD64(v8[0], v2, v3, v4, v5, v6, v7);
  sub_21D113E3C(v8);
}

double sub_21DB3507C@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_listColorInfo;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  v10 = *(v3 + 48);
  *(a1 + 48) = v10;
  return sub_21DB3AD64(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t (*sub_21DB350E8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_listColorInfo;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_21DB35170;
}

void sub_21DB35170(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = &v4[v3[4]];
    v6 = *v5;
    v7 = v5[48];
    if (v7 < 0)
    {
      v8 = TTRListType.PredefinedSmartListType.color.getter();
      [v4 setTintColor_];
    }

    else
    {
      v9 = *(v5 + 1);
      v10 = *(v5 + 2);
      v11 = *(v5 + 3);
      v12 = *(v5 + 4);
      v13 = *(v5 + 5);
      sub_21D0FB960(v6, v9, v10, v11, v12, v13, v7 & 1);
      v8 = TTRListColors.Color.nativeColor.getter();
      [v4 setTintColor_];
      sub_21D113F88(v6, v9, v10, v11, v12, v13, v7);
    }
  }

  free(v3);
}

void (*sub_21DB35298(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageView) image];
  return sub_21DB352FC;
}

void sub_21DB352FC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_21D112D3C(v2);
  }

  else
  {
    sub_21D112D3C(*a1);
  }
}

double sub_21DB35364(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emoji);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v3;
  v4[1] = v2;
  sub_21DBF8E0C();
  sub_21D1136D0(v5, v6);

  return result;
}

double sub_21DB353F0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emoji);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_21D1136D0(v6, v7);

  return result;
}

void (*sub_21DB35464(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emoji;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  sub_21DBF8E0C();
  return sub_21DB35504;
}

void sub_21DB35504(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = (v5 + v4);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v6;
  if (a2)
  {
    sub_21DBF8E0C();
    sub_21D1136D0(v9, v8);
  }

  else
  {
    sub_21D1136D0(v9, v8);
  }

  free(v2);
}

double sub_21DB35598()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiFontSize;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21DB355DC(double a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiFontSize;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiView);
    if (v5)
    {
      v6 = v5;
      v7 = [v6 font];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 fontWithSize_];
        [v6 setFont_];
      }
    }
  }
}

void (*sub_21DB356B0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiFontSize;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_21DB35744;
}

void sub_21DB35744(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24);
  v5 = *(v2 + 32);
  v4 = *(v2 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;
  if (a2)
  {
    if (v6 != v3)
    {
      v7 = *(*(v2 + 32) + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiView);
      if (v7)
      {
        v8 = v2;
        v9 = v7;
        v10 = [v9 font];
        if (!v10)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }
  }

  else if (v6 != v3)
  {
    v11 = *(*(v2 + 32) + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiView);
    if (v11)
    {
      v8 = v2;
      v9 = v11;
      v10 = [v9 font];
      if (!v10)
      {
LABEL_10:

        v2 = v8;
        goto LABEL_11;
      }

LABEL_9:
      v12 = v10;
      v13 = [v10 fontWithSize_];
      [v9 setFont_];

      goto LABEL_10;
    }
  }

LABEL_11:

  free(v2);
}

void *sub_21DB35860()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageParams;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*sub_21DB358AC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageParams;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_21DB35948;
}

void sub_21DB35948(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_21D114670(v3);
  }

  else
  {
    sub_21D114670(*(*a1 + 24));
  }

  free(v2);
}

id sub_21DB359B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageParams;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 12);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 12) = v6;

  return v4;
}

void sub_21DB35A28(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  v5 = *a2 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageParams;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 12);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 12) = v4;
  v9 = v2;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  sub_21DB35AC8(&v10);
}

void sub_21DB35AC8(uint64_t *a1)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 12);
  v4 = v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageParams;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 12);
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  v8 = v5;
  if ((sub_21DBFB63C() & 1) == 0)
  {

LABEL_6:
    sub_21D113134();
    return;
  }

  if (v6 != v2 || ((v3 ^ v7) & 1) != 0)
  {
    goto LABEL_6;
  }
}

id sub_21DB35BA0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageParams;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 12);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 12) = v6;

  return v4;
}

void sub_21DB35C10(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  v5 = v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageParams;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 12);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 12) = v4;
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  v9 = v2;
  if ((sub_21DBFB63C() & 1) == 0)
  {

LABEL_6:
    sub_21D113134();
    goto LABEL_7;
  }

  if (v3 != v7 || ((v8 ^ v4) & 1) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
}

void (*sub_21DB35CEC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageParams;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 12);
  *(v4 + 24) = *v6;
  v4 += 24;
  *(v4 + 8) = v8;
  *(v4 + 12) = v9;
  v10 = v7;
  return sub_21DB35D9C;
}

void sub_21DB35D9C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = (*a1 + 24);
  v5 = *v4;
  v6 = *(*a1 + 40) + *(*a1 + 48);
  v7 = *(*a1 + 32);
  v8 = *(*a1 + 36);
  v9 = *v6;
  v10 = *(v6 + 8);
  v20 = *(v6 + 12);
  *v6 = *v4;
  *(v6 + 8) = v7;
  *(v6 + 12) = v8;
  v11 = v3[5] + v3[6];
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 12);
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  v15 = v12;
  if (a2)
  {
    v16 = v5;
    v17 = sub_21DBFB63C();

    if (v17 & 1) == 0 || v13 != v10 || ((v20 ^ v14))
    {
      sub_21D113134();
    }

    v9 = *v4;
  }

  else
  {
    v18 = sub_21DBFB63C();

    if ((v18 & 1) == 0 || (v13 == v10 ? (v19 = v20 == v14) : (v19 = 0), !v19))
    {
      sub_21D113134();
    }
  }

  free(v3);
}

uint64_t sub_21DB35EE8()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selected;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21DB35F2C(char a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selected;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_21DB3797C();
}

uint64_t (*sub_21DB35F80(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21DB35FE4;
}

void sub_21DB35FFC(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_isContextMenuTarget;
  swift_beginAccess();
  v5 = v3[v4];
  v3[v4] = v2;
  if (v2 != v5)
  {
    [v3 setTintAdjustmentMode_];
  }
}

uint64_t sub_21DB36070()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_isContextMenuTarget;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21DB360B4(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_isContextMenuTarget;
  swift_beginAccess();
  v5 = v1[v4];
  v1[v4] = a1;
  if (v5 != v3)
  {
    [v1 setTintAdjustmentMode_];
  }
}

void (*sub_21DB36128(uint64_t *a1))(id **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_isContextMenuTarget;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21DB361BC;
}

void sub_21DB361BC(id **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = *(*a1 + 40);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    [v1[3] setTintAdjustmentMode_];
  }

  free(v1);
}

uint64_t sub_21DB36218@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundParams;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 32);
  v16[1] = *(v3 + 16);
  v16[2] = v5;
  v16[0] = v4;
  v6 = *(v3 + 48);
  v7 = *(v3 + 64);
  v8 = *(v3 + 80);
  *&v17[13] = *(v3 + 93);
  v16[4] = v7;
  *v17 = v8;
  v16[3] = v6;
  v9 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v9;
  v10 = *(v3 + 32);
  v11 = *(v3 + 48);
  v12 = *(v3 + 64);
  v13 = *(v3 + 80);
  *(a2 + 93) = *(v3 + 93);
  *(a2 + 64) = v12;
  *(a2 + 80) = v13;
  *(a2 + 32) = v10;
  *(a2 + 48) = v11;
  return sub_21DB3AD74(v16, &v15);
}

uint64_t sub_21DB362C0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundParams;
  swift_beginAccess();
  v5 = *(v3 + 80);
  v15 = *(v3 + 64);
  v4 = v15;
  v16[0] = v5;
  *(v16 + 13) = *(v3 + 93);
  v6 = *(v16 + 13);
  v7 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v7;
  v8 = *(v3 + 48);
  v13 = *(v3 + 32);
  v9 = v13;
  v14 = v8;
  *a1 = v12[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  *(a1 + 48) = v8;
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  *(a1 + 93) = v6;
  return sub_21DB3AD74(v12, &v11);
}

uint64_t sub_21DB3634C(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundParams;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v30 = *(v3 + 64);
  v31[0] = v4;
  *(v31 + 13) = *(v3 + 93);
  v5 = *(v3 + 16);
  v26 = *v3;
  v27 = v5;
  v6 = *(v3 + 48);
  v28 = *(v3 + 32);
  v29 = v6;
  v32[0] = v26;
  v32[1] = v5;
  v32[2] = v28;
  v32[3] = v6;
  v32[4] = v30;
  v33[0] = v4;
  *(v33 + 13) = *(v31 + 13);
  v7 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v7;
  *(v3 + 93) = *(a1 + 93);
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  sub_21DB3AD74(&v26, v39);
  sub_21DB3ADAC(v32);
  v10 = *(v3 + 48);
  v11 = *(v3 + 80);
  v37 = *(v3 + 64);
  v38[0] = v11;
  v12 = *(v3 + 16);
  v34[0] = *v3;
  v34[1] = v12;
  v13 = *(v3 + 48);
  v15 = *v3;
  v14 = *(v3 + 16);
  v35 = *(v3 + 32);
  v36 = v13;
  v16 = *(v3 + 80);
  v24 = v37;
  *v25 = v16;
  v20 = v15;
  v21 = v14;
  *(v38 + 13) = *(v3 + 93);
  *&v25[13] = *(v3 + 93);
  v22 = v35;
  v23 = v10;
  v18[4] = v30;
  v19[0] = v31[0];
  *(v19 + 13) = *(v31 + 13);
  v18[0] = v26;
  v18[1] = v27;
  v18[2] = v28;
  v18[3] = v29;
  sub_21DB3AD74(v34, v39);
  LOBYTE(v3) = _s15RemindersUICore16TTRListBadgeViewC16BackgroundParamsV2eeoiySbAE_AEtFZ_0(&v20, v18);
  v39[4] = v24;
  v40[0] = *v25;
  *(v40 + 13) = *&v25[13];
  v39[0] = v20;
  v39[1] = v21;
  v39[2] = v22;
  v39[3] = v23;
  sub_21DB3ADAC(v39);
  if ((v3 & 1) == 0)
  {
    sub_21D10EC98();
  }

  return sub_21DB3ADAC(&v26);
}

void (*sub_21DB364C8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x228uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 544) = v1;
  v5 = (v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundParams);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[2];
  *(v4 + 16) = v5[1];
  *(v4 + 32) = v7;
  *v4 = v6;
  v8 = v5[3];
  v9 = v5[4];
  v10 = v5[5];
  *(v4 + 93) = *(v5 + 93);
  *(v4 + 64) = v9;
  *(v4 + 80) = v10;
  *(v4 + 48) = v8;
  v12 = v5[4];
  v11 = v5[5];
  v13 = *(v5 + 93);
  *(v4 + 152) = v5[3];
  *(v4 + 197) = v13;
  *(v4 + 184) = v11;
  *(v4 + 168) = v12;
  v14 = *v5;
  v15 = v5[1];
  *(v4 + 136) = v5[2];
  *(v4 + 120) = v15;
  *(v4 + 104) = v14;
  sub_21DB3AD74(v4, v4 + 208);
  return sub_21DB365BC;
}

void sub_21DB365BC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 152);
  v4 = *(*a1 + 184);
  if (a2)
  {
    *(v2 + 376) = *(v2 + 168);
    *(v2 + 392) = v4;
    *(v2 + 405) = *(v2 + 197);
    v5 = *(v2 + 120);
    *(v2 + 312) = *(v2 + 104);
    *(v2 + 328) = v5;
    *(v2 + 344) = *(v2 + 136);
    *(v2 + 360) = v3;
    v6 = *(v2 + 152);
    v7 = *(v2 + 184);
    v17 = *(v2 + 168);
    v18[0] = v7;
    *(v18 + 13) = *(v2 + 197);
    v8 = *(v2 + 120);
    v13 = *(v2 + 104);
    v14 = v8;
    v15 = *(v2 + 136);
    v16 = v6;
    sub_21DB3AD74(v2 + 312, v2 + 416);
    sub_21DB3634C(&v13);
    v9 = *(v2 + 152);
    v10 = *(v2 + 184);
    *(v2 + 272) = *(v2 + 168);
    *(v2 + 288) = v10;
    *(v2 + 301) = *(v2 + 197);
    v11 = *(v2 + 120);
    *(v2 + 208) = *(v2 + 104);
    *(v2 + 224) = v11;
    *(v2 + 240) = *(v2 + 136);
    *(v2 + 256) = v9;
    sub_21DB3ADAC(v2 + 208);
  }

  else
  {
    v17 = *(v2 + 168);
    v18[0] = v4;
    *(v18 + 13) = *(v2 + 197);
    v12 = *(v2 + 120);
    v13 = *(v2 + 104);
    v14 = v12;
    v15 = *(v2 + 136);
    v16 = v3;
    sub_21DB3634C(&v13);
  }

  free(v2);
}

void sub_21DB366E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *a2 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowParams;
  swift_beginAccess();
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v5;
  *(v4 + 32) = v3;
  sub_21DB36750();
}

void sub_21DB36750()
{
  v1 = &v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowParams];
  swift_beginAccess();
  if (v1[32])
  {
    v2 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowLayer;
    v3 = *&v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowLayer];
    if (v3)
    {
      [v3 removeFromSuperlayer];
      v4 = *&v0[v2];
    }

    else
    {
      v4 = 0;
    }

    *&v0[v2] = 0;
  }

  else
  {
    v5 = *(v1 + 2);
    v6 = *(v1 + 3);
    v8 = *v1;
    v7 = *(v1 + 1);
    v9 = *&v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowLayer];
    if (v9)
    {
      v10 = *&v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowLayer];
    }

    else
    {
      v10 = sub_21DB36884(v0);
      v9 = 0;
    }

    v11 = v9;
    v4 = v10;
    [v4 setShadowRadius_];
    [v4 setShadowOffset_];
    *&v12 = v6;
    [v4 setShadowOpacity_];

    v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_layerColorsDirty] = 1;
    [v0 setNeedsLayout];
  }
}

id sub_21DB36884(char *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for TTRListBadgeView.ShadowLayer()) init];
  [a1 bounds];
  [v2 setFrame_];

  v3 = *&a1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowLayer];
  *&a1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowLayer] = v2;
  v4 = v2;

  v5 = [a1 layer];
  [v5 insertSublayer:v4 atIndex:0];

  [a1 setNeedsLayout];
  return v4;
}

__n128 sub_21DB36958@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowParams;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

void sub_21DB369B0(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowParams;
  swift_beginAccess();
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v5;
  *(v4 + 32) = v3;
  sub_21DB36750();
}

uint64_t (*sub_21DB36A14(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21DB36A78;
}

uint64_t sub_21DB36A90(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id sub_21DB36AD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selectionParams;
  swift_beginAccess();
  v4 = *v3;
  *a2 = *v3;
  *(a2 + 8) = *(v3 + 8);

  return v4;
}

void sub_21DB36B40(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selectionParams;
  swift_beginAccess();
  v6 = *v5;
  *v5 = v2;
  v7 = v2;
  v9 = v6;
  v8 = *(v5 + 8);
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  v10 = v8;
  sub_21DB36BC8(&v9);
}

void sub_21DB36BC8(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selectionParams];
  swift_beginAccess();
  v7 = *v6;
  sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
  v8 = v7;
  v9 = v3;
  v10 = sub_21DBFB63C();

  if ((v10 & 1) == 0)
  {
    v2[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_layerColorsDirty] = 1;
    [v2 setNeedsLayout];
  }

  if (v6[1] != v5 || v6[2] != v4)
  {
    [v2 setNeedsLayout];
  }
}

id sub_21DB36CC0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selectionParams;
  swift_beginAccess();
  v4 = *v3;
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);

  return v4;
}

void sub_21DB36D28(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = v1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selectionParams;
  swift_beginAccess();
  v6 = *v5;
  *v5 = v2;
  v8 = v6;
  v7 = *(v5 + 8);
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  v9 = v7;
  sub_21DB36BC8(&v8);
}

void (*sub_21DB36DA8(uint64_t *a1))(void ***a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selectionParams;
  *(v3 + 48) = v1;
  *(v3 + 56) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  *v4 = *v6;
  *(v4 + 8) = v8;
  v9 = v7;
  return sub_21DB36E50;
}

void sub_21DB36E50(void ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7] + (*a1)[6];
  v4 = **a1;
  v5 = *v3;
  v7 = *(v3 + 1);
  v6 = *(v3 + 2);
  v8 = *(*a1 + 1);
  *v3 = v4;
  *(v3 + 8) = v8;
  if (a2)
  {
    v9 = v4;
    v10 = v5;
    v11 = v7;
    v12 = v6;
    sub_21DB36BC8(&v10);
  }

  else
  {
    v10 = v5;
    v11 = v7;
    v12 = v6;
    sub_21DB36BC8(&v10);
  }

  free(v2);
}

void sub_21DB36EFC(_OWORD *a1, void *a2)
{
  v3 = (*a2 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_contentInset);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = a1[1];
  *v3 = *a1;
  *(v3 + 1) = v8;
  sub_21DB36F64(v4, v5, v6, v7);
}

void sub_21DB36F64(float64_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_contentInset];
  swift_beginAccess();
  v6.f64[0] = a1;
  v6.f64[1] = a2;
  v7.f64[0] = a3;
  v7.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v5, v6), vceqq_f64(v5[1], v7)))) & 1) == 0)
  {
    [v4 bounds];
    v12 = sub_21D112FD8(v5->f64[0], v5->f64[1], v5[1].f64[0], v5[1].f64[1], v8, v9, v10, v11);
    v16 = v12;
    v17 = v13;
    v18 = v14;
    v19 = v15;
    v20 = *&v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageView];
    if (v20)
    {
      [v20 setFrame_];
    }

    v21 = *&v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiView];
    if (v21)
    {
      [v21 setFrame_];
    }
  }
}

double sub_21DB37080()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_contentInset;
  swift_beginAccess();
  return *v1;
}

void sub_21DB370CC(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_contentInset);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  sub_21DB36F64(v10, v11, v12, v13);
}

uint64_t (*sub_21DB37144(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_contentInset;
  *(v3 + 56) = v1;
  *(v3 + 64) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *v4 = *v6;
  v4[1] = v7;
  return sub_21DB371DC;
}

void sub_21DB371DC(_OWORD **a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 7) + *(*a1 + 8));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = (*a1)[1];
  *v2 = **a1;
  *(v2 + 1) = v7;
  sub_21DB36F64(v3, v4, v5, v6);

  free(v1);
}

id TTRListBadgeView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRListBadgeView.init(coder:)(void *a1)
{
  v2 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_listColorInfo];
  if (qword_280D1BAC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = xmmword_280D1BAC8;
  v4 = xmmword_280D1BAD8;
  v5 = xmmword_280D1BAE8;
  v6 = byte_280D1BAF8;
  *v2 = xmmword_280D1BAC8;
  *(v2 + 1) = v4;
  *(v2 + 2) = v5;
  v2[48] = v6;
  v7 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emoji];
  *v7 = 0;
  v7[1] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiFontSize] = 0x4030000000000000;
  v8 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageParams];
  v9 = objc_opt_self();
  *v8 = [v9 whiteColor];
  *(v8 + 2) = 0;
  v8[12] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selected] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_isContextMenuTarget] = 0;
  v10 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundParams];
  *(v10 + 7) = 1;
  *(v10 + 4) = 0u;
  *(v10 + 5) = 0u;
  *(v10 + 24) = 0;
  *v10 = 2;
  *(v10 + 1) = 3;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 12) = 0;
  sub_21D10E2C8(3, 0, 0, 0, 0, 0);
  v10[100] = 0;
  v11 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowParams];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v11[32] = 1;
  v12 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selectionParams];
  *v12 = [v9 tertiaryLabelColor];
  *(v12 + 8) = xmmword_21DC3F230;
  v13 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_contentInset];
  v14 = *(MEMORY[0x277D768C8] + 16);
  *v13 = *MEMORY[0x277D768C8];
  v13[1] = v14;
  *&v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selectedLayer] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowLayer] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageView] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiView] = 0;
  v15 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_customSmartListActionViews];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_nonEmojiBackgroundLayerGradientSettings];
  *v16 = 1;
  *(v16 + 10) = 0;
  *(v16 + 24) = 0u;
  *(v16 + 8) = 0u;
  v17 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiBackgroundLayerGradientSettings];
  *v17 = 1;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 10) = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_layerColorsDirty] = 1;
  v18 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityName];
  *v18 = 0;
  v18[1] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreAccessibilityName] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreTintColorValue] = 0;
  v19 = &v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_accessibilityDelegate];
  v20 = type metadata accessor for TTRListBadgeView.BackgroundLayer();
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  v21 = [objc_allocWithZone(v20) init];
  *&v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundLayer] = v21;
  v27.receiver = v1;
  v27.super_class = type metadata accessor for TTRListBadgeView();
  v22 = objc_msgSendSuper2(&v27, sel_initWithCoder_, a1);
  v23 = v22;
  if (v22)
  {
    v24 = v22;
    sub_21D10E5F0();
  }

  return v23;
}

void sub_21DB375DC()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiView;
  if (!*&v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiView])
  {
    [v0 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v10 = &v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_contentInset];
    swift_beginAccess();
    v11 = sub_21D112FD8(*v10, v10[1], v10[2], v10[3], v3, v5, v7, v9);
    v15 = [objc_allocWithZone(type metadata accessor for TTRListBadgeView.EmojiView()) initWithFrame_];
    v16 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiFontSize;
    swift_beginAccess();
    v17 = *&v0[v16];
    v18 = [v15 font];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 fontWithSize_];
      [v15 setFont_];
    }

    [v0 addSubview_];
    v21 = *&v0[v1];
    *&v0[v1] = v15;
    v22 = v15;

    sub_21D113250();
    v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_layerColorsDirty] = 1;
    [v0 setNeedsLayout];
  }
}

id sub_21DB37790(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v5 = [v3 layer];
  [v5 setCornerRadius_];

  v6 = [v3 layer];
  [v6 setCornerCurve_];

  v7 = [objc_opt_self() configurationWithPointSize:5 weight:1 scale:v2];
  v8 = sub_21DBFA12C();
  v9 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  [v4 setImage_];
  v10 = [objc_opt_self() whiteColor];
  [v4 setTintColor_];

  [v4 setContentMode_];
  [v3 addSubview_];

  return v3;
}

void sub_21DB3797C()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selected;
  swift_beginAccess();
  v2 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selectedLayer;
  v3 = *&v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selectedLayer];
  if (v0[v1] == 1)
  {
    if (v3)
    {
      return;
    }

    v4 = [objc_allocWithZone(type metadata accessor for TTRListBadgeView.SelectionLayer()) init];
    v5 = *&v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundLayer] + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape;
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
    v8 = &v4[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A414SelectionLayer_shape];
    v9 = *(v5 + 16);
    *v8 = *v5;
    *(v8 + 1) = v9;
    *(v8 + 4) = v6;
    v8[40] = v7;
    v10 = [v0 layer];
    [v10 insertSublayer:v4 atIndex:0];

    v11 = *&v0[v2];
    *&v0[v2] = v4;
    v12 = v4;

    [v0 setNeedsLayout];
    v0[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_layerColorsDirty] = 1;
    [v0 setNeedsLayout];
  }

  else
  {
    if (!v3)
    {
      return;
    }

    [v3 removeFromSuperlayer];
    v12 = *&v0[v2];
    *&v0[v2] = 0;
  }
}

double sub_21DB37AC8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityName);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
  sub_21DBF8E0C();

  return result;
}

uint64_t sub_21DB37BE8()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreAccessibilityName;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21DB37C80(char a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreAccessibilityName;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_21DB37D78()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreTintColorValue;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21DB37E10(char a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreTintColorValue;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_21DB37EC0()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreAccessibilityName;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    return 0;
  }

  v3 = (v0 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityName);
  swift_beginAccess();
  v2 = *v3;
  v4 = v3[1];
  if (v4)
  {
    v5 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreTintColorValue;
    swift_beginAccess();
    if (*(v0 + v5))
    {
      v6 = qword_280D1BAA8;
      sub_21DBF8E0C();
      if (v6 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
    }

    else
    {
      v7 = qword_280D16610;
      sub_21DBF8E0C();
      if (v7 != -1)
      {
        swift_once();
      }

      sub_21DBF8E0C();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_21DC08D00;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_21D17A884();
    *(v8 + 32) = v2;
    *(v8 + 40) = v4;
    v2 = sub_21DBFA17C();
  }

  return v2;
}

uint64_t sub_21DB38134()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for TTRListBadgeView();
  v1 = objc_msgSendSuper2(&v20, sel_accessibilityLabel);
  if (!v1)
  {
LABEL_10:
    v7 = MEMORY[0x277D84F90];
    v11 = sub_21DB37EC0();
    if (!v12)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v2 = v1;
  v3 = sub_21DBFA16C();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    goto LABEL_10;
  }

  v7 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_21D210A84((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[16 * v9];
  *(v10 + 4) = v3;
  *(v10 + 5) = v5;
  v11 = sub_21DB37EC0();
  if (v12)
  {
LABEL_11:
    v13 = v11;
    v14 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_21D210A84(0, *(v7 + 2) + 1, 1, v7);
    }

    v16 = *(v7 + 2);
    v15 = *(v7 + 3);
    if (v16 >= v15 >> 1)
    {
      v7 = sub_21D210A84((v15 > 1), v16 + 1, 1, v7);
    }

    *(v7 + 2) = v16 + 1;
    v17 = &v7[16 * v16];
    *(v17 + 4) = v13;
    *(v17 + 5) = v14;
  }

LABEL_16:
  if (qword_280D1B938 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D1ADAA8();
  v18 = sub_21DBFA07C();

  return v18;
}

uint64_t sub_21DB383F4()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreTintColorValue;
  swift_beginAccess();
  result = 0;
  if ((*(v0 + v1) & 1) == 0)
  {
    v3 = (v0 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_listColorInfo);
    swift_beginAccess();
    v4 = *(v3 + 48);
    if (v4 < 0)
    {
      LOBYTE(v9) = *v3;
      v5 = TTRListType.PredefinedSmartListType.color.getter();
      v6 = [v5 accessibilityName];
    }

    else
    {
      if ((v4 & 1) == 0)
      {
        v8 = *(v3 + 4);
        sub_21DBF8E0C();
        return v8;
      }

      v10 = *v3;
      v11 = v3[1];
      v12 = *(v3 + 4);
      v13 = *(v3 + 5);
      LOBYTE(v14) = 1;
      v5 = TTRListColors.Color.nativeColor.getter();
      v6 = [v5 accessibilityName];
    }

    v7 = v6;

    v8 = sub_21DBFA16C();
    return v8;
  }

  return result;
}

id sub_21DB3852C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_21DBFA12C();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_21DB385AC()
{
  v31.receiver = v0;
  v31.super_class = type metadata accessor for TTRListBadgeView();
  v1 = objc_msgSendSuper2(&v31, sel_accessibilityIdentifier);
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v3 = sub_21DBFA16C();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

LABEL_9:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v7 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_21D210A84((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[16 * v9];
  *(v10 + 4) = v3;
  *(v10 + 5) = v5;
LABEL_10:
  v11 = [v0 accessibilityLabel];
  if (v11)
  {
    v12 = v11;
    v13 = sub_21DBFA16C();
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_21D210A84(0, *(v7 + 2) + 1, 1, v7);
      }

      v18 = *(v7 + 2);
      v17 = *(v7 + 3);
      if (v18 >= v17 >> 1)
      {
        v7 = sub_21D210A84((v17 > 1), v18 + 1, 1, v7);
      }

      *(v7 + 2) = v18 + 1;
      v19 = &v7[16 * v18];
      *(v19 + 4) = v13;
      *(v19 + 5) = v15;
    }

    else
    {
    }
  }

  v20 = [v0 accessibilityValue];
  if (v20)
  {
    v21 = v20;
    v22 = sub_21DBFA16C();
    v24 = v23;

    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_21D210A84(0, *(v7 + 2) + 1, 1, v7);
      }

      v27 = *(v7 + 2);
      v26 = *(v7 + 3);
      if (v27 >= v26 >> 1)
      {
        v7 = sub_21D210A84((v26 > 1), v27 + 1, 1, v7);
      }

      *(v7 + 2) = v27 + 1;
      v28 = &v7[16 * v27];
      *(v28 + 4) = v22;
      *(v28 + 5) = v24;
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D1ADAA8();
  v29 = sub_21DBFA07C();

  return v29;
}

void sub_21DB38864(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    sub_21DBFA16C();
    v6 = a1;
    v7 = sub_21DBFA12C();
  }

  else
  {
    v8 = a1;
    v7 = 0;
  }

  v9.receiver = a1;
  v9.super_class = type metadata accessor for TTRListBadgeView();
  objc_msgSendSuper2(&v9, *a4, v7);
}

char *sub_21DB38960()
{
  v1 = sub_21DB37EC0();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
  }

  else
  {
    v10 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreTintColorValue;
    swift_beginAccess();
    if (*(v0 + v10))
    {
      return MEMORY[0x277D84F90];
    }

    v11 = (v0 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_listColorInfo);
    swift_beginAccess();
    v12 = *(v11 + 48);
    if (v12 < 0)
    {
      LOBYTE(v17) = *v11;
      v13 = TTRListType.PredefinedSmartListType.color.getter();
      v14 = [v13 accessibilityName];
    }

    else
    {
      v3 = *(v11 + 4);
      v4 = *(v11 + 5);
      if ((v12 & 1) == 0)
      {
        sub_21DBF8E0C();
        goto LABEL_3;
      }

      v18 = *v11;
      v19 = v11[1];
      v20 = *(v11 + 4);
      LOBYTE(v21) = 1;
      v13 = TTRListColors.Color.nativeColor.getter();
      v14 = [v13 accessibilityName];
    }

    v15 = v14;

    v3 = sub_21DBFA16C();
    v4 = v16;
  }

LABEL_3:
  v5 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_21D210A84((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[16 * v7];
  *(v8 + 4) = v3;
  *(v8 + 5) = v4;
  return v5;
}

uint64_t sub_21DB38B90(uint64_t a1, uint64_t *a2, __n128 a3)
{
  sub_21DB3ADDC(a1, v7);
  v4 = *a2;
  v5 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_accessibilityDelegate;
  swift_beginAccess();
  sub_21DB3AE4C(v7, v4 + v5);
  return swift_endAccess();
}

uint64_t sub_21DB38BF4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_accessibilityDelegate;
  swift_beginAccess();
  return sub_21DB3ADDC(v1 + v3, a1);
}

uint64_t sub_21DB38C4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_accessibilityDelegate;
  swift_beginAccess();
  sub_21DB3AE4C(a1, v1 + v3);
  return swift_endAccess();
}

BOOL sub_21DB38D0C()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_accessibilityDelegate;
  swift_beginAccess();
  sub_21DB3ADDC(v0 + v1, &v6);
  v2 = v7;
  if (v7)
  {
    sub_21D0D0FD0(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v4 + 8))(v0, v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    sub_21DB3AEBC(&v6);
  }

  return v2 != 0;
}

id sub_21DB39388(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v8 = a5 + a6;
  v19 = CGRectInset(*&a1, -(a5 + a6), -(a5 + a6));
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  [v6 setFrame_];
  [v6 setBorderWidth_];
  v13 = *&v6[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A414SelectionLayer_shape];
  if (v6[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A414SelectionLayer_shape + 40] && v6[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A414SelectionLayer_shape + 40] != 1)
  {
    if (*&v6[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A414SelectionLayer_shape + 24] | *&v6[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A414SelectionLayer_shape + 32] | *&v13 | *&v6[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A414SelectionLayer_shape + 16] | *&v6[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A414SelectionLayer_shape + 8])
    {
      v15 = MEMORY[0x277CDA138];
      v14 = 0.0;
    }

    else
    {
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      v14 = CGRectGetWidth(v20) * 0.5;
      v15 = MEMORY[0x277CDA130];
    }
  }

  else
  {
    v14 = v8 + v13;
    v15 = MEMORY[0x277CDA138];
  }

  [v6 setCornerRadius_];
  v16 = *v15;

  return [v6 setCornerCurve_];
}

void *sub_21DB39768(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape];
  *(v3 + 4) = 0;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[40] = 2;
  v4 = &v1[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_gradientAndBorderSettings];
  *v4 = 1;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 38) = 0;
  *&v1[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_userInterfaceLayoutDirection] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_disableSublayerUpdates] = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_21DBFC62C();
  v8.receiver = v1;
  v8.super_class = type metadata accessor for TTRListBadgeView.BackgroundLayer();
  v6 = objc_msgSendSuper2(&v8, sel_initWithLayer_, v5);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

id sub_21DB398F8(uint64_t a1, int a2)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v6 = objc_allocWithZone(type metadata accessor for TTRNoDefaultImplicitActionGradientLayer());
  v7 = v3;
  v8 = v5;
  v9 = [v6 init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58680, &qword_21DC0C030);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21DC08D20;
  v11 = v9;
  v12 = [v7 CGColor];
  type metadata accessor for CGColor(0);
  v14 = v13;
  *(v10 + 56) = v13;
  *(v10 + 32) = v12;
  v15 = [v8 CGColor];
  *(v10 + 88) = v14;
  *(v10 + 64) = v15;
  v16 = sub_21DBFA5DC();

  [v11 setColors_];

  [v11 setStartPoint_];
  [v11 setEndPoint_];

  v17 = v11;
  [v2 bounds];
  [v17 setFrame_];
  v18 = sub_21D6E3724(a2);
  [v17 setCompositingFilter_];

  [v2 addSublayer_];
  sub_21D0D9834(v3, v5);
  return v17;
}

void sub_21DB39AE4()
{
  sub_21D10EC4C(*(v0 + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_gradientAndBorderSettings), *(v0 + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_gradientAndBorderSettings + 8), *(v0 + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_gradientAndBorderSettings + 16), *(v0 + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_gradientAndBorderSettings + 24), *(v0 + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_gradientAndBorderSettings + 32));
  MEMORY[0x223D46650](v0 + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_fillLayer);
  MEMORY[0x223D46650](v0 + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_lighteningLayer);
  MEMORY[0x223D46650](v0 + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_darkeningLayer);
  MEMORY[0x223D46650](v0 + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_customSmartListMaskLayer);

  JUMPOUT(0x223D46650);
}

id sub_21DB39B90(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t _s15RemindersUICore16TTRListBadgeViewC11ImageParamsV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 12);
  v4 = *(a2 + 2);
  v5 = *(a2 + 12);
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  return sub_21DBFB63C() & (v2 == v4) & (v3 ^ v5 ^ 1);
}

BOOL _s15RemindersUICore16TTRListBadgeViewC16GradientSettingsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (!*a1)
  {
    v19 = *(a2 + 40);
    v20 = *(a1 + 40);
    sub_21D10EC0C(0, v2);
    if (!v8)
    {
      sub_21D10EC0C(0, v7);
      sub_21D0D9834(0, v2);
      if (v4 != v9)
      {
        return 0;
      }

      goto LABEL_13;
    }

    sub_21D10EC0C(v8, v7);
LABEL_10:
    sub_21D0D9834(v3, v2);
    v14 = v8;
    v15 = v7;
    goto LABEL_23;
  }

  if (!v8)
  {
    sub_21D10EC0C(*a1, v2);
    sub_21D10EC0C(0, v7);
    sub_21D10EC0C(v3, v2);

    goto LABEL_10;
  }

  v19 = *(a2 + 40);
  v20 = *(a1 + 40);
  v18 = *(a2 + 32);
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  sub_21D10EC0C(v3, v2);
  sub_21D10EC0C(v8, v7);
  sub_21D10EC0C(v3, v2);
  if ((sub_21DBFB63C() & 1) == 0)
  {
    sub_21D0D9834(v8, v7);

    v14 = v3;
    v15 = v2;
    goto LABEL_23;
  }

  v12 = sub_21DBFB63C();
  sub_21D0D9834(v8, v7);

  sub_21D0D9834(v3, v2);
  result = 0;
  if (v12)
  {
    v10 = v18;
    if (v4 == v9)
    {
LABEL_13:
      if (v6)
      {
        if (v11)
        {
          sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
          v16 = v10;
          sub_21D10EC0C(v6, v5);
          sub_21D10EC0C(v11, v10);
          sub_21D10EC0C(v6, v5);
          if (sub_21DBFB63C())
          {
            v17 = sub_21DBFB63C();
            sub_21D0D9834(v11, v16);

            sub_21D0D9834(v6, v5);
            if (v17)
            {
              return v20 == v19;
            }

            return 0;
          }

          sub_21D0D9834(v11, v10);

          v14 = v6;
          v15 = v5;
LABEL_23:
          sub_21D0D9834(v14, v15);
          return 0;
        }

        sub_21D10EC0C(v6, v5);
        sub_21D10EC0C(0, v10);
        sub_21D10EC0C(v6, v5);
      }

      else
      {
        sub_21D10EC0C(0, v5);
        if (!v11)
        {
          sub_21D10EC0C(0, v10);
          sub_21D0D9834(0, v5);
          return v20 == v19;
        }

        sub_21D10EC0C(v11, v10);
      }

      sub_21D0D9834(v6, v5);
      v14 = v11;
      v15 = v10;
      goto LABEL_23;
    }
  }

  return result;
}

BOOL _s15RemindersUICore16TTRListBadgeViewC16BackgroundParamsV13GradientStyleO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v12 = a2[4];
  v13 = *(a2 + 10);
  if (*a1 == 1)
  {
    if (v9 != 1)
    {
      goto LABEL_8;
    }

    v16 = 1;
    v17 = *(a2 + 10);
    v18 = a2[1];
    sub_21DB3A9E8(1, *(a1 + 8), v5, v4, v6, v7, sub_21DB3D254);
    v19 = 1;
    v20 = v18;
    v21 = v11;
    v22 = v10;
    v23 = v12;
    v24 = v17;
LABEL_10:
    sub_21DB3A9E8(v19, v20, v21, v22, v23, v24, sub_21DB3D254);
    return v16;
  }

  if (v2 != 2)
  {
    if ((v9 - 1) < 2)
    {
      goto LABEL_8;
    }

    v50[0] = *a1;
    v50[1] = v3;
    v51 = v5;
    v52 = v4;
    v53 = v6;
    v54 = v7;
    v45[0] = v9;
    v45[1] = v8;
    v46 = v11;
    v47 = v10;
    v48 = v12;
    v49 = v13;
    v38 = v6;
    v39 = v11;
    v27 = v11;
    v36 = v12;
    v37 = v10;
    v28 = v10;
    v29 = v12;
    v30 = v6;
    v31 = v12;
    v32 = v13;
    v44 = v13;
    v33 = v7;
    v34 = v8;
    v42 = v8;
    sub_21DB3A9E8(v9, v8, v27, v28, v31, v32, sub_21D10EC0C);
    sub_21DB3A9E8(v2, v3, v5, v4, v30, v33, sub_21D10EC0C);
    sub_21DB3A9E8(v9, v34, v39, v37, v29, v44, sub_21D10EC0C);
    sub_21DB3A9E8(v2, v3, v5, v4, v38, v33, sub_21D10EC0C);
    v16 = _s15RemindersUICore16TTRListBadgeViewC16GradientSettingsV2eeoiySbAE_AEtFZ_0(v50, v45);
    sub_21DB3A9E8(v2, v3, v5, v4, v38, v33, sub_21DB3D254);
    sub_21DB3A9E8(v9, v42, v39, v37, v36, v44, sub_21DB3D254);
    sub_21DB3A9E8(v9, v42, v39, v37, v36, v44, sub_21DB3D254);
    v19 = v2;
    v20 = v3;
    v21 = v5;
    v22 = v4;
    v23 = v38;
    v24 = v33;
    goto LABEL_10;
  }

  if (v9 != 2)
  {
LABEL_8:
    v40 = *a2;
    v41 = a2[1];
    v25 = *(a1 + 32);
    v43 = *(a2 + 10);
    v26 = *(a1 + 40);
    sub_21DB3A9E8(*a2, v41, v11, v10, v12, v43, sub_21D10EC0C);
    sub_21DB3A9E8(v2, v3, v5, v4, v25, v26, sub_21D10EC0C);
    sub_21DB3A9E8(v2, v3, v5, v4, v25, v26, sub_21DB3D254);
    sub_21DB3A9E8(v40, v41, v11, v10, v12, v43, sub_21DB3D254);
    return 0;
  }

  v14 = *(a2 + 10);
  v15 = a2[1];
  sub_21DB3A9E8(2, *(a1 + 8), v5, v4, v6, v7, sub_21DB3D254);
  sub_21DB3A9E8(2, v15, v11, v10, v12, v14, sub_21DB3D254);
  return 1;
}

uint64_t _s15RemindersUICore16TTRListBadgeViewC16BackgroundParamsV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  v6 = *(a1 + 3);
  v5 = *(a1 + 4);
  v7 = *(a1 + 5);
  v8 = *(a1 + 12);
  v10 = *(a1 + 7);
  v9 = *(a1 + 8);
  v12 = *(a1 + 9);
  v11 = *(a1 + 10);
  v13 = *(a1 + 11);
  v14 = *(a1 + 24);
  v15 = a1[100];
  v16 = *a2;
  v17 = *(a2 + 1);
  v18 = *(a2 + 2);
  v20 = *(a2 + 3);
  v19 = *(a2 + 4);
  v21 = *(a2 + 5);
  v65 = *(a2 + 12);
  v22 = *(a2 + 8);
  v24 = *(a2 + 9);
  v23 = *(a2 + 10);
  v25 = *(a2 + 11);
  v26 = *(a2 + 24);
  v27 = a2[100];
  if (v2 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }

LABEL_6:
    v61 = v10;
    v62 = *(a2 + 7);
    if (v4 == 3)
    {
      v58 = *(a2 + 8);
      v59 = v12;
      v51 = *(a2 + 9);
      v52 = *(a2 + 10);
      v53 = *(a2 + 11);
      v54 = *(a2 + 24);
      v49 = a2[100];
      v50 = v15;
      v55 = v9;
      v56 = v11;
      v57 = v13;
      v60 = v14;
      v64 = v8;
      sub_21DB3A9B0(3, v3, v6, v5, v7, v8);
      if (v17 == 3)
      {
        sub_21DB3A9B0(3, v18, v20, v19, v21, v65);
        sub_21D10E2C8(3, v3, v6, v5, v7, v64);
LABEL_14:
        if (v61 == 1)
        {
          v36 = v55;
          v35 = v56;
          v37 = v59;
          v38 = v57;
          sub_21D10F3DC(1, v55, v59, v56, v57);
          if (v62 == 1)
          {
            sub_21D10F3DC(1, v58, v51, v52, v53);
            sub_21D10EC4C(1, v55, v59, v56, v57);
            return v50 ^ v49 ^ 1u;
          }

          v42 = v58;
          v39 = v52;
          v40 = v53;
          sub_21D10F3DC(v62, v58, v51, v52, v53);
          v41 = 1;
          goto LABEL_20;
        }

        v35 = v56;
        v72 = v61;
        v73 = v55;
        v37 = v59;
        v74 = v59;
        v75 = v56;
        v38 = v57;
        v76 = v57;
        v77 = v60;
        if (v62 == 1)
        {
          v36 = v55;
          sub_21D10F3DC(v61, v55, v59, v56, v57);
          v39 = v52;
          v40 = v53;
          sub_21D10F3DC(1, v58, v51, v52, v53);
          sub_21D10F3DC(v61, v55, v59, v56, v57);
          sub_21D0D9834(v61, v55);
          sub_21D0D9834(v56, v57);
          v41 = v61;
          v42 = v58;
LABEL_20:
          sub_21D10EC4C(v41, v36, v37, v35, v38);
          sub_21D10EC4C(v62, v42, v51, v39, v40);
          return 0;
        }

        v66 = v62;
        v67 = v58;
        LODWORD(v68) = v51;
        v69 = v52;
        v70 = v53;
        v71 = v54;
        sub_21D10F3DC(v61, v55, v59, v56, v57);
        sub_21D10F3DC(v62, v58, v51, v52, v53);
        sub_21D10F3DC(v61, v55, v59, v56, v57);
        v43 = _s15RemindersUICore16TTRListBadgeViewC16GradientSettingsV2eeoiySbAE_AEtFZ_0(&v72, &v66);
        v44 = v69;
        v45 = v70;
        sub_21D0D9834(v66, v67);
        sub_21D0D9834(v44, v45);
        v46 = v75;
        v47 = v76;
        sub_21D0D9834(v72, v73);
        sub_21D0D9834(v46, v47);
        sub_21D10EC4C(v61, v55, v59, v56, v57);
        if (v43)
        {
          return v50 ^ v49 ^ 1u;
        }

        return 0;
      }

      v63 = v18;
      v31 = v18;
      v30 = v65;
      sub_21DB3A9B0(v17, v31, v20, v19, v21, v65);
    }

    else
    {
      v72 = v4;
      v73 = v3;
      v74 = v6;
      v75 = v5;
      v76 = v7;
      v77 = v8;
      if (v17 != 3)
      {
        v58 = v22;
        v59 = v12;
        v51 = v24;
        v52 = v23;
        v53 = v25;
        v54 = v26;
        v49 = v27;
        v50 = v15;
        v55 = v9;
        v56 = v11;
        v57 = v13;
        v60 = v14;
        v66 = v17;
        v67 = v18;
        v68 = v20;
        v69 = v19;
        v70 = v21;
        v71 = v65;
        v48 = v3;
        v32 = v3;
        v33 = v8;
        sub_21DB3A9B0(v4, v32, v6, v5, v7, v8);
        sub_21DB3A9B0(v17, v18, v20, v19, v21, v65);
        sub_21DB3A9B0(v4, v48, v6, v5, v7, v33);
        v34 = _s15RemindersUICore16TTRListBadgeViewC16BackgroundParamsV13GradientStyleO2eeoiySbAG_AGtFZ_0(&v72, &v66);
        sub_21DB3A9E8(v66, v67, v68, v69, v70, v71, sub_21DB3D254);
        sub_21DB3A9E8(v72, v73, v74, v75, v76, v77, sub_21DB3D254);
        sub_21D10E2C8(v4, v48, v6, v5, v7, v33);
        if (!v34)
        {
          return 0;
        }

        goto LABEL_14;
      }

      v64 = v8;
      sub_21DB3A9B0(v4, v3, v6, v5, v7, v8);
      v63 = v18;
      v29 = v18;
      v30 = v65;
      sub_21DB3A9B0(3, v29, v20, v19, v21, v65);
      sub_21DB3A9B0(v4, v3, v6, v5, v7, v64);
      sub_21DB3A9E8(v4, v3, v6, v5, v7, v64, sub_21DB3D254);
    }

    sub_21D10E2C8(v4, v3, v6, v5, v7, v64);
    sub_21D10E2C8(v17, v63, v20, v19, v21, v30);
    return 0;
  }

  result = 0;
  if (v16 != 2 && ((v16 ^ v2) & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_21DB3A9B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result != 3)
  {
    return sub_21DB3A9E8(result, a2, a3, a4, a5, a6, sub_21D10EC0C);
  }

  return result;
}

uint64_t sub_21DB3A9E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  if ((result - 1) >= 2)
  {
    (a7)();

    return a7(a4, a5);
  }

  return result;
}

BOOL _s15RemindersUICore16TTRListBadgeViewC9ColorInfoO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *a2;
  v10 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = *(a2 + 32);
  v14 = *(a2 + 40);
  v16 = *(a2 + 48);
  v45 = v3;
  v46 = v6;
  v44 = v7;
  if (v9 < 0)
  {
    v25 = *a1;
    if (v16 < 0)
    {
      v43 = *(a2 + 40);
      v26 = *(a2 + 32);
      v27 = *(a2 + 24);
      v28 = *(a2 + 16);
      v29 = *(a2 + 8);
      v30 = *a2;
      v31 = sub_21D11ED58(v4, v11);
      v32 = v8;
      v24 = v31;
      sub_21D113F88(v25, v45, v5, v46, v44, v32, v9);
      sub_21D113F88(v30, v29, v28, v27, v26, v43, v16);
      return v24;
    }

LABEL_7:
    v40 = v10;
    v35 = v11;
    sub_21DB3AD64(v11, v10, v12, v13, v15, v14, v16);
    sub_21D113F88(v25, v45, v5, v46, v44, v8, v9);
    sub_21D113F88(v35, v40, v12, v13, v15, v14, v16);
    return 0;
  }

  v41 = *(a2 + 16);
  if (v16 < 0)
  {
    v33 = *(a2 + 8);
    v34 = *a2;
    v25 = *a1;
    sub_21D0FB960(v4, v3, v5, *(a1 + 24), *(a1 + 32), v8, v9 & 1);
    v11 = v34;
    v10 = v33;
    v12 = v41;
    goto LABEL_7;
  }

  v49[0] = *a1;
  v49[1] = v3;
  v49[2] = v5;
  v49[3] = v6;
  v49[4] = v7;
  v49[5] = v8;
  v50 = v9 & 1;
  v47[0] = v11;
  v47[1] = v10;
  v47[2] = v12;
  v47[3] = v13;
  v47[4] = v15;
  v47[5] = v14;
  v48 = v16 & 1;
  v17 = v12;
  v18 = v5;
  v38 = v5;
  v42 = v14;
  v19 = v14;
  v20 = v10;
  v37 = v11;
  v21 = v4;
  sub_21DB3AD64(v11, v10, v17, v13, v15, v19, v16);
  sub_21DB3AD64(v21, v45, v18, v6, v7, v8, v9);
  sub_21DB3AD64(v21, v45, v18, v6, v7, v8, v9);
  sub_21DB3AD64(v37, v20, v41, v13, v15, v42, v16);
  v22 = _s15RemindersUICore24TTRCrossDeviceIdentifierO2eeoiySbAC_ACtFZ_0(v49, v47);
  v23 = v8;
  v39 = v8;
  v24 = v22;
  sub_21D113F88(v21, v45, v38, v6, v7, v23, v9);
  sub_21D113F88(v37, v20, v41, v13, v15, v42, v16);
  sub_21D113F88(v37, v20, v41, v13, v15, v42, v16);
  sub_21D113F88(v21, v45, v38, v6, v7, v39, v9);
  return v24;
}

double sub_21DB3AD64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 0x80) == 0)
  {
    return sub_21D0FB960(a1, a2, a3, a4, a5, a6, a7 & 1);
  }

  return result;
}

uint64_t sub_21DB3ADDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66A48, &qword_21DC3F240);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DB3AE4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66A48, &qword_21DC3F240);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DB3AEBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66A48, &qword_21DC3F240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21DB3AF28()
{
  result = qword_27CE66A50;
  if (!qword_27CE66A50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRListBadgeView.ImageContentMode, &type metadata for TTRListBadgeView.ImageContentMode, v0, v1);
    atomic_store(result, &qword_27CE66A50);
  }

  return result;
}

void destroy for TTRListBadgeView.BackgroundParams(uint64_t a1)
{
  v2 = *(a1 + 8);
  if ((v2 - 1) >= 3)
  {
    if (v2)
    {
    }

    v3 = *(a1 + 32);
    if (v3)
    {
    }
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    if (v4 == 1)
    {
      return;
    }
  }

  v5 = *(a1 + 80);
  if (v5)
  {

    v6 = *(a1 + 88);
  }
}

uint64_t initializeWithCopy for TTRListBadgeView.BackgroundParams(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  if ((v6 - 1) < 2)
  {
    goto LABEL_4;
  }

  if (v6)
  {
    if (v6 == 3)
    {
LABEL_4:
      v7 = *(a2 + 24);
      *v4 = *v5;
      *(a1 + 24) = v7;
      *(a1 + 36) = *(a2 + 36);
      goto LABEL_11;
    }

    v8 = *(a2 + 16);
    *(a1 + 8) = v6;
    *(a1 + 16) = v8;
    v9 = v6;
    v10 = v8;
  }

  else
  {
    *v4 = *v5;
  }

  v11 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  if (v11)
  {
    v12 = *(a2 + 40);
    *(a1 + 32) = v11;
    *(a1 + 40) = v12;
    v13 = v11;
    v14 = v12;
  }

  else
  {
    *(a1 + 32) = *(a2 + 32);
  }

  *(a1 + 48) = *(a2 + 48);
LABEL_11:
  v15 = (a2 + 56);
  v16 = *(a2 + 56);
  if (v16)
  {
    if (v16 == 1)
    {
      v17 = *(a2 + 72);
      *(a1 + 56) = *v15;
      *(a1 + 72) = v17;
      *(a1 + 84) = *(a2 + 84);
      goto LABEL_20;
    }

    v18 = *(a2 + 64);
    *(a1 + 56) = v16;
    *(a1 + 64) = v18;
    v19 = v16;
    v20 = v18;
  }

  else
  {
    *(a1 + 56) = *v15;
  }

  v21 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  if (v21)
  {
    v22 = *(a2 + 88);
    *(a1 + 80) = v21;
    *(a1 + 88) = v22;
    v23 = v21;
    v24 = v22;
  }

  else
  {
    *(a1 + 80) = *(a2 + 80);
  }

  *(a1 + 96) = *(a2 + 96);
LABEL_20:
  *(a1 + 100) = *(a2 + 100);
  return a1;
}

uint64_t assignWithCopy for TTRListBadgeView.BackgroundParams(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  v7 = (a2 + 8);
  v6 = *(a2 + 8);
  if (v5 != 3)
  {
    if (v6 == 3)
    {
      sub_21DB3C068(a1 + 8);
LABEL_8:
      v8 = *(v7 + 28);
      v9 = v7[1];
      *v4 = *v7;
      v4[1] = v9;
      *(v4 + 28) = v8;
      goto LABEL_21;
    }

    v10 = (v6 - 1);
    if ((v5 - 1) < 2)
    {
      if (v10 < 2)
      {
        goto LABEL_11;
      }

      if (v6)
      {
LABEL_15:
        *(a1 + 8) = v6;
        v13 = *(a2 + 16);
        *(a1 + 16) = v13;
        v14 = v6;
        v15 = v13;
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
      sub_21DB3C038(a1 + 8);
      goto LABEL_8;
    }

    if (v5)
    {
      if (v6)
      {
        *(a1 + 8) = v6;
        v39 = v6;

        v40 = *(a2 + 16);
        v41 = *(a1 + 16);
        *(a1 + 16) = v40;
        v42 = v40;

        goto LABEL_54;
      }

      sub_21D640A9C((a1 + 8));
    }

    else if (v6)
    {
      *(a1 + 8) = v6;
      v52 = *(a2 + 16);
      *(a1 + 16) = v52;
      v53 = v6;
      v54 = v52;
      goto LABEL_54;
    }

    *v4 = *v7;
LABEL_54:
    v55 = *(a1 + 32);
    *(a1 + 24) = *(a2 + 24);
    v16 = *(a2 + 32);
    if (v55)
    {
      if (v16)
      {
        *(a1 + 32) = v16;
        v56 = v16;

        v57 = *(a2 + 40);
        v58 = *(a1 + 40);
        *(a1 + 40) = v57;
        v59 = v57;

        goto LABEL_20;
      }

      sub_21D640A9C((a1 + 32));
    }

    else if (v16)
    {
      goto LABEL_18;
    }

    *(a1 + 32) = *(a2 + 32);
    goto LABEL_20;
  }

  if ((v6 - 1) < 2)
  {
    goto LABEL_11;
  }

  if (v6)
  {
    if (v6 != 3)
    {
      goto LABEL_15;
    }

LABEL_11:
    v11 = *v7;
    v12 = *(a2 + 24);
    *(a1 + 36) = *(a2 + 36);
    *v4 = v11;
    *(a1 + 24) = v12;
    goto LABEL_21;
  }

LABEL_16:
  *v4 = *v7;
LABEL_17:
  *(a1 + 24) = *(a2 + 24);
  v16 = *(a2 + 32);
  if (!v16)
  {
    *(a1 + 32) = *(a2 + 32);
    goto LABEL_20;
  }

LABEL_18:
  *(a1 + 32) = v16;
  v17 = *(a2 + 40);
  *(a1 + 40) = v17;
  v18 = v16;
  v19 = v17;
LABEL_20:
  *(a1 + 48) = *(a2 + 48);
LABEL_21:
  v20 = (a1 + 56);
  v21 = *(a1 + 56);
  v23 = (a2 + 56);
  v22 = *(a2 + 56);
  if (v21 != 1)
  {
    if (v22 == 1)
    {
      sub_21DB3C038(a1 + 56);
      v26 = *(a2 + 84);
      v27 = *(a2 + 72);
      *v20 = *v23;
      *(a1 + 72) = v27;
      *(a1 + 84) = v26;
      goto LABEL_49;
    }

    if (v21)
    {
      if (v22)
      {
        *(a1 + 56) = v22;
        v28 = v22;

        v29 = *(a2 + 64);
        v30 = *(a1 + 64);
        *(a1 + 64) = v29;
        v31 = v29;

        goto LABEL_41;
      }

      sub_21D640A9C((a1 + 56));
    }

    else if (v22)
    {
      *(a1 + 56) = v22;
      v36 = *(a2 + 64);
      *(a1 + 64) = v36;
      v37 = v22;
      v38 = v36;
      goto LABEL_41;
    }

    *v20 = *v23;
LABEL_41:
    v43 = *(a1 + 80);
    *(a1 + 72) = *(a2 + 72);
    v35 = *(a2 + 80);
    if (v43)
    {
      if (v35)
      {
        *(a1 + 80) = v35;
        v44 = v35;

        v45 = *(a2 + 88);
        v46 = *(a1 + 88);
        *(a1 + 88) = v45;
        v47 = v45;

        goto LABEL_48;
      }

      sub_21D640A9C((a1 + 80));
    }

    else if (v35)
    {
      goto LABEL_45;
    }

    *(a1 + 80) = *(a2 + 80);
    goto LABEL_48;
  }

  if (!v22)
  {
    *v20 = *v23;
    goto LABEL_32;
  }

  if (v22 != 1)
  {
    *(a1 + 56) = v22;
    v32 = *(a2 + 64);
    *(a1 + 64) = v32;
    v33 = v22;
    v34 = v32;
LABEL_32:
    *(a1 + 72) = *(a2 + 72);
    v35 = *(a2 + 80);
    if (!v35)
    {
      *(a1 + 80) = *(a2 + 80);
LABEL_48:
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_49;
    }

LABEL_45:
    *(a1 + 80) = v35;
    v48 = *(a2 + 88);
    *(a1 + 88) = v48;
    v49 = v35;
    v50 = v48;
    goto LABEL_48;
  }

  v24 = *v23;
  v25 = *(a2 + 72);
  *(a1 + 84) = *(a2 + 84);
  *v20 = v24;
  *(a1 + 72) = v25;
LABEL_49:
  *(a1 + 100) = *(a2 + 100);
  return a1;
}

__n128 __swift_memcpy101_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 93) = *(a2 + 93);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for TTRListBadgeView.BackgroundParams(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  v7 = (a2 + 8);
  v6 = *(a2 + 8);
  if (v4 == 3)
  {
    goto LABEL_7;
  }

  if (v6 == 3)
  {
    sub_21DB3C068(a1 + 8);
LABEL_7:
    v8 = v7[1];
    *v5 = *v7;
    v5[1] = v8;
    *(v5 + 28) = *(v7 + 28);
    goto LABEL_8;
  }

  if ((v4 - 1) < 2)
  {
    goto LABEL_7;
  }

  if ((v6 - 1) < 2)
  {
    sub_21DB3C038(a1 + 8);
    goto LABEL_7;
  }

  if (v4)
  {
    if (v6)
    {
      *(a1 + 8) = v6;

      v15 = *(a1 + 16);
      *(a1 + 16) = *(a2 + 16);

      goto LABEL_29;
    }

    sub_21D640A9C((a1 + 8));
  }

  *v5 = *v7;
LABEL_29:
  v20 = *(a2 + 32);
  v21 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  if (!v21)
  {
LABEL_33:
    *(a1 + 32) = *(a2 + 32);
    goto LABEL_34;
  }

  if (!v20)
  {
    sub_21D640A9C((a1 + 32));
    goto LABEL_33;
  }

  *(a1 + 32) = v20;

  v22 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

LABEL_34:
  *(a1 + 48) = *(a2 + 48);
LABEL_8:
  v10 = (a1 + 56);
  v9 = *(a1 + 56);
  v12 = (a2 + 56);
  v11 = *(a2 + 56);
  if (v9 != 1)
  {
    if (v11 == 1)
    {
      sub_21DB3C038(a1 + 56);
      goto LABEL_11;
    }

    if (v9)
    {
      if (v11)
      {
        *(a1 + 56) = v11;

        v14 = *(a1 + 64);
        *(a1 + 64) = *(a2 + 64);

        goto LABEL_20;
      }

      sub_21D640A9C((a1 + 56));
    }

    *v10 = *v12;
LABEL_20:
    v16 = *(a2 + 80);
    v17 = *(a1 + 80);
    *(a1 + 72) = *(a2 + 72);
    if (v17)
    {
      if (v16)
      {
        *(a1 + 80) = v16;

        v18 = *(a1 + 88);
        *(a1 + 88) = *(a2 + 88);

LABEL_25:
        *(a1 + 96) = *(a2 + 96);
        goto LABEL_26;
      }

      sub_21D640A9C((a1 + 80));
    }

    *(a1 + 80) = *(a2 + 80);
    goto LABEL_25;
  }

LABEL_11:
  v13 = *(a2 + 72);
  *v10 = *v12;
  *(a1 + 72) = v13;
  *(a1 + 84) = *(a2 + 84);
LABEL_26:
  *(a1 + 100) = *(a2 + 100);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRListBadgeView.BackgroundParams(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 101))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRListBadgeView.BackgroundParams(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 100) = 0;
    *(result + 96) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 101) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 101) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

void destroy for TTRListBadgeView.BackgroundParams.GradientStyle(uint64_t a1)
{
  v1 = *a1;
  LODWORD(v2) = -1;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    v2 = *a1;
  }

  if (v2 - 1 < 0)
  {
    if (v1)
    {
    }

    v4 = *(a1 + 24);
    if (v4)
    {

      v5 = *(a1 + 32);
    }
  }
}

uint64_t initializeWithCopy for TTRListBadgeView.BackgroundParams.GradientStyle(uint64_t result, uint64_t a2)
{
  v3 = *a2;
  LODWORD(v4) = -1;
  if (*a2 < 0xFFFFFFFFuLL)
  {
    v4 = *a2;
  }

  if (v4 - 1 < 0)
  {
    if (v3)
    {
      v6 = *(a2 + 8);
      *result = v3;
      *(result + 8) = v6;
      v7 = result;
      v8 = v3;
      v9 = v6;
      result = v7;
    }

    else
    {
      *result = *a2;
    }

    v10 = *(a2 + 24);
    *(result + 16) = *(a2 + 16);
    if (v10)
    {
      v11 = *(a2 + 32);
      *(result + 24) = v10;
      *(result + 32) = v11;
      v12 = result;
      v13 = v10;
      v14 = v11;
      result = v12;
    }

    else
    {
      *(result + 24) = *(a2 + 24);
    }

    *(result + 40) = *(a2 + 40);
  }

  else
  {
    v5 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v5;
    *(result + 28) = *(a2 + 28);
  }

  return result;
}

uint64_t assignWithCopy for TTRListBadgeView.BackgroundParams.GradientStyle(uint64_t a1, __int128 *a2)
{
  v4 = *a1;
  LODWORD(v5) = -1;
  if (*a1 >= 0xFFFFFFFFuLL)
  {
    LODWORD(v6) = -1;
  }

  else
  {
    v6 = *a1;
  }

  v7 = v6 - 1;
  v8 = *a2;
  if (*a2 < 0xFFFFFFFFuLL)
  {
    v5 = *a2;
  }

  v9 = v5 - 1;
  if (v7 < 0)
  {
    if ((v9 & 0x80000000) == 0)
    {
      if (v4)
      {
      }

      v13 = *(a1 + 24);
      if (v13)
      {
      }

      goto LABEL_15;
    }

    if (v4)
    {
      if (v8)
      {
        *a1 = v8;
        v16 = v8;

        v17 = *(a2 + 1);
        v18 = *(a1 + 8);
        *(a1 + 8) = v17;
        v19 = v17;

        goto LABEL_27;
      }

      sub_21D640A9C(a1);
    }

    else if (v8)
    {
      *a1 = v8;
      v24 = *(a2 + 1);
      *(a1 + 8) = v24;
      v25 = v8;
      v26 = v24;
      goto LABEL_27;
    }

    *a1 = *a2;
LABEL_27:
    v27 = *(a1 + 24);
    *(a1 + 16) = *(a2 + 4);
    v20 = *(a2 + 3);
    if (v27)
    {
      if (v20)
      {
        *(a1 + 24) = v20;
        v28 = v20;

        v29 = *(a2 + 4);
        v30 = *(a1 + 32);
        *(a1 + 32) = v29;
        v31 = v29;

        goto LABEL_34;
      }

      sub_21D640A9C((a1 + 24));
    }

    else if (v20)
    {
      goto LABEL_21;
    }

    *(a1 + 24) = *(a2 + 24);
    goto LABEL_34;
  }

  if (v9 < 0)
  {
    if (v8)
    {
      *a1 = v8;
      v10 = *(a2 + 1);
      *(a1 + 8) = v10;
      v11 = v8;
      v12 = v10;
    }

    else
    {
      *a1 = *a2;
    }

    *(a1 + 16) = *(a2 + 4);
    v20 = *(a2 + 3);
    if (!v20)
    {
      *(a1 + 24) = *(a2 + 24);
      goto LABEL_34;
    }

LABEL_21:
    *(a1 + 24) = v20;
    v21 = *(a2 + 4);
    *(a1 + 32) = v21;
    v22 = v20;
    v23 = v21;
LABEL_34:
    *(a1 + 40) = *(a2 + 10);
    return a1;
  }

LABEL_15:
  v14 = *a2;
  v15 = a2[1];
  *(a1 + 28) = *(a2 + 28);
  *a1 = v14;
  *(a1 + 16) = v15;
  return a1;
}

uint64_t assignWithTake for TTRListBadgeView.BackgroundParams.GradientStyle(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  LODWORD(v5) = -1;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    v5 = *a1;
  }

  if (v5 - 1 >= 0)
  {
    goto LABEL_4;
  }

  v8 = *a2;
  LODWORD(v9) = -1;
  if (*a2 < 0xFFFFFFFF)
  {
    v9 = *a2;
  }

  if (v9 - 1 < 0)
  {
    if (v4)
    {
      if (v8)
      {
        *a1 = v8;

        v11 = *(a1 + 8);
        *(a1 + 8) = a2[1];

        goto LABEL_18;
      }

      sub_21D640A9C(a1);
    }

    *a1 = *a2;
LABEL_18:
    v12 = a2[3];
    v13 = *(a1 + 24);
    *(a1 + 16) = *(a2 + 4);
    if (v13)
    {
      if (v12)
      {
        *(a1 + 24) = v12;

        v14 = *(a1 + 32);
        *(a1 + 32) = a2[4];

LABEL_23:
        *(a1 + 40) = *(a2 + 10);
        return a1;
      }

      sub_21D640A9C((a1 + 24));
    }

    *(a1 + 24) = *(a2 + 3);
    goto LABEL_23;
  }

  if (v4)
  {
  }

  v10 = *(a1 + 24);
  if (v10)
  {
  }

LABEL_4:
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 28) = *(a2 + 28);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRListBadgeView.BackgroundParams.GradientStyle(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 44))
  {
    return (*a1 + 2147483645);
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

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRListBadgeView.BackgroundParams.GradientStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 28) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 44) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 44) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_21DB3C864(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    v2 = a2 - 0x7FFFFFFF;
    *(result + 8) = 0u;
    *(result + 40) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2;
  }

  *result = v2;
  return result;
}

uint64_t assignWithCopy for TTRListBadgeView.ImageParams(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  return a1;
}