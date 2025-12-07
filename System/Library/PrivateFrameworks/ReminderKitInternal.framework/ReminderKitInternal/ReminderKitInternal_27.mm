uint64_t sub_230276494(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_2302764DC(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_2302727E4(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for REMRemindersListDataView.HashtagLabelPredicate(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_2302727E4(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_230276494(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for REMRemindersListDataView.HashtagLabelPredicate(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_230276494(v4, v5, v6);
  return a1;
}

uint64_t sub_2302765C8(uint64_t a1)
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

uint64_t sub_2302765E0(uint64_t result, unsigned int a2)
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

uint64_t initializeWithCopy for REMRemindersListDataView.ReminderLite(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for REMRemindersListDataView.ReminderLite(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithTake for REMRemindersListDataView.ReminderLite(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  return a1;
}

uint64_t destroy for REMRemindersListDataView.ListsModel.Sublist(id *a1)
{
}

uint64_t initializeWithCopy for REMRemindersListDataView.ListsModel.Sublist(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v6 = v3;

  v7 = v5;

  return a1;
}

uint64_t assignWithCopy for REMRemindersListDataView.ListsModel.Sublist(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  *(a1 + 24) = v8;
  v9 = v8;

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for REMRemindersListDataView.ListsModel.Sublist(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v5 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithCopy for REMRemindersListDataView.FlaggedModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  v5 = *(a1 + 48);
  v6 = *(a2 + 48);
  *(a1 + 48) = v6;
  v7 = v6;

  return a1;
}

uint64_t assignWithTake for REMRemindersListDataView.FlaggedModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  v4 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithCopy for REMRemindersListDataView.AssignedModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  v5 = *(a1 + 40);
  v6 = *(a2 + 40);
  *(a1 + 40) = v6;
  v7 = v6;

  return a1;
}

uint64_t assignWithTake for REMRemindersListDataView.AssignedModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  v4 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

void destroy for REMRemindersListDataView.TaggedModel(uint64_t a1)
{

  v2 = *(a1 + 80);
  if (v2)
  {
  }
}

uint64_t initializeWithCopy for REMRemindersListDataView.TaggedModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;
  *(a1 + 64) = *(a2 + 64);
  v6 = *(a2 + 72);
  *(a1 + 72) = v6;
  v8 = (a2 + 80);
  v7 = *(a2 + 80);

  v9 = v6;
  if (v7)
  {
    *(a1 + 80) = v7;
    *(a1 + 88) = *(a2 + 88);
    v10 = *(a2 + 96);
    v11 = *(a2 + 104);
    *(a1 + 96) = v10;
    *(a1 + 104) = v11;
    v12 = v7;
  }

  else
  {
    v13 = v8[1];
    *(a1 + 80) = *v8;
    *(a1 + 96) = v13;
  }

  return a1;
}

uint64_t assignWithCopy for REMRemindersListDataView.TaggedModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  v5 = *(a1 + 72);
  v6 = *(a2 + 72);
  *(a1 + 72) = v6;
  v7 = v6;

  v8 = (a1 + 80);
  v9 = *(a1 + 80);
  v11 = (a2 + 80);
  v10 = *(a2 + 80);
  if (v9)
  {
    if (v10)
    {
      *(a1 + 80) = v10;
      v12 = v10;

      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);
    }

    else
    {
      sub_23027674C(a1 + 80);
      v14 = *(a2 + 96);
      *v8 = *v11;
      *(a1 + 96) = v14;
    }
  }

  else if (v10)
  {
    *(a1 + 80) = v10;
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    v13 = v10;
  }

  else
  {
    v15 = *(a2 + 96);
    *v8 = *v11;
    *(a1 + 96) = v15;
  }

  return a1;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t assignWithTake for REMRemindersListDataView.TaggedModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  v4 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);

  v5 = *(a1 + 80);
  v6 = *(a2 + 80);
  if (!v5)
  {
    goto LABEL_5;
  }

  if (!v6)
  {
    sub_23027674C(a1 + 80);
LABEL_5:
    v8 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v8;
    return a1;
  }

  *(a1 + 80) = v6;

  *(a1 + 88) = *(a2 + 88);
  v7 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v7;

  return a1;
}

uint64_t getEnumTagSinglePayload for REMRemindersListDataView.TaggedModel(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for REMRemindersListDataView.TaggedModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for REMRemindersListDataView.TemplateModel(uint64_t a1)
{

  v3 = *(a1 + 56);
  if (v3)
  {
  }

  return result;
}

uint64_t initializeWithCopy for REMRemindersListDataView.TemplateModel(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;
  v8 = (a2 + 56);
  v7 = *(a2 + 56);
  v9 = v4;

  if (v7)
  {
    *(a1 + 56) = v7;
    *(a1 + 64) = *(a2 + 64);
    v10 = *(a2 + 72);
    v11 = *(a2 + 80);
    *(a1 + 72) = v10;
    *(a1 + 80) = v11;
    v12 = v7;
  }

  else
  {
    v13 = v8[1];
    *(a1 + 56) = *v8;
    *(a1 + 72) = v13;
  }

  return a1;
}

uint64_t assignWithCopy for REMRemindersListDataView.TemplateModel(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);

  v7 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v7;
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  v8 = (a1 + 56);
  v9 = *(a1 + 56);
  v11 = (a2 + 56);
  v10 = *(a2 + 56);
  if (v9)
  {
    if (v10)
    {
      *(a1 + 56) = v10;
      v12 = v10;

      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = *(a2 + 80);
    }

    else
    {
      sub_23027674C(a1 + 56);
      v14 = *(a2 + 72);
      *v8 = *v11;
      *(a1 + 72) = v14;
    }
  }

  else if (v10)
  {
    *(a1 + 56) = v10;
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
    v13 = v10;
  }

  else
  {
    v15 = *(a2 + 72);
    *v8 = *v11;
    *(a1 + 72) = v15;
  }

  return a1;
}

uint64_t assignWithTake for REMRemindersListDataView.TemplateModel(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  v5 = *(a1 + 56);
  v6 = *(a2 + 56);
  if (!v5)
  {
    goto LABEL_5;
  }

  if (!v6)
  {
    sub_23027674C(a1 + 56);
LABEL_5:
    v8 = *(a2 + 72);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = v8;
    return a1;
  }

  *(a1 + 56) = v6;

  *(a1 + 64) = *(a2 + 64);
  v7 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v7;

  return a1;
}

void *initializeBufferWithCopyOfBuffer for REMRemindersListDataView.DateBucketsModel.RepresentativeDate(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_23030EB58();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t destroy for REMRemindersListDataView.DateBucketsModel.RepresentativeDate(uint64_t a1)
{
  v2 = sub_23030EB58();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for REMRemindersListDataView.DateBucketsModel.RepresentativeDate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23030EB58();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithCopy for REMRemindersListDataView.DateBucketsModel.RepresentativeDate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23030EB58();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t initializeWithTake for REMRemindersListDataView.DateBucketsModel.RepresentativeDate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23030EB58();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for REMRemindersListDataView.DateBucketsModel.RepresentativeDate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23030EB58();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t destroy for REMRemindersListDataView.Diff()
{
}

void *initializeWithCopy for REMRemindersListDataView.Diff(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  a1[4] = a2[4];

  return a1;
}

void *assignWithCopy for REMRemindersListDataView.Diff(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  return a1;
}

uint64_t assignWithTake for REMRemindersListDataView.Diff(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t sub_230277924(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_2302779C8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    v10[1] = v11[1];
    v10[2] = v11[2];
    v10[3] = v11[3];
    v10[4] = v11[4];
    v12 = ((v11 + 47) & 0xFFFFFFFFFFFFFFF8);
    v13 = *v12;
    *((v10 + 47) & 0xFFFFFFFFFFFFFFF8) = *v12;

    v14 = v13;
  }

  return v3;
}

void sub_230277B2C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = *((v4 + 47) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t sub_230277BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  v7[2] = v8[2];
  v7[3] = v8[3];
  v7[4] = v8[4];
  v9 = ((v8 + 47) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  *((v7 + 47) & 0xFFFFFFFFFFFFFFF8) = *v9;

  v11 = v10;
  return a1;
}

uint64_t sub_230277CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v7[1] = v8[1];

  v7[2] = v8[2];

  v7[3] = v8[3];

  v7[4] = v8[4];

  v9 = ((v7 + 47) & 0xFFFFFFFFFFFFFFF8);
  v10 = *((v8 + 47) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v9;
  *v9 = v10;
  v12 = v10;

  return a1;
}

uint64_t sub_230277DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 16);
  *(v7 + 32) = *(v8 + 32);
  *v7 = v9;
  *(v7 + 16) = v10;
  *((v7 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 47) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_230277E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v7[1] = v8[1];

  v7[2] = v8[2];

  v7[3] = v8[3];

  v7[4] = v8[4];

  v9 = ((v7 + 47) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  *v9 = *((v8 + 47) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_230277F40(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_230278084(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = &result[v8 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 8) = 0u;
          v20 = a2 & 0x7FFFFFFF;
          *(v19 + 24) = 0u;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for REMRemindersListDataView.RemindersPrefetch(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *a1 = *a2;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8, &unk_23033B5F0) + 48);
    v8 = a1 + v7;
    v9 = a2 + v7;
    v10 = sub_23030EB58();
    v11 = *(*(v10 - 8) + 16);
    v11(v8, v9, v10);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78, &qword_23031CBE0);
    v11(&v8[*(v12 + 36)], &v9[*(v12 + 36)], v10);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v15 = *(v6 + 64);

  return memcpy(a1, a2, v15);
}

uint64_t destroy for REMRemindersListDataView.RemindersPrefetch(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8, &unk_23033B5F0) + 48);
    v5 = sub_23030EB58();
    v7 = *(*(v5 - 8) + 8);
    (v7)((v5 - 8), v4, v5);
    v6 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78, &qword_23031CBE0) + 36);

    return v7(v6, v5);
  }

  return result;
}

void *initializeWithCopy for REMRemindersListDataView.RemindersPrefetch(void *a1, void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *a1 = *a2;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8, &unk_23033B5F0) + 48);
    v7 = a1 + v6;
    v8 = a2 + v6;
    v9 = sub_23030EB58();
    v10 = *(*(v9 - 8) + 16);
    v10(v7, v8, v9);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78, &qword_23031CBE0);
    v10(&v7[*(v11 + 36)], &v8[*(v11 + 36)], v9);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v13 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v13);
  }
}

void *assignWithCopy for REMRemindersListDataView.RemindersPrefetch(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_230270804(a1, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *a1 = *a2;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8, &unk_23033B5F0) + 48);
    v7 = a1 + v6;
    v8 = a2 + v6;
    v9 = sub_23030EB58();
    v10 = *(*(v9 - 8) + 16);
    v10(v7, v8, v9);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78, &qword_23031CBE0);
    v10(&v7[*(v11 + 36)], &v8[*(v11 + 36)], v9);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

void *initializeWithTake for REMRemindersListDataView.RemindersPrefetch(void *a1, void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *a1 = *a2;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8, &unk_23033B5F0) + 48);
    v7 = a1 + v6;
    v8 = a2 + v6;
    v9 = sub_23030EB58();
    v10 = *(*(v9 - 8) + 32);
    v10(v7, v8, v9);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78, &qword_23031CBE0);
    v10(&v7[*(v11 + 36)], &v8[*(v11 + 36)], v9);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v13 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v13);
  }
}

void *assignWithTake for REMRemindersListDataView.RemindersPrefetch(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_230270804(a1, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *a1 = *a2;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8, &unk_23033B5F0) + 48);
    v7 = a1 + v6;
    v8 = a2 + v6;
    v9 = sub_23030EB58();
    v10 = *(*(v9 - 8) + 32);
    v10(v7, v8, v9);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78, &qword_23031CBE0);
    v10(&v7[*(v11 + 36)], &v8[*(v11 + 36)], v9);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

void sub_230278A14(uint64_t a1)
{
  v3 = MEMORY[0x277D83410] + 64;
  v4 = MEMORY[0x277D83410] + 64;
  sub_230147BE0(319);
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v5 = &v2;
    swift_initEnumMetadataMultiPayload();
  }
}

uint64_t destroy for REMRemindersListDataView.SectionLite(id *a1)
{
  if (*a1)
  {
  }
}

void *initializeWithCopy for REMRemindersListDataView.SectionLite(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    *a1 = v4;
    a1[1] = v5;
    v7 = *(a2 + 24);
    v8 = *(a2 + 32);
    a1[2] = v6;
    a1[3] = v7;
    a1[4] = v8;
    v9 = v4;
  }

  else
  {
    v10 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 1) = v10;
    a1[4] = *(a2 + 32);
  }

  a1[5] = *(a2 + 40);

  return a1;
}

void *assignWithCopy for REMRemindersListDataView.SectionLite(void *a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (v5)
    {
      *a1 = v5;
      v6 = v5;

      a1[1] = *(a2 + 1);
      a1[2] = *(a2 + 2);

      a1[3] = *(a2 + 3);
      a1[4] = *(a2 + 4);
    }

    else
    {
      sub_230061918(a1, &qword_27DB18940, &qword_23032F788);
      v8 = *(a2 + 4);
      v9 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v9;
      a1[4] = v8;
    }
  }

  else if (v5)
  {
    *a1 = v5;
    *(a1 + 1) = *(a2 + 8);
    *(a1 + 3) = *(a2 + 24);
    v7 = v5;
  }

  else
  {
    v10 = *a2;
    v11 = a2[1];
    a1[4] = *(a2 + 4);
    *a1 = v10;
    *(a1 + 1) = v11;
  }

  a1[5] = *(a2 + 5);

  return a1;
}

uint64_t assignWithTake for REMRemindersListDataView.SectionLite(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_5;
  }

  if (!*a2)
  {
    sub_230061918(a1, &qword_27DB18940, &qword_23032F788);
LABEL_5:
    v7 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v7;
    *(a1 + 32) = *(a2 + 32);
    goto LABEL_6;
  }

  *a1 = *a2;

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;

LABEL_6:
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

id *destroy for REMRemindersListDataView.SectionLite.SectionType(id *result)
{
  if (*result >= 0xFFFFFFFF)
  {
  }

  return result;
}

__n128 initializeWithCopy for REMRemindersListDataView.SectionLite.SectionType(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 < 0xFFFFFFFFuLL)
  {
    result = *a2;
    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    *a1 = v2;
    *(a1 + 8) = v3;
    v5 = *(a2 + 24);
    v6 = *(a2 + 32);
    *(a1 + 16) = v4;
    *(a1 + 24) = v5;
    *(a1 + 32) = v6;
    v7 = v2;
  }

  return result;
}

uint64_t assignWithCopy for REMRemindersListDataView.SectionLite.SectionType(uint64_t a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    if (v5 >= 0xFFFFFFFF)
    {
      *a1 = v5;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      v7 = v5;

      return a1;
    }

LABEL_7:
    v8 = *a2;
    v9 = a2[1];
    *(a1 + 32) = *(a2 + 4);
    *a1 = v8;
    *(a1 + 16) = v9;
    return a1;
  }

  if (v5 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *a1 = v5;
  v6 = v5;

  *(a1 + 8) = *(a2 + 1);
  *(a1 + 16) = *(a2 + 2);

  *(a1 + 24) = *(a2 + 3);
  *(a1 + 32) = *(a2 + 4);

  return a1;
}

