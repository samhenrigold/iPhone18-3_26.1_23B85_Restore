uint64_t sub_251A87BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for PBCategorySeries(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for PBTypedData.OneOf_Raw;
  v9 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_251A85F5C(0, &qword_27F479048, type metadata accessor for PBCategorySeries, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v48 + v37, v12, qword_2813E6C90, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251A9FFEC(v12, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_251A9D40C(v12, v19, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v19, v17, type metadata accessor for PBTypedData.OneOf_Raw);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_251A9FFEC(v24, &qword_27F479048, type metadata accessor for PBCategorySeries);
      v29 = v39;
      sub_251A9D40C(v17, v39, type metadata accessor for PBCategorySeries);
      sub_251A9D40C(v29, v24, type metadata accessor for PBCategorySeries);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_251A9D3AC(v17, type metadata accessor for PBTypedData.OneOf_Raw);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_251A932D4(&qword_27F478FB8, type metadata accessor for PBCategorySeries, &unk_251C82284);
  v31 = v43;
  sub_251C70564();
  if (v31)
  {
    return sub_251A9FFEC(v24, &qword_27F479048, type metadata accessor for PBCategorySeries);
  }

  sub_251A9FF6C(v24, v30, &qword_27F479048, type metadata accessor for PBCategorySeries);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251A9FFEC(v24, &qword_27F479048, type metadata accessor for PBCategorySeries);
    return sub_251A9FFEC(v30, &qword_27F479048, type metadata accessor for PBCategorySeries);
  }

  else
  {
    v33 = v38;
    sub_251A9D40C(v30, v38, type metadata accessor for PBCategorySeries);
    if (v26 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v24, &qword_27F479048, type metadata accessor for PBCategorySeries);
    v34 = v48;
    v35 = v37;
    sub_251A9FFEC(v48 + v37, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v33, v34 + v35, type metadata accessor for PBCategorySeries);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_251A8822C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for PBWorkout(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for PBTypedData.OneOf_Raw;
  v9 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_251A85F5C(0, &qword_27F479050, type metadata accessor for PBWorkout, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v48 + v37, v12, qword_2813E6C90, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251A9FFEC(v12, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_251A9D40C(v12, v19, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v19, v17, type metadata accessor for PBTypedData.OneOf_Raw);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_251A9FFEC(v24, &qword_27F479050, type metadata accessor for PBWorkout);
      v29 = v39;
      sub_251A9D40C(v17, v39, type metadata accessor for PBWorkout);
      sub_251A9D40C(v29, v24, type metadata accessor for PBWorkout);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_251A9D3AC(v17, type metadata accessor for PBTypedData.OneOf_Raw);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_251A932D4(&qword_27F478FC0, type metadata accessor for PBWorkout, &unk_251C81CE4);
  v31 = v43;
  sub_251C70564();
  if (v31)
  {
    return sub_251A9FFEC(v24, &qword_27F479050, type metadata accessor for PBWorkout);
  }

  sub_251A9FF6C(v24, v30, &qword_27F479050, type metadata accessor for PBWorkout);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251A9FFEC(v24, &qword_27F479050, type metadata accessor for PBWorkout);
    return sub_251A9FFEC(v30, &qword_27F479050, type metadata accessor for PBWorkout);
  }

  else
  {
    v33 = v38;
    sub_251A9D40C(v30, v38, type metadata accessor for PBWorkout);
    if (v26 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v24, &qword_27F479050, type metadata accessor for PBWorkout);
    v34 = v48;
    v35 = v37;
    sub_251A9FFEC(v48 + v37, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v33, v34 + v35, type metadata accessor for PBWorkout);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_251A88888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for PBCharacteristics(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for PBTypedData.OneOf_Raw;
  v9 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_251A85F5C(0, &qword_27F479058, type metadata accessor for PBCharacteristics, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v48 + v37, v12, qword_2813E6C90, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251A9FFEC(v12, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_251A9D40C(v12, v19, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v19, v17, type metadata accessor for PBTypedData.OneOf_Raw);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_251A9FFEC(v24, &qword_27F479058, type metadata accessor for PBCharacteristics);
      v29 = v39;
      sub_251A9D40C(v17, v39, type metadata accessor for PBCharacteristics);
      sub_251A9D40C(v29, v24, type metadata accessor for PBCharacteristics);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_251A9D3AC(v17, type metadata accessor for PBTypedData.OneOf_Raw);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_251A932D4(&qword_27F478FC8, type metadata accessor for PBCharacteristics, &unk_251C81E4C);
  v31 = v43;
  sub_251C70564();
  if (v31)
  {
    return sub_251A9FFEC(v24, &qword_27F479058, type metadata accessor for PBCharacteristics);
  }

  sub_251A9FF6C(v24, v30, &qword_27F479058, type metadata accessor for PBCharacteristics);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251A9FFEC(v24, &qword_27F479058, type metadata accessor for PBCharacteristics);
    return sub_251A9FFEC(v30, &qword_27F479058, type metadata accessor for PBCharacteristics);
  }

  else
  {
    v33 = v38;
    sub_251A9D40C(v30, v38, type metadata accessor for PBCharacteristics);
    if (v26 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v24, &qword_27F479058, type metadata accessor for PBCharacteristics);
    v34 = v48;
    v35 = v37;
    sub_251A9FFEC(v48 + v37, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v33, v34 + v35, type metadata accessor for PBCharacteristics);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_251A88EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for PBAllClinicalRecords(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for PBTypedData.OneOf_Raw;
  v9 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_251A85F5C(0, &qword_27F479060, type metadata accessor for PBAllClinicalRecords, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v48 + v37, v12, qword_2813E6C90, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251A9FFEC(v12, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_251A9D40C(v12, v19, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v19, v17, type metadata accessor for PBTypedData.OneOf_Raw);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_251A9FFEC(v24, &qword_27F479060, type metadata accessor for PBAllClinicalRecords);
      v29 = v39;
      sub_251A9D40C(v17, v39, type metadata accessor for PBAllClinicalRecords);
      sub_251A9D40C(v29, v24, type metadata accessor for PBAllClinicalRecords);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_251A9D3AC(v17, type metadata accessor for PBTypedData.OneOf_Raw);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_251A932D4(&qword_27F478FD0, type metadata accessor for PBAllClinicalRecords, &unk_251C81B7C);
  v31 = v43;
  sub_251C70564();
  if (v31)
  {
    return sub_251A9FFEC(v24, &qword_27F479060, type metadata accessor for PBAllClinicalRecords);
  }

  sub_251A9FF6C(v24, v30, &qword_27F479060, type metadata accessor for PBAllClinicalRecords);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251A9FFEC(v24, &qword_27F479060, type metadata accessor for PBAllClinicalRecords);
    return sub_251A9FFEC(v30, &qword_27F479060, type metadata accessor for PBAllClinicalRecords);
  }

  else
  {
    v33 = v38;
    sub_251A9D40C(v30, v38, type metadata accessor for PBAllClinicalRecords);
    if (v26 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v24, &qword_27F479060, type metadata accessor for PBAllClinicalRecords);
    v34 = v48;
    v35 = v37;
    sub_251A9FFEC(v48 + v37, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v33, v34 + v35, type metadata accessor for PBAllClinicalRecords);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_251A89540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for PBECGs(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for PBTypedData.OneOf_Raw;
  v9 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_251A85F5C(0, &qword_27F479068, type metadata accessor for PBECGs, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v48 + v37, v12, qword_2813E6C90, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251A9FFEC(v12, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_251A9D40C(v12, v19, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v19, v17, type metadata accessor for PBTypedData.OneOf_Raw);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_251A9FFEC(v24, &qword_27F479068, type metadata accessor for PBECGs);
      v29 = v39;
      sub_251A9D40C(v17, v39, type metadata accessor for PBECGs);
      sub_251A9D40C(v29, v24, type metadata accessor for PBECGs);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_251A9D3AC(v17, type metadata accessor for PBTypedData.OneOf_Raw);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_251A932D4(&qword_27F478FD8, type metadata accessor for PBECGs, &unk_251C7F1EC);
  v31 = v43;
  sub_251C70564();
  if (v31)
  {
    return sub_251A9FFEC(v24, &qword_27F479068, type metadata accessor for PBECGs);
  }

  sub_251A9FF6C(v24, v30, &qword_27F479068, type metadata accessor for PBECGs);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251A9FFEC(v24, &qword_27F479068, type metadata accessor for PBECGs);
    return sub_251A9FFEC(v30, &qword_27F479068, type metadata accessor for PBECGs);
  }

  else
  {
    v33 = v38;
    sub_251A9D40C(v30, v38, type metadata accessor for PBECGs);
    if (v26 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v24, &qword_27F479068, type metadata accessor for PBECGs);
    v34 = v48;
    v35 = v37;
    sub_251A9FFEC(v48 + v37, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v33, v34 + v35, type metadata accessor for PBECGs);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_251A89B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for PBCycleTracking(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for PBTypedData.OneOf_Raw;
  v9 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_251A85F5C(0, &qword_27F479070, type metadata accessor for PBCycleTracking, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v48 + v37, v12, qword_2813E6C90, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251A9FFEC(v12, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_251A9D40C(v12, v19, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v19, v17, type metadata accessor for PBTypedData.OneOf_Raw);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_251A9FFEC(v24, &qword_27F479070, type metadata accessor for PBCycleTracking);
      v29 = v39;
      sub_251A9D40C(v17, v39, type metadata accessor for PBCycleTracking);
      sub_251A9D40C(v29, v24, type metadata accessor for PBCycleTracking);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_251A9D3AC(v17, type metadata accessor for PBTypedData.OneOf_Raw);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_251A932D4(&qword_27F478FE0, type metadata accessor for PBCycleTracking, &unk_251C7F96C);
  v31 = v43;
  sub_251C70564();
  if (v31)
  {
    return sub_251A9FFEC(v24, &qword_27F479070, type metadata accessor for PBCycleTracking);
  }

  sub_251A9FF6C(v24, v30, &qword_27F479070, type metadata accessor for PBCycleTracking);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251A9FFEC(v24, &qword_27F479070, type metadata accessor for PBCycleTracking);
    return sub_251A9FFEC(v30, &qword_27F479070, type metadata accessor for PBCycleTracking);
  }

  else
  {
    v33 = v38;
    sub_251A9D40C(v30, v38, type metadata accessor for PBCycleTracking);
    if (v26 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v24, &qword_27F479070, type metadata accessor for PBCycleTracking);
    v34 = v48;
    v35 = v37;
    sub_251A9FFEC(v48 + v37, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v33, v34 + v35, type metadata accessor for PBCycleTracking);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_251A8A1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for PBECGMeasurement(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for PBTypedData.OneOf_Raw;
  v9 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_251A85F5C(0, &qword_27F479078, type metadata accessor for PBECGMeasurement, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v48 + v37, v12, qword_2813E6C90, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251A9FFEC(v12, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_251A9D40C(v12, v19, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v19, v17, type metadata accessor for PBTypedData.OneOf_Raw);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_251A9FFEC(v24, &qword_27F479078, type metadata accessor for PBECGMeasurement);
      v29 = v39;
      sub_251A9D40C(v17, v39, type metadata accessor for PBECGMeasurement);
      sub_251A9D40C(v29, v24, type metadata accessor for PBECGMeasurement);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_251A9D3AC(v17, type metadata accessor for PBTypedData.OneOf_Raw);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_251A932D4(&qword_27F478FE8, type metadata accessor for PBECGMeasurement, &unk_251C7EF1C);
  v31 = v43;
  sub_251C70564();
  if (v31)
  {
    return sub_251A9FFEC(v24, &qword_27F479078, type metadata accessor for PBECGMeasurement);
  }

  sub_251A9FF6C(v24, v30, &qword_27F479078, type metadata accessor for PBECGMeasurement);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251A9FFEC(v24, &qword_27F479078, type metadata accessor for PBECGMeasurement);
    return sub_251A9FFEC(v30, &qword_27F479078, type metadata accessor for PBECGMeasurement);
  }

  else
  {
    v33 = v38;
    sub_251A9D40C(v30, v38, type metadata accessor for PBECGMeasurement);
    if (v26 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v24, &qword_27F479078, type metadata accessor for PBECGMeasurement);
    v34 = v48;
    v35 = v37;
    sub_251A9FFEC(v48 + v37, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v33, v34 + v35, type metadata accessor for PBECGMeasurement);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_251A8A854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for PBActivitySummarySeries(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for PBTypedData.OneOf_Raw;
  v9 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_251A85F5C(0, &qword_27F479080, type metadata accessor for PBActivitySummarySeries, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v48 + v37, v12, qword_2813E6C90, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251A9FFEC(v12, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_251A9D40C(v12, v19, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v19, v17, type metadata accessor for PBTypedData.OneOf_Raw);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_251A9FFEC(v24, &qword_27F479080, type metadata accessor for PBActivitySummarySeries);
      v29 = v39;
      sub_251A9D40C(v17, v39, type metadata accessor for PBActivitySummarySeries);
      sub_251A9D40C(v29, v24, type metadata accessor for PBActivitySummarySeries);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_251A9D3AC(v17, type metadata accessor for PBTypedData.OneOf_Raw);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_251A932D4(&qword_27F478FF0, type metadata accessor for PBActivitySummarySeries, &unk_251C7EDB4);
  v31 = v43;
  sub_251C70564();
  if (v31)
  {
    return sub_251A9FFEC(v24, &qword_27F479080, type metadata accessor for PBActivitySummarySeries);
  }

  sub_251A9FF6C(v24, v30, &qword_27F479080, type metadata accessor for PBActivitySummarySeries);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251A9FFEC(v24, &qword_27F479080, type metadata accessor for PBActivitySummarySeries);
    return sub_251A9FFEC(v30, &qword_27F479080, type metadata accessor for PBActivitySummarySeries);
  }

  else
  {
    v33 = v38;
    sub_251A9D40C(v30, v38, type metadata accessor for PBActivitySummarySeries);
    if (v26 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v24, &qword_27F479080, type metadata accessor for PBActivitySummarySeries);
    v34 = v48;
    v35 = v37;
    sub_251A9FFEC(v48 + v37, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v33, v34 + v35, type metadata accessor for PBActivitySummarySeries);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_251A8AEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for PBPatientMeta(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for PBTypedData.OneOf_Raw;
  v9 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_251A85F5C(0, &qword_27F479088, type metadata accessor for PBPatientMeta, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v48 + v37, v12, qword_2813E6C90, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251A9FFEC(v12, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_251A9D40C(v12, v19, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v19, v17, type metadata accessor for PBTypedData.OneOf_Raw);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_251A9FFEC(v24, &qword_27F479088, type metadata accessor for PBPatientMeta);
      v29 = v39;
      sub_251A9D40C(v17, v39, type metadata accessor for PBPatientMeta);
      sub_251A9D40C(v29, v24, type metadata accessor for PBPatientMeta);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_251A9D3AC(v17, type metadata accessor for PBTypedData.OneOf_Raw);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_251A932D4(&qword_27F478FF8, type metadata accessor for PBPatientMeta, &unk_251C7EAE4);
  v31 = v43;
  sub_251C70564();
  if (v31)
  {
    return sub_251A9FFEC(v24, &qword_27F479088, type metadata accessor for PBPatientMeta);
  }

  sub_251A9FF6C(v24, v30, &qword_27F479088, type metadata accessor for PBPatientMeta);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251A9FFEC(v24, &qword_27F479088, type metadata accessor for PBPatientMeta);
    return sub_251A9FFEC(v30, &qword_27F479088, type metadata accessor for PBPatientMeta);
  }

  else
  {
    v33 = v38;
    sub_251A9D40C(v30, v38, type metadata accessor for PBPatientMeta);
    if (v26 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v24, &qword_27F479088, type metadata accessor for PBPatientMeta);
    v34 = v48;
    v35 = v37;
    sub_251A9FFEC(v48 + v37, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v33, v34 + v35, type metadata accessor for PBPatientMeta);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_251A8B50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for PBSleepSummary(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for PBTypedData.OneOf_Raw;
  v9 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_251A85F5C(0, &qword_27F479090, type metadata accessor for PBSleepSummary, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v48 + v37, v12, qword_2813E6C90, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251A9FFEC(v12, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_251A9D40C(v12, v19, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v19, v17, type metadata accessor for PBTypedData.OneOf_Raw);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_251A9FFEC(v24, &qword_27F479090, type metadata accessor for PBSleepSummary);
      v29 = v39;
      sub_251A9D40C(v17, v39, type metadata accessor for PBSleepSummary);
      sub_251A9D40C(v29, v24, type metadata accessor for PBSleepSummary);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_251A9D3AC(v17, type metadata accessor for PBTypedData.OneOf_Raw);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_251A932D4(&qword_27F479000, type metadata accessor for PBSleepSummary, &unk_251C82554);
  v31 = v43;
  sub_251C70564();
  if (v31)
  {
    return sub_251A9FFEC(v24, &qword_27F479090, type metadata accessor for PBSleepSummary);
  }

  sub_251A9FF6C(v24, v30, &qword_27F479090, type metadata accessor for PBSleepSummary);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251A9FFEC(v24, &qword_27F479090, type metadata accessor for PBSleepSummary);
    return sub_251A9FFEC(v30, &qword_27F479090, type metadata accessor for PBSleepSummary);
  }

  else
  {
    v33 = v38;
    sub_251A9D40C(v30, v38, type metadata accessor for PBSleepSummary);
    if (v26 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v24, &qword_27F479090, type metadata accessor for PBSleepSummary);
    v34 = v48;
    v35 = v37;
    sub_251A9FFEC(v48 + v37, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v33, v34 + v35, type metadata accessor for PBSleepSummary);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_251A8BB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for PBSleepSeries(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for PBTypedData.OneOf_Raw;
  v9 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_251A85F5C(0, &qword_27F479098, type metadata accessor for PBSleepSeries, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v48 + v37, v12, qword_2813E6C90, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251A9FFEC(v12, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_251A9D40C(v12, v19, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v19, v17, type metadata accessor for PBTypedData.OneOf_Raw);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_251A9FFEC(v24, &qword_27F479098, type metadata accessor for PBSleepSeries);
      v29 = v39;
      sub_251A9D40C(v17, v39, type metadata accessor for PBSleepSeries);
      sub_251A9D40C(v29, v24, type metadata accessor for PBSleepSeries);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_251A9D3AC(v17, type metadata accessor for PBTypedData.OneOf_Raw);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_251A932D4(&qword_27F479008, type metadata accessor for PBSleepSeries, &unk_251C82824);
  v31 = v43;
  sub_251C70564();
  if (v31)
  {
    return sub_251A9FFEC(v24, &qword_27F479098, type metadata accessor for PBSleepSeries);
  }

  sub_251A9FF6C(v24, v30, &qword_27F479098, type metadata accessor for PBSleepSeries);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251A9FFEC(v24, &qword_27F479098, type metadata accessor for PBSleepSeries);
    return sub_251A9FFEC(v30, &qword_27F479098, type metadata accessor for PBSleepSeries);
  }

  else
  {
    v33 = v38;
    sub_251A9D40C(v30, v38, type metadata accessor for PBSleepSeries);
    if (v26 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v24, &qword_27F479098, type metadata accessor for PBSleepSeries);
    v34 = v48;
    v35 = v37;
    sub_251A9FFEC(v48 + v37, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v33, v34 + v35, type metadata accessor for PBSleepSeries);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_251A8C1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for PBHistogramSeries(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for PBTypedData.OneOf_Raw;
  v9 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_251A85F5C(0, &qword_27F4790A0, type metadata accessor for PBHistogramSeries, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v48 + v37, v12, qword_2813E6C90, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251A9FFEC(v12, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_251A9D40C(v12, v19, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v19, v17, type metadata accessor for PBTypedData.OneOf_Raw);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_251A9FFEC(v24, &qword_27F4790A0, type metadata accessor for PBHistogramSeries);
      v29 = v39;
      sub_251A9D40C(v17, v39, type metadata accessor for PBHistogramSeries);
      sub_251A9D40C(v29, v24, type metadata accessor for PBHistogramSeries);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_251A9D3AC(v17, type metadata accessor for PBTypedData.OneOf_Raw);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_251A932D4(&qword_27F479010, type metadata accessor for PBHistogramSeries, &unk_251C82AF4);
  v31 = v43;
  sub_251C70564();
  if (v31)
  {
    return sub_251A9FFEC(v24, &qword_27F4790A0, type metadata accessor for PBHistogramSeries);
  }

  sub_251A9FF6C(v24, v30, &qword_27F4790A0, type metadata accessor for PBHistogramSeries);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251A9FFEC(v24, &qword_27F4790A0, type metadata accessor for PBHistogramSeries);
    return sub_251A9FFEC(v30, &qword_27F4790A0, type metadata accessor for PBHistogramSeries);
  }

  else
  {
    v33 = v38;
    sub_251A9D40C(v30, v38, type metadata accessor for PBHistogramSeries);
    if (v26 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v24, &qword_27F4790A0, type metadata accessor for PBHistogramSeries);
    v34 = v48;
    v35 = v37;
    sub_251A9FFEC(v48 + v37, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v33, v34 + v35, type metadata accessor for PBHistogramSeries);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_251A8C820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for PBMedicationTrackings(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for PBTypedData.OneOf_Raw;
  v9 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_251A85F5C(0, &qword_27F4790A8, type metadata accessor for PBMedicationTrackings, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v48 + v37, v12, qword_2813E6C90, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251A9FFEC(v12, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_251A9D40C(v12, v19, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v19, v17, type metadata accessor for PBTypedData.OneOf_Raw);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_251A9FFEC(v24, &qword_27F4790A8, type metadata accessor for PBMedicationTrackings);
      v29 = v39;
      sub_251A9D40C(v17, v39, type metadata accessor for PBMedicationTrackings);
      sub_251A9D40C(v29, v24, type metadata accessor for PBMedicationTrackings);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_251A9D3AC(v17, type metadata accessor for PBTypedData.OneOf_Raw);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_251A932D4(&qword_27F479018, type metadata accessor for PBMedicationTrackings, &unk_251C7E224);
  v31 = v43;
  sub_251C70564();
  if (v31)
  {
    return sub_251A9FFEC(v24, &qword_27F4790A8, type metadata accessor for PBMedicationTrackings);
  }

  sub_251A9FF6C(v24, v30, &qword_27F4790A8, type metadata accessor for PBMedicationTrackings);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251A9FFEC(v24, &qword_27F4790A8, type metadata accessor for PBMedicationTrackings);
    return sub_251A9FFEC(v30, &qword_27F4790A8, type metadata accessor for PBMedicationTrackings);
  }

  else
  {
    v33 = v38;
    sub_251A9D40C(v30, v38, type metadata accessor for PBMedicationTrackings);
    if (v26 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v24, &qword_27F4790A8, type metadata accessor for PBMedicationTrackings);
    v34 = v48;
    v35 = v37;
    sub_251A9FFEC(v48 + v37, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v33, v34 + v35, type metadata accessor for PBMedicationTrackings);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_251A8CE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for PBMedicationTrackingDoseEvents(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for PBTypedData.OneOf_Raw;
  v9 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_251A85F5C(0, &qword_27F4790B0, type metadata accessor for PBMedicationTrackingDoseEvents, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v48 + v37, v12, qword_2813E6C90, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251A9FFEC(v12, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_251A9D40C(v12, v19, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v19, v17, type metadata accessor for PBTypedData.OneOf_Raw);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_251A9FFEC(v24, &qword_27F4790B0, type metadata accessor for PBMedicationTrackingDoseEvents);
      v29 = v39;
      sub_251A9D40C(v17, v39, type metadata accessor for PBMedicationTrackingDoseEvents);
      sub_251A9D40C(v29, v24, type metadata accessor for PBMedicationTrackingDoseEvents);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_251A9D3AC(v17, type metadata accessor for PBTypedData.OneOf_Raw);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_251A932D4(&qword_27F479020, type metadata accessor for PBMedicationTrackingDoseEvents, &unk_251C7DF04);
  v31 = v43;
  sub_251C70564();
  if (v31)
  {
    return sub_251A9FFEC(v24, &qword_27F4790B0, type metadata accessor for PBMedicationTrackingDoseEvents);
  }

  sub_251A9FF6C(v24, v30, &qword_27F4790B0, type metadata accessor for PBMedicationTrackingDoseEvents);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251A9FFEC(v24, &qword_27F4790B0, type metadata accessor for PBMedicationTrackingDoseEvents);
    return sub_251A9FFEC(v30, &qword_27F4790B0, type metadata accessor for PBMedicationTrackingDoseEvents);
  }

  else
  {
    v33 = v38;
    sub_251A9D40C(v30, v38, type metadata accessor for PBMedicationTrackingDoseEvents);
    if (v26 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v24, &qword_27F4790B0, type metadata accessor for PBMedicationTrackingDoseEvents);
    v34 = v48;
    v35 = v37;
    sub_251A9FFEC(v48 + v37, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v33, v34 + v35, type metadata accessor for PBMedicationTrackingDoseEvents);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_251A8D4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for PBMedicationTrackingSchedules(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for PBTypedData.OneOf_Raw;
  v9 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_251A85F5C(0, &qword_27F4790B8, type metadata accessor for PBMedicationTrackingSchedules, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v48 + v37, v12, qword_2813E6C90, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251A9FFEC(v12, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_251A9D40C(v12, v19, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v19, v17, type metadata accessor for PBTypedData.OneOf_Raw);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_251A9FFEC(v24, &qword_27F4790B8, type metadata accessor for PBMedicationTrackingSchedules);
      v29 = v39;
      sub_251A9D40C(v17, v39, type metadata accessor for PBMedicationTrackingSchedules);
      sub_251A9D40C(v29, v24, type metadata accessor for PBMedicationTrackingSchedules);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_251A9D3AC(v17, type metadata accessor for PBTypedData.OneOf_Raw);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_251A932D4(&qword_27F479028, type metadata accessor for PBMedicationTrackingSchedules, &unk_251C7DAA4);
  v31 = v43;
  sub_251C70564();
  if (v31)
  {
    return sub_251A9FFEC(v24, &qword_27F4790B8, type metadata accessor for PBMedicationTrackingSchedules);
  }

  sub_251A9FF6C(v24, v30, &qword_27F4790B8, type metadata accessor for PBMedicationTrackingSchedules);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251A9FFEC(v24, &qword_27F4790B8, type metadata accessor for PBMedicationTrackingSchedules);
    return sub_251A9FFEC(v30, &qword_27F4790B8, type metadata accessor for PBMedicationTrackingSchedules);
  }

  else
  {
    v33 = v38;
    sub_251A9D40C(v30, v38, type metadata accessor for PBMedicationTrackingSchedules);
    if (v26 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v24, &qword_27F4790B8, type metadata accessor for PBMedicationTrackingSchedules);
    v34 = v48;
    v35 = v37;
    sub_251A9FFEC(v48 + v37, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v33, v34 + v35, type metadata accessor for PBMedicationTrackingSchedules);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_251A8DB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v4 = type metadata accessor for PBActiveMedications(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v8;
  v41 = type metadata accessor for PBTypedData.OneOf_Raw;
  v9 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_251A85F5C(0, &qword_27F4790C0, type metadata accessor for PBActiveMedications, v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  v40 = v5;
  v25 = *(v5 + 56);
  v44 = v4;
  v25(&v36 - v23, 1, 1, v4);
  v37 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v48 + v37, v12, qword_2813E6C90, v41);
  v41 = v14;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251A9FFEC(v12, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v27 = v44;
    v28 = v13;
  }

  else
  {
    sub_251A9D40C(v12, v19, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v19, v17, type metadata accessor for PBTypedData.OneOf_Raw);
    v28 = v13;
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_251A9FFEC(v24, &qword_27F4790C0, type metadata accessor for PBActiveMedications);
      v29 = v39;
      sub_251A9D40C(v17, v39, type metadata accessor for PBActiveMedications);
      sub_251A9D40C(v29, v24, type metadata accessor for PBActiveMedications);
      v27 = v44;
      v25(v24, 0, 1, v44);
    }

    else
    {
      sub_251A9D3AC(v17, type metadata accessor for PBTypedData.OneOf_Raw);
      v27 = v44;
    }
  }

  v30 = v42;
  sub_251A932D4(&qword_27F479030, type metadata accessor for PBActiveMedications, &unk_251C7E544);
  v31 = v43;
  sub_251C70564();
  if (v31)
  {
    return sub_251A9FFEC(v24, &qword_27F4790C0, type metadata accessor for PBActiveMedications);
  }

  sub_251A9FF6C(v24, v30, &qword_27F4790C0, type metadata accessor for PBActiveMedications);
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_251A9FFEC(v24, &qword_27F4790C0, type metadata accessor for PBActiveMedications);
    return sub_251A9FFEC(v30, &qword_27F4790C0, type metadata accessor for PBActiveMedications);
  }

  else
  {
    v33 = v38;
    sub_251A9D40C(v30, v38, type metadata accessor for PBActiveMedications);
    if (v26 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v24, &qword_27F4790C0, type metadata accessor for PBActiveMedications);
    v34 = v48;
    v35 = v37;
    sub_251A9FFEC(v48 + v37, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v33, v34 + v35, type metadata accessor for PBActiveMedications);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 7))(v34 + v35, 0, 1, v28);
  }
}

uint64_t sub_251A8E190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = *v3;
  v13 = *(v5 + 8);
  nullsub_1();
  if (!v14 || (v18 = v12, v19 = v13, sub_251A9D358(), result = sub_251C70604(), !v4))
  {
    result = sub_251A8E5C0(v5, a1, a2, a3);
    if (!v4)
    {
      v16 = type metadata accessor for PBTypedData(0);
      sub_251A9FF6C(v5 + *(v16 + 20), v11, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
      v17 = type metadata accessor for PBTypedData.OneOf_Raw(0);
      if ((*(*(v17 - 8) + 48))(v11, 1, v17) != 1)
      {
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            sub_251A8EA7C(v5, a1, a2, a3);
            break;
          case 2u:
            sub_251A8ECF0(v5, a1, a2, a3);
            break;
          case 3u:
            sub_251A8EF64(v5, a1, a2, a3);
            break;
          case 4u:
            sub_251A8F1D8(v5, a1, a2, a3);
            break;
          case 5u:
            sub_251A8F44C(v5, a1, a2, a3);
            break;
          case 6u:
            sub_251A8F6C0(v5, a1, a2, a3);
            break;
          case 7u:
            sub_251A8F934(v5, a1, a2, a3);
            break;
          case 8u:
            sub_251A8FBA8(v5, a1, a2, a3);
            break;
          case 9u:
            sub_251A8FE1C(v5, a1, a2, a3);
            break;
          case 0xAu:
            sub_251A90090(v5, a1, a2, a3);
            break;
          case 0xBu:
            sub_251A90304(v5, a1, a2, a3);
            break;
          case 0xCu:
            sub_251A90578(v5, a1, a2, a3);
            break;
          case 0xDu:
            sub_251A907EC(v5, a1, a2, a3);
            break;
          case 0xEu:
            sub_251A90A60(v5, a1, a2, a3);
            break;
          case 0xFu:
            sub_251A90CD4(v5, a1, a2, a3);
            break;
          case 0x10u:
            sub_251A90F48(v5, a1, a2, a3);
            break;
          default:
            sub_251A8E80C(v5, a1, a2, a3);
            break;
        }

        sub_251A9D3AC(v11, type metadata accessor for PBTypedData.OneOf_Raw);
      }

      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251A8E5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251A85F5C(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBDateRange(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v12 + 28), v7, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251A9FFEC(v7, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  sub_251A9D40C(v7, v11, type metadata accessor for PBDateRange);
  sub_251A932D4(&qword_27F479038, type metadata accessor for PBDateRange, &unk_251C83094);
  sub_251C706A4();
  return sub_251A9D3AC(v11, type metadata accessor for PBDateRange);
}

uint64_t sub_251A8E80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBTimeSeries(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v11 + 20), v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v12 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251A9FFEC(v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_251A9D40C(v7, v10, type metadata accessor for PBTimeSeries);
    sub_251A932D4(&qword_27F478FB0, type metadata accessor for PBTimeSeries, &unk_251C82F2C);
    sub_251C706A4();
    return sub_251A9D3AC(v10, type metadata accessor for PBTimeSeries);
  }

  result = sub_251A9D3AC(v7, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A8EA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBCategorySeries(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v11 + 20), v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v12 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251A9FFEC(v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_251A9D40C(v7, v10, type metadata accessor for PBCategorySeries);
    sub_251A932D4(&qword_27F478FB8, type metadata accessor for PBCategorySeries, &unk_251C82284);
    sub_251C706A4();
    return sub_251A9D3AC(v10, type metadata accessor for PBCategorySeries);
  }

  result = sub_251A9D3AC(v7, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A8ECF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBWorkout(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v11 + 20), v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v12 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251A9FFEC(v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_251A9D40C(v7, v10, type metadata accessor for PBWorkout);
    sub_251A932D4(&qword_27F478FC0, type metadata accessor for PBWorkout, &unk_251C81CE4);
    sub_251C706A4();
    return sub_251A9D3AC(v10, type metadata accessor for PBWorkout);
  }

  result = sub_251A9D3AC(v7, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A8EF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBCharacteristics(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v11 + 20), v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v12 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251A9FFEC(v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_251A9D40C(v7, v10, type metadata accessor for PBCharacteristics);
    sub_251A932D4(&qword_27F478FC8, type metadata accessor for PBCharacteristics, &unk_251C81E4C);
    sub_251C706A4();
    return sub_251A9D3AC(v10, type metadata accessor for PBCharacteristics);
  }

  result = sub_251A9D3AC(v7, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A8F1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBAllClinicalRecords(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v11 + 20), v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v12 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251A9FFEC(v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_251A9D40C(v7, v10, type metadata accessor for PBAllClinicalRecords);
    sub_251A932D4(&qword_27F478FD0, type metadata accessor for PBAllClinicalRecords, &unk_251C81B7C);
    sub_251C706A4();
    return sub_251A9D3AC(v10, type metadata accessor for PBAllClinicalRecords);
  }

  result = sub_251A9D3AC(v7, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A8F44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBECGs(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v11 + 20), v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v12 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251A9FFEC(v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_251A9D40C(v7, v10, type metadata accessor for PBECGs);
    sub_251A932D4(&qword_27F478FD8, type metadata accessor for PBECGs, &unk_251C7F1EC);
    sub_251C706A4();
    return sub_251A9D3AC(v10, type metadata accessor for PBECGs);
  }

  result = sub_251A9D3AC(v7, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A8F6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBCycleTracking(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v11 + 20), v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v12 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251A9FFEC(v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_251A9D40C(v7, v10, type metadata accessor for PBCycleTracking);
    sub_251A932D4(&qword_27F478FE0, type metadata accessor for PBCycleTracking, &unk_251C7F96C);
    sub_251C706A4();
    return sub_251A9D3AC(v10, type metadata accessor for PBCycleTracking);
  }

  result = sub_251A9D3AC(v7, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A8F934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBECGMeasurement(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v11 + 20), v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v12 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251A9FFEC(v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_251A9D40C(v7, v10, type metadata accessor for PBECGMeasurement);
    sub_251A932D4(&qword_27F478FE8, type metadata accessor for PBECGMeasurement, &unk_251C7EF1C);
    sub_251C706A4();
    return sub_251A9D3AC(v10, type metadata accessor for PBECGMeasurement);
  }

  result = sub_251A9D3AC(v7, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A8FBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBActivitySummarySeries(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v11 + 20), v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v12 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251A9FFEC(v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_251A9D40C(v7, v10, type metadata accessor for PBActivitySummarySeries);
    sub_251A932D4(&qword_27F478FF0, type metadata accessor for PBActivitySummarySeries, &unk_251C7EDB4);
    sub_251C706A4();
    return sub_251A9D3AC(v10, type metadata accessor for PBActivitySummarySeries);
  }

  result = sub_251A9D3AC(v7, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A8FE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBPatientMeta(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v11 + 20), v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v12 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251A9FFEC(v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_251A9D40C(v7, v10, type metadata accessor for PBPatientMeta);
    sub_251A932D4(&qword_27F478FF8, type metadata accessor for PBPatientMeta, &unk_251C7EAE4);
    sub_251C706A4();
    return sub_251A9D3AC(v10, type metadata accessor for PBPatientMeta);
  }

  result = sub_251A9D3AC(v7, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A90090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBSleepSummary(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v11 + 20), v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v12 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251A9FFEC(v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_251A9D40C(v7, v10, type metadata accessor for PBSleepSummary);
    sub_251A932D4(&qword_27F479000, type metadata accessor for PBSleepSummary, &unk_251C82554);
    sub_251C706A4();
    return sub_251A9D3AC(v10, type metadata accessor for PBSleepSummary);
  }

  result = sub_251A9D3AC(v7, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A90304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBSleepSeries(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v11 + 20), v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v12 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251A9FFEC(v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_251A9D40C(v7, v10, type metadata accessor for PBSleepSeries);
    sub_251A932D4(&qword_27F479008, type metadata accessor for PBSleepSeries, &unk_251C82824);
    sub_251C706A4();
    return sub_251A9D3AC(v10, type metadata accessor for PBSleepSeries);
  }

  result = sub_251A9D3AC(v7, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A90578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHistogramSeries(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v11 + 20), v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v12 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251A9FFEC(v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_251A9D40C(v7, v10, type metadata accessor for PBHistogramSeries);
    sub_251A932D4(&qword_27F479010, type metadata accessor for PBHistogramSeries, &unk_251C82AF4);
    sub_251C706A4();
    return sub_251A9D3AC(v10, type metadata accessor for PBHistogramSeries);
  }

  result = sub_251A9D3AC(v7, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A907EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBMedicationTrackings(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v11 + 20), v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v12 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251A9FFEC(v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_251A9D40C(v7, v10, type metadata accessor for PBMedicationTrackings);
    sub_251A932D4(&qword_27F479018, type metadata accessor for PBMedicationTrackings, &unk_251C7E224);
    sub_251C706A4();
    return sub_251A9D3AC(v10, type metadata accessor for PBMedicationTrackings);
  }

  result = sub_251A9D3AC(v7, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A90A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBMedicationTrackingDoseEvents(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v11 + 20), v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v12 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251A9FFEC(v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_251A9D40C(v7, v10, type metadata accessor for PBMedicationTrackingDoseEvents);
    sub_251A932D4(&qword_27F479020, type metadata accessor for PBMedicationTrackingDoseEvents, &unk_251C7DF04);
    sub_251C706A4();
    return sub_251A9D3AC(v10, type metadata accessor for PBMedicationTrackingDoseEvents);
  }

  result = sub_251A9D3AC(v7, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A90CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBMedicationTrackingSchedules(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v11 + 20), v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v12 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251A9FFEC(v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    sub_251A9D40C(v7, v10, type metadata accessor for PBMedicationTrackingSchedules);
    sub_251A932D4(&qword_27F479028, type metadata accessor for PBMedicationTrackingSchedules, &unk_251C7DAA4);
    sub_251C706A4();
    return sub_251A9D3AC(v10, type metadata accessor for PBMedicationTrackingSchedules);
  }

  result = sub_251A9D3AC(v7, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A90F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBActiveMedications(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v11 + 20), v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v12 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251A9FFEC(v7, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    sub_251A9D40C(v7, v10, type metadata accessor for PBActiveMedications);
    sub_251A932D4(&qword_27F479030, type metadata accessor for PBActiveMedications, &unk_251C7E544);
    sub_251C706A4();
    return sub_251A9D3AC(v10, type metadata accessor for PBActiveMedications);
  }

  result = sub_251A9D3AC(v7, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A911C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = *(a1 + 20);
  v5 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  sub_251C703A4();
  v6 = *(a1 + 28);
  v7 = type metadata accessor for PBDateRange(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_251A912B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251A91328(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_251A913F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251A932D4(&qword_27F478FA0, type metadata accessor for PBTypedData, &unk_251C74C34);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251A91490(uint64_t a1)
{
  v2 = sub_251A932D4(&qword_27F478F48, type metadata accessor for PBTypedData, &unk_251C74C6C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251A914FC(uint64_t a1, uint64_t a2)
{
  sub_251A932D4(&qword_27F478F48, type metadata accessor for PBTypedData, &unk_251C74C6C);

  return sub_251C705C4();
}

uint64_t sub_251A91578()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1B20);
  __swift_project_value_buffer(v0, qword_27F4A1B20);
  sub_251A85F5C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_251C747F0;
  v5 = v17 + v4;
  v6 = v17 + v4 + *(v2 + 56);
  *(v17 + v4) = 1;
  *v6 = "dlid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "aes_gcm_key";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "date_range";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "type";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v3 + *(v2 + 56);
  *(v5 + 4 * v3) = 5;
  *v15 = "ecgMeta";
  *(v15 + 8) = 7;
  *(v15 + 16) = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251A91828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_251C70534();
        }

        else if (result == 2)
        {
          sub_251C704D4();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_251A91954(a1, v5, a2, a3);
            break;
          case 4:
            sub_251A9D358();
            sub_251C70494();
            break;
          case 5:
            sub_251A91A08(v5, a1, a2, a3);
            break;
        }
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251A91954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBReference(0);
  type metadata accessor for PBDateRange(0);
  sub_251A932D4(&qword_27F479038, type metadata accessor for PBDateRange, &unk_251C83094);
  return sub_251C70564();
}

uint64_t sub_251A91A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a1;
  v4 = type metadata accessor for PBECGMeta(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v41 = &v36 - v8;
  v9 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for PBReference.OneOf_Metadata(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v40 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - v17;
  sub_251A85F5C(0, &qword_27F479110, type metadata accessor for PBECGMeta, v9);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v42 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v36 - v22;
  v39 = v5;
  v24 = *(v5 + 56);
  v43 = v4;
  v24(&v36 - v22, 1, 1, v4);
  v25 = *(type metadata accessor for PBReference(0) + 28);
  sub_251A9FF6C(v48 + v25, v12, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata);
  v36 = v14;
  v37 = v13;
  v26 = (*(v14 + 48))(v12, 1, v13);
  if (v26 == 1)
  {
    sub_251A9FFEC(v12, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata);
    v27 = v43;
  }

  else
  {
    sub_251A9D40C(v12, v18, type metadata accessor for PBReference.OneOf_Metadata);
    v28 = v40;
    sub_251A9D40C(v18, v40, type metadata accessor for PBReference.OneOf_Metadata);
    sub_251A9FFEC(v23, &qword_27F479110, type metadata accessor for PBECGMeta);
    v29 = v28;
    v30 = v41;
    sub_251A9D40C(v29, v41, type metadata accessor for PBECGMeta);
    sub_251A9D40C(v30, v23, type metadata accessor for PBECGMeta);
    v27 = v43;
    v24(v23, 0, 1, v43);
  }

  sub_251A932D4(&qword_27F479108, type metadata accessor for PBECGMeta, &unk_251C7F084);
  v31 = v44;
  sub_251C70564();
  v32 = v42;
  if (v31)
  {
    return sub_251A9FFEC(v23, &qword_27F479110, type metadata accessor for PBECGMeta);
  }

  sub_251A9FF6C(v23, v42, &qword_27F479110, type metadata accessor for PBECGMeta);
  if ((*(v39 + 48))(v32, 1, v27) == 1)
  {
    sub_251A9FFEC(v23, &qword_27F479110, type metadata accessor for PBECGMeta);
    return sub_251A9FFEC(v32, &qword_27F479110, type metadata accessor for PBECGMeta);
  }

  else
  {
    v34 = v38;
    sub_251A9D40C(v32, v38, type metadata accessor for PBECGMeta);
    if (v26 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v23, &qword_27F479110, type metadata accessor for PBECGMeta);
    v35 = v48;
    sub_251A9FFEC(v48 + v25, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata);
    sub_251A9D40C(v34, v35 + v25, type metadata accessor for PBECGMeta);
    return (*(v36 + 56))(v35 + v25, 0, 1, v37);
  }
}

uint64_t sub_251A92000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_251C70674(), !v4))
  {
    v11 = v3[2];
    v12 = v3[3];
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_14;
      }

      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
    }

    else
    {
      if (!v13)
      {
        if ((v12 & 0xFF000000000000) == 0)
        {
LABEL_14:
          result = sub_251A9218C(v3, a1, a2, a3);
          if (!v4)
          {
            nullsub_1();
            sub_251A9D358();
            sub_251C70604();
            sub_251A923D8(v3, a1, a2, a3);
            type metadata accessor for PBReference(0);
            return sub_251C70394();
          }

          return result;
        }

LABEL_13:
        result = sub_251C70624();
        if (v4)
        {
          return result;
        }

        goto LABEL_14;
      }

      v14 = v11;
      v15 = v11 >> 32;
    }

    if (v14 == v15)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t sub_251A9218C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251A85F5C(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBDateRange(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBReference(0);
  sub_251A9FF6C(a1 + *(v12 + 36), v7, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251A9FFEC(v7, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  sub_251A9D40C(v7, v11, type metadata accessor for PBDateRange);
  sub_251A932D4(&qword_27F479038, type metadata accessor for PBDateRange, &unk_251C83094);
  sub_251C706A4();
  return sub_251A9D3AC(v11, type metadata accessor for PBDateRange);
}

uint64_t sub_251A923D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_251A85F5C(0, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBECGMeta(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBReference(0);
  sub_251A9FF6C(a1 + *(v11 + 28), v7, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata);
  v12 = type metadata accessor for PBReference.OneOf_Metadata(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    return sub_251A9FFEC(v7, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata);
  }

  sub_251A9D40C(v7, v10, type metadata accessor for PBECGMeta);
  sub_251A932D4(&qword_27F479108, type metadata accessor for PBECGMeta, &unk_251C7F084);
  sub_251C706A4();
  return sub_251A9D3AC(v10, type metadata accessor for PBECGMeta);
}

uint64_t sub_251A92618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = xmmword_251C745D0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v4 = *(a1 + 28);
  v5 = type metadata accessor for PBReference.OneOf_Metadata(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  sub_251C703A4();
  v6 = *(a1 + 36);
  v7 = type metadata accessor for PBDateRange(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_251A92720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251A92794(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_251A9285C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251A932D4(&qword_27F479100, type metadata accessor for PBReference, &unk_251C74ACC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251A928FC(uint64_t a1)
{
  v2 = sub_251A932D4(&qword_27F478F28, type metadata accessor for PBReference, &unk_251C74B04);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251A92968(uint64_t a1, uint64_t a2)
{
  sub_251A932D4(&qword_27F478F28, type metadata accessor for PBReference, &unk_251C74B04);

  return sub_251C705C4();
}

uint64_t sub_251A92A00(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_251C706D4();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  sub_251A85F5C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v9 = v8 - 8;
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_251C74800;
  v12 = v11 + v10 + *(v9 + 56);
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x277D21870];
  v14 = sub_251C706B4();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return sub_251C706C4();
}

uint64_t sub_251A92B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C70444();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for PBReference(0);
        sub_251A932D4(&qword_27F478F28, type metadata accessor for PBReference, &unk_251C74B04);
        sub_251C70554();
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251A92C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PBReference(0), sub_251A932D4(&qword_27F478F28, type metadata accessor for PBReference, &unk_251C74B04), result = sub_251C70694(), !v4))
  {
    type metadata accessor for PBReferences(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251A92D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251A92DD8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_251A92E7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251A932D4(&qword_27F479128, type metadata accessor for PBReferences, &unk_251C74964);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251A92F1C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_251C706D4();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_251A92FB8(uint64_t a1)
{
  v2 = sub_251A932D4(&qword_27F478F08, type metadata accessor for PBReferences, &unk_251C7499C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251A93024(uint64_t a1, uint64_t a2)
{
  sub_251C71AA4();
  sub_251C70E94();
  return sub_251C71AD4();
}

uint64_t sub_251A9307C(uint64_t a1, uint64_t a2)
{
  sub_251A932D4(&qword_27F478F08, type metadata accessor for PBReferences, &unk_251C7499C);

  return sub_251C705C4();
}

uint64_t sub_251A930F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_251C71AA4();
  sub_251C70E94();
  return sub_251C71AD4();
}

uint64_t sub_251A9314C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_251A9CBD8(*a1, *a2, type metadata accessor for PBReference, type metadata accessor for PBReference, sub_251A9F650, type metadata accessor for PBReference) & 1) == 0)
  {
    return 0;
  }

  sub_251C703B4();
  sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251A932D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_251A93770(uint64_t a1)
{
  if (!qword_27F478F90)
  {
    sub_251C706B4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F478F90);
    }
  }
}

uint64_t sub_251A937D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBECGMeasurement(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v33 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_75:
    v32 = 0;
    return v32 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v32 = 1;
    return v32 & 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = a1 + v13;
  v34 = a2 + v13;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_251AA005C(v14 + v15 * v12, v10, type metadata accessor for PBECGMeasurement);
    if (v12 == v11)
    {
      break;
    }

    sub_251AA005C(v34 + v15 * v12, v7, type metadata accessor for PBECGMeasurement);
    v17 = *v10 == *v7 && *(v10 + 1) == *(v7 + 1);
    if (!v17 && (sub_251C719D4() & 1) == 0 || *(v10 + 4) != *(v7 + 4) || (*(v10 + 3) != *(v7 + 3) || *(v10 + 4) != *(v7 + 4)) && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_74;
    }

    if ((*(v10 + 5) != *(v7 + 5) || *(v10 + 6) != *(v7 + 6)) && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_74;
    }

    if ((*(v10 + 7) != *(v7 + 7) || *(v10 + 8) != *(v7 + 8)) && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_74;
    }

    result = *(v10 + 9);
    if (result != *(v7 + 9) || *(v10 + 10) != *(v7 + 10))
    {
      result = sub_251C719D4();
      if ((result & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    v18 = *(v10 + 11);
    v19 = *(v7 + 11);
    v20 = *(v18 + 16);
    if (v20 != *(v19 + 16))
    {
      goto LABEL_74;
    }

    if (v20 && v18 != v19)
    {
      v21 = (v18 + 40);
      v22 = (v19 + 40);
      while (1)
      {
        result = *(v21 - 1);
        if (result != *(v22 - 1) || *v21 != *v22)
        {
          result = sub_251C719D4();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        v21 += 2;
        v22 += 2;
        if (!--v20)
        {
          goto LABEL_35;
        }
      }

LABEL_74:
      sub_251A9D3AC(v7, type metadata accessor for PBECGMeasurement);
      sub_251A9D3AC(v10, type metadata accessor for PBECGMeasurement);
      goto LABEL_75;
    }

LABEL_35:
    v24 = *(v10 + 12);
    v25 = *(v7 + 12);
    v26 = *(v24 + 16);
    if (v26 != *(v25 + 16))
    {
      goto LABEL_74;
    }

    if (v26)
    {
      v27 = v24 == v25;
    }

    else
    {
      v27 = 1;
    }

    if (!v27)
    {
      v28 = (v24 + 32);
      v29 = (v25 + 32);
      while (v26)
      {
        if (*v28 != *v29)
        {
          goto LABEL_74;
        }

        ++v28;
        ++v29;
        if (!--v26)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
      break;
    }

LABEL_44:
    if (*(v10 + 26) != *(v7 + 26))
    {
      goto LABEL_74;
    }

    v30 = *(v10 + 14);
    if (v10[120] == 1)
    {
      v30 = qword_251C74E50[v30];
    }

    v31 = *(v7 + 14);
    if (v7[120])
    {
      if (v31 > 3)
      {
        if (v31 > 5)
        {
          if (v31 == 6)
          {
            if (v30 != 6)
            {
              goto LABEL_74;
            }
          }

          else if (v30 != 100)
          {
            goto LABEL_74;
          }
        }

        else if (v31 == 4)
        {
          if (v30 != 4)
          {
            goto LABEL_74;
          }
        }

        else if (v30 != 5)
        {
          goto LABEL_74;
        }
      }

      else if (v31 > 1)
      {
        if (v31 == 2)
        {
          if (v30 != 2)
          {
            goto LABEL_74;
          }
        }

        else if (v30 != 3)
        {
          goto LABEL_74;
        }
      }

      else if (v31)
      {
        if (v30 != 1)
        {
          goto LABEL_74;
        }
      }

      else if (v30)
      {
        goto LABEL_74;
      }
    }

    else if (v30 != v31)
    {
      goto LABEL_74;
    }

    sub_251C703B4();
    sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v32 = sub_251C70ED4();
    sub_251A9D3AC(v7, type metadata accessor for PBECGMeasurement);
    sub_251A9D3AC(v10, type metadata accessor for PBECGMeasurement);
    if ((v32 & 1) != 0 && ++v12 != v11)
    {
      continue;
    }

    return v32 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_251A93C70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_251A93D48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBMedicationTrackingDoseEvent(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v20 = 1;
      return v20 & 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_251AA005C(v13, v10, type metadata accessor for PBMedicationTrackingDoseEvent);
      sub_251AA005C(v14, v7, type metadata accessor for PBMedicationTrackingDoseEvent);
      v16 = *v10;
      v17 = *v7;
      if (v7[8] == 1)
      {
        if (v17)
        {
          if (v17 == 1)
          {
            if (v16 != 1)
            {
              break;
            }
          }

          else if (v16 != 2)
          {
            break;
          }
        }

        else if (v16)
        {
          break;
        }
      }

      else if (v16 != v17)
      {
        break;
      }

      v18 = *(v10 + 2);
      v19 = *(v7 + 2);
      if (v7[24] == 1)
      {
        if (v19 <= 2)
        {
          if (v19)
          {
            if (v19 == 1)
            {
              if (v18 != 1)
              {
                break;
              }
            }

            else if (v18 != 2)
            {
              break;
            }
          }

          else if (v18)
          {
            break;
          }
        }

        else if (v19 > 4)
        {
          if (v19 == 5)
          {
            if (v18 != 5)
            {
              break;
            }
          }

          else if (v18 != 6)
          {
            break;
          }
        }

        else if (v19 == 3)
        {
          if (v18 != 3)
          {
            break;
          }
        }

        else if (v18 != 4)
        {
          break;
        }
      }

      else if (v18 != v19)
      {
        break;
      }

      if ((*(v10 + 4) != *(v7 + 4) || *(v10 + 5) != *(v7 + 5)) && (sub_251C719D4() & 1) == 0 || (*(v10 + 6) != *(v7 + 6) || *(v10 + 7) != *(v7 + 7)) && (sub_251C719D4() & 1) == 0 || *(v10 + 16) != *(v7 + 16) || *(v10 + 17) != *(v7 + 17) || (*(v10 + 9) != *(v7 + 9) || *(v10 + 10) != *(v7 + 10)) && (sub_251C719D4() & 1) == 0 || (*(v10 + 11) != *(v7 + 11) || *(v10 + 12) != *(v7 + 12)) && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = sub_251C70ED4();
      sub_251A9D3AC(v7, type metadata accessor for PBMedicationTrackingDoseEvent);
      sub_251A9D3AC(v10, type metadata accessor for PBMedicationTrackingDoseEvent);
      if (v20)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_251A9D3AC(v7, type metadata accessor for PBMedicationTrackingDoseEvent);
    sub_251A9D3AC(v10, type metadata accessor for PBMedicationTrackingDoseEvent);
  }

  v20 = 0;
  return v20 & 1;
}

uint64_t sub_251A9416C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A85F5C(0, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  sub_251A9FEF4(0, &qword_27F4790F8, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  v40 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v41 = type metadata accessor for PBHKMedicationScheduleIntervalData(0);
  v14 = MEMORY[0x28223BE20](v41);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v19 = &v34 - v18;
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
    goto LABEL_31;
  }

  if (!v20 || a1 == a2)
  {
    v32 = 1;
    return v32 & 1;
  }

  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = a1 + v21;
  v23 = a2 + v21;
  v36 = *(v17 + 72);
  v37 = (v5 + 48);
  v35 = v7;
  while (1)
  {
    sub_251AA005C(v22, v19, type metadata accessor for PBHKMedicationScheduleIntervalData);
    v38 = v23;
    v39 = v22;
    sub_251AA005C(v23, v16, type metadata accessor for PBHKMedicationScheduleIntervalData);
    v24 = v4;
    v25 = *(v41 + 36);
    v26 = *(v40 + 48);
    sub_251A9FF6C(&v19[v25], v13, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
    v27 = &v16[v25];
    v4 = v24;
    sub_251A9FF6C(v27, &v13[v26], qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
    v28 = *v37;
    if ((*v37)(v13, 1, v24) != 1)
    {
      break;
    }

    if (v28(&v13[v26], 1, v24) != 1)
    {
      goto LABEL_29;
    }

    sub_251A9FFEC(v13, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
LABEL_17:
    if (*v19 != *v16 || *(v19 + 1) != *(v16 + 1) || *(v19 + 2) != *(v16 + 2) || (*(v19 + 2) != *(v16 + 2) || *(v19 + 3) != *(v16 + 3)) && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_30;
    }

    sub_251C703B4();
    sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v32 = sub_251C70ED4();
    sub_251A9D3AC(v16, type metadata accessor for PBHKMedicationScheduleIntervalData);
    sub_251A9D3AC(v19, type metadata accessor for PBHKMedicationScheduleIntervalData);
    if (v32)
    {
      v23 = v38 + v36;
      v22 = v39 + v36;
      if (--v20)
      {
        continue;
      }
    }

    return v32 & 1;
  }

  sub_251A9FF6C(v13, v10, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  v29 = v28(&v13[v26], 1, v24);
  v30 = v35;
  if (v29 != 1)
  {
    sub_251A9D40C(&v13[v26], v35, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
    if (*v10 != *v30 || v10[1] != v30[1] || v10[2] != v30[2] || v10[3] != v30[3] || v10[4] != v30[4] || v10[5] != v30[5] || v10[6] != v30[6])
    {
      sub_251A9D3AC(v30, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
      sub_251A9D3AC(v10, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
      sub_251A9FFEC(v13, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
      goto LABEL_30;
    }

    sub_251C703B4();
    sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v31 = sub_251C70ED4();
    sub_251A9D3AC(v30, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
    sub_251A9D3AC(v10, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
    sub_251A9FFEC(v13, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
    if ((v31 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_17;
  }

  sub_251A9D3AC(v10, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
LABEL_29:
  sub_251A9DBA8(v13, &qword_27F4790F8, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
LABEL_30:
  sub_251A9D3AC(v16, type metadata accessor for PBHKMedicationScheduleIntervalData);
  sub_251A9D3AC(v19, type metadata accessor for PBHKMedicationScheduleIntervalData);
LABEL_31:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_251A94860(uint64_t a1, uint64_t a2)
{
  v37[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a2 + 56);
    for (i = (a1 + 56); ; i += 4)
    {
      v7 = *(i - 1);
      v6 = *i;
      v9 = *(v4 - 1);
      v8 = *v4;
      v10 = *(i - 3) == *(v4 - 3) && *(i - 2) == *(v4 - 2);
      if (!v10 && (sub_251C719D4() & 1) == 0)
      {
        return 0;
      }

      v11 = v6 >> 62;
      v12 = v8 >> 62;
      if (v6 >> 62 == 3)
      {
        break;
      }

      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v19 = *(v7 + 16);
          v18 = *(v7 + 24);
          v16 = __OFSUB__(v18, v19);
          v13 = v18 - v19;
          if (v16)
          {
            goto LABEL_63;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v12 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v11)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_62;
        }

        v13 = v13;
        if (v12 <= 1)
        {
LABEL_29:
          if (v12)
          {
            LODWORD(v17) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v17 = v17;
          }

          else
          {
            v17 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v12 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v12 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      v16 = __OFSUB__(v14, v15);
      v17 = v14 - v15;
      if (v16)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v17)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v35 = v3;
          v22 = *(v7 + 16);
          v32 = *(v7 + 24);

          sub_251A858C4(v7, v6);

          v33 = v9;
          sub_251A858C4(v9, v8);
          v23 = sub_251C6FB74();
          if (v23)
          {
            v24 = sub_251C6FBA4();
            if (__OFSUB__(v22, v24))
            {
              goto LABEL_66;
            }

            v23 += v22 - v24;
          }

          if (__OFSUB__(v32, v22))
          {
            goto LABEL_65;
          }

          sub_251C6FB94();
          v25 = v23;
          v26 = v33;
          v27 = v33;
          v28 = v8;
          v3 = v35;
          goto LABEL_54;
        }

        memset(v37, 0, 14);

        sub_251A858C4(v7, v6);

        sub_251A858C4(v9, v8);
        v20 = v9;
        v21 = v8;
      }

      else
      {
        if (v11)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          sub_251A858C4(v7, v6);

          v34 = v9;
          sub_251A858C4(v9, v8);
          v29 = sub_251C6FB74();
          if (v29)
          {
            v30 = sub_251C6FBA4();
            if (__OFSUB__(v7, v30))
            {
              goto LABEL_67;
            }

            v29 += v7 - v30;
          }

          v26 = v34;
          sub_251C6FB94();
          v25 = v29;
          v27 = v34;
          v28 = v8;
LABEL_54:
          sub_251A9CD78(v25, v27, v28, v37);

          sub_251A83028(v26, v8);

          sub_251A83028(v7, v6);
          if ((v37[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v37[0] = v7;
        LOWORD(v37[1]) = v6;
        BYTE2(v37[1]) = BYTE2(v6);
        BYTE3(v37[1]) = BYTE3(v6);
        BYTE4(v37[1]) = BYTE4(v6);
        BYTE5(v37[1]) = BYTE5(v6);

        sub_251A858C4(v7, v6);

        sub_251A858C4(v9, v8);
        v20 = v9;
        v21 = v8;
      }

      sub_251A9CD78(v37, v20, v21, &v36);

      sub_251A83028(v9, v8);

      sub_251A83028(v7, v6);
      if (!v36)
      {
        return 0;
      }

LABEL_6:
      v4 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    v13 = 0;
    if (!v7 && v6 == 0xC000000000000000 && v8 >> 62 == 3)
    {
      v13 = 0;
      if (!v9 && v8 == 0xC000000000000000)
      {
        goto LABEL_6;
      }
    }

LABEL_28:
    if (v12 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t sub_251A94D5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v9 + 16);
  v19 = v9 + 16;
  v21 = (v19 - 8);
  v29 = *(v19 + 56);
  v30 = v20;
  while (1)
  {
    v22 = v30;
    result = (v30)(v14, v17, v8);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v12, v18, v8);
    sub_251A932D4(v31, v32, v33);
    v25 = sub_251C70ED4();
    v26 = *v21;
    (*v21)(v12, v8);
    v26(v14, v8);
    if (v25)
    {
      v18 += v29;
      v17 += v29;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_251A94F54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBFHIRIdentifier(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v20 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_20:
    v18 = 0;
    return v18 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_251AA005C(v13, v10, type metadata accessor for PBFHIRIdentifier);
      sub_251AA005C(v14, v7, type metadata accessor for PBFHIRIdentifier);
      v16 = *v10 == *v7 && v10[1] == v7[1];
      if (!v16 && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      v17 = v10[2] == v7[2] && v10[3] == v7[3];
      if (!v17 && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_251C70ED4();
      sub_251A9D3AC(v7, type metadata accessor for PBFHIRIdentifier);
      sub_251A9D3AC(v10, type metadata accessor for PBFHIRIdentifier);
      if (v18)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_251A9D3AC(v7, type metadata accessor for PBFHIRIdentifier);
    sub_251A9D3AC(v10, type metadata accessor for PBFHIRIdentifier);
    goto LABEL_20;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_251A951D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBActivitySummarySeries.ActivitySummary(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_19:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_251AA005C(v13, v10, type metadata accessor for PBActivitySummarySeries.ActivitySummary);
      sub_251AA005C(v14, v7, type metadata accessor for PBActivitySummarySeries.ActivitySummary);
      if (*v10 != *v7 || *(v10 + 1) != *(v7 + 1) || *(v10 + 2) != *(v7 + 2) || *(v10 + 3) != *(v7 + 3) || *(v10 + 4) != *(v7 + 4) || *(v10 + 5) != *(v7 + 5))
      {
        break;
      }

      if ((*(v10 + 3) != *(v7 + 3) || *(v10 + 4) != *(v7 + 4)) && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v16 = sub_251C70ED4();
      sub_251A9D3AC(v7, type metadata accessor for PBActivitySummarySeries.ActivitySummary);
      sub_251A9D3AC(v10, type metadata accessor for PBActivitySummarySeries.ActivitySummary);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_251A9D3AC(v7, type metadata accessor for PBActivitySummarySeries.ActivitySummary);
    sub_251A9D3AC(v10, type metadata accessor for PBActivitySummarySeries.ActivitySummary);
    goto LABEL_19;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_251A954A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBMedicationTracking(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_251AA005C(v13, v10, type metadata accessor for PBMedicationTracking);
      sub_251AA005C(v14, v7, type metadata accessor for PBMedicationTracking);
      v16 = *(v4 + 20);
      v17 = *&v10[v16];
      v18 = *&v7[v16];
      if (v17 != v18 && !sub_251B993DC(v17, v18))
      {
        break;
      }

      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      if ((sub_251C70ED4() & 1) == 0)
      {
        break;
      }

      sub_251A9D3AC(v7, type metadata accessor for PBMedicationTracking);
      sub_251A9D3AC(v10, type metadata accessor for PBMedicationTracking);
      v14 += v15;
      v13 += v15;
      if (!--v11)
      {
        return 1;
      }
    }

    sub_251A9D3AC(v7, type metadata accessor for PBMedicationTracking);
    sub_251A9D3AC(v10, type metadata accessor for PBMedicationTracking);
  }

  return 0;
}

uint64_t sub_251A9573C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBBlobDeleteResult(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v20 = 1;
      return v20 & 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_251AA005C(v13, v10, type metadata accessor for PBBlobDeleteResult);
      sub_251AA005C(v14, v7, type metadata accessor for PBBlobDeleteResult);
      v16 = *v10 == *v7 && *(v10 + 1) == *(v7 + 1);
      if (!v16 && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      v17 = *(v10 + 2) == *(v7 + 2) && *(v10 + 3) == *(v7 + 3);
      if (!v17 && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      v18 = *(v10 + 4);
      if (v10[40] == 1)
      {
        v18 = qword_251C74E90[v18];
      }

      v19 = *(v7 + 4);
      if (v7[40])
      {
        if (v19 <= 1)
        {
          if (v19)
          {
            if (v18 != 2)
            {
              break;
            }
          }

          else if (v18)
          {
            break;
          }
        }

        else if (v19 == 2)
        {
          if (v18 != 3)
          {
            break;
          }
        }

        else if (v19 == 3)
        {
          if (v18 != 4)
          {
            break;
          }
        }

        else if (v18 != 5)
        {
          break;
        }
      }

      else if (v18 != v19)
      {
        break;
      }

      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = sub_251C70ED4();
      sub_251A9D3AC(v7, type metadata accessor for PBBlobDeleteResult);
      sub_251A9D3AC(v10, type metadata accessor for PBBlobDeleteResult);
      if (v20)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_251A9D3AC(v7, type metadata accessor for PBBlobDeleteResult);
    sub_251A9D3AC(v10, type metadata accessor for PBBlobDeleteResult);
  }

  v20 = 0;
  return v20 & 1;
}

uint64_t sub_251A95A40(uint64_t a1, uint64_t a2)
{
  v49 = sub_251C70384();
  v4 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D21570];
  sub_251A85F5C(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v40 - v9;
  sub_251A9FEF4(0, &qword_27F479138, &qword_27F479130, v7);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - v13;
  v50 = type metadata accessor for PBBlobTouchResult(0);
  v15 = MEMORY[0x28223BE20](v50);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v20 = (&v40 - v19);
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
LABEL_35:
    v38 = 0;
    return v38 & 1;
  }

  if (v21 && a1 != a2)
  {
    v42 = v12;
    v43 = v6;
    v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v23 = a1 + v22;
    v51 = a2 + v22;
    v41 = (v4 + 32);
    v44 = (v4 + 8);
    v45 = v10;
    v47 = *(v18 + 72);
    v48 = (v4 + 48);
    v24 = v49;
    while (1)
    {
      sub_251AA005C(v23, v20, type metadata accessor for PBBlobTouchResult);
      sub_251AA005C(v51, v17, type metadata accessor for PBBlobTouchResult);
      v25 = *v20 == *v17 && v20[1] == *(v17 + 1);
      if (!v25 && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      v26 = v20[2];
      v27 = *(v17 + 2);
      if (v17[24] == 1)
      {
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            if (v26 != 2)
            {
              break;
            }
          }

          else if (v26 != 3)
          {
            break;
          }
        }

        else if (v27)
        {
          if (v26 != 1)
          {
            break;
          }
        }

        else if (v26)
        {
          break;
        }
      }

      else if (v26 != v27)
      {
        break;
      }

      v49 = v23;
      v28 = *(v50 + 28);
      v29 = *(v12 + 48);
      v30 = MEMORY[0x277D21570];
      sub_251A9FF6C(v20 + v28, v14, &qword_27F479130, MEMORY[0x277D21570]);
      sub_251A9FF6C(&v17[v28], &v14[v29], &qword_27F479130, v30);
      v31 = *v48;
      if ((*v48)(v14, 1, v24) == 1)
      {
        if (v31(&v14[v29], 1, v24) != 1)
        {
          goto LABEL_33;
        }

        sub_251A9FFEC(v14, &qword_27F479130, MEMORY[0x277D21570]);
        v32 = v49;
      }

      else
      {
        v33 = v14;
        v34 = v14;
        v35 = v45;
        sub_251A9FF6C(v33, v45, &qword_27F479130, MEMORY[0x277D21570]);
        if (v31((v34 + v29), 1, v24) == 1)
        {
          (*v44)(v35, v24);
          v14 = v34;
LABEL_33:
          sub_251A9DBA8(v14, &qword_27F479138, &qword_27F479130, MEMORY[0x277D21570]);
          break;
        }

        v36 = v43;
        (*v41)(v43, v34 + v29, v24);
        sub_251A932D4(&qword_27F479140, MEMORY[0x277D21570], MEMORY[0x277D21578]);
        v46 = sub_251C70ED4();
        v37 = *v44;
        (*v44)(v36, v24);
        v37(v35, v24);
        sub_251A9FFEC(v34, &qword_27F479130, MEMORY[0x277D21570]);
        v14 = v34;
        v12 = v42;
        v32 = v49;
        if ((v46 & 1) == 0)
        {
          break;
        }
      }

      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v38 = sub_251C70ED4();
      sub_251A9D3AC(v17, type metadata accessor for PBBlobTouchResult);
      sub_251A9D3AC(v20, type metadata accessor for PBBlobTouchResult);
      if (v38)
      {
        v51 += v47;
        v23 = v32 + v47;
        if (--v21)
        {
          continue;
        }
      }

      return v38 & 1;
    }

    sub_251A9D3AC(v17, type metadata accessor for PBBlobTouchResult);
    sub_251A9D3AC(v20, type metadata accessor for PBBlobTouchResult);
    goto LABEL_35;
  }

  v38 = 1;
  return v38 & 1;
}

uint64_t sub_251A960BC(uint64_t a1, uint64_t a2)
{
  v102[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for PBRevocationAuthorization(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A85F5C(0, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v96 = &v88 - v9;
  sub_251A9FEF4(0, &qword_27F479158, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
  v99 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v88 - v11;
  v100 = type metadata accessor for PBDeleteBlob(0);
  v13 = MEMORY[0x28223BE20](v100);
  v15 = (&v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v18 = (&v88 - v17);
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (v19 && a1 != a2)
    {
      v90 = v4;
      v91 = v7;
      v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v21 = a1 + v20;
      v22 = a2 + v20;
      v94 = (v5 + 48);
      v95 = 0;
      v23 = *(v16 + 72);
      v92 = v12;
      v93 = v23;
      while (1)
      {
        sub_251AA005C(v21, v18, type metadata accessor for PBDeleteBlob);
        v97 = v22;
        v98 = v21;
        sub_251AA005C(v22, v15, type metadata accessor for PBDeleteBlob);
        v24 = *v18 == *v15 && v18[1] == v15[1];
        if (!v24 && (sub_251C719D4() & 1) == 0)
        {
LABEL_141:
          sub_251A9D3AC(v15, type metadata accessor for PBDeleteBlob);
          sub_251A9D3AC(v18, type metadata accessor for PBDeleteBlob);
          goto LABEL_142;
        }

        v25 = v18[2];
        v26 = v18[3];
        v28 = v15[2];
        v27 = v15[3];
        v29 = v26 >> 62;
        v30 = v27 >> 62;
        if (v26 >> 62 == 3)
        {
          break;
        }

        if (v29 > 1)
        {
          if (v29 == 2)
          {
            v37 = *(v25 + 16);
            v36 = *(v25 + 24);
            v34 = __OFSUB__(v36, v37);
            v31 = v36 - v37;
            if (v34)
            {
              goto LABEL_146;
            }

            goto LABEL_26;
          }

          v31 = 0;
          if (v30 <= 1)
          {
            goto LABEL_27;
          }
        }

        else if (v29)
        {
          LODWORD(v31) = HIDWORD(v25) - v25;
          if (__OFSUB__(HIDWORD(v25), v25))
          {
            goto LABEL_147;
          }

          v31 = v31;
          if (v30 <= 1)
          {
LABEL_27:
            if (v30)
            {
              LODWORD(v35) = HIDWORD(v28) - v28;
              if (__OFSUB__(HIDWORD(v28), v28))
              {
                __break(1u);
LABEL_145:
                __break(1u);
LABEL_146:
                __break(1u);
LABEL_147:
                __break(1u);
LABEL_148:
                __break(1u);
LABEL_149:
                __break(1u);
LABEL_150:
                __break(1u);
LABEL_151:
                __break(1u);
LABEL_152:
                __break(1u);
LABEL_153:
                __break(1u);
LABEL_154:
                __break(1u);
LABEL_155:
                __break(1u);
LABEL_156:
                __break(1u);
LABEL_157:
                __break(1u);
LABEL_158:
                __break(1u);
LABEL_159:
                __break(1u);
              }

              v35 = v35;
            }

            else
            {
              v35 = BYTE6(v27);
            }

            goto LABEL_33;
          }
        }

        else
        {
          v31 = BYTE6(v26);
          if (v30 <= 1)
          {
            goto LABEL_27;
          }
        }

LABEL_20:
        if (v30 != 2)
        {
          if (v31)
          {
            goto LABEL_141;
          }

          goto LABEL_57;
        }

        v33 = *(v28 + 16);
        v32 = *(v28 + 24);
        v34 = __OFSUB__(v32, v33);
        v35 = v32 - v33;
        if (v34)
        {
          goto LABEL_145;
        }

LABEL_33:
        if (v31 != v35)
        {
          goto LABEL_141;
        }

        if (v31 < 1)
        {
          goto LABEL_57;
        }

        if (v29 > 1)
        {
          if (v29 == 2)
          {
            v39 = *(v25 + 16);
            v38 = *(v25 + 24);
            v40 = sub_251C6FB74();
            if (v40)
            {
              v41 = sub_251C6FBA4();
              if (__OFSUB__(v39, v41))
              {
                goto LABEL_152;
              }

              v40 += v39 - v41;
            }

            if (__OFSUB__(v38, v39))
            {
              goto LABEL_151;
            }

            goto LABEL_53;
          }

          memset(v102, 0, 14);
        }

        else
        {
          if (v29)
          {
            v42 = v25;
            if (v25 >> 32 < v25)
            {
              goto LABEL_150;
            }

            v40 = sub_251C6FB74();
            if (v40)
            {
              v43 = sub_251C6FBA4();
              if (__OFSUB__(v42, v43))
              {
                goto LABEL_153;
              }

              v40 += v42 - v43;
            }

LABEL_53:
            sub_251C6FB94();
            v44 = v95;
            sub_251A9CD78(v40, v28, v27, v102);
            v95 = v44;
            v4 = v90;
            v12 = v92;
            if ((v102[0] & 1) == 0)
            {
              goto LABEL_141;
            }

            goto LABEL_57;
          }

          v102[0] = v18[2];
          LOWORD(v102[1]) = v26;
          BYTE2(v102[1]) = BYTE2(v26);
          BYTE3(v102[1]) = BYTE3(v26);
          BYTE4(v102[1]) = BYTE4(v26);
          BYTE5(v102[1]) = BYTE5(v26);
        }

        v45 = v95;
        sub_251A9CD78(v102, v28, v27, &v101);
        v95 = v45;
        if (!v101)
        {
          goto LABEL_141;
        }

LABEL_57:
        v46 = *(v100 + 28);
        v47 = *(v99 + 48);
        sub_251A9FF6C(v18 + v46, v12, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
        sub_251A9FF6C(v15 + v46, &v12[v47], &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
        v48 = *v94;
        if ((*v94)(v12, 1, v4) == 1)
        {
          if (v48(&v12[v47], 1, v4) != 1)
          {
            goto LABEL_140;
          }

          sub_251A9FFEC(v12, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
          goto LABEL_128;
        }

        v49 = v96;
        sub_251A9FF6C(v12, v96, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
        if (v48(&v12[v47], 1, v4) == 1)
        {
          sub_251A9D3AC(v49, type metadata accessor for PBRevocationAuthorization);
LABEL_140:
          sub_251A9DBA8(v12, &qword_27F479158, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
          goto LABEL_141;
        }

        v50 = &v12[v47];
        v51 = v91;
        sub_251A9D40C(v50, v91, type metadata accessor for PBRevocationAuthorization);
        v52 = *v49;
        v53 = *(v49 + 8);
        v54 = *v51;
        v55 = *(v51 + 8);
        v56 = v53 >> 62;
        v57 = v55 >> 62;
        if (v53 >> 62 == 3)
        {
          v58 = 0;
          if (!v52 && v53 == 0xC000000000000000 && v55 >> 62 == 3)
          {
            v58 = 0;
            if (!v54 && v55 == 0xC000000000000000)
            {
              goto LABEL_109;
            }
          }

LABEL_77:
          if (v57 > 1)
          {
            goto LABEL_71;
          }

          goto LABEL_78;
        }

        if (v56 > 1)
        {
          if (v56 == 2)
          {
            v63 = *(v52 + 16);
            v62 = *(v52 + 24);
            v34 = __OFSUB__(v62, v63);
            v58 = v62 - v63;
            if (v34)
            {
              goto LABEL_155;
            }

            goto LABEL_77;
          }

          v58 = 0;
          if (v57 > 1)
          {
            goto LABEL_71;
          }
        }

        else if (v56)
        {
          LODWORD(v58) = HIDWORD(v52) - v52;
          if (__OFSUB__(HIDWORD(v52), v52))
          {
            goto LABEL_154;
          }

          v58 = v58;
          if (v57 > 1)
          {
LABEL_71:
            if (v57 != 2)
            {
              if (v58)
              {
                goto LABEL_137;
              }

              goto LABEL_109;
            }

            v60 = *(v54 + 16);
            v59 = *(v54 + 24);
            v34 = __OFSUB__(v59, v60);
            v61 = v59 - v60;
            if (v34)
            {
              goto LABEL_149;
            }

            goto LABEL_84;
          }
        }

        else
        {
          v58 = BYTE6(v53);
          if (v57 > 1)
          {
            goto LABEL_71;
          }
        }

LABEL_78:
        if (v57)
        {
          LODWORD(v61) = HIDWORD(v54) - v54;
          if (__OFSUB__(HIDWORD(v54), v54))
          {
            goto LABEL_148;
          }

          v61 = v61;
        }

        else
        {
          v61 = BYTE6(v55);
        }

LABEL_84:
        if (v58 != v61)
        {
          goto LABEL_137;
        }

        if (v58 >= 1)
        {
          if (v56 > 1)
          {
            if (v56 != 2)
            {
              memset(v102, 0, 14);
              v79 = v54;
              sub_251A858C4(v54, v55);
              v80 = v95;
              sub_251A9CD78(v102, v79, v55, &v101);
              v95 = v80;
              v66 = v79;
LABEL_108:
              sub_251A83028(v66, v55);
              if (!v101)
              {
                goto LABEL_137;
              }

              goto LABEL_109;
            }

            v67 = *(v52 + 16);
            v68 = *(v52 + 24);
            v89 = *v51;
            sub_251A858C4(v54, v55);
            v69 = sub_251C6FB74();
            if (v69)
            {
              v70 = sub_251C6FBA4();
              if (__OFSUB__(v67, v70))
              {
                goto LABEL_158;
              }

              v69 += v67 - v70;
            }

            if (__OFSUB__(v68, v67))
            {
              goto LABEL_157;
            }

            sub_251C6FB94();
            v71 = v89;
            v72 = v95;
            sub_251A9CD78(v69, v89, v55, v102);
            v95 = v72;
            sub_251A83028(v71, v55);
            v73 = v102[0];
            v4 = v90;
          }

          else
          {
            if (!v56)
            {
              v102[0] = *v49;
              LOWORD(v102[1]) = v53;
              BYTE2(v102[1]) = BYTE2(v53);
              BYTE3(v102[1]) = BYTE3(v53);
              BYTE4(v102[1]) = BYTE4(v53);
              BYTE5(v102[1]) = BYTE5(v53);
              v64 = v54;
              sub_251A858C4(v54, v55);
              v65 = v95;
              sub_251A9CD78(v102, v64, v55, &v101);
              v95 = v65;
              v66 = v64;
              goto LABEL_108;
            }

            v74 = v52;
            if (v52 >> 32 < v52)
            {
              goto LABEL_156;
            }

            v89 = *v51;
            sub_251A858C4(v54, v55);
            v75 = sub_251C6FB74();
            if (v75)
            {
              v76 = sub_251C6FBA4();
              if (__OFSUB__(v74, v76))
              {
                goto LABEL_159;
              }

              v75 += v74 - v76;
            }

            sub_251C6FB94();
            v77 = v89;
            v78 = v95;
            sub_251A9CD78(v75, v89, v55, v102);
            v95 = v78;
            sub_251A83028(v77, v55);
            v73 = v102[0];
          }

          v51 = v91;
          v49 = v96;
          if ((v73 & 1) == 0)
          {
            goto LABEL_137;
          }
        }

LABEL_109:
        v81 = *(v49 + 16);
        v82 = *(v51 + 16);
        if (*(v49 + 24))
        {
          v81 = v81 != 0;
        }

        if (*(v51 + 24) == 1)
        {
          if (v82)
          {
            if (v81 != 1)
            {
              goto LABEL_137;
            }
          }

          else if (v81)
          {
            goto LABEL_137;
          }
        }

        else if (v81 != v82)
        {
          goto LABEL_137;
        }

        v83 = *(v49 + 32);
        v84 = *(v51 + 32);
        if (*(v51 + 40) == 1)
        {
          if (v84 > 1)
          {
            if (v84 == 2)
            {
              if (v83 != 2)
              {
                goto LABEL_137;
              }
            }

            else if (v83 != 3)
            {
              goto LABEL_137;
            }
          }

          else if (v84)
          {
            if (v83 != 1)
            {
              goto LABEL_137;
            }
          }

          else if (v83)
          {
            goto LABEL_137;
          }
        }

        else if (v83 != v84)
        {
          goto LABEL_137;
        }

        if ((*(v49 + 48) != *(v51 + 48) || *(v49 + 56) != *(v51 + 56)) && (sub_251C719D4() & 1) == 0)
        {
LABEL_137:
          sub_251A9D3AC(v51, type metadata accessor for PBRevocationAuthorization);
          sub_251A9D3AC(v49, type metadata accessor for PBRevocationAuthorization);
          sub_251A9FFEC(v92, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
          goto LABEL_141;
        }

        sub_251C703B4();
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v85 = sub_251C70ED4();
        sub_251A9D3AC(v51, type metadata accessor for PBRevocationAuthorization);
        sub_251A9D3AC(v49, type metadata accessor for PBRevocationAuthorization);
        v12 = v92;
        sub_251A9FFEC(v92, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
        if ((v85 & 1) == 0)
        {
          goto LABEL_141;
        }

LABEL_128:
        sub_251C703B4();
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v86 = sub_251C70ED4();
        sub_251A9D3AC(v15, type metadata accessor for PBDeleteBlob);
        sub_251A9D3AC(v18, type metadata accessor for PBDeleteBlob);
        if (v86)
        {
          v22 = v97 + v93;
          v21 = v98 + v93;
          if (--v19)
          {
            continue;
          }
        }

        return v86 & 1;
      }

      v31 = 0;
      if (!v25 && v26 == 0xC000000000000000 && v27 >> 62 == 3)
      {
        v31 = 0;
        if (!v28 && v27 == 0xC000000000000000)
        {
          goto LABEL_57;
        }
      }

LABEL_26:
      if (v30 <= 1)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    v86 = 1;
  }

  else
  {
LABEL_142:
    v86 = 0;
  }

  return v86 & 1;
}

uint64_t sub_251A96DD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C70384();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D21570];
  sub_251A85F5C(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - v9;
  sub_251A9FEF4(0, &qword_27F479138, &qword_27F479130, v7);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - v13;
  v53 = type metadata accessor for PBTouchBlob(0);
  v15 = MEMORY[0x28223BE20](v53);
  v17 = (&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v51 = &v42 - v19;
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
LABEL_22:
    v40 = 0;
    return v40 & 1;
  }

  if (v20 && a1 != a2)
  {
    v46 = v17;
    v47 = v10;
    v21 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v22 = v5;
    v23 = a1 + v21;
    v24 = a2 + v21;
    v43 = (v22 + 32);
    v44 = v12;
    v45 = (v22 + 8);
    v49 = *(v18 + 72);
    v50 = (v22 + 48);
    v25 = v4;
    v26 = v51;
    while (1)
    {
      sub_251AA005C(v23, v26, type metadata accessor for PBTouchBlob);
      sub_251AA005C(v24, v17, type metadata accessor for PBTouchBlob);
      v27 = *v26 == *v17 && v26[1] == v17[1];
      if (!v27 && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      v52 = v20;
      v28 = v26;
      v29 = *(v53 + 24);
      v30 = *(v12 + 48);
      v31 = MEMORY[0x277D21570];
      sub_251A9FF6C(v28 + v29, v14, &qword_27F479130, MEMORY[0x277D21570]);
      sub_251A9FF6C(v17 + v29, &v14[v30], &qword_27F479130, v31);
      v32 = *v50;
      if ((*v50)(v14, 1, v25) == 1)
      {
        if (v32(&v14[v30], 1, v25) != 1)
        {
          goto LABEL_20;
        }

        sub_251A9FFEC(v14, &qword_27F479130, MEMORY[0x277D21570]);
        v26 = v51;
        v33 = v52;
      }

      else
      {
        v34 = v14;
        v35 = v14;
        v36 = v47;
        sub_251A9FF6C(v34, v47, &qword_27F479130, MEMORY[0x277D21570]);
        if (v32((v35 + v30), 1, v25) == 1)
        {
          (*v45)(v36, v25);
          v14 = v35;
          v17 = v46;
LABEL_20:
          sub_251A9DBA8(v14, &qword_27F479138, &qword_27F479130, MEMORY[0x277D21570]);
          v26 = v51;
          break;
        }

        v37 = v48;
        (*v43)(v48, v35 + v30, v25);
        sub_251A932D4(&qword_27F479140, MEMORY[0x277D21570], MEMORY[0x277D21578]);
        v38 = sub_251C70ED4();
        v39 = *v45;
        (*v45)(v37, v25);
        v39(v36, v25);
        sub_251A9FFEC(v35, &qword_27F479130, MEMORY[0x277D21570]);
        v14 = v35;
        v12 = v44;
        v17 = v46;
        v26 = v51;
        v33 = v52;
        if ((v38 & 1) == 0)
        {
          break;
        }
      }

      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v40 = sub_251C70ED4();
      sub_251A9D3AC(v17, type metadata accessor for PBTouchBlob);
      sub_251A9D3AC(v26, type metadata accessor for PBTouchBlob);
      if (v40)
      {
        v24 += v49;
        v23 += v49;
        v20 = v33 - 1;
        if (v20)
        {
          continue;
        }
      }

      return v40 & 1;
    }

    sub_251A9D3AC(v17, type metadata accessor for PBTouchBlob);
    sub_251A9D3AC(v26, type metadata accessor for PBTouchBlob);
    goto LABEL_22;
  }

  v40 = 1;
  return v40 & 1;
}

uint64_t sub_251A97450(uint64_t a1, uint64_t a2)
{
  v86 = sub_251C70384();
  v4 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D21570];
  v8 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v84 = &v75 - v10;
  sub_251A9FEF4(0, &qword_27F479138, &qword_27F479130, v7);
  v85 = v11;
  MEMORY[0x28223BE20](v11);
  v87 = &v75 - v12;
  v90 = type metadata accessor for PBBlob(0);
  v13 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v93 = (&v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251A85F5C(0, &qword_27F479148, type metadata accessor for PBBlob, v8);
  MEMORY[0x28223BE20](v15 - 8);
  v94 = (&v75 - v16);
  sub_251A9FEF4(0, &qword_27F479150, &qword_27F479148, type metadata accessor for PBBlob);
  v89 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v75 - v18;
  v91 = type metadata accessor for PBBlobPullResult(0);
  v20 = MEMORY[0x28223BE20](v91);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v25 = &v75 - v24;
  v26 = *(a1 + 16);
  if (v26 != *(a2 + 16))
  {
LABEL_81:
    v74 = 0;
    return v74 & 1;
  }

  if (!v26 || a1 == a2)
  {
    v74 = 1;
    return v74 & 1;
  }

  v79 = 0;
  v80 = v19;
  v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v28 = a1 + v27;
  v92 = a2 + v27;
  v75 = (v4 + 32);
  v76 = v6;
  v77 = (v4 + 8);
  v29 = *(v23 + 72);
  v81 = (v4 + 48);
  v82 = v29;
  v30 = v90;
  v83 = (v13 + 48);
  while (1)
  {
    v88 = v28;
    sub_251AA005C(v28, v25, type metadata accessor for PBBlobPullResult);
    sub_251AA005C(v92, v22, type metadata accessor for PBBlobPullResult);
    v31 = *v25 == *v22 && *(v25 + 1) == *(v22 + 1);
    if (!v31 && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_80;
    }

    v32 = *(v25 + 2) == *(v22 + 2) && *(v25 + 3) == *(v22 + 3);
    if (!v32 && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_80;
    }

    v33 = *(v25 + 4);
    if (v25[40] == 1)
    {
      v33 = qword_251C74EB8[v33];
    }

    v34 = *(v22 + 4);
    if (v22[40])
    {
      if (v34 > 1)
      {
        if (v34 == 2)
        {
          if (v33 != 5)
          {
            goto LABEL_80;
          }
        }

        else if (v33 != 7)
        {
          goto LABEL_80;
        }
      }

      else if (v34)
      {
        if (v33 != 4)
        {
          goto LABEL_80;
        }
      }

      else if (v33)
      {
        goto LABEL_80;
      }
    }

    else if (v33 != v34)
    {
      goto LABEL_80;
    }

    v35 = *(v91 + 32);
    v36 = *(v89 + 48);
    sub_251A9FF6C(&v25[v35], v19, &qword_27F479148, type metadata accessor for PBBlob);
    sub_251A9FF6C(&v22[v35], &v19[v36], &qword_27F479148, type metadata accessor for PBBlob);
    v37 = *v83;
    if ((*v83)(v19, 1, v30) == 1)
    {
      if (v37(&v19[v36], 1, v30) != 1)
      {
        goto LABEL_76;
      }

      sub_251A9FFEC(v19, &qword_27F479148, type metadata accessor for PBBlob);
      goto LABEL_71;
    }

    v38 = v94;
    sub_251A9FF6C(v19, v94, &qword_27F479148, type metadata accessor for PBBlob);
    if (v37(&v19[v36], 1, v30) == 1)
    {
      sub_251A9D3AC(v38, type metadata accessor for PBBlob);
LABEL_76:
      sub_251A9DBA8(v19, &qword_27F479150, &qword_27F479148, type metadata accessor for PBBlob);
      goto LABEL_80;
    }

    v39 = v93;
    sub_251A9D40C(&v19[v36], v93, type metadata accessor for PBBlob);
    result = *v38;
    if (*v38 != *v39 || v38[1] != v39[1])
    {
      result = sub_251C719D4();
      v38 = v94;
      if ((result & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    v41 = v38[2];
    v42 = v38[3];
    v43 = v93[2];
    v44 = v93[3];
    v45 = v42 >> 62;
    v46 = v44 >> 62;
    if (v42 >> 62 != 3)
    {
      break;
    }

    v47 = 0;
    if (v41)
    {
      goto LABEL_50;
    }

    if (v42 != 0xC000000000000000)
    {
      goto LABEL_50;
    }

    if (v44 >> 62 != 3)
    {
      goto LABEL_50;
    }

    v47 = 0;
    if (v43 || v44 != 0xC000000000000000)
    {
      goto LABEL_50;
    }

LABEL_64:
    v57 = sub_251A9BEC8(v38[4], v93[4], type metadata accessor for PBBlobAttribute, type metadata accessor for PBBlobAttribute, type metadata accessor for PBBlobAttribute);
    v38 = v94;
    if ((v57 & 1) == 0)
    {
      goto LABEL_79;
    }

    v58 = *(v90 + 32);
    v59 = *(v85 + 48);
    v60 = MEMORY[0x277D21570];
    v61 = v87;
    sub_251A9FF6C(v94 + v58, v87, &qword_27F479130, MEMORY[0x277D21570]);
    sub_251A9FF6C(v93 + v58, v61 + v59, &qword_27F479130, v60);
    v62 = *v81;
    v63 = v86;
    if ((*v81)(v61, 1, v86) == 1)
    {
      if (v62(v61 + v59, 1, v63) != 1)
      {
        goto LABEL_78;
      }

      sub_251A9FFEC(v61, &qword_27F479130, MEMORY[0x277D21570]);
      v19 = v80;
    }

    else
    {
      v64 = v84;
      sub_251A9FF6C(v61, v84, &qword_27F479130, MEMORY[0x277D21570]);
      if (v62(v61 + v59, 1, v63) == 1)
      {
        (*v77)(v64, v63);
LABEL_78:
        sub_251A9DBA8(v61, &qword_27F479138, &qword_27F479130, MEMORY[0x277D21570]);
        v19 = v80;
        v38 = v94;
LABEL_79:
        sub_251A9D3AC(v93, type metadata accessor for PBBlob);
        sub_251A9D3AC(v38, type metadata accessor for PBBlob);
        sub_251A9FFEC(v19, &qword_27F479148, type metadata accessor for PBBlob);
LABEL_80:
        sub_251A9D3AC(v22, type metadata accessor for PBBlobPullResult);
        sub_251A9D3AC(v25, type metadata accessor for PBBlobPullResult);
        goto LABEL_81;
      }

      v65 = v64;
      v66 = v76;
      (*v75)(v76, v61 + v59, v63);
      sub_251A932D4(&qword_27F479140, MEMORY[0x277D21570], MEMORY[0x277D21578]);
      v78 = sub_251C70ED4();
      v67 = *v77;
      (*v77)(v66, v63);
      v68 = v65;
      v69 = v94;
      v67(v68, v63);
      sub_251A9FFEC(v87, &qword_27F479130, MEMORY[0x277D21570]);
      v38 = v69;
      v19 = v80;
      if ((v78 & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    v70 = v90;
    sub_251C703B4();
    sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v71 = v93;
    v72 = sub_251C70ED4();
    v73 = v71;
    v30 = v70;
    sub_251A9D3AC(v73, type metadata accessor for PBBlob);
    sub_251A9D3AC(v94, type metadata accessor for PBBlob);
    sub_251A9FFEC(v19, &qword_27F479148, type metadata accessor for PBBlob);
    if ((v72 & 1) == 0)
    {
      goto LABEL_80;
    }

LABEL_71:
    sub_251C703B4();
    sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v74 = sub_251C70ED4();
    sub_251A9D3AC(v22, type metadata accessor for PBBlobPullResult);
    sub_251A9D3AC(v25, type metadata accessor for PBBlobPullResult);
    if (v74)
    {
      v92 += v82;
      v28 = v88 + v82;
      if (--v26)
      {
        continue;
      }
    }

    return v74 & 1;
  }

  if (v45)
  {
    if (v45 == 1)
    {
      LODWORD(v47) = HIDWORD(v41) - v41;
      if (__OFSUB__(HIDWORD(v41), v41))
      {
        goto LABEL_85;
      }

      v47 = v47;
    }

    else
    {
      v49 = *(v41 + 16);
      v48 = *(v41 + 24);
      v50 = __OFSUB__(v48, v49);
      v47 = v48 - v49;
      if (v50)
      {
        goto LABEL_84;
      }
    }
  }

  else
  {
    v47 = BYTE6(v42);
  }

LABEL_50:
  if (v46 <= 1)
  {
    if (v46)
    {
      LODWORD(v51) = HIDWORD(v43) - v43;
      if (__OFSUB__(HIDWORD(v43), v43))
      {
        goto LABEL_83;
      }

      v51 = v51;
    }

    else
    {
      v51 = BYTE6(v44);
    }

LABEL_59:
    if (v47 != v51)
    {
      goto LABEL_79;
    }

    if (v47 >= 1)
    {
      sub_251A858C4(v43, v44);
      v54 = v41;
      v55 = v79;
      v56 = sub_251A9CFA8(v54, v42, v43, v44);
      v38 = v94;
      v79 = v55;
      if ((v56 & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    goto LABEL_64;
  }

  if (v46 != 2)
  {
    if (v47)
    {
      goto LABEL_79;
    }

    goto LABEL_64;
  }

  v53 = *(v43 + 16);
  v52 = *(v43 + 24);
  v50 = __OFSUB__(v52, v53);
  v51 = v52 - v53;
  if (!v50)
  {
    goto LABEL_59;
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

uint64_t sub_251A98080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBDateRange(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v50 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A85F5C(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v43 = (&v41 - v8);
  sub_251A9FEF4(0, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v47 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v46 = type metadata accessor for PBMedicationDosage(0);
  v12 = MEMORY[0x28223BE20](v46);
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v17 = (&v41 - v16);
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_50:
    v39 = 0;
    return v39 & 1;
  }

  if (v18 && a1 != a2)
  {
    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v44 = (v5 + 48);
    v45 = v4;
    v42 = *(v15 + 72);
    v22 = v46;
    while (1)
    {
      sub_251AA005C(v20, v17, type metadata accessor for PBMedicationDosage);
      v48 = v21;
      v49 = v20;
      sub_251AA005C(v21, v14, type metadata accessor for PBMedicationDosage);
      v23 = *v17 == *v14 && v17[1] == v14[1];
      if (!v23 && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      v24 = *(v22 + 24);
      v25 = *(v47 + 48);
      sub_251A9FF6C(v17 + v24, v11, qword_2813E6EE8, type metadata accessor for PBDateRange);
      sub_251A9FF6C(v14 + v24, &v11[v25], qword_2813E6EE8, type metadata accessor for PBDateRange);
      v26 = v45;
      v27 = *v44;
      if ((*v44)(v11, 1, v45) == 1)
      {
        if (v27(&v11[v25], 1, v26) != 1)
        {
          goto LABEL_48;
        }

        sub_251A9FFEC(v11, qword_2813E6EE8, type metadata accessor for PBDateRange);
      }

      else
      {
        v28 = v43;
        sub_251A9FF6C(v11, v43, qword_2813E6EE8, type metadata accessor for PBDateRange);
        if (v27(&v11[v25], 1, v26) == 1)
        {
          sub_251A9D3AC(v28, type metadata accessor for PBDateRange);
LABEL_48:
          sub_251A9DBA8(v11, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
          break;
        }

        v29 = v50;
        sub_251A9D40C(&v11[v25], v50, type metadata accessor for PBDateRange);
        if ((*v28 != *v29 || v28[1] != v29[1]) && (sub_251C719D4() & 1) == 0 || (v28[2] != *(v50 + 16) || v28[3] != *(v50 + 24)) && (sub_251C719D4() & 1) == 0)
        {
LABEL_45:
          sub_251A9D3AC(v50, type metadata accessor for PBDateRange);
          sub_251A9D3AC(v28, type metadata accessor for PBDateRange);
          sub_251A9FFEC(v11, qword_2813E6EE8, type metadata accessor for PBDateRange);
          break;
        }

        v30 = v28[4];
        v31 = *(v50 + 32);
        if (*(v50 + 40) == 1)
        {
          if (v31 <= 2)
          {
            if (v31)
            {
              if (v31 == 1)
              {
                if (v30 != 1)
                {
                  goto LABEL_45;
                }
              }

              else if (v30 != 2)
              {
                goto LABEL_45;
              }
            }

            else if (v30)
            {
              goto LABEL_45;
            }
          }

          else if (v31 > 4)
          {
            if (v31 == 5)
            {
              if (v30 != 5)
              {
                goto LABEL_45;
              }
            }

            else if (v30 != 6)
            {
              goto LABEL_45;
            }
          }

          else if (v31 == 3)
          {
            if (v30 != 3)
            {
              goto LABEL_45;
            }
          }

          else if (v30 != 4)
          {
            goto LABEL_45;
          }
        }

        else if (v30 != v31)
        {
          goto LABEL_45;
        }

        sub_251C703B4();
        v32 = v28;
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v33 = v17;
        v34 = v14;
        v35 = v11;
        v36 = v50;
        v37 = sub_251C70ED4();
        v38 = v36;
        v11 = v35;
        v14 = v34;
        v17 = v33;
        v22 = v46;
        sub_251A9D3AC(v38, type metadata accessor for PBDateRange);
        sub_251A9D3AC(v32, type metadata accessor for PBDateRange);
        sub_251A9FFEC(v11, qword_2813E6EE8, type metadata accessor for PBDateRange);
        if ((v37 & 1) == 0)
        {
          break;
        }
      }

      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v39 = sub_251C70ED4();
      sub_251A9D3AC(v14, type metadata accessor for PBMedicationDosage);
      sub_251A9D3AC(v17, type metadata accessor for PBMedicationDosage);
      if (v39)
      {
        v21 = v48 + v42;
        v20 = v49 + v42;
        if (--v18)
        {
          continue;
        }
      }

      return v39 & 1;
    }

    sub_251A9D3AC(v14, type metadata accessor for PBMedicationDosage);
    sub_251A9D3AC(v17, type metadata accessor for PBMedicationDosage);
    goto LABEL_50;
  }

  v39 = 1;
  return v39 & 1;
}

uint64_t sub_251A987D8(uint64_t a1, uint64_t a2)
{
  v81[3] = *MEMORY[0x277D85DE8];
  v75 = sub_251C70384();
  v4 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D21570];
  sub_251A85F5C(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v72 = &v64 - v9;
  sub_251A9FEF4(0, &qword_27F479138, &qword_27F479130, v7);
  v74 = v10;
  MEMORY[0x28223BE20](v10);
  v78 = &v64 - v11;
  v73 = type metadata accessor for PBBlob(0);
  v12 = MEMORY[0x28223BE20](v73);
  v14 = (&v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v17 = (&v64 - v16);
  v18 = *(a2 + 16);
  v79 = *(a1 + 16);
  if (v79 != v18)
  {
    goto LABEL_74;
  }

  if (!v79 || a1 == a2)
  {
    v61 = 1;
    return v61 & 1;
  }

  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v77 = a2 + v19;
  v71 = (v4 + 48);
  v65 = (v4 + 32);
  v66 = v6;
  v67 = (v4 + 8);
  v21 = *(v15 + 72);
  v69 = 0;
  v70 = v21;
  v22 = v73;
  while (1)
  {
    sub_251AA005C(v20, v17, type metadata accessor for PBBlob);
    if (!v79)
    {
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
    }

    v76 = v20;
    sub_251AA005C(v77, v14, type metadata accessor for PBBlob);
    v23 = *v17 == *v14 && v17[1] == v14[1];
    if (!v23 && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_73;
    }

    v24 = v17[2];
    v25 = v17[3];
    v27 = v14[2];
    v26 = v14[3];
    v28 = v25 >> 62;
    v29 = v26 >> 62;
    if (v25 >> 62 == 3)
    {
      v30 = 0;
      if (!v24 && v25 == 0xC000000000000000 && v26 >> 62 == 3)
      {
        v30 = 0;
        if (!v27 && v26 == 0xC000000000000000)
        {
          goto LABEL_61;
        }
      }

LABEL_27:
      if (v29 <= 1)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v36 = *(v24 + 16);
        v35 = *(v24 + 24);
        v33 = __OFSUB__(v35, v36);
        v30 = v35 - v36;
        if (v33)
        {
          goto LABEL_79;
        }

        goto LABEL_27;
      }

      v30 = 0;
      if (v29 <= 1)
      {
        goto LABEL_28;
      }
    }

    else if (v28)
    {
      LODWORD(v30) = HIDWORD(v24) - v24;
      if (__OFSUB__(HIDWORD(v24), v24))
      {
        goto LABEL_80;
      }

      v30 = v30;
      if (v29 <= 1)
      {
LABEL_28:
        if (v29)
        {
          LODWORD(v34) = HIDWORD(v27) - v27;
          if (__OFSUB__(HIDWORD(v27), v27))
          {
            goto LABEL_78;
          }

          v34 = v34;
        }

        else
        {
          v34 = BYTE6(v26);
        }

        goto LABEL_34;
      }
    }

    else
    {
      v30 = BYTE6(v25);
      if (v29 <= 1)
      {
        goto LABEL_28;
      }
    }

LABEL_21:
    if (v29 != 2)
    {
      if (v30)
      {
        goto LABEL_73;
      }

      goto LABEL_61;
    }

    v32 = *(v27 + 16);
    v31 = *(v27 + 24);
    v33 = __OFSUB__(v31, v32);
    v34 = v31 - v32;
    if (v33)
    {
      goto LABEL_77;
    }

LABEL_34:
    if (v30 != v34)
    {
      goto LABEL_73;
    }

    if (v30 < 1)
    {
      goto LABEL_61;
    }

    if (v28 > 1)
    {
      if (v28 != 2)
      {
        memset(v81, 0, 14);
LABEL_53:
        v46 = v69;
        sub_251A9CD78(v81, v27, v26, &v80);
        v69 = v46;
        if (!v80)
        {
          goto LABEL_73;
        }

        goto LABEL_61;
      }

      v37 = *(v24 + 16);
      v68 = *(v24 + 24);
      v38 = sub_251C6FB74();
      if (v38)
      {
        v39 = v38;
        v40 = sub_251C6FBA4();
        if (__OFSUB__(v37, v40))
        {
          goto LABEL_83;
        }

        v64 = v37 - v40 + v39;
      }

      else
      {
        v64 = 0;
      }

      if (__OFSUB__(v68, v37))
      {
        goto LABEL_82;
      }

      sub_251C6FB94();
      v47 = v64;
    }

    else
    {
      if (!v28)
      {
        v81[0] = v17[2];
        LOWORD(v81[1]) = v25;
        BYTE2(v81[1]) = BYTE2(v25);
        BYTE3(v81[1]) = BYTE3(v25);
        BYTE4(v81[1]) = BYTE4(v25);
        BYTE5(v81[1]) = BYTE5(v25);
        goto LABEL_53;
      }

      v41 = v24;
      if (v24 >> 32 < v24)
      {
        goto LABEL_81;
      }

      v42 = sub_251C6FB74();
      if (v42)
      {
        v43 = v42;
        v44 = sub_251C6FBA4();
        if (__OFSUB__(v41, v44))
        {
          goto LABEL_84;
        }

        v45 = v41 - v44 + v43;
      }

      else
      {
        v45 = 0;
      }

      sub_251C6FB94();
      v47 = v45;
    }

    v48 = v69;
    sub_251A9CD78(v47, v27, v26, v81);
    v69 = v48;
    if ((v81[0] & 1) == 0)
    {
      goto LABEL_73;
    }

LABEL_61:
    if ((sub_251A9BEC8(v17[4], v14[4], type metadata accessor for PBBlobAttribute, type metadata accessor for PBBlobAttribute, type metadata accessor for PBBlobAttribute) & 1) == 0)
    {
      goto LABEL_73;
    }

    v49 = *(v22 + 32);
    v50 = *(v74 + 48);
    v51 = MEMORY[0x277D21570];
    v52 = v78;
    sub_251A9FF6C(v17 + v49, v78, &qword_27F479130, MEMORY[0x277D21570]);
    sub_251A9FF6C(v14 + v49, v52 + v50, &qword_27F479130, v51);
    v53 = *v71;
    v54 = v75;
    if ((*v71)(v52, 1, v75) != 1)
    {
      break;
    }

    if (v53(v78 + v50, 1, v54) != 1)
    {
      goto LABEL_72;
    }

    sub_251A9FFEC(v78, &qword_27F479130, MEMORY[0x277D21570]);
LABEL_67:
    sub_251C703B4();
    sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v61 = sub_251C70ED4();
    sub_251A9D3AC(v14, type metadata accessor for PBBlob);
    sub_251A9D3AC(v17, type metadata accessor for PBBlob);
    if (v61)
    {
      v62 = v79;
      v77 += v70;
      v20 = v76 + v70;
      --v79;
      if (v62 != 1)
      {
        continue;
      }
    }

    return v61 & 1;
  }

  v55 = v78;
  v56 = v72;
  sub_251A9FF6C(v78, v72, &qword_27F479130, MEMORY[0x277D21570]);
  if (v53(v55 + v50, 1, v54) != 1)
  {
    v57 = v78;
    v58 = v56;
    v59 = v66;
    (*v65)(v66, v78 + v50, v54);
    sub_251A932D4(&qword_27F479140, MEMORY[0x277D21570], MEMORY[0x277D21578]);
    LODWORD(v68) = sub_251C70ED4();
    v60 = *v67;
    (*v67)(v59, v54);
    v22 = v73;
    v60(v58, v54);
    sub_251A9FFEC(v57, &qword_27F479130, MEMORY[0x277D21570]);
    if ((v68 & 1) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_67;
  }

  (*v67)(v56, v54);
LABEL_72:
  sub_251A9DBA8(v78, &qword_27F479138, &qword_27F479130, MEMORY[0x277D21570]);
LABEL_73:
  sub_251A9D3AC(v14, type metadata accessor for PBBlob);
  sub_251A9D3AC(v17, type metadata accessor for PBBlob);
LABEL_74:
  v61 = 0;
  return v61 & 1;
}

uint64_t sub_251A991B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void))
{
  v30 = a6;
  v28 = a5;
  v29 = a3(0);
  v9 = MEMORY[0x28223BE20](v29);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v14 = &v27 - v13;
  v15 = *(a1 + 16);
  if (v15 == *(a2 + 16))
  {
    if (!v15 || a1 == a2)
    {
      return 1;
    }

    v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v17 = a1 + v16;
    v18 = a2 + v16;
    v19 = *(v12 + 72);
    while (1)
    {
      sub_251AA005C(v17, v14, a4);
      sub_251AA005C(v18, v11, a4);
      v20 = *(v29 + 20);
      v21 = *&v14[v20];
      v22 = *&v11[v20];
      if (v21 != v22)
      {

        v23 = v28(v21, v22);

        if ((v23 & 1) == 0)
        {
          break;
        }
      }

      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      if ((sub_251C70ED4() & 1) == 0)
      {
        break;
      }

      v24 = v30;
      sub_251A9D3AC(v11, v30);
      sub_251A9D3AC(v14, v24);
      v18 += v19;
      v17 += v19;
      if (!--v15)
      {
        return 1;
      }
    }

    v26 = v30;
    sub_251A9D3AC(v11, v30);
    sub_251A9D3AC(v14, v26);
  }

  return 0;
}

uint64_t sub_251A99400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBHistogramSeries.Value(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v19 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_19:
    v17 = 0;
    return v17 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_251AA005C(v13, v10, type metadata accessor for PBHistogramSeries.Value);
      sub_251AA005C(v14, v7, type metadata accessor for PBHistogramSeries.Value);
      v16 = *v10 == *v7 && v10[1] == v7[1];
      if (!v16 && (sub_251C719D4() & 1) == 0 || (sub_251A99698(v10[2], v7[2]) & 1) == 0 || (v10[3] != v7[3] || v10[4] != v7[4]) && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_251C70ED4();
      sub_251A9D3AC(v7, type metadata accessor for PBHistogramSeries.Value);
      sub_251A9D3AC(v10, type metadata accessor for PBHistogramSeries.Value);
      if (v17)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_251A9D3AC(v7, type metadata accessor for PBHistogramSeries.Value);
    sub_251A9D3AC(v10, type metadata accessor for PBHistogramSeries.Value);
    goto LABEL_19;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_251A99698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBBucket(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_13:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_251AA005C(v13, v10, type metadata accessor for PBBucket);
      sub_251AA005C(v14, v7, type metadata accessor for PBBucket);
      if (*v10 != *v7 || v10[1] != v7[1] || *(v10 + 4) != *(v7 + 4))
      {
        break;
      }

      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v16 = sub_251C70ED4();
      sub_251A9D3AC(v7, type metadata accessor for PBBucket);
      sub_251A9D3AC(v10, type metadata accessor for PBBucket);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_251A9D3AC(v7, type metadata accessor for PBBucket);
    sub_251A9D3AC(v10, type metadata accessor for PBBucket);
    goto LABEL_13;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_251A9990C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251A99968(uint64_t a1, uint64_t a2)
{
  sub_251A85F5C(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v61 - v5;
  sub_251A9FEF4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v8 = v7;
  MEMORY[0x28223BE20](v7);
  v10 = &v61 - v9;
  v11 = type metadata accessor for PBHKConcept(0);
  v73 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v61 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v61 - v18;
  v20 = type metadata accessor for PBHKAllergyReaction(0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v27 = &v61 - v26;
  v28 = *(a1 + 16);
  if (v28 != *(a2 + 16))
  {
LABEL_31:
    v60 = 0;
    return v60 & 1;
  }

  if (!v28 || a1 == a2)
  {
    v60 = 1;
    return v60 & 1;
  }

  v70 = v24;
  v71 = v28;
  v29 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v30 = a1 + v29;
  v67 = v10;
  v68 = a2 + v29;
  v31 = 0;
  v65 = (v73 + 48);
  v66 = v8;
  v32 = *(v25 + 72);
  v61 = v14;
  v62 = v6;
  v72 = v23;
  v74 = &v61 - v26;
  v63 = v32;
  v64 = a1 + v29;
  while (1)
  {
    v33 = v32 * v31;
    v34 = v31;
    v35 = v27;
    result = sub_251AA005C(v30 + v32 * v31, v27, type metadata accessor for PBHKAllergyReaction);
    v69 = v34;
    if (v34 == v71)
    {
      break;
    }

    sub_251AA005C(v68 + v33, v23, type metadata accessor for PBHKAllergyReaction);
    v37 = *v35;
    v38 = *v23;
    v39 = *(*v35 + 16);
    if (v39 != *(*v23 + 16))
    {
      goto LABEL_30;
    }

    if (v39 && v37 != v38)
    {
      v40 = (*(v73 + 80) + 32) & ~*(v73 + 80);
      v41 = v37 + v40;
      v42 = v38 + v40;
      v43 = *(v73 + 72);
      while (1)
      {
        sub_251AA005C(v41, v19, type metadata accessor for PBHKConcept);
        sub_251AA005C(v42, v17, type metadata accessor for PBHKConcept);
        v44 = *(v11 + 20);
        v45 = *&v19[v44];
        v46 = *&v17[v44];
        if (v45 != v46)
        {

          v47 = sub_251B70648(v45, v46);

          if ((v47 & 1) == 0)
          {
            break;
          }
        }

        sub_251C703B4();
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v48 = sub_251C70ED4();
        sub_251A9D3AC(v17, type metadata accessor for PBHKConcept);
        sub_251A9D3AC(v19, type metadata accessor for PBHKConcept);
        if ((v48 & 1) == 0)
        {
          goto LABEL_30;
        }

        v42 += v43;
        v41 += v43;
        if (!--v39)
        {
          goto LABEL_14;
        }
      }

      sub_251A9D3AC(v17, type metadata accessor for PBHKConcept);
      sub_251A9D3AC(v19, type metadata accessor for PBHKConcept);
      goto LABEL_30;
    }

LABEL_14:
    if ((*(v74 + 1) != *(v72 + 1) || *(v74 + 2) != *(v72 + 2)) && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_30;
    }

    v49 = *(v70 + 28);
    v50 = v67;
    v51 = *(v66 + 48);
    sub_251A9FF6C(&v74[v49], v67, qword_2813E6D28, type metadata accessor for PBHKConcept);
    v23 = v72;
    sub_251A9FF6C(&v72[v49], v50 + v51, qword_2813E6D28, type metadata accessor for PBHKConcept);
    v52 = *v65;
    if ((*v65)(v50, 1, v11) == 1)
    {
      if (v52(v50 + v51, 1, v11) != 1)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v53 = v62;
      sub_251A9FF6C(v50, v62, qword_2813E6D28, type metadata accessor for PBHKConcept);
      if (v52(v50 + v51, 1, v11) == 1)
      {
        sub_251A9D3AC(v53, type metadata accessor for PBHKConcept);
LABEL_35:
        sub_251A9DBA8(v50, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_30:
        sub_251A9D3AC(v72, type metadata accessor for PBHKAllergyReaction);
        sub_251A9D3AC(v74, type metadata accessor for PBHKAllergyReaction);
        goto LABEL_31;
      }

      v54 = v61;
      sub_251A9D40C(v50 + v51, v61, type metadata accessor for PBHKConcept);
      v55 = *(v11 + 20);
      v56 = *(v53 + v55);
      v57 = *(v54 + v55);
      if (v56 != v57 && (, , v58 = sub_251B70648(v56, v57), , , (v58 & 1) == 0) || (sub_251C703B4(), sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]), (sub_251C70ED4() & 1) == 0))
      {
        sub_251A9D3AC(v54, type metadata accessor for PBHKConcept);
        sub_251A9D3AC(v53, type metadata accessor for PBHKConcept);
        sub_251A9FFEC(v50, qword_2813E6D28, type metadata accessor for PBHKConcept);
        goto LABEL_30;
      }

      sub_251A9D3AC(v54, type metadata accessor for PBHKConcept);
      sub_251A9D3AC(v53, type metadata accessor for PBHKConcept);
    }

    sub_251A9FFEC(v50, qword_2813E6D28, type metadata accessor for PBHKConcept);
    sub_251C703B4();
    sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v59 = v74;
    v60 = sub_251C70ED4();
    sub_251A9D3AC(v23, type metadata accessor for PBHKAllergyReaction);
    sub_251A9D3AC(v59, type metadata accessor for PBHKAllergyReaction);
    if (v60)
    {
      v31 = v69 + 1;
      v27 = v74;
      v32 = v63;
      v30 = v64;
      if (v69 + 1 != v71)
      {
        continue;
      }
    }

    return v60 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_251A9A1F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  v70 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v65 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v75 = &v59 - v8;
  sub_251A9FEF4(0, &qword_27F4790E0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  v71 = v9;
  MEMORY[0x28223BE20](v9);
  v72 = &v59 - v10;
  v74 = type metadata accessor for PBDateRange(0);
  v11 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v66 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A85F5C(0, qword_2813E6EE8, type metadata accessor for PBDateRange, v6);
  MEMORY[0x28223BE20](v13 - 8);
  v67 = (&v59 - v14);
  sub_251A9FEF4(0, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v73 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v59 - v16;
  v76 = type metadata accessor for PBCategorySeries.Event(0);
  v18 = MEMORY[0x28223BE20](v76);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v23 = &v59 - v22;
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
LABEL_64:
    v55 = 0;
    return v55 & 1;
  }

  if (!v24 || a1 == a2)
  {
    v55 = 1;
    return v55 & 1;
  }

  v68 = v17;
  v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v26 = a1 + v25;
  v27 = a2 + v25;
  v28 = (v70 + 48);
  v61 = *(v21 + 72);
  v62 = v4;
  v63 = (v70 + 48);
  v64 = (v11 + 48);
  v60 = &v59 - v22;
  while (1)
  {
    result = sub_251AA005C(v26, v23, type metadata accessor for PBCategorySeries.Event);
    if (!v24)
    {
      break;
    }

    v69 = v26;
    sub_251AA005C(v27, v20, type metadata accessor for PBCategorySeries.Event);
    if (*v23 != *v20)
    {
      goto LABEL_63;
    }

    v30 = *(v23 + 1) == *(v20 + 1) && *(v23 + 2) == *(v20 + 2);
    if (!v30 && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_63;
    }

    v70 = v24;
    v31 = *(v76 + 36);
    v32 = *(v73 + 48);
    v33 = v68;
    sub_251A9FF6C(&v23[v31], v68, qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251A9FF6C(&v20[v31], v33 + v32, qword_2813E6EE8, type metadata accessor for PBDateRange);
    v34 = *v64;
    v35 = v74;
    if ((*v64)(v33, 1, v74) == 1)
    {
      if (v34(v33 + v32, 1, v35) != 1)
      {
        goto LABEL_59;
      }

      sub_251A9FFEC(v33, qword_2813E6EE8, type metadata accessor for PBDateRange);
      v36 = v70;
    }

    else
    {
      v37 = v67;
      sub_251A9FF6C(v33, v67, qword_2813E6EE8, type metadata accessor for PBDateRange);
      if (v34(v33 + v32, 1, v35) == 1)
      {
        sub_251A9D3AC(v37, type metadata accessor for PBDateRange);
LABEL_59:
        v56 = &qword_27F4790D0;
        v57 = qword_2813E6EE8;
        v58 = type metadata accessor for PBDateRange;
        v49 = v33;
LABEL_62:
        sub_251A9DBA8(v49, v56, v57, v58);
        goto LABEL_63;
      }

      v38 = v66;
      sub_251A9D40C(v33 + v32, v66, type metadata accessor for PBDateRange);
      v28 = v63;
      v36 = v70;
      if ((*v37 != *v38 || v37[1] != *(v38 + 8)) && (sub_251C719D4() & 1) == 0 || (v37[2] != *(v38 + 16) || v37[3] != *(v38 + 24)) && (sub_251C719D4() & 1) == 0)
      {
LABEL_56:
        sub_251A9D3AC(v38, type metadata accessor for PBDateRange);
        sub_251A9D3AC(v37, type metadata accessor for PBDateRange);
        sub_251A9FFEC(v68, qword_2813E6EE8, type metadata accessor for PBDateRange);
LABEL_63:
        sub_251A9D3AC(v20, type metadata accessor for PBCategorySeries.Event);
        sub_251A9D3AC(v23, type metadata accessor for PBCategorySeries.Event);
        goto LABEL_64;
      }

      v39 = v37[4];
      v40 = *(v38 + 32);
      if (*(v38 + 40) == 1)
      {
        if (v40 <= 2)
        {
          if (v40)
          {
            if (v40 == 1)
            {
              if (v39 != 1)
              {
                goto LABEL_56;
              }
            }

            else if (v39 != 2)
            {
              goto LABEL_56;
            }
          }

          else if (v39)
          {
            goto LABEL_56;
          }
        }

        else if (v40 > 4)
        {
          if (v40 == 5)
          {
            if (v39 != 5)
            {
              goto LABEL_56;
            }
          }

          else if (v39 != 6)
          {
            goto LABEL_56;
          }
        }

        else if (v40 == 3)
        {
          if (v39 != 3)
          {
            goto LABEL_56;
          }
        }

        else if (v39 != 4)
        {
          goto LABEL_56;
        }
      }

      else if (v39 != v40)
      {
        goto LABEL_56;
      }

      sub_251C703B4();
      v41 = v37;
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v42 = sub_251C70ED4();
      sub_251A9D3AC(v38, type metadata accessor for PBDateRange);
      sub_251A9D3AC(v41, type metadata accessor for PBDateRange);
      sub_251A9FFEC(v68, qword_2813E6EE8, type metadata accessor for PBDateRange);
      if ((v42 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    if ((*(v23 + 3) != *(v20 + 3) || *(v23 + 4) != *(v20 + 4)) && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_63;
    }

    v43 = *(v76 + 28);
    v44 = v72;
    v45 = *(v71 + 48);
    sub_251A9FF6C(&v23[v43], v72, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    v46 = &v20[v43];
    v47 = v62;
    sub_251A9FF6C(v46, v44 + v45, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    v48 = *v28;
    if ((*v28)(v44, 1, v47) == 1)
    {
      v30 = v48(v44 + v45, 1, v47) == 1;
      v49 = v44;
      if (!v30)
      {
        goto LABEL_61;
      }

      sub_251A9FFEC(v44, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    }

    else
    {
      v50 = v36;
      v51 = v75;
      sub_251A9FF6C(v44, v75, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
      if (v48(v44 + v45, 1, v47) == 1)
      {
        sub_251A9D3AC(v51, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
        v49 = v44;
        v23 = v60;
LABEL_61:
        v56 = &qword_27F4790E0;
        v57 = qword_2813E5FC8;
        v58 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData;
        goto LABEL_62;
      }

      v52 = v65;
      sub_251A9D40C(v44 + v45, v65, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
      v53 = sub_251B5D400(v75, v52);
      v54 = v52;
      v28 = v63;
      sub_251A9D3AC(v54, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
      sub_251A9D3AC(v75, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
      sub_251A9FFEC(v44, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
      v36 = v50;
      v23 = v60;
      if ((v53 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    sub_251C703B4();
    sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v55 = sub_251C70ED4();
    sub_251A9D3AC(v20, type metadata accessor for PBCategorySeries.Event);
    sub_251A9D3AC(v23, type metadata accessor for PBCategorySeries.Event);
    if (v55)
    {
      v24 = v36 - 1;
      v27 += v61;
      v26 = v69 + v61;
      if (v36 != 1)
      {
        continue;
      }
    }

    return v55 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_251A9AD0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBCycleTracking.Event(0);
  v44 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = type metadata accessor for PBCycleTracking.Cycle(0);
  v11 = MEMORY[0x28223BE20](v10);
  v43 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v35 - v14);
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
LABEL_29:
    v34 = 0;
    return v34 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v34 = 1;
    return v34 & 1;
  }

  v17 = 0;
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v37 = v10;
  v38 = a2 + v18;
  v39 = *(v13 + 72);
  v40 = a1 + v18;
  v42 = &v35 - v14;
  v36 = v16;
  while (1)
  {
    v19 = v39 * v17;
    result = sub_251AA005C(v40 + v39 * v17, v15, type metadata accessor for PBCycleTracking.Cycle);
    if (v17 == v16)
    {
      break;
    }

    v41 = v17;
    v21 = v38 + v19;
    v22 = v43;
    sub_251AA005C(v21, v43, type metadata accessor for PBCycleTracking.Cycle);
    v23 = *v15 == *v22 && v15[1] == v22[1];
    if (!v23 && (sub_251C719D4() & 1) == 0 || ((result = *(v42 + 16), result != *(v43 + 16)) || *(v42 + 24) != *(v43 + 24)) && (result = sub_251C719D4(), (result & 1) == 0) || (v24 = *(v42 + 32), v25 = *(v43 + 32), v26 = *(v24 + 16), v26 != *(v25 + 16)))
    {
LABEL_28:
      sub_251A9D3AC(v43, type metadata accessor for PBCycleTracking.Cycle);
      sub_251A9D3AC(v42, type metadata accessor for PBCycleTracking.Cycle);
      goto LABEL_29;
    }

    if (v26 && v24 != v25)
    {
      v27 = 0;
      v28 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v29 = v24 + v28;
      v30 = v25 + v28;
      while (v27 < *(v24 + 16))
      {
        v31 = *(v44 + 72) * v27;
        result = sub_251AA005C(v29 + v31, v9, type metadata accessor for PBCycleTracking.Event);
        if (v27 >= *(v25 + 16))
        {
          goto LABEL_32;
        }

        sub_251AA005C(v30 + v31, v7, type metadata accessor for PBCycleTracking.Event);
        v32 = sub_251B8C59C(v9, v7);
        sub_251A9D3AC(v7, type metadata accessor for PBCycleTracking.Event);
        result = sub_251A9D3AC(v9, type metadata accessor for PBCycleTracking.Event);
        if ((v32 & 1) == 0)
        {
          goto LABEL_28;
        }

        if (v26 == ++v27)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      break;
    }

LABEL_22:
    if (*(v42 + 40) != *(v43 + 40) || *(v42 + 44) != *(v43 + 44))
    {
      goto LABEL_28;
    }

    sub_251C703B4();
    sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v15 = v42;
    v33 = v43;
    v34 = sub_251C70ED4();
    sub_251A9D3AC(v33, type metadata accessor for PBCycleTracking.Cycle);
    sub_251A9D3AC(v15, type metadata accessor for PBCycleTracking.Cycle);
    if (v34)
    {
      v17 = v41 + 1;
      v16 = v36;
      if (v41 + 1 != v36)
      {
        continue;
      }
    }

    return v34 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_251A9B180(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    for (i = (a2 + 40); ; i += 16)
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(i - 1);
      if (*i == 1)
      {
        switch(v7)
        {
          case 1:
            if (v5 != 1)
            {
              return 0;
            }

            goto LABEL_6;
          case 2:
            if (v5 != 2)
            {
              return 0;
            }

            goto LABEL_6;
          case 3:
            if (v5 != 3)
            {
              return 0;
            }

            goto LABEL_6;
          case 4:
            if (v5 != 4)
            {
              return 0;
            }

            goto LABEL_6;
          case 5:
            if (v5 != 5)
            {
              return 0;
            }

            goto LABEL_6;
          case 6:
            if (v5 != 6)
            {
              return 0;
            }

            goto LABEL_6;
          case 7:
            if (v5 != 7)
            {
              return 0;
            }

            goto LABEL_6;
          case 8:
            if (v5 != 8)
            {
              return 0;
            }

            goto LABEL_6;
          case 9:
            if (v5 != 9)
            {
              return 0;
            }

            goto LABEL_6;
          case 10:
            if (v5 != 10)
            {
              return 0;
            }

            goto LABEL_6;
          case 11:
            if (v5 != 11)
            {
              return 0;
            }

            goto LABEL_6;
          case 12:
            if (v5 != 12)
            {
              return 0;
            }

            goto LABEL_6;
          case 13:
            if (v5 != 13)
            {
              return 0;
            }

            goto LABEL_6;
          case 14:
            if (v5 != 14)
            {
              return 0;
            }

            goto LABEL_6;
          case 15:
            if (v5 != 15)
            {
              return 0;
            }

            goto LABEL_6;
          case 16:
            if (v5 != 16)
            {
              return 0;
            }

            goto LABEL_6;
          case 17:
            if (v5 != 17)
            {
              return 0;
            }

            goto LABEL_6;
          case 18:
            if (v5 != 18)
            {
              return 0;
            }

            goto LABEL_6;
          case 19:
            if (v5 != 19)
            {
              return 0;
            }

            goto LABEL_6;
          case 20:
            if (v5 != 20)
            {
              return 0;
            }

            goto LABEL_6;
          case 21:
            if (v5 != 21)
            {
              return 0;
            }

            goto LABEL_6;
          case 22:
            if (v5 != 22)
            {
              return 0;
            }

            goto LABEL_6;
          default:
            if (v5)
            {
              return 0;
            }

            goto LABEL_6;
        }
      }

      if (v5 != v7)
      {
        break;
      }

LABEL_6:
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_251A9B368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBSleepSummary.Schedule(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_19:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_251AA005C(v13, v10, type metadata accessor for PBSleepSummary.Schedule);
      sub_251AA005C(v14, v7, type metadata accessor for PBSleepSummary.Schedule);
      if (*v10 != *v7 || v10[1] != v7[1] || v10[2] != v7[2] || v10[3] != v7[3] || v10[4] != v7[4] || v10[5] != v7[5] || v10[6] != v7[6] || *(v10 + 2) != *(v7 + 2) || *(v10 + 3) != *(v7 + 3))
      {
        break;
      }

      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v16 = sub_251C70ED4();
      sub_251A9D3AC(v7, type metadata accessor for PBSleepSummary.Schedule);
      sub_251A9D3AC(v10, type metadata accessor for PBSleepSummary.Schedule);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_251A9D3AC(v7, type metadata accessor for PBSleepSummary.Schedule);
    sub_251A9D3AC(v10, type metadata accessor for PBSleepSummary.Schedule);
    goto LABEL_19;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_251A9B63C(uint64_t a1, uint64_t a2)
{
  v45 = type metadata accessor for PBHKInspectableValueCollection(0);
  v4 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A85F5C(0, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  sub_251A9FEF4(0, &qword_27F4790F0, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v43 = &v36 - v10;
  v11 = type metadata accessor for PBHKReferenceRange(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v17 = (&v36 - v16);
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_22:
    v34 = 0;
    return v34 & 1;
  }

  if (v18 && a1 != a2)
  {
    v37 = v8;
    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v41 = v14;
    v42 = (v4 + 48);
    v39 = *(v15 + 72);
    v40 = v11;
    v22 = qword_2813E32E8;
    while (1)
    {
      sub_251AA005C(v20, v17, type metadata accessor for PBHKReferenceRange);
      sub_251AA005C(v21, v14, type metadata accessor for PBHKReferenceRange);
      v23 = *v17 == *v14 && v17[1] == v14[1];
      if (!v23 && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      v24 = *(v11 + 24);
      v25 = v43;
      v26 = *(v44 + 48);
      sub_251A9FF6C(v17 + v24, v43, v22, type metadata accessor for PBHKInspectableValueCollection);
      v27 = v14 + v24;
      v28 = v22;
      v29 = v45;
      sub_251A9FF6C(v27, v25 + v26, v28, type metadata accessor for PBHKInspectableValueCollection);
      v30 = *v42;
      if ((*v42)(v25, 1, v29) == 1)
      {
        if (v30(v25 + v26, 1, v45) != 1)
        {
          goto LABEL_20;
        }

        v22 = v28;
        sub_251A9FFEC(v25, v28, type metadata accessor for PBHKInspectableValueCollection);
        v11 = v40;
        v14 = v41;
      }

      else
      {
        v31 = v37;
        sub_251A9FF6C(v25, v37, v28, type metadata accessor for PBHKInspectableValueCollection);
        if (v30(v25 + v26, 1, v45) == 1)
        {
          sub_251A9D3AC(v31, type metadata accessor for PBHKInspectableValueCollection);
LABEL_20:
          sub_251A9DBA8(v25, &qword_27F4790F0, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
          v14 = v41;
          break;
        }

        v32 = v38;
        sub_251A9D40C(v25 + v26, v38, type metadata accessor for PBHKInspectableValueCollection);
        v33 = sub_251B80550(v31, v32);
        sub_251A9D3AC(v32, type metadata accessor for PBHKInspectableValueCollection);
        sub_251A9D3AC(v31, type metadata accessor for PBHKInspectableValueCollection);
        sub_251A9FFEC(v25, v28, type metadata accessor for PBHKInspectableValueCollection);
        v22 = v28;
        v11 = v40;
        v14 = v41;
        if ((v33 & 1) == 0)
        {
          break;
        }
      }

      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v34 = sub_251C70ED4();
      sub_251A9D3AC(v14, type metadata accessor for PBHKReferenceRange);
      sub_251A9D3AC(v17, type metadata accessor for PBHKReferenceRange);
      if (v34)
      {
        v21 += v39;
        v20 += v39;
        if (--v18)
        {
          continue;
        }
      }

      return v34 & 1;
    }

    sub_251A9D3AC(v14, type metadata accessor for PBHKReferenceRange);
    sub_251A9D3AC(v17, type metadata accessor for PBHKReferenceRange);
    goto LABEL_22;
  }

  v34 = 1;
  return v34 & 1;
}

uint64_t sub_251A9BBF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBSleepSeries.Value(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_18:
    v17 = 0;
    return v17 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_251AA005C(v13, v10, type metadata accessor for PBSleepSeries.Value);
      sub_251AA005C(v14, v7, type metadata accessor for PBSleepSeries.Value);
      v16 = *v10 == *v7 && *(v10 + 1) == *(v7 + 1);
      if (!v16 && (sub_251C719D4() & 1) == 0 || *(v10 + 4) != *(v7 + 4) || *(v10 + 5) != *(v7 + 5) || *(v10 + 6) != *(v7 + 6))
      {
        break;
      }

      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_251C70ED4();
      sub_251A9D3AC(v7, type metadata accessor for PBSleepSeries.Value);
      sub_251A9D3AC(v10, type metadata accessor for PBSleepSeries.Value);
      if (v17)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_251A9D3AC(v7, type metadata accessor for PBSleepSeries.Value);
    sub_251A9D3AC(v10, type metadata accessor for PBSleepSeries.Value);
    goto LABEL_18;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_251A9BEC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v25 = a3(0);
  v9 = MEMORY[0x28223BE20](v25);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v14 = (&v24 - v13);
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
LABEL_23:
    v22 = 0;
    return v22 & 1;
  }

  if (v15 && a1 != a2)
  {
    v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v17 = a1 + v16;
    v18 = a2 + v16;
    v19 = *(v12 + 72);
    while (1)
    {
      sub_251AA005C(v17, v14, a5);
      sub_251AA005C(v18, v11, a5);
      v20 = *v14 == *v11 && v14[1] == v11[1];
      if (!v20 && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      v21 = v14[2] == v11[2] && v14[3] == v11[3];
      if (!v21 && (sub_251C719D4() & 1) == 0 || (v14[4] != v11[4] || v14[5] != v11[5]) && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v22 = sub_251C70ED4();
      sub_251A9D3AC(v11, a4);
      sub_251A9D3AC(v14, a4);
      if (v22)
      {
        v18 += v19;
        v17 += v19;
        if (--v15)
        {
          continue;
        }
      }

      return v22 & 1;
    }

    sub_251A9D3AC(v11, a4);
    sub_251A9D3AC(v14, a4);
    goto LABEL_23;
  }

  v22 = 1;
  return v22 & 1;
}

uint64_t sub_251A9C138(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBDataTypeShared(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = (&v21 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v19 = 1;
      return v19 & 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_251AA005C(v13, v10, type metadata accessor for PBDataTypeShared);
      sub_251AA005C(v14, v7, type metadata accessor for PBDataTypeShared);
      v16 = *v10 == *v7 && v10[1] == *(v7 + 1);
      if (!v16 && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      v17 = v10[2];
      v18 = *(v7 + 2);
      if (v7[24] == 1)
      {
        if (v18 > 3)
        {
          if (v18 > 5)
          {
            if (v18 == 6)
            {
              if (v17 != 6)
              {
                break;
              }
            }

            else if (v17 != 7)
            {
              break;
            }
          }

          else if (v18 == 4)
          {
            if (v17 != 4)
            {
              break;
            }
          }

          else if (v17 != 5)
          {
            break;
          }
        }

        else if (v18 > 1)
        {
          if (v18 == 2)
          {
            if (v17 != 2)
            {
              break;
            }
          }

          else if (v17 != 3)
          {
            break;
          }
        }

        else if (v18)
        {
          if (v17 != 1)
          {
            break;
          }
        }

        else if (v17)
        {
          break;
        }
      }

      else if (v17 != v18)
      {
        break;
      }

      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v19 = sub_251C70ED4();
      sub_251A9D3AC(v7, type metadata accessor for PBDataTypeShared);
      sub_251A9D3AC(v10, type metadata accessor for PBDataTypeShared);
      if (v19)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v19 & 1;
    }

    sub_251A9D3AC(v7, type metadata accessor for PBDataTypeShared);
    sub_251A9D3AC(v10, type metadata accessor for PBDataTypeShared);
  }

  v19 = 0;
  return v19 & 1;
}

uint64_t sub_251A9C498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBClinicalRecord(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v20 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_251AA005C(v13, v10, type metadata accessor for PBClinicalRecord);
        sub_251AA005C(v14, v7, type metadata accessor for PBClinicalRecord);
        v16 = *(v4 + 20);
        v17 = *&v10[v16];
        v18 = *&v7[v16];
        if (v17 != v18)
        {

          v19 = sub_251B6E49C(v17, v18);

          if (!v19)
          {
            break;
          }
        }

        sub_251C703B4();
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v20 = sub_251C70ED4();
        sub_251A9D3AC(v7, type metadata accessor for PBClinicalRecord);
        sub_251A9D3AC(v10, type metadata accessor for PBClinicalRecord);
        if (v20)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v20 & 1;
      }

      sub_251A9D3AC(v7, type metadata accessor for PBClinicalRecord);
      sub_251A9D3AC(v10, type metadata accessor for PBClinicalRecord);
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_251A9C778(uint64_t a1, uint64_t a2)
{
  v33[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          sub_251A858C4(v7, v6);
          sub_251A858C4(v9, v8);
          v22 = sub_251C6FB74();
          if (v22)
          {
            v23 = sub_251C6FBA4();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          sub_251C6FB94();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        sub_251A858C4(v7, v6);
        sub_251A858C4(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          sub_251A858C4(v7, v6);
          sub_251A858C4(v9, v8);
          v27 = sub_251C6FB74();
          if (v27)
          {
            v28 = sub_251C6FBA4();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          sub_251C6FB94();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          sub_251A9CD78(v24, v25, v26, v33);
          sub_251A83028(v9, v8);
          sub_251A83028(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        sub_251A858C4(v7, v6);
        sub_251A858C4(v9, v8);
      }

      sub_251A9CD78(v33, v9, v8, &v32);
      sub_251A83028(v9, v8);
      sub_251A83028(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t sub_251A9CBD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_251AA005C(v20, v17, a4);
        sub_251AA005C(v21, v14, a4);
        v23 = a5(v17, v14);
        sub_251A9D3AC(v14, a6);
        sub_251A9D3AC(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_251A9CD78@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_251C6FB74();
    if (v10)
    {
      v11 = sub_251C6FBA4();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_251C6FB94();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_251C6FB74();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_251C6FBA4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_251C6FB94();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_251A9CFA8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_251A9D138(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_251A83028(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_251A9CD78(v13, a3, a4, &v12);
  v10 = v4;
  sub_251A83028(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_251A9D138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_251C6FB74();
  v11 = result;
  if (result)
  {
    result = sub_251C6FBA4();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_251C6FB94();
  sub_251A9CD78(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_251A9D1F0(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_251A858C4(a3, a4);
          return sub_251A9CFA8(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_251A9D358()
{
  result = qword_27F478FA8;
  if (!qword_27F478FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478FA8);
  }

  return result;
}

uint64_t sub_251A9D3AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251A9D40C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251A9D474(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v48 = &v45 - v8;
  sub_251A9FEF4(0, &qword_27F4790C8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v50 = v9;
  MEMORY[0x28223BE20](v9);
  v53 = &v45 - v10;
  v54 = type metadata accessor for PBDateRange(0);
  v11 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v49 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A85F5C(0, qword_2813E6EE8, type metadata accessor for PBDateRange, v6);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v45 - v14;
  sub_251A9FEF4(0, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v17 = v16;
  MEMORY[0x28223BE20](v16);
  v19 = &v45 - v18;
  nullsub_1();
  v21 = v20;
  nullsub_1();
  if (v21 != v22)
  {
    goto LABEL_16;
  }

  v23 = a2;
  v46 = type metadata accessor for PBTypedData(0);
  v24 = *(v46 + 28);
  v25 = *(v17 + 48);
  sub_251A9FF6C(a1 + v24, v19, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251A9FF6C(v23 + v24, &v19[v25], qword_2813E6EE8, type metadata accessor for PBDateRange);
  v26 = *(v11 + 48);
  v27 = v54;
  if (v26(v19, 1, v54) != 1)
  {
    sub_251A9FF6C(v19, v15, qword_2813E6EE8, type metadata accessor for PBDateRange);
    if (v26(&v19[v25], 1, v27) != 1)
    {
      v32 = v49;
      sub_251A9D40C(&v19[v25], v49, type metadata accessor for PBDateRange);
      v33 = sub_251B5E420(v15, v32);
      sub_251A9D3AC(v32, type metadata accessor for PBDateRange);
      sub_251A9D3AC(v15, type metadata accessor for PBDateRange);
      sub_251A9FFEC(v19, qword_2813E6EE8, type metadata accessor for PBDateRange);
      if ((v33 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    sub_251A9D3AC(v15, type metadata accessor for PBDateRange);
LABEL_7:
    v28 = &qword_27F4790D0;
    v29 = qword_2813E6EE8;
    v30 = type metadata accessor for PBDateRange;
    v31 = v19;
LABEL_15:
    sub_251A9DBA8(v31, v28, v29, v30);
    goto LABEL_16;
  }

  if (v26(&v19[v25], 1, v27) != 1)
  {
    goto LABEL_7;
  }

  sub_251A9FFEC(v19, qword_2813E6EE8, type metadata accessor for PBDateRange);
LABEL_9:
  v34 = *(v46 + 20);
  v35 = *(v50 + 48);
  v36 = v53;
  sub_251A9FF6C(a1 + v34, v53, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  sub_251A9FF6C(v23 + v34, v36 + v35, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v37 = v52;
  v38 = *(v51 + 48);
  if (v38(v36, 1, v52) == 1)
  {
    if (v38(v36 + v35, 1, v37) == 1)
    {
      sub_251A9FFEC(v36, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
LABEL_19:
      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v40 = sub_251C70ED4();
      return v40 & 1;
    }

    goto LABEL_14;
  }

  v39 = v48;
  sub_251A9FF6C(v36, v48, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  if (v38(v36 + v35, 1, v37) == 1)
  {
    sub_251A9D3AC(v39, type metadata accessor for PBTypedData.OneOf_Raw);
LABEL_14:
    v28 = &qword_27F4790C8;
    v29 = qword_2813E6C90;
    v30 = type metadata accessor for PBTypedData.OneOf_Raw;
    v31 = v36;
    goto LABEL_15;
  }

  v42 = v36 + v35;
  v43 = v47;
  sub_251A9D40C(v42, v47, type metadata accessor for PBTypedData.OneOf_Raw);
  v44 = sub_251A9DC04(v39, v43);
  sub_251A9D3AC(v43, type metadata accessor for PBTypedData.OneOf_Raw);
  sub_251A9D3AC(v39, type metadata accessor for PBTypedData.OneOf_Raw);
  sub_251A9FFEC(v36, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  if (v44)
  {
    goto LABEL_19;
  }

LABEL_16:
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_251A9DBA8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251A9FEF4(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_251A9DC04(uint64_t a1, uint64_t a2)
{
  v157 = a2;
  v158 = a1;
  v128 = type metadata accessor for PBActiveMedications(0);
  MEMORY[0x28223BE20](v128);
  v145 = &v120 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for PBMedicationTrackingSchedules(0);
  MEMORY[0x28223BE20](v127);
  v144 = &v120 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for PBMedicationTrackingDoseEvents(0);
  MEMORY[0x28223BE20](v126);
  v143 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for PBMedicationTrackings(0);
  MEMORY[0x28223BE20](v125);
  v141 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for PBHistogramSeries(0);
  MEMORY[0x28223BE20](v121);
  v142 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for PBSleepSeries(0);
  MEMORY[0x28223BE20](v124);
  v140 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for PBSleepSummary(0);
  MEMORY[0x28223BE20](v120);
  v139 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PBPatientMeta(0);
  MEMORY[0x28223BE20](v9 - 8);
  v138 = (&v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PBActivitySummarySeries(0);
  MEMORY[0x28223BE20](v11 - 8);
  v137 = (&v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for PBECGMeasurement(0);
  MEMORY[0x28223BE20](v13 - 8);
  v135 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PBCycleTracking(0);
  MEMORY[0x28223BE20](v15 - 8);
  v134 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for PBECGs(0);
  MEMORY[0x28223BE20](v123);
  v136 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for PBAllClinicalRecords(0);
  MEMORY[0x28223BE20](v122);
  v133 = (&v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for PBCharacteristics(0);
  MEMORY[0x28223BE20](v19 - 8);
  v132 = (&v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for PBWorkout(0);
  MEMORY[0x28223BE20](v21 - 8);
  v131 = (&v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for PBCategorySeries(0);
  MEMORY[0x28223BE20](v23 - 8);
  v130 = (&v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for PBTimeSeries(0);
  MEMORY[0x28223BE20](v25 - 8);
  v129 = (&v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v28 = MEMORY[0x28223BE20](v27);
  v155 = &v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v156 = &v120 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v153 = &v120 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v152 = &v120 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v154 = &v120 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v151 = &v120 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v150 = &v120 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v147 = &v120 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v146 = &v120 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v48 = (&v120 - v47);
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v120 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v149 = &v120 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v148 = &v120 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v58 = (&v120 - v57);
  v59 = MEMORY[0x28223BE20](v56);
  v61 = (&v120 - v60);
  v62 = MEMORY[0x28223BE20](v59);
  v64 = (&v120 - v63);
  MEMORY[0x28223BE20](v62);
  v66 = (&v120 - v65);
  sub_251A9FE94(0, &qword_27F4790D8, type metadata accessor for PBTypedData.OneOf_Raw);
  v68 = MEMORY[0x28223BE20](v67 - 8);
  v70 = &v120 - v69;
  v71 = *(v68 + 56);
  sub_251AA005C(v158, &v120 - v69, type metadata accessor for PBTypedData.OneOf_Raw);
  v158 = v71;
  sub_251AA005C(v157, &v70[v71], type metadata accessor for PBTypedData.OneOf_Raw);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_251AA005C(v70, v64, type metadata accessor for PBTypedData.OneOf_Raw);
      v103 = v158;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v104 = v130;
        sub_251A9D40C(&v70[v103], v130, type metadata accessor for PBCategorySeries);
        v98 = v70;
        v90 = sub_251BAE270(v64, v104);
        v99 = type metadata accessor for PBCategorySeries;
        sub_251A9D3AC(v104, type metadata accessor for PBCategorySeries);
        v100 = v64;
        goto LABEL_86;
      }

      v73 = type metadata accessor for PBCategorySeries;
      v74 = v64;
      goto LABEL_78;
    case 2u:
      sub_251AA005C(v70, v61, type metadata accessor for PBTypedData.OneOf_Raw);
      v93 = v158;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v94 = v131;
        sub_251A9D40C(&v70[v93], v131, type metadata accessor for PBWorkout);
        v89 = v70;
        v90 = sub_251BA3424(v61, v94);
        sub_251A9D3AC(v94, type metadata accessor for PBWorkout);
        v91 = v61;
        v92 = type metadata accessor for PBWorkout;
        goto LABEL_31;
      }

      v73 = type metadata accessor for PBWorkout;
      v74 = v61;
      goto LABEL_78;
    case 3u:
      sub_251AA005C(v70, v58, type metadata accessor for PBTypedData.OneOf_Raw);
      v96 = v158;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v97 = v132;
        sub_251A9D40C(&v70[v96], v132, type metadata accessor for PBCharacteristics);
        v98 = v70;
        v90 = sub_251BAC708(v58, v97);
        v99 = type metadata accessor for PBCharacteristics;
        sub_251A9D3AC(v97, type metadata accessor for PBCharacteristics);
        v100 = v58;
        goto LABEL_86;
      }

      v73 = type metadata accessor for PBCharacteristics;
      v74 = v58;
      goto LABEL_78;
    case 4u:
      v75 = v148;
      sub_251AA005C(v70, v148, type metadata accessor for PBTypedData.OneOf_Raw);
      v81 = v158;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v113 = type metadata accessor for PBAllClinicalRecords;
        goto LABEL_77;
      }

      v82 = v133;
      sub_251A9D40C(&v70[v81], v133, type metadata accessor for PBAllClinicalRecords);
      if (sub_251A9C498(*v75, *v82))
      {
        sub_251C703B4();
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v83 = sub_251C70ED4();
        sub_251A9D3AC(v82, type metadata accessor for PBAllClinicalRecords);
        if (v83)
        {
          v84 = type metadata accessor for PBAllClinicalRecords;
          v85 = v75;
          goto LABEL_58;
        }
      }

      else
      {
        sub_251A9D3AC(v82, type metadata accessor for PBAllClinicalRecords);
      }

      v118 = type metadata accessor for PBAllClinicalRecords;
      v117 = v75;
      goto LABEL_90;
    case 5u:
      v75 = v149;
      sub_251AA005C(v70, v149, type metadata accessor for PBTypedData.OneOf_Raw);
      v105 = v158;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v113 = type metadata accessor for PBECGs;
        goto LABEL_77;
      }

      v77 = v136;
      sub_251A9D40C(&v70[v105], v136, type metadata accessor for PBECGs);
      if (sub_251A937D8(*v75, *v77))
      {
        sub_251C703B4();
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (sub_251C70ED4())
        {
          v78 = type metadata accessor for PBECGs;
          goto LABEL_57;
        }
      }

      v114 = type metadata accessor for PBECGs;
      goto LABEL_89;
    case 6u:
      sub_251AA005C(v70, v51, type metadata accessor for PBTypedData.OneOf_Raw);
      v107 = v158;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v108 = v134;
        sub_251A9D40C(&v70[v107], v134, type metadata accessor for PBCycleTracking);
        v98 = v70;
        v90 = sub_251BAF44C(v51, v108);
        v99 = type metadata accessor for PBCycleTracking;
        sub_251A9D3AC(v108, type metadata accessor for PBCycleTracking);
        v100 = v51;
        goto LABEL_86;
      }

      v73 = type metadata accessor for PBCycleTracking;
      v74 = v51;
      goto LABEL_78;
    case 7u:
      sub_251AA005C(v70, v48, type metadata accessor for PBTypedData.OneOf_Raw);
      v101 = v158;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v102 = v135;
        sub_251A9D40C(&v70[v101], v135, type metadata accessor for PBECGMeasurement);
        v98 = v70;
        v90 = sub_251BAC720(v48, v102);
        v99 = type metadata accessor for PBECGMeasurement;
        sub_251A9D3AC(v102, type metadata accessor for PBECGMeasurement);
        v100 = v48;
        goto LABEL_86;
      }

      v73 = type metadata accessor for PBECGMeasurement;
      v74 = v48;
      goto LABEL_78;
    case 8u:
      v75 = v146;
      sub_251AA005C(v70, v146, type metadata accessor for PBTypedData.OneOf_Raw);
      v111 = v158;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v112 = v137;
        sub_251A9D40C(&v70[v111], v137, type metadata accessor for PBActivitySummarySeries);
        v98 = v70;
        v90 = sub_251BA5AC8(v75, v112);
        v99 = type metadata accessor for PBActivitySummarySeries;
        sub_251A9D3AC(v112, type metadata accessor for PBActivitySummarySeries);
        v100 = v75;
        goto LABEL_86;
      }

      v113 = type metadata accessor for PBActivitySummarySeries;
      goto LABEL_77;
    case 9u:
      v75 = v147;
      sub_251AA005C(v70, v147, type metadata accessor for PBTypedData.OneOf_Raw);
      v87 = v158;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v113 = type metadata accessor for PBPatientMeta;
        goto LABEL_77;
      }

      v88 = v138;
      sub_251A9D40C(&v70[v87], v138, type metadata accessor for PBPatientMeta);
      v89 = v70;
      v90 = sub_251BB0E20(v75, v88);
      sub_251A9D3AC(v88, type metadata accessor for PBPatientMeta);
      v91 = v75;
      v92 = type metadata accessor for PBPatientMeta;
LABEL_31:
      sub_251A9D3AC(v91, v92);
      sub_251A9D3AC(v89, type metadata accessor for PBTypedData.OneOf_Raw);
      return v90 & 1;
    case 0xAu:
      v75 = v150;
      sub_251AA005C(v70, v150, type metadata accessor for PBTypedData.OneOf_Raw);
      v109 = v158;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        v113 = type metadata accessor for PBSleepSummary;
        goto LABEL_77;
      }

      v77 = v139;
      sub_251A9D40C(&v70[v109], v139, type metadata accessor for PBSleepSummary);
      if ((sub_251A9B368(*v75, *v77) & 1) != 0 && *(v75 + 8) == *(v77 + 8))
      {
        sub_251C703B4();
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (sub_251C70ED4())
        {
          v78 = type metadata accessor for PBSleepSummary;
          goto LABEL_57;
        }
      }

      v114 = type metadata accessor for PBSleepSummary;
      goto LABEL_89;
    case 0xBu:
      v75 = v151;
      sub_251AA005C(v70, v151, type metadata accessor for PBTypedData.OneOf_Raw);
      v80 = v158;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        v113 = type metadata accessor for PBSleepSeries;
        goto LABEL_77;
      }

      v77 = v140;
      sub_251A9D40C(&v70[v80], v140, type metadata accessor for PBSleepSeries);
      if (sub_251A9BBF4(*v75, *v77))
      {
        sub_251C703B4();
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (sub_251C70ED4())
        {
          v78 = type metadata accessor for PBSleepSeries;
          goto LABEL_57;
        }
      }

      v114 = type metadata accessor for PBSleepSeries;
      goto LABEL_89;
    case 0xCu:
      v75 = v154;
      sub_251AA005C(v70, v154, type metadata accessor for PBTypedData.OneOf_Raw);
      v86 = v158;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        v113 = type metadata accessor for PBHistogramSeries;
        goto LABEL_77;
      }

      v77 = v142;
      sub_251A9D40C(&v70[v86], v142, type metadata accessor for PBHistogramSeries);
      if (sub_251A99400(*v75, *v77) & 1) != 0 && (*(v75 + 8) == *(v77 + 8) && *(v75 + 16) == *(v77 + 16) || (sub_251C719D4()))
      {
        sub_251C703B4();
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (sub_251C70ED4())
        {
          v78 = type metadata accessor for PBHistogramSeries;
          goto LABEL_57;
        }
      }

      v114 = type metadata accessor for PBHistogramSeries;
      goto LABEL_89;
    case 0xDu:
      v75 = v152;
      sub_251AA005C(v70, v152, type metadata accessor for PBTypedData.OneOf_Raw);
      v106 = v158;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        v113 = type metadata accessor for PBMedicationTrackings;
        goto LABEL_77;
      }

      v77 = v141;
      sub_251A9D40C(&v70[v106], v141, type metadata accessor for PBMedicationTrackings);
      if (sub_251A954A0(*v75, *v77))
      {
        sub_251C703B4();
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (sub_251C70ED4())
        {
          v78 = type metadata accessor for PBMedicationTrackings;
          goto LABEL_57;
        }
      }

      v114 = type metadata accessor for PBMedicationTrackings;
      goto LABEL_89;
    case 0xEu:
      v75 = v153;
      sub_251AA005C(v70, v153, type metadata accessor for PBTypedData.OneOf_Raw);
      v79 = v158;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        v113 = type metadata accessor for PBMedicationTrackingDoseEvents;
        goto LABEL_77;
      }

      v77 = v143;
      sub_251A9D40C(&v70[v79], v143, type metadata accessor for PBMedicationTrackingDoseEvents);
      if (sub_251A93D48(*v75, *v77))
      {
        sub_251C703B4();
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (sub_251C70ED4())
        {
          v78 = type metadata accessor for PBMedicationTrackingDoseEvents;
          goto LABEL_57;
        }
      }

      v114 = type metadata accessor for PBMedicationTrackingDoseEvents;
      goto LABEL_89;
    case 0xFu:
      v75 = v156;
      sub_251AA005C(v70, v156, type metadata accessor for PBTypedData.OneOf_Raw);
      v95 = v158;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        v113 = type metadata accessor for PBMedicationTrackingSchedules;
        goto LABEL_77;
      }

      v77 = v144;
      sub_251A9D40C(&v70[v95], v144, type metadata accessor for PBMedicationTrackingSchedules);
      if (sub_251A9CBD8(*v75, *v77, type metadata accessor for PBMedicationTrackingSchedule, type metadata accessor for PBMedicationTrackingSchedule, sub_251B9C94C, type metadata accessor for PBMedicationTrackingSchedule))
      {
        sub_251C703B4();
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (sub_251C70ED4())
        {
          v78 = type metadata accessor for PBMedicationTrackingSchedules;
          goto LABEL_57;
        }
      }

      v114 = type metadata accessor for PBMedicationTrackingSchedules;
      goto LABEL_89;
    case 0x10u:
      v75 = v155;
      sub_251AA005C(v70, v155, type metadata accessor for PBTypedData.OneOf_Raw);
      v76 = v158;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        v113 = type metadata accessor for PBActiveMedications;
LABEL_77:
        v73 = v113;
        v74 = v75;
        goto LABEL_78;
      }

      v77 = v145;
      sub_251A9D40C(&v70[v76], v145, type metadata accessor for PBActiveMedications);
      if (sub_251A93C70(*v75, *v77))
      {
        sub_251C703B4();
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (sub_251C70ED4())
        {
          v78 = type metadata accessor for PBActiveMedications;
LABEL_57:
          v110 = v78;
          sub_251A9D3AC(v77, v78);
          v85 = v75;
          v84 = v110;
LABEL_58:
          sub_251A9D3AC(v85, v84);
          sub_251A9D3AC(v70, type metadata accessor for PBTypedData.OneOf_Raw);
          v90 = 1;
          return v90 & 1;
        }
      }

      v114 = type metadata accessor for PBActiveMedications;
LABEL_89:
      v116 = v114;
      sub_251A9D3AC(v77, v114);
      v117 = v75;
      v118 = v116;
LABEL_90:
      sub_251A9D3AC(v117, v118);
      sub_251A9D3AC(v70, type metadata accessor for PBTypedData.OneOf_Raw);
      goto LABEL_91;
    default:
      sub_251AA005C(v70, v66, type metadata accessor for PBTypedData.OneOf_Raw);
      v72 = v158;
      if (swift_getEnumCaseMultiPayload())
      {
        v73 = type metadata accessor for PBTimeSeries;
        v74 = v66;
LABEL_78:
        sub_251A9D3AC(v74, v73);
        sub_251A9F5D8(v70);
LABEL_91:
        v90 = 0;
      }

      else
      {
        v115 = v129;
        sub_251A9D40C(&v70[v72], v129, type metadata accessor for PBTimeSeries);
        v98 = v70;
        v90 = sub_251BB1AEC(v66, v115);
        v99 = type metadata accessor for PBTimeSeries;
        sub_251A9D3AC(v115, type metadata accessor for PBTimeSeries);
        v100 = v66;
LABEL_86:
        sub_251A9D3AC(v100, v99);
        sub_251A9D3AC(v98, type metadata accessor for PBTypedData.OneOf_Raw);
      }

      return v90 & 1;
  }
}

uint64_t sub_251A9F5D8(uint64_t a1)
{
  sub_251A9FE94(0, &qword_27F4790D8, type metadata accessor for PBTypedData.OneOf_Raw);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251A9F650(void *a1, void *a2)
{
  sub_251A9FE94(0, &qword_27F479118, type metadata accessor for PBReference.OneOf_Metadata);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (&v50 - v5);
  v7 = type metadata accessor for PBReference.OneOf_Metadata(0);
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v54 = &v50 - v12;
  sub_251A9FEF4(0, &qword_27F479120, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata);
  v55 = v13;
  MEMORY[0x28223BE20](v13);
  v58 = &v50 - v14;
  v15 = type metadata accessor for PBDateRange(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A85F5C(0, qword_2813E6EE8, type metadata accessor for PBDateRange, v10);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v50 - v20;
  sub_251A9FEF4(0, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v23 = v22;
  MEMORY[0x28223BE20](v22);
  v25 = &v50 - v24;
  if (*a1 != *a2 && (sub_251C719D4() & 1) == 0 || !sub_251A9D1F0(a1[2], a1[3], a2[2], a2[3]))
  {
    goto LABEL_21;
  }

  v50 = v9;
  v51 = v6;
  v26 = type metadata accessor for PBReference(0);
  v59 = a2;
  v52 = v26;
  v27 = *(v26 + 36);
  v28 = *(v23 + 48);
  sub_251A9FF6C(a1 + v27, v25, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251A9FF6C(v59 + v27, &v25[v28], qword_2813E6EE8, type metadata accessor for PBDateRange);
  v29 = *(v16 + 48);
  if (v29(v25, 1, v15) == 1)
  {
    if (v29(&v25[v28], 1, v15) == 1)
    {
      sub_251A9FFEC(v25, qword_2813E6EE8, type metadata accessor for PBDateRange);
      goto LABEL_12;
    }

LABEL_9:
    v30 = &qword_27F4790D0;
    v31 = qword_2813E6EE8;
    v32 = type metadata accessor for PBDateRange;
    v33 = v25;
LABEL_10:
    sub_251A9DBA8(v33, v30, v31, v32);
    goto LABEL_21;
  }

  sub_251A9FF6C(v25, v21, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if (v29(&v25[v28], 1, v15) == 1)
  {
    sub_251A9D3AC(v21, type metadata accessor for PBDateRange);
    goto LABEL_9;
  }

  sub_251A9D40C(&v25[v28], v18, type metadata accessor for PBDateRange);
  v34 = sub_251B5E420(v21, v18);
  sub_251A9D3AC(v18, type metadata accessor for PBDateRange);
  sub_251A9D3AC(v21, type metadata accessor for PBDateRange);
  sub_251A9FFEC(v25, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((v34 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  nullsub_1();
  v36 = v35;
  nullsub_1();
  if (v36 != v37)
  {
    goto LABEL_21;
  }

  v38 = *(v52 + 28);
  v39 = *(v55 + 48);
  v40 = v58;
  sub_251A9FF6C(a1 + v38, v58, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata);
  sub_251A9FF6C(v59 + v38, v40 + v39, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata);
  v41 = v57;
  v42 = *(v56 + 48);
  if (v42(v40, 1, v57) != 1)
  {
    v43 = v54;
    sub_251A9FF6C(v40, v54, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata);
    if (v42(v40 + v39, 1, v41) != 1)
    {
      v44 = v50;
      sub_251A9D40C(v40 + v39, v50, type metadata accessor for PBReference.OneOf_Metadata);
      v45 = *(v53 + 48);
      v46 = v51;
      sub_251AA005C(v43, v51, type metadata accessor for PBReference.OneOf_Metadata);
      sub_251AA005C(v44, v46 + v45, type metadata accessor for PBReference.OneOf_Metadata);
      v47 = sub_251BB1F0C(v46, v46 + v45);
      sub_251A9D3AC(v46 + v45, type metadata accessor for PBECGMeta);
      sub_251A9D3AC(v46, type metadata accessor for PBECGMeta);
      sub_251A9D3AC(v44, type metadata accessor for PBReference.OneOf_Metadata);
      sub_251A9D3AC(v43, type metadata accessor for PBReference.OneOf_Metadata);
      sub_251A9FFEC(v40, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata);
      if (v47)
      {
        goto LABEL_20;
      }

LABEL_21:
      v48 = 0;
      return v48 & 1;
    }

    sub_251A9D3AC(v43, type metadata accessor for PBReference.OneOf_Metadata);
    goto LABEL_18;
  }

  if (v42(v40 + v39, 1, v41) != 1)
  {
LABEL_18:
    v30 = &qword_27F479120;
    v31 = &qword_27F478ED8;
    v32 = type metadata accessor for PBReference.OneOf_Metadata;
    v33 = v40;
    goto LABEL_10;
  }

  sub_251A9FFEC(v40, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata);
LABEL_20:
  sub_251C703B4();
  sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v48 = sub_251C70ED4();
  return v48 & 1;
}

void sub_251A9FE94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_251A9FEF4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_251A85F5C(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_251A9FF6C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251A85F5C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251A9FFEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251A85F5C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251AA005C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251AA00E0(uint64_t a1)
{
  v3 = sub_251C702E4();
  v4 = MEMORY[0x28223BE20](v3);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v62 = (&v48 - v7);
  MEMORY[0x28223BE20](v6);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v60 = &v48 - v8;
  v48 = v1;
  v66 = MEMORY[0x277D84F90];
  v12 = v9;
  sub_251C0B6AC(0, v10, 0);
  v11 = v66;
  v13 = a1 + 56;
  result = sub_251C715F4();
  v15 = v12;
  v16 = result;
  v17 = 0;
  v58 = v12 + 88;
  v57 = *MEMORY[0x277D112F0];
  v55 = v3;
  v56 = (v12 + 8);
  v50 = (v12 + 96);
  v49 = a1 + 64;
  v52 = v12 + 16;
  v53 = v10;
  v61 = a1;
  v54 = v12;
  v59 = a1 + 56;
  while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
  {
    v19 = v16 >> 6;
    if ((*(v13 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      goto LABEL_24;
    }

    v65 = v11;
    v20 = *(a1 + 36);
    v63 = v17;
    v64 = v20;
    v21 = *(v15 + 16);
    v22 = v60;
    v23 = v15;
    v21(v60, *(a1 + 48) + *(v15 + 72) * v16, v3);
    v24 = v62;
    v21(v62, v22, v3);
    v25 = (*(v23 + 88))(v24, v3);
    if (v25 == v57)
    {
      (*v50)(v24, v3);
      v26 = v3;
      v27 = *v24;
      v28 = [*v24 identifier];
      v29 = sub_251C70F14();
      v31 = v30;

      result = (*v56)(v22, v26);
    }

    else
    {
      v21(v51, v22, v3);
      v29 = sub_251C70F74();
      v32 = v24;
      v31 = v33;
      v34 = v3;
      v35 = *v56;
      (*v56)(v32, v34);
      result = v35(v22, v34);
    }

    v11 = v65;
    v66 = v65;
    v37 = *(v65 + 16);
    v36 = *(v65 + 24);
    if (v37 >= v36 >> 1)
    {
      result = sub_251C0B6AC((v36 > 1), v37 + 1, 1);
      v11 = v66;
    }

    *(v11 + 16) = v37 + 1;
    v38 = v11 + 16 * v37;
    *(v38 + 32) = v29;
    *(v38 + 40) = v31;
    a1 = v61;
    v18 = 1 << *(v61 + 32);
    v13 = v59;
    if (v16 >= v18)
    {
      goto LABEL_25;
    }

    v39 = *(v59 + 8 * v19);
    if ((v39 & (1 << v16)) == 0)
    {
      goto LABEL_26;
    }

    if (v64 != *(v61 + 36))
    {
      goto LABEL_27;
    }

    v40 = v39 & (-2 << (v16 & 0x3F));
    if (v40)
    {
      v18 = __clz(__rbit64(v40)) | v16 & 0x7FFFFFFFFFFFFFC0;
      v15 = v54;
      v3 = v55;
    }

    else
    {
      v41 = v19 << 6;
      v42 = v19 + 1;
      v43 = (v49 + 8 * v19);
      v3 = v55;
      while (v42 < (v18 + 63) >> 6)
      {
        v45 = *v43++;
        v44 = v45;
        v41 += 64;
        ++v42;
        if (v45)
        {
          v46 = v54;
          result = sub_251AA935C(v16, v64, 0);
          v15 = v46;
          v18 = __clz(__rbit64(v44)) + v41;
          goto LABEL_4;
        }
      }

      v47 = v54;
      result = sub_251AA935C(v16, v64, 0);
      v15 = v47;
    }

LABEL_4:
    v17 = v63 + 1;
    v16 = v18;
    if (v63 + 1 == v53)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_251AA0554()
{
  DiagnosticsTask = type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0);
  v90 = *(DiagnosticsTask - 8);
  v2 = DiagnosticsTask - 8;
  v89 = *(v90 + 64);
  MEMORY[0x28223BE20](DiagnosticsTask - 8);
  v88 = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AA0FCC(0);
  v79 = v4;
  v80 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v74 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_251C701E4();
  v6 = *(v91 - 8);
  v70 = *(v6 + 64);
  v7 = MEMORY[0x28223BE20](v91);
  v9 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v64 - v10;
  sub_251AA11F4(0);
  v81 = v12;
  v82 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v77 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AA1248(0);
  v15 = *(v14 - 8);
  v84 = v14;
  v85 = v15;
  MEMORY[0x28223BE20](v14);
  v78 = v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AA12DC(0);
  v18 = *(v17 - 8);
  v86 = v17;
  v87 = v18;
  MEMORY[0x28223BE20](v17);
  v83 = v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_251C70014();
  v68 = v20;
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v23;
  MEMORY[0x28223BE20](v22);
  v75 = v64 - v25;
  sub_251C70004();
  v92 = v0;
  v26 = sub_251AA137C();
  v64[1] = v26;
  v66 = v2;
  v27 = __swift_project_boxed_opaque_existential_1((v0 + *(v2 + 40)), *(v0 + *(v2 + 40) + 24));
  v95[3] = &type metadata for ClinicalSharingQueryDefaultDataProvider;
  v95[4] = &off_2863FD718;
  v95[0] = swift_allocObject();
  sub_251AA1810((v27 + 3), v95[0] + 16);
  v65 = v11;
  sub_251C70184();
  v28 = *(v2 + 48);
  v94 = v26;
  sub_251A823B4(v95, &v93);
  v29 = v9;
  v30 = v9;
  v31 = v91;
  (*(v6 + 16))(v30, v11, v91);
  v32 = *(v21 + 16);
  v72 = v21 + 16;
  v73 = v32;
  v33 = v24;
  v67 = v24;
  v32(v24, (v92 + v28), v20);
  v34 = *(v6 + 80);
  v35 = v6;
  v64[0] = v6;
  v36 = (v34 + 56) & ~v34;
  v37 = *(v21 + 80);
  v38 = v21;
  v76 = v21;
  v39 = (v70 + v37 + v36) & ~v37;
  v40 = swift_allocObject();
  sub_251A7E8D8(&v93, v40 + 16);
  (*(v35 + 32))(v40 + v36, v29, v31);
  v41 = *(v38 + 32);
  v69 = v38 + 32;
  v70 = v41;
  v41(v40 + v39, v33, v20);
  sub_251C70964();
  sub_251AA1134(0);
  type metadata accessor for ClinicalSharingQueryOutput(0);
  sub_251AA10B4(0);
  v42 = MEMORY[0x277CBCD90];
  sub_251AA11AC(&qword_2813E2178, sub_251AA1134, MEMORY[0x277CBCD90]);
  sub_251AA11AC(&qword_2813E21C8, sub_251AA10B4, v42);
  v43 = v74;
  sub_251C70B94();

  sub_251AA11AC(&qword_27F4791A0, sub_251AA0FCC, MEMORY[0x277CBCCE0]);
  v44 = v79;
  v45 = sub_251C70A94();

  (*(v80 + 8))(v43, v44);
  (*(v64[0] + 8))(v65, v91);
  __swift_destroy_boxed_opaque_existential_1(v95);
  v46 = v92;
  v47 = sub_251AA186C(v92 + *(v66 + 36), *(v92 + *(v66 + 44)), v45);

  v95[0] = v47;
  type metadata accessor for QueryOutput(0);
  v48 = v77;
  sub_251C70AE4();

  sub_251AA11AC(&qword_27F479188, sub_251AA11F4, MEMORY[0x277CBCC08]);
  v49 = v78;
  v50 = v81;
  sub_251C70B64();
  (*(v82 + 8))(v48, v50);
  v51 = v88;
  sub_251AA8828(v46, v88, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
  v52 = v67;
  v53 = v75;
  v54 = v68;
  v73(v67, v75, v68);
  v55 = (*(v90 + 80) + 16) & ~*(v90 + 80);
  v56 = (v89 + v37 + v55) & ~v37;
  v57 = swift_allocObject();
  sub_251AA8650(v51, v57 + v55, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
  v58 = v54;
  v70(v57 + v56, v52, v54);
  sub_251AA11AC(&qword_27F479198, sub_251AA1248, MEMORY[0x277CBCCD0]);
  v60 = v83;
  v59 = v84;
  sub_251C70B54();

  (*(v85 + 8))(v49, v59);
  sub_251AA11AC(&qword_27F4791A8, sub_251AA12DC, MEMORY[0x277CBCCC0]);
  v61 = v86;
  v62 = sub_251C70A94();
  (*(v87 + 8))(v60, v61);
  (*(v76 + 8))(v53, v58);
  return v62;
}

void sub_251AA0FCC(uint64_t a1)
{
  if (!qword_27F479170)
  {
    sub_251AA10B4(255);
    sub_251AA1134(255);
    v1 = MEMORY[0x277CBCD90];
    sub_251AA11AC(&qword_2813E21C8, sub_251AA10B4, MEMORY[0x277CBCD90]);
    sub_251AA11AC(&qword_2813E2178, sub_251AA1134, v1);
    v2 = sub_251C708D4();
    if (!v3)
    {
      atomic_store(v2, &qword_27F479170);
    }
  }
}

void sub_251AA10B4(uint64_t a1)
{
  if (!qword_2813E21C0)
  {
    type metadata accessor for ClinicalSharingQueryOutput(255);
    sub_251AA98B0(255, &qword_2813E1C30, MEMORY[0x277D84948]);
    v1 = sub_251C70974();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E21C0);
    }
  }
}

void sub_251AA1134(uint64_t a1)
{
  if (!qword_2813E2170)
  {
    sub_251AA98B0(255, &qword_2813E1C30, MEMORY[0x277D84948]);
    v1 = sub_251C70974();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2170);
    }
  }
}

uint64_t sub_251AA11AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251AA1248(uint64_t a1)
{
  if (!qword_27F479180)
  {
    sub_251AA11F4(255);
    sub_251AA11AC(&qword_27F479188, sub_251AA11F4, MEMORY[0x277CBCC08]);
    v1 = sub_251C708C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479180);
    }
  }
}

void sub_251AA12DC(uint64_t a1)
{
  if (!qword_27F479190)
  {
    sub_251AA1248(255);
    sub_251AA11AC(&qword_27F479198, sub_251AA1248, MEMORY[0x277CBCCD0]);
    v1 = sub_251C708B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479190);
    }
  }
}

uint64_t sub_251AA137C()
{
  DiagnosticsTask = type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0);
  v2 = DiagnosticsTask - 8;
  v27 = *(DiagnosticsTask - 8);
  v25[2] = *(v27 + 64);
  MEMORY[0x28223BE20](DiagnosticsTask);
  v26 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AA8D3C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AA8EF0(0);
  v10 = *(v9 - 8);
  v28 = v9;
  v29 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_project_boxed_opaque_existential_1((v0 + *(v2 + 40)), *(v0 + *(v2 + 40) + 24))[2];
  v32[3] = &type metadata for ClinicalSharingAccountStore;
  v32[4] = &off_2863F67B8;
  v32[0] = v13;
  v31 = *__swift_project_boxed_opaque_existential_1(v32, &type metadata for ClinicalSharingAccountStore);
  v14 = off_2863F67E8[0];
  v15 = v13;
  v30 = v14();
  sub_251AA8E00(0);
  v25[0] = v16;
  sub_251AA8E98(0, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
  v17 = MEMORY[0x277CBCD90];
  sub_251AA11AC(&qword_2813E2118, sub_251AA8E00, MEMORY[0x277CBCD90]);
  sub_251C70AE4();

  sub_251AA11AC(&qword_2813E25B0, sub_251AA8D3C, MEMORY[0x277CBCC08]);
  v18 = sub_251C70A94();
  (*(v6 + 8))(v8, v5);
  v31 = v18;
  v19 = v26;
  sub_251AA8828(v25[1], v26, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
  v20 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v21 = swift_allocObject();
  sub_251AA8650(v19, v21 + v20, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
  sub_251C70964();
  sub_251AA1134(0);
  sub_251AA11AC(&qword_2813E2178, sub_251AA1134, v17);
  sub_251C70B94();

  __swift_destroy_boxed_opaque_existential_1(v32);
  sub_251AA11AC(&qword_27F479220, sub_251AA8EF0, MEMORY[0x277CBCCE0]);
  v22 = v28;
  v23 = sub_251C70A94();
  (*(v29 + 8))(v12, v22);
  return v23;
}

id sub_251AA186C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v42 = a1;
  sub_251AA86B8(0);
  v5 = v4;
  v47 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_251C6FE64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PublisherOutputWriter(0);
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v44 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v51 = a3;
  result = [objc_opt_self() sharedBehavior];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v17 = result;
  v18 = [result isAppleInternalInstall];

  sub_251AA10B4(0);
  v20 = v19;
  v48 = sub_251AA11AC(&qword_2813E21C8, sub_251AA10B4, MEMORY[0x277CBCD90]);
  v49 = v20;
  result = sub_251C70A94();
  if (v18)
  {
    v41 = v5;
    v21 = result;
    v22 = *(v8 + 16);
    v22(v10, v42, v7);
    v22(v15, v10, v7);
    v23 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
    (*(v8 + 8))(v10, v7);
    *&v15[*(v11 + 20)] = v23;
    v24 = v45;
    if (v45)
    {
      v33 = swift_allocObject();
      v33[2] = sub_251AFC004;
      v33[3] = 0;
      v33[4] = 1852797802;
      v33[5] = 0xE400000000000000;
      v50 = v21;
      v34 = v44;
      sub_251AA8828(v15, v44, type metadata accessor for PublisherOutputWriter);
      v35 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = sub_251AAA7D4;
      *(v36 + 24) = v33;
      sub_251AA8650(v34, v36 + v35, type metadata accessor for PublisherOutputWriter);
      type metadata accessor for ClinicalSharingQueryOutput(0);

      v37 = v46;
      sub_251C70B54();

      sub_251AA11AC(&qword_27F4791C8, sub_251AA86B8, MEMORY[0x277CBCCC0]);
      v26 = v41;
      v38 = sub_251C70A94();

      (*(v47 + 8))(v37, v26);
      v25 = v38;
      if ((v24 & 2) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v25 = v21;
      v26 = v41;
      if ((v45 & 2) == 0)
      {
LABEL_7:
        v50 = v25;
        v39 = sub_251C70A94();
        sub_251AA87A8(v15, type metadata accessor for PublisherOutputWriter);

        return v39;
      }
    }

    v27 = swift_allocObject();
    v27[2] = sub_251AFC140;
    v27[3] = 0;
    v27[4] = 25200;
    v27[5] = 0xE200000000000000;
    v50 = v25;
    v28 = v44;
    sub_251AA8828(v15, v44, type metadata accessor for PublisherOutputWriter);
    v29 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = sub_251AA8808;
    *(v30 + 24) = v27;
    sub_251AA8650(v28, v30 + v29, type metadata accessor for PublisherOutputWriter);
    type metadata accessor for ClinicalSharingQueryOutput(0);

    v31 = v46;
    sub_251C70B54();

    sub_251AA11AC(&qword_27F4791C8, sub_251AA86B8, MEMORY[0x277CBCCC0]);
    v32 = sub_251C70A94();

    (*(v47 + 8))(v31, v26);
    v25 = v32;
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_251AA1EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251AA8CD8(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  Output = type metadata accessor for ClinicalSharingQueryOutput(0);
  MEMORY[0x28223BE20](Output - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AA8828(a1, v9, type metadata accessor for ClinicalSharingQueryOutput);
  v10 = v9[8];
  *a2 = *v9;
  *(a2 + 8) = v10;
  v11 = a2 + *(type metadata accessor for QueryOutput(0) + 20);
  v12 = type metadata accessor for PBTypedData(0);
  sub_251AA926C(&v9[*(v12 + 28)], v6, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v13 = type metadata accessor for PBDateRange(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v6, 1, v13) == 1)
  {
    *v11 = 0;
    *(v11 + 8) = 0xE000000000000000;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0xE000000000000000;
    *(v11 + 32) = 0;
    *(v11 + 40) = 1;
    sub_251C703A4();
    sub_251AA87A8(v9, type metadata accessor for ClinicalSharingQueryOutput);
    result = v14(v6, 1, v13);
    if (result != 1)
    {
      return sub_251AA92EC(v6, qword_2813E6EE8, type metadata accessor for PBDateRange);
    }
  }

  else
  {
    sub_251AA87A8(v9, type metadata accessor for ClinicalSharingQueryOutput);
    return sub_251AA8650(v6, v11, type metadata accessor for PBDateRange);
  }

  return result;
}

uint64_t sub_251AA214C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_251C70014();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - v10;
  v12 = *a1;
  DiagnosticsTask = type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0);
  (*(v6 + 16))(v11, a2 + *(DiagnosticsTask + 40), v5);
  sub_251C70004();
  sub_251C6FF74();
  v15 = v14;
  (*(v6 + 8))(v9, v5);

  sub_251AA7F3C(v11, v12, v17, v15);
  sub_251AA2308(v17, 0x2E7972616D6D7573, 0xEC0000006E6F736ALL);
  return sub_251AA8564(v17);
}

uint64_t sub_251AA2308(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v21 = a2;
  v22 = a3;
  v30 = *MEMORY[0x277D85DE8];
  v7 = sub_251C6FE64();
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v27 = a1[2];
  v28 = v10;
  v29 = a1[4];
  v11 = a1[1];
  v25 = *a1;
  v26 = v11;
  v12 = *(v5 + *(type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0) + 20));
  v13 = sub_251C6FDD4();
  v24 = 0;
  LODWORD(v12) = [v12 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:{&v24, v21, v22}];

  v14 = v24;
  if (v12)
  {
    sub_251AA8594();
    v15 = v14;
    result = sub_251C6FA34();
    if (!v4)
    {
      v18 = result;
      v19 = v17;
      sub_251C6FDF4();
      sub_251C6FF04();
      (*(v23 + 8))(v9, v7);
      return sub_251A83028(v18, v19);
    }
  }

  else
  {
    v20 = v24;
    sub_251C6FD84();

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_251AA2528(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v19 = a2;
  v20 = a3;
  v22[2] = *MEMORY[0x277D85DE8];
  v7 = sub_251C6FE64();
  v21 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = a1;
  v10 = *(v5 + *(type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0) + 20));
  v11 = sub_251C6FDD4();
  v22[0] = 0;
  LODWORD(v10) = [v10 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:{v22, v19, v20}];

  v12 = v22[0];
  if (v10)
  {
    sub_251AA8CD8(0, &qword_27F479240, type metadata accessor for AccountSummary, MEMORY[0x277D83940]);
    sub_251AA9194();
    v13 = v12;
    result = sub_251C6FA34();
    if (!v4)
    {
      v16 = result;
      v17 = v15;
      sub_251C6FDF4();
      sub_251C6FF04();
      (*(v21 + 8))(v9, v7);
      return sub_251A83028(v16, v17);
    }
  }

  else
  {
    v18 = v22[0];
    sub_251C6FD84();

    return swift_willThrow();
  }

  return result;
}

void *sub_251AA276C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v50 = sub_251C70074();
  v6 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  DiagnosticsTask = type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0);
  v10 = DiagnosticsTask - 8;
  v46 = *(DiagnosticsTask - 8);
  MEMORY[0x28223BE20](DiagnosticsTask);
  v47 = v11;
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AA9058(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = *__swift_project_boxed_opaque_existential_1((a2 + *(v10 + 40)), *(a2 + *(v10 + 40) + 24));
  if (v18 >> 62)
  {
    v45 = v19;
    v20 = sub_251C717F4();
    v19 = v45;
  }

  else
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v51 = v18;
  v48 = v12;
  v49 = v17;
  if (!v20)
  {
    v32 = v19;
    v33 = v19;
    v25 = MEMORY[0x277D84F90];
LABEL_14:
    v34 = sub_251C5D708(v25);

    v52 = v34;
    v35 = a2;
    v36 = v48;
    sub_251AA8828(v35, v48, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
    v37 = (*(v46 + 80) + 24) & ~*(v46 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v51;
    sub_251AA8650(v36, v38 + v37, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
    sub_251AA1134(0);
    sub_251AA11AC(&qword_2813E2178, sub_251AA1134, MEMORY[0x277CBCD90]);

    v39 = v49;
    sub_251C70B54();

    sub_251AA11AC(&qword_27F479230, sub_251AA9058, MEMORY[0x277CBCCC0]);
    v40 = sub_251C70A94();
    result = (*(v15 + 8))(v39, v14);
    *a3 = v40;
    return result;
  }

  v44 = a2;
  v52 = MEMORY[0x277D84F90];
  v45 = v19;
  v21 = v19;
  result = sub_251C0B5E4(0, v20 & ~(v20 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v41 = v15;
    v42 = v14;
    v43 = a3;
    v23 = 0;
    v24 = v51;
    v25 = v52;
    v26 = v51 & 0xC000000000000001;
    do
    {
      if (v26)
      {
        v27 = MEMORY[0x25308D460](v23);
      }

      else
      {
        v27 = *(v24 + 8 * v23 + 32);
      }

      v28 = v27;
      v29 = [v28 identifier];
      sub_251C70054();

      v52 = v25;
      v31 = *(v25 + 16);
      v30 = *(v25 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_251C0B5E4((v30 > 1), v31 + 1, 1);
        v25 = v52;
      }

      ++v23;
      *(v25 + 16) = v31 + 1;
      (*(v6 + 32))(v25 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v31, v8, v50);
      v24 = v51;
    }

    while (v20 != v23);
    v14 = v42;
    a3 = v43;
    v15 = v41;
    a2 = v44;
    v32 = v45;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}