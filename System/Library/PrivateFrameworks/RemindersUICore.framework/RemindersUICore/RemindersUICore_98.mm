uint64_t sub_21DA0DEC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378, &qword_21DC19530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21DA0DF2C()
{
  result = qword_27CE64AD0;
  if (!qword_27CE64AD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRTipKitDataModelSourceFetchError, &type metadata for TTRTipKitDataModelSourceFetchError, v0, v1);
    atomic_store(result, &qword_27CE64AD0);
  }

  return result;
}

uint64_t TTRShowCustomSmartListTipKitDataModelSource.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

BOOL static TTRRemindersListTip.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA8, &qword_21DC36220);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v8 = *(v7 + 56);
  sub_21DA0E134(a1, &v10 - v5);
  sub_21DA0E134(a2, &v6[v8]);
  LOBYTE(a2) = *v6 ^ v6[v8];
  sub_21DA0E3B4(&v6[v8]);
  sub_21DA0E3B4(v6);
  return (a2 & 1) == 0;
}

uint64_t sub_21DA0E134(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListTip(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TTRRemindersListTip.visibilityPriority.getter@<X0>(BOOL *a1@<X8>)
{
  v3 = type metadata accessor for TTRRemindersListTips(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListTip(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DA0E134(v1, v8);
  sub_21DA0E430(v8, v5);
  v9 = *v5;
  result = sub_21DA0E3B4(v5);
  *a1 = (v9 & 1) == 0;
  return result;
}

BOOL sub_21DA0E2B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA8, &qword_21DC36220);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v8 = *(v7 + 56);
  sub_21DA0E134(a1, &v10 - v5);
  sub_21DA0E134(a2, &v6[v8]);
  LOBYTE(a2) = *v6 ^ v6[v8];
  sub_21DA0E3B4(&v6[v8]);
  sub_21DA0E3B4(v6);
  return (a2 & 1) == 0;
}

uint64_t TTRRemindersListTips.TipID.assetColor.getter()
{
  if (*v0)
  {
    return sub_21DBF9A1C();
  }

  else
  {
    return sub_21DBF9A5C();
  }
}

uint64_t sub_21DA0E3B4(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListTips(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DA0E430(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListTips(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TTRRemindersListTips.TipID.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRRemindersListTips.tip.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v4 = sub_21DBF8D7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRRemindersListTips.init(tipID:tip:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v6 = sub_21DBF8D7C();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

RemindersUICore::TTRRemindersListTip::VisibilityPriority_optional __swiftcall TTRRemindersListTip.VisibilityPriority.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 250)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (rawValue == 500)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (rawValue == 750)
  {
    v3 = 0;
  }

  *v1 = v3;
  return rawValue;
}

uint64_t sub_21DA0E658()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](-250 * v1 + 750);
  return sub_21DBFC82C();
}

uint64_t sub_21DA0E6E0(uint64_t a1)
{
  v2 = *v1;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](-250 * v2 + 750);
  return sub_21DBFC82C();
}

uint64_t TTRRemindersListTip.description.getter()
{
  v1 = type metadata accessor for TTRRemindersListTips(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListTip(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DA0E134(v0, v6);
  sub_21DA0E430(v6, v3);
  v11[0] = 0x2874694B706974;
  v11[1] = 0xE700000000000000;
  if (*v3)
  {
    v7 = 0x6553656D616E6572;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (*v3)
  {
    v8 = 0xED00006E6F697463;
  }

  else
  {
    v8 = 0x800000021DC73AD0;
  }

  MEMORY[0x223D42AA0](v7, v8);

  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  v9 = v11[0];
  sub_21DA0E3B4(v3);
  return v9;
}

uint64_t TTRRemindersListTips.TipID.description.getter()
{
  if (*v0)
  {
    return 0x6553656D616E6572;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_21DA0E8FC()
{
  if (*v0)
  {
    return 0x6553656D616E6572;
  }

  else
  {
    return 0xD000000000000010;
  }
}

unint64_t sub_21DA0E974()
{
  result = qword_27CE64AD8;
  if (!qword_27CE64AD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListTips.TipID, &type metadata for TTRRemindersListTips.TipID, v0, v1);
    atomic_store(result, &qword_27CE64AD8);
  }

  return result;
}

unint64_t sub_21DA0E9C8()
{
  result = qword_27CE64AE0;
  if (!qword_27CE64AE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListTip.VisibilityPriority, &type metadata for TTRRemindersListTip.VisibilityPriority, v0, v1);
    atomic_store(result, &qword_27CE64AE0);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRRemindersListTip(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v6 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
    v7 = sub_21DBF8D7C();
    (*(*(v7 - 8) + 16))(&v3[v6], &a2[v6], v7);
  }

  return v3;
}

uint64_t destroy for TTRRemindersListTip(uint64_t a1)
{
  v2 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v3 = sub_21DBF8D7C();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

_BYTE *initializeWithCopy for TTRRemindersListTip(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  v4 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v5 = sub_21DBF8D7C();
  (*(*(v5 - 8) + 16))(&a1[v4], &a2[v4], v5);
  return a1;
}

_BYTE *assignWithCopy for TTRRemindersListTip(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  v4 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v5 = sub_21DBF8D7C();
  (*(*(v5 - 8) + 24))(&a1[v4], &a2[v4], v5);
  return a1;
}

_BYTE *initializeWithTake for TTRRemindersListTip(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  v4 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v5 = sub_21DBF8D7C();
  (*(*(v5 - 8) + 32))(&a1[v4], &a2[v4], v5);
  return a1;
}

_BYTE *assignWithTake for TTRRemindersListTip(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  v4 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v5 = sub_21DBF8D7C();
  (*(*(v5 - 8) + 40))(&a1[v4], &a2[v4], v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListTip(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListTips(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j____swift_get_extra_inhabitant_indexTm_2);
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListTip(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListTips(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j____swift_store_extra_inhabitant_indexTm_2);
}

uint64_t sub_21DA0EEB8(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListTips(319);
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8);
    swift_initEnumMetadataSingleCase();
    result = 0;
    *(*(a1 - 8) + 84) = *(v4 + 84);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRRemindersListTips(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 20);
    v7 = sub_21DBF8D7C();
    (*(*(v7 - 8) + 16))(&v3[v5], &a2[v5], v7);
  }

  return v3;
}

uint64_t destroy for TTRRemindersListTips(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = sub_21DBF8D7C();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

_BYTE *initializeWithCopy for TTRRemindersListTips(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_21DBF8D7C();
  (*(*(v6 - 8) + 16))(&a1[v5], &a2[v5], v6);
  return a1;
}

_BYTE *assignWithCopy for TTRRemindersListTips(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_21DBF8D7C();
  (*(*(v6 - 8) + 24))(&a1[v5], &a2[v5], v6);
  return a1;
}

_BYTE *initializeWithTake for TTRRemindersListTips(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_21DBF8D7C();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

_BYTE *assignWithTake for TTRRemindersListTips(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_21DBF8D7C();
  (*(*(v6 - 8) + 40))(&a1[v5], &a2[v5], v6);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_21DBF8D7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *__swift_store_extra_inhabitant_indexTm_2(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_21DBF8D7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21DA0F3D4(uint64_t a1)
{
  result = sub_21DBF8D7C();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21DA0F490(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21D215340(0, v5[2] + 1, 1, v5);
    v5 = result;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    result = sub_21D215340((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  v5[2] = v8 + 1;
  v9 = &v5[2 * v8];
  v9[4] = a1;
  v9[5] = a2;
  *v2 = v5;
  return result;
}

uint64_t sub_21DA0F534@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v23 - v11);
  v13 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v14 = *(*(v13 - 8) + 56);
  v14(v12, 1, 1, v13);
  *&v27[0] = v4;
  result = sub_21D0E8DA0(v12);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result);
    *(&v23 - 2) = v27;
    *(&v23 - 1) = v12;
    v26 = a3;
    v25 = sub_21D174668(sub_21DA312A8, (&v23 - 4), 0, v16);
    sub_21D0CF7E0(v12, &qword_27CE5A490, &unk_21DC0F950);
    v24 = a2;
    v17 = a1[3];
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v17);
    v23 = a4;
    v14(v12, 1, 1, v13);
    v19 = TTRTreeContentsQueryable.children(of:)(v12, v17, v18);
    v20 = sub_21D0CF7E0(v12, &qword_27CE5A490, &unk_21DC0F950);
    MEMORY[0x28223BE20](v20);
    *(&v23 - 2) = sub_21DA30FC8;
    *(&v23 - 1) = v5;
    sub_21D0D32E4(a1, v27);
    v21 = swift_allocObject();
    v22 = sub_21D0D0FD0(v27, (v21 + 2));
    MEMORY[0x28223BE20](v22);
    *(&v23 - 2) = sub_21DA30FF8;
    *(&v23 - 1) = v21;

    sub_21DA11A2C(v25, v19, sub_21DA30FF0, (&v23 - 4), sub_21DA31374, (&v23 - 4), v24, v26, v23);
  }

  return result;
}

void sub_21DA0F818()
{
  v1 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(*v0 + 16);
  if (!v6)
  {
    return;
  }

  v7 = v6 - 1;
  if (v6 == 1)
  {
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_17:
    v5 = sub_21D256E34(v5);
  }

  v8 = 1;
  while (1)
  {
    v10 = v8 - 1;
    if (v8 - 1 == v7)
    {
      goto LABEL_6;
    }

    v11 = v5[2];
    if (v10 >= v11)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v12 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v13 = *(v2 + 72);
    v14 = &v12[v13 * v10];
    sub_21D0FE734(v14, v4, type metadata accessor for TTRAccountsListsViewModel.Item);
    if (v7 >= v11)
    {
      goto LABEL_16;
    }

    sub_21DA310BC(&v12[v13 * v7], v14);
    if (v7 >= v5[2])
    {
      break;
    }

    sub_21DA31120(v4, &v12[v13 * v7]);
LABEL_6:
    if (v8++ >= --v7)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  *v0 = v5;
}

double sub_21DA0F9A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v48 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A508, &unk_21DC0F9F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v47 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A510, &unk_21DC376A0);
  MEMORY[0x28223BE20](v56);
  v55 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v8 - 8);
  v54 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v47 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A520, &qword_21DC0FA08);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A08, &unk_21DC0F960);
  v57 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v62 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v52 = &v47 - v18;
  v51 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v51);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a2 + 16);
  if (v22)
  {
    v23 = a2 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v49 = (v19 + 56);
    v24 = *(v19 + 72);
    v60 = (v57 + 56);
    v61 = v24;
    v59 = (v57 + 48);
    v63 = MEMORY[0x277D84F90];
    v50 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {
      sub_21D0FE734(v23, v21, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D25FC60(v6);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4A8, &qword_21DC376B0);
      if ((*(*(v25 - 8) + 48))(v6, 1, v25) == 1)
      {
        sub_21D0CF7E0(v6, &qword_27CE5A508, &unk_21DC0F9F0);
        v26 = 1;
      }

      else
      {
        v27 = *&v6[*(v25 + 48)];
        v28 = v56;
        v29 = *(v56 + 48);
        v30 = v6;
        v58 = v23;
        v31 = v6;
        v32 = v55;
        sub_21D0D523C(v30, v55, &qword_27CE5A490, &unk_21DC0F950);
        *(v32 + v29) = v27;
        v33 = *(v28 + 48);
        v21 = v50;
        v34 = *(v32 + v33);
        v35 = v32;
        v6 = v31;
        v36 = v53;
        sub_21D0D523C(v35, v53, &qword_27CE5A490, &unk_21DC0F950);
        v37 = v36;
        v38 = v54;
        sub_21D0D523C(v37, v54, &qword_27CE5A490, &unk_21DC0F950);
        (*v49)(v14, 1, 1, v51);
        v39 = v38;
        v23 = v58;
        sub_21D0F02F4(v39, v14, &qword_27CE5A490, &unk_21DC0F950);
        v26 = 0;
        *&v14[*(v15 + 36)] = v34;
      }

      (*v60)(v14, v26, 1, v15);
      sub_21D101450(v21, type metadata accessor for TTRAccountsListsViewModel.Item);
      if ((*v59)(v14, 1, v15) == 1)
      {
        sub_21D0CF7E0(v14, &qword_27CE5A520, &qword_21DC0FA08);
      }

      else
      {
        v40 = v23;
        v41 = v52;
        sub_21D0D523C(v14, v52, &qword_27CE59A08, &unk_21DC0F960);
        sub_21D0D523C(v41, v62, &qword_27CE59A08, &unk_21DC0F960);
        v42 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_21D2151EC(0, v63[2] + 1, 1, v63);
        }

        v44 = v63[2];
        v43 = v63[3];
        if (v44 >= v43 >> 1)
        {
          v63 = sub_21D2151EC((v43 > 1), v44 + 1, 1, v63);
        }

        v45 = v63;
        v63[2] = v44 + 1;
        sub_21D0D523C(v62, v45 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v44, &qword_27CE59A08, &unk_21DC0F960);
        v22 = v42;
        v23 = v40;
      }

      v23 += v61;
      --v22;
    }

    while (v22);
  }

  else
  {
    v63 = MEMORY[0x277D84F90];
  }

  sub_21D272524(v48, v63, v47);

  return result;
}

double TTRAccountsListsViewModel.List.init(remSmartList:reminderCounts:parentList:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = objc_opt_self();
  v62 = a2;
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v10 = [v8 localizedStringFromNumber:v9 numberStyle:1];

  v11 = sub_21DBFA16C();
  v60 = v12;
  v61 = v11;

  v13 = [a1 customContext];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 badge];

    if (v15)
    {
      v16 = [v15 emoji];
      if (v16)
      {
        v17 = v16;
        v18 = sub_21DBFA16C();
        v20 = v19;

        v21 = HIBYTE(v20) & 0xF;
        if ((v20 & 0x2000000000000000) == 0)
        {
          v21 = v18 & 0xFFFFFFFFFFFFLL;
        }

        if (v21)
        {
          if (qword_280D1BAA8 != -1)
          {
            swift_once();
          }

          v59 = v18;
          v50 = 0x800000021DC73AF0;
          v22 = sub_21DBF516C();
          v56 = v23;
          v57 = v22;

          v55 = 1;
          v24 = &off_278331000;
          if (!a3)
          {
            goto LABEL_10;
          }

          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

  v25 = a1;
  v26 = sub_21DA262C8(v25);

  v27 = v26;
  v28 = [v25 customContext];
  v59 = v26;
  if (v28)
  {

    v29 = REMListBadgeEmblem.name.getter(v27);
    v56 = v30;
    v57 = v29;
  }

  else
  {

    v56 = 0;
    v57 = 0;
  }

  v20 = 0;
  v55 = 0;
  v24 = &off_278331000;
  if (!a3)
  {
LABEL_10:
    v52 = 0;
    v53 = 0;
    v54 = 0;
    goto LABEL_18;
  }

LABEL_17:
  v31 = [a3 displayName];
  v32 = sub_21DBFA16C();
  v53 = v33;
  v54 = v32;

  v52 = [a3 v24[425]];
LABEL_18:
  v34 = [a1 accountCapabilities];
  v35 = [v34 supportsPinnedLists];

  v58 = v20;
  if (v35)
  {
    v51 = [a1 isPinned];
  }

  else
  {
    v51 = 2;
  }

  v36 = [a1 v24[425]];
  v37 = [a1 name];
  v38 = sub_21DBFA16C();
  v40 = v39;

  v41 = sub_21DBF673C();
  v42 = sub_21DBF675C();
  type metadata accessor for TTRListColors();
  v63[3] = sub_21D0D8CF0(0, &qword_280D0C320, 0x277D447F8);
  v63[4] = &protocol witness table for REMSmartList;
  v63[0] = a1;
  v43 = a1;
  static TTRListColors.color(for:)(v63, v64);

  v44 = sub_21DBF676C();
  (*(*(v44 - 8) + 8))(v62, v44);
  sub_21D0CF7E0(v63, &qword_27CE59DC0, &qword_21DC0FBF0);
  v45 = v65;
  v46 = v64[0];
  v47 = v64[1];
  v48 = v64[2];
  *a4 = v36;
  *(a4 + 8) = v38;
  *(a4 + 16) = v40;
  *(a4 + 24) = v41;
  *(a4 + 32) = v42;
  *(a4 + 40) = v61;
  *(a4 + 48) = v60;
  *(a4 + 56) = v57;
  *(a4 + 64) = v56;
  *(a4 + 72) = v46;
  *(a4 + 88) = v47;
  *(a4 + 104) = v48;
  *(a4 + 120) = v45;
  *(a4 + 128) = v59;
  *(a4 + 136) = v58;
  *(a4 + 144) = v55;
  *(a4 + 145) = 1;
  *(a4 + 146) = v51;
  *(a4 + 147) = 0;
  result = 0.0;
  *(a4 + 168) = 0u;
  *(a4 + 152) = 0u;
  *(a4 + 184) = 0;
  *(a4 + 192) = v52;
  *(a4 + 200) = v54;
  *(a4 + 208) = v53;
  *(a4 + 216) = 1;
  return result;
}

void TTRAccountsListsViewModel.listOrCustomSmartList(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0FE734(a1, v6, type metadata accessor for TTRAccountsListsViewModel.Item);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
      sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.Item);
      goto LABEL_3;
    case 5u:
      v10 = v6[11];
      v11 = v6[9];
      v59 = v6[10];
      v60 = v10;
      v12 = v6[11];
      v61[0] = v6[12];
      *(v61 + 10) = *(v6 + 202);
      v13 = v6[7];
      v14 = v6[5];
      v55 = v6[6];
      v56 = v13;
      v15 = v6[7];
      v16 = v6[9];
      v57 = v6[8];
      v58 = v16;
      v17 = v6[3];
      v18 = v6[1];
      v51 = v6[2];
      v52 = v17;
      v19 = v6[3];
      v20 = v6[5];
      v53 = v6[4];
      v54 = v20;
      v21 = v6[1];
      v49 = *v6;
      v50 = v21;
      v46 = v59;
      v47 = v12;
      v48[0] = v6[12];
      *(v48 + 10) = *(v6 + 202);
      v42 = v55;
      v43 = v15;
      v44 = v57;
      v45 = v11;
      v38 = v51;
      v39 = v19;
      v40 = v53;
      v41 = v14;
      v36 = v49;
      v37 = v18;
      v9 = TTRAccountsListsViewModel.remList(for:)(&v36);
      sub_21D1077D8(&v49);
      if (!v9)
      {
        goto LABEL_3;
      }

      goto LABEL_16;
    case 6u:
      v22 = v6[11];
      v23 = v6[9];
      v59 = v6[10];
      v60 = v22;
      v24 = v6[11];
      v61[0] = v6[12];
      *(v61 + 10) = *(v6 + 202);
      v25 = v6[7];
      v26 = v6[5];
      v55 = v6[6];
      v56 = v25;
      v27 = v6[7];
      v28 = v6[9];
      v57 = v6[8];
      v58 = v28;
      v29 = v6[3];
      v30 = v6[1];
      v51 = v6[2];
      v52 = v29;
      v31 = v6[3];
      v32 = v6[5];
      v53 = v6[4];
      v54 = v32;
      v33 = v6[1];
      v49 = *v6;
      v50 = v33;
      v46 = v59;
      v47 = v24;
      v48[0] = v6[12];
      *(v48 + 10) = *(v6 + 202);
      v42 = v55;
      v43 = v27;
      v44 = v57;
      v45 = v23;
      v38 = v51;
      v39 = v31;
      v40 = v53;
      v41 = v26;
      v36 = v49;
      v37 = v30;
      v34 = TTRAccountsListsViewModel.remSmartList(for:)(&v36);
      sub_21D1077D8(&v49);
      if (!v34)
      {
        goto LABEL_3;
      }

      *a2 = v34;
      v7 = 1;
      goto LABEL_4;
    case 7u:
      v8 = *(v6 + 6);
      sub_21DA1CE20(v8, &v49);
      v9 = v49;
      if (BYTE8(v49) == 1 || BYTE8(v49) == 4)
      {

LABEL_16:
        *a2 = v9;
        *(a2 + 8) = 0;
      }

      else
      {
        if (BYTE8(v49) != 255)
        {
          sub_21D103A34(v49, BYTE8(v49));
        }

LABEL_3:
        *a2 = 0;
        v7 = -1;
LABEL_4:
        *(a2 + 8) = v7;
      }

      return;
    case 0xFu:
    case 0x10u:
      goto LABEL_3;
    default:
      v35 = sub_21DBF56BC();
      (*(*(v35 - 8) + 8))(v6, v35);
      goto LABEL_3;
  }
}

id TTRAccountsListsViewModel.listOrCustomSmartList(for:)@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = TTRAccountsListsViewModel.remList(for:)(a1);
  if (result)
  {
    *a2 = result;
    *(a2 + 8) = 0;
  }

  else
  {
    result = TTRAccountsListsViewModel.remSmartList(for:)(a1);
    if (result)
    {
      *a2 = result;
      v5 = 1;
    }

    else
    {
      *a2 = 0;
      v5 = -1;
    }

    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t TTRAccountsListsViewModel.account(with:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  *&v12 = MEMORY[0x28223BE20](v11 - 8).n128_u64[0];
  v14 = &v19 - v13;
  v15 = [a1 uuid];
  sub_21DBF568C();

  swift_storeEnumTagMultiPayload();
  sub_21D1083C8(v10, v14);
  sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    result = sub_21D0CF7E0(v14, &qword_27CE5A490, &unk_21DC0F950);
    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    sub_21D0FE734(v14, v7, type metadata accessor for TTRAccountsListsViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v17 = *v7;
      v18 = v7[1];
    }

    else
    {
      sub_21D101450(v7, type metadata accessor for TTRAccountsListsViewModel.Item);
      v17 = 0uLL;
      v18 = 0uLL;
    }

    *a2 = v17;
    a2[1] = v18;
    return sub_21D101450(v14, type metadata accessor for TTRAccountsListsViewModel.Item);
  }

  return result;
}

id TTRAccountsListsViewModel.remAccount(for:)(uint64_t a1)
{
  sub_21DA1CE20(*(a1 + 16), &v2);
  if (v3 != 255)
  {
    result = v2;
    if (!v3)
    {
      return result;
    }

    sub_21D103A34(v2, v3);
  }

  return 0;
}

Swift::Bool __swiftcall TTRAccountsListsViewModel.exceedsMaximumNumberOfPinnedListsAdding(count:)(Swift::Int count)
{
  v38 = count;
  v2 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  v34 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  MEMORY[0x28223BE20](v44);
  v43 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = &v33 - v7;
  v39 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
  MEMORY[0x28223BE20](v39);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180, &unk_21DC08F30) - 8;
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes);
  v46 = *(v18 + 16);
  if (v46)
  {
    v19 = 0;
    v20 = 0;
    v45 = v18 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v21 = v15;
    v41 = v15;
    v42 = v18;
    v36 = v10;
    v37 = v9;
    v35 = v12;
    while (v19 < *(v18 + 16))
    {
      sub_21D0D3954(v45 + *(v21 + 72) * v19++, v17, &qword_27CE58180, &unk_21DC08F30);
      sub_21D0FE734(v17, v12, type metadata accessor for TTRAccountsListsViewModel.Item);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
        case 4u:
        case 7u:
        case 8u:
        case 9u:
        case 0xAu:
        case 0xBu:
        case 0xCu:
        case 0xDu:
        case 0xEu:
          sub_21D0CF7E0(v17, &qword_27CE58180, &unk_21DC08F30);
          result = sub_21D101450(v12, type metadata accessor for TTRAccountsListsViewModel.Item);
          goto LABEL_4;
        case 2u:
          sub_21D100E28(v12, v9, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
          v23 = *&v9[*(v39 + 20)];
          v24 = *(v23 + 16);
          if (!v24)
          {
            goto LABEL_27;
          }

          v25 = v23 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
          v26 = *(v34 + 72);
          break;
        case 3u:
          sub_21D0CF7E0(v17, &qword_27CE58180, &unk_21DC08F30);
          v30 = v40;
          sub_21D100E28(v12, v40, type metadata accessor for TTRAccountsListsViewModel.SmartList);
          v31 = *(v30 + *(v44 + 36));
          result = sub_21D101450(v30, type metadata accessor for TTRAccountsListsViewModel.SmartList);
          if (v31 == 2)
          {
            goto LABEL_28;
          }

          v22 = __OFADD__(v20++, 1);
          v18 = v42;
          if (v22)
          {
            goto LABEL_37;
          }

          v21 = v41;
          goto LABEL_4;
        case 5u:
        case 6u:
          sub_21D0CF7E0(v17, &qword_27CE58180, &unk_21DC08F30);
          result = sub_21D101450(v12, type metadata accessor for TTRAccountsListsViewModel.Item);
          v22 = __OFADD__(v20++, 1);
          if (v22)
          {
            goto LABEL_35;
          }

          goto LABEL_4;
        case 0xFu:
        case 0x10u:
          result = sub_21D0CF7E0(v17, &qword_27CE58180, &unk_21DC08F30);
          goto LABEL_4;
        default:
          sub_21D0CF7E0(v17, &qword_27CE58180, &unk_21DC08F30);
          v32 = sub_21DBF56BC();
          result = (*(*(v32 - 8) + 8))(v12, v32);
          goto LABEL_4;
      }

      do
      {
        sub_21D0FE734(v25, v4, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          result = sub_21D101450(v4, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
          v22 = __OFADD__(v20++, 1);
          if (v22)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v27 = v2;
          v28 = v43;
          sub_21D100E28(v4, v43, type metadata accessor for TTRAccountsListsViewModel.SmartList);
          v29 = *(v28 + *(v44 + 36));
          result = sub_21D101450(v28, type metadata accessor for TTRAccountsListsViewModel.SmartList);
          if (v29 != 2)
          {
            v22 = __OFADD__(v20++, 1);
            if (v22)
            {
              goto LABEL_34;
            }
          }

          v2 = v27;
        }

        v25 += v26;
        --v24;
      }

      while (v24);
LABEL_27:
      v9 = v37;
      sub_21D101450(v37, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
      result = sub_21D0CF7E0(v17, &qword_27CE58180, &unk_21DC08F30);
      v12 = v35;
LABEL_28:
      v21 = v41;
      v18 = v42;
LABEL_4:
      if (v19 == v46)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
    v20 = 0;
LABEL_30:
    if (!__OFADD__(v20, v38))
    {
      return v20 + v38 > 9;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

id TTRAccountsListsViewModel.remList(for:)(uint64_t a1)
{
  sub_21DA1CE20(*(a1 + 48), &v3);
  result = v3;
  if (v4 != 1 && v4 != 4)
  {
    if (v4 != 255)
    {
      sub_21D103A34(v3, v4);
    }

    return 0;
  }

  return result;
}

{
  TTRAccountsListsViewModel.listOrCustomSmartList(for:)(a1, &v2);
  if (v3 != 255)
  {
    result = v2;
    if ((v3 & 1) == 0)
    {
      return result;
    }

    sub_21D157864(v2, v3);
  }

  return 0;
}

{
  v2 = *a1;
  v3 = *(a1 + 146);
  if (v3 != 2 && (v3 & 1) != 0)
  {
    MEMORY[0x28223BE20](v2);
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C90, &qword_21DC29A60);
    sub_21D0D0F1C(&qword_280D0C3F0, &qword_27CE61C90, &qword_21DC29A60, MEMORY[0x277D83970]);
    sub_21DBFA48C();

    if (v7 != 255)
    {
      result = v6;
      if ((v7 & 1) == 0)
      {
        return result;
      }

      sub_21D157864(v6, v7);
    }

    return 0;
  }

  sub_21DA1CE20(v2, &v6);
  result = v6;
  if (v7 != 1 && v7 != 4)
  {
    if (v7 != 255)
    {
      sub_21D103A34(v6, v7);
    }

    return 0;
  }

  return result;
}

uint64_t TTRAccountsListsViewModel.allowedInsertionIndicesInAccount(_:)(void *a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  *&v21 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v30 = a1;
  v22 = a1;
  v24 = &v30 - v23;
  v25 = [v22 uuid];
  sub_21DBF568C();

  swift_storeEnumTagMultiPayload();
  sub_21D1083C8(v13, v24);
  sub_21D101450(v13, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  result = sub_21D0E8DA0(v24);
  v33 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_21D0D3954(v24, v19, &qword_27CE5A490, &unk_21DC0F950);

    v27 = [v30 uuid];
    sub_21DBF568C();

    swift_storeEnumTagMultiPayload();
    sub_21D1083C8(v13, v16);
    sub_21D101450(v13, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    if ((*(v31 + 48))(v16, 1, v32) == 1)
    {

      sub_21D0CF7E0(v19, &qword_27CE5A490, &unk_21DC0F950);
      sub_21D0CF7E0(v24, &qword_27CE5A490, &unk_21DC0F950);
      sub_21D0CF7E0(v16, &qword_27CE5A490, &unk_21DC0F950);
    }

    else
    {
      sub_21D100E28(v16, v7, type metadata accessor for TTRAccountsListsViewModel.Item);
      v28 = v33;
      while (v28)
      {
        sub_21D107A34(--v28, v19, v4);
        TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v13);
        TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v10);
        v29 = _s15RemindersUICore25TTRAccountsListsViewModelC14ItemIdentifierO2eeoiySbAE_AEtFZ_0(v13, v10);
        sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
        sub_21D101450(v13, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
        sub_21D101450(v4, type metadata accessor for TTRAccountsListsViewModel.Item);
        if (v29)
        {

          sub_21D0CF7E0(v19, &qword_27CE5A490, &unk_21DC0F950);
          sub_21D0CF7E0(v24, &qword_27CE5A490, &unk_21DC0F950);
          sub_21D101450(v7, type metadata accessor for TTRAccountsListsViewModel.Item);
          v33 = v28;
          return 0;
        }
      }

      sub_21D0CF7E0(v19, &qword_27CE5A490, &unk_21DC0F950);
      sub_21D0CF7E0(v24, &qword_27CE5A490, &unk_21DC0F950);
      sub_21D101450(v7, type metadata accessor for TTRAccountsListsViewModel.Item);
    }

    return 0;
  }

  return result;
}

double TTRAccountsListsViewModel.Item.group.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0FE734(v2, v6, type metadata accessor for TTRAccountsListsViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v7 = v6[1];
    *a1 = *v6;
    a1[1] = v7;
    v8 = v6[2];
    v9 = v6[3];
    a1[2] = v8;
    a1[3] = v9;
  }

  else
  {
    sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.Item);
    *&v8 = 0;
    *a1 = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
  }

  return *&v8;
}

id TTRAccountsListsViewModel.remSmartList(for:)(void **a1)
{
  v2 = *a1;
  v3 = *(a1 + 146);
  if (v3 == 2 || (v3 & 1) == 0)
  {
    sub_21DA1CE20(v2, &v5);
    result = v5;
    if (v6 == 2)
    {
      return result;
    }

    if (v6 != 255)
    {
      sub_21D103A34(v5, v6);
    }
  }

  else
  {
    MEMORY[0x28223BE20](v2);
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C90, &qword_21DC29A60);
    sub_21D0D0F1C(&qword_280D0C3F0, &qword_27CE61C90, &qword_21DC29A60, MEMORY[0x277D83970]);
    sub_21DBFA48C();

    if (v6 != 255)
    {
      result = v5;
      if (v6)
      {
        return result;
      }

      sub_21D157864(v5, v6);
    }
  }

  return 0;
}

uint64_t sub_21DA11918(uint64_t a1, uint64_t (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_21D0FE734(a1, &v10 - v5, type metadata accessor for TTRAccountsListsViewModel.Item);
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = a2(v6);
  sub_21D0CF7E0(v6, &qword_27CE5A490, &unk_21DC0F950);
  return v8;
}

void sub_21DA11A2C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(char *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v95 = a5;
  v96 = a6;
  v93 = a3;
  v94 = a4;
  v102 = a1;
  v103 = a2;
  v70 = a9;
  v11 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v70 - v16;
  v104 = sub_21DBF810C();
  v17 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE599F8, &unk_21DC0CBE0);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v80 = &v70 - v20;
  v75 = sub_21DBF5F4C();
  v100 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v70 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_21DC09CF0;
  v101 = v12;
  v27 = v12;
  v28 = v22;
  v29 = *(v27 + 56);
  v91 = v11;
  v88 = v29;
  v89 = v27 + 56;
  v29(v25, 1, 1, v11);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64CC8, &unk_21DC37690);
  v30 = swift_allocObject();
  v31 = v30 + *(*v30 + 88);
  v90 = v25;
  v32 = v26;
  sub_21D0D523C(v25, v31, &qword_27CE5A490, &unk_21DC0F950);
  v33 = v103;
  *(v30 + *(*v30 + 96)) = v102;
  *(v30 + *(*v30 + 104)) = v33;
  *(v26 + 32) = v30;
  v107 = v26;
  v98 = v17 + 16;
  v73 = v17;
  v97 = (v17 + 8);
  v74 = (v100 + 8);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v34 = 0;
  v81 = MEMORY[0x277D84F90];
  v79 = xmmword_21DC241F0;
  v78 = xmmword_21DC364B0;
  v77 = a8;
  v76 = a7;
  v85 = v28;
  while (1)
  {
    v84 = v34;
    if ((v32 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x223D44740](v34, v32);
    }

    else
    {
      if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }
    }

    v36 = *(v35 + *(*v35 + 96));
    v37 = *(*v35 + 104);
    v86 = v35;
    v102 = *(v35 + v37);
    v103 = v36;
    v105 = v102;
    v106 = v36;
    if (a7)
    {
      v38 = swift_allocObject();
      *(v38 + 16) = a7;
      *(v38 + 24) = a8;
      v39 = sub_21DA31088;
    }

    else
    {
      v39 = sub_21DA263EC;
      v38 = 0;
    }

    v40 = a8;
    v41 = swift_allocObject();
    *(v41 + 16) = v39;
    *(v41 + 24) = v38;
    v42 = v103;
    sub_21DBF8E0C();
    v43 = v102;
    sub_21DBF8E0C();
    sub_21D0D0E78(a7, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C60, &unk_21DC29A40);
    sub_21D0D0F1C(&qword_280D178E0, &qword_27CE61C60, &unk_21DC29A40, MEMORY[0x277D83988]);
    sub_21DBFAC4C();

    v44 = swift_allocObject();
    v45 = v78;
    *(v44 + 16) = v79;
    *(v44 + 32) = v45;
    v105 = v43;
    v106 = v42;
    v83 = v44;
    v46 = sub_21DBF5F2C();
    if (*(v46 + 16))
    {
      v47 = v80;
      sub_21D0D3954(v86 + *(*v86 + 88), v80, &qword_27CE5A490, &unk_21DC0F950);
      *(v47 + *(v72 + 28)) = v46;
      v48 = v81;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v92;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v48 = sub_21D215210(0, v48[2] + 1, 1, v48);
      }

      v52 = v48[2];
      v51 = v48[3];
      if (v52 >= v51 >> 1)
      {
        v48 = sub_21D215210((v51 > 1), v52 + 1, 1, v48);
      }

      v48[2] = v52 + 1;
      v53 = (*(v71 + 80) + 32) & ~*(v71 + 80);
      v81 = v48;
      sub_21D0D523C(v80, v48 + v53 + *(v71 + 72) * v52, &qword_27CE599F8, &unk_21DC0CBE0);
    }

    else
    {

      v50 = v92;
    }

    v54 = sub_21DBF5F1C();
    v55 = *(v54 + 16);
    v82 = v54;
    if (v55)
    {
      break;
    }

LABEL_28:
    (*v74)(v85, v75);

    if (v32 >> 62)
    {
      v69 = sub_21DBFBD7C();
    }

    else
    {
      v69 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a8 = v77;
    a7 = v76;
    v34 = v84 + 1;
    if ((v84 + 1) >= v69)
    {

      *v70 = v81;
      return;
    }
  }

  v56 = v54 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
  v57 = (*(v101 + 80) + 32) & ~*(v101 + 80);
  v100 = v103 + v57;
  v99 = v102 + v57;
  v58 = *(v73 + 72);
  v59 = *(v73 + 16);
  v59(v19, v56, v104);
  while (1)
  {
    v60 = sub_21DBF80FC();
    if ((v60 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v60 >= *(v103 + 16))
    {
      goto LABEL_35;
    }

    v61 = *(v101 + 72);
    sub_21D0FE734(v100 + v61 * v60, v50, type metadata accessor for TTRAccountsListsViewModel.Item);
    v62 = sub_21DBF80EC();
    (*v97)(v19, v104);
    if ((v62 & 0x8000000000000000) != 0)
    {
      goto LABEL_36;
    }

    if (v62 >= *(v102 + 16))
    {
      goto LABEL_37;
    }

    sub_21D0FE734(v99 + v62 * v61, v14, type metadata accessor for TTRAccountsListsViewModel.Item);
    v63 = v93(v50);
    v64 = v95(v14);
    if (*(v63 + 16) | *(v64 + 16))
    {
      v65 = v64;
      v66 = v90;
      sub_21D0FE734(v14, v90, type metadata accessor for TTRAccountsListsViewModel.Item);
      v88(v66, 0, 1, v91);
      v67 = swift_allocObject();
      sub_21D0D523C(v66, v67 + *(*v67 + 88), &qword_27CE5A490, &unk_21DC0F950);
      *(v67 + *(*v67 + 96)) = v63;
      *(v67 + *(*v67 + 104)) = v65;

      MEMORY[0x223D42D80](v68);
      if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();

      sub_21D101450(v14, type metadata accessor for TTRAccountsListsViewModel.Item);
      v50 = v92;
      sub_21D101450(v92, type metadata accessor for TTRAccountsListsViewModel.Item);
      v32 = v107;
    }

    else
    {

      sub_21D101450(v14, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D101450(v50, type metadata accessor for TTRAccountsListsViewModel.Item);
    }

    v56 += v58;
    if (!--v55)
    {
      goto LABEL_28;
    }

    v59(v19, v56, v104);
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t sub_21DA1256C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v6 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v27 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1[1];
  v11 = v10[2];
  if (!v11)
  {
LABEL_9:
    v17 = *(v27 + 56);

    return v17(a1, 1, 1, v6, v7);
  }

  while (1)
  {
    v12 = &v10[2 * v11];
    v14 = v12[2];
    v13 = v12[3];
    v15 = *(v14 + 16);
    if (v13 != v15)
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = v10[2];
      if (!v16)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = sub_21D256E48(v10);
      v16 = v10[2];
      if (!v16)
      {
LABEL_8:
        __break(1u);
        goto LABEL_9;
      }
    }

    v10[2] = v16 - 1;

    v1[1] = v10;
    v11 = v10[2];
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < v15)
  {
    sub_21D0FE734(v14 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v13, v9, type metadata accessor for TTRAccountsListsViewModel.Item);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

  __break(1u);
LABEL_24:
  result = sub_21D256E48(v10);
  v10 = result;
LABEL_15:
  if (v11 > v10[2])
  {
    __break(1u);
    goto LABEL_26;
  }

  v19 = &v10[2 * v11 - 2];
  v21 = v19[5];
  v20 = v19 + 5;
  v22 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *v20 = v22;
  v1[1] = v10;
  sub_21D0FE734(v9, v5, type metadata accessor for TTRAccountsListsViewModel.Item);
  v23 = *(v27 + 56);
  v27 += 56;
  v23(v5, 0, 1, v6);
  v28 = *v1;
  result = sub_21D0E8DA0(v5);
  if (result < 0)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  MEMORY[0x28223BE20](result);
  *(&v26 - 2) = &v28;
  *(&v26 - 1) = v5;
  v25 = sub_21D174668(sub_21DA312A8, (&v26 - 4), 0, v24);
  sub_21D0CF7E0(v5, &qword_27CE5A490, &unk_21DC0F950);
  if (*(v25 + 16))
  {
    sub_21DA0F490(v25, 0);
  }

  else
  {
  }

  sub_21D100E28(v9, a1, type metadata accessor for TTRAccountsListsViewModel.Item);
  return (v23)(a1, 0, 1, v6);
}

id TTRAccountsListsViewModel.remCustomSmartList(for:)(uint64_t a1)
{
  TTRAccountsListsViewModel.listOrCustomSmartList(for:)(a1, &v2);
  if (v3 != 255)
  {
    result = v2;
    if (v3)
    {
      return result;
    }

    sub_21D157864(v2, v3);
  }

  return 0;
}

id TTRAccountsListsViewModel.remAccount(for:)(void *a1)
{
  sub_21DA1CE20(a1, &v2);
  if (v3 != 255)
  {
    result = v2;
    if (!v3)
    {
      return result;
    }

    sub_21D103A34(v2, v3);
  }

  return 0;
}

char *TTRAccountsListsViewModel.lists(in:)(uint64_t a1)
{
  result = sub_21DA1A714(*(a1 + 48));
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

{
  result = sub_21DA1A714(*(a1 + 16));
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t TTRAccountsListsViewModel.pinnedLists(in:)(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v33 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = (v31 - v6);
  MEMORY[0x28223BE20](v8);
  v10 = v31 - v9;
  v32 = *(a1 + 48);
  result = TTRAccountsListsViewModel.visiblePinnedLists.getter();
  v12 = result;
  v13 = *(result + 16);
  if (v13)
  {
    v14 = 0;
    v34 = MEMORY[0x277D84F90];
    v31[1] = v2;
    v35 = v13;
    while (1)
    {
      if (v14 >= *(v12 + 16))
      {
        __break(1u);
        return result;
      }

      v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v16 = *(v3 + 72);
      sub_21D0FE734(v12 + v15 + v16 * v14, v10, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
      sub_21D0FE734(v10, v7, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v17 = v7[11];
        v36[10] = v7[10];
        v36[11] = v17;
        *v37 = v7[12];
        *&v37[10] = *(v7 + 202);
        v18 = v7[7];
        v36[6] = v7[6];
        v36[7] = v18;
        v19 = v7[9];
        v36[8] = v7[8];
        v36[9] = v19;
        v20 = v7[3];
        v36[2] = v7[2];
        v36[3] = v20;
        v21 = v7[5];
        v36[4] = v7[4];
        v36[5] = v21;
        v22 = v7[1];
        v36[0] = *v7;
        v36[1] = v22;
        v23 = *v37;
        if (*v37)
        {
          sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
          v24 = v32;
          v25 = v23;
          v26 = sub_21DBFB63C();
          sub_21D1077D8(v36);

          if (v26)
          {
            sub_21D100E28(v10, v33, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
            v27 = v34;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v38 = v27;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_21D18F6B0(0, *(v27 + 16) + 1, 1);
              v27 = v38;
            }

            v30 = *(v27 + 16);
            v29 = *(v27 + 24);
            if (v30 >= v29 >> 1)
            {
              sub_21D18F6B0((v29 > 1), v30 + 1, 1);
              v27 = v38;
            }

            *(v27 + 16) = v30 + 1;
            v34 = v27;
            result = sub_21D100E28(v33, v27 + v15 + v30 * v16, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
            v13 = v35;
            goto LABEL_5;
          }
        }

        else
        {
          sub_21D1077D8(v36);
        }

        v13 = v35;
      }

      else
      {
        sub_21D101450(v7, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
      }

      result = sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
LABEL_5:
      if (v13 == ++v14)
      {
        goto LABEL_18;
      }
    }
  }

  v34 = MEMORY[0x277D84F90];
LABEL_18:

  return v34;
}

uint64_t TTRAccountsListsViewModel.listOrCustomSmartList(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0FE734(a1, v6, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = v6[11];
    v8 = v6[9];
    v47 = v6[10];
    v48 = v7;
    v9 = v6[11];
    v49[0] = v6[12];
    *(v49 + 10) = *(v6 + 202);
    v10 = v6[7];
    v11 = v6[5];
    v43 = v6[6];
    v44 = v10;
    v12 = v6[7];
    v13 = v6[9];
    v45 = v6[8];
    v46 = v13;
    v14 = v6[3];
    v15 = v6[1];
    v39 = v6[2];
    v40 = v14;
    v16 = v6[3];
    v17 = v6[5];
    v41 = v6[4];
    v42 = v17;
    v18 = v6[1];
    v37 = *v6;
    v38 = v18;
    v34 = v47;
    v35 = v9;
    v36[0] = v6[12];
    *(v36 + 10) = *(v6 + 202);
    v30 = v43;
    v31 = v12;
    v32 = v45;
    v33 = v8;
    v26 = v39;
    v27 = v16;
    v28 = v41;
    v29 = v11;
    v24 = v37;
    v25 = v15;
    v19 = TTRAccountsListsViewModel.remList(for:)(&v24);
    if (v19)
    {
      v20 = v19;
      result = sub_21D1077D8(&v37);
      *a2 = v20;
      *(a2 + 8) = 0;
    }

    else
    {
      v34 = v47;
      v35 = v48;
      v36[0] = v49[0];
      *(v36 + 10) = *(v49 + 10);
      v30 = v43;
      v31 = v44;
      v32 = v45;
      v33 = v46;
      v26 = v39;
      v27 = v40;
      v28 = v41;
      v29 = v42;
      v24 = v37;
      v25 = v38;
      v22 = TTRAccountsListsViewModel.remSmartList(for:)(&v24);
      result = sub_21D1077D8(&v37);
      if (v22)
      {
        *a2 = v22;
        v23 = 1;
      }

      else
      {
        *a2 = 0;
        v23 = -1;
      }

      *(a2 + 8) = v23;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = -1;
    return sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
  }

  return result;
}

uint64_t sub_21DA12F98()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F4D8);
  v1 = __swift_project_value_buffer(v0, qword_280D0F4D8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRAccountsListsViewModel.PinnedList.longTitle.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  MEMORY[0x28223BE20](v2);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  MEMORY[0x28223BE20](v5);
  v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0FE734(v1, v7, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = v7[11];
    v16[10] = v7[10];
    v16[11] = v8;
    v17[0] = v7[12];
    *(v17 + 10) = *(v7 + 202);
    v9 = v7[7];
    v16[6] = v7[6];
    v16[7] = v9;
    v10 = v7[9];
    v16[8] = v7[8];
    v16[9] = v10;
    v11 = v7[3];
    v16[2] = v7[2];
    v16[3] = v11;
    v12 = v7[5];
    v16[4] = v7[4];
    v16[5] = v12;
    v13 = v7[1];
    v16[0] = *v7;
    v16[1] = v13;
    v14 = *(&v16[0] + 1);
    sub_21DBF8E0C();
    sub_21D1077D8(v16);
  }

  else
  {
    sub_21D100E28(v7, v4, type metadata accessor for TTRAccountsListsViewModel.SmartList);
    LOBYTE(v16[0]) = v4[*(v2 + 20)];
    v14 = TTRListType.PredefinedSmartListType.longTitle.getter();
    sub_21D101450(v4, type metadata accessor for TTRAccountsListsViewModel.SmartList);
  }

  return v14;
}

uint64_t TTRListType.PredefinedSmartListType.longTitle.getter()
{
  v1 = **(&unk_27832F608 + *v0);
  v2 = REMSmartListType.longTitle.getter(v1);
  v4 = v3;

  if (v4)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t TTRAccountsListsViewModel.SmartList.visibility.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

BOOL TTRAccountsListsViewModel.SmartList.shouldBeVisible.getter()
{
  v1 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  v2 = *(v0 + *(v1 + 36));
  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    return 0;
  }

  return *(v0 + *(v1 + 24)) > 0;
}

uint64_t TTRAccountsListsViewModel.SmartList.init(id:type:count:overdueCount:visibility:dynamicGlyph:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v11 = *a5;
  v12 = a6[1];
  v25 = *a6;
  v13 = sub_21DBF56BC();
  v14 = *(v13 - 8);
  (*(v14 + 16))(a7, a1, v13);
  v15 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  *(a7 + v15[5]) = v10;
  *(a7 + v15[6]) = a3;
  v16 = objc_opt_self();
  v17 = sub_21DBFABEC();
  v18 = [v16 localizedStringFromNumber:v17 numberStyle:1];

  v19 = sub_21DBFA16C();
  v21 = v20;

  result = (*(v14 + 8))(a1, v13);
  v23 = (a7 + v15[7]);
  *v23 = v19;
  v23[1] = v21;
  *(a7 + v15[8]) = a4;
  *(a7 + v15[9]) = v11;
  v24 = (a7 + v15[10]);
  *v24 = v25;
  v24[1] = v12;
  return result;
}

BOOL static TTRAccountsListsViewModel.List.PinState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

BOOL sub_21DA135A8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

double TTRAccountsListsViewModel.List.sharingParticipantInfo.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 176);
  sub_21DBF8E0C();
  return result;
}

double TTRAccountsListsViewModel.List.sharingContactsData.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 184);
  sub_21DBF8E0C();
  return result;
}

void *TTRAccountsListsViewModel.List.groupID.getter()
{
  v1 = *(v0 + 192);
  v2 = v1;
  return v1;
}

uint64_t TTRAccountsListsViewModel.List.groupName.getter()
{
  v1 = *(v0 + 200);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRAccountsListsViewModel.Group.name.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRAccountsListsViewModel.Group.countText.getter()
{
  v1 = *(v0 + 24);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRAccountsListsViewModel.Tip.name.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRAccountsListsViewModel.HashtagsSection.title.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t TTRAccountsListsViewModel.HashtagFilterOperation.Option.localizedOptionString.getter()
{
  if (*v0)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t TTRAccountsListsViewModel.HashtagFilterOperation.Option.shortLocalizedOptionString.getter()
{
  if (*v0)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

RemindersUICore::TTRAccountsListsViewModel::HashtagFilterOperation::Option_optional __swiftcall TTRAccountsListsViewModel.HashtagFilterOperation.Option.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t TTRAccountsListsViewModel.HashtagFilterOperation.selectedItem.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t TTRAccountsListsViewModel.HashtagFilterOperation.selectedItem.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

void TTRAccountsListsViewModel.HashtagFilterOperation.Option.init(selection:)(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_21DBF6C1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = *(v5 + 16);
  v12(&v25 - v10, a1, v4, v9);
  v13 = (*(v5 + 88))(v11, v4);
  if (v13 == *MEMORY[0x277D45378])
  {
    (v12)(v7, v11, v4);
    (*(v5 + 96))(v7, v4);

    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE50, &unk_21DC11830) + 64);
    v15 = sub_21DBF6C0C();
    v16 = *(v15 - 8);
    v17 = (*(v16 + 88))(&v7[v14], v15);
    if (v17 == *MEMORY[0x277D45388])
    {
      v18 = 0;
LABEL_11:
      v20 = *(v5 + 8);
      v20(a1, v4);
      v20(v11, v4);
      *a2 = v18;
      return;
    }

    if (v17 == *MEMORY[0x277D45390])
    {
LABEL_10:
      v18 = 1;
      goto LABEL_11;
    }

    (*(v16 + 8))(&v7[v14], v15);
  }

  else if (v13 == *MEMORY[0x277D45398] || v13 == *MEMORY[0x277D45380])
  {
    goto LABEL_10;
  }

  if (qword_280D0F4D0 != -1)
  {
    swift_once();
  }

  v21 = sub_21DBF84BC();
  __swift_project_value_buffer(v21, qword_280D0F4D8);
  v22 = MEMORY[0x277D84F90];
  v23 = sub_21D17716C(MEMORY[0x277D84F90]);
  v24 = sub_21D17716C(v22);
  sub_21DAEAB00("Unknown label specifier", 23, 2, v23, v24);
  __break(1u);
}

uint64_t _s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD0V2id10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF56BC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21DA14074(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void, void))
{
  if (_s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0() & 1) != 0 && (v8 = a3(0), (a4(*(a1 + *(v8 + 20)), *(a2 + *(v8 + 20)))))
  {
    v9 = *(a1 + *(v8 + 24)) ^ *(a2 + *(v8 + 24)) ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_21DA14110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (_s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0() & 1) != 0 && (a5(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))))
  {
    v9 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t TTRAccountsListsViewModel.RecentlyDeletedList.countText.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRAccountsListsViewModel.RecentlyDeletedList.init(accountID:countText:count:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

BOOL static TTRAccountsListsViewModel.RecentlyDeletedList.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  if (sub_21DBFB63C() & 1) != 0 && (v2 == v5 ? (v8 = v3 == v6) : (v8 = 0), v8 || (sub_21DBFC64C()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

BOOL sub_21DA1427C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  if (sub_21DBFB63C() & 1) != 0 && (v2 == v5 ? (v8 = v3 == v6) : (v8 = 0), v8 || (sub_21DBFC64C()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

RemindersUICore::TTRAccountsListsViewModel::ItemIdentifier::CodingKeys_optional __swiftcall TTRAccountsListsViewModel.ItemIdentifier.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v3 = v1;
  v4 = stringValue._countAndFlagsBits == 1684632949 && stringValue._object == 0xE400000000000000;
  if (v4 || (countAndFlagsBits = stringValue._countAndFlagsBits, (sub_21DBFC64C() & 1) != 0))
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0xD000000000000013 && 0x800000021DC73B60 == object || (sub_21DBFC64C() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x79786F7270 && object == 0xE500000000000000)
  {

    v7 = 2;
  }

  else
  {
    v8 = sub_21DBFC64C();

    if (v8)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }
  }

  *v3 = v7;
  return result;
}

uint64_t TTRAccountsListsViewModel.ItemIdentifier.CodingKeys.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

unint64_t TTRAccountsListsViewModel.ItemIdentifier.CodingKeys.stringValue.getter()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x79786F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684632949;
  }
}

unint64_t sub_21DA14554()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x79786F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684632949;
  }
}

uint64_t sub_21DA145BC(uint64_t a1)
{
  v2 = sub_21DA2716C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DA145F8(uint64_t a1)
{
  v2 = sub_21DA2716C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTRAccountsListsViewModel.ItemIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a2;
  v5 = sub_21DBF56BC();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64BD8, &qword_21DC364D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v40 = v37 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64BE0, &qword_21DC364D8);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v37 - v17;
  v41 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v41);
  v42 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_21DA2716C();
  v21 = sub_21DBFC87C();
  if (v2)
  {
    v22 = v46;
    v23 = v48;
  }

  else
  {
    v38 = v16;
    v39 = v15;
    v37[0] = v9;
    v37[1] = v37;
    v47 = &unk_282EA8210;
    MEMORY[0x28223BE20](v21);
    v37[-2] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64BF0, &qword_21DC364E0);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64BF8, &qword_21DC364E8);
    sub_21D0D0F1C(&qword_27CE64C00, &qword_27CE64BF0, &qword_21DC364E0, MEMORY[0x277D83970]);
    v25 = v40;
    v26 = v24;
    sub_21DBFA48C();
    v27 = v12;
    sub_21D0D3954(v25, v12, &qword_27CE64BD8, &qword_21DC364D0);
    v28 = (*(*(v26 - 8) + 48))(v12, 1, v26);
    v29 = v39;
    if (v28 != 1)
    {
      sub_21D0CF7E0(v25, &qword_27CE64BD8, &qword_21DC364D0);
      v33 = *(v26 + 48);
      v34 = v44;
      v35 = *(v43 + 32);
      v36 = v37[0];
      v35(v37[0], v27 + v33, v44);
      v31 = v42;
      v35(v42, v36, v34);
      swift_storeEnumTagMultiPayload();
      (*(v38 + 8))(v18, v29);
      v23 = v48;
      v22 = v46;
      goto LABEL_6;
    }

    sub_21D0CF7E0(v27, &qword_27CE64BD8, &qword_21DC364D0);
    sub_21DA271DC();
    v3 = swift_allocError();
    swift_willThrow();
    sub_21D0CF7E0(v25, &qword_27CE64BD8, &qword_21DC364D0);
    (*(v38 + 8))(v18, v29);
    v23 = v48;
    v22 = v46;
  }

  sub_21D0D32E4(v22, &v47);
  v30 = v45;
  sub_21DBF569C();

  v31 = v42;
  (*(v43 + 32))(v42, v30, v44);
  swift_storeEnumTagMultiPayload();
LABEL_6:
  sub_21D100E28(v31, v23, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

uint64_t sub_21DA14BD8@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_21DBF56BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v19 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64BE0, &qword_21DC364D8);
  sub_21D0DCFD0(&qword_27CE65160, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  result = sub_21DBFC49C();
  if (!v2)
  {
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_21D0CF7E0(v7, &qword_27CE58370, &unk_21DC091F0);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64BF8, &qword_21DC364E8);
      return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
    }

    else
    {
      v15 = *(v9 + 32);
      v15(v11, v7, v8);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64BF8, &qword_21DC364E8);
      v17 = *(v16 + 48);
      *a2 = v12;
      v15(&a2[v17], v11, v8);
      return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
    }
  }

  return result;
}

uint64_t TTRAccountsListsViewModel.ItemIdentifier.encode(to:)(void *a1)
{
  v27 = sub_21DBF56BC();
  v2 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v24[0] = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v24 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = v24 - v8;
  v10 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64C10, &qword_21DC364F0);
  v25 = *(v13 - 8);
  v26 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v24 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DA2716C();
  sub_21DBFC88C();
  sub_21D0FE734(v24[1], v12, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = *(v2 + 32);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = v27;
      v17(v6, v12, v27);
      v29 = 1;
      sub_21D0DCFD0(&qword_27CE5B4B8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
      v19 = v26;
      sub_21DBFC56C();
      (*(v2 + 8))(v6, v18);
    }

    else
    {
      v21 = v24[0];
      v22 = v27;
      v17(v24[0], v12, v27);
      v30 = 2;
      sub_21D0DCFD0(&qword_27CE5B4B8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
      v19 = v26;
      sub_21DBFC56C();
      (*(v2 + 8))(v21, v22);
    }
  }

  else
  {
    v20 = v27;
    v17(v9, v12, v27);
    v28 = 0;
    sub_21D0DCFD0(&qword_27CE5B4B8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    v19 = v26;
    sub_21DBFC56C();
    (*(v2 + 8))(v9, v20);
  }

  return (*(v25 + 8))(v15, v19);
}

uint64_t TTRAccountsListsViewModel.ItemIdentifier.hashValue.getter()
{
  sub_21DBFC7DC();
  TTRAccountsListsViewModel.ItemIdentifier.hash(into:)(v1);
  return sub_21DBFC82C();
}

id TTRAccountsListsViewModel.AuxiliaryData.REMListOrSmartList.objectID.getter()
{
  v1 = [*v0 objectID];

  return v1;
}

id TTRAccountsListsViewModel.AuxiliaryData.Model.remAccount.getter()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

id TTRAccountsListsViewModel.AuxiliaryData.Model.remList.getter()
{
  v1 = *(v0 + 8);
  if (v1 != 4 && v1 != 1)
  {
    return 0;
  }

  v3 = *v0;
  sub_21D0FF19C(*v0, v1);
  return v3;
}

id TTRAccountsListsViewModel.AuxiliaryData.Model.remSmartList.getter()
{
  if (*(v0 + 8) != 2)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

double TTRAccountsListsViewModel.AuxiliaryData.model.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_21D105AA4(v2, v3);
}

uint64_t TTRAccountsListsViewModel.AuxiliaryData.init(model:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t TTRAccountsListsViewModel.pinnedListsSectionItems.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180, &unk_21DC08F30);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes);
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes + 8) != 1)
  {
    return MEMORY[0x277D84F90];
  }

  v10 = *v9;
  v11 = *(*v9 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v18 = MEMORY[0x277D84F90];
    sub_21D18F6F4(0, v11, 0);
    v12 = v18;
    v13 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v17 = *(v2 + 72);
    do
    {
      sub_21D0D3954(v13, v4, &qword_27CE58180, &unk_21DC08F30);
      sub_21D0FE734(v4, v8, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D0CF7E0(v4, &qword_27CE58180, &unk_21DC08F30);
      v18 = v12;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_21D18F6F4((v14 > 1), v15 + 1, 1);
        v12 = v18;
      }

      *(v12 + 16) = v15 + 1;
      sub_21D100E28(v8, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, type metadata accessor for TTRAccountsListsViewModel.Item);
      v13 += v17;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t TTRAccountsListsViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_maximumItemCountInPinnedListsSection) = 9;
  v1 = MEMORY[0x277D84F90];
  v2 = sub_21D0DDA78(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64C18, &qword_21DC364F8);
  v3 = swift_allocObject();
  v11 = v1;
  v10 = MEMORY[0x277D84F98];
  sub_21D0DA894(v1, &v11, &v10);
  v4 = v10;
  v3[2] = v11;
  v3[3] = v4;
  v3[4] = v2;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree) = v3;
  *(v0 + 16) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_smartListDisplayability) = sub_21D0DDE70(v1);
  v5 = v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes;
  *v5 = v1;
  *(v5 + 8) = 0;
  v6 = OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_hashtagsHeaderItem;
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v0 + v6, 1, 1, v7);
  v8(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_hashtagsItem, 1, 1, v7);
  v8(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_permissionMainItem, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsItems) = v1;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_accountsCapabilities) = 0;
  return v0;
}

