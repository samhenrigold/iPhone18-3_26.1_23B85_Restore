unint64_t sub_1E5C7EAC4()
{
  result = qword_1ED0552A8;
  if (!qword_1ED0552A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0552B0, &qword_1E5CA4AA8);
    sub_1E5C7EB50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0552A8);
  }

  return result;
}

unint64_t sub_1E5C7EB50()
{
  result = qword_1ED0552B8;
  if (!qword_1ED0552B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0552C0, &qword_1E5CA4AB0);
    sub_1E5C27F74(&qword_1ED0552C8, &qword_1ED0552D0, qword_1E5CA4AB8, MEMORY[0x1E697C268]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0552B8);
  }

  return result;
}

uint64_t objectdestroy_23Tm()
{

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1E5C7ED28()
{
  result = qword_1ED0552E8;
  if (!qword_1ED0552E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0552D8, &qword_1E5CA4B60);
    sub_1E5C7EDE0();
    sub_1E5C27F74(&qword_1ED055310, &qword_1ED055318, &qword_1E5CA4BB0, MEMORY[0x1E6980748]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0552E8);
  }

  return result;
}

unint64_t sub_1E5C7EDE0()
{
  result = qword_1ED0552F0;
  if (!qword_1ED0552F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0552E0, &qword_1E5CA4BA0);
    sub_1E5C7F7C4(&qword_1ED0552F8, type metadata accessor for SearchScopeFilters.ScopeButtons, &unk_1E5CA4D48);
    sub_1E5C27F74(&qword_1ED055300, &qword_1ED055308, &qword_1E5CA4BA8, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0552F0);
  }

  return result;
}

uint64_t sub_1E5C7EEE8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E5C7EF20()
{
  result = qword_1ED055348;
  if (!qword_1ED055348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055320, &qword_1E5CA4BB8);
    sub_1E5C7EFD8();
    sub_1E5C27F74(&qword_1ED055368, &qword_1ED055370, &unk_1E5CA4C18, MEMORY[0x1E697DDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055348);
  }

  return result;
}

unint64_t sub_1E5C7EFD8()
{
  result = qword_1ED055350;
  if (!qword_1ED055350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055340, &qword_1E5CA4BD8);
    sub_1E5C7F064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055350);
  }

  return result;
}

unint64_t sub_1E5C7F064()
{
  result = qword_1ED055358;
  if (!qword_1ED055358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055330, &qword_1E5CA4BC8);
    sub_1E5C7EDE0();
    sub_1E5C27F74(&qword_1ED055360, &qword_1ED055338, &qword_1E5CA4BD0, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055358);
  }

  return result;
}

uint64_t sub_1E5C7F11C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055328, &qword_1E5CA4BC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E5C7F1B4(uint64_t a1)
{
  sub_1E5C7F2CC(319, &qword_1ED0553A8, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1E5C7F2CC(319, &qword_1ED0553B0, type metadata accessor for CGRect, MEMORY[0x1E6981798]);
    if (v2 <= 0x3F)
    {
      sub_1E5C7F640(319, qword_1EE2C47E0, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E5C7F2CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 20));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1E5C7F4E4(uint64_t a1)
{
  sub_1E5C7F694(319, &qword_1ED0553D0, &qword_1ED054868, &unk_1E5CA12A0, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1E5C7F640(319, &qword_1ED0553D8, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1E5C7F694(319, &qword_1ED0553E0, &qword_1ED053F80, &qword_1E5C9E528, MEMORY[0x1E6981948]);
      if (v3 <= 0x3F)
      {
        sub_1E5C7F694(319, &qword_1ED0553E8, &qword_1ED0553F0, &qword_1E5CA4C78, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E5C7F640(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for SearchResultScope);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E5C7F694(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1E5C7F708()
{
  result = qword_1ED0553F8;
  if (!qword_1ED0553F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055400, &qword_1E5CA4C98);
    sub_1E5C7ED28();
    sub_1E5C7F7C4(&qword_1ED055408, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0553F8);
  }

  return result;
}

uint64_t sub_1E5C7F7C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E5C7F80C()
{
  result = qword_1ED055410;
  if (!qword_1ED055410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055418, &qword_1E5CA4CA0);
    sub_1E5C27F74(&qword_1ED055420, &qword_1ED055428, qword_1E5CA4CA8, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055410);
  }

  return result;
}

double sub_1E5C7F8FC(uint64_t a1)
{
  v2 = sub_1E5C9C340();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055500, &qword_1E5CA4E38);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054868, &unk_1E5CA12A0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v14;
  (*(v3 + 104))(&v21 - v14, *MEMORY[0x1E697FF40], v2);
  (*(v3 + 56))(v15, 0, 1, v2);
  v16 = *(v7 + 56);
  sub_1E5C3165C(a1, v9, &qword_1ED054868, &unk_1E5CA12A0);
  sub_1E5C3165C(v15, &v9[v16], &qword_1ED054868, &unk_1E5CA12A0);
  v17 = *(v3 + 48);
  if (v17(v9, 1, v2) == 1)
  {
    sub_1E5C3177C(v15, &qword_1ED054868, &unk_1E5CA12A0);
    if (v17(&v9[v16], 1, v2) == 1)
    {
      sub_1E5C3177C(v9, &qword_1ED054868, &unk_1E5CA12A0);
      return 20.0;
    }

    goto LABEL_6;
  }

  sub_1E5C3165C(v9, v13, &qword_1ED054868, &unk_1E5CA12A0);
  if (v17(&v9[v16], 1, v2) == 1)
  {
    sub_1E5C3177C(v15, &qword_1ED054868, &unk_1E5CA12A0);
    (*(v3 + 8))(v13, v2);
LABEL_6:
    sub_1E5C3177C(v9, &qword_1ED055500, &qword_1E5CA4E38);
    return 5.0;
  }

  (*(v3 + 32))(v5, &v9[v16], v2);
  sub_1E5C7F7C4(&qword_1ED055508, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v19 = sub_1E5C9CC00();
  v20 = *(v3 + 8);
  v20(v5, v2);
  sub_1E5C3177C(v15, &qword_1ED054868, &unk_1E5CA12A0);
  v20(v13, v2);
  sub_1E5C3177C(v9, &qword_1ED054868, &unk_1E5CA12A0);
  result = 20.0;
  if ((v19 & 1) == 0)
  {
    return 5.0;
  }

  return result;
}

uint64_t sub_1E5C7FCD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5C7FD3C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SearchScopeFilters.ScopeButtons(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E5C7B23C(a1, v6, a2);
}

unint64_t sub_1E5C7FDBC()
{
  result = qword_1ED055450;
  if (!qword_1ED055450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055448, &qword_1E5CA4DC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055458, &qword_1E5CA4DD0);
    sub_1E5C9C2A0();
    sub_1E5C7FF04();
    sub_1E5C7F7C4(&qword_1ED055498, MEMORY[0x1E697C688], MEMORY[0x1E697C680]);
    swift_getOpaqueTypeConformance2();
    sub_1E5C7F7C4(&qword_1ED055408, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055450);
  }

  return result;
}

unint64_t sub_1E5C7FF04()
{
  result = qword_1ED055460;
  if (!qword_1ED055460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055458, &qword_1E5CA4DD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055468, &qword_1E5CA4DD8);
    sub_1E5C9C000();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055470, &qword_1E5CA4DE0);
    sub_1E5C27F74(&qword_1ED055478, &qword_1ED055470, &qword_1E5CA4DE0, MEMORY[0x1E6981810]);
    swift_getOpaqueTypeConformance2();
    sub_1E5C7F7C4(&qword_1ED055480, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    swift_getOpaqueTypeConformance2();
    sub_1E5C27F74(&qword_1ED055488, &qword_1ED055490, &qword_1E5CA4DE8, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055460);
  }

  return result;
}

uint64_t sub_1E5C800B8()
{
  v1 = *(type metadata accessor for SearchScopeFilters.ScopeButtons(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E5C7BF74(v0 + v2, v3);
}

unint64_t sub_1E5C8014C()
{
  result = qword_1ED0554B8;
  if (!qword_1ED0554B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0554B0, &qword_1E5CA4E08);
    sub_1E5C80204();
    sub_1E5C27F74(&qword_1ED0554F0, &qword_1ED0554F8, &qword_1E5CA4E30, MEMORY[0x1E697FF70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0554B8);
  }

  return result;
}

unint64_t sub_1E5C80204()
{
  result = qword_1ED0554C0;
  if (!qword_1ED0554C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0554C8, &qword_1E5CA4E10);
    sub_1E5C80290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0554C0);
  }

  return result;
}

unint64_t sub_1E5C80290()
{
  result = qword_1ED0554D0;
  if (!qword_1ED0554D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0554D8, &qword_1E5CA4E18);
    sub_1E5C8031C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0554D0);
  }

  return result;
}

unint64_t sub_1E5C8031C()
{
  result = qword_1ED0554E0;
  if (!qword_1ED0554E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0554E8, &unk_1E5CA4E20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED054EE8, &qword_1E5CA3488);
    sub_1E5C27F74(&qword_1ED054F10, &qword_1ED054EE8, &qword_1E5CA3488, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0554E0);
  }

  return result;
}

uint64_t objectdestroy_64Tm()
{
  v1 = type metadata accessor for SearchScopeFilters.ScopeButtons(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054860, &qword_1E5CA1298);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1E5C9C340();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v4))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  else
  {
  }

  v6 = v3 + *(v1 + 24);

  if (*(v6 + 40))
  {
  }

  if (*(v3 + *(v1 + 28)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E5C8062C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for SearchScopeFilters.ScopeButtons(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E5C7C8A8(a1, v2 + v6, v7, a2);
}

uint64_t sub_1E5C806D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchScopeFilters.ScopeCapsule(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E5C7CF8C(v4, a1);
}

uint64_t sub_1E5C80794@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_1E5C9C360();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055578, &qword_1E5CA4F18);
  v9 = v8 - 8;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - v13;
  sub_1E5C9C350();
  v15 = &v14[*(v9 + 44)];
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055580, &qword_1E5CA4F20) + 28);
  v17 = *MEMORY[0x1E69816E0];
  v18 = sub_1E5C9C820();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  sub_1E5C9C370();
  sub_1E5C80B7C(v14, v12);
  v19 = *(v2 + 16);
  v19(v5, v7, v1);
  v20 = v25;
  sub_1E5C80B7C(v12, v25);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055588, &qword_1E5CA4F58);
  v19((v20 + *(v21 + 48)), v5, v1);
  v22 = *(v2 + 8);
  v22(v7, v1);
  sub_1E5C80BEC(v14);
  v22(v5, v1);
  return sub_1E5C80BEC(v12);
}

uint64_t sub_1E5C80A1C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1E5C9C1A0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055568, &qword_1E5CA4ED8);
  sub_1E5C80794(a2 + *(v3 + 44));
  v4 = sub_1E5C9C4C0();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055570, &qword_1E5CA4F10);
  v7 = (a2 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  return result;
}

uint64_t sub_1E5C80AB4(uint64_t a1)
{
  v2 = sub_1E5C9C820();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E5C9C080();
}

uint64_t sub_1E5C80B7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055578, &qword_1E5CA4F18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5C80BEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055578, &qword_1E5CA4F18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E5C80C54()
{
  result = qword_1ED055590;
  if (!qword_1ED055590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055570, &qword_1E5CA4F10);
    sub_1E5C27F74(&qword_1ED055598, &qword_1ED0555A0, &qword_1E5CA4F60, MEMORY[0x1E69817F8]);
    sub_1E5C27F74(&qword_1ED0549C8, &qword_1ED0549D0, &qword_1E5CA1520, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055590);
  }

  return result;
}

uint64_t SearchHint.makeImpression(grouped:)(char a1)
{
  v2 = sub_1E5C9CB20();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1E5C9CB50();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for SearchHint(0);
  v5 = *(v1 + *(v4 + 28));

  sub_1E5C9CB30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555A8, &qword_1E5CA4F68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5CA4830;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  v7 = (v1 + *(v4 + 24));
  v9 = *v7;
  v8 = v7[1];
  v10 = MEMORY[0x1E69E6158];
  *(inited + 48) = v9;
  *(inited + 56) = v8;
  *(inited + 72) = v10;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  strcpy((inited + 96), "hintListItem");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  *(inited + 120) = v10;
  *(inited + 128) = 0x6973736572706D69;
  *(inited + 168) = MEMORY[0x1E69E6530];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = v5;

  sub_1E5C8E204(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555B0, &qword_1E5CA4F70);
  swift_arrayDestroy();
  sub_1E5C9CB10();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1E5C8E204(MEMORY[0x1E69E7CC0]);
  sub_1E5C8E204(v11);
  return sub_1E5C9CB60();
}

uint64_t static SearchHint.makeSuggestionsShelfImpression()()
{
  v0 = sub_1E5C9CB20();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1E5C9CB50();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1E5C9CB40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555A8, &qword_1E5CA4F68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5CA12B0;
  *(inited + 32) = 0x6973736572706D69;
  v3 = inited + 32;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xEE00657079546E6FLL;
  *(inited + 48) = 0x666C656873;
  *(inited + 56) = 0xE500000000000000;
  sub_1E5C8E204(inited);
  swift_setDeallocating();
  sub_1E5C81174(v3);
  sub_1E5C9CB10();
  v4 = MEMORY[0x1E69E7CC0];
  sub_1E5C8E204(MEMORY[0x1E69E7CC0]);
  sub_1E5C8E204(v4);
  return sub_1E5C9CB60();
}

uint64_t sub_1E5C81174(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555B0, &qword_1E5CA4F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SearchItem.editorialCardIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchItem(0) + 36));

  return v1;
}

double SearchItem.healthKitActivityTypes.getter()
{
  type metadata accessor for SearchItem(0);

  return result;
}

uint64_t SearchItem.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchItem(0) + 44));

  return v1;
}

uint64_t SearchItem.recencyTag.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchItem(0) + 56));

  return v1;
}

uint64_t SearchItem.referenceIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchItem(0) + 60));

  return v1;
}

uint64_t SearchItem.sampleContentIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchItem(0) + 68));

  return v1;
}

uint64_t SearchItem.streamingArtworkCropCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchItem(0) + 80));

  return v1;
}

uint64_t SearchItem.streamingSubtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchItem(0) + 84));

  return v1;
}

uint64_t SearchItem.streamingTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchItem(0) + 88));

  return v1;
}

uint64_t SearchItem.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchItem(0) + 96);
  v4 = sub_1E5C9BAA0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double SearchItem.type.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchItem(0) + 100));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;

  return result;
}

uint64_t SearchItem.init(identifier:type:referenceIdentifier:editorialCardIdentifier:referenceType:artworkDescriptor:assetLoadState:bookmarked:title:subtitle:detail:healthKitActivityTypes:mediaType:completedCount:isIncompletePlanWorkout:recencyTag:sampleContentIdentifier:streamingArtwork:streamingArtworkCropCode:streamingTitle:streamingSubtitle:streamingURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v52 = a3[1];
  v53 = *a3;
  sub_1E5C6FECC(a10, a9, &qword_1ED0555B8, &qword_1E5CA4F78);
  v32 = type metadata accessor for SearchItem(0);
  *(a9 + v32[5]) = a11;
  *(a9 + v32[6]) = a12;
  *(a9 + v32[7]) = a18;
  sub_1E5C6FECC(a15, a9 + v32[8], &qword_1ED0555C0, &qword_1E5CA4F80);
  v33 = (a9 + v32[9]);
  *v33 = a6;
  v33[1] = a7;
  *(a9 + v32[10]) = a16;
  v34 = (a9 + v32[11]);
  *v34 = a1;
  v34[1] = a2;
  *(a9 + v32[12]) = a19;
  *(a9 + v32[13]) = a17;
  v35 = (a9 + v32[14]);
  *v35 = a20;
  v35[1] = a21;
  v36 = (a9 + v32[15]);
  *v36 = a4;
  v36[1] = a5;
  *(a9 + v32[16]) = a8;
  v37 = (a9 + v32[17]);
  *v37 = a22;
  v37[1] = a23;
  sub_1E5C6FECC(a14, a9 + v32[18], &qword_1ED0555C0, &qword_1E5CA4F80);
  sub_1E5C6FECC(a24, a9 + v32[19], &qword_1ED0555C8, &qword_1E5CA4F88);
  v38 = (a9 + v32[20]);
  *v38 = a25;
  v38[1] = a26;
  v39 = (a9 + v32[21]);
  *v39 = a29;
  v39[1] = a30;
  v40 = (a9 + v32[22]);
  *v40 = a27;
  v40[1] = a28;
  sub_1E5C6FECC(a31, a9 + v32[23], &qword_1ED0555D0, &qword_1E5CA4F90);
  v41 = v32[24];
  v42 = sub_1E5C9BAA0();
  result = (*(*(v42 - 8) + 32))(a9 + v41, a13, v42);
  v44 = (a9 + v32[25]);
  *v44 = v53;
  v44[1] = v52;
  return result;
}

unint64_t sub_1E5C81998(char a1)
{
  result = 0x616F4C7465737361;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6B72616D6B6F6F62;
      break;
    case 3:
      result = 0x6574656C706D6F63;
      break;
    case 4:
      result = 0x6C6961746564;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x696669746E656469;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0x707954616964656DLL;
      break;
    case 10:
      result = 0x5479636E65636572;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x636E657265666572;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0x656C746974627573;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0xD000000000000018;
      break;
    case 18:
    case 19:
      result = 0x6E696D6165727473;
      break;
    case 20:
      result = 0x656C746974;
      break;
    case 21:
      result = 1701869940;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1E5C81C1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5C854F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5C81C50(uint64_t a1)
{
  v2 = sub_1E5C84EA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C81C8C(uint64_t a1)
{
  v2 = sub_1E5C84EA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555D8, &qword_1E5CA4F98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C84EA8();
  sub_1E5C9D130();
  LOBYTE(v15) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555B8, &qword_1E5CA4F78);
  sub_1E5C84FA4(&qword_1ED0555E8, MEMORY[0x1E699DBD8]);
  sub_1E5C9D030();
  if (!v2)
  {
    v9 = type metadata accessor for SearchItem(0);
    LOBYTE(v15) = *(v3 + v9[5]);
    v17 = 1;
    sub_1E5C84EFC();
    sub_1E5C9CFF0();
    LOBYTE(v15) = 2;
    sub_1E5C9CFE0();
    LOBYTE(v15) = 3;
    sub_1E5C9D020();
    LOBYTE(v15) = 4;
    sub_1E5C9BAA0();
    sub_1E5C21FD4(&qword_1ED054E10, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
    sub_1E5C9CFF0();
    LOBYTE(v15) = 5;
    sub_1E5C9CFD0();
    v15 = *(v3 + v9[10]);
    v17 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555F8, &qword_1E5CA4FA0);
    sub_1E5C85048(&qword_1ED055600, MEMORY[0x1E69E6818], MEMORY[0x1E69E6300]);
    sub_1E5C9D030();
    LOBYTE(v15) = 7;
    sub_1E5C9D000();
    LOBYTE(v15) = 8;
    sub_1E5C9CFE0();
    LOBYTE(v15) = *(v3 + v9[13]);
    v17 = 9;
    sub_1E5C84F50();
    sub_1E5C9CFF0();
    LOBYTE(v15) = 10;
    sub_1E5C9CFD0();
    LOBYTE(v15) = 11;
    sub_1E5C9D000();
    LOBYTE(v15) = *(v3 + v9[16]);
    v17 = 12;
    sub_1E5C4F390();
    sub_1E5C9D030();
    LOBYTE(v15) = 13;
    sub_1E5C9CFD0();
    LOBYTE(v15) = 14;
    sub_1E5C9CFF0();
    v14 = v9[19];
    LOBYTE(v15) = 15;
    type metadata accessor for SearchArtwork(0);
    sub_1E5C21FD4(&qword_1EE2C4338, type metadata accessor for SearchArtwork, &protocol conformance descriptor for SearchArtwork);
    sub_1E5C9CFF0();
    LOBYTE(v15) = 16;
    sub_1E5C9CFD0();
    LOBYTE(v15) = 17;
    sub_1E5C9CFD0();
    LOBYTE(v15) = 18;
    sub_1E5C9CFD0();
    v14 = v9[23];
    LOBYTE(v15) = 19;
    sub_1E5C9BB30();
    sub_1E5C21FD4(&qword_1ED055610, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1E5C9CFF0();
    LOBYTE(v15) = 20;
    sub_1E5C9D030();
    v10 = (v3 + v9[25]);
    v11 = v10[1];
    v15 = *v10;
    v16 = v11;
    v17 = 21;
    sub_1E5C4F3E4();

    sub_1E5C9D030();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SearchItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v63 = sub_1E5C9BAA0();
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v59 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555D0, &qword_1E5CA4F90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v58 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555C8, &qword_1E5CA4F88);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v62 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555C0, &qword_1E5CA4F80);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555B8, &qword_1E5CA4F78);
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v56 - v15;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055618, &qword_1E5CA4FA8);
  v64 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v17 = &v56 - v16;
  v18 = type metadata accessor for SearchItem(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1E5C84EA8();
  v66 = v17;
  v22 = v68;
  sub_1E5C9D120();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(v69);
  }

  v23 = v13;
  v56 = v11;
  v57 = v18;
  v24 = v64;
  v68 = v20;
  LOBYTE(v70) = 0;
  sub_1E5C84FA4(&qword_1ED055620, MEMORY[0x1E699DBE0]);
  v25 = v65;
  sub_1E5C9CFA0();
  v26 = v68;
  sub_1E5C6FECC(v25, v68, &qword_1ED0555B8, &qword_1E5CA4F78);
  v71 = 1;
  sub_1E5C84FF4();
  sub_1E5C9CF60();
  v27 = v57;
  *(v26 + v57[5]) = v70;
  LOBYTE(v70) = 2;
  *(v26 + v27[6]) = sub_1E5C9CF50();
  LOBYTE(v70) = 3;
  *(v26 + v27[7]) = sub_1E5C9CF90();
  LOBYTE(v70) = 4;
  v28 = v23;
  v29 = sub_1E5C21FD4(&qword_1ED054E28, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
  sub_1E5C9CF60();
  sub_1E5C6FECC(v28, v26 + v27[8], &qword_1ED0555C0, &qword_1E5CA4F80);
  LOBYTE(v70) = 5;
  v30 = sub_1E5C9CF40();
  v65 = v29;
  v31 = (v26 + v27[9]);
  *v31 = v30;
  v31[1] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555F8, &qword_1E5CA4FA0);
  v71 = 6;
  sub_1E5C85048(&qword_1ED055630, MEMORY[0x1E69E6840], MEMORY[0x1E69E6330]);
  sub_1E5C9CFA0();
  *(v26 + v27[10]) = v70;
  LOBYTE(v70) = 7;
  v33 = sub_1E5C9CF70();
  v34 = (v26 + v27[11]);
  *v34 = v33;
  v34[1] = v35;
  LOBYTE(v70) = 8;
  v68[v57[12]] = sub_1E5C9CF50();
  v71 = 9;
  sub_1E5C850B4();
  sub_1E5C9CF60();
  v68[v57[13]] = v70;
  LOBYTE(v70) = 10;
  v36 = sub_1E5C9CF40();
  v37 = &v68[v57[14]];
  *v37 = v36;
  v37[1] = v38;
  LOBYTE(v70) = 11;
  v39 = sub_1E5C9CF70();
  v40 = &v68[v57[15]];
  *v40 = v39;
  v40[1] = v41;
  v71 = 12;
  sub_1E5C4F7C4();
  sub_1E5C9CFA0();
  v68[v57[16]] = v70;
  LOBYTE(v70) = 13;
  v42 = sub_1E5C9CF40();
  v43 = &v68[v57[17]];
  *v43 = v42;
  v43[1] = v44;
  LOBYTE(v70) = 14;
  sub_1E5C9CF60();
  sub_1E5C6FECC(v56, &v68[v57[18]], &qword_1ED0555C0, &qword_1E5CA4F80);
  type metadata accessor for SearchArtwork(0);
  LOBYTE(v70) = 15;
  sub_1E5C21FD4(&qword_1EE2C4320, type metadata accessor for SearchArtwork, &protocol conformance descriptor for SearchArtwork);
  sub_1E5C9CF60();
  sub_1E5C6FECC(v62, &v68[v57[19]], &qword_1ED0555C8, &qword_1E5CA4F88);
  LOBYTE(v70) = 16;
  v45 = sub_1E5C9CF40();
  v46 = &v68[v57[20]];
  *v46 = v45;
  v46[1] = v47;
  LOBYTE(v70) = 17;
  v48 = sub_1E5C9CF40();
  v49 = &v68[v57[21]];
  *v49 = v48;
  v49[1] = v50;
  LOBYTE(v70) = 18;
  v51 = sub_1E5C9CF40();
  v52 = &v68[v57[22]];
  *v52 = v51;
  v52[1] = v53;
  sub_1E5C9BB30();
  LOBYTE(v70) = 19;
  sub_1E5C21FD4(&qword_1ED055640, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  sub_1E5C9CF60();
  sub_1E5C6FECC(v58, &v68[v57[23]], &qword_1ED0555D0, &qword_1E5CA4F90);
  LOBYTE(v70) = 20;
  sub_1E5C9CFA0();
  (*(v61 + 32))(&v68[v57[24]], v59, v63);
  v71 = 21;
  sub_1E5C4F818();
  sub_1E5C9CFA0();
  (*(v24 + 8))(v66, v67);
  v54 = v68;
  *&v68[v57[25]] = v70;
  sub_1E5C85108(v54, v60);
  __swift_destroy_boxed_opaque_existential_1(v69);
  return sub_1E5C851D0(v54, type metadata accessor for SearchItem);
}

