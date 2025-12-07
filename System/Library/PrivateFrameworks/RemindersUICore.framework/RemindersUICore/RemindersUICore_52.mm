uint64_t sub_21D5C7798(uint64_t a1, __n128 a2)
{
  v4 = type metadata accessor for TTRITitledDatePickerCellContentState(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v17[-v8];
  v10 = MEMORY[0x277D85000];
  v11 = *((*MEMORY[0x277D85000] & *v2) + 0x78);
  swift_beginAccess();
  sub_21D5D3A9C(v2 + v11, v9, type metadata accessor for TTRITitledDatePickerCellContentState);
  swift_beginAccess();
  sub_21D5D3B04(a1, v2 + v11, type metadata accessor for TTRITitledDatePickerCellContentState);
  swift_endAccess();
  if ((*(v2 + *((*v10 & *v2) + 0x90)) & 1) == 0)
  {
    sub_21D5D3A9C(v2 + v11, v6, type metadata accessor for TTRITitledDatePickerCellContentState);
    v12 = _s15RemindersUICore36TTRITitledDatePickerCellContentStateV2eeoiySbAC_ACtFZ_0(v9, v6);
    sub_21D5D3B6C(v6, type metadata accessor for TTRITitledDatePickerCellContentState);
    if (!v12)
    {
      v13 = v2 + *((*v10 & *v2) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v14 = *(v13 + 1);
        ObjectType = swift_getObjectType();
        (*(v14 + 8))(ObjectType, v14);
        swift_unknownObjectRelease();
      }

      (*((*v10 & *v2) + 0xB0))(v9);
    }
  }

  sub_21D5D3B6C(a1, type metadata accessor for TTRITitledDatePickerCellContentState);
  return sub_21D5D3B6C(v9, type metadata accessor for TTRITitledDatePickerCellContentState);
}

uint64_t sub_21D5C7A18(uint64_t a1)
{
  v3 = type metadata accessor for TTRIHashtagCollectionCellContentState(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v16[-v7];
  v9 = MEMORY[0x277D85000];
  v10 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  sub_21D5D3A9C(v1 + v10, v8, type metadata accessor for TTRIHashtagCollectionCellContentState);
  swift_beginAccess();
  sub_21D5D3B04(a1, v1 + v10, type metadata accessor for TTRIHashtagCollectionCellContentState);
  swift_endAccess();
  if ((*(v1 + *((*v9 & *v1) + 0x90)) & 1) == 0)
  {
    sub_21D5D3A9C(v1 + v10, v5, type metadata accessor for TTRIHashtagCollectionCellContentState);
    v11 = _s15RemindersUICore37TTRIHashtagCollectionCellContentStateV2eeoiySbAC_ACtFZ_0(v8, v5);
    sub_21D5D3B6C(v5, type metadata accessor for TTRIHashtagCollectionCellContentState);
    if (!v11)
    {
      v12 = v1 + *((*v9 & *v1) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v13 = *(v12 + 1);
        ObjectType = swift_getObjectType();
        (*(v13 + 8))(ObjectType, v13);
        swift_unknownObjectRelease();
      }

      (*((*v9 & *v1) + 0xB0))(v8);
    }
  }

  sub_21D5D3B6C(a1, type metadata accessor for TTRIHashtagCollectionCellContentState);
  return sub_21D5D3B6C(v8, type metadata accessor for TTRIHashtagCollectionCellContentState);
}

uint64_t sub_21D5C7C98(_BYTE *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EAB0, &qword_21DC1D690);
  MEMORY[0x28223BE20](v3);
  v5 = &v23[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E9D8, &unk_21DC323F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23[-v7];
  v9 = MEMORY[0x277D85000];
  v10 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  sub_21D0D3954(v1 + v10, v8, &qword_27CE5E9D8, &unk_21DC323F0);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v10, &qword_27CE5E9D8, &unk_21DC323F0);
  swift_endAccess();
  if (*(v1 + *((*v9 & *v1) + 0x90)))
  {
    goto LABEL_11;
  }

  v11 = *(v3 + 48);
  sub_21D0D3954(v8, v5, &qword_27CE5E9D8, &unk_21DC323F0);
  sub_21D0D3954(v1 + v10, &v5[v11], &qword_27CE5E9D8, &unk_21DC323F0);
  v12 = type metadata accessor for TTRIReminderTitleAndStructuredHashtagCellContentState(0);
  v13 = *(*(v12 - 8) + 48);
  v14 = v13(v5, 1, v12);
  v15 = v13(&v5[v11], 1, v12);
  if (v14 == 1)
  {
    if (v15 == 1)
    {
      sub_21D0CF7E0(a1, &qword_27CE5E9D8, &unk_21DC323F0);
      a1 = v8;
      v8 = v5;
      goto LABEL_11;
    }
  }

  else if (v15 != 1)
  {
    sub_21D0CF7E0(&v5[v11], &qword_27CE5E9D8, &unk_21DC323F0);
    v18 = v5;
    v16 = &qword_27CE5E9D8;
    v17 = &unk_21DC323F0;
    goto LABEL_8;
  }

  v16 = &qword_27CE5EAB0;
  v17 = &qword_21DC1D690;
  v18 = v5;
LABEL_8:
  sub_21D0CF7E0(v18, v16, v17);
  v19 = v1 + *((*v9 & *v1) + 0x70);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(v19 + 1);
    ObjectType = swift_getObjectType();
    (*(v20 + 8))(ObjectType, v20);
    swift_unknownObjectRelease();
  }

  (*((*v9 & *v1) + 0xB0))(v8);
LABEL_11:
  sub_21D0CF7E0(a1, &qword_27CE5E9D8, &unk_21DC323F0);
  return sub_21D0CF7E0(v8, &qword_27CE5E9D8, &unk_21DC323F0);
}

uint64_t sub_21D5C801C(__int128 *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78));
  swift_beginAccess();
  v5 = v4[3];
  v35 = v4[2];
  v36 = v5;
  v6 = v4[5];
  v37 = v4[4];
  v38 = v6;
  v7 = v4[1];
  v33 = *v4;
  v34 = v7;
  v39[2] = v35;
  v39[3] = v5;
  v39[4] = v37;
  v39[5] = v6;
  v39[0] = v33;
  v39[1] = v7;
  v8 = a1[3];
  v4[2] = a1[2];
  v4[3] = v8;
  v9 = a1[5];
  v4[4] = a1[4];
  v4[5] = v9;
  v10 = a1[1];
  *v4 = *a1;
  v4[1] = v10;
  sub_21D5D2914(&v33, v32);
  sub_21D5D2A50(v39);
  v32[2] = v35;
  v32[3] = v36;
  v32[4] = v37;
  v32[5] = v38;
  v32[0] = v33;
  v32[1] = v34;
  if (*(v1 + *((*v3 & *v1) + 0x90)) != 1)
  {
    v11 = v4[3];
    v27 = v4[2];
    v28 = v11;
    v12 = v4[5];
    v29 = v4[4];
    v30 = v12;
    v13 = v4[1];
    v26[0] = *v4;
    v26[1] = v13;
    v22 = v27;
    v23 = v11;
    v24 = v29;
    v25 = v12;
    v20 = v26[0];
    v21 = v13;
    sub_21D5D2914(v26, &v19);
    v14 = sub_21D5B9EC4(v32, &v20);
    v31[2] = v22;
    v31[3] = v23;
    v31[4] = v24;
    v31[5] = v25;
    v31[0] = v20;
    v31[1] = v21;
    sub_21D5D2A50(v31);
    if ((v14 & 1) == 0)
    {
      v15 = v1 + *((*v3 & *v1) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v15 + 1);
        ObjectType = swift_getObjectType();
        (*(v16 + 8))(ObjectType, v16);
        swift_unknownObjectRelease();
      }

      (*((*v3 & *v1) + 0xB0))(v32);
    }
  }

  return sub_21D5D2A50(&v33);
}

uint64_t sub_21D5C8234(__int128 *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78));
  swift_beginAccess();
  v5 = v4[5];
  v6 = v4[7];
  v56 = v4[6];
  v57[0] = v6;
  *(v57 + 9) = *(v4 + 121);
  v7 = v4[1];
  v8 = v4[3];
  v52 = v4[2];
  v53 = v8;
  v9 = v4[3];
  v10 = v4[5];
  v54 = v4[4];
  v55 = v10;
  v11 = v4[1];
  v50 = *v4;
  v51 = v11;
  v12 = v4[7];
  v58[6] = v56;
  v59[0] = v12;
  *(v59 + 9) = *(v4 + 121);
  v58[2] = v52;
  v58[3] = v9;
  v58[4] = v54;
  v58[5] = v5;
  v58[0] = v50;
  v58[1] = v7;
  v13 = a1[5];
  v4[4] = a1[4];
  v4[5] = v13;
  v14 = a1[3];
  v4[2] = a1[2];
  v4[3] = v14;
  v15 = a1[1];
  *v4 = *a1;
  v4[1] = v15;
  *(v4 + 121) = *(a1 + 121);
  v16 = a1[7];
  v4[6] = a1[6];
  v4[7] = v16;
  sub_21D5D2970(&v50, v48);
  sub_21D5D29CC(v58);
  v48[6] = v56;
  v49[0] = v57[0];
  *(v49 + 9) = *(v57 + 9);
  v48[2] = v52;
  v48[3] = v53;
  v48[4] = v54;
  v48[5] = v55;
  v48[0] = v50;
  v48[1] = v51;
  if (*(v1 + *((*v3 & *v1) + 0x90)) != 1)
  {
    v17 = v4[5];
    v18 = v4[7];
    v44 = v4[6];
    v45[0] = v18;
    *(v45 + 9) = *(v4 + 121);
    v19 = v4[1];
    v20 = v4[3];
    v40 = v4[2];
    v41 = v20;
    v21 = v4[3];
    v22 = v4[5];
    v42 = v4[4];
    v43 = v22;
    v23 = v4[1];
    v39[0] = *v4;
    v39[1] = v23;
    v24 = v4[7];
    v37 = v44;
    v38[0] = v24;
    *(v38 + 9) = *(v4 + 121);
    v33 = v40;
    v34 = v21;
    v35 = v42;
    v36 = v17;
    v31 = v39[0];
    v32 = v19;
    sub_21D5D2970(v39, &v30);
    v25 = _s15RemindersUICore24TTRIListCellStateAdaptorV0E0V2eeoiySbAE_AEtFZ_0(v48, &v31);
    v46[6] = v37;
    v47[0] = v38[0];
    *(v47 + 9) = *(v38 + 9);
    v46[2] = v33;
    v46[3] = v34;
    v46[4] = v35;
    v46[5] = v36;
    v46[0] = v31;
    v46[1] = v32;
    sub_21D5D29CC(v46);
    if ((v25 & 1) == 0)
    {
      v26 = v1 + *((*v3 & *v1) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v27 = *(v26 + 1);
        ObjectType = swift_getObjectType();
        (*(v27 + 8))(ObjectType, v27);
        swift_unknownObjectRelease();
      }

      (*((*v3 & *v1) + 0xB0))(v48);
    }
  }

  return sub_21D5D29CC(&v50);
}

uint64_t sub_21D5C84F0(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  sub_21D1D9BE4(v2 + v5, v12);
  swift_beginAccess();
  sub_21D5D2C30(a1, v2 + v5);
  swift_endAccess();
  if ((*(v2 + *((*v4 & *v2) + 0x90)) & 1) == 0)
  {
    sub_21D1D9BE4(v2 + v5, v11);
    v6 = v13(v11);
    sub_21D1D9C40(v11);
    if ((v6 & 1) == 0)
    {
      v7 = v2 + *((*v4 & *v2) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v7 + 1);
        ObjectType = swift_getObjectType();
        (*(v8 + 8))(ObjectType, v8);
        swift_unknownObjectRelease();
      }

      (*((*v4 & *v2) + 0xB0))(v12);
    }
  }

  sub_21D1D9C40(a1);
  return sub_21D1D9C40(v12);
}

void sub_21D5C8698(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + *((*MEMORY[0x277D85000] & *v4) + 0x78);
  swift_beginAccess();
  v11 = *v9;
  v10 = *(v9 + 1);
  v12 = *(v9 + 2);
  v13 = v9[24];
  *v9 = a1;
  *(v9 + 1) = a2;
  v14 = MEMORY[0x277D85000];
  *(v9 + 2) = a3;
  v9[24] = a4 & 1;
  sub_21DBF8E0C();
  sub_21D15751C(v12);

  sub_21D157878(v12);
  v26[0] = v11;
  v26[1] = v10;
  v26[2] = v12;
  v27 = v13;
  if ((*(v4 + *((*v14 & *v4) + 0x90)) & 1) == 0)
  {
    v15 = *(v9 + 1);
    v16 = *(v9 + 2);
    v17 = v9[24];
    v23[0] = *v9;
    v23[1] = v15;
    v24 = v16;
    v25 = v17;
    sub_21DBF8E0C();
    sub_21D15751C(v16);
    v18 = sub_21D5EF0D4(v26, v23);
    v19 = v24;

    sub_21D157878(v19);
    if ((v18 & 1) == 0)
    {
      v20 = v4 + *((*v14 & *v4) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v21 = *(v20 + 1);
        ObjectType = swift_getObjectType();
        (*(v21 + 8))(ObjectType, v21);
        swift_unknownObjectRelease();
      }

      (*((*v14 & *v4) + 0xB0))(v26);
    }
  }

  sub_21D157878(v12);
}

double sub_21D5C88C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + *((*MEMORY[0x277D85000] & *v4) + 0x78);
  swift_beginAccess();
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = *(v9 + 2);
  v13 = v9[24];
  *v9 = a1;
  *(v9 + 1) = a2;
  v14 = MEMORY[0x277D85000];
  *(v9 + 2) = a3;
  v9[24] = a4;
  sub_21D5D359C(v10, v11);
  sub_21D5D35A4();
  v24[0] = v10;
  v24[1] = v11;
  v24[2] = v12;
  v25 = v13;
  if ((*(v4 + *((*v14 & *v4) + 0x90)) & 1) == 0)
  {
    v15 = *(v9 + 1);
    v16 = *(v9 + 2);
    v22[0] = *v9;
    v22[1] = v15;
    v22[2] = v16;
    v23 = v9[24];
    sub_21D5D359C(v22[0], v15);
    v17 = _s15RemindersUICore28TTRILocationCellContentStateO2eeoiySbAC_ACtFZ_0(v24, v22);
    sub_21D5D35A4();
    if ((v17 & 1) == 0)
    {
      v18 = v4 + *((*v14 & *v4) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v19 = *(v18 + 1);
        ObjectType = swift_getObjectType();
        (*(v19 + 8))(ObjectType, v19);
        swift_unknownObjectRelease();
      }

      (*((*v14 & *v4) + 0xB0))(v24);
    }
  }

  return sub_21D5D35A4();
}

double sub_21D5C8AC8(_OWORD *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[8];
  v7 = *(v4 + 2);
  v8 = v4[24];
  v9 = *(v4 + 4);
  v10 = *(v4 + 5);
  v11 = a1[2];
  *(v4 + 1) = a1[1];
  *(v4 + 2) = v11;
  *v4 = *a1;
  v28 = v5;
  v29 = v6;
  v30 = v7;
  v31 = v8;
  v32 = v9;
  v33 = v10;
  if ((*(v1 + *((*v3 & *v1) + 0x90)) & 1) == 0)
  {
    v12 = v4[8];
    v13 = *(v4 + 2);
    v14 = v4[24];
    v16 = *(v4 + 4);
    v15 = *(v4 + 5);
    v22 = *v4;
    v23 = v12;
    v24 = v13;
    v25 = v14;
    v26 = v16;
    v27 = v15;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v17 = _s15RemindersUICore40TTRILocationQuickPickersCellContentStateV2eeoiySbAC_ACtFZ_0(&v28, &v22);

    if (!v17)
    {
      v18 = v1 + *((*v3 & *v1) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v19 = *(v18 + 1);
        ObjectType = swift_getObjectType();
        (*(v19 + 8))(ObjectType, v19);
        swift_unknownObjectRelease();
      }

      (*((*v3 & *v1) + 0xB0))(&v28);
    }
  }

  return result;
}

uint64_t sub_21D5C8CDC(__int128 *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void, void))
{
  v9 = MEMORY[0x277D85000];
  v10 = (v4 + *((*MEMORY[0x277D85000] & *v4) + 0x78));
  swift_beginAccess();
  v11 = v10[5];
  v37 = v10[4];
  v38 = v11;
  v39[0] = v10[6];
  v12 = v39[0];
  *(v39 + 9) = *(v10 + 105);
  v13 = v10[1];
  v33 = *v10;
  v34 = v13;
  v14 = v10[3];
  v35 = v10[2];
  v36 = v14;
  v40[0] = v33;
  v40[1] = v13;
  v40[2] = v35;
  v40[3] = v14;
  v40[4] = v37;
  v40[5] = v11;
  v41[0] = v12;
  *(v41 + 9) = *(v39 + 9);
  v15 = a1[5];
  v10[4] = a1[4];
  v10[5] = v15;
  v10[6] = a1[6];
  *(v10 + 105) = *(a1 + 105);
  v16 = a1[1];
  *v10 = *a1;
  v10[1] = v16;
  v17 = a1[3];
  v10[2] = a1[2];
  v10[3] = v17;
  sub_21D0D3954(&v33, v31, a2, a3);
  sub_21D0CF7E0(v40, a2, a3);
  v27[4] = v37;
  v27[5] = v38;
  v28[0] = v39[0];
  *(v28 + 9) = *(v39 + 9);
  v27[0] = v33;
  v27[1] = v34;
  v27[2] = v35;
  v27[3] = v36;
  if ((*(v4 + *((*v9 & *v4) + 0x90)) & 1) == 0)
  {
    v18 = v10[5];
    v31[4] = v10[4];
    v31[5] = v18;
    v32[0] = v10[6];
    *(v32 + 9) = *(v10 + 105);
    v19 = v10[1];
    v31[0] = *v10;
    v31[1] = v19;
    v20 = v10[3];
    v31[2] = v10[2];
    v31[3] = v20;
    v29[2] = v35;
    v29[3] = v36;
    v29[0] = v33;
    v29[1] = v34;
    *(v30 + 9) = *(v39 + 9);
    v29[5] = v38;
    v30[0] = v39[0];
    v29[4] = v37;
    sub_21D0D3954(v31, &v26, a2, a3);
    v21 = sub_21D5CA42C(v29, v31, a4);
    sub_21D0CF7E0(v31, a2, a3);
    if ((v21 & 1) == 0)
    {
      v22 = v4 + *((*v9 & *v4) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v23 = *(v22 + 1);
        ObjectType = swift_getObjectType();
        (*(v23 + 8))(ObjectType, v23);
        swift_unknownObjectRelease();
      }

      (*((*v9 & *v4) + 0xB0))(v27);
    }
  }

  return sub_21D0CF7E0(&v33, a2, a3);
}

uint64_t sub_21D5C8FCC(uint64_t a1, void (*a2)(__int128 *, char *), uint64_t (*a3)(__int128 *), uint64_t (*a4)(_OWORD *, __int128 *))
{
  v9 = MEMORY[0x277D85000];
  v10 = v4 + *((*MEMORY[0x277D85000] & *v4) + 0x78);
  swift_beginAccess();
  v11 = *(v10 + 5);
  v47 = *(v10 + 4);
  v48 = v11;
  v49 = v10[96];
  v12 = *(v10 + 1);
  v43 = *v10;
  v44 = v12;
  v13 = *(v10 + 3);
  v45 = *(v10 + 2);
  v46 = v13;
  v50[0] = v43;
  v50[1] = v12;
  v50[2] = v45;
  v50[3] = v13;
  v50[4] = v47;
  v50[5] = v11;
  v51 = v49;
  v14 = *(a1 + 80);
  *(v10 + 4) = *(a1 + 64);
  *(v10 + 5) = v14;
  v10[96] = *(a1 + 96);
  v15 = *(a1 + 16);
  *v10 = *a1;
  *(v10 + 1) = v15;
  v16 = *(a1 + 48);
  *(v10 + 2) = *(a1 + 32);
  *(v10 + 3) = v16;
  a2(&v43, v41);
  a3(v50);
  v41[4] = v47;
  v41[5] = v48;
  v42 = v49;
  v41[0] = v43;
  v41[1] = v44;
  v41[2] = v45;
  v41[3] = v46;
  if (*(v4 + *((*v9 & *v4) + 0x90)) != 1)
  {
    v17 = *(v10 + 5);
    v36 = *(v10 + 4);
    v37 = v17;
    v38 = v10[96];
    v18 = *(v10 + 1);
    v33[0] = *v10;
    v33[1] = v18;
    v19 = *(v10 + 3);
    v34 = *(v10 + 2);
    v35 = v19;
    v26 = v33[0];
    v27 = v18;
    v28 = v34;
    v29 = v19;
    v30 = v36;
    v31 = v17;
    v32 = v38;
    a2(v33, v25);
    v20 = a4(v41, &v26);
    v39[4] = v30;
    v39[5] = v31;
    v40 = v32;
    v39[0] = v26;
    v39[1] = v27;
    v39[2] = v28;
    v39[3] = v29;
    a3(v39);
    if ((v20 & 1) == 0)
    {
      v21 = v4 + *((*v9 & *v4) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = *(v21 + 1);
        ObjectType = swift_getObjectType();
        (*(v22 + 8))(ObjectType, v22);
        swift_unknownObjectRelease();
      }

      (*((*v9 & *v4) + 0xB0))(v41);
    }
  }

  return a3(&v43);
}

double sub_21D5C924C(void *a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v9 = MEMORY[0x277D85000];
  v10 = v4 + *((*MEMORY[0x277D85000] & *v4) + 0x78);
  swift_beginAccess();
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = *(v10 + 2);
  v14 = v10[24];
  v15 = v10[25];
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  v10[24] = a4;
  v10[25] = HIBYTE(a4) & 1;
  v26[0] = v11;
  v26[1] = v12;
  v26[2] = v13;
  v27 = v14;
  v28 = v15;
  v16 = *v9;
  v17 = v11;
  if ((*(v4 + *((v16 & *v4) + 0x90)) & 1) == 0)
  {
    v18 = v15 ? 256 : 0;
    v25 = a1;
    sub_21DBF8E0C();
    v19 = sub_21D3EDF68(v17, v12, v13, v18 | v14, a1, a2, a3, a4 & 0x1FF);

    if ((v19 & 1) == 0)
    {
      v20 = MEMORY[0x277D85000];
      v21 = v4 + *((*MEMORY[0x277D85000] & *v4) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = *(v21 + 1);
        ObjectType = swift_getObjectType();
        (*(v22 + 8))(ObjectType, v22);
        swift_unknownObjectRelease();
      }

      (*((*v20 & *v4) + 0xB0))(v26);
    }
  }

  return result;
}

void sub_21D5C944C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = MEMORY[0x277D85000];
  v8 = (v3 + *((*MEMORY[0x277D85000] & *v3) + 0x78));
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];
  v11 = v8[2];
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  v17[0] = v10;
  v17[1] = v9;
  v17[2] = v11;
  if ((*(v3 + *((*v7 & *v3) + 0x90)) & 1) == 0)
  {
    v12 = a3;
    sub_21DBF8E0C();
    v13 = sub_21D934C10(v10, v9, v11, a1, a2, a3);

    if ((v13 & 1) == 0)
    {
      v14 = v3 + *((*v7 & *v3) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v14 + 1);
        ObjectType = swift_getObjectType();
        (*(v15 + 8))(ObjectType, v15);
        swift_unknownObjectRelease();
      }

      (*((*v7 & *v3) + 0xB0))(v17);
    }
  }
}

uint64_t sub_21D5C9608(uint64_t a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  v5 = *(v4 + 11);
  v6 = *(v4 + 13);
  v58 = *(v4 + 12);
  v59 = v6;
  v7 = *(v4 + 7);
  v8 = *(v4 + 9);
  v54 = *(v4 + 8);
  v55 = v8;
  v9 = *(v4 + 9);
  v10 = *(v4 + 11);
  v56 = *(v4 + 10);
  v57 = v10;
  v11 = *(v4 + 3);
  v12 = *(v4 + 5);
  v50 = *(v4 + 4);
  v51 = v12;
  v13 = *(v4 + 5);
  v14 = *(v4 + 7);
  v52 = *(v4 + 6);
  v53 = v14;
  v15 = *(v4 + 1);
  v46 = *v4;
  v47 = v15;
  v16 = *(v4 + 3);
  v18 = *v4;
  v17 = *(v4 + 1);
  v48 = *(v4 + 2);
  v49 = v16;
  v61[11] = v5;
  v61[12] = v58;
  v61[13] = *(v4 + 13);
  v61[7] = v7;
  v61[8] = v54;
  v61[9] = v9;
  v61[10] = v56;
  v61[4] = v50;
  v61[5] = v13;
  v61[6] = v52;
  v61[0] = v18;
  v61[1] = v17;
  v60 = v4[224];
  v62 = v4[224];
  v61[2] = v48;
  v61[3] = v11;
  v19 = *(a1 + 208);
  *(v4 + 12) = *(a1 + 192);
  *(v4 + 13) = v19;
  v4[224] = *(a1 + 224);
  v20 = *(a1 + 144);
  *(v4 + 8) = *(a1 + 128);
  *(v4 + 9) = v20;
  v21 = *(a1 + 176);
  *(v4 + 10) = *(a1 + 160);
  *(v4 + 11) = v21;
  v22 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v22;
  v23 = *(a1 + 112);
  *(v4 + 6) = *(a1 + 96);
  *(v4 + 7) = v23;
  v24 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v24;
  v25 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v25;
  sub_21D0D3954(&v46, v44, &unk_27CE5EB10, &unk_21DC1D6F0);
  sub_21D0CF7E0(v61, &unk_27CE5EB10, &unk_21DC1D6F0);
  v40[12] = v58;
  v40[13] = v59;
  v41 = v60;
  v40[8] = v54;
  v40[9] = v55;
  v40[10] = v56;
  v40[11] = v57;
  v40[4] = v50;
  v40[5] = v51;
  v40[6] = v52;
  v40[7] = v53;
  v40[0] = v46;
  v40[1] = v47;
  v26 = *v3 & *v1;
  v40[2] = v48;
  v40[3] = v49;
  if ((*(v1 + *(v26 + 144)) & 1) == 0)
  {
    v27 = *(v4 + 13);
    v44[12] = *(v4 + 12);
    v44[13] = v27;
    v45 = v4[224];
    v28 = *(v4 + 9);
    v44[8] = *(v4 + 8);
    v44[9] = v28;
    v29 = *(v4 + 11);
    v44[10] = *(v4 + 10);
    v44[11] = v29;
    v30 = *(v4 + 5);
    v44[4] = *(v4 + 4);
    v44[5] = v30;
    v31 = *(v4 + 7);
    v44[6] = *(v4 + 6);
    v44[7] = v31;
    v32 = *(v4 + 1);
    v44[0] = *v4;
    v44[1] = v32;
    v33 = *(v4 + 3);
    v44[2] = *(v4 + 2);
    v44[3] = v33;
    v42[12] = v58;
    v42[13] = v59;
    v43 = v60;
    v42[8] = v54;
    v42[9] = v55;
    v42[10] = v56;
    v42[11] = v57;
    v42[4] = v50;
    v42[5] = v51;
    v42[6] = v52;
    v42[7] = v53;
    v42[0] = v46;
    v42[1] = v47;
    v42[2] = v48;
    v42[3] = v49;
    sub_21D0D3954(v44, v39, &unk_27CE5EB10, &unk_21DC1D6F0);
    v34 = sub_21D5CA828(v42, v44);
    sub_21D0CF7E0(v44, &unk_27CE5EB10, &unk_21DC1D6F0);
    if ((v34 & 1) == 0)
    {
      v35 = v1 + *((*v3 & *v1) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v36 = *(v35 + 1);
        ObjectType = swift_getObjectType();
        (*(v36 + 8))(ObjectType, v36);
        swift_unknownObjectRelease();
      }

      (*((*v3 & *v1) + 0xB0))(v40);
    }
  }

  return sub_21D0CF7E0(&v46, &unk_27CE5EB10, &unk_21DC1D6F0);
}

void sub_21D5C9980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = MEMORY[0x277D85000];
  v10 = v4 + *((*MEMORY[0x277D85000] & *v4) + 0x78);
  swift_beginAccess();
  v11 = *(v10 + 2);
  v12 = *(v10 + 3);
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  v13 = *v10;
  *v10 = a1;
  *(v10 + 1) = a2;
  v28 = v13;
  v29 = v11;
  v30 = v12;
  if ((*(v4 + *((*v9 & *v4) + 0x90)) & 1) == 0)
  {
    v14 = *(v10 + 2);
    v15 = *(v10 + 3);
    v24 = v13;
    v25 = *v10;
    v26 = v14;
    v27 = v15;
    v16 = v25;
    sub_21DBF8E0C();
    v17 = v15;
    v18 = _s15RemindersUICore26TTRReminderDetailViewModelV10AttachmentV2eeoiySbAE_AEtFZ_0(&v28, &v25);
    v19 = v25;

    *&v13 = v24;
    if ((v18 & 1) == 0)
    {
      v20 = v4 + *((*v9 & *v4) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v21 = *(v20 + 1);
        ObjectType = swift_getObjectType();
        (*(v21 + 8))(ObjectType, v21);
        swift_unknownObjectRelease();
      }

      (*((*v9 & *v4) + 0xB0))(&v28);
      *&v13 = v24;
    }
  }

  v23 = v13;
}

