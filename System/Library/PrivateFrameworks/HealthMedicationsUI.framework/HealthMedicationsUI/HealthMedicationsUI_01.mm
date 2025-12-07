uint64_t type metadata accessor for NewMedicationsOnboardingDataSource(uint64_t a1)
{
  result = qword_27D823A08;
  if (!qword_27D823A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22818A928@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_228391610();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_228391620();
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = *MEMORY[0x277D74C98];
  v10 = *(v5 + 104);
  v10(v7, v9, v4);
  sub_228391600();
  v10(v7, v9, v4);
  return sub_2283915F0();
}

uint64_t sub_22818AA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_228391590();
  MEMORY[0x28223BE20](v6 - 8);
  if (sub_228392000() == a1 && v7 == a2)
  {
  }

  else
  {
    v9 = sub_228393460();

    if ((v9 & 1) == 0)
    {
      a3[3] = sub_22838FC00();
      a3[4] = sub_22818B6E8(&qword_27D823958, MEMORY[0x277D10EC8], MEMORY[0x277D10EC0]);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_22838FBF0();
    }
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_2283913C0();
  v11 = [objc_opt_self() grayColor];
  v12 = sub_228391450();
  sub_228391420();
  v12(v15, 0);
  v13 = sub_22838FB60();
  swift_allocObject();
  v14 = sub_22838FB50();
  a3[3] = v13;
  result = sub_22818B6E8(&qword_27D823960, MEMORY[0x277D10E18], MEMORY[0x277D10E08]);
  a3[4] = result;
  *a3 = v14;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_22818AD94()
{
  sub_22818B730(v0 + qword_27D823968);
  __swift_destroy_boxed_opaque_existential_0((v0 + qword_27D823970));

  v1 = qword_27D823930;
  v2 = MEMORY[0x277CBCED0];
  sub_22818D028(0, &unk_27D8278B0, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = qword_27D823940;
  sub_22818D028(0, &qword_280DDBBD0, MEMORY[0x277D839B0], v2);
  v6 = v5;
  v7 = *(*(v5 - 8) + 8);
  v7(v0 + v4, v5);
  v7(v0 + qword_27D823948, v6);
}

uint64_t NewMedicationsOnboardingDataSource.deinit()
{
  v0 = sub_22838FFB0();
  sub_22818B730(v0 + qword_27D823968);
  __swift_destroy_boxed_opaque_existential_0((v0 + qword_27D823970));

  v1 = qword_27D823930;
  v2 = MEMORY[0x277CBCED0];
  sub_22818D028(0, &unk_27D8278B0, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = qword_27D823940;
  sub_22818D028(0, &qword_280DDBBD0, MEMORY[0x277D839B0], v2);
  v6 = v5;
  v7 = *(*(v5 - 8) + 8);
  v7(v0 + v4, v5);
  v7(v0 + qword_27D823948, v6);

  return v0;
}

uint64_t NewMedicationsOnboardingDataSource.__deallocating_deinit()
{
  NewMedicationsOnboardingDataSource.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall NewMedicationsOnboardingDataSource.registerCells(for:)(UICollectionView *a1)
{
  sub_228390120();
  sub_2283926B0();
  type metadata accessor for MedicationOnboardingHeaderCell();
  sub_22818B6E8(&qword_27D8239C8, type metadata accessor for MedicationOnboardingHeaderCell, &unk_22839CEA8);
  sub_2283926B0();
  type metadata accessor for MedicationOnboardingSuggestionsHeaderCell();
  sub_22818B6E8(&qword_27D8239D0, type metadata accessor for MedicationOnboardingSuggestionsHeaderCell, &unk_22839FA9C);
  sub_2283926B0();
  type metadata accessor for ShardSpinnerDownloadCell();
  sub_22818B6E8(&qword_27D8239D8, type metadata accessor for ShardSpinnerDownloadCell, &unk_2283A56A4);
  sub_2283926B0();
  sub_2283926D0();
  type metadata accessor for ConnectivityIssueCell();
  sub_22818B6E8(&qword_27D8239E0, type metadata accessor for ConnectivityIssueCell, &unk_2283A1AC0);
  sub_2283926B0();
  type metadata accessor for MedicationSearchFieldCell();
  sub_22818B6E8(&qword_27D826930, type metadata accessor for MedicationSearchFieldCell, &unk_2283A0A44);
  sub_2283926B0();
  sub_2283904F0();
  sub_2283926B0();
  type metadata accessor for MedicationSearchCell();
  sub_22818B6E8(&qword_27D8239E8, type metadata accessor for MedicationSearchCell, &unk_22839FE90);
  sub_2283926B0();
}

uint64_t sub_22818B498()
{
  sub_228390120();
  sub_2283926B0();
  type metadata accessor for MedicationOnboardingHeaderCell();
  sub_22818B6E8(&qword_27D8239C8, type metadata accessor for MedicationOnboardingHeaderCell, &unk_22839CEA8);
  sub_2283926B0();
  type metadata accessor for MedicationOnboardingSuggestionsHeaderCell();
  sub_22818B6E8(&qword_27D8239D0, type metadata accessor for MedicationOnboardingSuggestionsHeaderCell, &unk_22839FA9C);
  sub_2283926B0();
  type metadata accessor for ShardSpinnerDownloadCell();
  sub_22818B6E8(&qword_27D8239D8, type metadata accessor for ShardSpinnerDownloadCell, &unk_2283A56A4);
  sub_2283926B0();
  sub_2283926D0();
  type metadata accessor for ConnectivityIssueCell();
  sub_22818B6E8(&qword_27D8239E0, type metadata accessor for ConnectivityIssueCell, &unk_2283A1AC0);
  sub_2283926B0();
  type metadata accessor for MedicationSearchFieldCell();
  sub_22818B6E8(&qword_27D826930, type metadata accessor for MedicationSearchFieldCell, &unk_2283A0A44);
  sub_2283926B0();
  sub_2283904F0();
  sub_2283926B0();
  type metadata accessor for MedicationSearchCell();
  sub_22818B6E8(&qword_27D8239E8, type metadata accessor for MedicationSearchCell, &unk_22839FE90);
  return sub_2283926B0();
}

uint64_t sub_22818B6E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22818B7A0(uint64_t a1)
{
  sub_22818D028(319, &unk_27D8278B0, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_22818D028(319, &qword_280DDBBD0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for NewMedicationsOnboardingDataSource.SubtitleState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NewMedicationsOnboardingDataSource.SubtitleState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22818C0D4()
{
  result = qword_27D823A18;
  if (!qword_27D823A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D823A18);
  }

  return result;
}

void sub_22818C128(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2281810DC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_22818C190()
{
  result = qword_27D823A20;
  if (!qword_27D823A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D823A20);
  }

  return result;
}

unint64_t sub_22818C1E4()
{
  result = qword_27D823A28;
  if (!qword_27D823A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D823A28);
  }

  return result;
}

unint64_t sub_22818C238()
{
  result = qword_27D826940;
  if (!qword_27D826940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826940);
  }

  return result;
}

void sub_22818C294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22818C2F8(uint64_t a1)
{
  if (!qword_27D823A30)
  {
    v1 = MEMORY[0x277D837D0];
    sub_22818D028(255, &qword_27D823938, MEMORY[0x277D837D0], MEMORY[0x277CBCEC0]);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_22818C40C(&qword_27D823A38, &qword_27D823938, v1);
    sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78, MEMORY[0x277D85228]);
    v2 = sub_228391790();
    if (!v3)
    {
      atomic_store(v2, &qword_27D823A30);
    }
  }
}

uint64_t sub_22818C40C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_22818D028(255, a2, a3, MEMORY[0x277CBCEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22818C470(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22817A958(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22818C4B4(uint64_t a1)
{
  if (!qword_27D823A40)
  {
    sub_22818C2F8(255);
    sub_22818C560(255);
    sub_22818B6E8(&qword_27D823A58, sub_22818C2F8, MEMORY[0x277CBCCF8]);
    v1 = sub_228391740();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823A40);
    }
  }
}

void sub_22818C5B4(uint64_t a1)
{
  if (!qword_27D823A60)
  {
    sub_22818C560(255);
    sub_22818C6A0(255);
    sub_22818B6E8(&qword_27D823A78, sub_22818C560, MEMORY[0x277CBCD90]);
    sub_22818B6E8(&qword_27D823A80, sub_22818C6A0, MEMORY[0x277CBCBA0]);
    v1 = sub_228391720();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823A60);
    }
  }
}

void sub_22818C6A0(uint64_t a1)
{
  if (!qword_27D823A68)
  {
    sub_22818C4B4(255);
    sub_2281810DC(255, &qword_280DDB860, MEMORY[0x277D84948]);
    sub_22818B6E8(&qword_27D823A70, sub_22818C4B4, MEMORY[0x277CBCC08]);
    v1 = sub_228391710();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823A68);
    }
  }
}

void sub_22818C76C(uint64_t a1)
{
  if (!qword_27D823A88)
  {
    sub_22818C5B4(255);
    sub_22818B6E8(&qword_27D823A90, sub_22818C5B4, MEMORY[0x277CBCBB0]);
    v1 = sub_228391700();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823A88);
    }
  }
}

void sub_22818C800(uint64_t a1)
{
  if (!qword_27D823A98)
  {
    sub_22818C76C(255);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_22818B6E8(&qword_27D823AA0, sub_22818C76C, MEMORY[0x277CBCB78]);
    sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78, MEMORY[0x277D85228]);
    v1 = sub_2283917D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823A98);
    }
  }
}

void sub_22818C910(uint64_t a1)
{
  if (!qword_27D823AB8)
  {
    sub_22818C9BC(255);
    sub_22818C580(255);
    sub_22818B6E8(&qword_27D823AD0, sub_22818C9BC, MEMORY[0x277CBCD90]);
    v1 = sub_228391740();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823AB8);
    }
  }
}

void sub_22818C9BC(uint64_t a1)
{
  if (!qword_27D823AC0)
  {
    sub_22818C294(255, &qword_27D823AC8, MEMORY[0x277D11678], MEMORY[0x277D83940]);
    sub_2281810DC(255, &qword_280DDB860, MEMORY[0x277D84948]);
    v1 = sub_2283917F0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823AC0);
    }
  }
}

void sub_22818CA8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_22818C580(255);
    v7 = v6;
    v8 = sub_2281810DC(255, &qword_280DDB860, MEMORY[0x277D84948]);
    v9 = a3(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22818CB14(uint64_t a1)
{
  if (!qword_27D823AF8)
  {
    sub_228390B70();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D823AF8);
    }
  }
}

uint64_t sub_22818CB80(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_22817A958(0, &qword_27D823BC0, 0x277D115B0);
    v5 = sub_2283921A0();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t sub_22818CC38(uint64_t a1, uint64_t a2)
{
  sub_22818CB14(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22818CC9C(uint64_t a1)
{
  sub_22818CB14(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22818CCF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationSearchItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22818CD7C(uint64_t a1)
{
  if (!qword_27D823B10)
  {
    sub_22818D028(255, &qword_27D823B08, &type metadata for NetworkStateObserver.ConnectionStatus, MEMORY[0x277CBCEC0]);
    sub_22818C40C(&qword_27D823B18, &qword_27D823B08, &type metadata for NetworkStateObserver.ConnectionStatus);
    v1 = sub_228391730();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823B10);
    }
  }
}

void sub_22818CE24(uint64_t a1)
{
  if (!qword_27D823B20)
  {
    v1 = MEMORY[0x277D839B0];
    sub_22818D028(255, &unk_280DDBBE0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
    sub_22818CD7C(255);
    sub_22818C40C(&qword_280DDBBF0, &unk_280DDBBE0, v1);
    sub_22818B6E8(&qword_27D823B28, sub_22818CD7C, MEMORY[0x277CBCBE0]);
    v2 = sub_228391690();
    if (!v3)
    {
      atomic_store(v2, &qword_27D823B20);
    }
  }
}

void sub_22818CF28(uint64_t a1)
{
  if (!qword_27D823B30)
  {
    sub_22818CE24(255);
    sub_22817A958(255, &qword_280DDB928, 0x277CBEB88);
    sub_22818B6E8(&qword_27D823B38, sub_22818CE24, MEMORY[0x277CBCAF8]);
    sub_22818C470(&qword_280DDB930, &qword_280DDB928, 0x277CBEB88, MEMORY[0x277CC9E80]);
    v1 = sub_2283917D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823B30);
    }
  }
}

void sub_22818D028(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_22818D078()
{
  result = qword_27D823B48;
  if (!qword_27D823B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D823B48);
  }

  return result;
}

uint64_t sub_22818D10C(unint64_t a1)
{
  sub_22818C294(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v54 = &v40 - v3;
  v4 = sub_228391DD0();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818D97C(0);
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818DA10(0);
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v55 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818DAA4(0);
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x28223BE20](v10);
  v48 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818DBA4(0);
  v52 = *(v12 - 8);
  v53 = v12;
  MEMORY[0x28223BE20](v12);
  v51 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_17:
    v14 = sub_2283930D0();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  while (v14 != v15)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x22AAB6D80](v15, a1);
    }

    else
    {
      if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v17 = *(a1 + 8 * v15 + 32);
    }

    v18 = v17;
    v19 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v20 = [v17 firstConceptIdentifier];

    ++v15;
    if (v20)
    {
      MEMORY[0x22AAB5D20]();
      if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2283921E0();
      }

      sub_228392230();
      v16 = v57;
      v15 = v19;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v56;
  *(v21 + 24) = v16;
  sub_22818C560(0);
  sub_22818B6E8(&qword_27D823A78, sub_22818C560, MEMORY[0x277CBCD90]);

  v22 = v40;
  sub_228391900();
  sub_22818B6E8(&qword_27D823B98, sub_22818D97C, MEMORY[0x277CBCEB8]);
  v23 = v42;
  v24 = sub_228391990();
  (*(v41 + 8))(v22, v23);
  v57 = v24;
  v58 = MEMORY[0x277D84F90];
  sub_2283919B0();

  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v26 = v43;
  v25 = v44;
  v27 = v45;
  (*(v44 + 104))(v43, *MEMORY[0x277D851C0], v45);
  v28 = sub_2283927C0();
  (*(v25 + 8))(v26, v27);
  v57 = v28;
  v29 = sub_228392730();
  v45 = *(*(v29 - 8) + 56);
  v30 = v54;
  v45(v54, 1, 1, v29);
  sub_22818B6E8(&qword_27D823B80, sub_22818DA10, MEMORY[0x277CBCB78]);
  sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78, MEMORY[0x277D85228]);
  v31 = v47;
  v32 = v48;
  v33 = v55;
  sub_228391A90();
  v34 = MEMORY[0x277D85248];
  sub_22818E198(v30, &qword_280DDBAD0, MEMORY[0x277D85248]);

  (*(v46 + 8))(v33, v31);
  v35 = sub_228392790();
  v57 = v35;
  v45(v30, 1, 1, v29);
  sub_22818B6E8(&qword_27D823B90, sub_22818DAA4, MEMORY[0x277CBCB50]);
  v36 = v50;
  v37 = v51;
  sub_228391A70();
  sub_22818E198(v30, &qword_280DDBAD0, v34);

  (*(v49 + 8))(v32, v36);
  swift_getKeyPath();
  v57 = v56;
  sub_22818B6E8(&qword_27D823BA0, sub_22818DBA4, MEMORY[0x277CBCD60]);
  v38 = v53;
  sub_228391AD0();

  (*(v52 + 8))(v37, v38);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

void sub_22818D97C(uint64_t a1)
{
  if (!qword_27D823B68)
  {
    sub_22818C560(255);
    sub_22818B6E8(&qword_27D823A78, sub_22818C560, MEMORY[0x277CBCD90]);
    v1 = sub_228391910();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823B68);
    }
  }
}

void sub_22818DA10(uint64_t a1)
{
  if (!qword_27D823B70)
  {
    sub_22818C560(255);
    sub_22818B6E8(&qword_27D823A78, sub_22818C560, MEMORY[0x277CBCD90]);
    v1 = sub_228391700();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823B70);
    }
  }
}

void sub_22818DAA4(uint64_t a1)
{
  if (!qword_27D823B78)
  {
    sub_22818DA10(255);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_22818B6E8(&qword_27D823B80, sub_22818DA10, MEMORY[0x277CBCB78]);
    sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78, MEMORY[0x277D85228]);
    v1 = sub_2283916F0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823B78);
    }
  }
}

void sub_22818DBA4(uint64_t a1)
{
  if (!qword_27D823B88)
  {
    sub_22818DAA4(255);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_22818B6E8(&qword_27D823B90, sub_22818DAA4, MEMORY[0x277CBCB50]);
    sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78, MEMORY[0x277D85228]);
    v1 = sub_2283917D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823B88);
    }
  }
}

void sub_22818DCAC(uint64_t a1)
{
  if (!qword_27D823BA8)
  {
    sub_22818DD58(255);
    sub_22818C580(255);
    sub_22818B6E8(&qword_27D823BC8, sub_22818DD58, MEMORY[0x277CBCEB0]);
    v1 = sub_228391740();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823BA8);
    }
  }
}