uint64_t TTRAccountsListsViewModel.__allocating_init(viewModel:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_21DA27C54(a1);

  return v2;
}

uint64_t TTRAccountsListsViewModel.init(viewModel:)(uint64_t a1)
{
  v1 = sub_21DA27C54(a1);

  return v1;
}

uint64_t TTRAccountsListsViewModel.__allocating_init(model:options:accountMigrationState:cloudKitNetworkActivity:smartListsDisplayOrder:smartListsVisibility:pinnedListsContactsData:currentHashtagSelection:isEditing:tip:permissionRequest:accountForUpgradeHint:)(uint64_t a1, uint64_t *a2, uint64_t a3, char *a4, void *a5, void *a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t *a12, __int128 *a13, void *a14)
{
  v19 = swift_allocObject();
  TTRAccountsListsViewModel.init(model:options:accountMigrationState:cloudKitNetworkActivity:smartListsDisplayOrder:smartListsVisibility:pinnedListsContactsData:currentHashtagSelection:isEditing:tip:permissionRequest:accountForUpgradeHint:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
  return v19;
}

uint64_t *TTRAccountsListsViewModel.init(model:options:accountMigrationState:cloudKitNetworkActivity:smartListsDisplayOrder:smartListsVisibility:pinnedListsContactsData:currentHashtagSelection:isEditing:tip:permissionRequest:accountForUpgradeHint:)(uint64_t a1, uint64_t *a2, uint64_t a3, char *a4, void *a5, void *a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t *a12, __int128 *a13, void *a14)
{
  v15 = v14;
  v624 = a6;
  v623 = a5;
  v617 = a4;
  *&v616 = a3;
  v609 = a1;
  v602 = a11;
  v562 = *v15;
  v19 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v19 - 8);
  v540 = &v503 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v539 = &v503 - v22;
  v528 = type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0);
  MEMORY[0x28223BE20](v528);
  v552 = &v503 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F780, &qword_21DC36500);
  MEMORY[0x28223BE20](v24 - 8);
  v550 = &v503 - v25;
  v26 = sub_21DBF6C1C();
  v525 = *(v26 - 8);
  v526 = v26;
  MEMORY[0x28223BE20](v26);
  v510 = &v503 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v511 = &v503 - v29;
  MEMORY[0x28223BE20](v30);
  v536 = &v503 - v31;
  v530 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
  v527 = *(v530 - 8);
  MEMORY[0x28223BE20](v530);
  v553 = &v503 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v524 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
  MEMORY[0x28223BE20](v524);
  v551 = &v503 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v585 = sub_21DBF78CC();
  v599 = *(v585 - 8);
  MEMORY[0x28223BE20](v585);
  v548 = &v503 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v547 = &v503 - v36;
  MEMORY[0x28223BE20](v37);
  v597 = &v503 - v38;
  v39 = type metadata accessor for TTRAccountsListsViewModel.PinnedListsSection(0);
  MEMORY[0x28223BE20](v39 - 8);
  v509 = &v503 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v610 = sub_21DBF56BC();
  v589 = *(v610 - 8);
  MEMORY[0x28223BE20](v610);
  v538 = &v503 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v529 = &v503 - v43;
  MEMORY[0x28223BE20](v44);
  v592 = &v503 - v45;
  v596 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  v595 = *(v596 - 8);
  MEMORY[0x28223BE20](v596);
  v594 = (&v503 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v47);
  *&v607 = &v503 - v48;
  v591 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  v598 = *(v591 - 8);
  MEMORY[0x28223BE20](v591);
  v569 = &v503 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v590 = &v503 - v51;
  MEMORY[0x28223BE20](v52);
  v573 = &v503 - v53;
  v567 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64C20, &qword_21DC36508);
  MEMORY[0x28223BE20](v567);
  v513 = &v503 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v508 = &v503 - v56;
  MEMORY[0x28223BE20](v57);
  v535 = &v503 - v58;
  MEMORY[0x28223BE20](v59);
  v541 = &v503 - v60;
  MEMORY[0x28223BE20](v61);
  v532 = &v503 - v62;
  v63 = type metadata accessor for TTRAccountsListsViewModel.TipSection(0);
  MEMORY[0x28223BE20](v63 - 8);
  v518 = &v503 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D180, &unk_21DC36510);
  v537 = *(v65 - 8);
  MEMORY[0x28223BE20](v65 - 8);
  v517 = (&v503 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v67);
  v571 = (&v503 - v68);
  v620 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v612 = *(v620 - 8);
  MEMORY[0x28223BE20](v620);
  v615 = &v503 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v549 = &v503 - v71;
  MEMORY[0x28223BE20](v72);
  v575 = &v503 - v73;
  MEMORY[0x28223BE20](v74);
  v568 = &v503 - v75;
  MEMORY[0x28223BE20](v76);
  v618 = (&v503 - v77);
  MEMORY[0x28223BE20](v78);
  v593 = &v503 - v79;
  MEMORY[0x28223BE20](v80);
  v523 = (&v503 - v81);
  MEMORY[0x28223BE20](v82);
  v580 = &v503 - v83;
  v84 = type metadata accessor for TTRAccountsListsViewModel.PermissionsSection(0);
  MEMORY[0x28223BE20](v84 - 8);
  v522 = &v503 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v86);
  v579 = &v503 - v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v88 - 8);
  v583 = &v503 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v90);
  v584 = &v503 - v91;
  MEMORY[0x28223BE20](v92);
  v561 = &v503 - v93;
  MEMORY[0x28223BE20](v94);
  v557 = &v503 - v95;
  MEMORY[0x28223BE20](v96);
  v605 = &v503 - v97;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D4C8, &unk_21DC19880);
  MEMORY[0x28223BE20](v98 - 8);
  v515 = &v503 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v100);
  v519 = &v503 - v101;
  MEMORY[0x28223BE20](v102);
  v507 = &v503 - v103;
  MEMORY[0x28223BE20](v104);
  v506 = &v503 - v105;
  MEMORY[0x28223BE20](v106);
  v533 = &v503 - v107;
  MEMORY[0x28223BE20](v108);
  v531 = &v503 - v109;
  v608 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180, &unk_21DC08F30);
  v613 = *(v608 - 8);
  MEMORY[0x28223BE20](v608);
  v576 = &v503 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v111);
  v622 = &v503 - v112;
  MEMORY[0x28223BE20](v113);
  v546 = &v503 - v114;
  MEMORY[0x28223BE20](v115);
  v545 = &v503 - v116;
  MEMORY[0x28223BE20](v117);
  v611 = (&v503 - v118);
  MEMORY[0x28223BE20](v119);
  v512 = &v503 - v120;
  MEMORY[0x28223BE20](v121);
  v514 = &v503 - v122;
  MEMORY[0x28223BE20](v123);
  v606 = &v503 - v124;
  MEMORY[0x28223BE20](v125);
  v504 = &v503 - v126;
  MEMORY[0x28223BE20](v127);
  v534 = &v503 - v128;
  MEMORY[0x28223BE20](v129);
  v516 = &v503 - v130;
  MEMORY[0x28223BE20](v131);
  v572 = (&v503 - v132);
  MEMORY[0x28223BE20](v133);
  v520 = &v503 - v134;
  MEMORY[0x28223BE20](v135);
  v521 = &v503 - v136;
  MEMORY[0x28223BE20](v137);
  v570 = &v503 - v138;
  MEMORY[0x28223BE20](v139);
  v578 = &v503 - v140;
  MEMORY[0x28223BE20](v141);
  v564 = &v503 - v142;
  MEMORY[0x28223BE20](v143);
  v563 = &v503 - v144;
  v145 = sub_21DBF604C();
  v555 = *(v145 - 8);
  v556 = v145;
  MEMORY[0x28223BE20](v145);
  v554 = &v503 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
  v621 = sub_21DBF69AC();
  v619 = *(v621 - 1);
  MEMORY[0x28223BE20](v621);
  v604 = &v503 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v148);
  v150 = &v503 - v149;
  v151 = sub_21DBF680C();
  v542 = *(v151 - 8);
  v543 = v151;
  MEMORY[0x28223BE20](v151);
  v153 = &v503 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
  v587 = *a2;
  v154 = *a7;
  v559 = *a8;
  v560 = v154;
  v155 = a12[1];
  v505 = *a12;
  v565 = v155;
  v156 = a13[3];
  v649 = a13[2];
  v650 = v156;
  v651 = a13[4];
  v652 = *(a13 + 10);
  v157 = a13[1];
  v647 = *a13;
  v648 = v157;
  v603 = v15;
  *(v15 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_maximumItemCountInPinnedListsSection) = 9;
  v158 = *(sub_21DBF69CC() + 16);

  v601 = v153;
  sub_21DBF68FC();
  v646 = a14;
  if (v602)
  {
    v646 = 0;
  }

  else
  {
    v159 = a14;
  }

  v544 = a14;
  v160 = sub_21DBF69CC();
  MEMORY[0x28223BE20](v160);
  v161 = v601;
  *(&v503 - 8) = &v646;
  *(&v503 - 7) = v161;
  v162 = v617;
  *(&v503 - 6) = v616;
  *(&v503 - 5) = v162;
  v163 = v624;
  *(&v503 - 4) = v623;
  *(&v503 - 3) = v163;
  *(&v503 - 16) = v158 == 1;
  v586 = v602 & 1;
  *(&v503 - 15) = v602 & 1;
  v164 = sub_21D0F5358(sub_21DA27D9C, (&v503 - 10), v160);
  v574 = a10;
  v566 = a9;

  static TTRAccountsListsViewModel.generateAccountsCapabilities(_:)(&v632);
  v165 = &v503;
  v588 = OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_accountsCapabilities;
  *(v603 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_accountsCapabilities) = v632;
  MEMORY[0x28223BE20](v166);
  *(&v503 - 2) = v161;
  v623 = sub_21D0FDEBC(sub_21D0FE4B8, (&v503 - 4), v164);
  v558 = 0;

  v167 = sub_21DBF69CC();
  v168 = 0;
  v614 = *(v167 + 16);
  v617 = (v619 + 16);
  *&v616 = v619 + 8;
  v169 = v621;
  do
  {
    v170 = v168;
    if (v614 == v168)
    {
      break;
    }

    if (v168 >= *(v167 + 16))
    {
      goto LABEL_143;
    }

    v165 = v619;
    (*(v619 + 16))(v150, v167 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v168++, v169);
    v171 = sub_21DBF693C();
    v172 = [v171 capabilities];

    LODWORD(v171) = [v172 supportsGroceriesList];
    (*(v165 + 8))(v150, v169);
  }

  while (!v171);

  v173 = sub_21DBF69CC();
  v577 = *(v173 + 16);
  if (v577)
  {
    v174 = 0;
    v582 = v173 + ((*(v619 + 80) + 32) & ~*(v619 + 80));
    *&v581 = v173;
    do
    {
      if (v174 >= *(v173 + 16))
      {
        goto LABEL_145;
      }

      (*(v619 + 16))(v604, v582 + *(v619 + 72) * v174, v621);
      v175 = sub_21DBF697C();
      v176 = v175;
      v600 = v174;
      if (v175 >> 62)
      {
        v177 = sub_21DBFBD7C();
        if (v177)
        {
LABEL_14:
          v169 = 0;
          v624 = v176 & 0xC000000000000001;
          while (1)
          {
            if (v624)
            {
              v178 = MEMORY[0x223D44740](v169, v176);
            }

            else
            {
              if (v169 >= *((v176 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_142;
              }

              v178 = *(v176 + 8 * v169 + 32);
            }

            v179 = v178;
            v180 = v169 + 1;
            if (__OFADD__(v169, 1))
            {
              break;
            }

            v181 = [v178 groceryContext];
            if (v181)
            {
              v182 = v181;
              v165 = [v181 shouldCategorizeGroceryItems];

              if (v165)
              {
                (*v616)(v604, v621);

                v183 = 1;
                goto LABEL_28;
              }
            }

            else
            {
            }

            ++v169;
            if (v180 == v177)
            {
              goto LABEL_10;
            }
          }

          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }
      }

      else
      {
        v177 = *((v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v177)
        {
          goto LABEL_14;
        }
      }

LABEL_10:
      v174 = v600 + 1;

      (*v616)(v604, v621);
      v173 = v581;
    }

    while (v174 != v577);
  }

  v183 = 0;
LABEL_28:
  v185 = v554;
  v184 = v555;
  v186 = v556;
  (*(v555 + 104))(v554, *MEMORY[0x277D44DD0], v556);
  v187 = sub_21DBF603C();
  (*(v184 + 8))(v185, v186);
  v169 = MEMORY[0x277D84F90];
  if (v614 == v170)
  {
    v188 = v623;
    goto LABEL_36;
  }

  v188 = v623;
  if (v183)
  {
LABEL_36:
    v189 = v620;
    goto LABEL_37;
  }

  v189 = v620;
  if (v187)
  {
    v190 = v563;
    swift_storeEnumTagMultiPayload();
    v191 = v608;
    v192 = &v190[*(v608 + 52)];
    *v192 = 0;
    v192[8] = -1;
    *&v190[*(v191 + 56)] = v169;
    v193 = v564;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58798, &unk_21DC099C0);
    v194 = (*(v613 + 80) + 32) & ~*(v613 + 80);
    v195 = swift_allocObject();
    *(v195 + 16) = xmmword_21DC08D00;
    sub_21D0D3954(v190, v195 + v194, &qword_27CE58180, &unk_21DC08F30);
    v196 = v193 + *(v191 + 52);
    *v196 = 0;
    *(v196 + 8) = -1;
    v188 = v623;
    *(v193 + *(v191 + 56)) = v195;
    v197 = v531;
    sub_21D0D3954(v193, v531, &qword_27CE58180, &unk_21DC08F30);
    v198 = v188[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v645 = v188;
    if (!isUniquelyReferenced_nonNull_native || v198 >= v188[3] >> 1)
    {
      v188 = sub_21D0FBE34(isUniquelyReferenced_nonNull_native, v198 + 1, 1, v188);
      v645 = v188;
    }

    sub_21D103AC8(0, 0, 1, v197);
    sub_21D0CF7E0(v564, &qword_27CE58180, &unk_21DC08F30);
    sub_21D0CF7E0(v563, &qword_27CE58180, &unk_21DC08F30);
    goto LABEL_36;
  }

LABEL_37:
  v617 = *(v612 + 7);
  v619 = (v612 + 56);
  (v617)(v605, 1, 1, v189);
  v614 = v646;
  if (!v646)
  {
    goto LABEL_45;
  }

  v200 = v646;
  v201 = [v200 objectID];
  v202 = [v200 accountTypeHost];
  LOBYTE(v203) = [v202 isLocal];

  if (qword_27CE56F98 != -1)
  {
    goto LABEL_185;
  }

  while (1)
  {
    v204 = v610;
    v205 = __swift_project_value_buffer(v610, qword_27CE64B60);
    (*(v589 + 16))(v579, v205, v204);
    v621 = v201;
    static TTRPermissionConfiguration.updateRequest(accountID:isLocalAccount:)(v201, v203, &v626);
    v635 = v629;
    v634 = v628;
    v206 = v627;
    v632 = v626;
    v633 = v627;
    v636 = v630;
    *&v637 = v631;
    v207 = v627;
    v208 = v628;
    v209 = v629;
    v210 = v580;
    *(v580 + 56) = v626;
    v581 = v632;
    *v210 = v632;
    v600 = v207;
    *(v210 + 1) = v207;
    v582 = v208;
    *(v210 + 2) = v208;
    *&v616 = *(&v208 + 1);
    v604 = v209;
    *(v210 + 6) = v209;
    *(v210 + 72) = v206;
    v210[88] = 0;
    swift_storeEnumTagMultiPayload();
    v211 = v210;
    v212 = v578;
    sub_21D0FE734(v211, v578, type metadata accessor for TTRAccountsListsViewModel.Item);
    v213 = v608;
    v214 = v212 + *(v608 + 52);
    *v214 = 0;
    *(v214 + 8) = -1;
    *(v212 + *(v213 + 56)) = v169;
    v215 = v636;
    v216 = v637;
    v217 = 1;
    v623 = v188;
    v624 = v200;
    v577 = *(&v636 + 1);
    v563 = v637;
    v564 = *(&v635 + 1);
    v218 = v571;
    if (v636)
    {
      *v571 = *(&v635 + 1);
      *(v218 + 1) = v215;
      v218[3] = v216;
      *(v218 + 88) = 1;
      swift_storeEnumTagMultiPayload();
      v213 = v608;
      v217 = 0;
      v219 = v218 + *(v608 + 52);
      *v219 = 0;
      v219[8] = -1;
      *(v218 + *(v213 + 56)) = v169;
    }

    v220 = *(v613 + 56);
    v220(v218, v217, 1, v213);
    v221 = v570;
    sub_21D0FE734(v579, v570, type metadata accessor for TTRAccountsListsViewModel.PermissionsSection);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64C28, &qword_21DC36520);
    v222 = *(v537 + 72);
    v223 = (*(v537 + 80) + 32) & ~*(v537 + 80);
    v224 = v218;
    v225 = swift_allocObject();
    *(v225 + 16) = xmmword_21DC08D20;
    v226 = v225 + v223;
    sub_21D0D3954(v578, v226, &qword_27CE58180, &unk_21DC08F30);
    v220(v226, 0, 1, v213);
    sub_21D0D3954(v224, v226 + v222, &qword_27CE5D180, &unk_21DC36510);
    v625 = v225;
    v227 = v581;
    sub_21DBF8E0C();
    v228 = v227;
    sub_21DBF8E0C();
    sub_21D5D5D9C(v616, v604);
    sub_21D5D5DC4(v564, v215, v577, v563);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64C30, &qword_21DC36528);
    sub_21D0D0F1C(&qword_27CE64C38, &qword_27CE64C30, &qword_21DC36528, MEMORY[0x277D83970]);
    v229 = sub_21DBFA41C();

    v230 = v605;
    sub_21D0CF7E0(v605, &qword_27CE5A490, &unk_21DC0F950);
    v231 = v221 + *(v213 + 52);
    *v231 = 0;
    *(v231 + 8) = -1;
    *(v221 + *(v213 + 56)) = v229;
    sub_21D0FE734(v580, v230, type metadata accessor for TTRAccountsListsViewModel.Item);
    v189 = v620;
    (v617)(v230, 0, 1, v620);
    v232 = v533;
    sub_21D0D3954(v221, v533, &qword_27CE58180, &unk_21DC08F30);
    v188 = v623;
    v233 = v623[2];
    v234 = swift_isUniquelyReferenced_nonNull_native();
    v645 = v188;
    if (!v234 || v233 >= v188[3] >> 1)
    {
      v188 = sub_21D0FBE34(v234, v233 + 1, 1, v188);
      v645 = v188;
    }

    v235 = v624;
    v236 = v621;
    sub_21D103AC8(0, 0, 1, v232);

    sub_21DA28E58(&v632);
    sub_21D0CF7E0(v570, &qword_27CE58180, &unk_21DC08F30);
    sub_21D0CF7E0(v571, &qword_27CE5D180, &unk_21DC36510);
    sub_21D0CF7E0(v578, &qword_27CE58180, &unk_21DC08F30);
    sub_21D101450(v580, type metadata accessor for TTRAccountsListsViewModel.Item);
    sub_21D101450(v579, type metadata accessor for TTRAccountsListsViewModel.PermissionsSection);
LABEL_45:
    v237 = v557;
    sub_21D0D3954(v605, v557, &qword_27CE5A490, &unk_21DC0F950);
    v238 = *(v612 + 6);
    v239 = v238(v237, 1, v189);
    v240 = v572;
    if (v239 != 1)
    {
      sub_21D0CF7E0(&v647, &qword_27CE64C40, &unk_21DC36530);
      v241 = &qword_27CE5A490;
      v242 = &unk_21DC0F950;
      v243 = v237;
      goto LABEL_49;
    }

    sub_21D0CF7E0(v237, &qword_27CE5A490, &unk_21DC0F950);
    if (v602)
    {
      v241 = &qword_27CE64C40;
      v242 = &unk_21DC36530;
      v243 = &v647;
LABEL_49:
      sub_21D0CF7E0(v243, v241, v242);
      goto LABEL_50;
    }

    v246 = v648;
    if (v648)
    {
      v623 = v188;
      v582 = *(&v647 + 1);
      v247 = v647;
      v578 = *(&v648 + 1);
      v248 = *(&v649 + 1);
      v624 = v649;
      v600 = *(&v650 + 1);
      v249 = v650;
      *&v616 = *(&v651 + 1);
      v621 = v651;
      v604 = v652;
      if (qword_27CE56F98 != -1)
      {
        swift_once();
      }

      v250 = v610;
      v251 = __swift_project_value_buffer(v610, qword_27CE64B60);
      (*(v589 + 16))(v522, v251, v250);
      v252 = v523;
      v253 = v247;
      v254 = v582;
      *v523 = v247;
      v252[1] = v254;
      v582 = v246;
      v255 = v578;
      v252[2] = v246;
      v252[3] = v255;
      v252[4] = v624;
      v252[5] = v248;
      v252[6] = v249;
      v256 = v633;
      *(v252 + 7) = v632;
      *(v252 + 9) = v256;
      *(v252 + 88) = 0;
      swift_storeEnumTagMultiPayload();
      v257 = v252;
      v258 = v521;
      sub_21D0FE734(v257, v521, type metadata accessor for TTRAccountsListsViewModel.Item);
      v259 = v608;
      v260 = v258 + *(v608 + 52);
      *v260 = 0;
      *(v260 + 8) = -1;
      v261 = MEMORY[0x277D84F90];
      *(v258 + *(v259 + 56)) = MEMORY[0x277D84F90];
      v262 = 1;
      v263 = v621;
      *&v581 = v248;
      v580 = v249;
      v579 = v253;
      v264 = v517;
      if (v621)
      {
        *v517 = v600;
        v264[1] = v263;
        v265 = v604;
        v264[2] = v616;
        v264[3] = v265;
        *(v264 + 88) = 1;
        swift_storeEnumTagMultiPayload();
        v259 = v608;
        v262 = 0;
        v266 = v264 + *(v608 + 52);
        *v266 = 0;
        v266[8] = -1;
        *(v264 + *(v259 + 56)) = v261;
      }

      v350 = *(v613 + 56);
      v350(v264, v262, 1, v259);
      sub_21D0FE734(v522, v520, type metadata accessor for TTRAccountsListsViewModel.PermissionsSection);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64C28, &qword_21DC36520);
      v351 = *(v537 + 72);
      v352 = v264;
      v353 = (*(v537 + 80) + 32) & ~*(v537 + 80);
      v354 = swift_allocObject();
      *(v354 + 16) = xmmword_21DC08D20;
      v355 = v354 + v353;
      sub_21D0D3954(v521, v355, &qword_27CE58180, &unk_21DC08F30);
      v350(v355, 0, 1, v259);
      sub_21D0D3954(v352, v355 + v351, &qword_27CE5D180, &unk_21DC36510);
      *&v626 = v354;
      sub_21DBF8E0C();
      v356 = v579;
      sub_21DBF8E0C();
      sub_21D5D5D9C(v581, v580);
      sub_21D5D5DC4(v600, v621, v616, v604);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64C30, &qword_21DC36528);
      sub_21D0D0F1C(&qword_27CE64C38, &qword_27CE64C30, &qword_21DC36528, MEMORY[0x277D83970]);
      v357 = sub_21DBFA41C();
      v358 = v620;

      v359 = v605;
      sub_21D0CF7E0(v605, &qword_27CE5A490, &unk_21DC0F950);
      v360 = v520;
      v361 = v520 + *(v259 + 52);
      *v361 = 0;
      *(v361 + 8) = -1;
      v362 = *(v259 + 56);
      v189 = v358;
      *(v360 + v362) = v357;
      v363 = v360;
      sub_21D0FE734(v523, v359, type metadata accessor for TTRAccountsListsViewModel.Item);
      (v617)(v359, 0, 1, v358);
      v364 = v506;
      sub_21D0D3954(v363, v506, &qword_27CE58180, &unk_21DC08F30);
      v188 = v623;
      v365 = v623[2];
      v366 = swift_isUniquelyReferenced_nonNull_native();
      v645 = v188;
      if (!v366 || v365 >= v188[3] >> 1)
      {
        v188 = sub_21D0FBE34(v366, v365 + 1, 1, v188);
        v645 = v188;
      }

      sub_21D103AC8(0, 0, 1, v364);
      sub_21D0CF7E0(&v647, &qword_27CE64C40, &unk_21DC36530);
      sub_21D0CF7E0(v520, &qword_27CE58180, &unk_21DC08F30);
      sub_21D0CF7E0(v517, &qword_27CE5D180, &unk_21DC36510);
      sub_21D0CF7E0(v521, &qword_27CE58180, &unk_21DC08F30);
      sub_21D101450(v523, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D101450(v522, type metadata accessor for TTRAccountsListsViewModel.PermissionsSection);
      v240 = v572;
    }

LABEL_50:
    v623 = v188;
    v244 = v561;
    sub_21D0D3954(v605, v561, &qword_27CE5A490, &unk_21DC0F950);
    if (v238(v244, 1, v189) == 1)
    {
      sub_21D0CF7E0(v244, &qword_27CE5A490, &unk_21DC0F950);
      v245 = v568;
      if (v602)
      {
      }

      else
      {
        v267 = v610;
        v268 = v565;
        if (v565)
        {
          *v240 = v505;
          v240[1] = v268;
          swift_storeEnumTagMultiPayload();
          v269 = v608;
          v270 = v240 + *(v608 + 52);
          *v270 = 0;
          v270[8] = -1;
          *(v240 + *(v269 + 56)) = MEMORY[0x277D84F90];
          if (qword_27CE56FA0 != -1)
          {
            swift_once();
          }

          v271 = __swift_project_value_buffer(v267, qword_27CE64B78);
          v272 = v518;
          (*(v589 + 16))(v518, v271, v267);
          v273 = v516;
          sub_21D0FE734(v272, v516, type metadata accessor for TTRAccountsListsViewModel.TipSection);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58798, &unk_21DC099C0);
          v274 = (*(v613 + 80) + 32) & ~*(v613 + 80);
          v275 = swift_allocObject();
          *(v275 + 16) = xmmword_21DC08D00;
          sub_21D0D3954(v240, v275 + v274, &qword_27CE58180, &unk_21DC08F30);
          v276 = v273 + *(v269 + 52);
          *v276 = 0;
          *(v276 + 8) = -1;
          *(v273 + *(v269 + 56)) = v275;
          v277 = v273;
          v278 = v507;
          sub_21D0D3954(v277, v507, &qword_27CE58180, &unk_21DC08F30);
          v279 = v623;
          v280 = v623[2];
          v281 = swift_isUniquelyReferenced_nonNull_native();
          v645 = v279;
          if (!v281 || v280 >= v279[3] >> 1)
          {
            v623 = sub_21D0FBE34(v281, v280 + 1, 1, v279);
            v645 = v623;
          }

          sub_21D103AC8(0, 0, 1, v278);
          sub_21D0CF7E0(v516, &qword_27CE58180, &unk_21DC08F30);
          sub_21D101450(v518, type metadata accessor for TTRAccountsListsViewModel.TipSection);
          sub_21D0CF7E0(v572, &qword_27CE58180, &unk_21DC08F30);
        }
      }
    }

    else
    {

      sub_21D0CF7E0(v244, &qword_27CE5A490, &unk_21DC0F950);
      v245 = v568;
    }

    v282 = v603;
    v283 = v588;
    v284 = *(v603 + v588);
    *&v632 = v560;
    v285 = TTRListType.PredefinedSmartListsDisplayOrder.orderingIncludingAllPossibleSmartLists.getter();
    MEMORY[0x28223BE20](v285);
    v286 = v601;
    *(&v503 - 6) = v562;
    *(&v503 - 5) = v286;
    v287 = v559;
    *(&v503 - 4) = v284;
    *(&v503 - 3) = v287;
    *(&v503 - 16) = v586;
    v624 = sub_21D0FF9B8(sub_21D0FFCD4, (&v503 - 8), v285);

    v288 = *(v282 + v283);
    v289 = sub_21D0DDE70(MEMORY[0x277D84F90]);
    MEMORY[0x28223BE20](v289);
    *(&v503 - 2) = v288;
    *(&v503 - 1) = v286;
    v290 = v286;
    *(v282 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_smartListDisplayability) = sub_21D1015B4(v291, sub_21D101634, (&v503 - 4), byte_282EA6970);
    if ((v587 & 2) != 0)
    {
      v292 = v611;
      v169 = v620;
      v293 = v567;
      if ((v587 & 4) == 0)
      {
        v306 = v624;
        if (v602)
        {

          v307 = sub_21DBF691C();
          *&v632 = *(v603 + v588);
          _s15RemindersUICore25TTRAccountsListsViewModelC022generateEditablePinnedD007orderediD012capabilities022visiblePredefinedSmartD014reminderCountsSayAA23TTRTreeStorageNodeValueVyAC4ItemOAC13AuxiliaryDataVGGSay19ReminderKitInternal015REMAccountsListwE0C0F0V0I4ListOG_AC20AccountsCapabilitiesVSayAC0N4ListVGAS0xP0VtFZ_0(v307, &v632, v306, v601);
          v309 = v308;

          v310 = v610;
          v311 = v623;
          v312 = v509;
        }

        else
        {
          v331 = *(v567 + 48);
          v332 = sub_21DBF691C();
          *&v632 = *(v603 + v588);
          v333 = v508;
          static TTRAccountsListsViewModel.generatePinnedLists(orderedPinnedLists:visiblePredefinedSmartLists:capabilities:pinnedListsContactsData:reminderCounts:includesNonEditablePredefinedSmartList:)(v508, (v508 + v331), v332, v306, &v632, v566, v601, 0);

          v334 = v541;
          sub_21D0D3954(v333, v541, &qword_27CE64C20, &qword_21DC36508);
          sub_21D103A34(*(v334 + *(v293 + 48)), *(v334 + *(v293 + 48) + 8));
          v335 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
          v336 = *(v334 + *(v335 + 20));
          sub_21DBF8E0C();
          sub_21D101450(v334, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
          v337 = *(v336 + 16);

          if (v337)
          {
            sub_21D0D3954(v333, v334, &qword_27CE64C20, &qword_21DC36508);
            sub_21D103A34(*(v334 + *(v293 + 48)), *(v334 + *(v293 + 48) + 8));
            v338 = v504;
            sub_21D100E28(v334, v504, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
            swift_storeEnumTagMultiPayload();
            v339 = v535;
            sub_21D0D3954(v333, v535, &qword_27CE64C20, &qword_21DC36508);
            v340 = v339 + *(v293 + 48);
            v341 = *v340;
            LOBYTE(v340) = *(v340 + 8);
            v342 = v608;
            v343 = v338 + *(v608 + 52);
            *v343 = v341;
            *(v343 + 8) = v340;
            v344 = MEMORY[0x277D84F90];
            *(v338 + *(v342 + 56)) = MEMORY[0x277D84F90];
            sub_21D101450(v339, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
            v345 = sub_21D0FBE34(0, 1, 1, v344);
            v347 = v345[2];
            v346 = v345[3];
            v621 = v345;
            v348 = v573;
            if (v347 >= v346 >> 1)
            {
              v621 = sub_21D0FBE34((v346 > 1), v347 + 1, 1, v621);
            }

            v349 = v621;
            v621[2] = v347 + 1;
            sub_21D0D523C(v338, v349 + ((*(v613 + 80) + 32) & ~*(v613 + 80)) + *(v613 + 72) * v347, &qword_27CE58180, &unk_21DC08F30);
          }

          else
          {
            v621 = MEMORY[0x277D84F90];
            v348 = v573;
          }

          v367 = v306[2];
          v368 = MEMORY[0x277D84F90];
          if (v367)
          {
            v165 = 0;
            while (v165 < v306[2])
            {
              v369 = (*(v598 + 80) + 32) & ~*(v598 + 80);
              v370 = *(v598 + 72);
              sub_21D0FE734(v306 + v369 + v370 * v165, v348, type metadata accessor for TTRAccountsListsViewModel.SmartList);
              if (*(v348 + *(v591 + 20)) == 5)
              {
                sub_21D100E28(v348, v590, type metadata accessor for TTRAccountsListsViewModel.SmartList);
                v371 = swift_isUniquelyReferenced_nonNull_native();
                *&v632 = v368;
                if ((v371 & 1) == 0)
                {
                  sub_21D18F738(0, *(v368 + 16) + 1, 1);
                  v368 = v632;
                }

                v373 = *(v368 + 16);
                v372 = *(v368 + 24);
                if (v373 >= v372 >> 1)
                {
                  sub_21D18F738((v372 > 1), v373 + 1, 1);
                  v368 = v632;
                }

                *(v368 + 16) = v373 + 1;
                sub_21D100E28(v590, v368 + v369 + v373 * v370, type metadata accessor for TTRAccountsListsViewModel.SmartList);
                v169 = v620;
                v348 = v573;
              }

              else
              {
                sub_21D101450(v348, type metadata accessor for TTRAccountsListsViewModel.SmartList);
              }

              if (v367 == ++v165)
              {
                goto LABEL_99;
              }
            }

LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
            goto LABEL_146;
          }

LABEL_99:

          v374 = *(v368 + 16);
          if (v374)
          {
            v375 = v368 + ((*(v598 + 80) + 32) & ~*(v598 + 80));
            v624 = *(v598 + 72);
            v604 = (v589 + 16);
            v376 = (v589 + 32);
            v616 = xmmword_21DC08D00;
            v377 = v607;
            do
            {
              sub_21D0FE734(v375, v377, type metadata accessor for TTRAccountsListsViewModel.SmartList);
              swift_storeEnumTagMultiPayload();
              v378 = v594;
              sub_21D0FE734(v377, v594, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v379 = v378[11];
                v642 = v378[10];
                v643 = v379;
                v644[0] = v378[12];
                *(v644 + 10) = *(v378 + 202);
                v380 = v378[7];
                v638 = v378[6];
                v639 = v380;
                v381 = v378[9];
                v640 = v378[8];
                v641 = v381;
                v382 = v378[3];
                v634 = v378[2];
                v635 = v382;
                v383 = v378[5];
                v636 = v378[4];
                v637 = v383;
                v384 = v378[1];
                v632 = *v378;
                v633 = v384;
                v385 = [v632 uuid];
                v386 = v592;
                sub_21DBF568C();

                sub_21D1077D8(&v632);
                v387 = v610;
              }

              else
              {
                v388 = v378;
                v389 = v569;
                sub_21D100E28(v388, v569, type metadata accessor for TTRAccountsListsViewModel.SmartList);
                v386 = v592;
                v387 = v610;
                (*v604)(v592, v389, v610);
                sub_21D101450(v389, type metadata accessor for TTRAccountsListsViewModel.SmartList);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE587B0, &unk_21DC099E0);
              v390 = (*(v595 + 80) + 32) & ~*(v595 + 80);
              v391 = swift_allocObject();
              *(v391 + 16) = v616;
              sub_21D0FE734(v607, v391 + v390, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
              v392 = v593;
              (*v376)(v593, v386, v387);
              *(v392 + *(v335 + 20)) = v391;
              *(v392 + *(v335 + 24)) = 0;
              swift_storeEnumTagMultiPayload();
              v393 = v608;
              v394 = v606;
              v395 = v606 + *(v608 + 52);
              *v395 = 0;
              *(v395 + 8) = -1;
              sub_21D100E28(v392, v394, type metadata accessor for TTRAccountsListsViewModel.Item);
              *(v394 + *(v393 + 56)) = MEMORY[0x277D84F90];
              v396 = v621;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v396 = sub_21D0FBE34(0, v396[2] + 1, 1, v396);
              }

              v398 = v396[2];
              v397 = v396[3];
              v621 = v396;
              v377 = v607;
              if (v398 >= v397 >> 1)
              {
                v621 = sub_21D0FBE34((v397 > 1), v398 + 1, 1, v621);
              }

              sub_21D101450(v377, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
              v399 = v621;
              v621[2] = v398 + 1;
              sub_21D0D523C(v606, v399 + ((*(v613 + 80) + 32) & ~*(v613 + 80)) + *(v613 + 72) * v398, &qword_27CE58180, &unk_21DC08F30);
              v375 += v624;
              --v374;
              v169 = v620;
            }

            while (v374);
          }

          sub_21D0CF7E0(v508, &qword_27CE64C20, &qword_21DC36508);
          v310 = v610;
          v311 = v623;
          v245 = v568;
          v292 = v611;
          v312 = v509;
          v309 = v621;
        }

        v305 = v309;
        if (v309[2])
        {
          if (qword_280D14DE0 != -1)
          {
            swift_once();
          }

          v400 = __swift_project_value_buffer(v310, qword_280D14DE8);
          (*(v589 + 16))(v312, v400, v310);
          v401 = v514;
          sub_21D0FE734(v312, v514, type metadata accessor for TTRAccountsListsViewModel.PinnedListsSection);
          swift_storeEnumTagMultiPayload();
          v402 = v608;
          v403 = v401 + *(v608 + 52);
          *v403 = 0;
          *(v403 + 8) = -1;
          *(v401 + *(v402 + 56)) = v309;
          sub_21D0D3954(v401, v515, &qword_27CE58180, &unk_21DC08F30);
          v404 = v311[2];
          sub_21DBF8E0C();
          v405 = swift_isUniquelyReferenced_nonNull_native();
          v645 = v311;
          if (!v405 || v404 >= v311[3] >> 1)
          {
            v311 = sub_21D0FBE34(v405, v404 + 1, 1, v311);
            v645 = v311;
          }

          sub_21D103AC8(0, 0, 1, v515);
          v645 = v311;
          sub_21D0CF7E0(v514, &qword_27CE58180, &unk_21DC08F30);
          sub_21D101450(v312, type metadata accessor for TTRAccountsListsViewModel.PinnedListsSection);
        }

        sub_21DBF8E0C();
        *&v616 = 1;
        goto LABEL_118;
      }
    }

    else
    {
      v292 = v611;
      v169 = v620;
      v293 = v567;
      if ((v587 & 4) == 0)
      {
        v294 = *(v567 + 48);
        v295 = sub_21DBF691C();
        *&v632 = *(v603 + v588);
        v296 = v541;
        static TTRAccountsListsViewModel.generatePinnedLists(orderedPinnedLists:visiblePredefinedSmartLists:capabilities:pinnedListsContactsData:reminderCounts:includesNonEditablePredefinedSmartList:)(v541, (v541 + v294), v295, v624, &v632, v566, v290, 1);

        v297 = v535;
        sub_21D0D3954(v296, v535, &qword_27CE64C20, &qword_21DC36508);
        sub_21D103A34(*(v297 + *(v293 + 48)), *(v297 + *(v293 + 48) + 8));
        v298 = v512;
        sub_21D100E28(v297, v512, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
        swift_storeEnumTagMultiPayload();
        v299 = v513;
        sub_21D0D3954(v296, v513, &qword_27CE64C20, &qword_21DC36508);
        v300 = v299 + *(v293 + 48);
        v301 = *v300;
        LOBYTE(v300) = *(v300 + 8);
        v302 = v608;
        v303 = v298 + *(v608 + 52);
        *v303 = v301;
        *(v303 + 8) = v300;
        *(v298 + *(v302 + 56)) = MEMORY[0x277D84F90];
        sub_21D101450(v299, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58798, &unk_21DC099C0);
        v304 = (*(v613 + 80) + 32) & ~*(v613 + 80);
        v305 = swift_allocObject();
        *(v305 + 16) = xmmword_21DC08D00;
        sub_21D0D523C(v298, v305 + v304, &qword_27CE58180, &unk_21DC08F30);
        sub_21D0CF7E0(v296, &qword_27CE64C20, &qword_21DC36508);
        sub_21DBF8E0C();
        *&v616 = 0;
LABEL_78:
        v311 = v623;
        goto LABEL_118;
      }
    }

    v313 = *(v293 + 48);
    v314 = sub_21DBF691C();
    *&v632 = *(v603 + v588);
    v315 = v532;
    static TTRAccountsListsViewModel.generatePinnedLists(orderedPinnedLists:visiblePredefinedSmartLists:capabilities:pinnedListsContactsData:reminderCounts:includesNonEditablePredefinedSmartList:)(v532, (v532 + v313), v314, v624, &v632, v566, v290, 1);

    v316 = v315;

    v317 = v541;
    sub_21D0D3954(v315, v541, &qword_27CE64C20, &qword_21DC36508);
    sub_21D103A34(*(v317 + *(v293 + 48)), *(v317 + *(v293 + 48) + 8));
    v318 = *(v317 + *(type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0) + 20));
    sub_21DBF8E0C();
    sub_21D101450(v317, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
    v319 = *(v318 + 16);

    if (!v319)
    {
      sub_21D0CF7E0(v315, &qword_27CE64C20, &qword_21DC36508);
      *&v616 = 1;
      v305 = MEMORY[0x277D84F90];
      goto LABEL_78;
    }

    sub_21D0D3954(v315, v317, &qword_27CE64C20, &qword_21DC36508);
    sub_21D103A34(*(v317 + *(v293 + 48)), *(v317 + *(v293 + 48) + 8));
    v320 = v534;
    sub_21D100E28(v317, v534, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
    swift_storeEnumTagMultiPayload();
    v321 = v535;
    sub_21D0D3954(v316, v535, &qword_27CE64C20, &qword_21DC36508);
    v322 = v321 + *(v293 + 48);
    v323 = *v322;
    LOBYTE(v322) = *(v322 + 8);
    v324 = v608;
    v325 = v320 + *(v608 + 52);
    *v325 = v323;
    *(v325 + 8) = v322;
    *(v320 + *(v324 + 56)) = MEMORY[0x277D84F90];
    sub_21D101450(v321, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
    v326 = v320;
    v327 = v519;
    sub_21D0D3954(v326, v519, &qword_27CE58180, &unk_21DC08F30);
    v311 = v623;
    v328 = v623[2];
    v329 = swift_isUniquelyReferenced_nonNull_native();
    v645 = v311;
    if (!v329 || v328 >= v311[3] >> 1)
    {
      v311 = sub_21D0FBE34(v329, v328 + 1, 1, v311);
      v645 = v311;
    }

    *&v616 = 1;
    sub_21D103AC8(0, 0, 1, v327);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58798, &unk_21DC099C0);
    v330 = (*(v613 + 80) + 32) & ~*(v613 + 80);
    v305 = swift_allocObject();
    *(v305 + 16) = xmmword_21DC08D00;
    sub_21D0D523C(v534, v305 + v330, &qword_27CE58180, &unk_21DC08F30);
    sub_21D0CF7E0(v316, &qword_27CE64C20, &qword_21DC36508);
    sub_21DBF8E0C();
LABEL_118:
    v623 = v311;
    v406 = *(v305 + 16);
    v621 = v305;
    if (v406)
    {
      v407 = v305 + ((*(v613 + 80) + 32) & ~*(v613 + 80));
      v408 = *(v613 + 72);
      v624 = MEMORY[0x277D84F90];
      do
      {
        sub_21D0D3954(v407, v292, &qword_27CE58180, &unk_21DC08F30);
        sub_21D0FE734(v292, v245, type metadata accessor for TTRAccountsListsViewModel.Item);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          sub_21D101450(v245, type metadata accessor for TTRAccountsListsViewModel.Item);
          sub_21D0FE734(v292, v618, type metadata accessor for TTRAccountsListsViewModel.Item);
          sub_21D0CF7E0(v292, &qword_27CE58180, &unk_21DC08F30);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v624 = sub_21D103C5C(0, *(v624 + 16) + 1, 1, v624);
          }

          v410 = *(v624 + 16);
          v409 = *(v624 + 24);
          if (v410 >= v409 >> 1)
          {
            v624 = sub_21D103C5C((v409 > 1), v410 + 1, 1, v624);
          }

          v411 = v624;
          *(v624 + 16) = v410 + 1;
          sub_21D100E28(v618, v411 + ((v612[80] + 32) & ~v612[80]) + *(v612 + 9) * v410, type metadata accessor for TTRAccountsListsViewModel.Item);
          v292 = v611;
        }

        else
        {
          sub_21D0CF7E0(v292, &qword_27CE58180, &unk_21DC08F30);
          sub_21D101450(v245, type metadata accessor for TTRAccountsListsViewModel.Item);
        }

        v407 += v408;
        --v406;
      }

      while (v406);
    }

    else
    {

      v624 = MEMORY[0x277D84F90];
    }

    v412 = sub_21DBF68EC();
    v165 = v412;
    if (!(v412 >> 62))
    {
      v413 = *((v412 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v413)
      {
        goto LABEL_147;
      }

      goto LABEL_132;
    }

LABEL_146:
    v413 = sub_21DBFBD7C();
    if (!v413)
    {
LABEL_147:

      goto LABEL_148;
    }

LABEL_132:
    *&v632 = MEMORY[0x277D84F90];
    sub_21D18E678(0, v413 & ~(v413 >> 63), 0);
    if (v413 < 0)
    {
      __break(1u);
LABEL_187:
      swift_once();
      goto LABEL_151;
    }

    v414 = 0;
    v415 = v632;
    do
    {
      if ((v165 & 0xC000000000000001) != 0)
      {
        v416 = MEMORY[0x223D44740](v414, v165);
      }

      else
      {
        v416 = *(v165 + 8 * v414 + 32);
      }

      v417 = v416;
      v418 = [v416 name];
      v419 = sub_21DBFA16C();
      v421 = v420;

      *&v632 = v415;
      v423 = *(v415 + 16);
      v422 = *(v415 + 24);
      if (v423 >= v422 >> 1)
      {
        sub_21D18E678((v422 > 1), v423 + 1, 1);
        v415 = v632;
      }

      ++v414;
      *(v415 + 16) = v423 + 1;
      v424 = v415 + 16 * v423;
      *(v424 + 32) = v419;
      *(v424 + 40) = v421;
    }

    while (v413 != v414);

    v169 = v620;
LABEL_148:
    v425 = v547;
    sub_21DBF784C();
    sub_21DBF689C();
    v426 = v548;
    sub_21DBF784C();
    sub_21DBF782C();
    v427 = v599 + 8;
    v428 = *(v599 + 8);
    v429 = v585;
    v428(v426, v585);
    v618 = v428;
    v428(v425, v429);
    v430 = sub_21DBF786C();
    v165 = v550;
    v599 = v427;
    if (v430)
    {
      v431 = 1;
      v200 = v619;
      v432 = v617;
      (v617)(v583, 1, 1, v169);
      v201 = v584;
      v188 = v623;
      goto LABEL_165;
    }

    if (qword_27CE56FB0 != -1)
    {
      goto LABEL_187;
    }

LABEL_151:
    v433 = v610;
    v434 = __swift_project_value_buffer(v610, qword_27CE64BA8);
    v436 = (v589 + 16);
    v435 = *(v589 + 16);
    v437 = v551;
    v435(v551, v434, v433);
    v438 = sub_21DBF785C();
    v439 = v524;
    *(v437 + *(v524 + 20)) = v438;
    *(v437 + *(v439 + 24)) = (v602 & 1) == 0;
    sub_21D0FE734(v437, v575, type metadata accessor for TTRAccountsListsViewModel.Hashtags);
    swift_storeEnumTagMultiPayload();
    sub_21D0D3954(v574, v165, &qword_27CE5F780, &qword_21DC36500);
    v440 = v525;
    v441 = v526;
    v442 = (*(v525 + 48))(v165, 1, v526);
    v443 = v536;
    if (v442 == 1)
    {
      sub_21D0CF7E0(v165, &qword_27CE5F780, &qword_21DC36500);
      if (qword_27CE56FB8 != -1)
      {
        swift_once();
      }

      v444 = v610;
      v445 = __swift_project_value_buffer(v610, qword_27CE64BC0);
      v446 = v553;
      v435(v553, v445, v444);
      v447 = v530;
      *(v446 + *(v530 + 20)) = &unk_282EA8238;
      v448 = 1;
    }

    else
    {
      (*(v440 + 32))(v536, v165, v441);
      v449 = v443;
      if (qword_27CE56FB8 != -1)
      {
        swift_once();
      }

      v450 = v610;
      v451 = __swift_project_value_buffer(v610, qword_27CE64BC0);
      v435(v529, v451, v450);
      v452 = v440;
      v453 = *(v440 + 16);
      v454 = v511;
      v453(v511, v449, v441);
      v455 = v510;
      v453(v510, v454, v441);
      TTRAccountsListsViewModel.HashtagFilterOperation.Option.init(selection:)(v455, &v632);
      LODWORD(v607) = v632;
      v612 = v435;
      v456 = v553;
      v457 = v529;
      v458 = v610;
      (v612)(v553, v529, v610);
      v611 = v436;
      v459 = v530;
      v606 = *(v530 + 20);
      v460 = *(v452 + 8);
      v460(v454, v441);
      (*(v589 + 8))(v457, v458);
      v460(v536, v441);
      v448 = v607;
      v447 = v459;
      *(v456 + v606) = &unk_282EA8260;
      v446 = v456;
      v435 = v612;
    }

    *(v446 + *(v447 + 24)) = v448;
    if (qword_27CE56FA8 != -1)
    {
      swift_once();
    }

    v461 = v610;
    v462 = __swift_project_value_buffer(v610, qword_27CE64B90);
    v463 = v552;
    v435(v552, v462, v461);
    v464 = *(v528 + 20);
    sub_21D0FE734(v446, v463 + v464, type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation);
    (*(v527 + 56))(v463 + v464, 0, 1, v447);
    v465 = v549;
    sub_21D0FE734(v463, v549, type metadata accessor for TTRAccountsListsViewModel.HashtagsSection);
    swift_storeEnumTagMultiPayload();
    v466 = v545;
    sub_21D0FE734(v465, v545, type metadata accessor for TTRAccountsListsViewModel.Item);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58798, &unk_21DC099C0);
    v467 = *(v613 + 72);
    v468 = (*(v613 + 80) + 32) & ~*(v613 + 80);
    v469 = swift_allocObject();
    *(v469 + 16) = xmmword_21DC08D00;
    sub_21D0FE734(v575, v469 + v468, type metadata accessor for TTRAccountsListsViewModel.Item);
    v470 = v608;
    v471 = *(v608 + 52);
    v472 = v469 + v468 + v471;
    *v472 = 0;
    *(v472 + 8) = -1;
    v473 = *(v470 + 56);
    *(v469 + v468 + v473) = MEMORY[0x277D84F90];
    v474 = v466 + v471;
    *v474 = 0;
    *(v474 + 8) = -1;
    *(v466 + v473) = v469;
    sub_21D0D3954(v466, v546, &qword_27CE58180, &unk_21DC08F30);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v623 = sub_21D0FBE34(0, v623[2] + 1, 1, v623);
    }

    v476 = v623[2];
    v475 = v623[3];
    if (v476 >= v475 >> 1)
    {
      v623 = sub_21D0FBE34((v475 > 1), v476 + 1, 1, v623);
    }

    sub_21D0CF7E0(v545, &qword_27CE58180, &unk_21DC08F30);
    sub_21D101450(v552, type metadata accessor for TTRAccountsListsViewModel.HashtagsSection);
    sub_21D101450(v553, type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation);
    sub_21D101450(v551, type metadata accessor for TTRAccountsListsViewModel.Hashtags);
    v477 = v623;
    v623[2] = v476 + 1;
    v478 = v477 + v468 + v476 * v467;
    v188 = v477;
    sub_21D0D523C(v546, v478, &qword_27CE58180, &unk_21DC08F30);
    v645 = v188;
    v479 = v583;
    sub_21D100E28(v549, v583, type metadata accessor for TTRAccountsListsViewModel.Item);
    v200 = v619;
    v432 = v617;
    (v617)(v479, 0, 1, v169);
    v201 = v584;
    sub_21D100E28(v575, v584, type metadata accessor for TTRAccountsListsViewModel.Item);
    v431 = 0;
LABEL_165:
    v480 = v587;
    (v432)(v201, v431, 1, v169);
    if ((v480 & 8) == 0)
    {
      break;
    }

    v619 = v188[2];
    if (!v619)
    {
      break;
    }

    v481 = 0;
    v612 = (v589 + 32);
    v611 = (v589 + 16);
    v617 = (v589 + 8);
    v607 = xmmword_21DC08D00;
    v203 = v610;
    while (v481 < v188[2])
    {
      v200 = v169;
      v169 = v481 + 1;
      v482 = (*(v613 + 80) + 32) & ~*(v613 + 80);
      v623 = v188;
      v201 = *(v613 + 72) * v481;
      v483 = v188 + v482 + v201;
      v484 = v622;
      sub_21D0D3954(v483, v622, &qword_27CE58180, &unk_21DC08F30);
      sub_21D0FE734(v484, v615, type metadata accessor for TTRAccountsListsViewModel.Item);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
        case 2u:
        case 3u:
        case 5u:
        case 6u:
        case 7u:
        case 8u:
        case 9u:
        case 0xAu:
        case 0xBu:
        case 0xDu:
        case 0xEu:
          sub_21D101450(v615, type metadata accessor for TTRAccountsListsViewModel.Item);
          goto LABEL_171;
        case 4u:
          v200 = *(v615 + 27);

          v203 = v610;

          if (v200)
          {
            goto LABEL_178;
          }

          goto LABEL_171;
        case 0xCu:
          sub_21D101450(v615, type metadata accessor for TTRAccountsListsViewModel.Item);
LABEL_178:
          v486 = v539;
          v487 = v203;
          TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v539);
          v488 = v540;
          sub_21D100E28(v486, v540, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
          v200 = v538;
          v489 = v488;
          v490 = v487;
          (*v612)(v538, v489, v487);
          v491 = v576;
          (*v611)(v576, v200, v490);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58798, &unk_21DC099C0);
          v492 = swift_allocObject();
          *(v492 + 16) = v607;
          sub_21D0D3954(v622, v492 + v482, &qword_27CE58180, &unk_21DC08F30);
          (*v617)(v200, v610);
          v493 = v608;
          v494 = v491 + *(v608 + 52);
          *v494 = 0;
          *(v494 + 8) = -1;
          *(v491 + *(v493 + 56)) = v492;
          v188 = v623;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v188 = sub_21D256DBC(v188);
          }

          sub_21D0CF7E0(v622, &qword_27CE58180, &unk_21DC08F30);
          v203 = v610;
          if (v481 >= v188[2])
          {
            goto LABEL_184;
          }

          sub_21D0F02F4(v576, v188 + v482 + v201, &qword_27CE58180, &unk_21DC08F30);
          v645 = v188;
          break;
        case 0xFu:
        case 0x10u:
          goto LABEL_171;
        default:
          (*v617)(v615, v203);
LABEL_171:
          sub_21D0CF7E0(v622, &qword_27CE58180, &unk_21DC08F30);
          v188 = v623;
          break;
      }

      ++v481;
      v485 = v619 == v169;
      v169 = v620;
      if (v485)
      {
        goto LABEL_182;
      }
    }

    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    swift_once();
  }