void sub_21D5C9B64(char a1)
{
  v3 = a1 & 1;
  swift_beginAccess();
  v4 = *(v1 + 49);
  *(v1 + 49) = a1;
  if (v4 != v3)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v1, &protocol witness table for TTRITableCell<A>, a1 & 1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_21D5C9C20(__int128 *a1, __int128 *a2)
{
  v4 = a1[3];
  v55 = a1[2];
  v56 = v4;
  v5 = a1[1];
  v53 = *a1;
  v54 = v5;
  v6 = a2[3];
  v51[2] = a2[2];
  v51[3] = v6;
  v7 = a2[1];
  v51[0] = *a2;
  v51[1] = v7;
  v57 = *(a1 + 64);
  v52 = *(a2 + 64);
  v8 = *(&v5 + 1);
  v9 = v57;
  *&v50[7] = v51[0];
  *&v50[23] = *(a2 + 2);
  v10 = *(&v7 + 1);
  v11 = v52;
  if (*(&v5 + 1) >> 1 == 0xFFFFFFFFLL && v57 < 2u)
  {
    if (*(&v7 + 1) >> 1 == 0xFFFFFFFFLL && v52 < 2u)
    {
      v40 = *a1;
      *&v41 = *(a1 + 2);
      *(&v41 + 1) = *(&v54 + 1);
      v12 = a1[3];
      v42 = a1[2];
      v43 = v12;
      v44 = v57;
      sub_21D0D3954(&v53, &v35, &unk_27CE5EA00, &unk_21DC0A7C0);
      sub_21D0D3954(v51, &v35, &unk_27CE5EA00, &unk_21DC0A7C0);
      sub_21D0CF7E0(&v40, &unk_27CE5EA00, &unk_21DC0A7C0);
      goto LABEL_10;
    }

    sub_21D0D3954(&v53, &v40, &unk_27CE5EA00, &unk_21DC0A7C0);
    sub_21D0D3954(v51, &v40, &unk_27CE5EA00, &unk_21DC0A7C0);
LABEL_20:
    v40 = *a1;
    *&v41 = *(a1 + 2);
    *(&v41 + 1) = v8;
    v21 = a1[3];
    v42 = a1[2];
    v43 = v21;
    v44 = v9;
    *v45 = *v50;
    *&v45[15] = *&v50[15];
    v46 = v10;
    v22 = a2[2];
    v48 = a2[3];
    v47 = v22;
    v49 = v11;
    sub_21D0CF7E0(&v40, qword_27CE5ABE0, &qword_21DC1E920);
    goto LABEL_21;
  }

  v13 = *(a1 + 2);
  v40 = *a1;
  *&v41 = v13;
  *(&v41 + 1) = *(&v54 + 1);
  v14 = a1[3];
  v42 = a1[2];
  v43 = v14;
  v44 = v57;
  v39 = v57;
  v37 = v42;
  v38 = v14;
  v35 = v40;
  v36 = v41;
  if (*(&v7 + 1) >> 1 == 0xFFFFFFFFLL && v52 < 2u)
  {
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v30 = v40;
    v31 = v41;
    sub_21D0D3954(&v53, v28, &unk_27CE5EA00, &unk_21DC0A7C0);
    sub_21D0D3954(v51, v28, &unk_27CE5EA00, &unk_21DC0A7C0);
    sub_21D0D3954(&v40, v28, &unk_27CE5EA00, &unk_21DC0A7C0);
    sub_21D35D940(&v30);
    goto LABEL_20;
  }

  v30 = *a2;
  v15 = *(a2 + 2);
  v16 = a2[3];
  v32 = a2[2];
  v33 = v16;
  *&v31 = v15;
  *(&v31 + 1) = v10;
  v34 = v52;
  sub_21D0D3954(&v53, v28, &unk_27CE5EA00, &unk_21DC0A7C0);
  sub_21D0D3954(v51, v28, &unk_27CE5EA00, &unk_21DC0A7C0);
  sub_21D0D3954(&v40, v28, &unk_27CE5EA00, &unk_21DC0A7C0);
  v17 = _s15RemindersUICore31TTRIStaticTableViewStandardCellC4IconO2eeoiySbAE_AEtFZ_0(&v35, &v30);
  v26[2] = v32;
  v26[3] = v33;
  v27 = v34;
  v26[0] = v30;
  v26[1] = v31;
  sub_21D35D940(v26);
  v28[2] = v37;
  v28[3] = v38;
  v29 = v39;
  v28[0] = v35;
  v28[1] = v36;
  sub_21D35D940(v28);
  v30 = *a1;
  *&v31 = *(a1 + 2);
  *(&v31 + 1) = v8;
  v18 = a1[3];
  v32 = a1[2];
  v33 = v18;
  v34 = v9;
  sub_21D0CF7E0(&v30, &unk_27CE5EA00, &unk_21DC0A7C0);
  if ((v17 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((*(a1 + 9) != *(a2 + 9) || *(a1 + 10) != *(a2 + 10)) && (sub_21DBFC64C() & 1) == 0)
  {
    goto LABEL_21;
  }

  v19 = *(a1 + 12);
  v20 = *(a2 + 12);
  if (!v19)
  {
    if (!v20)
    {
      goto LABEL_24;
    }

LABEL_21:
    v23 = 0;
    return v23 & 1;
  }

  if (!v20 || (*(a1 + 11) != *(a2 + 11) || v19 != v20) && (sub_21DBFC64C() & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_24:
  v25 = sub_21D1D8080(*(a1 + 13), *(a2 + 13));
  v23 = 0;
  if ((v25 & 1) != 0 && *(a1 + 14) == *(a2 + 14) && *(a1 + 15) == *(a2 + 15))
  {
    if (((*(a1 + 128) ^ *(a2 + 128)) & 1) == 0)
    {
      v23 = *(a1 + 129) ^ *(a2 + 129) ^ 1;
      return v23 & 1;
    }

    goto LABEL_21;
  }

  return v23 & 1;
}

uint64_t sub_21D5CA038(__int128 *a1, __int128 *a2)
{
  v4 = a1[3];
  v55 = a1[2];
  v56 = v4;
  v5 = a1[1];
  v53 = *a1;
  v54 = v5;
  v6 = a2[3];
  v51[2] = a2[2];
  v51[3] = v6;
  v7 = a2[1];
  v51[0] = *a2;
  v51[1] = v7;
  v57 = *(a1 + 64);
  v52 = *(a2 + 64);
  v8 = *(&v5 + 1);
  v9 = v57;
  *&v50[7] = v51[0];
  *&v50[23] = *(a2 + 2);
  v10 = *(&v7 + 1);
  v11 = v52;
  if (*(&v5 + 1) >> 1 != 0xFFFFFFFFLL || v57 >= 2u)
  {
    v13 = *(a1 + 2);
    v40 = *a1;
    *&v41 = v13;
    *(&v41 + 1) = *(&v54 + 1);
    v14 = a1[3];
    v42 = a1[2];
    v43 = v14;
    v44 = v57;
    v39 = v57;
    v37 = v42;
    v38 = v14;
    v35 = v40;
    v36 = v41;
    if (*(&v7 + 1) >> 1 != 0xFFFFFFFFLL || v52 >= 2u)
    {
      v30 = *a2;
      v15 = *(a2 + 2);
      v16 = a2[3];
      v32 = a2[2];
      v33 = v16;
      *&v31 = v15;
      *(&v31 + 1) = v10;
      v34 = v52;
      sub_21D0D3954(&v53, v28, &unk_27CE5EA00, &unk_21DC0A7C0);
      sub_21D0D3954(v51, v28, &unk_27CE5EA00, &unk_21DC0A7C0);
      sub_21D0D3954(&v40, v28, &unk_27CE5EA00, &unk_21DC0A7C0);
      v17 = _s15RemindersUICore31TTRIStaticTableViewStandardCellC4IconO2eeoiySbAE_AEtFZ_0(&v35, &v30);
      v26[2] = v32;
      v26[3] = v33;
      v27 = v34;
      v26[0] = v30;
      v26[1] = v31;
      sub_21D35D940(v26);
      v28[2] = v37;
      v28[3] = v38;
      v29 = v39;
      v28[0] = v35;
      v28[1] = v36;
      sub_21D35D940(v28);
      v30 = *a1;
      *&v31 = *(a1 + 2);
      *(&v31 + 1) = v8;
      v18 = a1[3];
      v32 = a1[2];
      v33 = v18;
      v34 = v9;
      sub_21D0CF7E0(&v30, &unk_27CE5EA00, &unk_21DC0A7C0);
      if ((v17 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_10;
    }

    v32 = v42;
    v33 = v43;
    v34 = v44;
    v30 = v40;
    v31 = v41;
    sub_21D0D3954(&v53, v28, &unk_27CE5EA00, &unk_21DC0A7C0);
    sub_21D0D3954(v51, v28, &unk_27CE5EA00, &unk_21DC0A7C0);
    sub_21D0D3954(&v40, v28, &unk_27CE5EA00, &unk_21DC0A7C0);
    sub_21D35D940(&v30);
LABEL_20:
    v40 = *a1;
    *&v41 = *(a1 + 2);
    *(&v41 + 1) = v8;
    v21 = a1[3];
    v42 = a1[2];
    v43 = v21;
    v44 = v9;
    *v45 = *v50;
    *&v45[15] = *&v50[15];
    v46 = v10;
    v22 = a2[2];
    v48 = a2[3];
    v47 = v22;
    v49 = v11;
    sub_21D0CF7E0(&v40, qword_27CE5ABE0, &qword_21DC1E920);
    goto LABEL_21;
  }

  if (*(&v7 + 1) >> 1 != 0xFFFFFFFFLL || v52 >= 2u)
  {
    sub_21D0D3954(&v53, &v40, &unk_27CE5EA00, &unk_21DC0A7C0);
    sub_21D0D3954(v51, &v40, &unk_27CE5EA00, &unk_21DC0A7C0);
    goto LABEL_20;
  }

  v40 = *a1;
  *&v41 = *(a1 + 2);
  *(&v41 + 1) = *(&v54 + 1);
  v12 = a1[3];
  v42 = a1[2];
  v43 = v12;
  v44 = v57;
  sub_21D0D3954(&v53, &v35, &unk_27CE5EA00, &unk_21DC0A7C0);
  sub_21D0D3954(v51, &v35, &unk_27CE5EA00, &unk_21DC0A7C0);
  sub_21D0CF7E0(&v40, &unk_27CE5EA00, &unk_21DC0A7C0);
LABEL_10:
  if ((*(a1 + 9) != *(a2 + 9) || *(a1 + 10) != *(a2 + 10)) && (sub_21DBFC64C() & 1) == 0)
  {
    goto LABEL_21;
  }

  v19 = *(a1 + 12);
  v20 = *(a2 + 12);
  if (v19)
  {
    if (!v20 || (*(a1 + 11) != *(a2 + 11) || v19 != v20) && (sub_21DBFC64C() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v20)
  {
    goto LABEL_21;
  }

  sub_21D1D83E8(*(a1 + 13), *(a2 + 13));
  if ((v25 & 1) != 0 && *(a1 + 112) == *(a2 + 112))
  {
    v23 = *(a1 + 113) ^ *(a2 + 113) ^ 1;
    return v23 & 1;
  }

LABEL_21:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_21D5CA42C(__int128 *a1, __int128 *a2, uint64_t (*a3)(void, void))
{
  v6 = a1[3];
  v56 = a1[2];
  v57 = v6;
  v7 = a1[1];
  v54 = *a1;
  v55 = v7;
  v8 = a2[3];
  v52[2] = a2[2];
  v52[3] = v8;
  v9 = a2[1];
  v52[0] = *a2;
  v52[1] = v9;
  v58 = *(a1 + 64);
  v53 = *(a2 + 64);
  v10 = *(&v7 + 1);
  v11 = v58;
  *&v51[7] = v52[0];
  *&v51[23] = *(a2 + 2);
  v12 = *(&v9 + 1);
  v13 = v53;
  if (*(&v7 + 1) >> 1 != 0xFFFFFFFFLL || v58 >= 2u)
  {
    v15 = *(a1 + 2);
    v41 = *a1;
    *&v42 = v15;
    *(&v42 + 1) = *(&v55 + 1);
    v16 = a1[3];
    v43 = a1[2];
    v44 = v16;
    v45 = v58;
    v40 = v58;
    v38 = v43;
    v39 = v16;
    v36 = v41;
    v37 = v42;
    if (*(&v9 + 1) >> 1 != 0xFFFFFFFFLL || v53 >= 2u)
    {
      v31 = *a2;
      v17 = *(a2 + 2);
      v18 = a2[3];
      v33 = a2[2];
      v34 = v18;
      *&v32 = v17;
      *(&v32 + 1) = v12;
      v35 = v53;
      sub_21D0D3954(&v54, v29, &unk_27CE5EA00, &unk_21DC0A7C0);
      sub_21D0D3954(v52, v29, &unk_27CE5EA00, &unk_21DC0A7C0);
      sub_21D0D3954(&v41, v29, &unk_27CE5EA00, &unk_21DC0A7C0);
      v19 = _s15RemindersUICore31TTRIStaticTableViewStandardCellC4IconO2eeoiySbAE_AEtFZ_0(&v36, &v31);
      v27[2] = v33;
      v27[3] = v34;
      v28 = v35;
      v27[0] = v31;
      v27[1] = v32;
      sub_21D35D940(v27);
      v29[2] = v38;
      v29[3] = v39;
      v30 = v40;
      v29[0] = v36;
      v29[1] = v37;
      sub_21D35D940(v29);
      v31 = *a1;
      *&v32 = *(a1 + 2);
      *(&v32 + 1) = v10;
      v20 = a1[3];
      v33 = a1[2];
      v34 = v20;
      v35 = v11;
      sub_21D0CF7E0(&v31, &unk_27CE5EA00, &unk_21DC0A7C0);
      if ((v19 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_10;
    }

    v33 = v43;
    v34 = v44;
    v35 = v45;
    v31 = v41;
    v32 = v42;
    sub_21D0D3954(&v54, v29, &unk_27CE5EA00, &unk_21DC0A7C0);
    sub_21D0D3954(v52, v29, &unk_27CE5EA00, &unk_21DC0A7C0);
    sub_21D0D3954(&v41, v29, &unk_27CE5EA00, &unk_21DC0A7C0);
    sub_21D35D940(&v31);
LABEL_20:
    v41 = *a1;
    *&v42 = *(a1 + 2);
    *(&v42 + 1) = v10;
    v23 = a1[3];
    v43 = a1[2];
    v44 = v23;
    v45 = v11;
    *v46 = *v51;
    *&v46[15] = *&v51[15];
    v47 = v12;
    v24 = a2[2];
    v49 = a2[3];
    v48 = v24;
    v50 = v13;
    sub_21D0CF7E0(&v41, qword_27CE5ABE0, &qword_21DC1E920);
    goto LABEL_21;
  }

  if (*(&v9 + 1) >> 1 != 0xFFFFFFFFLL || v53 >= 2u)
  {
    sub_21D0D3954(&v54, &v41, &unk_27CE5EA00, &unk_21DC0A7C0);
    sub_21D0D3954(v52, &v41, &unk_27CE5EA00, &unk_21DC0A7C0);
    goto LABEL_20;
  }

  v41 = *a1;
  *&v42 = *(a1 + 2);
  *(&v42 + 1) = *(&v55 + 1);
  v14 = a1[3];
  v43 = a1[2];
  v44 = v14;
  v45 = v58;
  sub_21D0D3954(&v54, &v36, &unk_27CE5EA00, &unk_21DC0A7C0);
  sub_21D0D3954(v52, &v36, &unk_27CE5EA00, &unk_21DC0A7C0);
  sub_21D0CF7E0(&v41, &unk_27CE5EA00, &unk_21DC0A7C0);
LABEL_10:
  if ((*(a1 + 9) != *(a2 + 9) || *(a1 + 10) != *(a2 + 10)) && (sub_21DBFC64C() & 1) == 0)
  {
    goto LABEL_21;
  }

  v21 = *(a1 + 12);
  v22 = *(a2 + 12);
  if (v21)
  {
    if (!v22 || (*(a1 + 11) != *(a2 + 11) || v21 != v22) && (sub_21DBFC64C() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v22)
  {
    goto LABEL_21;
  }

  if ((a3(*(a1 + 13), *(a2 + 13)) & 1) != 0 && *(a1 + 14) == *(a2 + 14))
  {
    v25 = *(a1 + 120) ^ *(a2 + 120) ^ 1;
    return v25 & 1;
  }

LABEL_21:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_21D5CA828(__int128 *a1, __int128 *a2)
{
  v4 = a1[11];
  v5 = a1[13];
  v84[5] = a1[12];
  v84[6] = v5;
  v6 = a1[7];
  v7 = a1[9];
  v8 = a1[10];
  v84[1] = a1[8];
  v84[2] = v7;
  v84[3] = v8;
  v84[4] = v4;
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[3];
  v81 = a1[4];
  v82 = v9;
  v83 = v10;
  v84[0] = v6;
  v12 = a1[1];
  v77 = *a1;
  v78 = v12;
  v13 = a1[3];
  v15 = *a1;
  v14 = a1[1];
  v79 = a1[2];
  v80 = v13;
  v16 = a2[11];
  v17 = a2[13];
  v75[5] = a2[12];
  v75[6] = v17;
  v18 = a2[7];
  v19 = a2[9];
  v20 = a2[10];
  v75[1] = a2[8];
  v75[2] = v19;
  v75[3] = v20;
  v75[4] = v16;
  v21 = a2[5];
  v22 = a2[6];
  v23 = a2[3];
  v72 = a2[4];
  v73 = v21;
  v74 = v22;
  v75[0] = v18;
  v24 = a2[1];
  *&v69[31] = *a2;
  *&v69[47] = v24;
  v25 = a2[3];
  v70 = a2[2];
  v71 = v25;
  v86[2] = v79;
  v86[3] = v11;
  v86[0] = v15;
  v86[1] = v14;
  v27 = *a2;
  v26 = a2[1];
  v88[2] = v70;
  v88[3] = v23;
  v88[0] = *a2;
  v88[1] = v26;
  v85 = *(a1 + 224);
  v76 = *(a2 + 224);
  v87 = *(a1 + 64);
  v89 = *(a2 + 64);
  v28 = *(&v14 + 1);
  v29 = v87;
  *&v69[7] = v27;
  *&v69[23] = *(a2 + 2);
  v30 = *(&v26 + 1);
  v31 = v89;
  if (*(&v14 + 1) >> 1 != 0xFFFFFFFFLL || v87 >= 2u)
  {
    v33 = *(a1 + 2);
    v59 = *a1;
    *&v60 = v33;
    *(&v60 + 1) = *(&v14 + 1);
    v34 = a1[3];
    v61 = a1[2];
    v62 = v34;
    v63 = v87;
    v58 = v87;
    v56 = v61;
    v57 = v34;
    v54 = v59;
    v55 = v60;
    if (*(&v26 + 1) >> 1 != 0xFFFFFFFFLL || v89 >= 2u)
    {
      v49 = *a2;
      v35 = *(a2 + 2);
      v36 = a2[3];
      v51 = a2[2];
      v52 = v36;
      *&v50 = v35;
      *(&v50 + 1) = *(&v26 + 1);
      v53 = v89;
      sub_21D0D3954(v86, v47, &unk_27CE5EA00, &unk_21DC0A7C0);
      sub_21D0D3954(v88, v47, &unk_27CE5EA00, &unk_21DC0A7C0);
      sub_21D0D3954(&v59, v47, &unk_27CE5EA00, &unk_21DC0A7C0);
      v37 = _s15RemindersUICore31TTRIStaticTableViewStandardCellC4IconO2eeoiySbAE_AEtFZ_0(&v54, &v49);
      v45[2] = v51;
      v45[3] = v52;
      v46 = v53;
      v45[0] = v49;
      v45[1] = v50;
      sub_21D35D940(v45);
      v47[2] = v56;
      v47[3] = v57;
      v48 = v58;
      v47[0] = v54;
      v47[1] = v55;
      sub_21D35D940(v47);
      v49 = *a1;
      *&v50 = *(a1 + 2);
      *(&v50 + 1) = v28;
      v38 = a1[3];
      v51 = a1[2];
      v52 = v38;
      v53 = v29;
      sub_21D0CF7E0(&v49, &unk_27CE5EA00, &unk_21DC0A7C0);
      if ((v37 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_10;
    }

    v51 = v61;
    v52 = v62;
    v53 = v63;
    v49 = v59;
    v50 = v60;
    sub_21D0D3954(v86, v47, &unk_27CE5EA00, &unk_21DC0A7C0);
    sub_21D0D3954(v88, v47, &unk_27CE5EA00, &unk_21DC0A7C0);
    sub_21D0D3954(&v59, v47, &unk_27CE5EA00, &unk_21DC0A7C0);
    sub_21D35D940(&v49);
LABEL_20:
    v59 = *a1;
    *&v60 = *(a1 + 2);
    *(&v60 + 1) = v28;
    v41 = a1[3];
    v61 = a1[2];
    v62 = v41;
    v63 = v29;
    *v64 = *v69;
    *&v64[15] = *&v69[15];
    v65 = v30;
    v42 = a2[2];
    v67 = a2[3];
    v66 = v42;
    v68 = v31;
    sub_21D0CF7E0(&v59, qword_27CE5ABE0, &qword_21DC1E920);
    goto LABEL_21;
  }

  if (*(&v26 + 1) >> 1 != 0xFFFFFFFFLL || v89 >= 2u)
  {
    sub_21D0D3954(v86, &v59, &unk_27CE5EA00, &unk_21DC0A7C0);
    sub_21D0D3954(v88, &v59, &unk_27CE5EA00, &unk_21DC0A7C0);
    goto LABEL_20;
  }

  v59 = *a1;
  *&v60 = *(a1 + 2);
  *(&v60 + 1) = *(&v14 + 1);
  v32 = a1[3];
  v61 = a1[2];
  v62 = v32;
  v63 = v87;
  sub_21D0D3954(v86, &v54, &unk_27CE5EA00, &unk_21DC0A7C0);
  sub_21D0D3954(v88, &v54, &unk_27CE5EA00, &unk_21DC0A7C0);
  sub_21D0CF7E0(&v59, &unk_27CE5EA00, &unk_21DC0A7C0);
LABEL_10:
  if ((*(a1 + 9) != *(a2 + 9) || *(a1 + 10) != *(a2 + 10)) && (sub_21DBFC64C() & 1) == 0)
  {
    goto LABEL_21;
  }

  v39 = *(a1 + 12);
  v40 = *(a2 + 12);
  if (v39)
  {
    if (!v40 || (*(a1 + 11) != *(a2 + 11) || v39 != v40) && (sub_21DBFC64C() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v40)
  {
    goto LABEL_21;
  }

  if (sub_21D1D8EB0(*(a1 + 13), *(a2 + 13)) & 1) != 0 && (_s15RemindersUICore20TTRAssigneeCandidateO2eeoiySbAC_ACtFZ_0(v84, v75))
  {
    v43 = *(a1 + 224) ^ *(a2 + 224) ^ 1;
    return v43 & 1;
  }

LABEL_21:
  v43 = 0;
  return v43 & 1;
}

void sub_21D5CACAC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21D5CAF90();
  if (v4)
  {
    v6 = v4;
    v7 = v5;

    sub_21D470EDC(v6);
    if (v7)
    {

      if (sub_21D5CAF90())
      {

        sub_21D470EDC(v8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0, qword_21DC0ECD0);
        sub_21D0D0F1C(&qword_280D0C460, &unk_27CE5C9E0, qword_21DC0ECD0, MEMORY[0x277CBCE18]);
        sub_21DBF912C();
      }

      v9 = *(a1 + 16);
      v10 = sub_21D5CAF90();
      if (v9)
      {
        if (!v10)
        {
          return;
        }

        v12 = v11;
        sub_21D470EDC(v10);
        if (v12)
        {
          return;
        }

        v10 = sub_21D5CAF90();
        v13 = qword_27CE56928 == -1;
        if (v10)
        {
          if (qword_27CE56928 != -1)
          {
            v19 = v10;
            swift_once();
            v10 = v19;
          }

LABEL_15:
          v14 = qword_27CE5C838;
          v15 = v10;

          v16 = sub_21DBFC69C();
          objc_setAssociatedObject(v2, v14, v16, 1);
          swift_unknownObjectRelease();
          sub_21D470EDC(v15);
          return;
        }
      }

      else
      {
        v13 = qword_27CE56928 == -1;
        if (v10)
        {
          if (qword_27CE56928 != -1)
          {
            v18 = v10;
            swift_once();
            v10 = v18;
          }

          goto LABEL_15;
        }
      }

      if (!v13)
      {
        swift_once();
      }

      v17 = qword_27CE5C838;

      objc_setAssociatedObject(v2, v17, 0, 1);
    }
  }
}

uint64_t sub_21D5CAF90()
{
  if (qword_27CE56928 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_27CE5C838))
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_21D0CF7E0(v5, &qword_27CE5C690, &unk_21DC11AB0);
    return 0;
  }
}

id sub_21D5CB094(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA28, &qword_21DC1D628));
  v9 = (v8 + qword_27CE652D8);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v8 + qword_27CE652E0);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v8 + qword_27CE652E8);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v8 + qword_27CE652F0);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v8 + qword_27CE652F8);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v8 + qword_27CE65300);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v8 + qword_27CE65308);
  *v15 = 0;
  v15[1] = 0;
  *(v8 + qword_27CE65310) = 1;
  *(v8 + qword_27CE65318) = a1;
  *(v8 + qword_27CE65320) = a2 == 3;
  *(v8 + qword_27CE65328) = a2;
  *(v8 + qword_27CE652D0) = a4;
  v16 = MEMORY[0x277D85000];
  *(v8 + *((*MEMORY[0x277D85000] & *v8) + 0x68)) = 0;
  *(v8 + *((*v16 & *v8) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + *((*v16 & *v8) + 0x90)) = 0;
  v17 = (v8 + *((*v16 & *v8) + 0x78));
  v18 = a3[2];
  v17[1] = a3[1];
  v17[2] = v18;
  *v17 = *a3;
  *(v8 + *((*v16 & *v8) + 0x80)) = 0;
  v19 = v8 + *((*v16 & *v8) + 0x88);
  strcpy(v19, "TextFieldCell");
  *(v19 + 7) = -4864;
  v21.receiver = v8;
  v21.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA30, &qword_21DC1D630);
  return objc_msgSendSuper2(&v21, sel_init);
}

void sub_21D5CB2FC(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_tableDataController] = 0;
  v4 = OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_dueDateCapability;
  *&v1[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_dueDateCapability] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_preferredContentSizeUpdater] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_currentTextInputModeObserver] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_startsEditingTitleOnAppearance] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_firstViewDidAppearCalled] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_commitButton] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_needsTableCellResize] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___titleCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___suggestionGroup] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___textSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___notesCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___urlCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___detailsCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___listCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___detailsSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___listSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___moreOptionsListSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___moreOptionsDetailSection] = 0;
  if (qword_280D19D68 != -1)
  {
    swift_once();
  }

  v5 = *(off_280D19D70 + 2);
  if (v5)
  {
    sub_21D0CEB98(off_280D19D70 + 32 * v5, v17);
    swift_dynamicCast();
    v15 = v18;
    *&v1[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_presenter] = v18;
    v6 = v19;
    *&v1[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_localUndoManager] = v19;
    v7 = &v1[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_configuration];
    v8 = v21;
    *v7 = v20;
    *(v7 + 1) = v8;
    v7[32] = v22;
    v9 = v20;
    type metadata accessor for TTRIReminderDetailDueDateViewControllerCapability();
    v10 = swift_allocObject();
    *&v1[v4] = sub_21D817834(v15, 3, v9, v10);
    swift_unknownObjectRetain_n();
    v11 = v6;

    v16.receiver = v1;
    v16.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v16, sel_initWithCoder_, a1);
    v13 = v12;
    if (!v12)
    {
      sub_21D5D3A68(&v18);
      goto LABEL_8;
    }

    if (*&v12[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_dueDateCapability])
    {
      swift_unknownObjectWeakAssign();
      v14 = v13;
      sub_21D61C450();
      sub_21D5D3A68(&v18);

LABEL_8:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_21D5CB608()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v105 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  *&v3 = MEMORY[0x28223BE20](v105).n128_u64[0];
  v5 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116.receiver = v1;
  v116.super_class = ObjectType;
  objc_msgSendSuper2(&v116, sel_viewDidLoad, v3);
  v6 = OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_tableView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v8 = &v1[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_configuration];
  if ((v1[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_configuration + 16] & 1) == 0)
  {
    v9 = v8[1];
    v10 = swift_unknownObjectWeakLoadStrong();
    if (!v10)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v11 = v10;
    v12 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    [v11 setTableHeaderView_];
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
    goto LABEL_33;
  }

  v14 = v13;
  v100 = v6;
  [v13 setKeyboardDismissMode_];

  sub_21D5D3A1C();
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v15 = sub_21DBF516C();
  v17 = v16;
  *(&v112 + 1) = ObjectType;
  *&v111 = v1;
  v18 = v1;
  v19 = UIBarButtonItem.init(doneButtonWithCustomTitle:target:action:)(v15, v17, &v111, sel_didTapCommit_);
  v20 = *&v18[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_commitButton];
  *&v18[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_commitButton] = v19;
  v21 = v19;

  v22 = [v18 navigationItem];
  [v22 setRightBarButtonItem_];

  v97 = v21;
  v115 = MEMORY[0x277D84F90];
  v23 = *(v8 + 1);
  v98 = v5;
  v99 = v1;
  v106 = v8;
  if (v23 > 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    *&v104 = swift_initStackObject();
    *(v104 + 16) = xmmword_21DC0AA00;
    v113 = 0u;
    memset(v114, 0, sizeof(v114));
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    memset(v110, 0, sizeof(v110));
    v107 = 0u;
    v108 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30, &unk_21DC0CA60);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_21DC08D20;
    *(v24 + 32) = sub_21D5CE6E8(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___titleCell, sub_21D5CE750);
    *(v24 + 40) = &protocol witness table for TTRITableCell<A>;
    *(v24 + 48) = sub_21D5CC4C8();
    *(v24 + 56) = &protocol witness table for TTRITableGroup;
    type metadata accessor for TTRITableSection();
    v25 = swift_allocObject();
    *(v25 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v25 + 200) = 0;
    *(v25 + 208) = 0;
    *(v25 + 48) = 0u;
    *(v25 + 64) = 0u;
    *(v25 + 80) = 0u;
    *(v25 + 89) = 0u;
    *(v25 + 32) = 0u;
    *(v25 + 128) = 0u;
    *(v25 + 144) = 0u;
    *(v25 + 160) = 0u;
    *(v25 + 169) = 0u;
    *(v25 + 112) = 0u;
    *(v25 + 216) = 1;
    swift_beginAccess();
    sub_21D0F02F4(&v111, v25 + 32, &qword_27CE5E690, &unk_21DC103B0);
    swift_endAccess();
    swift_beginAccess();
    sub_21D0F02F4(&v107, v25 + 112, &qword_27CE5E690, &unk_21DC103B0);
    swift_endAccess();
    *(v25 + 192) = v24;
    v26 = v104;
    *(v104 + 32) = v25;
    v113 = 0u;
    memset(v114, 0, sizeof(v114));
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    memset(v110, 0, sizeof(v110));
    v107 = 0u;
    v108 = 0u;
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_21DC08D00;
    *(v27 + 32) = sub_21D5CE6E8(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___notesCell, sub_21D5CEF1C);
    *(v27 + 40) = &protocol witness table for TTRITableCell<A>;
    v28 = swift_allocObject();
    *(v28 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v28 + 200) = 0;
    *(v28 + 208) = 0;
    *(v28 + 48) = 0u;
    *(v28 + 64) = 0u;
    *(v28 + 80) = 0u;
    *(v28 + 89) = 0u;
    *(v28 + 32) = 0u;
    *(v28 + 128) = 0u;
    *(v28 + 144) = 0u;
    *(v28 + 160) = 0u;
    *(v28 + 169) = 0u;
    *(v28 + 112) = 0u;
    *(v28 + 216) = 1;
    swift_beginAccess();
    sub_21D0F02F4(&v111, v28 + 32, &qword_27CE5E690, &unk_21DC103B0);
    swift_endAccess();
    swift_beginAccess();
    sub_21D0F02F4(&v107, v28 + 112, &qword_27CE5E690, &unk_21DC103B0);
    swift_endAccess();
    *(v28 + 192) = v27;
    *(v26 + 40) = v28;
    sub_21D562F14(v26);
  }

  else
  {
    sub_21D5CE6E8(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___textSection, sub_21D5CEC7C);
    MEMORY[0x223D42D80]();
    if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  inited = swift_initStackObject();
  v104 = xmmword_21DC0AA00;
  *(inited + 16) = xmmword_21DC0AA00;
  v30 = OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_dueDateCapability;
  if (!*&v18[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_dueDateCapability])
  {
    goto LABEL_34;
  }

  v31 = inited;

  v32 = sub_21D52E3C4();

  *(v31 + 32) = v32;
  if (!*&v18[v30])
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v33 = sub_21D52E6EC();

  *(v31 + 40) = v33;
  sub_21D562F14(v31);
  if (*(v106 + 2))
  {
    if (*(v106 + 2) == 1)
    {
      v34 = swift_initStackObject();
      *(v34 + 16) = v104;
      *(v34 + 32) = sub_21D5CC59C(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___detailsSection, &OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___detailsCell, sub_21D5CF744);
      v35 = sub_21D5CC59C(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___listSection, &OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___listCell, sub_21D5CFA48);
    }

    else
    {
      v34 = swift_initStackObject();
      *(v34 + 16) = v104;
      *(v34 + 32) = sub_21D5CE6E8(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___moreOptionsListSection, sub_21D5D2C94);
      v35 = sub_21D5CE6E8(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___moreOptionsDetailSection, sub_21D5D2F7C);
    }

    v39 = v35;
    v38 = v34;
    *(v34 + 40) = v39;
  }

  else
  {
    v36 = swift_initStackObject();
    *(v36 + 16) = v104;
    *(v36 + 32) = sub_21D5CC59C(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___listSection, &OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___listCell, sub_21D5CFA48);
    v37 = sub_21D5CC59C(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___detailsSection, &OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___detailsCell, sub_21D5CF744);
    v38 = v36;
    *(v36 + 40) = v37;
  }

  sub_21D562F14(v38);
  v40 = swift_unknownObjectWeakLoadStrong();
  if (!v40)
  {
    goto LABEL_36;
  }

  v41 = v40;
  v42 = v115;
  v43 = sub_21D7F6568(v115);
  v44 = sub_21D5E8D34(v41, v43, 0, 0);
  v45 = v44;
  v46 = *(v106 + 3);
  if (v46)
  {
    v47 = 0x4030000000000000;
  }

  else
  {
    v47 = 0;
  }

  v48 = &v44[OBJC_IVAR____TtC15RemindersUICore23TTRITableDataController_customSectionSpacing];
  swift_beginAccess();
  *v48 = v47;
  v48[8] = v46 ^ 1;
  v49 = *&v18[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_tableDataController];
  *&v18[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_tableDataController] = v45;
  v50 = v45;

  v51 = swift_unknownObjectWeakLoadStrong();
  if (!v51)
  {
    goto LABEL_37;
  }

  v52 = v51;
  v96 = v42;
  [v51 setDataSource_];

  v53 = swift_unknownObjectWeakLoadStrong();
  if (!v53)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v54 = v53;
  [v53 setDelegate_];

  LOBYTE(v111) = 2;
  v55 = v18;
  v90 = v50;
  sub_21DBE133C(&v111, v50, v55);

  v56 = *(sub_21D5CE6E8(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___titleCell, sub_21D5CE750) + 32);

  v57 = *&v55[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_presenter];
  v101 = *(v57 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_makeCellTitleModule);
  v58 = v57 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_interactor;
  v59 = *(v57 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_interactor + 8);
  v60 = swift_getObjectType();
  v61 = (*(v59 + 16))(v60, v59);
  v62 = [v61 objectID];

  v94 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v63 = *(v94 + 20);
  v103 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v64 = *(v103 - 8);
  v102 = *(v64 + 56);
  *&v104 = v64 + 56;
  v65 = v98;
  v102(&v98[v63], 1, 1, v103);
  *v65 = v62;
  swift_storeEnumTagMultiPayload();
  v91 = v57;
  (v101)(&v111, v65, v57, &off_282EC6730, v55, &off_282EC6CA0, v55);
  v101 = type metadata accessor for TTRRemindersListViewModel.Item;
  sub_21D5D3B6C(v65, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D9437F0(&v111);

  v66 = *(*&v55[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___titleCell] + 32);
  v67 = *(v57 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_makeCellHashtagModule);
  v92 = *(v57 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_makeCellHashtagModule + 8);
  v93 = v67;
  v95 = v58;
  v68 = *(v58 + 8);
  v69 = swift_getObjectType();
  v70 = *(v68 + 16);
  v71 = v66;
  v72 = v68;
  v73 = v91;
  v74 = v70(v69, v72);
  v75 = [v74 objectID];

  v76 = v94;
  v102(&v65[*(v94 + 20)], 1, 1, v103);
  *v65 = v75;
  swift_storeEnumTagMultiPayload();
  v93(&v111, v65, v73, &off_282EC6730, v55, &off_282EC6C90, v55);
  sub_21D5D3B6C(v65, v101);
  v77 = qword_27CE8EBE8;
  swift_beginAccess();
  sub_21D0F02F4(&v111, v71 + v77, &unk_27CE5EB40, &unk_21DC1D730);
  swift_endAccess();

  v78 = *(sub_21D5CE6E8(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___notesCell, sub_21D5CEF1C) + 32);

  v79 = *(v73 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_makeCellNotesModule);
  v80 = *(v95 + 8);
  v81 = swift_getObjectType();
  v82 = (*(v80 + 16))(v81, v80);
  v83 = [v82 objectID];

  v102(&v65[*(v76 + 20)], 1, 1, v103);
  *v65 = v83;
  swift_storeEnumTagMultiPayload();
  v79(&v111, v65, v73, &off_282EC6730, v55, &off_282EC6C80, v55);
  sub_21D5D3B6C(v65, v101);
  TTRIReminderNotesCellContent.notesModule.setter(&v111);

  if (*(v106 + 32) != 1)
  {

    goto LABEL_31;
  }

  v84 = swift_unknownObjectWeakLoadStrong();
  if (v84)
  {

    type metadata accessor for TTRIPreferredContentSizeUpdater();
    v85 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v85 + 32) = 0;
    *(v85 + 40) = 0;
    swift_unknownObjectWeakAssign();
    *(v85 + 24) = v84;
    *&v55[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_preferredContentSizeUpdater] = v85;

LABEL_31:
    v86 = v90;
    v55[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_startsEditingTitleOnAppearance] = 1;
    type metadata accessor for TTRICurrentTextInputModeObserver();
    v87 = swift_allocObject();
    *(v87 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0, qword_21DC0ECD0);
    swift_allocObject();
    *(v87 + 24) = sub_21DBF907C();
    *&v55[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_currentTextInputModeObserver] = v87;

    v88 = *(v73 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_inCellEditingPresenterHelper);

    sub_21D8442C8(v89, v88);

    return;
  }

LABEL_40:
  __break(1u);
}