void sub_22818DD58(uint64_t a1)
{
  if (!qword_27D823BB0)
  {
    sub_22818DF04(255, &qword_27D823BB8, &qword_27D823BC0, 0x277D115B0);
    sub_2281810DC(255, &qword_280DDB860, MEMORY[0x277D84948]);
    v1 = sub_2283918E0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823BB0);
    }
  }
}

uint64_t objectdestroy_49Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_22818DE38(uint64_t a1)
{
  if (!qword_27D827860)
  {
    sub_22817A958(255, &qword_27D823BD8, 0x277CCD1B0);
    sub_228390C30();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D827860);
    }
  }
}

uint64_t sub_22818DEBC(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

void sub_22818DF04(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_22817A958(255, a3, a4);
    v5 = sub_228392240();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_22818DF5C(uint64_t a1)
{
  if (!qword_27D823BF8)
  {
    v1 = MEMORY[0x277D839B0];
    sub_22818D028(255, &unk_280DDBBE0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
    sub_22818C40C(&qword_280DDBBF0, &unk_280DDBBE0, v1);
    v2 = sub_228391770();
    if (!v3)
    {
      atomic_store(v2, &qword_27D823BF8);
    }
  }
}

void sub_22818E004(uint64_t a1)
{
  if (!qword_27D823C00)
  {
    sub_22818DF5C(255);
    sub_22818B6E8(&qword_27D823C08, sub_22818DF5C, MEMORY[0x277CBCC90]);
    v1 = sub_228391730();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823C00);
    }
  }
}

void sub_22818E098(uint64_t a1)
{
  if (!qword_27D823C10)
  {
    sub_22818E004(255);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_22818B6E8(&qword_27D823C18, sub_22818E004, MEMORY[0x277CBCBE0]);
    sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78, MEMORY[0x277D85228]);
    v1 = sub_228391760();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823C10);
    }
  }
}

uint64_t sub_22818E198(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22818C294(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_22818E210()
{
  result = qword_280DDBBB0;
  if (!qword_280DDBBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDBBB0);
  }

  return result;
}

unint64_t sub_22818E28C()
{
  sub_2283931D0();

  type metadata accessor for MedicationLogDetailsTimePickerItem(0);
  v0 = sub_228300540();
  MEMORY[0x22AAB5C80](v0);

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);
  v1 = sub_22838F450();
  MEMORY[0x22AAB5C80](v1);

  return 0xD000000000000019;
}