uint64_t SearchItem.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E5C9BB30();
  v46 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555D0, &qword_1E5CA4F90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v39 - v7;
  v8 = type metadata accessor for SearchArtwork(0);
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555C8, &qword_1E5CA4F88);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v42 = &v39 - v11;
  v12 = sub_1E5C9BAA0();
  v48 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555C0, &qword_1E5CA4F80);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v39 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555B8, &qword_1E5CA4F78);
  sub_1E5C9BC50();
  v21 = type metadata accessor for SearchItem(0);
  v22 = *(v1 + v21[5]);
  v47 = v4;
  sub_1E5C9D0F0();
  if (v22 != 9)
  {
    MEMORY[0x1E69399F0](v22);
  }

  v23 = v48;
  if (*(v1 + v21[6]) != 2)
  {
    sub_1E5C9D0F0();
  }

  sub_1E5C9D0F0();
  MEMORY[0x1E69399F0](*(v1 + v21[7]));
  sub_1E5C3165C(v1 + v21[8], v20, &qword_1ED0555C0, &qword_1E5CA4F80);
  v41 = *(v23 + 48);
  if (v41(v20, 1, v12) == 1)
  {
    sub_1E5C9D0F0();
  }

  else
  {
    (*(v23 + 32))(v14, v20, v12);
    sub_1E5C9D0F0();
    sub_1E5C21FD4(&qword_1ED053F50, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
    sub_1E5C9CBB0();
    (*(v23 + 8))(v14, v12);
  }

  if (*(v1 + v21[9] + 8))
  {
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  v24 = *(v1 + v21[10]);
  MEMORY[0x1E69399F0](*(v24 + 16));
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = (v24 + 32);
    do
    {
      v27 = *v26++;
      MEMORY[0x1E69399F0](v27);
      --v25;
    }

    while (v25);
  }

  sub_1E5C9CC60();
  if (*(v1 + v21[12]) != 2)
  {
    sub_1E5C9D0F0();
  }

  sub_1E5C9D0F0();
  v28 = *(v1 + v21[13]);
  sub_1E5C9D0F0();
  if (v28 != 4)
  {
    MEMORY[0x1E69399F0](v28);
  }

  if (*(v1 + v21[14] + 8))
  {
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  sub_1E5C9CC60();
  sub_1E5C4ED58(a1, *(v1 + v21[16]));
  if (*(v1 + v21[17] + 8))
  {
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  v29 = v48;
  sub_1E5C3165C(v1 + v21[18], v18, &qword_1ED0555C0, &qword_1E5CA4F80);
  if (v41(v18, 1, v12) == 1)
  {
    sub_1E5C9D0F0();
  }

  else
  {
    (*(v29 + 32))(v14, v18, v12);
    sub_1E5C9D0F0();
    sub_1E5C21FD4(&qword_1ED053F50, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
    sub_1E5C9CBB0();
    (*(v29 + 8))(v14, v12);
  }

  v31 = v45;
  v30 = v46;
  v33 = v43;
  v32 = v44;
  v34 = v42;
  sub_1E5C3165C(v2 + v21[19], v42, &qword_1ED0555C8, &qword_1E5CA4F88);
  if ((*(v33 + 48))(v34, 1, v32) == 1)
  {
    sub_1E5C9D0F0();
  }

  else
  {
    v35 = v39;
    sub_1E5C8516C(v34, v39);
    sub_1E5C9D0F0();
    SearchArtwork.hash(into:)(a1);
    sub_1E5C851D0(v35, type metadata accessor for SearchArtwork);
  }

  if (*(v2 + v21[20] + 8))
  {
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  if (*(v2 + v21[21] + 8))
  {
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  if (*(v2 + v21[22] + 8))
  {
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  sub_1E5C3165C(v2 + v21[23], v31, &qword_1ED0555D0, &qword_1E5CA4F90);
  v36 = v47;
  if ((*(v30 + 48))(v31, 1, v47) == 1)
  {
    sub_1E5C9D0F0();
  }

  else
  {
    v37 = v40;
    (*(v30 + 32))(v40, v31, v36);
    sub_1E5C9D0F0();
    sub_1E5C21FD4(&qword_1ED055648, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1E5C9CBB0();
    (*(v30 + 8))(v37, v36);
  }

  sub_1E5C21FD4(&qword_1ED053F50, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E5C9CBB0();
  if (!*(v2 + v21[25] + 8))
  {
    return MEMORY[0x1E69399F0](0);
  }

  MEMORY[0x1E69399F0](1);
  return sub_1E5C9CC60();
}

uint64_t SearchItem.hashValue.getter()
{
  sub_1E5C9D0D0();
  SearchItem.hash(into:)(v1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C83E94()
{
  sub_1E5C9D0D0();
  SearchItem.hash(into:)(v1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C83ED8(uint64_t a1)
{
  sub_1E5C9D0D0();
  SearchItem.hash(into:)(v2);
  return sub_1E5C9D110();
}

BOOL _s13FitnessSearch0B4ItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5C9BB30();
  v149 = *(v4 - 8);
  v150 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v146 = &v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555D0, &qword_1E5CA4F90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v148 = &v140 - v7;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055670, &qword_1E5CA5240);
  MEMORY[0x1EEE9AC00](v147);
  v151 = &v140 - v8;
  v9 = type metadata accessor for SearchArtwork(0);
  v154 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v152 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555C8, &qword_1E5CA4F88);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v155 = &v140 - v12;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055678, &qword_1E5CA5248);
  MEMORY[0x1EEE9AC00](v153);
  v156 = &v140 - v13;
  v14 = sub_1E5C9BAA0();
  v157 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v140 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555C0, &qword_1E5CA4F80);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v140 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v140 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055680, &unk_1E5CA5250);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v140 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v140 - v27;
  sub_1E5C21FD4(&qword_1EE2C4340, type metadata accessor for SearchArtwork, &protocol conformance descriptor for SearchArtwork);
  if ((sub_1E5C9BC40() & 1) == 0)
  {
    return 0;
  }

  v29 = type metadata accessor for SearchItem(0);
  v30 = *(v29 + 20);
  v31 = *(a1 + v30);
  v32 = *(a2 + v30);
  v33 = a1;
  if (v31 == 9)
  {
    if (v32 != 9)
    {
      return 0;
    }
  }

  else if (v31 != v32)
  {
    return 0;
  }

  v34 = v29;
  v35 = *(v29 + 24);
  v36 = *(a1 + v35);
  v37 = *(a2 + v35);
  if (v36 == 2)
  {
    if (v37 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v37 == 2 || ((v37 ^ v36) & 1) != 0)
    {
      return result;
    }
  }

  if (*(a1 + v34[7]) != *(a2 + v34[7]))
  {
    return 0;
  }

  v142 = a1;
  v143 = v34;
  v145 = a2;
  v39 = v34[8];
  v40 = *(v23 + 48);
  sub_1E5C3165C(v33 + v39, v28, &qword_1ED0555C0, &qword_1E5CA4F80);
  v144 = v40;
  sub_1E5C3165C(v145 + v39, &v28[v40], &qword_1ED0555C0, &qword_1E5CA4F80);
  v42 = v157 + 48;
  v41 = *(v157 + 48);
  if (v41(v28, 1, v14) != 1)
  {
    sub_1E5C3165C(v28, v22, &qword_1ED0555C0, &qword_1E5CA4F80);
    v140 = v41;
    if (v41(&v28[v144], 1, v14) != 1)
    {
      v141 = v42;
      v48 = v157;
      (*(v157 + 32))(v16, &v28[v144], v14);
      sub_1E5C21FD4(&qword_1ED055690, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
      LODWORD(v144) = sub_1E5C9CC00();
      v49 = *(v48 + 8);
      v49(v16, v14);
      v49(v22, v14);
      v44 = v145;
      sub_1E5C3177C(v28, &qword_1ED0555C0, &qword_1E5CA4F80);
      v43 = v140;
      if ((v144 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_22;
    }

    (*(v157 + 8))(v22, v14);
LABEL_17:
    v45 = &qword_1ED055680;
    v46 = &unk_1E5CA5250;
    v47 = v28;
    goto LABEL_18;
  }

  v141 = v42;
  if (v41(&v28[v144], 1, v14) != 1)
  {
    goto LABEL_17;
  }

  v43 = v41;
  sub_1E5C3177C(v28, &qword_1ED0555C0, &qword_1E5CA4F80);
  v44 = v145;
LABEL_22:
  v51 = v142;
  v50 = v143;
  v52 = v143[9];
  v53 = (v142 + v52);
  v54 = *(v142 + v52 + 8);
  v55 = (v44 + v52);
  v56 = v55[1];
  if (v54)
  {
    if (!v56)
    {
      return 0;
    }

    if (*v53 != *v55 || v54 != v56)
    {
      v57 = sub_1E5C9D060();
      v51 = v142;
      v50 = v143;
      if ((v57 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v56)
  {
    return 0;
  }

  v58 = v51;
  if ((sub_1E5C787A4(*(v51 + v50[10]), *(v44 + v50[10])) & 1) == 0)
  {
    return 0;
  }

  v59 = v143;
  v60 = v143[11];
  v61 = *(v58 + v60);
  v62 = *(v58 + v60 + 8);
  v63 = (v44 + v60);
  if (v61 != *v63 || (v64 = v58, v62 != v63[1]))
  {
    v65 = sub_1E5C9D060();
    v64 = v142;
    v59 = v143;
    if ((v65 & 1) == 0)
    {
      return 0;
    }
  }

  v66 = v59[12];
  v67 = *(v64 + v66);
  v68 = *(v44 + v66);
  if (v67 == 2)
  {
    if (v68 != 2)
    {
      return 0;
    }

LABEL_38:
    v69 = v59[13];
    v70 = *(v64 + v69);
    v71 = *(v44 + v69);
    if (v70 == 4)
    {
      if (v71 != 4)
      {
        return 0;
      }
    }

    else if (v70 != v71)
    {
      return 0;
    }

    v72 = v59[14];
    v73 = (v64 + v72);
    v74 = *(v64 + v72 + 8);
    v75 = (v44 + v72);
    v76 = v75[1];
    if (v74)
    {
      if (!v76)
      {
        return 0;
      }

      if (*v73 != *v75 || v74 != v76)
      {
        v77 = sub_1E5C9D060();
        v64 = v142;
        v59 = v143;
        if ((v77 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v76)
    {
      return 0;
    }

    v78 = v59[15];
    v79 = *(v64 + v78);
    v80 = *(v64 + v78 + 8);
    v81 = (v44 + v78);
    if (v79 != *v81 || v80 != v81[1])
    {
      v82 = sub_1E5C9D060();
      v64 = v142;
      v59 = v143;
      if ((v82 & 1) == 0)
      {
        return 0;
      }
    }

    v83 = v64;
    if ((sub_1E5C762CC(*(v64 + v59[16]), *(v44 + v59[16])) & 1) == 0)
    {
      return 0;
    }

    v84 = v143;
    v85 = v143[17];
    v86 = (v83 + v85);
    v87 = *(v83 + v85 + 8);
    v88 = (v44 + v85);
    v89 = v88[1];
    v90 = v83;
    if (v87)
    {
      if (!v89)
      {
        return 0;
      }

      if (*v86 != *v88 || v87 != v89)
      {
        v91 = sub_1E5C9D060();
        v90 = v142;
        v84 = v143;
        if ((v91 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v89)
    {
      return 0;
    }

    v92 = v84[18];
    v93 = *(v23 + 48);
    sub_1E5C3165C(v90 + v92, v26, &qword_1ED0555C0, &qword_1E5CA4F80);
    sub_1E5C3165C(v145 + v92, &v26[v93], &qword_1ED0555C0, &qword_1E5CA4F80);
    if (v43(v26, 1, v14) == 1)
    {
      if (v43(&v26[v93], 1, v14) == 1)
      {
        sub_1E5C3177C(v26, &qword_1ED0555C0, &qword_1E5CA4F80);
        goto LABEL_67;
      }
    }

    else
    {
      sub_1E5C3165C(v26, v20, &qword_1ED0555C0, &qword_1E5CA4F80);
      if (v43(&v26[v93], 1, v14) != 1)
      {
        v94 = v157;
        (*(v157 + 32))(v16, &v26[v93], v14);
        sub_1E5C21FD4(&qword_1ED055690, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
        v95 = sub_1E5C9CC00();
        v96 = *(v94 + 8);
        v96(v16, v14);
        v96(v20, v14);
        sub_1E5C3177C(v26, &qword_1ED0555C0, &qword_1E5CA4F80);
        if ((v95 & 1) == 0)
        {
          return 0;
        }

LABEL_67:
        v97 = v143[19];
        v98 = *(v153 + 48);
        v99 = v156;
        sub_1E5C3165C(v142 + v97, v156, &qword_1ED0555C8, &qword_1E5CA4F88);
        sub_1E5C3165C(v145 + v97, v99 + v98, &qword_1ED0555C8, &qword_1E5CA4F88);
        v100 = *(v154 + 48);
        if (v100(v99, 1, v9) == 1)
        {
          if (v100(v156 + v98, 1, v9) == 1)
          {
            sub_1E5C3177C(v156, &qword_1ED0555C8, &qword_1E5CA4F88);
LABEL_74:
            v107 = v143[20];
            v108 = (v142 + v107);
            v109 = *(v142 + v107 + 8);
            v110 = (v145 + v107);
            v111 = v110[1];
            if (v109)
            {
              if (!v111 || (*v108 != *v110 || v109 != v111) && (sub_1E5C9D060() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v111)
            {
              return 0;
            }

            v112 = v143[21];
            v113 = (v142 + v112);
            v114 = *(v142 + v112 + 8);
            v115 = (v145 + v112);
            v116 = v115[1];
            if (v114)
            {
              if (!v116 || (*v113 != *v115 || v114 != v116) && (sub_1E5C9D060() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v116)
            {
              return 0;
            }

            v117 = v143[22];
            v118 = (v142 + v117);
            v119 = *(v142 + v117 + 8);
            v120 = (v145 + v117);
            v121 = v120[1];
            if (v119)
            {
              if (!v121 || (*v118 != *v120 || v119 != v121) && (sub_1E5C9D060() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v121)
            {
              return 0;
            }

            v122 = v143[23];
            v123 = *(v147 + 48);
            v124 = v151;
            sub_1E5C3165C(v142 + v122, v151, &qword_1ED0555D0, &qword_1E5CA4F90);
            sub_1E5C3165C(v145 + v122, v124 + v123, &qword_1ED0555D0, &qword_1E5CA4F90);
            v125 = *(v149 + 48);
            if (v125(v124, 1, v150) == 1)
            {
              if (v125(v151 + v123, 1, v150) == 1)
              {
                sub_1E5C3177C(v151, &qword_1ED0555D0, &qword_1E5CA4F90);
LABEL_102:
                if (sub_1E5C9BA70())
                {
                  v135 = v143[25];
                  v136 = (v142 + v135);
                  v137 = *(v142 + v135 + 8);
                  v138 = (v145 + v135);
                  v139 = v138[1];
                  if (v137)
                  {
                    if (v139)
                    {
                      return *v136 == *v138 && v137 == v139 || (sub_1E5C9D060() & 1) != 0;
                    }
                  }

                  else if (!v139)
                  {
                    swift_bridgeObjectRelease_n();
                    return 1;
                  }
                }

                return 0;
              }
            }

            else
            {
              v126 = v151;
              sub_1E5C3165C(v151, v148, &qword_1ED0555D0, &qword_1E5CA4F90);
              if (v125(v126 + v123, 1, v150) != 1)
              {
                v127 = v149;
                v128 = v151;
                v129 = v151 + v123;
                v130 = v146;
                v131 = v150;
                (*(v149 + 32))(v146, v129, v150);
                sub_1E5C21FD4(&qword_1ED055688, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
                v132 = v148;
                v133 = sub_1E5C9CC00();
                v134 = *(v127 + 8);
                v134(v130, v131);
                v134(v132, v131);
                sub_1E5C3177C(v128, &qword_1ED0555D0, &qword_1E5CA4F90);
                if ((v133 & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_102;
              }

              (*(v149 + 8))(v148, v150);
            }

            v45 = &qword_1ED055670;
            v46 = &qword_1E5CA5240;
            v47 = v151;
LABEL_18:
            sub_1E5C3177C(v47, v45, v46);
            return 0;
          }
        }

        else
        {
          v101 = v156;
          sub_1E5C3165C(v156, v155, &qword_1ED0555C8, &qword_1E5CA4F88);
          if (v100(v101 + v98, 1, v9) != 1)
          {
            v102 = v156;
            v103 = v156 + v98;
            v104 = v152;
            sub_1E5C8516C(v103, v152);
            v105 = v155;
            v106 = _s13FitnessSearch0B7ArtworkV2eeoiySbAC_ACtFZ_0(v155, v104);
            sub_1E5C851D0(v104, type metadata accessor for SearchArtwork);
            sub_1E5C851D0(v105, type metadata accessor for SearchArtwork);
            sub_1E5C3177C(v102, &qword_1ED0555C8, &qword_1E5CA4F88);
            if (!v106)
            {
              return 0;
            }

            goto LABEL_74;
          }

          sub_1E5C851D0(v155, type metadata accessor for SearchArtwork);
        }

        v45 = &qword_1ED055678;
        v46 = &qword_1E5CA5248;
        v47 = v156;
        goto LABEL_18;
      }

      (*(v157 + 8))(v20, v14);
    }

    v45 = &qword_1ED055680;
    v46 = &unk_1E5CA5250;
    v47 = v26;
    goto LABEL_18;
  }

  result = 0;
  if (v68 != 2 && ((v68 ^ v67) & 1) == 0)
  {
    goto LABEL_38;
  }

  return result;
}

unint64_t sub_1E5C84EA8()
{
  result = qword_1ED0555E0;
  if (!qword_1ED0555E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0555E0);
  }

  return result;
}

unint64_t sub_1E5C84EFC()
{
  result = qword_1ED0555F0;
  if (!qword_1ED0555F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0555F0);
  }

  return result;
}

unint64_t sub_1E5C84F50()
{
  result = qword_1ED055608;
  if (!qword_1ED055608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055608);
  }

  return result;
}

uint64_t sub_1E5C84FA4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0555B8, &qword_1E5CA4F78);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5C84FF4()
{
  result = qword_1ED055628;
  if (!qword_1ED055628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055628);
  }

  return result;
}

uint64_t sub_1E5C85048(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0555F8, &qword_1E5CA4FA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5C850B4()
{
  result = qword_1ED055638;
  if (!qword_1ED055638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055638);
  }

  return result;
}

uint64_t sub_1E5C85108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5C8516C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchArtwork(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5C851D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for SearchItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5C853F4()
{
  result = qword_1ED055658;
  if (!qword_1ED055658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055658);
  }

  return result;
}

unint64_t sub_1E5C8544C()
{
  result = qword_1ED055660;
  if (!qword_1ED055660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055660);
  }

  return result;
}

unint64_t sub_1E5C854A4()
{
  result = qword_1ED055668;
  if (!qword_1ED055668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055668);
  }

  return result;
}

uint64_t sub_1E5C854F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001E5CA80D0 == a2;
  if (v3 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616F4C7465737361 && a2 == 0xEE00657461745364 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xEA00000000006465 || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xEE00746E756F4364 || (sub_1E5C9D060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6961746564 && a2 == 0xE600000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5CA7F60 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E5CA80F0 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E5C9D060() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5CA8110 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065 || (sub_1E5C9D060() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x5479636E65636572 && a2 == 0xEA00000000006761 || (sub_1E5C9D060() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5CA7F40 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xED00006570795465 || (sub_1E5C9D060() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5CA8130 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5CA8150 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001E5CA8170 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5CA8190 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6E696D6165727473 && a2 == 0xEE00656C74695467 || (sub_1E5C9D060() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6E696D6165727473 && a2 == 0xEC0000004C525567 || (sub_1E5C9D060() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 21;
  }

  else
  {
    v6 = sub_1E5C9D060();

    if (v6)
    {
      return 21;
    }

    else
    {
      return 22;
    }
  }
}

double static SearchHintsResult.empty(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = MEMORY[0x1E69E7CC0];
  a3[3] = a1;
  a3[4] = a2;

  return result;
}

uint64_t static SearchHintsResult.default(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for SearchHint(0);
  v7 = (v6 - 8);
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5C9BB90();
  v11 = &v10[v7[7]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v10[v7[8]];
  *v12 = a1;
  *(v12 + 1) = a2;
  *&v10[v7[9]] = 0;
  v13 = &v10[v7[10]];
  *v13 = a1;
  *(v13 + 1) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054B48, &qword_1E5CA5260);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E5CA12B0;
  sub_1E5C867B8(v10, v15 + v14);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = v15;
  a3[3] = a1;
  a3[4] = a2;
  return swift_bridgeObjectRetain_n();
}

uint64_t SearchHintsResult.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchHintsResult.term.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void __swiftcall SearchHintsResult.init(hints:term:identifier:)(FitnessSearch::SearchHintsResult *__return_ptr retstr, Swift::OpaquePointer hints, Swift::String term, Swift::String_optional identifier)
{
  retstr->identifier = identifier;
  retstr->hints = hints;
  retstr->term = term;
}

uint64_t sub_1E5C85DCC()
{
  v1 = 0x73746E6968;
  if (*v0 != 1)
  {
    v1 = 1836213620;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1E5C85E20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5C86B60(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5C85E48(uint64_t a1)
{
  v2 = sub_1E5C8681C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C85E84(uint64_t a1)
{
  v2 = sub_1E5C8681C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchHintsResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055698, &qword_1E5CA5268);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = v1[2];
  v10[2] = v1[3];
  v11 = v7;
  v10[1] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C8681C();
  sub_1E5C9D130();
  v16 = 0;
  v8 = v12;
  sub_1E5C9CFD0();
  if (!v8)
  {
    v13 = v11;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0556A8, &qword_1E5CA5270);
    sub_1E5C86870(&qword_1ED0556B0, &qword_1ED054490, &protocol conformance descriptor for SearchHint, MEMORY[0x1E69E6300]);
    sub_1E5C9D030();
    v14 = 2;
    sub_1E5C9D000();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SearchHintsResult.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0556B8, &qword_1E5CA5278);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C8681C();
  sub_1E5C9D120();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_1E5C9CF40();
  v11 = v10;
  v20 = a2;
  v21 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0556A8, &qword_1E5CA5270);
  v24 = 1;
  sub_1E5C86870(&qword_1ED0556C0, &qword_1ED0545C0, &protocol conformance descriptor for SearchHint, MEMORY[0x1E69E6330]);
  sub_1E5C9CFA0();
  v12 = v22;
  v23 = 2;
  v13 = sub_1E5C9CF70();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v20;
  *v20 = v21;
  v17[1] = v11;
  v17[2] = v12;
  v17[3] = v16;
  v17[4] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SearchHintsResult.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (*(v1 + 8))
  {
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  sub_1E5C2AB00(a1, v3);

  return sub_1E5C9CC60();
}

uint64_t SearchHintsResult.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1E5C9D0D0();
  sub_1E5C9D0F0();
  if (v1)
  {
    sub_1E5C9CC60();
  }

  sub_1E5C2AB00(v4, v2);
  sub_1E5C9CC60();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C86514()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1E5C9D0D0();
  sub_1E5C9D0F0();
  if (v1)
  {
    sub_1E5C9CC60();
  }

  sub_1E5C2AB00(v4, v2);
  sub_1E5C9CC60();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C865B0(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (*(v1 + 8))
  {
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  sub_1E5C2AB00(a1, v3);

  return sub_1E5C9CC60();
}

uint64_t sub_1E5C8664C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_1E5C9D0D0();
  sub_1E5C9D0F0();
  if (v2)
  {
    sub_1E5C9CC60();
  }

  sub_1E5C2AB00(v5, v3);
  sub_1E5C9CC60();
  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B11HintsResultV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = *a1 == *a2 && v3 == v7;
    if (!v11 && (sub_1E5C9D060() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ((sub_1E5C78800(v4, v8) & 1) == 0)
  {
    return 0;
  }

  if (v5 == v9 && v6 == v10)
  {
    return 1;
  }

  return sub_1E5C9D060();
}

uint64_t sub_1E5C867B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchHint(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5C8681C()
{
  result = qword_1ED0556A0;
  if (!qword_1ED0556A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0556A0);
  }

  return result;
}

uint64_t sub_1E5C86870(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0556A8, &qword_1E5CA5270);
    sub_1E5C868F8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5C868F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchHint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5C86940()
{
  result = qword_1ED0556C8;
  if (!qword_1ED0556C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0556C8);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E5C869A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E5C869F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E5C86A5C()
{
  result = qword_1ED0556D0;
  if (!qword_1ED0556D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0556D0);
  }

  return result;
}

unint64_t sub_1E5C86AB4()
{
  result = qword_1ED0556D8;
  if (!qword_1ED0556D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0556D8);
  }

  return result;
}

unint64_t sub_1E5C86B0C()
{
  result = qword_1ED0556E0;
  if (!qword_1ED0556E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0556E0);
  }

  return result;
}

uint64_t sub_1E5C86B60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E6968 && a2 == 0xE500000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1836213620 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5C9D060();

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

double SearchHintsState.hints.getter()
{
  if (*(v0 + 16))
  {
  }

  return result;
}

uint64_t SearchHintsState.term.getter()
{
  if (!*(v0 + 16))
  {
    return 0;
  }

  v1 = *(v0 + 24);

  return v1;
}

Swift::Bool __swiftcall SearchHintsState.containsMatchingHint(label:)(Swift::String label)
{
  object = label._object;
  countAndFlagsBits = label._countAndFlagsBits;
  v4 = type metadata accessor for SearchHint(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0556E8, &qword_1E5CA54A8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = *(v1 + 16);
  if (!v11)
  {
LABEL_12:
    v17 = 0;
    v18 = 1;
LABEL_14:
    (*(v5 + 56))(v10, v18, 1, v4);
    sub_1E5C86ED0(v10);
    return v17;
  }

  v12 = *(v11 + 16);

  if (!v12)
  {
LABEL_11:

    goto LABEL_12;
  }

  v14 = 0;
  while (v14 < *(v11 + 16))
  {
    sub_1E5C35724(v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v7);
    v15 = &v7[*(v4 + 24)];
    v16 = *v15 == countAndFlagsBits && *(v15 + 1) == object;
    if (v16 || (sub_1E5C9D060() & 1) != 0)
    {

      sub_1E5C867B8(v7, v10);
      v18 = 0;
      v17 = 1;
      goto LABEL_14;
    }

    ++v14;
    result = sub_1E5C35788(v7);
    if (v12 == v14)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5C86ED0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0556E8, &qword_1E5CA54A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SearchHintsState.datasetIdentifier.getter()
{
  if (!v0[2])
  {
    return 0;
  }

  v1 = *v0;

  return v1;
}

double SearchArtwork.flavorDescriptor.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchArtwork(0) + 20));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;

  return result;
}

uint64_t SearchArtwork.init(backgroundColor:flavorDescriptor:height:templateURL:textColor:width:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v17 = a2[1];
  v18 = *a2;
  v12 = *(a2 + 4);
  v13 = *(a2 + 5);
  sub_1E5C6FECC(a1, a7, &qword_1ED0556F0, &qword_1E5CA54B8);
  v14 = type metadata accessor for SearchArtwork(0);
  v15 = a7 + v14[5];
  *v15 = v18;
  *(v15 + 16) = v17;
  *(v15 + 32) = v12;
  *(v15 + 40) = v13;
  *(a7 + v14[6]) = a3;
  sub_1E5C6FECC(a4, a7 + v14[7], &qword_1ED0555D0, &qword_1E5CA4F90);
  result = sub_1E5C6FECC(a5, a7 + v14[8], &qword_1ED0556F0, &qword_1E5CA54B8);
  *(a7 + v14[9]) = a6;
  return result;
}

uint64_t sub_1E5C871E0()
{
  v1 = *v0;
  v2 = 0x756F72676B636162;
  v3 = 0x6574616C706D6574;
  v4 = 0x6F6C6F4374786574;
  if (v1 != 4)
  {
    v4 = 0x6874646977;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x746867696568;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E5C872B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5C88F9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5C872D8(uint64_t a1)
{
  v2 = sub_1E5C87750();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C87314(uint64_t a1)
{
  v2 = sub_1E5C87750();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchArtwork.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0556F8, &qword_1E5CA54C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C87750();
  sub_1E5C9D130();
  LOBYTE(v19) = 0;
  sub_1E5C9BC30();
  sub_1E5C2201C(&qword_1ED055708, MEMORY[0x1E699DB98], MEMORY[0x1E699DBA0]);
  sub_1E5C9CFF0();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v18 = v6;
  v17 = type metadata accessor for SearchArtwork(0);
  v10 = (v3 + *(v17 + 20));
  v11 = v10[1];
  v12 = v10[2];
  v13 = v10[3];
  v14 = v10[4];
  v15 = v10[5];
  v19 = *v10;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v25 = 1;
  sub_1E5C877A4();

  sub_1E5C9D030();

  LOBYTE(v19) = 2;
  sub_1E5C9D020();
  LOBYTE(v19) = 3;
  sub_1E5C9BB30();
  sub_1E5C2201C(&qword_1ED055610, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1E5C9CFF0();
  LOBYTE(v19) = 4;
  sub_1E5C9CFF0();
  v16 = v18;
  LOBYTE(v19) = 5;
  sub_1E5C9D020();
  return (*(v16 + 8))(v8, v5);
}

unint64_t sub_1E5C87750()
{
  result = qword_1ED055700;
  if (!qword_1ED055700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055700);
  }

  return result;
}

unint64_t sub_1E5C877A4()
{
  result = qword_1ED055710;
  if (!qword_1ED055710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055710);
  }

  return result;
}

uint64_t SearchArtwork.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555D0, &qword_1E5CA4F90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0556F0, &qword_1E5CA54B8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v35 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055718, &qword_1E5CA54C8);
  v12 = *(v11 - 8);
  v39 = v11;
  v40 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - v13;
  v15 = type metadata accessor for SearchArtwork(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1E5C87750();
  v19 = v41;
  sub_1E5C9D120();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v41 = v5;
  v36 = v9;
  v20 = v17;
  sub_1E5C9BC30();
  LOBYTE(v43) = 0;
  v21 = sub_1E5C2201C(&qword_1ED055720, MEMORY[0x1E699DB98], MEMORY[0x1E699DBB8]);
  v22 = v38;
  v23 = v39;
  sub_1E5C9CF60();
  sub_1E5C6FECC(v22, v20, &qword_1ED0556F0, &qword_1E5CA54B8);
  v47 = 1;
  sub_1E5C87DEC();
  sub_1E5C9CFA0();
  v38 = v21;
  v24 = v44;
  v25 = v45;
  v26 = v46;
  v27 = v15;
  v28 = v20 + v15[5];
  *v28 = v43;
  *(v28 + 16) = v24;
  *(v28 + 32) = v25;
  *(v28 + 40) = v26;
  LOBYTE(v43) = 2;
  v29 = sub_1E5C9CF90();
  v30 = v40;
  *(v20 + v15[6]) = v29;
  sub_1E5C9BB30();
  LOBYTE(v43) = 3;
  sub_1E5C2201C(&qword_1ED055640, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v31 = v41;
  sub_1E5C9CF60();
  sub_1E5C6FECC(v31, v20 + v15[7], &qword_1ED0555D0, &qword_1E5CA4F90);
  LOBYTE(v43) = 4;
  v32 = v36;
  sub_1E5C9CF60();
  sub_1E5C6FECC(v32, v20 + v27[8], &qword_1ED0556F0, &qword_1E5CA54B8);
  LOBYTE(v43) = 5;
  v33 = sub_1E5C9CF90();
  (*(v30 + 8))(v14, v23);
  *(v20 + v27[9]) = v33;
  sub_1E5C87E40(v20, v37);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return sub_1E5C87EA4(v20);
}

unint64_t sub_1E5C87DEC()
{
  result = qword_1ED055728;
  if (!qword_1ED055728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055728);
  }

  return result;
}

uint64_t sub_1E5C87E40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchArtwork(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5C87EA4(uint64_t a1)
{
  v2 = type metadata accessor for SearchArtwork(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SearchArtwork.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E5C9BB30();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555D0, &qword_1E5CA4F90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_1E5C9BC30();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0556F0, &qword_1E5CA54B8);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v30 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  sub_1E5C3165C(v2, &v27 - v15, &qword_1ED0556F0, &qword_1E5CA54B8);
  v29 = *(v9 + 48);
  v17 = v29(v16, 1, v8);
  v33 = v11;
  v34 = v9;
  if (v17 == 1)
  {
    sub_1E5C9D0F0();
  }

  else
  {
    (*(v9 + 32))(v11, v16, v8);
    sub_1E5C9D0F0();
    sub_1E5C2201C(&qword_1ED055730, MEMORY[0x1E699DB98], MEMORY[0x1E699DBA8]);
    sub_1E5C9CBB0();
    (*(v9 + 8))(v11, v8);
  }

  v18 = type metadata accessor for SearchArtwork(0);
  sub_1E5C9CC60();
  sub_1E5C9CC60();
  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](*(v2 + v18[6]));
  sub_1E5C3165C(v2 + v18[7], v7, &qword_1ED0555D0, &qword_1E5CA4F90);
  v20 = v31;
  v19 = v32;
  if ((*(v31 + 48))(v7, 1, v32) == 1)
  {
    sub_1E5C9D0F0();
  }

  else
  {
    v21 = v28;
    (*(v20 + 32))(v28, v7, v19);
    sub_1E5C9D0F0();
    sub_1E5C2201C(&qword_1ED055648, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1E5C9CBB0();
    (*(v20 + 8))(v21, v19);
  }

  v22 = v30;
  sub_1E5C3165C(v2 + v18[8], v30, &qword_1ED0556F0, &qword_1E5CA54B8);
  v23 = v29(v22, 1, v8);
  v25 = v33;
  v24 = v34;
  if (v23 == 1)
  {
    sub_1E5C9D0F0();
  }

  else
  {
    (*(v34 + 32))(v33, v22, v8);
    sub_1E5C9D0F0();
    sub_1E5C2201C(&qword_1ED055730, MEMORY[0x1E699DB98], MEMORY[0x1E699DBA8]);
    sub_1E5C9CBB0();
    (*(v24 + 8))(v25, v8);
  }

  return MEMORY[0x1E69399F0](*(v2 + v18[9]));
}

uint64_t SearchArtwork.hashValue.getter()
{
  sub_1E5C9D0D0();
  SearchArtwork.hash(into:)(v1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C884A0()
{
  sub_1E5C9D0D0();
  SearchArtwork.hash(into:)(v1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C884E4(uint64_t a1)
{
  sub_1E5C9D0D0();
  SearchArtwork.hash(into:)(v2);
  return sub_1E5C9D110();
}

BOOL _s13FitnessSearch0B7ArtworkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5C9BB30();
  v86 = *(v4 - 8);
  v87 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v80 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555D0, &qword_1E5CA4F90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v83 = &v73 - v7;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055670, &qword_1E5CA5240);
  MEMORY[0x1EEE9AC00](v84);
  v85 = &v73 - v8;
  v9 = sub_1E5C9BC30();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0556F0, &qword_1E5CA54B8);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v79 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v73 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055750, &unk_1E5CA5730);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v82 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v73 - v21;
  v81 = v20;
  v23 = *(v20 + 48);
  sub_1E5C3165C(a1, &v73 - v21, &qword_1ED0556F0, &qword_1E5CA54B8);
  sub_1E5C3165C(a2, &v22[v23], &qword_1ED0556F0, &qword_1E5CA54B8);
  v24 = *(v10 + 48);
  if (v24(v22, 1, v9) == 1)
  {
    if (v24(&v22[v23], 1, v9) == 1)
    {
      v74 = v10;
      v75 = v24;
      sub_1E5C3177C(v22, &qword_1ED0556F0, &qword_1E5CA54B8);
      goto LABEL_11;
    }

LABEL_6:
    v25 = &qword_1ED055750;
    v26 = &unk_1E5CA5730;
    v27 = v22;
LABEL_7:
    sub_1E5C3177C(v27, v25, v26);
    return 0;
  }

  sub_1E5C3165C(v22, v16, &qword_1ED0556F0, &qword_1E5CA54B8);
  if (v24(&v22[v23], 1, v9) == 1)
  {
    (*(v10 + 8))(v16, v9);
    goto LABEL_6;
  }

  v75 = v24;
  v29 = v88;
  (*(v10 + 32))(v88, &v22[v23], v9);
  sub_1E5C2201C(&qword_1ED055758, MEMORY[0x1E699DB98], MEMORY[0x1E699DBB0]);
  v30 = sub_1E5C9CC00();
  v74 = v10;
  v31 = *(v10 + 8);
  v31(v29, v9);
  v31(v16, v9);
  sub_1E5C3177C(v22, &qword_1ED0556F0, &qword_1E5CA54B8);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v32 = type metadata accessor for SearchArtwork(0);
  v76 = a1;
  v77 = v32;
  v33 = *(v32 + 20);
  v34 = a1 + v33;
  v35 = *(a1 + v33);
  v36 = *(a1 + v33 + 8);
  v37 = a2;
  v38 = *(a1 + v33 + 16);
  v39 = *(a1 + v33 + 24);
  v40 = *(v34 + 32);
  v41 = *(v34 + 40);
  v78 = v37;
  v42 = (v37 + v33);
  v44 = v42[2];
  v43 = v42[3];
  v45 = v42[4];
  v46 = v42[5];
  if ((v35 != *v42 || v36 != v42[1]) && (sub_1E5C9D060() & 1) == 0)
  {
    return 0;
  }

  if ((v38 != v44 || v39 != v43) && (sub_1E5C9D060() & 1) == 0)
  {
    return 0;
  }

  if ((v40 != v45 || v41 != v46) && (sub_1E5C9D060() & 1) == 0)
  {
    return 0;
  }

  v48 = v76;
  v47 = v77;
  v49 = v78;
  if (*(v76 + *(v77 + 24)) != *(v78 + *(v77 + 24)))
  {
    return 0;
  }

  v50 = *(v77 + 28);
  v51 = v85;
  v52 = *(v84 + 48);
  sub_1E5C3165C(v76 + v50, v85, &qword_1ED0555D0, &qword_1E5CA4F90);
  sub_1E5C3165C(v49 + v50, v51 + v52, &qword_1ED0555D0, &qword_1E5CA4F90);
  v54 = v86;
  v53 = v87;
  v55 = *(v86 + 48);
  if (v55(v51, 1, v87) == 1)
  {
    if (v55(v51 + v52, 1, v53) == 1)
    {
      sub_1E5C3177C(v51, &qword_1ED0555D0, &qword_1E5CA4F90);
      goto LABEL_28;
    }

LABEL_26:
    v25 = &qword_1ED055670;
    v26 = &qword_1E5CA5240;
    v27 = v51;
    goto LABEL_7;
  }

  v56 = v83;
  sub_1E5C3165C(v51, v83, &qword_1ED0555D0, &qword_1E5CA4F90);
  if (v55(v51 + v52, 1, v53) == 1)
  {
    (*(v54 + 8))(v56, v53);
    goto LABEL_26;
  }

  v57 = v51 + v52;
  v58 = v80;
  (*(v54 + 32))(v80, v57, v53);
  sub_1E5C2201C(&qword_1ED055688, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v59 = sub_1E5C9CC00();
  v60 = *(v54 + 8);
  v60(v58, v53);
  v60(v56, v53);
  sub_1E5C3177C(v51, &qword_1ED0555D0, &qword_1E5CA4F90);
  v47 = v77;
  if ((v59 & 1) == 0)
  {
    return 0;
  }

LABEL_28:
  v61 = *(v47 + 32);
  v62 = v82;
  v63 = *(v81 + 48);
  sub_1E5C3165C(v48 + v61, v82, &qword_1ED0556F0, &qword_1E5CA54B8);
  v64 = v78 + v61;
  v22 = v62;
  sub_1E5C3165C(v64, v62 + v63, &qword_1ED0556F0, &qword_1E5CA54B8);
  v65 = v75;
  if (v75(v62, 1, v9) == 1)
  {
    if (v65(v62 + v63, 1, v9) == 1)
    {
      sub_1E5C3177C(v62, &qword_1ED0556F0, &qword_1E5CA54B8);
      return *(v48 + *(v47 + 36)) == *(v78 + *(v47 + 36));
    }

    goto LABEL_6;
  }

  v66 = v62;
  v67 = v79;
  sub_1E5C3165C(v66, v79, &qword_1ED0556F0, &qword_1E5CA54B8);
  if (v65(&v22[v63], 1, v9) == 1)
  {
    (*(v74 + 8))(v67, v9);
    goto LABEL_6;
  }

  v68 = v74;
  v69 = &v22[v63];
  v70 = v88;
  (*(v74 + 32))(v88, v69, v9);
  sub_1E5C2201C(&qword_1ED055758, MEMORY[0x1E699DB98], MEMORY[0x1E699DBB0]);
  v71 = sub_1E5C9CC00();
  v72 = *(v68 + 8);
  v72(v70, v9);
  v72(v67, v9);
  sub_1E5C3177C(v22, &qword_1ED0556F0, &qword_1E5CA54B8);
  if (v71)
  {
    return *(v48 + *(v47 + 36)) == *(v78 + *(v47 + 36));
  }

  return 0;
}

unint64_t sub_1E5C88E98()
{
  result = qword_1ED055738;
  if (!qword_1ED055738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055738);
  }

  return result;
}

unint64_t sub_1E5C88EF0()
{
  result = qword_1ED055740;
  if (!qword_1ED055740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055740);
  }

  return result;
}

unint64_t sub_1E5C88F48()
{
  result = qword_1ED055748;
  if (!qword_1ED055748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055748);
  }

  return result;
}

uint64_t sub_1E5C88F9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
  if (v4 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5CA81B0 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xEB000000004C5255 || (sub_1E5C9D060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F6C6F4374786574 && a2 == 0xE900000000000072 || (sub_1E5C9D060() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E5C9D060();

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

uint64_t sub_1E5C891AC(uint64_t a1, int a2)
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

uint64_t sub_1E5C891F4(uint64_t result, int a2, int a3)
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

uint64_t sub_1E5C8926C(uint64_t a1, uint64_t a2)
{
  v77 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055868, &qword_1E5CA5920);
  v3 = MEMORY[0x1EEE9AC00](v58);
  v57 = &v54[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v54[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055870, &qword_1E5CA5928);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v75 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v54[-v9];
  v74 = sub_1E5C9BA80();
  v10 = *(v74 - 8);
  v11 = MEMORY[0x1EEE9AC00](v74);
  v13 = &v54[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v54[-v14];
  v65 = sub_1E5C9BAA0();
  v16 = *(v65 - 8);
  v17 = MEMORY[0x1EEE9AC00](v65);
  v82 = &v54[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v54[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055878, &qword_1E5CA5930);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v73 = &v54[-v22];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A48, &qword_1E5CA5890);
  v23 = MEMORY[0x1EEE9AC00](v78);
  v72 = &v54[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v64 = &v54[-v26];
  v76 = a1;
  v71 = *(a1 + 16);
  if (v71)
  {
    v62 = v15;
    v55 = v13;
    v27 = 0;
    v80 = (v10 + 48);
    v81 = (v16 + 16);
    v61 = (v10 + 32);
    v59 = (v10 + 8);
    v69 = (v16 + 8);
    v70 = (v25 + 56);
    v63 = v25;
    v68 = (v25 + 48);
    v84 = MEMORY[0x1E69E7CC0];
    v28 = v65;
    v60 = v20;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055880, &qword_1E5CA5938);
      v29 = *v81;
      (*v81)(v20, v77, v28);
      sub_1E5C9BCF0();
      v79 = v30;
      v29(v82, v20, v28);
      sub_1E5C8B814(&qword_1ED055888, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      v31 = v83;
      sub_1E5C9BA90();
      v32 = *v80;
      v33 = v74;
      if ((*v80)(v31, 1, v74) == 1)
      {
        goto LABEL_8;
      }

      v67 = v27;
      v34 = v62;
      v66 = *v61;
      v66(v62, v83, v33);
      v29(v82, v20, v28);
      v35 = v75;
      sub_1E5C9BA90();
      if (v32(v35, 1, v33) == 1)
      {
        break;
      }

      v38 = v55;
      v66(v55, v75, v33);
      sub_1E5C8B814(&qword_1ED055890, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
      result = sub_1E5C9CBF0();
      if ((result & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v40 = v33;
      v41 = v56;
      v42 = v33;
      v43 = v66;
      v66(v56, v34, v42);
      v44 = v58;
      v43(v41 + *(v58 + 48), v38, v40);
      v45 = v57;
      sub_1E5C3165C(v41, v57, &qword_1ED055868, &qword_1E5CA5920);
      v79 = *(v44 + 48);
      v37 = v73;
      v43(v73, v45, v40);
      v46 = *v59;
      (*v59)(&v45[v79], v40);
      sub_1E5C6FECC(v41, v45, &qword_1ED055868, &qword_1E5CA5920);
      v43(v37 + *(v78 + 36), &v45[*(v44 + 48)], v40);
      v46(v45, v40);
      v36 = 0;
      v28 = v65;
      v20 = v60;
      v27 = v67;
LABEL_11:
      v47 = v78;
      (*v70)(v37, v36, 1, v78);
      (*v69)(v20, v28);
      if ((*v68)(v37, 1, v47) == 1)
      {
        sub_1E5C3177C(v37, &qword_1ED055878, &qword_1E5CA5930);
      }

      else
      {
        v48 = v64;
        sub_1E5C6FECC(v37, v64, &qword_1ED054A48, &qword_1E5CA5890);
        sub_1E5C6FECC(v48, v72, &qword_1ED054A48, &qword_1E5CA5890);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_1E5C4E5F8(0, v84[2] + 1, 1, v84);
        }

        v50 = v84[2];
        v49 = v84[3];
        v51 = v63;
        if (v50 >= v49 >> 1)
        {
          v53 = sub_1E5C4E5F8((v49 > 1), v50 + 1, 1, v84);
          v51 = v63;
          v84 = v53;
        }

        v52 = v84;
        v84[2] = v50 + 1;
        sub_1E5C6FECC(v72, v52 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v50, &qword_1ED054A48, &qword_1E5CA5890);
      }

      if (v71 == ++v27)
      {
        return v84;
      }
    }

    (*v59)(v34, v33);
    v31 = v75;
    v28 = v65;
    v20 = v60;
    v27 = v67;
LABEL_8:
    sub_1E5C3177C(v31, &qword_1ED055870, &qword_1E5CA5928);
    v36 = 1;
    v37 = v73;
    goto LABEL_11;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1E5C89BB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055850, &qword_1E5CA58A0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - v2;
  v4 = sub_1E5C9BB00();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v6, qword_1ED065C88);
  __swift_project_value_buffer(v4, qword_1ED065C88);
  sub_1E5C9BAF0();
  v10[0] = swift_getKeyPath();
  swift_getKeyPath();
  sub_1E5C8B7C0();
  sub_1E5C9BAD0();

  (*(v5 + 8))(v8, v4);
  v10[1] = sub_1E5C9C7B0();
  sub_1E5C9BAE0();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1E5C89E08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055780, &qword_1E5CA57F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0557F0, &qword_1E5CA5820);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v25 = *a1;
  if (v25)
  {
    v23[2] = v25;
    v24 = *(a1 + 1);
    v22 = v9;
    v12 = swift_allocObject();
    v21 = v4;
    v13 = *(a1 + 1);
    v12[1] = *a1;
    v12[2] = v13;
    v12[3] = *(a1 + 2);
    sub_1E5C3165C(&v25, v23, &qword_1ED0557F8, &unk_1E5CA5828);
    sub_1E5C3165C(&v25, v23, &qword_1ED0557F8, &unk_1E5CA5828);
    sub_1E5C5AD88(&v24, v23);

    v14 = a2;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0556A8, &qword_1E5CA5270);
    sub_1E5C9BBA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055800, &unk_1E5CA5838);
    sub_1E5C27F74(&qword_1ED055808, &qword_1ED0556A8, &qword_1E5CA5270, MEMORY[0x1E69E6338]);
    v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055790, &qword_1E5CA57F8);
    v16 = sub_1E5C8B354();
    v23[0] = v15;
    v23[1] = v16;
    swift_getOpaqueTypeConformance2();
    sub_1E5C8B814(&qword_1ED055810, type metadata accessor for SearchHint, &protocol conformance descriptor for SearchHint);
    sub_1E5C9C960();
    sub_1E5C8B294();
    v17 = v21;
    sub_1E5C9C5A0();
    (*(v5 + 8))(v7, v17);
    (*(v22 + 32))(v14, v11, v8);
    return (*(v22 + 56))(v14, 0, 1, v8);
  }

  else
  {
    v19 = *(v9 + 56);

    return v19(a2, 1, 1, v8);
  }
}

uint64_t sub_1E5C8A1E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v5 = sub_1E5C9CBA0();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054020, &qword_1E5CA4DF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v47 - v8;
  v10 = type metadata accessor for SearchHint(0);
  v11 = v10 - 8;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0557B0, &qword_1E5CA5808);
  MEMORY[0x1EEE9AC00](v48);
  v15 = &v47 - v14;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0557A0, &qword_1E5CA5800);
  MEMORY[0x1EEE9AC00](v51);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055818, &qword_1E5CA5848);
  v54 = *(v18 - 8);
  v55 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v49 = &v47 - v19;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055790, &qword_1E5CA57F8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v47 - v20;
  v63 = *a2;
  v62 = *(a2 + 1);
  sub_1E5C35724(a1, &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v22 = swift_allocObject();
  v23 = *(a2 + 1);
  v22[1] = *a2;
  v22[2] = v23;
  v22[3] = *(a2 + 2);
  sub_1E5C867B8(&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v59 = a2;
  v60 = a1;
  sub_1E5C3165C(&v63, v61, &qword_1ED0557F8, &unk_1E5CA5828);
  sub_1E5C5AD88(&v62, v61);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055820, &qword_1E5CA5850);
  sub_1E5C27F74(&qword_1ED055828, &qword_1ED055820, &qword_1E5CA5850, MEMORY[0x1E697D658]);
  sub_1E5C9C8A0();
  v24 = sub_1E5C9C7D0();
  KeyPath = swift_getKeyPath();
  v26 = &v15[*(v48 + 36)];
  *v26 = KeyPath;
  v26[1] = v24;
  SearchHint.makeImpression(grouped:)(0);
  v27 = sub_1E5C9CB70();
  (*(*(v27 - 8) + 56))(v9, 0, 1, v27);
  v28 = v53;
  sub_1E5C9CB80();
  sub_1E5C8B4E4();
  sub_1E5C9C5C0();
  (*(v56 + 8))(v28, v57);
  sub_1E5C3177C(v9, &qword_1ED054020, &qword_1E5CA4DF0);
  sub_1E5C3177C(v15, &qword_1ED0557B0, &qword_1E5CA5808);
  v29 = sub_1E5C9C1F0();
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  v31 = &v17[*(v51 + 36)];
  *v31 = v29;
  v31[1] = sub_1E5C8B75C;
  v31[2] = v30;
  v32 = *(a1 + *(v11 + 36));
  sub_1E5C9BE10();
  sub_1E5C8B41C();
  v33 = v49;
  sub_1E5C9C680();
  sub_1E5C3177C(v17, &qword_1ED0557A0, &qword_1E5CA5800);
  LOBYTE(v17) = sub_1E5C9C480();
  sub_1E5C9BDA0();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v50;
  (*(v54 + 32))(v50, v33, v55);
  v43 = v42 + *(v52 + 36);
  *v43 = v17;
  *(v43 + 8) = v35;
  *(v43 + 16) = v37;
  *(v43 + 24) = v39;
  *(v43 + 32) = v41;
  *(v43 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054978, &qword_1E5CA1470);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1E5CA12B0;
  v61[0] = v32;
  *(v44 + 32) = sub_1E5C9D050();
  *(v44 + 40) = v45;
  sub_1E5C8B354();
  sub_1E5C9C5B0();

  return sub_1E5C3177C(v42, &qword_1ED055790, &qword_1E5CA57F8);
}

uint64_t sub_1E5C8A8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E5C9BAA0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E5C8A944(a2, *(a1 + 16), *(a1 + 24), &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_1E5C9C570();
  *a3 = result;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10 & 1;
  *(a3 + 24) = v11;
  return result;
}

uint64_t sub_1E5C8A944@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a2;
  v43 = sub_1E5C9BA60();
  v36 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A48, &qword_1E5CA5890);
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055830, &qword_1E5CA5898);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  v40 = sub_1E5C9BB00();
  MEMORY[0x1EEE9AC00](v40);
  v17 = (a1 + *(type metadata accessor for SearchHint(0) + 24));
  v18 = *v17;
  v19 = v17[1];

  sub_1E5C9BAF0();
  v44 = a4;
  v20 = v39;
  sub_1E5C9BAB0();
  result = sub_1E5C9CC70();
  if (result >= 2)
  {

    MEMORY[0x1E6938610](v20, a3, MEMORY[0x1E69E67B0]);
    sub_1E5C9BCE0();
    v22 = *(v11 + 8);
    v33 = v11 + 8;
    v31 = v22;
    v22(v14, v10);
    v45[0] = v18;
    v45[1] = v19;
    sub_1E5C8B76C();
    sub_1E5C27F74(&qword_1ED055840, &qword_1ED055830, &qword_1E5CA5898, MEMORY[0x1E69E9290]);
    v32 = v16;
    v34 = v10;
    v23 = sub_1E5C9CBD0();
    v24 = sub_1E5C8926C(v23, v44);

    v35 = v24;
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = v35 + ((v38[80] + 32) & ~v38[80]);
      v39 = *(v38 + 9);
      v38 = (v36 + 13);
      v37 = *MEMORY[0x1E69686E8];
      ++v36;
      v27 = v42;
      do
      {
        sub_1E5C3165C(v26, v9, &qword_1ED054A48, &qword_1E5CA5890);
        sub_1E5C27F74(&qword_1ED055848, &qword_1ED054A48, &qword_1E5CA5890, MEMORY[0x1E69E66D8]);
        v28 = sub_1E5C9BAC0();
        v29 = v9;
        if (qword_1ED053E10 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v40, qword_1ED065C88);
        v30 = v43;
        (*v38)(v27, v37, v43);
        sub_1E5C9BB10();
        (*v36)(v27, v30);
        v28(v45, 0);
        sub_1E5C3177C(v29, &qword_1ED054A48, &qword_1E5CA5890);
        v26 += v39;
        --v25;
        v9 = v29;
      }

      while (v25);
    }

    v31(v32, v34);
  }

  return result;
}

uint64_t sub_1E5C8AE64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5C9C810();
  *a1 = result;
  return result;
}

uint64_t sub_1E5C8AEAC@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = sub_1E5C9BEF0();
  v19 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055760, &qword_1E5CA57D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055768, &qword_1E5CA57E0);
  v9 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v11 = &v17 - v10;
  v12 = v1[1];
  v26[0] = *v1;
  v26[1] = v12;
  v26[2] = v1[2];
  v21 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055770, &qword_1E5CA57E8);
  sub_1E5C8B1D4();
  sub_1E5C9C530();
  sub_1E5C9BEE0();
  v13 = sub_1E5C27F74(&qword_1ED0557E0, &qword_1ED055760, &qword_1E5CA57D8, MEMORY[0x1E697CD20]);
  v14 = MEMORY[0x1E697C048];
  sub_1E5C9C770();
  (*(v19 + 8))(v4, v2);
  (*(v6 + 8))(v8, v5);
  v22 = v5;
  v23 = v2;
  v24 = v13;
  v25 = v14;
  swift_getOpaqueTypeConformance2();
  sub_1E5C8B5C8();
  v15 = v18;
  sub_1E5C9C5F0();
  return (*(v9 + 8))(v11, v15);
}

unint64_t sub_1E5C8B1D4()
{
  result = qword_1ED055778;
  if (!qword_1ED055778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055770, &qword_1E5CA57E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055780, &qword_1E5CA57F0);
    sub_1E5C8B294();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055778);
  }

  return result;
}

unint64_t sub_1E5C8B294()
{
  result = qword_1ED055788;
  if (!qword_1ED055788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055780, &qword_1E5CA57F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055790, &qword_1E5CA57F8);
    sub_1E5C8B354();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055788);
  }

  return result;
}

unint64_t sub_1E5C8B354()
{
  result = qword_1ED055798;
  if (!qword_1ED055798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055790, &qword_1E5CA57F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0557A0, &qword_1E5CA5800);
    sub_1E5C8B41C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055798);
  }

  return result;
}

unint64_t sub_1E5C8B41C()
{
  result = qword_1ED0557A8;
  if (!qword_1ED0557A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0557A0, &qword_1E5CA5800);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0557B0, &qword_1E5CA5808);
    sub_1E5C8B4E4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0557A8);
  }

  return result;
}

unint64_t sub_1E5C8B4E4()
{
  result = qword_1ED0557B8;
  if (!qword_1ED0557B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0557B0, &qword_1E5CA5808);
    sub_1E5C27F74(&qword_1ED0557C0, &qword_1ED0557C8, &qword_1E5CA5810, MEMORY[0x1E697D680]);
    sub_1E5C27F74(&qword_1ED0557D0, &qword_1ED0557D8, &qword_1E5CA5818, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0557B8);
  }

  return result;
}

unint64_t sub_1E5C8B5C8()
{
  result = qword_1ED0557E8;
  if (!qword_1ED0557E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0557E8);
  }

  return result;
}

uint64_t sub_1E5C8B704@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5C9C0C0();
  *a1 = result;
  return result;
}

unint64_t sub_1E5C8B76C()
{
  result = qword_1ED055838;
  if (!qword_1ED055838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055838);
  }

  return result;
}

unint64_t sub_1E5C8B7C0()
{
  result = qword_1ED055858;
  if (!qword_1ED055858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055858);
  }

  return result;
}

uint64_t sub_1E5C8B814(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5C8B86C()
{
  if (*v0)
  {
    return 1684632167;
  }

  else
  {
    return 0x6E6F676F6874726FLL;
  }
}

uint64_t sub_1E5C8B8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F676F6874726FLL && a2 == 0xEA00000000006C61;
  if (v6 || (sub_1E5C9D060() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684632167 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5C9D060();

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

uint64_t sub_1E5C8B988(uint64_t a1)
{
  v2 = sub_1E5C8BDAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C8B9C4(uint64_t a1)
{
  v2 = sub_1E5C8BDAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C8BA00(uint64_t a1)
{
  v2 = sub_1E5C8BE00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C8BA3C(uint64_t a1)
{
  v2 = sub_1E5C8BE00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C8BA78(uint64_t a1)
{
  v2 = sub_1E5C8BE54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C8BAB4(uint64_t a1)
{
  v2 = sub_1E5C8BE54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchLandingSectionLayout.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055898, &qword_1E5CA5940);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0558A0, &qword_1E5CA5948);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0558A8, &qword_1E5CA5950);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C8BDAC();
  sub_1E5C9D130();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1E5C8BE00();
    sub_1E5C9CFC0();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1E5C8BE54();
    sub_1E5C9CFC0();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_1E5C8BDAC()
{
  result = qword_1ED0558B0;
  if (!qword_1ED0558B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0558B0);
  }

  return result;
}

unint64_t sub_1E5C8BE00()
{
  result = qword_1ED0558B8;
  if (!qword_1ED0558B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0558B8);
  }

  return result;
}

unint64_t sub_1E5C8BE54()
{
  result = qword_1ED0558C0;
  if (!qword_1ED0558C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0558C0);
  }

  return result;
}

uint64_t sub_1E5C8BEC4@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E5C8BF80(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t SearchLandingSectionLayout.hashValue.getter(char a1)
{
  sub_1E5C9D0D0();
  MEMORY[0x1E69399F0](a1 & 1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C8BF80(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055908, &qword_1E5CA5CC0);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055910, &qword_1E5CA5CC8);
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055918, &unk_1E5CA5CD0);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C8BDAC();
  v11 = v26;
  sub_1E5C9D120();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_1E5C9CFB0();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_1E5C448A4();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_1E5C9CE90();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543A8, &unk_1E5C9F850);
    *v19 = &type metadata for SearchLandingSectionLayout;
    sub_1E5C9CF30();
    sub_1E5C9CE80();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_1E5C8BE00();
    sub_1E5C9CF20();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_1E5C8BE54();
    sub_1E5C9CF20();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v31 & 1;
}

unint64_t sub_1E5C8C440()
{
  result = qword_1ED0558C8;
  if (!qword_1ED0558C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0558C8);
  }

  return result;
}

unint64_t sub_1E5C8C4D8()
{
  result = qword_1ED0558D0;
  if (!qword_1ED0558D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0558D0);
  }

  return result;
}

unint64_t sub_1E5C8C530()
{
  result = qword_1ED0558D8;
  if (!qword_1ED0558D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0558D8);
  }

  return result;
}

unint64_t sub_1E5C8C588()
{
  result = qword_1ED0558E0;
  if (!qword_1ED0558E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0558E0);
  }

  return result;
}

unint64_t sub_1E5C8C5E0()
{
  result = qword_1ED0558E8;
  if (!qword_1ED0558E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0558E8);
  }

  return result;
}

unint64_t sub_1E5C8C638()
{
  result = qword_1ED0558F0;
  if (!qword_1ED0558F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0558F0);
  }

  return result;
}

unint64_t sub_1E5C8C690()
{
  result = qword_1ED0558F8;
  if (!qword_1ED0558F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0558F8);
  }

  return result;
}