uint64_t assignWithTake for REMRemindersListDataView.SectionLite.SectionType(uint64_t result, uint64_t a2)
{
  v3 = *result;
  if (*result < 0xFFFFFFFFuLL)
  {
    v7 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v7;
    *(result + 32) = *(a2 + 32);
  }

  else
  {
    if (*a2 < 0xFFFFFFFFuLL)
    {
      v4 = result;

      v8 = *(a2 + 16);
      *v4 = *a2;
      *(v4 + 16) = v8;
      *(v4 + 32) = *(a2 + 32);
    }

    else
    {
      *result = *a2;
      v4 = result;

      v5 = *(a2 + 16);
      *(v4 + 8) = *(a2 + 8);
      *(v4 + 16) = v5;

      v6 = *(a2 + 32);
      *(v4 + 24) = *(a2 + 24);
      *(v4 + 32) = v6;
    }

    return v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMRemindersListDataView.SectionLite.SectionType(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for REMRemindersListDataView.SectionLite.SectionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_230279098(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    v2 = a2 & 0x7FFFFFFF;
    *(result + 24) = 0u;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_2302790D0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;

  return a1;
}

uint64_t sub_230279130(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t sub_2302791C0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

void sub_230279230(uint64_t a1)
{

  v2 = *(a1 + 48);
}

uint64_t sub_23027927C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;
  v4 = *(a2 + 48);
  *(a1 + 48) = v4;

  v5 = v4;
  return a1;
}

uint64_t sub_2302792E8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  v5 = *(a2 + 48);
  v6 = *(a1 + 48);
  *(a1 + 48) = v5;
  v7 = v5;

  return a1;
}

uint64_t sub_23027938C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  v4 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t sub_2302793FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_230279444(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2302794B0(uint64_t a1)
{

  v2 = *(a1 + 56);
  if (v2)
  {
  }
}

uint64_t sub_23027951C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  v5 = *(a2 + 48);
  *(a1 + 48) = v5;
  v7 = (a2 + 56);
  v6 = *(a2 + 56);

  v8 = v5;
  if (v6)
  {
    *(a1 + 56) = v6;
    *(a1 + 64) = *(a2 + 64);
    v9 = *(a2 + 72);
    v10 = *(a2 + 80);
    *(a1 + 72) = v9;
    *(a1 + 80) = v10;
    v11 = v6;
  }

  else
  {
    v12 = v7[1];
    *(a1 + 56) = *v7;
    *(a1 + 72) = v12;
  }

  return a1;
}

uint64_t sub_2302795D8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  v5 = *(a2 + 48);
  v6 = *(a1 + 48);
  *(a1 + 48) = v5;
  v7 = v5;

  v8 = (a1 + 56);
  v9 = *(a1 + 56);
  v11 = (a2 + 56);
  v10 = *(a2 + 56);
  if (v9)
  {
    if (v10)
    {
      *(a1 + 56) = v10;
      v12 = v10;

      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = *(a2 + 80);
    }

    else
    {
      sub_23027674C(a1 + 56);
      v14 = *(a2 + 72);
      *v8 = *v11;
      *(a1 + 72) = v14;
    }
  }

  else if (v10)
  {
    *(a1 + 56) = v10;
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
    v13 = v10;
  }

  else
  {
    v15 = *(a2 + 72);
    *v8 = *v11;
    *(a1 + 72) = v15;
  }

  return a1;
}

uint64_t sub_230279720(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  v4 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  v5 = *(a1 + 56);
  v6 = *(a2 + 56);
  if (!v5)
  {
    goto LABEL_5;
  }

  if (!v6)
  {
    sub_23027674C(a1 + 56);
LABEL_5:
    v8 = *(a2 + 72);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = v8;
    return a1;
  }

  *(a1 + 56) = v6;

  *(a1 + 64) = *(a2 + 64);
  v7 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v7;

  return a1;
}

uint64_t _s15GroupInvocationC6ResultVwet(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t _s15GroupInvocationC6ResultVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_230279898(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  return a1;
}

uint64_t sub_2302798F0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t sub_230279980(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t destroy for REMRemindersListDataView.ListsSectionsModel.List(id *a1)
{
}

uint64_t initializeWithCopy for REMRemindersListDataView.ListsSectionsModel.List(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v6 = v3;

  v7 = v5;

  return a1;
}

uint64_t assignWithCopy for REMRemindersListDataView.ListsSectionsModel.List(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  *(a1 + 24) = v8;
  v9 = v8;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for REMRemindersListDataView.ListsSectionsModel.List(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v5 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

void sub_230279BC8(uint64_t a1)
{

  v2 = *(a1 + 40);
}

uint64_t sub_230279C14(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  v5 = *(a2 + 40);
  *(a1 + 40) = v5;

  v6 = v5;
  return a1;
}

uint64_t sub_230279C78(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  *(a1 + 40) = v5;
  v7 = v5;

  return a1;
}

uint64_t sub_230279D1C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  v4 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

void destroy for REMRemindersListDataView.TodayGroupModel(uint64_t a1)
{

  v2 = *(a1 + 56);
}

uint64_t initializeWithCopy for REMRemindersListDataView.TodayGroupModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  v3 = *(a2 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;

  v6 = v4;

  v7 = v5;
  return a1;
}

uint64_t assignWithCopy for REMRemindersListDataView.TodayGroupModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  *(a1 + 32) = v6;
  v7 = v6;

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  v8 = *(a1 + 56);
  v9 = *(a2 + 56);
  *(a1 + 56) = v9;
  v10 = v9;

  return a1;
}

uint64_t assignWithTake for REMRemindersListDataView.TodayGroupModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  v4 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t getEnumTagSinglePayload for REMRemindersListDataView.TodayGroupModel(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for REMRemindersListDataView.TodayGroupModel(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t assignWithCopy for REMRemindersListDataView.TodayGroupModel.Group(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithTake for REMRemindersListDataView.TodayGroupModel.Group(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t sub_23027A0E8()
{
}

uint64_t initializeWithCopy for REMRemindersListDataView.DatesModel(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  return a1;
}

uint64_t assignWithCopy for REMRemindersListDataView.DatesModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithTake for REMRemindersListDataView.DatesModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void *initializeBufferWithCopyOfBuffer for REMRemindersListDataView.DatesModel.Group(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_23030EB58();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    *(a1 + v8) = *(a2 + v8);
  }

  return a1;
}

uint64_t initializeWithCopy for REMRemindersListDataView.DatesModel.Group(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23030EB58();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t assignWithCopy for REMRemindersListDataView.DatesModel.Group(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23030EB58();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t initializeWithTake for REMRemindersListDataView.DatesModel.Group(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23030EB58();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t assignWithTake for REMRemindersListDataView.DatesModel.Group(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23030EB58();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t sub_23027A5AC(uint64_t a1)
{
  result = sub_23030EB58();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));

    return a1;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      *a1 = *a2;
      goto LABEL_5;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v10 = sub_23030EB58();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    v11 = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Day(0);
    *(a1 + *(v11 + 20)) = *(a2 + *(v11 + 20));
    goto LABEL_5;
  }

  v7 = sub_23030EB58();
  (*(*(v7 - 8) + 16))(a1, a2, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186B8, &qword_23032DEE8);
  *(a1 + *(v8 + 48)) = *(a2 + *(v8 + 48));
LABEL_5:

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t destroy for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (!result)
    {
      goto LABEL_10;
    }

    if (result != 1)
    {
      return result;
    }
  }

  else
  {
    if (result == 2)
    {
      v5 = sub_23030EB58();
      (*(*(v5 - 8) + 8))(a1, v5);
      type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Day(0);
      goto LABEL_10;
    }

    if (result != 3 && result != 4)
    {
      return result;
    }
  }

  v4 = sub_23030EB58();
  (*(*(v4 - 8) + 8))(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186B8, &qword_23032DEE8);
LABEL_10:
}

void *initializeWithCopy for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      *a1 = *a2;
      goto LABEL_4;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v8 = sub_23030EB58();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    v9 = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Day(0);
    *(a1 + *(v9 + 20)) = *(a2 + *(v9 + 20));
    goto LABEL_4;
  }

  v6 = sub_23030EB58();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186B8, &qword_23032DEE8);
  *(a1 + *(v7 + 48)) = *(a2 + *(v7 + 48));
LABEL_4:

  swift_storeEnumTagMultiPayload();
  return a1;
}

void *assignWithCopy for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_230270804(a1, type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        *a1 = *a2;
        goto LABEL_5;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v8 = sub_23030EB58();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      v9 = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Day(0);
      *(a1 + *(v9 + 20)) = *(a2 + *(v9 + 20));
      goto LABEL_5;
    }

    v6 = sub_23030EB58();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186B8, &qword_23032DEE8);
    *(a1 + *(v7 + 48)) = *(a2 + *(v7 + 48));
LABEL_5:

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *initializeWithTake for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
    {
      goto LABEL_7;
    }

LABEL_10:
    v11 = sub_23030EB58();
    (*(*(v11 - 8) + 32))(a1, a2, v11);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186B8, &qword_23032DEE8);
    *&a1[*(v12 + 48)] = *&a2[*(v12 + 48)];
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v7 = sub_23030EB58();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    v8 = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Day(0);
    *&a1[*(v8 + 20)] = *&a2[*(v8 + 20)];
LABEL_11:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

LABEL_7:
  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

char *assignWithTake for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_230270804(a1, type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
    {
      goto LABEL_8;
    }

LABEL_11:
    v11 = sub_23030EB58();
    (*(*(v11 - 8) + 32))(a1, a2, v11);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186B8, &qword_23032DEE8);
    *&a1[*(v12 + 48)] = *&a2[*(v12 + 48)];
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v7 = sub_23030EB58();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    v8 = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Day(0);
    *&a1[*(v8 + 20)] = *&a2[*(v8 + 20)];
LABEL_12:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

LABEL_8:
  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_23027B340(uint64_t a1)
{
  v7 = MEMORY[0x277D833F0] + 64;
  result = sub_23030EB58();
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v8 = &v6;
    result = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Day(319);
    if (v3 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      swift_getTupleTypeLayout2();
      v10 = &v5;
      swift_getTupleTypeLayout2();
      v11 = &v4;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for REMRemindersListDataView.ScheduledTodayGroup(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18738, &unk_23033B7D0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    v12 = sub_23030EB58();
    (*(*(v12 - 8) + 16))(a1, a2, v12);
    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t destroy for REMRemindersListDataView.ScheduledTodayGroup(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18738, &unk_23033B7D0);
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = sub_23030EB58();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

void *initializeWithCopy for REMRemindersListDataView.ScheduledTodayGroup(void *a1, const void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18738, &unk_23033B7D0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = sub_23030EB58();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

void *assignWithCopy for REMRemindersListDataView.ScheduledTodayGroup(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18738, &unk_23033B7D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = sub_23030EB58();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      (*(v7 + 56))(a1, 0, 1, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v14 = sub_23030EB58();
      (*(*(v14 - 8) + 24))(a1, a2, v14);
      return a1;
    }

    sub_230061918(a1, &qword_27DB18738, &unk_23033B7D0);
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

void *initializeWithTake for REMRemindersListDataView.ScheduledTodayGroup(void *a1, const void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18738, &unk_23033B7D0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = sub_23030EB58();
    (*(*(v10 - 8) + 32))(a1, a2, v10);
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

void *assignWithTake for REMRemindersListDataView.ScheduledTodayGroup(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18738, &unk_23033B7D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = sub_23030EB58();
      (*(*(v11 - 8) + 32))(a1, a2, v11);
      (*(v7 + 56))(a1, 0, 1, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v14 = sub_23030EB58();
      (*(*(v14 - 8) + 40))(a1, a2, v14);
      return a1;
    }

    sub_230061918(a1, &qword_27DB18738, &unk_23033B7D0);
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

uint64_t sub_23027BD3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18738, &unk_23033B7D0);
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 1, v2);
}

uint64_t sub_23027BDB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18738, &unk_23033B7D0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 1, v4);
}

uint64_t sub_23027BE3C()
{
}

uint64_t sub_23027BE80(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;

  return a1;
}

uint64_t sub_23027BEE0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t sub_23027BF68(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t *sub_23027BFD8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_23030EB58();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t sub_23027C0A4(uint64_t a1)
{
  v2 = sub_23030EB58();
  (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t sub_23027C118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23030EB58();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  return a1;
}

uint64_t sub_23027C198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23030EB58();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  return a1;
}

uint64_t sub_23027C224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23030EB58();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_23027C2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23030EB58();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_75Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23030EB58();
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

uint64_t __swift_store_extra_inhabitant_index_76Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23030EB58();
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

uint64_t sub_23027C4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_23030EB58();
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for REMRemindersListDataView.CompletedDateBucketsModel.Bucket(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = sub_23030EB58();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18828, &qword_23032E008);
        *(a1 + *(v13 + 48)) = *(a2 + *(v13 + 48));
      }

      else
      {
        v10 = type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Day(0);
        *(a1 + *(v10 + 20)) = *(a2 + *(v10 + 20));
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18828, &qword_23032E008);
      *(a1 + *(v11 + 48)) = *(a2 + *(v11 + 48));
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18828, &qword_23032E008);
      }

      else
      {
        v12 = type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate(0);
        *(a1 + *(v12 + 20)) = *(a2 + *(v12 + 20));
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB187F8, &qword_23032DFF8);
      }

      *(a1 + *(v8 + 48)) = *(a2 + *(v8 + 48));
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for REMRemindersListDataView.CompletedDateBucketsModel.Bucket(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (!result)
    {
      v8 = sub_23030EB58();
      (*(*(v8 - 8) + 8))(a1, v8);
      type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Day(0);
      goto LABEL_10;
    }

    if (result != 1)
    {
      return result;
    }
  }

  else if (result != 2 && result != 3)
  {
    if (result != 4)
    {
      return result;
    }

    v4 = sub_23030EB58();
    (*(*(v4 - 8) + 8))(a1, v4);
    v5 = &qword_27DB187F8;
    v6 = &qword_23032DFF8;
    goto LABEL_9;
  }

  v7 = sub_23030EB58();
  (*(*(v7 - 8) + 8))(a1, v7);
  v5 = &qword_27DB18828;
  v6 = &qword_23032E008;
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
LABEL_10:
}

uint64_t initializeWithCopy for REMRemindersListDataView.CompletedDateBucketsModel.Bucket(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = sub_23030EB58();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
    {
      v7 = type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate(0);
      *(a1 + *(v7 + 20)) = *(a2 + *(v7 + 20));
      v8 = &qword_27DB187F8;
      v9 = &qword_23032DFF8;
LABEL_8:
      v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(v8, v9) + 48);
      goto LABEL_9;
    }

LABEL_7:
    v8 = &qword_27DB18828;
    v9 = &qword_23032E008;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_7;
  }

  v10 = (type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Day(0) + 20);
LABEL_9:
  *(a1 + *v10) = *(a2 + *v10);

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for REMRemindersListDataView.CompletedDateBucketsModel.Bucket(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_230270804(a1, type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Bucket);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = sub_23030EB58();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v10 = (type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Day(0) + 20);
LABEL_10:
        *(a1 + *v10) = *(a2 + *v10);

        swift_storeEnumTagMultiPayload();
        return a1;
      }
    }

    else if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
    {
      v7 = type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate(0);
      *(a1 + *(v7 + 20)) = *(a2 + *(v7 + 20));
      v8 = &qword_27DB187F8;
      v9 = &qword_23032DFF8;
LABEL_9:
      v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(v8, v9) + 48);
      goto LABEL_10;
    }

    v8 = &qword_27DB18828;
    v9 = &qword_23032E008;
    goto LABEL_9;
  }

  return a1;
}