LABEL_182:
  sub_21DBF8E0C();
  v495 = MEMORY[0x277D84F90];
  v496 = sub_21D0DDA78(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64C18, &qword_21DC364F8);
  v497 = swift_allocObject();
  *&v632 = v495;
  *&v626 = MEMORY[0x277D84F98];
  sub_21D0DA894(v188, &v632, &v626);

  v498 = v626;
  v497[2] = v632;
  v497[3] = v498;
  v497[4] = v496;

  sub_21D0CF7E0(v574, &qword_27CE5F780, &qword_21DC36500);
  v499 = sub_21DBF69DC();
  (*(*(v499 - 8) + 8))(v609, v499);
  v618(v597, v585);
  v500 = v603;
  *(v603 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree) = v497;
  *(v500 + 16) = v586;
  v501 = v500 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes;
  *v501 = v621;
  *(v501 + 8) = v616;
  sub_21D0D523C(v583, v500 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_hashtagsHeaderItem, &qword_27CE5A490, &unk_21DC0F950);
  sub_21D0D523C(v584, v500 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_hashtagsItem, &qword_27CE5A490, &unk_21DC0F950);
  sub_21D0D523C(v605, v500 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_permissionMainItem, &qword_27CE5A490, &unk_21DC0F950);
  *(v500 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsItems) = v624;

  (*(v542 + 8))(v601, v543);
  return v500;
}