uint64_t sub_21D5CC4C8()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___suggestionGroup;
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___suggestionGroup))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___suggestionGroup);
  }

  else
  {
    type metadata accessor for TTRITableGroup();
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    *(v2 + 24) = 1;
    *(v2 + 40) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 88) = 0;
    *(v2 + 72) = 0u;
    *(v2 + 56) = 0u;
    v3 = MEMORY[0x277D84F90];
    *(v2 + 96) = 2;
    *(v2 + 48) = v3;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_21D5CC59C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    memset(v12, 0, 73);
    memset(v11, 0, 73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30, &unk_21DC0CA60);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_21DC08D00;
    *(v9 + 32) = sub_21D5CE6E8(a2, a3);
    *(v9 + 40) = &protocol witness table for TTRITableCell<A>;
    type metadata accessor for TTRITableSection();
    v6 = swift_allocObject();
    *(v6 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v6 + 200) = 0;
    *(v6 + 208) = 0;
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
    *(v6 + 80) = 0u;
    *(v6 + 89) = 0u;
    *(v6 + 32) = 0u;
    *(v6 + 128) = 0u;
    *(v6 + 144) = 0u;
    *(v6 + 160) = 0u;
    *(v6 + 169) = 0u;
    *(v6 + 112) = 0u;
    *(v6 + 216) = 1;
    swift_beginAccess();
    sub_21D0F02F4(v12, v6 + 32, &qword_27CE5E690, &unk_21DC103B0);
    swift_endAccess();
    swift_beginAccess();
    sub_21D0F02F4(v11, v6 + 112, &qword_27CE5E690, &unk_21DC103B0);
    swift_endAccess();
    *(v6 + 192) = v9;
    *(v3 + v4) = v6;
  }

  return v6;
}

id sub_21D5CC7A0(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for TTRIQuickEntryViewModel(0);
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.receiver = v2;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_viewWillAppear_, a1 & 1, v6);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_21D8178CC(result, a1 & 1, v2);

    sub_21DA94594();
    v11 = *&v2[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_presenter];
    v12 = OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_viewModel;
    swift_beginAccess();
    sub_21D5D3A9C(v11 + v12, v8, type metadata accessor for TTRIQuickEntryViewModel);
    v13 = *&v2[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_commitButton];
    if (v13)
    {
      [v13 setEnabled_];
    }

    result = sub_21D5D3B6C(v8, type metadata accessor for TTRIQuickEntryViewModel);
    if (*&v2[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_currentTextInputModeObserver])
    {

      TTRICurrentTextInputModeObserver.startObserving()();
    }

    v14 = OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_startsEditingTitleOnAppearance;
    if (v2[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_startsEditingTitleOnAppearance] == 1)
    {
      result = [v2 transitionCoordinator];
      if (result)
      {
        v15 = result;
        if ([result isAnimated])
        {
          v2[v14] = 0;
          v16 = swift_allocObject();
          swift_unknownObjectWeakInit();
          aBlock[4] = sub_21D5D3A14;
          aBlock[5] = v16;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_21D83EFE8;
          aBlock[3] = &block_descriptor_36_0;
          v17 = _Block_copy(aBlock);

          [v15 animateAlongsideTransition:v17 completion:0];
          _Block_release(v17);
        }

        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21D5CCA30(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_21D5CE6E8(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___titleCell, sub_21D5CE750);

    v5 = *(v4 + 32);

    v6 = *((*MEMORY[0x277D85000] & *v5) + 0x68);
    swift_beginAccess();
    v7 = *(v5 + v6);
    if (v7)
    {
      v8 = *(v7 + qword_27CE63FE8);
      v9 = [v8 window];
      [v9 makeKeyWindow];

      [v8 becomeFirstResponder];
      v5 = v8;
    }
  }
}

void sub_21D5CCBF8(char a1)
{
  v2 = v1;
  v8.receiver = v2;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewWillDisappear_, a1 & 1);
  v4 = *&v2[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_currentTextInputModeObserver];
  if (v4)
  {
    *(v4 + 16) = 0;
  }

  v5 = [v2 viewIfLoaded];
  if (v5)
  {
    v6 = v5;
    v7 = UIView.firstResponderDescendant.getter();

    if (v7)
    {
      [v7 resignFirstResponder];
    }
  }

  [v2 resignFirstResponder];
  sub_21DA9552C();
}

void sub_21D5CCD18()
{
  if (v0[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_needsTableCellResize] == 1)
  {
    v0[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_needsTableCellResize] = 0;
    v1 = objc_opt_self();
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_21D5D3A0C;
    *(v3 + 24) = v2;
    v7[4] = sub_21D0E6070;
    v7[5] = v3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_21D0E6204;
    v7[3] = &block_descriptor_59;
    v4 = _Block_copy(v7);
    v5 = v0;

    [v1 performWithoutAnimation_];
    _Block_release(v4);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_21D5CCF9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_presenter);
  if (!*(v4 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_completionState))
  {
    if (qword_27CE56A70 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE5E820);
    v6 = sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEACDC("Quick Entry cancel", 18, 2, v6);

    v7 = sub_21DBFA89C();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    sub_21DBFA84C();
    swift_unknownObjectRetain();
    v8 = sub_21DBFA83C();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    *(v9 + 16) = v8;
    *(v9 + 24) = v10;
    *(v9 + 32) = v4;
    *(v9 + 40) = 1;
    sub_21D1B5178(0, 0, v3, &unk_21DC1D720, v9);
  }
}

void sub_21D5CD284(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong performBatchUpdates:0 completion:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_21D5CD2E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E9D0, &unk_21DC1D5F0);
  MEMORY[0x28223BE20](v4 - 8);
  v107 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v102 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E9D8, &unk_21DC323F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v102 - v10;
  v12 = sub_21D10FA9C(*MEMORY[0x277D76A08], *MEMORY[0x277D74410], 0, 0);
  v13 = v12;
  v14 = 0;
  v105 = a1 + OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_configuration;
  LODWORD(v106) = *(a1 + OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_configuration);
  if (v106 == 1)
  {
    v15 = v12;
    v14 = v13;
  }

  v104 = v13;
  v16 = *(sub_21D5CE6E8(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___titleCell, sub_21D5CE750) + 32);

  sub_21D5D3A9C(a2, v11, type metadata accessor for TTRRemindersListViewModel.Item);
  v17 = type metadata accessor for TTRIQuickEntryViewModel(0);
  v18 = *(v17 + 28);
  v19 = *(a2 + *(v17 + 24));
  v110 = a2;
  v108 = a1;
  v20 = *(a2 + v18);
  v22 = *(a2 + v18 + 8);
  v21 = *(a2 + v18 + 16);
  v23 = type metadata accessor for TTRIReminderTitleAndStructuredHashtagCellContentState(0);
  v24 = v23[7];
  *&v11[v23[5]] = v19;
  v25 = &v11[v23[6]];
  *v25 = v20;
  v26 = v110;
  *(v25 + 1) = v22;
  *(v25 + 2) = v21;
  *&v11[v24] = v14;
  (*(*(v23 - 1) + 56))(v11, 0, 1, v23);
  v103 = v14;
  v27 = v19;
  v28 = v17;
  sub_21DBF8E0C();
  v29 = v108;
  sub_21DBF8E0C();
  sub_21D5C7C98(v11);

  v30 = *(v26 + v28[8]);
  sub_21D5CDD38(v30);
  v31 = 0;
  if (!*(v105 + 1))
  {
    v31 = *(v30 + 16) == 0;
  }

  v32 = *(sub_21D5CE6E8(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___notesCell, sub_21D5CEF1C) + 32);

  sub_21D5D3A9C(v26, v8, type metadata accessor for TTRRemindersListViewModel.Item);
  v33 = v28[9];
  v34 = v28;
  v109 = v28;
  v35 = *(v26 + v33);
  v36 = *(v26 + v34[16]);
  v37 = *(v26 + v34[17]);
  v38 = type metadata accessor for TTRIReminderNotesCellContentState(0);
  *&v8[v38[5]] = v35;
  *&v8[v38[6]] = v36;
  v8[v38[7]] = v37;
  v8[v38[8]] = v31;
  (*(*(v38 - 1) + 56))(v8, 0, 1, v38);
  v39 = *((*MEMORY[0x277D85000] & *v32) + 0x78);
  swift_beginAccess();
  v40 = v107;
  sub_21D0D3954(v32 + v39, v107, &qword_27CE5E9D0, &unk_21DC1D5F0);
  swift_beginAccess();
  sub_21DBF8E0C();
  v41 = v35;
  sub_21D0EB8DC(v8, v32 + v39, &qword_27CE5E9D0, &unk_21DC1D5F0);
  swift_endAccess();
  sub_21D5D2398(v40);

  sub_21D0CF7E0(v40, &qword_27CE5E9D0, &unk_21DC1D5F0);
  sub_21D0CF7E0(v8, &qword_27CE5E9D0, &unk_21DC1D5F0);
  sub_21D5CE6E8(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___urlCell, sub_21D5CF448);
  sub_21D5C9B64(v106 ^ 1);

  sub_21D5CE2C0();
  v42 = v109;
  if (*(v29 + OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_dueDateCapability))
  {
    v43 = v109[10];

    v44 = v110;
    sub_21D52EB9C(v110 + v43);
    sub_21D52E74C();
    sub_21D5C9B64(1);

    sub_21D52E7AC();
    sub_21D5C9B64(1);

    sub_21D52E80C();
    sub_21D5C9B64(1);

    sub_21D531E10(v44 + v43, 0x2000);
    sub_21D52E3C4();
    sub_21D5334D0();

    sub_21D52E6EC();
    sub_21D5334D0();

    sub_21D5335B4();

    v45 = *(sub_21D5CE6E8(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___detailsCell, sub_21D5CF744) + 32);

    v46 = *(v44 + v42[11]);
    v47 = (v45 + *((*MEMORY[0x277D85000] & *v45) + 0x78));
    swift_beginAccess();
    v48 = v47[2];
    v49 = v47[3];
    v50 = v47[4];
    v138[5] = v47[5];
    v51 = v47[1];
    v138[0] = *v47;
    v138[1] = v51;
    v138[3] = v49;
    v138[4] = v50;
    v138[2] = v48;
    v52 = v47[1];
    v157[0] = *v47;
    v157[1] = v52;
    v53 = v47[2];
    v54 = v47[3];
    v55 = v47[4];
    v158 = *(v47 + 10);
    v157[3] = v54;
    v157[4] = v55;
    v157[2] = v53;
    sub_21DBF8E0C();
    sub_21D5D2914(v138, &v148);

    v159 = v46;
    sub_21D5C801C(v157);

    v56 = *(sub_21D5CE6E8(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___listCell, sub_21D5CFA48) + 32);

    v57 = v44 + v42[12];
    v58 = *(v57 + 48);
    if (v58 == 255)
    {
      v59 = 0;
      v60 = 0;
    }

    else
    {
      v59 = *(v57 + 32);
      v60 = *(v57 + 40);
      if (v58)
      {
        v61 = *(v57 + 16);
        v148 = *v57;
        v149 = v61;
        v150 = v59;
        v151 = v60;
        LOBYTE(v152) = 1;
        v62 = TTRListColors.Color.nativeColor.getter();
        v63 = [v62 accessibilityName];

        v59 = sub_21DBFA16C();
        v60 = v64;
      }

      else
      {
        sub_21DBF8E0C();
      }
    }

    v65 = MEMORY[0x277D85000];
    v66 = (v56 + *((*MEMORY[0x277D85000] & *v56) + 0x78));
    swift_beginAccess();
    v114 = *v66;
    v67 = v66[1];
    v68 = v66[2];
    v69 = v66[4];
    v117 = v66[3];
    v118 = v69;
    v115 = v67;
    v116 = v68;
    v70 = v66[5];
    v71 = v66[6];
    v72 = v66[7];
    *(v121 + 9) = *(v66 + 121);
    v120 = v71;
    v121[0] = v72;
    v119 = v70;
    sub_21D5D2970(&v114, &v148);

    v148 = v114;
    v149 = v115;
    v154 = v119;
    v155 = v120;
    v156[0] = v121[0];
    *(v156 + 9) = *(v121 + 9);
    v152 = v117;
    v153 = v118;
    v150 = v59;
    v151 = v60;
    sub_21D5C8234(&v148);

    v107 = OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___listCell;
    v73 = *(*(v108 + OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___listCell) + 32);
    v74 = (v110 + v109[13]);
    v75 = v74[1];
    v106 = *v74;
    v76 = (v73 + *((*v65 & *v73) + 0x78));
    swift_beginAccess();
    v122[0] = *v76;
    v77 = v76[1];
    v78 = v76[2];
    v79 = v76[4];
    v124 = v76[3];
    v125 = v79;
    v122[1] = v77;
    v123 = v78;
    v80 = v76[5];
    v81 = v76[6];
    v82 = v76[7];
    *(v128 + 9) = *(v76 + 121);
    v127 = v81;
    v128[0] = v82;
    v126 = v80;
    v83 = v73;
    sub_21DBF8E0C();
    sub_21D5D2970(v122, &v139);

    v139 = v122[0];
    v145 = v126;
    v146 = v127;
    v147[0] = v128[0];
    *(v147 + 9) = *(v128 + 9);
    v142 = v123;
    v143 = v124;
    v144 = v125;
    v140 = v106;
    v141 = v75;
    sub_21D5C8234(&v139);

    v84 = *(*(v108 + v107) + 32);
    v85 = (v110 + v109[14]);
    v86 = v85[3];
    v131 = v85[2];
    v132 = v86;
    v133[0] = v85[4];
    *(v133 + 9) = *(v85 + 73);
    v87 = v85[1];
    v129 = *v85;
    v130 = v87;
    v88 = (v84 + *((*v65 & *v84) + 0x78));
    swift_beginAccess();
    v134[0] = *v88;
    v89 = v88[1];
    v90 = v88[2];
    v91 = v88[4];
    v134[3] = v88[3];
    v134[4] = v91;
    v134[1] = v89;
    v134[2] = v90;
    v92 = v88[5];
    v93 = v88[6];
    v94 = v88[7];
    *(v135 + 9) = *(v88 + 121);
    v134[6] = v93;
    v135[0] = v94;
    v134[5] = v92;
    v95 = v88[1];
    v112[0] = *v88;
    v112[1] = v95;
    v96 = v88[3];
    v112[2] = v88[2];
    v97 = v88[4];
    v136[0] = v96;
    v136[1] = v97;
    v99 = v88[6];
    v98 = v88[7];
    v100 = v88[5];
    *(v137 + 9) = *(v88 + 121);
    v136[3] = v99;
    v137[0] = v98;
    v136[2] = v100;
    v101 = v84;
    sub_21D0D3954(&v129, v111, &unk_27CE5E9E0, &unk_21DC1D600);
    sub_21D5D2970(v134, v111);
    sub_21D0CF7E0(v136, &unk_27CE5E9E0, &unk_21DC1D600);
    v112[5] = v131;
    v112[6] = v132;
    v113[0] = v133[0];
    *(v113 + 9) = *(v133 + 9);
    v112[3] = v129;
    v112[4] = v130;
    sub_21D5C8234(v112);
  }

  else
  {
    __break(1u);
  }
}

void sub_21D5CDD38(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21DBF813C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21D5CC4C8();
  swift_beginAccess();
  v8 = *(v7 + 48);
  sub_21DBF8E0C();

  *&v51 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA50, &qword_21DC1D650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA58, &qword_21DC1D658);
  sub_21D0D0F1C(&qword_27CE5EA60, &qword_27CE5EA50, &qword_21DC1D650, MEMORY[0x277D83970]);
  v9 = sub_21DBFA43C();

  if (v9)
  {
    if (v9 >> 62)
    {
      v10 = sub_21DBFBD7C();
      v49 = v5;
      if (v10)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v49 = v5;
      if (v10)
      {
LABEL_4:
        v63 = MEMORY[0x277D84F90];
        sub_21D18EAE4(0, v10 & ~(v10 >> 63), 0);
        if (v10 < 0)
        {
          __break(1u);
          return;
        }

        v46 = a1;
        v47 = v4;
        v48 = v2;
        v11 = v63;
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = 0;
          do
          {
            v13 = *(MEMORY[0x223D44740](v12, v9) + 32);
            v14 = *((*MEMORY[0x277D85000] & *v13) + 0x78);
            swift_beginAccess();
            sub_21D1D9BE4(v13 + v14, &v51);
            swift_unknownObjectRelease();
            v63 = v11;
            v16 = *(v11 + 16);
            v15 = *(v11 + 24);
            if (v16 >= v15 >> 1)
            {
              sub_21D18EAE4((v15 > 1), v16 + 1, 1);
              v11 = v63;
            }

            ++v12;
            *(v11 + 16) = v16 + 1;
            v17 = (v11 + 192 * v16);
            v18 = v51;
            v19 = v52;
            v20 = v54;
            v17[4] = v53;
            v17[5] = v20;
            v17[2] = v18;
            v17[3] = v19;
            v21 = v55;
            v22 = v56;
            v23 = v58;
            v17[8] = v57;
            v17[9] = v23;
            v17[6] = v21;
            v17[7] = v22;
            v24 = v59;
            v25 = v60;
            v26 = v62;
            v17[12] = v61;
            v17[13] = v26;
            v17[10] = v24;
            v17[11] = v25;
          }

          while (v10 != v12);
        }

        else
        {
          v27 = v9 + 32;
          do
          {
            v28 = *(*v27 + 32);
            v29 = *((*MEMORY[0x277D85000] & *v28) + 0x78);
            swift_beginAccess();
            sub_21D1D9BE4(v28 + v29, &v51);
            v63 = v11;
            v31 = *(v11 + 16);
            v30 = *(v11 + 24);
            if (v31 >= v30 >> 1)
            {
              sub_21D18EAE4((v30 > 1), v31 + 1, 1);
              v11 = v63;
            }

            *(v11 + 16) = v31 + 1;
            v32 = (v11 + 192 * v31);
            v33 = v51;
            v34 = v52;
            v35 = v54;
            v32[4] = v53;
            v32[5] = v35;
            v32[2] = v33;
            v32[3] = v34;
            v36 = v55;
            v37 = v56;
            v38 = v58;
            v32[8] = v57;
            v32[9] = v38;
            v32[6] = v36;
            v32[7] = v37;
            v39 = v59;
            v40 = v60;
            v41 = v62;
            v32[12] = v61;
            v32[13] = v41;
            v32[10] = v39;
            v32[11] = v40;
            v27 += 8;
            --v10;
          }

          while (v10);
        }

        v4 = v47;
        v2 = v48;
        a1 = v46;
        goto LABEL_18;
      }
    }

    v11 = MEMORY[0x277D84F90];
LABEL_18:
    *&v51 = a1;
    v63 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA68, &unk_21DC1D660);
    sub_21D0D0F1C(&unk_27CE5EA70, &qword_27CE5EA68, &unk_21DC1D660, MEMORY[0x277D83988]);
    v42 = v50;
    sub_21DBFAC5C();

    MEMORY[0x28223BE20](v43);
    v45 = v2;
    MEMORY[0x28223BE20](v44);

    sub_21D5D008C(v42, sub_21D5D2BD8, (&v46 - 4), sub_21D5D2BE0, (&v46 - 4), &qword_27CE5EA58, &qword_21DC1D658, &qword_27CE5EAA0, &qword_21DC1D688);

    sub_21D5CACAC(a1);
    (*(v49 + 8))(v42, v4);
  }
}

void sub_21D5CE2C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  v7 = type metadata accessor for TTRIQuickEntryViewModel.URLState(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_configuration) == 1)
  {
    v10 = *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_viewModel;
    swift_beginAccess();
    v11 = type metadata accessor for TTRIQuickEntryViewModel(0);
    sub_21D5D3A9C(v10 + *(v11 + 76), v9, type metadata accessor for TTRIQuickEntryViewModel.URLState);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230, &unk_21DC1CEB0);
    if ((*(*(v12 - 8) + 48))(v9, 1, v12) != 1)
    {
      sub_21D57690C(v9, v6);
      sub_21D0D3954(v6, v3, &qword_27CE5EA20, &qword_21DC0D4A0);
      v13 = sub_21DBF54CC();
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v3, 1, v13) == 1)
      {
        sub_21D0CF7E0(v3, &qword_27CE5EA20, &qword_21DC0D4A0);
        v15 = 0;
        v16 = 0xE000000000000000;
      }

      else
      {
        v15 = sub_21DBF535C();
        v16 = v17;
        (*(v14 + 8))(v3, v13);
      }

      v18 = *(sub_21D5CE6E8(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___urlCell, sub_21D5CF448) + 32);

      v19 = MEMORY[0x277D85000];
      v20 = *((*MEMORY[0x277D85000] & *v18) + 0x68);
      swift_beginAccess();
      v21 = *(v18 + v20);
      if (!v21 || (v22 = *(v21 + qword_27CE65428 + 8), ObjectType = swift_getObjectType(), v24 = *(v22 + 216), swift_unknownObjectRetain(), LOBYTE(v22) = v24(ObjectType, v22), swift_unknownObjectRelease(), (v22 & 1) == 0))
      {
        v25 = v18 + *((*v19 & *v18) + 0x78);
        swift_beginAccess();
        v26 = *v25;
        v27 = *(v25 + 1);
        v28 = v25[16];
        v29 = v25[17];
        v30 = *(v25 + 4);
        v34 = *(v25 + 3);
        v31 = *(v25 + 5);
        sub_21D59B950(v26, v27, v28);
        v32 = v31;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D5968AC(v26, v27, v28);
        v35 = 0;
        *&v36 = v15;
        *(&v36 + 1) = v16;
        v37 = 0;
        v38 = v29;
        v39 = v34;
        v40 = v30;
        v41 = v31;
        sub_21D5C6B34(&v36);
      }

      sub_21D0CF7E0(v6, &qword_27CE5EA20, &qword_21DC0D4A0);
    }
  }
}