uint64_t initializeWithTake for REMRemindersListDataView.CompletedDateBucketsModel.Bucket(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = sub_23030EB58();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
    {
      v7 = type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate(0);
      *(a1 + *(v7 + 20)) = *(a2 + *(v7 + 20));
      v8 = &qword_27DB187F8;
      v9 = &qword_23032DFF8;
LABEL_8:
      v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(v8, v9) + 48);
      goto LABEL_9;
    }

LABEL_7:
    v8 = &qword_27DB18828;
    v9 = &qword_23032E008;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_7;
  }

  v10 = (type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Day(0) + 20);
LABEL_9:
  *(a1 + *v10) = *(a2 + *v10);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithTake for REMRemindersListDataView.CompletedDateBucketsModel.Bucket(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_230270804(a1, type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Bucket);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = sub_23030EB58();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v10 = (type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Day(0) + 20);
LABEL_10:
        *(a1 + *v10) = *(a2 + *v10);
        swift_storeEnumTagMultiPayload();
        return a1;
      }
    }

    else if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
    {
      v7 = type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate(0);
      *(a1 + *(v7 + 20)) = *(a2 + *(v7 + 20));
      v8 = &qword_27DB187F8;
      v9 = &qword_23032DFF8;
LABEL_9:
      v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(v8, v9) + 48);
      goto LABEL_10;
    }

    v8 = &qword_27DB18828;
    v9 = &qword_23032E008;
    goto LABEL_9;
  }

  return a1;
}

uint64_t sub_23027CD0C(uint64_t a1)
{
  result = type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Day(319);
  if (v2 <= 0x3F)
  {
    v9 = *(result - 8) + 64;
    result = sub_23030EB58();
    if (v3 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v10 = &v8;
      swift_getTupleTypeLayout2();
      v11 = &v7;
      swift_getTupleTypeLayout2();
      v12 = &v6;
      result = type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate(319);
      if (v4 <= 0x3F)
      {
        swift_getTupleTypeLayout2();
        v13 = &v5;
        swift_initEnumMetadataMultiPayload();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_23027D364()
{
  result = qword_27DB18968;
  if (!qword_27DB18968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18968);
  }

  return result;
}

unint64_t sub_23027D3BC()
{
  result = qword_27DB18970;
  if (!qword_27DB18970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18970);
  }

  return result;
}

unint64_t sub_23027D414()
{
  result = qword_27DB18978;
  if (!qword_27DB18978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18978);
  }

  return result;
}

unint64_t sub_23027D46C()
{
  result = qword_27DB18980;
  if (!qword_27DB18980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18980);
  }

  return result;
}

unint64_t sub_23027D4C4()
{
  result = qword_27DB18988;
  if (!qword_27DB18988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18988);
  }

  return result;
}

unint64_t sub_23027D51C()
{
  result = qword_27DB18990;
  if (!qword_27DB18990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18990);
  }

  return result;
}

unint64_t sub_23027D574()
{
  result = qword_27DB18998;
  if (!qword_27DB18998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18998);
  }

  return result;
}

unint64_t sub_23027D5CC()
{
  result = qword_27DB189A0;
  if (!qword_27DB189A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB189A0);
  }

  return result;
}

unint64_t sub_23027D624()
{
  result = qword_27DB189A8;
  if (!qword_27DB189A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB189A8);
  }

  return result;
}

unint64_t sub_23027D67C()
{
  result = qword_27DB189B0;
  if (!qword_27DB189B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB189B0);
  }

  return result;
}

unint64_t sub_23027D6D4()
{
  result = qword_27DB189B8;
  if (!qword_27DB189B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB189B8);
  }

  return result;
}

unint64_t sub_23027D72C()
{
  result = qword_27DB189C0;
  if (!qword_27DB189C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB189C0);
  }

  return result;
}

unint64_t sub_23027D784()
{
  result = qword_27DB189C8;
  if (!qword_27DB189C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB189C8);
  }

  return result;
}

unint64_t sub_23027D7DC()
{
  result = qword_27DB189D0;
  if (!qword_27DB189D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB189D0);
  }

  return result;
}

unint64_t sub_23027D834()
{
  result = qword_27DB189D8;
  if (!qword_27DB189D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB189D8);
  }

  return result;
}

unint64_t sub_23027D88C()
{
  result = qword_27DB189E0;
  if (!qword_27DB189E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB189E0);
  }

  return result;
}

unint64_t sub_23027D8E4()
{
  result = qword_27DB189E8;
  if (!qword_27DB189E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB189E8);
  }

  return result;
}

unint64_t sub_23027D93C()
{
  result = qword_27DB189F0;
  if (!qword_27DB189F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB189F0);
  }

  return result;
}

unint64_t sub_23027D994()
{
  result = qword_27DB189F8;
  if (!qword_27DB189F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB189F8);
  }

  return result;
}

unint64_t sub_23027D9EC()
{
  result = qword_27DB18A00;
  if (!qword_27DB18A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18A00);
  }

  return result;
}

unint64_t sub_23027DA44()
{
  result = qword_27DB18A08;
  if (!qword_27DB18A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18A08);
  }

  return result;
}

unint64_t sub_23027DA9C()
{
  result = qword_27DB18A10;
  if (!qword_27DB18A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18A10);
  }

  return result;
}

unint64_t sub_23027DAF4()
{
  result = qword_27DB18A18;
  if (!qword_27DB18A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18A18);
  }

  return result;
}

unint64_t sub_23027DB4C()
{
  result = qword_27DB18A20;
  if (!qword_27DB18A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18A20);
  }

  return result;
}

unint64_t sub_23027DBA4()
{
  result = qword_27DB18A28;
  if (!qword_27DB18A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18A28);
  }

  return result;
}

unint64_t sub_23027DBFC()
{
  result = qword_27DB18A30;
  if (!qword_27DB18A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18A30);
  }

  return result;
}

unint64_t sub_23027DC54()
{
  result = qword_27DB18A38;
  if (!qword_27DB18A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18A38);
  }

  return result;
}

unint64_t sub_23027DCAC()
{
  result = qword_27DB18A40;
  if (!qword_27DB18A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18A40);
  }

  return result;
}

unint64_t sub_23027DD04()
{
  result = qword_27DB18A48;
  if (!qword_27DB18A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18A48);
  }

  return result;
}

unint64_t sub_23027DD5C()
{
  result = qword_27DB18A50;
  if (!qword_27DB18A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18A50);
  }

  return result;
}

unint64_t sub_23027DDB4()
{
  result = qword_27DB18A58;
  if (!qword_27DB18A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18A58);
  }

  return result;
}

unint64_t sub_23027DE0C()
{
  result = qword_27DB18A60;
  if (!qword_27DB18A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18A60);
  }

  return result;
}

unint64_t sub_23027DE64()
{
  result = qword_27DB18A68;
  if (!qword_27DB18A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18A68);
  }

  return result;
}

unint64_t sub_23027DEBC()
{
  result = qword_27DB18A70;
  if (!qword_27DB18A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18A70);
  }

  return result;
}

unint64_t sub_23027DF14()
{
  result = qword_27DB18A78;
  if (!qword_27DB18A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18A78);
  }

  return result;
}

unint64_t sub_23027DF6C()
{
  result = qword_27DB18A80;
  if (!qword_27DB18A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18A80);
  }

  return result;
}

unint64_t sub_23027DFC4()
{
  result = qword_27DB18A88;
  if (!qword_27DB18A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18A88);
  }

  return result;
}

unint64_t sub_23027E01C()
{
  result = qword_27DB18A90;
  if (!qword_27DB18A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18A90);
  }

  return result;
}

unint64_t sub_23027E074()
{
  result = qword_27DB18A98;
  if (!qword_27DB18A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18A98);
  }

  return result;
}

unint64_t sub_23027E0CC()
{
  result = qword_27DB18AA0;
  if (!qword_27DB18AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18AA0);
  }

  return result;
}

unint64_t sub_23027E124()
{
  result = qword_27DB18AA8;
  if (!qword_27DB18AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18AA8);
  }

  return result;
}

unint64_t sub_23027E17C()
{
  result = qword_27DB18AB0;
  if (!qword_27DB18AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18AB0);
  }

  return result;
}

unint64_t sub_23027E1D4()
{
  result = qword_27DB18AB8;
  if (!qword_27DB18AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18AB8);
  }

  return result;
}

unint64_t sub_23027E22C()
{
  result = qword_27DB18AC0;
  if (!qword_27DB18AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18AC0);
  }

  return result;
}

unint64_t sub_23027E284()
{
  result = qword_27DB18AC8;
  if (!qword_27DB18AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18AC8);
  }

  return result;
}

unint64_t sub_23027E2DC()
{
  result = qword_27DB18AD0;
  if (!qword_27DB18AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18AD0);
  }

  return result;
}

unint64_t sub_23027E334()
{
  result = qword_27DB18AD8;
  if (!qword_27DB18AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18AD8);
  }

  return result;
}

unint64_t sub_23027E38C()
{
  result = qword_27DB18AE0;
  if (!qword_27DB18AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18AE0);
  }

  return result;
}

unint64_t sub_23027E3E4()
{
  result = qword_27DB18AE8;
  if (!qword_27DB18AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18AE8);
  }

  return result;
}

unint64_t sub_23027E43C()
{
  result = qword_27DB18AF0;
  if (!qword_27DB18AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18AF0);
  }

  return result;
}

unint64_t sub_23027E494()
{
  result = qword_27DB18AF8;
  if (!qword_27DB18AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18AF8);
  }

  return result;
}

unint64_t sub_23027E4EC()
{
  result = qword_27DB18B00;
  if (!qword_27DB18B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18B00);
  }

  return result;
}

unint64_t sub_23027E544()
{
  result = qword_27DB18B08;
  if (!qword_27DB18B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18B08);
  }

  return result;
}

unint64_t sub_23027E59C()
{
  result = qword_27DB18B10;
  if (!qword_27DB18B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18B10);
  }

  return result;
}

unint64_t sub_23027E5F4()
{
  result = qword_27DB18B18;
  if (!qword_27DB18B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18B18);
  }

  return result;
}

unint64_t sub_23027E64C()
{
  result = qword_27DB18B20;
  if (!qword_27DB18B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18B20);
  }

  return result;
}

unint64_t sub_23027E6A4()
{
  result = qword_27DB18B28;
  if (!qword_27DB18B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18B28);
  }

  return result;
}

unint64_t sub_23027E6FC()
{
  result = qword_27DB18B30;
  if (!qword_27DB18B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18B30);
  }

  return result;
}

unint64_t sub_23027E754()
{
  result = qword_280C9A588;
  if (!qword_280C9A588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A588);
  }

  return result;
}

unint64_t sub_23027E7AC()
{
  result = qword_280C9A590;
  if (!qword_280C9A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A590);
  }

  return result;
}

unint64_t sub_23027E804()
{
  result = qword_27DB18B38;
  if (!qword_27DB18B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18B38);
  }

  return result;
}

unint64_t sub_23027E85C()
{
  result = qword_27DB18B40;
  if (!qword_27DB18B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18B40);
  }

  return result;
}

unint64_t sub_23027E8B4()
{
  result = qword_27DB18B48;
  if (!qword_27DB18B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18B48);
  }

  return result;
}

unint64_t sub_23027E90C()
{
  result = qword_27DB18B50;
  if (!qword_27DB18B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18B50);
  }

  return result;
}

unint64_t sub_23027E964()
{
  result = qword_27DB18B58;
  if (!qword_27DB18B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18B58);
  }

  return result;
}

unint64_t sub_23027E9BC()
{
  result = qword_27DB18B60;
  if (!qword_27DB18B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18B60);
  }

  return result;
}

unint64_t sub_23027EA14()
{
  result = qword_27DB18B68;
  if (!qword_27DB18B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18B68);
  }

  return result;
}

unint64_t sub_23027EA6C()
{
  result = qword_27DB18B70;
  if (!qword_27DB18B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18B70);
  }

  return result;
}

unint64_t sub_23027EAC4()
{
  result = qword_27DB18B78;
  if (!qword_27DB18B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18B78);
  }

  return result;
}

unint64_t sub_23027EB1C()
{
  result = qword_27DB18B80;
  if (!qword_27DB18B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18B80);
  }

  return result;
}

unint64_t sub_23027EB74()
{
  result = qword_27DB18B88;
  if (!qword_27DB18B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18B88);
  }

  return result;
}

unint64_t sub_23027EBCC()
{
  result = qword_27DB18B90;
  if (!qword_27DB18B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18B90);
  }

  return result;
}

unint64_t sub_23027EC24()
{
  result = qword_27DB18B98;
  if (!qword_27DB18B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18B98);
  }

  return result;
}

unint64_t sub_23027EC7C()
{
  result = qword_27DB18BA0;
  if (!qword_27DB18BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18BA0);
  }

  return result;
}

unint64_t sub_23027ECD4()
{
  result = qword_27DB18BA8;
  if (!qword_27DB18BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18BA8);
  }

  return result;
}

unint64_t sub_23027ED2C()
{
  result = qword_27DB18BB0;
  if (!qword_27DB18BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18BB0);
  }

  return result;
}

unint64_t sub_23027ED84()
{
  result = qword_280C98C48;
  if (!qword_280C98C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98C48);
  }

  return result;
}

unint64_t sub_23027EDDC()
{
  result = qword_280C98C50;
  if (!qword_280C98C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98C50);
  }

  return result;
}

unint64_t sub_23027EE34()
{
  result = qword_280C98C60;
  if (!qword_280C98C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98C60);
  }

  return result;
}

unint64_t sub_23027EE8C()
{
  result = qword_280C98C68;
  if (!qword_280C98C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98C68);
  }

  return result;
}

unint64_t sub_23027EEE4()
{
  result = qword_280C98C70;
  if (!qword_280C98C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98C70);
  }

  return result;
}

unint64_t sub_23027EF3C()
{
  result = qword_280C98C78;
  if (!qword_280C98C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98C78);
  }

  return result;
}

unint64_t sub_23027EF94()
{
  result = qword_280C979C8;
  if (!qword_280C979C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C979C8);
  }

  return result;
}

unint64_t sub_23027EFEC()
{
  result = qword_280C979D0;
  if (!qword_280C979D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C979D0);
  }

  return result;
}

unint64_t sub_23027F044()
{
  result = qword_280C979E0;
  if (!qword_280C979E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C979E0);
  }

  return result;
}

unint64_t sub_23027F09C()
{
  result = qword_280C979E8;
  if (!qword_280C979E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C979E8);
  }

  return result;
}

unint64_t sub_23027F0F4()
{
  result = qword_280C979F0;
  if (!qword_280C979F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C979F0);
  }

  return result;
}

unint64_t sub_23027F14C()
{
  result = qword_280C979F8;
  if (!qword_280C979F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C979F8);
  }

  return result;
}

unint64_t sub_23027F1A4()
{
  result = qword_280C98E58;
  if (!qword_280C98E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98E58);
  }

  return result;
}

unint64_t sub_23027F1FC()
{
  result = qword_280C98E60;
  if (!qword_280C98E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98E60);
  }

  return result;
}

unint64_t sub_23027F254()
{
  result = qword_280C98D40;
  if (!qword_280C98D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98D40);
  }

  return result;
}

unint64_t sub_23027F2AC()
{
  result = qword_280C98D48;
  if (!qword_280C98D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98D48);
  }

  return result;
}

unint64_t sub_23027F304()
{
  result = qword_280C98D30;
  if (!qword_280C98D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98D30);
  }

  return result;
}