uint64_t sub_21DA19E24@<X0>(uint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *__return_ptr)@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t *__return_ptr, id)@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char a10)
{
  v80 = a8;
  v69 = a7;
  v70 = a6;
  v67 = a5;
  v68 = a4;
  v14 = sub_21DBF56BC();
  v71 = *(v14 - 8);
  v72 = v14;
  MEMORY[0x28223BE20](v14);
  v77 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21DBF680C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v79 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21DBF69AC();
  v75 = *(v19 - 8);
  v76 = v19;
  *&v20 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v78 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2)
  {
    v22 = [*a2 objectID];
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_21DBF693C();
  v24 = [v23 objectID];

  if (v22)
  {
    if (v24)
    {
      sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      v66 = sub_21DBFB63C();
    }

    else
    {
      v66 = 0;
    }

    v24 = v22;
  }

  else
  {
    if (!v24)
    {
      v66 = 1;
      goto LABEL_12;
    }

    v66 = 0;
  }

LABEL_12:
  (*(v75 + 16))(v78, a1, v76);
  (*(v17 + 16))(v79, a3, v16);
  v25 = sub_21DBF696C();
  v26 = sub_21DBF693C();
  v27 = [v26 objectID];

  v28 = [v27 uuid];
  v29 = v77;
  sub_21DBF568C();

  v30 = sub_21DBF67AC();
  if (*(v30 + 16) && (v31 = sub_21D0F55D0(v29), (v32 & 1) != 0))
  {
    v33 = *(*(v30 + 56) + 8 * v31);

    v35 = 1;
    if ((v80 & 1) != 0 && (a10 & 1) == 0 && !*(v25 + 16))
    {
LABEL_21:
      v35 = v33 > 0;
    }
  }

  else
  {

    v35 = 1;
    if ((v80 & 1) != 0 && (a10 & 1) == 0)
    {
      v33 = 0;
      if (!*(v25 + 16))
      {
        goto LABEL_21;
      }
    }
  }

  v64 = v35;
  MEMORY[0x28223BE20](v34);
  v59 = v79;
  v36 = v65;
  v63 = sub_21D0F588C(sub_21D0F5BC0, (&v60 - 4), v25);
  v65 = v36;

  v37 = sub_21DBF693C();
  v38 = v37;
  v73 = v17;
  v74 = v16;
  if (v80)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v59 = 0x800000021DC73DF0;
    v39 = sub_21DBF516C();
    v61 = v40;
    v62 = v39;
  }

  else
  {
    v41 = [v37 displayName];
    v42 = sub_21DBFA16C();
    v61 = v43;
    v62 = v42;
  }

  v44 = v38;
  v68((&v81 + 1));
  v45 = BYTE1(v81);
  v70(&v81, v44);
  v46 = v81;
  v47 = [v44 objectID];
  v48 = [v44 accountTypeHost];
  v49 = [v48 isLocal];

  v50 = [v44 capabilities];
  LOBYTE(v48) = [v50 supportsRecentlyDeletedList];

  v51 = [v44 capabilities];
  v52 = [v51 supportsGroceriesList];

  (*(v71 + 8))(v77, v72);
  (*(v75 + 8))(v78, v76);
  v53 = v80 & 1;
  v54 = v66 & 1;
  v55 = v61;
  *a9 = v62;
  *(a9 + 8) = v55;
  *(a9 + 16) = v47;
  *(a9 + 24) = v45;
  *(a9 + 25) = v46;
  *(a9 + 26) = v53;
  *(a9 + 27) = v64;
  *(a9 + 28) = v49;
  *(a9 + 29) = v48;
  *(a9 + 30) = v52;
  *(a9 + 31) = v54;
  type metadata accessor for TTRAccountsListsViewModel.Item(0);
  swift_storeEnumTagMultiPayload();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180, &unk_21DC08F30);
  v57 = a9 + *(v56 + 52);
  *v57 = v44;
  *(v57 + 8) = 0;
  *(a9 + *(v56 + 56)) = v63;
  return (*(v73 + 8))(v79, v74);
}