uint64_t sub_21D5CE6E8(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_21D5CE750(uint64_t a1)
{
  v35 = sub_21DBF56BC();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E9D8, &unk_21DC323F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF516C();
  v13 = v12;
  v33 = v11;
  v34 = 0x800000021DC62940;
  v14 = type metadata accessor for TTRIReminderTitleAndStructuredHashtagCellContentState(0);
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = *(a1 + OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_configuration);
  v16 = objc_allocWithZone(type metadata accessor for TTRIReminderTitleAndStructuredHashtagCellContent(0));
  v17 = (v16 + qword_27CE8EBE0);
  *v17 = 0u;
  v17[1] = 0u;
  v17[2] = 0u;
  v18 = (v16 + qword_27CE8EBE8);
  *v18 = 0u;
  v18[1] = 0u;
  v18[2] = 0u;
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_21DBFBEEC();

  v36 = 0xD000000000000022;
  v37 = 0x800000021DC62960;
  sub_21DBF56AC();
  v19 = sub_21DBF565C();
  v21 = v20;
  (*(v2 + 8))(v4, v35);
  MEMORY[0x223D42AA0](v19, v21);

  v22 = v36;
  v23 = v37;
  v24 = (v16 + qword_27CE63FC8);
  *v24 = v33;
  v24[1] = v13;
  v25 = (v16 + qword_27CE8EBD8);
  *v25 = 0xD000000000000017;
  v25[1] = v34;
  *(v16 + qword_27CE63FD0) = v15;
  sub_21D0D3954(v10, v7, &qword_27CE5E9D8, &unk_21DC323F0);
  v26 = MEMORY[0x277D85000];
  *(v16 + *((*MEMORY[0x277D85000] & *v16) + 0x68)) = 0;
  *(v16 + *((*v26 & *v16) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v16 + *((*v26 & *v16) + 0x90)) = 0;
  sub_21D0D3954(v7, v16 + *((*v26 & *v16) + 0x78), &qword_27CE5E9D8, &unk_21DC323F0);
  *(v16 + *((*v26 & *v16) + 0x80)) = 0;
  v27 = (v16 + *((*v26 & *v16) + 0x88));
  *v27 = v22;
  v27[1] = v23;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EAB8, &qword_21DC1D698);
  v38.receiver = v16;
  v38.super_class = v28;
  v29 = objc_msgSendSuper2(&v38, sel_init);
  sub_21D0CF7E0(v7, &qword_27CE5E9D8, &unk_21DC323F0);
  sub_21D0CF7E0(v10, &qword_27CE5E9D8, &unk_21DC323F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EAC0, &unk_21DC1D6A0);
  v30 = swift_allocObject();
  *(v30 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v30 + 48) = 1;
  *(v30 + 49) = 0;
  *(v30 + 56) = 0;
  *(v30 + 64) = 0;
  *(v30 + 72) = 1;
  *(v30 + 32) = v29;
  *(v30 + 40) = 0;
  v31 = v29 + *((*v26 & *v29) + 0x70);
  swift_beginAccess();
  *(v31 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v30;
}

uint64_t sub_21D5CEC7C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D978, &qword_21DC1A278);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21DC0AFB0;
  *(v2 + 32) = sub_21D5CE6E8(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___titleCell, sub_21D5CE750);
  *(v2 + 40) = &protocol witness table for TTRITableCell<A>;
  *(v2 + 48) = sub_21D5CC4C8();
  *(v2 + 56) = &protocol witness table for TTRITableGroup;
  *(v2 + 64) = sub_21D5CE6E8(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___notesCell, sub_21D5CEF1C);
  *(v2 + 72) = &protocol witness table for TTRITableCell<A>;
  if (*(a1 + OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_configuration) == 1)
  {
    v3 = sub_21D5CE6E8(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___urlCell, sub_21D5CF448);
    v4 = &protocol witness table for TTRITableCell<A>;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  *(v2 + 80) = v3;
  *(v2 + 88) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB50, &unk_21DC1A280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5DDC0, &qword_21DC098D0);
  sub_21D0D0F1C(&unk_27CE5EB60, &unk_27CE5EB50, &unk_21DC1A280, MEMORY[0x277D83970]);
  v5 = sub_21DBFA41C();

  memset(v9, 0, 73);
  type metadata accessor for TTRITableSection();
  memset(v8, 0, 73);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 200) = 0;
  *(v6 + 208) = 0;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 89) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0u;
  *(v6 + 169) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 216) = 1;
  swift_beginAccess();
  sub_21D0F02F4(v9, v6 + 32, &qword_27CE5E690, &unk_21DC103B0);
  swift_endAccess();
  swift_beginAccess();
  sub_21D0F02F4(v8, v6 + 112, &qword_27CE5E690, &unk_21DC103B0);
  swift_endAccess();
  *(v6 + 192) = v5;
  return v6;
}

uint64_t sub_21D5CEF1C(uint64_t a1)
{
  v34 = sub_21DBF56BC();
  v2 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E9D0, &unk_21DC1D5F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = *(a1 + OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_configuration + 1);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v33 = v11 == 1;
  v12 = sub_21DBF516C();
  v14 = v13;
  v32 = 0x800000021DC628A0;
  v15 = type metadata accessor for TTRIReminderNotesCellContentState(0);
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = objc_allocWithZone(type metadata accessor for TTRIReminderNotesCellContent(0));
  v17 = (v16 + qword_27CE8EBF0);
  *v17 = 0u;
  v17[1] = 0u;
  v17[2] = 0u;
  v35[0] = 0;
  v35[1] = 0xE000000000000000;
  sub_21DBFBEEC();

  strcpy(v35, "ReminderNotes-");
  HIBYTE(v35[1]) = -18;
  sub_21DBF56AC();
  v18 = sub_21DBF565C();
  v20 = v19;
  (*(v2 + 8))(v4, v34);
  MEMORY[0x223D42AA0](v18, v20);

  v21 = v35[0];
  v22 = v35[1];
  v23 = (v16 + qword_27CE64028);
  *v23 = v12;
  v23[1] = v14;
  v24 = (v16 + qword_27CE8EBF8);
  *v24 = 0xD000000000000016;
  v24[1] = v32;
  *(v16 + qword_27CE64030) = v33;
  sub_21D0D3954(v10, v7, &qword_27CE5E9D0, &unk_21DC1D5F0);
  v25 = MEMORY[0x277D85000];
  *(v16 + *((*MEMORY[0x277D85000] & *v16) + 0x68)) = 0;
  *(v16 + *((*v25 & *v16) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v16 + *((*v25 & *v16) + 0x90)) = 0;
  sub_21D0D3954(v7, v16 + *((*v25 & *v16) + 0x78), &qword_27CE5E9D0, &unk_21DC1D5F0);
  *(v16 + *((*v25 & *v16) + 0x80)) = 0;
  v26 = (v16 + *((*v25 & *v16) + 0x88));
  *v26 = v21;
  v26[1] = v22;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA40, &unk_21DC1D640);
  v36.receiver = v16;
  v36.super_class = v27;
  v28 = objc_msgSendSuper2(&v36, sel_init);
  sub_21D0CF7E0(v7, &qword_27CE5E9D0, &unk_21DC1D5F0);
  sub_21D0CF7E0(v10, &qword_27CE5E9D0, &unk_21DC1D5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA48, &unk_21DC2B1B0);
  v29 = swift_allocObject();
  *(v29 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v29 + 48) = 1;
  *(v29 + 49) = 0;
  *(v29 + 56) = 0;
  *(v29 + 64) = 0;
  *(v29 + 72) = 1;
  *(v29 + 32) = v28;
  *(v29 + 40) = 0;
  v30 = v28 + *((*v25 & *v28) + 0x70);
  swift_beginAccess();
  *(v30 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v29;
}

uint64_t sub_21D5CF448()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v9 = xmmword_21DC0E710;
  v10 = 0;
  v11 = sub_21DBF516C();
  v12 = v0;
  v13 = 0;
  v1 = sub_21D5CB094(0, 3, &v9, 1);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = (v1 + qword_27CE652D8);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = sub_21D5D2BD0;
  v3[1] = v2;

  sub_21D0D0E88(v4, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E670, &unk_21DC1C920);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 48) = 1;
  *(v6 + 49) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 1;
  *(v6 + 32) = v1;
  *(v6 + 40) = 0;
  v7 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x70);
  swift_beginAccess();
  *(v7 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v6;
}

void sub_21D5CF660(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (v4)
    {
      v7 = [v3 string];
      v8 = sub_21DBFA16C();
      v10 = v9;

      sub_21D5968AC(v3, v2, 1);
      v3 = v8;
      v2 = v10;
    }

    else
    {
      sub_21DBF8E0C();
    }

    sub_21D5BD7AC(v3, v2);
  }
}

uint64_t sub_21D5CF744(uint64_t a1)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF516C();
  v4 = v3;
  v5 = sub_21DBFA12C();
  v6 = [objc_opt_self() _systemImageNamed_];

  if (*(a1 + OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_configuration) == 1)
  {
    v7 = 0;
    v8 = 0x80;
  }

  else
  {

    v6 = 0;
    v8 = 0;
    v7 = 0x1FFFFFFFELL;
  }

  *&v20 = v2;
  *(&v20 + 1) = v4;
  v21 = v6;
  v22 = 0;
  v23 = 0;
  v24 = v7;
  v25 = 0u;
  v26 = 0u;
  v27 = v8;
  v28 = MEMORY[0x277D84F90];
  v9 = objc_allocWithZone(type metadata accessor for TTRIQuickEntryDetailStatusCellContent(0));
  v10 = sub_21DA87D44(0, 0xD00000000000001ALL, 0x800000021DC62880, 1, &v20);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = MEMORY[0x277D85000];
  v13 = (v10 + *((*MEMORY[0x277D85000] & *v10) + 0x108));
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  *v13 = sub_21D5D2AA4;
  v13[1] = v11;
  v16 = v10;

  sub_21D0D0E88(v14, v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E9F0, &unk_21DC1D610);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v17 + 48) = 1;
  *(v17 + 49) = 0;
  *(v17 + 56) = 0;
  *(v17 + 64) = 0;
  *(v17 + 72) = 1;
  *(v17 + 32) = v16;
  *(v17 + 40) = 0;
  v18 = v16 + *((*v12 & *v16) + 0x70);
  swift_beginAccess();
  *(v18 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v17;
}

uint64_t sub_21D5CFA48()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF516C();
  v2 = v1;
  v25[0] = xmmword_21DC19C40;
  memset(&v25[1], 0, 73);
  sub_21D0CF7E0(v25, &unk_27CE5E9E0, &unk_21DC1D600);
  *&v14 = v0;
  *(&v14 + 1) = v2;
  v15 = 0;
  v16 = 0xE000000000000000;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 1;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  v3 = objc_allocWithZone(type metadata accessor for TTRIListCellContent(0));
  v4 = sub_21DA87F1C(0, 0x6C6C65437473694CLL, 0xE800000000000000, 1, &v14);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = MEMORY[0x277D85000];
  v7 = (v4 + *((*MEMORY[0x277D85000] & *v4) + 0x108));
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = sub_21D5D2A20;
  v7[1] = v5;
  v10 = v4;

  sub_21D0D0E88(v8, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622D0, &qword_21DC2B230);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 48) = 1;
  *(v11 + 49) = 0;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 1;
  *(v11 + 32) = v10;
  *(v11 + 40) = 0;
  v12 = v10 + *((*v6 & *v10) + 0x70);
  swift_beginAccess();
  *(v12 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v11;
}

void *sub_21D5CFCFC(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = swift_unknownObjectRetain();
    a2(v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D5CFD7C@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA58, &qword_21DC1D658);
  result = swift_dynamicCastClass();
  v4 = result;
  if (result)
  {
    result = swift_unknownObjectRetain();
  }

  *a2 = v4;
  return result;
}

unint64_t sub_21D5CFDE4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    v12[28] = v2;
    v12[29] = v3;
    sub_21D1D9BE4(a2 + 192 * result + 32, v12);
    v4 = objc_allocWithZone(type metadata accessor for TTRIQuickEntrySuggestionCellContent(0));
    v5 = sub_21D5A524C(v12);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = (v5 + qword_27CE5E778);
    v8 = *(v5 + qword_27CE5E778);
    v9 = *(v5 + qword_27CE5E778 + 8);
    *v7 = sub_21D5D2C8C;
    v7[1] = v6;

    sub_21D0D0E88(v8, v9);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA58, &qword_21DC1D658);
    v10 = swift_allocObject();
    *(v10 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v10 + 48) = 1;
    *(v10 + 49) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    *(v10 + 72) = 1;
    *(v10 + 32) = v5;
    *(v10 + 40) = 0;
    v11 = v5 + *((*MEMORY[0x277D85000] & *v5) + 0x70);
    swift_beginAccess();
    *(v11 + 1) = &protocol witness table for TTRITableCell<A>;
    swift_unknownObjectWeakAssign();
    *(v10 + 72) = 1;
    return v10;
  }

  __break(1u);
  return result;
}

void *sub_21D5CFF6C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_unknownObjectRetain();
    sub_21D5BCD7C(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D5CFFEC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a2)
  {
    v6[26] = v3;
    v6[27] = v4;
    sub_21D1D9BE4(a3 + 192 * a2 + 32, v6);
    return sub_21D5C84F0(v6);
  }

  __break(1u);
  return result;
}

void sub_21D5D008C(uint64_t a1, uint64_t (*a2)(unint64_t), uint64_t a3, void (*a4)(uint64_t, unint64_t), uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v104 = a8;
  v115 = a7;
  v114 = a6;
  v10 = v9;
  v112 = a5;
  v111 = a4;
  v122 = a3;
  v121 = a2;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA80, &qword_21DC0A040);
  MEMORY[0x28223BE20](v108);
  v123 = &v99 - v11;
  v130 = sub_21DBF5A5C();
  v107 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v129 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_21DBF811C();
  v118 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v14 = (&v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA88, &unk_21DC1D670);
  MEMORY[0x28223BE20](v15 - 8);
  v106 = &v99 - v16;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA90, &qword_21DC42050);
  MEMORY[0x28223BE20](v105);
  v18 = &v99 - v17;
  v19 = sub_21DBF5B9C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v99 - v24;
  v26 = *(sub_21DBF812C() + 16);

  if (v26)
  {
    v110 = v20;
    v117 = v25;
    sub_21DBF5B8C();
    sub_21DBF5B8C();
    v27 = sub_21DBF812C();
    v28 = *(v27 + 16);
    v131 = v10;
    swift_beginAccess();
    v119 = v22;
    v30 = v116;
    v31 = v118;
    v128 = v28;
    if (v28)
    {
      v32 = 0;
      v100 = a9;
      v127 = (v118 + 88);
      v126 = *MEMORY[0x277D45978];
      v120 = *MEMORY[0x277D45970];
      v113 = *MEMORY[0x277D45980];
      v125 = (v118 + 96);
      *&v29 = 136315394;
      v101 = v29;
      v124 = v27;
      v103 = v118 + 16;
      while (v32 < *(v27 + 16))
      {
        (*(v31 + 16))(v14, v27 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v32, v30);
        v33 = (*(v31 + 88))(v14, v30);
        if (v33 == v126 || v33 == v120)
        {
          (*v125)(v14, v30);
          sub_21DBF5AFC();
        }

        else
        {
          if (v33 != v113)
          {
            goto LABEL_45;
          }

          (*v125)(v14, v30);
          v34 = *v14;
          if ((*v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_42;
          }

          if (v34 >= *(*(v131 + 48) + 16))
          {
            goto LABEL_43;
          }

          v35 = v14[1];
          v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v114, v115);
          v37 = swift_dynamicCastClass();
          if (v37)
          {
            v38 = v37;
            swift_unknownObjectRetain();
            v111(v38, v35);
            swift_unknownObjectRelease();
            v30 = v116;
            v31 = v118;
          }

          else
          {
            v109 = v36;
            if (qword_27CE57648 != -1)
            {
              swift_once();
            }

            v39 = sub_21DBF84BC();
            __swift_project_value_buffer(v39, qword_27CE679A0);
            v40 = v131;

            v41 = sub_21DBF84AC();
            v42 = sub_21DBFAECC();

            v43 = v42;
            v44 = os_log_type_enabled(v41, v42);
            v31 = v118;
            if (v44)
            {
              v102 = v41;
              v45 = swift_slowAlloc();
              v46 = swift_slowAlloc();
              v133 = v46;
              *v45 = v101;
              v47 = *(v40 + 48);
              if (v34 >= *(v47 + 16))
              {
                goto LABEL_44;
              }

              v48 = v46;
              v49 = *(v47 + 16 * v34 + 40);
              v132[0] = swift_getObjectType();
              v132[1] = v49;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA98, &qword_21DC1D680);
              v50 = sub_21DBFA1AC();
              v52 = sub_21D0CDFB4(v50, v51, &v133);

              *(v45 + 4) = v52;
              *(v45 + 12) = 2080;
              v132[0] = v109;
              __swift_instantiateConcreteTypeFromMangledNameV2(v104, v100);
              v53 = sub_21DBFA1AC();
              v55 = sub_21D0CDFB4(v53, v54, &v133);
              v31 = v118;

              *(v45 + 14) = v55;
              v56 = v102;
              _os_log_impl(&dword_21D0C9000, v102, v43, "Failed to cast cell {given: %s, expect: %s}", v45, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D46520](v48, -1, -1);
              MEMORY[0x223D46520](v45, -1, -1);
            }

            else
            {
            }

            v30 = v116;
          }
        }

        ++v32;
        v27 = v124;
        if (v128 == v32)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_21:

      v57 = v131;
      swift_beginAccess();
      v134 = *(v57 + 48);
      v58 = v110;
      v59 = *(v110 + 16);
      v60 = v106;
      v59(v106, v117, v19);
      v59(v18, v60, v19);
      sub_21D5D2BE8(&qword_280D1B820, MEMORY[0x277CC9A28], MEMORY[0x277CC9A50]);
      sub_21DBF8E0C();
      sub_21DBFACAC();
      v61 = *(v58 + 8);
      v110 = v58 + 8;
      v127 = v61;
      v61(v60, v19);
      v62 = (v107 + 8);
      while (1)
      {
        v63 = v129;
        sub_21DBFAC3C();
        sub_21D5D2BE8(&qword_280D1B840, MEMORY[0x277CC9A08], MEMORY[0x277CC9A10]);
        v64 = v130;
        v65 = v19;
        v66 = sub_21DBFA10C();
        v67 = *v62;
        (*v62)(v63, v64);
        if (v66)
        {
          break;
        }

        sub_21D5D2BE8(&qword_27CE5EAA8, MEMORY[0x277CC9A28], MEMORY[0x277CC9A38]);
        sub_21DBFA03C();
        v68 = sub_21DBFAD3C();
        v70 = *v69;
        v68(v132, 0);
        v71 = sub_21DBCF01C(v70);
        TTRITableGroup.remove(_:)(v71);
        swift_unknownObjectRelease();
        v19 = v65;
      }

      sub_21D0CF7E0(v18, &qword_27CE5EA90, &qword_21DC42050);
      v72 = v123;
      sub_21DBF5A6C();
      v73 = *(v108 + 36);
      v74 = v129;
      sub_21DBFACAC();
      v75 = v130;
      v76 = sub_21DBFA10C();
      v67(v74, v75);
      if (v76)
      {
LABEL_37:
        sub_21D0CF7E0(v72, &qword_27CE5EA80, &qword_21DC0A040);
        v98 = v127;
        v127(v119, v65);
        v98(v117, v65);

        return;
      }

      v128 = v73;
      while (1)
      {
        v77 = sub_21DBFAD3C();
        v79 = *v78;
        v77(v132, 0);
        v80 = v65;
        sub_21DBFACBC();
        v81 = v121(v79);
        v83 = (v134 + 16);
        v82 = *(v134 + 16);
        if (v79 == v82)
        {
          if (v79)
          {
            v84 = &v83[2 * v79];
            v86 = *v84;
            v85 = v84[1];
            swift_unknownObjectRetain();
          }

          else
          {
            v86 = 0;
            v85 = 0;
          }

          v88 = v86;
          v89 = v85;
          v90 = 1;
        }

        else
        {
          if (v79 >= v82)
          {
            goto LABEL_41;
          }

          v87 = *(v134 + 16 * v79 + 40);
          v88 = swift_unknownObjectRetain();
          v89 = v87;
          v90 = 0;
        }

        v91 = v131;
        v92 = sub_21DBD05C4(v88, v89, v90);
        if ((v93 & 1) == 0)
        {
          sub_21D5D27B8(v81, v92, v91);
        }

        swift_unknownObjectRelease();
        if (*v83 < v79)
        {
          break;
        }

        sub_21DBD15D4(v79, v79, v81, &protocol witness table for TTRITableCell<A>, v94);

        v95 = v129;
        v72 = v123;
        v65 = v80;
        sub_21DBFACAC();
        v96 = v130;
        v97 = sub_21DBFA10C();
        v67(v95, v96);
        if (v97)
        {
          goto LABEL_37;
        }
      }
    }

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
    sub_21DBFC63C();
    __break(1u);
  }
}

void sub_21D5D0F1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8E8, &qword_21DC28C10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EAD0, &unk_21DC1D6B0);
  MEMORY[0x28223BE20](v5);
  v7 = &v29[-v6];
  sub_21D0D3954(a1, v4, &qword_27CE5E8E8, &qword_21DC28C10);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8F0, &qword_21DC1D4B0);
  if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
  {
    sub_21D0CF7E0(v4, &qword_27CE5E8E8, &qword_21DC28C10);
    v9 = *(sub_21D5CE6E8(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___titleCell, sub_21D5CE750) + 32);

    sub_21D943970();

    v10 = *(sub_21D5CE6E8(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___notesCell, sub_21D5CEF1C) + 32);

    v11 = *((*MEMORY[0x277D85000] & *v10) + 0x68);
    swift_beginAccess();
    v12 = *(v10 + v11);
    if (v12)
    {
      [*(v12 + qword_27CE63F48) resignFirstResponder];
    }

    goto LABEL_14;
  }

  v13 = v4[*(v8 + 48)];
  v14 = *(v5 + 48);
  sub_21D5D365C(v4, v7, type metadata accessor for TTRRemindersListViewModel.Item);
  v7[v14] = v13;
  v15 = v7[*(v5 + 48)];
  sub_21D5D3B6C(v7, type metadata accessor for TTRRemindersListViewModel.Item);
  if (!v15)
  {
    v10 = *(sub_21D5CE6E8(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___titleCell, sub_21D5CE750) + 32);

    v20 = *((*MEMORY[0x277D85000] & *v10) + 0x68);
    swift_beginAccess();
    v21 = *(v10 + v20);
    if (!v21)
    {
      goto LABEL_14;
    }

    v18 = *(v21 + qword_27CE63FE8);
    v19 = [v18 window];
    goto LABEL_10;
  }

  if (v15 == 1)
  {
    v10 = *(sub_21D5CE6E8(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___notesCell, sub_21D5CEF1C) + 32);

    v16 = *((*MEMORY[0x277D85000] & *v10) + 0x68);
    swift_beginAccess();
    v17 = *(v10 + v16);
    if (!v17)
    {
      goto LABEL_14;
    }

    v18 = *(v17 + qword_27CE63F48);
    v19 = [v18 window];
LABEL_10:
    v22 = v19;
    [v22 makeKeyWindow];

    [v18 becomeFirstResponder];
    v10 = v18;
    goto LABEL_14;
  }

  v10 = *(sub_21D5CE6E8(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___titleCell, sub_21D5CE750) + 32);

  v23 = *((*MEMORY[0x277D85000] & *v10) + 0x68);
  swift_beginAccess();
  v24 = *(v10 + v23);
  if (v24)
  {
    v25 = (v10 + qword_27CE8EBE8);
    swift_beginAccess();
    if (*v25)
    {
      v26 = v25[1];
      v27 = v24;
      swift_unknownObjectRetain();
      sub_21D943A3C(v27, 1);
      ObjectType = swift_getObjectType();
      (*(v26 + 168))(ObjectType, v26);

      swift_unknownObjectRelease();
    }
  }

LABEL_14:
}

id sub_21D5D143C()
{
  v1 = type metadata accessor for TTRIQuickEntryViewModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v5 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v7 = &v15[-v6];
  result = [v0 isViewLoaded];
  if (result)
  {
    v9 = *&v0[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_presenter];
    v10 = OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_viewModel;
    swift_beginAccess();
    v11 = sub_21D5D3A9C(v9 + v10, v7, type metadata accessor for TTRIQuickEntryViewModel);
    if (*&v0[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_tableDataController])
    {
      v16 = 1;
      MEMORY[0x28223BE20](v11);
      *&v15[-16] = v0;
      *&v15[-8] = v7;
      v13 = v12;
      TTRITableDataController.performBatchUpdates(by:updates:)(&v16, sub_21D5D1D30);
    }

    sub_21D5D3B6C(v7, type metadata accessor for TTRIQuickEntryViewModel);
    sub_21D5D3A9C(v9 + v10, v3, type metadata accessor for TTRIQuickEntryViewModel);
    v14 = *&v0[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_commitButton];
    if (v14)
    {
      [v14 setEnabled_];
    }

    return sub_21D5D3B6C(v3, type metadata accessor for TTRIQuickEntryViewModel);
  }

  return result;
}

void sub_21D5D1640()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v28[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v28[-v5];
  v7 = type metadata accessor for TTRIQuickEntryViewModel.URLState(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_configuration) == 1)
  {
    v10 = *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_viewModel;
    swift_beginAccess();
    v11 = type metadata accessor for TTRIQuickEntryViewModel(0);
    sub_21D5D3A9C(v10 + *(v11 + 76), v9, type metadata accessor for TTRIQuickEntryViewModel.URLState);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230, &unk_21DC1CEB0);
    if ((*(*(v12 - 8) + 48))(v9, 1, v12) == 1)
    {
      v13 = 0;
      v14 = 0xE000000000000000;
    }

    else
    {
      sub_21D57690C(v9, v6);
      sub_21D0D3954(v6, v3, &qword_27CE5EA20, &qword_21DC0D4A0);
      v15 = sub_21DBF54CC();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v3, 1, v15) == 1)
      {
        sub_21D0CF7E0(v3, &qword_27CE5EA20, &qword_21DC0D4A0);
        v13 = 0;
        v14 = 0xE000000000000000;
      }

      else
      {
        v13 = sub_21DBF535C();
        v14 = v17;
        (*(v16 + 8))(v3, v15);
      }

      sub_21D0CF7E0(v6, &qword_27CE5EA20, &qword_21DC0D4A0);
    }

    v18 = *(sub_21D5CE6E8(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___urlCell, sub_21D5CF448) + 32);

    v19 = v18 + *((*MEMORY[0x277D85000] & *v18) + 0x78);
    swift_beginAccess();
    v20 = *v19;
    v21 = *(v19 + 1);
    v22 = v19[16];
    v23 = v19[17];
    v25 = *(v19 + 3);
    v24 = *(v19 + 4);
    v26 = *(v19 + 5);
    sub_21D59B950(v20, v21, v22);
    v27 = v26;
    sub_21DBF8E0C();
    sub_21D5968AC(v20, v21, v22);
    v28[32] = 0;
    *&v29 = v13;
    *(&v29 + 1) = v14;
    v30 = 0;
    v31 = v23;
    v32 = v25;
    v33 = v24;
    v34 = v26;
    sub_21D5C6B34(&v29);
  }
}

uint64_t sub_21D5D19CC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_21D5D1C68()
{
  *(*(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_deferredUpdateContext) = *(*(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_deferredUpdateContext);
  v1._object = 0x800000021DC62230;
  v1._countAndFlagsBits = 0xD000000000000034;
  TTRDeferredAction.scheduleNextRunLoop(reason:)(v1);
}

void sub_21D5D1CC8()
{
  v0[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_needsTableCellResize] = 1;
  v1 = [v0 viewIfLoaded];
  [v1 setNeedsLayout];
}

void sub_21D5D1D38(uint64_t a1)
{
  v3 = type metadata accessor for TTRIReminderTitleCellContentState(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62240, &unk_21DC32120);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB20, &unk_21DC1D700);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = *MEMORY[0x277D85000] & *v1;
  if (*(v1 + *(v13 + 0x90)))
  {
    return;
  }

  v24 = v6;
  v14 = *(v13 + 120);
  swift_beginAccess();
  v15 = *(v10 + 48);
  v25 = a1;
  sub_21D0D3954(a1, v12, &qword_27CE62240, &unk_21DC32120);
  sub_21D0D3954(v1 + v14, &v12[v15], &qword_27CE62240, &unk_21DC32120);
  v16 = *(v4 + 48);
  if (v16(v12, 1, v3) == 1)
  {
    if (v16(&v12[v15], 1, v3) == 1)
    {
      sub_21D0CF7E0(v12, &qword_27CE62240, &unk_21DC32120);
      return;
    }
  }

  else
  {
    sub_21D0D3954(v12, v9, &qword_27CE62240, &unk_21DC32120);
    if (v16(&v12[v15], 1, v3) != 1)
    {
      v22 = v24;
      sub_21D5D365C(&v12[v15], v24, type metadata accessor for TTRIReminderTitleCellContentState);
      v23 = _s15RemindersUICore33TTRIReminderTitleCellContentStateV2eeoiySbAC_ACtFZ_0(v9, v22);
      sub_21D5D3B6C(v22, type metadata accessor for TTRIReminderTitleCellContentState);
      sub_21D5D3B6C(v9, type metadata accessor for TTRIReminderTitleCellContentState);
      sub_21D0CF7E0(v12, &qword_27CE62240, &unk_21DC32120);
      v17 = v25;
      v18 = MEMORY[0x277D85000];
      if (v23)
      {
        return;
      }

      goto LABEL_8;
    }

    sub_21D5D3B6C(v9, type metadata accessor for TTRIReminderTitleCellContentState);
  }

  sub_21D0CF7E0(v12, &unk_27CE5EB20, &unk_21DC1D700);
  v17 = v25;
  v18 = MEMORY[0x277D85000];
LABEL_8:
  v19 = v1 + *((*v18 & *v1) + 0x70);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(v19 + 1);
    ObjectType = swift_getObjectType();
    (*(v20 + 8))(ObjectType, v20);
    swift_unknownObjectRelease();
  }

  (*((*v18 & *v1) + 0xB0))(v17);
}