unint64_t sub_23027F35C()
{
  result = qword_280C98D38;
  if (!qword_280C98D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98D38);
  }

  return result;
}

unint64_t sub_23027F3B4()
{
  result = qword_280C98D80;
  if (!qword_280C98D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98D80);
  }

  return result;
}

unint64_t sub_23027F40C()
{
  result = qword_280C98D88;
  if (!qword_280C98D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98D88);
  }

  return result;
}

unint64_t sub_23027F464()
{
  result = qword_280C98D58;
  if (!qword_280C98D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98D58);
  }

  return result;
}

unint64_t sub_23027F4BC()
{
  result = qword_280C98D60;
  if (!qword_280C98D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98D60);
  }

  return result;
}

unint64_t sub_23027F514()
{
  result = qword_280C98D70;
  if (!qword_280C98D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98D70);
  }

  return result;
}

unint64_t sub_23027F56C()
{
  result = qword_280C98D78;
  if (!qword_280C98D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98D78);
  }

  return result;
}

unint64_t sub_23027F5C4()
{
  result = qword_280C98D98;
  if (!qword_280C98D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98D98);
  }

  return result;
}

unint64_t sub_23027F61C()
{
  result = qword_280C98DA0;
  if (!qword_280C98DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98DA0);
  }

  return result;
}

unint64_t sub_23027F674()
{
  result = qword_280C98E40;
  if (!qword_280C98E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98E40);
  }

  return result;
}

unint64_t sub_23027F6CC()
{
  result = qword_280C98E48;
  if (!qword_280C98E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98E48);
  }

  return result;
}

unint64_t sub_23027F724()
{
  result = qword_280C97D30;
  if (!qword_280C97D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97D30);
  }

  return result;
}

unint64_t sub_23027F77C()
{
  result = qword_280C97D38;
  if (!qword_280C97D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97D38);
  }

  return result;
}

unint64_t sub_23027F7D4()
{
  result = qword_27DB18BB8;
  if (!qword_27DB18BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18BB8);
  }

  return result;
}

unint64_t sub_23027F82C()
{
  result = qword_27DB18BC0;
  if (!qword_27DB18BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18BC0);
  }

  return result;
}

unint64_t sub_23027F884()
{
  result = qword_27DB18BC8;
  if (!qword_27DB18BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18BC8);
  }

  return result;
}

unint64_t sub_23027F8DC()
{
  result = qword_27DB18BD0;
  if (!qword_27DB18BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18BD0);
  }

  return result;
}

unint64_t sub_23027F934()
{
  result = qword_280C9A5B0;
  if (!qword_280C9A5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A5B0);
  }

  return result;
}

unint64_t sub_23027F98C()
{
  result = qword_280C9A5B8;
  if (!qword_280C9A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A5B8);
  }

  return result;
}

unint64_t sub_23027F9E4()
{
  result = qword_280C9A5D0;
  if (!qword_280C9A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A5D0);
  }

  return result;
}

unint64_t sub_23027FA3C()
{
  result = qword_280C9A5D8;
  if (!qword_280C9A5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A5D8);
  }

  return result;
}

unint64_t sub_23027FA94()
{
  result = qword_280C9A668;
  if (!qword_280C9A668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A668);
  }

  return result;
}

unint64_t sub_23027FAEC()
{
  result = qword_280C9A670;
  if (!qword_280C9A670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A670);
  }

  return result;
}

unint64_t sub_23027FB44()
{
  result = qword_280C9A678;
  if (!qword_280C9A678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A678);
  }

  return result;
}

unint64_t sub_23027FB9C()
{
  result = qword_280C9A680;
  if (!qword_280C9A680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A680);
  }

  return result;
}

unint64_t sub_23027FBF4()
{
  result = qword_280C9A658;
  if (!qword_280C9A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A658);
  }

  return result;
}

unint64_t sub_23027FC4C()
{
  result = qword_280C9A660;
  if (!qword_280C9A660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A660);
  }

  return result;
}

unint64_t sub_23027FCA4()
{
  result = qword_280C9A610;
  if (!qword_280C9A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A610);
  }

  return result;
}

unint64_t sub_23027FCFC()
{
  result = qword_280C9A618;
  if (!qword_280C9A618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A618);
  }

  return result;
}

unint64_t sub_23027FD54()
{
  result = qword_280C9A5F0;
  if (!qword_280C9A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A5F0);
  }

  return result;
}

unint64_t sub_23027FDAC()
{
  result = qword_280C9A5F8;
  if (!qword_280C9A5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A5F8);
  }

  return result;
}

unint64_t sub_23027FE04()
{
  result = qword_280C9A600;
  if (!qword_280C9A600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A600);
  }

  return result;
}

unint64_t sub_23027FE5C()
{
  result = qword_280C9A608;
  if (!qword_280C9A608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A608);
  }

  return result;
}

unint64_t sub_23027FEB4()
{
  result = qword_280C9A620;
  if (!qword_280C9A620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A620);
  }

  return result;
}

unint64_t sub_23027FF0C()
{
  result = qword_280C9A628;
  if (!qword_280C9A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A628);
  }

  return result;
}

unint64_t sub_23027FF64()
{
  result = qword_280C9A630;
  if (!qword_280C9A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A630);
  }

  return result;
}

unint64_t sub_23027FFBC()
{
  result = qword_280C9A638;
  if (!qword_280C9A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A638);
  }

  return result;
}

unint64_t sub_230280014()
{
  result = qword_280C9A640;
  if (!qword_280C9A640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A640);
  }

  return result;
}

unint64_t sub_23028006C()
{
  result = qword_280C9A648;
  if (!qword_280C9A648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A648);
  }

  return result;
}

unint64_t sub_2302800C4()
{
  result = qword_27DB18BD8;
  if (!qword_27DB18BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18BD8);
  }

  return result;
}

unint64_t sub_23028011C()
{
  result = qword_27DB18BE0;
  if (!qword_27DB18BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18BE0);
  }

  return result;
}

unint64_t sub_230280174()
{
  result = qword_280C98F20;
  if (!qword_280C98F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98F20);
  }

  return result;
}

unint64_t sub_2302801CC()
{
  result = qword_280C98F28;
  if (!qword_280C98F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98F28);
  }

  return result;
}

unint64_t sub_230280224()
{
  result = qword_280C98F38;
  if (!qword_280C98F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98F38);
  }

  return result;
}

unint64_t sub_23028027C()
{
  result = qword_280C98F40;
  if (!qword_280C98F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98F40);
  }

  return result;
}

unint64_t sub_2302802D4()
{
  result = qword_280C97A28;
  if (!qword_280C97A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97A28);
  }

  return result;
}

unint64_t sub_23028032C()
{
  result = qword_280C97A30;
  if (!qword_280C97A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97A30);
  }

  return result;
}

unint64_t sub_230280384()
{
  result = qword_280C97A68;
  if (!qword_280C97A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97A68);
  }

  return result;
}

unint64_t sub_2302803DC()
{
  result = qword_280C97A70;
  if (!qword_280C97A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97A70);
  }

  return result;
}

unint64_t sub_230280434()
{
  result = qword_280C97A40;
  if (!qword_280C97A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97A40);
  }

  return result;
}

unint64_t sub_23028048C()
{
  result = qword_280C97A48;
  if (!qword_280C97A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97A48);
  }

  return result;
}

unint64_t sub_2302804E4()
{
  result = qword_280C97A50;
  if (!qword_280C97A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97A50);
  }

  return result;
}

unint64_t sub_23028053C()
{
  result = qword_280C97A58;
  if (!qword_280C97A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97A58);
  }

  return result;
}

unint64_t sub_230280594()
{
  result = qword_27DB18BE8;
  if (!qword_27DB18BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18BE8);
  }

  return result;
}

unint64_t sub_2302805EC()
{
  result = qword_27DB18BF0;
  if (!qword_27DB18BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18BF0);
  }

  return result;
}

unint64_t sub_230280644()
{
  result = qword_27DB18BF8;
  if (!qword_27DB18BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18BF8);
  }

  return result;
}

unint64_t sub_23028069C()
{
  result = qword_27DB18C00;
  if (!qword_27DB18C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18C00);
  }

  return result;
}

unint64_t sub_2302806F4()
{
  result = qword_280C992D0;
  if (!qword_280C992D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C992D0);
  }

  return result;
}

unint64_t sub_23028074C()
{
  result = qword_280C992D8;
  if (!qword_280C992D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C992D8);
  }

  return result;
}

unint64_t sub_2302807A4()
{
  result = qword_280C990C0;
  if (!qword_280C990C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C990C0);
  }

  return result;
}

unint64_t sub_2302807FC()
{
  result = qword_280C990C8;
  if (!qword_280C990C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C990C8);
  }

  return result;
}

unint64_t sub_230280854()
{
  result = qword_280C991A0;
  if (!qword_280C991A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C991A0);
  }

  return result;
}

unint64_t sub_2302808AC()
{
  result = qword_280C991A8;
  if (!qword_280C991A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C991A8);
  }

  return result;
}

unint64_t sub_230280904()
{
  result = qword_280C991D0;
  if (!qword_280C991D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C991D0);
  }

  return result;
}

unint64_t sub_23028095C()
{
  result = qword_280C991D8;
  if (!qword_280C991D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C991D8);
  }

  return result;
}

unint64_t sub_2302809B4()
{
  result = qword_280C991B8;
  if (!qword_280C991B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C991B8);
  }

  return result;
}

unint64_t sub_230280A0C()
{
  result = qword_280C991C0;
  if (!qword_280C991C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C991C0);
  }

  return result;
}

unint64_t sub_230280A64()
{
  result = qword_280C991E0;
  if (!qword_280C991E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C991E0);
  }

  return result;
}

unint64_t sub_230280ABC()
{
  result = qword_280C991E8;
  if (!qword_280C991E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C991E8);
  }

  return result;
}

unint64_t sub_230280B14()
{
  result = qword_280C9A2C0;
  if (!qword_280C9A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A2C0);
  }

  return result;
}

unint64_t sub_230280B6C()
{
  result = qword_280C9A2C8;
  if (!qword_280C9A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A2C8);
  }

  return result;
}

unint64_t sub_230280BC4()
{
  result = qword_27DB18C08;
  if (!qword_27DB18C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18C08);
  }

  return result;
}

unint64_t sub_230280C1C()
{
  result = qword_27DB18C10;
  if (!qword_27DB18C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18C10);
  }

  return result;
}

unint64_t sub_230280C74()
{
  result = qword_27DB18C18;
  if (!qword_27DB18C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18C18);
  }

  return result;
}

unint64_t sub_230280CCC()
{
  result = qword_27DB18C20;
  if (!qword_27DB18C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18C20);
  }

  return result;
}

unint64_t sub_230280D24()
{
  result = qword_27DB18C28;
  if (!qword_27DB18C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18C28);
  }

  return result;
}

unint64_t sub_230280D7C()
{
  result = qword_27DB18C30;
  if (!qword_27DB18C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18C30);
  }

  return result;
}

unint64_t sub_230280DD4()
{
  result = qword_27DB18C38;
  if (!qword_27DB18C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18C38);
  }

  return result;
}

unint64_t sub_230280E2C()
{
  result = qword_27DB18C40;
  if (!qword_27DB18C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18C40);
  }

  return result;
}

unint64_t sub_230280E84()
{
  result = qword_27DB18C48;
  if (!qword_27DB18C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18C48);
  }

  return result;
}

unint64_t sub_230280EDC()
{
  result = qword_27DB18C50;
  if (!qword_27DB18C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18C50);
  }

  return result;
}

unint64_t sub_230280F34()
{
  result = qword_27DB18C58;
  if (!qword_27DB18C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18C58);
  }

  return result;
}

unint64_t sub_230280F8C()
{
  result = qword_27DB18C60;
  if (!qword_27DB18C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18C60);
  }

  return result;
}

unint64_t sub_230280FE4()
{
  result = qword_27DB18C68;
  if (!qword_27DB18C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18C68);
  }

  return result;
}

unint64_t sub_23028103C()
{
  result = qword_27DB18C70;
  if (!qword_27DB18C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18C70);
  }

  return result;
}

unint64_t sub_230281094()
{
  result = qword_280C99188;
  if (!qword_280C99188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99188);
  }

  return result;
}

unint64_t sub_2302810EC()
{
  result = qword_280C99190;
  if (!qword_280C99190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99190);
  }

  return result;
}

unint64_t sub_230281144()
{
  result = qword_280C99210;
  if (!qword_280C99210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99210);
  }

  return result;
}

unint64_t sub_23028119C()
{
  result = qword_280C99218;
  if (!qword_280C99218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99218);
  }

  return result;
}

unint64_t sub_2302811F4()
{
  result = qword_280C991F8;
  if (!qword_280C991F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C991F8);
  }

  return result;
}

unint64_t sub_23028124C()
{
  result = qword_280C99200;
  if (!qword_280C99200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99200);
  }

  return result;
}

unint64_t sub_2302812A4()
{
  result = qword_280C9A220;
  if (!qword_280C9A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A220);
  }

  return result;
}

unint64_t sub_2302812FC()
{
  result = qword_280C9A228;
  if (!qword_280C9A228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A228);
  }

  return result;
}

unint64_t sub_230281354()
{
  result = qword_280C97BF0;
  if (!qword_280C97BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97BF0);
  }

  return result;
}

unint64_t sub_2302813AC()
{
  result = qword_280C97BF8;
  if (!qword_280C97BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97BF8);
  }

  return result;
}

unint64_t sub_230281404()
{
  result = qword_280C9A850;
  if (!qword_280C9A850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A850);
  }

  return result;
}

unint64_t sub_23028145C()
{
  result = qword_280C9A858;
  if (!qword_280C9A858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A858);
  }

  return result;
}

unint64_t sub_2302814B4()
{
  result = qword_27DB18C78;
  if (!qword_27DB18C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18C78);
  }

  return result;
}

unint64_t sub_23028150C()
{
  result = qword_27DB18C80;
  if (!qword_27DB18C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18C80);
  }

  return result;
}

unint64_t sub_230281564()
{
  result = qword_27DB18C88;
  if (!qword_27DB18C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18C88);
  }

  return result;
}

unint64_t sub_2302815BC()
{
  result = qword_27DB18C90;
  if (!qword_27DB18C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18C90);
  }

  return result;
}

unint64_t sub_230281614()
{
  result = qword_27DB18C98;
  if (!qword_27DB18C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18C98);
  }

  return result;
}

unint64_t sub_23028166C()
{
  result = qword_27DB18CA0;
  if (!qword_27DB18CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18CA0);
  }

  return result;
}

unint64_t sub_2302816C4()
{
  result = qword_27DB18CA8;
  if (!qword_27DB18CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18CA8);
  }

  return result;
}

unint64_t sub_23028171C()
{
  result = qword_27DB18CB0;
  if (!qword_27DB18CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18CB0);
  }

  return result;
}

unint64_t sub_230281774()
{
  result = qword_27DB18CB8;
  if (!qword_27DB18CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18CB8);
  }

  return result;
}

unint64_t sub_2302817CC()
{
  result = qword_27DB18CC0;
  if (!qword_27DB18CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18CC0);
  }

  return result;
}

unint64_t sub_230281824()
{
  result = qword_280C9A4D8;
  if (!qword_280C9A4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A4D8);
  }

  return result;
}

unint64_t sub_23028187C()
{
  result = qword_280C9A4E0;
  if (!qword_280C9A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A4E0);
  }

  return result;
}

