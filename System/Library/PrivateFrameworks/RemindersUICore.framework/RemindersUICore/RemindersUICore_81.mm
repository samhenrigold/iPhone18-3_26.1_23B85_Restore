BOOL static TTRTemplatePublicLinkData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s15RemindersUICore25TTRTemplatePublicLinkDataV14StateToDisplayO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TTRTemplatePublicLinkData(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t _s15RemindersUICore25TTRTemplatePublicLinkDataV14StateToDisplayO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63020, &unk_21DC2E290);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_21D46D038(a1, &v21 - v12);
  sub_21D46D038(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
LABEL_3:
      sub_21D87B178(v13, type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay);
      return 1;
    }

    goto LABEL_6;
  }

  sub_21D46D038(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_21D87B178(v10, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
LABEL_6:
    sub_21D0CF7E0(v13, &qword_27CE63020, &unk_21DC2E290);
    return 0;
  }

  sub_21D87C33C(&v13[v15], v7, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
  if (sub_21DBF55EC())
  {
    v18 = *(v4 + 20);
    v19 = v10[v18];
    v20 = v7[v18];
    sub_21D87B178(v7, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
    if (v19 == v20)
    {
      sub_21D87B178(v10, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
      goto LABEL_3;
    }
  }

  else
  {
    sub_21D87B178(v7, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
  }

  sub_21D87B178(v10, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
  sub_21D87B178(v13, type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay);
  return 0;
}

unint64_t sub_21D87AAA4()
{
  result = qword_27CE62FF0;
  if (!qword_27CE62FF0)
  {
    v3 = sub_21DBF563C();
    result = swift_getWitnessTable(MEMORY[0x277CC9590], v3, v0, v1);
    atomic_store(result, &qword_27CE62FF0);
  }

  return result;
}

unint64_t sub_21D87AB00()
{
  result = qword_27CE62FF8;
  if (!qword_27CE62FF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRTemplatePublicLinkData.CreatedStateDescription.DateType, &type metadata for TTRTemplatePublicLinkData.CreatedStateDescription.DateType, v0, v1);
    atomic_store(result, &qword_27CE62FF8);
  }

  return result;
}

unint64_t sub_21D87AB58()
{
  result = qword_27CE63000;
  if (!qword_27CE63000)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRTemplatePublicLinkData.Capabilities, &type metadata for TTRTemplatePublicLinkData.Capabilities, v0, v1);
    atomic_store(result, &qword_27CE63000);
  }

  return result;
}

unint64_t sub_21D87ABB0()
{
  result = qword_27CE63008;
  if (!qword_27CE63008)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRTemplatePublicLinkData.Capabilities, &type metadata for TTRTemplatePublicLinkData.Capabilities, v0, v1);
    atomic_store(result, &qword_27CE63008);
  }

  return result;
}

unint64_t sub_21D87AC08()
{
  result = qword_27CE63010;
  if (!qword_27CE63010)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRTemplatePublicLinkData.Capabilities, &type metadata for TTRTemplatePublicLinkData.Capabilities, v0, v1);
    atomic_store(result, &qword_27CE63010);
  }

  return result;
}