void sub_21D5D2158(uint64_t a1, __n128 a2)
{
  v4 = type metadata accessor for TTRIDatePickerCellContentState(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x277D85000];
  if ((*(v2 + *((*MEMORY[0x277D85000] & *v2) + 0x90)) & 1) == 0)
  {
    v8 = *((*MEMORY[0x277D85000] & *v2) + 0x78);
    swift_beginAccess();
    sub_21D5D3A9C(v2 + v8, v6, type metadata accessor for TTRIDatePickerCellContentState);
    if ((sub_21DBF55EC() & 1) != 0 && (MEMORY[0x223D3E3D0](a1 + v4[5], &v6[v4[5]]) & 1) != 0 && *(a1 + v4[6]) == *&v6[v4[6]])
    {
      v9 = v4[7];
      v10 = *(a1 + v9);
      v11 = *&v6[v9];
      sub_21D5D3B6C(v6, type metadata accessor for TTRIDatePickerCellContentState);
      if (v10 == v11)
      {
        return;
      }
    }

    else
    {
      sub_21D5D3B6C(v6, type metadata accessor for TTRIDatePickerCellContentState);
    }

    v12 = v2 + *((*v7 & *v2) + 0x70);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 1);
      ObjectType = swift_getObjectType();
      (*(v13 + 8))(ObjectType, v13);
      swift_unknownObjectRelease();
    }

    (*((*v7 & *v2) + 0xB0))(a1);
  }
}

void sub_21D5D2398(uint64_t a1)
{
  v3 = type metadata accessor for TTRIReminderNotesCellContentState(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E9D0, &unk_21DC1D5F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA38, &qword_21DC1D638);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = *MEMORY[0x277D85000] & *v1;
  if (*(v1 + *(v13 + 0x90)))
  {
    return;
  }

  v24 = v6;
  v14 = *(v13 + 120);
  swift_beginAccess();
  v15 = *(v10 + 48);
  v25 = a1;
  sub_21D0D3954(a1, v12, &qword_27CE5E9D0, &unk_21DC1D5F0);
  sub_21D0D3954(v1 + v14, &v12[v15], &qword_27CE5E9D0, &unk_21DC1D5F0);
  v16 = *(v4 + 48);
  if (v16(v12, 1, v3) == 1)
  {
    if (v16(&v12[v15], 1, v3) == 1)
    {
      sub_21D0CF7E0(v12, &qword_27CE5E9D0, &unk_21DC1D5F0);
      return;
    }
  }

  else
  {
    sub_21D0D3954(v12, v9, &qword_27CE5E9D0, &unk_21DC1D5F0);
    if (v16(&v12[v15], 1, v3) != 1)
    {
      v22 = v24;
      sub_21D5D365C(&v12[v15], v24, type metadata accessor for TTRIReminderNotesCellContentState);
      v23 = _s15RemindersUICore33TTRIReminderNotesCellContentStateV2eeoiySbAC_ACtFZ_0(v9, v22);
      sub_21D5D3B6C(v22, type metadata accessor for TTRIReminderNotesCellContentState);
      sub_21D5D3B6C(v9, type metadata accessor for TTRIReminderNotesCellContentState);
      sub_21D0CF7E0(v12, &qword_27CE5E9D0, &unk_21DC1D5F0);
      v17 = v25;
      v18 = MEMORY[0x277D85000];
      if (v23)
      {
        return;
      }

      goto LABEL_8;
    }

    sub_21D5D3B6C(v9, type metadata accessor for TTRIReminderNotesCellContentState);
  }

  sub_21D0CF7E0(v12, &qword_27CE5EA38, &qword_21DC1D638);
  v17 = v25;
  v18 = MEMORY[0x277D85000];
LABEL_8:
  v19 = v1 + *((*v18 & *v1) + 0x70);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(v19 + 1);
    ObjectType = swift_getObjectType();
    (*(v20 + 8))(ObjectType, v20);
    swift_unknownObjectRelease();
  }

  (*((*v18 & *v1) + 0xB0))(v17);
}

uint64_t sub_21D5D27B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (a2 < 0 || *(*(a3 + 48) + 16) < a2)
  {
    result = sub_21DBFC31C();
    __break(1u);
  }

  else
  {
    swift_beginAccess();

    sub_21DBD15D4(a2, a2, a1, &protocol witness table for TTRITableCell<A>, v6);
    swift_endAccess();

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = *(a3 + 40);
      ObjectType = swift_getObjectType();
      (*(v8 + 8))(a3, &protocol witness table for TTRITableGroup, a1, &protocol witness table for TTRITableCell<A>, ObjectType, v8);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_21D5D2BE8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21D5D2C94()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF516C();
  v2 = v1;
  v16[3] = &type metadata for TTRITablePlainTextContentConfigurationProvider;
  v16[0] = v0;
  v16[1] = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  v16[4] = sub_21D5395CC;
  v16[5] = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v2;
  v16[6] = sub_21D5395D4;
  v16[7] = v4;
  v16[8] = 0;
  v17 = 1;
  v9 = &type metadata for TTRITableEmptyContentConfigurationProvider;
  v10 = sub_21D539DD0;
  v11 = 0;
  v12 = sub_21D539DCC;
  v13 = 0;
  v14 = 0x4010000000000000;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30, &unk_21DC0CA60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21DC08D00;
  swift_bridgeObjectRetain_n();
  *(v5 + 32) = sub_21D5CE6E8(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___listCell, sub_21D5CFA48);
  *(v5 + 40) = &protocol witness table for TTRITableCell<A>;
  type metadata accessor for TTRITableSection();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 200) = 0;
  *(v6 + 208) = 0;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 89) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0u;
  *(v6 + 169) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 216) = 1;
  swift_beginAccess();
  sub_21D0F02F4(v16, v6 + 32, &qword_27CE5E690, &unk_21DC103B0);
  swift_endAccess();
  swift_beginAccess();
  sub_21D0F02F4(v8, v6 + 112, &qword_27CE5E690, &unk_21DC103B0);
  swift_endAccess();
  *(v6 + 192) = v5;
  return v6;
}

uint64_t sub_21D5D2F7C()
{
  v5 = &type metadata for TTRITableEmptyContentConfigurationProvider;
  v6 = sub_21D537CCC;
  v7 = 0;
  v8 = sub_21D537CD0;
  v9 = 0;
  v10 = 0x4010000000000000;
  v11 = 0;
  memset(v3, 0, 73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30, &unk_21DC0CA60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC08D00;
  *(v0 + 32) = sub_21D5CE6E8(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___detailsCell, sub_21D5CF744);
  *(v0 + 40) = &protocol witness table for TTRITableCell<A>;
  type metadata accessor for TTRITableSection();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 89) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 169) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 216) = 1;
  swift_beginAccess();
  sub_21D0F02F4(v4, v1 + 32, &qword_27CE5E690, &unk_21DC103B0);
  swift_endAccess();
  swift_beginAccess();
  sub_21D0F02F4(v3, v1 + 112, &qword_27CE5E690, &unk_21DC103B0);
  swift_endAccess();
  *(v1 + 192) = v0;
  return v1;
}

void sub_21D5D3140()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewDidAppear_, 1);
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_firstViewDidAppearCalled);
  *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_firstViewDidAppearCalled) = 1;
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = v2 ^ 1;
    v6 = UIView.firstResponderDescendant.getter();

    if (v6)
    {
    }

    else
    {
      [v1 becomeFirstResponder];
    }

    sub_21D5BCAC0(v5 & 1);
    if (*(v1 + OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_startsEditingTitleOnAppearance) == 1)
    {
      *(v1 + OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_startsEditingTitleOnAppearance) = 0;
      v7 = *(sub_21D5CE6E8(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController____lazy_storage___titleCell, sub_21D5CE750) + 32);

      v8 = *((*MEMORY[0x277D85000] & *v7) + 0x68);
      swift_beginAccess();
      v9 = *(v7 + v8);
      if (v9)
      {
        v10 = *(v9 + qword_27CE63FE8);
        v11 = [v10 window];
        [v11 makeKeyWindow];

        [v10 becomeFirstResponder];
        v7 = v10;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D5D32F8()
{
  v1 = sub_21DBF5D5C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = &v23 - v7;
  v9 = [v0 viewIfLoaded];
  if (v9)
  {
    v10 = v9;
    v11 = UIView.firstResponderDescendant.getter();

    if (v11)
    {
      v24 = v11;
      v12 = [v24 superview];

      if (v12)
      {
        while (1)
        {
          objc_opt_self();
          v13 = swift_dynamicCastObjCClass();
          if (v13)
          {
            break;
          }

          v14 = v12;
          v12 = [v14 superview];

          if (!v12)
          {
            goto LABEL_13;
          }
        }

        v15 = v13;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
          __break(1u);
          goto LABEL_17;
        }

        v17 = Strong;
        v18 = [Strong indexPathForCell_];

        if (v18)
        {
          sub_21DBF5CAC();

          (*(v2 + 32))(v8, v4, v1);
          v19 = swift_unknownObjectWeakLoadStrong();
          if (v19)
          {
            v20 = v19;
            v21 = sub_21DBF5C6C();
            [v20 scrollToRowAtIndexPath:v21 atScrollPosition:0 animated:1];

            (*(v2 + 8))(v8, v1);
            return;
          }

LABEL_17:
          __break(1u);
          return;
        }
      }

LABEL_13:
      v22 = v24;
    }
  }
}

uint64_t sub_21D5D365C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21D5D36C4(uint64_t a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = *(v3 + OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_presenter);
  if (!*(v9 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_completionState))
  {
    if (qword_27CE56A70 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE5E820);
    v11 = sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEACDC("Quick Entry cancel", 18, 2, v11);

    v12 = sub_21DBFA89C();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    sub_21DBFA84C();
    swift_unknownObjectRetain();
    v13 = sub_21DBFA83C();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    *(v14 + 16) = v13;
    *(v14 + 24) = v15;
    *(v14 + 32) = v9;
    *(v14 + 40) = a2;
    sub_21D1B5178(0, 0, v8, a3, v14);
  }
}

uint64_t sub_21D5D3884(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D0F00D0;

  return sub_21D5BEDB0(a1, v4, v5, v6, v7);
}

uint64_t sub_21D5D3948(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D1B795C;

  return sub_21D5BEDB0(a1, v4, v5, v6, v7);
}

unint64_t sub_21D5D3A1C()
{
  result = qword_280D0C300;
  if (!qword_280D0C300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D0C300);
  }

  return result;
}

uint64_t sub_21D5D3A68(uint64_t a1)
{
  swift_unknownObjectRelease();

  return a1;
}

uint64_t sub_21D5D3A9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D5D3B04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D5D3B6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void destroy for TTRIQuickEntryViewController.Argument(void *a1)
{
  swift_unknownObjectRelease();
  v2 = a1[2];
}

uint64_t initializeWithCopy for TTRIQuickEntryViewController.Argument(uint64_t a1, __int128 *a2)
{
  *a1 = *a2;
  v3 = *(a2 + 2);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  swift_unknownObjectRetain();
  v4 = v3;
  return a1;
}

uint64_t *assignWithCopy for TTRIQuickEntryViewController.Argument(uint64_t *a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = v4;
  v5 = a2[2];
  v6 = a1[2];
  a1[2] = v5;
  v7 = v5;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 27) = *(a2 + 27);
  v8 = a2[4];
  *(a1 + 40) = *(a2 + 40);
  a1[4] = v8;
  a1[6] = a2[6];
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for TTRIQuickEntryViewController.Argument(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  *a1 = *a2;
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 27) = *(a2 + 27);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIQuickEntryViewController.Argument(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for TTRIQuickEntryViewController.Argument(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TTRAccountsListsViewModel.Item.sectionCasesOnly.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D5D4014(v2, v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_21D5D4418(v6, a1, type metadata accessor for TTRAccountsListsViewModel.PinnedListsSection);
      break;
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 9u:
    case 0xBu:
    case 0xDu:
    case 0xEu:
      sub_21D101330(v6, type metadata accessor for TTRAccountsListsViewModel.Item);
      break;
    case 8u:
      sub_21D5D4418(v6, a1, type metadata accessor for TTRAccountsListsViewModel.PermissionsSection);
      break;
    case 0xAu:
      sub_21D5D4418(v6, a1, type metadata accessor for TTRAccountsListsViewModel.TipSection);
      break;
    case 0xCu:
      sub_21D5D4418(v6, a1, type metadata accessor for TTRAccountsListsViewModel.HashtagsSection);
      break;
    case 0xFu:
    case 0x10u:
      break;
    default:
      v8 = sub_21DBF56BC();
      (*(*(v8 - 8) + 8))(v6, v8);
      break;
  }

  type metadata accessor for TTRAccountsListsViewModel.Item.SectionCasesInItem(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21D5D4014(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TTRAccountsListsViewModel.Item.sectionDescendantCasesOnly.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D5D4014(v2, v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 8u:
    case 0xAu:
    case 0xCu:
      sub_21D101330(v6, type metadata accessor for TTRAccountsListsViewModel.Item);
      goto LABEL_3;
    case 2u:
      sub_21D5D4418(v6, a1, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
      type metadata accessor for TTRAccountsListsViewModel.Item.SectionDescendantCasesInItem(0);
      return swift_storeEnumTagMultiPayload();
    case 3u:
      sub_21D5D4418(v6, a1, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      type metadata accessor for TTRAccountsListsViewModel.Item.SectionDescendantCasesInItem(0);
      return swift_storeEnumTagMultiPayload();
    case 4u:
      v22 = *(v6 + 1);
      *a1 = *v6;
      *(a1 + 16) = v22;
      type metadata accessor for TTRAccountsListsViewModel.Item.SectionDescendantCasesInItem(0);
      return swift_storeEnumTagMultiPayload();
    case 5u:
    case 6u:
      v12 = *(v6 + 11);
      *(a1 + 160) = *(v6 + 10);
      *(a1 + 176) = v12;
      *(a1 + 192) = *(v6 + 12);
      *(a1 + 202) = *(v6 + 202);
      v13 = *(v6 + 7);
      *(a1 + 96) = *(v6 + 6);
      *(a1 + 112) = v13;
      v14 = *(v6 + 9);
      *(a1 + 128) = *(v6 + 8);
      *(a1 + 144) = v14;
      v15 = *(v6 + 3);
      *(a1 + 32) = *(v6 + 2);
      *(a1 + 48) = v15;
      v16 = *(v6 + 5);
      *(a1 + 64) = *(v6 + 4);
      *(a1 + 80) = v16;
      v17 = *(v6 + 1);
      *a1 = *v6;
      *(a1 + 16) = v17;
      type metadata accessor for TTRAccountsListsViewModel.Item.SectionDescendantCasesInItem(0);
      return swift_storeEnumTagMultiPayload();
    case 7u:
      v8 = *(v6 + 1);
      *a1 = *v6;
      *(a1 + 16) = v8;
      v9 = *(v6 + 3);
      *(a1 + 32) = *(v6 + 2);
      *(a1 + 48) = v9;
      type metadata accessor for TTRAccountsListsViewModel.Item.SectionDescendantCasesInItem(0);
      return swift_storeEnumTagMultiPayload();
    case 9u:
      v10 = *(v6 + 3);
      *(a1 + 32) = *(v6 + 2);
      *(a1 + 48) = v10;
      *(a1 + 64) = *(v6 + 4);
      *(a1 + 73) = *(v6 + 73);
      v11 = *(v6 + 1);
      *a1 = *v6;
      *(a1 + 16) = v11;
      type metadata accessor for TTRAccountsListsViewModel.Item.SectionDescendantCasesInItem(0);
      return swift_storeEnumTagMultiPayload();
    case 0xBu:
      v21 = *(v6 + 1);
      *a1 = *v6;
      *(a1 + 8) = v21;
      type metadata accessor for TTRAccountsListsViewModel.Item.SectionDescendantCasesInItem(0);
      return swift_storeEnumTagMultiPayload();
    case 0xDu:
      sub_21D5D4418(v6, a1, type metadata accessor for TTRAccountsListsViewModel.Hashtags);
      type metadata accessor for TTRAccountsListsViewModel.Item.SectionDescendantCasesInItem(0);
      return swift_storeEnumTagMultiPayload();
    case 0xEu:
      v19 = *(v6 + 2);
      v20 = *(v6 + 3);
      *a1 = *v6;
      *(a1 + 16) = v19;
      *(a1 + 24) = v20;
      type metadata accessor for TTRAccountsListsViewModel.Item.SectionDescendantCasesInItem(0);
      return swift_storeEnumTagMultiPayload();
    case 0xFu:
    case 0x10u:
      goto LABEL_3;
    default:
      v18 = sub_21DBF56BC();
      (*(*(v18 - 8) + 8))(v6, v18);
LABEL_3:
      type metadata accessor for TTRAccountsListsViewModel.Item.SectionDescendantCasesInItem(0);
      return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_21D5D4418(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

char *_s18SectionCasesInItemOwCP(char *a1, void *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v4 + 16) & ~v4));

    return a1;
  }

  v5 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      goto LABEL_4;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v10 = sub_21DBF56BC();
      v11 = *(*(v10 - 8) + 16);
      v12 = a2;
      v11(a1, a2, v10);
      v13 = *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
      v14 = &a1[v13];
      v15 = v12 + v13;
      v16 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v15, 1, v16))
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70, &unk_21DC364C0);
        memcpy(v14, v15, *(*(v18 - 8) + 64));
      }

      else
      {
        v11(v14, v15, v10);
        *&v14[*(v16 + 20)] = *&v15[*(v16 + 20)];
        v14[*(v16 + 24)] = v15[*(v16 + 24)];
        v21 = *(v17 + 56);
        sub_21DBF8E0C();
        v21(v14, 0, 1, v16);
      }

      goto LABEL_15;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
LABEL_4:
    v8 = sub_21DBF56BC();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_15:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v19 = *(v5 + 64);

  return memcpy(a1, a2, v19);
}

double _s18SectionCasesInItemOwxx(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 2)
  {
LABEL_8:
    v9 = sub_21DBF56BC();
    v10 = *(*(v9 - 8) + 8);

    v10(a1, v9);
    return result;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v5 = sub_21DBF56BC();
    v6 = *(*(v5 - 8) + 8);
    v6(a1, v5);
    v7 = a1 + *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
    v8 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
    if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
    {
      v6(v7, v5);
    }
  }

  return result;
}

char *_s18SectionCasesInItemOwcp(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      goto LABEL_3;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v8 = sub_21DBF56BC();
      v9 = *(*(v8 - 8) + 16);
      v9(a1, a2, v8);
      v10 = *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
      v11 = &a1[v10];
      v12 = &a2[v10];
      v13 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v12, 1, v13))
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70, &unk_21DC364C0);
        memcpy(v11, v12, *(*(v15 - 8) + 64));
      }

      else
      {
        v9(v11, v12, v8);
        *&v11[*(v13 + 20)] = *&v12[*(v13 + 20)];
        v11[*(v13 + 24)] = v12[*(v13 + 24)];
        v18 = *(v14 + 56);
        sub_21DBF8E0C();
        v18(v11, 0, 1, v13);
      }

      goto LABEL_13;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
LABEL_3:
    v7 = sub_21DBF56BC();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_13:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v16 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v16);
}

char *_s18SectionCasesInItemOwca(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D101330(a1, type metadata accessor for TTRAccountsListsViewModel.Item.SectionCasesInItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      goto LABEL_4;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v8 = sub_21DBF56BC();
      v9 = *(*(v8 - 8) + 16);
      v9(a1, a2, v8);
      v10 = *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
      v11 = &a1[v10];
      v12 = &a2[v10];
      v13 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v12, 1, v13))
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70, &unk_21DC364C0);
        memcpy(v11, v12, *(*(v15 - 8) + 64));
      }

      else
      {
        v9(v11, v12, v8);
        *&v11[*(v13 + 20)] = *&v12[*(v13 + 20)];
        v11[*(v13 + 24)] = v12[*(v13 + 24)];
        v18 = *(v14 + 56);
        sub_21DBF8E0C();
        v18(v11, 0, 1, v13);
      }

      goto LABEL_14;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
LABEL_4:
    v7 = sub_21DBF56BC();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_14:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v16 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v16);
}

char *_s18SectionCasesInItemOwtk(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      goto LABEL_3;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v8 = sub_21DBF56BC();
      v9 = *(*(v8 - 8) + 32);
      v9(a1, a2, v8);
      v10 = *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
      v11 = &a1[v10];
      v12 = &a2[v10];
      v13 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v12, 1, v13))
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70, &unk_21DC364C0);
        memcpy(v11, v12, *(*(v15 - 8) + 64));
      }

      else
      {
        v9(v11, v12, v8);
        *&v11[*(v13 + 20)] = *&v12[*(v13 + 20)];
        v11[*(v13 + 24)] = v12[*(v13 + 24)];
        (*(v14 + 56))(v11, 0, 1, v13);
      }

      goto LABEL_13;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
LABEL_3:
    v7 = sub_21DBF56BC();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_13:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v16 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v16);
}

char *_s18SectionCasesInItemOwta(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D101330(a1, type metadata accessor for TTRAccountsListsViewModel.Item.SectionCasesInItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      goto LABEL_4;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v8 = sub_21DBF56BC();
      v9 = *(*(v8 - 8) + 32);
      v9(a1, a2, v8);
      v10 = *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
      v11 = &a1[v10];
      v12 = &a2[v10];
      v13 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v12, 1, v13))
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70, &unk_21DC364C0);
        memcpy(v11, v12, *(*(v15 - 8) + 64));
      }

      else
      {
        v9(v11, v12, v8);
        *&v11[*(v13 + 20)] = *&v12[*(v13 + 20)];
        v11[*(v13 + 24)] = v12[*(v13 + 24)];
        (*(v14 + 56))(v11, 0, 1, v13);
      }

      goto LABEL_14;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
LABEL_4:
    v7 = sub_21DBF56BC();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_14:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v16 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v16);
}

uint64_t sub_21D5D5538(uint64_t a1)
{
  result = sub_21DBF56BC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(319);
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

char *_s28SectionDescendantCasesInItemOwCP(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v23 = *a2;
    *a1 = *a2;
    a1 = (v23 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v50 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v50;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 4) = *(a2 + 4);
        a1[40] = a2[40];
        v52 = *(a2 + 6);
        v51 = *(a2 + 7);
        *(a1 + 6) = v52;
        *(a1 + 7) = v51;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v53 = v52;
      }

      else
      {
        v39 = *a2;
        v40 = *(a2 + 1);
        v41 = *(a2 + 2);
        v42 = *(a2 + 3);
        v43 = *(a2 + 4);
        v44 = *(a2 + 5);
        v45 = *(a2 + 6);
        v62 = *(a2 + 8);
        v64 = *(a2 + 9);
        v66 = *(a2 + 10);
        v68 = a2[88];
        v46 = *a2;
        v47 = *(a2 + 7);
        sub_21D5D5C84(v46, v40, v41, v42, v43, v44, v45, v47, v62, v64, v66, v68);
        *a1 = v39;
        *(a1 + 1) = v40;
        *(a1 + 2) = v41;
        *(a1 + 3) = v42;
        *(a1 + 4) = v43;
        *(a1 + 5) = v44;
        *(a1 + 6) = v45;
        *(a1 + 7) = v47;
        *(a1 + 8) = v62;
        *(a1 + 9) = v64;
        *(a1 + 10) = v66;
        a1[88] = v68;
      }

      goto LABEL_22;
    }

    switch(EnumCaseMultiPayload)
    {
      case 7:
        v57 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v57;
        sub_21DBF8E0C();
        goto LABEL_22;
      case 8:
        v58 = sub_21DBF56BC();
        (*(*(v58 - 8) + 16))(a1, a2, v58);
        v59 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
        *&a1[*(v59 + 20)] = *&a2[*(v59 + 20)];
        a1[*(v59 + 24)] = a2[*(v59 + 24)];
        sub_21DBF8E0C();
        goto LABEL_22;
      case 9:
        v24 = *a2;
        v25 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v25;
        v26 = *(a2 + 3);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v26;
        v27 = v24;
        sub_21DBF8E0C();
LABEL_22:
        swift_storeEnumTagMultiPayload();
        return a1;
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v54 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v54;
        v55 = *(a2 + 2);
        *(a1 + 2) = v55;
        a1[24] = a2[24];
        a1[25] = a2[25];
        *(a1 + 26) = *(a2 + 26);
        *(a1 + 15) = *(a2 + 15);
        sub_21DBF8E0C();
        v56 = v55;
      }

      else
      {
        v8 = *a2;
        v9 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v9;
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 24) = *(a2 + 24);
        v10 = *(a2 + 6);
        *(a1 + 5) = *(a2 + 5);
        *(a1 + 6) = v10;
        v11 = *(a2 + 8);
        *(a1 + 7) = *(a2 + 7);
        *(a1 + 8) = v11;
        v12 = *(a2 + 9);
        v13 = *(a2 + 10);
        v14 = *(a2 + 11);
        v15 = *(a2 + 12);
        v65 = *(a2 + 14);
        v67 = *(a2 + 13);
        v63 = a2[120];
        v16 = v8;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D0FB960(v12, v13, v14, v15, v67, v65, v63);
        *(a1 + 9) = v12;
        *(a1 + 10) = v13;
        *(a1 + 11) = v14;
        *(a1 + 12) = v15;
        *(a1 + 13) = v67;
        *(a1 + 14) = v65;
        a1[120] = v63;
        v17 = *(a2 + 16);
        v18 = *(a2 + 17);
        LOBYTE(v11) = a2[144];
        sub_21D0FB9BC(v17, v18, v11);
        *(a1 + 16) = v17;
        *(a1 + 17) = v18;
        a1[144] = v11;
        *(a1 + 145) = *(a2 + 145);
        *(a1 + 152) = *(a2 + 152);
        v19 = *(a2 + 22);
        *(a1 + 21) = *(a2 + 21);
        *(a1 + 22) = v19;
        v20 = *(a2 + 24);
        *(a1 + 23) = *(a2 + 23);
        *(a1 + 24) = v20;
        v21 = *(a2 + 26);
        *(a1 + 25) = *(a2 + 25);
        *(a1 + 26) = v21;
        *(a1 + 108) = *(a2 + 108);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v22 = v20;
        sub_21DBF8E0C();
      }

      goto LABEL_22;
    }

    if (!EnumCaseMultiPayload)
    {
      v48 = sub_21DBF56BC();
      (*(*(v48 - 8) + 16))(a1, a2, v48);
      v49 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
      *&a1[*(v49 + 20)] = *&a2[*(v49 + 20)];
      a1[*(v49 + 24)] = a2[*(v49 + 24)];
      sub_21DBF8E0C();
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v28 = sub_21DBF56BC();
      (*(*(v28 - 8) + 16))(a1, a2, v28);
      v29 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      a1[v29[5]] = a2[v29[5]];
      *&a1[v29[6]] = *&a2[v29[6]];
      v30 = v29[7];
      v31 = &a1[v30];
      v32 = &a2[v30];
      v34 = *v32;
      v33 = *(v32 + 1);
      *v31 = v34;
      *(v31 + 1) = v33;
      *&a1[v29[8]] = *&a2[v29[8]];
      a1[v29[9]] = a2[v29[9]];
      v35 = v29[10];
      v36 = &a1[v35];
      v37 = &a2[v35];
      v38 = *(v37 + 1);
      *v36 = *v37;
      *(v36 + 1) = v38;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      goto LABEL_22;
    }
  }

  v61 = *(v6 + 64);

  return memcpy(a1, a2, v61);
}

void sub_21D5D5C84(void *result, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, unint64_t a6, void *a7, uint64_t a8, uint64_t a9, unint64_t a10, void *a11, char a12)
{
  if (a12 == 2)
  {
    sub_21DBF8E0C();
    v19 = result;
    sub_21DBF8E0C();
    sub_21D5D5D9C(a6, a7);

    sub_21D5D5DC4(a8, a9, a10, a11);
  }

  else
  {
    if (a12 == 1)
    {
      a7 = a4;
      sub_21DBF8E0C();
      v17 = a3;
    }

    else
    {
      if (a12)
      {
        return;
      }

      sub_21DBF8E0C();
      v16 = result;
      sub_21DBF8E0C();
      v17 = a6;
    }

    sub_21D5D5D9C(v17, a7);
  }
}

unint64_t sub_21D5D5D9C(unint64_t result, void *a2)
{
  if (result >> 3 != 0xFFFFFFFF)
  {
    return sub_21D5D5DB0(result, a2);
  }

  return result;
}

unint64_t sub_21D5D5DB0(unint64_t result, void *a2)
{
  if (result >> 61 == 3)
  {
    return a2;
  }

  return result;
}

void sub_21D5D5DC4(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    sub_21DBF8E0C();

    sub_21D5D5D9C(a3, a4);
  }
}

double _s28SectionDescendantCasesInItemOwxx(void *a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload == 8)
        {
          v8 = sub_21DBF56BC();
          (*(*(v8 - 8) + 8))(a1, v8);
          type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
        }

        else
        {
          if (EnumCaseMultiPayload != 9)
          {
            return result;
          }
        }
      }

      goto LABEL_24;
    }

    if (EnumCaseMultiPayload != 5)
    {
      sub_21D5D60A0(*a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[10], *(a1 + 88));
      return result;
    }

    v7 = a1[6];
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          return result;
        }

        v5 = sub_21DBF56BC();
        (*(*(v5 - 8) + 8))(a1, v5);
        type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      }

      else
      {
        v6 = sub_21DBF56BC();
        (*(*(v6 - 8) + 8))(a1, v6);
        type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
      }

      goto LABEL_24;
    }

    if (EnumCaseMultiPayload != 2)
    {

      sub_21D1078C0(a1[9], a1[10], a1[11], a1[12], a1[13], a1[14], *(a1 + 120));
      sub_21D0FB9F4(a1[16], a1[17], *(a1 + 144));

LABEL_24:

      return result;
    }

    v7 = a1[2];
  }

  return result;
}

void sub_21D5D60A0(void *result, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, unint64_t a6, void *a7, uint64_t a8, uint64_t a9, unint64_t a10, void *a11, char a12)
{
  if (a12 == 2)
  {

    sub_21D5D61C0(a6, a7);

    sub_21D5D61E8(a8, a9, a10, a11);
  }

  else
  {
    if (a12 == 1)
    {

      v15 = a3;
      v16 = a4;
    }

    else
    {
      if (a12)
      {
        return;
      }

      v15 = a6;
      v16 = a7;
    }

    sub_21D5D61C0(v15, v16);
  }
}