void *static TTRAccountsListsViewModel.generatePredefinedSmartLists(model:reminderCounts:capabilities:smartListsDisplayOrder:smartListsVisibility:isEditing:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, char a6)
{
  v9 = *a3;
  v10 = *a5;
  v20 = *a4;
  v11 = TTRListType.PredefinedSmartListsDisplayOrder.orderingIncludingAllPossibleSmartLists.getter();
  v15 = v6;
  v16 = a2;
  v17 = v9;
  v18 = v10;
  v19 = a6;
  v12 = sub_21D0FF9B8(sub_21DA3127C, &v14, v11);

  return v12;
}

uint64_t TTRAccountsListsViewModel.Item.hasVisibleSectionHeader.getter()
{
  v1 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0FE734(v0, v3, type metadata accessor for TTRAccountsListsViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
    case 3:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 13:
    case 14:
      sub_21D101450(v3, type metadata accessor for TTRAccountsListsViewModel.Item);
      goto LABEL_3;
    case 4:
      v7 = *(v3 + 2);
      v8 = v3[27];

      result = v8;
      break;
    case 12:
      sub_21D101450(v3, type metadata accessor for TTRAccountsListsViewModel.Item);
      result = 1;
      break;
    case 15:
    case 16:
      return result;
    default:
      v6 = sub_21DBF56BC();
      (*(*(v6 - 8) + 8))(v3, v6);
LABEL_3:
      result = 0;
      break;
  }

  return result;
}

char *sub_21DA1A714(void *a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  v14 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v72 = &v48 - v20;
  v21 = [a1 uuid];
  sub_21DBF568C();

  swift_storeEnumTagMultiPayload();
  sub_21D1083C8(v4, v13);
  sub_21D101450(v4, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v22 = *(v15 + 48);
  if (v22(v13, 1, v14) == 1)
  {
    sub_21D0CF7E0(v13, &qword_27CE5A490, &unk_21DC0F950);
    return 0;
  }

  else
  {
    v24 = v13;
    v25 = v72;
    sub_21D100E28(v24, v72, type metadata accessor for TTRAccountsListsViewModel.Item);
    sub_21D0FE734(v25, v10, type metadata accessor for TTRAccountsListsViewModel.Item);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_21D267C40(v10);
    sub_21D0CF7E0(v10, &qword_27CE5A490, &unk_21DC0F950);
    sub_21DBFC10C();
    sub_21DBFC42C();
    v26 = v22(v7, 1, v14);
    v23 = MEMORY[0x277D84F90];
    while (v26 != 1)
    {
      while (2)
      {
        sub_21D100E28(v7, v17, type metadata accessor for TTRAccountsListsViewModel.Item);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
          case 2u:
          case 3u:
          case 4u:
          case 7u:
          case 8u:
          case 9u:
          case 0xAu:
          case 0xBu:
          case 0xCu:
          case 0xDu:
          case 0xEu:
            sub_21D101450(v17, type metadata accessor for TTRAccountsListsViewModel.Item);
            goto LABEL_5;
          case 5u:
          case 6u:
            v27 = v17[217];
            v70 = v17[216];
            v71 = v27;
            v28 = *(v17 + 184);
            v68 = *(v17 + 200);
            v69 = v28;
            v29 = *(v17 + 152);
            v66 = *(v17 + 168);
            v67 = v29;
            v30 = v17[148];
            v64 = v17[147];
            v65 = v30;
            v31 = v17[146];
            v62 = v17[145];
            v63 = v31;
            v32 = v17[144];
            v33 = *(v17 + 17);
            v60 = *(v17 + 16);
            v61 = v33;
            LOBYTE(v31) = v17[120];
            v34 = *(v17 + 88);
            v58 = *(v17 + 104);
            v59 = v34;
            v56 = *(v17 + 72);
            v57 = *(v17 + 56);
            v55 = *(v17 + 6);
            v54 = *(v17 + 5);
            v53 = *(v17 + 4);
            v52 = *(v17 + 3);
            v51 = *(v17 + 2);
            v50 = *(v17 + 1);
            v49 = *v17;
            v77 = v31;
            v75 = v32;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_21D214580(0, *(v23 + 2) + 1, 1, v23);
            }

            v36 = *(v23 + 2);
            v35 = *(v23 + 3);
            if (v36 >= v35 >> 1)
            {
              v23 = sub_21D214580((v35 > 1), v36 + 1, 1, v23);
            }

            *(v23 + 2) = v36 + 1;
            v37 = &v23[224 * v36];
            v38 = v50;
            *(v37 + 4) = v49;
            *(v37 + 5) = v38;
            v39 = v52;
            *(v37 + 6) = v51;
            *(v37 + 7) = v39;
            v40 = v54;
            *(v37 + 8) = v53;
            *(v37 + 9) = v40;
            *(v37 + 10) = v55;
            *(v37 + 104) = v56;
            *(v37 + 88) = v57;
            v41 = v59;
            *(v37 + 136) = v58;
            *(v37 + 120) = v41;
            v37[152] = v77;
            LODWORD(v40) = *v76;
            *(v37 + 39) = *&v76[3];
            *(v37 + 153) = v40;
            v42 = v61;
            *(v37 + 20) = v60;
            *(v37 + 21) = v42;
            v37[176] = v75;
            LOBYTE(v42) = v63;
            v37[177] = v62;
            v37[178] = v42;
            LOBYTE(v42) = v65;
            v37[179] = v64;
            v37[180] = v42;
            LOBYTE(v42) = v74;
            *(v37 + 181) = v73;
            v37[183] = v42;
            v43 = v67;
            *(v37 + 200) = v66;
            *(v37 + 184) = v43;
            v44 = v69;
            *(v37 + 232) = v68;
            *(v37 + 216) = v44;
            LOBYTE(v42) = v71;
            v37[248] = v70;
            v37[249] = v42;
            sub_21DBFC42C();
            v45 = v22(v7, 1, v14);
            v25 = v72;
            if (v45 != 1)
            {
              continue;
            }

            goto LABEL_15;
          case 0xFu:
          case 0x10u:
            goto LABEL_5;
          default:
            v46 = sub_21DBF56BC();
            (*(*(v46 - 8) + 8))(v17, v46);
LABEL_5:
            sub_21DBFC42C();
            v26 = v22(v7, 1, v14);
            break;
        }

        break;
      }
    }

LABEL_15:

    sub_21D101450(v25, type metadata accessor for TTRAccountsListsViewModel.Item);
  }

  return v23;
}

char *TTRAccountsListsViewModel.groups(in:)(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v38 = &v37 - v20;
  v21 = [*(a1 + 16) uuid];
  sub_21DBF568C();

  swift_storeEnumTagMultiPayload();
  sub_21D1083C8(v4, v13);
  sub_21D101450(v4, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v22 = *(v15 + 48);
  if (v22(v13, 1, v14) == 1)
  {
    sub_21D0CF7E0(v13, &qword_27CE5A490, &unk_21DC0F950);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v24 = v13;
    v25 = v38;
    sub_21D100E28(v24, v38, type metadata accessor for TTRAccountsListsViewModel.Item);
    sub_21D0FE734(v25, v10, type metadata accessor for TTRAccountsListsViewModel.Item);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_21D267C40(v10);
    sub_21D0CF7E0(v10, &qword_27CE5A490, &unk_21DC0F950);
    sub_21DBFC10C();
    sub_21DBFC42C();
    v26 = v22(v7, 1, v14);
    v23 = MEMORY[0x277D84F90];
    while (v26 != 1)
    {
      while (1)
      {
        sub_21D100E28(v7, v17, type metadata accessor for TTRAccountsListsViewModel.Item);
        if (swift_getEnumCaseMultiPayload() != 7)
        {
          break;
        }

        v27 = v17[1];
        v39 = *v17;
        v40 = v27;
        v28 = v17[3];
        v41 = v17[2];
        v42 = v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_21D2150E0(0, *(v23 + 2) + 1, 1, v23);
        }

        v30 = *(v23 + 2);
        v29 = *(v23 + 3);
        if (v30 >= v29 >> 1)
        {
          v23 = sub_21D2150E0((v29 > 1), v30 + 1, 1, v23);
        }

        *(v23 + 2) = v30 + 1;
        v31 = &v23[64 * v30];
        v32 = v39;
        v33 = v40;
        v34 = v42;
        *(v31 + 4) = v41;
        *(v31 + 5) = v34;
        *(v31 + 2) = v32;
        *(v31 + 3) = v33;
        sub_21DBFC42C();
        v35 = v22(v7, 1, v14);
        v25 = v38;
        if (v35 == 1)
        {
          goto LABEL_12;
        }
      }

      sub_21D101450(v17, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21DBFC42C();
      v26 = v22(v7, 1, v14);
    }

LABEL_12:

    sub_21D101450(v25, type metadata accessor for TTRAccountsListsViewModel.Item);
  }

  return v23;
}

uint64_t TTRAccountsListsViewModel.remListsOrCustomSmartLists(in:)(uint64_t a1)
{
  result = sub_21DA1B278(*(a1 + 48));
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

{
  result = sub_21DA1B278(*(a1 + 16));
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_21DA1B278(void *a1)
{
  v2 = v1;
  result = sub_21DA1A714(a1);
  if (result)
  {
    v4 = result;
    v5 = *(result + 16);
    if (!v5)
    {
      v8 = MEMORY[0x277D84F90];
      goto LABEL_41;
    }

    v6 = 0;
    v37 = OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes;
    v39 = OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree;
    v7 = result + 32;
    v31 = v5 - 1;
    v8 = MEMORY[0x277D84F90];
    v38 = v1;
    v36 = v5;
    v34 = result;
    v32 = result + 32;
    while (1)
    {
      v33 = v8;
      v9 = (v7 + 224 * v6);
      v10 = v6;
      while (1)
      {
        if (v10 >= *(v4 + 16))
        {
          __break(1u);
          return result;
        }

        v11 = v9[1];
        v45[0] = *v9;
        v45[1] = v11;
        v12 = v9[2];
        v13 = v9[3];
        v14 = v9[5];
        v45[4] = v9[4];
        v45[5] = v14;
        v45[2] = v12;
        v45[3] = v13;
        v15 = v9[6];
        v16 = v9[7];
        v17 = v9[9];
        v45[8] = v9[8];
        v45[9] = v17;
        v45[6] = v15;
        v45[7] = v16;
        v18 = v9[10];
        v19 = v9[11];
        v20 = v9[12];
        *(v46 + 10) = *(v9 + 202);
        v45[11] = v19;
        v46[0] = v20;
        v45[10] = v18;
        v21 = BYTE2(v17);
        v22 = *&v45[0];
        if (BYTE2(v17) != 2 && (BYTE2(v17) & 1) != 0)
        {
          break;
        }

        sub_21D567868(v45, &v41);
        sub_21DA1CE20(v22, &v43);
        if (v44 != 255)
        {
          if (v44 == 1 || v44 == 4)
          {
            v24 = v43;
            sub_21D1077D8(v45);
            v25 = 0;
            goto LABEL_32;
          }

          sub_21D103A34(v43, v44);
        }

        if (v21 == 2 || (v21 & 1) == 0)
        {
          sub_21DA1CE20(v22, &v41);
          if (v42 != 255)
          {
            if (v42 == 2)
            {
              v24 = v41;
              sub_21D1077D8(v45);
              v25 = 1;
              goto LABEL_32;
            }

            sub_21D103A34(v41, v42);
          }

          result = sub_21D1077D8(v45);
          goto LABEL_7;
        }

LABEL_21:
        v43 = *(v2 + v37);
        MEMORY[0x28223BE20](v23);
        *(&v30 - 2) = v22;
        sub_21DBF8E0C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C90, &qword_21DC29A60);
        sub_21D0D0F1C(&qword_280D0C3F0, &qword_27CE61C90, &qword_21DC29A60, MEMORY[0x277D83970]);
        sub_21DBFA48C();

        if (v42 == 255)
        {
          result = sub_21D1077D8(v45);
          v2 = v38;
          v5 = v36;
          v4 = v34;
        }

        else
        {
          v2 = v38;
          v5 = v36;
          if (v42)
          {
            v24 = v41;
            sub_21D1077D8(v45);
            v25 = 1;
            goto LABEL_31;
          }

          sub_21D157864(v41, v42);
          result = sub_21D1077D8(v45);
          v4 = v34;
        }

LABEL_7:
        ++v10;
        v9 += 14;
        if (v5 == v10)
        {
          v8 = v33;
          goto LABEL_41;
        }
      }

      v35 = &v30;
      v40 = *(v2 + v37);
      MEMORY[0x28223BE20](result);
      *(&v30 - 2) = v22;
      sub_21D567868(v45, &v41);
      sub_21DBF8E0C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C90, &qword_21DC29A60);
      sub_21D0D0F1C(&qword_280D0C3F0, &qword_27CE61C90, &qword_21DC29A60, MEMORY[0x277D83970]);
      sub_21DBFA48C();

      if (v44 == 255)
      {
        goto LABEL_14;
      }

      if (v44)
      {
        break;
      }

      v24 = v43;
      sub_21D1077D8(v45);
      v25 = 0;
LABEL_31:
      v4 = v34;
LABEL_32:
      v8 = v33;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21D2146A4(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v27 = *(v8 + 16);
      v26 = *(v8 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_21D2146A4((v26 > 1), v27 + 1, 1, v8);
        v8 = result;
      }

      v28 = v24;
      v2 = v38;
      v6 = v10 + 1;
      *(v8 + 16) = v27 + 1;
      v29 = v8 + 16 * v27;
      *(v29 + 32) = v28;
      *(v29 + 40) = v25;
      v7 = v32;
      v5 = v36;
      if (v31 == v10)
      {
LABEL_41:

        return v8;
      }
    }

    sub_21D157864(v43, v44);
LABEL_14:
    v2 = v38;
    goto LABEL_21;
  }

  return 0;
}

uint64_t TTRAccountsListsViewModel.parent(of:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v4);
  v5 = sub_21D2916B0(v4);
  sub_21D101450(v4, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  if (v5 && (Strong = swift_weakLoadStrong(), , Strong))
  {
    v7 = *(*Strong + 120);
    swift_beginAccess();
    sub_21D0FE734(Strong + v7, a1, type metadata accessor for TTRAccountsListsViewModel.Item);

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

BOOL TTRAccountsListsViewModel.hasItemInTree(_:)()
{
  v0 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v2);
  sub_21D1083C8(v2, v5);
  sub_21D101450(v2, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v6 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6) != 1;
  sub_21D0CF7E0(v5, &qword_27CE5A490, &unk_21DC0F950);
  return v7;
}

uint64_t TTRAccountsListsViewModel.item(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree);
  swift_beginAccess();
  v6 = *(v5 + 24);
  if (*(v6 + 16) && (v7 = sub_21D105CF4(a1), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    v10 = *(*v9 + 120);
    swift_beginAccess();
    sub_21D0FE734(v9 + v10, a2, type metadata accessor for TTRAccountsListsViewModel.Item);
    v11 = 0;
  }

  else
  {
    swift_endAccess();
    v11 = 1;
  }

  v12 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  return (*(*(v12 - 8) + 56))(a2, v11, 1, v12);
}

uint64_t TTRAccountsListsViewModel.item(with:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  *&v5 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 uuid];
  sub_21DBF568C();

  swift_storeEnumTagMultiPayload();
  sub_21D1083C8(v7, a2);
  return sub_21D101450(v7, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
}

void TTRAccountsListsViewModel.list(with:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  *&v12 = MEMORY[0x28223BE20](v11 - 8).n128_u64[0];
  v14 = &v34 - v13;
  v15 = [a1 uuid];
  sub_21DBF568C();

  swift_storeEnumTagMultiPayload();
  sub_21D1083C8(v10, v14);
  sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    sub_21D0CF7E0(v14, &qword_27CE5A490, &unk_21DC0F950);
    sub_21D7F4008(&v34);
    v16 = v45;
    a2[10] = v44;
    a2[11] = v16;
    a2[12] = v46[0];
    *(a2 + 202) = *(v46 + 10);
    v17 = v41;
    a2[6] = v40;
    a2[7] = v17;
    v18 = v43;
    a2[8] = v42;
    a2[9] = v18;
    v19 = v37;
    a2[2] = v36;
    a2[3] = v19;
    v20 = v39;
    a2[4] = v38;
    a2[5] = v20;
    v21 = v35;
    *a2 = v34;
    a2[1] = v21;
  }

  else
  {
    sub_21D0FE734(v14, v7, type metadata accessor for TTRAccountsListsViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v22 = v7[11];
      v44 = v7[10];
      v45 = v22;
      v46[0] = v7[12];
      *(v46 + 10) = *(v7 + 202);
      v23 = v7[7];
      v40 = v7[6];
      v41 = v23;
      v24 = v7[9];
      v42 = v7[8];
      v43 = v24;
      v25 = v7[3];
      v36 = v7[2];
      v37 = v25;
      v26 = v7[5];
      v38 = v7[4];
      v39 = v26;
      v27 = v7[1];
      v34 = *v7;
      v35 = v27;
      nullsub_1();
    }

    else
    {
      sub_21D101450(v7, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D7F4008(&v34);
    }

    v28 = v45;
    a2[10] = v44;
    a2[11] = v28;
    a2[12] = v46[0];
    *(a2 + 202) = *(v46 + 10);
    v29 = v41;
    a2[6] = v40;
    a2[7] = v29;
    v30 = v43;
    a2[8] = v42;
    a2[9] = v30;
    v31 = v37;
    a2[2] = v36;
    a2[3] = v31;
    v32 = v39;
    a2[4] = v38;
    a2[5] = v32;
    v33 = v35;
    *a2 = v34;
    a2[1] = v33;
    sub_21D101450(v14, type metadata accessor for TTRAccountsListsViewModel.Item);
  }
}

double TTRAccountsListsViewModel.Item.list.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0FE734(v2, v6, type metadata accessor for TTRAccountsListsViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v7 = v6[11];
    v30 = v6[10];
    v31 = v7;
    v32[0] = v6[12];
    *(v32 + 10) = *(v6 + 202);
    v8 = v6[7];
    v26 = v6[6];
    v27 = v8;
    v9 = v6[9];
    v28 = v6[8];
    v29 = v9;
    v10 = v6[3];
    v22 = v6[2];
    v23 = v10;
    v11 = v6[5];
    v24 = v6[4];
    v25 = v11;
    v12 = v6[1];
    v20 = *v6;
    v21 = v12;
    nullsub_1();
  }

  else
  {
    sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.Item);
    sub_21D7F4008(&v20);
  }

  v13 = v31;
  a1[10] = v30;
  a1[11] = v13;
  a1[12] = v32[0];
  *(a1 + 202) = *(v32 + 10);
  v14 = v27;
  a1[6] = v26;
  a1[7] = v14;
  v15 = v29;
  a1[8] = v28;
  a1[9] = v15;
  v16 = v23;
  a1[2] = v22;
  a1[3] = v16;
  v17 = v25;
  a1[4] = v24;
  a1[5] = v17;
  result = *&v20;
  v19 = v21;
  *a1 = v20;
  a1[1] = v19;
  return result;
}

void TTRAccountsListsViewModel.customSmartList(with:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  *&v12 = MEMORY[0x28223BE20](v11 - 8).n128_u64[0];
  v14 = &v34 - v13;
  v15 = [a1 uuid];
  sub_21DBF568C();

  swift_storeEnumTagMultiPayload();
  sub_21D1083C8(v10, v14);
  sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    sub_21D0CF7E0(v14, &qword_27CE5A490, &unk_21DC0F950);
    sub_21D7F4008(&v34);
    v16 = v45;
    a2[10] = v44;
    a2[11] = v16;
    a2[12] = v46[0];
    *(a2 + 202) = *(v46 + 10);
    v17 = v41;
    a2[6] = v40;
    a2[7] = v17;
    v18 = v43;
    a2[8] = v42;
    a2[9] = v18;
    v19 = v37;
    a2[2] = v36;
    a2[3] = v19;
    v20 = v39;
    a2[4] = v38;
    a2[5] = v20;
    v21 = v35;
    *a2 = v34;
    a2[1] = v21;
  }

  else
  {
    sub_21D0FE734(v14, v7, type metadata accessor for TTRAccountsListsViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v22 = v7[11];
      v44 = v7[10];
      v45 = v22;
      v46[0] = v7[12];
      *(v46 + 10) = *(v7 + 202);
      v23 = v7[7];
      v40 = v7[6];
      v41 = v23;
      v24 = v7[9];
      v42 = v7[8];
      v43 = v24;
      v25 = v7[3];
      v36 = v7[2];
      v37 = v25;
      v26 = v7[5];
      v38 = v7[4];
      v39 = v26;
      v27 = v7[1];
      v34 = *v7;
      v35 = v27;
      nullsub_1();
    }

    else
    {
      sub_21D101450(v7, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D7F4008(&v34);
    }

    v28 = v45;
    a2[10] = v44;
    a2[11] = v28;
    a2[12] = v46[0];
    *(a2 + 202) = *(v46 + 10);
    v29 = v41;
    a2[6] = v40;
    a2[7] = v29;
    v30 = v43;
    a2[8] = v42;
    a2[9] = v30;
    v31 = v37;
    a2[2] = v36;
    a2[3] = v31;
    v32 = v39;
    a2[4] = v38;
    a2[5] = v32;
    v33 = v35;
    *a2 = v34;
    a2[1] = v33;
    sub_21D101450(v14, type metadata accessor for TTRAccountsListsViewModel.Item);
  }
}

double TTRAccountsListsViewModel.Item.customSmartList.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0FE734(v2, v6, type metadata accessor for TTRAccountsListsViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v7 = v6[11];
    v30 = v6[10];
    v31 = v7;
    v32[0] = v6[12];
    *(v32 + 10) = *(v6 + 202);
    v8 = v6[7];
    v26 = v6[6];
    v27 = v8;
    v9 = v6[9];
    v28 = v6[8];
    v29 = v9;
    v10 = v6[3];
    v22 = v6[2];
    v23 = v10;
    v11 = v6[5];
    v24 = v6[4];
    v25 = v11;
    v12 = v6[1];
    v20 = *v6;
    v21 = v12;
    nullsub_1();
  }

  else
  {
    sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.Item);
    sub_21D7F4008(&v20);
  }

  v13 = v31;
  a1[10] = v30;
  a1[11] = v13;
  a1[12] = v32[0];
  *(a1 + 202) = *(v32 + 10);
  v14 = v27;
  a1[6] = v26;
  a1[7] = v14;
  v15 = v29;
  a1[8] = v28;
  a1[9] = v15;
  v16 = v23;
  a1[2] = v22;
  a1[3] = v16;
  v17 = v25;
  a1[4] = v24;
  a1[5] = v17;
  result = *&v20;
  v19 = v21;
  *a1 = v20;
  a1[1] = v19;
  return result;
}

uint64_t TTRAccountsListsViewModel.group(with:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  *&v12 = MEMORY[0x28223BE20](v11 - 8).n128_u64[0];
  v14 = &v19 - v13;
  v15 = [a1 uuid];
  sub_21DBF568C();

  swift_storeEnumTagMultiPayload();
  sub_21D1083C8(v10, v14);
  sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    result = sub_21D0CF7E0(v14, &qword_27CE5A490, &unk_21DC0F950);
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
  }

  else
  {
    sub_21D0FE734(v14, v7, type metadata accessor for TTRAccountsListsViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v17 = v7[1];
      *a2 = *v7;
      a2[1] = v17;
      v18 = v7[3];
      a2[2] = v7[2];
      a2[3] = v18;
    }

    else
    {
      sub_21D101450(v7, type metadata accessor for TTRAccountsListsViewModel.Item);
      *a2 = 0u;
      a2[1] = 0u;
      a2[2] = 0u;
      a2[3] = 0u;
    }

    return sub_21D101450(v14, type metadata accessor for TTRAccountsListsViewModel.Item);
  }

  return result;
}

double TTRAccountsListsViewModel.pinnedListInnerList(with:)@<D0>(_OWORD *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CB0, &unk_21DC36540);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = TTRAccountsListsViewModel.visiblePinnedLists.getter();
  sub_21DA1CB78(v9, v8);

  sub_21D0D523C(v8, v5, &qword_27CE61CB0, &unk_21DC36540);
  v10 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  if ((*(*(v10 - 8) + 48))(v5, 1, v10) == 1)
  {
    goto LABEL_5;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21D101450(v5, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
LABEL_5:
    sub_21D7F4008(&v25);
    goto LABEL_6;
  }

  v11 = v5[11];
  v35 = v5[10];
  v36 = v11;
  v37[0] = v5[12];
  *(v37 + 10) = *(v5 + 202);
  v12 = v5[7];
  v31 = v5[6];
  v32 = v12;
  v13 = v5[9];
  v33 = v5[8];
  v34 = v13;
  v14 = v5[3];
  v27 = v5[2];
  v15 = v5[4];
  v16 = v5[5];
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v17 = v5[1];
  v25 = *v5;
  v26 = v17;
  nullsub_1();
LABEL_6:
  v18 = v36;
  a2[10] = v35;
  a2[11] = v18;
  a2[12] = v37[0];
  *(a2 + 202) = *(v37 + 10);
  v19 = v32;
  a2[6] = v31;
  a2[7] = v19;
  v20 = v34;
  a2[8] = v33;
  a2[9] = v20;
  v21 = v28;
  a2[2] = v27;
  a2[3] = v21;
  v22 = v30;
  a2[4] = v29;
  a2[5] = v22;
  result = *&v25;
  v24 = v26;
  *a2 = v25;
  a2[1] = v24;
  return result;
}