unint64_t sub_1E5C8C6E8()
{
  result = qword_1ED055900;
  if (!qword_1ED055900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055900);
  }

  return result;
}

uint64_t sub_1E5C8C740()
{
  if (*v0)
  {
    return 0x746C75736572;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1E5C8C770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E5C9D060() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5C9D060();

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

uint64_t sub_1E5C8C848(uint64_t a1)
{
  v2 = sub_1E5C8D708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C8C884(uint64_t a1)
{
  v2 = sub_1E5C8D708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C8C8C0(uint64_t a1)
{
  v2 = sub_1E5C8D7B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C8C8FC(uint64_t a1)
{
  v2 = sub_1E5C8D7B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C8C938(uint64_t a1)
{
  v2 = sub_1E5C8D75C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C8C974(uint64_t a1)
{
  v2 = sub_1E5C8D75C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchHintsState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055920, &qword_1E5CA5CE0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055928, &qword_1E5CA5CE8);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055930, &qword_1E5CA5CF0);
  v9 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v11 = &v19 - v10;
  v12 = *v1;
  v23 = v1[1];
  v24 = v12;
  v14 = v1[2];
  v13 = v1[3];
  v21 = v1[4];
  v22 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C8D708();
  sub_1E5C9D130();
  if (v14)
  {
    LOBYTE(v28) = 1;
    sub_1E5C8D75C();
    v15 = v27;
    sub_1E5C9CFC0();
    v28 = v24;
    v29 = v23;
    v30 = v14;
    v31 = v22;
    v32 = v21;
    sub_1E5C3DAB0();
    v16 = v26;
    sub_1E5C9D030();
    (*(v25 + 8))(v5, v16);
    return (*(v9 + 8))(v11, v15);
  }

  else
  {
    LOBYTE(v28) = 0;
    sub_1E5C8D7B0();
    v18 = v27;
    sub_1E5C9CFC0();
    (*(v19 + 8))(v8, v20);
    return (*(v9 + 8))(v11, v18);
  }
}

uint64_t SearchHintsState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055950, &qword_1E5CA5CF8);
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055958, &qword_1E5CA5D00);
  v38 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055960, &unk_1E5CA5D08);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - v12;
  v14 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E5C8D708();
  v15 = v40;
  sub_1E5C9D120();
  if (!v15)
  {
    v40 = v11;
    v17 = v38;
    v16 = v39;
    v18 = sub_1E5C9CFB0();
    v19 = (2 * *(v18 + 16)) | 1;
    v45 = v18;
    v46 = v18 + 32;
    v47 = 0;
    v48 = v19;
    v20 = sub_1E5C448A4();
    if (v20 == 2 || v47 != v48 >> 1)
    {
      v24 = sub_1E5C9CE90();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543A8, &unk_1E5C9F850);
      *v26 = &type metadata for SearchHintsState;
      sub_1E5C9CF30();
      sub_1E5C9CE80();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v40 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v20)
      {
        LOBYTE(v41) = 1;
        sub_1E5C8D75C();
        v21 = v13;
        v22 = v6;
        sub_1E5C9CF20();
        v23 = v40;
        sub_1E5C4078C();
        v29 = v22;
        v30 = v36;
        sub_1E5C9CFA0();
        (*(v37 + 8))(v29, v30);
        (*(v23 + 8))(v21, v10);
        swift_unknownObjectRelease();
        v31 = v41;
        v32 = v42;
        v33 = v43;
        v34 = v44;
      }

      else
      {
        LOBYTE(v41) = 0;
        sub_1E5C8D7B0();
        sub_1E5C9CF20();
        v28 = v40;
        (*(v17 + 8))(v9, v7);
        (*(v28 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v31 = 0uLL;
      }

      *v16 = v31;
      *(v16 + 16) = v32;
      *(v16 + 24) = v33;
      *(v16 + 32) = v34;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t SearchHintsState.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69399F0](0);
  }

  v4 = *(v1 + 8);
  MEMORY[0x1E69399F0](1);
  sub_1E5C9D0F0();
  if (v4)
  {
    sub_1E5C9CC60();
  }

  sub_1E5C2AB00(a1, v3);

  return sub_1E5C9CC60();
}

uint64_t SearchHintsState.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1E5C9D0D0();
  if (v2)
  {
    MEMORY[0x1E69399F0](1);
    sub_1E5C9D0F0();
    if (v1)
    {
      sub_1E5C9CC60();
    }

    sub_1E5C2AB00(v4, v2);
    sub_1E5C9CC60();
  }

  else
  {
    MEMORY[0x1E69399F0](0);
  }

  return sub_1E5C9D110();
}