unint64_t sub_21D87AC60()
{
  result = qword_27CE63018;
  if (!qword_27CE63018)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRTemplatePublicLinkData.Capabilities, &type metadata for TTRTemplatePublicLinkData.Capabilities, v0, v1);
    atomic_store(result, &qword_27CE63018);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRTemplatePublicLinkData(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
    v7 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      v11 = sub_21DBF563C();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      *(a1 + *(v7 + 20)) = *(a2 + *(v7 + 20));
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

char *initializeWithCopy for TTRTemplatePublicLinkData(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = sub_21DBF563C();
    (*(*(v9 - 8) + 16))(a1, a2, v9);
    a1[*(v6 + 20)] = a2[*(v6 + 20)];
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

_BYTE *assignWithCopy for TTRTemplatePublicLinkData(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      v14 = sub_21DBF563C();
      (*(*(v14 - 8) + 24))(a1, a2, v14);
      a1[*(v6 + 20)] = a2[*(v6 + 20)];
      goto LABEL_7;
    }

    sub_21D87B178(a1, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v12 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
    memcpy(a1, a2, *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  v11 = sub_21DBF563C();
  (*(*(v11 - 8) + 16))(a1, a2, v11);
  a1[*(v6 + 20)] = a2[*(v6 + 20)];
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

uint64_t sub_21D87B178(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *initializeWithTake for TTRTemplatePublicLinkData(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = sub_21DBF563C();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    a1[*(v6 + 20)] = a2[*(v6 + 20)];
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

_BYTE *assignWithTake for TTRTemplatePublicLinkData(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      v14 = sub_21DBF563C();
      (*(*(v14 - 8) + 40))(a1, a2, v14);
      a1[*(v6 + 20)] = a2[*(v6 + 20)];
      goto LABEL_7;
    }

    sub_21D87B178(a1, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v12 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
    memcpy(a1, a2, *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  v11 = sub_21DBF563C();
  (*(*(v11 - 8) + 32))(a1, a2, v11);
  a1[*(v6 + 20)] = a2[*(v6 + 20)];
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

void *initializeBufferWithCopyOfBuffer for TTRTemplatePublicLinkData.CreatedStateDescription(void *a1, void *a2, uint64_t a3)
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
    v7 = sub_21DBF563C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t initializeWithCopy for TTRTemplatePublicLinkData.CreatedStateDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithCopy for TTRTemplatePublicLinkData.CreatedStateDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t initializeWithTake for TTRTemplatePublicLinkData.CreatedStateDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for TTRTemplatePublicLinkData.CreatedStateDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_21D87B850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  result = a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TTRTemplatePublicLinkData.StateToDisplay(void *a1, void *a2, uint64_t a3)
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
  v7 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    v12 = sub_21DBF563C();
    (*(*(v12 - 8) + 16))(a1, a2, v12);
    *(a1 + *(v7 + 20)) = *(a2 + *(v7 + 20));
    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_21D87BA84(uint64_t a1)
{
  v2 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = sub_21DBF563C();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

void *initializeWithCopy for TTRTemplatePublicLinkData.StateToDisplay(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = sub_21DBF563C();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    *(a1 + *(v6 + 20)) = *(a2 + *(v6 + 20));
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

_BYTE *assignWithCopy for TTRTemplatePublicLinkData.StateToDisplay(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = sub_21DBF563C();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      a1[*(v6 + 20)] = a2[*(v6 + 20)];
      (*(v7 + 56))(a1, 0, 1, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v14 = sub_21DBF563C();
      (*(*(v14 - 8) + 24))(a1, a2, v14);
      a1[*(v6 + 20)] = a2[*(v6 + 20)];
      return a1;
    }

    sub_21D87B178(a1, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

void *initializeWithTake for TTRTemplatePublicLinkData.StateToDisplay(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = sub_21DBF563C();
    (*(*(v10 - 8) + 32))(a1, a2, v10);
    *(a1 + *(v6 + 20)) = *(a2 + *(v6 + 20));
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

_BYTE *assignWithTake for TTRTemplatePublicLinkData.StateToDisplay(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = sub_21DBF563C();
      (*(*(v11 - 8) + 32))(a1, a2, v11);
      a1[*(v6 + 20)] = a2[*(v6 + 20)];
      (*(v7 + 56))(a1, 0, 1, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v14 = sub_21DBF563C();
      (*(*(v14 - 8) + 40))(a1, a2, v14);
      a1[*(v6 + 20)] = a2[*(v6 + 20)];
      return a1;
    }

    sub_21D87B178(a1, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

uint64_t sub_21D87C1DC(uint64_t a1)
{
  v2 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 1, v2);
}

uint64_t sub_21D87C244(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 1, v4);
}

uint64_t sub_21D87C2B4(uint64_t a1)
{
  result = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t sub_21D87C33C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double TTRRemindersBoardMainDiffableDataSource.setPresentationTrees(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A90, &unk_21DC2E2A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  sub_21D87DFB8(a1, &v13 - v5, type metadata accessor for TTRRemindersBoardPresentationTrees);
  v7 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = qword_27CE8EB18;
  swift_beginAccess();
  sub_21D87C4F8(v6, v2 + v8);
  swift_endAccess();
  v9 = TTRRemindersBoardPresentationTrees.allColumnIDs.getter();
  v10 = sub_21D19EE98(v9);

  v11 = qword_27CE8EB20;
  swift_beginAccess();
  *(v2 + v11) = v10;

  return result;
}

uint64_t sub_21D87C4F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A90, &unk_21DC2E2A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TTRRemindersBoardMainDiffableDataSource.applySnapshot(option:)(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C7F8, &unk_21DC16EC0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A90, &unk_21DC2E2A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  v11 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = qword_27CE8EB18;
  swift_beginAccess();
  sub_21D53BDA0(v2 + v16, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_21D0CF7E0(v10, &qword_27CE58A90, &unk_21DC2E2A0);
  }

  sub_21D87DE7C(v10, v14, type metadata accessor for TTRRemindersBoardPresentationTrees);
  type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  sub_21D46F824();
  sub_21D46F878();
  sub_21DBF8AFC();
  sub_21DBF8A6C();
  TTRRemindersBoardPresentationTrees.allColumnIDs.getter();
  v20 = 0;
  sub_21DBF8A2C();

  sub_21D87C87C(v7, v15, 0, 0);
  (*(v5 + 8))(v7, v4);
  v18 = qword_27CE8EB20;
  swift_beginAccess();
  v19[1] = *(v2 + v18);
  sub_21DBF8E0C();
  sub_21DBF906C();

  return sub_21D87DEE4(v14, type metadata accessor for TTRRemindersBoardPresentationTrees);
}

uint64_t sub_21D87C87C(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C7F8, &unk_21DC16EC0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = aBlock - v12;
  if (v8 == 2)
  {
    v14 = objc_opt_self();
    (*(v10 + 16))(v13, a1, v9);
    v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v4;
    (*(v10 + 32))(v16 + v15, v13, v9);
    v17 = (v16 + ((v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v17 = a3;
    v17[1] = a4;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_21D87E130;
    *(v18 + 24) = v16;
    aBlock[4] = sub_21D0E6070;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_103;
    v19 = _Block_copy(aBlock);
    v20 = v4;
    sub_21D0D0E74(a3, a4);

    [v14 performWithoutAnimation_];
    _Block_release(v19);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {

    return sub_21DBF8BFC();
  }

  return result;
}

uint64_t TTRRemindersBoardMainDiffableDataSource.lastAppliedPresentationTrees.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27CE8EB18;
  swift_beginAccess();
  return sub_21D53BDA0(v1 + v3, a1);
}

double TTRRemindersBoardMainDiffableDataSource.allColumnIDs.getter()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  return result;
}

uint64_t TTRRemindersBoardMainDiffableDataSource.allColumnIDsPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63030, &qword_21DC2E2B0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - v3;
  v5 = qword_27CE63038;
  if (*(v0 + qword_27CE63038))
  {
    v6 = *(v0 + qword_27CE63038);
  }

  else
  {
    v10 = *(v0 + qword_27CE63028);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63040, &qword_21DC2E2B8);
    sub_21D0D0F1C(&qword_27CE63048, &qword_27CE63040, &qword_21DC2E2B8, MEMORY[0x277CBCE20]);
    sub_21D0D0F1C(&qword_27CE63050, &qword_27CE63058, &qword_21DC2E2C0, MEMORY[0x277D83B60]);
    sub_21DBF93AC();
    sub_21D0D0F1C(&qword_27CE63060, &qword_27CE63030, &qword_21DC2E2B0, MEMORY[0x277CBCBE0]);
    v7 = sub_21DBF92EC();
    (*(v2 + 8))(v4, v1);
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63068, &qword_21DC2E2C8);
    sub_21D0D0F1C(&qword_27CE63070, &qword_27CE63068, &qword_21DC2E2C8, MEMORY[0x277CBCC78]);
    v6 = sub_21DBF920C();

    *(v0 + v5) = v6;
  }

  return v6;
}

uint64_t (*TTRRemindersBoardMainDiffableDataSource.allColumnIDsPublisher.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = TTRRemindersBoardMainDiffableDataSource.allColumnIDsPublisher.getter();
  return sub_21D87CE98;
}

uint64_t TTRRemindersBoardMainDiffableDataSource.columnID(containingItemID:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v8);
  v10 = v27 - v9 + 16;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v15 = qword_27CE8EB18;
  swift_beginAccess();
  v16 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  if ((*(*(v16 - 8) + 48))(v2 + v15, 1, v16))
  {
    goto LABEL_4;
  }

  sub_21D0D32E4(v2 + v15, v27);
  sub_21D0D0FD0(v27, v28);
  v17 = v29;
  v18 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(v18 + 40))(a1, v17, v18);
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) == 1)
  {
    sub_21D0CF7E0(v10, &unk_27CE5CD80, &qword_21DC0CE80);
    __swift_destroy_boxed_opaque_existential_0(v28);
LABEL_4:
    v20 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
  }

  sub_21D87DE7C(v10, v14, type metadata accessor for TTRRemindersListViewModel.Item);
  v22 = v29;
  v23 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  TTRTreeContentsQueryable.topLevelItem(containing:)(v14, v22, v23, v7);
  if (v19(v7, 1, v11) == 1)
  {
    sub_21D87DEE4(v14, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0CF7E0(v7, &unk_27CE5CD80, &qword_21DC0CE80);
    v24 = 1;
  }

  else
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(a2);
    sub_21D87DEE4(v14, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D87DEE4(v7, type metadata accessor for TTRRemindersListViewModel.Item);
    v24 = 0;
  }

  v25 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  (*(*(v25 - 8) + 56))(a2, v24, 1, v25);
  return __swift_destroy_boxed_opaque_existential_0(v28);
}

uint64_t TTRRemindersBoardMainDiffableDataSource.item(withID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = qword_27CE8EB18;
  swift_beginAccess();
  v6 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  if ((*(*(v6 - 8) + 48))(v2 + v5, 1, v6))
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    return (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
  }

  else
  {
    sub_21D0D32E4(v2 + v5, v11);
    v9 = v12;
    v10 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v10 + 40))(a1, v9, v10);
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }
}

uint64_t TTRRemindersBoardMainDiffableDataSource.items<A>(withIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = qword_27CE8EB18;
  swift_beginAccess();
  v5 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  if ((*(*(v5 - 8) + 48))(v3 + v4, 1, v5))
  {
    return MEMORY[0x277D84F90];
  }

  sub_21D0D32E4(v3 + v4, v9);
  v7 = sub_21D0D0FD0(v9, v10);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  v8 = sub_21DBFA4EC();
  __swift_destroy_boxed_opaque_existential_0(v10);
  return v8;
}

uint64_t TTRRemindersBoardMainDiffableDataSource.childrenExcludingCollapsed(of:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80, &qword_21DC0CE80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_27CE8EB18;
  swift_beginAccess();
  if ((*(v7 + 48))(v1 + v10, 1, v6))
  {
    return MEMORY[0x277D84F90];
  }

  sub_21D87DFB8(v1 + v10, v9, type metadata accessor for TTRRemindersBoardPresentationTrees);
  v12 = &v9[*(v6 + 32)];
  v14 = *v12;
  v13 = *(v12 + 1);
  ObjectType = swift_getObjectType();
  v19 = v14;
  sub_21D87DFB8(a1, v5, type metadata accessor for TTRRemindersListViewModel.Item);
  v16 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
  v17 = *(*(v13 + 8) + 8);
  swift_unknownObjectRetain();
  v18 = TTRTreeContentsQueryable.children(of:)(v5, ObjectType, v17);
  sub_21D0CF7E0(v5, &unk_27CE5CD80, &qword_21DC0CE80);
  sub_21D87DEE4(v9, type metadata accessor for TTRRemindersBoardPresentationTrees);
  swift_unknownObjectRelease();
  return v18;
}

uint64_t TTRRemindersBoardMainDiffableDataSource.sortByItemVisualLocation<A, B>(_:itemID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a3;
  v22 = a6;
  v20 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_27CE8EB18;
  swift_beginAccess();
  if ((*(v14 + 48))(v6 + v17, 1, v13))
  {
    (*(v10 + 16))(v12, a1, a5);
    return sub_21DBFA76C();
  }

  else
  {
    sub_21D87DFB8(v6 + v17, v16, type metadata accessor for TTRRemindersBoardPresentationTrees);
    v19 = TTRRemindersBoardPresentationTrees.sortByItemVisualLocation<A, B>(_:itemID:)(a1, v20, v21, a4, a5, v22);
    sub_21D87DEE4(v16, type metadata accessor for TTRRemindersBoardPresentationTrees);
    return v19;
  }
}

uint64_t TTRRemindersBoardMainDiffableDataSource.flattenedIndexPathInColumn(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_27CE8EB18;
  swift_beginAccess();
  if ((*(v6 + 48))(v2 + v9, 1, v5))
  {
    v10 = sub_21DBF5D5C();
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }

  else
  {
    sub_21D87DFB8(v2 + v9, v8, type metadata accessor for TTRRemindersBoardPresentationTrees);
    TTRRemindersBoardPresentationTrees.flattenedIndexPathInColumn(for:)(a1, a2);
    return sub_21D87DEE4(v8, type metadata accessor for TTRRemindersBoardPresentationTrees);
  }
}

uint64_t TTRRemindersBoardMainDiffableDataSource.__allocating_init(collectionView:cellProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(v3);
  v5 = qword_27CE8EB18;
  v6 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  (*(*(v6 - 8) + 56))(&v4[v5], 1, 1, v6);
  *&v4[qword_27CE8EB20] = MEMORY[0x277D84FA0];
  *&v4[qword_27CE63038] = 0;
  v7 = qword_27CE63028;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63040, &qword_21DC2E2B8);
  swift_allocObject();
  *&v4[v7] = sub_21DBF907C();
  return sub_21DBF8BBC();
}

uint64_t TTRRemindersBoardMainDiffableDataSource.init(collectionView:cellProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = qword_27CE8EB18;
  v6 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *(v4 + qword_27CE8EB20) = MEMORY[0x277D84FA0];
  *(v4 + qword_27CE63038) = 0;
  v7 = qword_27CE63028;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63040, &qword_21DC2E2B8);
  swift_allocObject();
  *(v4 + v7) = sub_21DBF907C();

  return sub_21DBF8BBC();
}

uint64_t sub_21D87DC4C()
{
  sub_21D0CF7E0(v0 + qword_27CE8EB18, &qword_27CE58A90, &unk_21DC2E2A0);
}

id TTRRemindersBoardMainDiffableDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21D87DCF4(uint64_t a1)
{
  sub_21D0CF7E0(a1 + qword_27CE8EB18, &qword_27CE58A90, &unk_21DC2E2A0);
}

uint64_t sub_21D87DD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(v3);
  v5 = qword_27CE8EB18;
  v6 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  (*(*(v6 - 8) + 56))(&v4[v5], 1, 1, v6);
  *&v4[qword_27CE8EB20] = MEMORY[0x277D84FA0];
  *&v4[qword_27CE63038] = 0;
  v7 = qword_27CE63028;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63040, &qword_21DC2E2B8);
  swift_allocObject();

  *&v4[v7] = sub_21DBF907C();
  v8 = sub_21DBF8BBC();

  return v8;
}

uint64_t sub_21D87DE7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D87DEE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D87DF44(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  return (*(v5 + 40))(a1, v4, v5);
}

uint64_t sub_21D87DFB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for TTRRemindersBoardMainDiffableDataSource(uint64_t a1)
{
  result = qword_27CE63078;
  if (!qword_27CE63078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D87E06C(uint64_t a1)
{
  sub_21D53BCD4(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void *static TTRBatchFetchManager<A>.remindersFetchManager(store:initialFetchResultToken:queue:fetchOptions:)(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = a4;
  return sub_21D87E894(a1, sub_21D1947D8, v8, a2, a3, &qword_27CE63098, &unk_21DC2E410, sub_21D1773C4);
}

void *TTRBatchFetchManager<A>.override(objects:)(uint64_t a1)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    result = sub_21D88372C(a1);
LABEL_18:
    *&v30 = *(v1 + 80);
    MEMORY[0x28223BE20](result);
    sub_21DBF5EFC();

    sub_21DBF814C();
  }

  else
  {
    v27 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58308, &qword_21DC0CB20);
    result = sub_21DBFC3DC();
    v4 = result;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v2 + 64);
    v9 = (v6 + 63) >> 6;
    v10 = result + 8;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_14:
        v14 = v11 | (v5 << 6);
        v15 = *(*(v2 + 56) + 8 * v14);
        v16 = *(*(v2 + 48) + 8 * v14);
        v17 = v15;

        v29[3] = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
        v29[4] = &protocol witness table for REMReminder;
        v28 = 3;
        v29[0] = v17;
        v18 = v17;
        result = TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(v29, &v28, &v30);
        v19 = v31;
        v20 = v32;
        v21 = v33;
        v22 = v30;
        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(v4[6] + 8 * v14) = v16;
        v23 = v4[7] + 48 * v14;
        *v23 = v18;
        *(v23 + 8) = v22;
        *(v23 + 24) = v19;
        *(v23 + 32) = v20;
        *(v23 + 40) = v21;
        v24 = v4[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          break;
        }

        v4[2] = v26;
        if (!v8)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {
          v1 = v27;
          goto LABEL_18;
        }

        v13 = *(v2 + 64 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21D87E64C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F108);
  v1 = __swift_project_value_buffer(v0, qword_280D0F108);
  if (qword_280D17A48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void (*sub_21D87E714(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

id sub_21D87E7A8()
{
  v0 = sub_21D25A450();

  return v0;
}

void sub_21D87E7D4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

void *sub_21D87E894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void, __n128))
{
  v14 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v15 = swift_allocObject();
  v15[3] = 0;
  swift_unknownObjectWeakInit();
  v16 = (a8)(MEMORY[0x277D84F90]);
  v17 = MEMORY[0x277D84FA0];
  v15[8] = v16;
  v15[9] = v17;
  sub_21D0F1DD0(&qword_280D0C860, MEMORY[0x277D44D10], MEMORY[0x277D44D18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90, &unk_21DC0F180);
  sub_21D0D9418(&qword_280D0C3D0, &unk_27CE5CD90, &unk_21DC0F180);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v15[10] = sub_21DBF5EEC();
  sub_21DBF60DC();
  v15[11] = sub_21DBF60AC();
  v18 = sub_21DBF60BC();
  v15[6] = a2;
  v15[7] = a3;
  v15[4] = a4;
  v15[5] = a1;
  v15[12] = v18;
  v15[13] = a5;
  return v15;
}

uint64_t TTRBatchFetchManager.__allocating_init(store:fetch:initialFetchResultToken:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  TTRBatchFetchManager.init(store:fetch:initialFetchResultToken:queue:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t *TTRBatchFetchManager.init(store:fetch:initialFetchResultToken:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v10);
  v5[3] = 0;
  swift_unknownObjectWeakInit();
  v11 = sub_21D0D8CF0(255, &qword_280D17880, 0x277D44700);
  v12 = *(v9 + 80);
  swift_getTupleTypeMetadata2();
  v13 = sub_21DBFA68C();
  v14 = sub_21D183A0C();
  v15 = sub_21D345358(v13, v11, v12, v14);

  v16 = MEMORY[0x277D84FA0];
  v5[8] = v15;
  v5[9] = v16;
  sub_21D0F1DD0(&qword_280D0C860, MEMORY[0x277D44D10], MEMORY[0x277D44D18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90, &unk_21DC0F180);
  sub_21D0D9418(&qword_280D0C3D0, &unk_27CE5CD90, &unk_21DC0F180);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v5[10] = sub_21DBF5EEC();
  sub_21DBF60DC();
  v5[11] = sub_21DBF60AC();
  v17 = sub_21DBF60BC();
  v5[6] = a2;
  v5[7] = a3;
  v5[4] = a4;
  v5[5] = a1;
  v5[12] = v17;
  v5[13] = a5;
  return v5;
}

uint64_t sub_21D87ECFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22 = a2;
  v5 = *(*v3 + 80);
  v20 = sub_21DBFBA8C();
  v6 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  v13 = *(v5 - 8);
  v21 = *(v13 + 56);
  v21(&v19 - v11, 1, 1, v5, v10);
  v14 = v3[10];
  v25 = a1;
  v26 = v14;
  v23 = v12;
  v24 = v3;
  v19 = a1;
  sub_21DBF5EFC();

  v15 = v20;
  sub_21DBF814C();

  (*(v6 + 16))(v8, v12, v15);
  if ((*(v13 + 48))(v8, 1, v5) == 1)
  {
    v16 = *(v6 + 8);
    v16(v8, v15);
    sub_21D881350(v19);
    (v21)(v22, 1, 1, v5);
    return (v16)(v12, v15);
  }

  else
  {
    v18 = v22;
    (*(v13 + 32))(v22, v8, v5);
    (v21)(v18, 0, 1, v5);
    return (*(v6 + 8))(v12, v15);
  }
}

uint64_t sub_21D87EFA4@<X0>(uint64_t a2@<X8>)
{
  (*(*(*(*v2 + 80) - 8) + 56))(a2, 1, 1);
  sub_21DBF5EFC();

  sub_21DBF814C();
}

uint64_t sub_21D87F080(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_21DBFBA8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  swift_beginAccess();
  v11 = a3;
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  sub_21D183A0C();
  sub_21DBF8E0C();
  v9 = a3;
  sub_21DBF9F5C();

  return (*(v6 + 40))(a1, v8, v5);
}

uint64_t sub_21D87F1F0(uint64_t a1)
{
  v9 = MEMORY[0x277D84F90];
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  sub_21D183A0C();
  v8 = sub_21DBF9E2C();
  sub_21DBF5EFC();

  sub_21DBF814C();

  if (v9 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_3;
    }

LABEL_4:

    return v8;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_4;
  }

LABEL_3:
  v2 = v1[6];
  v3 = v1[5];
  swift_beginAccess();
  v4 = v1[4];

  v5 = v4;
  v2(v3, v9, v5);

  MEMORY[0x28223BE20](v6);
  sub_21DBF9F4C();
  sub_21DBF9F0C();

  return v8;
}

uint64_t sub_21D87F418(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v42 = a3;
  v43 = a4;
  v4 = a2;
  v6 = *(*a2 + 80);
  v41 = sub_21DBFBA8C();
  v7 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = *(v6 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v39 = &v32 - v16;
  if (a1 >> 62)
  {
    v31 = v14;
    result = sub_21DBFBD7C();
    v14 = v31;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v18 = 0;
    v19 = v14 & 0xC000000000000001;
    v20 = (v12 + 48);
    v36 = (v12 + 16);
    v37 = (v12 + 32);
    v34 = (v12 + 8);
    v35 = (v12 + 56);
    v33 = (v7 + 8);
    v44 = result;
    v45 = v14;
    v38 = (v12 + 48);
    do
    {
      if (v19)
      {
        v26 = MEMORY[0x223D44740](v18, v15);
      }

      else
      {
        v26 = *(v14 + 8 * v18 + 32);
      }

      v27 = v26;
      swift_beginAccess();
      v46 = v27;
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      sub_21D183A0C();
      sub_21DBF8E0C();
      v28 = v27;
      sub_21DBF9F5C();

      if ((*v20)(v11, 1, v6) == 1)
      {
        (*v33)(v11, v41);
        v29 = v28;
        v30 = v43;
        MEMORY[0x223D42D80]();
        if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
      }

      else
      {
        v21 = v19;
        v22 = v4;
        v23 = v39;
        (*v37)(v39, v11, v6);
        v24 = v40;
        (*v36)(v40, v23, v6);
        (*v35)(v24, 0, 1, v6);
        v46 = v28;
        sub_21DBF9F4C();
        sub_21DBF9F6C();
        v25 = v23;
        v4 = v22;
        v19 = v21;
        v20 = v38;
        (*v34)(v25, v6);
      }

      result = v44;
      v14 = v45;
      ++v18;
    }

    while (v44 != v18);
  }

  return result;
}

double sub_21D87F80C(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_21DBF9D2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF9D5C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21D8807C0(a1);
  v13 = v12;
  if (v12 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_3;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v18[2] = v1[12];
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    v15[2] = *(v3 + 80);
    v15[3] = v14;
    v18[1] = v14;
    v15[4] = v13;
    aBlock[4] = sub_21D883D08;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_104;
    v16 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v18[3] = MEMORY[0x277D84F90];
    sub_21D0F1DD0(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    v18[0] = v8;
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v11, v7, v16);
    _Block_release(v16);
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v18[0]);

    return result;
  }

  return result;
}

double sub_21D87FBA0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return result;
  }

  v5 = Strong;
  v6 = sub_21D8807C0(a2);
  v7 = v6;
  v8 = v6 >> 62;
  if (v6 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_4;
    }

LABEL_14:

    return result;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_4:
  if (qword_280D17EA0 != -1)
  {
    swift_once();
  }

  v9 = sub_21DBF84BC();
  __swift_project_value_buffer(v9, qword_280D0F108);
  sub_21DBF8E0C();
  v10 = sub_21DBF84AC();
  v11 = sub_21DBFAE9C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    if (v8)
    {
      v13 = sub_21DBFBD7C();
    }

    else
    {
      v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v12 + 4) = v13;

    _os_log_impl(&dword_21D0C9000, v10, v11, "Pre-fetching {objectsReallyToFetch: %ld}", v12, 0xCu);
    MEMORY[0x223D46520](v12, -1, -1);
  }

  else
  {
  }

  v14 = *(v5 + 48);
  v15 = *(v5 + 40);

  v16 = [v15 nonUserInteractiveStore];
  swift_beginAccess();
  v17 = *(v5 + 32);
  v14(v16, v7, v17);

  MEMORY[0x28223BE20](v18);
  sub_21DBF5EFC();

  sub_21DBF814C();

  return result;
}

void sub_21D87FE94(unint64_t a1, void *a2)
{
  v3 = *a2;
  v60 = a2;
  v4 = *(v3 + 80);
  v5 = sub_21DBFBA8C();
  MEMORY[0x28223BE20](v5 - 8);
  v59 = v52 - v6;
  v56 = *(v4 - 8);
  MEMORY[0x28223BE20](v7);
  v57 = v52 - v8;
  v67 = sub_21D0D8CF0(255, &qword_280D17880, 0x277D44700);
  v69 = v4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = sub_21DBFBA8C();
  v10 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v66 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (v52 - v13);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v15 = sub_21DBFC21C();
    v54 = 0;
    v16 = 0;
    v17 = 0;
    v18 = v15 | 0x8000000000000000;
  }

  else
  {
    v19 = -1 << *(a1 + 32);
    v16 = ~v19;
    v20 = *(a1 + 64);
    v54 = a1 + 64;
    v21 = -v19;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v17 = v22 & v20;
    v18 = a1;
  }

  v68 = (v56 + 32);
  v63 = TupleTypeMetadata2 - 8;
  v52[1] = v16;
  v23 = (v16 + 64) >> 6;
  v55 = v56 + 16;
  v62 = (v10 + 32);
  v58 = (v56 + 56);
  sub_21DBF8E0C();
  v24 = 0;
  v64 = v18;
  v53 = v14;
  v61 = v17;
  if ((v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  v25 = v17;
  v26 = v24;
  if (v17)
  {
LABEL_16:
    v17 = (v25 - 1) & v25;
    v31 = __clz(__rbit64(v25)) | (v26 << 6);
    v32 = *(v18 + 56);
    v33 = *(*(v18 + 48) + 8 * v31);
    v34 = v56;
    v35 = v57;
    v36 = v69;
    (*(v56 + 16))(v57, v32 + *(v56 + 72) * v31, v69);
    v37 = *(TupleTypeMetadata2 + 48);
    v38 = v66;
    *v66 = v33;
    v39 = v35;
    v30 = v38;
    (*(v34 + 32))(&v38[v37], v39, v36);
    v40 = *(TupleTypeMetadata2 - 8);
    (*(v40 + 56))(v30, 0, 1, TupleTypeMetadata2);
    v41 = v33;
    v28 = v26;
    goto LABEL_21;
  }

  if (v23 <= v24 + 1)
  {
    v27 = v24 + 1;
  }

  else
  {
    v27 = v23;
  }

  v28 = v27 - 1;
  v29 = v24;
  v30 = v66;
  while (1)
  {
    v26 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      return;
    }

    if (v26 >= v23)
    {
      break;
    }

    v25 = *(v54 + 8 * v26);
    ++v29;
    if (v25)
    {
      goto LABEL_16;
    }
  }

  v40 = *(TupleTypeMetadata2 - 8);
  (*(v40 + 56))(v66, 1, 1, TupleTypeMetadata2);
  v17 = 0;
LABEL_21:
  while (1)
  {
    (*v62)(v14, v30, v65);
    if ((*(v40 + 48))(v14, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v48 = *v14;
    v49 = v69;
    v50 = v59;
    (*v68)(v59, v14 + *(TupleTypeMetadata2 + 48), v69);
    (*v58)(v50, 0, 1, v49);
    v71 = v48;
    swift_beginAccess();
    sub_21D183A0C();
    sub_21DBF9F4C();
    v51 = v48;
    sub_21DBF9F6C();
    swift_endAccess();

    v24 = v28;
    v18 = v64;
    v61 = v17;
    if ((v64 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    v42 = sub_21DBFC2DC();
    if (v42)
    {
      v71 = v42;
      swift_dynamicCast();
      v44 = v69;
      v43 = v70;
      v45 = v17;
      v46 = v57;
      sub_21DBFC60C();
      swift_unknownObjectRelease();
      v47 = *(TupleTypeMetadata2 + 48);
      v30 = v66;
      *v66 = v43;
      (*v68)(&v30[v47], v46, v44);
      v40 = *(TupleTypeMetadata2 - 8);
      (*(v40 + 56))(v30, 0, 1, TupleTypeMetadata2);
      v28 = v24;
      v17 = v45;
      v14 = v53;
    }

    else
    {
      v40 = *(TupleTypeMetadata2 - 8);
      v30 = v66;
      (*(v40 + 56))(v66, 1, 1, TupleTypeMetadata2);
      v28 = v24;
    }
  }

  sub_21D0CFAF8(v64);
}

double sub_21D880538(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  swift_beginAccess();
  v5 = v1[4];

  v6 = v5;
  v4(v3, a1, v6);

  MEMORY[0x28223BE20](v7);
  sub_21DBF5EFC();

  sub_21DBF814C();

  return result;
}

char *sub_21D8807C0(uint64_t a1)
{
  v6 = MEMORY[0x277D84FA0];
  sub_21DBF5EFC();

  sub_21DBF814C();

  v1 = sub_21DBF8E0C();
  v2 = sub_21D19ED08(v1);

  sub_21D9F84C8(v6, v3);
  v4 = sub_21D198698(v2);

  return v4;
}

double sub_21D8808AC(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  sub_21D183A0C();
  nullsub_1();
  v6 = v3;
  v4 = sub_21DBF9EDC();
  sub_21DBF8E0C();
  swift_getWitnessTable(MEMORY[0x277D83480], v4, v6);
  *a1 = sub_21DBFABCC();

  return result;
}

uint64_t sub_21D8809BC()
{
  sub_21DBF5EFC();

  sub_21DBF814C();
}

uint64_t sub_21D880A48(uint64_t *a1)
{
  swift_beginAccess();
  sub_21D0D8CF0(255, &qword_280D17880, 0x277D44700);
  sub_21D183A0C();
  sub_21DBF9F4C();
  sub_21DBF9F3C();
  return swift_endAccess();
}

uint64_t sub_21D880AF0(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  swift_beginAccess();
  v6 = *(v3 + 32);
  *(v3 + 32) = v5;

  if (a2)
  {
    if (qword_280D17EA0 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_280D0F108);
    sub_21DBF8E0C();
    v8 = sub_21DBF84AC();
    v9 = sub_21DBFAEAC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315138;
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      sub_21D183A0C();
      v12 = sub_21DBFAABC();
      v14 = sub_21D0CDFB4(v12, v13, &v21);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_21D0C9000, v8, v9, "TTRBatchFetchManager invalidate cached objects {objectIDs: %s}", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223D46520](v11, -1, -1);
      MEMORY[0x223D46520](v10, -1, -1);
    }

    v21 = *(v3 + 80);
    MEMORY[0x28223BE20](v15);
    sub_21DBF5EFC();

    sub_21DBF814C();
  }

  else
  {
    if (qword_280D17EA0 != -1)
    {
      swift_once();
    }

    v17 = sub_21DBF84BC();
    __swift_project_value_buffer(v17, qword_280D0F108);
    v18 = sub_21DBF84AC();
    v19 = sub_21DBFAEAC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_21D0C9000, v18, v19, "TTRBatchFetchManager invalidate all cached objects", v20, 2u);
      MEMORY[0x223D46520](v20, -1, -1);
    }

    return sub_21D8809BC();
  }
}

void sub_21D880DE8(uint64_t a1, void *a2)
{
  v3 = *a2;
  v25 = a2;
  v24 = *(v3 + 80);
  v23 = sub_21DBFBA8C();
  v4 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v22 = &v21 - v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21DBFBD1C();
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    sub_21D183A0C();
    sub_21DBFAB5C();
    a1 = v28;
    v6 = v29;
    v8 = v30;
    v7 = v31;
    v9 = v32;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);
    sub_21DBF8E0C();
    v7 = 0;
  }

  v21 = v8;
  v13 = (v8 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v7;
    v15 = v9;
    v16 = v7;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(a1 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_18:
      sub_21D0CFAF8(a1);
      return;
    }

    while (1)
    {
      v27 = v18;
      swift_beginAccess();
      sub_21D0D8CF0(255, &qword_280D17880, 0x277D44700);
      sub_21D183A0C();
      sub_21DBF9F4C();
      v20 = v22;
      sub_21DBF9E8C();
      (*(v4 + 8))(v20, v23);
      swift_endAccess();

      v7 = v16;
      v9 = v17;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v19 = sub_21DBFBDBC();
      if (v19)
      {
        v27 = v19;
        sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
        swift_dynamicCast();
        v18 = v26;
        v16 = v7;
        v17 = v9;
        if (v26)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_18;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_21D8810E4(uint64_t a1)
{
  sub_21DBF5EFC();

  sub_21DBF814C();
}

uint64_t sub_21D881170(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21DBF8E0C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a1 + 64);
  *(a1 + 64) = 0x8000000000000000;
  sub_21D884388(a2, sub_21DAB6894, 0, isUniquelyReferenced_nonNull_native, &v6);

  *(a1 + 64) = v6;
  return swift_endAccess();
}

uint64_t sub_21D88123C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_21D0D8CF0(255, &qword_280D17880, 0x277D44700);
  sub_21D183A0C();
  sub_21DBF9F4C();
  sub_21DBF8E0C();
  sub_21DBF9F0C();
  return swift_endAccess();
}

double sub_21D881308(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;

  return result;
}

uint64_t sub_21D881350(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_21DBF9D2C();
  v17 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21DBF9D5C();
  v8 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = v2[10];
  v18 = v2;
  v19 = a1;
  sub_21DBF5EFC();

  sub_21DBF814C();

  if (v20 == 1)
  {
    v15[1] = v2[11];
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = *(v4 + 80);
    *(v13 + 24) = v12;
    aBlock[4] = sub_21D8842DC;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_17_4;
    v14 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v20 = MEMORY[0x277D84F90];
    sub_21D0F1DD0(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v10, v7, v14);
    _Block_release(v14);
    (*(v17 + 8))(v7, v5);
    (*(v8 + 8))(v10, v16);
  }

  return result;
}

void sub_21D8816DC(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 72);
  if ((v6 & 0xC000000000000001) != 0)
  {
    sub_21DBF8E0C();
    v7 = sub_21DBFBD7C();
  }

  else
  {
    v7 = *(v6 + 16);
  }

  swift_beginAccess();
  sub_21D29B0D0(&v9, a2);
  v8 = v9;
  swift_endAccess();

  *a3 = v7 == 0;
}

uint64_t sub_21D8817B0(uint64_t a1)
{
  v1 = sub_21DBF9D2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF9D5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = v5;
    v16 = v6;
    v18 = *(result + 80);
    v10 = result;
    sub_21DBF5EFC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58858, &unk_21DC09AA0);
    sub_21DBF814C();

    v11 = aBlock[0];
    v14[1] = *(v10 + 88);
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v10;
    aBlock[4] = sub_21D8842EC;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_23_3;
    v13 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v18 = MEMORY[0x277D84F90];
    sub_21D0F1DD0(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v8, v4, v13);
    _Block_release(v13);
    (*(v2 + 8))(v4, v1);
    (*(v16 + 8))(v8, v15);
  }

  return result;
}

void sub_21D881B0C(uint64_t a1@<X0>, char **a2@<X8>)
{
  swift_beginAccess();
  v4 = sub_21DBF8E0C();
  v5 = sub_21D198698(v4);

  if (MEMORY[0x277D84F90] >> 62 && sub_21DBFBD7C())
  {
    sub_21D1CE198(MEMORY[0x277D84F90]);
    v6 = v7;
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  swift_beginAccess();
  *(a1 + 72) = v6;

  *a2 = v5;
}

uint64_t sub_21D881BD0(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = sub_21DBF9D2C();
  v54 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v51 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = sub_21DBF8E0C();
  v12 = sub_21D8807C0(v11);
  v13 = v12;
  v14 = v12 >> 62;
  if (v12 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_3;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

LABEL_3:
  v49 = v4;
  if (qword_280D17EA0 != -1)
  {
    swift_once();
  }

  v15 = sub_21DBF84BC();
  v16 = __swift_project_value_buffer(v15, qword_280D0F108);
  sub_21DBF8E0C();
  v48 = v16;
  v17 = sub_21DBF84AC();
  v18 = sub_21DBFAE9C();
  v19 = os_log_type_enabled(v17, v18);
  v50 = v5;
  if (v19)
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    if (v14)
    {
      v21 = sub_21DBFBD7C();
    }

    else
    {
      v21 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v20 + 4) = v21;

    _os_log_impl(&dword_21D0C9000, v17, v18, "TTRBatchFetchManager fetching {objectsReallyToFetch: %ld}", v20, 0xCu);
    MEMORY[0x223D46520](v20, -1, -1);
  }

  else
  {
  }

  v22 = a2[6];
  v23 = a2[5];
  swift_beginAccess();
  v24 = a2[4];

  v25 = v24;
  v26 = v22(v23, v13, v25);

  v27 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v28 = *(v49 + 80);
  v49 = sub_21D183A0C();
  v29 = sub_21DBF9EFC();
  if (v14)
  {
    v30 = sub_21DBFBD7C();
  }

  else
  {
    v30 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v47 = v26;
  if (v29 == v30)
  {
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_21DBF8E0C();
    v32 = sub_21DBF84AC();
    v46 = sub_21DBFAEBC();
    v48 = v32;
    if (os_log_type_enabled(v32, v46))
    {
      v33 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v55 = v28;
      aBlock[0] = v45;
      *v33 = 136315650;
      swift_getMetatypeMetadata();
      v34 = sub_21DBFA1AC();
      v44[1] = v27;
      v44[0] = sub_21D0CDFB4(v34, v35, aBlock);

      *(v33 + 4) = v44[0];
      *(v33 + 12) = 2048;
      v36 = sub_21DBF9EFC();

      *(v33 + 14) = v36;

      *(v33 + 22) = 2048;
      if (v14)
      {
        v37 = sub_21DBFBD7C();
      }

      else
      {
        v37 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v33 + 24) = v37;

      v38 = v48;
      _os_log_impl(&dword_21D0C9000, v48, v46, "TTRBatchFetchManager failed to fetch some objects {type: %s, fetched: %ld, expect: %ld}", v33, 0x20u);
      v39 = v45;
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x223D46520](v39, -1, -1);
      MEMORY[0x223D46520](v33, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v31 = swift_bridgeObjectRelease_n();
    }
  }

  aBlock[0] = a2[10];
  MEMORY[0x28223BE20](v31);
  v44[-4] = v47;
  v44[-3] = a2;
  v44[-2] = v10 + 16;
  sub_21DBF5EFC();

  sub_21DBF814C();

  v5 = v50;
LABEL_25:
  v40 = swift_allocObject();
  *(v40 + 16) = a2;
  *(v40 + 24) = v10;
  aBlock[4] = sub_21D884360;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_38_1;
  v41 = _Block_copy(aBlock);

  sub_21DBF9D4C();
  v55 = MEMORY[0x277D84F90];
  sub_21D0F1DD0(&qword_280D1B920, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0);
  v42 = v51;
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v9, v42, v41);
  _Block_release(v41);
  (*(v54 + 8))(v42, v5);
  (*(v52 + 8))(v9, v53);
}

uint64_t sub_21D882504(unint64_t a1, void *a2, int64_t *a3)
{
  v57 = a3;
  v4 = *a2;
  v69 = a2;
  v5 = *(v4 + 80);
  v6 = sub_21DBFBA8C();
  MEMORY[0x28223BE20](v6 - 8);
  v63 = &v56 - v7;
  v60 = *(v5 - 8);
  MEMORY[0x28223BE20](v8);
  v61 = &v56 - v9;
  v71 = sub_21D0D8CF0(255, &qword_280D17880, 0x277D44700);
  v73 = v5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v68 = sub_21DBFBA8C();
  v11 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v70 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v56 - v14);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = sub_21DBFC21C();
    v58 = 0;
    v17 = 0;
    v18 = 0;
    v19 = v16 | 0x8000000000000000;
  }

  else
  {
    v20 = -1 << *(a1 + 32);
    v17 = ~v20;
    v21 = *(a1 + 64);
    v58 = a1 + 64;
    v22 = -v20;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v18 = v23 & v21;
    v19 = a1;
  }

  v72 = (v60 + 32);
  v66 = TupleTypeMetadata2 - 8;
  v56 = v17;
  v24 = (v17 + 64) >> 6;
  v59 = v60 + 16;
  v65 = (v11 + 32);
  v62 = (v60 + 56);
  result = sub_21DBF8E0C();
  v26 = 0;
  v67 = v19;
  v64 = v18;
  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  v27 = v18;
  v28 = v26;
  if (v18)
  {
LABEL_16:
    v18 = (v27 - 1) & v27;
    v33 = __clz(__rbit64(v27)) | (v28 << 6);
    v34 = *(v19 + 56);
    v35 = *(*(v19 + 48) + 8 * v33);
    v36 = v60;
    v37 = v61;
    v38 = v73;
    (*(v60 + 16))(v61, v34 + *(v60 + 72) * v33, v73);
    v39 = *(TupleTypeMetadata2 + 48);
    v40 = v70;
    *v70 = v35;
    v41 = v37;
    v32 = v40;
    (*(v36 + 32))(&v40[v39], v41, v38);
    v42 = *(TupleTypeMetadata2 - 8);
    (*(v42 + 56))(v32, 0, 1, TupleTypeMetadata2);
    v43 = v35;
    v30 = v28;
    goto LABEL_22;
  }

  if (v24 <= v26 + 1)
  {
    v29 = v26 + 1;
  }

  else
  {
    v29 = v24;
  }

  v30 = v29 - 1;
  v31 = v26;
  v32 = v70;
  while (1)
  {
    v28 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v28 >= v24)
    {
      break;
    }

    v27 = *(v58 + 8 * v28);
    ++v31;
    if (v27)
    {
      goto LABEL_16;
    }
  }

  v42 = *(TupleTypeMetadata2 - 8);
  (*(v42 + 56))(v70, 1, 1, TupleTypeMetadata2);
  v18 = 0;
LABEL_22:
  while (1)
  {
    (*v65)(v15, v32, v68);
    if ((*(v42 + 48))(v15, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v49 = *v15;
    v50 = v73;
    v51 = v63;
    (*v72)(v63, v15 + *(TupleTypeMetadata2 + 48), v73);
    (*v62)(v51, 0, 1, v50);
    v75 = v49;
    swift_beginAccess();
    sub_21D183A0C();
    sub_21DBF9F4C();
    v52 = v49;
    sub_21DBF9F6C();
    swift_endAccess();

    v26 = v30;
    v19 = v67;
    v64 = v18;
    if ((v67 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    v44 = sub_21DBFC2DC();
    if (v44)
    {
      v75 = v44;
      swift_dynamicCast();
      v46 = v73;
      v45 = v74;
      v47 = v61;
      sub_21DBFC60C();
      swift_unknownObjectRelease();
      v48 = *(TupleTypeMetadata2 + 48);
      v32 = v70;
      *v70 = v45;
      (*v72)(&v32[v48], v47, v46);
      v42 = *(TupleTypeMetadata2 - 8);
      (*(v42 + 56))(v32, 0, 1, TupleTypeMetadata2);
    }

    else
    {
      v42 = *(TupleTypeMetadata2 - 8);
      v32 = v70;
      (*(v42 + 56))(v70, 1, 1, TupleTypeMetadata2);
    }

    v30 = v26;
  }

  sub_21D0CFAF8(v67);
  v53 = v57;
  result = sub_21D883A1C(sub_21D884368, v69);
  if (*v53 >> 62)
  {
LABEL_29:
    v55 = result;
    v54 = sub_21DBFBD7C();
    result = v55;
    if (v54 >= v55)
    {
      return sub_21DBD1A84(result, v54);
    }

    goto LABEL_30;
  }

  v54 = *((*v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v54 >= result)
  {
    return sub_21DBD1A84(result, v54);
  }

LABEL_30:
  __break(1u);
  return result;
}

BOOL sub_21D882C14(void **a1, void *a2)
{
  v3 = *(*a2 + 80);
  v4 = sub_21DBFBA8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v8 = *a1;
  swift_beginAccess();
  v12[5] = v8;
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  sub_21D183A0C();
  sub_21DBF8E0C();
  v9 = v8;
  sub_21DBF9F5C();

  v10 = (*(*(v3 - 8) + 48))(v7, 1, v3) == 1;
  (*(v5 + 8))(v7, v4);
  return v10;
}

id *TTRBatchFetchManager.deinit()
{
  sub_21D157444((v0 + 2));

  return v0;
}

uint64_t TTRBatchFetchManager.__deallocating_deinit()
{
  TTRBatchFetchManager.deinit();

  return swift_deallocClassInstance();
}

id TTRReminderAndComputedProperties.computedProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v8 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v8;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v6 = v2;

  return v8;
}

void *sub_21D882ED8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = [objc_allocWithZone(MEMORY[0x277D447D0]) initWithStore_];
  v6 = [objc_opt_self() defaultFetchOptions];
  if (a4)
  {
    v7 = a4;

    v6 = v7;
  }

  v8 = [v6 fetchOptionsIncludingDueDateDeltaAlerts];

  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v9 = sub_21DBFA5DC();
  *&v46 = 0;
  v10 = [v5 fetchRemindersWithObjectIDs:v9 fetchOptions:v8 error:&v46];

  v11 = v46;
  if (v10)
  {
    v12 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
    sub_21D183A0C();
    v13 = sub_21DBF9E6C();
    v14 = v11;

    if ((v13 & 0xC000000000000001) != 0)
    {
      if (v13 < 0)
      {
        v15 = v13;
      }

      else
      {
        v15 = v13 & 0xFFFFFFFFFFFFFF8;
      }

      v16 = sub_21D88372C(v15);
    }

    else
    {
      v43 = v12;
      v40 = v8;
      v41 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58308, &qword_21DC0CB20);
      v17 = sub_21DBFC3DC();
      v16 = v17;
      v18 = 0;
      v19 = 1 << *(v13 + 32);
      v20 = -1;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      v21 = v20 & *(v13 + 64);
      v22 = (v19 + 63) >> 6;
      v42 = v17 + 64;
      if (v21)
      {
        goto LABEL_13;
      }

LABEL_14:
      v24 = v18;
      while (1)
      {
        v18 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
          goto LABEL_26;
        }

        if (v18 >= v22)
        {
          break;
        }

        v25 = *(v13 + 64 + 8 * v18);
        ++v24;
        if (v25)
        {
          v23 = __clz(__rbit64(v25));
          v21 = (v25 - 1) & v25;
          while (2)
          {
            v26 = v23 | (v18 << 6);
            v27 = *(*(v13 + 56) + 8 * v26);
            v28 = *(*(v13 + 48) + 8 * v26);
            v29 = v27;

            v45[3] = v43;
            v45[4] = &protocol witness table for REMReminder;
            v44 = 3;
            v45[0] = v29;
            v30 = v29;
            TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(v45, &v44, &v46);
            v31 = v47;
            v32 = v48;
            v33 = v49;
            v34 = v46;
            *(v42 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
            *(v16[6] + 8 * v26) = v28;
            v35 = v16[7] + 48 * v26;
            *v35 = v30;
            *(v35 + 8) = v34;
            *(v35 + 24) = v31;
            *(v35 + 32) = v32;
            *(v35 + 40) = v33;
            v36 = v16[2];
            v37 = __OFADD__(v36, 1);
            v38 = v36 + 1;
            if (!v37)
            {
              v16[2] = v38;
              if (!v21)
              {
                goto LABEL_14;
              }

LABEL_13:
              v23 = __clz(__rbit64(v21));
              v21 &= v21 - 1;
              continue;
            }

            break;
          }

LABEL_26:
          __break(1u);
        }
      }

      v5 = v41;
      v8 = v40;
    }
  }

  else
  {
    v16 = v46;
    sub_21DBF52DC();

    swift_willThrow();
  }

  return v16;
}

id sub_21D883290(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_allocWithZone(MEMORY[0x277D446D0]) initWithStore_];
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v3 = sub_21DBFA5DC();
  v9[0] = 0;
  v4 = [v2 fetchListsWithObjectIDs:v3 error:v9];

  v5 = v9[0];
  if (v4)
  {
    sub_21D0D8CF0(0, &qword_280D17690, 0x277D44660);
    sub_21D183A0C();
    v6 = sub_21DBF9E6C();
    v7 = v5;
  }

  else
  {
    v6 = v9[0];
    sub_21DBF52DC();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_21D8833F0(uint64_t a1, unint64_t a2)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v33 = [objc_allocWithZone(MEMORY[0x277D44838]) initWithStore_];
  if (a2 >> 62)
  {
LABEL_35:
    v3 = sub_21DBFBD7C();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = MEMORY[0x277D84F98];
      v32 = v3;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x223D44740](v4, a2);
        }

        else
        {
          if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v8 = *(a2 + 8 * v4 + 32);
        }

        v9 = v8;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v34[0] = 0;
        v11 = [v33 fetchCustomSmartListWithObjectID:v8 error:v34];
        if (!v11)
        {
          v30 = v34[0];

          sub_21DBF52DC();

          swift_willThrow();
          return v5;
        }

        v12 = v11;
        if ((v5 & 0xC000000000000001) != 0)
        {
          if (v5 >= 0)
          {
            v5 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v13 = v34[0];
          v14 = v12;
          v15 = sub_21DBFBD7C();
          if (__OFADD__(v15, 1))
          {
            goto LABEL_33;
          }

          v5 = sub_21D983FE4(v5, v15 + 1);
        }

        else
        {
          v16 = v34[0];
          v17 = v12;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34[0] = v5;
        v20 = sub_21D17E07C(v9);
        v21 = *(v5 + 16);
        v22 = (v19 & 1) == 0;
        v23 = v21 + v22;
        if (__OFADD__(v21, v22))
        {
          goto LABEL_32;
        }

        v24 = v19;
        if (*(v5 + 24) >= v23)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v5 = v34[0];
            if (v19)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_21D220534();
            v5 = v34[0];
            if (v24)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_21D215CB4(v23, isUniquelyReferenced_nonNull_native);
          v25 = sub_21D17E07C(v9);
          if ((v24 & 1) != (v26 & 1))
          {
            sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
            result = sub_21DBFC70C();
            __break(1u);
            return result;
          }

          v20 = v25;
          v5 = v34[0];
          if (v24)
          {
LABEL_4:
            v6 = *(v5 + 56);
            v7 = *(v6 + 8 * v20);
            *(v6 + 8 * v20) = v12;

            goto LABEL_5;
          }
        }

        *(v5 + 8 * (v20 >> 6) + 64) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v9;
        *(*(v5 + 56) + 8 * v20) = v12;

        v27 = *(v5 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_34;
        }

        *(v5 + 16) = v29;
LABEL_5:
        ++v4;
        if (v10 == v32)
        {
          goto LABEL_37;
        }
      }
    }
  }

  v5 = MEMORY[0x277D84F98];