uint64_t sub_21DA1CB78@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v4 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  v12 = *(a2 + 16);
  if (!v12)
  {
    return (*(v5 + 56))(v28, 1, 1, v4, v9);
  }

  v13 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v14 = *(v5 + 72);
  while (1)
  {
    sub_21D0FE734(v13, v11, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    sub_21D0FE734(v11, v7, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_21D101450(v11, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    v15 = v7;
LABEL_4:
    sub_21D101450(v15, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    v13 += v14;
    if (!--v12)
    {
      return (*(v5 + 56))(v28, 1, 1, v4, v9);
    }
  }

  v16 = v7[11];
  v29[10] = v7[10];
  v29[11] = v16;
  v30[0] = v7[12];
  *(v30 + 10) = *(v7 + 202);
  v17 = v7[7];
  v29[6] = v7[6];
  v29[7] = v17;
  v18 = v7[9];
  v29[8] = v7[8];
  v29[9] = v18;
  v19 = v7[3];
  v29[2] = v7[2];
  v29[3] = v19;
  v20 = v7[5];
  v29[4] = v7[4];
  v29[5] = v20;
  v21 = v7[1];
  v29[0] = *v7;
  v29[1] = v21;
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  v22 = *&v29[0];
  v23 = sub_21DBFB63C();
  sub_21D1077D8(v29);

  if ((v23 & 1) == 0)
  {
    v15 = v11;
    goto LABEL_4;
  }

  v25 = v28;
  sub_21D100E28(v11, v28, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
  return (*(v5 + 56))(v25, 0, 1, v4, v26);
}

void sub_21DA1CE20(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 uuid];
  sub_21DBF568C();

  swift_storeEnumTagMultiPayload();
  sub_21D1083C8(v6, v9);
  sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_21D0CF7E0(v9, &qword_27CE5A490, &unk_21DC0F950);
    if (qword_280D0F4D0 != -1)
    {
      swift_once();
    }

    v16 = sub_21DBF84BC();
    __swift_project_value_buffer(v16, qword_280D0F4D8);
    v17 = a1;
    v18 = sub_21DBF84AC();
    v19 = sub_21DBFAEBC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_21D0C9000, v18, v19, "Failed to find model by objectID {objectID: %@}", v20, 0xCu);
      sub_21D0CF7E0(v21, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v21, -1, -1);
      MEMORY[0x223D46520](v20, -1, -1);
    }

    goto LABEL_9;
  }

  sub_21D100E28(v9, v14, type metadata accessor for TTRAccountsListsViewModel.Item);
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v6);
  v23 = sub_21D2916B0(v6);
  sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  sub_21D101450(v14, type metadata accessor for TTRAccountsListsViewModel.Item);
  if (!v23)
  {
LABEL_9:
    v25 = 0;
    v26 = -1;
    goto LABEL_10;
  }

  v24 = v23 + *(*v23 + 128);
  swift_beginAccess();
  v25 = *v24;
  v26 = *(v24 + 8);
  sub_21D105AA4(v25, v26);

LABEL_10:
  *a2 = v25;
  *(a2 + 8) = v26;
}

void *TTRAccountsListsViewModel.remAccountForTemplates.getter()
{
  v90 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v90);
  v2 = &v76 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v76 - v4;
  v88 = sub_21DBF56BC();
  v97 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v85 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v89 = &v76 - v8;
  v9 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v86 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v99 = &v76 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  v94 = *(v14 - 8);
  v15 = *(v94 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v92 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v96 = &v76 - v17;
  MEMORY[0x28223BE20](v18);
  v93 = &v76 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v76 - v21;
  MEMORY[0x28223BE20](v23);
  v87 = &v76 - v24;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v76 - v27;
  v77 = v0;
  v29 = *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree);
  v95 = v10;
  v30 = *(v10 + 56);
  v78 = v9;
  v98 = v10 + 56;
  v30(&v76 - v27, 1, 1, v9, v26);
  v31 = sub_21D0E8DA0(v28);
  if ((v31 & 0x8000000000000000) != 0)
  {
    goto LABEL_46;
  }

  v32 = v31;
  v33 = v87;
  sub_21D0D523C(v28, v87, &qword_27CE5A490, &unk_21DC0F950);
  v91 = v22;
  sub_21D0D3954(v33, v22, &qword_27CE5A490, &unk_21DC0F950);
  v34 = (*(v94 + 80) + 24) & ~*(v94 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v29;
  sub_21D0D523C(v33, v35 + v34, &qword_27CE5A490, &unk_21DC0F950);
  v79 = MEMORY[0x277D84F90];
  v102 = MEMORY[0x277D84F90];
  v95 += 6;
  v83 = (v97 + 32);
  v81 = (v97 + 16);
  v80 = (v97 + 8);
  v94 = v29;
  swift_retain_n();
  swift_retain_n();
  v76 = v35;

  v31 = 0;
  v36 = v86;
  v87 = v32;
  v84 = v5;
  v82 = v30;
LABEL_3:
  v37 = v78;
  v38 = v99;
  v39 = v96;
  v40 = v91;
  v41 = v93;
  v42 = v31 >= v32;
  if (v31 == v32)
  {
LABEL_8:
    v43 = 1;
    v97 = v32;
    goto LABEL_12;
  }

  while (!v42)
  {
    v44 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_43;
    }

    sub_21D107A34(v31, v40, v41);
    v38 = v99;
    v43 = 0;
    v97 = v44;
    v39 = v96;
LABEL_12:
    (v30)(v41, v43, 1, v37);
    sub_21D0D523C(v41, v39, &qword_27CE5A490, &unk_21DC0F950);
    v45 = *v95;
    if ((*v95)(v39, 1, v37) == 1)
    {

      sub_21D0CF7E0(v91, &qword_27CE5A490, &unk_21DC0F950);

      v31 = v79;
      if (v79 >> 62)
      {
        goto LABEL_47;
      }

      v66 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v66)
      {
        goto LABEL_32;
      }

      goto LABEL_48;
    }

    sub_21D100E28(v39, v38, type metadata accessor for TTRAccountsListsViewModel.Item);
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v5);
    if (swift_getEnumCaseMultiPayload() >= 2)
    {
      v47 = *v83;
      v48 = v85;
      v49 = v5;
      v50 = v88;
      (*v83)(v85, v49, v88);
      v51 = v2;
      v52 = v89;
      v47(v89, v48, v50);
      v53 = v52;
      v2 = v51;
      (*v81)(v51, v53, v50);
      swift_storeEnumTagMultiPayload();
      v54 = v94;
      swift_beginAccess();
      v55 = *(v54 + 24);
      if (*(v55 + 16) && (v56 = sub_21D105CF4(v51), (v57 & 1) != 0))
      {
        v58 = *(*(v55 + 56) + 8 * v56);
        swift_endAccess();
        v59 = *(*v58 + 120);
        swift_beginAccess();
        v60 = v58 + v59;
        v36 = v86;
        sub_21D0FE734(v60, v92, type metadata accessor for TTRAccountsListsViewModel.Item);
        v61 = 0;
      }

      else
      {
        swift_endAccess();
        v61 = 1;
      }

      v30 = v82;
      v46 = v92;
      v38 = v99;
      (v82)(v92, v61, 1, v37);
      sub_21D101450(v2, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      (*v80)(v89, v88);
      v62 = v45(v46, 1, v37);
      v5 = v84;
      v32 = v87;
      if (v62 == 1)
      {
        sub_21D0CF7E0(v46, &qword_27CE5A490, &unk_21DC0F950);
        v41 = v93;
        goto LABEL_6;
      }
    }

    else
    {
      sub_21D101450(v5, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      v46 = v92;
      sub_21D0FE734(v38, v92, type metadata accessor for TTRAccountsListsViewModel.Item);
      (v30)(v46, 0, 1, v37);
    }

    sub_21D0FE734(v46, v36, type metadata accessor for TTRAccountsListsViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v41 = v93;
    if (EnumCaseMultiPayload == 4)
    {
      v64 = *(v36 + 16);
      sub_21D101450(v46, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D101450(v99, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21DA1CE20(v64, &v100);
      if (v101 == 255)
      {

        v36 = v86;
        v38 = v99;
        goto LABEL_7;
      }

      v38 = v99;
      if (!v101)
      {

        MEMORY[0x223D42D80](v65);
        if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v79 = v102;
        v36 = v86;
        v32 = v87;
        v31 = v97;
        goto LABEL_3;
      }

      sub_21D103A34(v100, v101);

      v37 = v78;
      v36 = v86;
      v32 = v87;
      v39 = v96;
      v31 = v97;
      v40 = v91;
      v41 = v93;
      v42 = v97 >= v87;
      if (v97 == v87)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_21D101450(v36, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D101450(v46, type metadata accessor for TTRAccountsListsViewModel.Item);
      v38 = v99;
LABEL_6:
      sub_21D101450(v38, type metadata accessor for TTRAccountsListsViewModel.Item);
LABEL_7:
      v39 = v96;
      v31 = v97;
      v40 = v91;
      v42 = v97 >= v32;
      if (v97 == v32)
      {
        goto LABEL_8;
      }
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v74 = v31;
    v66 = sub_21DBFBD7C();
    v31 = v74;
    if (!v66)
    {
      break;
    }

LABEL_32:
    v67 = 0;
    v68 = v31 & 0xC000000000000001;
    v69 = v31 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v68)
      {
        v31 = MEMORY[0x223D44740](v67, v31);
      }

      else
      {
        if (v67 >= *(v69 + 16))
        {
          goto LABEL_45;
        }

        v31 = *(v31 + 8 * v67 + 32);
      }

      v70 = v31;
      v71 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        break;
      }

      v72 = [v31 capabilities];
      v73 = [v72 supportsTemplates];

      if (v73)
      {

        return v70;
      }

      ++v67;
      v31 = v79;
      if (v71 == v66)
      {
        goto LABEL_48;
      }
    }
  }

LABEL_48:

  return 0;
}

void TTRAccountsListsViewModel.pinnedListsItem(containingPinnedListMatching:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes + 8) == 1)
  {
    MEMORY[0x28223BE20](a1);
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C90, &qword_21DC29A60);
    type metadata accessor for TTRAccountsListsViewModel.Item(0);
    sub_21D0D0F1C(&qword_280D0C3F0, &qword_27CE61C90, &qword_21DC29A60, MEMORY[0x277D83970]);
    sub_21DBFA48C();
  }

  else
  {
    v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
    v5 = *(*(v4 - 8) + 56);

    v5(a2, 1, 1, v4);
  }
}

uint64_t sub_21DA1DFBC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *)@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v26 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  sub_21D0FE734(a1, v11, type metadata accessor for TTRAccountsListsViewModel.Item);
  v27 = v9;
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    result = sub_21D100E28(v11, v14, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
    v16 = 0;
    v17 = *&v14[*(v12 + 20)];
    v18 = *(v17 + 16);
    while (1)
    {
      if (v18 == v16)
      {
        v23 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists;
        v24 = v14;
        goto LABEL_9;
      }

      if (v16 >= *(v17 + 16))
      {
        break;
      }

      sub_21D0FE734(v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16++, v8, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
      v19 = a2(v8);
      result = sub_21D101450(v8, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
      if (v19)
      {
        sub_21D101450(v14, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
        v20 = v28;
        sub_21D0FE734(v25, v28, type metadata accessor for TTRAccountsListsViewModel.Item);
        v21 = v20;
        v22 = 0;
        return (*(v26 + 56))(v21, v22, 1, v27);
      }
    }

    __break(1u);
  }

  else
  {
    v23 = type metadata accessor for TTRAccountsListsViewModel.Item;
    v24 = v11;
LABEL_9:
    sub_21D101450(v24, v23);
    v22 = 1;
    v21 = v28;
    return (*(v26 + 56))(v21, v22, 1, v27);
  }

  return result;
}

void TTRAccountsListsViewModel.pinnedListsItem(containingListFor:)(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes + 8) == 1)
  {
    MEMORY[0x28223BE20](a1);
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C90, &qword_21DC29A60);
    type metadata accessor for TTRAccountsListsViewModel.Item(0);
    sub_21D0D0F1C(&qword_280D0C3F0, &qword_27CE61C90, &qword_21DC29A60, MEMORY[0x277D83970]);
    sub_21DBFA48C();
  }

  else
  {
    v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
    (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  }
}

{
  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes + 8) == 1)
  {
    MEMORY[0x28223BE20](a1);
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C90, &qword_21DC29A60);
    type metadata accessor for TTRAccountsListsViewModel.Item(0);
    sub_21D0D0F1C(&qword_280D0C3F0, &qword_27CE61C90, &qword_21DC29A60, MEMORY[0x277D83970]);
    sub_21DBFA48C();
  }

  else
  {
    v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
    (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  }
}

uint64_t sub_21DA1E4B4(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  MEMORY[0x28223BE20](v3);
  v5 = (v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0FE734(a1, v5, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = v5[11];
    v15[10] = v5[10];
    v15[11] = v6;
    v16[0] = v5[12];
    *(v16 + 10) = *(v5 + 202);
    v7 = v5[7];
    v15[6] = v5[6];
    v15[7] = v7;
    v8 = v5[9];
    v15[8] = v5[8];
    v15[9] = v8;
    v9 = v5[3];
    v15[2] = v5[2];
    v15[3] = v9;
    v10 = v5[5];
    v15[4] = v5[4];
    v15[5] = v10;
    v11 = v5[1];
    v15[0] = *v5;
    v15[1] = v11;
    sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
    v12 = *&v15[0];
    v13 = sub_21DBFB63C();

    sub_21D1077D8(v15);
  }

  else
  {
    sub_21D101450(v5, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    v13 = 0;
  }

  return v13 & 1;
}

void TTRAccountsListsViewModel.pinnedListsItem(containingListFor:)(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes + 8) == 1)
  {
    MEMORY[0x28223BE20](a1);
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C90, &qword_21DC29A60);
    type metadata accessor for TTRAccountsListsViewModel.Item(0);
    sub_21D0D0F1C(&qword_280D0C3F0, &qword_27CE61C90, &qword_21DC29A60, MEMORY[0x277D83970]);
    sub_21DBFA48C();
  }

  else
  {
    v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
    v5 = *(*(v4 - 8) + 56);

    v5(a2, 1, 1, v4);
  }
}

uint64_t sub_21DA1E7D0(uint64_t a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0FE734(a1, v9, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D101450(v9, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    v10 = 0;
  }

  else
  {
    sub_21D100E28(v9, v6, type metadata accessor for TTRAccountsListsViewModel.SmartList);
    v10 = sub_21D11ED58(v6[*(v4 + 20)], a2);
    sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.SmartList);
  }

  return v10 & 1;
}

uint64_t sub_21DA1EB1C(uint64_t a1, __int128 *a2)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D0FE734(a1, v9, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = v9[11];
    v57 = v9[10];
    v58 = v10;
    v59[0] = v9[12];
    *(v59 + 10) = *(v9 + 202);
    v11 = v9[7];
    v53 = v9[6];
    v54 = v11;
    v12 = v9[9];
    v55 = v9[8];
    v56 = v12;
    v13 = v9[3];
    v49 = v9[2];
    v50 = v13;
    v14 = v9[5];
    v51 = v9[4];
    v52 = v14;
    v15 = v9[1];
    v47 = *v9;
    v48 = v15;
    sub_21D14DB00(&v47);
  }

  else
  {
    sub_21D100E28(v9, v6, type metadata accessor for TTRAccountsListsViewModel.SmartList);
    v16 = v6[*(v4 + 20)];
    sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.SmartList);
    LOBYTE(v47) = v16;
    sub_21D14DACC(&v47);
  }

  v70 = v57;
  v71 = v58;
  v72[0] = v59[0];
  *(v72 + 10) = *(v59 + 10);
  v66 = v53;
  v67 = v54;
  v68 = v55;
  v69 = v56;
  v62 = v49;
  v63 = v50;
  v64 = v51;
  v65 = v52;
  v60 = v47;
  v61 = v48;
  v17 = a2[11];
  v57 = a2[10];
  v58 = v17;
  v59[0] = a2[12];
  *(v59 + 10) = *(a2 + 202);
  v18 = a2[7];
  v53 = a2[6];
  v54 = v18;
  v19 = a2[9];
  v55 = a2[8];
  v56 = v19;
  v20 = a2[3];
  v49 = a2[2];
  v50 = v20;
  v21 = a2[5];
  v51 = a2[4];
  v52 = v21;
  v22 = a2[1];
  v47 = *a2;
  v48 = v22;
  if (sub_21D1577AC(&v47) != 1)
  {
    v29 = *sub_21D14D0D4(&v47);
    v44 = v70;
    v45 = v71;
    v46[0] = v72[0];
    *(v46 + 10) = *(v72 + 10);
    v40 = v66;
    v41 = v67;
    v42 = v68;
    v43 = v69;
    v36 = v62;
    v37 = v63;
    v38 = v64;
    v39 = v65;
    v34 = v60;
    v35 = v61;
    v30 = sub_21D1577AC(&v34);
    v31 = sub_21D14D0D4(&v34);
    if (v30 != 1)
    {
      v28 = sub_21D11ED58(v29, *v31);
      return v28 & 1;
    }

    sub_21DA28F18(&v60);
    goto LABEL_9;
  }

  sub_21D14D0D4(&v47);
  v34 = v60;
  v35 = v61;
  v38 = v64;
  v39 = v65;
  v36 = v62;
  v37 = v63;
  v42 = v68;
  v43 = v69;
  v40 = v66;
  v41 = v67;
  *(v46 + 10) = *(v72 + 10);
  v45 = v71;
  v46[0] = v72[0];
  v44 = v70;
  v23 = sub_21D1577AC(&v34);
  v24 = sub_21D14D0D4(&v34);
  if (v23 != 1)
  {
LABEL_9:
    v28 = 0;
    return v28 & 1;
  }

  v25 = v24;
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  v26 = *v25;
  sub_21DA28EE0(&v60, v33);
  v27 = v26;
  v28 = sub_21DBFB63C();
  sub_21DA28F18(&v60);

  sub_21DA28F18(&v60);
  return v28 & 1;
}

double TTRAccountsListsPinnedListSelection.init(pinnedList:)@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = a1[11];
    v31 = a1[10];
    v32 = v7;
    v33[0] = a1[12];
    *(v33 + 10) = *(a1 + 202);
    v8 = a1[7];
    v27 = a1[6];
    v28 = v8;
    v9 = a1[9];
    v29 = a1[8];
    v30 = v9;
    v10 = a1[3];
    v23 = a1[2];
    v24 = v10;
    v11 = a1[5];
    v25 = a1[4];
    v26 = v11;
    v12 = a1[1];
    v21 = *a1;
    v22 = v12;
    sub_21D14DB00(&v21);
  }

  else
  {
    sub_21D100E28(a1, v6, type metadata accessor for TTRAccountsListsViewModel.SmartList);
    v13 = v6[*(v4 + 20)];
    sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.SmartList);
    LOBYTE(v21) = v13;
    sub_21D14DACC(&v21);
  }

  v44[0] = v33[0];
  *(v44 + 10) = *(v33 + 10);
  v40 = v27;
  v41 = v28;
  v42 = v29;
  v43 = v30;
  v36 = v23;
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v34 = v21;
  v35 = v22;
  v14 = v32;
  a2[10] = v31;
  a2[11] = v14;
  a2[12] = v44[0];
  *(a2 + 202) = *(v44 + 10);
  v15 = v41;
  a2[6] = v40;
  a2[7] = v15;
  v16 = v43;
  a2[8] = v42;
  a2[9] = v16;
  v17 = v37;
  a2[2] = v36;
  a2[3] = v17;
  v18 = v39;
  a2[4] = v38;
  a2[5] = v18;
  result = *&v34;
  v20 = v35;
  *a2 = v34;
  a2[1] = v20;
  return result;
}

uint64_t static TTRAccountsListsPinnedListSelection.== infix(_:_:)(_OWORD *a1, __int128 *a2)
{
  v2 = a1[11];
  v54[10] = a1[10];
  v54[11] = v2;
  v55[0] = a1[12];
  *(v55 + 10) = *(a1 + 202);
  v3 = a1[7];
  v54[6] = a1[6];
  v54[7] = v3;
  v4 = a1[9];
  v54[8] = a1[8];
  v54[9] = v4;
  v5 = a1[3];
  v54[2] = a1[2];
  v54[3] = v5;
  v6 = a1[5];
  v54[4] = a1[4];
  v54[5] = v6;
  v7 = a1[1];
  v54[0] = *a1;
  v54[1] = v7;
  v8 = a2[11];
  v51 = a2[10];
  v52 = v8;
  v53[0] = a2[12];
  *(v53 + 10) = *(a2 + 202);
  v9 = a2[7];
  v47 = a2[6];
  v48 = v9;
  v10 = a2[9];
  v49 = a2[8];
  v50 = v10;
  v11 = a2[3];
  v43 = a2[2];
  v44 = v11;
  v12 = a2[5];
  v45 = a2[4];
  v46 = v12;
  v13 = a2[1];
  v41 = *a2;
  v42 = v13;
  if (sub_21D1577AC(v54) != 1)
  {
    v23 = *sub_21D14D0D4(v54);
    v38 = v51;
    v39 = v52;
    v40[0] = v53[0];
    *(v40 + 10) = *(v53 + 10);
    v34 = v47;
    v35 = v48;
    v36 = v49;
    v37 = v50;
    v30 = v43;
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v28 = v41;
    v29 = v42;
    v24 = sub_21D1577AC(&v28);
    v25 = sub_21D14D0D4(&v28);
    if (v24 != 1)
    {
      v22 = sub_21D11ED58(v23, *v25);
      return v22 & 1;
    }

    goto LABEL_5;
  }

  v14 = sub_21D14D0D4(v54);
  v38 = v51;
  v39 = v52;
  v40[0] = v53[0];
  *(v40 + 10) = *(v53 + 10);
  v34 = v47;
  v35 = v48;
  v36 = v49;
  v37 = v50;
  v30 = v43;
  v31 = v44;
  v32 = v45;
  v33 = v46;
  v28 = v41;
  v29 = v42;
  v15 = sub_21D1577AC(&v28);
  v16 = sub_21D14D0D4(&v28);
  if (v15 != 1)
  {
LABEL_5:
    v22 = 0;
    return v22 & 1;
  }

  v17 = v16;
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  v18 = *v14;
  v19 = *v17;
  sub_21DA28EE0(&v41, &v27);
  v20 = v18;
  v21 = v19;
  v22 = sub_21DBFB63C();

  sub_21DA28F18(&v41);
  return v22 & 1;
}