uint64_t sub_22818E34C()
{
  sub_228393520();
  sub_22838F4A0();
  sub_22818FF88(&unk_27D823CA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_228391F70();
  sub_228300540();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_22818E40C(uint64_t a1)
{
  sub_22838F4A0();
  sub_22818FF88(&unk_27D823CA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_228391F70();
  sub_228300540();
  sub_2283920B0();
}

uint64_t sub_22818E4C0(uint64_t a1)
{
  sub_228393520();
  sub_22838F4A0();
  sub_22818FF88(&unk_27D823CA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_228391F70();
  sub_228300540();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_22818E580(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t sub_22818E5BC(uint64_t a1)
{
  v2 = sub_22818FF88(&qword_27D823C98, type metadata accessor for MedicationLogDetailsTimePickerItem, &unk_2283986A0);

  return MEMORY[0x282169440](a1, v2);
}

id sub_22818E638()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerCell____lazy_storage___pickerView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerCell____lazy_storage___pickerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerCell____lazy_storage___pickerView);
  }

  else
  {
    type metadata accessor for MedicationLogDetailsTimePickerView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_22818E6C0()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22838F440();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818FBF4(0, &unk_27D823C68, type metadata accessor for MedicationLogDetailsTimePickerItem);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for MedicationLogDetailsTimePickerItem(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v16], v40);
  if (v41)
  {
    sub_22817A700();
    v17 = swift_dynamicCast();
    (*(v13 + 56))(v11, v17 ^ 1u, 1, v12);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      sub_22818FCA4(v11, v15);
      v18 = sub_22818E638();
      v19 = *&v15[*(v12 + 20)];
      *&v18[OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView_viewModel] = v19;
      swift_retain_n();

      v20 = sub_22818F374();
      v21 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
      swift_beginAccess();
      (*(v6 + 16))(v8, v19 + v21, v5);
      v22 = sub_22838F380();
      (*(v6 + 8))(v8, v5);
      [v20 setDate_];

      v23 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerCell____lazy_storage___pickerView];
      v24 = &v15[*(v12 + 24)];
      swift_unknownObjectWeakLoadStrong();
      v25 = *(v24 + 1);
      v26 = v23;
      sub_22818FD08(v15);
      *&v26[OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView_detailsDelegate + 8] = v25;
      swift_unknownObjectWeakAssign();

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_22818FC48(v40, &qword_280DDCD50, sub_22817A700);
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  sub_22818FC48(v11, &unk_27D823C68, type metadata accessor for MedicationLogDetailsTimePickerItem);
  sub_228391150();
  v28 = v1;
  v29 = sub_2283911A0();
  v30 = sub_2283925C0();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v39 = v32;
    *v31 = 136315138;
    sub_22817E6C8(&v1[v16], v40);
    sub_22818FBF4(0, &qword_280DDCD50, sub_22817A700);
    v33 = sub_228392040();
    v35 = sub_2281C96FC(v33, v34, &v39);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_22816B000, v29, v30, "Incorrect view model for MedicationLogDetailsTimePickerItem: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AAB7B80](v32, -1, -1);
    MEMORY[0x22AAB7B80](v31, -1, -1);
  }

  return (*(v37 + 8))(v4, v38);
}

char *sub_22818EC24(double a1, double a2, double a3, double a4)
{
  v9 = sub_228391590();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v50[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerCell____lazy_storage___pickerView] = 0;
  v13 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerCell_item];
  v14 = type metadata accessor for MedicationLogDetailsTimePickerCell();
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v51.receiver = v4;
  v51.super_class = v14;
  v15 = objc_msgSendSuper2(&v51, sel_initWithFrame_, a1, a2, a3, a4);
  v50[3] = v9;
  v50[4] = MEMORY[0x277D74C30];
  __swift_allocate_boxed_opaque_existential_1(v50);
  v16 = v15;
  sub_228391520();
  MEMORY[0x22AAB6400](v50);
  v17 = [v16 contentView];
  v18 = sub_22818E638();
  [v17 addSubview_];

  v19 = [v16 contentView];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];

  v20 = v16;
  v21 = [v20 contentView];
  v22 = [v21 topAnchor];

  v23 = [v20 topAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  [v24 setActive_];
  v25 = [v20 contentView];
  v26 = [v25 leadingAnchor];

  v27 = [v20 leadingAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  [v28 setActive_];
  v29 = [v20 contentView];
  v30 = [v29 trailingAnchor];

  v31 = [v20 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  [v32 setActive_];
  v33 = [v20 contentView];
  v34 = [v33 bottomAnchor];

  v35 = [v20 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  [v36 setActive_];
  v37 = OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerCell____lazy_storage___pickerView;
  [*&v20[OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerCell____lazy_storage___pickerView] setTranslatesAutoresizingMaskIntoConstraints_];
  sub_228391520();
  sub_2283914D0();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  (*(v10 + 8))(v12, v9);
  v46 = *&v20[v37];
  v47 = [v20 contentView];

  [v46 hk:v47 alignConstraintsWithView:v39 insets:{v41, v43, v45}];
  return v20;
}

uint64_t sub_22818F1FC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22818F254(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22818E6C0();
  return sub_22818FC48(a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t (*sub_22818F2DC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22818F340;
}

uint64_t sub_22818F340(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_22818E6C0();
  }

  return result;
}

id sub_22818F374()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView____lazy_storage___logTimePicker;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView____lazy_storage___logTimePicker);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI34MedicationLogDetailsTimePickerView____lazy_storage___logTimePicker);
  }

  else
  {
    v4 = sub_22818F3D8(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_22818F3D8(uint64_t a1)
{
  v2 = sub_22838F440();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D753E8]) initWithFrame_];
  [v6 setPreferredDatePickerStyle_];
  [v6 setDatePickerMode_];
  sub_22838F430();
  v7 = sub_22838F380();
  (*(v3 + 8))(v5, v2);
  [v6 setMaximumDate_];

  [v6 addTarget:a1 action:sel_logTimeChanged_ forControlEvents:4096];
  return v6;
}

void sub_22818F670()
{
  sub_228180ED0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228396260;
  *(v1 + 32) = sub_22818F374();
  v2 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22818FDE4();
  v3 = sub_228392190();

  v4 = [v2 initWithArrangedSubviews_];

  [v4 setAxis_];
  [v4 setAlignment_];
  [v4 setDistribution_];
  [v4 setSpacing_];
  v5 = v4;
  [v0 addSubview_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v5 topAnchor];
  v7 = [v0 topAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  [v8 setActive_];
  v9 = [v5 leadingAnchor];

  v10 = [v0 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  [v11 setActive_];
  v12 = [v5 trailingAnchor];

  v13 = [v0 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  [v14 setActive_];
  v15 = [v5 bottomAnchor];

  v16 = [v0 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  [v17 setActive_];
}

id sub_22818FAF0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for MedicationLogDetailsTimePickerItem(uint64_t a1)
{
  result = qword_27D823C78;
  if (!qword_27D823C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22818FBF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22818FC48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22818FBF4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22818FCA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationLogDetailsTimePickerItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22818FD08(uint64_t a1)
{
  v2 = type metadata accessor for MedicationLogDetailsTimePickerItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22818FD64(uint64_t a1, uint64_t a2)
{
  sub_22818FBF4(0, &qword_280DDCD50, sub_22817A700);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_22818FDE4()
{
  result = qword_280DDB9B0;
  if (!qword_280DDB9B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DDB9B0);
  }

  return result;
}

uint64_t sub_22818FE58(uint64_t a1)
{
  result = sub_22838F4A0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MedicationsDoseLogViewModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22818FF88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id SpecificationStep.headerImage.getter()
{
  v1 = *v0;
  v2 = v1 >> 5;
  if (v1 >> 5 > 2)
  {
    if (v2 == 3)
    {
      if (v1 == 96)
      {
        if (qword_280DDCED0 != -1)
        {
          swift_once();
        }

        v6 = qword_280DDCED8;
        v7 = sub_228391FC0();
        v5 = [objc_opt_self() imageNamed:v7 inBundle:v6];

        if (v5)
        {
          goto LABEL_19;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    else if (v2 != 4)
    {
      if (v1 == 160)
      {
        if (qword_280DDCED0 == -1)
        {
          goto LABEL_24;
        }
      }

      else if (qword_280DDCED0 == -1)
      {
LABEL_24:
        v5 = qword_280DDCED8;
        v9 = sub_228391FC0();
        v10 = [objc_opt_self() imageNamed:v9 inBundle:v5];
        goto LABEL_25;
      }

LABEL_28:
      swift_once();
      goto LABEL_24;
    }

    return 0;
  }

  if (!v2)
  {
    if (qword_280DDCED0 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  if (v2 == 1)
  {
    if (qword_280DDCED0 != -1)
    {
      swift_once();
    }

    v3 = qword_280DDCED8;
    v4 = sub_228391FC0();
    v5 = [objc_opt_self() imageNamed:v4 inBundle:v3];

    if (v5)
    {
LABEL_19:
      v8 = [v5 imageFlippedForRightToLeftLayoutDirection];
LABEL_26:

      return v8;
    }

    __break(1u);
    goto LABEL_30;
  }

  if (v1 != 64)
  {
    sub_228190EB8();
    v5 = sub_228392C30();
    v9 = sub_228391FC0();
    v10 = [objc_opt_self() imageNamed:v9 inBundle:v5];
LABEL_25:
    v8 = v10;

    goto LABEL_26;
  }

LABEL_31:
  result = sub_228393300();
  __break(1u);
  return result;
}

uint64_t SpecificationStep.title.getter()
{
  v1 = *v0;
  v2 = v1 >> 5;
  if (v1 >> 5 > 2)
  {
    if (v2 == 3)
    {
      if (v1 == 96)
      {
        if (qword_280DDCF18 == -1)
        {
          return sub_22838F0C0();
        }
      }

      else if (qword_280DDCF18 == -1)
      {
        return sub_22838F0C0();
      }
    }

    else if (v2 == 4)
    {
      if (v1 != 128)
      {
        return 0;
      }

      if (qword_280DDCF18 == -1)
      {
        return sub_22838F0C0();
      }
    }

    else if (v1 == 160)
    {
      if (qword_280DDCF18 == -1)
      {
        return sub_22838F0C0();
      }
    }

    else if (qword_280DDCF18 == -1)
    {
      return sub_22838F0C0();
    }

LABEL_27:
    swift_once();
    return sub_22838F0C0();
  }

  if (!v2)
  {
LABEL_17:
    if (qword_280DDCF18 == -1)
    {
      return sub_22838F0C0();
    }

    goto LABEL_27;
  }

  if (v2 != 1)
  {
    if (v1 == 64)
    {
      result = sub_228393300();
      __break(1u);
      return result;
    }

    goto LABEL_17;
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v3 = sub_22838F0C0();

  return v3;
}

uint64_t SpecificationStep.isSkipable.getter()
{
  v1 = *v0;
  v2 = v1 >> 5;
  if (v1 >> 5 > 2)
  {
    if (v2 == 5)
    {
      v7 = v1 == 160;
    }

    else
    {
      v6 = 0;
      if (v2 == 4)
      {
        return v6 & 1;
      }

      v7 = v1 == 96;
    }

    v6 = !v7;
    return v6 & 1;
  }

  if (v2)
  {
    v3 = v2 == 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = *v0;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t SpecificationStep.analyticsStep.getter()
{
  v1 = *v0;
  v2 = v1 >> 5;
  v3 = 5;
  v4 = 6;
  if (v1 != 96)
  {
    v4 = 7;
  }

  v5 = 8;
  if (v1 != 128)
  {
    v5 = 9;
  }

  v6 = 14;
  if (v1 == 160)
  {
    v6 = 10;
  }

  if (v2 != 4)
  {
    v5 = v6;
  }

  if (v2 != 3)
  {
    v4 = v5;
  }

  v7 = 12;
  v8 = 13;
  if (v1 == 64)
  {
    v8 = 0;
  }

  if (v2 != 1)
  {
    v7 = v8;
  }

  if (v2)
  {
    v3 = v7;
  }

  if (v1 >> 5 <= 2)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

BOOL static SpecificationStep.< infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 5;
  v5 = 4;
  if (v2 != 96)
  {
    v5 = 5;
  }

  v6 = 6;
  if (v2 != 128)
  {
    v6 = 7;
  }

  v7 = 8;
  if (v2 != 160)
  {
    v7 = 9;
  }

  if (v4 != 4)
  {
    v6 = v7;
  }

  if (v4 != 3)
  {
    v5 = v6;
  }

  v8 = v2 != 64;
  if (v4 == 1)
  {
    v8 = 3;
  }

  if (!v4)
  {
    v8 = 2;
  }

  if (v4 > 2)
  {
    v8 = v5;
  }

  v9 = v3 >> 5;
  v10 = 4;
  if (v3 != 96)
  {
    v10 = 5;
  }

  v11 = 6;
  if (v3 != 128)
  {
    v11 = 7;
  }

  v12 = 8;
  if (v3 != 160)
  {
    v12 = 9;
  }

  if (v9 != 4)
  {
    v11 = v12;
  }

  if (v9 != 3)
  {
    v10 = v11;
  }

  v13 = v3 != 64;
  if (v9 == 1)
  {
    v13 = 3;
  }

  if (!v9)
  {
    v13 = 2;
  }

  if (v9 > 2)
  {
    v13 = v10;
  }

  return v8 < v13;
}

BOOL sub_2281909D0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 5;
  v5 = 4;
  if (v2 != 96)
  {
    v5 = 5;
  }

  v6 = 6;
  if (v2 != 128)
  {
    v6 = 7;
  }

  v7 = 8;
  if (v2 != 160)
  {
    v7 = 9;
  }

  if (v4 != 4)
  {
    v6 = v7;
  }

  if (v4 != 3)
  {
    v5 = v6;
  }

  v8 = v2 != 64;
  if (v4 == 1)
  {
    v8 = 3;
  }

  if (!v4)
  {
    v8 = 2;
  }

  if (v4 > 2)
  {
    v8 = v5;
  }

  v9 = v3 >> 5;
  v10 = 4;
  if (v3 != 96)
  {
    v10 = 5;
  }

  v11 = 6;
  if (v3 != 128)
  {
    v11 = 7;
  }

  v12 = 8;
  if (v3 != 160)
  {
    v12 = 9;
  }

  if (v9 != 4)
  {
    v11 = v12;
  }

  if (v9 != 3)
  {
    v10 = v11;
  }

  v13 = v3 != 64;
  if (v9 == 1)
  {
    v13 = 3;
  }

  if (!v9)
  {
    v13 = 2;
  }

  if (v9 > 2)
  {
    v13 = v10;
  }

  return v8 < v13;
}

BOOL sub_228190AA4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 >> 5;
  v5 = 4;
  if (v3 != 96)
  {
    v5 = 5;
  }

  v6 = 6;
  if (v3 != 128)
  {
    v6 = 7;
  }

  v7 = 8;
  if (v3 != 160)
  {
    v7 = 9;
  }

  if (v4 != 4)
  {
    v6 = v7;
  }

  if (v4 != 3)
  {
    v5 = v6;
  }

  v8 = v3 != 64;
  if (v4 == 1)
  {
    v8 = 3;
  }

  if (!v4)
  {
    v8 = 2;
  }

  if (v4 > 2)
  {
    v8 = v5;
  }

  v9 = v2 >> 5;
  v10 = 4;
  if (v2 != 96)
  {
    v10 = 5;
  }

  v11 = 6;
  if (v2 != 128)
  {
    v11 = 7;
  }

  v12 = 8;
  if (v2 != 160)
  {
    v12 = 9;
  }

  if (v9 != 4)
  {
    v11 = v12;
  }

  if (v9 != 3)
  {
    v10 = v11;
  }

  v13 = v2 != 64;
  if (v9 == 1)
  {
    v13 = 3;
  }

  if (!v9)
  {
    v13 = 2;
  }

  if (v9 > 2)
  {
    v13 = v10;
  }

  return v8 >= v13;
}

BOOL sub_228190B78(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 5;
  v5 = 4;
  if (v2 != 96)
  {
    v5 = 5;
  }

  v6 = 6;
  if (v2 != 128)
  {
    v6 = 7;
  }

  v7 = 8;
  if (v2 != 160)
  {
    v7 = 9;
  }

  if (v4 != 4)
  {
    v6 = v7;
  }

  if (v4 != 3)
  {
    v5 = v6;
  }

  v8 = v2 != 64;
  if (v4 == 1)
  {
    v8 = 3;
  }

  if (!v4)
  {
    v8 = 2;
  }

  if (v4 > 2)
  {
    v8 = v5;
  }

  v9 = v3 >> 5;
  v10 = 4;
  if (v3 != 96)
  {
    v10 = 5;
  }

  v11 = 6;
  if (v3 != 128)
  {
    v11 = 7;
  }

  v12 = 8;
  if (v3 != 160)
  {
    v12 = 9;
  }

  if (v9 != 4)
  {
    v11 = v12;
  }

  if (v9 != 3)
  {
    v10 = v11;
  }

  v13 = v3 != 64;
  if (v9 == 1)
  {
    v13 = 3;
  }

  if (!v9)
  {
    v13 = 2;
  }

  if (v9 > 2)
  {
    v13 = v10;
  }

  return v8 >= v13;
}

BOOL sub_228190C4C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 >> 5;
  v5 = 4;
  if (v3 != 96)
  {
    v5 = 5;
  }

  v6 = 6;
  if (v3 != 128)
  {
    v6 = 7;
  }

  v7 = 8;
  if (v3 != 160)
  {
    v7 = 9;
  }

  if (v4 != 4)
  {
    v6 = v7;
  }

  if (v4 != 3)
  {
    v5 = v6;
  }

  v8 = v3 != 64;
  if (v4 == 1)
  {
    v8 = 3;
  }

  if (!v4)
  {
    v8 = 2;
  }

  if (v4 > 2)
  {
    v8 = v5;
  }

  v9 = v2 >> 5;
  v10 = 4;
  if (v2 != 96)
  {
    v10 = 5;
  }

  v11 = 6;
  if (v2 != 128)
  {
    v11 = 7;
  }

  v12 = 8;
  if (v2 != 160)
  {
    v12 = 9;
  }

  if (v9 != 4)
  {
    v11 = v12;
  }

  if (v9 != 3)
  {
    v10 = v11;
  }

  v13 = v2 != 64;
  if (v9 == 1)
  {
    v13 = 3;
  }

  if (!v9)
  {
    v13 = 2;
  }

  if (v9 > 2)
  {
    v13 = v10;
  }

  return v8 < v13;
}

BOOL _s19HealthMedicationsUI17SpecificationStepO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 5;
  if (v2 >> 5 > 2)
  {
    if (v4 == 3)
    {
      if (v2 == 96)
      {
        if (v3 != 96)
        {
          return 0;
        }
      }

      else if (v3 != 97)
      {
        return 0;
      }
    }

    else if (v4 == 4)
    {
      if (v2 == 128)
      {
        if (v3 != 128)
        {
          return 0;
        }
      }

      else if (v3 != 129)
      {
        return 0;
      }
    }

    else if (v2 == 160)
    {
      if (v3 != 160)
      {
        return 0;
      }
    }

    else if (v3 != 161)
    {
      return 0;
    }

    return 1;
  }

  if (!v4)
  {
    if (v3 < 0x20)
    {
      return (v3 ^ v2 ^ 1) & 1;
    }

    return 0;
  }

  if (v4 == 1)
  {
    if ((v3 & 0xE0) != 0x20)
    {
      return 0;
    }

    return (v3 ^ v2 ^ 1) & 1;
  }

  if (v2 != 64)
  {
    return v3 == 65;
  }

  return v3 == 64;
}

uint64_t _s19HealthMedicationsUI17SpecificationStepO10finalSteps16shouldDisplayDDI17skipVisualization0hI23ThirdPartyAuthorizationSayACGSb_S2btFZ_0(char a1, char a2, char a3)
{
  sub_228191128();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_228398270;
  *(v6 + 32) = 24928;
  *(v6 + 34) = 0x80;
  v8 = v6;
  if (a2)
  {
    *(v6 + 16) = 2;
  }

  sub_2281D5624(byte_283B66690);
  if (a1)
  {
    sub_2281D5624(byte_283B666B8);
  }

  if (a3)
  {
    sub_2281D5624(byte_283B666E0);
  }

  return v8;
}

unint64_t sub_228190EB8()
{
  result = qword_27D823CB0;
  if (!qword_27D823CB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D823CB0);
  }

  return result;
}

unint64_t sub_228190F08()
{
  result = qword_27D823CB8;
  if (!qword_27D823CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D823CB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpecificationStep(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7B)
  {
    goto LABEL_17;
  }

  if (a2 + 133 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 133) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 133;
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

      return (*a1 | (v4 << 8)) - 133;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 133;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 5) & 0xFFFFFF87 | (8 * ((*a1 >> 1) & 0xF))) ^ 0x7F;
  if (v6 >= 0x7A)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for SpecificationStep(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 133 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 133) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7B)
  {
    v4 = 0;
  }

  if (a2 > 0x7A)
  {
    v5 = ((a2 - 123) >> 8) + 1;
    *result = a2 - 123;
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
    *result = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2281910B8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x3F)
  {
    return v1 >> 5;
  }

  else
  {
    return (v1 | 0xFFFFFFFE) + 2 * (v1 >> 5);
  }
}

_BYTE *sub_2281910E4(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (32 * a2);
  }

  else
  {
    *result = (a2 & 1 | (32 * (a2 >> 1))) + 32;
  }

  return result;
}

void sub_228191128()
{
  if (!qword_27D823CC0)
  {
    v0 = sub_228393430();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823CC0);
    }
  }
}

id sub_228191178()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D11510]) initWithHealthStore_];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

char *sub_2281911EC()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v2 = *MEMORY[0x277CCC5E0];
    v3 = *(v0 + 16);
    sub_228390890();
    v4 = v2;
    v5 = v3;
    v6 = v0;
    sub_228390880();
    sub_228390830();

    sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
    sub_2283925F0();
    sub_2283907E0();
    swift_allocObject();
    v7 = sub_228390700();
    type metadata accessor for OntologyShardStateObserver(0);
    swift_allocObject();
    v1 = OntologyShardStateObserver.init(identifier:healthStore:settingsManager:)(v4, v5, v7);
    *(v6 + 32) = v1;
  }

  return v1;
}

uint64_t sub_228191314@<X0>(uint64_t *a2@<X8>)
{
  sub_228192E70(0);
  swift_allocObject();

  result = sub_2283918F0();
  *a2 = result;
  return result;
}

uint64_t sub_22819138C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_228191F54(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2281913B8(void **a1, uint64_t a2)
{
  v3 = sub_2283911B0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  sub_228391150();
  v8 = v7;
  v9 = sub_2283911A0();
  v10 = sub_2283925C0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v12 = 136315394;
    v15 = sub_228393600();
    v17 = sub_2281C96FC(v15, v16, &v25);
    v23 = v3;
    v18 = v17;

    *(v12 + 4) = v18;
    *(v12 + 12) = 2112;
    v19 = v7;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v20;
    *v13 = v20;
    _os_log_impl(&dword_22816B000, v9, v10, "%s Lifestyle factor error: %@", v12, 0x16u);
    sub_228193354(v13);
    MEMORY[0x22AAB7B80](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAB7B80](v14, -1, -1);
    MEMORY[0x22AAB7B80](v12, -1, -1);

    (*(v24 + 8))(v6, v23);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v25 = MEMORY[0x277D84FA0];
  sub_2281930F4(0);
  return sub_2283918C0();
}

uint64_t sub_228191618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_228391DC0();
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_228391DF0();
  v8 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_228391DD0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  (*(v12 + 104))(v14, *MEMORY[0x277D851B8], v11);

  v16 = sub_2283927C0();
  (*(v12 + 8))(v14, v11);
  v17 = swift_allocObject();
  v17[2] = v21;
  v17[3] = sub_22818DEBC;
  v17[4] = v15;
  aBlock[4] = sub_228193420;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228191E9C;
  aBlock[3] = &block_descriptor_1;
  v18 = _Block_copy(aBlock);

  sub_228391DE0();
  v24 = MEMORY[0x277D84F90];
  sub_228192C80(&qword_280DDCF10, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v19 = MEMORY[0x277D85198];
  sub_228192F08(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_228193444(&qword_280DDCEF0, &qword_280DDCF00, v19);
  sub_228393030();
  MEMORY[0x22AAB6340](0, v10, v7, v18);
  _Block_release(v18);

  (*(v23 + 8))(v7, v5);
  (*(v8 + 8))(v10, v22);
}

uint64_t sub_228191A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_228391DC0();
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_228391DF0();
  v8 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_228390770();
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v12 = sub_228198B08(0, 1, 1, MEMORY[0x277D84F90]);
    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_228198B08((v13 > 1), v14 + 1, 1, v12);
    }

    *(v12 + 2) = v14 + 1;
    *&v12[8 * v14 + 32] = 1;
    if ((sub_2283907C0() & 1) == 0)
    {
LABEL_3:
      if ((sub_228390790() & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }
  }

  else if ((sub_2283907C0() & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_228198B08(0, *(v12 + 2) + 1, 1, v12);
  }

  v16 = *(v12 + 2);
  v15 = *(v12 + 3);
  if (v16 >= v15 >> 1)
  {
    v12 = sub_228198B08((v15 > 1), v16 + 1, 1, v12);
  }

  *(v12 + 2) = v16 + 1;
  *&v12[8 * v16 + 32] = 2;
  if (sub_228390790())
  {
LABEL_13:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_228198B08(0, *(v12 + 2) + 1, 1, v12);
    }

    v18 = *(v12 + 2);
    v17 = *(v12 + 3);
    if (v18 >= v17 >> 1)
    {
      v12 = sub_228198B08((v17 > 1), v18 + 1, 1, v12);
    }

    *(v12 + 2) = v18 + 1;
    *&v12[8 * v18 + 32] = 3;
  }

LABEL_18:
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v19 = sub_228392790();
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = v12;
  aBlock[4] = sub_2281934A8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228191E9C;
  aBlock[3] = &block_descriptor_16;
  v21 = _Block_copy(aBlock);

  sub_228391DE0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_228192C80(&qword_280DDCF10, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v22 = MEMORY[0x277D85198];
  sub_228192F08(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_228193444(&qword_280DDCEF0, &qword_280DDCF00, v22);
  sub_228393030();
  MEMORY[0x22AAB6340](0, v10, v7, v21);
  _Block_release(v21);

  (*(v25 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v24);
}

uint64_t sub_228191E9C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_228191EE0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_228191F54(uint64_t a1)
{
  result = MEMORY[0x277D84FA0];
  v7 = MEMORY[0x277D84FA0];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_2282D5F7C(&v6, [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_]);

      --v3;
    }

    while (v3);
    return v7;
  }

  return result;
}

void *sub_228191FE8(void *a1, uint64_t a2)
{
  v3 = v2;
  v41 = a2;
  v47 = *v3;
  sub_228192918(0);
  v6 = *(v5 - 8);
  v44 = v5;
  v45 = v6;
  MEMORY[0x28223BE20](v5);
  v43 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228192A04(0);
  v9 = *(v8 - 8);
  v50 = v8;
  v51 = v9;
  MEMORY[0x28223BE20](v8);
  v42 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228192CC8(0);
  v53 = v11;
  v56 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v46 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228192F6C(0);
  v14 = *(v13 - 8);
  v54 = v13;
  v55 = v14;
  MEMORY[0x28223BE20](v13);
  v48 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228193048(0);
  v57 = v16;
  v59 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v49 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281931D0(0);
  v19 = *(v18 - 8);
  v60 = v18;
  v61 = v19;
  MEMORY[0x28223BE20](v18);
  v52 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = a1;
  v21 = a1;
  v22 = sub_228390710();
  sub_228192F08(0, &qword_27D823D88, sub_2281929AC, MEMORY[0x277D84560]);
  sub_2281929AC();
  v40[1] = v23;
  *(swift_allocObject() + 16) = xmmword_228398270;
  sub_22817A958(0, &qword_27D823D90, 0x277CCD570);
  sub_228392670();
  sub_228392660();

  sub_228392690();
  sub_228392660();

  sub_228392680();
  sub_228392660();

  sub_228192C80(&qword_27D823CD8, sub_2281929AC, MEMORY[0x277D113A0]);
  v24 = v43;
  sub_2283917C0();
  sub_228192C80(&qword_27D823D10, sub_228192918, MEMORY[0x277CBCD48]);
  v25 = v42;
  v26 = v44;
  sub_228391A60();
  (*(v45 + 8))(v24, v26);
  v27 = swift_allocObject();
  v28 = v47;
  *(v27 + 16) = v41;
  *(v27 + 24) = v28;

  sub_2283917E0();
  sub_228192E70(0);
  sub_228192C80(&qword_27D823D48, sub_228192A04, MEMORY[0x277CBCB40]);
  sub_228192C80(&qword_27D823D38, sub_228192E70, MEMORY[0x277CBCEB0]);
  v29 = v46;
  v30 = v50;
  sub_228391A40();

  (*(v51 + 8))(v25, v30);
  sub_228192F08(0, &qword_27D823D30, type metadata accessor for HKDrugInteractionLifestyleFactor, MEMORY[0x277D83940]);
  sub_228192C80(&qword_27D823D58, sub_228192CC8, MEMORY[0x277CBCCE0]);
  v31 = v48;
  v32 = v53;
  sub_2283919A0();
  (*(v56 + 8))(v29, v32);
  sub_2281930F4(0);
  v33 = v49;
  v34 = v54;
  sub_2283916B0();
  (*(v55 + 8))(v31, v34);
  *(swift_allocObject() + 16) = v28;
  sub_228192F08(0, &qword_27D823D70, sub_2281930F4, MEMORY[0x277CBCE78]);
  sub_228192C80(&qword_27D823D78, sub_228193048, MEMORY[0x277CBCB10]);
  sub_2281932BC();
  v35 = v52;
  v36 = v57;
  sub_228391A10();

  (*(v59 + 8))(v33, v36);
  sub_228192C80(&qword_27D823D98, sub_2281931D0, MEMORY[0x277CBCC40]);
  v37 = v60;
  v38 = sub_228391990();

  (*(v61 + 8))(v35, v37);
  result = v58;
  v58[5] = v38;
  return result;
}

void sub_228192918(uint64_t a1)
{
  if (!qword_27D823CC8)
  {
    sub_2281929AC();
    sub_228192C80(&qword_27D823CD8, sub_2281929AC, MEMORY[0x277D113A0]);
    v1 = sub_2283917B0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823CC8);
    }
  }
}

void sub_2281929AC()
{
  if (!qword_27D823CD0)
  {
    v0 = sub_228392650();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823CD0);
    }
  }
}

void sub_228192A04(uint64_t a1)
{
  if (!qword_27D823CE0)
  {
    sub_228192AF0(255);
    sub_228192918(255);
    sub_228192C80(&qword_27D823D08, sub_228192AF0, MEMORY[0x277CBCD18]);
    sub_228192C80(&qword_27D823D10, sub_228192918, MEMORY[0x277CBCD48]);
    v1 = sub_2283916E0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823CE0);
    }
  }
}

void sub_228192AF0(uint64_t a1)
{
  if (!qword_27D823CE8)
  {
    sub_228192F08(255, &qword_27D823CF0, sub_228192BCC, MEMORY[0x277D83940]);
    sub_228192C1C();
    sub_228193444(&qword_27D823D00, &qword_27D823CF0, sub_228192BCC);
    v1 = sub_2283917A0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823CE8);
    }
  }
}

void sub_228192BCC()
{
  if (!qword_27D823CF8)
  {
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823CF8);
    }
  }
}

unint64_t sub_228192C1C()
{
  result = qword_280DDB860;
  if (!qword_280DDB860)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DDB860);
  }

  return result;
}