LABEL_37:

  return v5;
}

uint64_t sub_21D88372C(uint64_t a1)
{
  if (sub_21DBFBD7C())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58308, &qword_21DC0CB20);
    v1 = sub_21DBFC40C();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v36 = v1;
  sub_21DBFC21C();
  swift_unknownObjectRetain();
  v2 = sub_21DBFC2DC();
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v6 = v5;
    do
    {
      *&v30 = v6;
      swift_dynamicCast();
      *&v30 = v4;
      v15 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
      swift_dynamicCast();
      v17 = v34;
      v16 = v35;

      v29[3] = v15;
      v29[4] = &protocol witness table for REMReminder;
      v28 = 3;
      v29[0] = v17;
      v18 = v17;
      TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(v29, &v28, &v30);
      v27 = v30;
      v19 = v31;
      v20 = v32;
      v21 = v33;

      v22 = *(v1 + 16);
      if (*(v1 + 24) <= v22)
      {
        sub_21D2159CC(v22 + 1, 1);
      }

      v1 = v36;
      result = sub_21DBFB62C();
      v8 = v1 + 64;
      v9 = -1 << *(v1 + 32);
      v10 = result & ~v9;
      v11 = v10 >> 6;
      if (((-1 << v10) & ~*(v1 + 64 + 8 * (v10 >> 6))) != 0)
      {
        v12 = __clz(__rbit64((-1 << v10) & ~*(v1 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = 0;
        v24 = (63 - v9) >> 6;
        do
        {
          if (++v11 == v24 && (v23 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v25 = v11 == v24;
          if (v11 == v24)
          {
            v11 = 0;
          }

          v23 |= v25;
          v26 = *(v8 + 8 * v11);
        }

        while (v26 == -1);
        v12 = __clz(__rbit64(~v26)) + (v11 << 6);
      }

      *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v1 + 48) + 8 * v12) = v16;
      v13 = *(v1 + 56) + 48 * v12;
      *v13 = v18;
      *(v13 + 8) = v27;
      *(v13 + 24) = v19;
      *(v13 + 32) = v20;
      *(v13 + 40) = v21;
      ++*(v1 + 16);
      v6 = sub_21DBFC2DC();
      v4 = v14;
    }

    while (v6);
  }

  return v1;
}

uint64_t sub_21D883A1C(uint64_t (*a1)(id *), uint64_t a2)
{
  v6 = *v2;
  sub_21D3F7300(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_21DBFBD7C();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_21DBFBD7C())
      {
        return v4;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v4;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x223D44740](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v13 = v12;
    v25 = v12;
    v14 = a1(&v25);

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v4 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v4++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x223D44740](v4, v6);
    v15 = MEMORY[0x223D44740](v10, v6);
  }

  else
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v17 = *(v6 + 32 + 8 * v10);
    v24 = *(v6 + 32 + 8 * v4);
    v15 = v17;
  }

  v18 = v15;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_21D256E5C();
    v19 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v19) = 0;
  }

  v20 = v6 & 0xFFFFFFFFFFFFFF8;
  v21 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v18;

  if ((v6 & 0x8000000000000000) == 0 && !v19)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_21D256E5C();
  v20 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v20 + 16))
    {
      goto LABEL_44;
    }

    v22 = v20 + 8 * v10;
    v23 = *(v22 + 32);
    *(v22 + 32) = v24;

    *v2 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_21DBFBD7C();
}

double destroy for TTRReminderAndComputedProperties(id *a1)
{

  return result;
}

uint64_t initializeWithCopy for TTRReminderAndComputedProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRReminderAndComputedProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  *(a1 + 16) = v11;
  v12 = v11;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRReminderAndComputedProperties(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t objectdestroy_19Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return swift_deallocObject();
}

uint64_t sub_21D884388(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void **), uint64_t a3, char a4, void *a5)
{
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v72 = v7 & *(a1 + 64);
  v53 = (63 - v6) >> 6;
  sub_21DBF8E0C();

  v8 = 0;
  for (i = v5; ; v5 = i)
  {
    v14 = v72;
    v15 = v8;
    if (!v72)
    {
      break;
    }

LABEL_12:
    v17 = __clz(__rbit64(v14)) | (v15 << 6);
    v18 = *(*(a1 + 48) + 8 * v17);
    v19 = *(a1 + 56) + 48 * v17;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = *(v19 + 24);
    v24 = *(v19 + 32);
    v25 = *(v19 + 40);
    v61 = v18;
    v62 = v20;
    v63 = v21;
    v64 = v22;
    v65 = v23;
    v66 = v24;
    v67 = v25;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v26 = v18;
    v27 = v20;
    v28 = v21;
    v29 = v22;
    a2(v68, &v61);
    v30 = v61;
    v31 = v62;
    v32 = v63;
    v33 = v64;

    v34 = v68[0];
    if (!v68[0])
    {
LABEL_22:
      sub_21D0CFAF8(a1);
    }

    v36 = v68[1];
    v35 = v68[2];
    v37 = v68[3];
    v38 = v69;
    v57 = v70;
    v58 = v71;
    v39 = *a5;
    v40 = sub_21D17E07C(v68[0]);
    v42 = v39[2];
    v43 = (v41 & 1) == 0;
    v44 = __OFADD__(v42, v43);
    v45 = v42 + v43;
    if (v44)
    {
      goto LABEL_24;
    }

    v46 = v41;
    if (v39[3] >= v45)
    {
      if ((a4 & 1) == 0)
      {
        v72 = v40;
        sub_21D220360();
        v40 = v72;
      }
    }

    else
    {
      sub_21D2159CC(v45, a4 & 1);
      v40 = sub_21D17E07C(v34);
      if ((v46 & 1) != (v47 & 1))
      {
        goto LABEL_26;
      }
    }

    v72 = (v14 - 1) & v14;
    v48 = *a5;
    if (v46)
    {
      v9 = v40;

      v10 = v48[7] + 48 * v9;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      *v10 = v36;
      *(v10 + 8) = v35;
      *(v10 + 16) = v37;
      *(v10 + 24) = v38;
      *(v10 + 32) = v57;
      *(v10 + 40) = v58;
    }

    else
    {
      v48[(v40 >> 6) + 8] |= 1 << v40;
      *(v48[6] + 8 * v40) = v34;
      v49 = v48[7] + 48 * v40;
      *v49 = v36;
      *(v49 + 8) = v35;
      *(v49 + 16) = v37;
      *(v49 + 24) = v38;
      *(v49 + 32) = v57;
      *(v49 + 40) = v58;
      v50 = v48[2];
      v44 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v44)
      {
        goto LABEL_25;
      }

      v48[2] = v51;
    }

    a4 = 1;
    v8 = v15;
  }

  v16 = v8;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v53)
    {
      goto LABEL_22;
    }

    v14 = *(v5 + 8 * v15);
    ++v16;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

uint64_t sub_21D884704()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE630A0);
  v1 = __swift_project_value_buffer(v0, qword_27CE630A0);
  if (qword_280D17A58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21AB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRDirectlySavableImageData.ImageFormat.init(uti:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_21DBF843C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  (*(v5 + 16))(&v18 - v10, a1, v4, v9);
  sub_21DBF83DC();
  sub_21D886078(&qword_27CE630B8, MEMORY[0x277D85590]);
  v12 = sub_21DBFA10C();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if (v12)
  {
    v13(a1, v4);
    result = (v13)(v11, v4);
    v15 = 0;
  }

  else
  {
    sub_21DBF83AC();
    v16 = sub_21DBFA10C();
    v13(v7, v4);
    if (v16)
    {
      v13(a1, v4);
      result = (v13)(v11, v4);
      v15 = 1;
    }

    else
    {
      sub_21DBF83EC();
      v17 = sub_21DBFA10C();
      v13(a1, v4);
      v13(v7, v4);
      result = (v13)(v11, v4);
      if (v17)
      {
        v15 = 2;
      }

      else
      {
        v15 = 3;
      }
    }
  }

  *a2 = v15;
  return result;
}

uint64_t TTRDirectlySavableImageData.ImageFormat.uti.getter(uint64_t a1)
{
  if (!*v1)
  {
    return sub_21DBF83DC();
  }

  if (*v1 == 1)
  {
    return sub_21DBF83AC();
  }

  return sub_21DBF83EC();
}

uint64_t TTRDirectlySavableImageData.ImageFormat.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRDirectlySavableImageData.data.getter()
{
  v1 = *v0;
  sub_21D1BAF70(*v0, *(v0 + 8));
  return v1;
}

uint64_t TTRDirectlySavableImageData.sourceUTI.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTRDirectlySavableImageData(0) + 28);

  return sub_21D884B9C(v3, a1);
}

uint64_t sub_21D884B9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50, &unk_21DC2E420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TTRDirectlySavableImageData.init(data:imageFormat:size:sourceUTI:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v9 = *a3;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = v9;
  *(a5 + 24) = a6;
  *(a5 + 32) = a7;
  v10 = a5 + *(type metadata accessor for TTRDirectlySavableImageData(0) + 28);

  return sub_21D884C64(a4, v10);
}

uint64_t sub_21D884C64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50, &unk_21DC2E420);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TTRDirectlySavableImageData.init(image:sourceUTI:)@<X0>(UIImage *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6 = [(UIImage *)a1 CGImage];
  if (v6)
  {
    v7 = v6;
    if (TTRImageContainsTranslucentPixels(v7))
    {
      isa = UIImage.drawnWithRotation()().super.isa;
      v9 = UIImagePNGRepresentation(isa);

      if (v9)
      {
        v10 = sub_21DBF551C();
        v12 = v11;

        [(UIImage *)v4 size];
        v14 = v13;
        v16 = v15;
        [(UIImage *)v4 scale];
        v18 = v17;

        v19 = v14 * v18;
        v20 = v16 * v18;
        *a3 = v10;
        *(a3 + 8) = v12;
        *(a3 + 16) = 1;
LABEL_8:
        *(a3 + 24) = v19;
        *(a3 + 32) = v20;
        v33 = type metadata accessor for TTRDirectlySavableImageData(0);
        return sub_21D884C64(a2, a3 + *(v33 + 28));
      }

      sub_21D884F10();
      swift_allocError();
      v36 = 2;
    }

    else
    {
      v22 = UIImageJPEGRepresentation(v4, 0.75);
      if (v22)
      {
        v23 = v22;
        v24 = sub_21DBF551C();
        v26 = v25;

        [(UIImage *)v4 size];
        v28 = v27;
        v30 = v29;
        [(UIImage *)v4 scale];
        v32 = v31;

        v19 = v28 * v32;
        v20 = v30 * v32;
        *a3 = v24;
        *(a3 + 8) = v26;
        *(a3 + 16) = 0;
        goto LABEL_8;
      }

      sub_21D884F10();
      swift_allocError();
      v36 = 3;
    }

    *v35 = v36;
    swift_willThrow();

    v4 = v7;
  }

  else
  {
    sub_21D884F10();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();
  }

  return sub_21D3F983C(a2);
}

unint64_t sub_21D884F10()
{
  result = qword_27CE630C0;
  if (!qword_27CE630C0)
  {
    result = swift_getWitnessTable(a5_1, &type metadata for TTRDirectlySavableImageData.SavableDataConversionError, v0, v1);
    atomic_store(result, &qword_27CE630C0);
  }

  return result;
}