uint64_t TTRAccountsListsViewModel.Item.sectionProxyProxiedUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v4);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    v7 = sub_21DBF56BC();
    v8 = *(v7 - 8);
    (*(v8 + 32))(a1, v4, v7);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }

  else
  {
    sub_21D101450(v4, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    v5 = sub_21DBF56BC();
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

uint64_t TTRAccountsListsViewModel.validateHashtagSelection(_:allowsLenientFallback:)(uint64_t a1, int a2)
{
  v15[1] = a2;
  v16 = a1;
  v3 = sub_21DBF78CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v15 - v8;
  v10 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
  MEMORY[0x28223BE20](v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D3954(v2 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_hashtagsItem, v9, &qword_27CE5A490, &unk_21DC0F950);
  v13 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  if ((*(*(v13 - 8) + 48))(v9, 1, v13) == 1)
  {
    sub_21D0CF7E0(v9, &qword_27CE5A490, &unk_21DC0F950);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_21D100E28(v9, v12, type metadata accessor for TTRAccountsListsViewModel.Hashtags);
      sub_21DBF8E0C();
      sub_21DBF784C();
      sub_21DBF6BFC();
      (*(v4 + 8))(v6, v3);
      return sub_21D101450(v12, type metadata accessor for TTRAccountsListsViewModel.Hashtags);
    }

    sub_21D101450(v9, type metadata accessor for TTRAccountsListsViewModel.Item);
  }

  return sub_21DBF6BCC();
}

uint64_t TTRAccountsListsViewModel.validatePinnedListSelection(_:)(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CB0, &unk_21DC36540);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = v47 - v6;
  v48 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  MEMORY[0x28223BE20](v48);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v47 - v15;
  v17 = a1[11];
  v54[10] = a1[10];
  v54[11] = v17;
  v55[0] = a1[12];
  *(v55 + 10) = *(a1 + 202);
  v18 = a1[7];
  v54[6] = a1[6];
  v54[7] = v18;
  v19 = a1[9];
  v54[8] = a1[8];
  v54[9] = v19;
  v20 = a1[3];
  v54[2] = a1[2];
  v54[3] = v20;
  v21 = a1[5];
  v54[4] = a1[4];
  v54[5] = v21;
  v22 = a1[1];
  v54[0] = *a1;
  v54[1] = v22;
  LODWORD(a1) = sub_21D1577AC(v54);
  v23 = sub_21D14D0D4(v54);
  if (a1 != 1)
  {
    v47[1] = v10;
    v26 = *v23;
    result = TTRAccountsListsViewModel.visiblePinnedLists.getter();
    v27 = result;
    v51 = *(result + 16);
    if (!v51)
    {
LABEL_57:

      return 0;
    }

    v28 = v11;
    v29 = 0;
    v50 = v28;
    v49 = result + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    while (1)
    {
      if (v29 >= *(v27 + 16))
      {
        __break(1u);
        return result;
      }

      sub_21D0FE734(v49 + *(v50 + 72) * v29, v16, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
      sub_21D0FE734(v16, v13, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21D101450(v16, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
        result = sub_21D101450(v13, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
        goto LABEL_7;
      }

      sub_21D100E28(v13, v9, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      v30 = v9[*(v48 + 20)];
      if (v30 <= 2)
      {
        if (!v9[*(v48 + 20)])
        {
          v31 = 0xE500000000000000;
          v32 = 0x7961646F74;
          if (v26 <= 2)
          {
            goto LABEL_26;
          }

          goto LABEL_39;
        }

        if (v30 != 1)
        {
          v31 = 0xE300000000000000;
          v32 = 7105633;
          if (v26 <= 2)
          {
            goto LABEL_26;
          }

          goto LABEL_39;
        }

        v32 = 0x656C756465686373;
      }

      else
      {
        if (v9[*(v48 + 20)] <= 4u)
        {
          if (v30 == 3)
          {
            v31 = 0xE700000000000000;
            v32 = 0x64656767616C66;
            if (v26 <= 2)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v31 = 0xE800000000000000;
            v32 = 0x64656E6769737361;
            if (v26 <= 2)
            {
              goto LABEL_26;
            }
          }

          goto LABEL_39;
        }

        if (v30 == 5)
        {
          v32 = 0x6E756F4669726973;
          v31 = 0xEF737070416E4964;
          if (v26 <= 2)
          {
            goto LABEL_26;
          }

          goto LABEL_39;
        }

        v32 = 0x6574656C706D6F63;
      }

      v31 = 0xE900000000000064;
      if (v26 <= 2)
      {
LABEL_26:
        if (v26)
        {
          if (v26 == 1)
          {
            v33 = 0x656C756465686373;
          }

          else
          {
            v33 = 7105633;
          }

          if (v26 == 1)
          {
            v34 = 0xE900000000000064;
          }

          else
          {
            v34 = 0xE300000000000000;
          }

          if (v32 == v33)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v34 = 0xE500000000000000;
          if (v32 == 0x7961646F74)
          {
            goto LABEL_54;
          }
        }

        goto LABEL_55;
      }

LABEL_39:
      v35 = 0x6E756F4669726973;
      if (v26 != 5)
      {
        v35 = 0x6574656C706D6F63;
      }

      v36 = 0xEF737070416E4964;
      if (v26 != 5)
      {
        v36 = 0xE900000000000064;
      }

      v37 = 0x64656E6769737361;
      if (v26 == 3)
      {
        v37 = 0x64656767616C66;
      }

      v38 = 0xE700000000000000;
      if (v26 != 3)
      {
        v38 = 0xE800000000000000;
      }

      if (v26 <= 4)
      {
        v39 = v37;
      }

      else
      {
        v39 = v35;
      }

      if (v26 <= 4)
      {
        v34 = v38;
      }

      else
      {
        v34 = v36;
      }

      if (v32 == v39)
      {
LABEL_54:
        if (v31 == v34)
        {

          sub_21D101450(v9, type metadata accessor for TTRAccountsListsViewModel.SmartList);
          sub_21D101450(v16, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
LABEL_62:

          return 1;
        }
      }

LABEL_55:
      v40 = sub_21DBFC64C();

      sub_21D101450(v9, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      result = sub_21D101450(v16, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
      if (v40)
      {
        goto LABEL_62;
      }

LABEL_7:
      if (v51 == ++v29)
      {
        goto LABEL_57;
      }
    }
  }

  v24 = TTRAccountsListsViewModel.visiblePinnedLists.getter();
  sub_21DA1CB78(v24, v7);

  sub_21D0D523C(v7, v4, &qword_27CE61CB0, &unk_21DC36540);
  if ((*(v11 + 48))(v4, 1, v10) == 1)
  {
    return 0;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = v4[11];
    v52[10] = v4[10];
    v52[11] = v41;
    v53[0] = v4[12];
    *(v53 + 10) = *(v4 + 202);
    v42 = v4[7];
    v52[6] = v4[6];
    v52[7] = v42;
    v43 = v4[9];
    v52[8] = v4[8];
    v52[9] = v43;
    v44 = v4[3];
    v52[2] = v4[2];
    v52[3] = v44;
    v45 = v4[5];
    v52[4] = v4[4];
    v52[5] = v45;
    v46 = v4[1];
    v52[0] = *v4;
    v52[1] = v46;
    sub_21D1077D8(v52);
    return 1;
  }

  else
  {
    sub_21D101450(v4, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    return 0;
  }
}

uint64_t TTRAccountsListsViewModel.alternativePinnedListSelection(for:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C60, &unk_21DC29A40);
  sub_21D0D0F1C(&qword_27CE61C68, &qword_27CE61C60, &unk_21DC29A40, MEMORY[0x277D83970]);
  return sub_21DBFA48C();
}

double sub_21DA1FE5C@<D0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CB0, &unk_21DC36540);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  TTRAccountsListsViewModel.Item.listOrCustomSmartList.getter(v49);
  v51[10] = v49[10];
  v51[11] = v49[11];
  v52[0] = v50[0];
  *(v52 + 10) = *(v50 + 10);
  v51[6] = v49[6];
  v51[7] = v49[7];
  v51[8] = v49[8];
  v51[9] = v49[9];
  v51[2] = v49[2];
  v51[3] = v49[3];
  v51[4] = v49[4];
  v51[5] = v49[5];
  v51[0] = v49[0];
  v51[1] = v49[1];
  if (sub_21D157494(v51) == 1)
  {
    goto LABEL_6;
  }

  v8 = TTRAccountsListsViewModel.visiblePinnedLists.getter();
  sub_21DA1CB78(v8, v7);
  sub_21D0CF7E0(v49, &qword_27CE64CD0, &qword_21DC376B8);

  sub_21D0D523C(v7, v4, &qword_27CE61CB0, &unk_21DC36540);
  v9 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  if ((*(*(v9 - 8) + 48))(v4, 1, v9) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21D101450(v4, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
LABEL_6:
    sub_21DA31184(&v36);
    goto LABEL_7;
  }

  v10 = v4[11];
  v33 = v4[10];
  v34 = v10;
  v35[0] = v4[12];
  *(v35 + 10) = *(v4 + 202);
  v11 = v4[7];
  v29 = v4[6];
  v30 = v11;
  v12 = v4[9];
  v31 = v4[8];
  v32 = v12;
  v13 = v4[3];
  v25 = v4[2];
  v26 = v13;
  v14 = v4[5];
  v27 = v4[4];
  v28 = v14;
  v15 = v4[1];
  v23 = *v4;
  v24 = v15;
  sub_21D14DB00(&v23);
  v46 = v33;
  v47 = v34;
  v48[0] = v35[0];
  *(v48 + 10) = *(v35 + 10);
  v42 = v29;
  v43 = v30;
  v44 = v31;
  v45 = v32;
  v38 = v25;
  v39 = v26;
  v40 = v27;
  v41 = v28;
  v36 = v23;
  v37 = v24;
  nullsub_1();
LABEL_7:
  v16 = v47;
  a1[10] = v46;
  a1[11] = v16;
  a1[12] = v48[0];
  *(a1 + 202) = *(v48 + 10);
  v17 = v43;
  a1[6] = v42;
  a1[7] = v17;
  v18 = v45;
  a1[8] = v44;
  a1[9] = v18;
  v19 = v39;
  a1[2] = v38;
  a1[3] = v19;
  v20 = v41;
  a1[4] = v40;
  a1[5] = v20;
  result = *&v36;
  v22 = v37;
  *a1 = v36;
  a1[1] = v22;
  return result;
}

uint64_t TTRAccountsListsViewModel.alternativeItemSelection(for:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[11];
  v17[10] = a1[10];
  v17[11] = v7;
  v18[0] = a1[12];
  *(v18 + 10) = *(a1 + 202);
  v8 = a1[7];
  v17[6] = a1[6];
  v17[7] = v8;
  v9 = a1[9];
  v17[8] = a1[8];
  v17[9] = v9;
  v10 = a1[3];
  v17[2] = a1[2];
  v17[3] = v10;
  v11 = a1[5];
  v17[4] = a1[4];
  v17[5] = v11;
  v12 = a1[1];
  v17[0] = *a1;
  v17[1] = v12;
  LODWORD(a1) = sub_21D1577AC(v17);
  v13 = sub_21D14D0D4(v17);
  if (a1 == 1)
  {
    v14 = [*v13 uuid];
    sub_21DBF568C();

    swift_storeEnumTagMultiPayload();
    sub_21D1083C8(v6, a2);
    return sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  }

  else
  {
    v16 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

uint64_t sub_21DA202E0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v70 = a1;
  v71 = a2;
  v67 = sub_21DBF6C1C();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v64 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v63 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CB0, &unk_21DC36540);
  MEMORY[0x28223BE20](v6 - 8);
  v68 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = &v63 - v9;
  v10 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - v17;
  v69 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v19 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v63 - v23;
  v25 = type metadata accessor for TTRListType(0);
  MEMORY[0x28223BE20](v25);
  v27 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0FE734(v70, v27, type metadata accessor for TTRListType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v50 = v65;
      v51 = *(v65 + 32);
      v52 = v67;
      v51(v5, v27, v67);
      v53 = v64;
      TTRAccountsListsViewModel.validateHashtagSelection(_:allowsLenientFallback:)(v5, 1);
      v54 = sub_21DBF6BEC();
      v55 = *(v50 + 8);
      v55(v5, v52);
      if ((v54 & 1) == 0)
      {
        v43 = v71;
        v51(v71, v53, v52);
        v49 = type metadata accessor for TTRAccountsListsViewModel.FallbackSelection(0);
        goto LABEL_21;
      }

      v55(v53, v52);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v41 = type metadata accessor for TTRListType;
LABEL_10:
        sub_21D101450(v27, v41);
        goto LABEL_18;
      }

      v59 = *v27;
      v60 = [*v27 uuid];
      sub_21DBF568C();

      swift_storeEnumTagMultiPayload();
      TTRAccountsListsViewModel.item(with:)(v12, v15);

      sub_21D101450(v12, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      if ((*(v19 + 48))(v15, 1, v69) != 1)
      {
        sub_21D100E28(v15, v21, type metadata accessor for TTRAccountsListsViewModel.Item);
        v43 = v71;
        sub_21D100E28(v21, v71, type metadata accessor for TTRAccountsListsViewModel.Item);
        v49 = type metadata accessor for TTRAccountsListsViewModel.FallbackSelection(0);
        goto LABEL_21;
      }

      sub_21D0CF7E0(v15, &qword_27CE5A490, &unk_21DC0F950);
    }

LABEL_18:
    v61 = type metadata accessor for TTRAccountsListsViewModel.FallbackSelection(0);
    return (*(*(v61 - 8) + 56))(v71, 1, 1, v61);
  }

  if (EnumCaseMultiPayload >= 2)
  {
    LOBYTE(v72) = *v27;
    sub_21D14DACC(&v72);
    goto LABEL_12;
  }

  v29 = *v27;
  v30 = [*v27 uuid];
  sub_21DBF568C();

  swift_storeEnumTagMultiPayload();
  sub_21D1083C8(v12, v18);
  sub_21D101450(v12, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  if ((*(v19 + 48))(v18, 1, v69) == 1)
  {
    sub_21D0CF7E0(v18, &qword_27CE5A490, &unk_21DC0F950);
    v31 = TTRAccountsListsViewModel.visiblePinnedLists.getter();
    v32 = v66;
    sub_21DA1CB78(v31, v66);

    v33 = v32;
    v27 = v68;
    sub_21D0D523C(v33, v68, &qword_27CE61CB0, &unk_21DC36540);
    v34 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
    if ((*(*(v34 - 8) + 48))(v27, 1, v34) != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v35 = *(v27 + 11);
        v82 = *(v27 + 10);
        v83 = v35;
        *v84 = *(v27 + 12);
        *&v84[10] = *(v27 + 202);
        v36 = *(v27 + 7);
        v78 = *(v27 + 6);
        v79 = v36;
        v37 = *(v27 + 9);
        v80 = *(v27 + 8);
        v81 = v37;
        v38 = *(v27 + 3);
        v74 = *(v27 + 2);
        v75 = v38;
        v39 = *(v27 + 5);
        v76 = *(v27 + 4);
        v77 = v39;
        v40 = *(v27 + 1);
        v72 = *v27;
        v73 = v40;
        sub_21D14DB00(&v72);
LABEL_12:
        v42 = v83;
        v43 = v71;
        v71[10] = v82;
        v43[11] = v42;
        v43[12] = *v84;
        *(v43 + 202) = *&v84[10];
        v44 = v79;
        v43[6] = v78;
        v43[7] = v44;
        v45 = v81;
        v43[8] = v80;
        v43[9] = v45;
        v46 = v75;
        v43[2] = v74;
        v43[3] = v46;
        v47 = v77;
        v43[4] = v76;
        v43[5] = v47;
        v48 = v73;
        *v43 = v72;
        v43[1] = v48;
        v49 = type metadata accessor for TTRAccountsListsViewModel.FallbackSelection(0);
LABEL_21:
        swift_storeEnumTagMultiPayload();
        v57 = *(*(v49 - 8) + 56);
        v58 = v43;
        return v57(v58, 0, 1, v49);
      }

      v41 = type metadata accessor for TTRAccountsListsViewModel.PinnedList;
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  sub_21D100E28(v18, v24, type metadata accessor for TTRAccountsListsViewModel.Item);
  v56 = v71;
  sub_21D100E28(v24, v71, type metadata accessor for TTRAccountsListsViewModel.Item);
  v49 = type metadata accessor for TTRAccountsListsViewModel.FallbackSelection(0);
  swift_storeEnumTagMultiPayload();
  v57 = *(*(v49 - 8) + 56);
  v58 = v56;
  return v57(v58, 0, 1, v49);
}

uint64_t TTRAccountsListsViewModel.fallbackSelectionForEmptySelection(lastSelectedListInWindow:globalLastSelectedList:)@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, _OWORD *a3@<X8>)
{
  v154 = a2;
  v164 = a1;
  v168 = a3;
  v144 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  MEMORY[0x28223BE20](v144);
  v143 = &v142 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v149 = (&v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v156 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v5 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v145 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v142 - v8;
  MEMORY[0x28223BE20](v10);
  v153 = &v142 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v12 - 8);
  v151 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v142 - v15;
  MEMORY[0x28223BE20](v17);
  v155 = &v142 - v18;
  MEMORY[0x28223BE20](v19);
  v150 = &v142 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64C48, &qword_21DC36550);
  MEMORY[0x28223BE20](v21 - 8);
  v160 = &v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v159 = &v142 - v24;
  MEMORY[0x28223BE20](v25);
  v161 = &v142 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v142 - v28;
  MEMORY[0x28223BE20](v30);
  v158 = (&v142 - v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0, &unk_21DC1BD10);
  MEMORY[0x28223BE20](v32 - 8);
  v152 = &v142 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v142 - v35;
  v37 = type metadata accessor for TTRListType(0);
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v146 = &v142 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v142 - v41;
  if (qword_280D0F4D0 != -1)
  {
    swift_once();
  }

  v157 = v5;
  v43 = sub_21DBF84BC();
  v166 = __swift_project_value_buffer(v43, qword_280D0F4D8);
  v44 = sub_21DBF84AC();
  v45 = sub_21DBFAE9C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_21D0C9000, v44, v45, "TTRAccountsListViewModel: computing fallbackSelectionForEmptySelection", v46, 2u);
    MEMORY[0x223D46520](v46, -1, -1);
  }

  v47 = type metadata accessor for TTRAccountsListsViewModel.FallbackSelection(0);
  v169 = *(v47 - 8);
  v48 = *(v169 + 56);
  v167 = v47;
  v163 = v48;
  v162 = v169 + 56;
  (v48)(v168, 1, 1);
  sub_21D0D3954(v164, v36, &qword_27CE650E0, &unk_21DC1BD10);
  v49 = *(v38 + 48);
  if (v49(v36, 1, v37) == 1)
  {
    sub_21D0CF7E0(v36, &qword_27CE650E0, &unk_21DC1BD10);
    v50 = v168;
  }

  else
  {
    sub_21D100E28(v36, v42, type metadata accessor for TTRListType);
    v51 = sub_21DBF84AC();
    v52 = sub_21DBFAE9C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_21D0C9000, v51, v52, "fallbackSelectionForEmptySelection: trying to use lastSelectedListInWindow", v53, 2u);
      MEMORY[0x223D46520](v53, -1, -1);
    }

    v54 = v158;
    sub_21DA202E0(v42, v158);
    sub_21D101450(v42, type metadata accessor for TTRListType);
    v50 = v168;
    sub_21D0CF7E0(v168, &qword_27CE64C48, &qword_21DC36550);
    sub_21D0D523C(v54, v50, &qword_27CE64C48, &qword_21DC36550);
  }

  sub_21D0D3954(v50, v29, &qword_27CE64C48, &qword_21DC36550);
  v55 = *(v169 + 48);
  v169 += 48;
  v164 = v55;
  v56 = v55(v29, 1, v167);
  sub_21D0CF7E0(v29, &qword_27CE64C48, &qword_21DC36550);
  if (v56 == 1)
  {
    v57 = v152;
    sub_21D0D3954(v154, v152, &qword_27CE650E0, &unk_21DC1BD10);
    if (v49(v57, 1, v37) == 1)
    {
      sub_21D0CF7E0(v57, &qword_27CE650E0, &unk_21DC1BD10);
    }

    else
    {
      v58 = v146;
      sub_21D100E28(v57, v146, type metadata accessor for TTRListType);
      v59 = sub_21DBF84AC();
      v60 = sub_21DBFAE9C();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_21D0C9000, v59, v60, "fallbackSelectionForEmptySelection: trying to use globalLastSelectedList", v61, 2u);
        MEMORY[0x223D46520](v61, -1, -1);
      }

      v62 = v158;
      sub_21DA202E0(v58, v158);
      sub_21D101450(v58, type metadata accessor for TTRListType);
      sub_21D0CF7E0(v50, &qword_27CE64C48, &qword_21DC36550);
      sub_21D0D523C(v62, v50, &qword_27CE64C48, &qword_21DC36550);
    }
  }

  v63 = v161;
  sub_21D0D3954(v50, v161, &qword_27CE64C48, &qword_21DC36550);
  v64 = v167;
  v65 = v164;
  v66 = v164(v63, 1, v167);
  v67 = v63;
  v68 = v64;
  sub_21D0CF7E0(v67, &qword_27CE64C48, &qword_21DC36550);
  if (v66 == 1)
  {
    v69 = sub_21DBF84AC();
    v70 = sub_21DBFAE9C();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_21D0C9000, v69, v70, "fallbackSelectionForEmptySelection: trying to use firstListOrCustomSmartListDescendant", v71, 2u);
      MEMORY[0x223D46520](v71, -1, -1);
    }

    v72 = *(v165 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A10, &qword_21DC0CC00);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_21DC08D00;
    v74 = v157;
    v75 = (v157 + 56);
    v76 = *(v157 + 56);
    v77 = v155;
    v78 = v156;
    v76(v155, 1, 1, v156);
    *&v170 = v72;
    swift_retain_n();
    v161 = v72;
    result = sub_21D0E8DA0(v77);
    v80 = v153;
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    v158 = v75;
    MEMORY[0x28223BE20](result);
    *(&v142 - 2) = &v170;
    *(&v142 - 1) = v77;
    v82 = sub_21D174668(sub_21DA28F64, (&v142 - 4), 0, v81);
    v154 = v76;
    v83 = v74;
    v84 = v82;
    sub_21D0CF7E0(v77, &qword_27CE5A490, &unk_21DC0F950);
    *(v73 + 32) = v84;
    *(v73 + 40) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64C50, &unk_21DC36558);
    v85 = swift_allocObject();
    *(v85 + 16) = v161;
    v155 = v85;
    *(v85 + 24) = v73;
    sub_21DA1256C(v16);
    v86 = *(v83 + 48);
    v87 = v86(v16, 1, v78);
    v88 = v154;
    v68 = v167;
    if (v87 != 1)
    {
      while (2)
      {
        sub_21D100E28(v16, v80, type metadata accessor for TTRAccountsListsViewModel.Item);
        sub_21D0FE734(v80, v9, type metadata accessor for TTRAccountsListsViewModel.Item);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
          case 2u:
          case 3u:
          case 4u:
          case 7u:
          case 8u:
          case 9u:
          case 0xAu:
          case 0xBu:
          case 0xCu:
          case 0xDu:
          case 0xEu:
            sub_21D101450(v9, type metadata accessor for TTRAccountsListsViewModel.Item);
            goto LABEL_25;
          case 5u:
          case 6u:
            v131 = v9[217];
            v132 = v9[216];
            v133 = v9[148];
            v134 = v9[147];
            v135 = v9[146];
            v136 = v9[145];
            v137 = v9[144];
            v138 = v9[120];
            v140 = *(v9 + 5);
            v139 = *(v9 + 6);
            v141 = *(v9 + 2);
            v170 = *v9;
            *v171 = v141;
            *&v171[8] = *(v9 + 24);
            *&v171[24] = v140;
            *v172 = v139;
            *&v172[8] = *(v9 + 56);
            *&v172[24] = *(v9 + 72);
            *&v172[40] = *(v9 + 88);
            *&v172[56] = *(v9 + 104);
            v172[72] = v138;
            v173 = *(v9 + 8);
            v174[0] = v137;
            v174[1] = v136;
            v174[2] = v135;
            v174[3] = v134;
            v174[4] = v133;
            *&v174[8] = *(v9 + 152);
            *&v174[24] = *(v9 + 168);
            *&v174[40] = *(v9 + 184);
            *&v174[56] = *(v9 + 200);
            v174[72] = v132;
            v174[73] = v131;
            sub_21D1077D8(&v170);

            swift_setDeallocating();

            swift_deallocClassInstance();
            v89 = v150;
            sub_21D100E28(v80, v150, type metadata accessor for TTRAccountsListsViewModel.Item);
            v90 = v89;
            v91 = 0;
            goto LABEL_22;
          case 0xFu:
          case 0x10u:
            goto LABEL_25;
          default:
            v95 = sub_21DBF56BC();
            (*(*(v95 - 8) + 8))(v9, v95);
LABEL_25:
            sub_21D101450(v80, type metadata accessor for TTRAccountsListsViewModel.Item);
            sub_21DA1256C(v16);
            if (v86(v16, 1, v78) != 1)
            {
              continue;
            }

            goto LABEL_21;
        }
      }
    }

LABEL_21:

    swift_setDeallocating();

    swift_deallocClassInstance();
    v89 = v150;
    v90 = v150;
    v91 = 1;
LABEL_22:
    v88(v90, v91, 1, v78);
    v92 = v89;
    v93 = v151;
    sub_21D0D523C(v92, v151, &qword_27CE5A490, &unk_21DC0F950);
    v94 = v86(v93, 1, v78);
    v50 = v168;
    if (v94 == 1)
    {
      sub_21D0CF7E0(v93, &qword_27CE5A490, &unk_21DC0F950);
    }

    else
    {
      sub_21D0CF7E0(v168, &qword_27CE64C48, &qword_21DC36550);
      v96 = v93;
      v97 = v145;
      sub_21D100E28(v96, v145, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D100E28(v97, v50, type metadata accessor for TTRAccountsListsViewModel.Item);
      swift_storeEnumTagMultiPayload();
      v163(v50, 0, 1, v68);
    }

    v65 = v164;
  }

  v98 = v159;
  sub_21D0D3954(v50, v159, &qword_27CE64C48, &qword_21DC36550);
  v99 = v65(v98, 1, v68);
  sub_21D0CF7E0(v98, &qword_27CE64C48, &qword_21DC36550);
  if (v99 == 1)
  {
    v100 = sub_21DBF84AC();
    v101 = sub_21DBFAE9C();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_21D0C9000, v100, v101, "fallbackSelectionForEmptySelection: trying to use visiblePinnedLists.first", v102, 2u);
      MEMORY[0x223D46520](v102, -1, -1);
    }

    v103 = TTRAccountsListsViewModel.visiblePinnedLists.getter();
    if (v103[2])
    {
      v104 = v149;
      sub_21D0FE734(v103 + ((*(v147 + 80) + 32) & ~*(v147 + 80)), v149, type metadata accessor for TTRAccountsListsViewModel.PinnedList);

      sub_21D0CF7E0(v50, &qword_27CE64C48, &qword_21DC36550);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v105 = v104[11];
        *&v174[16] = v104[10];
        *&v174[32] = v105;
        *&v174[48] = v104[12];
        *&v174[58] = *(v104 + 202);
        v106 = v104[7];
        *&v172[48] = v104[6];
        *&v172[64] = v106;
        v107 = v104[9];
        v173 = v104[8];
        *v174 = v107;
        v108 = v104[3];
        *&v171[16] = v104[2];
        *v172 = v108;
        v109 = v104[5];
        *&v172[16] = v104[4];
        *&v172[32] = v109;
        v110 = v104[1];
        v170 = *v104;
        *v171 = v110;
        sub_21D14DB00(&v170);
      }

      else
      {
        v112 = v104;
        v113 = v143;
        sub_21D100E28(v112, v143, type metadata accessor for TTRAccountsListsViewModel.SmartList);
        v114 = *(v113 + *(v144 + 20));
        sub_21D101450(v113, type metadata accessor for TTRAccountsListsViewModel.SmartList);
        LOBYTE(v170) = v114;
        sub_21D14DACC(&v170);
      }

      v111 = *&v174[32];
      v50[10] = *&v174[16];
      v50[11] = v111;
      v50[12] = *&v174[48];
      *(v50 + 202) = *&v174[58];
      v115 = *&v172[64];
      v50[6] = *&v172[48];
      v50[7] = v115;
      v116 = *v174;
      v50[8] = v173;
      v50[9] = v116;
      v117 = *v172;
      v50[2] = *&v171[16];
      v50[3] = v117;
      v118 = *&v172[32];
      v50[4] = *&v172[16];
      v50[5] = v118;
      v119 = *v171;
      *v50 = v170;
      v50[1] = v119;
      swift_storeEnumTagMultiPayload();
      v163(v50, 0, 1, v68);
    }

    else
    {
    }
  }

  v120 = v160;
  sub_21D0D3954(v50, v160, &qword_27CE64C48, &qword_21DC36550);
  v121 = v65(v120, 1, v68);
  result = sub_21D0CF7E0(v120, &qword_27CE64C48, &qword_21DC36550);
  if (v121 == 1)
  {
    v122 = sub_21DBF84AC();
    v123 = sub_21DBFAEDC();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&dword_21D0C9000, v122, v123, "fallbackSelectionForEmptySelection: show the 'All' list anyway", v124, 2u);
      MEMORY[0x223D46520](v124, -1, -1);
    }

    sub_21D0CF7E0(v50, &qword_27CE64C48, &qword_21DC36550);
    LOBYTE(v170) = 2;
    sub_21D14DACC(&v170);
    v125 = *&v174[32];
    v50[10] = *&v174[16];
    v50[11] = v125;
    v50[12] = *&v174[48];
    *(v50 + 202) = *&v174[58];
    v126 = *&v172[64];
    v50[6] = *&v172[48];
    v50[7] = v126;
    v127 = *v174;
    v50[8] = v173;
    v50[9] = v127;
    v128 = *v172;
    v50[2] = *&v171[16];
    v50[3] = v128;
    v129 = *&v172[32];
    v50[4] = *&v172[16];
    v50[5] = v129;
    v130 = *v171;
    *v50 = v170;
    v50[1] = v130;
    swift_storeEnumTagMultiPayload();
    return (v163)(v50, 0, 1, v68);
  }

  return result;
}

uint64_t TTRAccountsListsViewModel.moveItem(at:in:to:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  sub_21D0FE734(a2, &v17 - v12, type metadata accessor for TTRAccountsListsViewModel.Item);
  v14 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v15 = *(*(v14 - 8) + 56);
  v15(v13, 0, 1, v14);
  sub_21D0FE734(a4, v10, type metadata accessor for TTRAccountsListsViewModel.Item);
  v15(v10, 0, 1, v14);
  sub_21D260B34(a1, v13, a3, v10);
  sub_21D0CF7E0(v10, &qword_27CE5A490, &unk_21DC0F950);
  return sub_21D0CF7E0(v13, &qword_27CE5A490, &unk_21DC0F950);
}

Swift::Void __swiftcall TTRAccountsListsViewModel.performMoves(_:)(Swift::OpaquePointer a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v2 - 8);
  v38 = &v31 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A08, &unk_21DC0F960);
  MEMORY[0x28223BE20](v37);
  v36 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64C58, &unk_21DC36568);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = 0;
  rawValue = a1._rawValue;
  v33 = &v31 - v9;
  v12 = *(a1._rawValue + 2);
  v34 = OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree;
  v35 = v12;
  v13 = &qword_21DC0CD40;
  v14 = v12 == 0;
  if (v12)
  {
    goto LABEL_3;
  }

LABEL_2:
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B00, v13);
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v11 = v12;
  while (1)
  {
    sub_21D0D523C(v7, v10, &qword_27CE64C58, &unk_21DC36568);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B00, v13);
    if ((*(*(v19 - 8) + 48))(v10, 1, v19) == 1)
    {
      break;
    }

    v20 = &v10[*(v19 + 48)];
    v21 = &v10[*(v19 + 64)];
    v22 = v36;
    v23 = v13;
    sub_21D0D523C(v21, v36, &qword_27CE59A08, &unk_21DC0F960);
    v24 = v38;
    v40 = *(v39 + v34);
    v25 = v7;
    v26 = v37;
    v27 = *(v20 + *(v37 + 36));
    sub_21D0D3954(v20, v38, &qword_27CE5A490, &unk_21DC0F950);
    sub_21D0CF7E0(v20, &qword_27CE59A08, &unk_21DC0F960);
    v28 = *(v26 + 36);
    v7 = v25;
    v13 = v23;
    sub_21D260B34(v27, v24, *(v22 + v28), v22);
    v29 = v24;
    v10 = v33;
    sub_21D0CF7E0(v29, &qword_27CE5A490, &unk_21DC0F950);
    v30 = v22;
    v12 = v35;
    sub_21D0CF7E0(v30, &qword_27CE59A08, &unk_21DC0F960);
    sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.Item);
    v14 = v11 >= v12;
    if (v11 == v12)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (v14)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B00, v13);
    v17 = *(v16 - 8);
    sub_21D0D3954(rawValue + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v11, v7, &qword_27CE59B00, v13);
    if (__OFADD__(v11++, 1))
    {
      goto LABEL_11;
    }

    (*(v17 + 56))(v7, 0, 1, v16);
  }
}