uint64_t sub_1E5C8D380(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69399F0](0);
  }

  v4 = *(v1 + 8);
  MEMORY[0x1E69399F0](1);
  sub_1E5C9D0F0();
  if (v4)
  {
    sub_1E5C9CC60();
  }

  sub_1E5C2AB00(a1, v3);

  return sub_1E5C9CC60();
}

uint64_t sub_1E5C8D450(uint64_t a1)
{
  sub_1E5C9D0D0();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 8);
    MEMORY[0x1E69399F0](1);
    sub_1E5C9D0F0();
    if (v3)
    {
      sub_1E5C9CC60();
    }

    sub_1E5C2AB00(v5, v2);
    sub_1E5C9CC60();
  }

  else
  {
    MEMORY[0x1E69399F0](0);
  }

  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B10HintsStateO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  if (!v5)
  {
    if (!v10)
    {
      sub_1E5C30DB8(*a1, v2, 0, v4, v6);
      sub_1E5C30DB8(v8, v7, 0, v9, v11);
      v12 = 1;
      return v12 & 1;
    }

    goto LABEL_5;
  }

  if (!v10)
  {
LABEL_5:
    sub_1E5C3210C(*a2, a2[1], v10, v9, v11);
    sub_1E5C3210C(v3, v2, v5, v4, v6);
    sub_1E5C30DB8(v3, v2, v5, v4, v6);
    sub_1E5C30DB8(v8, v7, v10, v9, v11);
    v12 = 0;
    return v12 & 1;
  }

  v16[0] = *a1;
  v16[1] = v2;
  v16[2] = v5;
  v16[3] = v4;
  v16[4] = v6;
  v15[0] = v8;
  v15[1] = v7;
  v15[2] = v10;
  v15[3] = v9;
  v15[4] = v11;
  sub_1E5C3210C(v8, v7, v10, v9, v11);
  sub_1E5C3210C(v3, v2, v5, v4, v6);
  sub_1E5C3210C(v8, v7, v10, v9, v11);
  sub_1E5C3210C(v3, v2, v5, v4, v6);
  v14 = v11;
  v12 = _s13FitnessSearch0B11HintsResultV2eeoiySbAC_ACtFZ_0(v16, v15);
  sub_1E5C30DB8(v3, v2, v5, v4, v6);
  sub_1E5C30DB8(v8, v7, v10, v9, v14);
  sub_1E5C30DB8(v8, v7, v10, v9, v14);
  sub_1E5C30DB8(v3, v2, v5, v4, v6);
  return v12 & 1;
}