void (*TTRDirectlySavableImageData.init(data:uti:size:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>))(void, void, void)
{
  v107 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50, &unk_21DC2E420);
  MEMORY[0x28223BE20](v11 - 8);
  v102 = &v93[-v12];
  v13 = type metadata accessor for TTRDirectlySavableImageData(0);
  MEMORY[0x28223BE20](v13);
  v101 = &v93[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_21DBF843C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v98 = &v93[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v99 = &v93[-v19];
  MEMORY[0x28223BE20](v20);
  v22 = &v93[-v21];
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v93[-v25];
  v27 = *(v16 + 16);
  v104 = v16 + 16;
  v28 = v27;
  (v27)(&v93[-v25], a3, v15, v24);
  TTRDirectlySavableImageData.ImageFormat.init(uti:)(v26, &v109);
  v29 = v109;
  if (v109 != 3)
  {
    (*(v16 + 8))(a3, v15);
    result = (*(v16 + 56))(a4 + *(v13 + 28), 1, 1, v15);
    v47 = v107;
    *a4 = a1;
    *(a4 + 8) = v47;
    *(a4 + 16) = v29;
    *(a4 + 24) = a5;
    *(a4 + 32) = a6;
    return result;
  }

  v100 = v22;
  v30 = v107;
  v103 = a3;
  v105 = a1;
  if (qword_27CE56DD8 != -1)
  {
    swift_once();
  }

  v31 = sub_21DBF84BC();
  v32 = __swift_project_value_buffer(v31, qword_27CE630A0);
  v33 = v100;
  v34 = v15;
  v97 = v28;
  v28(v100, v103, v15);
  v35 = v105;
  sub_21D1BAF70(v105, v30);
  v96 = v32;
  v36 = v30;
  v37 = sub_21DBF84AC();
  v38 = sub_21DBFAE9C();
  sub_21D17B8A8(v35, v36);
  v39 = os_log_type_enabled(v37, v38);
  v95 = a4;
  if (!v39)
  {

    v48 = v16;
    v100 = *(v16 + 8);
    (v100)(v33, v34);
    v44 = v34;
    goto LABEL_19;
  }

  v94 = v38;
  v40 = swift_slowAlloc();
  result = swift_slowAlloc();
  v42 = result;
  v109 = result;
  *v40 = 136315394;
  v43 = v36 >> 62;
  if ((v36 >> 62) > 1)
  {
    v44 = v15;
    v45 = v100;
    if (v43 != 2)
    {
      v46 = 0;
      goto LABEL_17;
    }

    v50 = *(v105 + 16);
    v49 = *(v105 + 24);
    v51 = __OFSUB__(v49, v50);
    v46 = v49 - v50;
    if (!v51)
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_14:
    LODWORD(v46) = HIDWORD(v105) - v105;
    if (__OFSUB__(HIDWORD(v105), v105))
    {
      __break(1u);
      return result;
    }

    v48 = v16;
    v46 = v46;
    goto LABEL_18;
  }

  v44 = v15;
  v45 = v100;
  if (v43)
  {
    goto LABEL_14;
  }

  v46 = BYTE6(v107);
LABEL_17:
  v48 = v16;
LABEL_18:
  v108 = v46;
  sub_21D679D9C();
  v52 = sub_21DBFBC0C();
  v54 = sub_21D0CDFB4(v52, v53, &v109);

  *(v40 + 4) = v54;
  *(v40 + 12) = 2080;
  v55 = sub_21DBF836C();
  v57 = v56;
  v100 = *(v48 + 8);
  (v100)(v45, v44);
  v58 = sub_21D0CDFB4(v55, v57, &v109);

  *(v40 + 14) = v58;
  _os_log_impl(&dword_21D0C9000, v37, v94, "TTRDirectlySavableImageData: converting image data format {data: %s, uti: %s}", v40, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223D46520](v42, -1, -1);
  MEMORY[0x223D46520](v40, -1, -1);

LABEL_19:
  v59 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v60 = v105;
  v61 = v107;
  sub_21D1BAF70(v105, v107);
  v62 = sub_21DBF54FC();
  v63 = [v59 initWithData_];

  sub_21D17B8A8(v60, v61);
  if (v63)
  {
    v64 = v102;
    v65 = v103;
    v66 = v97;
    v97(v102, v103, v44);
    (*(v48 + 56))(v64, 0, 1, v44);
    v67 = v44;
    v68 = v63;
    v69 = v101;
    v70 = v106;
    TTRDirectlySavableImageData.init(image:sourceUTI:)(v68, v64, v101);
    if (v70)
    {
      (v100)(v65, v67);

      return sub_21D17B8A8(v105, v61);
    }

    else
    {
      v102 = v48;
      v106 = 0;
      v72 = v69;
      v73 = v95;
      sub_21D232994(v72, v95);
      LODWORD(v101) = *(v73 + 16);
      v74 = v99;
      v66(v99, v65, v67);
      v75 = sub_21DBF84AC();
      v76 = sub_21DBFAE9C();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = v74;
        v78 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v109 = v97;
        *v78 = 136315394;
        v79 = sub_21DBF836C();
        v81 = v80;
        v104 = v67;
        v82 = v100;
        v102 += 8;
        (v100)(v77, v67);
        v83 = sub_21D0CDFB4(v79, v81, &v109);

        *(v78 + 4) = v83;
        *(v78 + 12) = 2080;
        if (v101)
        {
          v84 = v76;
          v85 = v98;
          if (v101 == 1)
          {
            sub_21DBF83AC();
          }

          else
          {
            sub_21DBF83EC();
          }
        }

        else
        {
          v84 = v76;
          v85 = v98;
          sub_21DBF83DC();
        }

        v87 = sub_21DBF836C();
        v89 = v88;
        v90 = v104;
        v82(v85, v104);
        v91 = sub_21D0CDFB4(v87, v89, &v109);

        *(v78 + 14) = v91;
        _os_log_impl(&dword_21D0C9000, v75, v84, "TTRDirectlySavableImageData: finished image data format conversion {from: %s, to: %s}", v78, 0x16u);
        v92 = v97;
        swift_arrayDestroy();
        MEMORY[0x223D46520](v92, -1, -1);
        MEMORY[0x223D46520](v78, -1, -1);

        sub_21D17B8A8(v105, v107);
        return v82(v103, v90);
      }

      else
      {

        sub_21D17B8A8(v105, v107);
        v86 = v100;
        (v100)(v65, v67);
        return v86(v74, v67);
      }
    }
  }

  else
  {
    sub_21D884F10();
    swift_allocError();
    *v71 = 0;
    swift_willThrow();
    sub_21D17B8A8(v60, v61);
    return (v100)(v103, v44);
  }
}

void TTRDirectlySavableImageData.init(data:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50, &unk_21DC2E420);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v33 - v8;
  v10 = sub_21DBF843C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v34 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v35 = v33 - v14;
  v15 = sub_21DBF54FC();
  v16 = CGImageSourceCreateWithData(v15, 0);

  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = CGImageSourceGetType(v16);
  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = v17;
  v33[0] = a3;
  v33[1] = v3;
  sub_21DBFA16C();

  sub_21DBF844C();
  v19 = v11;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v20 = *(v11 + 32);
    v21 = v35;
    v20(v35, v9, v10);
    v22 = objc_allocWithZone(MEMORY[0x277D755B8]);
    sub_21D1BAF70(a1, a2);
    v23 = sub_21DBF54FC();
    v24 = [v22 initWithData_];

    sub_21D17B8A8(a1, a2);
    if (v24)
    {
      [v24 size];
      v26 = v25;
      v28 = v27;
      [v24 scale];
      v30 = v29;

      v31 = v34;
      (*(v19 + 16))(v34, v21, v10);
      TTRDirectlySavableImageData.init(data:uti:size:)(a1, a2, v31, v33[0], v26 * v30, v28 * v30);
      (*(v19 + 8))(v21, v10);

      return;
    }

    (*(v19 + 8))(v21, v10);
LABEL_8:

    goto LABEL_9;
  }

  sub_21D3F983C(v9);
LABEL_9:
  sub_21D884F10();
  swift_allocError();
  *v32 = 0;
  swift_willThrow();
  sub_21D17B8A8(a1, a2);
}

void TTRDirectlySavableImageData.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50, &unk_21DC2E420);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v42 - v3;
  v5 = sub_21DBF843C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v42 - v10;
  v12 = *v0;
  v13 = v0[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    v15 = 0;
    if (v14 != 2)
    {
      goto LABEL_10;
    }

    v17 = v12 + 16;
    v12 = *(v12 + 16);
    v16 = *(v17 + 8);
    v15 = v16 - v12;
    if (!__OFSUB__(v16, v12))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v14)
  {
    v15 = BYTE6(v13);
    goto LABEL_10;
  }

  v18 = __OFSUB__(HIDWORD(v12), v12);
  v19 = HIDWORD(v12) - v12;
  if (v18)
  {
    __break(1u);
    return;
  }

  v15 = v19;
LABEL_10:
  v20 = [objc_opt_self() stringFromByteCount:v15 countStyle:1];
  v21 = sub_21DBFA16C();
  v23 = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640, &unk_21DC09110);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_21DC0AFB0;
  v43 = 0x203A6874676E656CLL;
  v44 = 0xE800000000000000;
  MEMORY[0x223D42AA0](v21, v23);

  v25 = v44;
  *(v24 + 32) = v43;
  *(v24 + 40) = v25;
  v43 = 0x203A697475;
  v44 = 0xE500000000000000;
  v42[0] = v1;
  v26 = *(v1 + 16);
  if (*(v1 + 16))
  {
    v27 = v6;
    v28 = v8;
    if (v26 == 1)
    {
      sub_21DBF83AC();
    }

    else
    {
      sub_21DBF83EC();
    }
  }

  else
  {
    v27 = v6;
    v28 = v8;
    sub_21DBF83DC();
  }

  sub_21D886078(&qword_27CE630C8, MEMORY[0x277D855A8]);
  v29 = sub_21DBFC5BC();
  MEMORY[0x223D42AA0](v29);

  v30 = *(v27 + 8);
  v30(v11, v5);
  v31 = v44;
  *(v24 + 48) = v43;
  *(v24 + 56) = v31;
  v32 = type metadata accessor for TTRDirectlySavableImageData(0);
  sub_21D884B9C(v42[0] + *(v32 + 28), v4);
  v33 = 0;
  v34 = 0;
  if ((*(v27 + 48))(v4, 1, v5) != 1)
  {
    (*(v27 + 32))(v28, v4, v5);
    v43 = 0x5455656372756F73;
    v44 = 0xEB00000000203A49;
    v35 = sub_21DBFC5BC();
    MEMORY[0x223D42AA0](v35);

    v33 = v43;
    v34 = v44;
    v30(v28, v5);
  }

  *(v24 + 64) = v33;
  *(v24 + 72) = v34;
  v43 = 0x203A657A6973;
  v44 = 0xE600000000000000;
  v36 = sub_21DBFB57C();
  MEMORY[0x223D42AA0](v36);

  v37 = v44;
  *(v24 + 80) = v43;
  *(v24 + 88) = v37;
  v43 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90, &unk_21DC09D00);
  sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90, &unk_21DC09D00, MEMORY[0x277D83970]);
  v38 = sub_21DBFA41C();

  v43 = 40;
  v44 = 0xE100000000000000;
  v42[1] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
  v39 = sub_21DBFA07C();
  v41 = v40;

  MEMORY[0x223D42AA0](v39, v41);

  MEMORY[0x223D42AA0](41, 0xE100000000000000);
}

uint64_t sub_21D886078(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_21DBF843C();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21D8860C0()
{
  result = qword_27CE630D0;
  if (!qword_27CE630D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRDirectlySavableImageData.ImageFormat, &type metadata for TTRDirectlySavableImageData.ImageFormat, v0, v1);
    atomic_store(result, &qword_27CE630D0);
  }

  return result;
}

unint64_t initializeBufferWithCopyOfBuffer for TTRUnsavedAttachment(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = v8 + ((v5 + 16) & ~v5);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v19 = *a2;
        *a1 = *a2;
        v20 = v19;
      }

      else
      {
        v9 = *a2;
        v10 = *(a2 + 8);
        sub_21D1BAF70(*a2, v10);
        *a1 = v9;
        *(a1 + 8) = v10;
        v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE38, &qword_21DC1ED90) + 48);
        v12 = sub_21DBF843C();
        (*(*(v12 - 8) + 16))(a1 + v11, a2 + v11, v12);
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v13 = *a2;
      v14 = *(a2 + 8);
      sub_21D1BAF70(*a2, v14);
      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      v15 = *(type metadata accessor for TTRDirectlySavableImageData(0) + 28);
      v16 = sub_21DBF843C();
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(a2 + v15, 1, v16))
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50, &unk_21DC2E420);
        memcpy((a1 + v15), (a2 + v15), *(*(v18 - 8) + 64));
      }

      else
      {
        (*(v17 + 16))(a1 + v15, a2 + v15, v16);
        (*(v17 + 56))(a1 + v15, 0, 1, v16);
      }
    }

    else
    {
      v7 = sub_21DBF54CC();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void destroy for TTRUnsavedAttachment(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21D17B8A8(*a1, *(a1 + 8));
      v9 = *(type metadata accessor for TTRDirectlySavableImageData(0) + 28);
      v10 = sub_21DBF843C();
      v12 = *(v10 - 8);
      if ((*(v12 + 48))(a1 + v9, 1, v10))
      {
        return;
      }

      v5 = *(v12 + 8);
      v7 = a1 + v9;
      v6 = v10;
    }

    else
    {
      if (EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
      {
        return;
      }

      v4 = sub_21DBF54CC();
      v5 = *(*(v4 - 8) + 8);
      v6 = v4;
      v7 = a1;
    }

    goto LABEL_15;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_21D17B8A8(*a1, *(a1 + 8));
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE38, &qword_21DC1ED90) + 48);
    v6 = sub_21DBF843C();
    v5 = *(*(v6 - 8) + 8);
    v7 = a1 + v11;
LABEL_15:

    v5(v7, v6);
    return;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = *a1;
  }
}

uint64_t initializeWithCopy for TTRUnsavedAttachment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v17 = *a2;
      *a1 = *a2;
      v18 = v17;
    }

    else
    {
      v7 = *a2;
      v8 = *(a2 + 8);
      sub_21D1BAF70(*a2, v8);
      *a1 = v7;
      *(a1 + 8) = v8;
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE38, &qword_21DC1ED90) + 48);
      v10 = sub_21DBF843C();
      (*(*(v10 - 8) + 16))(a1 + v9, a2 + v9, v10);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v11 = *a2;
    v12 = *(a2 + 8);
    sub_21D1BAF70(*a2, v12);
    *a1 = v11;
    *(a1 + 8) = v12;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    v13 = *(type metadata accessor for TTRDirectlySavableImageData(0) + 28);
    v14 = sub_21DBF843C();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(a2 + v13, 1, v14))
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50, &unk_21DC2E420);
      memcpy((a1 + v13), (a2 + v13), *(*(v16 - 8) + 64));
    }

    else
    {
      (*(v15 + 16))(a1 + v13, a2 + v13, v14);
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
    }
  }

  else
  {
    v6 = sub_21DBF54CC();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for TTRUnsavedAttachment(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a1 != a2)
  {
    sub_21D886B44(a1, a4);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v18 = *a2;
        *a1 = *a2;
        v19 = v18;
      }

      else
      {
        v8 = *a2;
        v9 = *(a2 + 8);
        sub_21D1BAF70(*a2, v9);
        *a1 = v8;
        *(a1 + 8) = v9;
        v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE38, &qword_21DC1ED90) + 48);
        v11 = sub_21DBF843C();
        (*(*(v11 - 8) + 16))(a1 + v10, a2 + v10, v11);
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v12 = *a2;
      v13 = *(a2 + 8);
      sub_21D1BAF70(*a2, v13);
      *a1 = v12;
      *(a1 + 8) = v13;
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      v14 = *(type metadata accessor for TTRDirectlySavableImageData(0) + 28);
      v15 = sub_21DBF843C();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(a2 + v14, 1, v15))
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50, &unk_21DC2E420);
        memcpy((a1 + v14), (a2 + v14), *(*(v17 - 8) + 64));
      }

      else
      {
        (*(v16 + 16))(a1 + v14, a2 + v14, v15);
        (*(v16 + 56))(a1 + v14, 0, 1, v15);
      }
    }

    else
    {
      v7 = sub_21DBF54CC();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_21D886B44(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for TTRUnsavedAttachment(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *initializeWithTake for TTRUnsavedAttachment(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
    {
      goto LABEL_9;
    }

    v11 = sub_21DBF54CC();
    (*(*(v11 - 8) + 32))(a1, a2, v11);
LABEL_15:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE38, &qword_21DC1ED90) + 48);
    v15 = sub_21DBF843C();
    (*(*(v15 - 8) + 32))(&a1[v14], &a2[v14], v15);
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *a2;
    a1[16] = a2[16];
    *(a1 + 24) = *(a2 + 24);
    v7 = *(type metadata accessor for TTRDirectlySavableImageData(0) + 28);
    v8 = sub_21DBF843C();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(&a2[v7], 1, v8))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50, &unk_21DC2E420);
      memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
    }

    else
    {
      (*(v9 + 32))(&a1[v7], &a2[v7], v8);
      (*(v9 + 56))(&a1[v7], 0, 1, v8);
    }

    goto LABEL_15;
  }

LABEL_9:
  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

char *assignWithTake for TTRUnsavedAttachment(char *a1, char *a2, uint64_t a3, __n128 a4)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D886B44(a1, a4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
    {
      goto LABEL_10;
    }

    v12 = sub_21DBF54CC();
    (*(*(v12 - 8) + 32))(a1, a2, v12);
LABEL_16:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE38, &qword_21DC1ED90) + 48);
    v16 = sub_21DBF843C();
    (*(*(v16 - 8) + 32))(&a1[v15], &a2[v15], v16);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *a2;
    a1[16] = a2[16];
    *(a1 + 24) = *(a2 + 24);
    v8 = *(type metadata accessor for TTRDirectlySavableImageData(0) + 28);
    v9 = sub_21DBF843C();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(&a2[v8], 1, v9))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50, &unk_21DC2E420);
      memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v10 + 32))(&a1[v8], &a2[v8], v9);
      (*(v10 + 56))(&a1[v8], 0, 1, v9);
    }

    goto LABEL_16;
  }

LABEL_10:
  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

uint64_t sub_21D887138(uint64_t a1)
{
  result = sub_21DBF843C();
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v6 = &v5;
    v7 = MEMORY[0x277D833E8] + 64;
    result = type metadata accessor for TTRDirectlySavableImageData(319);
    if (v3 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = sub_21DBF54CC();
      if (v4 <= 0x3F)
      {
        v9 = *(result - 8) + 64;
        v10 = v9;
        swift_initEnumMetadataMultiPayload();
        return 0;
      }
    }
  }

  return result;
}

unint64_t initializeBufferWithCopyOfBuffer for TTRDirectlySavableImageData(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = v13 + ((v5 + 16) & ~v5);
  }

  else
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    sub_21D1BAF70(*a2, v8);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    v9 = *(a3 + 28);
    v10 = sub_21DBF843C();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(a2 + v9, 1, v10))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50, &unk_21DC2E420);
      memcpy((a1 + v9), (a2 + v9), *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(a1 + v9, a2 + v9, v10);
      (*(v11 + 56))(a1 + v9, 0, 1, v10);
    }
  }

  return a1;
}

uint64_t destroy for TTRDirectlySavableImageData(uint64_t a1, uint64_t a2)
{
  sub_21D17B8A8(*a1, *(a1 + 8));
  v4 = *(a2 + 28);
  v5 = sub_21DBF843C();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}

uint64_t initializeWithCopy for TTRDirectlySavableImageData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  sub_21D1BAF70(*a2, v7);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v8 = *(a3 + 28);
  v9 = sub_21DBF843C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a2 + v8, 1, v9))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50, &unk_21DC2E420);
    memcpy((a1 + v8), (a2 + v8), *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(a1 + v8, a2 + v8, v9);
    (*(v10 + 56))(a1 + v8, 0, 1, v9);
  }

  return a1;
}

uint64_t assignWithCopy for TTRDirectlySavableImageData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  sub_21D1BAF70(*a2, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  sub_21D17B8A8(v8, v9);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v10 = *(a3 + 28);
  v11 = sub_21DBF843C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  LODWORD(v6) = v13(a1 + v10, 1, v11);
  v14 = v13(a2 + v10, 1, v11);
  if (!v6)
  {
    if (!v14)
    {
      (*(v12 + 24))(a1 + v10, a2 + v10, v11);
      return a1;
    }

    (*(v12 + 8))(a1 + v10, v11);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50, &unk_21DC2E420);
    memcpy((a1 + v10), (a2 + v10), *(*(v15 - 8) + 64));
    return a1;
  }

  (*(v12 + 16))(a1 + v10, a2 + v10, v11);
  (*(v12 + 56))(a1 + v10, 0, 1, v11);
  return a1;
}

uint64_t initializeWithTake for TTRDirectlySavableImageData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a3 + 28);
  v6 = sub_21DBF843C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2 + v5, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50, &unk_21DC2E420);
    memcpy((a1 + v5), (a2 + v5), *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1 + v5, a2 + v5, v6);
    (*(v7 + 56))(a1 + v5, 0, 1, v6);
  }

  return a1;
}

uint64_t assignWithTake for TTRDirectlySavableImageData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = *a2;
  sub_21D17B8A8(v6, v7);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v8 = *(a3 + 28);
  v9 = sub_21DBF843C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(a1 + v8, 1, v9);
  v13 = v11(a2 + v8, 1, v9);
  if (!v12)
  {
    if (!v13)
    {
      (*(v10 + 40))(a1 + v8, a2 + v8, v9);
      return a1;
    }

    (*(v10 + 8))(a1 + v8, v9);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50, &unk_21DC2E420);
    memcpy((a1 + v8), (a2 + v8), *(*(v14 - 8) + 64));
    return a1;
  }

  (*(v10 + 32))(a1 + v8, a2 + v8, v9);
  (*(v10 + 56))(a1 + v8, 0, 1, v9);
  return a1;
}

void sub_21D887A70(uint64_t a1)
{
  sub_21D887B1C(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21D887B1C(uint64_t a1)
{
  if (!qword_27CE63108)
  {
    sub_21DBF843C();
    v1 = sub_21DBFBA8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CE63108);
    }
  }
}

unint64_t sub_21D887B98()
{
  result = qword_27CE63110;
  if (!qword_27CE63110)
  {
    result = swift_getWitnessTable(byte_21DC2E63C, &type metadata for TTRDirectlySavableImageData.SavableDataConversionError, v0, v1);
    atomic_store(result, &qword_27CE63110);
  }

  return result;
}

uint64_t TTRGeoLocationService.locationAuthorizationStatus.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_21D887C0C, 0, 0);
}