unint64_t sub_2302818D4()
{
  result = qword_280C9A720;
  if (!qword_280C9A720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A720);
  }

  return result;
}

unint64_t sub_23028192C()
{
  result = qword_280C9A728;
  if (!qword_280C9A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A728);
  }

  return result;
}

unint64_t sub_230281984()
{
  result = qword_280C9A760;
  if (!qword_280C9A760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A760);
  }

  return result;
}

unint64_t sub_2302819DC()
{
  result = qword_280C9A768;
  if (!qword_280C9A768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A768);
  }

  return result;
}

unint64_t sub_230281A30()
{
  result = qword_280C9A750;
  if (!qword_280C9A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A750);
  }

  return result;
}

uint64_t sub_230281A84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53676E6974726F73 && a2 == 0xEC000000656C7974;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x706D6F43776F6873 && a2 == 0xED0000646574656CLL || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6F43746E756F63 && a2 == 0xEE00646574656C70 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002303457D0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6275536863746566 && a2 == 0xED0000736B736174)
  {

    return 4;
  }

  else
  {
    v6 = sub_230311048();

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

uint64_t sub_230281C58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562614C6C6C61 && a2 == 0xE900000000000073;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736C6562614C6F6ELL && a2 == 0xE800000000000000 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6581857 && a2 == 0xE300000000000000 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 29295 && a2 == 0xE200000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_230311048();

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

uint64_t sub_230281DBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44497463656A626FLL && a2 == 0xE800000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C706D6F437369 && a2 == 0xEB00000000646574 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x436B736174627573 && a2 == 0xEC000000746E756FLL || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736B736174627573 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_230311048();

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

uint64_t sub_230281F28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7265646E696D6572 && a2 == 0xE900000000000073;
  if (v3 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265646E696D6572 && a2 == 0xEE00746E756F4373 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x80000002303457F0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230345820 == a2 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000230345840 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_230311048();

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

uint64_t sub_2302820E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44497473696CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E7473696CLL && a2 == 0xE800000000000000 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6C6F437473696CLL && a2 == 0xE900000000000072 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265646E696D6572 && a2 == 0xE900000000000073 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230345860 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_230311048();

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

uint64_t sub_2302822A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7370756F7267 && a2 == 0xE600000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000230345880 == a2 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002303458A0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230345820 == a2 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000230345840 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_230311048();

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

uint64_t sub_23028245C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65646F4D74616C66 && a2 == 0xE90000000000006CLL;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230345900 == a2 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000230345920 == a2 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000230345940 == a2 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D53646567676174 && a2 == 0xEF7473694C747261 || (sub_230311048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230345960 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_230311048();

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

uint64_t sub_230282670(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001CLL && 0x8000000230345980 == a2;
  if (v3 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230345960 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_230311048();

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

uint64_t sub_230282794(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x80000002303459C0 == a2;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002303459E0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230345A00 == a2 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000230345A20 == a2 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000230345A40 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_230311048();

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

uint64_t sub_230282944(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6974636573 && a2 == 0xE900000000000044;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6163696E6F6E6163 && a2 == 0xED0000656D614E6CLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_230311048();

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

uint64_t sub_230282A70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265646E696D6572 && a2 == 0xEE00746E756F4373 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x80000002303457F0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230345820 == a2 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000230345840 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_230311048();

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

uint64_t sub_230282C30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F6974636573 && a2 == 0xED00006C65646F4DLL;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73694C7472616D73 && a2 == 0xE900000000000074 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230345960 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_230311048();

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

uint64_t sub_230282D60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F6974636573 && a2 == 0xED00006C65646F4DLL;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000230345980 == a2 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230345960 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_230311048();

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

uint64_t sub_230282E90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72616C75676572 && a2 == 0xE700000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D536D6F74737563 && a2 == 0xEF7473694C747261 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797265636F7267 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_230311048();

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

uint64_t sub_230282FB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44497473696CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E7473696CLL && a2 == 0xE800000000000000 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6C6F437473696CLL && a2 == 0xE900000000000072 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657079547473696CLL && a2 == 0xE800000000000000 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_230311048();

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

uint64_t sub_230283164(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737473696CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000230345880 == a2 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002303458A0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230345820 == a2 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000230345840 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_230311048();

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

uint64_t sub_230283318(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7961646F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F5465726F666562 && a2 == 0xEB00000000796164 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6C417961646F74 && a2 == 0xEB00000000796144 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E696E726F6DLL && a2 == 0xE700000000000000 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F6F6E7265746661 && a2 == 0xE90000000000006ELL || (sub_230311048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746867696E6F74 && a2 == 0xE700000000000000 || (sub_230311048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x79627261656ELL && a2 == 0xE600000000000000 || (sub_230311048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7974706D65 && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_2302835B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7370756F7267 && a2 == 0xE600000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265646E696D6572 && a2 == 0xEE00746E756F4373 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C746E6572727563 && a2 == 0xEF6E6F697461636FLL || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230345820 == a2 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000230345840 == a2 || (sub_230311048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x616D537961646F74 && a2 == 0xEE007473694C7472)
  {

    return 5;
  }

  else
  {
    v6 = sub_230311048();

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

uint64_t sub_2302837D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265646E696D6572 && a2 == 0xE900000000000073 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7961646F547369 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_230311048();

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

uint64_t sub_2302838F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7370756F7267 && a2 == 0xE600000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000230345880 == a2 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230345820 == a2 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000230345840 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_230311048();

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

uint64_t sub_230283A60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65754474736170 && a2 == 0xE700000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657669467478656ELL && a2 == 0xEC00000073796144 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7954788 && a2 == 0xE300000000000000 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1918985593 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_230311048();

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

uint64_t sub_230283C10(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7954788 && a2 == 0xE300000000000000;
  if (v3 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6576655374736170 && a2 == 0xED0000737961446ELL || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7269685474736170 && a2 == 0xEE00737961447974 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1918985593 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_230311048();

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

uint64_t sub_230283DCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7374656B637562 && a2 == 0xE700000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265646E696D6572 && a2 == 0xEE00746E756F4373 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230345820 == a2 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000230345840 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_230311048();

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

unint64_t sub_230283F44(uint64_t a1, uint64_t a2)
{
  v2 = sub_230310C08();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_230283F90()
{
  result = qword_280C9A710;
  if (!qword_280C9A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A710);
  }

  return result;
}

unint64_t sub_230283FE4(uint64_t a1, uint64_t a2)
{
  v2 = sub_230310C08();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_230284030(uint64_t a1, uint64_t a2)
{
  v2 = sub_230310C08();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23028407C(uint64_t a1, uint64_t a2)
{
  v2 = sub_230310C08();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2302840C8()
{
  result = qword_280C9A578;
  if (!qword_280C9A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A578);
  }

  return result;
}

unint64_t sub_23028411C(uint64_t a1, uint64_t a2)
{
  v2 = sub_230310C08();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_230284168()
{
  result = qword_280C9A738;
  if (!qword_280C9A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A738);
  }

  return result;
}

unint64_t sub_2302841BC()
{
  result = qword_280C9A5A0;
  if (!qword_280C9A5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A5A0);
  }

  return result;
}

uint64_t sub_2302843E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v22 = MEMORY[0x277D84F90];
  sub_23009EC54(0, v1, 0);
  v2 = v22;
  v20 = a1 + 64;
  result = sub_230310658();
  v5 = result;
  v6 = 0;
  v21 = *(a1 + 36);
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v20 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    if (v21 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v9 = *(*(a1 + 56) + 8 * v5);
    result = swift_beginAccess();
    v10 = *(v9 + 120);
    v12 = *(v22 + 16);
    v11 = *(v22 + 24);
    if (v12 >= v11 >> 1)
    {
      result = sub_23009EC54((v11 > 1), v12 + 1, 1);
    }

    *(v22 + 16) = v12 + 1;
    *(v22 + 8 * v12 + 32) = v10;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_24;
    }

    v13 = *(v20 + 8 * v8);
    if ((v13 & (1 << v5)) == 0)
    {
      goto LABEL_25;
    }

    if (v21 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v14 = v13 & (-2 << (v5 & 0x3F));
    if (v14)
    {
      v7 = __clz(__rbit64(v14)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v15 = v8 << 6;
      v16 = v8 + 1;
      v17 = (a1 + 72 + 8 * v8);
      while (v16 < (v7 + 63) >> 6)
      {
        v19 = *v17++;
        v18 = v19;
        v15 += 64;
        ++v16;
        if (v19)
        {
          result = sub_2300EB170(v5, v21, 0);
          v7 = __clz(__rbit64(v18)) + v15;
          goto LABEL_4;
        }
      }

      result = sub_2300EB170(v5, v21, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v1)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_230284630()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB18CD0);
  v1 = __swift_project_value_buffer(v0, qword_27DB18CD0);
  if (qword_280C99DE8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB1730);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double RDIntentClusterModel.TuningSnapshot.kmeansTuningHistory.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;

  return result;
}

double RDIntentClusterModel.ModelSnapshot.kmeansMetrics.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;

  return result;
}

NSObject *static RDIntentClusterModel.modelByTraining(_:writeTo:k:embedding:randomGenerator:filename:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t isUniquelyReferenced_nonNull_native, unint64_t a7, unint64_t a8)
{
  v9 = v8;
  v145 = a8;
  v144 = a7;
  v150 = a5;
  v146 = a3;
  v14 = sub_23030E9B8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v142 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v143 = &v130 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v151 = &v130 - v21;
  MEMORY[0x28223BE20](v20);
  v147 = (&v130 - v22);
  v23 = sub_23010288C(a2);
  LOBYTE(v157) = 1;
  type metadata accessor for PointCloud();
  swift_allocObject();
  v24 = PointCloud.init(points:distanceCalculator:)(v23, &v157);
  swift_beginAccess();
  if (*(v24 + 40) < a4)
  {
    v25 = objc_opt_self();
    *&v157 = 0;
    *(&v157 + 1) = 0xE000000000000000;
    sub_230310848();
    MEMORY[0x231911790](0xD00000000000001FLL, 0x8000000230345AC0);
    v155 = *(v24 + 40);
    v26 = sub_230310E58();
    MEMORY[0x231911790](v26);

    MEMORY[0x231911790](0xD000000000000022, 0x8000000230345AE0);
    v27 = *(&v157 + 1);
    v28 = sub_23030F8B8();

    [v25 internalErrorWithDebugDescription_];

    swift_willThrow();
LABEL_3:

    return v27;
  }

  v140 = v14;
  if (qword_27DB13CC0 != -1)
  {
    goto LABEL_73;
  }

LABEL_5:
  v139 = v15;
  v29 = sub_23030EF48();
  v141 = __swift_project_value_buffer(v29, qword_27DB18CD0);
  v27 = sub_23030EF38();
  v30 = sub_2303102A8();
  if (os_log_type_enabled(v27, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134349056;
    *(v31 + 4) = a4;
    _os_log_impl(&dword_230044000, v27, v30, "running k-Mean with k = %{public}ld", v31, 0xCu);
    MEMORY[0x231914180](v31, -1, -1);
  }

  sub_2300819F0(isUniquelyReferenced_nonNull_native, &v157);
  v15 = type metadata accessor for KMeans();
  v32 = swift_allocObject();
  v33 = v32;
  v34 = MEMORY[0x277D84F90];
  *(v32 + 96) = MEMORY[0x277D84F90];
  *(v32 + 104) = v34;
  *(v32 + 112) = v34;
  *(v32 + 120) = 0;
  if (a4 < 1)
  {
    v38 = objc_opt_self();
    v155 = 0;
    v156 = 0xE000000000000000;

    sub_230310848();
    MEMORY[0x231911790](0xD00000000000003ALL, 0x800000023033FF20);
    v154 = a4;
    v39 = sub_230310E58();
    MEMORY[0x231911790](v39);

    v36 = sub_23030F8B8();

    v37 = [v38 invalidParameterErrorWithDescription_];
    goto LABEL_11;
  }

  if (*(v24 + 40) < a4)
  {
    v35 = objc_opt_self();

    v36 = sub_23030F8B8();
    v37 = [v35 invalidParameterErrorWithDescription_];
LABEL_11:
    v37;

    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(&v157);

    v27 = v33[13];

    swift_deallocPartialClassInstance();
    return v27;
  }

  v138 = v32 + 104;
  *(v32 + 16) = a4;
  *(v32 + 24) = *(v24 + 57);
  sub_2300819F0(&v157, v32 + 56);
  v33[4] = v24;
  v33[5] = 0x3F1A36E2EB1C432DLL;
  v33[6] = 100;
  swift_beginAccess();
  v41 = *(v24 + 32) * 0.0001;

  KMeans.trainCenters(_:_:convergeDistance:)(v42, 100, v41);
  __swift_destroy_boxed_opaque_existential_1(&v157);
  if (v9)
  {

    goto LABEL_3;
  }

  v43 = sub_23030EF38();
  v44 = sub_2303102A8();

  if (os_log_type_enabled(v43, v44))
  {
    isUniquelyReferenced_nonNull_native = swift_slowAlloc();
    *isUniquelyReferenced_nonNull_native = 134349056;
    swift_beginAccess();
    *(isUniquelyReferenced_nonNull_native + 4) = v33[15];
    _os_log_impl(&dword_230044000, v43, v44, "k-Mean mse: %{public}f", isUniquelyReferenced_nonNull_native, 0xCu);
    MEMORY[0x231914180](isUniquelyReferenced_nonNull_native, -1, -1);
  }

  v132 = 0;
  v131 = a1;
  v133 = v24;

  v136 = v33;
  v45 = *(v33[12] + 16);

  a4 = v151;
  v149 = v45;
  if (v45)
  {
    a1 = 0;
    v9 = v46 + 32;
    v153 = MEMORY[0x277D84F90];
    v47 = MEMORY[0x277D84F98];
    v148 = v46;
    while (1)
    {
      if (a1 >= *(v46 + 16))
      {
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        swift_once();
        goto LABEL_5;
      }

      v152 = v47;
      v15 = *v9;
      *&v157 = a1;

      *&v157 = sub_230310E58();
      *(&v157 + 1) = v48;

      MEMORY[0x231911790](58, 0xE100000000000000);

      v49 = v157;
      v50 = v150[3];
      v51 = v150[4];
      __swift_project_boxed_opaque_existential_1(v150, v50);
      v52 = *(v51 + 56);

      v54 = v52(v53, v50, v51);
      v56 = v55;

      if (v56)
      {
        v57 = v54;
      }

      else
      {
        v57 = 0;
      }

      if (!v56)
      {
        v56 = 0xE000000000000000;
      }

      v157 = v49;

      MEMORY[0x231911790](v57, v56);

      v24 = *(&v157 + 1);
      a4 = v157;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v153 = sub_23007E928(0, *(v153 + 2) + 1, 1, v153);
      }

      v59 = *(v153 + 2);
      v58 = *(v153 + 3);
      if (v59 >= v58 >> 1)
      {
        v153 = sub_23007E928((v58 > 1), v59 + 1, 1, v153);
      }

      v60 = v153;
      *(v153 + 2) = v59 + 1;
      v61 = &v60[16 * v59];
      *(v61 + 4) = a4;
      *(v61 + 5) = v24;
      v62 = v152;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v157 = v62;
      v64 = sub_23005EE00(a4, v24);
      v65 = v62[2];
      v66 = (v63 & 1) == 0;
      v67 = v65 + v66;
      if (__OFADD__(v65, v66))
      {
        goto LABEL_71;
      }

      v68 = v63;
      if (v62[3] >= v67)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v47 = v157;
          if (v63)
          {
            goto LABEL_19;
          }
        }

        else
        {
          sub_23008C44C();
          v47 = v157;
          if (v68)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        sub_230088EAC(v67, isUniquelyReferenced_nonNull_native);
        v69 = sub_23005EE00(a4, v24);
        if ((v68 & 1) != (v70 & 1))
        {
          goto LABEL_78;
        }

        v64 = v69;
        v47 = v157;
        if (v68)
        {
LABEL_19:
          *(v47[7] + 8 * v64) = v15;

          goto LABEL_20;
        }
      }

      v47[(v64 >> 6) + 8] |= 1 << v64;
      v71 = (v47[6] + 16 * v64);
      *v71 = a4;
      v71[1] = v24;
      *(v47[7] + 8 * v64) = v15;
      v72 = v47[2];
      v73 = __OFADD__(v72, 1);
      v74 = v72 + 1;
      if (v73)
      {
        goto LABEL_72;
      }

      v47[2] = v74;
LABEL_20:
      ++a1;
      v9 += 24;
      a4 = v151;
      v46 = v148;
      if (v149 == a1)
      {
        goto LABEL_43;
      }
    }
  }

  v47 = MEMORY[0x277D84F98];
  v153 = MEMORY[0x277D84F90];
LABEL_43:

  swift_beginAccess();
  v75 = v136[13];
  v76 = v136[14];
  v77 = *(v153 + 2);

  v149 = v75;

  v152 = v47;
  v148 = v77;
  if (v77)
  {
    v79 = 0;
    v138 = v76 + 32;
    v137 = v149 + 32;
    v80 = (v153 + 40);
    *&v78 = 136315650;
    v134 = v78;
    v135 = v76;
    while (v79 < *(v153 + 2))
    {
      v81 = *(v76 + 16);
      if (v79 == v81)
      {
        goto LABEL_54;
      }

      if (v79 >= v81)
      {
        goto LABEL_75;
      }

      v82 = *(v149 + 16);
      if (v79 == v82)
      {
        goto LABEL_54;
      }

      if (v79 >= v82)
      {
        goto LABEL_76;
      }

      v84 = *(v80 - 1);
      v83 = *v80;
      v85 = *(v138 + 8 * v79);
      v86 = *(v137 + 8 * v79);

      v87 = sub_23030EF38();
      v15 = sub_2303102A8();
      if (os_log_type_enabled(v87, v15))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *&v157 = v89;
        *v88 = v134;
        v90 = sub_23004E30C(v84, v83, &v157);

        *(v88 + 4) = v90;
        *(v88 + 12) = 2050;
        *(v88 + 14) = v85;
        *(v88 + 22) = 2050;
        *(v88 + 24) = v86;
        _os_log_impl(&dword_230044000, v87, v15, "Cluster %s has %{public}ld samples with variance %{public}f", v88, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v89);
        v91 = v89;
        a4 = v151;
        MEMORY[0x231914180](v91, -1, -1);
        v92 = v88;
        v76 = v135;
        MEMORY[0x231914180](v92, -1, -1);
      }

      else
      {
      }

      ++v79;
      v80 += 2;
      v47 = v152;
      if (v148 == v79)
      {
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_54:

  v144 = 0x8000000230345A90;

  v9 = v47;
  sub_23030E908();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18CE8, &unk_230334510);
  v93 = sub_230310B98();
  isUniquelyReferenced_nonNull_native = 0;
  v94 = v47 + 8;
  v95 = 1 << *(v9 + 32);
  v96 = -1;
  if (v95 < 64)
  {
    v96 = ~(-1 << v95);
  }

  a1 = v96 & *(v9 + 64);
  v97 = (v95 + 63) >> 6;
  v149 = v93;
  v148 = v93 + 64;
  if (!a1)
  {
LABEL_58:
    v99 = isUniquelyReferenced_nonNull_native;
    v24 = v136;
    while (1)
    {
      isUniquelyReferenced_nonNull_native = v99 + 1;
      if (__OFADD__(v99, 1))
      {
        __break(1u);
        goto LABEL_70;
      }

      if (isUniquelyReferenced_nonNull_native >= v97)
      {
        break;
      }

      v100 = v94[isUniquelyReferenced_nonNull_native];
      ++v99;
      if (v100)
      {
        v98 = __clz(__rbit64(v100));
        a1 = (v100 - 1) & v100;
        goto LABEL_63;
      }
    }

    sub_230286F60();
    v110 = v150;
    v111 = v150[3];
    v112 = v150[4];
    __swift_project_boxed_opaque_existential_1(v150, v111);
    v113 = (*(v112 + 8))(v111, v112);
    v114 = v110[3];
    v115 = v110[4];
    __swift_project_boxed_opaque_existential_1(v110, v114);
    (*(v115 + 16))(v114, v115);
    v27 = v147;
    v116 = v132;
    sub_2303101E8();
    if (v116)
    {
      (*(v139 + 8))(v27, v140);
    }

    else
    {

      v117 = v139;
      v118 = *(v139 + 16);
      v119 = v110;
      v120 = v140;
      v118(a4, v146, v140);
      sub_2300819F0(v119, &v157);
      v121 = a4;
      v122 = v143;
      sub_23030E908();
      v123 = v142;
      v118(v142, v122, v120);
      v124 = sub_230286BC0(v123);
      v125 = *(v117 + 8);
      v125(v121, v120);
      v125(v122, v120);
      v27 = swift_allocObject();
      v27[2].isa = v124;
      sub_23011F5E8(&v157, &v27[3]);
      v125(v147, v120);

      v126 = v136[13];
      v127 = v136[14];
      v128 = v136[15];

      v129 = v131;
      *v131 = v153;
      v129[1] = v126;
      v129[2] = v127;
      v129[3] = v128;
    }

    return v27;
  }

  while (1)
  {
    v98 = __clz(__rbit64(a1));
    a1 &= a1 - 1;
LABEL_63:
    v101 = v98 | (isUniquelyReferenced_nonNull_native << 6);
    v9 = 16 * v101;
    v102 = (v152[6] + 16 * v101);
    v15 = *v102;
    v103 = v102[1];
    v104 = *(v152[7] + 8 * v101);
    swift_beginAccess();
    v105 = *(v104 + 16);
    *(v148 + ((v101 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v101;
    v106 = v149;
    v107 = (*(v149 + 48) + 16 * v101);
    *v107 = v15;
    v107[1] = v103;
    *(*(v106 + 56) + 8 * v101) = v105;
    v108 = *(v106 + 16);
    v73 = __OFADD__(v108, 1);
    v109 = v108 + 1;
    if (v73)
    {
      break;
    }

    *(v106 + 16) = v109;

    a4 = v151;
    if (!a1)
    {
      goto LABEL_58;
    }
  }

LABEL_77:
  __break(1u);
LABEL_78:
  result = sub_2303112A8();
  __break(1u);
  return result;
}

uint64_t RDIntentClusterModel.__allocating_init(url:embedding:)(uint64_t a1, __int128 *a2)
{
  v4 = v2;
  v7 = sub_23030E9B8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v19 - v12;
  sub_23030E908();
  sub_230286F60();
  (*(v8 + 16))(v11, v13, v7);
  v14 = sub_230286BC0(v11);
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(a2);
    v15 = *(v8 + 8);
    v15(a1, v7);
    v15(v13, v7);
  }

  else
  {
    v16 = v14;
    v17 = *(v8 + 8);
    v17(a1, v7);
    v17(v13, v7);
    v4 = swift_allocObject();
    *(v4 + 16) = v16;
    sub_23011F5E8(a2, v4 + 24);
  }

  return v4;
}

void *static RDIntentClusterModel.modelByTuning(_:writeTo:minK:maxK:maxIter:embedding:randomGenerator:filename:)(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, void (*a6)(char *, uint64_t), void *a7, uint64_t a8, unint64_t a9, unint64_t a10)
{
  v182 = a7;
  v171 = a3;
  v162 = a1;
  v15 = sub_23030E9B8();
  v170 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v164 = &v158 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v165 = &v158 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v172 = &v158 - v21;
  MEMORY[0x28223BE20](v20);
  v173 = &v158 - v22;
  v176 = sub_23030EB58();
  v23 = *(v176 - 8);
  v24 = MEMORY[0x28223BE20](v176);
  v26 = &v158 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v175 = &v158 - v27;
  sub_23030EB48();
  LOBYTE(v185) = 1;
  type metadata accessor for PointCloud();
  swift_allocObject();

  isUniquelyReferenced_nonNull_native = PointCloud.init(points:distanceCalculator:)(v28, &v185);
  swift_beginAccess();
  v30 = *(isUniquelyReferenced_nonNull_native + 40);
  if (__OFADD__(v30, 1))
  {
    goto LABEL_94;
  }

  v169 = v15;
  if (v30 >= a4)
  {
    v31 = a4;
  }

  else
  {
    v31 = v30;
  }

  if (v30 + 1 >= a5)
  {
    v32 = a5;
  }

  else
  {
    v32 = v30 + 1;
  }

  sub_2300819F0(a8, &v185);
  type metadata accessor for KMeansAutoTuner();
  swift_allocObject();

  v34 = v184;
  v36 = KMeansAutoTuner.init(pointCloud:mathod:minK:maxK:maxIter:randomGenerator:)(v33, v35, v31, v32, a6, &v185);
  if (v34)
  {
    (*(v23 + 8))(v175, v176);

    return a4;
  }

  v15 = a4;
  v174 = v36;
  v166 = 0;
  sub_23030EB48();
  sub_23030EA88();
  v10 = v37;
  a6 = *(v23 + 8);
  v160 = v23 + 8;
  a6(v26, v176);
  if (qword_27DB13CC0 != -1)
  {
    goto LABEL_95;
  }

LABEL_11:
  v38 = sub_23030EF48();
  v179 = __swift_project_value_buffer(v38, qword_27DB18CD0);
  v39 = sub_23030EF38();
  v40 = sub_2303102A8();
  v41 = v15;
  if (os_log_type_enabled(v39, v40))
  {
    v15 = swift_slowAlloc();
    *v15 = 134349056;
    *(v15 + 4) = v10;
    _os_log_impl(&dword_230044000, v39, v40, "Intent Cluster Model auto tuned in %{public}f seconds", v15, 0xCu);
    MEMORY[0x231914180](v15, -1, -1);
  }

  v42 = v174;

  v43 = sub_23030EF38();
  v44 = sub_2303102A8();
  v45 = os_log_type_enabled(v43, v44);
  v159 = a6;
  if (v45)
  {
    v15 = swift_slowAlloc();
    *v15 = 134349568;
    *(v15 + 4) = v41;
    *(v15 + 12) = 2050;
    *(v15 + 14) = a5;
    *(v15 + 22) = 2050;
    *(v15 + 24) = v42[2];

    _os_log_impl(&dword_230044000, v43, v44, "auto tuned k-Mean with k in [%{public}ld, %{public}ld), found best k = %{public}ld", v15, 0x20u);
    MEMORY[0x231914180](v15, -1, -1);
  }

  else
  {
  }

  v46 = sub_23030EF38();
  v47 = sub_2303102A8();

  v48 = os_log_type_enabled(v46, v47);
  v161 = isUniquelyReferenced_nonNull_native;
  if (v48)
  {
    v49 = swift_slowAlloc();
    a5 = swift_slowAlloc();
    *&v185 = a5;
    *v49 = 136446210;
    v50 = v166;
    sub_2302843E4(v174[3]);
    v166 = v50;
    v51 = MEMORY[0x231911A60]();
    v53 = v52;

    v15 = sub_23004E30C(v51, v53, &v185);

    *(v49 + 4) = v15;
    _os_log_impl(&dword_230044000, v46, v47, "Mean Squared Error History: %{public}s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(a5);
    v42 = v174;
    MEMORY[0x231914180](a5, -1, -1);
    MEMORY[0x231914180](v49, -1, -1);
  }

  v54 = v42[3];
  if (!*(v54 + 16))
  {
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v55 = sub_23008E270(v42[2]);
  if ((v56 & 1) == 0)
  {
    goto LABEL_97;
  }

  v57 = *(*(v54 + 56) + 8 * v55);
  v58 = *(v57 + 96);
  v59 = *(v58 + 16);
  v163 = v57;

  i = v59;
  if (v59)
  {
    a6 = 0;
    v60 = (v58 + 32);
    v61 = MEMORY[0x277D84F90];
    isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F98];
    v180 = v58;
    while (1)
    {
      if (a6 >= *(v58 + 16))
      {
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        swift_once();
        goto LABEL_11;
      }

      v183 = v60;
      v184 = isUniquelyReferenced_nonNull_native;
      v62 = *v60;
      *&v185 = a6;

      *&v185 = sub_230310E58();
      *(&v185 + 1) = v63;

      MEMORY[0x231911790](58, 0xE100000000000000);

      v64 = v185;
      v65 = v182[3];
      v66 = v182[4];
      __swift_project_boxed_opaque_existential_1(v182, v65);
      v67 = v61;
      v68 = *(v66 + 56);

      v70 = v68(v69, v65, v66);
      v71 = v67;
      v72 = v70;
      v74 = v73;

      if (v74)
      {
        v75 = v72;
      }

      else
      {
        v75 = 0;
      }

      if (!v74)
      {
        v74 = 0xE000000000000000;
      }

      v185 = v64;

      MEMORY[0x231911790](v75, v74);

      v76 = v185;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = sub_23007E928(0, *(v67 + 16) + 1, 1, v67);
      }

      v15 = *(v71 + 2);
      v77 = *(v71 + 3);
      if (v15 >= v77 >> 1)
      {
        v71 = sub_23007E928((v77 > 1), v15 + 1, 1, v71);
      }

      *(v71 + 2) = v15 + 1;
      a5 = v71;
      *&v71[16 * v15 + 32] = v76;
      v78 = v184;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v185 = v78;
      v80 = sub_23005EE00(v76, *(&v76 + 1));
      v81 = v78[2];
      v82 = (v79 & 1) == 0;
      v83 = v81 + v82;
      if (__OFADD__(v81, v82))
      {
        goto LABEL_88;
      }

      v15 = v79;
      if (v78[3] >= v83)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          isUniquelyReferenced_nonNull_native = v185;
          if (v79)
          {
            goto LABEL_22;
          }
        }

        else
        {
          sub_23008C44C();
          isUniquelyReferenced_nonNull_native = v185;
          if (v15)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        sub_230088EAC(v83, isUniquelyReferenced_nonNull_native);
        v84 = sub_23005EE00(v76, *(&v76 + 1));
        if ((v15 & 1) != (v85 & 1))
        {
          goto LABEL_100;
        }

        v80 = v84;
        isUniquelyReferenced_nonNull_native = v185;
        if (v15)
        {
LABEL_22:
          *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v80) = v62;

          goto LABEL_23;
        }
      }

      *(isUniquelyReferenced_nonNull_native + 8 * (v80 >> 6) + 64) |= 1 << v80;
      *(*(isUniquelyReferenced_nonNull_native + 48) + 16 * v80) = v76;
      *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v80) = v62;
      v86 = *(isUniquelyReferenced_nonNull_native + 16);
      v87 = __OFADD__(v86, 1);
      v88 = v86 + 1;
      if (v87)
      {
        goto LABEL_89;
      }

      *(isUniquelyReferenced_nonNull_native + 16) = v88;
LABEL_23:
      a6 = (a6 + 1);
      v60 = v183 + 3;
      v58 = v180;
      v61 = a5;
      if (i == a6)
      {
        goto LABEL_46;
      }
    }
  }

  isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F98];
  v61 = MEMORY[0x277D84F90];
LABEL_46:

  v89 = v163;
  swift_beginAccess();
  v90 = *(v89 + 104);
  v91 = *(v89 + 112);
  v92 = *(v61 + 16);

  v183 = v61;
  v184 = isUniquelyReferenced_nonNull_native;
  i = v92;
  if (v92)
  {
    a5 = 0;
    v178 = v91 + 32;
    v177 = v90 + 32;
    a6 = (v61 + 40);
    *&v93 = 136315650;
    v167 = v93;
    v168 = v91;
    v180 = v90;
    while (a5 < *(v61 + 16))
    {
      v94 = *(v91 + 16);
      if (a5 == v94)
      {
        goto LABEL_57;
      }

      if (a5 >= v94)
      {
        goto LABEL_91;
      }

      v95 = *(v90 + 16);
      if (a5 == v95)
      {
        goto LABEL_57;
      }

      if (a5 >= v95)
      {
        goto LABEL_92;
      }

      v96 = *(a6 - 1);
      v15 = *a6;
      v97 = *(v178 + 8 * a5);
      v10 = *(v177 + 8 * a5);

      v98 = sub_23030EF38();
      v99 = sub_2303102A8();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *&v185 = v101;
        *v100 = v167;
        v102 = sub_23004E30C(v96, v15, &v185);

        *(v100 + 4) = v102;
        *(v100 + 12) = 2050;
        *(v100 + 14) = v97;
        *(v100 + 22) = 2050;
        *(v100 + 24) = v10;
        _os_log_impl(&dword_230044000, v98, v99, "Cluster %s has %{public}ld samples with variance %{public}f", v100, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v101);
        v103 = v101;
        isUniquelyReferenced_nonNull_native = v184;
        MEMORY[0x231914180](v103, -1, -1);
        v104 = v100;
        v91 = v168;
        MEMORY[0x231914180](v104, -1, -1);
      }

      else
      {
      }

      v61 = v183;
      ++a5;
      a6 = (a6 + 16);
      v90 = v180;
      if (i == a5)
      {
        goto LABEL_57;
      }
    }

    goto LABEL_90;
  }

LABEL_57:

  v179 = 0x8000000230345A90;

  sub_23030E908();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18CE8, &unk_230334510);
  v105 = sub_230310B98();
  v15 = 0;
  a6 = (isUniquelyReferenced_nonNull_native + 64);
  v106 = 1 << *(isUniquelyReferenced_nonNull_native + 32);
  v107 = -1;
  if (v106 < 64)
  {
    v107 = ~(-1 << v106);
  }

  v108 = v107 & *(isUniquelyReferenced_nonNull_native + 64);
  v109 = (v106 + 63) >> 6;
  v180 = v105 + 64;
  for (i = v105; v108; isUniquelyReferenced_nonNull_native = v184)
  {
    v110 = __clz(__rbit64(v108));
    v108 &= v108 - 1;
LABEL_66:
    v114 = v110 | (v15 << 6);
    a5 = 16 * v114;
    v115 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v114);
    v117 = *v115;
    v116 = v115[1];
    isUniquelyReferenced_nonNull_native = *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v114);
    swift_beginAccess();
    v118 = *(isUniquelyReferenced_nonNull_native + 16);
    *(v180 + ((v114 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v114;
    v119 = i;
    v120 = (*(i + 48) + 16 * v114);
    *v120 = v117;
    v120[1] = v116;
    *(*(v119 + 56) + 8 * v114) = v118;
    v121 = *(v119 + 16);
    v87 = __OFADD__(v121, 1);
    v122 = v121 + 1;
    if (v87)
    {
      goto LABEL_93;
    }

    *(v119 + 16) = v122;
  }

  v111 = v15;
  v112 = v172;
  a4 = v182;
  while (1)
  {
    v15 = v111 + 1;
    if (__OFADD__(v111, 1))
    {
      __break(1u);
      goto LABEL_87;
    }

    if (v15 >= v109)
    {
      break;
    }

    v113 = *(a6 + v15);
    ++v111;
    if (v113)
    {
      v110 = __clz(__rbit64(v113));
      v108 = (v113 - 1) & v113;
      goto LABEL_66;
    }
  }

  sub_230286F60();
  v123 = a4[3];
  v124 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v123);
  v125 = (*(v124 + 8))(v123, v124);
  v126 = a4[3];
  v127 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v126);
  (*(v127 + 16))(v126, v127);
  v128 = v173;
  v129 = v166;
  sub_2303101E8();
  if (v129)
  {

    (*(v170 + 8))(v128, v169);
    (v159)(v175, v176);

    return a4;
  }

  v131 = v170;
  v132 = a4;
  v133 = *(v170 + 16);
  v134 = v169;
  v133(v112, v171, v169);
  sub_2300819F0(v132, &v185);
  v135 = v165;
  sub_23030E908();
  v136 = v164;
  v133(v164, v135, v134);
  v137 = sub_230286BC0(v136);
  v166 = 0;
  v138 = v137;
  v139 = *(v131 + 8);
  v139(v112, v134);
  v170 = v131 + 8;
  v139(v135, v134);
  a4 = swift_allocObject();
  a4[2] = v138;
  sub_23011F5E8(&v185, (a4 + 3));
  v140 = v174[4];
  v141 = v174[5];
  if (v141 < v140)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v142 = v174[2];
  v184 = v139;
  v182 = v142;
  if (v140 == v141)
  {
    v143 = MEMORY[0x277D84F90];
LABEL_75:

    v184(v173, v169);
    (v159)(v175, v176);

    v144 = v162;
    v146 = v182;
    v145 = v183;
    *v162 = v182;
    v144[1] = v145;
    v144[2] = v140;
    v144[3] = v141;
    v144[4] = v146;
    v144[5] = v143;
    return a4;
  }

  if (v140 < v141)
  {
    v143 = MEMORY[0x277D84F90];
    v147 = v140;
    do
    {
      v149 = v174[3];
      if (*(v149 + 16))
      {
        v150 = sub_23008E270(v147);
        if (v151)
        {
          v152 = *(*(v149 + 56) + 8 * v150);
          swift_beginAccess();
          v153 = v152[13];
          v154 = v152[14];
          v155 = v152[15];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v143 = sub_23007ED70(0, *(v143 + 2) + 1, 1, v143);
          }

          v157 = *(v143 + 2);
          v156 = *(v143 + 3);
          if (v157 >= v156 >> 1)
          {
            v143 = sub_23007ED70((v156 > 1), v157 + 1, 1, v143);
          }

          *(v143 + 2) = v157 + 1;
          v148 = &v143[24 * v157];
          *(v148 + 4) = v153;
          *(v148 + 5) = v154;
          *(v148 + 6) = v155;
        }
      }

      ++v147;
    }

    while (v141 != v147);
    goto LABEL_75;
  }

LABEL_99:
  __break(1u);
LABEL_100:
  result = sub_2303112A8();
  __break(1u);
  return result;
}

id sub_230286BC0(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23030E8D8();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() embeddingWithContentsOfURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_23030E9B8();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_23030E808();

    swift_willThrow();
    v9 = sub_23030E9B8();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t RDIntentClusterModel.predict(for:)(uint64_t a1)
{
  swift_beginAccess();

  v1 = sub_230310218();

  if (qword_27DB13CC0 != -1)
  {
    swift_once();
  }

  v2 = sub_23030EF48();
  __swift_project_value_buffer(v2, qword_27DB18CD0);

  v3 = sub_23030EF38();
  v4 = sub_2303102A8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15508, &unk_23031A4F0);
    v8 = MEMORY[0x231911A60](v1, v7);
    v10 = sub_23004E30C(v8, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_230044000, v3, v4, "RDIntentClusterModel closest intent %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x231914180](v6, -1, -1);
    MEMORY[0x231914180](v5, -1, -1);
  }

  if (*(v1 + 16))
  {
    v11 = *(v1 + 32);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t RDIntentClusterModel.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_230286F60()
{
  result = qword_27DB18CF0[0];
  if (!qword_27DB18CF0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27DB18CF0);
  }

  return result;
}

uint64_t destroy for RDIntentClusterModel.TuningSnapshot()
{
}

uint64_t initializeWithCopy for RDIntentClusterModel.TuningSnapshot(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  return a1;
}

void *assignWithCopy for RDIntentClusterModel.TuningSnapshot(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];

  return a1;
}

uint64_t assignWithTake for RDIntentClusterModel.TuningSnapshot(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  return a1;
}

void *initializeWithCopy for RDIntentClusterModel.ModelSnapshot(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for RDIntentClusterModel.ModelSnapshot(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];
  return a1;
}

uint64_t assignWithTake for RDIntentClusterModel.ModelSnapshot(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t Series.__allocating_init(_:defaultValue:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_allocObject();
  v6 = sub_230288DA8(a1, a2);
  (*(*(*(v3 + 80) - 8) + 8))(a2);
  return v6;
}

uint64_t sub_230287310(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_230287360(a1, a2);
  return v4;
}

char *sub_230287360(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v4 = *(*v2 + 80);
  v5 = sub_2303104C8();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = sub_2303104C8();
  v9 = *(v27 - 8);
  v10 = MEMORY[0x28223BE20](v27);
  v26 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = (&v23 - v12);
  v31 = a1;
  v14 = sub_23030FDE8();
  swift_getWitnessTable();
  sub_230310028();
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14A80, &qword_230317320);
  sub_2302893EC();
  v15 = sub_23030FE18();
  sub_23015A028(v15, &v29);
  v25 = v2;
  *(v2 + 1) = v29;
  *&v30 = sub_23030F5F8();
  *&v29 = a1;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x231911900](&v31, v14, WitnessTable);

  v28 = v31;
  sub_230310B58();
  sub_230310B28();
  sub_230310B48();
  while (1)
  {
    v17 = v26;
    sub_230310B38();
    (*(v9 + 32))(v13, v17, v27);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v13, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v18 = *v13;
    v19 = *(v4 - 8);
    (*(v19 + 32))(v7, v13 + *(TupleTypeMetadata2 + 48), v4);
    (*(v19 + 56))(v7, 0, 1, v4);
    v31 = v18;
    sub_23030F6F8();
    sub_23030F738();
  }

  v20 = v24;
  v21 = v25;
  *(v25 + 4) = v30;
  (*(*(v4 - 8) + 32))(&v21[*(*v21 + 104)], v20, v4);
  return v21;
}

uint64_t sub_230287780(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_2302877D8(a1, a2, a3);
  return v6;
}

char *sub_2302877D8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v26 = a3;
  v29 = a1;
  v6 = *(*v3 + 80);
  v7 = sub_2303104C8();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = sub_2303104C8();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v26 - v12;
  v15 = *a2;
  v14 = a2[1];
  *(v3 + 2) = v15;
  *(v3 + 3) = v14;
  v27 = v3;

  v39 = sub_23030F5F8();
  v35 = v15;
  v36 = v14;
  *&v33 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18DF8, &qword_2303346D0);
  v17 = sub_23030FDE8();
  v18 = sub_230289388();
  WitnessTable = swift_getWitnessTable();
  sub_230311288();

  v33 = v30;
  v34 = v31;
  v35 = v16;
  v28 = v17;
  v29 = v16;
  v36 = v17;
  v37 = v18;
  v20 = WitnessTable;
  v38 = WitnessTable;
  sub_2303108A8();
  sub_230310878();
  while (1)
  {
    *&v30 = v29;
    *(&v30 + 1) = v28;
    v31 = v18;
    v32 = v20;
    sub_230310898();
    sub_230310888();
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v13, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v21 = *v13;
    v22 = *(v6 - 8);
    (*(v22 + 32))(v9, &v13[*(TupleTypeMetadata2 + 48)], v6);
    (*(v22 + 56))(v9, 0, 1, v6);
    *&v30 = v21;
    sub_23030F6F8();
    sub_23030F738();
  }

  v23 = v26;
  v24 = v27;
  *(v27 + 4) = v39;
  (*(*(v6 - 8) + 32))(&v24[*(*v24 + 104)], v23, v6);
  return v24;
}

uint64_t sub_230287B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 80);
  v8 = sub_2303104C8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v20 - v11;
  if (*(*(v2 + 3) + 16))
  {
    v13 = v10;
    sub_23008E270(a1);
    if (v14)
    {
      v20[1] = a1;
      sub_23030F728();
      v15 = *(v7 - 8);
      v16 = *(v15 + 48);
      if (v16(v12, 1, v7) != 1)
      {
        return (*(v15 + 32))(a2, v12, v7);
      }

      (*(v15 + 16))(a2, &v3[*(*v3 + 104)], v7);
      result = (v16)(v12, 1, v7);
      if (result != 1)
      {
        return (*(v9 + 8))(v12, v13);
      }

      return result;
    }

    v6 = *v2;
  }

  v18 = *(*(v7 - 8) + 16);
  v19 = &v2[*(v6 + 104)];

  return v18(a2, v19, v7);
}

uint64_t *sub_230287DF8()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  return v0;
}

uint64_t sub_230287E90()
{
  sub_230287DF8();

  return swift_deallocClassInstance();
}

double Series.index.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;

  return result;
}

uint64_t sub_230287F24(uint64_t a1, __int128 *a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  v5 = *a2;
  *(result + 32) = *a2;
  *(result + 24) = *(*(a1 + 16) + 16) == *(v5 + 16);
  return result;
}

uint64_t sub_230287F88(uint64_t a1, uint64_t a2)
{
  sub_23015A028(a2, &v5);
  result = swift_allocObject();
  *(result + 16) = a1;
  v4 = v5;
  *(result + 32) = v5;
  *(result + 24) = *(*(a1 + 16) + 16) == *(v4 + 16);
  return result;
}

uint64_t Series.init(_:defaultValue:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_230288DA8(a1, a2);
  (*(*(*(v4 + 80) - 8) + 8))(a2);
  return v5;
}

uint64_t Series.__allocating_init(_:index:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2302890B8(a1, a2, a3, a4);
  (*(*(*(v4 + 80) - 8) + 8))(a3);
  return v6;
}

uint64_t Series.init(_:index:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = sub_230288F6C(a1, a2, a3);
  (*(*(*(v5 + 80) - 8) + 8))(a3);
  return v6;
}

uint64_t Series.__allocating_init(_:index:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23015A028(a2, &v10);
  v9 = v10;
  v7 = sub_2302890B8(a1, &v9, a3, v6);
  (*(*(*(v3 + 80) - 8) + 8))(a3);
  return v7;
}

uint64_t sub_2302881D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 24) == 1)
  {
    return sub_230287B78(a1, a2);
  }

  v3 = *v2;
  if (*(v2[5] + 16))
  {
    v4 = a1;
    v5 = a2;
    sub_23008E270(a1);
    a2 = v5;
    if (v6)
    {
      a1 = v4;
      return sub_230287B78(a1, a2);
    }
  }

  v8 = *(*(*(v3 + 80) - 8) + 16);
  v9 = v2[2] + *(*v2[2] + 104);

  return v8(a2, v9);
}