unint64_t sub_1E5C8D708()
{
  result = qword_1ED055938;
  if (!qword_1ED055938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055938);
  }

  return result;
}

unint64_t sub_1E5C8D75C()
{
  result = qword_1ED055940;
  if (!qword_1ED055940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055940);
  }

  return result;
}

unint64_t sub_1E5C8D7B0()
{
  result = qword_1ED055948;
  if (!qword_1ED055948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055948);
  }

  return result;
}

unint64_t sub_1E5C8D808()
{
  result = qword_1ED055968;
  if (!qword_1ED055968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055968);
  }

  return result;
}

uint64_t sub_1E5C8D85C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1E5C8D8AC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

double sub_1E5C8D908(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 16) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1E5C8D978()
{
  result = qword_1ED055970;
  if (!qword_1ED055970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055970);
  }

  return result;
}

unint64_t sub_1E5C8D9D0()
{
  result = qword_1ED055978;
  if (!qword_1ED055978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055978);
  }

  return result;
}

unint64_t sub_1E5C8DA28()
{
  result = qword_1ED055980;
  if (!qword_1ED055980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055980);
  }

  return result;
}

unint64_t sub_1E5C8DA80()
{
  result = qword_1ED055988;
  if (!qword_1ED055988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055988);
  }

  return result;
}

unint64_t sub_1E5C8DAD8()
{
  result = qword_1ED055990;
  if (!qword_1ED055990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055990);
  }

  return result;
}

unint64_t sub_1E5C8DB30()
{
  result = qword_1ED055998;
  if (!qword_1ED055998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055998);
  }

  return result;
}

unint64_t sub_1E5C8DB88()
{
  result = qword_1ED0559A0;
  if (!qword_1ED0559A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0559A0);
  }

  return result;
}

unint64_t sub_1E5C8DBE0()
{
  result = qword_1ED0559A8;
  if (!qword_1ED0559A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0559A8);
  }

  return result;
}

uint64_t static SearchResultScope.makeShelfImpression()()
{
  v0 = sub_1E5C9CB20();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1E5C9CB50();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1E5C9CB40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555A8, &qword_1E5CA4F68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5CA3380;
  *(inited + 32) = 1701667182;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0xD000000000000014;
  *(inited + 56) = 0x80000001E5CA8080;
  *(inited + 72) = v3;
  strcpy((inited + 80), "impressionType");
  *(inited + 120) = v3;
  *(inited + 95) = -18;
  *(inited + 96) = 0x666C656873;
  *(inited + 104) = 0xE500000000000000;
  sub_1E5C8E204(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555B0, &qword_1E5CA4F70);
  swift_arrayDestroy();
  sub_1E5C9CB10();
  v4 = MEMORY[0x1E69E7CC0];
  sub_1E5C8E204(MEMORY[0x1E69E7CC0]);
  sub_1E5C8E204(v4);
  return sub_1E5C9CB60();
}

uint64_t SearchResultScope.impression.getter()
{
  v1 = sub_1E5C9CB20();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1E5C9CB50();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];

  sub_1E5C9CB30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555A8, &qword_1E5CA4F68);
  inited = swift_initStackObject();
  *(inited + 32) = 1701667182;
  *(inited + 16) = xmmword_1E5CA4830;
  v7 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 72) = v7;
  *(inited + 80) = 0x6973736572706D69;
  v8 = MEMORY[0x1E69E6530];
  *(inited + 88) = 0xEF7865646E496E6FLL;
  *(inited + 96) = v3;
  *(inited + 120) = v8;
  strcpy((inited + 128), "impressionType");
  *(inited + 168) = v7;
  *(inited + 143) = -18;
  *(inited + 144) = 0x7265746C6966;
  *(inited + 152) = 0xE600000000000000;
  sub_1E5C8E204(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555B0, &qword_1E5CA4F70);
  swift_arrayDestroy();
  sub_1E5C9CB10();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1E5C8E204(MEMORY[0x1E69E7CC0]);
  sub_1E5C8E204(v9);
  return sub_1E5C9CB60();
}

uint64_t SearchResultScope.category.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  LODWORD(result) = _s13FitnessSearch0B13ScopeCategoryO8rawValueACSgSS_tcfC_0(v1, v2);
  if (result == 9)
  {
    return 3;
  }

  else
  {
    return result;
  }
}

unint64_t sub_1E5C8E0AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0552A0, &qword_1E5CA49B8);
    v3 = sub_1E5C9CF00();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 48);
      v18 = *(v4 + 32);
      v19 = v6;
      v20 = *(v4 + 64);
      v7 = *(v4 + 16);
      v17[0] = *v4;
      v17[1] = v7;
      v21 = v17[0];
      v22 = v7;
      v23 = v18;
      v24 = v6;
      sub_1E5C3165C(v17, v16, &qword_1ED0559B8, &qword_1E5CA6138);
      result = sub_1E5C7D560(&v21);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + (result << 6));
      v11 = v22;
      *v10 = v21;
      v10[1] = v11;
      v12 = v24;
      v10[2] = v23;
      v10[3] = v12;
      *(v3[7] + 8 * result) = v20;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_11;
      }

      v3[2] = v15;
      if (!i)
      {

        return v3;
      }

      v4 += 72;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5C8E204(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0559B0, &qword_1E5CA6130);
    v3 = sub_1E5C9CF00();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E5C3165C(v4, &v13, &qword_1ED0555B0, &qword_1E5CA4F70);
      v5 = v13;
      v6 = v14;
      result = sub_1E5C7D644(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1E5C8E334(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

_OWORD *sub_1E5C8E334(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1E5C8E344()
{
  v1 = *v0;
  v2 = 0x6D6F436863746566;
  v3 = 0x7571655265676170;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x4164694477656976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7272456863746566;
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

uint64_t sub_1E5C8E40C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5C8F440(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5C8E434(uint64_t a1)
{
  v2 = sub_1E5C8ECEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C8E470(uint64_t a1)
{
  v2 = sub_1E5C8ECEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C8E4AC(uint64_t a1)
{
  v2 = sub_1E5C8EE90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C8E4E8(uint64_t a1)
{
  v2 = sub_1E5C8EE90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C8E524(uint64_t a1)
{
  v2 = sub_1E5C8EE3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C8E560(uint64_t a1)
{
  v2 = sub_1E5C8EE3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C8E59C(uint64_t a1)
{
  v2 = sub_1E5C8EDE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C8E5D8(uint64_t a1)
{
  v2 = sub_1E5C8EDE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C8E614(uint64_t a1)
{
  v2 = sub_1E5C8ED94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C8E650(uint64_t a1)
{
  v2 = sub_1E5C8ED94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C8E68C(uint64_t a1)
{
  v2 = sub_1E5C8ED40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C8E6C8(uint64_t a1)
{
  v2 = sub_1E5C8ED40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchLandingAction.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v37 = a4;
  v36 = a3;
  v38 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0559C0, &qword_1E5CA6140);
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v24 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0559C8, &qword_1E5CA6148);
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v24 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0559D0, &qword_1E5CA6150);
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v25 = &v24 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0559D8, &qword_1E5CA6158);
  v35 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0559E0, &qword_1E5CA6160);
  v34 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0559E8, &unk_1E5CA6168);
  v39 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C8ECEC();
  sub_1E5C9D130();
  if (!v37)
  {
    v41 = 0;
    sub_1E5C8EE90();
    sub_1E5C9CFC0();
    v40 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0550D8, &qword_1E5CA3E60);
    sub_1E5C74D1C(&qword_1ED0550E0, &qword_1ED0550E8, &protocol conformance descriptor for SearchLandingSectionDescriptor, MEMORY[0x1E69E6300]);
    sub_1E5C9D030();
    (*(v34 + 8))(v16, v14);
    return (*(v39 + 8))(v19, v17);
  }

  if (v37 == 1)
  {
    v42 = 1;
    sub_1E5C8EE3C();
    sub_1E5C9CFC0();
    sub_1E5C9D000();
    (*(v35 + 8))(v13, v11);
    return (*(v39 + 8))(v19, v17);
  }

  if (v38 | v36)
  {
    if (v38 ^ 1 | v36)
    {
      v45 = 4;
      sub_1E5C8ED40();
      v21 = v31;
      sub_1E5C9CFC0();
      v23 = v32;
      v22 = v33;
    }

    else
    {
      v44 = 3;
      sub_1E5C8ED94();
      v21 = v28;
      sub_1E5C9CFC0();
      v23 = v29;
      v22 = v30;
    }
  }

  else
  {
    v43 = 2;
    sub_1E5C8EDE8();
    v21 = v25;
    sub_1E5C9CFC0();
    v23 = v26;
    v22 = v27;
  }

  (*(v23 + 8))(v21, v22);
  return (*(v39 + 8))(v19, v17);
}

unint64_t sub_1E5C8ECEC()
{
  result = qword_1ED0559F0;
  if (!qword_1ED0559F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0559F0);
  }

  return result;
}

unint64_t sub_1E5C8ED40()
{
  result = qword_1ED0559F8;
  if (!qword_1ED0559F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0559F8);
  }

  return result;
}

unint64_t sub_1E5C8ED94()
{
  result = qword_1ED055A00;
  if (!qword_1ED055A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A00);
  }

  return result;
}

unint64_t sub_1E5C8EDE8()
{
  result = qword_1ED055A08;
  if (!qword_1ED055A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A08);
  }

  return result;
}

unint64_t sub_1E5C8EE3C()
{
  result = qword_1ED055A10;
  if (!qword_1ED055A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A10);
  }

  return result;
}

unint64_t sub_1E5C8EE90()
{
  result = qword_1ED055A18;
  if (!qword_1ED055A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A18);
  }

  return result;
}

uint64_t SearchLandingAction.init(from:)(void *a1)
{
  result = sub_1E5C8F618(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1E5C8EF08@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1E5C8F618(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t SearchLandingAction.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      MEMORY[0x1E69399F0](1);

      return sub_1E5C9CC60();
    }

    else
    {
      if (a2 | a3)
      {
        if (a2 ^ 1 | a3)
        {
          v7 = 4;
        }

        else
        {
          v7 = 3;
        }
      }

      else
      {
        v7 = 2;
      }

      return MEMORY[0x1E69399F0](v7);
    }
  }

  else
  {
    MEMORY[0x1E69399F0](0, a2, a3);

    return sub_1E5C2AD0C(a1, a2);
  }
}

uint64_t SearchLandingAction.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1E5C9D0D0();
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x1E69399F0](1);
      sub_1E5C9CC60();
    }

    else
    {
      if (a1 | a2)
      {
        if (a1 ^ 1 | a2)
        {
          v6 = 4;
        }

        else
        {
          v6 = 3;
        }
      }

      else
      {
        v6 = 2;
      }

      MEMORY[0x1E69399F0](v6);
    }
  }

  else
  {
    MEMORY[0x1E69399F0](0);
    sub_1E5C2AD0C(v8, a1);
  }

  return sub_1E5C9D110();
}

uint64_t sub_1E5C8F0F4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1E5C9D0D0();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x1E69399F0](1);
      sub_1E5C9CC60();
    }

    else
    {
      if (v1 | v2)
      {
        if (v1 ^ 1 | v2)
        {
          v4 = 4;
        }

        else
        {
          v4 = 3;
        }
      }

      else
      {
        v4 = 2;
      }

      MEMORY[0x1E69399F0](v4);
    }
  }

  else
  {
    MEMORY[0x1E69399F0](0);
    sub_1E5C2AD0C(v6, v1);
  }

  return sub_1E5C9D110();
}

uint64_t sub_1E5C8F1B8(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    v4 = *(v1 + 8);
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x1E69399F0](1);

      return sub_1E5C9CC60();
    }

    else
    {
      if (v3 | v4)
      {
        if (v3 ^ 1 | v4)
        {
          v6 = 4;
        }

        else
        {
          v6 = 3;
        }
      }

      else
      {
        v6 = 2;
      }

      return MEMORY[0x1E69399F0](v6);
    }
  }

  else
  {
    MEMORY[0x1E69399F0](0);

    return sub_1E5C2AD0C(a1, v3);
  }
}

uint64_t sub_1E5C8F294(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1E5C9D0D0();
  if (v4)
  {
    if (v4 == 1)
    {
      MEMORY[0x1E69399F0](1);
      sub_1E5C9CC60();
    }

    else
    {
      if (v2 | v3)
      {
        if (v2 ^ 1 | v3)
        {
          v5 = 4;
        }

        else
        {
          v5 = 3;
        }
      }

      else
      {
        v5 = 2;
      }

      MEMORY[0x1E69399F0](v5);
    }
  }

  else
  {
    MEMORY[0x1E69399F0](0);
    sub_1E5C2AD0C(v7, v2);
  }

  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B13LandingActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      return sub_1E5C767A0(a1, a4);
    }

    return 0;
  }

  if (a3 != 1)
  {
    if (a1 | a2)
    {
      if (a1 ^ 1 | a2)
      {
        if (a6 == 2 && a4 == 2 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 2 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6 != 1)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1E5C9D060();
  }
}

uint64_t sub_1E5C8F440(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F436863746566 && a2 == 0xEE00646574656C70;
  if (v4 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7272456863746566 && a2 == 0xEA0000000000726FLL || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7571655265676170 && a2 == 0xED00006465747365 || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5CA81D0 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4164694477656976 && a2 == 0xED00007261657070)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5C9D060();

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

uint64_t sub_1E5C8F618(void *a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055AA0, &qword_1E5CA6860);
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v33 - v2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055AA8, &qword_1E5CA6868);
  v43 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v33 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055AB0, &qword_1E5CA6870);
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v44 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055AB8, &qword_1E5CA6878);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055AC0, &qword_1E5CA6880);
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055AC8, &qword_1E5CA6888);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - v13;
  v15 = a1[3];
  v47 = a1;
  v16 = __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1E5C8ECEC();
  v17 = v48;
  sub_1E5C9D120();
  if (!v17)
  {
    v48 = v10;
    v18 = v44;
    v19 = v45;
    v34 = v8;
    v20 = v46;
    v21 = sub_1E5C9CFB0();
    v22 = (2 * *(v21 + 16)) | 1;
    v49 = v21;
    v50 = v21 + 32;
    v51 = 0;
    v52 = v22;
    v23 = sub_1E5C3AAF4();
    if (v23 == 5 || v51 != v52 >> 1)
    {
      v24 = sub_1E5C9CE90();
      swift_allocError();
      v25 = v11;
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543A8, &unk_1E5C9F850);
      v16 = v14;
      *v27 = &type metadata for SearchLandingAction;
      sub_1E5C9CF30();
      sub_1E5C9CE80();
      (*(*(v24 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v12 + 8))(v14, v25);
      swift_unknownObjectRelease();
    }

    else if (v23 <= 1u)
    {
      if (v23)
      {
        LOBYTE(v53) = 1;
        sub_1E5C8EE3C();
        v31 = v7;
        sub_1E5C9CF20();
        v32 = v39;
        v16 = sub_1E5C9CF70();
        (*(v38 + 8))(v31, v32);
        (*(v12 + 8))(v14, v11);
        swift_unknownObjectRelease();
      }

      else
      {
        LOBYTE(v53) = 0;
        sub_1E5C8EE90();
        v29 = v48;
        sub_1E5C9CF20();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0550D8, &qword_1E5CA3E60);
        sub_1E5C74D1C(&qword_1ED055178, &qword_1ED055180, &protocol conformance descriptor for SearchLandingSectionDescriptor, MEMORY[0x1E69E6330]);
        v30 = v34;
        sub_1E5C9CFA0();
        (*(v36 + 8))(v29, v30);
        (*(v12 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v16 = v53;
      }
    }

    else if (v23 == 2)
    {
      LOBYTE(v53) = 2;
      sub_1E5C8EDE8();
      sub_1E5C9CF20();
      (*(v35 + 8))(v18, v37);
      (*(v12 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v16 = 0;
    }

    else if (v23 == 3)
    {
      LOBYTE(v53) = 3;
      sub_1E5C8ED94();
      sub_1E5C9CF20();
      (*(v43 + 8))(v19, v41);
      (*(v12 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v16 = 1;
    }

    else
    {
      LOBYTE(v53) = 4;
      sub_1E5C8ED40();
      sub_1E5C9CF20();
      (*(v40 + 8))(v20, v42);
      (*(v12 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v16 = 2;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v47);
  return v16;
}

unint64_t sub_1E5C8FEA0()
{
  result = qword_1ED055A20;
  if (!qword_1ED055A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A20);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FitnessSearch0B13LandingActionO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

unint64_t sub_1E5C8FF84()
{
  result = qword_1ED055A28;
  if (!qword_1ED055A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A28);
  }

  return result;
}

unint64_t sub_1E5C8FFDC()
{
  result = qword_1ED055A30;
  if (!qword_1ED055A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A30);
  }

  return result;
}

unint64_t sub_1E5C90034()
{
  result = qword_1ED055A38;
  if (!qword_1ED055A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A38);
  }

  return result;
}

unint64_t sub_1E5C9008C()
{
  result = qword_1ED055A40;
  if (!qword_1ED055A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A40);
  }

  return result;
}

unint64_t sub_1E5C900E4()
{
  result = qword_1ED055A48;
  if (!qword_1ED055A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A48);
  }

  return result;
}

unint64_t sub_1E5C9013C()
{
  result = qword_1ED055A50;
  if (!qword_1ED055A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A50);
  }

  return result;
}

unint64_t sub_1E5C90194()
{
  result = qword_1ED055A58;
  if (!qword_1ED055A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A58);
  }

  return result;
}

unint64_t sub_1E5C901EC()
{
  result = qword_1ED055A60;
  if (!qword_1ED055A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A60);
  }

  return result;
}

unint64_t sub_1E5C90244()
{
  result = qword_1ED055A68;
  if (!qword_1ED055A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A68);
  }

  return result;
}

unint64_t sub_1E5C9029C()
{
  result = qword_1ED055A70;
  if (!qword_1ED055A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A70);
  }

  return result;
}

unint64_t sub_1E5C902F4()
{
  result = qword_1ED055A78;
  if (!qword_1ED055A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A78);
  }

  return result;
}

unint64_t sub_1E5C9034C()
{
  result = qword_1ED055A80;
  if (!qword_1ED055A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A80);
  }

  return result;
}

unint64_t sub_1E5C903A4()
{
  result = qword_1ED055A88;
  if (!qword_1ED055A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A88);
  }

  return result;
}

unint64_t sub_1E5C903FC()
{
  result = qword_1ED055A90;
  if (!qword_1ED055A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A90);
  }

  return result;
}

unint64_t sub_1E5C90454()
{
  result = qword_1ED055A98;
  if (!qword_1ED055A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055A98);
  }

  return result;
}

uint64_t sub_1E5C904A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054848, qword_1E5CA1168);
  v5 = sub_1E5C27F74(&qword_1EE2C4090, &qword_1ED054848, qword_1E5CA1168, MEMORY[0x1E6999B78]);

  return MEMORY[0x1EEDDD638](v1, v2, v3, v4, v5);
}

uint64_t TVSearchView.init(store:landingCanvasView:resultsCanvasView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a5)(uint64_t)@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *a9 = sub_1E5C25FF4;
  *(a9 + 8) = v17;
  *(a9 + 16) = 0;
  v22[0] = a7;
  v22[1] = a8;
  v22[2] = a10;
  v22[3] = a11;
  type metadata accessor for TVSearchView(0, v22);

  v19 = a3(v18);
  a5(v19);
}