void sub_21D887C0C()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager;
  v0[4] = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager;
  v3 = *(v1 + v2);
  v0[5] = v3;
  if (v3)
  {
    v4 = swift_allocObject();
    v0[6] = v4;
    *(v4 + 16) = v3;
    v5 = v3;
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_21D887D14;

    sub_21D3A5554(sub_21D1B7D8C, v4, 3.0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21D887D14(int a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_21D887E34, 0, 0);
}

void *sub_21D887E34()
{
  v1 = *(v0 + 64);

  if ((v1 - 1) < 2)
  {
    v3 = 3;
  }

  else if ((v1 - 3) >= 2)
  {
    if (v1)
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    result = *(*(v0 + 24) + *(v0 + 32));
    if (!result)
    {
      __break(1u);
      return result;
    }

    v3 = [result accuracyAuthorization] == 0;
  }

  **(v0 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

Swift::Void __swiftcall TTRGeoLocationService.startUpdatingCurrentLocationIfNeeded()()
{
  swift_getKeyPath(aH_4);
  swift_getKeyPath(aH_5);
  sub_21DBF916C();

  v1 = v3;
  if (!v3)
  {
    goto LABEL_5;
  }

  TTRGeoLocationService.resolveAddress(for:)(v3, &v3);

  if ((v6 >> 61) > 2)
  {
    if (v6 >> 61 == 3)
    {
      v2 = v4;

      return;
    }
  }

  else if ((v6 >> 61) < 2)
  {
    sub_21D47B42C(v3, v4, v5, v6);
LABEL_5:
    sub_21D888DC4(v0);
    return;
  }

  sub_21D47B42C(v3, v4, v5, v6);
}

uint64_t TTRGeoLocationAuthorizationStatus.shouldShowAsUnauthorizedForPreciseLocation.getter()
{
  v1 = *v0;
  if (v1 == 3)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1 ^ 1;
  }

  if (v1 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3 & 1;
}

double sub_21D887FEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_21D0D8CF0(0, &qword_27CE631A8, 0x277CBFC40);
    v4 = sub_21DBFA5EC();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

uint64_t sub_21D888090()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F0F0);
  v1 = __swift_project_value_buffer(v0, qword_280D0F0F0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRGeoLocationServiceResolvedLocation.Address.description.getter()
{
  v1 = *v0;
  if (*(v0 + 16) && *(v0 + 16) == 1)
  {
    sub_21DBF8E0C();
  }

  else
  {
    v2 = [*v0 description];
    v1 = sub_21DBFA16C();
  }

  return v1;
}

uint64_t TTRGeoLocationServiceResolvedLocation.Address.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 16))
  {
    v3 = 0;
LABEL_8:
    MEMORY[0x223D44FA0](v3);
    return sub_21DBFB64C();
  }

  if (*(v1 + 16) != 1)
  {
    v3 = 2;
    goto LABEL_8;
  }

  MEMORY[0x223D44FA0](1);

  return sub_21DBFA27C();
}

uint64_t TTRGeoLocationServiceResolvedLocation.Address.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_21DBFC7DC();
  if (!v1)
  {
    v2 = 0;
LABEL_6:
    MEMORY[0x223D44FA0](v2);
    sub_21DBFB64C();
    return sub_21DBFC82C();
  }

  if (v1 != 1)
  {
    v2 = 2;
    goto LABEL_6;
  }

  MEMORY[0x223D44FA0](1);
  sub_21DBFA27C();
  return sub_21DBFC82C();
}

uint64_t sub_21D888330()
{
  v1 = *v0;
  if (*(v0 + 16) && *(v0 + 16) == 1)
  {
    sub_21DBF8E0C();
  }

  else
  {
    v2 = [*v0 description];
    v1 = sub_21DBFA16C();
  }

  return v1;
}

uint64_t sub_21D8883C4()
{
  v1 = *(v0 + 16);
  sub_21DBFC7DC();
  if (!v1)
  {
    v2 = 0;
LABEL_6:
    MEMORY[0x223D44FA0](v2);
    sub_21DBFB64C();
    return sub_21DBFC82C();
  }

  if (v1 != 1)
  {
    v2 = 2;
    goto LABEL_6;
  }

  MEMORY[0x223D44FA0](1);
  sub_21DBFA27C();
  return sub_21DBFC82C();
}

uint64_t sub_21D88845C(uint64_t a1)
{
  if (!*(v1 + 16))
  {
    v3 = 0;
LABEL_8:
    MEMORY[0x223D44FA0](v3);
    return sub_21DBFB64C();
  }

  if (*(v1 + 16) != 1)
  {
    v3 = 2;
    goto LABEL_8;
  }

  MEMORY[0x223D44FA0](1);

  return sub_21DBFA27C();
}

uint64_t sub_21D8884F4(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_21DBFC7DC();
  if (!v2)
  {
    v3 = 0;
LABEL_6:
    MEMORY[0x223D44FA0](v3);
    sub_21DBFB64C();
    return sub_21DBFC82C();
  }

  if (v2 != 1)
  {
    v3 = 2;
    goto LABEL_6;
  }

  MEMORY[0x223D44FA0](1);
  sub_21DBFA27C();
  return sub_21DBFC82C();
}

unint64_t TTRGeoLocationServiceResolvedLocation.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24) >> 61;
  if (v4 <= 1)
  {
    if (v4)
    {
      sub_21DBFBEEC();

      v20 = 0xD000000000000013;
      if (v3 == 1)
      {
        v14.n128_f64[0] = sub_21D179E10(v1, v2, 1);
      }

      else
      {
        v17 = [v1 description];
        v1 = sub_21DBFA16C();
        v2 = v18;
      }

      MEMORY[0x223D42AA0](v1, v2, v14);
      goto LABEL_18;
    }

    sub_21DBFBEEC();

    v20 = 0xD000000000000013;
    v9 = [v1 description];
LABEL_8:
    v10 = v9;
    v11 = sub_21DBFA16C();
    v13 = v12;

    MEMORY[0x223D42AA0](v11, v13);
LABEL_18:

    goto LABEL_19;
  }

  if (v4 == 2)
  {
    v20 = 0x65766C6F7365722ELL;
    v9 = [v1 description];
    goto LABEL_8;
  }

  if (v4 == 3)
  {
    v20 = 0;
    sub_21DBFBEEC();
    MEMORY[0x223D42AA0](0xD000000000000010, 0x800000021DC6E630);
    v5 = [v1 description];
    v6 = sub_21DBFA16C();
    v8 = v7;

    MEMORY[0x223D42AA0](v6, v8);

    MEMORY[0x223D42AA0](8236, 0xE200000000000000);
  }

  else
  {
    v20 = 0;
    sub_21DBFBEEC();
    MEMORY[0x223D42AA0](0x4164656C6961662ELL, 0xEF28737365726464);
    if (v3 == 1)
    {
      sub_21DBF8E0C();
    }

    else
    {
      v15 = [v1 description];
      v1 = sub_21DBFA16C();
      v2 = v16;
    }

    MEMORY[0x223D42AA0](v1, v2);

    MEMORY[0x223D42AA0](44, 0xE100000000000000);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
  sub_21DBFC14C();
LABEL_19:
  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  return v20;
}

id TTRGeoLocationServiceResolvedLocation.resolvedPlacemark.getter()
{
  if (*(v0 + 24) >> 61 != 2)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t TTRGeoLocationAuthorizationStatus.description.getter()
{
  v1 = *v0;
  if (v1 == 2)
  {
    return 0x7265746544746F6ELL;
  }

  if (v1 == 3)
  {
    return 0x726F687475616E75;
  }

  sub_21DBFBEEC();

  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x223D42AA0](v3, v4);

  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  return 0xD000000000000014;
}

BOOL static TTRGeoLocationAuthorizationStatus.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t TTRGeoLocationService.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRGeoLocationService.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1820A0;
}

void TTRGeoLocationService.currentLocation.getter(_OWORD *a1@<X8>)
{
  swift_getKeyPath(aH_4);
  swift_getKeyPath(aH_5);
  sub_21DBF916C();

  v2 = *&v5[0];
  if (*&v5[0])
  {
    TTRGeoLocationService.resolveAddress(for:)(*&v5[0], v5);

    v4 = v5[0];
    v3 = v5[1];
  }

  else
  {
    v3 = xmmword_21DC2E6B0;
    v4 = 0uLL;
  }

  *a1 = v4;
  a1[1] = v3;
}

void sub_21D888CB0(void *a1)
{
  if (a1)
  {

    [a1 startUpdatingLocation];
  }

  else
  {
    if (qword_280D17E90 != -1)
    {
      swift_once();
    }

    v1 = sub_21DBF84BC();
    __swift_project_value_buffer(v1, qword_280D0F0F0);
    oslog = sub_21DBF84AC();
    v2 = sub_21DBFAEBC();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v2, "No permission for updating location. Skipping .startUpdatingLocation()", v3, 2u);
      MEMORY[0x223D46520](v3, -1, -1);
    }
  }
}

void sub_21D888DC4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager;
  v3 = *(a1 + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager);
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = [v3 authorizationStatus];
  if (v4 - 1 >= 4 && !v4)
  {
    v5 = (a1 + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_blockToPerformAfterRequestingInUseAuthorization);
    v6 = *(a1 + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_blockToPerformAfterRequestingInUseAuthorization);
    v7 = *(a1 + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_blockToPerformAfterRequestingInUseAuthorization + 8);
    *v5 = sub_21D888CB0;
    v5[1] = 0;
    sub_21D0D0E88(v6, v7);
    v8 = *(a1 + v2);
    if (v8)
    {

      [v8 requestWhenInUseAuthorization];
      return;
    }

LABEL_12:
    __break(1u);
    return;
  }

  sub_21D889774(a1);
}

uint64_t TTRGeoLocationService.checkAndRequestLocationAccessIfNeeded()()
{
  v1[2] = v0;
  v1[3] = sub_21DBFA84C();
  v1[4] = sub_21DBFA83C();

  return MEMORY[0x2822009F8](sub_21D888EFC, 0, 0);
}

void sub_21D888EFC()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager;
  v0[5] = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager;
  v3 = *(v1 + v2);
  v0[6] = v3;
  if (v3)
  {
    v0[7] = *(v1 + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_authorizationTracker);
    v4 = swift_allocObject();
    v0[8] = v4;
    *(v4 + 16) = v3;
    v5 = v3;
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_21D889008;

    sub_21D3A5554(sub_21D8911C4, v4, 3.0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21D889008(int a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_21D889128, 0, 0);
}

uint64_t sub_21D889128()
{
  v2 = sub_21DBFA7CC();
  *(v0 + 80) = v2;
  *(v0 + 88) = v1;

  return MEMORY[0x2822009F8](sub_21D8891AC, v2, v1);
}

void *sub_21D8891AC()
{
  v1 = *(v0 + 104);
  if ((v1 - 1) < 4)
  {

    if (qword_280D17E90 != -1)
    {
      swift_once();
    }

    v2 = sub_21DBF84BC();
    __swift_project_value_buffer(v2, qword_280D0F0F0);
    v3 = sub_21DBF84AC();
    v4 = sub_21DBFAEDC();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_20;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Location status already determined; will not request for location authorization";
LABEL_19:
    _os_log_impl(&dword_21D0C9000, v3, v4, v6, v5, 2u);
    MEMORY[0x223D46520](v5, -1, -1);
LABEL_20:

    v14 = *(v0 + 8);

    return v14();
  }

  if (v1)
  {

    if (qword_280D17E90 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F0F0);
    v3 = sub_21DBF84AC();
    v4 = sub_21DBFAEBC();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_20;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Error determining location status; will not request for location authorization";
    goto LABEL_19;
  }

  result = *(*(v0 + 16) + *(v0 + 40));
  if (result)
  {
    [result requestWhenInUseAuthorization];
    if (qword_280D17E90 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_280D0F0F0);
    v9 = sub_21DBF84AC();
    v10 = sub_21DBFAEDC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21D0C9000, v9, v10, "requestWhenInUseAuthorization", v11, 2u);
      MEMORY[0x223D46520](v11, -1, -1);
    }

    v12 = swift_task_alloc();
    *(v0 + 96) = v12;
    *v12 = v0;
    v12[1] = sub_21D8894B4;

    return sub_21D3A64E4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D8894B4()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_21D454AAC, v3, v2);
}

id TTRGeoLocationService.syncLocationAuthorizationStatus.getter@<X0>(char *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager;
  result = *(v1 + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = [result authorizationStatus];
  if ((result - 1) < 2)
  {
LABEL_8:
    v5 = 3;
    goto LABEL_9;
  }

  if ((result - 3) >= 2)
  {
    if (!result)
    {
      v5 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  result = *(v1 + v3);
  if (result)
  {
    result = [result accuracyAuthorization];
    v5 = result == 0;
LABEL_9:
    *a1 = v5;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21D889694(const char *a1, const char *a2)
{
  swift_getKeyPath(a1);
  swift_getKeyPath(a2);
  sub_21DBF916C();

  return v4;
}

uint64_t sub_21D889700()
{
  swift_getKeyPath(aH_4);
  swift_getKeyPath(aH_5);
  sub_21DBF916C();

  return v1;
}

void sub_21D889774(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager;
  v3 = *(a1 + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager);
  if (v3)
  {
    if ([v3 authorizationStatus] - 3 >= 2)
    {
      if (qword_280D17E90 != -1)
      {
        swift_once();
      }

      v5 = sub_21DBF84BC();
      __swift_project_value_buffer(v5, qword_280D0F0F0);
      v6 = sub_21DBF84AC();
      v7 = sub_21DBFAEBC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v14 = v9;
        *v8 = 136315138;
        v10 = sub_21DBFB38C();
        v12 = sub_21D0CDFB4(v10, v11, &v14);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_21D0C9000, v6, v7, "Authorization not granted by the user. {authorizationStatus: %s}", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x223D46520](v9, -1, -1);
        MEMORY[0x223D46520](v8, -1, -1);
      }

      sub_21D888CB0(0);
    }

    else
    {
      v4 = *(a1 + v2);
      v13 = v4;
      sub_21D888CB0(v4);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D88993C(void (*a1)(void *))
{
  v3 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager;
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager);
  if (v4)
  {
    if ([v4 authorizationStatus] - 3 > 1)
    {
      if (qword_280D17E90 != -1)
      {
        swift_once();
      }

      v6 = sub_21DBF84BC();
      __swift_project_value_buffer(v6, qword_280D0F0F0);
      v7 = sub_21DBF84AC();
      v8 = sub_21DBFAEBC();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v15 = v10;
        *v9 = 136315138;
        v11 = sub_21DBFB38C();
        v13 = sub_21D0CDFB4(v11, v12, &v15);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_21D0C9000, v7, v8, "Authorization not granted by the user. {authorizationStatus: %s}", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
        MEMORY[0x223D46520](v10, -1, -1);
        MEMORY[0x223D46520](v9, -1, -1);
      }

      a1(0);
    }

    else
    {
      v5 = *(v1 + v3);
      v14 = v5;
      a1(v5);
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_21D889B18()
{
  v2 = v0;
  v3 = sub_21DBF9D8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  *v6 = sub_21DBFB12C();
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v7 = sub_21DBF9DAC();
  v9 = *(v4 + 8);
  v8 = (v4 + 8);
  v9(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_47:
    swift_once();
LABEL_7:
    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_280D0F0F0);
    sub_21D179D54(v1, v8, v6, v3);
    v13 = sub_21DBF84AC();
    v14 = sub_21DBFAE9C();
    sub_21D0D73FC(v1, v8, v6, v3);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v109 = v3;
      v110[0] = v16;
      *v15 = 136315138;
      v106 = v1;
      v107 = v8;
      v108 = v6;
      v17 = TTRGeoLocationServiceResolvedLocation.description.getter();
      v19 = sub_21D0CDFB4(v17, v18, v110);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_21D0C9000, v13, v14, "Queueing geocoding request because of other request in flight {currentGeocodingLocation: %s}", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x223D46520](v16, -1, -1);
      MEMORY[0x223D46520](v15, -1, -1);
      sub_21D0D73FC(v1, v8, v6, v3);
    }

    else
    {

      sub_21D0D73FC(v1, v8, v6, v3);
    }

    return result;
  }

  v10 = &v2[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation];
  v6 = *&v2[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation + 16];
  v3 = *&v2[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation + 24];
  if (v6 >> 2 != 0xFFFFFFFF || (v3 & 0xF000000000000007) != 0)
  {
    v1 = *v10;
    v8 = *(v10 + 1);
    sub_21D179D54(v1, v8, *&v2[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation + 16], *&v2[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation + 24]);
    if (qword_280D17E90 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

  v21 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_pendingLocationsToResolve;
  swift_beginAccess();
  if (*(*&v2[v21] + 16))
  {
    if (qword_280D17E90 != -1)
    {
      swift_once();
    }

    v22 = sub_21DBF84BC();
    v23 = __swift_project_value_buffer(v22, qword_280D0F0F0);
    v24 = v2;
    v25 = sub_21DBF84AC();
    v26 = sub_21DBFAE9C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = *(*&v2[v21] + 16);

      _os_log_impl(&dword_21D0C9000, v25, v26, "Dequeueing next locationToResolve {pendingLocationsToResolve.count: %ld}", v27, 0xCu);
      MEMORY[0x223D46520](v27, -1, -1);
    }

    else
    {

      v25 = v24;
    }

    swift_beginAccess();
    v32 = *&v2[v21];
    if (v32[2])
    {
      v101 = v23;
      v34 = v32[4];
      v33 = v32[5];
      v35 = v32[7];
      v37 = v32[8];
      v36 = v32[9];
      v105 = v32[6];
      sub_21D179D54(v34, v33, v105, v35);
      sub_21D0D0E78(v37, v36);
      sub_21DBD1670(0, 1);
      swift_endAccess();
      v104 = v24;
      if (v37)
      {
        v38 = swift_allocObject();
        *(v38 + 16) = v37;
        *(v38 + 24) = v36;
        v39 = sub_21D25A920;
      }

      else
      {
        v39 = 0;
        v38 = 0;
      }

      v40 = v105;
      sub_21D179D54(v34, v33, v105, v35);
      sub_21D0D0E78(v39, v38);
      sub_21D0D0E88(v39, v38);
      sub_21D179D54(v34, v33, v40, v35);
      v102 = v39;
      v103 = v38;
      sub_21D0D0E78(v39, v38);
      sub_21D47B42C(v34, v33, v40, v35);
      v41 = *v10;
      v42 = *(v10 + 1);
      v44 = *(v10 + 2);
      v43 = *(v10 + 3);
      *v10 = v34;
      *(v10 + 1) = v33;
      *(v10 + 2) = v40;
      *(v10 + 3) = v35;
      sub_21D179D54(v34, v33, v40, v35);
      sub_21D0D73FC(v41, v42, v44, v43);
      v45 = v35 >> 61;
      if ((v35 >> 61) <= 1)
      {
        if (!v45)
        {
          v62 = v34;
          v64 = v102;
          v63 = v103;
          sub_21D88A768(v62, v102, v103);
          v65 = v105;
          sub_21D47B42C(v34, v33, v105, v35);
          sub_21D0D0E88(v64, v63);
          sub_21D0D0E88(v64, v63);
          sub_21D47B42C(v34, v33, v65, v35);
          v66 = v34;
          v67 = v33;
          v68 = v65;
LABEL_42:
          sub_21D47B42C(v66, v67, v68, v35);
          return result;
        }

        v106 = v34;
        v107 = v33;
        v80 = v105;
        LOBYTE(v108) = v105;
        sub_21D179E10(v34, v33, v105);
        v82 = v102;
        v81 = v103;
        sub_21D88A9EC(&v106, v102, v103);
      }

      else
      {
        if (v45 != 2)
        {
          if (v45 == 3)
          {
            v46 = v34;
            v47 = v33;
            v48 = sub_21DBF84AC();
            v49 = sub_21DBFAEDC();

            v50 = os_log_type_enabled(v48, v49);
            v51 = v105;
            if (v50)
            {
              v52 = swift_slowAlloc();
              v53 = swift_slowAlloc();
              v100 = v53;
              v101 = swift_slowAlloc();
              v106 = v101;
              *v52 = 138412546;
              *(v52 + 4) = v46;
              *v53 = v34;
              *(v52 + 12) = 2080;
              swift_getErrorValue();
              v54 = v46;
              v55 = sub_21DBFC74C();
              v57 = sub_21D0CDFB4(v55, v56, &v106);

              *(v52 + 14) = v57;
              v51 = v105;
              _os_log_impl(&dword_21D0C9000, v48, v49, "Retrying failed location {location: %@, error: %s}", v52, 0x16u);
              v58 = v100;
              sub_21D0CF7E0(v100, &unk_27CE60070, &unk_21DC09550);
              MEMORY[0x223D46520](v58, -1, -1);
              v59 = v101;
              __swift_destroy_boxed_opaque_existential_0(v101);
              MEMORY[0x223D46520](v59, -1, -1);
              MEMORY[0x223D46520](v52, -1, -1);
            }

            v60 = v103;
            v61 = v102;
            sub_21D88A768(v46, v102, v103);
            sub_21D47B42C(v34, v33, v51, v35);
            sub_21D0D0E88(v61, v60);
            sub_21D0D0E88(v61, v60);
            sub_21D47B42C(v34, v33, v51, v35);
          }

          else
          {
            v83 = v105;
            sub_21D179E10(v34, v33, v105);
            sub_21D179E10(v34, v33, v83);
            v84 = (v35 & 0x1FFFFFFFFFFFFFFFLL);
            v85 = sub_21DBF84AC();
            v86 = sub_21DBFAEDC();
            sub_21D181CB8(v34, v33, v83);

            if (os_log_type_enabled(v85, v86))
            {
              v87 = swift_slowAlloc();
              v88 = swift_slowAlloc();
              v106 = v88;
              *v87 = 136315394;
              if (v83 == 1)
              {
                sub_21DBF8E0C();
                v89 = v34;
                v90 = v33;
              }

              else
              {
                v91 = [v34 description];
                v101 = v88;
                v92 = v91;
                v89 = sub_21DBFA16C();
                v90 = v93;

                v88 = v101;
              }

              v94 = sub_21D0CDFB4(v89, v90, &v106);

              *(v87 + 4) = v94;
              *(v87 + 12) = 2080;
              swift_getErrorValue();
              v95 = sub_21DBFC74C();
              v97 = sub_21D0CDFB4(v95, v96, &v106);

              *(v87 + 14) = v97;
              _os_log_impl(&dword_21D0C9000, v85, v86, "Retrying failed address {address: %s, error: %s}", v87, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D46520](v88, -1, -1);
              MEMORY[0x223D46520](v87, -1, -1);
            }

            v106 = v34;
            v107 = v33;
            LOBYTE(v108) = v83;
            v99 = v102;
            v98 = v103;
            sub_21D88A9EC(&v106, v102, v103);
            sub_21D47B42C(v34, v33, v83, v35);
            sub_21D0D0E88(v99, v98);
            sub_21D0D0E88(v99, v98);
            sub_21D47B42C(v34, v33, v83, v35);
            return sub_21D181CB8(v34, v33, v83);
          }

          return result;
        }

        v69 = v105;
        sub_21D179D54(v34, v33, v105, v35);
        v70 = v34;
        v71 = sub_21DBF84AC();
        v72 = sub_21DBFAE9C();
        sub_21D47B42C(v34, v33, v69, v35);
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          *v73 = 138412290;
          *(v73 + 4) = v70;
          *v74 = v34;
          v75 = v70;
          _os_log_impl(&dword_21D0C9000, v71, v72, "Tried to resolve already resolved location -- Next {placemark: %@}", v73, 0xCu);
          sub_21D0CF7E0(v74, &unk_27CE60070, &unk_21DC09550);
          MEMORY[0x223D46520](v74, -1, -1);
          MEMORY[0x223D46520](v73, -1, -1);
        }

        v76 = *v10;
        v77 = *(v10 + 1);
        v78 = *(v10 + 2);
        v79 = *(v10 + 3);
        *v10 = 0;
        *(v10 + 1) = 0;
        *(v10 + 1) = xmmword_21DC2E6B0;
        sub_21D0D73FC(v76, v77, v78, v79);
        v80 = v105;
        v82 = v102;
        v81 = v103;
        if (v37)
        {
          v106 = v34;
          v107 = v33;
          v108 = v105;
          v109 = v35;

          (v82)(&v106);
          sub_21D0D0E88(v82, v81);
        }

        sub_21D889B18();
      }

      sub_21D47B42C(v34, v33, v80, v35);
      sub_21D0D0E88(v82, v81);
      sub_21D0D0E88(v82, v81);
      sub_21D47B42C(v34, v33, v80, v35);
      v66 = v34;
      v67 = v33;
      v68 = v80;
      goto LABEL_42;
    }

    __break(1u);
    goto LABEL_49;
  }

  if (qword_280D17E90 != -1)
  {
LABEL_49:
    swift_once();
  }

  v28 = sub_21DBF84BC();
  __swift_project_value_buffer(v28, qword_280D0F0F0);
  v29 = sub_21DBF84AC();
  v30 = sub_21DBFAE9C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_21D0C9000, v29, v30, "All locations have been resolved -- Done", v31, 2u);
    MEMORY[0x223D46520](v31, -1, -1);
  }

  return result;
}

void sub_21D88A768(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_280D17E90 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F0F0);
  v9 = a1;
  v10 = sub_21DBF84AC();
  v11 = sub_21DBFAE9C();

  if (os_log_type_enabled(v10, v11))
  {
    v25 = a3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v14 = [v9 description];
    v15 = sub_21DBFA16C();
    v17 = v16;

    v18 = sub_21D0CDFB4(v15, v17, aBlock);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_21D0C9000, v10, v11, "Reverse Geocoding location {location: %s}", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x223D46520](v13, -1, -1);
    v19 = v12;
    a3 = v25;
    MEMORY[0x223D46520](v19, -1, -1);
  }

  v20 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
  v21 = swift_allocObject();
  v21[2] = v4;
  v21[3] = v9;
  v21[4] = a2;
  v21[5] = a3;
  aBlock[4] = sub_21D89115C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D887FEC;
  aBlock[3] = &block_descriptor_60_1;
  v22 = _Block_copy(aBlock);
  v23 = v9;
  v24 = v4;
  sub_21D0D0E78(a2, a3);

  [v20 reverseGeocodeLocation:v23 completionHandler:v22];
  _Block_release(v22);
}