uint64_t sub_228192C80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_228192CC8(uint64_t a1)
{
  if (!qword_27D823D18)
  {
    sub_228192DB4(255);
    sub_228192A04(255);
    sub_228192C80(&qword_27D823D40, sub_228192DB4, MEMORY[0x277CBCBA0]);
    sub_228192C80(&qword_27D823D48, sub_228192A04, MEMORY[0x277CBCB40]);
    v1 = sub_228391780();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823D18);
    }
  }
}

void sub_228192DB4(uint64_t a1)
{
  if (!qword_27D823D20)
  {
    sub_228192E70(255);
    sub_228192C1C();
    sub_228192C80(&qword_27D823D38, sub_228192E70, MEMORY[0x277CBCEB0]);
    v1 = sub_228391710();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823D20);
    }
  }
}

void sub_228192E70(uint64_t a1)
{
  if (!qword_27D823D28)
  {
    sub_228192F08(255, &qword_27D823D30, type metadata accessor for HKDrugInteractionLifestyleFactor, MEMORY[0x277D83940]);
    v1 = sub_2283918E0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823D28);
    }
  }
}

void sub_228192F08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_228192F6C(uint64_t a1)
{
  if (!qword_27D823D50)
  {
    sub_228192CC8(255);
    sub_228192F08(255, &qword_27D823D30, type metadata accessor for HKDrugInteractionLifestyleFactor, MEMORY[0x277D83940]);
    sub_228192C80(&qword_27D823D58, sub_228192CC8, MEMORY[0x277CBCCE0]);
    v1 = sub_2283916D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823D50);
    }
  }
}

void sub_228193048(uint64_t a1)
{
  if (!qword_27D823D60)
  {
    sub_228192CC8(255);
    sub_2281930F4(255);
    sub_228192C80(&qword_27D823D58, sub_228192CC8, MEMORY[0x277CBCCE0]);
    v1 = sub_2283916D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823D60);
    }
  }
}

void sub_2281930F4(uint64_t a1)
{
  if (!qword_280DDBB18)
  {
    sub_22817A958(255, &qword_280DDB960, 0x277CCABB0);
    sub_228193168();
    v1 = sub_2283924D0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDBB18);
    }
  }
}

unint64_t sub_228193168()
{
  result = qword_280DDB958;
  if (!qword_280DDB958)
  {
    sub_22817A958(255, &qword_280DDB960, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDB958);
  }

  return result;
}

void sub_2281931D0(uint64_t a1)
{
  if (!qword_27D823D68)
  {
    sub_228193048(255);
    sub_228192F08(255, &qword_27D823D70, sub_2281930F4, MEMORY[0x277CBCE78]);
    sub_228192C80(&qword_27D823D78, sub_228193048, MEMORY[0x277CBCB10]);
    sub_2281932BC();
    v1 = sub_228391750();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823D68);
    }
  }
}

unint64_t sub_2281932BC()
{
  result = qword_27D823D80;
  if (!qword_27D823D80)
  {
    sub_228192F08(255, &qword_27D823D70, sub_2281930F4, MEMORY[0x277CBCE78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D823D80);
  }

  return result;
}

uint64_t sub_228193354(uint64_t a1)
{
  sub_2281933B0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2281933B0(uint64_t a1)
{
  if (!qword_27D823DA0)
  {
    sub_22817A958(255, &qword_27D825620, 0x277D82BB8);
    v1 = sub_228392F00();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823DA0);
    }
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_228193444(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_228192F08(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2281934E4()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_228193548(uint64_t a1)
{
  v2 = sub_2281946C4();

  return MEMORY[0x282169440](a1, v2);
}

id sub_228193594()
{
  v1 = sub_228392DE0();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - v6;
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI18ScheduleHeaderCell____lazy_storage___closeButton;
  v9 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI18ScheduleHeaderCell____lazy_storage___closeButton];
  if (v9)
  {
    v10 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI18ScheduleHeaderCell____lazy_storage___closeButton];
  }

  else
  {
    sub_22817A958(0, &qword_27D827890, 0x277D750C8);
    *(swift_allocObject() + 16) = v0;
    v11 = v0;
    v12 = v0;
    v13 = sub_228392C90();
    sub_228392DA0();
    v14 = sub_228391FC0();
    v15 = [objc_opt_self() systemImageNamed_];

    sub_228392D90();
    v16 = [objc_opt_self() preferredFontForTextStyle_];
    v17 = objc_opt_self();
    v18 = [v17 configurationWithFont:v16 scale:3];

    v19 = [objc_opt_self() secondaryLabelColor];
    v20 = [v17 configurationWithHierarchicalColor_];

    v21 = [v18 configurationByApplyingConfiguration_];
    sub_228392CA0();
    sub_22817A958(0, &unk_280DDB940, 0x277D75220);
    (*(v2 + 16))(v5, v7, v1);
    v22 = v13;
    v23 = sub_228392DF0();
    [v23 setTranslatesAutoresizingMaskIntoConstraints_];

    (*(v2 + 8))(v7, v1);
    v24 = *&v12[v8];
    *&v12[v8] = v23;
    v10 = v23;

    v9 = 0;
  }

  v25 = v9;
  return v10;
}

uint64_t sub_2281938F0(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI18ScheduleHeaderCell_item;
  swift_beginAccess();
  sub_22817E6C8(a2 + v3, v7);
  if (!v8)
  {
    return sub_22819482C(v7);
  }

  sub_22817A700();
  result = swift_dynamicCast();
  if (result)
  {

    v6(v5);
  }

  return result;
}

uint64_t sub_2281939AC(_BYTE *a1)
{
  v3 = sub_228391590();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI18ScheduleHeaderCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v7);
  swift_endAccess();
  sub_22817E6C8(v1 + v7, v22);
  if (v23)
  {
    sub_22817A700();
    if (swift_dynamicCast())
    {
      v14 = v18;
      v15 = v21;
      v16 = v20;
      sub_2283914F0();
      sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
      sub_228392AD0();
      v8 = sub_228391450();
      sub_228391410();
      v8(&v17, 0);

      sub_228391540();
      v19 = v3;
      v20 = MEMORY[0x277D74C30];
      v9 = __swift_allocate_boxed_opaque_existential_1(&v17);
      (*(v4 + 16))(v9, v6, v3);
      MEMORY[0x22AAB6400](&v17);
      sub_228193F54();
      v10 = sub_228193594();
      [v10 setHidden_];

      sub_22819482C(a1);
      return (*(v4 + 8))(v6, v3);
    }

    v12 = a1;
  }

  else
  {
    sub_22819482C(a1);
    v12 = v22;
  }

  return sub_22819482C(v12);
}

void (*sub_228193C4C(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xE8uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 192) = v1;
  v6 = sub_228391590();
  v5[25] = v6;
  v7 = *(v6 - 8);
  v5[26] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR____TtC19HealthMedicationsUI18ScheduleHeaderCell_item;
  v5[27] = v8;
  v5[28] = v9;
  swift_beginAccess();
  return sub_228193D3C;
}

void sub_228193D3C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_22817E6C8(*(v3 + 192) + *(v3 + 224), v3 + 56);
    if (*(v3 + 80))
    {
      sub_22817A700();
      if (swift_dynamicCast())
      {
        v5 = *(v3 + 208);
        v4 = *(v3 + 216);
        v6 = *(v3 + 200);
        v11 = *(v3 + 16);
        sub_2283914F0();
        sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
        sub_228392AD0();
        v7 = sub_228391450();
        sub_228391410();
        v7(v3 + 136, 0);

        sub_228391540();
        v8 = MEMORY[0x277D74C30];
        *(v3 + 120) = v6;
        *(v3 + 128) = v8;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 96));
        (*(v5 + 16))(boxed_opaque_existential_1, v4, v6);
        MEMORY[0x22AAB6400](v3 + 96);
        sub_228193F54();
        v10 = sub_228193594();
        [v10 setHidden_];

        (*(v5 + 8))(v4, v6);
      }
    }

    else
    {
      sub_22819482C(v3 + 56);
    }
  }

  free(*(v3 + 216));

  free(v3);
}

void sub_228193F54()
{
  v1 = [v0 subviews];
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v2 = sub_2283921A0();

  v3 = sub_228193594();
  v19 = v3;
  v18[2] = &v19;
  v4 = sub_228309FEC(sub_2281947C4, v18, v2);

  if ((v4 & 1) == 0)
  {
    v5 = [v0 contentView];
    v6 = OBJC_IVAR____TtC19HealthMedicationsUI18ScheduleHeaderCell____lazy_storage___closeButton;
    [v5 addSubview_];

    v7 = objc_opt_self();
    sub_228180ED0();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_228397F20;
    v9 = [*&v0[v6] centerYAnchor];
    v10 = [v0 contentView];
    v11 = [v10 centerYAnchor];

    v12 = [v9 constraintEqualToAnchor_];
    *(v8 + 32) = v12;
    v13 = [*&v0[v6] trailingAnchor];
    v14 = [v0 contentView];
    v15 = [v14 trailingAnchor];

    v16 = [v13 constraintEqualToAnchor_];
    *(v8 + 40) = v16;
    sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
    v17 = sub_228392190();

    [v7 activateConstraints_];
  }
}

id sub_2281942FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduleHeaderCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
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

uint64_t sub_2281943BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_228194404(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_228194464()
{
  result = qword_27D823DB8;
  if (!qword_27D823DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D823DB8);
  }

  return result;
}

uint64_t sub_2281944B8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI18ScheduleHeaderCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t (*sub_228194514(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_228193C4C(v2);
  return sub_228194584;
}

uint64_t sub_228194588@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI18ScheduleHeaderCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a1);
}

uint64_t (*sub_228194608(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_228193C4C(v2);
  return sub_228194890;
}

void sub_22819467C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_2281946C4()
{
  result = qword_27D823DC0;
  if (!qword_27D823DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D823DC0);
  }

  return result;
}

unint64_t sub_228194718()
{
  result = qword_27D823DC8;
  if (!qword_27D823DC8)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D823DC8);
  }

  return result;
}