uint64_t sub_1E5C90660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055AE8, &qword_1E5CA6898);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v26 = v2;
  sub_1E5C904A8();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  v11 = v29;
  if (v29)
  {
    v23 = v10;
    v24 = v7;
    v13 = v30;
    v12 = v31;
    v25 = a2;
    v15 = v27;
    v14 = v28;

    sub_1E5C30DB8(v15, v14, v11, v13, v12);
    v27 = v11;
    (*(v5 + 16))(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v26, a1);
    v16 = (*(v5 + 80) + 48) & ~*(v5 + 80);
    v17 = swift_allocObject();
    v18 = *(a1 + 32);
    *(v17 + 16) = *(a1 + 16);
    *(v17 + 32) = v18;
    (*(v5 + 32))(v17 + v16, &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0556A8, &qword_1E5CA5270);
    sub_1E5C9BBA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0557C8, &qword_1E5CA5810);
    sub_1E5C27F74(&qword_1ED055808, &qword_1ED0556A8, &qword_1E5CA5270, MEMORY[0x1E69E6338]);
    sub_1E5C27F74(&qword_1ED0557C0, &qword_1ED0557C8, &qword_1E5CA5810, MEMORY[0x1E697D680]);
    sub_1E5C92BB8();
    v19 = v23;
    v7 = v24;
    a2 = v25;
    sub_1E5C9C960();
    (*(v8 + 32))(a2, v19, v7);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  return (*(v8 + 56))(a2, v20, 1, v7);
}

uint64_t sub_1E5C909AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v31 = a5;
  v32 = a6;
  v30 = a4;
  v33 = a7;
  v13 = type metadata accessor for SearchHint(0);
  v29 = *(v13 - 8);
  v14 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v35[0] = a3;
  v35[1] = a4;
  v35[2] = a5;
  v35[3] = a6;
  v15 = type metadata accessor for TVSearchView(0, v35);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - v18;
  (*(v16 + 16))(&v28 - v18, a2, v15);
  v20 = a1;
  sub_1E5C35724(a1, &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v22 = (v17 + *(v29 + 80) + v21) & ~*(v29 + 80);
  v23 = swift_allocObject();
  v24 = v30;
  v25 = v31;
  *(v23 + 2) = a3;
  *(v23 + 3) = v24;
  v26 = v32;
  *(v23 + 4) = v25;
  *(v23 + 5) = v26;
  (*(v16 + 32))(&v23[v21], v19, v15);
  sub_1E5C867B8(&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), &v23[v22]);
  v34 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055820, &qword_1E5CA5850);
  sub_1E5C27F74(&qword_1ED055828, &qword_1ED055820, &qword_1E5CA5850, MEMORY[0x1E697D658]);
  return sub_1E5C9C8A0();
}

uint64_t sub_1E5C90C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SearchAction(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  type metadata accessor for TVSearchView(0, v15);
  sub_1E5C904A8();
  sub_1E5C35724(a2, v13);
  swift_storeEnumTagMultiPayload();
  sub_1E5C9CAF0();

  return sub_1E5C30C50(v13);
}

uint64_t sub_1E5C90D2C(uint64_t a1)
{
  type metadata accessor for SearchHint(0);
  sub_1E5C28160();

  return sub_1E5C9C840();
}

uint64_t TVSearchView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v102 = *(a1 - 1);
  v111 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v110 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E5C9BBD0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v99 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E5C9CC20();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v91 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5C9C2C0();
  v100 = *(v8 - 8);
  v101 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v113 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a1;
  v10 = a1[2];
  v114 = a1[3];
  v115 = v10;
  v11 = a1[4];
  v116 = a1[5];
  v117 = v11;
  v140 = v10;
  v141 = v114;
  v142 = v11;
  v143 = v116;
  v75 = type metadata accessor for TVSearchableView(255, &v140);
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1E5C9BDB0();
  v77 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v72 - v13;
  v15 = sub_1E5C9BFB0();
  v76 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v72 - v16;
  v18 = sub_1E5C9BFB0();
  v94 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v106 = &v72 - v19;
  v72 = swift_getWitnessTable();
  v138 = v72;
  v139 = MEMORY[0x1E697E5D8];
  v109 = MEMORY[0x1E697E858];
  v73 = swift_getWitnessTable();
  v136 = v73;
  v137 = MEMORY[0x1E6980A30];
  v20 = swift_getWitnessTable();
  v140 = v18;
  v141 = v20;
  v78 = v20;
  v79 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v81 = OpaqueTypeMetadata2;
  v88 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v104 = &v72 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055AD0, &qword_1E5CA6890);
  v84 = v23;
  v140 = v18;
  v141 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v83 = OpaqueTypeConformance2;
  v82 = sub_1E5C91B1C();
  v140 = OpaqueTypeMetadata2;
  v141 = v23;
  v142 = OpaqueTypeConformance2;
  v143 = v82;
  v86 = MEMORY[0x1E697D060];
  v85 = swift_getOpaqueTypeMetadata2();
  v87 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v80 = &v72 - v25;
  v89 = sub_1E5C9BFB0();
  v93 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v107 = &v72 - v26;
  v92 = sub_1E5C9BFB0();
  v97 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v108 = &v72 - v27;
  v96 = sub_1E5C9BFB0();
  v98 = *(v96 - 8);
  v28 = MEMORY[0x1EEE9AC00](v96);
  v90 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v95 = &v72 - v30;
  v124 = v115;
  v125 = v114;
  v126 = v117;
  v127 = v116;
  v128 = v112;
  sub_1E5C9C430();
  sub_1E5C9BDC0();
  sub_1E5C9C440();
  sub_1E5C9C710();
  (*(v77 + 8))(v14, v12);
  sub_1E5C9C440();
  sub_1E5C9BFC0();
  sub_1E5C9C670();
  (*(v76 + 8))(v17, v15);
  sub_1E5C904A8();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_1E5C9C930();
  v77 = v142;
  sub_1E5C9C2B0();
  sub_1E5C9CC10();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v32 = [objc_opt_self() bundleForClass_];
  sub_1E5C904A8();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  v33 = sub_1E5C9C540();
  v35 = v34;
  LOBYTE(OpaqueTypeConformance2) = v36 & 1;
  v37 = v79;
  v38 = v106;
  sub_1E5C9C600();
  sub_1E5C2824C(v33, v35, OpaqueTypeConformance2);

  (*(v100 + 8))(v113, v101);
  (*(v94 + 8))(v38, v37);
  v118 = v115;
  v119 = v114;
  v120 = v117;
  v121 = v116;
  v39 = v112;
  v122 = v112;
  v41 = v80;
  v40 = v81;
  v43 = v83;
  v42 = v84;
  v44 = v82;
  v45 = v104;
  sub_1E5C9C690();
  (*(v88 + 8))(v45, v40);
  v46 = v105;
  sub_1E5C904A8();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  LOBYTE(v45) = v135;
  v140 = v40;
  v141 = v42;
  v142 = v43;
  v143 = v44;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v85;
  sub_1E5C4C370(v45, v85, v47);
  (*(v87 + 8))(v41, v48);
  v49 = v102;
  v113 = *(v102 + 16);
  v50 = v110;
  (v113)(v110, v39, v46);
  v51 = (*(v49 + 80) + 48) & ~*(v49 + 80);
  v52 = swift_allocObject();
  v53 = v114;
  v52[2] = v115;
  v52[3] = v53;
  v54 = v116;
  v52[4] = v117;
  v52[5] = v54;
  v106 = *(v49 + 32);
  (v106)(v52 + v51, v50, v46);
  v55 = sub_1E5C92110();
  v133 = v47;
  v134 = v55;
  v56 = v89;
  v57 = swift_getWitnessTable();
  v58 = v107;
  sub_1E5C9C730();

  (*(v93 + 8))(v58, v56);
  v59 = v110;
  (v113)(v110, v112, v46);
  v60 = swift_allocObject();
  v61 = v114;
  v60[2] = v115;
  v60[3] = v61;
  v62 = v116;
  v60[4] = v117;
  v60[5] = v62;
  (v106)(v60 + v51, v59, v46);
  v63 = MEMORY[0x1E69805D0];
  v131 = v57;
  v132 = MEMORY[0x1E69805D0];
  v64 = v92;
  v65 = swift_getWitnessTable();
  v66 = v90;
  v67 = v108;
  sub_1E5C9C630();

  (*(v97 + 8))(v67, v64);
  v129 = v65;
  v130 = v63;
  v68 = v96;
  swift_getWitnessTable();
  v69 = v95;
  sub_1E5C28390();
  v70 = *(v98 + 8);
  v70(v66, v68);
  sub_1E5C28390();
  return (v70)(v69, v68);
}

unint64_t sub_1E5C91B1C()
{
  result = qword_1ED055AD8;
  if (!qword_1ED055AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055AD0, &qword_1E5CA6890);
    sub_1E5C91BA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055AD8);
  }

  return result;
}

unint64_t sub_1E5C91BA0()
{
  result = qword_1ED055AE0;
  if (!qword_1ED055AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055AE8, &qword_1E5CA6898);
    sub_1E5C27F74(&qword_1ED0557C0, &qword_1ED0557C8, &qword_1E5CA5810, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055AE0);
  }

  return result;
}

uint64_t sub_1E5C91C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v36 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v33 = v12;
  v34 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v13;
  v39 = v14;
  v40 = v15;
  v41 = v12;
  v16 = v15;
  v32 = v15;
  v17 = v12;
  v18 = type metadata accessor for TVSearchableView(0, &v38);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v32 - v23;
  v38 = a2;
  v39 = a3;
  v40 = v16;
  v41 = v17;
  v25 = type metadata accessor for TVSearchView(0, &v38);
  sub_1E5C904A8();
  v26 = *(v10 + 16);
  v27 = v34;
  v26(v34, a1 + *(v25 + 52), a2);
  v28 = a1 + *(v25 + 56);
  v29 = v35;
  (*(v36 + 16))(v35, v28, a3);
  sub_1E5C482C8(v27, v29, a2, a3, v32, v33, v22);
  swift_getWitnessTable();
  sub_1E5C28390();
  v30 = *(v19 + 8);
  v30(v22, v18);
  sub_1E5C28390();
  return (v30)(v24, v18);
}

unint64_t sub_1E5C91F48()
{
  result = qword_1ED055AF0;
  if (!qword_1ED055AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055AF0);
  }

  return result;
}

uint64_t sub_1E5C92000()
{

  swift_getAtKeyPath();
}

double sub_1E5C92060@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  type metadata accessor for SearchAction(0);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t sub_1E5C920B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v6[0] = *(v1 + 16);
  v6[1] = v3;
  v4 = type metadata accessor for TVSearchView(0, v6);
  return sub_1E5C90660(v4, a1);
}

unint64_t sub_1E5C92110()
{
  result = qword_1ED055AF8;
  if (!qword_1ED055AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055AF8);
  }

  return result;
}

uint64_t sub_1E5C92164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for SearchAction(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  type metadata accessor for TVSearchView(0, v14);
  sub_1E5C904A8();
  swift_storeEnumTagMultiPayload();
  sub_1E5C9CAF0();

  return sub_1E5C30C50(v12);
}

uint64_t sub_1E5C92254(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v9[0] = v1[2];
  v3 = v9[0];
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = *(type metadata accessor for TVSearchView(0, v9) - 8);
  return sub_1E5C92164(v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80)), v3, v4, v5, v6, a1);
}

void sub_1E5C9233C(uint64_t a1)
{
  sub_1E5C92918(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E5C923E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v10 + v11 + ((v9 + 17) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if (v12 > 0xFE)
      {
        v24 = (a1 + v9 + 17) & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v24);
        }

        else
        {
          return (*(v7 + 48))((v24 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v23 = *(a1 + 16);
        if (v23 > 1)
        {
          return (v23 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void sub_1E5C92604(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(a4 + 24);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v11 + v12 + ((v10 + 17) & ~v10)) & ~v12) + *(*(v7 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v13 > 0xFE)
  {
    v24 = &a1[v10 + 17] & ~v10;
    if (v8 == v14)
    {
      v25 = *(v6 + 56);

      v25(v24);
    }

    else
    {
      v26 = *(v9 + 56);
      v27 = (v24 + v11 + v12) & ~v12;

      v26(v27);
    }
  }

  else if (a2 > 0xFE)
  {
    a1[16] = 0;
    *a1 = a2 - 255;
    *(a1 + 1) = 0;
  }

  else
  {
    a1[16] = -a2;
  }
}

void sub_1E5C92918(uint64_t a1)
{
  if (!qword_1EE2C40C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED054848, qword_1E5CA1168);
    sub_1E5C27F74(&qword_1EE2C4090, &qword_1ED054848, qword_1E5CA1168, MEMORY[0x1E6999B78]);
    v1 = sub_1E5C9BDF0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2C40C0);
    }
  }
}

uint64_t objectdestroy_8Tm()
{
  v2 = *(v0 + 40);
  v7 = *(v0 + 16);
  v1 = v7;
  v8 = *(v0 + 24);
  v6 = v8;
  v9 = v2;
  v3 = (type metadata accessor for TVSearchView(0, &v7) - 8);
  v4 = (v0 + ((*(*v3 + 80) + 48) & ~*(*v3 + 80)));
  sub_1E5C277E8(*v4, v4[1]);
  (*(*(v1 - 8) + 8))(v4 + v3[15], v1);
  (*(*(v6 - 8) + 8))(v4 + v3[16]);
  return swift_deallocObject();
}

uint64_t sub_1E5C92AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for TVSearchView(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1E5C909AC(a1, v10, v5, v6, v7, v8, a2);
}

unint64_t sub_1E5C92BB8()
{
  result = qword_1ED055810;
  if (!qword_1ED055810)
  {
    type metadata accessor for SearchHint(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055810);
  }

  return result;
}

uint64_t sub_1E5C92C10()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v11[0] = v0[2];
  v1 = v11[0];
  v11[1] = v2;
  v11[2] = v3;
  v11[3] = v4;
  v5 = *(type metadata accessor for TVSearchView(0, v11) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SearchHint(0) - 8);
  v9 = v0 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1E5C90C38(v0 + v6, v9, v1, v2, v3, v4);
}

uint64_t SearchQueryMethod.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x79726F74736968;
  v2 = 0x6E656D6572636E69;
  if (a1 != 2)
  {
    v2 = 0x74696D627573;
  }

  if (a1)
  {
    v1 = 1953393000;
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

unint64_t sub_1E5C92D9C@<X0>(Swift::String *a1@<X0>, FitnessSearch::SearchQueryMethod_optional *a2@<X8>)
{
  result = _s13FitnessSearch0B11QueryMethodO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_1E5C92DCC(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x79726F74736968;
  v4 = 0xEB000000006C6174;
  v5 = 0x6E656D6572636E69;
  if (*v1 != 2)
  {
    v5 = 0x74696D627573;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 1953393000;
    v2 = 0xE400000000000000;
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

uint64_t sub_1E5C92EF8(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x79726F74736968;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0x6E656D6572636E69;
  v6 = 0xEB000000006C6174;
  if (v3 != 2)
  {
    v5 = 0x74696D627573;
    v6 = 0xE600000000000000;
  }

  v7 = 1953393000;
  if (*a1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v7 = 0x79726F74736968;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  v10 = 0xE700000000000000;
  v11 = 0x6E656D6572636E69;
  v12 = 0xEB000000006C6174;
  if (*a2 != 2)
  {
    v11 = 0x74696D627573;
    v12 = 0xE600000000000000;
  }

  if (*a2)
  {
    v2 = 1953393000;
    v10 = 0xE400000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v11;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1E5C9D060();
  }

  return v15 & 1;
}

uint64_t sub_1E5C93034()
{
  sub_1E5C9D0D0();
  sub_1E5C9CC60();

  return sub_1E5C9D110();
}

uint64_t sub_1E5C930F4(uint64_t a1)
{
  sub_1E5C9CC60();
}

uint64_t sub_1E5C931A0(uint64_t a1)
{
  sub_1E5C9D0D0();
  sub_1E5C9CC60();

  return sub_1E5C9D110();
}

unint64_t _s13FitnessSearch0B11QueryMethodO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E5C9CF10();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1E5C932AC()
{
  result = qword_1ED055B08;
  if (!qword_1ED055B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055B08);
  }

  return result;
}

unint64_t sub_1E5C93310()
{
  result = qword_1ED055B10;
  if (!qword_1ED055B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055B10);
  }

  return result;
}

uint64_t sub_1E5C93368()
{
  v1 = 0x676E696863746566;
  if (*v0 != 1)
  {
    v1 = 0x746C75736572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1E5C933B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5C94D88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5C933E0(uint64_t a1)
{
  v2 = sub_1E5C946F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C9341C(uint64_t a1)
{
  v2 = sub_1E5C946F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C93458(uint64_t a1)
{
  v2 = sub_1E5C9479C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C93494(uint64_t a1)
{
  v2 = sub_1E5C9479C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C934D0(uint64_t a1)
{
  v2 = sub_1E5C947F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C9350C(uint64_t a1)
{
  v2 = sub_1E5C947F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C93548(uint64_t a1)
{
  v2 = sub_1E5C94748();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C93584(uint64_t a1)
{
  v2 = sub_1E5C94748();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchResultsState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055B18, &qword_1E5CA6B10);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v25 - v4;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055B20, &qword_1E5CA6B18);
  v29 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055B28, &qword_1E5CA6B20);
  v30 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055B30, &qword_1E5CA6B28);
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = v1[1];
  v36 = *v1;
  v37 = v13;
  v14 = v1[3];
  v35 = v1[2];
  v15 = v1[5];
  v27 = v1[4];
  v28 = v14;
  v26 = v15;
  v25 = v1[6];
  v16 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C946F4();
  sub_1E5C9D130();
  if (v16)
  {
    if (v16 == 1)
    {
      LOBYTE(v41) = 2;
      sub_1E5C94748();
      v17 = v31;
      v18 = v39;
      sub_1E5C9CFC0();
      v41 = v36;
      v42 = v37;
      v43 = v35;
      v44 = v28;
      v45 = v27;
      v46 = v26;
      v47 = v25;
      sub_1E5C3DCA8();
      v19 = v34;
      sub_1E5C9D030();
      (*(v33 + 8))(v17, v19);
    }

    else
    {
      LOBYTE(v41) = 0;
      sub_1E5C947F0();
      v18 = v39;
      sub_1E5C9CFC0();
      (*(v30 + 8))(v9, v7);
    }

    return (*(v38 + 8))(v12, v18);
  }

  else
  {
    v21 = v29;
    LOBYTE(v41) = 1;
    sub_1E5C9479C();
    v22 = v39;
    sub_1E5C9CFC0();
    LOBYTE(v41) = 0;
    v23 = v32;
    v24 = v40;
    sub_1E5C9D000();
    if (!v24)
    {
      LOBYTE(v41) = v35;
      v48 = 1;
      sub_1E5C36AF8();
      sub_1E5C9D030();
    }

    (*(v21 + 8))(v6, v23);
    return (*(v38 + 8))(v12, v22);
  }
}

uint64_t SearchResultsState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055B58, &qword_1E5CA6B30);
  v4 = *(v3 - 8);
  v47 = v3;
  v48 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v43 - v5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055B60, &qword_1E5CA6B38);
  v49 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055B68, &qword_1E5CA6B40);
  v50 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055B70, &unk_1E5CA6B48);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - v13;
  v15 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1E5C946F4();
  v16 = v53;
  sub_1E5C9D120();
  if (!v16)
  {
    v17 = v50;
    v44 = v8;
    v45 = v12;
    v19 = v51;
    v18 = v52;
    v53 = v14;
    v20 = sub_1E5C9CFB0();
    v21 = (2 * *(v20 + 16)) | 1;
    v61 = v20;
    v62 = v20 + 32;
    v63 = 0;
    v64 = v21;
    v22 = sub_1E5C448A0();
    if (v22 == 3 || v63 != v64 >> 1)
    {
      v27 = sub_1E5C9CE90();
      swift_allocError();
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543A8, &unk_1E5C9F850);
      *v29 = &type metadata for SearchResultsState;
      v30 = v53;
      sub_1E5C9CF30();
      sub_1E5C9CE80();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
      swift_willThrow();
      (*(v45 + 8))(v30, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v22)
      {
        v23 = v53;
        if (v22 == 1)
        {
          LOBYTE(v55) = 1;
          sub_1E5C9479C();
          sub_1E5C9CF20();
          LOBYTE(v55) = 0;
          v24 = v46;
          v25 = sub_1E5C9CF70();
          v26 = v45;
          v35 = v34;
          v36 = v25;
          v65 = 1;
          sub_1E5C36DE4();
          sub_1E5C9CFA0();
          (*(v49 + 8))(v7, v24);
          (*(v26 + 8))(v53, v11);
          swift_unknownObjectRelease();
          v40 = 0;
          v41 = 0;
          v42 = v55;
        }

        else
        {
          LOBYTE(v55) = 2;
          sub_1E5C94748();
          sub_1E5C9CF20();
          sub_1E5C40834();
          v33 = v47;
          sub_1E5C9CFA0();
          (*(v48 + 8))(v19, v33);
          (*(v45 + 8))(v23, v11);
          swift_unknownObjectRelease();
          v36 = v55;
          v35 = v56;
          v42 = v57;
          v37 = v58;
          v38 = v59;
          v39 = v60;
          v41 = v57 & 0xFFFFFFFFFFFFFF00;
          v40 = 1;
        }
      }

      else
      {
        LOBYTE(v55) = 0;
        sub_1E5C947F0();
        v32 = v53;
        sub_1E5C9CF20();
        (*(v17 + 8))(v10, v44);
        (*(v45 + 8))(v32, v11);
        swift_unknownObjectRelease();
        v36 = 0;
        v35 = 0;
        v37 = 0;
        v38 = 0;
        v42 = 0;
        v41 = 0;
        v39 = 0uLL;
        v40 = 2;
      }

      *v18 = v36;
      *(v18 + 8) = v35;
      *(v18 + 16) = v41 | v42;
      *(v18 + 24) = v37;
      *(v18 + 32) = v38;
      *(v18 + 40) = v39;
      *(v18 + 56) = v40;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t SearchResultsState.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (*(v1 + 56))
  {
    if (*(v1 + 56) == 1)
    {
      v5 = *(v1 + 48);
      MEMORY[0x1E69399F0](2);
      sub_1E5C9D0F0();
      if (v3)
      {
        sub_1E5C9CC60();
      }

      sub_1E5C2A580(a1, v4);
      sub_1E5C9CC60();
      if (v5)
      {
        sub_1E5C9D0F0();

        return sub_1E5C9CC60();
      }

      else
      {
        return sub_1E5C9D0F0();
      }
    }

    else
    {
      return MEMORY[0x1E69399F0](0);
    }
  }

  else
  {
    MEMORY[0x1E69399F0](1);
    sub_1E5C9CC60();
    sub_1E5C9CC60();
  }
}

uint64_t SearchResultsState.hashValue.getter()
{
  sub_1E5C9D0D0();
  SearchResultsState.hash(into:)(v1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C9446C()
{
  sub_1E5C9D0D0();
  SearchResultsState.hash(into:)(v1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C944B0(uint64_t a1)
{
  sub_1E5C9D0D0();
  SearchResultsState.hash(into:)(v2);
  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B12ResultsStateO2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v19 = *a1;
  v20 = v2;
  *v21 = a1[2];
  v3 = *v21;
  v4 = a2[1];
  v22 = *a2;
  *v23 = v4;
  v6 = *a2;
  v5 = a2[1];
  *&v23[16] = a2[2];
  *&v23[25] = *(a2 + 41);
  *&v21[9] = *(a1 + 41);
  v24[0] = v19;
  v24[1] = v2;
  v25[0] = v3;
  *(v25 + 9) = *&v21[9];
  v25[2] = v6;
  v25[3] = v5;
  v26[0] = a2[2];
  *(v26 + 9) = *(a2 + 41);
  v7 = v2;
  if (!v21[24])
  {
    if (!v23[40])
    {
      v9 = v23[0];
      if (v19 == v22 || (sub_1E5C9D060() & 1) != 0)
      {
        sub_1E5C31CB0(&v22, v18);
        sub_1E5C31CB0(&v19, v18);
        v8 = sub_1E5C76194(v7, v9);
        sub_1E5C94E9C(v24);
        return v8 & 1;
      }
    }

    goto LABEL_11;
  }

  if (v21[24] != 1)
  {
    if (v23[40] == 2)
    {
      v10 = vorrq_s8(*&v23[8], *&v23[24]);
      if (!(*&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) | *v23 | *(&v22 + 1) | v22))
      {
        sub_1E5C94E9C(v24);
        v8 = 1;
        return v8 & 1;
      }
    }

    goto LABEL_11;
  }

  if (v23[40] != 1)
  {
LABEL_11:
    sub_1E5C31CB0(&v22, v18);
    sub_1E5C31CB0(&v19, v18);
    sub_1E5C94E9C(v24);
    v8 = 0;
    return v8 & 1;
  }

  v15[0] = v19;
  v15[1] = __PAIR128__(*(&v20 + 1), v2);
  v16 = *v21;
  v17 = *&v21[8];
  v12[0] = v22;
  v12[1] = *v23;
  v13 = *&v23[16];
  v14 = *&v23[24];
  sub_1E5C31CB0(&v22, v18);
  sub_1E5C31CB0(&v19, v18);
  sub_1E5C31CB0(&v22, v18);
  sub_1E5C31CB0(&v19, v18);
  v8 = _s13FitnessSearch0B6ResultV2eeoiySbAC_ACtFZ_0(v15, v12);
  sub_1E5C94E9C(v24);
  sub_1E5C30CAC(&v22);
  sub_1E5C30CAC(&v19);
  return v8 & 1;
}

unint64_t sub_1E5C946F4()
{
  result = qword_1ED055B38;
  if (!qword_1ED055B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055B38);
  }

  return result;
}

unint64_t sub_1E5C94748()
{
  result = qword_1ED055B40;
  if (!qword_1ED055B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055B40);
  }

  return result;
}

unint64_t sub_1E5C9479C()
{
  result = qword_1ED055B48;
  if (!qword_1ED055B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055B48);
  }

  return result;
}

unint64_t sub_1E5C947F0()
{
  result = qword_1ED055B50;
  if (!qword_1ED055B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055B50);
  }

  return result;
}

unint64_t sub_1E5C94848()
{
  result = qword_1ED055B78;
  if (!qword_1ED055B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055B78);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E5C948B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5C948F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E5C94944(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

unint64_t sub_1E5C949C4()
{
  result = qword_1ED055B80;
  if (!qword_1ED055B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055B80);
  }

  return result;
}

unint64_t sub_1E5C94A1C()
{
  result = qword_1ED055B88;
  if (!qword_1ED055B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055B88);
  }

  return result;
}

unint64_t sub_1E5C94A74()
{
  result = qword_1ED055B90;
  if (!qword_1ED055B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055B90);
  }

  return result;
}

unint64_t sub_1E5C94ACC()
{
  result = qword_1ED055B98;
  if (!qword_1ED055B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055B98);
  }

  return result;
}

unint64_t sub_1E5C94B24()
{
  result = qword_1ED055BA0;
  if (!qword_1ED055BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055BA0);
  }

  return result;
}

unint64_t sub_1E5C94B7C()
{
  result = qword_1ED055BA8;
  if (!qword_1ED055BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055BA8);
  }

  return result;
}

unint64_t sub_1E5C94BD4()
{
  result = qword_1ED055BB0;
  if (!qword_1ED055BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055BB0);
  }

  return result;
}