void sub_21D88A9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (qword_280D17E90 != -1)
  {
    swift_once();
  }

  v10 = sub_21DBF84BC();
  __swift_project_value_buffer(v10, qword_280D0F0F0);
  sub_21D179E10(v7, v8, v9);
  v11 = sub_21DBF84AC();
  v12 = sub_21DBFAE9C();
  sub_21D181CB8(v7, v8, v9);
  if (os_log_type_enabled(v11, v12))
  {
    v30 = v4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136315138;
    v31 = a2;
    aBlock = v14;
    if (v9 == 1)
    {
      sub_21DBF8E0C();
      v15 = v7;
      v16 = v8;
    }

    else
    {
      v29 = a3;
      v17 = [v7 description];
      v15 = sub_21DBFA16C();
      v16 = v18;

      a3 = v29;
    }

    v19 = sub_21D0CDFB4(v15, v16, &aBlock);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_21D0C9000, v11, v12, "Geocoding address {address: %s}", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x223D46520](v14, -1, -1);
    MEMORY[0x223D46520](v13, -1, -1);

    v4 = v30;
    a2 = v31;
  }

  else
  {
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v20 + 24) = v7;
  *(v20 + 32) = v8;
  *(v20 + 40) = v9;
  *(v20 + 48) = a2;
  *(v20 + 56) = a3;
  v21 = objc_allocWithZone(MEMORY[0x277CBFBE8]);
  sub_21D179E10(v7, v8, v9);
  v22 = v4;
  sub_21D0D0E78(a2, a3);
  v23 = [v21 init];
  if (v9)
  {
    if (v9 == 1)
    {
      v24 = sub_21DBFA12C();
      v36 = sub_21D891178;
      v37 = v20;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_21D887FEC;
      v35 = &block_descriptor_78_4;
      v25 = _Block_copy(&aBlock);

      [v23 geocodeAddressString:v24 completionHandler:v25];
    }

    else
    {
      v27 = [objc_allocWithZone(MEMORY[0x277CD4E38]) initWithCompletion_];
      v24 = [objc_allocWithZone(MEMORY[0x277CD4E20]) initWithRequest_];

      v28 = swift_allocObject();
      *(v28 + 16) = sub_21D891178;
      *(v28 + 24) = v20;
      v36 = sub_21D89118C;
      v37 = v28;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_21D55C8BC;
      v35 = &block_descriptor_75_1;
      v25 = _Block_copy(&aBlock);

      [v24 startWithCompletionHandler_];
    }

    _Block_release(v25);
  }

  else
  {
    v36 = sub_21D891178;
    v37 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_21D887FEC;
    v35 = &block_descriptor_81_0;
    v26 = _Block_copy(&aBlock);

    [v23 geocodePostalAddress:v7 completionHandler:v26];

    _Block_release(v26);
  }
}

uint64_t sub_21D88AEBC(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v26 = sub_21DBF9D2C();
  v30 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DBF9D5C();
  v28 = *(v14 - 8);
  v29 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v27 = sub_21DBFB12C();
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a2;
  v17[7] = a1;
  aBlock[4] = sub_21D891168;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_66_4;
  v18 = _Block_copy(aBlock);
  v19 = a3;
  v20 = a4;
  sub_21D0D0E78(a5, a6);
  v21 = a2;
  sub_21DBF8E0C();

  sub_21DBF9D4C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21D0CD898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0, MEMORY[0x277D83970]);
  v22 = v26;
  sub_21DBFBCBC();
  v23 = v27;
  MEMORY[0x223D438F0](0, v16, v13, v18);
  _Block_release(v18);

  (*(v30 + 8))(v13, v22);
  return (*(v28 + 8))(v16, v29);
}

void sub_21D88B1BC(int a1, void *a2, void (*a3)(void **), int a4, id a5, unint64_t a6)
{
  if (!a5)
  {
    if (a6)
    {
      v23 = a6 & 0xFFFFFFFFFFFFFF8;
      if (a6 >> 62)
      {
        v39 = a6;
        v40 = sub_21DBFBD7C();
        a6 = v39;
        if (v40)
        {
LABEL_12:
          if ((a6 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x223D44740](0, a6);
          }

          else
          {
            if (!*(v23 + 16))
            {
              __break(1u);
LABEL_38:
              swift_once();
LABEL_19:
              v27 = sub_21DBF84BC();
              __swift_project_value_buffer(v27, qword_280D0F0F0);
              v28 = a2;
              v29 = v50;
              v30 = sub_21DBF84AC();
              v31 = sub_21DBFAECC();

              if (os_log_type_enabled(v30, v31))
              {
                v32 = swift_slowAlloc();
                v33 = swift_slowAlloc();
                *v32 = 138412546;
                *(v32 + 4) = v28;
                *(v32 + 12) = 2112;
                *(v32 + 14) = v29;
                *v33 = v28;
                v33[1] = v29;
                v34 = v28;
                v35 = v29;
                _os_log_impl(&dword_21D0C9000, v30, v31, "Reverse geocoder yielded placemark without a postal address -- failed to resolve location {location: %@, placemark: %@}", v32, 0x16u);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070, &unk_21DC09550);
                swift_arrayDestroy();
                MEMORY[0x223D46520](v33, -1, -1);
                MEMORY[0x223D46520](v32, -1, -1);
              }

              v36 = objc_opt_self();
              v50 = v28;
              v37 = sub_21DBFA12C();
              v38 = [v36 internalErrorWithDebugDescription_];

              v51 = v28;
              v52 = v38;
              v53 = xmmword_21DC2E6C0;
              sub_21D88B8CC(v50, &v51);
              if (a3)
              {
                v51 = v28;
                v52 = v38;
                v53 = xmmword_21DC2E6C0;
                a3(&v51);

                return;
              }

LABEL_32:
              goto LABEL_33;
            }

            v24 = *(a6 + 32);
          }

          v50 = v24;
          v25 = [v24 postalAddress];
          if (v25)
          {

            v51 = v50;
            v52 = 0;
            *&v53 = 0;
            *(&v53 + 1) = 0x4000000000000000;
            v26 = sub_21D88B8CC(a2, &v51);
            if (a3)
            {
              v51 = v50;
              v52 = 0;
              *&v53 = 0;
              *(&v53 + 1) = 0x4000000000000000;
              (a3)(&v51, v26);
LABEL_31:

              return;
            }

LABEL_33:

            goto LABEL_31;
          }

          if (qword_280D17E90 == -1)
          {
            goto LABEL_19;
          }

          goto LABEL_38;
        }
      }

      else if (*((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }
    }

    if (qword_280D17E90 != -1)
    {
      swift_once();
    }

    v41 = sub_21DBF84BC();
    __swift_project_value_buffer(v41, qword_280D0F0F0);
    v42 = a2;
    v43 = sub_21DBF84AC();
    v44 = sub_21DBFAECC();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      *(v45 + 4) = v42;
      *v46 = v42;
      v47 = v42;
      _os_log_impl(&dword_21D0C9000, v43, v44, "Reverse geocoder finished without placemarks -- Failed to resolve location {location: %@}", v45, 0xCu);
      sub_21D0CF7E0(v46, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v46, -1, -1);
      MEMORY[0x223D46520](v45, -1, -1);
    }

    v48 = objc_opt_self();
    v50 = v42;
    v49 = sub_21DBFA12C();
    v38 = [v48 internalErrorWithDebugDescription_];

    v51 = v42;
    v52 = v38;
    v53 = xmmword_21DC2E6C0;
    sub_21D88B8CC(v50, &v51);
    if (a3)
    {
      v51 = v42;
      v52 = v38;
      v53 = xmmword_21DC2E6C0;
      a3(&v51);

      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v9 = a5;
  if (qword_280D17E90 != -1)
  {
    swift_once();
  }

  v10 = sub_21DBF84BC();
  __swift_project_value_buffer(v10, qword_280D0F0F0);
  v11 = a5;
  v12 = a2;
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAEBC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v51 = v17;
    *v15 = 136315394;
    swift_getErrorValue();
    v18 = sub_21DBFC74C();
    v20 = sub_21D0CDFB4(v18, v19, &v51);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v12;
    *v16 = v12;
    v21 = v12;
    _os_log_impl(&dword_21D0C9000, v13, v14, "Failed to reverse geocode location {error: %s, location: %@}", v15, 0x16u);
    sub_21D0CF7E0(v16, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x223D46520](v17, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v51 = v12;
  v52 = a5;
  v53 = xmmword_21DC2E6C0;
  v22 = v12;
  sub_21D88B8CC(v22, &v51);
  if (a3)
  {
    v51 = v12;
    v52 = a5;
    v53 = xmmword_21DC2E6C0;
    a3(&v51);
  }
}

double sub_21D88B8CC(void *a1, uint64_t a2)
{
  v3 = v2;
  v48 = a1;
  ObjectType = swift_getObjectType();
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  *v9 = sub_21DBFB12C();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  LOBYTE(a2) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if (a2)
  {
    v47 = v3;
    if (qword_280D17E90 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F0F0);
  sub_21D179D54(v10, v11, v12, v13);
  v15 = sub_21DBF84AC();
  v16 = v13;
  v17 = sub_21DBFAEDC();
  sub_21D47B42C(v10, v11, v12, v16);
  v18 = os_log_type_enabled(v15, v17);
  v46 = ObjectType;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v49[0] = v20;
    *v19 = 136315138;
    v50[0] = v10;
    v50[1] = v11;
    v50[2] = v12;
    v51 = v16;
    v21 = TTRGeoLocationServiceResolvedLocation.description.getter();
    v23 = v16;
    v24 = sub_21D0CDFB4(v21, v22, v49);

    *(v19 + 4) = v24;
    v16 = v23;
    _os_log_impl(&dword_21D0C9000, v15, v17, "Location resolved {resolution: %s}", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x223D46520](v20, -1, -1);
    MEMORY[0x223D46520](v19, -1, -1);
  }

  swift_getKeyPath(byte_21DC2E778);
  swift_getKeyPath(byte_21DC2E7A0);
  sub_21D179D54(v10, v11, v12, v16);
  v25 = v48;
  v26 = v47;
  v48 = sub_21DBF915C();
  v28 = v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49[0] = *v28;
  *v28 = 0x8000000000000000;
  v42 = v10;
  v43 = v11;
  v44 = v12;
  v45 = v16;
  sub_21D479204(v10, v11, v12, v16, v25, isUniquelyReferenced_nonNull_native);

  v30 = v48;
  *v28 = v49[0];
  v30(v50, 0);

  v31 = &v26[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v32 = *(v31 + 1);
    v33 = swift_getObjectType();
    v51 = v46;
    v52 = &protocol witness table for TTRGeoLocationService;
    v49[0] = v42;
    v49[1] = v43;
    v49[2] = v44;
    v49[3] = v45;
    v50[0] = v26;
    v34 = *(v32 + 24);
    v35 = v26;
    v34(v50, v25, v49, v33, v32);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(v50);
  }

  v36 = &v26[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation];
  v37 = *&v26[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation];
  v38 = *&v26[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation + 8];
  v39 = *&v26[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation + 16];
  v40 = *&v26[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation + 24];
  *v36 = 0;
  *(v36 + 1) = 0;
  *(v36 + 1) = xmmword_21DC2E6B0;
  sub_21D0D73FC(v37, v38, v39, v40);
  return sub_21D889B18();
}

uint64_t sub_21D88BD10(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v31 = sub_21DBF9D2C();
  v35 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21DBF9D5C();
  v33 = *(v17 - 8);
  v34 = v17;
  MEMORY[0x28223BE20](v17);
  v29 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v32 = sub_21DBFB12C();
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  *(v19 + 32) = a5;
  *(v19 + 40) = a6;
  *(v19 + 48) = a7;
  *(v19 + 56) = a8;
  *(v19 + 64) = a2;
  *(v19 + 72) = a1;
  aBlock[4] = sub_21D891194;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_87_2;
  v20 = _Block_copy(aBlock);
  v21 = a3;
  sub_21D179E10(a4, a5, a6);
  sub_21D0D0E78(a7, a8);
  v22 = a2;
  sub_21DBF8E0C();

  v23 = v29;
  sub_21DBF9D4C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21D0CD898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60, &qword_21DC092C0);
  sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60, &qword_21DC092C0, MEMORY[0x277D83970]);
  v25 = v30;
  v24 = v31;
  sub_21DBFBCBC();
  v26 = v32;
  MEMORY[0x223D438F0](0, v23, v25, v20);
  _Block_release(v20);

  (*(v35 + 8))(v25, v24);
  return (*(v33 + 8))(v23, v34);
}

void sub_21D88C038(int a1, void *a2, unint64_t a3, char a4, void (*a5)(void), int a6, unint64_t a7, unint64_t a8)
{
  v8 = a5;
  if (a7)
  {
    v13 = a7;
    if (qword_280D17E90 != -1)
    {
      swift_once();
    }

    v14 = sub_21DBF84BC();
    __swift_project_value_buffer(v14, qword_280D0F0F0);
    v15 = a7;
    sub_21D179E10(a2, a3, a4);
    v16 = sub_21DBF84AC();
    v17 = sub_21DBFAEBC();

    sub_21D181CB8(a2, a3, a4);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v67 = v63;
      *v18 = 136315394;
      swift_getErrorValue();
      v19 = sub_21DBFC74C();
      v21 = sub_21D0CDFB4(v19, v20, &v67);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      if (a4 == 1)
      {
        sub_21DBF8E0C();
        v22 = a2;
        v23 = a3;
      }

      else
      {
        v28 = [a2 description];
        v22 = sub_21DBFA16C();
        v23 = v29;
      }

      v30 = sub_21D0CDFB4(v22, v23, &v67);

      *(v18 + 14) = v30;
      _os_log_impl(&dword_21D0C9000, v16, v17, "Failed to geocode address {error: %s, address: %s}", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v63, -1, -1);
      MEMORY[0x223D46520](v18, -1, -1);
    }

    v71 = a2;
    v72 = a3;
    v73 = a4;
    v67 = a2;
    v68 = a3;
    v69 = a4;
    v70 = a7 | 0x8000000000000000;
    sub_21D179E10(a2, a3, a4);
    v31 = sub_21D88C94C(&v71, &v67);
    if (a5)
    {
      v67 = a2;
      v68 = a3;
      v69 = a4;
      v70 = a7 | 0x8000000000000000;
      (a5)(&v67, v31);
    }

    sub_21D181CB8(a2, a3, a4);
    v32 = a7;
    goto LABEL_46;
  }

  if (!a8)
  {
    goto LABEL_35;
  }

  v24 = a8 & 0xFFFFFFFFFFFFFF8;
  if (!(a8 >> 62))
  {
    if (*((a8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_35:
    if (qword_280D17E90 != -1)
    {
      swift_once();
    }

    v49 = sub_21DBF84BC();
    __swift_project_value_buffer(v49, qword_280D0F0F0);
    sub_21D179E10(a2, a3, a4);
    v50 = sub_21DBF84AC();
    v51 = sub_21DBFAECC();
    sub_21D181CB8(a2, a3, a4);
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v67 = v53;
      *v52 = 136315138;
      if (a4 == 1)
      {
        sub_21DBF8E0C();
        v54 = a2;
        v55 = a3;
      }

      else
      {
        v66 = v8;
        v56 = [a2 description];
        v54 = sub_21DBFA16C();
        v55 = v57;

        v8 = v66;
      }

      v58 = sub_21D0CDFB4(v54, v55, &v67);

      *(v52 + 4) = v58;
      _os_log_impl(&dword_21D0C9000, v50, v51, "Geocoder finished without placemarks -- Failed to resolve address {address: %s}", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x223D46520](v53, -1, -1);
      MEMORY[0x223D46520](v52, -1, -1);
    }

    else
    {
    }

    v59 = objc_opt_self();
    sub_21D179E10(a2, a3, a4);
    v60 = sub_21DBFA12C();
    v45 = [v59 internalErrorWithDebugDescription_];

    v71 = a2;
    v72 = a3;
    v73 = a4;
    v67 = a2;
    v68 = a3;
    v69 = a4;
    v70 = v45 | 0x8000000000000000;
    v61 = sub_21D88C94C(&v71, &v67);
    if (!v8)
    {
      sub_21D181CB8(a2, a3, a4);
      v32 = v45;

      goto LABEL_46;
    }

    v67 = a2;
    v68 = a3;
    v69 = a4;
    v70 = v45 | 0x8000000000000000;
    v8(&v67, v61);
    goto LABEL_45;
  }

  v47 = a8;
  v48 = sub_21DBFBD7C();
  a8 = v47;
  if (!v48)
  {
    goto LABEL_35;
  }

LABEL_10:
  if ((a8 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x223D44740](0, a8);
LABEL_13:
    v62 = v25;
    v26 = [v25 location];
    if (v26)
    {

      v71 = a2;
      v72 = a3;
      v73 = a4;
      v67 = v62;
      v68 = 0;
      v69 = 0;
      v70 = 0x4000000000000000;
      v27 = sub_21D88C94C(&v71, &v67);
      if (v8)
      {
        v67 = v62;
        v68 = 0;
        v69 = 0;
        v70 = 0x4000000000000000;
        v8(&v67, v27);

        return;
      }

      goto LABEL_31;
    }

    if (qword_280D17E90 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

  if (*(v24 + 16))
  {
    v25 = *(a8 + 32);
    goto LABEL_13;
  }

  __break(1u);
LABEL_52:
  swift_once();
LABEL_22:
  v33 = sub_21DBF84BC();
  __swift_project_value_buffer(v33, qword_280D0F0F0);
  sub_21D179E10(a2, a3, a4);
  v34 = sub_21DBF84AC();
  v35 = sub_21DBFAECC();
  sub_21D181CB8(a2, a3, a4);
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v67 = v37;
    *v36 = 136315138;
    if (a4 == 1)
    {
      sub_21DBF8E0C();
      v38 = a2;
      v39 = a3;
    }

    else
    {
      v65 = v8;
      v40 = [a2 description];
      v38 = sub_21DBFA16C();
      v39 = v41;

      v8 = v65;
    }

    v42 = sub_21D0CDFB4(v38, v39, &v67);

    *(v36 + 4) = v42;
    _os_log_impl(&dword_21D0C9000, v34, v35, "Geocoder yielded placemark without location -- failed to resolve address {address: %s}", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x223D46520](v37, -1, -1);
    MEMORY[0x223D46520](v36, -1, -1);
  }

  else
  {
  }

  v43 = objc_opt_self();
  sub_21D179E10(a2, a3, a4);
  v44 = sub_21DBFA12C();
  v45 = [v43 internalErrorWithDebugDescription_];

  v71 = a2;
  v72 = a3;
  v73 = a4;
  v67 = a2;
  v68 = a3;
  v69 = a4;
  v70 = v45 | 0x8000000000000000;
  v46 = sub_21D88C94C(&v71, &v67);
  if (!v8)
  {
    sub_21D181CB8(a2, a3, a4);

LABEL_31:
    v32 = v62;

    goto LABEL_46;
  }

  v67 = a2;
  v68 = a3;
  v69 = a4;
  v70 = v45 | 0x8000000000000000;
  v8(&v67, v46);

LABEL_45:
  sub_21D181CB8(a2, a3, a4);
  v32 = v45;
LABEL_46:
}

double sub_21D88C94C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v58 = *(a1 + 8);
  KeyPath = v10;
  v11 = *(a1 + 16);
  v13 = *a2;
  v12 = *(a2 + 8);
  v15 = *(a2 + 16);
  v14 = *(a2 + 24);
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  *v9 = sub_21DBFB12C();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  LOBYTE(a2) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if (a2)
  {
    if (qword_280D17E90 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v57 = v3;
  v16 = sub_21DBF84BC();
  __swift_project_value_buffer(v16, qword_280D0F0F0);
  v17 = v15;
  v18 = v14;
  sub_21D179D54(v13, v12, v15, v14);
  v19 = sub_21DBF84AC();
  v20 = v13;
  v21 = v12;
  v22 = sub_21DBFAEDC();
  sub_21D47B42C(v13, v21, v15, v18);
  v23 = os_log_type_enabled(v19, v22);
  v60 = v13;
  if (v23)
  {
    v24 = v18;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v61[0] = v26;
    *v25 = 136315138;
    v64[0] = v20;
    v64[1] = v21;
    v64[2] = v15;
    v65 = v24;
    v27 = TTRGeoLocationServiceResolvedLocation.description.getter();
    v29 = sub_21D0CDFB4(v27, v28, v61);

    *(v25 + 4) = v29;
    v17 = v15;
    _os_log_impl(&dword_21D0C9000, v19, v22, "Address resolved {resolution: %s}", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x223D46520](v26, -1, -1);
    v30 = v25;
    v18 = v24;
    MEMORY[0x223D46520](v30, -1, -1);
  }

  v32 = v58;
  v31 = KeyPath;
  KeyPath = swift_getKeyPath(asc_21DC2E730);
  swift_getKeyPath(byte_21DC2E758);
  v33 = v60;
  sub_21D179D54(v60, v21, v17, v18);
  sub_21D179E10(v31, v32, v11);
  v34 = v57;
  v35 = v18;
  v58 = sub_21DBF915C();
  v37 = v36;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61[0] = *v37;
  *v37 = 0x8000000000000000;
  v39 = v33;
  v40 = v35;
  v54 = v21;
  v55 = v17;
  sub_21D479378(v39, v21, v17, v35, v31, v32, v11, isUniquelyReferenced_nonNull_native);
  v41 = sub_21D181CB8(v31, v32, v11);
  *v37 = v61[0];
  v58(v64, 0, v41);

  v42 = &v34[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v43 = *(v42 + 1);
    v44 = swift_getObjectType();
    v65 = ObjectType;
    v66 = &protocol witness table for TTRGeoLocationService;
    v64[0] = v34;
    v62[0] = v31;
    v62[1] = v32;
    v63 = v11;
    v61[0] = v60;
    v61[1] = v54;
    v61[2] = v55;
    v61[3] = v40;
    v45 = *(v43 + 16);
    v46 = v34;
    v45(v64, v62, v61, v44, v43);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(v64);
  }

  v47 = &v34[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation];
  v48 = *&v34[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation];
  v49 = *&v34[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation + 8];
  v50 = *&v34[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation + 16];
  v51 = *&v34[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_currentlyGeocodingLocation + 24];
  *v47 = 0;
  *(v47 + 1) = 0;
  *(v47 + 1) = xmmword_21DC2E6B0;
  sub_21D0D73FC(v48, v49, v50, v51);
  return sub_21D889B18();
}

void sub_21D88CDF8(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), __n128 a4)
{
  if (!a1)
  {
    v13 = 0;
    goto LABEL_14;
  }

  v14 = a2;
  v5 = [a1 mapItems];
  sub_21D0D8CF0(0, &qword_27CE632A8, 0x277CD4E80);
  v6 = sub_21DBFA5EC();

  if (v6 >> 62)
  {
    v7 = sub_21DBFBD7C();
    if (v7)
    {
LABEL_4:
      v15 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      if (v7 < 0)
      {
        __break(1u);
        return;
      }

      v8 = 0;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x223D44740](v8, v6);
        }

        else
        {
          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        ++v8;
        v11 = [v9 placemark];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v7 != v8);

      v12 = v15;
      if (!(v15 >> 62))
      {
        goto LABEL_11;
      }

LABEL_19:
      sub_21D0D8CF0(0, &qword_27CE631A8, 0x277CBFC40);
      sub_21DBF8E0C();
      v13 = sub_21DBFC33C();
      swift_bridgeObjectRelease_n();
      goto LABEL_12;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_4;
    }
  }

  v12 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_19;
  }

LABEL_11:
  sub_21DBF8E0C();
  sub_21DBFC65C();
  sub_21D0D8CF0(0, &qword_27CE631A8, 0x277CBFC40);

  v13 = v12;
LABEL_12:
  a2 = v14;
LABEL_14:
  a3(v13, a2);
}