uint64_t sub_22819482C(uint64_t a1)
{
  sub_228181D50(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228194894(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v21 = MEMORY[0x277D84F90];
    sub_2281C9DEC(0, v1, 0);
    v2 = v21;
    v4 = a1 + 32;
    v5 = MEMORY[0x277D10D48];
    v6 = MEMORY[0x277D10D40];
    do
    {
      sub_228180FB0(v4, v17);
      sub_22818217C(0, &qword_280DDCD60, v5, 1);
      sub_22818217C(0, &qword_27D827E00, v6, 1);
      swift_dynamicCast();
      v21 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2281C9DEC((v7 > 1), v8 + 1, 1);
      }

      v9 = v19;
      v10 = v20;
      v11 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
      MEMORY[0x28223BE20](v11);
      v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v14 + 16))(v13);
      sub_2283334D8(v8, v13, &v21, v9, v10);
      __swift_destroy_boxed_opaque_existential_0(v18);
      v2 = v21;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_228194A7C(uint64_t a1)
{
  v2 = type metadata accessor for MedicationSearchItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2281C9DEC(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_22819A488(v8, v5, type metadata accessor for MedicationSearchItem);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2281C9DEC((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_22819A4F0(&qword_27D823E88, type metadata accessor for MedicationSearchItem, &protocol conformance descriptor for MedicationSearchItem);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_22819A488(v5, boxed_opaque_existential_1, type metadata accessor for MedicationSearchItem);
      *(v7 + 16) = v11 + 1;
      sub_22816DFFC(&v14, v7 + 40 * v11 + 32);
      sub_22819A538(v5, type metadata accessor for MedicationSearchItem);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_228194C70(uint64_t a1)
{
  sub_228199F78(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v18 = MEMORY[0x277D84F90];
    sub_2281C9DEC(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);
    do
    {
      sub_22819A488(v9, v6, sub_228199F78);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2281C9DEC((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v3;
      v17 = sub_22819A4F0(&qword_27D823E18, sub_228199F78, &protocol conformance descriptor for MedmojiConfigItem<A>);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      sub_22819A488(v6, boxed_opaque_existential_1, sub_228199F78);
      *(v8 + 16) = v12 + 1;
      sub_22816DFFC(&v15, v8 + 40 * v12 + 32);
      sub_22819A538(v6, sub_228199F78);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_228194E64(uint64_t a1)
{
  v2 = type metadata accessor for ScheduleIntervalItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2281C9DB4(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_22819A488(v8, v5, type metadata accessor for ScheduleIntervalItem);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2281C9DB4((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_22819A4F0(&qword_27D823E78, type metadata accessor for ScheduleIntervalItem, &unk_2283A2738);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_22819A488(v5, boxed_opaque_existential_1, type metadata accessor for ScheduleIntervalItem);
      *(v7 + 16) = v11 + 1;
      sub_22816DFFC(&v14, v7 + 40 * v11 + 32);
      sub_22819A538(v5, type metadata accessor for ScheduleIntervalItem);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_2281950A0(uint64_t a1)
{
  v2 = type metadata accessor for MedicationSearchItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2281C9DB4(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_22819A488(v8, v5, type metadata accessor for MedicationSearchItem);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2281C9DB4((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_22819A4F0(&qword_27D823E90, type metadata accessor for MedicationSearchItem, &protocol conformance descriptor for MedicationSearchItem);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_22819A488(v5, boxed_opaque_existential_1, type metadata accessor for MedicationSearchItem);
      *(v7 + 16) = v11 + 1;
      sub_22816DFFC(&v14, v7 + 40 * v11 + 32);
      sub_22819A538(v5, type metadata accessor for MedicationSearchItem);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t _sSa19HealthMedicationsUIAA12LoggableDoseORszlE9lineItemsSayAA30DayScheduleLineItemDisplayable_pGvg_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v15 = MEMORY[0x277D84F90];
    sub_2281C9FC4(0, v1, 0);
    v2 = v15;
    v4 = (a1 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      sub_22819A598(v5, v6, *v4);
      v15 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2281C9FC4((v8 > 1), v9 + 1, 1);
        v2 = v15;
      }

      v13 = &type metadata for LoggableDose;
      v14 = &protocol witness table for LoggableDose;
      *&v11 = v5;
      *(&v11 + 1) = v6;
      v12 = v7;
      *(v2 + 16) = v9 + 1;
      sub_22816DFFC(&v11, v2 + 40 * v9 + 32);
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2281953A0(uint64_t a1)
{
  v2 = type metadata accessor for MedicationsRecordDoseItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2281C9DEC(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_22819A488(v8, v5, type metadata accessor for MedicationsRecordDoseItem);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2281C9DEC((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_22819A4F0(&qword_27D823EF8, type metadata accessor for MedicationsRecordDoseItem, &unk_22839C1D4);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_22819A488(v5, boxed_opaque_existential_1, type metadata accessor for MedicationsRecordDoseItem);
      *(v7 + 16) = v11 + 1;
      sub_22816DFFC(&v14, v7 + 40 * v11 + 32);
      sub_22819A538(v5, type metadata accessor for MedicationsRecordDoseItem);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_228195594(uint64_t a1)
{
  v2 = sub_228390170();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    sub_2281C9DEC(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2281C9DEC((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = sub_22819A4F0(&qword_27D823AB0, MEMORY[0x277D11000], MEMORY[0x277D10FF0]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
      v9(boxed_opaque_existential_1, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_22816DFFC(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_22819578C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_2281C9DEC(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      sub_22819A1A8(v4, v11);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2281C9DEC((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for MedicationDoseLogMedicationItem;
      v10 = sub_22819A204();
      *&v8 = swift_allocObject();
      sub_22819A1A8(v11, v8 + 16);
      *(v2 + 16) = v6 + 1;
      sub_22816DFFC(&v8, v2 + 40 * v6 + 32);
      sub_22819A258(v11);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2281958B0(uint64_t a1)
{
  v2 = type metadata accessor for MedicationDoseRecordAllItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2281C9DEC(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_22819A488(v8, v5, type metadata accessor for MedicationDoseRecordAllItem);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2281C9DEC((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_22819A4F0(&qword_27D823E40, type metadata accessor for MedicationDoseRecordAllItem, &unk_2283A23D4);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_22819A488(v5, boxed_opaque_existential_1, type metadata accessor for MedicationDoseRecordAllItem);
      *(v7 + 16) = v11 + 1;
      sub_22816DFFC(&v14, v7 + 40 * v11 + 32);
      sub_22819A538(v5, type metadata accessor for MedicationDoseRecordAllItem);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_228195AA4(uint64_t a1)
{
  v2 = type metadata accessor for MedicationLogDetailsUnitItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2281C9DEC(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_22819A488(v8, v5, type metadata accessor for MedicationLogDetailsUnitItem);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2281C9DEC((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_22819A4F0(&qword_27D8254B0, type metadata accessor for MedicationLogDetailsUnitItem, &unk_22839C830);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_22819A488(v5, boxed_opaque_existential_1, type metadata accessor for MedicationLogDetailsUnitItem);
      *(v7 + 16) = v11 + 1;
      sub_22816DFFC(&v14, v7 + 40 * v11 + 32);
      sub_22819A538(v5, type metadata accessor for MedicationLogDetailsUnitItem);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_228195C98(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_2281CA0AC(0, v1, 0);
    v2 = v13;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v13 = v2;
      v6 = *(v2 + 16);
      v7 = *(v2 + 24);

      if (v6 >= v7 >> 1)
      {
        sub_2281CA0AC((v7 > 1), v6 + 1, 1);
        v2 = v13;
      }

      sub_22819A174(0);
      v11 = v8;
      v12 = &protocol witness table for <A> [A];
      *&v10 = v5;
      *(v2 + 16) = v6 + 1;
      sub_22816DFFC(&v10, v2 + 40 * v6 + 32);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_228195DDC(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (a1 >> 62)
  {
    v9 = sub_2283930D0();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v24 = MEMORY[0x277D84F90];
  result = sub_2281C9DEC(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = v24;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = 0;
      do
      {
        v13 = MEMORY[0x22AAB6D80](v12, a1);
        v24 = v10;
        v15 = *(v10 + 16);
        v14 = *(v10 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_2281C9DEC((v14 > 1), v15 + 1, 1);
          v10 = v24;
        }

        ++v12;
        v22 = a2(0);
        v23 = sub_22819A4F0(a3, a4, a5);
        *&v21 = v13;
        *(v10 + 16) = v15 + 1;
        sub_22816DFFC(&v21, v10 + 40 * v15 + 32);
      }

      while (v9 != v12);
    }

    else
    {
      v16 = (a1 + 32);
      do
      {
        v17 = *v16;
        v24 = v10;
        v19 = *(v10 + 16);
        v18 = *(v10 + 24);

        if (v19 >= v18 >> 1)
        {
          sub_2281C9DEC((v18 > 1), v19 + 1, 1);
          v10 = v24;
        }

        v22 = a2(0);
        v23 = sub_22819A4F0(a3, a4, a5);
        *&v21 = v17;
        *(v10 + 16) = v19 + 1;
        sub_22816DFFC(&v21, v10 + 40 * v19 + 32);
        ++v16;
        --v9;
      }

      while (v9);
    }

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_228195FC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_2281CA194(0, v1, 0);
    v2 = v13;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v13 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);

      if (v7 >= v6 >> 1)
      {
        sub_2281CA194((v6 > 1), v7 + 1, 1);
        v2 = v13;
      }

      sub_22819A5DC(0, &qword_27D823EC0, &type metadata for LoggableDose, MEMORY[0x277D83940]);
      v11 = v8;
      v12 = &protocol witness table for <A> [A];
      *&v10 = v5;
      *(v2 + 16) = v7 + 1;
      sub_22816DFFC(&v10, v2 + 40 * v7 + 32);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_2281960E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2283930D0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_2281CA1CC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x22AAB6D80](i, a1);
        sub_22817A958(0, &unk_280DDBAA0, 0x277CCA898);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2281CA1CC((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_22819A2AC(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_22817A958(0, &unk_280DDBAA0, 0x277CCA898);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2281CA1CC((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_22819A2AC(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2281962E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v24 = MEMORY[0x277D84F90];
    sub_2281C9DEC(0, v1, 0);
    v2 = v24;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[2];
      v6 = v4[4];
      v21 = v4[3];
      v22 = v6;
      v23 = *(v4 + 10);
      v7 = v4[1];
      v18 = *v4;
      v19 = v7;
      v20 = v5;
      sub_22819A0C4(&v18, &v15);
      v24 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2281C9DEC((v8 > 1), v9 + 1, 1);
        v2 = v24;
      }

      v16 = &type metadata for ScheduleTypeOptionItem;
      v17 = sub_22819A120();
      v10 = swift_allocObject();
      *&v15 = v10;
      v11 = v21;
      v12 = v22;
      *(v10 + 48) = v20;
      *(v10 + 64) = v11;
      *(v10 + 80) = v12;
      *(v10 + 96) = v23;
      v13 = v19;
      *(v10 + 16) = v18;
      *(v10 + 32) = v13;
      *(v2 + 16) = v9 + 1;
      sub_22816DFFC(&v15, v2 + 40 * v9 + 32);
      v4 = (v4 + 88);
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_22819643C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2283930D0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x277D84F90];
  result = sub_2281C9DB4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x22AAB6D80](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_2281C9DB4((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for InteractionMedicationItem();
        v15 = sub_22819A4F0(&qword_27D823E68, type metadata accessor for InteractionMedicationItem, &protocol conformance descriptor for InteractionMedicationItem);
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        sub_22816DFFC(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);

        if (v11 >= v12 >> 1)
        {
          sub_2281C9DB4((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for InteractionMedicationItem();
        v15 = sub_22819A4F0(&qword_27D823E68, type metadata accessor for InteractionMedicationItem, &protocol conformance descriptor for InteractionMedicationItem);
        *&v13 = v10;
        *(v3 + 16) = v11 + 1;
        sub_22816DFFC(&v13, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2281966EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_2281CA1CC(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2281CA1CC((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_22819A2AC(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_2281967EC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2283930D0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v18 = MEMORY[0x277D84F90];
  result = sub_2281CA2FC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v18;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x22AAB6D80](v5, a1);
        v8 = *(v18 + 16);
        v7 = *(v18 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_2281CA2FC((v7 > 1), v8 + 1, 1);
        }

        ++v5;
        v9 = sub_22819A4F0(&qword_27D823DD8, type metadata accessor for InteractionSeverityDataSource, MEMORY[0x277D12500]);
        *(v18 + 16) = v8 + 1;
        v10 = v18 + 16 * v8;
        *(v10 + 32) = v6;
        *(v10 + 40) = v9;
      }

      while (v2 != v5);
    }

    else
    {
      v11 = (a1 + 32);
      v12 = *(v18 + 16);
      v13 = 16 * v12;
      do
      {
        v14 = *v11;
        v15 = *(v18 + 24);

        if (v12 >= v15 >> 1)
        {
          sub_2281CA2FC((v15 > 1), v12 + 1, 1);
        }

        v16 = sub_22819A4F0(&qword_27D823DD8, type metadata accessor for InteractionSeverityDataSource, MEMORY[0x277D12500]);
        *(v18 + 16) = v12 + 1;
        v17 = v18 + v13;
        *(v17 + 32) = v14;
        *(v17 + 40) = v16;
        v13 += 16;
        ++v11;
        ++v12;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t LoggableDose.scheduleDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22838F440();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if ((*(v1 + 16) & 1) == 0)
  {
    return sub_228390920();
  }

  v8 = *(v1 + 8);
  v9 = [*v1 scheduledDate];
  if (v9)
  {
    v10 = v9;
    sub_22838F3E0();

    return (*(v4 + 32))(a1, v6, v3);
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_2283931D0();
    v19 = v16;
    v20 = v17;
    MEMORY[0x22AAB5C80](0xD000000000000018, 0x80000002283A81D0);
    v16 = v7;
    v17 = v8;
    v18 = 1;
    v12 = v7;
    v13 = v8;
    v14 = sub_228392040();
    MEMORY[0x22AAB5C80](v14);

    MEMORY[0x22AAB5C80](0xD000000000000036, 0x80000002283A81F0);
    result = sub_228393300();
    __break(1u);
  }

  return result;
}

double *LoggableDose.makeLoggingViewModel(index:)(uint64_t a1)
{
  v3 = sub_22838F440();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v34 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v16 = *v1;
  v15 = *(v1 + 8);
  v17 = *(v1 + 16);
  v18 = v15;
  if (v17)
  {
    v19 = v16;
    sub_22838F3F0();
    type metadata accessor for MedicationsDoseLogViewModel(0);
    v20 = swift_allocObject();
    *(v20 + 2) = v18;
    *(v20 + 3) = v16;
    v20[4] = 0.0;
    v21 = v19;
    *&v22 = COERCE_DOUBLE(sub_2283928B0());
    v34 = a1;
    if ((v23 & 1) == 0 || (*&v22 = COERCE_DOUBLE(sub_2283928A0()), v24 = 1.0, (v25 & 1) == 0))
    {
      v24 = *&v22;
    }

    v20[5] = v24;
    v26 = [v21 logStatus];
    *(v20 + 6) = v26;
    v27 = [v21 logStatus];
    *(v20 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus) = v27;
    if (qword_283B66B28 == v26 || qword_283B66B30 == v26)
    {
      v29 = [v21 startDate];
      sub_22838F3E0();
    }

    else
    {
      (*(v4 + 16))(v9, v12, v3);
    }

    v30 = *(v4 + 32);
    v30(v20 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate, v9, v3);
    if (qword_283B66B28 == v26 || qword_283B66B30 == v26)
    {
      v32 = [v21 startDate];

      v31 = v35;
      sub_22838F3E0();

      (*(v4 + 8))(v12, v3);
    }

    else
    {

      v31 = v35;
      v30(v35, v12, v3);
    }

    v30(v20 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialLogDate, v31, v3);
    a1 = v34;
  }

  else
  {

    sub_22838F3F0();
    type metadata accessor for MedicationsDoseLogViewModel(0);
    v20 = swift_allocObject();
    *(v20 + 2) = v18;
    v20[3] = 0.0;
    *(v20 + 4) = v16;

    sub_2283908F0();
    v24 = v28;

    v20[5] = v24;
    *(v20 + 6) = 1;
    *(v20 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus) = 1;
    (*(v4 + 16))(v20 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate, v14, v3);
    (*(v4 + 32))(v20 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialLogDate, v14, v3);
  }

  *(v20 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialDoseAmount) = v24;
  *(v20 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_index) = a1;
  return v20;
}

double *LoggableDose.makeLoggingViewModel(logDate:index:)(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v4 = sub_22838F440();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = MEMORY[0x28223BE20](&v35 - v11);
  v14 = &v35 - v13;
  v16 = *v2;
  v15 = *(v2 + 8);
  v17 = *(v5 + 16);
  if (*(v2 + 16))
  {
    v35 = *(v5 + 16);
    v36 = v12;
    v17(v12, a1, v4);
    type metadata accessor for MedicationsDoseLogViewModel(0);
    v18 = swift_allocObject();
    *(v18 + 2) = v15;
    *(v18 + 3) = v16;
    v18[4] = 0.0;
    v19 = v16;
    v20 = v15;
    *&v21 = COERCE_DOUBLE(sub_2283928B0());
    if ((v22 & 1) == 0 || (*&v21 = COERCE_DOUBLE(sub_2283928A0()), v23 = 1.0, (v24 & 1) == 0))
    {
      v23 = *&v21;
    }

    v18[5] = v23;
    v25 = [v19 logStatus];
    *(v18 + 6) = v25;
    v26 = [v19 logStatus];
    *(v18 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus) = v26;
    if (qword_283B66B88 == v25 || qword_283B66B90 == v25)
    {
      v30 = [v19 startDate];
      sub_22838F3E0();
    }

    else
    {
      v35(v10, v36, v4);
    }

    v31 = *(v5 + 32);
    v31(v18 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate, v10, v4);
    if (qword_283B66B88 == v25 || qword_283B66B90 == v25)
    {
      v33 = [v19 startDate];

      v32 = v37;
      sub_22838F3E0();

      (*(v5 + 8))(v36, v4);
    }

    else
    {

      v32 = v37;
      v31(v37, v36, v4);
    }

    v31(v18 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialLogDate, v32, v4);
  }

  else
  {
    v27 = *(v5 + 16);
    v17(&v35 - v13, a1, v4);
    type metadata accessor for MedicationsDoseLogViewModel(0);
    v18 = swift_allocObject();
    *(v18 + 2) = v15;
    v18[3] = 0.0;
    *(v18 + 4) = v16;
    swift_retain_n();
    v28 = v15;
    sub_2283908F0();
    v23 = v29;

    v18[5] = v23;
    *(v18 + 6) = 1;
    *(v18 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus) = 1;
    v27(v18 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate, v14, v4);
    (*(v5 + 32))(v18 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialLogDate, v14, v4);
  }

  *(v18 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialDoseAmount) = v23;
  *(v18 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_index) = v38;
  return v18;
}

void LoggableDose.medmojiConfiguration.getter()
{
  v1 = *(v0 + 8);
  _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
}

id LoggableDose.isLastScheduledDose.getter()
{
  if (*(v0 + 16))
  {
    return [*v0 isLastScheduledDose];
  }

  else
  {
    return (sub_228390910() & 1);
  }
}

void sub_2281974F8()
{
  v1 = *(v0 + 8);
  _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
}

id sub_22819754C()
{
  if (*(v0 + 16))
  {
    return [*v0 isLastScheduledDose];
  }

  else
  {
    return (sub_228390910() & 1);
  }
}

uint64_t Array<A>.date.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    LoggableDose.scheduleDate.getter(a2);
    v3 = sub_22838F440();
    v4 = *(*(v3 - 8) + 56);
    v5 = v3;
    v6 = a2;
    v7 = 0;
  }

  else
  {
    v8 = sub_22838F440();
    v4 = *(*(v8 - 8) + 56);
    v5 = v8;
    v6 = a2;
    v7 = 1;
  }

  return v4(v6, v7, 1, v5);
}

uint64_t Array<A>.time.getter(uint64_t a1)
{
  v2 = sub_22838F250();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22838F270();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22838F440();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v14 = *(a1 + 48);
  v17 = *(a1 + 32);
  v18 = v14;
  LoggableDose.scheduleDate.getter(v13);
  sub_22838F260();
  sub_22838F240();
  v15 = sub_22838F400();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  return v15;
}

uint64_t Array<A>.timeText.getter(unint64_t a1)
{
  v16 = sub_22838F250();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22838F270();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22838F440();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Array<A>.logTime.getter(a1, v12);
  sub_22838F260();
  sub_22838F240();
  v13 = sub_22838F400();
  (*(v2 + 8))(v4, v16);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  return v13;
}

uint64_t Array<A>.logTime.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22838F440();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228199E08(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  if (a1 >> 62)
  {
    result = sub_2283930D0();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    (*(v5 + 56))(v10, 1, 1, v4);
    sub_22838F430();
    result = (*(v5 + 48))(v10, 1, v4);
    if (result != 1)
    {
      return sub_2281982F0(v10);
    }

    return result;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x22AAB6D80](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_6:
    v12 = sub_228390A10();

    v13 = [v12 startDate];

    sub_22838F3E0();
    v14 = *(v5 + 32);
    v14(v10, v7, v4);
    (*(v5 + 56))(v10, 0, 1, v4);
    return (v14)(a2, v10, v4);
  }

  __break(1u);
  return result;
}

void *Array<A>.lineItems.getter(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v3 = 0;
    v28 = v1 & 0xFFFFFFFFFFFFFF8;
    v29 = v1 & 0xC000000000000001;
    v4 = MEMORY[0x277D84F90];
    v26 = i;
    v27 = v1;
    while (v29)
    {
      MEMORY[0x22AAB6D80](v3, v1);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      v6 = sub_228390A20();
      if (v6)
      {
        v7 = v6;
        v35[0] = v6;
        sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
        v8 = sub_228390F20();
        v10 = v9;
        v11 = sub_228390A10();
        v12 = [v11 logStatus];

        v13 = v12 == 5;
        v14 = sub_228390A10();
        LOBYTE(v12) = [v14 isLastScheduledDose];

        v33 = &type metadata for MedicationsDayHistoryLineItem;
        v34 = &off_283B690A8;

        *&v30 = v8;
        *(&v30 + 1) = v10;
        v31 = v13;
        v32 = v12;
        sub_22816DFFC(&v30, v35);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v4 = sub_228198B28(0, v4[2] + 1, 1, v4, &qword_27D823F00, &qword_27D823F08, &protocol descriptor for DayHistoryLineItemDisplayable);
          v38 = v4;
        }

        v17 = v4[2];
        v16 = v4[3];
        if (v17 >= v16 >> 1)
        {
          v4 = sub_228198B28((v16 > 1), v17 + 1, 1, v4, &qword_27D823F00, &qword_27D823F08, &protocol descriptor for DayHistoryLineItemDisplayable);
          v38 = v4;
        }

        v18 = v36;
        v19 = v37;
        v20 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
        MEMORY[0x28223BE20](v20);
        v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v23 + 16))(v22);
        sub_228199BA4(v17, v22, &v38, v18, v19);
        __swift_destroy_boxed_opaque_existential_0(v35);
        i = v26;
        v1 = v27;
      }

      else
      {
      }

      ++v3;
      if (v5 == i)
      {
        return v4;
      }
    }

    if (v3 >= *(v28 + 16))
    {
      goto LABEL_18;
    }

    v5 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2281980B0()
{
  v15 = sub_22838F250();
  v1 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22838F270();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22838F440();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Array<A>.logTime.getter(*v0, v11);
  sub_22838F260();
  sub_22838F240();
  v12 = sub_22838F400();
  (*(v1 + 8))(v3, v15);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t sub_2281982F0(uint64_t a1)
{
  sub_228199E08(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_228198390(char *result, int64_t a2, char a3, char *a4)
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
    sub_22819A5DC(0, &qword_280DDB8B8, &type metadata for MedicationCellItem, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22819851C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_228199E08(0, a5, a6, MEMORY[0x277D84560]);
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

char *sub_228198748(char *result, int64_t a2, char a3, char *a4)
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
    sub_22819A5DC(0, &qword_27D823EE0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_22819886C(char *result, int64_t a2, char a3, char *a4)
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
    sub_22819A5DC(0, &qword_27D823CC0, &type metadata for SpecificationStep, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_228198978(char *result, int64_t a2, char a3, char *a4)
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
    sub_228199E08(0, &qword_27D823E20, sub_22819A00C, MEMORY[0x277D84560]);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_228198B28(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_22819A064(0, a5, a6, a7, 1);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[5 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 40 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22818217C(0, a6, a7, 1);
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_228198C84(void *result, int64_t a2, char a3, void *a4)
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
    sub_22819A064(0, &qword_27D827750, &qword_27D8238E8, MEMORY[0x277D10F28], 0);
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
    v10 = MEMORY[0x277D84F90];
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
    sub_22818217C(0, &qword_27D8238E8, MEMORY[0x277D10F28], 0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_228198DD0(void *result, int64_t a2, char a3, void *a4)
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
    sub_228199E08(0, &qword_280DDB878, type metadata accessor for UIContentSizeCategory, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for UIContentSizeCategory(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_228198F1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_22819A5DC(0, &qword_27D823EE8, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_228199094(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (!v14)
  {
    v18 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22819A3CC(0, a5, a6, a7);
  sub_22819A424(0, a6, a7);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v18);
  if (!v16)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v17) == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_29;
  }

  v18[2] = v13;
  v18[3] = 2 * ((result - v17) / v16);
LABEL_19:
  sub_22819A424(0, a6, a7);
  v21 = *(v20 - 8);
  if (v10)
  {
    if (v18 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v18 + v22 >= a4 + v22 + *(v21 + 72) * v13))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v18 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v18;
}

char *sub_2281992E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_22819A5DC(0, &qword_280DDB888, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_228199404(char *result, int64_t a2, char a3, char *a4)
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
    sub_22819A5DC(0, &qword_27D823E98, &type metadata for ScheduledDoseIdentifier, MEMORY[0x277D84560]);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_22819953C(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
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
    sub_22819A5DC(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_228199670(void *result, int64_t a2, char a3, void *a4)
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
    sub_228199E08(0, &qword_27D823EA8, sub_22819A174, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22819A174(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2281997DC(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
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
    sub_228199E08(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_2281998F0(void *result, int64_t a2, char a3, void *a4)
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
    sub_22819A2BC(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22819A5DC(0, &qword_27D823EC0, &type metadata for LoggableDose, MEMORY[0x277D83940]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_228199A30(char *result, int64_t a2, char a3, char *a4)
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
    sub_22819A5DC(0, &qword_27D823E48, &type metadata for LogDetailsRow, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_228199BA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_22816DFFC(&v12, v10 + 40 * a1 + 32);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CyclePhase(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CyclePhase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_228199E08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_228199E70(uint64_t a1)
{
  if (!qword_27D823DF0)
  {
    sub_228390E20();
    sub_228199E08(255, &qword_27D823DF8, sub_228199F10, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D823DF0);
    }
  }
}

void sub_228199F10(uint64_t a1)
{
  if (!qword_27D823E00)
  {
    sub_22817A958(255, &qword_280DDB990, 0x277D75348);
    v1 = sub_228391E40();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823E00);
    }
  }
}

void sub_228199F78(uint64_t a1)
{
  if (!qword_27D823E08)
  {
    v2 = sub_2283908E0();
    v3 = sub_22819A4F0(&qword_27D823E10, MEMORY[0x277D11618], &protocol conformance descriptor for MedmojiColor);
    v5 = type metadata accessor for MedmojiConfigItem(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D823E08);
    }
  }
}

void sub_22819A00C()
{
  if (!qword_27D823E28)
  {
    v0 = sub_228392550();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823E28);
    }
  }
}

void sub_22819A064(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, char a5)
{
  if (!*a2)
  {
    sub_22818217C(255, a3, a4, a5 & 1);
    v6 = sub_228393430();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_22819A120()
{
  result = qword_27D823E70;
  if (!qword_27D823E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D823E70);
  }

  return result;
}

unint64_t sub_22819A204()
{
  result = qword_27D823EB8;
  if (!qword_27D823EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D823EB8);
  }

  return result;
}

_OWORD *sub_22819A2AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_22819A2BC(uint64_t a1)
{
  if (!qword_27D823EC8)
  {
    sub_22819A5DC(255, &qword_27D823EC0, &type metadata for LoggableDose, MEMORY[0x277D83940]);
    v1 = sub_228393430();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823EC8);
    }
  }
}

void sub_22819A338(uint64_t a1)
{
  if (!qword_280DDCDF0)
  {
    sub_22838EF60();
    sub_22819A5DC(255, &unk_280DDBB70, MEMORY[0x277D839F8], MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DDCDF0);
    }
  }
}

void sub_22819A3CC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_22819A424(255, a3, a4);
    v5 = sub_228393430();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_22819A424(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_22819A488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22819A4F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22819A538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_22819A598(void *a1, void *a2, char a3)
{
  if (a3)
  {
    v3 = a1;
  }

  else
  {
  }

  return a2;
}

void sub_22819A5DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_22819A630()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  return v1;
}

id MedicationScheduleObserver.__allocating_init(healthStore:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_22819C7AC(a1);

  return v4;
}

id MedicationScheduleObserver.init(healthStore:)(void *a1)
{
  v2 = sub_22819C7AC(a1);

  return v2;
}

id MedicationScheduleObserver.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_scheduleControl] unregisterObserver_];
  if (*&v0[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_scheduleItemObserverTask])
  {
    sub_228192C1C();

    sub_228392330();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationScheduleObserver(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22819A900(uint64_t a1)
{
  v2 = v1;
  v4 = sub_228391DC0();
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_228391DF0();
  v7 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_queue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = sub_22819D208;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228191E9C;
  aBlock[3] = &block_descriptor_2;
  v12 = _Block_copy(aBlock);

  sub_228391DE0();
  v18 = MEMORY[0x277D84F90];
  sub_22819D970(&qword_280DDCF10, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v13 = MEMORY[0x277D85198];
  sub_22819CC64(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_22819D9B8(&qword_280DDCEF0, &qword_280DDCF00, v13);
  sub_228393030();
  MEMORY[0x22AAB6340](0, v9, v6, v12);
  _Block_release(v12);
  (*(v17 + 8))(v6, v4);
  (*(v7 + 8))(v9, v16);
}

uint64_t sub_22819AC28(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_228391970();
  }

  return result;
}

uint64_t sub_22819AD28(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  sub_22819CC64(0, &qword_27D823F38, sub_22819CDF8, MEMORY[0x277D85780]);
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  sub_22819CC64(0, &unk_280DDCF40, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22819AE78, 0, 0);
}

uint64_t sub_22819AE78()
{
  v1 = v0[7];
  if (*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_scheduleItemObserverTask))
  {
    sub_228192C1C();

    sub_228392330();

    v1 = v0[7];
  }

  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[6];
  v7 = sub_22838EF60();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v2, v6, v7);
  (*(v8 + 56))(v2, 0, 1, v7);
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_dateInterval;
  swift_beginAccess();
  sub_22819CE60(v2, v1 + v9);
  swift_endAccess();
  v10 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_scheduleControl);
  [v10 unregisterObserver_];
  [v10 registerObserver:v1 queue:*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_queue)];
  *(swift_task_alloc() + 16) = v1;
  sub_22819CDF8(0);
  (*(v5 + 104))(v3, *MEMORY[0x277D85778], v4);
  sub_228392320();

  v11 = v0[1];

  return v11();
}

uint64_t sub_22819B0B8(uint64_t a1, uint64_t a2)
{
  sub_22819CC64(0, &qword_27D823FE0, sub_22819CDF8, MEMORY[0x277D85788]);
  v31 = v4;
  v36 = *(v4 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v4);
  v35 = &v29 - v5;
  sub_22819CC64(0, &qword_27D823FE8, sub_22819CDF8, MEMORY[0x277CBCEC0]);
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = *(v33 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  sub_22819CC64(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29 - v12;
  v32 = &v29 - v12;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = a1;
  sub_2283922E0();
  v15 = sub_2283922D0();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = a2;
  swift_beginAccess();
  sub_22819CC64(0, &unk_27D823FD0, sub_22819CDF8, MEMORY[0x277CBCED0]);
  sub_228391930();
  swift_endAccess();
  v16 = v33 + 32;
  v17 = *(v33 + 32);
  v18 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v34;
  v17(v18, v10, v34);
  v21 = v35;
  v20 = v36;
  v22 = v14;
  v23 = v31;
  (*(v36 + 16))(v35, v22, v31);
  v24 = (*(v16 + 48) + 40) & ~*(v16 + 48);
  v25 = (v7 + *(v20 + 80) + v24) & ~*(v20 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *(v26 + 4) = v30;
  v17(&v26[v24], v18, v19);
  (*(v20 + 32))(&v26[v25], v21, v23);
  v27 = sub_22819BCDC(0, 0, v32, &unk_228398C10, v26);
  *(v29 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_scheduleItemObserverTask) = v27;
}

void sub_22819B4FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_scheduleItemObserverTask);
    v4 = Strong;

    if (v3)
    {
      sub_228192C1C();
      sub_228392330();
    }
  }
}

uint64_t sub_22819B594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  sub_22819CC64(0, &qword_27D823FF0, sub_22819CDF8, MEMORY[0x277D85760]);
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  sub_22819D46C(0, &qword_27D823FF8, MEMORY[0x277CBCDD8]);
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();
  sub_22819D46C(0, &qword_27D824008, MEMORY[0x277CBCDC8]);
  v6[17] = v9;
  v6[18] = *(v9 - 8);
  v6[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22819B778, 0, 0);
}

uint64_t sub_22819B778()
{
  if (sub_228392340())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_22819BFD0();
    }

    v6 = v0[15];
    v5 = v0[16];
    v7 = v0[14];
    sub_22819CC64(0, &qword_27D823FE8, sub_22819CDF8, MEMORY[0x277CBCEC0]);
    v9 = v8;
    v10 = sub_22819D3E4();
    MEMORY[0x22AAB5680](v9, v10);
    sub_228391830();
    (*(v6 + 8))(v5, v7);
    v11 = sub_22819D508();
    v12 = swift_task_alloc();
    v0[20] = v12;
    *v12 = v0;
    v12[1] = sub_22819B950;
    v13 = v0[17];

    return MEMORY[0x282200308](v0 + 5, v13, v11);
  }
}

uint64_t sub_22819B950()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_22819BC5C;
  }

  else
  {
    v2 = sub_22819BA64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22819BA88()
{
  v1 = v0[22];
  if (!v1)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);
    goto LABEL_5;
  }

  if (sub_228392340())
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

LABEL_5:

    v2 = v0[1];

    return v2();
  }

  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v0[7] = v1;
  sub_22819CC64(0, &qword_27D823FE0, sub_22819CDF8, MEMORY[0x277D85788]);
  sub_2283922F0();
  (*(v5 + 8))(v4, v6);
  v7 = sub_22819D508();
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_22819B950;
  v9 = v0[17];

  return MEMORY[0x282200308](v0 + 5, v9, v7);
}

uint64_t sub_22819BC5C()
{
  *(v0 + 48) = *(v0 + 168);
  sub_228192C1C();
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_22819BCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x277D85720];
  sub_22819CC64(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_22819D57C(a3, v22 - v10, &qword_27D827C30, v8);
  v12 = sub_2283922D0();
  v13 = *(v12 - 8);
  LODWORD(v8) = (*(v13 + 48))(v11, 1, v12);

  if (v8 == 1)
  {
    sub_22819D5FC(v11, &qword_27D827C30, MEMORY[0x277D85720]);
  }

  else
  {
    sub_2283922C0();
    (*(v13 + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_228392250();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_228392060() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_22819D5FC(a3, &qword_27D827C30, MEMORY[0x277D85720]);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22819D5FC(a3, &qword_27D827C30, MEMORY[0x277D85720]);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_22819BFF0(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v27 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_22819CC64(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v28 = &v24 - v5;
  v6 = MEMORY[0x277CC88A8];
  sub_22819CC64(0, &unk_280DDCF40, MEMORY[0x277CC88A8], v3);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_22838EF60();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  v17 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_dateInterval;
  swift_beginAccess();
  sub_22819D57C(v2 + v17, v9, &unk_280DDCF40, v6);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_22819D5FC(v9, &unk_280DDCF40, MEMORY[0x277CC88A8]);
  }

  v25 = *(v11 + 32);
  v25(v16, v9, v10);
  v19 = sub_2283922D0();
  (*(*(v19 - 8) + 56))(v28, 1, 1, v19);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = *(v2 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_scheduleItemDataSource);
  (*(v11 + 16))(v14, v16, v10);
  v22 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = v21;
  v25(&v23[v22], v14, v10);
  *&v23[(v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8] = v20;

  sub_22819BCDC(0, 0, v28, v27, v23);

  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_22819C370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a6;
  v8 = swift_task_alloc();
  *(v6 + 48) = v8;
  *v8 = v6;
  v8[1] = sub_22819C414;

  return MEMORY[0x28216A9D8](a5);
}

uint64_t sub_22819C414(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22819C548, 0, 0);
  }
}

uint64_t sub_22819C548()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_22819A900(*(v0 + 56));
  }

  v3 = *(v0 + 8);

  return v3();
}

id MedicationScheduleObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_22819C674@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MedicationScheduleObserver(0);
  result = sub_228391840();
  *a2 = result;
  return result;
}

uint64_t sub_22819C6B4@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  *a2 = v4;
  return result;
}

uint64_t sub_22819C734(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_228391970();
}

id sub_22819C7AC(void *a1)
{
  v2 = v1;
  v29 = a1;
  sub_22819CC64(0, &unk_27D823FD0, sub_22819CDF8, MEMORY[0x277CBCED0]);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = v23 - v4;
  v25 = sub_228392780();
  v5 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_228392720();
  MEMORY[0x28223BE20](v8);
  v9 = sub_228391DF0();
  MEMORY[0x28223BE20](v9 - 8);
  v24 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_queue;
  v10 = sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v23[1] = "rverTask";
  v23[2] = v10;
  sub_228391DE0();
  v31 = MEMORY[0x277D84F90];
  sub_22819D970(&qword_27D824020, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v11 = MEMORY[0x277D85230];
  sub_22819CC64(0, &qword_27D824028, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_22819D9B8(&unk_27D824030, &qword_27D824028, v11);
  sub_228393030();
  (*(v5 + 104))(v7, *MEMORY[0x277D85260], v25);
  *&v1[v24] = sub_2283927B0();
  v12 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_dateInterval;
  v13 = sub_22838EF60();
  (*(*(v13 - 8) + 56))(&v2[v12], 1, 1, v13);
  *&v2[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_scheduleItemObserverTask] = 0;
  v14 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver__scheduleItems;
  v31 = MEMORY[0x277D84F90];
  sub_22819CDF8(0);
  v15 = v26;
  sub_228391920();
  (*(v27 + 32))(&v2[v14], v15, v28);
  v16 = v29;
  *&v2[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_healthStore] = v29;
  v17 = objc_allocWithZone(MEMORY[0x277D11578]);
  v18 = v16;
  v19 = [v17 initWithHealthStore_];
  *&v2[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_scheduleControl] = v19;
  sub_228390E50();
  swift_allocObject();
  v20 = v18;
  *&v2[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationScheduleObserver_scheduleItemDataSource] = sub_228390E40();
  v21 = type metadata accessor for MedicationScheduleObserver(0);
  v30.receiver = v2;
  v30.super_class = v21;
  return objc_msgSendSuper2(&v30, sel_init);
}

uint64_t type metadata accessor for MedicationScheduleObserver(uint64_t a1)
{
  result = qword_280DDC300;
  if (!qword_280DDC300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22819CC64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22819CCC8(uint64_t a1)
{
  v4 = *(sub_22838EF60() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22819DA1C;

  return sub_22819C370(a1, v6, v7, v8, v1 + v5, v9);
}

void sub_22819CDF8(uint64_t a1)
{
  if (!qword_27D823F40)
  {
    sub_22817A958(255, &qword_27D823F48, 0x277D11588);
    v1 = sub_228392240();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823F40);
    }
  }
}

uint64_t sub_22819CE60(uint64_t a1, uint64_t a2)
{
  sub_22819CC64(0, &unk_280DDCF40, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_22819CF10(uint64_t a1)
{
  sub_22819CC64(319, &unk_280DDCF40, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22819CC64(319, &unk_27D823FD0, sub_22819CDF8, MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of MedicationScheduleObserver.observeChanges(in:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x100);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22819DA1C;

  return v9(a1, a2);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22819D230(uint64_t a1)
{
  v3 = v2;
  sub_22819CC64(0, &qword_27D823FE8, sub_22819CDF8, MEMORY[0x277CBCEC0]);
  v6 = (*(*(v5 - 8) + 80) + 40) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  sub_22819CC64(0, &qword_27D823FE0, sub_22819CDF8, MEMORY[0x277D85788]);
  v9 = (v6 + v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22819DA1C;

  return sub_22819B594(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

unint64_t sub_22819D3E4()
{
  result = qword_27D824000;
  if (!qword_27D824000)
  {
    sub_22819CC64(255, &qword_27D823FE8, sub_22819CDF8, MEMORY[0x277CBCEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824000);
  }

  return result;
}

void sub_22819D46C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_22819CC64(255, &qword_27D823FE8, sub_22819CDF8, MEMORY[0x277CBCEC0]);
    v7 = v6;
    v8 = sub_22819D3E4();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_22819D508()
{
  result = qword_27D824010;
  if (!qword_27D824010)
  {
    sub_22819D46C(255, &qword_27D824008, MEMORY[0x277CBCDC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824010);
  }

  return result;
}

uint64_t sub_22819D57C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22819CC64(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22819D5FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22819CC64(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_2Tm()
{
  v1 = sub_22838EF60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22819D74C(uint64_t a1)
{
  v4 = *(sub_22838EF60() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22819D87C;

  return sub_22819C370(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_22819D87C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22819D970(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22819D9B8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_22819CC64(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for ManualNameStepViewController(uint64_t a1)
{
  result = qword_27D824040;
  if (!qword_27D824040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22819DAAC()
{
  sub_22819DEA8(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = *(*(v0 + qword_27D824D88) + 24);
  sub_22819DF44(0);
  sub_22819DFAC(&qword_27D824058, sub_22819DF44, MEMORY[0x277CBCE48]);

  sub_2283919A0();

  sub_22819DFAC(&qword_27D824060, sub_22819DEA8, MEMORY[0x277CBCB10]);
  v6 = sub_228391990();
  (*(v3 + 8))(v5, v2);
  return v6;
}

BOOL sub_22819DC64(uint64_t a1, uint64_t a2)
{
  v4 = sub_22838EEE0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  v13[0] = a1;
  v13[1] = a2;

  sub_22838EED0();
  sub_22819DFF4();
  v8 = sub_228392F70();
  v10 = v9;
  (*(v5 + 8))(v7, v4);

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  return v11 != 0;
}

BOOL sub_22819DD9C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22819DC64(*a1, a1[1]);
  *a2 = result;
  return result;
}

id sub_22819DE68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManualNameStepViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22819DEA8(uint64_t a1)
{
  if (!qword_27D824050)
  {
    sub_22819DF44(255);
    sub_22819DFAC(&qword_27D824058, sub_22819DF44, MEMORY[0x277CBCE48]);
    v1 = sub_2283916D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D824050);
    }
  }
}

void sub_22819DF44(uint64_t a1)
{
  if (!qword_27D8277D0)
  {
    sub_228182AD4();
    v1 = sub_228391880();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8277D0);
    }
  }
}

uint64_t sub_22819DFAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22819DFF4()
{
  result = qword_280DDBBC0;
  if (!qword_280DDBBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDBBC0);
  }

  return result;
}

BOOL == infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = [v5 identifier];

  v7 = [v6 rawIdentifier];
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v8);
  v10 = (*(v9 + 8))(v8, v9);
  v11 = [v10 identifier];

  v12 = [v11 rawIdentifier];
  return v7 == v12;
}

uint64_t InteractionResultDetailDataProvider.stackedMedmojiDisplayable.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 8));

  return sub_22816DFFC(a1, v1 + 8);
}

uint64_t InteractionResultDetailDataProvider.firstItemName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t InteractionResultDetailDataProvider.firstItemName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t InteractionResultDetailDataProvider.firstItemDetailsProviding.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 64));

  return sub_22816DFFC(a1, v1 + 64);
}

uint64_t InteractionResultDetailDataProvider.firstItemIngredients.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

uint64_t InteractionResultDetailDataProvider.secondItemName.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t InteractionResultDetailDataProvider.secondItemName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t InteractionResultDetailDataProvider.secondItemDetailsProviding.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 128));

  return sub_22816DFFC(a1, v1 + 128);
}

uint64_t InteractionResultDetailDataProvider.secondItemIngredients.setter(uint64_t a1)
{

  *(v1 + 168) = a1;
  return result;
}

uint64_t InteractionResultDetailDataProvider.education.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t InteractionResultDetailDataProvider.education.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return result;
}

uint64_t InteractionResultDetailDataProvider.attributions.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

uint64_t InteractionResultDetailDataProvider.attributions.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return result;
}

uint64_t InteractionResultDetailDataProvider.copySortingItemsByName()@<X0>(void *a1@<X8>)
{
  v4 = v1[6];
  v3 = v1[7];
  v6 = v1[14];
  v5 = v1[15];
  v7 = v6 == v4 && v5 == v3;
  if (v7 || (sub_228393460() & 1) == 0)
  {

    return sub_22819E748(v1, a1);
  }

  else
  {
    v8 = *v1;
    v9 = v1[4];
    v10 = v1[5];
    __swift_project_boxed_opaque_existential_0(v1 + 1, v9);
    v17 = v10[5];
    v18 = v8;
    v11 = v1;
    v17(v9, v10);
    sub_228180FB0((v1 + 16), (a1 + 8));
    sub_228180FB0((v1 + 8), (a1 + 16));
    v12 = v1[22];
    v13 = v1[23];
    v15 = v11[24];
    v14 = v11[25];
    *a1 = v18;
    a1[6] = v6;
    a1[7] = v5;
    a1[13] = 0;
    a1[14] = v4;
    a1[15] = v3;
    a1[21] = 0;
    a1[22] = v12;
    a1[23] = v13;
    a1[24] = v15;
    a1[25] = v14;
  }
}

uint64_t sub_22819E7A0()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_22819E7F8()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t sub_22819E850()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t sub_22819E880()
{
  v1 = *(v0 + 192);

  return v1;
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_22819E9B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_22819E9FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_22819EA80()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);

  __swift_destroy_boxed_opaque_existential_0(v0 + 18);

  return v0;
}

uint64_t sub_22819EAD8()
{
  sub_22819EA80();

  return swift_deallocClassInstance();
}

uint64_t sub_22819EB58()
{
  v1 = sub_22838F4A0();
  v46 = *(v1 - 8);
  v47 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22819A064(0, &qword_27D827750, &qword_27D8238E8, MEMORY[0x277D10F28], 0);
  v4 = swift_allocObject();
  v45 = xmmword_228397F40;
  v48 = v4;
  *(v4 + 16) = xmmword_228397F40;
  v5 = v0[2];
  sub_228180FB0((v0 + 3), v59);
  v6 = v0[8];
  v7 = v0[9];
  sub_228180FB0((v0 + 10), v58);
  v8 = v0[15];
  v9 = v0[16];
  v10 = v0[17];
  sub_228180FB0((v0 + 18), v57);
  v11 = v0[23];
  type metadata accessor for InteractionDetailDataSource(0);
  v12 = swift_allocObject();
  *(v12 + qword_27D828168) = v5;
  sub_228180FB0(v59, v12 + qword_27D828170);
  v13 = (v12 + qword_27D828178);
  v44 = v6;
  *v13 = v6;
  v13[1] = v7;
  v49 = v7;
  sub_228180FB0(v58, v12 + qword_27D828180);
  *(v12 + qword_27D828188) = v8;
  v14 = (v12 + qword_27D828190);
  *v14 = v9;
  v14[1] = v10;
  sub_228180FB0(v57, v12 + qword_27D828198);
  *(v12 + qword_27D8281A0) = v11;
  swift_beginAccess();
  v15 = *(v5 + 16);
  if (!(v15 >> 62))
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = sub_2283930D0();
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_3:
  v43 = v12;
  if ((v15 & 0xC000000000000001) != 0)
  {
LABEL_16:
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v18 = MEMORY[0x22AAB6D80](0, v15);

LABEL_6:
    v42 = v3;
    v19 = [v18 educationContent];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 primarySection];

      if (v21)
      {
        v22 = [v21 attributions];

        if (v22)
        {
          sub_2283921A0();

          v21 = sub_2283921D0();
          v22 = v23;
        }

        else
        {
          v21 = 0;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = 0;
LABEL_12:
    sub_228180FB0(v59, v54);
    sub_228180FB0(v58, v55);
    sub_228180FB0(v57, v56);
    v24 = sub_22823D160();
    v53 = v18;
    v54[5] = v44;
    v54[6] = v49;
    v55[5] = v8;
    v55[6] = v9;
    v55[7] = v10;
    v56[5] = v11;
    v56[6] = v24;
    v56[7] = v25;
    v56[8] = v21;
    v56[9] = v22;
    v51 = &type metadata for InteractionResultDetailDataProvider;
    v52 = &protocol witness table for InteractionResultDetailDataProvider;
    *&v50 = swift_allocObject();
    sub_22819E748(&v53, v50 + 16);
    sub_22819F29C(0);
    v27 = v26;
    v28 = swift_allocObject();
    v29 = v18;
    sub_22838F490();
    v30 = (v28 + qword_27D828D58);
    type metadata accessor for InteractionResultDetailCell();
    sub_22819F408(&qword_27D824078, type metadata accessor for InteractionResultDetailCell, &protocol conformance descriptor for InteractionResultDetailCell);
    v31 = sub_22838FBB0();
    v33 = v32;

    sub_22819F35C(&v53);
    *v30 = v31;
    v30[1] = v33;
    sub_22816DFFC(&v50, v28 + *(*v28 + 120));
    v49 = sub_22834AA74(v5);
    sub_22819F3B0(0);
    v44 = *(*(sub_22838FEF0() - 8) + 72);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_228397F30;
    sub_22819A064(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], 1);
    v34 = swift_allocObject();
    *(v34 + 16) = v45;
    *(v34 + 56) = v27;
    *(v34 + 64) = sub_22819F408(&qword_27D824080, sub_22819F29C, &protocol conformance descriptor for InteractionResultItem<A, B>);
    *(v34 + 32) = v28;

    v35 = v42;
    sub_22838F490();
    sub_22838F450();
    v36 = v47;
    v37 = *(v46 + 8);
    v37(v35, v47);
    sub_22838FED0();
    sub_228194894(v49);

    sub_22838F490();
    sub_22838F450();
    v37(v35, v36);
    sub_22838FED0();
    v38 = sub_22838F920();

    __swift_destroy_boxed_opaque_existential_0(v57);
    __swift_destroy_boxed_opaque_existential_0(v58);
    __swift_destroy_boxed_opaque_existential_0(v59);
    v39 = sub_22819F408(&qword_27D824088, type metadata accessor for InteractionDetailDataSource, MEMORY[0x277D12500]);
    v40 = v48;
    *(v48 + 32) = v38;
    *(v40 + 40) = v39;
    return v40;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v15 + 32);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v18 = v17;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_22819F29C(uint64_t a1)
{
  if (!qword_27D824068)
  {
    v2 = type metadata accessor for InteractionResultDetailCell();
    v3 = sub_22818217C(255, &qword_27D824070, &protocol descriptor for InteractionResultDetailItemDisplayable, 1);
    v4 = sub_22819F408(&qword_27D824078, type metadata accessor for InteractionResultDetailCell, &protocol conformance descriptor for InteractionResultDetailCell);
    v5 = type metadata accessor for InteractionResultItem(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D824068);
    }
  }
}

void sub_22819F3B0(uint64_t a1)
{
  if (!qword_27D823910)
  {
    sub_22838FEF0();
    v1 = sub_228393430();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823910);
    }
  }
}

uint64_t sub_22819F408(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t InteractionSeperatorLineDataSource.init()()
{
  v0 = sub_22838F4A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22818272C(0, &qword_27D823910, MEMORY[0x277D10F78]);
  sub_22838FEF0();
  v4 = swift_allocObject();
  v11 = xmmword_228397F40;
  *(v4 + 16) = xmmword_228397F40;
  sub_22818272C(0, &qword_27D823918, sub_228182780);
  v5 = swift_allocObject();
  *(v5 + 16) = v11;
  v6 = type metadata accessor for InteractionSeparatorLineItem(0);
  v7 = swift_allocObject();
  sub_22838F490();
  v8 = (v7 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineItem_reuseIdentifier);
  type metadata accessor for InteractionSeparatorLineCell();
  sub_22819FA64(&qword_27D824090, type metadata accessor for InteractionSeparatorLineCell, &protocol conformance descriptor for InteractionSeparatorLineCell);
  *v8 = sub_22838FBB0();
  v8[1] = v9;
  *(v5 + 56) = v6;
  *(v5 + 64) = sub_22819FA64(&qword_27D824098, type metadata accessor for InteractionSeparatorLineItem, &protocol conformance descriptor for InteractionSeparatorLineItem);
  *(v5 + 32) = v7;
  sub_22838F490();
  sub_22838F450();
  (*(v1 + 8))(v3, v0);
  sub_22838FED0();
  return sub_22838F920();
}

uint64_t sub_22819F74C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_228390040();
  v6 = sub_228390090();
  *v7 = 0x4024000000000000;
  v6(v12, 0);
  v8 = sub_228390090();
  *(v9 + 16) = 0;
  v8(v12, 0);
  v10 = sub_2283900C0();
  (*(v3 + 8))(v5, v2);
  return v10;
}

uint64_t InteractionSeperatorLineDataSource.__deallocating_deinit()
{
  _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall InteractionSeperatorLineDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for InteractionSeparatorLineCell();
  sub_22819FA64(&qword_27D824090, type metadata accessor for InteractionSeparatorLineCell, &protocol conformance descriptor for InteractionSeparatorLineCell);
  sub_2283926B0();
}

uint64_t sub_22819F9AC()
{
  type metadata accessor for InteractionSeparatorLineCell();
  sub_22819FA64(&qword_27D824090, type metadata accessor for InteractionSeparatorLineCell, &protocol conformance descriptor for InteractionSeparatorLineCell);
  return sub_2283926B0();
}

uint64_t sub_22819FA64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for InteractionSeperatorLineDataSource(uint64_t a1)
{
  result = qword_27D8240A8;
  if (!qword_27D8240A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MedicationsAsNeededDoseDataSource.__allocating_init(healthStore:listManager:datePublisher:didTapRecordDoseHandler:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22838F4A0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = qword_27D8240B8;
  *(v14 + qword_27D8240C0) = 0;
  *(v14 + qword_27D8240C8) = a1;
  *(v14 + qword_27D8240D0) = a2;
  v22[1] = a3;
  v23[0] = 0;
  *(v14 + qword_27D8240D8) = a3;
  v16 = (v14 + v15);
  *v16 = a4;
  v16[1] = a5;
  v23[1] = 0xE000000000000000;
  v22[0] = a1;

  sub_228176FA8(a4, a5);
  sub_2283931D0();

  strcpy(v23, "MutableArray<");
  HIWORD(v23[1]) = -4864;
  sub_22838F490();
  v17 = sub_22838F450();
  v19 = v18;
  (*(v11 + 8))(v13, v10);
  MEMORY[0x22AAB5C80](v17, v19);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v20 = sub_22838FF30();

  sub_2281A001C();
  sub_228176EC8(a4, a5);

  return v20;
}

uint64_t MedicationsAsNeededDoseDataSource.init(healthStore:listManager:datePublisher:didTapRecordDoseHandler:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_22838F4A0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (v6 + qword_27D8240B8);
  *v16 = 0;
  v16[1] = 0;
  *(v6 + qword_27D8240C0) = 0;
  *(v6 + qword_27D8240C8) = a1;
  *(v6 + qword_27D8240D0) = a2;
  v22[1] = a3;
  v23[0] = 0;
  *(v6 + qword_27D8240D8) = a3;
  *v16 = a4;
  v16[1] = a5;
  v23[1] = 0xE000000000000000;
  v22[0] = a1;

  sub_228176FA8(a4, a5);
  sub_2283931D0();

  strcpy(v23, "MutableArray<");
  HIWORD(v23[1]) = -4864;
  sub_22838F490();
  v17 = sub_22838F450();
  v19 = v18;
  (*(v13 + 8))(v15, v12);
  MEMORY[0x22AAB5C80](v17, v19);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v20 = sub_22838FF30();

  sub_2281A001C();
  sub_228176EC8(a4, a5);

  return v20;
}

uint64_t sub_2281A001C()
{
  sub_2281A1888(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v29 = &v28 - v2;
  sub_2281A1160(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281A1280(0);
  v9 = *(v8 - 8);
  v30 = v8;
  v31 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281A1438(0);
  v13 = *(v12 - 8);
  v32 = v12;
  v33 = v13;
  MEMORY[0x28223BE20](v12);
  v28 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2283906C0();
  v15 = MEMORY[0x277D77BE8];
  sub_2281A1384(0, &qword_27D824108, MEMORY[0x277D77BE8]);
  sub_2281A1218(0);
  sub_2281A13E8(&qword_27D827D00, &qword_27D824108, v15);
  sub_2283919F0();

  sub_2281A17D0(&qword_27D824110, sub_2281A1160, MEMORY[0x277CBCC08]);
  v16 = sub_228391990();
  (*(v5 + 8))(v7, v4);
  v34 = *(v0 + qword_27D8240D8);
  v35 = v16;
  sub_2281A1384(0, &qword_280DDBC60, sub_2281A1218);
  v17 = MEMORY[0x277CC9578];
  sub_2281A1384(0, &qword_280DDBCA0, MEMORY[0x277CC9578]);
  sub_2281A13E8(&qword_280DDBC68, &qword_280DDBC60, sub_2281A1218);
  sub_2281A13E8(&qword_280DDBCA8, &qword_280DDBCA0, v17);
  sub_2283919E0();

  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v18 = sub_228392790();
  v35 = v18;
  v19 = sub_228392730();
  v20 = v29;
  (*(*(v19 - 8) + 56))(v29, 1, 1, v19);
  sub_2281A17D0(&qword_280DDBCC8, sub_2281A1280, MEMORY[0x277CBCAF0]);
  sub_2281A1504();
  v21 = v28;
  v22 = v30;
  sub_228391A70();
  sub_2281A16F0(v20);

  (*(v31 + 8))(v11, v22);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_2281A177C;
  *(v24 + 24) = v23;
  sub_2281A17D0(&qword_280DDBCB8, sub_2281A1438, MEMORY[0x277CBCD60]);
  v25 = v32;
  v26 = sub_228391AC0();

  (*(v33 + 8))(v21, v25);
  *(v0 + qword_27D8240C0) = v26;
}

uint64_t sub_2281A05E8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v4 = sub_22838F6C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22838F440();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v37 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v19 = result;
  if (a1 >> 62)
  {
    v23 = sub_2283930D0();
    v40 = v9;
    if (v23)
    {
      goto LABEL_4;
    }

LABEL_6:
    v39 = 0;
    goto LABEL_7;
  }

  v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v40 = v9;
  if (!v20)
  {
    goto LABEL_6;
  }

LABEL_4:
  sub_22838F680();
  sub_22838F430();
  sub_22838F590();
  v21 = *(v9 + 8);
  v21(v12, v8);
  (*(v5 + 8))(v7, v4);
  sub_22838F370();
  v21(v15, v8);
  v22 = sub_22838F390();
  v21(v17, v8);
  v39 = v22 ^ 1;
LABEL_7:
  sub_2281A1888(0, &qword_280DDB8C0, type metadata accessor for MedicationsRecordDoseItem, MEMORY[0x277D84560]);
  v24 = type metadata accessor for MedicationsRecordDoseItem(0);
  v25 = (*(*(v24 - 1) + 80) + 32) & ~*(*(v24 - 1) + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_228397F40;
  v27 = (v26 + v25);
  v28 = qword_280DDCF18;
  v38 = *(v19 + qword_27D8240C8);
  if (v28 != -1)
  {
    swift_once();
  }

  v29 = sub_22838F0C0();
  v31 = v30;
  v32 = *(v19 + qword_27D8240D0);
  (*(v40 + 16))(v27 + v24[8], v41, v8);
  v33 = *(v19 + qword_27D8240B8);
  v34 = *(v19 + qword_27D8240B8 + 8);
  type metadata accessor for MedicationsRecordDoseCollectionViewCell(0);

  sub_228176FA8(v33, v34);
  sub_2281A17D0(&qword_280DDC6D8, type metadata accessor for MedicationsRecordDoseCollectionViewCell, &unk_22839C0E8);
  *v27 = sub_22838FBB0();
  v27[1] = v35;
  v36 = (v27 + v24[10]);
  v27[4] = v38;
  v27[5] = v32;
  v27[2] = v29;
  v27[3] = v31;
  *(v27 + v24[9]) = v39 & 1;
  *v36 = v33;
  v36[1] = v34;
  sub_2281953A0(v26);
  swift_setDeallocating();
  sub_2281A18EC(v27);
  swift_deallocClassInstance();
  sub_22838FF60();
}

uint64_t sub_2281A0B00()
{

  sub_228176EC8(*(v0 + qword_27D8240B8), *(v0 + qword_27D8240B8 + 8));
}

uint64_t MedicationsAsNeededDoseDataSource.deinit()
{
  v0 = sub_22838FFB0();

  sub_228176EC8(*(v0 + qword_27D8240B8), *(v0 + qword_27D8240B8 + 8));

  return v0;
}

uint64_t MedicationsAsNeededDoseDataSource.__deallocating_deinit()
{
  v0 = sub_22838FFB0();
  v1 = *(v0 + qword_27D8240C8);

  sub_228176EC8(*(v0 + qword_27D8240B8), *(v0 + qword_27D8240B8 + 8));

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall MedicationsAsNeededDoseDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for MedicationsRecordDoseCollectionViewCell(0);
  sub_2281A17D0(&qword_280DDC6D8, type metadata accessor for MedicationsRecordDoseCollectionViewCell, &unk_22839C0E8);
  sub_2283926B0();
}

uint64_t sub_2281A0D04()
{
  type metadata accessor for MedicationsRecordDoseCollectionViewCell(0);
  sub_2281A17D0(&qword_280DDC6D8, type metadata accessor for MedicationsRecordDoseCollectionViewCell, &unk_22839C0E8);
  return sub_2283926B0();
}

void *MedicationsAsNeededDoseDataSource.layout(for:environment:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  v6 = [objc_opt_self() systemBackgroundColor];
  sub_228390050();
  v7 = sub_2283900C0();
  [v7 contentInsets];
  [v7 setContentInsets_];
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t type metadata accessor for MedicationsAsNeededDoseDataSource(uint64_t a1)
{
  result = qword_27D8240E8;
  if (!qword_27D8240E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_2281A0F20(uint64_t a1, uint64_t a2)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  v6 = [objc_opt_self() systemBackgroundColor];
  sub_228390050();
  v7 = sub_2283900C0();
  [v7 contentInsets];
  [v7 setContentInsets_];
  (*(v3 + 8))(v5, v2);
  return v7;
}

void sub_2281A1160(uint64_t a1)
{
  if (!qword_27D824100)
  {
    v1 = MEMORY[0x277D77BE8];
    sub_2281A1384(255, &qword_27D824108, MEMORY[0x277D77BE8]);
    sub_2281A1218(255);
    sub_2281A13E8(&qword_27D827D00, &qword_27D824108, v1);
    v2 = sub_228391740();
    if (!v3)
    {
      atomic_store(v2, &qword_27D824100);
    }
  }
}

void sub_2281A1218(uint64_t a1)
{
  if (!qword_280DDBB50)
  {
    sub_22817A958(255, &qword_280DDB9E0, 0x277D115B8);
    v1 = sub_228392240();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDBB50);
    }
  }
}

void sub_2281A1280(uint64_t a1)
{
  if (!qword_280DDBCC0)
  {
    sub_2281A1384(255, &qword_280DDBC60, sub_2281A1218);
    v1 = MEMORY[0x277CC9578];
    sub_2281A1384(255, &qword_280DDBCA0, MEMORY[0x277CC9578]);
    sub_2281A13E8(&qword_280DDBC68, &qword_280DDBC60, sub_2281A1218);
    sub_2281A13E8(&qword_280DDBCA8, &qword_280DDBCA0, v1);
    v2 = sub_228391670();
    if (!v3)
    {
      atomic_store(v2, &qword_280DDBCC0);
    }
  }
}

void sub_2281A1384(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2283917F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2281A13E8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2281A1384(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2281A1438(uint64_t a1)
{
  if (!qword_280DDBCB0)
  {
    sub_2281A1280(255);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_2281A17D0(&qword_280DDBCC8, sub_2281A1280, MEMORY[0x277CBCAF0]);
    sub_2281A1504();
    v1 = sub_2283917D0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDBCB0);
    }
  }
}

unint64_t sub_2281A1504()
{
  result = qword_280DDBAC0;
  if (!qword_280DDBAC0)
  {
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDBAC0);
  }

  return result;
}

uint64_t sub_2281A156C@<X0>(void *a1@<X8>)
{
  v2 = sub_2283906D0();
  v3 = v2;
  v12 = MEMORY[0x277D84F90];
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (!(v2 >> 62))
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_20:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_19:
  v5 = sub_2283930D0();
  if (!v5)
  {
    goto LABEL_20;
  }

LABEL_3:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x22AAB6D80](v8, v3);
      }

      else
      {
        if (v8 >= *(v4 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v3 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x22AAB5D20]();
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2283921E0();
    }

    sub_228392230();
    v7 = v12;
  }

  while (v6 != v5);
LABEL_21:

  *a1 = v7;
  return result;
}

uint64_t sub_2281A16F0(uint64_t a1)
{
  sub_2281A1888(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2281A1784(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  sub_2281A1818(0);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_2281A17D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2281A1818(uint64_t a1)
{
  if (!qword_280DDBB40)
  {
    sub_2281A1218(255);
    sub_22838F440();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DDBB40);
    }
  }
}

void sub_2281A1888(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2281A18EC(uint64_t a1)
{
  v2 = type metadata accessor for MedicationsRecordDoseItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2281A1958(uint64_t a1)
{
  v1 = (a1 + qword_27D824118);
  v3 = sub_228392000();
  v4 = v2;

  MEMORY[0x22AAB5C80](0xD000000000000018, 0x80000002283A8730);

  *v1 = v3;
  v1[1] = v4;
  sub_228393300();
  __break(1u);
}

Swift::Void __swiftcall MedicationSideEffectsViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_2281A1A58();
}

void sub_2281A1A58()
{
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v1 = sub_228391FC0();

  [v0 setTitle_];

  v2 = [v0 collectionView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  v4 = [objc_opt_self() systemGroupedBackgroundColor];
  [v3 setBackgroundColor_];

  v5 = [v0 collectionView];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;

  MEMORY[0x22AAB5C80](0x6E6F747475422ELL, 0xE700000000000000);
  v7 = sub_228391FC0();

  [v6 setAccessibilityIdentifier_];
}

void sub_2281A1C1C(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  sub_2281A1A58();
}

id MedicationSideEffectsViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id MedicationSideEffectsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MedicationSideEffectsViewController(uint64_t a1)
{
  result = qword_27D824120;
  if (!qword_27D824120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19HealthMedicationsUI24ManualMedicationStrengthVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2281A1EA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2281A1EF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_2281A1F54(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_228393460() & 1) == 0)
  {
    return 0;
  }

  sub_2281A2270();
  return sub_228392C60() & 1;
}

uint64_t sub_2281A1FC8()
{
  sub_228393520();
  sub_2283920B0();
  sub_228392C70();
  return sub_228393570();
}

uint64_t sub_2281A205C(uint64_t a1)
{
  sub_228393520();
  sub_2283920B0();
  sub_228392C70();
  return sub_228393570();
}

uint64_t sub_2281A20DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7, char a8)
{
  if ((a4 & 1) == 0)
  {
    if ((a8 & 1) == 0)
    {
      sub_2281A2270();
      return sub_228392C60() & 1;
    }

    return 0;
  }

  if ((a8 & 1) == 0)
  {
    return 0;
  }

  if (a2)
  {
    if (a6)
    {
      if (a1 == a5 && a2 == a6 || (v9 = a5, v10 = a6, v11 = sub_228393460(), a5 = v9, a6 = v10, (v11 & 1) != 0))
      {
        v12 = a6;
        v13 = a5;
        sub_2281A2270();
        sub_2281A222C(v13, v12, a7);
        v14 = sub_228392C60();

        if (v14)
        {
          return 1;
        }
      }

      else
      {
        sub_2281A222C(v9, v10, a7);
      }
    }

    else
    {
      sub_2281A222C(a5, 0, a7);
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  sub_2281A222C(a5, 0, a7);
  return 1;
}

void sub_2281A222C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {

    v3 = a3;
  }
}

unint64_t sub_2281A2270()
{
  result = qword_27D825620;
  if (!qword_27D825620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D825620);
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

uint64_t sub_2281A22D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2281A2318(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2281A236C()
{
  result = qword_27D824130;
  if (!qword_27D824130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824130);
  }

  return result;
}

uint64_t sub_2281A23C0()
{
  v1 = [v0 logStatus];
  if (v1 > 3)
  {
    switch(v1)
    {
      case 4:
        if (qword_280DDCF18 == -1)
        {
          return sub_22838F0C0();
        }

        goto LABEL_20;
      case 5:
        goto LABEL_18;
      case 6:
        if (qword_280DDCF18 == -1)
        {
          return sub_22838F0C0();
        }

        goto LABEL_20;
    }

LABEL_15:
    [v0 logStatus];
    v2 = HKMedicationDoseEventStatusToString();
    v3 = sub_228392000();

    return v3;
  }

  if (v1 == 1)
  {
    if (qword_280DDCF18 == -1)
    {
      return sub_22838F0C0();
    }

    goto LABEL_20;
  }

  if (v1 == 2)
  {
    if (qword_280DDCF18 == -1)
    {
      return sub_22838F0C0();
    }

    goto LABEL_20;
  }

  if (v1 != 3)
  {
    goto LABEL_15;
  }

LABEL_18:
  if (qword_280DDCF18 != -1)
  {
LABEL_20:
    swift_once();
  }

  return sub_22838F0C0();
}

void UIViewController.showIncompatibleWatchAlertIfNeeded(for:okHandler:cancelHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12 = [objc_allocWithZone(MEMORY[0x277D115A0]) init];
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = v5;
  v13[7] = ObjectType;
  v16[4] = sub_22817E0E8;
  v16[5] = v13;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_2281A2F3C;
  v16[3] = &block_descriptor_3;
  v14 = _Block_copy(v16);
  sub_228176FA8(a2, a3);
  sub_228176FA8(a4, a5);
  v15 = v5;

  [v12 checkIncompatibilityForSchedule:a1 completion:v14];
  _Block_release(v14);
}

void UIViewController.presentAsFormSheetWithNavigationController(viewController:isModalInPresentation:leadingAction:trailingAction:)(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
  if (a3)
  {

    v14 = [a1 navigationItem];
    sub_22817A958(0, &qword_27D824138, 0x277D751E0);
    sub_22817A958(0, &qword_27D827890, 0x277D750C8);
    v15 = swift_allocObject();
    v15[2] = a3;
    v15[3] = a4;
    v15[4] = v13;
    sub_228176FA8(a3, a4);
    v16 = v13;
    sub_228392C90();
    v17 = sub_228392640();
    [v14 setLeftBarButtonItem_];

    v7 = v6;
    sub_228176EC8(a3, a4);
  }

  if (a5)
  {

    v18 = [a1 navigationItem];
    sub_22817A958(0, &qword_27D824138, 0x277D751E0);
    sub_22817A958(0, &qword_27D827890, 0x277D750C8);
    v19 = swift_allocObject();
    v19[2] = a5;
    v19[3] = a6;
    v19[4] = v13;
    v20 = v13;
    sub_228176FA8(a5, a6);
    sub_228392C90();
    v21 = sub_228392640();
    [v18 setRightBarButtonItem_];

    sub_228176EC8(a5, a6);
  }

  v23 = v13;
  [v23 setModalPresentationStyle_];
  [v23 setModalInPresentation_];

  [v7 presentViewController:v23 animated:1 completion:0];
}

void sub_2281A2ADC(void *a1, void *a2, void (*a3)(void), id a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v48 = a4;
  v14 = sub_2283911B0();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v19 = a2;
    sub_228391150();
    v20 = a2;
    v21 = sub_2283911A0();
    v22 = sub_2283925C0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v50 = v24;
      *v23 = 136446466;
      v25 = sub_228393600();
      v27 = sub_2281C96FC(v25, v26, &v50);
      v47 = a3;
      v28 = v27;

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      v49 = a2;
      v29 = a2;
      sub_228192C1C();
      v30 = sub_228392040();
      v32 = sub_2281C96FC(v30, v31, &v50);
      a3 = v47;

      *(v23 + 14) = v32;
      _os_log_impl(&dword_22816B000, v21, v22, "[%{public}s]: Error: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v24, -1, -1);
      MEMORY[0x22AAB7B80](v23, -1, -1);
    }

    v33 = (*(v15 + 8))(v18, v14);
    if (a3)
    {
      a3(v33);
    }

    return;
  }

  if (a1)
  {
    v34 = a1;
    v35 = [v34 incompatibleDevices];
    sub_22817A958(0, &qword_27D824140, 0x277D114E8);
    v36 = sub_2283921A0();

    if (v36 >> 62)
    {
      if (sub_2283930D0())
      {
        goto LABEL_11;
      }
    }

    else if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_11:
      if ((v36 & 0xC000000000000001) != 0)
      {
        v37 = a3;
        v38 = MEMORY[0x22AAB6D80](0, v36);
        goto LABEL_14;
      }

      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v37 = a3;
        v38 = *(v36 + 32);
LABEL_14:
        v39 = v38;

        v40 = [v39 deviceName];

        v41 = sub_228392000();
        v43 = v42;

        v44 = v41;
        a3 = v37;
LABEL_20:
        v48 = _sSo17UIAlertControllerC19HealthMedicationsUIE46makeAlertForMedicationWithIncompatibleSchedule10deviceName9okHandler06cancelP0ABSS_yycSgAHtFZ_0(v44, v43, a3, v48, a5, a6);

        [a7 presentViewController:v48 animated:1 completion:0];

        v46 = v48;

        return;
      }

      __break(1u);
      goto LABEL_25;
    }

    if (qword_280DDCF18 == -1)
    {
LABEL_19:
      v44 = sub_22838F0C0();
      v43 = v45;
      goto LABEL_20;
    }

LABEL_25:
    swift_once();
    goto LABEL_19;
  }

  if (a3)
  {
    a3(v16);
  }
}