void sub_21D5D61C0(unint64_t result, void *a2)
{
  if (result >> 3 != 0xFFFFFFFF)
  {
    sub_21D5D61D4(result, a2);
  }
}

void sub_21D5D61D4(unint64_t a1, void *a2)
{
  if (a1 >> 61 == 3)
  {
  }
}

void sub_21D5D61E8(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a2)
  {

    sub_21D5D61C0(a3, a4);
  }
}

char *_s28SectionDescendantCasesInItemOwcp(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v48 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v48;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 4) = *(a2 + 4);
        a1[40] = a2[40];
        v50 = *(a2 + 6);
        v49 = *(a2 + 7);
        *(a1 + 6) = v50;
        *(a1 + 7) = v49;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v51 = v50;
      }

      else
      {
        v37 = *a2;
        v38 = *(a2 + 1);
        v39 = *(a2 + 2);
        v40 = *(a2 + 3);
        v41 = *(a2 + 4);
        v42 = *(a2 + 5);
        v43 = *(a2 + 6);
        v60 = *(a2 + 8);
        v62 = *(a2 + 9);
        v64 = *(a2 + 10);
        v66 = a2[88];
        v44 = *a2;
        v45 = *(a2 + 7);
        sub_21D5D5C84(v44, v38, v39, v40, v41, v42, v43, v45, v60, v62, v64, v66);
        *a1 = v37;
        *(a1 + 1) = v38;
        *(a1 + 2) = v39;
        *(a1 + 3) = v40;
        *(a1 + 4) = v41;
        *(a1 + 5) = v42;
        *(a1 + 6) = v43;
        *(a1 + 7) = v45;
        *(a1 + 8) = v60;
        *(a1 + 9) = v62;
        *(a1 + 10) = v64;
        a1[88] = v66;
      }

      goto LABEL_20;
    }

    switch(EnumCaseMultiPayload)
    {
      case 7:
        v55 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v55;
        sub_21DBF8E0C();
        goto LABEL_20;
      case 8:
        v56 = sub_21DBF56BC();
        (*(*(v56 - 8) + 16))(a1, a2, v56);
        v57 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
        *&a1[*(v57 + 20)] = *&a2[*(v57 + 20)];
        a1[*(v57 + 24)] = a2[*(v57 + 24)];
        sub_21DBF8E0C();
        goto LABEL_20;
      case 9:
        v22 = *a2;
        v23 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v23;
        v24 = *(a2 + 3);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v24;
        v25 = v22;
        sub_21DBF8E0C();
LABEL_20:
        swift_storeEnumTagMultiPayload();
        return a1;
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v52 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v52;
        v53 = *(a2 + 2);
        *(a1 + 2) = v53;
        a1[24] = a2[24];
        a1[25] = a2[25];
        *(a1 + 26) = *(a2 + 26);
        *(a1 + 15) = *(a2 + 15);
        sub_21DBF8E0C();
        v54 = v53;
      }

      else
      {
        v7 = *a2;
        v8 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v8;
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 24) = *(a2 + 24);
        v9 = *(a2 + 6);
        *(a1 + 5) = *(a2 + 5);
        *(a1 + 6) = v9;
        v10 = *(a2 + 8);
        *(a1 + 7) = *(a2 + 7);
        *(a1 + 8) = v10;
        v11 = *(a2 + 9);
        v12 = *(a2 + 10);
        v13 = *(a2 + 11);
        v14 = *(a2 + 12);
        v63 = *(a2 + 14);
        v65 = *(a2 + 13);
        v61 = a2[120];
        v15 = v7;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D0FB960(v11, v12, v13, v14, v65, v63, v61);
        *(a1 + 9) = v11;
        *(a1 + 10) = v12;
        *(a1 + 11) = v13;
        *(a1 + 12) = v14;
        *(a1 + 13) = v65;
        *(a1 + 14) = v63;
        a1[120] = v61;
        v16 = *(a2 + 16);
        v17 = *(a2 + 17);
        LOBYTE(v10) = a2[144];
        sub_21D0FB9BC(v16, v17, v10);
        *(a1 + 16) = v16;
        *(a1 + 17) = v17;
        a1[144] = v10;
        *(a1 + 145) = *(a2 + 145);
        *(a1 + 152) = *(a2 + 152);
        v18 = *(a2 + 22);
        *(a1 + 21) = *(a2 + 21);
        *(a1 + 22) = v18;
        v19 = *(a2 + 24);
        *(a1 + 23) = *(a2 + 23);
        *(a1 + 24) = v19;
        v20 = *(a2 + 26);
        *(a1 + 25) = *(a2 + 25);
        *(a1 + 26) = v20;
        *(a1 + 108) = *(a2 + 108);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v21 = v19;
        sub_21DBF8E0C();
      }

      goto LABEL_20;
    }

    if (!EnumCaseMultiPayload)
    {
      v46 = sub_21DBF56BC();
      (*(*(v46 - 8) + 16))(a1, a2, v46);
      v47 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
      *&a1[*(v47 + 20)] = *&a2[*(v47 + 20)];
      a1[*(v47 + 24)] = a2[*(v47 + 24)];
      sub_21DBF8E0C();
      goto LABEL_20;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v26 = sub_21DBF56BC();
      (*(*(v26 - 8) + 16))(a1, a2, v26);
      v27 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      a1[v27[5]] = a2[v27[5]];
      *&a1[v27[6]] = *&a2[v27[6]];
      v28 = v27[7];
      v29 = &a1[v28];
      v30 = &a2[v28];
      v32 = *v30;
      v31 = *(v30 + 1);
      *v29 = v32;
      *(v29 + 1) = v31;
      *&a1[v27[8]] = *&a2[v27[8]];
      a1[v27[9]] = a2[v27[9]];
      v33 = v27[10];
      v34 = &a1[v33];
      v35 = &a2[v33];
      v36 = *(v35 + 1);
      *v34 = *v35;
      *(v34 + 1) = v36;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      goto LABEL_20;
    }
  }

  v59 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v59);
}

char *_s28SectionDescendantCasesInItemOwca(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D101330(a1, type metadata accessor for TTRAccountsListsViewModel.Item.SectionDescendantCasesInItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        *(a1 + 4) = *(a2 + 4);
        a1[40] = a2[40];
        v39 = *(a2 + 6);
        *(a1 + 6) = v39;
        *(a1 + 7) = *(a2 + 7);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v40 = v39;
      }

      else
      {
        v28 = *a2;
        v29 = *(a2 + 1);
        v30 = *(a2 + 2);
        v31 = *(a2 + 3);
        v32 = *(a2 + 4);
        v33 = *(a2 + 5);
        v34 = *(a2 + 6);
        v47 = *(a2 + 8);
        v49 = *(a2 + 9);
        v51 = *(a2 + 10);
        v53 = a2[88];
        v35 = *a2;
        v36 = *(a2 + 7);
        sub_21D5D5C84(v35, v29, v30, v31, v32, v33, v34, v36, v47, v49, v51, v53);
        *a1 = v28;
        *(a1 + 1) = v29;
        *(a1 + 2) = v30;
        *(a1 + 3) = v31;
        *(a1 + 4) = v32;
        *(a1 + 5) = v33;
        *(a1 + 6) = v34;
        *(a1 + 7) = v36;
        *(a1 + 8) = v47;
        *(a1 + 9) = v49;
        *(a1 + 10) = v51;
        a1[88] = v53;
      }

      goto LABEL_21;
    }

    switch(EnumCaseMultiPayload)
    {
      case 7:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        sub_21DBF8E0C();
        goto LABEL_21;
      case 8:
        v43 = sub_21DBF56BC();
        (*(*(v43 - 8) + 16))(a1, a2, v43);
        v44 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
        *&a1[*(v44 + 20)] = *&a2[*(v44 + 20)];
        a1[*(v44 + 24)] = a2[*(v44 + 24)];
        sub_21DBF8E0C();
        goto LABEL_21;
      case 9:
        v18 = *a2;
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        v19 = v18;
        sub_21DBF8E0C();
LABEL_21:
        swift_storeEnumTagMultiPayload();
        return a1;
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        v41 = *(a2 + 2);
        *(a1 + 2) = v41;
        a1[24] = a2[24];
        a1[25] = a2[25];
        a1[26] = a2[26];
        a1[27] = a2[27];
        a1[28] = a2[28];
        a1[29] = a2[29];
        a1[30] = a2[30];
        a1[31] = a2[31];
        sub_21DBF8E0C();
        v42 = v41;
      }

      else
      {
        v7 = *a2;
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 5) = *(a2 + 5);
        *(a1 + 6) = *(a2 + 6);
        *(a1 + 7) = *(a2 + 7);
        *(a1 + 8) = *(a2 + 8);
        v8 = *(a2 + 9);
        v9 = *(a2 + 10);
        v10 = *(a2 + 11);
        v11 = *(a2 + 12);
        v50 = *(a2 + 14);
        v52 = *(a2 + 13);
        v48 = a2[120];
        v12 = v7;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D0FB960(v8, v9, v10, v11, v52, v50, v48);
        *(a1 + 9) = v8;
        *(a1 + 10) = v9;
        *(a1 + 11) = v10;
        *(a1 + 12) = v11;
        *(a1 + 13) = v52;
        *(a1 + 14) = v50;
        a1[120] = v48;
        v13 = *(a2 + 16);
        v14 = *(a2 + 17);
        v15 = a2[144];
        sub_21D0FB9BC(v13, v14, v15);
        *(a1 + 16) = v13;
        *(a1 + 17) = v14;
        a1[144] = v15;
        a1[145] = a2[145];
        a1[146] = a2[146];
        a1[147] = a2[147];
        a1[148] = a2[148];
        *(a1 + 19) = *(a2 + 19);
        *(a1 + 20) = *(a2 + 20);
        *(a1 + 21) = *(a2 + 21);
        *(a1 + 22) = *(a2 + 22);
        *(a1 + 23) = *(a2 + 23);
        v16 = *(a2 + 24);
        *(a1 + 24) = v16;
        *(a1 + 25) = *(a2 + 25);
        *(a1 + 26) = *(a2 + 26);
        a1[216] = a2[216];
        a1[217] = a2[217];
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v17 = v16;
        sub_21DBF8E0C();
      }

      goto LABEL_21;
    }

    if (!EnumCaseMultiPayload)
    {
      v37 = sub_21DBF56BC();
      (*(*(v37 - 8) + 16))(a1, a2, v37);
      v38 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
      *&a1[*(v38 + 20)] = *&a2[*(v38 + 20)];
      a1[*(v38 + 24)] = a2[*(v38 + 24)];
      sub_21DBF8E0C();
      goto LABEL_21;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v20 = sub_21DBF56BC();
      (*(*(v20 - 8) + 16))(a1, a2, v20);
      v21 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      a1[v21[5]] = a2[v21[5]];
      *&a1[v21[6]] = *&a2[v21[6]];
      v22 = v21[7];
      v23 = &a1[v22];
      v24 = &a2[v22];
      *v23 = *v24;
      *(v23 + 1) = *(v24 + 1);
      *&a1[v21[8]] = *&a2[v21[8]];
      a1[v21[9]] = a2[v21[9]];
      v25 = v21[10];
      v26 = &a1[v25];
      v27 = &a2[v25];
      *v26 = *v27;
      *(v26 + 1) = *(v27 + 1);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      goto LABEL_21;
    }
  }

  v46 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v46);
}

_BYTE *_s28SectionDescendantCasesInItemOwtk(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 8:
      v11 = sub_21DBF56BC();
      (*(*(v11 - 8) + 32))(a1, a2, v11);
      v12 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
      *&a1[*(v12 + 20)] = *&a2[*(v12 + 20)];
      a1[*(v12 + 24)] = a2[*(v12 + 24)];
      goto LABEL_7;
    case 1:
      v9 = sub_21DBF56BC();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      v10 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      a1[v10[5]] = a2[v10[5]];
      *&a1[v10[6]] = *&a2[v10[6]];
      *&a1[v10[7]] = *&a2[v10[7]];
      *&a1[v10[8]] = *&a2[v10[8]];
      a1[v10[9]] = a2[v10[9]];
      *&a1[v10[10]] = *&a2[v10[10]];
      goto LABEL_7;
    case 0:
      v7 = sub_21DBF56BC();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      v8 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
      *&a1[*(v8 + 20)] = *&a2[*(v8 + 20)];
      a1[*(v8 + 24)] = a2[*(v8 + 24)];
LABEL_7:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

_BYTE *_s28SectionDescendantCasesInItemOwta(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D101330(a1, type metadata accessor for TTRAccountsListsViewModel.Item.SectionDescendantCasesInItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 8:
      v11 = sub_21DBF56BC();
      (*(*(v11 - 8) + 32))(a1, a2, v11);
      v12 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
      *&a1[*(v12 + 20)] = *&a2[*(v12 + 20)];
      a1[*(v12 + 24)] = a2[*(v12 + 24)];
      goto LABEL_8;
    case 1:
      v9 = sub_21DBF56BC();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      v10 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      a1[v10[5]] = a2[v10[5]];
      *&a1[v10[6]] = *&a2[v10[6]];
      *&a1[v10[7]] = *&a2[v10[7]];
      *&a1[v10[8]] = *&a2[v10[8]];
      a1[v10[9]] = a2[v10[9]];
      *&a1[v10[10]] = *&a2[v10[10]];
      goto LABEL_8;
    case 0:
      v7 = sub_21DBF56BC();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      v8 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
      *&a1[*(v8 + 20)] = *&a2[*(v8 + 20)];
      a1[*(v8 + 24)] = a2[*(v8 + 24)];
LABEL_8:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

uint64_t sub_21D5D7434(uint64_t a1)
{
  result = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTRAccountsListsViewModel.SmartList(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for TTRAccountsListsViewModel.Hashtags(319);
      if (v4 <= 0x3F)
      {
        swift_initEnumMetadataMultiPayload();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for TTRIReminderCellQuickBarAssigneeViewController(uint64_t a1)
{
  result = qword_27CE5EB98;
  if (!qword_27CE5EB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21D5D75E8(uint64_t a1)
{
  result = sub_21D5D7610();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21D5D7610()
{
  result = qword_27CE5EBA8;
  if (!qword_27CE5EBA8)
  {
    v3 = type metadata accessor for TTRIReminderCellQuickBarAssigneeViewController(255);
    result = swift_getWitnessTable(byte_21DC2AFE8, v3, v0, v1);
    atomic_store(result, &qword_27CE5EBA8);
  }

  return result;
}

uint64_t sub_21D5D768C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EBC0, &unk_21DC1DA80);
  MEMORY[0x28223BE20](v4 - 8);
  v55 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - v10;
  v12 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel(0);
  MEMORY[0x28223BE20](v12 - 8);
  v54 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0, qword_21DC0FEA0);
  MEMORY[0x28223BE20](v20 - 8);
  v56 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v49 - v23;
  v25 = sub_21DBFB95C();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  sub_21DBFB97C();
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    return sub_21D0CF7E0(v24, &unk_27CE5F2F0, qword_21DC0FEA0);
  }

  v30 = *(v26 + 32);
  v50 = v28;
  v30(v28, v24, v25);
  v31 = *((*MEMORY[0x277D85000] & *v2) + 0x60);
  swift_beginAccess();
  v53 = v31;
  sub_21D1AA038(v2 + v31, v19, v32);
  sub_21D5D8E8C(v19, v11);
  v33 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  v51 = v34 + 48;
  v52 = v35;
  if (v35(v11, 1, v33) == 1)
  {
    sub_21D5D8EFC(v19, type metadata accessor for TTRIReminderCellQuickBarDateViewModel);
    sub_21D0CF7E0(v11, &qword_27CE5EBC0, &unk_21DC1DA80);
  }

  else
  {
    sub_21DAA4C98();
    v49 = v26;
    sub_21D5D8EFC(v19, type metadata accessor for TTRIReminderCellQuickBarDateViewModel);
    sub_21D5D8EFC(v11, type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay);
    v26 = v49;
  }

  v36 = v55;
  v37 = v50;
  sub_21DBFB92C();
  sub_21D1AA038(v2 + v53, v16, v38);
  sub_21D5D8E8C(v16, v8);
  if (v52(v8, 1, v33) == 1)
  {
    sub_21D5D8EFC(v16, type metadata accessor for TTRIReminderCellQuickBarDateViewModel);
    sub_21D0CF7E0(v8, &qword_27CE5EBC0, &unk_21DC1DA80);
  }

  else
  {
    sub_21DAA4C98();
    v40 = v39;
    sub_21D5D8EFC(v16, type metadata accessor for TTRIReminderCellQuickBarDateViewModel);
    sub_21D5D8EFC(v8, type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay);
    if (v40)
    {
      v41 = sub_21DBFA12C();

      goto LABEL_11;
    }
  }

  v41 = 0;
LABEL_11:
  v42 = v54;
  [v57 setAccessibilityValue_];

  sub_21D1AA038(v2 + v53, v42, v43);
  sub_21D5D8E8C(v42, v36);
  if (v52(v36, 1, v33) == 1)
  {
    sub_21D5D8EFC(v42, type metadata accessor for TTRIReminderCellQuickBarDateViewModel);
    sub_21D0CF7E0(v36, &qword_27CE5EBC0, &unk_21DC1DA80);
LABEL_15:
    v46 = [objc_opt_self() secondaryLabelColor];
    goto LABEL_16;
  }

  sub_21DAA4C98();
  v45 = v44;
  sub_21D5D8EFC(v42, type metadata accessor for TTRIReminderCellQuickBarDateViewModel);
  sub_21D5D8EFC(v36, type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay);
  if (!v45)
  {
    goto LABEL_15;
  }

LABEL_16:
  sub_21DBFB89C();
  v47 = v56;
  (*(v26 + 16))(v56, v37, v25);
  (*(v26 + 56))(v47, 0, 1, v25);
  sub_21DBFB98C();
  if (sub_21D5D8348())
  {
    LODWORD(v48) = *(v2 + *((*MEMORY[0x277D85000] & *v2) + 0x70));
  }

  else
  {
    LODWORD(v48) = 1148846080;
  }

  [v57 setContentCompressionResistancePriority:0 forAxis:v48];
  return (*(v26 + 8))(v37, v25);
}

uint64_t sub_21D5D7D54(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0, qword_21DC0FEA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = sub_21DBFB95C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBFB97C();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_21D0CF7E0(v9, &unk_27CE5F2F0, qword_21DC0FEA0);
  }

  (*(v11 + 32))(v13, v9, v10);
  v15 = MEMORY[0x277D85000];
  v16 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x60));
  swift_beginAccess();
  sub_21DBF8E0C();
  sub_21DBFB92C();
  if (v16[1])
  {
    sub_21DBF8E0C();
    v17 = sub_21DBFA12C();
  }

  else
  {
    v17 = 0;
  }

  [a1 setAccessibilityValue_];

  if (!v16[1])
  {
    v18 = [objc_opt_self() secondaryLabelColor];
  }

  sub_21DBFB89C();
  (*(v11 + 16))(v6, v13, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  sub_21DBFB98C();
  v20 = v16[1];
  if (v20 && ((v20 & 0x2000000000000000) != 0 ? (v21 = HIBYTE(v20) & 0xF) : (v21 = *v16 & 0xFFFFFFFFFFFFLL), v21))
  {
    LODWORD(v19) = *(v2 + *((*v15 & *v2) + 0x70));
  }

  else
  {
    LODWORD(v19) = 1148846080;
  }

  [a1 setContentCompressionResistancePriority:0 forAxis:v19];
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_21D5D809C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0, qword_21DC0FEA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = sub_21DBFB95C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBFB97C();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21D0CF7E0(v8, &unk_27CE5F2F0, qword_21DC0FEA0);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_21DBFB92C();
  v14 = [a1 setAccessibilityValue_];
  if (((*((*MEMORY[0x277D85000] & *v1) + 0x80))(v14) & 1) == 0)
  {
    v15 = [objc_opt_self() secondaryLabelColor];
  }

  sub_21DBFB89C();
  (*(v10 + 16))(v5, v12, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  sub_21DBFB98C();
  LODWORD(v16) = 1148846080;
  [a1 setContentCompressionResistancePriority:0 forAxis:v16];
  return (*(v10 + 8))(v12, v9);
}

BOOL sub_21D5D8348()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EBC0, &unk_21DC1DA80);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  swift_beginAccess();
  sub_21D1AA038(v0 + v7, v6, v8);
  sub_21D5D8E8C(v6, v3);
  v9 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  if ((*(*(v9 - 8) + 48))(v3, 1, v9) == 1)
  {
    sub_21D5D8EFC(v6, type metadata accessor for TTRIReminderCellQuickBarDateViewModel);
    sub_21D0CF7E0(v3, &qword_27CE5EBC0, &unk_21DC1DA80);
    return 0;
  }

  v10 = sub_21DAA4C98();
  v12 = v11;
  sub_21D5D8EFC(v6, type metadata accessor for TTRIReminderCellQuickBarDateViewModel);
  sub_21D5D8EFC(v3, type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay);
  if (!v12)
  {
    return 0;
  }

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  return v13 != 0;
}

uint64_t sub_21D5D8544(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = *(Strong + *((*MEMORY[0x277D85000] & *Strong) + 0x68) + 8);
  v3 = Strong;
  ObjectType = swift_getObjectType();
  v5 = (*(v2 + 8))(ObjectType, v2);

  return v5;
}

void *sub_21D5D85F8(void *a1, void *a2)
{
  v41[0] = sub_21DBFB7EC();
  v4 = *(v41[0] - 1);
  MEMORY[0x28223BE20](v41[0]);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBFB95C();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v41 - v11;
  v13 = off_282EC7038;

  v14 = sub_21DBFA12C();
  v15 = [objc_opt_self() systemImageNamed_];

  if (qword_27CE57440 != -1)
  {
    swift_once();
  }

  v41[2] = *algn_27CE66F98;
  v41[3] = qword_27CE66F90;
  if (qword_27CE57448 != -1)
  {
    swift_once();
  }

  v41[4] = *algn_27CE66FA8;
  v41[5] = qword_27CE66FA0;
  v16 = MEMORY[0x277D85000];
  v17 = (a2 + *((*MEMORY[0x277D85000] & *a2) + 0x68));
  *v17 = a1;
  v17[1] = v13;
  *(a2 + *((*v16 & *a2) + 0x70)) = 1132068864;
  v18 = (a2 + *((*v16 & *a2) + 0x60));
  *v18 = 0;
  v18[1] = 0;

  sub_21DBFB8EC();
  v19 = [objc_opt_self() quaternarySystemFillColor];
  v41[1] = a1;
  v20 = sub_21DBFB79C();
  sub_21DBF883C();
  v20(v45, 0);
  (*(v4 + 104))(v6, *MEMORY[0x277D74FD8], v41[0]);
  sub_21DBFB7FC();
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v21 = sub_21D900614(7);
  v22 = [objc_opt_self() configurationWithFont:v21 scale:2];

  sub_21DBFB78C();
  v41[0] = v15;
  sub_21DBFB8FC();
  sub_21DBFB80C();
  sub_21DBFB87C();
  type metadata accessor for TTRIReminderCellQuickBarPopoverAnchoringButton();
  v23 = v42;
  (*(v42 + 16))(v9, v12, v43);
  v24 = sub_21DBFB96C();
  v25 = MEMORY[0x277D85000];
  *(a2 + *((*MEMORY[0x277D85000] & *a2) + 0x78)) = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EBB8, &unk_21DC1DA70);
  v44.receiver = a2;
  v44.super_class = v26;
  v27 = objc_msgSendSuper2(&v44, sel_init);
  v28 = *((*v25 & *v27) + 0x78);
  v29 = *(v27 + v28);
  v30 = v27;
  v31 = v29;
  sub_21D5D7D54(v31);

  [*(v27 + v28) setShowsMenuAsPrimaryAction_];
  v32 = *(v27 + v28);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = v32;

  v35 = _sSo6UIMenuC15RemindersUICoreE12ttr_uncached7options_ABSo0A7OptionsV_ABSgyctFZ_0(0, sub_21D5D8E70, v33);

  [v34 setMenu_];

  [*(v27 + v28) setPreferredMenuElementOrder_];
  v36 = *(v27 + v28);
  v37 = sub_21DBFA12C();
  [v36 setAccessibilityLabel_];

  v38 = *(v27 + v28);
  v39 = sub_21DBFA12C();
  [v38 setAccessibilityHint_];

  (*(v23 + 8))(v12, v43);
  return v30;
}

void *sub_21D5D8BEC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TTRIReminderCellQuickBarAssigneeInteractor();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  v4 = type metadata accessor for TTRIReminderCellQuickBarAssigneeRouter();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18[3] = v4;
  v18[4] = &off_282EC7040;
  v18[0] = v5;
  type metadata accessor for TTRIReminderCellQuickBarAssigneePresenter();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v18, v4);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v8);
  v12 = *v10;
  v6[13] = v4;
  v6[14] = &off_282EC7040;
  v6[10] = v12;
  v6[3] = 0;
  swift_unknownObjectWeakInit();
  v6[5] = 0;
  swift_unknownObjectWeakInit();
  v6[6] = 0;
  v6[7] = 0;
  v6[8] = v3;
  v6[9] = &off_282EC6FC8;

  __swift_destroy_boxed_opaque_existential_0(v18);
  v13 = objc_allocWithZone(type metadata accessor for TTRIReminderCellQuickBarAssigneeViewController(0));

  v15 = sub_21D5D85F8(v14, v13);

  *(v3 + 24) = &off_282EC7018;
  swift_unknownObjectWeakAssign();

  v6[3] = sub_21D5D8E18();
  swift_unknownObjectWeakAssign();
  v6[5] = a2;
  swift_unknownObjectWeakAssign();
  return v15;
}

unint64_t sub_21D5D8E18()
{
  result = qword_27CE5EBB0;
  if (!qword_27CE5EBB0)
  {
    v3 = type metadata accessor for TTRIReminderCellQuickBarAssigneeViewController(255);
    result = swift_getWitnessTable(byte_21DC1D930, v3, v0, v1);
    atomic_store(result, &qword_27CE5EBB0);
  }

  return result;
}

uint64_t sub_21D5D8E8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EBC0, &unk_21DC1DA80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D5D8EFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D5D8F64()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = (Strong + OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_quickBarDelegate);
    swift_beginAccess();
    v2 = v1[3];
    if (v2 && (v3 = __swift_project_boxed_opaque_existential_1(v1, v2), v4 = *v3, v5 = *v3 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate, swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      v8 = (*(v6 + 112))(v4, ObjectType, v6);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v8)
      {
        return v8;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_21D1DE990();
  return sub_21DBFB58C();
}

uint64_t sub_21D5D90E8()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5EBC8);
  v1 = __swift_project_value_buffer(v0, qword_27CE5EBC8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_21D5D91B0(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EBE0, &qword_21DC1DC58);
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v14 = v40 - v13;
  v15 = [a2 userActivity];
  if (v15)
  {
    v16 = v15;
    if (a4)
    {
      v17 = 1.0;
    }

    else
    {
      v17 = *&a3;
    }

    v18 = *(v5 + 24);
    ObjectType = swift_getObjectType();
    (*(v18 + 8))(v16, ObjectType, v18, v17);
    v20 = (*(v11 + 88))(v14, v10);
    if (v20 == *MEMORY[0x277D450E0])
    {
      (*(v11 + 96))(v14, v10);
      v21 = (*(v18 + 24))(ObjectType, v18, v17);
      swift_allocObject();
      swift_weakInit();
      v22 = v21;
      v23 = sub_21DBF816C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
      sub_21DBF820C();

      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 1;
LABEL_14:
      v33 = a1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 152);
      v34 = *(v33 + 48);
      v40[2] = *(v33 + 32);
      v40[3] = v34;
      v41 = *(v33 + 64);
      v35 = *(v33 + 16);
      v40[0] = *v33;
      v40[1] = v35;
      sub_21D5D9764(v40);
      *v33 = v22;
      *(v33 + 8) = v24;
      *(v33 + 16) = v25;
      *(v33 + 24) = v26;
      *(v33 + 32) = v27;
      *(v33 + 40) = v28;
      *(v33 + 48) = v29;
      *(v33 + 56) = v31;
      *(v33 + 64) = v30;
      return;
    }

    if (v20 == *MEMORY[0x277D450E8])
    {

      (*(v11 + 96))(v14, v10);
      v32 = *v14;
      v25 = *(v14 + 2);
      v27 = *(v14 + 4);
      v28 = *(v14 + 6);
      v29 = *(v14 + 7);
      v31 = *(v14 + 8);
      v30 = *(v14 + 9);
      if (v25)
      {
        v26 = *(v14 + 3);
        v24 = *(v14 + 1);
        sub_21DBF8E0C();
        v22 = v32;
        sub_21DBF8E0C();
        sub_21D3A1244(v28, v29, v31, v30);

        sub_21D3A22A8(v28, v29, v31, v30);
        goto LABEL_14;
      }

      sub_21D3A22A8(v28, v29, v31, v30);
      v22 = 0;
      v24 = 0;
LABEL_13:
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v31 = 0;
      v30 = 0;
      goto LABEL_14;
    }

    if (v20 == *MEMORY[0x277D450D8])
    {

      (*(v11 + 8))(v14, v10);
      v22 = 0;
      v24 = 0;
      v25 = 0;
      goto LABEL_13;
    }

    if (qword_27CE56A78 != -1)
    {
      swift_once();
    }

    v36 = sub_21DBF84BC();
    __swift_project_value_buffer(v36, qword_27CE5EBC8);
    v37 = MEMORY[0x277D84F90];
    v38 = sub_21D17716C(MEMORY[0x277D84F90]);
    v39 = sub_21D17716C(v37);
    sub_21DAEAB00("Unknown metadata state", 22, 2, v38, v39);
    __break(1u);
  }
}

uint64_t sub_21D5D9618@<X0>(BOOL *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v4 = result;
  if (result)
  {
    sub_21D0D32E4(result + 32, v7);

    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v5 = sub_21D1DD1FC();
    swift_beginAccess();
    *(v5 + 48) = 0;
    v6._object = 0x800000021DC49D80;
    v6._countAndFlagsBits = 0xD000000000000017;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v6);

    result = __swift_destroy_boxed_opaque_existential_0(v7);
  }

  *a2 = v4 == 0;
  return result;
}