uint64_t *sub_2302882DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = (a1 + 32);
    v8 = MEMORY[0x277D84F90];
    do
    {
      v12 = *v7++;
      v11 = v12;
      if (*(v4[5] + 16))
      {
        sub_23008E270(v11);
        if (v13)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_23009EC04(0, *(v8 + 16) + 1, 1);
          }

          v10 = *(v8 + 16);
          v9 = *(v8 + 24);
          if (v10 >= v9 >> 1)
          {
            sub_23009EC04((v9 > 1), v10 + 1, 1);
          }

          *(v8 + 16) = v10 + 1;
          *(v8 + 8 * v10 + 32) = v11;
        }
      }

      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (*(v4 + 24) == 1)
  {
    v14 = v4[2] + 16;
  }

  else
  {
    v14 = (v4 + 4);
  }

  if (*(v8 + 16) == *(*v14 + 16))
  {

    return v4;
  }

  else
  {
    type metadata accessor for Series(0, *(v5 + 80), a3, a4);

    return sub_230287F88(v16, v8);
  }
}

void sub_230288464(void *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = *(*a1 + 16);
  v6 = v1[4];
  v7 = *(v6 + 16);
  v24 = *v1;
  if (v5 >= v7)
  {
    if (v7)
    {
      v14 = (v6 + 32);

      v9 = MEMORY[0x277D84F90];
      do
      {
        v18 = *v14++;
        v17 = v18;
        if (*(v3 + 16))
        {
          sub_23008E270(v17);
          if (v19)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_23009EC04(0, *(v9 + 16) + 1, 1);
            }

            v16 = *(v9 + 16);
            v15 = *(v9 + 24);
            if (v16 >= v15 >> 1)
            {
              sub_23009EC04((v15 > 1), v16 + 1, 1);
            }

            *(v9 + 16) = v16 + 1;
            *(v9 + 8 * v16 + 32) = v17;
          }
        }

        --v7;
      }

      while (v7);
    }

    else
    {

      v9 = MEMORY[0x277D84F90];
    }

    goto LABEL_26;
  }

  if (!v5)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_26:

    v22 = (v1 + 4);
    if (*(v2 + 24) == 1)
    {
      v22 = v2[2] + 16;
    }

    if (*(v9 + 16) == *(*v22 + 16))
    {
    }

    else
    {
      type metadata accessor for Series(0, *(v24 + 80), v20, v21);

      sub_230287F88(v23, v9);
    }

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (v8 < *(v4 + 16))
  {
    if (*(v2[5] + 16))
    {
      v12 = *(v4 + 32 + 8 * v8);
      sub_23008E270(v12);
      if (v13)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23009EC04(0, *(v9 + 16) + 1, 1);
        }

        v11 = *(v9 + 16);
        v10 = *(v9 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_23009EC04((v10 > 1), v11 + 1, 1);
        }

        *(v9 + 16) = v11 + 1;
        *(v9 + 8 * v11 + 32) = v12;
        v2 = v1;
      }
    }

    if (v5 == ++v8)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
}