unint64_t sub_1E5C94C2C()
{
  result = qword_1ED055BB8;
  if (!qword_1ED055BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055BB8);
  }

  return result;
}

unint64_t sub_1E5C94C84()
{
  result = qword_1ED055BC0;
  if (!qword_1ED055BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055BC0);
  }

  return result;
}

unint64_t sub_1E5C94CDC()
{
  result = qword_1ED055BC8;
  if (!qword_1ED055BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055BC8);
  }

  return result;
}

unint64_t sub_1E5C94D34()
{
  result = qword_1ED055BD0;
  if (!qword_1ED055BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055BD0);
  }

  return result;
}

uint64_t sub_1E5C94D88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5C9D060();

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

uint64_t sub_1E5C94E9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055BD8, &qword_1E5CA70C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double static SearchResult.empty(_:error:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_1E5C9BBA0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5C9BB90();
  v14 = sub_1E5C9BB70();
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  *a5 = v14;
  a5[1] = v16;
  a5[6] = a4;
  a5[2] = MEMORY[0x1E69E7CC0];
  a5[3] = a1;
  a5[4] = a2;
  a5[5] = a3;

  return result;
}

uint64_t SearchResult.datasetIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchResult.term.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SearchResult.error.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void __swiftcall SearchResult.init(datasetIdentifier:scopes:term:error:)(FitnessSearch::SearchResult *__return_ptr retstr, Swift::String_optional datasetIdentifier, Swift::OpaquePointer scopes, Swift::String term, Swift::String_optional error)
{
  retstr->datasetIdentifier = datasetIdentifier;
  retstr->error = error;
  retstr->scopes = scopes;
  retstr->term = term;
}