uint64_t sub_21D5D9700()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_21D5D9764(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE626B0, &unk_21DC1DC60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D5D97E8()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5EBE8);
  v1 = __swift_project_value_buffer(v0, qword_27CE5EBE8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D5D9900(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21D5D996C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_delegate;
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

uint64_t TTRShowScheduledByDateBucketsDataModelSource.__allocating_init(store:style:countCompleted:sortingStyle:canChangeSortingStyle:)(void *a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v9 = swift_allocObject();
  *(v9 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_dataViewMonitor) = 0;
  *(v9 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_store) = a1;
  v10 = OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_style;
  v11 = sub_21DBF764C();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v9 + v10, a2, v11);
  *(v9 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_countCompleted) = a3;
  v13 = qword_280D1AA10;
  v14 = a1;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v16 = swift_allocObject();
  v17 = sub_21D193548(1, 2, v15, v16);
  *(v9 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_showCompletedContextInstance) = v17;
  type metadata accessor for TTRRemindersListDataModelSourceTipKitContext();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 18) = 0;
  *(v9 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_tipKitContextInstance) = v18;
  v19 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v20 = sub_21DBF70DC();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v9 + v19, a4, v20);
  *(v9 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v9 + 16) = a5 & 1;
  swift_beginAccess();
  v17[3] = &protocol witness table for TTRShowScheduledByDateBucketsDataModelSource;
  swift_unknownObjectWeakAssign();
  v24 = 10;

  sub_21D5DA4A0(&v24);

  (*(v21 + 8))(a4, v20);
  (*(v12 + 8))(a2, v11);
  return v9;
}

uint64_t TTRShowScheduledByDateBucketsDataModelSource.init(store:style:countCompleted:sortingStyle:canChangeSortingStyle:)(void *a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v5 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_dataViewMonitor) = 0;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_store) = a1;
  v10 = OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_style;
  v11 = sub_21DBF764C();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v5 + v10, a2, v11);
  *(v5 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_countCompleted) = a3;
  v13 = qword_280D1AA10;
  v14 = a1;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v16 = swift_allocObject();
  v17 = sub_21D193548(1, 2, v15, v16);
  *(v5 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_showCompletedContextInstance) = v17;
  type metadata accessor for TTRRemindersListDataModelSourceTipKitContext();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 18) = 0;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_tipKitContextInstance) = v18;
  v19 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v20 = sub_21DBF70DC();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v5 + v19, a4, v20);
  *(v5 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v5 + 16) = a5 & 1;
  swift_beginAccess();
  v17[3] = &protocol witness table for TTRShowScheduledByDateBucketsDataModelSource;
  swift_unknownObjectWeakAssign();
  v24 = 10;

  sub_21D5DA4A0(&v24);

  (*(v21 + 8))(a4, v20);
  (*(v12 + 8))(a2, v11);
  return v5;
}

id sub_21D5D9FC0@<X0>(uint64_t *a1@<X8>)
{
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_store);
  v3 = type metadata accessor for TTRTipKitDataModelSourceBase();
  v4 = swift_allocObject();
  *(v4 + 16) = v6;
  a1[3] = v3;
  a1[4] = &protocol witness table for TTRTipKitDataModelSourceBase;
  *a1 = v4;

  return v6;
}

uint64_t sub_21D5DA038@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v2 = sub_21DBF70DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF71BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v33 - v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_showCompletedContextInstance);
  if (*(v15 + 40))
  {
    v16 = *MEMORY[0x277D45468];
    v17 = *(v6 + 104);
    v17(v10, v16, v5, v12);
    v18 = v14;
    v19 = v16;
  }

  else
  {
    swift_beginAccess();
    *v10 = *(v15 + 48);
    v17 = *(v6 + 104);
    (v17)(v10, *MEMORY[0x277D45480], v5);
    v34 = v1;
    v35 = v2;
    v20 = v3;
    v21 = *(v6 + 8);
    sub_21DBF8E0C();
    v21(v10, v5);
    v3 = v20;
    v1 = v34;
    v2 = v35;
    v19 = *MEMORY[0x277D45470];
    v18 = v14;
  }

  (v17)(v18, v19, v5);
  v22 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_store);
  v23 = v36;
  (*(v6 + 16))(v36, v14, v5);
  v24 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v25 = v1 + v24;
  v26 = v38;
  (*(v3 + 16))(v38, v25, v2);
  v27 = type metadata accessor for TTRShowScheduledByDateBucketsPrintingDataModelSource(0);
  v28 = swift_allocObject();
  *(v28 + 16) = v22;
  (*(v6 + 32))(v28 + OBJC_IVAR____TtC15RemindersUICore52TTRShowScheduledByDateBucketsPrintingDataModelSource_showCompleted, v23, v5);
  (*(v3 + 32))(v28 + OBJC_IVAR____TtC15RemindersUICore52TTRShowScheduledByDateBucketsPrintingDataModelSource_sortingStyle, v26, v2);
  v29 = v37;
  v37[3] = v27;
  v29[4] = &protocol witness table for TTRShowScheduledByDateBucketsPrintingDataModelSource;
  *v29 = v28;
  v30 = *(v6 + 8);
  v31 = v22;
  return v30(v14, v5);
}

uint64_t TTRShowScheduledByDateBucketsPrintingDataModelSource.__allocating_init(store:showCompleted:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = OBJC_IVAR____TtC15RemindersUICore52TTRShowScheduledByDateBucketsPrintingDataModelSource_showCompleted;
  v8 = sub_21DBF71BC();
  (*(*(v8 - 8) + 32))(v6 + v7, a2, v8);
  v9 = OBJC_IVAR____TtC15RemindersUICore52TTRShowScheduledByDateBucketsPrintingDataModelSource_sortingStyle;
  v10 = sub_21DBF70DC();
  (*(*(v10 - 8) + 32))(v6 + v9, a3, v10);
  return v6;
}

uint64_t sub_21D5DA4A0(unsigned __int8 *a1)
{
  v2 = v1;
  v72 = sub_21DBF70DC();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v73 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_21DBF71BC();
  v76 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v70 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_21DBF764C();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3A8, &unk_21DC1DC70);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v69 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v63 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3C0, &qword_21DC15EE0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v63 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378, &qword_21DC19530);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v63 - v17;
  v19 = sub_21DBF75EC();
  v81 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v82 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *a1;
  v21 = OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v22 = *(v2 + v21);
  v74 = v21;
  if (v22)
  {
    v23 = v2 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v24 = v19;
      v25 = v8;
      v26 = v7;
      v27 = *(v23 + 8);
      ObjectType = swift_getObjectType();
      v83[0] = v75;
      v29 = *(v27 + 8);
      v7 = v26;
      v8 = v25;
      v19 = v24;
      v21 = v74;
      (*(v29 + 16))(v83, ObjectType);
      swift_unknownObjectRelease();
    }
  }

  v30 = sub_21DBF72DC();
  (*(*(v30 - 8) + 56))(v18, 1, 1, v30);
  sub_21DBF755C();
  v31 = *(v2 + v21);
  if (!v31)
  {
    goto LABEL_7;
  }

  v32 = *(*v31 + 104);
  swift_beginAccess();
  sub_21D0D3954(v31 + v32, v15, &qword_27CE5C3C0, &qword_21DC15EE0);
  if ((*(v8 + 48))(v15, 1, v7) == 1)
  {
    sub_21D0CF7E0(v15, &qword_27CE5C3C0, &qword_21DC15EE0);
LABEL_7:
    v33 = 0;
    goto LABEL_9;
  }

  v33 = *&v15[*(v7 + 48)];
  (*(v81 + 8))(v15, v19);
LABEL_9:
  v34 = v70;
  v68 = v7;
  v35 = *(v7 + 48);
  v36 = *(v81 + 16);
  v67 = v19;
  v65 = v81 + 16;
  v64 = v36;
  v36(v12, v82, v19);
  v70 = v12;
  *&v12[v35] = v33;
  v37 = v2 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v66 = v33;
  if (!Strong)
  {
    v46 = v33;
    goto LABEL_13;
  }

  v39 = *(v37 + 8);
  v40 = swift_getObjectType();
  v41 = *(v39 + 8);
  v42 = *(v41 + 8);
  v43 = v33;
  v44 = v42(v40, v41);
  LOBYTE(v40) = v45;
  swift_unknownObjectRelease();
  if (v40)
  {
LABEL_13:
    v44 = 30;
  }

  v47 = *(v2 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_store);
  (*(v78 + 16))(v77, v2 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_style, v79);
  v48 = *(v2 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_showCompletedContextInstance);
  if (*(v48 + 40) == 1)
  {
    (*(v76 + 104))(v34, *MEMORY[0x277D45468], v80);
  }

  else
  {
    swift_beginAccess();
    *v34 = *(v48 + 48);
    (*(v76 + 104))(v34, *MEMORY[0x277D45480], v80);
    sub_21DBF8E0C();
  }

  v49 = v34;
  v50 = *(v2 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_countCompleted);
  v51 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v52 = v71;
  v53 = v73;
  v54 = v72;
  (*(v71 + 16))(v73, v2 + v51, v72);
  type metadata accessor for TTRShowScheduledByDateBucketsMonitorableDataView(0);
  v55 = swift_allocObject();
  *(v55 + 16) = v47;
  (*(v78 + 32))(v55 + OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_style, v77, v79);
  (*(v76 + 32))(v55 + OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_showCompleted, v49, v80);
  *(v55 + OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_countCompleted) = v50;
  (*(v52 + 32))(v55 + OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_sortingStyle, v53, v54);
  *(v55 + OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_remindersToPrefetchCount) = v44;
  v56 = *(v68 + 48);
  v57 = v69;
  v58 = v70;
  v59 = v67;
  v64(v69, v70, v67);
  *(v57 + v56) = v66;
  v60 = v74;
  swift_beginAccess();
  v61 = v47;
  sub_21D5008B4((v2 + v60), v57, v55, v2, v75);
  sub_21D0CF7E0(v57, &qword_27CE5C3A8, &unk_21DC1DC70);
  swift_endAccess();

  sub_21D0CF7E0(v58, &qword_27CE5C3A8, &unk_21DC1DC70);
  return (*(v81 + 8))(v82, v59);
}

uint64_t TTRShowScheduledByDateBucketsMonitorableDataView.__allocating_init(store:style:showCompleted:countCompleted:sortingStyle:remindersToPrefetchCount:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_style;
  v14 = sub_21DBF764C();
  (*(*(v14 - 8) + 32))(v12 + v13, a2, v14);
  v15 = OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_showCompleted;
  v16 = sub_21DBF71BC();
  (*(*(v16 - 8) + 32))(v12 + v15, a3, v16);
  *(v12 + OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_countCompleted) = a4;
  v17 = OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_sortingStyle;
  v18 = sub_21DBF70DC();
  (*(*(v18 - 8) + 32))(v12 + v17, a5, v18);
  *(v12 + OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_remindersToPrefetchCount) = a6;
  return v12;
}

uint64_t sub_21D5DAF90()
{
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_delegate);

  v1 = OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_style;
  v2 = sub_21DBF764C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t TTRShowScheduledByDateBucketsDataModelSource.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_delegate);

  v3 = OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_style;
  v4 = sub_21DBF764C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t TTRShowScheduledByDateBucketsDataModelSource.__deallocating_deinit()
{
  TTRShowScheduledByDateBucketsDataModelSource.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall TTRShowScheduledByDateBucketsDataModelSource.showCompletedAllowlistChanged(isCleared:)(Swift::Bool isCleared)
{
  if (isCleared)
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  v2 = v1;
  sub_21D5DA4A0(&v2);
}

uint64_t sub_21D5DB234(char a1)
{
  if (a1)
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  v3 = v1;
  return sub_21D5DA4A0(&v3);
}

uint64_t TTRShowScheduledByDateBucketsDataModelSource.monitorWillFetch(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRShowScheduledByDateBucketsDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v56 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3A8, &unk_21DC1DC70);
  MEMORY[0x28223BE20](v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - v12;
  v14 = sub_21DBF75EC();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a2, v14);
  *&v13[*(v8 + 48)] = a3;
  v16 = OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v57 = v4;
  v17 = *(v4 + v16);
  if (!v17)
  {
    v27 = a3;
    return sub_21D0CF7E0(v13, &qword_27CE5C3A8, &unk_21DC1DC70);
  }

  v18 = a3;
  if (v17 != a1)
  {
    return sub_21D0CF7E0(v13, &qword_27CE5C3A8, &unk_21DC1DC70);
  }

  v19 = v18;
  v20 = sub_21DBF6E3C();
  sub_21D4F5F28(v20);
  v22 = v21;

  v55 = v13;
  if (a3)
  {
    v23 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    v24 = v57;
    swift_beginAccess();
    if (*(v24 + v23))
    {
      v25 = v19;

      sub_21D4F9F64(v25, v22);

      v26 = v57;
    }

    else
    {
      v28 = *(v24 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_store);
      sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
      v29 = v19;
      v30 = sub_21DBFB12C();
      v31 = swift_allocObject();
      *(v31 + 16) = 0;
      v32 = sub_21D87E81C(v28, sub_21D1947D8, v31, v29, v30);
      *(v57 + v23) = v32;

      v26 = v57;

      swift_beginAccess();
      v32[3] = &protocol witness table for TTRShowScheduledByDateBucketsDataModelSource;
      swift_unknownObjectWeakAssign();
    }

    v13 = v55;
  }

  else
  {

    v26 = v57;
  }

  sub_21D0D3954(v13, v10, &qword_27CE5C3A8, &unk_21DC1DC70);

  v33 = sub_21DBF716C();
  (*(v15 + 8))(v10, v14);
  if (!(v33 >> 62))
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_12;
    }

LABEL_30:

LABEL_31:
    v58 = 0;
    v59 = 0xE000000000000000;
    sub_21DBFBEEC();
    v58 = *v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DB10, &qword_21DC1A8B0);
    v50 = sub_21DBFA1AC();
    v52 = v51;

    v58 = v50;
    v59 = v52;
    MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
    v53 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v53);
    *(&v55 - 4) = v26;
    *(&v55 - 3) = v13;
    *(&v55 - 2) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
    sub_21DBF625C();

    return sub_21D0CF7E0(v13, &qword_27CE5C3A8, &unk_21DC1DC70);
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_30;
  }

  v34 = sub_21DBFBD7C();
  if (!v34)
  {

    v36 = MEMORY[0x277D84F90];
LABEL_21:
    v13 = v55;
    v26 = v57;
    if (*(v36 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8, &qword_21DC09560);
      v44 = sub_21DBFC40C();
    }

    else
    {
      v44 = MEMORY[0x277D84F98];
    }

    v60[0] = v44;
    v45 = sub_21DBF8E0C();
    sub_21D1931C0(v45, 1, v60);

    v46 = v60[0];
    v47 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    swift_beginAccess();
    if (*(v26 + v47))
    {

      sub_21D188810(v46);
      v49 = v48;

      TTRBatchFetchManager<A>.override(objects:)(v49);
    }

    else
    {
    }

    goto LABEL_31;
  }

LABEL_12:
  v60[0] = MEMORY[0x277D84F90];
  sub_21D18E6B8(0, v34 & ~(v34 >> 63), 0);
  if ((v34 & 0x8000000000000000) == 0)
  {
    v35 = 0;
    v36 = v60[0];
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x223D44740](v35, v33);
      }

      else
      {
        v37 = *(v33 + 8 * v35 + 32);
      }

      v38 = v37;
      v39 = [v37 objectID];
      v60[0] = v36;
      v41 = *(v36 + 16);
      v40 = *(v36 + 24);
      if (v41 >= v40 >> 1)
      {
        v43 = v39;
        sub_21D18E6B8((v40 > 1), v41 + 1, 1);
        v39 = v43;
        v36 = v60[0];
      }

      ++v35;
      *(v36 + 16) = v41 + 1;
      v42 = v36 + 16 * v41;
      *(v42 + 32) = v39;
      *(v42 + 40) = v38;
    }

    while (v34 != v35);

    goto LABEL_21;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_21D5DB998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v7 = a1 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v9 = result;
  if (result)
  {
    v10 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 16))(a2, a3, ObjectType, v10);
    result = swift_unknownObjectRelease();
  }

  *a4 = v9 == 0;
  return result;
}

uint64_t sub_21D5DBA64()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D5DBAE0(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3A8, &unk_21DC1DC70) + 48));

  return TTRShowScheduledByDateBucketsDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(a1, a2, v6, a3);
}

Swift::Void __swiftcall TTRShowScheduledByDateBucketsDataModelSource.updated(objectIDs:)(Swift::OpaquePointer objectIDs)
{
  sub_21DBFBEEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DB10, &qword_21DC1A8B0);
  sub_21DBFA1AC();

  MEMORY[0x223D42AA0](0xD000000000000013, 0x800000021DC44650);
  sub_21DBFAEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
  sub_21DBF625C();
}

uint64_t sub_21D5DBC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = a1 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v7 = result;
  if (result)
  {
    v8 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 24))(a2, ObjectType, v8);
    result = swift_unknownObjectRelease();
  }

  *a3 = v7 == 0;
  return result;
}

void TTRShowScheduledByDateBucketsDataModelSource.update(error:)(void *a1)
{
  if (qword_27CE56A80 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE5EBE8);
  v3 = a1;

  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    swift_getErrorValue();
    v7 = sub_21DBFC75C();
    v9 = sub_21D0CDFB4(v7, v8, &v11);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_21D0CDFB4(0x656C756465686373, 0xE900000000000064, &v11);
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowScheduledByDateBucketsDataModelSource update error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t TTRShowScheduledByDateBucketsPrintingDataModelSource.init(store:showCompleted:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  *(v4 + 16) = a1;
  v7 = OBJC_IVAR____TtC15RemindersUICore52TTRShowScheduledByDateBucketsPrintingDataModelSource_showCompleted;
  v8 = sub_21DBF71BC();
  (*(*(v8 - 8) + 32))(v4 + v7, a2, v8);
  v9 = OBJC_IVAR____TtC15RemindersUICore52TTRShowScheduledByDateBucketsPrintingDataModelSource_sortingStyle;
  v10 = sub_21DBF70DC();
  (*(*(v10 - 8) + 32))(v4 + v9, a3, v10);
  return v4;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TTRShowScheduledByDateBucketsPrintingDataModelSource.fetchListTree()(RemindersUICore::TTRRemindersPrintingListTree *__return_ptr retstr)
{
  v103 = retstr;
  v120 = sub_21DBF563C();
  v101 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v119 = &v89 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_21DBF6E1C();
  v121 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v117 = &v89 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21DBF6E4C();
  v99 = *(v3 - 8);
  v100 = v3;
  MEMORY[0x28223BE20](v3);
  v98 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF5A2C();
  v96 = *(v5 - 8);
  v97 = v5;
  MEMORY[0x28223BE20](v5);
  v95 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF582C();
  v93 = *(v7 - 8);
  v94 = v7;
  MEMORY[0x28223BE20](v7);
  v91 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v9 - 8);
  v92 = &v89 - v10;
  v11 = sub_21DBF746C();
  v122 = *(v11 - 8);
  *&v123 = v11;
  MEMORY[0x28223BE20](v11);
  v116 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2D8, &qword_21DC15E00);
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v14 = &v89 - v13;
  v15 = sub_21DBF714C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21DBF734C();
  v114 = *(v19 - 8);
  v115 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21DBF71BC();
  v111 = *(v22 - 8);
  v112 = v22;
  MEMORY[0x28223BE20](v22);
  v113 = (&v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_21DBF70DC();
  v105 = *(v24 - 8);
  v106 = v24;
  MEMORY[0x28223BE20](v24);
  v107 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21DBF738C();
  v108 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v110 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CE56A80 != -1)
  {
    swift_once();
  }

  v28 = sub_21DBF84BC();
  __swift_project_value_buffer(v28, qword_27CE5EBE8);
  v29 = sub_21DBF84AC();
  v30 = sub_21DBFAEDC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v90 = v21;
    v32 = v18;
    v33 = v16;
    v34 = v15;
    v35 = v26;
    v36 = v14;
    v37 = v31;
    *v31 = 0;
    _os_log_impl(&dword_21D0C9000, v29, v30, "PrintingDataModelSource: fetch Scheduled tree", v31, 2u);
    v38 = v37;
    v14 = v36;
    v26 = v35;
    v15 = v34;
    v16 = v33;
    v18 = v32;
    v21 = v90;
    MEMORY[0x223D46520](v38, -1, -1);
  }

  v109 = v26;

  v39 = OBJC_IVAR____TtC15RemindersUICore52TTRShowScheduledByDateBucketsPrintingDataModelSource_showCompleted;
  v40 = v124;
  (*(v105 + 16))(v107, v124 + OBJC_IVAR____TtC15RemindersUICore52TTRShowScheduledByDateBucketsPrintingDataModelSource_sortingStyle, v106);
  (*(v111 + 16))(v113, v40 + v39, v112);
  (*(v114 + 104))(v21, *MEMORY[0x277D45500], v115);
  (*(v16 + 104))(v18, *MEMORY[0x277D45460], v15);
  v41 = v110;
  sub_21DBF737C();
  v43 = v122;
  v42 = v123;
  v44 = v116;
  (*(v122 + 104))(v116, *MEMORY[0x277D45530], v123);
  v45 = v142;
  sub_21DBF749C();
  if (v45)
  {
    (*(v43 + 8))(v44, v42);
    (*(v108 + 8))(v41, v109);
  }

  else
  {
    v106 = 0;
    (*(v43 + 8))(v44, v42);
    v46 = v101;
    v47 = v92;
    (*(v101 + 56))(v92, 1, 1, v120);
    v48 = v91;
    sub_21DBF57AC();
    v49 = v95;
    _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
    type metadata accessor for TTRShowScheduledSectionHeaderTitleFormatter(0);
    v50 = swift_allocObject();
    *(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerRelativeDateFormatter) = 0;
    *(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateExcludingYearFormatter) = 0;
    *(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateIncludingYearFormatter) = 0;
    *(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___relativeDateFormatter) = 0;
    *(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___absoluteDateFormatter) = 0;
    *(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___yearFormatter) = 0;
    *(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___monthFormatter) = 0;
    (*(v93 + 32))(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_locale, v48, v94);
    (*(v96 + 32))(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_calendar, v49, v97);
    *(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_allowsRelativeDates) = 0;
    v116 = v50;
    sub_21D46CA8C(v47, v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_referenceDateForYearAndEra);
    v51 = v98;
    v107 = v14;
    sub_21DBF76DC();
    v52 = sub_21DBF6E3C();
    (*(v99 + 8))(v51, v100);
    v53 = *(v52 + 16);
    v54 = v109;
    if (v53)
    {
      v141 = MEMORY[0x277D84F90];
      sub_21D18E6F8(0, v53, 0);
      v142 = v141;
      v114 = *(v121 + 16);
      v115 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_allowsRelativeDates;
      v55 = (*(v121 + 80) + 32) & ~*(v121 + 80);
      v105 = v52;
      v56 = v52 + v55;
      v57 = *(v121 + 72);
      v113 = (v46 + 8);
      v121 += 16;
      v111 = v57;
      v112 = (v121 - 8);
      v124 = v53 - 1;
      while (1)
      {
        v59 = v117;
        v58 = v118;
        v122 = v56;
        v60 = (v114)(v117);
        v61 = v119;
        MEMORY[0x223D3F5B0](v60);
        TTRDateBucketSectionHeaderTitleFormatterBase.textAndSecondaryTextRange(for:allowsRelativeDates:)(v61, v116[v115], &v125);
        v123 = v125;
        v62 = v126;
        v63 = v127;
        v64 = v128;
        (*v113)(v61, v120);
        *(v133 + 5) = v125;
        BYTE7(v133[0]) = BYTE2(v125);
        v129 = v123;
        *&v130 = v62;
        *(&v130 + 1) = v63;
        v131 = v64;
        v132 = 0uLL;
        LODWORD(v133[0]) = 64;
        BYTE4(v133[0]) = 3;
        *(v133 + 8) = 0u;
        *(&v133[1] + 8) = 0u;
        *(&v133[2] + 8) = 0u;
        WORD4(v133[3]) = 255;
        nullsub_1();
        v65 = sub_21DBF6E0C();
        (*v112)(v59, v58);
        v136 = v131;
        v137 = v132;
        *(v140 + 10) = *(&v133[2] + 10);
        v139 = v133[1];
        v140[0] = v133[2];
        v138 = v133[0];
        v134 = v129;
        v135 = v130;
        v66 = v142;
        v141 = v142;
        v68 = v142[2];
        v67 = v142[3];
        if (v68 >= v67 >> 1)
        {
          sub_21D18E6F8((v67 > 1), v68 + 1, 1);
          v66 = v141;
        }

        v66[2] = v68 + 1;
        v69 = &v66[17 * v68];
        v70 = v134;
        v71 = v135;
        v72 = v137;
        *(v69 + 4) = v136;
        *(v69 + 5) = v72;
        *(v69 + 2) = v70;
        *(v69 + 3) = v71;
        v73 = v138;
        v74 = v139;
        v75 = v140[1];
        *(v69 + 8) = v140[0];
        *(v69 + 9) = v75;
        *(v69 + 6) = v73;
        *(v69 + 7) = v74;
        v69[20] = v65;
        if (!v124)
        {
          break;
        }

        v142 = v66;
        --v124;
        v56 = v122 + v111;
      }

      v76 = v107;
      v54 = v109;
      v41 = v110;
    }

    else
    {

      v66 = MEMORY[0x277D84F90];
      v76 = v107;
    }

    v77 = *MEMORY[0x277D44BA8];
    v78 = REMSmartListType.title.getter(*MEMORY[0x277D44BA8]);
    if (v79)
    {
      v80 = v78;
    }

    else
    {
      v80 = 0;
    }

    if (v79)
    {
      v81 = v79;
    }

    else
    {
      v81 = 0xE000000000000000;
    }

    v82 = REMSmartListType.color.getter(v77);
    if (v82)
    {
      v83 = v82;

      (*(v102 + 8))(v76, v104);
      (*(v108 + 8))(v41, v54);
    }

    else
    {
      v124 = v80;
      v142 = v66;
      if (qword_280D1BAC0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v84 = xmmword_280D1BAC8;
      v85 = xmmword_280D1BAD8;
      v87 = *(&xmmword_280D1BAE8 + 1);
      v86 = xmmword_280D1BAE8;
      LODWORD(v122) = byte_280D1BAF8;
      v134 = xmmword_280D1BAC8;
      v135 = xmmword_280D1BAD8;
      *&v123 = *(&xmmword_280D1BAD8 + 1);
      v136 = xmmword_280D1BAE8;
      LOBYTE(v137) = byte_280D1BAF8;
      sub_21D0FB960(xmmword_280D1BAC8, *(&xmmword_280D1BAC8 + 1), xmmword_280D1BAD8, *(&xmmword_280D1BAD8 + 1), xmmword_280D1BAE8, *(&xmmword_280D1BAE8 + 1), byte_280D1BAF8);
      v83 = TTRListColors.Color.nativeColor.getter();

      (*(v102 + 8))(v107, v104);
      (*(v108 + 8))(v110, v54);
      sub_21D1078C0(v84, *(&v84 + 1), v85, v123, v86, v87, v122);
      v66 = v142;
      v80 = v124;
    }

    v88 = v103;
    v103->listName._countAndFlagsBits = v80;
    v88->listName._object = v81;
    v88->listColor.super.isa = v83;
    v88->count.value = 0;
    v88->count.is_nil = 1;
    v88->sections._rawValue = v66;
    v88->reminderColorSource = RemindersUICore_TTRRemindersPrintingViewModel_ReminderColorSource_parentListColor;
  }
}

uint64_t TTRShowScheduledByDateBucketsPrintingDataModelSource.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore52TTRShowScheduledByDateBucketsPrintingDataModelSource_showCompleted;
  v2 = sub_21DBF71BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15RemindersUICore52TTRShowScheduledByDateBucketsPrintingDataModelSource_sortingStyle;
  v4 = sub_21DBF70DC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t TTRShowScheduledByDateBucketsPrintingDataModelSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore52TTRShowScheduledByDateBucketsPrintingDataModelSource_showCompleted;
  v2 = sub_21DBF71BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15RemindersUICore52TTRShowScheduledByDateBucketsPrintingDataModelSource_sortingStyle;
  v4 = sub_21DBF70DC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t TTRShowScheduledByDateBucketsMonitorableDataView.init(store:style:showCompleted:countCompleted:sortingStyle:remindersToPrefetchCount:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  *(v7 + 16) = a1;
  v13 = OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_style;
  v14 = sub_21DBF764C();
  (*(*(v14 - 8) + 32))(v7 + v13, a2, v14);
  v15 = OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_showCompleted;
  v16 = sub_21DBF71BC();
  (*(*(v16 - 8) + 32))(v7 + v15, a3, v16);
  *(v7 + OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_countCompleted) = a4;
  v17 = OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_sortingStyle;
  v18 = sub_21DBF70DC();
  (*(*(v18 - 8) + 32))(v7 + v17, a5, v18);
  *(v7 + OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_remindersToPrefetchCount) = a6;
  return v7;
}