uint64_t *sub_230288728(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = result;
  v8 = *v4;
  if (*(v4 + 24) != 1)
  {
    v12 = (a2 - result);
    if (!__OFSUB__(a2, result))
    {
      v13 = v5[4];
      v14 = *(v13 + 16);
      if (v14 >= v12)
      {
        v31 = v8;
        if (v14)
        {
          v20 = (v13 + 32);

          v21 = MEMORY[0x277D84F90];
          do
          {
            v25 = *v20++;
            v24 = v25;
            if (v25 >= v7 && v24 < a2)
            {
              v32[0] = v21;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_23009EC04(0, *(v21 + 16) + 1, 1);
                v21 = v32[0];
              }

              v23 = *(v21 + 16);
              v22 = *(v21 + 24);
              if (v23 >= v22 >> 1)
              {
                sub_23009EC04((v22 > 1), v23 + 1, 1);
                v21 = v32[0];
              }

              *(v21 + 16) = v23 + 1;
              *(v21 + 8 * v23 + 32) = v24;
            }

            --v14;
          }

          while (v14);
        }

        else
        {

          v21 = MEMORY[0x277D84F90];
        }

        type metadata accessor for Series(0, *(v31 + 80), v29, v30);

        v28 = v21;
        return sub_230287F88(v27, v28);
      }

      v15 = sub_23009D8EC(a2 - result, 0);
      result = sub_2301502A8(v32, (v15 + 4), a2 - v7, v7, a2);
      if (result == v12)
      {
        v19 = sub_2302882DC(v15, v16, v17, v18);

        return v19;
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    return result;
  }

  if (*(*(v4[2] + 16) + 16) > a2)
  {
    v9 = (a2 - result);
    if (!__OFSUB__(a2, result))
    {
      if (!v9)
      {
        v11 = MEMORY[0x277D84F90];
        goto LABEL_28;
      }

      v10 = *v4;
      v11 = sub_23009D8EC(a2 - result, 0);
      result = sub_2301502A8(v32, (v11 + 4), a2 - v7, v7, a2);
      if (result == v9)
      {
        v8 = v10;
LABEL_28:
        type metadata accessor for Series(0, *(v8 + 80), a3, a4);

        v28 = v11;
        return sub_230287F88(v27, v28);
      }

      goto LABEL_35;
    }

    goto LABEL_33;
  }
}

uint64_t sub_2302889D8(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = &v11 - v2;
  v4 = sub_23030F608();
  v12 = v4;
  v5 = *(v1 + 32);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);

    do
    {
      v8 = *v7++;
      sub_230287B78(v8, v3);
      sub_23030FDE8();
      sub_23030FD98();
      --v6;
    }

    while (v6);
    v9 = v12;
  }

  else
  {
    v9 = v4;
  }

  return v9;
}