unint64_t sub_1E5C950E8()
{
  v1 = 0x7365706F6373;
  v2 = 1836213620;
  if (*v0 != 2)
  {
    v2 = 0x726F727265;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_1E5C95158@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5C95E58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5C95180(uint64_t a1)
{
  v2 = sub_1E5C95B5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C951BC(uint64_t a1)
{
  v2 = sub_1E5C95B5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055BE0, &qword_1E5CA70C8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[4] = v1[3];
  v12 = v7;
  v8 = v1[4];
  v11[2] = v1[5];
  v11[3] = v8;
  v11[1] = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C95B5C();
  sub_1E5C9D130();
  v18 = 0;
  v9 = v13;
  sub_1E5C9CFD0();
  if (!v9)
  {
    v14 = v12;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055278, &unk_1E5CA49A0);
    sub_1E5C95BB0(&qword_1ED055BF0, sub_1E5C32CD8, MEMORY[0x1E69E6300]);
    sub_1E5C9D030();
    v16 = 2;
    sub_1E5C9D000();
    v15 = 3;
    sub_1E5C9CFD0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SearchResult.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055BF8, &qword_1E5CA70D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C95B5C();
  sub_1E5C9D120();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  v9 = sub_1E5C9CF40();
  v23 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055278, &unk_1E5CA49A0);
  v27 = 1;
  sub_1E5C95BB0(&qword_1ED055C00, sub_1E5C3376C, MEMORY[0x1E69E6330]);
  sub_1E5C9CFA0();
  v22 = v24;
  v26 = 2;
  v20 = sub_1E5C9CF70();
  v21 = v11;
  v25 = 3;
  v12 = sub_1E5C9CF40();
  v15 = v14;
  v16 = v12;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  v17 = v22;
  a2[1] = v23;
  a2[2] = v17;
  v18 = v21;
  a2[3] = v20;
  a2[4] = v18;
  a2[5] = v16;
  a2[6] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SearchResult.hash(into:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[6];
  if (v1[1])
  {
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  sub_1E5C2A580(a1, v3);
  sub_1E5C9CC60();
  if (!v4)
  {
    return sub_1E5C9D0F0();
  }

  sub_1E5C9D0F0();

  return sub_1E5C9CC60();
}

uint64_t SearchResult.hashValue.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[6];
  sub_1E5C9D0D0();
  sub_1E5C9D0F0();
  if (v1)
  {
    sub_1E5C9CC60();
  }

  sub_1E5C2A580(v5, v2);
  sub_1E5C9CC60();
  sub_1E5C9D0F0();
  if (v3)
  {
    sub_1E5C9CC60();
  }

  return sub_1E5C9D110();
}

uint64_t sub_1E5C95980(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[6];
  sub_1E5C9D0D0();
  sub_1E5C9D0F0();
  if (v2)
  {
    sub_1E5C9CC60();
  }

  sub_1E5C2A580(v6, v3);
  sub_1E5C9CC60();
  sub_1E5C9D0F0();
  if (v4)
  {
    sub_1E5C9CC60();
  }

  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B6ResultV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v14 = a2[5];
  v13 = a2[6];
  if (v3)
  {
    if (!v9 || (*a1 != *a2 || v3 != v9) && (sub_1E5C9D060() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (sub_1E5C77CC0(v4, v10) & 1) != 0 && (v5 == v11 && v6 == v12 || (sub_1E5C9D060()))
  {
    if (v8)
    {
      if (v13 && (v7 == v14 && v8 == v13 || (sub_1E5C9D060() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v13)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1E5C95B5C()
{
  result = qword_1ED055BE8;
  if (!qword_1ED055BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055BE8);
  }

  return result;
}

uint64_t sub_1E5C95BB0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055278, &unk_1E5CA49A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5C95C2C()
{
  result = qword_1ED055C08;
  if (!qword_1ED055C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055C08);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E5C95C9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E5C95CE4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1E5C95D54()
{
  result = qword_1ED055C10;
  if (!qword_1ED055C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055C10);
  }

  return result;
}

unint64_t sub_1E5C95DAC()
{
  result = qword_1ED055C18;
  if (!qword_1ED055C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055C18);
  }

  return result;
}

unint64_t sub_1E5C95E04()
{
  result = qword_1ED055C20;
  if (!qword_1ED055C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055C20);
  }

  return result;
}

uint64_t sub_1E5C95E58(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E5CA7C10 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365706F6373 && a2 == 0xE600000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1836213620 && a2 == 0xE400000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1E5C9D060();

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

uint64_t (*SearchViewController.init(store:searchLandingView:searchResultsView:onContentScrollViewDidChange:onPop:titleView:bottomPaletteContentView:)(uint64_t (*a1)(void), uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12))(void)
{
  v13 = v12;
  v60 = a8;
  v61 = a5;
  v68 = a7;
  v69 = a4;
  v58 = a6;
  v52 = a3;
  v59 = a1;
  v63 = a11;
  v64 = a12;
  v67 = a10;
  v62 = a9;
  ObjectType = swift_getObjectType();
  v15 = *v12;
  v16 = *MEMORY[0x1E69E7D40];
  v57 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x58);
  MEMORY[0x1EEE9AC00](ObjectType);
  v56 = v51 - v17;
  v54 = sub_1E5C9C400();
  v51[1] = *(v54 - 8);
  v18 = MEMORY[0x1EEE9AC00](v54);
  v53 = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *((v16 & v15) + 0x50);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v23 = v51 - v22;
  *&v12[qword_1EE2C4780] = MEMORY[0x1E69E7CC0];
  v24 = &v12[qword_1EE2C4788];
  *v24 = 0;
  *(v24 + 1) = 0;
  v12[qword_1EE2C4770] = 0;
  v25 = qword_1EE2C4798;
  sub_1E5C9BCB0();
  *&v13[v25] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v66 = a2;
  *&v13[qword_1EE2C4760] = v59();
  v59 = *((v16 & v15) + 0x60);
  v55 = v20;
  type metadata accessor for ScrollObservingHostingController(0, v20, v59, v26);
  v52();
  v27 = sub_1E5C2BC2C(v23);
  (*(v21 + 8))(v23, v20);
  *&v13[qword_1EE2C47D8] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED055C30, &qword_1E5CA7350);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1E5CA3380;
  v29 = v27;
  sub_1E5C9C3E0();
  sub_1E5C9C3F0();
  v70 = v28;
  sub_1E5C99864();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055C40, &qword_1E5CA7358);
  sub_1E5C27F74(&qword_1EE2C4068, &qword_1ED055C40, &qword_1E5CA7358, MEMORY[0x1E69E6328]);
  sub_1E5C9CE30();
  sub_1E5C9C220();

  v30 = v16 & v15;
  v31 = v60;
  v32 = *(v30 + 104);
  v33 = v57;
  sub_1E5C9C260();
  v61();
  *&v13[qword_1EE2C47D0] = sub_1E5C9C240();
  v34 = &v13[qword_1EE2C4768];
  v35 = v63;
  v36 = v67;
  v37 = v68;
  *v34 = v62;
  v34[1] = v36;
  v38 = &v13[qword_1EE2C47C0];
  *v38 = v37;
  v38[1] = v31;
  *&v13[qword_1EE2C47A8] = v35;
  v39 = v64;
  *&v13[qword_1EE2C47B0] = v64;

  sub_1E5C998BC(v37, v31);
  v71.receiver = v13;
  v71.super_class = ObjectType;
  v40 = v35;
  v41 = v39;
  ObjectType = v39;
  v42 = objc_msgSendSuper2(&v71, sel_initWithNibName_bundle_, 0, 0);

  v43 = sub_1E5C9CAE0();

  v70 = v43;
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v45 = swift_allocObject();
  *&v46 = v55;
  *(&v46 + 1) = v33;
  *&v47 = v59;
  *(&v47 + 1) = v32;
  *(v45 + 16) = v46;
  *(v45 + 32) = v47;
  *(v45 + 48) = v44;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_1E5C998CC;
  *(v48 + 24) = v45;
  sub_1E5C9BD60();
  sub_1E5C9BD70();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED055C48, &qword_1E5CA7360);
  sub_1E5C27F74(&qword_1EE2C4070, &unk_1ED055C48, &qword_1E5CA7360, MEMORY[0x1E69E6348]);
  sub_1E5C9BD50();
  swift_endAccess();

  if (v41)
  {
    v49 = sub_1E5C9CC30();
    [v42 setTitle_];

    sub_1E5C99904(v68, v31);
  }

  else
  {

    sub_1E5C99904(v68, v31);
  }

  return v42;
}

void sub_1E5C96760(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1E5C967B4();
  }
}

void sub_1E5C967B4()
{
  v1 = &v0[qword_1EE2C4788];
  v3 = *&v0[qword_1EE2C4788];
  v2 = *&v0[qword_1EE2C4788 + 8];
  swift_getKeyPath();

  sub_1E5C9CAD0();

  if (!v2)
  {

LABEL_9:
    v6 = [v0 navigationItem];
    v7 = [v6 searchController];

    if (v7)
    {
      swift_getKeyPath();
      sub_1E5C9CAD0();

      v8 = *(&v14[0] + 1);
      *v1 = *&v14[0];
      *(v1 + 1) = v8;

      v9 = [v7 searchBar];
      if (*(v1 + 1))
      {

        v10 = sub_1E5C9CC30();
      }

      else
      {
        v10 = 0;
      }

      [v9 setText_];

      swift_getKeyPath();
      sub_1E5C9CAD0();

      *&v15[9] = *&v13[9];
      v14[0] = v11;
      v14[1] = v12;
      *v15 = *v13;
      if (v13[24] <= 1u)
      {
        sub_1E5C30CAC(v14);
        swift_getKeyPath();
        sub_1E5C9CAD0();

        if (v11 == 1 && ([v7 isActive] & 1) == 0 && (objc_msgSend(v7, sel_isBeingPresented) & 1) == 0)
        {
          [v7 setActive_];
        }
      }
    }

    return;
  }

  if (v3 == *&v14[0] && v2 == *(&v14[0] + 1))
  {

    return;
  }

  v5 = sub_1E5C9D060();

  if ((v5 & 1) == 0)
  {
    goto LABEL_9;
  }
}

id SearchViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall SearchViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_1E5C96ADC();
  sub_1E5C96EEC();
  sub_1E5C97A44();
}

id sub_1E5C96ADC()
{
  v1 = *&v0[qword_1EE2C47D8];
  [v0 addChildViewController_];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  result = [v0 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  [v4 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055D88, &qword_1E5CA7400);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E5CA7310;
  result = [v1 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result;
  v8 = [result leadingAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = result;
  v10 = [result leadingAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v6 + 32) = v11;
  result = [v1 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = result;
  v13 = [result trailingAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = result;
  v15 = [result trailingAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v6 + 40) = v16;
  result = [v1 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = result;
  v18 = [result topAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v19 = result;
  v20 = [result topAnchor];

  v21 = [v18 constraintEqualToAnchor_];
  *(v6 + 48) = v21;
  result = [v1 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v22 = result;
  v23 = [result bottomAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v24 = result;
  v25 = objc_opt_self();
  v26 = [v24 bottomAnchor];

  v27 = [v23 constraintEqualToAnchor_];
  *(v6 + 56) = v27;
  sub_1E5C9A06C(0, &qword_1EE2C4038, 0x1E696ACD8);
  v28 = sub_1E5C9CCC0();

  [v25 activateConstraints_];

  return [v1 didMoveToParentViewController_];
}

void sub_1E5C96EEC()
{
  v1 = v0;
  v61 = sub_1E5C9BBF0();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v62 = v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E5C9BC80();
  v63 = *(v3 - 1);
  v64 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v60 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E5C9BBD0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E5C9CC20();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = [objc_allocWithZone(sub_1E5C9BCC0()) initWithSearchResultsController_];
  v8 = [v7 searchBar];
  [v8 setAutocorrectionType_];

  v9 = [v7 searchBar];
  [v9 setDelegate_];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v10 = [v7 searchBar];
    [v10 setDirectionalLayoutMargins_];
  }

  v11 = [v7 searchBar];
  sub_1E5C9CC10();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v58 = objc_opt_self();
  v13 = [v58 bundleForClass_];
  swift_getKeyPath();
  sub_1E5C9CAD0();

  sub_1E5C9CC50();
  v14 = sub_1E5C9CC30();

  [v11 setPlaceholder_];

  if ((_UISolariumEnabled() & 1) == 0 && *&v1[qword_1EE2C47A8])
  {
    v15 = [v7 searchBar];
    [v15 _setOverrideContentInsets_forRectEdges_];
  }

  v16 = *&v1[qword_1EE2C47B0];
  v17 = v7;
  [v17 setAutomaticallyShowsCancelButton_];
  if (v16)
  {
    [v17 setShowsSearchResultsController_];
  }

  [v17 setDelegate_];
  v18 = [v17 searchBar];
  [v18 setDelegate_];

  v19 = [v17 searchBar];
  v20 = [v19 searchTextField];

  [v20 setDelegate_];
  v21 = [v1 navigationItem];
  [v21 setSearchController_];

  v22 = [v1 navigationItem];
  [v22 setHidesSearchBarWhenScrolling_];

  v23 = [v1 navigationItem];
  [v23 setPreferredSearchBarPlacement_];

  if (_UISolariumEnabled())
  {
    v24 = [v1 navigationItem];
    [v24 setTitleView_];

    v25 = [v1 navigationItem];
    [v25 _setBottomPalette_];
  }

  if (v16)
  {
    v57 = *&v1[qword_1EE2C4798];
    sub_1E5C9CC10();
    v26 = v58;
    v27 = [v58 bundleForClass_];
    v56[0] = v1;
    swift_getKeyPath();
    sub_1E5C9CAD0();

    v28 = sub_1E5C9CC50();
    v56[1] = v29;
    v56[2] = v28;
    sub_1E5C9CC10();
    v30 = [v26 &selRef_widthAnchor + 3];
    swift_getKeyPath();
    sub_1E5C9CAD0();

    sub_1E5C9CC50();
    sub_1E5C9CC10();
    v31 = [v26 bundleForClass_];
    swift_getKeyPath();
    sub_1E5C9CAD0();

    sub_1E5C9CC50();
    (*(v59 + 104))(v62, *MEMORY[0x1E699DB70], v61);
    v32 = v60;
    sub_1E5C9BC70();
    v33 = v57;
    sub_1E5C9BCA0();
    (*(v63 + 8))(v32, v64);
    [v33 setTranslatesAutoresizingMaskIntoConstraints_];
    v34 = [v17 searchBar];
    [v34 addSubview_];

    v64 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055D88, &qword_1E5CA7400);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1E5CA7310;
    v36 = [v33 leadingAnchor];
    v37 = [v17 0x1E878ADF8];
    v38 = [v37 layoutMarginsGuide];

    v39 = [v38 leadingAnchor];
    v40 = [v36 constraintEqualToAnchor_];

    *(v35 + 32) = v40;
    v41 = [v33 widthAnchor];
    v42 = [v33 heightAnchor];
    v43 = [v41 constraintGreaterThanOrEqualToAnchor_];

    *(v35 + 40) = v43;
    v44 = [v33 topAnchor];
    v45 = [v17 0x1E878ADF8];
    v46 = [v45 searchTextField];

    v47 = [v46 topAnchor];
    v48 = [v44 constraintEqualToAnchor_];

    *(v35 + 48) = v48;
    v49 = [v33 bottomAnchor];
    v50 = [v17 0x1E878ADF8];
    v51 = [v50 searchTextField];

    v52 = [v51 bottomAnchor];
    v53 = [v49 constraintEqualToAnchor_];

    *(v35 + 56) = v53;
    sub_1E5C9A06C(0, &qword_1EE2C4038, 0x1E696ACD8);
    v54 = sub_1E5C9CCC0();

    [v64 activateConstraints_];

    v55 = [objc_allocWithZone(MEMORY[0x1E69DD060]) init];
    [v55 addTarget:v56[0] action:sel_dismissButtonTapped_];
    [v33 addGestureRecognizer_];
  }
}

void sub_1E5C97A44()
{
  v1 = *&v0[qword_1EE2C47A8];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
  if (v1)
  {
    v3 = v2;
    [v3 configureWithTransparentBackground];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055D88, &qword_1E5CA7400);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1E5CA7320;
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v6 = swift_allocObject();
    v6[1] = vdupq_n_s64(0x4059000000000000uLL);
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1E5C9A0BC;
    *(v7 + 24) = v6;
    aBlock[4] = sub_1E5C9A0C0;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E5C993FC;
    aBlock[3] = &block_descriptor_24;
    v8 = _Block_copy(aBlock);

    v9 = [v5 imageWithActions_];

    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }

    else
    {
      v10 = [objc_opt_self() effectWithVariableBlurRadius:v9 imageMask:25.0];

      if (v10)
      {
        *(v4 + 32) = v10;
        sub_1E5C9A06C(0, &qword_1EE2C4040, 0x1E69DD290);
        v11 = sub_1E5C9CCC0();

        [v3 setBackgroundEffects_];

        [v3 setBackgroundImageContentMode_];
        v12 = [objc_opt_self() clearColor];
        [v3 setShadowColor_];

        v13 = [v0 navigationItem];
        [v13 setScrollEdgeAppearance_];

        v14 = [v0 navigationItem];
        [v14 setStandardAppearance_];

        return;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = v2;
    [v2 configureWithDefaultBackground];
    v16 = [v0 navigationItem];
    [v16 setScrollEdgeAppearance_];

    v17 = [v0 navigationItem];
    [v17 setStandardAppearance_];
  }
}

void sub_1E5C97E24(void *a1)
{
  v1 = a1;
  SearchViewController.viewDidLoad()();
}

void sub_1E5C97E7C(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  SearchViewController.viewDidAppear(_:)(a3);
}

Swift::Void __swiftcall SearchViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewWillAppear_, a1);
  v3 = [v1 navigationItem];
  [v3 setTitleView_];

  v4 = *&v1[qword_1EE2C47C0];
  if (v4)
  {
    v4();
  }
}

void sub_1E5C97F70(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  SearchViewController.viewWillAppear(_:)(a3);
}

Swift::Void __swiftcall SearchViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v11.receiver = v1;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewWillDisappear_, a1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 viewControllers];
    sub_1E5C9A06C(0, &qword_1ED055C58, 0x1E69DD258);
    v6 = sub_1E5C9CCD0();

    v10 = v1;
    MEMORY[0x1EEE9AC00](v7);
    v9[2] = &v10;
    LOBYTE(v5) = sub_1E5C9973C(sub_1E5C999CC, v9, v6);

    if ((v5 & 1) == 0)
    {
      (*&v1[qword_1EE2C4768])(v8);
    }
  }
}

void sub_1E5C98100(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  SearchViewController.viewWillDisappear(_:)(a3);
}

uint64_t sub_1E5C98164(char a1, SEL *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for SearchAction(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.receiver = v3;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, *a2, a1 & 1);
  swift_storeEnumTagMultiPayload();
  sub_1E5C9CAF0();
  return sub_1E5C30C50(v9);
}

void sub_1E5C98244(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  SearchViewController.viewDidDisappear(_:)(a3);
}

Swift::Void __swiftcall SearchViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  v2 = objc_msgSendSuper2(&v17, sel_viewDidLayoutSubviews);
  v3 = *&v0[qword_1EE2C47C0];
  if (v3)
  {
    v3(v2);
  }

  sub_1E5C98488();
  if (_UISolariumEnabled())
  {
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 effectiveUserInterfaceLayoutDirection];

      v7 = [v1 navigationItem];
      v8 = [v7 searchController];

      if (v8)
      {
        v9 = [v8 searchBar];

        [v9 directionalLayoutMargins];
        v11 = v10;
      }

      else
      {
        v11 = 0.0;
      }

      v12 = [v1 navigationItem];
      v13 = [v12 searchController];

      if (v13)
      {
        v14 = [v13 searchBar];

        [*&v1[qword_1EE2C4798] frame];
        Width = CGRectGetWidth(v18);
        if (v6 == 1)
        {
          v16 = 8;
        }

        else
        {
          v16 = 2;
        }

        [v14 _setOverrideContentInsets_forRectEdges_];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E5C98488()
{
  if (!*&v0[qword_1EE2C47A8])
  {
    return;
  }

  v1 = v0;
  v2 = [v0 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 navigationBar];

    v5 = [v4 items];
    if (v5)
    {
      sub_1E5C9A06C(0, &qword_1ED055D80, 0x1E69DCCE0);
      v6 = sub_1E5C9CCD0();

      if (v6 >> 62)
      {
        v7 = sub_1E5C9CED0();
        if (v7)
        {
LABEL_6:
          v8 = __OFSUB__(v7, 1);
          v9 = v7 - 1;
          if (v8)
          {
            __break(1u);
          }

          else if ((v6 & 0xC000000000000001) == 0)
          {
            if ((v9 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v9 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v10 = *(v6 + 8 * v9 + 32);
LABEL_11:
              v65 = v10;

              goto LABEL_15;
            }

            __break(1u);
            goto LABEL_44;
          }

          v10 = MEMORY[0x1E6939780](v9, v6);
          goto LABEL_11;
        }
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7)
        {
          goto LABEL_6;
        }
      }
    }
  }

  v65 = 0;
LABEL_15:
  v11 = [v1 navigationItem];
  if (v65)
  {
    if (!v11)
    {

      goto _objc_release_x3;
    }

    v64 = v11;
    sub_1E5C9A06C(0, &qword_1ED055D80, 0x1E69DCCE0);
    v12 = sub_1E5C9CE10();

    if ((v12 & 1) == 0)
    {
      return;
    }

    goto LABEL_23;
  }

  if (!v11)
  {
LABEL_23:
    v13 = [v1 navigationItem];
    v14 = [v13 standardAppearance];

    if (v14)
    {
      v15 = [v14 backgroundImage];

      if (v15)
      {
        [v15 size];
        v17 = v16;
        v18 = [v1 view];
        if (!v18)
        {
LABEL_47:
          __break(1u);
_objc_release_x3:
          MEMORY[0x1EEE66C30]();
          return;
        }

        v19 = v18;
        v20 = floor(v17);
        [v18 bounds];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;

        v68.origin.x = v22;
        v68.origin.y = v24;
        v68.size.width = v26;
        v68.size.height = v28;
        Width = CGRectGetWidth(v68);

        if (v20 == floor(Width))
        {
          return;
        }
      }
    }

    v30 = [v1 navigationItem];
    v31 = [v30 standardAppearance];

    if (!v31)
    {
      goto LABEL_32;
    }

    v32 = [v1 view];
    if (!v32)
    {
      goto LABEL_45;
    }

    v33 = v32;
    [v32 bounds];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v69.origin.x = v35;
    v69.origin.y = v37;
    v69.size.width = v39;
    v69.size.height = v41;
    v42 = CGRectGetWidth(v69);
    v43 = [v1 view];
    if (!v43)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v44 = v43;
    [v43 bounds];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;

    v70.origin.x = v46;
    v70.origin.y = v48;
    v70.size.width = v50;
    v70.size.height = v52;
    v53 = CGRectGetWidth(v70);
    v54 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v55 = swift_allocObject();
    *(v55 + 16) = v42;
    *(v55 + 24) = v53;
    v56 = swift_allocObject();
    *(v56 + 16) = sub_1E5C9A024;
    *(v56 + 24) = v55;
    aBlock[4] = sub_1E5C9A02C;
    aBlock[5] = v56;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E5C993FC;
    aBlock[3] = &block_descriptor;
    v57 = _Block_copy(aBlock);

    v58 = [v54 imageWithActions_];

    _Block_release(v57);
    LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();

    if ((v54 & 1) == 0)
    {
      [v31 setBackgroundImage_];

LABEL_32:
      v59 = [v1 navigationItem];
      v60 = [v59 standardAppearance];

      if (v60)
      {
        v61 = [v1 navigationController];
        if (v61)
        {
          v62 = v61;
          v63 = [v61 navigationBar];

          [v63 setStandardAppearance_];
        }
      }

      return;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }
}

void sub_1E5C98AA8(void *a1)
{
  v1 = a1;
  SearchViewController.viewDidLayoutSubviews()();
}

Swift::Void __swiftcall SearchViewController.willPresentSearchController(_:)(UISearchController a1)
{
  v3 = type metadata accessor for SearchAction(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((_UISolariumEnabled() & 1) == 0 && *(v1 + qword_1EE2C47A8))
  {
    v6 = [(objc_class *)a1.super.super.super.isa searchBar];
    [v6 _setOverrideContentInsets_forRectEdges_];
  }

  if (([(objc_class *)a1.super.super.super.isa automaticallyShowsCancelButton]& 1) == 0 && *(v1 + qword_1EE2C47B0))
  {
    v7 = [(objc_class *)a1.super.super.super.isa searchBar];
    [v7 setShowsCancelButton:1 animated:1];
  }

  *v5 = 1;
  swift_storeEnumTagMultiPayload();
  sub_1E5C9CAF0();
  sub_1E5C30C50(v5);
}

void sub_1E5C98C54(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SearchViewController.willPresentSearchController(_:)(v4);
}

Swift::Void __swiftcall SearchViewController.willDismissSearchController(_:)(UISearchController a1)
{
  v3 = type metadata accessor for SearchAction(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((_UISolariumEnabled() & 1) == 0 && *(v1 + qword_1EE2C47A8))
  {
    v6 = [(objc_class *)a1.super.super.super.isa searchBar];
    [v6 _setOverrideContentInsets_forRectEdges_];
  }

  if (([(objc_class *)a1.super.super.super.isa automaticallyShowsCancelButton]& 1) == 0 && *(v1 + qword_1EE2C47B0))
  {
    v7 = [(objc_class *)a1.super.super.super.isa searchBar];
    [v7 setShowsCancelButton:0 animated:1];

    [(objc_class *)a1.super.super.super.isa setAutomaticallyShowsCancelButton:1];
  }

  *v5 = 0;
  swift_storeEnumTagMultiPayload();
  sub_1E5C9CAF0();
  sub_1E5C30C50(v5);
}

void sub_1E5C98E30(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SearchViewController.willDismissSearchController(_:)(v4);
}

Swift::Void __swiftcall SearchViewController.didDismissSearchController(_:)(UISearchController a1)
{
  v3 = type metadata accessor for SearchAction(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[qword_1EE2C4770] == 1)
  {
    v1[qword_1EE2C4770] = 0;
    v6 = [(objc_class *)a1.super.super.super.isa searchBar];
    [v6 setUserInteractionEnabled_];

    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      [v7 setUserInteractionEnabled_];

      swift_storeEnumTagMultiPayload();
      sub_1E5C9CAF0();
      sub_1E5C30C50(v5);
      if (*&v1[qword_1EE2C47B0])
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          sub_1E5C9BCD0();
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E5C99010(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SearchViewController.didDismissSearchController(_:)(v4);
}

uint64_t sub_1E5C99084(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_1E5C9CC40();
  v8 = v7;
  v9 = a3;
  v10 = a1;
  sub_1E5C99A34(v6, v8);
}

void sub_1E5C990FC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  _s13FitnessSearch0B14ViewControllerC28searchBarCancelButtonClickedyySo08UISearchF0CF_0();
}

void sub_1E5C99160(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  _s13FitnessSearch0B14ViewControllerC09searchBarB13ButtonClickedyySo08UISearchF0CF_0();
}

uint64_t sub_1E5C991C4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = _s13FitnessSearch0B14ViewControllerC20textFieldShouldClearySbSo06UITextF0CF_0();

  return a1 & 1;
}

void sub_1E5C99210(void *a1, double a2, CGFloat a3)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055D88, &qword_1E5CA7400);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E5CA7330;
  v8 = objc_opt_self();
  v9 = [v8 blackColor];
  v10 = [v9 colorWithAlphaComponent_];

  v11 = [v10 CGColor];
  *(v7 + 32) = v11;
  v12 = [v8 clearColor];
  v13 = [v12 CGColor];

  *(v7 + 40) = v13;
  type metadata accessor for CGColor(0);
  v14 = sub_1E5C9CCC0();

  v15 = CGGradientCreateWithColors(DeviceRGB, v14, dbl_1F5F7C658);

  if (v15)
  {
    v16 = [a1 CGContext];
    v18.y = 0.0;
    v18.x = a2 * 0.5;
    v19.x = a2 * 0.5;
    v19.y = a3;
    CGContextDrawLinearGradient(v16, v15, v18, v19, 0);
  }
}

void sub_1E5C993FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_1E5C99448(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1E5C99D0C();
}

id SearchViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E5C9CC30();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_1E5C99584(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1E5C99F00();
}

id SearchViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E5C99664(uint64_t a1)
{

  sub_1E5C99904(*(a1 + qword_1EE2C47C0), *(a1 + qword_1EE2C47C0 + 8));
  v2 = *(a1 + qword_1EE2C47A8);
}

uint64_t sub_1E5C9973C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1E6939780](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1E5C9CED0();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

unint64_t sub_1E5C99864()
{
  result = qword_1EE2C40B8;
  if (!qword_1EE2C40B8)
  {
    sub_1E5C9C400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C40B8);
  }

  return result;
}

uint64_t sub_1E5C998BC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E5C99904(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void _s13FitnessSearch0B14ViewControllerC5coderACyxq_GSgSo7NSCoderC_tcfc_0()
{
  *(v0 + qword_1EE2C4780) = MEMORY[0x1E69E7CC0];
  v1 = (v0 + qword_1EE2C4788);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + qword_1EE2C4770) = 0;
  v2 = qword_1EE2C4798;
  sub_1E5C9BCB0();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1E5C9CEC0();
  __break(1u);
}

uint64_t sub_1E5C99A34(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SearchAction(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (v2 + qword_1EE2C4788);
  *v8 = a1;
  v8[1] = a2;

  *v7 = a1;
  v7[1] = a2;
  swift_storeEnumTagMultiPayload();
  swift_bridgeObjectRetain_n();
  sub_1E5C9CAF0();
  return sub_1E5C30C50(v7);
}

uint64_t _s13FitnessSearch0B14ViewControllerC28searchBarCancelButtonClickedyySo08UISearchF0CF_0()
{
  v0 = type metadata accessor for SearchAction(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_1E5C9CAF0();
  return sub_1E5C30C50(v2);
}

uint64_t _s13FitnessSearch0B14ViewControllerC09searchBarB13ButtonClickedyySo08UISearchF0CF_0()
{
  v0 = type metadata accessor for SearchAction(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1E5C9CAD0();

  v3 = v5[1];
  *v2 = v5[0];
  *(v2 + 1) = v3;
  v2[16] = 3;
  swift_storeEnumTagMultiPayload();
  sub_1E5C9CAF0();
  return sub_1E5C30C50(v2);
}

uint64_t _s13FitnessSearch0B14ViewControllerC20textFieldShouldClearySbSo06UITextF0CF_0()
{
  v0 = type metadata accessor for SearchAction(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_1E5C9CAF0();
  sub_1E5C30C50(v2);
  return 1;
}

void sub_1E5C99D0C()
{
  v1 = [v0 navigationItem];
  v2 = [v1 searchController];

  if (v2 && (v3 = [v2 isActive], v2, v3))
  {
    v0[qword_1EE2C4770] = 1;
    v4 = [v0 navigationItem];
    v5 = [v4 searchController];

    if (v5)
    {
      v6 = [v5 searchBar];

      [v6 setUserInteractionEnabled_];
    }

    v7 = [v0 view];
    if (v7)
    {
      v8 = v7;
      [v7 setUserInteractionEnabled_];

      v9 = [v0 navigationItem];
      v10 = [v9 searchController];

      [v10 setActive_];
    }

    else
    {
      __break(1u);
    }
  }

  else if (*&v0[qword_1EE2C47B0])
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      sub_1E5C9BCD0();
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E5C9A06C(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_1E5C9A0C8()
{
  result = qword_1ED055E50;
  if (!qword_1ED055E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055E50);
  }

  return result;
}

uint64_t sub_1E5C9A140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365676775536F6ELL && a2 == 0xED0000736E6F6974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5C9D060();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5C9A1D0(uint64_t a1)
{
  v2 = sub_1E5C9A80C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C9A20C(uint64_t a1)
{
  v2 = sub_1E5C9A80C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C9A248(uint64_t a1)
{
  v2 = sub_1E5C9A860();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C9A284(uint64_t a1)
{
  v2 = sub_1E5C9A860();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C9A2E8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055E78, &qword_1E5CA7540);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055E80, &qword_1E5CA7548);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C9A80C();
  sub_1E5C9D130();
  sub_1E5C9A860();
  sub_1E5C9CFC0();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1E5C9A4C0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055E58, &qword_1E5CA7528);
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055E60, &unk_1E5CA7530);
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C9A80C();
  sub_1E5C9D120();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_1E5C9CFB0();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if (sub_1E5C3AB5C() || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_1E5C9CE90();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543A8, &unk_1E5C9F850);
    *v16 = &type metadata for SearchSuggestionError;
    sub_1E5C9CF30();
    sub_1E5C9CE80();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_1E5C9A860();
  sub_1E5C9CF20();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

unint64_t sub_1E5C9A80C()
{
  result = qword_1ED055E68;
  if (!qword_1ED055E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055E68);
  }

  return result;
}

unint64_t sub_1E5C9A860()
{
  result = qword_1ED055E70;
  if (!qword_1ED055E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055E70);
  }

  return result;
}

unint64_t sub_1E5C9A8E8()
{
  result = qword_1ED055E88;
  if (!qword_1ED055E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055E88);
  }

  return result;
}

unint64_t sub_1E5C9A940()
{
  result = qword_1ED055E90;
  if (!qword_1ED055E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055E90);
  }

  return result;
}

unint64_t sub_1E5C9A998()
{
  result = qword_1ED055E98;
  if (!qword_1ED055E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055E98);
  }

  return result;
}

unint64_t sub_1E5C9A9F0()
{
  result = qword_1ED055EA0;
  if (!qword_1ED055EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055EA0);
  }

  return result;
}

unint64_t sub_1E5C9AA48()
{
  result = qword_1ED055EA8;
  if (!qword_1ED055EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055EA8);
  }

  return result;
}

uint64_t SearchTaskIdentifier.hashValue.getter()
{
  sub_1E5C9D0D0();
  MEMORY[0x1E69399F0](0);
  return sub_1E5C9D110();
}

unint64_t sub_1E5C9AB14()
{
  result = qword_1ED055EB0;
  if (!qword_1ED055EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055EB0);
  }

  return result;
}

unint64_t SearchContentType.category.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 3;
  }

  v2 = *v0;

  result = _s13FitnessSearch0B13ScopeCategoryO8rawValueACSgSS_tcfC_0(v2, v1);
  if (result == 9)
  {
    return 3;
  }

  return result;
}

void __swiftcall SearchSession.init(method:query:term:datasetIdentifier:)(FitnessSearch::SearchSession *__return_ptr retstr, FitnessSearch::SearchQueryMethod method, Swift::String query, Swift::String term, Swift::String_optional datasetIdentifier)
{
  retstr->datasetIdentifier = datasetIdentifier;
  retstr->method = method;
  retstr->query = query;
  retstr->term = term;
}

void __swiftcall SearchSession.withDatasetIdentifier(_:)(FitnessSearch::SearchSession *__return_ptr retstr, Swift::String_optional a2)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  retstr->datasetIdentifier = a2;
  retstr->method = v3;
  retstr->query._countAndFlagsBits = v4;
  retstr->query._object = v5;
  retstr->term._countAndFlagsBits = v6;
  retstr->term._object = v7;
}

uint64_t SearchSession.query.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SearchSession.term.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SearchSession.datasetIdentifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

unint64_t sub_1E5C9ACD0()
{
  v1 = 0x646F6874656DLL;
  v2 = 1836213620;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x7972657571;
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

uint64_t sub_1E5C9AD40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5C9B8DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5C9AD68(uint64_t a1)
{
  v2 = sub_1E5C9B708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C9ADA4(uint64_t a1)
{
  v2 = sub_1E5C9B708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchSession.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055EB8, "pW");
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v13[4] = *(v1 + 2);
  v13[5] = v9;
  v10 = *(v1 + 3);
  v13[2] = *(v1 + 4);
  v13[3] = v10;
  v11 = *(v1 + 5);
  v13[0] = *(v1 + 6);
  v13[1] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C9B708();
  sub_1E5C9D130();
  v18 = v8;
  v17 = 0;
  sub_1E5C36AF8();
  sub_1E5C9D030();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v16 = 1;
  sub_1E5C9D000();
  v15 = 2;
  sub_1E5C9D000();
  v14 = 3;
  sub_1E5C9CFD0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t SearchSession.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055EC8, &qword_1E5CA7818);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C9B708();
  sub_1E5C9D120();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  sub_1E5C36DE4();
  sub_1E5C9CFA0();
  v9 = v29;
  v27 = 1;
  v10 = sub_1E5C9CF70();
  v12 = v11;
  v24 = v10;
  v26 = 2;
  v22 = sub_1E5C9CF70();
  v23 = v13;
  v25 = 3;
  v14 = sub_1E5C9CF40();
  v16 = v15;
  v17 = *(v6 + 8);
  v21 = v14;
  v17(v8, v5);
  *a2 = v9;
  v18 = v23;
  *(a2 + 8) = v24;
  *(a2 + 16) = v12;
  v19 = v21;
  *(a2 + 24) = v22;
  *(a2 + 32) = v18;
  *(a2 + 40) = v19;
  *(a2 + 48) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SearchSession.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 48);
  sub_1E5C9CC60();

  sub_1E5C9CC60();
  sub_1E5C9CC60();
  if (!v2)
  {
    return sub_1E5C9D0F0();
  }

  sub_1E5C9D0F0();

  return sub_1E5C9CC60();
}

uint64_t SearchSession.hashValue.getter()
{
  v1 = *(v0 + 48);
  sub_1E5C9D0D0();
  sub_1E5C9CC60();

  sub_1E5C9CC60();
  sub_1E5C9CC60();
  sub_1E5C9D0F0();
  if (v1)
  {
    sub_1E5C9CC60();
  }

  return sub_1E5C9D110();
}

uint64_t sub_1E5C9B538()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5[72] = *v0;
  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = *(v0 + 40);
  sub_1E5C9D0D0();
  SearchSession.hash(into:)(v5);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C9B5A0(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v6[72] = *v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = *(v1 + 40);
  sub_1E5C9D0D0();
  SearchSession.hash(into:)(v6);
  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B7SessionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  v13 = *(a2 + 40);
  v14 = *(a1 + 40);
  if (sub_1E5C76194(*a1, *a2) & 1) != 0 && (v2 == v7 && v3 == v8 || (sub_1E5C9D060()) && (v4 == v9 && v5 == v10 || (sub_1E5C9D060()))
  {
    if (v6)
    {
      if (v11 && (v14 == v13 && v6 == v11 || (sub_1E5C9D060() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v11)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1E5C9B708()
{
  result = qword_1ED055EC0;
  if (!qword_1ED055EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055EC0);
  }

  return result;
}

unint64_t sub_1E5C9B760()
{
  result = qword_1ED055ED0;
  if (!qword_1ED055ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055ED0);
  }

  return result;
}

unint64_t sub_1E5C9B7D8()
{
  result = qword_1ED055ED8;
  if (!qword_1ED055ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055ED8);
  }

  return result;
}

unint64_t sub_1E5C9B830()
{
  result = qword_1ED055EE0;
  if (!qword_1ED055EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055EE0);
  }

  return result;
}

unint64_t sub_1E5C9B888()
{
  result = qword_1ED055EE8;
  if (!qword_1ED055EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055EE8);
  }

  return result;
}

uint64_t sub_1E5C9B8DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F6874656DLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1836213620 && a2 == 0xE400000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5CA7C10 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5C9D060();

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