char *TTRShowScheduledByDateBucketsMonitorableDataView.fetchData(from:userInteractive:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v74) = a4;
  v55 = a1;
  v56 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3B0, &qword_21DC15ED0);
  MEMORY[0x28223BE20](v52);
  v53 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v54 = &v50 - v6;
  v7 = sub_21DBF563C();
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x28223BE20](v7);
  v69 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3B8, &qword_21DC15ED8);
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v66 = &v50 - v9;
  v10 = sub_21DBF714C();
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x28223BE20](v10);
  v63 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21DBF71BC();
  v61 = *(v12 - 8);
  v62 = v12;
  MEMORY[0x28223BE20](v12);
  v60 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_21DBF70DC();
  v14 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21DBF738C();
  v67 = *(v17 - 8);
  v68 = v17;
  MEMORY[0x28223BE20](v17);
  v73 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21DBF734C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v58 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = (&v50 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3C0, &qword_21DC15EE0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v50 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3A0, &unk_21DC15EC0);
  sub_21DBFC83C();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3A8, &unk_21DC1DC70);
  if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
  {
    sub_21D0CF7E0(v27, &qword_27CE5C3C0, &qword_21DC15EE0);
    if (v74)
    {
      v74 = *(v75 + 16);
      v57 = 0;
      v29 = MEMORY[0x277D45508];
      v30 = v19;
      v31 = v73;
      goto LABEL_11;
    }

    v34 = 0;
    goto LABEL_9;
  }

  v32 = *&v27[*(v28 + 48)];
  v33 = sub_21DBF75EC();
  (*(*(v33 - 8) + 8))(v27, v33);
  if ((v74 & 1) == 0)
  {
    v34 = v32;
LABEL_9:
    v30 = v19;
    v74 = [*(v75 + 16) nonUserInteractiveStore];
    goto LABEL_10;
  }

  v74 = *(v75 + 16);
  v30 = v19;
  if (v32)
  {
    v34 = v32;
LABEL_10:
    v31 = v73;
    v57 = v34;
    v29 = MEMORY[0x277D454F8];
    goto LABEL_11;
  }

  v57 = 0;
  v29 = MEMORY[0x277D45508];
  v31 = v73;
LABEL_11:
  v35 = v75;
  *v24 = *(v75 + OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_remindersToPrefetchCount);
  (*(v20 + 104))(v24, *v29, v30);
  (*(v14 + 16))(v16, v35 + OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_sortingStyle, v59);
  (*(v61 + 16))(v60, v35 + OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_showCompleted, v62);
  v61 = v20;
  v62 = v24;
  v36 = v58;
  (*(v20 + 16))(v58, v24, v30);
  (*(v64 + 104))(v63, *MEMORY[0x277D45460], v65);
  sub_21DBF737C();
  v37 = v69;
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v38 = v30;
  v39 = v66;
  v40 = v74;
  v41 = v57;
  v42 = v72;
  sub_21DBF766C();
  if (v42)
  {

    (*(v70 + 8))(v37, v71);
    (*(v67 + 8))(v31, v68);
  }

  else
  {
    (*(v70 + 8))(v37, v71);
    v43 = v52;
    v44 = *(v52 + 48);
    v45 = v54;
    v46 = v50;
    v74 = v40;
    sub_21DBF76DC();
    *(v45 + v44) = sub_21DBF76BC();
    v47 = v53;
    sub_21D0D3954(v45, v53, &qword_27CE5C3B0, &qword_21DC15ED0);
    v36 = *(v47 + *(v43 + 48));
    v48 = sub_21DBF75EC();
    (*(*(v48 - 8) + 32))(v55, v47, v48);
    sub_21DBF76CC();

    sub_21D0CF7E0(v45, &qword_27CE5C3B0, &qword_21DC15ED0);
    (*(v51 + 8))(v39, v46);
    (*(v67 + 8))(v73, v68);
  }

  (*(v61 + 8))(v62, v38);
  return v36;
}

uint64_t TTRShowScheduledByDateBucketsMonitorableDataView.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_style;
  v2 = sub_21DBF764C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_showCompleted;
  v4 = sub_21DBF71BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_sortingStyle;
  v6 = sub_21DBF70DC();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t TTRShowScheduledByDateBucketsMonitorableDataView.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_style;
  v2 = sub_21DBF764C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_showCompleted;
  v4 = sub_21DBF71BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_sortingStyle;
  v6 = sub_21DBF70DC();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_21D5DDBE8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = TTRShowScheduledByDateBucketsMonitorableDataView.fetchData(from:userInteractive:)(a1, a2, a3, a4);
  if (!v4)
  {
    v7 = result;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3A8, &unk_21DC1DC70);
    *(a1 + *(result + 48)) = v7;
  }

  return result;
}

void sub_21D5DDC64(uint64_t a1)
{
  v34 = a1;
  v2 = sub_21DBF76AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3A0, &unk_21DC15EC0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3C0, &qword_21DC15EE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v36 = sub_21DBF75EC();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v35 = v1;
  v17 = *(v1 + v16);
  if (v17)
  {
    v32 = v3;
    v33 = v2;
    v18 = *(*v17 + 96);
    swift_beginAccess();
    sub_21D0D3954(v17 + v18, v7, &qword_27CE5C3A0, &unk_21DC15EC0);
    sub_21DBFC83C();
    sub_21D0CF7E0(v7, &qword_27CE5C3A0, &unk_21DC15EC0);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3A8, &unk_21DC1DC70);
    if ((*(*(v19 - 8) + 48))(v10, 1, v19) == 1)
    {
      sub_21D0CF7E0(v10, &qword_27CE5C3C0, &qword_21DC15EE0);
    }

    else
    {

      v20 = *(v38 + 32);
      v21 = v36;
      v20(v12, v10, v36);
      v20(v15, v12, v21);
      v41[0] = v34;
      swift_getKeyPath(byte_21DC1DEB8);
      swift_getKeyPath("Ё%_");
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF80, &qword_21DC09CB0);
      sub_21D5DE94C();
      sub_21D183A0C();
      v22 = sub_21DBFA46C();

      v23 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
      v24 = v35;
      swift_beginAccess();
      if (*(v24 + v23))
      {

        TTRBatchFetchManager<A>.override(objects:)(v22);
      }

      sub_21D183AA0(v22);
      v26 = v25;

      sub_21D19ED38(v26);

      if (MEMORY[0x277D84F90] >> 62)
      {
        if (sub_21DBFBD7C())
        {
          sub_21D1CDECC(MEMORY[0x277D84F90]);
        }

        if (sub_21DBFBD7C())
        {
          sub_21D1CDECC(MEMORY[0x277D84F90]);
        }

        if (sub_21DBFBD7C())
        {
          sub_21D1CDECC(MEMORY[0x277D84F90]);
        }
      }

      v27 = v37;
      sub_21DBF767C();
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_21DBFBEEC();
      v39 = *v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DB10, &qword_21DC1A8B0);
      v28 = sub_21DBFA1AC();
      v30 = v29;

      v39 = v28;
      v40 = v30;
      MEMORY[0x223D42AA0](0xD000000000000021, 0x800000021DC448D0);
      v31 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v31);
      *(&v32 - 4) = v24;
      *(&v32 - 3) = v15;
      *(&v32 - 2) = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
      sub_21DBF625C();

      (*(v32 + 8))(v27, v33);
      (*(v38 + 8))(v15, v21);
    }
  }
}

void sub_21D5DE2B8(void *a1)
{
  if (qword_27CE56A80 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE5EBE8);
  v3 = a1;

  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    swift_getErrorValue();
    v7 = sub_21DBFC75C();
    v9 = sub_21D0CDFB4(v7, v8, &v11);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_21D0CDFB4(0x656C756465686373, 0xE900000000000064, &v11);
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowScheduledByDateBucketsDataModelSource did hit error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21D5DE518(uint64_t a1, __n128 a2)
{
  result = sub_21DBF764C();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21D5DE6C8(uint64_t a1, __n128 a2)
{
  result = sub_21DBF71BC();
  if (v3 <= 0x3F)
  {
    result = sub_21DBF70DC();
    if (v4 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21D5DE7F8(uint64_t a1, __n128 a2)
{
  result = sub_21DBF764C();
  if (v3 <= 0x3F)
  {
    result = sub_21DBF71BC();
    if (v4 <= 0x3F)
    {
      result = sub_21DBF70DC();
      if (v5 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

unint64_t sub_21D5DE94C()
{
  result = qword_27CE589E8;
  if (!qword_27CE589E8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5DF80, &qword_21DC09CB0);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v3, v0, v1);
    atomic_store(result, &qword_27CE589E8);
  }

  return result;
}

uint64_t TTRReminderCellNotesInteractor.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t TTRReminderCellNotesInteractor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRReminderCellNotesInteractor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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

uint64_t TTRReminderCellNotesInteractor.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t TTRReminderCellNotesInteractor.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);

  return swift_deallocClassInstance();
}

Swift::Bool __swiftcall NUIContainerView.ttr_pointIncludingExpandedHitTestInsets(inside:with:)(CGPoint inside, UIEvent_optional with)
{
  v3 = v2;
  isa = with.value.super.isa;
  y = inside.y;
  x = inside.x;
  v33.super_class = MEMORY[0x277CEC640];
  if (objc_msgSendSuper2(&v33, sel_pointInside_withEvent_, with.value.super.isa))
  {
    LOBYTE(v7) = 1;
    return v7;
  }

  v7 = [v2 visibleArrangedSubviews];
  if (!v7)
  {
    return v7;
  }

  v8 = v7;
  sub_21D114EC8();
  v9 = sub_21DBFA5EC();

  if (v9 >> 62)
  {
    goto LABEL_24;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
LABEL_6:
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x223D44740](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        v10 = sub_21DBFBD7C();
        if (!v10)
        {
          goto LABEL_25;
        }

        goto LABEL_6;
      }

      v15 = [v12 superview];
      if (!v15)
      {
        break;
      }

      swift_getObjectType();
      if (swift_conformsToProtocol2() && v13)
      {
        [v13 frame];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        [v13 hitTestInsets];
        v36.origin.x = UIEdgeInsetsInsetRect(v17, v19, v21, v23, v24, v25);
        v35.x = x;
        v35.y = y;
        v26 = CGRectContainsPoint(v36, v35);
      }

      else
      {
        objc_opt_self();
        v27 = swift_dynamicCastObjCClass();
        if (!v27)
        {
          break;
        }

        [v27 convertPoint:v3 fromCoordinateSpace:{x, y}];
        v34.value.super.isa = isa;
        v26 = NUIContainerView.ttr_pointIncludingExpandedHitTestInsets(inside:with:)(__PAIR128__(v29, v28), v34);
      }

      v30 = v26;

      if (v30)
      {
        v31 = 1;
        goto LABEL_26;
      }

LABEL_8:
      ++v11;
      if (v14 == v10)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_8;
  }

LABEL_25:
  v31 = 0;
LABEL_26:

  LOBYTE(v7) = v31;
  return v7;
}

double static TTRIHitTestExpandable.accessibilityFrame(from:withMinimumSize:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  v11 = a5 - CGRectGetWidth(*&a1);
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  v12 = a6 - CGRectGetHeight(v21);
  if (v11 < 0.0)
  {
    v13 = -0.0;
  }

  else
  {
    v13 = v11 * -0.5;
  }

  if (v12 < 0.0)
  {
    v14 = -0.0;
  }

  else
  {
    v14 = v12 * -0.5;
  }

  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;

  *&result = CGRectInset(*&v15, v13, v14);
  return result;
}

id TTRIExpandedHitTestButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_21D5DF0E4(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v10.receiver = a1;
  v10.super_class = a3(a1, a2);
  v3 = v10.receiver;
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  [v3 bounds];
  v6 = (44.0 - v5) * 0.5;
  v7 = -v6;
  if (v6 < 0.0)
  {
    v7 = -0.0;
  }

  v8 = (44.0 - v4) * 0.5;
  v9 = -v8;
  if (v8 < 0.0)
  {
    v9 = -0.0;
  }

  [v3 setHitTestInsets_];
}

double sub_21D5DF1B4(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v10.receiver = a1;
  v10.super_class = a3(a1, a2);
  v3 = v10.receiver;
  objc_msgSendSuper2(&v10, sel_accessibilityFrame);
  v8 = static TTRIHitTestExpandable.accessibilityFrame(from:withMinimumSize:)(v4, v5, v6, v7, 44.0, 44.0);

  return v8;
}

id sub_21D5DF260(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t))
{
  v12.receiver = a1;
  v12.super_class = a7(a1, a6);
  return objc_msgSendSuper2(&v12, sel_setAccessibilityFrame_, a2, a3, a4, a5);
}

id TTRIExpandedHitTestImageView.__allocating_init(image:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithImage_];

  return v3;
}

id TTRIExpandedHitTestImageView.init(image:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TTRIExpandedHitTestImageView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithImage_, a1);

  return v3;
}

id TTRIExpandedHitTestImageView.__allocating_init(image:highlightedImage:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithImage:a1 highlightedImage:a2];

  return v5;
}

id TTRIExpandedHitTestImageView.init(image:highlightedImage:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for TTRIExpandedHitTestImageView();
  v5 = objc_msgSendSuper2(&v7, sel_initWithImage_highlightedImage_, a1, a2);

  return v5;
}

id sub_21D5DF4DC(uint64_t (*a1)(void), double a2, double a3, double a4, double a5)
{
  v11.receiver = v5;
  v11.super_class = a1();
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_21D5DF55C(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t))
{
  v12.receiver = a1;
  v12.super_class = a7(a1, a6);
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_21D5DF5E8(void *a1, uint64_t (*a2)(void))
{
  v6.receiver = v2;
  v6.super_class = a2();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_21D5DF66C(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t))
{
  v8.receiver = a1;
  v8.super_class = a4(a1, a2);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_21D5DF700(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_21D5DF760(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  v11 = a5 - CGRectGetWidth(*&a1);
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  v12 = a6 - CGRectGetHeight(v21);
  if (v11 < 0.0)
  {
    v13 = -0.0;
  }

  else
  {
    v13 = v11 * -0.5;
  }

  if (v12 < 0.0)
  {
    v14 = -0.0;
  }

  else
  {
    v14 = v12 * -0.5;
  }

  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;

  *&result = CGRectInset(*&v15, v13, v14);
  return result;
}

uint64_t TTRAcceptedAttributeCache.excludedAttributesDueToAccepted(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v42 = a2;
  v2 = sub_21DBF7B0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v41 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v43 = &v36 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EC18, &unk_21DC1E050);
  v7 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v9 = &v36 - v8;
  v10 = swift_allocBox();
  v12 = v11;
  v44[1] = MEMORY[0x277D84F90];
  v38 = MEMORY[0x277D45750];
  sub_21D5E218C(&qword_280D0C7C0, MEMORY[0x277D45750], MEMORY[0x277D45768]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D170, &unk_21DC18DD0);
  sub_21D0D9418(&qword_280D0C3B8, &qword_27CE5D170, &unk_21DC18DD0);
  v13 = v10;
  sub_21DBFBCBC();
  v14 = v37;
  (*(v7 + 104))(v9, *MEMORY[0x277D459A0], v37);
  v15 = swift_allocObject();
  v16 = v39;
  *(v15 + 16) = v39;
  *(v15 + 24) = v13;
  v17 = v16;

  sub_21DBF831C();

  v18 = v9;
  v19 = v12;
  (*(v7 + 8))(v18, v14);
  swift_beginAccess();
  v20 = *(v3 + 16);
  v21 = v43;
  v20(v43, v19, v2);
  v22 = v41;
  sub_21DBFBCAC();
  sub_21D5E218C(&qword_280D0C7D0, v38, MEMORY[0x277D45758]);
  v23 = sub_21DBFA10C();
  v24 = *(v3 + 8);
  v24(v22, v2);
  v41 = (v3 + 8);
  v24(v21, v2);
  if ((v23 & 1) == 0)
  {
    if (qword_27CE56A88 != -1)
    {
      swift_once();
    }

    v25 = sub_21DBF84BC();
    __swift_project_value_buffer(v25, qword_27CE5EC00);

    v26 = sub_21DBF84AC();
    v27 = sub_21DBFAEDC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v44[0] = v39;
      *v28 = 136315138;
      LODWORD(v38) = v27;
      v29 = v43;
      v20(v43, v19, v2);
      v30 = sub_21DBF7A8C();
      v40 = v13;
      v32 = v31;
      v24(v29, v2);
      v33 = sub_21D0CDFB4(v30, v32, v44);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_21D0C9000, v26, v38, "TTRAcceptedAttributeCache: excludedAttributesDueToAccepted %s", v28, 0xCu);
      v34 = v39;
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x223D46520](v34, -1, -1);
      MEMORY[0x223D46520](v28, -1, -1);
    }
  }

  v20(v42, v19, v2);
}

uint64_t sub_21D5DFD1C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5EC00);
  v1 = __swift_project_value_buffer(v0, qword_27CE5EC00);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D5DFDE4()
{
  v0 = sub_21DBFB11C();
  v13 = *(v0 - 8);
  v14 = v0;
  MEMORY[0x28223BE20](v0);
  v12 = v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v2);
  v3 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_21DBF9D3C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0CE468();
  v15 = type metadata accessor for TTRAcceptedAttributeCache(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EC30, &qword_21DC1E0A8);
  v8 = sub_21DBFA1CC();
  v11[0] = v9;
  v11[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D851C8], v4);
  sub_21DBFB15C();
  (*(v5 + 8))(v7, v4);
  sub_21DBF9D4C();
  v15 = MEMORY[0x277D84F90];
  sub_21D5E218C(&qword_280D17808, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00, &unk_21DC0D9A0);
  sub_21D0D9418(&qword_280D178C0, &unk_27CE60F00, &unk_21DC0D9A0);
  sub_21DBFBCBC();
  (*(v13 + 104))(v12, *MEMORY[0x277D85260], v14);
  sub_21DBFB14C();
  swift_allocObject();
  result = _s15RemindersUICore25TTRAcceptedAttributeCacheC10cacheQueue10countLimitACSo17OS_dispatch_queueC_Sitcfc_0();
  qword_280D152C8 = result;
  return result;
}

uint64_t static TTRAcceptedAttributeCache.shared.getter()
{
  if (qword_280D152C0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_21D5E01F0(uint64_t a1, void (**a2)(_BYTE *, _BYTE *, uint64_t), uint64_t a3)
{
  v202 = a2;
  v204 = a1;
  v200 = sub_21DBF7B0C();
  v195 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v152 = &v141[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v141[-v5];
  MEMORY[0x28223BE20](v7);
  v9 = &v141[-v8];
  MEMORY[0x28223BE20](v10);
  v12 = &v141[-v11];
  MEMORY[0x28223BE20](v13);
  v15 = &v141[-v14];
  MEMORY[0x28223BE20](v16);
  v156 = &v141[-v17];
  MEMORY[0x28223BE20](v18);
  v192 = &v141[-v19];
  MEMORY[0x28223BE20](v20);
  v158 = &v141[-v21];
  MEMORY[0x28223BE20](v22);
  v161 = &v141[-v23];
  MEMORY[0x28223BE20](v24);
  v165 = &v141[-v25];
  MEMORY[0x28223BE20](v26);
  v164 = &v141[-v27];
  MEMORY[0x28223BE20](v28);
  v167 = &v141[-v29];
  MEMORY[0x28223BE20](v30);
  v175 = &v141[-v31];
  MEMORY[0x28223BE20](v32);
  v171 = &v141[-v33];
  MEMORY[0x28223BE20](v34);
  v183 = &v141[-v35];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D050, &unk_21DC18BB8);
  MEMORY[0x28223BE20](v36 - 8);
  v151 = &v141[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v38);
  v150 = &v141[-v39];
  MEMORY[0x28223BE20](v40);
  v153 = &v141[-v41];
  MEMORY[0x28223BE20](v42);
  v155 = &v141[-v43];
  MEMORY[0x28223BE20](v44);
  v160 = &v141[-v45];
  MEMORY[0x28223BE20](v46);
  v163 = &v141[-v47];
  MEMORY[0x28223BE20](v48);
  v178 = &v141[-v49];
  v172 = sub_21DBF799C();
  v50 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v182 = &v141[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v52);
  v197 = &v141[-v53];
  MEMORY[0x28223BE20](v54);
  v188 = &v141[-v55];
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EC38, &qword_21DC1E0B0);
  MEMORY[0x28223BE20](v56 - 8);
  v58 = &v141[-((v57 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v59);
  v61 = &v141[-v60];
  v205 = sub_21DBF563C();
  v62 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v203 = &v141[-((v63 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v64);
  v187 = &v141[-v65];
  MEMORY[0x28223BE20](v66);
  v68 = &v141[-v67];
  v176 = swift_projectBox();
  result = sub_21DBF5FEC();
  if (!result)
  {
    return result;
  }

  v145 = v15;
  v146 = v12;
  v143 = v9;
  v147 = v6;
  sub_21DBF60EC();

  v70 = v206;
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v72 = v70 + 64;
  v71 = *(v70 + 64);
  v73 = 1 << *(v70 + 32);
  v74 = -1;
  v181 = *MEMORY[0x277D45670];
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  v204 = v74 & v71;
  v177 = (v73 + 63) >> 6;
  v198 = (v50 + 16);
  v185 = v62 + 16;
  v201 = (v62 + 32);
  v202 = (v50 + 32);
  v193 = (v62 + 8);
  v190 = (v50 + 8);
  v179 = (v50 + 88);
  v170 = *MEMORY[0x277D45658];
  v169 = *MEMORY[0x277D45660];
  v166 = *MEMORY[0x277D45648];
  v162 = *MEMORY[0x277D45650];
  v159 = *MEMORY[0x277D45688];
  v157 = *MEMORY[0x277D45690];
  v149 = *MEMORY[0x277D45680];
  v148 = *MEMORY[0x277D45698];
  v174 = (v195 + 16);
  v144 = *MEMORY[0x277D45668];
  v168 = (v195 + 32);
  v173 = (v195 + 56);
  v184 = (v195 + 8);
  v142 = *MEMORY[0x277D45678];
  v189 = v70;
  sub_21DBF8E0C();
  v75 = 0;
  v199 = v50;
  v76 = v197;
  v194 = v58;
  v195 = v61;
  v77 = v62;
  v191 = v62;
  v196 = v68;
  v78 = v172;
  v186 = v72;
  while (1)
  {
    v82 = v204;
    if (!v204)
    {
      break;
    }

    v83 = v75;
LABEL_19:
    v204 = (v82 - 1) & v82;
    v86 = __clz(__rbit64(v82)) | (v83 << 6);
    v87 = v189;
    v88 = v50;
    (*(v50 + 16))(v188, *(v189 + 48) + *(v50 + 72) * v86, v78);
    v89 = v187;
    v90 = v205;
    (*(v77 + 16))(v187, *(v87 + 56) + *(v77 + 72) * v86, v205);
    v91 = v77;
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EC40, &qword_21DC1E0B8);
    v93 = *(v92 + 48);
    v94 = v78;
    v95 = v194;
    (*(v88 + 32))();
    (*(v91 + 32))(v95 + v93, v89, v90);
    (*(*(v92 - 8) + 56))(v95, 0, 1, v92);
    v61 = v195;
    v68 = v196;
    v72 = v186;
    v76 = v197;
LABEL_20:
    sub_21D5E21D4(v95, v61);
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EC40, &qword_21DC1E0B8);
    if ((*(*(v96 - 8) + 48))(v61, 1, v96) == 1)
    {

      return (*v193)(v68, v205);
    }

    v97 = *(v96 + 48);
    v78 = v94;
    (*v202)(v76, v61, v94);
    (*v201)(v203, &v61[v97], v205);
    sub_21DBF558C();
    v98 = v192;
    v50 = v199;
    if (v99 < 480.0)
    {
      v100 = v182;
      (*v198)(v182, v76, v78);
      v101 = (*v179)(v100, v78);
      if (v101 == v181)
      {
        v102 = v183;
        sub_21DBF7ABC();
        v103 = v176;
        swift_beginAccess();
        v104 = *v174;
        v105 = v175;
        (*v174)(v175, v103, v200);
        sub_21D5E218C(&qword_280D0C7C0, MEMORY[0x277D45750], MEMORY[0x277D45768]);
        v106 = v171;
        sub_21DBFBC3C();
        v104(v105, v102, v200);
        v107 = v200;
        sub_21DBFBC8C();
        if (sub_21DBFBC7C())
        {
          (*v184)(v106, v107);
          v79 = 1;
        }

        else
        {
          (*v168)(v178, v106, v107);
          v79 = 0;
        }

        v80 = v178;
        (*v173)(v178, v79, 1, v107);
        swift_endAccess();
        v81 = v183;
        v78 = v172;
        v50 = v199;
        v61 = v195;
        v68 = v196;
        goto LABEL_7;
      }

      if (v101 != v170 && v101 != v169)
      {
        if (v101 == v166)
        {
          v108 = v167;
          sub_21DBF7ADC();
          v109 = v176;
          swift_beginAccess();
          v110 = *v174;
          v111 = v175;
          (*v174)(v175, v109, v200);
          sub_21D5E218C(&qword_280D0C7C0, MEMORY[0x277D45750], MEMORY[0x277D45768]);
          v112 = v164;
          sub_21DBFBC3C();
          v110(v111, v108, v200);
          v107 = v200;
          sub_21DBFBC8C();
          if (sub_21DBFBC7C())
          {
            (*v184)(v112, v107);
            v113 = 1;
            v80 = v163;
          }

          else
          {
            v80 = v163;
            (*v168)(v163, v112, v107);
            v113 = 0;
          }

          v68 = v196;
          (*v173)(v80, v113, 1, v107);
          swift_endAccess();
          v81 = v167;
          v50 = v199;
          v61 = v195;
          goto LABEL_7;
        }

        if (v101 == v162 || v101 == v159)
        {
          v119 = v165;
          sub_21DBF7AFC();
          v120 = v176;
          swift_beginAccess();
          v154 = *v174;
          v121 = v175;
          v154(v175, v120, v200);
          sub_21D5E218C(&qword_280D0C7C0, MEMORY[0x277D45750], MEMORY[0x277D45768]);
          v122 = v161;
          sub_21DBFBC3C();
          v154(v121, v119, v200);
          v107 = v200;
          sub_21DBFBC8C();
          if (sub_21DBFBC7C())
          {
            (*v184)(v122, v107);
            v123 = 1;
            v80 = v160;
          }

          else
          {
            v80 = v160;
            (*v168)(v160, v122, v107);
            v123 = 0;
          }

          v50 = v199;
          v68 = v196;
          (*v173)(v80, v123, 1, v107);
          swift_endAccess();
          v124 = &v199;
LABEL_43:
          v81 = *(v124 - 32);
          goto LABEL_7;
        }

        if (v101 != v157)
        {
          if (v101 == v149)
          {
            v115 = v158;
            sub_21DBF7A9C();
            v116 = v176;
            swift_beginAccess();
            v154 = *v174;
            v117 = v175;
            v154(v175, v116, v200);
            sub_21D5E218C(&qword_280D0C7C0, MEMORY[0x277D45750], MEMORY[0x277D45768]);
            sub_21DBFBC3C();
            v154(v117, v115, v200);
            v107 = v200;
            sub_21DBFBC8C();
            if (sub_21DBFBC7C())
            {
              (*v184)(v98, v107);
              v118 = 1;
              v80 = v155;
            }

            else
            {
              v80 = v155;
              (*v168)(v155, v98, v107);
              v118 = 0;
            }

            v50 = v199;
            v68 = v196;
            (*v173)(v80, v118, 1, v107);
            swift_endAccess();
            v124 = &v192;
            goto LABEL_43;
          }

          if (v101 == v148)
          {
            v125 = v156;
            sub_21DBF7AEC();
            v126 = v176;
            swift_beginAccess();
            v154 = *v174;
            v127 = v175;
            v154(v175, v126, v200);
            sub_21D5E218C(&qword_280D0C7C0, MEMORY[0x277D45750], MEMORY[0x277D45768]);
            v128 = v145;
            sub_21DBFBC3C();
            v154(v127, v125, v200);
            v107 = v200;
            sub_21DBFBC8C();
            if (sub_21DBFBC7C())
            {
              (*v184)(v128, v107);
              v129 = 1;
              v80 = v153;
            }

            else
            {
              v80 = v153;
              (*v168)(v153, v128, v107);
              v129 = 0;
            }

            v50 = v199;
            v68 = v196;
            (*v173)(v80, v129, 1, v107);
            swift_endAccess();
            v135 = &v190;
          }

          else if (v101 == v144)
          {
            v130 = v146;
            sub_21DBF7AAC();
            v131 = v176;
            swift_beginAccess();
            v154 = *v174;
            v132 = v175;
            v154(v175, v131, v200);
            sub_21D5E218C(&qword_280D0C7C0, MEMORY[0x277D45750], MEMORY[0x277D45768]);
            v133 = v143;
            sub_21DBFBC3C();
            v154(v132, v130, v200);
            v107 = v200;
            sub_21DBFBC8C();
            if (sub_21DBFBC7C())
            {
              (*v184)(v133, v107);
              v134 = 1;
              v80 = v150;
            }

            else
            {
              v80 = v150;
              (*v168)(v150, v133, v107);
              v134 = 0;
            }

            v50 = v199;
            v68 = v196;
            (*v173)(v80, v134, 1, v107);
            swift_endAccess();
            v135 = &v180;
          }

          else
          {
            if (v101 != v142)
            {
              goto LABEL_65;
            }

            v136 = v147;
            sub_21DBF7ACC();
            v137 = v176;
            swift_beginAccess();
            v154 = *v174;
            v138 = v175;
            v107 = v200;
            v154(v175, v137, v200);
            sub_21D5E218C(&qword_280D0C7C0, MEMORY[0x277D45750], MEMORY[0x277D45768]);
            v139 = v152;
            sub_21DBFBC3C();
            v154(v138, v136, v107);
            sub_21DBFBC8C();
            if (sub_21DBFBC7C())
            {
              (*v184)(v139, v107);
              v140 = 1;
              v80 = v151;
            }

            else
            {
              v80 = v151;
              (*v168)(v151, v139, v107);
              v140 = 0;
            }

            v50 = v199;
            v68 = v196;
            (*v173)(v80, v140, 1, v107);
            swift_endAccess();
            v135 = &v182;
          }

          v81 = *(v135 - 32);
LABEL_7:
          (*v184)(v81, v107);
          sub_21D0CF7E0(v80, &qword_27CE5D050, &unk_21DC18BB8);
          v76 = v197;
        }
      }
    }

    (*v193)(v203, v205);
    (*v190)(v76, v78);
    v77 = v191;
  }

  if (v177 <= v75 + 1)
  {
    v84 = v75 + 1;
  }

  else
  {
    v84 = v177;
  }

  v85 = v84 - 1;
  while (1)
  {
    v83 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      break;
    }

    if (v83 >= v177)
    {
      v94 = v78;
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EC40, &qword_21DC1E0B8);
      v95 = v194;
      (*(*(v114 - 8) + 56))(v194, 1, 1, v114);
      v204 = 0;
      v75 = v85;
      goto LABEL_20;
    }

    v82 = *(v72 + 8 * v83);
    ++v75;
    if (v82)
    {
      v75 = v83;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_65:
  result = sub_21DBFC63C();
  __break(1u);
  return result;
}