uint64_t TTRAccountsListsViewModel.activePinnedListsDisplayOrder()()
{
  v41 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v1 = *(v41 - 1);
  MEMORY[0x28223BE20](v41);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  v44 = MEMORY[0x277D84F90];
  v19 = *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree);
  if (qword_280D14DE0 != -1)
  {
    swift_once();
  }

  v20 = sub_21DBF56BC();
  v21 = __swift_project_value_buffer(v20, qword_280D14DE8);
  (*(*(v20 - 8) + 16))(v12, v21, v20);
  swift_storeEnumTagMultiPayload();
  sub_21D1083C8(v12, v18);
  sub_21D101450(v12, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v43 = 0;
  sub_21D0D3954(v18, v15, &qword_27CE5A490, &unk_21DC0F950);
  if ((*(v1 + 48))(v15, 1, v41) == 1)
  {
    sub_21D0CF7E0(v15, &qword_27CE5A490, &unk_21DC0F950);
    swift_beginAccess();
    v22 = sub_21DBF8E0C();
    sub_21D33C190(v22, MEMORY[0x277D84F90], &v43, v19, &v44);

    sub_21D0CF7E0(v18, &qword_27CE5A490, &unk_21DC0F950);
    return v44;
  }

  v23 = v1;
  v39 = v18;
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v6);
  sub_21D101450(v15, type metadata accessor for TTRAccountsListsViewModel.Item);
  sub_21D100E28(v6, v9, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v40 = v19;
  v24 = sub_21D2916B0(v9);
  if (v24)
  {
    v25 = v24;
    v41 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE587A8, &qword_21DC0CC40);
    v26 = *(v23 + 72);
    v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_21DC08D00;
    v29 = *(*v25 + 120);
    swift_beginAccess();
    sub_21D0FE734(v25 + v29, v28 + v27, type metadata accessor for TTRAccountsListsViewModel.Item);
    v42 = v28;

    for (i = swift_weakLoadStrong(); i; i = swift_weakLoadStrong())
    {
      v31 = i;
      v32 = *(*i + 120);
      swift_beginAccess();
      sub_21D0FE734(v31 + v32, v3, type metadata accessor for TTRAccountsListsViewModel.Item);
      v34 = *(v28 + 16);
      v33 = *(v28 + 24);
      if (v34 >= v33 >> 1)
      {
        v28 = sub_21D103C5C((v33 > 1), v34 + 1, 1, v28);
      }

      *(v28 + 16) = v34 + 1;
      sub_21D100E28(v3, v28 + v27 + v34 * v26, type metadata accessor for TTRAccountsListsViewModel.Item);

      v42 = v28;
    }

    sub_21DA0F818();
    swift_beginAccess();
    v35 = v42;
    v36 = sub_21DBF8E0C();
    sub_21D33C190(v36, v35, &v43, v40, &v44);

    sub_21D101450(v41, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    sub_21D0CF7E0(v39, &qword_27CE5A490, &unk_21DC0F950);

    return v44;
  }

  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall TTRAccountsListsViewModel.hasAccountAvailableForUpgrade()()
{
  v86 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v86);
  v85 = &v68 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v4 = &v68 - v3;
  v84 = sub_21DBF56BC();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v77 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v83 = &v68 - v7;
  v8 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = &v68 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  v81 = *(v15 - 8);
  v16 = *(v81 + 8);
  MEMORY[0x28223BE20](v15 - 8);
  v78 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v68 - v18;
  MEMORY[0x28223BE20](v20);
  v88 = &v68 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v68 - v23;
  MEMORY[0x28223BE20](v25);
  v79 = &v68 - v26;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v68 - v29;
  v70 = v0;
  v31 = *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree);
  v90 = v9;
  v91 = *(v9 + 56);
  v92 = v9 + 56;
  v91(&v68 - v29, 1, 1, v8, v28);
  v89 = v31;
  v32 = sub_21D0E8DA0(v30);
  if (v32 < 0)
  {
    goto LABEL_47;
  }

  v87 = v32;
  v33 = v79;
  sub_21D0D523C(v30, v79, &qword_27CE5A490, &unk_21DC0F950);
  v80 = v24;
  sub_21D0D3954(v33, v24, &qword_27CE5A490, &unk_21DC0F950);
  v34 = (v81[80] + 24) & ~v81[80];
  v35 = swift_allocObject();
  *(v35 + 16) = v89;
  sub_21D0D523C(v33, v35 + v34, &qword_27CE5A490, &unk_21DC0F950);
  v90 += 6;
  v74 = (v82 + 32);
  v73 = (v82 + 16);
  v72 = (v82 + 8);
  v69 = 0x800000021DC63B60;
  v79 = 0x800000021DC73B80;
  swift_retain_n();
  swift_retain_n();
  v68 = v35;

  v36 = 0;
  v81 = v4;
  v37 = v78;
  v76 = v19;
  v75 = v14;
  while (1)
  {
    if (v36 == v87)
    {
      v38 = 1;
      v36 = v87;
      v39 = v88;
      goto LABEL_10;
    }

    v39 = v88;
    if (v36 >= v87)
    {
      break;
    }

    if (__OFADD__(v36, 1))
    {
      goto LABEL_46;
    }

    sub_21D107A34(v36, v80, v88);
    v38 = 0;
    ++v36;
LABEL_10:
    (v91)(v39, v38, 1, v8);
    sub_21D0D523C(v39, v19, &qword_27CE5A490, &unk_21DC0F950);
    v40 = *v90;
    if ((*v90)(v19, 1, v8) == 1)
    {

      sub_21D0CF7E0(v80, &qword_27CE5A490, &unk_21DC0F950);

      v63 = 0;
      v62 = 0;
      v66 = 0;
      goto LABEL_44;
    }

    sub_21D100E28(v19, v14, type metadata accessor for TTRAccountsListsViewModel.Item);
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v4);
    if (swift_getEnumCaseMultiPayload() < 2)
    {
      sub_21D101450(v4, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      sub_21D0FE734(v14, v37, type metadata accessor for TTRAccountsListsViewModel.Item);
      (v91)(v37, 0, 1, v8);
      goto LABEL_19;
    }

    v82 = v36;
    v41 = v8;
    v42 = v11;
    v43 = *v74;
    v44 = v77;
    v45 = v84;
    (*v74)(v77, v4, v84);
    v46 = v83;
    v43(v83, v44, v45);
    v47 = v85;
    (*v73)(v85, v46, v45);
    swift_storeEnumTagMultiPayload();
    v48 = v89;
    swift_beginAccess();
    v49 = *(v48 + 24);
    if (*(v49 + 16) && (v50 = sub_21D105CF4(v47), (v51 & 1) != 0))
    {
      v52 = *(*(v49 + 56) + 8 * v50);
      swift_endAccess();
      v53 = *(*v52 + 120);
      swift_beginAccess();
      v37 = v78;
      sub_21D0FE734(v52 + v53, v78, type metadata accessor for TTRAccountsListsViewModel.Item);
      v54 = 0;
      v11 = v42;
      v8 = v41;
    }

    else
    {
      swift_endAccess();
      v54 = 1;
      v11 = v42;
      v8 = v41;
      v37 = v78;
    }

    (v91)(v37, v54, 1, v8);
    sub_21D101450(v85, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    (*v72)(v83, v84);
    v55 = v40(v37, 1, v8);
    v4 = v81;
    v14 = v75;
    v19 = v76;
    v36 = v82;
    if (v55 == 1)
    {
      sub_21D0CF7E0(v37, &qword_27CE5A490, &unk_21DC0F950);
LABEL_4:
      LOBYTE(v32) = sub_21D101450(v14, type metadata accessor for TTRAccountsListsViewModel.Item);
    }

    else
    {
LABEL_19:
      sub_21D0FE734(v37, v11, type metadata accessor for TTRAccountsListsViewModel.Item);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_21D101450(v11, type metadata accessor for TTRAccountsListsViewModel.Item);
        sub_21D101450(v37, type metadata accessor for TTRAccountsListsViewModel.Item);
        goto LABEL_4;
      }

      v56 = v11[1];
      v95 = *v11;
      v96 = v56;
      sub_21D101450(v37, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D101450(v14, type metadata accessor for TTRAccountsListsViewModel.Item);
      v57 = BYTE8(v96);
      if (BYTE8(v96) > 3u)
      {
        if (BYTE8(v96) == 4)
        {
          v58 = 0xE500000000000000;
          v59 = 0x726F727265;
          goto LABEL_36;
        }

        if (BYTE8(v96) == 5)
        {
          v58 = 0xE800000000000000;
          v59 = 0x64656873696E6966;
          goto LABEL_36;
        }
      }

      else
      {
        if (BYTE8(v96) == 2)
        {
          v59 = 0x6C69617641746F6ELL;
          v58 = 0xEC000000656C6261;
          goto LABEL_36;
        }

        if (BYTE8(v96) == 3)
        {
          v58 = 0xEA00000000007373;
          v59 = 0x6572676F72506E69;
          goto LABEL_36;
        }
      }

      v93 = 0;
      v94 = 0xE000000000000000;
      sub_21DBFBEEC();

      v93 = 0xD000000000000024;
      v94 = v69;
      if (v57)
      {
        v60 = 1702195828;
      }

      else
      {
        v60 = 0x65736C6166;
      }

      if (v57)
      {
        v61 = 0xE400000000000000;
      }

      else
      {
        v61 = 0xE500000000000000;
      }

      MEMORY[0x223D42AA0](v60, v61);

      v59 = v93;
      v58 = v94;
LABEL_36:
      v62 = *(&v95 + 1);
      v63 = v95;
      v71 = *(&v96 + 1);
      v82 = v96;
      if (v59 == 0xD000000000000029 && v79 == v58)
      {

        goto LABEL_43;
      }

      v64 = v95;
      v65 = sub_21DBFC64C();

      if (v65)
      {

        v63 = v64;
LABEL_43:
        sub_21D0CF7E0(v80, &qword_27CE5A490, &unk_21DC0F950);

        v66 = v82;
LABEL_44:
        sub_21D1576C8(v63, v62, v66);
        LOBYTE(v32) = v62 != 0;
        return v32;
      }

      LOBYTE(v32) = sub_21D122250(&v95);
      v4 = v81;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return v32;
}

Swift::Bool __swiftcall TTRAccountsListsViewModel.hasUpgradedAccount()()
{
  v85 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v85);
  v84 = v68 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v4 = v68 - v3;
  v83 = sub_21DBF56BC();
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v77 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v82 = v68 - v7;
  v8 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = v68 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  v80 = *(v15 - 8);
  v16 = *(v80 + 8);
  MEMORY[0x28223BE20](v15 - 8);
  v78 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v68 - v18;
  MEMORY[0x28223BE20](v20);
  v87 = v68 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = v68 - v23;
  MEMORY[0x28223BE20](v25);
  v74 = (v68 - v26);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = v68 - v29;
  v70 = v0;
  v31 = *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree);
  v89 = v9;
  v90 = *(v9 + 56);
  v91 = v9 + 56;
  v90(v68 - v29, 1, 1, v8, v28);
  v88 = v31;
  v32 = sub_21D0E8DA0(v30);
  if (v32 < 0)
  {
    goto LABEL_47;
  }

  v86 = v32;
  v33 = v74;
  sub_21D0D523C(v30, v74, &qword_27CE5A490, &unk_21DC0F950);
  v79 = v24;
  sub_21D0D3954(v33, v24, &qword_27CE5A490, &unk_21DC0F950);
  v34 = (v80[80] + 24) & ~v80[80];
  v35 = swift_allocObject();
  *(v35 + 16) = v88;
  sub_21D0D523C(v33, v35 + v34, &qword_27CE5A490, &unk_21DC0F950);
  v89 += 6;
  v74 = (v81 + 32);
  v73 = (v81 + 16);
  v72 = (v81 + 8);
  v69 = 0x800000021DC63B60;
  swift_retain_n();
  swift_retain_n();
  v68[1] = v35;

  v36 = 0;
  v80 = v4;
  v37 = v78;
  v76 = v19;
  v75 = v14;
  while (1)
  {
    if (v36 == v86)
    {
      v38 = 1;
      v36 = v86;
      v39 = v87;
      goto LABEL_10;
    }

    v39 = v87;
    if (v36 >= v86)
    {
      break;
    }

    if (__OFADD__(v36, 1))
    {
      goto LABEL_46;
    }

    sub_21D107A34(v36, v79, v87);
    v38 = 0;
    ++v36;
LABEL_10:
    (v90)(v39, v38, 1, v8);
    sub_21D0D523C(v39, v19, &qword_27CE5A490, &unk_21DC0F950);
    v40 = *v89;
    if ((*v89)(v19, 1, v8) == 1)
    {

      sub_21D0CF7E0(v79, &qword_27CE5A490, &unk_21DC0F950);

      v63 = 0;
      v62 = 0;
      v66 = 0;
      goto LABEL_44;
    }

    sub_21D100E28(v19, v14, type metadata accessor for TTRAccountsListsViewModel.Item);
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v4);
    if (swift_getEnumCaseMultiPayload() < 2)
    {
      sub_21D101450(v4, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      sub_21D0FE734(v14, v37, type metadata accessor for TTRAccountsListsViewModel.Item);
      (v90)(v37, 0, 1, v8);
      goto LABEL_19;
    }

    v81 = v36;
    v41 = v8;
    v42 = v11;
    v43 = *v74;
    v44 = v77;
    v45 = v83;
    (*v74)(v77, v4, v83);
    v46 = v82;
    v43(v82, v44, v45);
    v47 = v84;
    (*v73)(v84, v46, v45);
    swift_storeEnumTagMultiPayload();
    v48 = v88;
    swift_beginAccess();
    v49 = *(v48 + 24);
    if (*(v49 + 16) && (v50 = sub_21D105CF4(v47), (v51 & 1) != 0))
    {
      v52 = *(*(v49 + 56) + 8 * v50);
      swift_endAccess();
      v53 = *(*v52 + 120);
      swift_beginAccess();
      v37 = v78;
      sub_21D0FE734(v52 + v53, v78, type metadata accessor for TTRAccountsListsViewModel.Item);
      v54 = 0;
      v11 = v42;
      v8 = v41;
    }

    else
    {
      swift_endAccess();
      v54 = 1;
      v11 = v42;
      v8 = v41;
      v37 = v78;
    }

    (v90)(v37, v54, 1, v8);
    sub_21D101450(v84, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    (*v72)(v82, v83);
    v55 = v40(v37, 1, v8);
    v4 = v80;
    v14 = v75;
    v19 = v76;
    v36 = v81;
    if (v55 == 1)
    {
      sub_21D0CF7E0(v37, &qword_27CE5A490, &unk_21DC0F950);
LABEL_4:
      LOBYTE(v32) = sub_21D101450(v14, type metadata accessor for TTRAccountsListsViewModel.Item);
    }

    else
    {
LABEL_19:
      sub_21D0FE734(v37, v11, type metadata accessor for TTRAccountsListsViewModel.Item);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_21D101450(v11, type metadata accessor for TTRAccountsListsViewModel.Item);
        sub_21D101450(v37, type metadata accessor for TTRAccountsListsViewModel.Item);
        goto LABEL_4;
      }

      v56 = v11[1];
      v94 = *v11;
      v95 = v56;
      sub_21D101450(v37, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D101450(v14, type metadata accessor for TTRAccountsListsViewModel.Item);
      v57 = BYTE8(v95);
      if (BYTE8(v95) > 3u)
      {
        if (BYTE8(v95) == 4)
        {
          v58 = 0xE500000000000000;
          v59 = 0x726F727265;
          goto LABEL_36;
        }

        if (BYTE8(v95) == 5)
        {
          v58 = 0xE800000000000000;
          v59 = 0x64656873696E6966;
          goto LABEL_36;
        }
      }

      else
      {
        if (BYTE8(v95) == 2)
        {
          v59 = 0x6C69617641746F6ELL;
          v58 = 0xEC000000656C6261;
          goto LABEL_36;
        }

        if (BYTE8(v95) == 3)
        {
          v58 = 0xEA00000000007373;
          v59 = 0x6572676F72506E69;
          goto LABEL_36;
        }
      }

      v92 = 0;
      v93 = 0xE000000000000000;
      sub_21DBFBEEC();

      v92 = 0xD000000000000024;
      v93 = v69;
      if (v57)
      {
        v60 = 1702195828;
      }

      else
      {
        v60 = 0x65736C6166;
      }

      if (v57)
      {
        v61 = 0xE400000000000000;
      }

      else
      {
        v61 = 0xE500000000000000;
      }

      MEMORY[0x223D42AA0](v60, v61);

      v59 = v92;
      v58 = v93;
LABEL_36:
      v62 = *(&v94 + 1);
      v63 = v94;
      v71 = *(&v95 + 1);
      v81 = v95;
      if (v59 == 0x64656873696E6966 && v58 == 0xE800000000000000)
      {

        goto LABEL_43;
      }

      v64 = v94;
      v65 = sub_21DBFC64C();

      if (v65)
      {

        v63 = v64;
LABEL_43:
        sub_21D0CF7E0(v79, &qword_27CE5A490, &unk_21DC0F950);

        v66 = v81;
LABEL_44:
        sub_21D1576C8(v63, v62, v66);
        LOBYTE(v32) = v62 != 0;
        return v32;
      }

      LOBYTE(v32) = sub_21D122250(&v94);
      v4 = v80;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return v32;
}

Swift::Bool __swiftcall TTRAccountsListsViewModel.canDisplay(_:)(RemindersUICore::TTRListType::PredefinedSmartListType a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_smartListDisplayability);
  if (*(v2 + 16) && (v3 = sub_21D10186C(*a1), (v4 & 1) != 0))
  {
    return *(*(v2 + 56) + v3);
  }

  else
  {
    return 0;
  }
}

void sub_21DA24368(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180, &unk_21DC08F30) + 52);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (v7 > 2)
  {
    if (v7 == 3 && v6[2])
    {
      sub_21D0FF19C(v6, 3u);
      v11 = sub_21D17E07C(a2);
      if (v12)
      {
        v13 = v6[7] + 16 * v11;
        v14 = *v13;
        LOBYTE(v13) = *(v13 + 8);
        *a3 = v14;
        *(a3 + 8) = v13;
        v15 = v14;
        sub_21D103A34(v6, 3u);
        return;
      }

      sub_21D103A34(v6, 3u);
    }

    goto LABEL_7;
  }

  if (!v7)
  {
LABEL_7:
    *a3 = 0;
    v10 = -1;
    goto LABEL_16;
  }

  if (v7 != 1)
  {
    sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
    v16 = [v6 objectID];
    v17 = sub_21DBFB63C();

    if (v17)
    {
      v10 = 1;
      *a3 = v6;
      goto LABEL_16;
    }

    v18 = v6;
    v19 = 2;
LABEL_15:
    sub_21D103A34(v18, v19);
    v10 = -1;
    *a3 = 0;
    goto LABEL_16;
  }

  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  v8 = [v6 objectID];
  v9 = sub_21DBFB63C();

  if ((v9 & 1) == 0)
  {
    v18 = v6;
    v19 = 1;
    goto LABEL_15;
  }

  v10 = 0;
  *a3 = v6;
LABEL_16:
  *(a3 + 8) = v10;
}

uint64_t TTRAccountsListsViewModel.debugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree);
  v9 = MEMORY[0x277D84F90];
  v5 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);

  sub_21D346788(v3, v4, v4, &v9);

  sub_21D0CF7E0(v3, &qword_27CE5A490, &unk_21DC0F950);
  v8 = v9;
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
  v6 = sub_21DBFA07C();
  swift_bridgeObjectRelease_n();
  return v6;
}

uint64_t _s15RemindersUICore25TTRAccountsListsViewModelC4ItemO15identitiesEqualySbAE_AEtFZ_0()
{
  v0 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(&v8 - v4);
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v2);
  v6 = _s15RemindersUICore25TTRAccountsListsViewModelC14ItemIdentifierO2eeoiySbAE_AEtFZ_0(v5, v2);
  sub_21D101450(v2, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  sub_21D101450(v5, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  return v6 & 1;
}

uint64_t sub_21DA24864()
{
  v1 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  *(v4 + 16) = 2;
  v5 = swift_allocObject();
  *(v5 + 16) = 2;
  v6 = swift_allocObject();
  *(v6 + 16) = 2;
  sub_21D0FE734(v0, v3, type metadata accessor for TTRAccountsListsViewModel.Item);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 8u:
    case 0xAu:
      v10 = sub_21DA24C70(v5);
      goto LABEL_10;
    case 2u:
    case 3u:
    case 0xDu:
      v10 = sub_21DA24CD4(v6);
      goto LABEL_10;
    case 4u:
      v9 = *(v3 + 2);
      v13 = v3[26];

      LOBYTE(v9) = v13 ^ 1;
      LOBYTE(v8) = 1;
      break;
    case 5u:
    case 6u:
    case 9u:
    case 0xBu:
    case 0xEu:
      sub_21D101450(v3, type metadata accessor for TTRAccountsListsViewModel.Item);
      goto LABEL_3;
    case 7u:
      sub_21D101450(v3, type metadata accessor for TTRAccountsListsViewModel.Item);
      v7 = sub_21DA24C08(v4);
      goto LABEL_4;
    case 0xCu:
      v10 = sub_21DA24C08(v4);
LABEL_10:
      LOBYTE(v8) = v10;
      LODWORD(v9) = (v10 >> 8) & 1;
      sub_21D101450(v3, type metadata accessor for TTRAccountsListsViewModel.Item);
      goto LABEL_11;
    case 0xFu:
      v7 = sub_21DA24C70(v5);
      goto LABEL_4;
    case 0x10u:
LABEL_3:
      v7 = sub_21DA24CD4(v6);
LABEL_4:
      v8 = v7;

      LODWORD(v9) = (v8 >> 8) & 1;
      break;
    default:
      v14 = sub_21DA24C70(v5);
      LOBYTE(v8) = v14;
      LODWORD(v9) = (v14 >> 8) & 1;
      v15 = sub_21DBF56BC();
      (*(*(v15 - 8) + 8))(v3, v15);
LABEL_11:

      break;
  }

  if (v9)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 0xFFFFFFFE | v8 & 1;
}

uint64_t TTRAccountsListsViewModel.Item.recentlyDeletedList.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0FE734(v2, v6, type metadata accessor for TTRAccountsListsViewModel.Item);
  result = swift_getEnumCaseMultiPayload();
  if (result == 14)
  {
    v8 = *v6;
    v9 = v6[1];
    v10 = v6[2];
    v11 = v6[3];
  }

  else
  {
    result = sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.Item);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  *a1 = v8;
  a1[1] = v9;
  a1[2] = v10;
  a1[3] = v11;
  return result;
}

uint64_t sub_21DA24C08(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = (a1 + 16);
  v2 = v3;
  if (v3 == 2)
  {
    LOBYTE(v2) = 1;
    v4 = v1;
    swift_beginAccess();
    *v4 = 257;
    v5 = 256;
  }

  else
  {
    v5 = v2 & 0x100;
  }

  return v5 | v2 & 1u;
}

uint64_t sub_21DA24C70(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = (a1 + 16);
  v2 = v3;
  if (v3 == 2)
  {
    LOBYTE(v2) = 1;
    v4 = v1;
    swift_beginAccess();
    v5 = 0;
    *v4 = 1;
  }

  else
  {
    v5 = v2 & 0x100;
  }

  return v5 | v2 & 1u;
}

uint64_t sub_21DA24CD4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = (a1 + 16);
  v2 = v3;
  if (v3 == 2)
  {
    v4 = v1;
    swift_beginAccess();
    LOBYTE(v2) = 0;
    v5 = 0;
    *v4 = 0;
  }

  else
  {
    v5 = v2 & 0x100;
  }

  return v5 | v2 & 1u;
}

uint64_t TTRAccountsListsViewModel.Item.debugDescription.getter()
{
  v1 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF56BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0FE734(v0, v10, type metadata accessor for TTRAccountsListsViewModel.Item);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.Item);
      return 0xD000000000000012;
    case 2u:
      sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.Item);
      return 0x694C64656E6E6970;
    case 3u:
      sub_21D100E28(v10, v3, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      sub_21DBFBEEC();

      *&v46 = 0xD00000000000001CLL;
      *(&v46 + 1) = 0x800000021DC73C80;
      LOBYTE(v58) = v3[*(v1 + 20)];
      v24 = TTRListType.PredefinedSmartListType.longTitle.getter();
      MEMORY[0x223D42AA0](v24);

      MEMORY[0x223D42AA0](41, 0xE100000000000000);
      v12 = v46;
      sub_21D101450(v3, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      goto LABEL_14;
    case 4u:
      v16 = *v10;
      v17 = *(v10 + 1);
      v18 = *(v10 + 2);
      strcpy(&v46, "account(");
      BYTE9(v46) = 0;
      WORD5(v46) = 0;
      HIDWORD(v46) = -402653184;
      sub_21DBF8E0C();
      MEMORY[0x223D42AA0](v16, v17);

      MEMORY[0x223D42AA0](41, 0xE100000000000000);

      goto LABEL_16;
    case 5u:
      v28 = *(v10 + 11);
      v55 = *(v10 + 10);
      v56 = v28;
      v57[0] = *(v10 + 12);
      *(v57 + 10) = *(v10 + 202);
      v29 = *(v10 + 7);
      v51 = *(v10 + 6);
      v52 = v29;
      v30 = *(v10 + 9);
      v53 = *(v10 + 8);
      v54 = v30;
      v31 = *(v10 + 3);
      v48 = *(v10 + 2);
      v49 = v31;
      v32 = *(v10 + 5);
      *v50 = *(v10 + 4);
      *&v50[16] = v32;
      v33 = *(v10 + 1);
      v46 = *v10;
      v47 = v33;
      v58 = 0x287473696CLL;
      v59 = 0xE500000000000000;
      v34 = *(&v46 + 1);
      v35 = v33;
      sub_21DBF8E0C();
      goto LABEL_21;
    case 6u:
      v36 = *(v10 + 11);
      v55 = *(v10 + 10);
      v56 = v36;
      v57[0] = *(v10 + 12);
      *(v57 + 10) = *(v10 + 202);
      v37 = *(v10 + 7);
      v51 = *(v10 + 6);
      v52 = v37;
      v38 = *(v10 + 9);
      v53 = *(v10 + 8);
      v54 = v38;
      v39 = *(v10 + 3);
      v48 = *(v10 + 2);
      v49 = v39;
      v40 = *(v10 + 5);
      *v50 = *(v10 + 4);
      *&v50[16] = v40;
      v41 = *(v10 + 1);
      v46 = *v10;
      v47 = v41;
      v58 = 0;
      v59 = 0xE000000000000000;
      sub_21DBFBEEC();

      v58 = 0xD000000000000010;
      v59 = 0x800000021DC69630;
      v34 = *(&v46 + 1);
      v35 = v47;
      sub_21DBF8E0C();
LABEL_21:
      MEMORY[0x223D42AA0](v34, v35);

      MEMORY[0x223D42AA0](41, 0xE100000000000000);
      sub_21D1077D8(&v46);
      goto LABEL_31;
    case 7u:
      v25 = *v10;
      v26 = *(v10 + 1);
      v27 = *(v10 + 6);
      *&v46 = 0x2870756F7267;
      *(&v46 + 1) = 0xE600000000000000;
      sub_21DBF8E0C();
      MEMORY[0x223D42AA0](v25, v26);

      MEMORY[0x223D42AA0](41, 0xE100000000000000);

LABEL_16:

      goto LABEL_17;
    case 8u:
      sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.Item);
      return 0xD000000000000011;
    case 9u:
      v19 = *(v10 + 1);
      v46 = *v10;
      v47 = v19;
      *v50 = *(v10 + 4);
      *&v50[9] = *(v10 + 73);
      v20 = *(v10 + 2);
      v49 = *(v10 + 3);
      v48 = v20;
      v21 = *(&v46 + 1);
      v22 = v47;
      if (v50[24])
      {
        if (v50[24] == 1)
        {
          v23 = v46;
          v58 = 0;
          v59 = 0xE000000000000000;
          sub_21DBFBEEC();

          v58 = 0xD000000000000020;
          v59 = 0x800000021DC73C30;
          sub_21DBF8E0C();
          MEMORY[0x223D42AA0](v23, v21);
        }

        else
        {
          v44 = *(&v49 + 1);
          v45 = *v50;
          v58 = 0;
          v59 = 0xE000000000000000;
          sub_21DBFBEEC();

          v58 = 0xD000000000000019;
          v59 = 0x800000021DC73C10;
          sub_21DBF8E0C();
          MEMORY[0x223D42AA0](v21, v22);

          MEMORY[0x223D42AA0](0x6F74747562202C29, 0xEA0000000000286ELL);
          if (v45)
          {
            sub_21DBF8E0C();
          }

          else
          {
            v45 = 0xE300000000000000;
            v44 = 7104846;
          }

          MEMORY[0x223D42AA0](v44, v45);
        }

        v42 = 41;
        v43 = 0xE100000000000000;
      }

      else
      {
        v58 = 0;
        v59 = 0xE000000000000000;
        sub_21DBFBEEC();

        v58 = 0xD000000000000019;
        v59 = 0x800000021DC73C10;
        sub_21DBF8E0C();
        MEMORY[0x223D42AA0](v21, v22);

        v42 = 10537;
        v43 = 0xE200000000000000;
      }

      MEMORY[0x223D42AA0](v42, v43);
      sub_21DA264B0(&v46);
LABEL_31:
      result = v58;
      break;
    case 0xAu:
      sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.Item);
      result = 0x6974636553706954;
      break;
    case 0xBu:
      v14 = *v10;
      v15 = *(v10 + 1);
      *&v46 = 678455636;
      *(&v46 + 1) = 0xE400000000000000;
      MEMORY[0x223D42AA0](v14, v15);

      MEMORY[0x223D42AA0](41, 0xE100000000000000);
LABEL_17:
      result = v46;
      break;
    case 0xCu:
    case 0xDu:
      sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.Item);
      result = 0x7367617468736168;
      break;
    case 0xEu:
      sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.Item);
      result = 0xD000000000000013;
      break;
    case 0xFu:
      result = 0xD000000000000017;
      break;
    case 0x10u:
      result = 0xD000000000000010;
      break;
    default:
      (*(v5 + 32))(v7, v10, v4);
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      sub_21DBFBEEC();

      strcpy(&v46, "sectionProxy(");
      HIWORD(v46) = -4864;
      sub_21D0DCFD0(&qword_280D17190, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v11 = sub_21DBFC5BC();
      MEMORY[0x223D42AA0](v11);

      MEMORY[0x223D42AA0](41, 0xE100000000000000);
      v12 = v46;
      (*(v5 + 8))(v7, v4);
LABEL_14:
      result = v12;
      break;
  }

  return result;
}

void TTRAccountsListsViewModel.SharingParticipantInfo.init(with:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if ([a1 isShared])
  {
    v4 = REMList.participantsToShowForSharingStatus(maxCount:)(3uLL, 0);
  }

  else
  {

    v4 = 0;
  }

  *a2 = v4;
}

uint64_t TTRAccountsListsViewModel.diff(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree);
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64C18, &qword_21DC364F8);
  v5[4] = sub_21D0D0F1C(qword_280D156E0, &qword_27CE64C18, &qword_21DC364F8, protocol conformance descriptor for TTRMutableTreeStorage<A, B>);
  v5[0] = v3;

  sub_21DA0F534(v5, 0, 0, a2);
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t sub_21DA2584C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[11];
  v54[10] = a1[10];
  v54[11] = v2;
  v55[0] = a1[12];
  *(v55 + 10) = *(a1 + 202);
  v3 = a1[7];
  v54[6] = a1[6];
  v54[7] = v3;
  v4 = a1[9];
  v54[8] = a1[8];
  v54[9] = v4;
  v5 = a1[3];
  v54[2] = a1[2];
  v54[3] = v5;
  v6 = a1[5];
  v54[4] = a1[4];
  v54[5] = v6;
  v7 = a1[1];
  v54[0] = *a1;
  v54[1] = v7;
  v8 = a2[11];
  v51 = a2[10];
  v52 = v8;
  v53[0] = a2[12];
  *(v53 + 10) = *(a2 + 202);
  v9 = a2[7];
  v47 = a2[6];
  v48 = v9;
  v10 = a2[9];
  v49 = a2[8];
  v50 = v10;
  v11 = a2[3];
  v43 = a2[2];
  v44 = v11;
  v12 = a2[5];
  v45 = a2[4];
  v46 = v12;
  v13 = a2[1];
  v41 = *a2;
  v42 = v13;
  if (sub_21D1577AC(v54) != 1)
  {
    v23 = *sub_21D14D0D4(v54);
    v38 = v51;
    v39 = v52;
    v40[0] = v53[0];
    *(v40 + 10) = *(v53 + 10);
    v34 = v47;
    v35 = v48;
    v36 = v49;
    v37 = v50;
    v30 = v43;
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v28 = v41;
    v29 = v42;
    v24 = sub_21D1577AC(&v28);
    v25 = sub_21D14D0D4(&v28);
    if (v24 != 1)
    {
      v22 = sub_21D11ED58(v23, *v25);
      return v22 & 1;
    }

    goto LABEL_5;
  }

  v14 = sub_21D14D0D4(v54);
  v38 = v51;
  v39 = v52;
  v40[0] = v53[0];
  *(v40 + 10) = *(v53 + 10);
  v34 = v47;
  v35 = v48;
  v36 = v49;
  v37 = v50;
  v30 = v43;
  v31 = v44;
  v32 = v45;
  v33 = v46;
  v28 = v41;
  v29 = v42;
  v15 = sub_21D1577AC(&v28);
  v16 = sub_21D14D0D4(&v28);
  if (v15 != 1)
  {
LABEL_5:
    v22 = 0;
    return v22 & 1;
  }

  v17 = v16;
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  v18 = *v14;
  v19 = *v17;
  sub_21DA28EE0(&v41, &v27);
  v20 = v18;
  v21 = v19;
  v22 = sub_21DBFB63C();

  sub_21DA28F18(&v41);
  return v22 & 1;
}