id TTRGeoLocationService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRGeoLocationService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void TTRGeoLocationService.resolveLocation(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  swift_getKeyPath(asc_21DC2E730);
  swift_getKeyPath(byte_21DC2E758);
  sub_21DBF916C();

  if (*(v17 + 16) && (v7 = sub_21D17E948(v4, v5, v6), (v8 & 1) != 0))
  {
    v9 = *(v17 + 56) + 32 * v7;
    v4 = *v9;
    v5 = *(v9 + 8);
    v6 = *(v9 + 16);
    v10 = *(v9 + 24);
    sub_21D179D54(*v9, v5, v6, v10);
  }

  else
  {

    v11 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_pendingLocationsToResolve;
    swift_beginAccess();
    v12 = *(v2 + v11);
    sub_21D179E10(v4, v5, v6);
    sub_21D179E10(v4, v5, v6);
    sub_21D179D54(v4, v5, v6, 0x2000000000000000uLL);
    sub_21D0D0E78(0, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v11) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_21D213644(0, v12[2] + 1, 1, v12);
      *(v2 + v11) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_21D213644((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    v16 = &v12[6 * v15];
    v16[4] = v4;
    v16[5] = v5;
    v10 = 0x2000000000000000;
    v16[6] = v6;
    v16[7] = 0x2000000000000000;
    v16[8] = 0;
    v16[9] = 0;
    *(v2 + v11) = v12;
    swift_endAccess();
    sub_21D889B18();
    sub_21D47B42C(v4, v5, v6, 0x2000000000000000uLL);
    sub_21D0D0E88(0, 0);
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v10;
}

void TTRGeoLocationService.resolveAddress(for:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath(byte_21DC2E778);
  swift_getKeyPath(byte_21DC2E7A0);
  sub_21DBF916C();

  if (*(v17 + 16) && (v5 = sub_21D17E8F8(a1), (v6 & 1) != 0))
  {
    v7 = *(v17 + 56) + 32 * v5;
    v15 = *(v7 + 16);
    v16 = *v7;
    sub_21D179D54(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24));

    *a2 = v16;
    *(a2 + 16) = v15;
  }

  else
  {

    v8 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_pendingLocationsToResolve;
    swift_beginAccess();
    v9 = *(v2 + v8);
    v10 = a1;
    sub_21D179D54(a1, 0, 0, 0);
    sub_21D0D0E78(0, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v8) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_21D213644(0, v9[2] + 1, 1, v9);
      *(v2 + v8) = v9;
    }

    v13 = v9[2];
    v12 = v9[3];
    if (v13 >= v12 >> 1)
    {
      v9 = sub_21D213644((v12 > 1), v13 + 1, 1, v9);
    }

    v9[2] = v13 + 1;
    v14 = &v9[6 * v13];
    v14[4] = a1;
    *(v14 + 5) = 0u;
    *(v14 + 7) = 0u;
    v14[9] = 0;
    *(v2 + v8) = v9;
    swift_endAccess();
    sub_21D889B18();
    sub_21D47B42C(a1, 0, 0, 0);
    sub_21D0D0E88(0, 0);
    *a2 = a1;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
  }
}

void *TTRGeoLocationService.currentOrGloballyLastKnownLocation.getter()
{
  swift_getKeyPath(aH_4);
  swift_getKeyPath(aH_5);
  sub_21DBF916C();

  v0 = v4[0];
  if (!v4[0])
  {
    goto LABEL_4;
  }

  TTRGeoLocationService.resolveAddress(for:)(v4[0], v4);

  v1 = v4[0];
  if (v6 >> 61 != 2)
  {
    sub_21D47B42C(v4[0], v4[1], v5, v6);
LABEL_4:
    v1 = qword_27CE63118;
    v2 = qword_27CE63118;
  }

  return v1;
}

uint64_t sub_21D88D748(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29[2] = a3;
  v37 = a4;
  v38 = a1;
  v8 = *(a2 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v31 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 24);
  v35 = sub_21D0D8CF0(255, &qword_27CE631A8, 0x277CBFC40);
  v12 = a2[5];
  v13 = sub_21DBF8F2C();
  v36 = *(v13 - 8);
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v30 = v29 - v15;
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CBCB88], v13, v14);
  v16 = sub_21DBF8F5C();
  v17 = *(v16 - 8);
  v33 = v16;
  v34 = v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v29 - v19;
  v21 = v31;
  (*(v8 + 16))(v31, v5, a2, v18);
  v22 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = a2[2];
  *(v23 + 3) = v11;
  v24 = a2[4];
  *(v23 + 4) = a3;
  *(v23 + 5) = v24;
  v25 = v37;
  *(v23 + 6) = v12;
  *(v23 + 7) = v25;
  (*(v8 + 32))(&v23[v22], v21, a2);
  v26 = v30;
  sub_21DBF926C();

  sub_21D8910E4();
  sub_21DBF93AC();
  (*(v36 + 8))(v26, v13);
  v27 = v33;
  sub_21DBF8F4C();
  return (*(v34 + 8))(v20, v27);
}

void sub_21D88DA78(void *a3@<X2>, void *a4@<X3>, unint64_t a5@<X5>, unint64_t a6@<X6>, void *a7@<X8>)
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  type metadata accessor for TTRGeoLocationService.FilterResult(0, &v15);
  sub_21DBF9F5C();
  v9 = v17;
  v8 = v18;
  if (v17 >> 2 == 0xFFFFFFFF && (v18 & 0xF000000000000007) == 0)
  {
    goto LABEL_8;
  }

  v11 = v15;
  v12 = v16;
  if ((v18 >> 61) > 2)
  {
    if (v18 >> 61 == 3)
    {
      v13 = v16;
    }

    else
    {
      v13 = (v18 & 0x1FFFFFFFFFFFFFFFLL);
    }

    swift_willThrow();
    v14 = v13;
    sub_21D0D73FC(v11, v12, v9, v8);
  }

  else
  {
    if ((v18 >> 61) < 2)
    {
      sub_21D0D73FC(v15, v16, v17, v18);
LABEL_8:
      *a7 = 0;
      return;
    }

    *a7 = v15;
  }
}

uint64_t TTRGeoLocationService.publisherForResolvingLocation(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63138, &qword_21DC2E7C0);
  *&v5 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v7 = v22 - v6;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  swift_getKeyPath(asc_21DC2E730, v5);
  swift_getKeyPath(byte_21DC2E758);
  sub_21DBF916C();

  if (*(v22[1] + 16))
  {
    sub_21D17E948(v8, v9, v10);
    v12 = v11;

    if (v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v13 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_pendingLocationsToResolve;
  swift_beginAccess();
  v14 = *(v2 + v13);
  sub_21D179E10(v8, v9, v10);
  sub_21D179D54(v8, v9, v10, 0x2000000000000000uLL);
  sub_21D0D0E78(0, 0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v13) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_21D213644(0, v14[2] + 1, 1, v14);
    *(v2 + v13) = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_21D213644((v16 > 1), v17 + 1, 1, v14);
  }

  v14[2] = v17 + 1;
  v18 = &v14[6 * v17];
  v18[4] = v8;
  v18[5] = v9;
  v18[6] = v10;
  v18[7] = 0x2000000000000000;
  v18[8] = 0;
  v18[9] = 0;
  *(v2 + v13) = v14;
  swift_endAccess();
  sub_21D889B18();
  sub_21D47B42C(v8, v9, v10, 0x2000000000000000uLL);
  sub_21D0D0E88(0, 0);
LABEL_10:
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63140, &qword_21DC2E7C8);
  sub_21DBF914C();
  swift_endAccess();
  v19 = &v7[*(v4 + 52)];
  *v19 = v8;
  *(v19 + 1) = v9;
  v19[16] = v10;
  sub_21D179E10(v8, v9, v10);
  sub_21D0D0F1C(&qword_27CE63148, &qword_27CE63138, &qword_21DC2E7C0, byte_21DC2EB00);
  v20 = sub_21DBF920C();
  sub_21D0CF7E0(v7, &qword_27CE63138, &qword_21DC2E7C0);
  return v20;
}

uint64_t TTRGeoLocationService.publisherForResolvingAddress(for:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63150, &qword_21DC2E7D0);
  *&v5 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v7 = v20 - v6;
  swift_getKeyPath(byte_21DC2E778, v5);
  swift_getKeyPath(byte_21DC2E7A0);
  sub_21DBF916C();

  if (*(v20[1] + 16))
  {
    sub_21D17E8F8(a1);
    v9 = v8;

    if (v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v10 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_pendingLocationsToResolve;
  swift_beginAccess();
  v11 = *(v1 + v10);
  v12 = a1;
  sub_21D179D54(a1, 0, 0, 0);
  sub_21D0D0E78(0, 0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v10) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_21D213644(0, v11[2] + 1, 1, v11);
    *(v2 + v10) = v11;
  }

  v15 = v11[2];
  v14 = v11[3];
  if (v15 >= v14 >> 1)
  {
    v11 = sub_21D213644((v14 > 1), v15 + 1, 1, v11);
  }

  v11[2] = v15 + 1;
  v16 = &v11[6 * v15];
  v16[4] = a1;
  *(v16 + 5) = 0u;
  *(v16 + 7) = 0u;
  v16[9] = 0;
  *(v2 + v10) = v11;
  swift_endAccess();
  sub_21D889B18();
  sub_21D47B42C(a1, 0, 0, 0);
  sub_21D0D0E88(0, 0);
LABEL_10:
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63158, &qword_21DC2E7D8);
  sub_21DBF914C();
  swift_endAccess();
  *&v7[*(v4 + 52)] = a1;
  sub_21D0D0F1C(&qword_27CE63160, &qword_27CE63150, &qword_21DC2E7D0, byte_21DC2EB00);
  v17 = a1;
  v18 = sub_21DBF920C();
  sub_21D0CF7E0(v7, &qword_27CE63150, &qword_21DC2E7D0);
  return v18;
}

uint64_t TTRGeoLocationService.currentLocationPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63168, &qword_21DC2E7E0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63170, &qword_21DC2E7E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63178, &qword_21DC2E7F0);
  v24 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63180, &qword_21DC2E7F8);
  v12 = *(v11 - 8);
  v22 = v11;
  v23 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63188, &qword_21DC2E800);
  sub_21DBF914C();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
  sub_21D0D0F1C(&unk_27CE63190, &qword_27CE63168, &qword_21DC2E7E0, MEMORY[0x277CBCEC8]);
  sub_21DBF93BC();
  (*(v2 + 8))(v4, v1);
  sub_21D0D8CF0(0, &qword_280D17890, 0x277CE41F8);
  sub_21D0D0F1C(&qword_27CE631A0, &qword_27CE63170, &qword_21DC2E7E8, MEMORY[0x277CBCBA0]);
  sub_21DBF921C();
  (*(v6 + 8))(v8, v5);
  *(swift_allocObject() + 16) = v0;
  v15 = v0;
  sub_21DBF8FFC();
  sub_21D0D8CF0(0, &qword_27CE631A8, 0x277CBFC40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63150, &qword_21DC2E7D0);
  sub_21D0D0F1C(&qword_27CE631B0, &qword_27CE63178, &qword_21DC2E7F0, MEMORY[0x277CBCB10]);
  sub_21D0D0F1C(&qword_27CE63160, &qword_27CE63150, &qword_21DC2E7D0, byte_21DC2EB00);
  v16 = v21;
  sub_21DBF934C();

  (*(v24 + 8))(v10, v16);
  sub_21D0D0F1C(&qword_27CE631B8, &qword_27CE63180, &qword_21DC2E7F8, MEMORY[0x277CBCCE0]);
  v17 = v22;
  v18 = sub_21DBF920C();
  (*(v23 + 8))(v14, v17);
  return v18;
}

id sub_21D88E668@<X0>(id *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63158, &qword_21DC2E7D8);
  sub_21DBF914C();
  swift_endAccess();
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63150, &qword_21DC2E7D0) + 52)) = v5;

  return v5;
}

uint64_t TTRGeoLocationService.authorizationStatusPublisher.getter()
{
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE631C0, &qword_21DC2E808);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &ObjectType - v3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE631C8, &qword_21DC2E810);
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v6 = &ObjectType - v5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE631D0, &qword_21DC2E818);
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v8 = &ObjectType - v7;
  v18 = *(*(v0 + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_authorizationTracker) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59048, &qword_21DC2E820);
  sub_21D0D0F1C(&qword_280D0C7A0, &qword_27CE59048, &qword_21DC2E820, MEMORY[0x277D457F8]);
  v18 = sub_21DBF920C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE631D8, &qword_21DC2E828);
  sub_21D0D0F1C(&qword_280D0C490, &qword_27CE631D8, &qword_21DC2E828, MEMORY[0x277CBCD90]);
  sub_21DBF921C();

  sub_21DBF8F0C();
  (*(v2 + 8))(v4, v1);
  sub_21D0D0F1C(&qword_280D0C658, &qword_27CE631C8, &qword_21DC2E810, MEMORY[0x277CBCB10]);
  sub_21D88FB2C();
  v9 = v15;
  sub_21DBF93AC();
  (*(v17 + 8))(v6, v9);
  sub_21D0D0F1C(&qword_280D0C608, &qword_27CE631D0, &qword_21DC2E818, MEMORY[0x277CBCBE0]);
  v10 = v14;
  v11 = sub_21DBF920C();
  (*(v16 + 8))(v8, v10);
  return v11;
}

id sub_21D88EB2C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager;
  result = *(*a1 + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = [result authorizationStatus];
  if ((result - 1) < 2)
  {
LABEL_8:
    v6 = 3;
    goto LABEL_9;
  }

  if ((result - 3) >= 2)
  {
    if (!result)
    {
      v6 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  result = *(v3 + v4);
  if (result)
  {
    result = [result accuracyAuthorization];
    v6 = result == 0;
LABEL_9:
    *a2 = v6;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21D88EC7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21D1B795C;

  return TTRGeoLocationService.checkAndRequestLocationAccessIfNeeded()();
}

uint64_t sub_21D88ED78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21D0F00D0;

  return TTRGeoLocationService.locationAuthorizationStatus.getter(a1);
}

Swift::Void __swiftcall TTRGeoLocationService.locationManagerDidChangeAuthorization(_:)(CLLocationManager a1)
{
  isa = a1.super.isa;
  v3 = (v1 + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_blockToPerformAfterRequestingInUseAuthorization);
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_blockToPerformAfterRequestingInUseAuthorization);
  if (v4)
  {
    v5 = v3[1];
    *v3 = 0;
    v3[1] = 0;
    sub_21D88993C(v4);
    sub_21D0D0E88(v4, v5);
  }

  if (qword_280D17E90 != -1)
  {
    swift_once();
  }

  v6 = sub_21DBF84BC();
  __swift_project_value_buffer(v6, qword_280D0F0F0);
  v7 = isa;
  v8 = sub_21DBF84AC();
  v9 = sub_21DBFAE9C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    [(objc_class *)v7 authorizationStatus];
    v12 = sub_21DBFB38C();
    v14 = sub_21D0CDFB4(v12, v13, &v15);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_21D0C9000, v8, v9, "LocationManagerDidChangeAuthorization { authorization: %s}", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x223D46520](v11, -1, -1);
    MEMORY[0x223D46520](v10, -1, -1);
  }

  sub_21D3A61B0([(objc_class *)v7 authorizationStatus]);
}

void sub_21D88F090(void *a1, void *a2, void *a3)
{
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  *v9 = sub_21DBFB12C();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v10 = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  if (!a1)
  {
    v14 = a2;
    goto LABEL_8;
  }

  v11 = qword_280D17E90;
  v10 = a1;
  if (v11 != -1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F0F0);
  v13 = a2;
  v14 = v10;
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412546;
    *(v17 + 4) = v13;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v14;
    *v18 = v13;
    v18[1] = a1;
    v19 = v13;
    v14 = v14;
    _os_log_impl(&dword_21D0C9000, v15, v16, "Got shifted location {location: %@, shiftedLocation: %@}", v17, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070, &unk_21DC09550);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }

LABEL_8:
  swift_getKeyPath(aH_4);
  swift_getKeyPath(aH_5);
  *&v25 = v14;
  v20 = a1;
  a3;
  sub_21DBF917C();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_21D891154;
  *(v22 + 24) = v21;
  swift_beginAccess();
  v25 = a2;
  v26 = 0;
  v27 = 0;
  v28 = sub_21D25A948;
  v29 = v22;
  v23 = a2;
  swift_retain_n();
  sub_21D179D54(a2, 0, 0, 0);
  sub_21D0D0E78(sub_21D891154, v21);
  sub_21DBD1BAC(0, 0, &v25);
  swift_endAccess();
  sub_21D47B42C(a2, 0, 0, 0);
  sub_21D0D0E88(sub_21D25A948, v22);
  sub_21D889B18();
  sub_21D47B42C(a2, 0, 0, 0);
  sub_21D0D0E88(sub_21D891154, v21);
}

void sub_21D88F4A0(__int128 *a1, uint64_t a2)
{
  v11 = a1[1];
  v12 = *a1;
  if (*(&v11 + 1) >> 61 == 2)
  {
    v2 = qword_27CE63118;
    qword_27CE63118 = *a1;
    v3 = v12;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Strong + OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      v14[3] = type metadata accessor for TTRGeoLocationService(0);
      v14[4] = &protocol witness table for TTRGeoLocationService;
      v14[0] = v5;
      v13[1] = v11;
      v13[0] = v12;
      v9 = *(v7 + 8);
      v10 = v5;
      v9(v14, v13, ObjectType, v7);

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v14);
    }

    else
    {
    }
  }
}

void sub_21D88F5D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_21D88F6D0@<X0>(const char *a2@<X3>, const char *a3@<X4>, void *a4@<X8>)
{
  swift_getKeyPath(a2);
  swift_getKeyPath(a3);
  sub_21DBF916C();

  *a4 = v7;
  return result;
}

uint64_t sub_21D88F74C(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6)
{
  v7 = *a2;
  swift_getKeyPath(a5);
  swift_getKeyPath(a6);
  sub_21DBF8E0C();
  v8 = v7;
  return sub_21DBF917C();
}

uint64_t sub_21D88F7C0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(aH_4);
  swift_getKeyPath(aH_5);
  sub_21DBF916C();

  *a2 = v4;
  return result;
}

uint64_t sub_21D88F840(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath(aH_4);
  swift_getKeyPath(aH_5);
  v4 = v2;
  v5 = v3;
  return sub_21DBF917C();
}