uint64_t sub_230288AF8(uint64_t a1)
{
  sub_2302889D8(a1);
  sub_23030FDE8();
  swift_getWitnessTable();
  sub_230310A38();
  swift_getWitnessTable();
  return sub_230310798();
}

uint64_t sub_230288BAC()
{
  if (*(v0 + 24) == 1)
  {
    v1 = *(v0 + 16) + 16;
  }

  else
  {
    v1 = v0 + 32;
  }

  return *(*v1 + 16);
}

uint64_t Series.deinit()
{

  return v0;
}

uint64_t Series.__deallocating_deinit()
{
  Series.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_230288C40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_230288AF8(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_230288C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Series(0, *(a1 + 80), a3, a4);
  v7 = sub_230244CD0(v4, v6, a2);

  return v7;
}

void sub_230288CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Series(0, *(a4 + 80), a3, a4);

  JUMPOUT(0x231911910);
}

uint64_t sub_230288DA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*v3 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v16 - v8;
  type metadata accessor for SeriesMaterial(0, v6, v10, v11);
  (*(v7 + 16))(v9, a2, v6);
  v12 = swift_allocObject();

  sub_230287360(v13, v9);
  *(v3 + 16) = v12;
  v17 = a1;
  sub_23030FDE8();
  swift_getWitnessTable();
  sub_230310028();

  v16 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14A80, &qword_230317320);
  sub_2302893EC();
  v14 = sub_23030FE18();
  sub_23015A028(v14, &v18);
  *(v3 + 32) = v18;
  *(v3 + 24) = 1;
  return v3;
}

uint64_t sub_230288F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(*v4 + 80);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v18 - v9;
  v12 = *v11;
  v13 = v11[1];
  type metadata accessor for SeriesMaterial(0, v7, v14, v15);
  v18[0] = v12;
  v18[1] = v13;
  (*(v8 + 16))(v10, a3, v7);
  v16 = swift_allocObject();

  sub_2302877D8(a1, v18, v10);
  *(v4 + 16) = v16;
  *(v4 + 32) = v12;
  *(v4 + 40) = v13;
  *(v4 + 24) = 1;
  return v4;
}

uint64_t sub_2302890B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Series(0, *(v4 + 80), a3, a4);
  swift_allocObject();
  return sub_230288F6C(a1, a2, a3);
}

uint64_t sub_23028912C(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t dispatch thunk of Series.iloc(index:)()
{
  return (*(*v0 + 144))();
}

{
  return (*(*v0 + 152))();
}

{
  return (*(*v0 + 160))();
}

unint64_t sub_230289388()
{
  result = qword_27DB18E00;
  if (!qword_27DB18E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB18DF8, &qword_2303346D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18E00);
  }

  return result;
}

unint64_t sub_2302893EC()
{
  result = qword_280C96ED0;
  if (!qword_280C96ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14A80, &qword_230317320);
    sub_23006D62C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C96ED0);
  }

  return result;
}

uint64_t sub_230289478()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB18E08);
  v1 = __swift_project_value_buffer(v0, qword_27DB18E08);
  if (qword_280C9C490 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB17C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void REMAlarmProximity.description.getter(unint64_t a1)
{
  if (a1 > 2)
  {
    if (qword_27DB13CC8 != -1)
    {
      swift_once();
    }

    v1 = sub_23030EF48();
    __swift_project_value_buffer(v1, qword_27DB18E08);
    v2 = MEMORY[0x277D84F90];
    v3 = sub_23008C5BC(MEMORY[0x277D84F90]);
    v4 = sub_23008C5BC(v2);
    sub_230166680("unknown proximity", 17, 2, v3, v4);
    __break(1u);
  }
}

uint64_t RDVector.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = *(a1 + 16);
  *(result + 16) = a1;
  *(result + 24) = v3;
  return result;
}

uint64_t Array<A>.average()(unint64_t a1)
{
  v2 = Array<A>.sum()(a1);
  if (!v2)
  {
    return 0;
  }

  if (a1 >> 62)
  {
    v7 = v2;
    v3 = sub_2303106D8();
    v2 = v7;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  / infix(_:_:)(v2, v3);
  v5 = v4;

  return v5;
}

uint64_t - infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5 < 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v5)
  {
    swift_beginAccess();
    result = swift_beginAccess();
    v6 = MEMORY[0x277D84F90];
    v7 = 4;
    while (1)
    {
      v8 = *(a1 + 16);
      if ((v7 - 4) >= *(v8 + 16))
      {
        break;
      }

      v9 = *(a2 + 16);
      if ((v7 - 4) >= *(v9 + 16))
      {
        goto LABEL_15;
      }

      v10 = *(v8 + 8 * v7);
      v11 = *(v9 + 8 * v7);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_23007EB60(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_23007EB60((v12 > 1), v13 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + 8 * v13 + 32) = v10 - v11;
      ++v7;
      if (!--v5)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_13:
  type metadata accessor for RDVector();
  result = swift_allocObject();
  *(result + 16) = v6;
  *(result + 24) = *(v6 + 16);
  return result;
}

uint64_t Array<A>.truncatedLoggingDescription()(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 5)
  {
    v4 = 5;
  }

  else
  {
    v4 = result;
  }

  if (result < v4)
  {
LABEL_43:
    __break(1u);
    return result;
  }

  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0 && v4)
    {
      type metadata accessor for RDVector();

      sub_2303108B8();
      if (v4 != 1)
      {
        sub_2303108B8();
        if (v4 != 2)
        {
          sub_2303108B8();
          if (v4 != 3)
          {
            sub_2303108B8();
            if (v4 != 4)
            {
              sub_2303108B8();
            }
          }
        }
      }
    }

    else
    {
    }

    if (v2)
    {

      sub_230310B88();
      v6 = v7;
      v5 = v8;
      v4 = v9 >> 1;
    }

    else
    {
      v5 = 0;
      v6 = (v1 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v10 = v4 - v5;
    if (__OFSUB__(v4, v5))
    {
      goto LABEL_34;
    }

    if (!v10)
    {
      break;
    }

    v24[0] = MEMORY[0x277D84F90];
    v1 = v24;
    sub_23009EC34(0, v10 & ~(v10 >> 63), 0);
    if ((v10 & 0x8000000000000000) == 0)
    {
      v2 = v24[0];
      if (v4 <= v5)
      {
        v11 = v5;
      }

      else
      {
        v11 = v4;
      }

      v12 = v11 - v5;
      v13 = (v6 + 8 * v5);
      while (v12)
      {
        v1 = *v13;

        v14 = sub_230289E28();
        v16 = v15;

        v24[0] = v2;
        v18 = *(v2 + 16);
        v17 = *(v2 + 24);
        if (v18 >= v17 >> 1)
        {
          v1 = v24;
          sub_23009EC34((v17 > 1), v18 + 1, 1);
          v2 = v24[0];
        }

        *(v2 + 16) = v18 + 1;
        v19 = v2 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v16;
        --v12;
        ++v13;
        if (!--v10)
        {
          swift_unknownObjectRelease();
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_32:
      v4 = sub_2303106D8();
      if ((sub_2303106D8() & 0x8000000000000000) == 0)
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    if (v4 >= 5)
    {
      v23 = 5;
    }

    else
    {
      v23 = v4;
    }

    if (v4 >= 0)
    {
      v4 = v23;
    }

    else
    {
      v4 = 5;
    }

    result = sub_2303106D8();
    if (result < v4)
    {
      goto LABEL_43;
    }
  }

  swift_unknownObjectRelease();
  v2 = MEMORY[0x277D84F90];
LABEL_30:
  v24[0] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0, &unk_23031A990);
  sub_2300B0FA8();
  v20 = sub_23030F7C8();
  v22 = v21;

  v24[0] = v20;
  v24[1] = v22;

  MEMORY[0x231911790](3026478, 0xE300000000000000);

  return v24[0];
}

uint64_t RDVector.init(_:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = *(a1 + 16);
  return v1;
}

uint64_t RDVector.__allocating_init(dimension:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 24) = a1;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      v3 = result;
      v4 = sub_23030FD48();
      *(v4 + 16) = a1;
      bzero((v4 + 32), 8 * a1);
      result = v3;
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    *(result + 16) = v4;
  }

  return result;
}

uint64_t RDVector.init(dimension:)(uint64_t result)
{
  *(v1 + 24) = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    if (result)
    {
      v2 = result;
      v3 = sub_23030FD48();
      *(v3 + 16) = v2;
      bzero((v3 + 32), 8 * v2);
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }

    *(v1 + 16) = v3;
    return v1;
  }

  return result;
}

uint64_t sub_230289CA0(unint64_t a1)
{
  result = swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(*(v1 + 16) + 16) <= a1)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

BOOL sub_230289D00()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = (v1 + 32);
  do
  {
    v4 = v2;
    if (!v2)
    {
      break;
    }

    v5 = *v3++;
    --v2;
  }

  while ((v5 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  return v4 == 0;
}

uint64_t sub_230289D88()
{
  swift_beginAccess();

  v1 = MEMORY[0x231911A60](v0, MEMORY[0x277D839F8]);
  v3 = v2;

  MEMORY[0x231911790](v1, v3);

  return 0x726F746365564452;
}

uint64_t sub_230289E28()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2 >= 5)
  {
    v3 = 5;
  }

  else
  {
    v3 = *(v1 + 16);
  }

  if (v2)
  {
    v21 = MEMORY[0x277D84F90];

    sub_23009EC34(0, v3, 0);
    v4 = 32;
    v5 = v21;
    v6 = MEMORY[0x277D839F8];
    v7 = MEMORY[0x277D83A80];
    do
    {
      v8 = *(v1 + v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14718, &qword_2303163A0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_230315CE0;
      *(v9 + 56) = v6;
      *(v9 + 64) = v7;
      *(v9 + 32) = v8;
      v10 = sub_23030F918();
      v22 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        v20 = v10;
        v15 = v11;
        sub_23009EC34((v12 > 1), v13 + 1, 1);
        v11 = v15;
        v10 = v20;
        v5 = v22;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      v4 += 8;
      --v3;
    }

    while (v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0, &unk_23031A990);
  sub_2300B0FA8();
  v16 = sub_23030F7C8();
  v18 = v17;

  MEMORY[0x231911790](v16, v18);

  MEMORY[0x231911790](0x292E2E2E20, 0xE500000000000000);
  return 2636374;
}