uint64_t _s15RemindersUICore029TTRGeoLocationServiceResolvedD0O7AddressO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      sub_21D179E10(v6, v5, 0);
      sub_21D179E10(v3, v2, 0);
      v10 = sub_21DBFB63C();
      sub_21D181CB8(v3, v2, 0);
      v11 = v6;
      v12 = v5;
      v13 = 0;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (v4 != 1)
  {
    if (v7 == 2)
    {
      sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      sub_21D179E10(v6, v5, 2);
      sub_21D179E10(v3, v2, 2);
      LOBYTE(v10) = sub_21DBFB63C();
      sub_21D181CB8(v3, v2, 2);
      v11 = v6;
      v12 = v5;
      v13 = 2;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (v7 != 1)
  {
LABEL_14:
    sub_21D179E10(*a2, *(a2 + 8), v7);
    sub_21D179E10(v3, v2, v4);
    sub_21D181CB8(v3, v2, v4);
    sub_21D181CB8(v6, v5, v7);
    return 0;
  }

  v8 = *a1;
  if (v3 != v6 || v2 != v5)
  {
    LOBYTE(v10) = sub_21DBFC64C();
    sub_21D179E10(v6, v5, 1);
    sub_21D179E10(v3, v2, 1);
    sub_21D181CB8(v3, v2, 1);
    v11 = v6;
    v12 = v5;
    v13 = 1;
LABEL_13:
    sub_21D181CB8(v11, v12, v13);
    return v10 & 1;
  }

  sub_21D179E10(v8, v2, 1);
  sub_21D179E10(v3, v2, 1);
  sub_21D181CB8(v3, v2, 1);
  sub_21D181CB8(v3, v2, 1);
  return 1;
}

uint64_t sub_21D88FAE4@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

unint64_t sub_21D88FB2C()
{
  result = qword_280D116E0;
  if (!qword_280D116E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRGeoLocationAuthorizationStatus, &type metadata for TTRGeoLocationAuthorizationStatus, v0, v1);
    atomic_store(result, &qword_280D116E0);
  }

  return result;
}

void sub_21D88FB80(unint64_t a1)
{
  v3 = v1;
  if (a1 >> 62)
  {
    v28 = a1;
    v4 = sub_21DBFBD7C();
    a1 = v28;
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_25;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_25:
    v7 = MEMORY[0x223D44740](v6, a1);
    goto LABEL_8;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_29;
  }

  v7 = *(a1 + 8 * v6 + 32);
LABEL_8:
  v2 = v7;
  if (qword_280D17E90 != -1)
  {
LABEL_27:
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F0F0);
  v9 = v2;
  v10 = sub_21DBF84AC();
  v11 = sub_21DBFAE9C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_21D0C9000, v10, v11, "Got current location {location: %@}", v12, 0xCu);
    sub_21D0CF7E0(v13, &unk_27CE60070, &unk_21DC09550);
    MEMORY[0x223D46520](v13, -1, -1);
    MEMORY[0x223D46520](v12, -1, -1);
  }

  [v9 horizontalAccuracy];
  if (v15 >= 0.0)
  {
    [v9 horizontalAccuracy];
    if (v16 < 150.0)
    {
      v17 = *&v3[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_locationManager];
      if (v17)
      {
        [v17 stopUpdatingLocation];
        v18 = [objc_allocWithZone(MEMORY[0x277CD4F98]) init];
        v19 = swift_allocObject();
        *(v19 + 16) = v9;
        *(v19 + 24) = v3;
        aBlock[4] = sub_21D89114C;
        aBlock[5] = v19;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21D88F5D8;
        aBlock[3] = &block_descriptor_105;
        v20 = _Block_copy(aBlock);
        v21 = v9;
        v22 = v3;

        sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
        v23 = sub_21DBFB12C();
        [v18 shiftLocation:v21 withCompletionHandler:v20 callbackQueue:v23];

        _Block_release(v20);
        return;
      }

LABEL_29:
      __break(1u);
      return;
    }
  }

  v30 = v9;
  oslog = sub_21DBF84AC();
  v24 = sub_21DBFAE9C();

  if (os_log_type_enabled(oslog, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    [v30 horizontalAccuracy];
    *(v25 + 4) = v26;
    _os_log_impl(&dword_21D0C9000, oslog, v24, "Ignoring current location because its not accurate enough {location.horizontalAccuracy: %f}", v25, 0xCu);
    MEMORY[0x223D46520](v25, -1, -1);

    v27 = v30;
  }

  else
  {

    v27 = oslog;
  }
}

uint64_t dispatch thunk of TTRGeoLocationServiceType.checkAndRequestLocationAccessIfNeeded()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D1B795C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of TTRGeoLocationServiceType.locationAuthorizationStatus.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 80) + **(a3 + 80));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D0F00D0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of TTRGeoLocationServiceDelegate.geoService(_:didResolve:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 16))(a1, a2, a3, a4);
}

{
  return (*(a5 + 24))(a1, a2, a3, a4);
}

void *initializeWithCopy for TTRGeoLocationServiceResolvedLocation(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_21D179D54(*a2, v4, v5, v6);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return a1;
}

uint64_t assignWithCopy for TTRGeoLocationServiceResolvedLocation(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_21D179D54(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  sub_21D47B42C(v7, v8, v9, v10);
  return a1;
}

uint64_t assignWithTake for TTRGeoLocationServiceResolvedLocation(uint64_t a1, _OWORD *a2)
{
  v3 = *a1;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v7;
  sub_21D47B42C(v3, v5, v4, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRGeoLocationServiceResolvedLocation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRGeoLocationServiceResolvedLocation(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * -a2;
      *(result + 24) = 0;
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

uint64_t sub_21D8904B0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24) & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  *(result + 16) &= 3uLL;
  *(result + 24) = v2;
  return result;
}

uint64_t sub_21D8904D8(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D179E10(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRGeoLocationServiceResolvedLocation.Address(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D179E10(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_21D181CB8(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for TTRGeoLocationServiceResolvedLocation.Address(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_21D181CB8(v4, v5, v6);
  return a1;
}

uint64_t sub_21D8905F4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_21D8906C4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = ((v5 + v8) & ~v8) + *(v7 + 64);
  v11 = (*(v4 + 80) | *(v7 + 80));
  if (v11 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v10 > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v11 + 16) & ~v11));
  }

  else
  {
    v15 = ~v8;
    (*(v4 + 16))(a1);
    (*(v7 + 16))((v3 + v9) & v15, (a2 + v9) & v15, v6);
  }

  return v3;
}

uint64_t sub_21D89081C(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 24) - 8) + 8;
  (*v4)();
  v5 = *(*(a2 + 16) - 8);
  v6 = *(v5 + 8);
  v7 = (*(v4 + 56) + a1 + *(v5 + 80)) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t sub_21D8908C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 16;
  (*v6)();
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 16))((*(v6 + 48) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 48) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_21D890968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 24;
  (*v6)();
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 24))((*(v6 + 40) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 40) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_21D890A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 32;
  (*v6)();
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 32))((*(v6 + 32) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 32) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_21D890AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 40;
  (*v6)();
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 40))((*(v6 + 24) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 24) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_21D890B60(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 24) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_21D890D3C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

__n128 sub_21D89101C@<Q0>(void *a2@<X8>)
{
  v6 = *(v2 + 40);
  v7[0] = *(v2 + 16);
  v5 = v7[0];
  v7[1] = v6;
  type metadata accessor for TTRGeoLocationService.FilterResult(0, v7);
  sub_21D88DA78(v5, *(&v5 + 1), v6, *(&v6 + 1), a2);
  return result;
}

unint64_t sub_21D8910E4()
{
  result = qword_27CE632A0;
  if (!qword_27CE632A0)
  {
    v3 = sub_21D0D8CF0(255, &qword_27CE631A8, 0x277CBFC40);
    result = swift_getWitnessTable(MEMORY[0x277D85380], v3, v0, v1);
    atomic_store(result, &qword_27CE632A0);
  }

  return result;
}

void TTRExtensionContextExtractorResult.containsImages.getter()
{
  v1 = type metadata accessor for TTRAttachmentInfo(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = *(v0 + 24);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = v9 - 1;
    while (v10 < *(v8 + 16))
    {
      sub_21D686BFC(v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v10, v7);
      sub_21D8958AC(v7, v4, type metadata accessor for TTRAttachmentInfo);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_21D5FBB20(v4, type metadata accessor for TTRAttachmentInfo);
      if (EnumCaseMultiPayload >= 3 && v11 != v10++)
      {
        continue;
      }

      return;
    }

    __break(1u);
  }
}

void TTRReminderEditor.apply(_:)(Swift::OpaquePointer *a1)
{
  v104 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0, &unk_21DC0C0C0);
  MEMORY[0x28223BE20](v2 - 8);
  v100 = &v98 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v4 - 8);
  v99 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v102 = &v98 - v7;
  MEMORY[0x28223BE20](v8);
  v106 = &v98 - v9;
  v107 = sub_21DBF509C();
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v11 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v98 - v13;
  v15 = sub_21DBF54CC();
  v16 = *(v15 - 8);
  *&v17 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v19 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1[2];
  v21 = [v20 attachmentContext];
  v103 = v11;
  if (v21)
  {
    v22 = v21;
    v23 = [v20 attachmentContext];
    [v23 removeAllAttachments];

    v24 = v104;
    TTRReminderEditor.add(attachmentInfos:)(v104[3]);
    v25 = [v20 notesAsString];
    v26 = v107;
    v27 = v105;
    v28 = v24;
    if (!v25)
    {
      goto LABEL_10;
    }

    v29 = v25;
    v30 = sub_21DBFA16C();
    v32 = v31;

    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      if (v30 != sub_21D892940() || v32 != v34)
      {
        v48 = sub_21DBFC64C();

        if ((v48 & 1) == 0)
        {
LABEL_17:
          v46 = type metadata accessor for TTRExtensionContextExtractorResult(0);
          TTRReminderEditor.edit(userActivity:)(*(&v28->_rawValue + *(v46 + 40)));
          v47 = 0;
          if (*(&v28[1]._rawValue + *(v46 + 48)) >> 60 != 15)
          {
            v47 = sub_21DBF54FC();
          }

          [v20 setSiriFoundInAppsData_];

          goto LABEL_34;
        }

LABEL_10:
        v101 = v22;
        v35 = v27;
        v36 = v26;
        v37 = v20;
        v41 = objc_allocWithZone(MEMORY[0x277CCA898]);
        sub_21DBF8E0C();
        v42 = sub_21DBFA12C();

        v43 = [v41 initWithString_];

        v44 = sub_21D9C7928(v43);
        if (v44)
        {
          v45 = v44;
          swift_retain_n();
          sub_21D182E74(sub_21D233058, v45);
        }

        v20 = v37;
        v26 = v36;
        v27 = v35;
        v22 = v101;
        goto LABEL_17;
      }
    }

    goto LABEL_10;
  }

  v98 = v19;
  v101 = v1;
  v38 = type metadata accessor for TTRExtensionContextExtractorResult(0);
  v28 = v104;
  v39 = *(&v104->_rawValue + *(v38 + 40));
  v22 = v39;
  if (!v39)
  {
    rawValue = v104[3]._rawValue;
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE632B0, &unk_21DC2EB48);
    sub_21D0D0F1C(&qword_27CE632B8, &qword_27CE632B0, &unk_21DC2EB48, MEMORY[0x277D83970]);
    v40 = v15;
    sub_21DBFA48C();

    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_21D0CF7E0(v14, &qword_27CE5EA20, &qword_21DC0D4A0);
      v22 = 0;
    }

    else
    {
      v49 = v98;
      (*(v16 + 32))(v98, v14, v40);
      v50 = objc_allocWithZone(MEMORY[0x277D448F0]);
      v51 = sub_21DBF53FC();
      v22 = [v50 initWithUniversalLink_];

      (*(v16 + 8))(v49, v40);
    }
  }

  v52 = v39;
  TTRReminderEditor.edit(userActivity:)(v22);
  v53 = [v20 notesAsString];
  v26 = v107;
  v27 = v105;
  if (v53)
  {
    v54 = v53;
    v55 = sub_21DBFA16C();
    v57 = v56;

    v58 = HIBYTE(v57) & 0xF;
    if ((v57 & 0x2000000000000000) == 0)
    {
      v58 = v55 & 0xFFFFFFFFFFFFLL;
    }

    if (!v58)
    {
      goto LABEL_30;
    }

    v59 = v28[5]._rawValue;
    if (!v59)
    {

      goto LABEL_34;
    }

    if (v55 == v28[4]._rawValue && v59 == v57)
    {
LABEL_30:
    }

    else
    {
      v97 = sub_21DBFC64C();

      if ((v97 & 1) == 0)
      {
        goto LABEL_34;
      }
    }
  }

  sub_21D892940();
  v60 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v61 = sub_21DBFA12C();

  v62 = [v60 initWithString_];

  v63 = sub_21D9C7928(v62);
  if (v63)
  {
    v64 = v63;
    swift_retain_n();
    sub_21D182E74(sub_21D233058, v64);
  }

LABEL_34:
  if (v28[1]._rawValue)
  {
    v65 = [v20 titleAsString];
    if (!v65)
    {
      goto LABEL_39;
    }

    v66 = v65;
    v67 = sub_21DBFA16C();
    v69 = v68;

    v70 = HIBYTE(v69) & 0xF;
    if ((v69 & 0x2000000000000000) == 0)
    {
      v70 = v67 & 0xFFFFFFFFFFFFLL;
    }

    if (!v70)
    {
LABEL_39:
      v71 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v72 = sub_21DBFA12C();
      v73 = [v71 initWithString_];

      v74 = sub_21D9CA3E0(v73, 0, 1);
      if (v74)
      {
        v75 = v74;
        swift_retain_n();
        sub_21D182E74(sub_21D23298C, v75);
      }
    }
  }

  v76 = type metadata accessor for TTRExtensionContextExtractorResult(0);
  v77 = v106;
  sub_21D0D3954(v28 + v76[8], v106, &qword_27CE58D60, &unk_21DC0A690);
  if ((*(v27 + 48))(v77, 1, v26) == 1)
  {
    sub_21D0CF7E0(v77, &qword_27CE58D60, &unk_21DC0A690);
  }

  else
  {
    v78 = v103;
    (*(v27 + 32))(v103, v77, v26);
    v79 = sub_21DBF4EDC();
    v80 = [v79 rem_isValidDateComponents];

    if (v80)
    {
      v81 = v78;
      v82 = [v20 dueDateComponents];
      if (v82)
      {
        v83 = v102;
        v84 = v82;
        sub_21DBF4EFC();

        (*(v27 + 8))(v81, v26);
        (*(v27 + 56))(v83, 0, 1, v26);
        sub_21D0CF7E0(v83, &qword_27CE58D60, &unk_21DC0A690);
      }

      else
      {
        v85 = v26;
        v86 = *(v27 + 56);
        v87 = v102;
        v86(v102, 1, 1, v26);
        sub_21D0CF7E0(v87, &qword_27CE58D60, &unk_21DC0A690);
        v88 = v99;
        (*(v27 + 16))(v99, v81, v26);
        v86(v88, 0, 1, v26);
        v89 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties(0);
        v90 = v100;
        (*(*(v89 - 8) + 56))(v100, 1, 1, v89);
        sub_21D9C50E0(v88, v90);
        sub_21D0CF7E0(v90, &unk_27CE60DA0, &unk_21DC0C0C0);
        sub_21D0CF7E0(v88, &qword_27CE58D60, &unk_21DC0A690);
        (*(v27 + 8))(v81, v85);
      }
    }

    else
    {
      (*(v27 + 8))(v78, v26);
    }
  }

  v91 = *(&v28->_rawValue + v76[9]);
  if (v91)
  {
    v92 = v28 + v76[13];
    if (v92[8])
    {
      v93 = 1;
    }

    else
    {
      v93 = *v92;
    }

    v94 = objc_allocWithZone(MEMORY[0x277D44580]);
    v95 = v91;
    v96 = [v94 initWithStructuredLocation:v95 proximity:v93];
    _s15RemindersUICore17TTRReminderEditorC4edit14vehicleTriggerySo015REMAlarmVehicleG0CSg_tF_0(v96);
  }
}

uint64_t TTRExtensionContextExtractorResult.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

void TTRExtensionContextExtractorResult.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t TTRExtensionContextExtractorResult.notes.getter()
{
  v1 = *(v0 + 32);
  sub_21DBF8E0C();
  return v1;
}

void TTRExtensionContextExtractorResult.notes.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void *TTRExtensionContextExtractorResult.location.getter(__n128 a1)
{
  v2 = *(v1 + *(type metadata accessor for TTRExtensionContextExtractorResult(0) + 36));
  v3 = v2;
  return v2;
}

void TTRExtensionContextExtractorResult.location.setter(uint64_t a1, __n128 a2)
{
  v4 = *(type metadata accessor for TTRExtensionContextExtractorResult(0) + 36);

  *(v2 + v4) = a1;
}

void *TTRExtensionContextExtractorResult.userActivity.getter(__n128 a1)
{
  v2 = *(v1 + *(type metadata accessor for TTRExtensionContextExtractorResult(0) + 40));
  v3 = v2;
  return v2;
}

void TTRExtensionContextExtractorResult.userActivity.setter(uint64_t a1, __n128 a2)
{
  v4 = *(type metadata accessor for TTRExtensionContextExtractorResult(0) + 40);

  *(v2 + v4) = a1;
}

uint64_t TTRExtensionContextExtractorResult.extendedDetailOnlyViewRequested.setter(char a1, __n128 a2)
{
  result = type metadata accessor for TTRExtensionContextExtractorResult(0);
  *(v2 + *(result + 44)) = a1;
  return result;
}

uint64_t TTRExtensionContextExtractorResult.siriFoundInAppsData.getter(__n128 a1)
{
  v2 = v1 + *(type metadata accessor for TTRExtensionContextExtractorResult(0) + 48);
  v3 = *v2;
  sub_21D5FA9F0(*v2, *(v2 + 8));
  return v3;
}

uint64_t TTRExtensionContextExtractorResult.siriFoundInAppsData.setter(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = v3 + *(type metadata accessor for TTRExtensionContextExtractorResult(0) + 48);
  result = sub_21D1BAF38(*v6, *(v6 + 8));
  *v6 = a1;
  *(v6 + 8) = a2;
  return result;
}

uint64_t TTRExtensionContextExtractorResult.locationProximity.setter(uint64_t a1, char a2, __n128 a3)
{
  result = type metadata accessor for TTRExtensionContextExtractorResult(0);
  v7 = v3 + *(result + 52);
  *v7 = a1;
  *(v7 + 8) = a2 & 1;
  return result;
}

void *TTRExtensionContextExtractorResult.originalContentText.getter(__n128 a1)
{
  v2 = *(v1 + *(type metadata accessor for TTRExtensionContextExtractorResult(0) + 56));
  v3 = v2;
  return v2;
}

void TTRExtensionContextExtractorResult.originalContentText.setter(uint64_t a1, __n128 a2)
{
  v4 = *(type metadata accessor for TTRExtensionContextExtractorResult(0) + 56);

  *(v2 + v4) = a1;
}

double TTRExtensionContextExtractorResult.primaryURLAttachment.getter()
{
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE632B0, &unk_21DC2EB48);
  sub_21DBF54CC();
  sub_21D0D0F1C(&qword_27CE632B8, &qword_27CE632B0, &unk_21DC2EB48, MEMORY[0x277D83970]);
  sub_21DBFA48C();

  return result;
}

uint64_t type metadata accessor for TTRExtensionContextExtractorResult(uint64_t a1)
{
  result = qword_27CE632C0;
  if (!qword_27CE632C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D8927A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRAttachmentInfo(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D686BFC(a1, v6);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v7 = sub_21DBF54CC();
    v8 = *(v7 - 8);
    (*(v8 + 32))(a2, v6, v7);
    return (*(v8 + 56))(a2, 0, 1, v7);
  }

  else
  {
    sub_21D5FBB20(v6, type metadata accessor for TTRAttachmentInfo);
    v10 = sub_21DBF54CC();
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }
}

uint64_t sub_21D892940()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22 - v2;
  v4 = v0[5];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v0[4];
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    sub_21DBF8E0C();
    v7 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_21D210A84((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[16 * v9];
    *(v10 + 4) = v5;
    *(v10 + 5) = v4;
  }

  else
  {
LABEL_8:
    v7 = MEMORY[0x277D84F90];
  }

  v23 = v0[3];
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE632B0, &unk_21DC2EB48);
  v11 = sub_21DBF54CC();
  sub_21D0D0F1C(&qword_27CE632B8, &qword_27CE632B0, &unk_21DC2EB48, MEMORY[0x277D83970]);
  sub_21DBFA48C();

  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v3, 1, v11) == 1)
  {
    sub_21D0CF7E0(v3, &qword_27CE5EA20, &qword_21DC0D4A0);
  }

  else
  {
    v13 = sub_21DBF535C();
    v15 = v14;
    (*(v12 + 8))(v3, v11);
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

  v23 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
  v20 = sub_21DBFA07C();

  return v20;
}

Swift::Void __swiftcall TTRReminderEditor.prepareToReapplyExtensionContextExtractorResultDueToAccountCapabilityChange()()
{
  v1 = sub_21DBF54CC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v27 - v10;
  v12 = *(v0 + 16);
  v13 = [v12 attachmentContext];
  [v13 removeAllAttachments];

  v14 = [v12 userActivity];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 userActivity];

    if (v16)
    {
      v17 = [v16 webpageURL];

      if (v17)
      {
        sub_21DBF546C();

        (*(v2 + 56))(v7, 0, 1, v1);
      }

      else
      {
        (*(v2 + 56))(v7, 1, 1, v1);
      }

      sub_21D57690C(v7, v11);
      if ((*(v2 + 48))(v11, 1, v1))
      {
        sub_21D0CF7E0(v11, &qword_27CE5EA20, &qword_21DC0D4A0);
      }

      else
      {
        (*(v2 + 16))(v4, v11, v1);
        sub_21D0CF7E0(v11, &qword_27CE5EA20, &qword_21DC0D4A0);
        v18 = sub_21DBF548C();
        v20 = v19;
        (*(v2 + 8))(v4, v1);
        if (v20)
        {
          v21 = [v12 notesAsString];
          if (v21)
          {
            v22 = v21;
            v23 = sub_21DBFA16C();
            v25 = v24;

            if (v23 == v18 && v20 == v25)
            {
            }

            else
            {
              v26 = sub_21DBFC64C();

              if ((v26 & 1) == 0)
              {
                goto LABEL_8;
              }
            }

            [v12 setNotes_];
            goto LABEL_8;
          }
        }
      }
    }
  }

LABEL_8:
  [v12 setUserActivity_];
}