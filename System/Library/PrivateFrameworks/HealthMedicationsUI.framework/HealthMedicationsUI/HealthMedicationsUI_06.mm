void sub_228207B20()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ColorSelectionViewController(0);
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 setPreservesSuperviewLayoutMargins_];

    v3 = [v0 collectionView];
    if (v3)
    {
      v4 = v3;
      v5 = [objc_opt_self() systemBackgroundColor];
      [v4 setBackgroundColor_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_228207C00(void *a1)
{
  v1 = a1;
  sub_228207B20();
}

void sub_228207C48(uint64_t a1)
{
  sub_228208EB0(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  v5 = qword_27D825228;
  v6 = sub_228390D50();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_2281E4AF0(0);
  swift_allocObject();
  *(a1 + v5) = sub_228391890();
  *(a1 + qword_27D825248) = MEMORY[0x277D84FA0];
  sub_228393300();
  __break(1u);
}

uint64_t sub_228207D94()
{
  v15 = MEMORY[0x277D85248];
  sub_228208EB0(0, &qword_280DDBAD0, MEMORY[0x277D85248]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  sub_228208F04(0);
  v16 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + qword_27D825250);
  v9 = qword_27D8280A8;
  swift_beginAccess();
  v17 = *(v8 + v9);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);

  v10 = sub_228392790();
  v18 = v10;
  v11 = sub_228392730();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  sub_2281E4AF0(0);
  sub_228208FD8(&qword_27D825288, sub_2281E4AF0, MEMORY[0x277CBCE48]);
  sub_2281A1504();
  sub_228391A70();
  sub_228208C3C(v3, &qword_280DDBAD0, v15);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228208FD8(&qword_27D825290, sub_228208F04, MEMORY[0x277CBCD60]);
  v12 = v16;
  sub_228391AC0();

  (*(v5 + 8))(v7, v12);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

void sub_2282080C4(uint64_t a1, uint64_t a2)
{
  sub_228208EB0(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = sub_228390D50();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_2281BF64C(a1, v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

      sub_228208C3C(v8, &qword_280DDBD20, MEMORY[0x277D116C8]);
    }

    else
    {
      (*(v10 + 32))(v12, v8, v9);
      v15 = v14;
      v16 = sub_228390490();

      if (v16)
      {
        sub_2283902C0();

        (*(v10 + 16))(v6, v12, v9);
        (*(v10 + 56))(v6, 0, 1, v9);

        sub_228391850();

        sub_228208C3C(v6, &qword_280DDBD20, MEMORY[0x277D116C8]);
        (*(v10 + 8))(v12, v9);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_22820837C(void *a1)
{
  sub_228208EB0(0, &qword_27D824BC0, sub_228199F78);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  sub_228199F78(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22838F710();
  [a1 deselectItemAtIndexPath:v10 animated:1];

  v11 = sub_22838F710();
  v25 = [a1 cellForItemAtIndexPath_];

  if (!v25)
  {
    return;
  }

  type metadata accessor for ColorCell();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    v16 = v25;

    return;
  }

  v13 = OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell_item;
  v14 = v12;
  swift_beginAccess();
  sub_228208DE8(v14 + v13, v26, sub_228181D50);
  if (!v26[3])
  {

    sub_228208E50(v26, sub_228181D50);
    (*(v7 + 56))(v4, 1, 1, v6);
    goto LABEL_10;
  }

  sub_22818217C(0, &qword_280DDCD60, MEMORY[0x277D10D48], 1);
  v15 = swift_dynamicCast();
  (*(v7 + 56))(v4, v15 ^ 1u, 1, v6);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {

LABEL_10:
    sub_228208C3C(v4, &qword_27D824BC0, sub_228199F78);
    return;
  }

  sub_228208D80(v4, v9, sub_228199F78);
  type metadata accessor for VisualizationModificationDataSource(0);

  v17 = sub_22838FD40();

  v18 = sub_22838F750();
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v18 >= *(v17 + 16))
  {
LABEL_28:
    __break(1u);
    return;
  }

  v19 = v17 + 16 * v18;
  v21 = *(v19 + 32);
  v20 = *(v19 + 40);

  if (v21 == 0xD000000000000011 && 0x80000002283AA970 == v20 || (sub_228393460() & 1) != 0 || v21 == 0xD000000000000012 && 0x80000002283AA990 == v20 || (sub_228393460() & 1) != 0 || v21 == 0x756F72676B636162 && v20 == 0xEF726F6C6F43646ELL)
  {
  }

  else
  {
    v23 = sub_228393460();

    if ((v23 & 1) == 0)
    {
      sub_228208E50(v9, sub_228199F78);

      return;
    }
  }

  v22 = sub_2283908D0();
  v26[0] = v22;
  sub_228391850();

  sub_228208E50(v9, sub_228199F78);
}

uint64_t sub_22820889C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_22838F760();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  v10 = a3;
  v11 = a1;
  sub_22820837C(v10);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2282089F8()
{
}

id sub_228208A88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ColorSelectionViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228208AC0(uint64_t a1)
{
}

void sub_228208B64(uint64_t a1)
{
  if (!qword_27D825270)
  {
    sub_228390E20();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D825270);
    }
  }
}

void sub_228208BD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_228391880();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_228208C3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228208EB0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_228208C98(uint64_t a1)
{
  if (!qword_27D824BD0)
  {
    sub_2283909E0();
    v1 = sub_228391880();
    if (!v2)
    {
      atomic_store(v1, &qword_27D824BD0);
    }
  }
}

uint64_t sub_228208D00(uint64_t a1, uint64_t a2)
{
  sub_228208EB0(0, &qword_27D825278, sub_228208B64);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_228208D80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_228208DE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_228208E50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_228208EB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_228208F04(uint64_t a1)
{
  if (!qword_27D825280)
  {
    sub_2281E4AF0(255);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_228208FD8(&qword_27D825288, sub_2281E4AF0, MEMORY[0x277CBCE48]);
    sub_2281A1504();
    v1 = sub_2283917D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D825280);
    }
  }
}

uint64_t sub_228208FD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_228209020()
{
  sub_22820D768(0, &qword_280DDB950, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_228392D80();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_228392DE0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
  sub_228392DA0();
  (*(v4 + 104))(v6, *MEMORY[0x277D75028], v3);
  sub_228392CB0();
  v12 = [objc_opt_self() systemBlueColor];
  sub_228392D60();
  sub_22827CAB8();
  sub_228392D90();
  (*(v8 + 16))(v2, v10, v7);
  (*(v8 + 56))(v2, 0, 1, v7);
  sub_228392E10();
  (*(v8 + 8))(v10, v7);
  return v11;
}

uint64_t sub_2282092B4@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = MEMORY[0x277D83D88];
  sub_22820D768(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = &v29 - v4;
  v30 = sub_2283912D0();
  v5 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_228391280();
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D74AE0];
  sub_22820D768(0, &qword_280DDBCE0, MEMORY[0x277D74AE0], v2);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v18 = OBJC_IVAR____TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell____lazy_storage___plusAccessory;
  swift_beginAccess();
  sub_22820DD74(v1 + v18, v17, &qword_280DDBCE0, v11);
  v19 = sub_2283912F0();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) != 1)
  {
    return (*(v20 + 32))(v34, v17, v19);
  }

  sub_22820DDF4(v17, &qword_280DDBCE0, MEMORY[0x277D74AE0]);
  v29 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell_logButton);
  sub_22820DC6C(0);
  v22 = &v7[*(v21 + 48)];
  v23 = *MEMORY[0x277D74A98];
  v24 = sub_228391220();
  (*(*(v24 - 8) + 104))(v7, v23, v24);
  *v22 = sub_2281AF1B4;
  v22[1] = 0;
  (*(v5 + 104))(v7, *MEMORY[0x277D74AD8], v30);
  v25 = sub_228391230();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v26 = v29;
  sub_228391270();
  v27 = v34;
  sub_2283911D0();
  (*(v31 + 8))(v10, v32);
  (*(v20 + 16))(v15, v27, v19);
  (*(v20 + 56))(v15, 0, 1, v19);
  swift_beginAccess();
  sub_22820DCE0(v15, v1 + v18);
  return swift_endAccess();
}

uint64_t sub_228209754()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v58 = *(v2 - 8);
  v59 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_22820D768(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v53 - v7;
  v57 = sub_2283913A0();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_228391590();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22820D768(0, qword_280DDCC50, type metadata accessor for MedicationsRecordDoseItem, v5);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v53 - v14;
  v16 = type metadata accessor for MedicationsRecordDoseItem(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell_item;
  swift_beginAccess();
  sub_22820DAD8(&v1[v20], v61, sub_228181D50);
  if (v62)
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v21 = swift_dynamicCast();
    (*(v17 + 56))(v15, v21 ^ 1u, 1, v16);
    if ((*(v17 + 48))(v15, 1, v16) != 1)
    {
      v22 = sub_22820DA14(v15, v19);
      MEMORY[0x22AAB64A0](v22);

      sub_228391540();
      v23 = [v1 traitCollection];
      v24 = [v23 userInterfaceStyle] == 2;

      v25 = dbl_22839C000[v24];
      sub_228391390();
      v26 = objc_opt_self();
      v27 = [v26 systemCyanColor];
      v28 = [v27 colorWithAlphaComponent_];

      v29 = v10;
      v53 = v10;
      sub_228391370();
      v30 = v55;
      v31 = v29;
      v32 = v57;
      (*(v55 + 16))(v8, v31, v57);
      (*(v30 + 56))(v8, 0, 1, v32);
      MEMORY[0x22AAB6420](v8);
      sub_22820D768(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
      v33 = *(sub_2283912F0() - 8);
      v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_228397F40;
      sub_2282092B4(v35 + v34);
      sub_2283928F0();
      v36 = v19[*(v16 + 36)];
      v37 = &selRef_labelColor;
      if (!v19[*(v16 + 36)])
      {
        v37 = &selRef_secondaryLabelColor;
      }

      v38 = [v26 *v37];
      v39 = sub_228391450();
      sub_228391420();
      v39(v61, 0);
      v40 = sub_228391450();
      sub_2283913E0();
      v40(v61, 0);
      [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell_logButton] setEnabled_];
      v41 = v56;
      v62 = v56;
      v63 = MEMORY[0x277D74C30];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
      v43 = v54;
      (*(v54 + 16))(boxed_opaque_existential_1, v12, v41);
      MEMORY[0x22AAB6400](v61);
      (*(v30 + 8))(v53, v57);
      (*(v43 + 8))(v12, v41);
      return sub_22820DA78(v19, type metadata accessor for MedicationsRecordDoseItem);
    }
  }

  else
  {
    sub_22820DA78(v61, sub_228181D50);
    (*(v17 + 56))(v15, 1, 1, v16);
  }

  sub_22820DDF4(v15, qword_280DDCC50, type metadata accessor for MedicationsRecordDoseItem);
  sub_228391150();
  v45 = v1;
  v46 = sub_2283911A0();
  v47 = sub_2283925C0();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v60 = v49;
    *v48 = 136315138;
    sub_22820DAD8(&v1[v20], v61, sub_228181D50);
    sub_228181D50(0);
    v50 = sub_228392040();
    v52 = sub_2281C96FC(v50, v51, &v60);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_22816B000, v46, v47, "Incorrect view model for MedicationsRecordDoseItem: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x22AAB7B80](v49, -1, -1);
    MEMORY[0x22AAB7B80](v48, -1, -1);
  }

  return (*(v58 + 8))(v4, v59);
}

uint64_t sub_228209FCC()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_22820D768(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v52 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v52 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v52 - v12;
  sub_22820D768(0, qword_280DDCC50, type metadata accessor for MedicationsRecordDoseItem, v5);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v52 - v15;
  v17 = type metadata accessor for MedicationsRecordDoseItem(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_228391330();
  v22 = type metadata accessor for MedicationsRecordDoseCollectionViewCell(0);
  v58.receiver = v1;
  v58.super_class = v22;
  objc_msgSendSuper2(&v58, sel__bridgedUpdateConfigurationUsingState_, v21);

  [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell_logButton] addTarget:v1 action:sel_didTapAccessory forControlEvents:64];
  v23 = OBJC_IVAR____TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell_item;
  swift_beginAccess();
  sub_22820DAD8(&v1[v23], v56, sub_228181D50);
  if (!v57)
  {
    sub_22820DA78(v56, sub_228181D50);
    (*(v18 + 56))(v16, 1, 1, v17);
    goto LABEL_8;
  }

  sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
  v24 = swift_dynamicCast();
  (*(v18 + 56))(v16, v24 ^ 1u, 1, v17);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
LABEL_8:
    sub_22820DDF4(v16, qword_280DDCC50, type metadata accessor for MedicationsRecordDoseItem);
    sub_228391150();
    v30 = v1;
    v31 = sub_2283911A0();
    v32 = sub_2283925C0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v55 = v34;
      *v33 = 136315138;
      sub_22820DAD8(&v1[v23], v56, sub_228181D50);
      sub_228181D50(0);
      v35 = sub_228392040();
      v37 = sub_2281C96FC(v35, v36, &v55);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_22816B000, v31, v32, "Incorrect view model for MedicationsRecordDoseItem: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x22AAB7B80](v34, -1, -1);
      MEMORY[0x22AAB7B80](v33, -1, -1);
    }

    return (*(v53 + 8))(v4, v54);
  }

  v25 = v16;
  v26 = v20;
  sub_22820DA14(v25, v20);
  if (v20[*(v17 + 36)])
  {
    if ([v1 isHighlighted])
    {
      MEMORY[0x22AAB6410]();
      v27 = sub_2283913A0();
      if ((*(*(v27 - 8) + 48))(v13, 1, v27))
      {
        v28 = MEMORY[0x277D74BD0];
        sub_22820DD74(v13, v11, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
        MEMORY[0x22AAB6420](v11);
        sub_22820DA78(v20, type metadata accessor for MedicationsRecordDoseItem);
        v29 = v13;
        return sub_22820DDF4(v29, &unk_280DDBCD0, v28);
      }

      sub_22817A958(0, &qword_280DDB990, 0x277D75348);
      v41 = objc_opt_self();
      v42 = [v41 systemCyanColor];
      v43 = [v42 colorWithAlphaComponent_];

      v44 = [v41 systemCyanColor];
      v45 = [v44 colorWithAlphaComponent_];

      sub_228392B90();
      sub_228391370();
      v46 = v13;
    }

    else
    {
      v39 = v52;
      MEMORY[0x22AAB6410]();
      v40 = sub_2283913A0();
      if ((*(*(v40 - 8) + 48))(v39, 1, v40))
      {
        v28 = MEMORY[0x277D74BD0];
        sub_22820DD74(v39, v11, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
        MEMORY[0x22AAB6420](v11);
        sub_22820DA78(v26, type metadata accessor for MedicationsRecordDoseItem);
        v29 = v39;
        return sub_22820DDF4(v29, &unk_280DDBCD0, v28);
      }

      sub_22817A958(0, &qword_280DDB990, 0x277D75348);
      v47 = objc_opt_self();
      v48 = [v47 systemCyanColor];
      v49 = [v48 colorWithAlphaComponent_];

      v50 = [v47 systemCyanColor];
      v51 = [v50 colorWithAlphaComponent_];

      sub_228392B90();
      sub_228391370();
      v46 = v39;
    }

    MEMORY[0x22AAB6420](v46);
  }

  return sub_22820DA78(v26, type metadata accessor for MedicationsRecordDoseItem);
}

uint64_t sub_22820A904()
{
  v1[15] = v0;
  v2 = sub_2283911B0();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  sub_22820D768(0, qword_280DDCC50, type metadata accessor for MedicationsRecordDoseItem, MEMORY[0x277D83D88]);
  v1[19] = swift_task_alloc();
  v3 = type metadata accessor for MedicationsRecordDoseItem(0);
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  sub_2283922A0();
  v1[23] = sub_228392290();
  v5 = sub_228392250();
  v1[24] = v5;
  v1[25] = v4;

  return MEMORY[0x2822009F8](sub_22820AAB0, v5, v4);
}

uint64_t sub_22820AAB0()
{
  v30 = v0;
  v1 = v0[21];
  v2 = v0[15];
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell_item;
  swift_beginAccess();
  sub_22820DAD8(v2 + v3, (v0 + 2), sub_228181D50);
  v4 = (v1 + 56);
  if (!v0[5])
  {
    v9 = v0[19];
    v10 = v0[20];

    sub_22820DA78((v0 + 2), sub_228181D50);
    (*v4)(v9, 1, 1, v10);
    goto LABEL_5;
  }

  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[19];
  sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
  v8 = swift_dynamicCast();
  (*v4)(v7, v8 ^ 1u, 1, v5);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {

LABEL_5:
    v11 = v0[15];
    sub_22820DDF4(v0[19], qword_280DDCC50, type metadata accessor for MedicationsRecordDoseItem);
    sub_228391150();
    v12 = v11;
    v13 = sub_2283911A0();
    v14 = sub_2283925C0();

    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[17];
    v16 = v0[18];
    v18 = v0[16];
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v20;
      *v19 = 136315138;
      sub_22820DAD8(v2 + v3, (v0 + 7), sub_228181D50);
      sub_228181D50(0);
      v21 = sub_228392040();
      v23 = sub_2281C96FC(v21, v22, &v29);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_22816B000, v13, v14, "Incorrect view model for MedicationsRecordDoseItem: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x22AAB7B80](v20, -1, -1);
      MEMORY[0x22AAB7B80](v19, -1, -1);
    }

    (*(v17 + 8))(v16, v18);

    v24 = v0[1];
    v25 = MEMORY[0x277D84F90];

    return v24(v25);
  }

  v27 = v0[22];
  sub_22820DA14(v0[19], v27);
  v0[26] = [objc_allocWithZone(MEMORY[0x277D11578]) initWithHealthStore_];
  v28 = swift_task_alloc();
  v0[27] = v28;
  *v28 = v0;
  v28[1] = sub_22820AE6C;

  return MEMORY[0x28216ABE8]();
}

uint64_t sub_22820AE6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 224) = a1;
  *(v4 + 232) = v1;

  v5 = *(v3 + 200);
  v6 = *(v3 + 192);
  if (v1)
  {
    v7 = sub_22820B1EC;
  }

  else
  {
    v7 = sub_22820AFB0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

char *sub_22820AFB0()
{
  v1 = *(v0 + 224);

  if (v1 >> 62)
  {
    v2 = sub_2283930D0();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_16:
    v18 = *(v0 + 208);
    v19 = *(v0 + 176);

    sub_22820DA78(v19, type metadata accessor for MedicationsRecordDoseItem);
    v5 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_3:
  v22 = MEMORY[0x277D84F90];
  result = sub_2281C9E44(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v22;
  v6 = v1 & 0xC000000000000001;
  v21 = *(v0 + 224) + 32;
  do
  {
    if (v6)
    {
      v7 = MEMORY[0x22AAB6D80](v4, *(v0 + 224));
    }

    else
    {
      v7 = *(v21 + 8 * v4);
    }

    v8 = v7;
    v9 = [v7 medicationIdentifier];
    if (v9)
    {
      v10 = v9;
      v11 = sub_228392000();
      v13 = v12;
    }

    else
    {

      v11 = 0;
      v13 = 0xE000000000000000;
    }

    v15 = *(v22 + 16);
    v14 = *(v22 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_2281C9E44((v14 > 1), v15 + 1, 1);
    }

    ++v4;
    *(v22 + 16) = v15 + 1;
    v16 = v22 + 16 * v15;
    *(v16 + 32) = v11;
    *(v16 + 40) = v13;
  }

  while (v2 != v4);
  v17 = *(v0 + 176);

  sub_22820DA78(v17, type metadata accessor for MedicationsRecordDoseItem);
LABEL_17:

  v20 = *(v0 + 8);

  return v20(v5);
}

uint64_t sub_22820B1EC()
{
  v1 = v0[26];
  v2 = v0[22];

  sub_22820DA78(v2, type metadata accessor for MedicationsRecordDoseItem);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22820B298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = sub_2283911B0();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  sub_22820D768(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v5[13] = swift_task_alloc();
  v7 = sub_22838F440();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = sub_2283922A0();
  v5[20] = sub_228392290();
  v8 = swift_task_alloc();
  v5[21] = v8;
  *v8 = v5;
  v8[1] = sub_22820B47C;

  return sub_22820A904();
}

uint64_t sub_22820B47C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  v5 = sub_228392250();
  if (v1)
  {
    v6 = sub_22820BE04;
  }

  else
  {
    v6 = sub_22820B5DC;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_22820B5DC()
{
  v79 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];

  sub_22820C024(v3);
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v6 = v0[18];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];
  if (v5 == 1)
  {
    (*(v7 + 16))(v6, v0[7], v0[14]);
    if (v4(v9, 1, v8) != 1)
    {
      sub_22820DDF4(v0[13], &qword_280DDCDB0, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    (*(v7 + 32))(v6, v0[13], v0[14]);
  }

  v10 = v0[6];
  v77 = MEMORY[0x277D84F90];
  v78 = MEMORY[0x277D84F90];
  if (v10 >> 62)
  {
LABEL_43:
    v71 = v10 & 0xFFFFFFFFFFFFFF8;
    v11 = sub_2283930D0();
    v12 = v0[6];
  }

  else
  {
    v71 = v10 & 0xFFFFFFFFFFFFFF8;
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = v10;
  }

  v13 = v0[15];
  v73 = (v13 + 16);
  v74 = (v13 + 32);
  v72 = v0;
  if (v11)
  {
    v14 = 0;
    v70 = v10 & 0xC000000000000001;
    v67 = v12 + 32;
    v68 = v0 + 2;
    v15 = v0[23];
    v16 = MEMORY[0x277D84F90];
    v17 = MEMORY[0x277D84F90];
    v69 = v11;
    do
    {
      v65 = v17;
      while (1)
      {
        if (v70)
        {
          v18 = MEMORY[0x22AAB6D80](v14, v72[6]);
        }

        else
        {
          if (v14 >= *(v71 + 16))
          {
            goto LABEL_42;
          }

          v18 = *(v67 + 8 * v14);
        }

        v19 = v18;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v75 = v15;
        v76 = v14 + 1;
        v66 = v16;
        v0 = v72;
        v20 = v72[22];
        v21 = v72[17];
        v22 = v72[14];
        v23 = *v73;
        (*v73)(v21, v72[18], v22);
        type metadata accessor for MedicationsDoseLogViewModel(0);
        v24 = swift_allocObject();
        *(v24 + 2) = v19;
        *(v24 + 3) = 0;
        *(v24 + 4) = 0;
        *(v24 + 5) = 0x3FF0000000000000;
        *(v24 + 6) = 1;
        *&v24[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus] = 1;
        v23(&v24[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate], v21, v22);
        v25 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialLogDate;
        v26 = *v74;
        v27 = v19;
        v26(&v24[v25], v21, v22);
        *&v24[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialDoseAmount] = *(v24 + 5);
        *&v24[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_index] = v14;
        v28 = [v27 semanticIdentifier];
        v29 = [v28 stringValue];

        v30 = sub_228392000();
        v32 = v31;

        v72[2] = v30;
        v72[3] = v32;
        v33 = swift_task_alloc();
        *(v33 + 16) = v68;
        v34 = v20;
        v15 = v75;
        v35 = sub_22830884C(sub_22820DC4C, v33, v34);

        if ((v35 & 1) == 0)
        {
          break;
        }

        v10 = &v77;
        MEMORY[0x22AAB5D20](v36);
        if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2283921E0();
        }

        sub_228392230();

        v16 = v77;
        ++v14;
        if (v76 == v69)
        {
          v17 = v65;
          goto LABEL_25;
        }
      }

      v10 = &v78;
      MEMORY[0x22AAB5D20](v36);
      if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2283921E0();
      }

      sub_228392230();

      v17 = v78;
      ++v14;
      v16 = v66;
    }

    while (v76 != v69);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
    v16 = MEMORY[0x277D84F90];
  }

LABEL_25:

  if (v16 >> 62)
  {
    v37 = sub_2283930D0();
  }

  else
  {
    v37 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v37)
  {

    if (!(v17 >> 62))
    {
      goto LABEL_31;
    }

LABEL_36:
    if (sub_2283930D0())
    {
      goto LABEL_32;
    }

LABEL_37:

    v50 = 0;
    goto LABEL_38;
  }

  (*v73)(v72[16], v72[7], v72[14]);
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v38 = v72[16];
  v39 = v72[14];
  v40 = sub_22838F0C0();
  v42 = v41;
  type metadata accessor for MedicationDoseLogListViewModel(0);
  v43 = swift_allocObject();
  (*v74)(v43 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_date, v38, v39);
  v44 = (v43 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title);
  *v44 = v40;
  v44[1] = v42;
  *(v43 + 16) = v16;
  if (v17 >> 62)
  {
    goto LABEL_36;
  }

LABEL_31:
  if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

LABEL_32:
  (*v73)(v72[16], v72[7], v72[14]);
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v45 = v72[16];
  v46 = v72[14];
  v47 = sub_22838F0C0();
  v49 = v48;
  type metadata accessor for MedicationDoseLogListViewModel(0);
  v50 = swift_allocObject();
  (*v74)(v50 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_date, v45, v46);
  v51 = (v50 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title);
  *v51 = v47;
  v51[1] = v49;
  *(v50 + 16) = v17;
LABEL_38:
  v52 = v72[18];
  v53 = v72[14];
  v54 = v72[15];
  v56 = v72[8];
  v55 = v72[9];
  v57 = v72[5];
  v58 = objc_allocWithZone(type metadata accessor for MedicationsLogViewController(0));

  v59 = v56;

  v61 = MedicationsLogViewController.init(medicationDoseLogList:asNeededMedicationDoseLogList:healthStore:showRecordAll:provenance:context:)(v60, v50, v59, 0, v55, 0, 2, 0);
  v62 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
  [v62 setModalPresentationStyle_];
  [v62 setModalInPresentation_];
  [v57 presentViewController:v62 animated:1 completion:0];

  (*(v54 + 8))(v52, v53);

  v63 = v72[1];

  return v63();
}

uint64_t sub_22820BE04()
{
  v21 = v0;
  v1 = *(v0 + 184);

  sub_228391150();
  v2 = v1;
  v3 = sub_2283911A0();
  v4 = sub_2283925C0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 184);
    v6 = *(v0 + 88);
    v19 = *(v0 + 96);
    v7 = *(v0 + 80);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    *(v0 + 32) = v5;
    v10 = v5;
    sub_2281810DC(0, &qword_280DDB860, MEMORY[0x277D84948]);
    v11 = sub_228392020();
    v13 = sub_2281C96FC(v11, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_22816B000, v3, v4, "Could not show logging view error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AAB7B80](v9, -1, -1);
    MEMORY[0x22AAB7B80](v8, -1, -1);

    (*(v6 + 8))(v19, v7);
  }

  else
  {
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_22820C024@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_22838F440();
  v31 = *(v1 - 8);
  v32 = v1;
  MEMORY[0x28223BE20](v1);
  v29 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22838F6C0();
  v38 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22838F080();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v33 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v26 - v8;
  sub_22838F680();
  sub_22820D768(0, &qword_280DDB8D8, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v28 = v9;
  v10 = sub_22838F6A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22839B440;
  v15 = *(v11 + 104);
  v15(v14 + v13, *MEMORY[0x277CC9980], v10);
  v15(v14 + v13 + v12, *MEMORY[0x277CC99A0], v10);
  v27 = 2 * v12;
  v15(v14 + v13 + 2 * v12, *MEMORY[0x277CC99A8], v10);
  v26 = 3 * v12;
  v15(v14 + v13 + 3 * v12, *MEMORY[0x277CC9930], v10);
  sub_2281EF358(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v16 = v29;
  sub_22838F3F0();
  sub_22838F5C0();

  (*(v31 + 8))(v16, v32);
  v17 = *(v38 + 8);
  v38 += 8;
  v32 = v17;
  v18 = v30;
  v17(v4, v30);
  sub_22838F680();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_228398270;
  v15(v19 + v13, *MEMORY[0x277CC9988], v10);
  v15(v19 + v13 + v12, *MEMORY[0x277CC9998], v10);
  v15(v19 + v13 + v27, *MEMORY[0x277CC9968], v10);
  sub_2281EF358(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v20 = v33;
  sub_22838F5C0();

  v21 = v32;
  v32(v4, v18);
  v22 = v37;
  sub_22838EFE0();
  sub_22838EFF0();
  sub_22838F020();
  sub_22838F030();
  sub_22838F040();
  sub_22838F050();
  sub_22838EF90();
  sub_22838EFA0();
  sub_22838F680();
  sub_22838F640();
  v21(v4, v18);
  v23 = v35;
  v24 = *(v34 + 8);
  v24(v20, v35);
  return (v24)(v22, v23);
}

uint64_t sub_22820C5A4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = MEMORY[0x277D83D88];
  sub_22820D768(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v74 = &v70 - v4;
  v76 = sub_2283911B0();
  v5 = *(v76 - 8);
  v6 = MEMORY[0x28223BE20](v76);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v70 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v70 - v12;
  sub_22820D768(0, qword_280DDCC50, type metadata accessor for MedicationsRecordDoseItem, v2);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v70 - v15;
  v17 = type metadata accessor for MedicationsRecordDoseItem(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v73 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v75 = &v70 - v21;
  v22 = OBJC_IVAR____TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell_item;
  swift_beginAccess();
  sub_22820DAD8(v1 + v22, v78, sub_228181D50);
  if (v78[3])
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v23 = swift_dynamicCast();
    (*(v18 + 56))(v16, v23 ^ 1u, 1, v17);
    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      v24 = v75;
      sub_22820DA14(v16, v75);
      if (*(v24 + *(v17 + 36)))
      {
        v25 = [v1 viewController];
        if (v25)
        {
          v26 = *(v24 + 40);
          if (v26)
          {
            v71 = v25;

            v70 = v26;
            v27 = sub_228390660();
            v28 = v27;
            v78[0] = MEMORY[0x277D84F90];
            if (v27 >> 62)
            {
LABEL_38:
              v76 = v28 & 0xFFFFFFFFFFFFFF8;
              v29 = sub_2283930D0();
              if (v29)
              {
LABEL_8:
                v30 = 0;
                ObjectType = MEMORY[0x277D84F90];
                do
                {
                  v31 = v30;
                  while (1)
                  {
                    if ((v28 & 0xC000000000000001) != 0)
                    {
                      v32 = MEMORY[0x22AAB6D80](v31, v28);
                    }

                    else
                    {
                      if (v31 >= *(v76 + 16))
                      {
                        goto LABEL_37;
                      }

                      v32 = *(v28 + 8 * v31 + 32);
                    }

                    v33 = v32;
                    v30 = v31 + 1;
                    if (__OFADD__(v31, 1))
                    {
                      __break(1u);
LABEL_37:
                      __break(1u);
                      goto LABEL_38;
                    }

                    objc_opt_self();
                    if (swift_dynamicCastObjCClass())
                    {
                      break;
                    }

                    ++v31;
                    if (v30 == v29)
                    {
                      goto LABEL_40;
                    }
                  }

                  MEMORY[0x22AAB5D20]();
                  if (*((v78[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    ObjectType = *((v78[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                    sub_2283921E0();
                  }

                  sub_228392230();
                  ObjectType = v78[0];
                }

                while (v30 != v29);
                goto LABEL_40;
              }
            }

            else
            {
              v76 = v27 & 0xFFFFFFFFFFFFFF8;
              v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v29)
              {
                goto LABEL_8;
              }
            }

            ObjectType = MEMORY[0x277D84F90];
LABEL_40:

            v58 = sub_2283922D0();
            v59 = v74;
            (*(*(v58 - 8) + 56))(v74, 1, 1, v58);
            v60 = v75;
            v61 = v73;
            sub_22820DAD8(v75, v73, type metadata accessor for MedicationsRecordDoseItem);
            sub_2283922A0();
            v62 = v1;
            v63 = v71;
            v64 = sub_228392290();
            v65 = (*(v18 + 80) + 56) & ~*(v18 + 80);
            v66 = swift_allocObject();
            v67 = MEMORY[0x277D85700];
            v66[2] = v64;
            v66[3] = v67;
            v66[4] = v62;
            v66[5] = v63;
            v66[6] = ObjectType;
            sub_22820DA14(v61, v66 + v65);
            sub_2281DC568(0, 0, v59, &unk_22839C118, v66);

            v69 = (v60 + *(v17 + 40));
            if (*v69)
            {
              (*v69)(v68);
            }

            v57 = v60;
            return sub_22820DA78(v57, type metadata accessor for MedicationsRecordDoseItem);
          }

          v46 = v25;
          sub_228391190();
          v47 = sub_2283911A0();
          v48 = sub_2283925E0();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v78[0] = v50;
            *v49 = 136315138;
            v51 = sub_228393600();
            v53 = sub_2281C96FC(v51, v52, v78);

            *(v49 + 4) = v53;
            _os_log_impl(&dword_22816B000, v47, v48, "[%s] Could not present MedicationsLogViewController because MedicationsRecordDoseItem did not have a specified medication or a list manager.", v49, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v50);
            v54 = v50;
            v24 = v75;
            MEMORY[0x22AAB7B80](v54, -1, -1);
            MEMORY[0x22AAB7B80](v49, -1, -1);
          }

          v55 = (*(v5 + 8))(v13, v76);
          v56 = (v24 + *(v17 + 40));
          if (*v56)
          {
            (*v56)(v55);
          }
        }

        else
        {
          sub_228391190();
          v43 = sub_2283911A0();
          v44 = sub_2283925C0();
          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            *v45 = 0;
            _os_log_impl(&dword_22816B000, v43, v44, "Unable to show logging view controller because MedicationsRecordDoseCollectionViewCell vc cannot be resolved.", v45, 2u);
            MEMORY[0x22AAB7B80](v45, -1, -1);
          }

          (*(v5 + 8))(v11, v76);
        }
      }

      v57 = v24;
      return sub_22820DA78(v57, type metadata accessor for MedicationsRecordDoseItem);
    }
  }

  else
  {
    sub_22820DA78(v78, sub_228181D50);
    (*(v18 + 56))(v16, 1, 1, v17);
  }

  sub_22820DDF4(v16, qword_280DDCC50, type metadata accessor for MedicationsRecordDoseItem);
  sub_228391150();
  v34 = v1;
  v35 = sub_2283911A0();
  v36 = sub_2283925C0();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v77 = v38;
    *v37 = 136315138;
    sub_22820DAD8(v1 + v22, v78, sub_228181D50);
    sub_228181D50(0);
    v39 = sub_228392040();
    v41 = sub_2281C96FC(v39, v40, &v77);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_22816B000, v35, v36, "Incorrect view model for MedicationsRecordDoseItem: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AAB7B80](v38, -1, -1);
    MEMORY[0x22AAB7B80](v37, -1, -1);
  }

  return (*(v5 + 8))(v8, v76);
}

uint64_t sub_22820CF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_2283922A0();
  v7[6] = sub_228392290();
  v9 = sub_228392250();
  v7[7] = v9;
  v7[8] = v8;

  return MEMORY[0x2822009F8](sub_22820CFB4, v9, v8);
}

uint64_t sub_22820CFB4()
{
  v1 = v0[5];
  v2 = *(type metadata accessor for MedicationsRecordDoseItem(0) + 32);
  v3 = *(v1 + 32);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_22820D074;
  v6 = v0[3];
  v5 = v0[4];

  return sub_22820B298(v6, v5, v1 + v2, v3, 2);
}

uint64_t sub_22820D074()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_22820D194, v3, v2);
}

uint64_t sub_22820D194()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_22820D404()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationsRecordDoseCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22820D4E4(uint64_t a1)
{
  sub_22820D768(319, &qword_280DDBCE0, MEMORY[0x277D74AE0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_22820D5BC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell_item;
  swift_beginAccess();
  return sub_22820DAD8(v1 + v3, a1, sub_228181D50);
}

uint64_t sub_22820D628(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228209754();
  return sub_22820DA78(a1, sub_228181D50);
}

uint64_t (*sub_22820D6A8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22820D70C;
}

uint64_t sub_22820D70C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_228209754();
  }

  return result;
}

void sub_22820D768(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22820D7EC()
{
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_22820D83C(uint64_t a1)
{
  sub_2283920B0();

  return sub_2283920B0();
}

uint64_t sub_22820D87C(uint64_t a1)
{
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_22820D8C8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_228393460();
  }
}

uint64_t sub_22820D8F8(uint64_t a1)
{
  MEMORY[0x22AAB5C80](*(v1 + 16), *(v1 + 24));
  MEMORY[0x22AAB5C80](46, 0xE100000000000000);
  if (*(v1 + *(a1 + 36)))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v1 + *(a1 + 36)))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x22AAB5C80](v3, v4);

  return 0x6D65744965736F44;
}

uint64_t sub_22820D9AC(uint64_t a1)
{
  v2 = sub_22820E030(qword_280DDCCB0, &unk_22839C164);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_22820DA14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationsRecordDoseItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22820DA78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22820DAD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22820DB40(uint64_t a1)
{
  v4 = *(type metadata accessor for MedicationsRecordDoseItem(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22819D87C;

  return sub_22820CF18(a1, v6, v7, v8, v9, v10, v1 + v5);
}

void sub_22820DC6C(uint64_t a1)
{
  if (!qword_280DDBCF0)
  {
    sub_228391220();
    sub_2281C35D8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DDBCF0);
    }
  }
}

uint64_t sub_22820DCE0(uint64_t a1, uint64_t a2)
{
  sub_22820D768(0, &qword_280DDBCE0, MEMORY[0x277D74AE0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22820DD74(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22820D768(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22820DDF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22820D768(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_22820DE8C(uint64_t a1)
{
  sub_22817A958(319, &qword_27D824D10, 0x277CCD4D8);
  if (v1 <= 0x3F)
  {
    sub_22820D768(319, &qword_27D8252A0, MEMORY[0x277D77BE0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22838F440();
      if (v3 <= 0x3F)
      {
        sub_22820D768(319, &unk_27D826FC0, sub_2281C35D8, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22820E030(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MedicationsRecordDoseItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MedicationOptionsDataSource.currentValuePublisher.getter()
{
  sub_22820F44C();
}

void *MedicationOptionsDataSource.__allocating_init(item:currentValuePublisher:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_22820F45C(a1, a2);

  return v4;
}

void *MedicationOptionsDataSource.init(item:currentValuePublisher:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_22820F45C(a1, a2);

  return v2;
}

uint64_t sub_22820E14C()
{
  v21 = *v0;
  v19 = MEMORY[0x277D85248];
  sub_22820FE40(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v20 = *(v21 + class metadata base offset for MedicationOptionsDataSource);
  sub_228392F00();
  v4 = sub_228391880();
  v5 = sub_22820FD30();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_22820FD7C(&qword_280DDBAC0, sub_22820FD30, MEMORY[0x277D85228]);
  v23 = v4;
  v24 = v5;
  v25 = WitnessTable;
  v26 = v7;
  v8 = sub_2283917D0();
  v18 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v23 = *(v0 + qword_27D8252A8);

  v11 = sub_228392790();
  v22 = v11;
  v12 = sub_228392730();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  sub_228391A70();
  sub_22820FDC4(v3, &qword_280DDBAD0, v19);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v21;
  v14[2] = v20;
  v14[3] = *(v15 + class metadata base offset for MedicationOptionsDataSource + 8);
  v14[4] = v13;
  swift_getWitnessTable();
  sub_228391AC0();

  (*(v18 + 8))(v10, v8);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_22820E4F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22820E57C();
  }

  return result;
}

uint64_t sub_22820E57C()
{
  v1 = (*(*v0 + class metadata base offset for MedicationOptionsDataSource + 80))();
  sub_228194894(v1);

  sub_22838FF60();

  v3 = (*(*v0 + class metadata base offset for MedicationOptionsDataSource + 88))(v2);
  sub_228194894(v3);

  sub_22838FF60();

  v5 = (*(*v0 + class metadata base offset for MedicationOptionsDataSource + 96))(v4);
  sub_228194894(v5);

  sub_22838FF60();
}

uint64_t sub_22820E6E8()
{
  sub_228390120();
  sub_2283926D0();
  sub_228390300();
  sub_2283926C0();
  sub_2283926B0();
  sub_2283904F0();
  return sub_2283926B0();
}

void *sub_22820E770(uint64_t a1)
{
  v1 = sub_2283900D0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  v5 = sub_2283900C0();
  (*(v2 + 8))(v4, v1);
  [v5 contentInsets];
  [v5 setContentInsets_];
  [v5 contentInsets];
  [v5 setContentInsets_];
  return v5;
}

uint64_t sub_22820E884(uint64_t a1, uint64_t a2)
{
  v4 = sub_2283900D0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-v9];
  sub_228390040();
  (*(*v2 + class metadata base offset for MedicationOptionsDataSource + 104))(a1);
  if (v11)
  {

    sub_228390010();
    (*(v5 + 8))(v10, v4);
    (*(v5 + 32))(v10, v8, v4);
  }

  (*(*v2 + class metadata base offset for MedicationOptionsDataSource + 112))(a1);
  if (v12)
  {

    sub_228390000();
    (*(v5 + 8))(v10, v4);
    (*(v5 + 32))(v10, v8, v4);
  }

  v13 = sub_228390090();
  *(v14 + 16) = 0;
  v13(v17, 0);
  v15 = sub_2283900C0();
  (*(v5 + 8))(v10, v4);
  return v15;
}

void *sub_22820EAE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2283900D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    sub_228390040();
    v9 = sub_2283900C0();
    (*(v5 + 8))(v7, v4);
    [v9 contentInsets];
    [v9 setContentInsets_];
    [v9 contentInsets];
    [v9 setContentInsets_];
    return v9;
  }

  if (a1)
  {
    sub_228390040();
    v9 = sub_2283900C0();
    (*(v5 + 8))(v7, v4);
    return v9;
  }

  return sub_22820E884(0, a2);
}

uint64_t sub_22820EC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_22820FE40(0, &qword_27D824EB0, MEMORY[0x277D10FE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  v10 = sub_22838F4A0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_228392000() == a1 && v14 == a2)
  {

    goto LABEL_13;
  }

  v29 = v9;
  v16 = sub_228393460();

  if (v16)
  {
LABEL_13:
    v22 = sub_22838F750();
    (*(*v3 + class metadata base offset for MedicationOptionsDataSource + 112))(v22);
    v30 = 0x74497265746F6F46;
    v31 = 0xEB000000005F6D65;
    sub_22838F490();
    v23 = sub_22838F450();
    v25 = v24;
    (*(v11 + 8))(v13, v10);
    MEMORY[0x22AAB5C80](v23, v25);

    a3[3] = sub_228390330();
    a3[4] = sub_22820FD7C(&qword_27D8244F8, MEMORY[0x277D110D8], MEMORY[0x277D110C8]);
    __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_228390320();
  }

  if (sub_228392000() == a1 && v17 == a2)
  {

    v20 = v29;
  }

  else
  {
    v19 = sub_228393460();

    v20 = v29;
    if ((v19 & 1) == 0)
    {
      a3[3] = sub_22838FC00();
      a3[4] = sub_22820FD7C(&qword_27D823958, MEMORY[0x277D10EC8], MEMORY[0x277D10EC0]);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_22838FBF0();
    }
  }

  v26 = sub_22838F750();
  (*(*v3 + class metadata base offset for MedicationOptionsDataSource + 104))(v26);
  v27 = sub_228390130();
  (*(*(v27 - 8) + 56))(v20, 1, 1, v27);
  a3[3] = sub_228390150();
  a3[4] = sub_22820FD7C(&qword_27D824EC8, MEMORY[0x277D10FE8], MEMORY[0x277D10FD8]);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_228390140();
}

uint64_t sub_22820F174()
{

  sub_22820FDC4(v0 + qword_27D828B70, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
}

uint64_t MedicationOptionsDataSource.deinit()
{
  v0 = sub_22838FFB0();

  sub_22820FDC4(v0 + qword_27D828B70, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);

  return v0;
}

uint64_t MedicationOptionsDataSource.__deallocating_deinit()
{
  MedicationOptionsDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22820F308()
{
  sub_22820F44C();
}

void *sub_22820F45C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + qword_27D8252B0) = MEMORY[0x277D84FA0];
  sub_228181FB4(a1, v3 + qword_27D828B70);
  *(v3 + qword_27D8252A8) = a2;
  v22[0] = 0;
  v22[1] = 0xE000000000000000;

  sub_2283931D0();

  strcpy(v22, "MutableArray<");
  HIWORD(v22[1]) = -4864;
  sub_22838F490();
  v10 = sub_22838F450();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  MEMORY[0x22AAB5C80](v10, v12);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v13 = sub_22838FF30();
  sub_22820FE40(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  sub_22838FEF0();
  *(swift_allocObject() + 16) = xmmword_228398270;
  v14 = *(*v13 + class metadata base offset for MedicationOptionsDataSource + 80);

  v16 = v14(v15);
  sub_228194894(v16);

  v17 = sub_22838FED0();
  v18 = (*(*v13 + class metadata base offset for MedicationOptionsDataSource + 88))(v17);
  sub_228194894(v18);

  v19 = sub_22838FED0();
  v20 = (*(*v13 + class metadata base offset for MedicationOptionsDataSource + 96))(v19);
  sub_228194894(v20);

  sub_22838FED0();
  sub_22838FF50();

  sub_22820E14C();

  sub_22820FDC4(a1, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  return v13;
}

void sub_22820F8FC(uint64_t a1)
{
  sub_22820FE40(319, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

unint64_t sub_22820FD30()
{
  result = qword_280DDCEE0;
  if (!qword_280DDCEE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DDCEE0);
  }

  return result;
}

uint64_t sub_22820FD7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22820FDC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22820FE40(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_22820FE40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22820FEA8(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_228393460(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_228393460();
    }
  }

  return result;
}

uint64_t sub_22820FF4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22820FF94(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_22820FFE8()
{
  result = qword_27D825338;
  if (!qword_27D825338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825338);
  }

  return result;
}

uint64_t static HKDrugInteractionResultCollection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  v5 = *(a2 + 16);

  v6 = sub_22821010C(v4, v5, &qword_280DDBA10, 0x277D11518);

  return v6 & 1;
}

uint64_t sub_22821010C(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_22817A958(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x22AAB6D80](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x22AAB6D80](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_228392C60();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_228392C60();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_2283930D0();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_2283930D0();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_228210374(uint64_t result, uint64_t a2)
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
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2282103D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v36 = v2;
  v37 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  v7 = 0xEC000000656C7564;
  v8 = 0x6874676E65727473;
  v9 = 0x656C756465686373;
  v10 = v4 - 1;
  while (1)
  {
    v11 = v5[1];
    v28 = *v5;
    v29 = v11;
    v12 = v5[3];
    v30 = v5[2];
    v31 = v12;
    v13 = v6[1];
    v32 = *v6;
    v33 = v13;
    v14 = v6[3];
    v34 = v6[2];
    v35 = v14;
    if (v28 > 1u)
    {
      if (v28 == 2)
      {
        v15 = v8;
      }

      else
      {
        v15 = 1836216166;
      }

      if (v28 == 2)
      {
        v16 = 0xE800000000000000;
      }

      else
      {
        v16 = 0xE400000000000000;
      }
    }

    else
    {
      if (v28)
      {
        v15 = 0x656863536174656DLL;
      }

      else
      {
        v15 = v9;
      }

      if (v28)
      {
        v16 = v7;
      }

      else
      {
        v16 = 0xE800000000000000;
      }
    }

    v17 = v8;
    if (v32 == 2)
    {
      v18 = 0xE800000000000000;
    }

    else
    {
      v8 = 1836216166;
      v18 = 0xE400000000000000;
    }

    v19 = v9;
    if (v32)
    {
      v9 = 0x656863536174656DLL;
    }

    v20 = v7;
    if (!v32)
    {
      v7 = 0xE800000000000000;
    }

    if (v32 <= 1u)
    {
      v21 = v9;
    }

    else
    {
      v21 = v8;
    }

    if (v32 <= 1u)
    {
      v22 = v7;
    }

    else
    {
      v22 = v18;
    }

    if (v15 == v21 && v16 == v22)
    {
      sub_228211388(&v28, v27);
      sub_228211388(&v32, v27);
    }

    else
    {
      v23 = sub_228393460();
      sub_228211388(&v28, v27);
      sub_228211388(&v32, v27);

      if ((v23 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
    if ((sub_228392C60() & 1) == 0 || v29 != v33 && (sub_228393460() & 1) == 0)
    {
LABEL_55:
      sub_2282113E4(&v32);
      sub_2282113E4(&v28);
      return 0;
    }

    if (*(&v30 + 1))
    {
      if (!*(&v34 + 1) || v30 != v34 && (sub_228393460() & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    else if (*(&v34 + 1))
    {
      goto LABEL_55;
    }

    v24 = *(&v35 + 1);
    if (*(&v31 + 1))
    {
      if (!*(&v35 + 1))
      {
        goto LABEL_55;
      }

      if (v31 == v35)
      {
        sub_2282113E4(&v32);
        sub_2282113E4(&v28);
      }

      else
      {
        v25 = sub_228393460();
        sub_2282113E4(&v32);
        sub_2282113E4(&v28);
        if ((v25 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      sub_2282113E4(&v32);
      sub_2282113E4(&v28);
      if (v24)
      {
        return 0;
      }
    }

    if (!v10)
    {
      return 1;
    }

    --v10;
    v6 += 4;
    v5 += 4;
    v7 = v20;
    v8 = v17;
    v9 = v19;
  }
}

uint64_t sub_2282106E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 6)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_228393460() & 1) == 0)
      {
        break;
      }

      v3 += 6;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_228210778(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_2283930D0();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v15 = 0;
    return v15 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v15 = 1;
    return v15 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = sub_228390A30();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = sub_2283930D0();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AAB6D80](v12 - 4, a1);
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        if (v11)
        {
LABEL_20:
          MEMORY[0x22AAB6D80](v12 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

LABEL_25:
      sub_228211280(&qword_27D825348, 255, MEMORY[0x277D11660], MEMORY[0x277D11668]);
      v15 = sub_228391FB0();

      if (v15)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v15 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2282109A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Dosage(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

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
    result = sub_2282112C8(v13, v10);
    if (!v11)
    {
      break;
    }

    sub_2282112C8(v14, v7);
    if ((sub_22838F470() & 1) == 0 || (sub_22838F3D0() & 1) == 0)
    {
      sub_22821132C(v7);
      sub_22821132C(v10);
      return 0;
    }

    v17 = *&v10[*(v4 + 24)];
    sub_22821132C(v10);
    v18 = *&v7[*(v4 + 24)];
    sub_22821132C(v7);
    result = v17 == v18;
    v19 = v17 != v18 || v11-- == 1;
    v14 += v15;
    v13 += v15;
    if (v19)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

id sub_228210B58()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = sub_2283930D0();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_10:

    v4 = MEMORY[0x22AAB6D80](0, v1);

    return v4;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_228210C20(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = a1;
  MEMORY[0x22AAB5D20]();
  if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2283921E0();
  }

  sub_228392230();
  return swift_endAccess();
}

uint64_t sub_228210CC8(uint64_t a1)
{
  swift_beginAccess();

  sub_2281D5A80(v1);
  return swift_endAccess();
}

id sub_228210D1C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = sub_2283930D0();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_9:

    v5 = MEMORY[0x22AAB6D80](0, v3);

    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);
LABEL_6:
    v6 = [v5 hasSameAncestorIdentifiersAsInteractionResult_];

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_228210DF8()
{
  swift_beginAccess();
  sub_2281D76AC((v0 + 16));
  return swift_endAccess();
}

uint64_t HKDrugInteractionResultCollection.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t HKDrugInteractionResultCollection.hash(into:)()
{
  swift_beginAccess();

  sub_2281DB0C8();
}

uint64_t HKDrugInteractionResultCollection.hashValue.getter()
{
  sub_228393520();
  swift_beginAccess();

  sub_2281DB0C8();

  return sub_228393570();
}

uint64_t sub_228210F64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 16);
  swift_beginAccess();
  v5 = *(v3 + 16);

  v6 = sub_22821010C(v4, v5, &qword_280DDBA10, 0x277D11518);

  return v6 & 1;
}

uint64_t sub_22821100C()
{
  sub_228393520();
  swift_beginAccess();

  sub_2281DB0C8();

  return sub_228393570();
}

uint64_t sub_22821107C()
{
  swift_beginAccess();

  sub_2281DB0C8();
}

uint64_t sub_2282110DC(uint64_t a1)
{
  sub_228393520();
  swift_beginAccess();

  sub_2281DB0C8();

  return sub_228393570();
}

uint64_t sub_228211280(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2282112C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Dosage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22821132C(uint64_t a1)
{
  v2 = type metadata accessor for Dosage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ThirdPartyAuthorizationStepViewController(uint64_t a1)
{
  result = qword_27D825350;
  if (!qword_27D825350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282114D0()
{
  sub_2281BC944();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7[15] = 1;
  sub_2283918C0();
  sub_2281ED0F4();
  v5 = sub_228391990();
  (*(v2 + 8))(v4, v1);
  return v5;
}

id sub_22821164C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThirdPartyAuthorizationStepViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *MedicationSecondaryEducationViewController.__allocating_init(type:educationDisplayable:content:attribution:)(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v13 = a2[3];
  v14 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  v16 = sub_228212278(a1, v15, a3, a4, a5, a6, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v16;
}

void *MedicationSecondaryEducationViewController.init(type:educationDisplayable:content:attribution:)(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v13 = a2[3];
  v14 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v19 = sub_228212060(a1, v17, a3, a4, a5, a6, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v19;
}

Swift::Void __swiftcall MedicationSecondaryEducationViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_2282118F4();
}

void sub_2282118F4()
{
  v1 = v0;
  v2 = qword_27D825360;
  if (*(v0 + qword_27D825360))
  {
    if (*(v0 + qword_27D825360) == 1)
    {
      if (qword_27D823310 == -1)
      {
LABEL_4:
        v3 = &qword_27D826AD0;
        goto LABEL_8;
      }
    }

    else if (qword_27D823310 == -1)
    {
      goto LABEL_4;
    }

    swift_once();
    goto LABEL_4;
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v3 = &qword_280DDCF20;
LABEL_8:
  v4 = *v3;

  sub_22838F0C0();

  v5 = sub_228391FC0();

  [v1 setTitle_];

  v6 = [v1 collectionView];
  if (!v6)
  {
    __break(1u);
    goto LABEL_24;
  }

  v7 = v6;
  v8 = [objc_opt_self() systemGroupedBackgroundColor];
  [v7 setBackgroundColor_];

  v9 = [v1 collectionView];
  if (!v9)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v10 = v9;
  sub_228392000();

  MEMORY[0x22AAB5C80](0x7461636964654D2ELL, 0xED00002E736E6F69);

  v11 = 0xE900000000000079;
  v12 = 0x636E616E67657250;
  if (*(v1 + v2) != 1)
  {
    v12 = 0x6F6974617463614CLL;
    v11 = 0xE90000000000006ELL;
  }

  if (*(v1 + v2))
  {
    v13 = v12;
  }

  else
  {
    v13 = 0x6666452065646953;
  }

  if (*(v1 + v2))
  {
    v14 = v11;
  }

  else
  {
    v14 = 0xEC00000073746365;
  }

  MEMORY[0x22AAB5C80](v13, v14);

  MEMORY[0x22AAB5C80](0x6E6F747475422ELL, 0xE700000000000000);

  v15 = sub_228391FC0();

  [v10 setAccessibilityIdentifier_];
}

void sub_228211CA4(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  sub_2282118F4();
}

id MedicationSecondaryEducationViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id MedicationSecondaryEducationViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall MedicationSecondaryEducationViewController.viewControllerWillEnterAdaptiveModal()()
{
  [v0 setModalPresentationStyle_];
  v1 = [v0 navigationItem];
  sub_22817A958(0, &qword_27D824138, 0x277D751E0);
  sub_22817A958(0, &qword_27D827890, 0x277D750C8);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228392C90();
  v3 = sub_228392640();
  [v1 setRightBarButtonItem_];
}

void sub_228211F50(void *a1)
{
  v1 = a1;
  MedicationSecondaryEducationViewController.viewControllerWillEnterAdaptiveModal()();
}

Swift::Void __swiftcall MedicationSecondaryEducationViewController.viewControllerDidLeaveAdaptiveModal()()
{
  v1 = [v0 navigationItem];
  [v1 setRightBarButtonItem_];
}

void sub_228211FF4(void *a1)
{
  v2 = a1;
  v1 = [v2 navigationItem];
  [v1 setRightBarButtonItem_];
}

void *sub_228212060(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a5;
  v29 = a6;
  v14 = *(a8 - 8);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - v18;
  (*(v14 + 32))(&v27 - v18);
  v20 = *a1;
  *(a7 + qword_27D825360) = *a1;
  type metadata accessor for MedicationSecondaryEducationCompoundDataSource(0);
  swift_allocObject();
  v30 = v20;
  type metadata accessor for MedicationSecondaryEducationDataSource(0);
  v21 = swift_allocObject();
  (*(v14 + 16))(v17, v19, a8);
  v22 = sub_2281AA084(&v30, v17, a3, a4, v28, v29, v21, a8, a9);
  sub_228182110(0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_228397F40;
  v24 = sub_2282124D0();
  *(v23 + 32) = v22;
  *(v23 + 40) = v24;
  sub_228390210();

  v25 = sub_228390480();
  [v25 setModalPresentationStyle_];

  (*(v14 + 8))(v19, a8);
  return v25;
}

void *sub_228212278(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = a6;
  v15 = *(a8 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_allocWithZone(v18);
  (*(v15 + 16))(v17, a2, a8);
  return sub_228212060(a1, v17, a3, a4, a5, v22, v19, a8, a9);
}

uint64_t type metadata accessor for MedicationSecondaryEducationViewController(uint64_t a1)
{
  result = qword_27D825368;
  if (!qword_27D825368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_228212470()
{
  result = qword_27D8238E8;
  if (!qword_27D8238E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D8238E8);
  }

  return result;
}

unint64_t sub_2282124D0()
{
  result = qword_27D825378;
  if (!qword_27D825378)
  {
    type metadata accessor for MedicationSecondaryEducationDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825378);
  }

  return result;
}

id sub_2282126F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22821273C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228212964(0, &unk_27D827790, type metadata accessor for FormStepResult);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  sub_228212964(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  objc_allocWithZone(type metadata accessor for FormStepViewController(0));
  sub_2282129B8(a1, v11);
  v12 = type metadata accessor for MedicationSearchItem(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 0, 1, v12);
  sub_228212A1C(a3, v8);
  sub_228212A9C(0);
  swift_allocObject();
  v14 = sub_228391890();
  type metadata accessor for MedicationFormsDataSource(0);
  swift_allocObject();
  v15 = sub_22833D010(v11, v14);
  sub_2282129B8(a1, v11);
  v13(v11, 0, 1, v12);
  v16 = sub_228380018(v11, v15, a2);

  sub_228212B20(a3);
  sub_228212B98(a1);
  return v16;
}

void sub_228212964(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_2282129B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationSearchItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228212A1C(uint64_t a1, uint64_t a2)
{
  sub_228212964(0, &unk_27D827790, type metadata accessor for FormStepResult);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_228212A9C(uint64_t a1)
{
  if (!qword_27D8253A0)
  {
    sub_228212964(255, &unk_27D827790, type metadata accessor for FormStepResult);
    v1 = sub_228391880();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8253A0);
    }
  }
}

uint64_t sub_228212B20(uint64_t a1)
{
  sub_228212964(0, &unk_27D827790, type metadata accessor for FormStepResult);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228212B98(uint64_t a1)
{
  v2 = type metadata accessor for MedicationSearchItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228212BF4(uint64_t a1, void *a2)
{
  v4 = sub_2283911B0();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_228391060();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = *(v8 + 16);
  v14(&v21 - v12, a1, v7);
  result = (*(v8 + 88))(v13, v7);
  if (result == *MEMORY[0x277D11738])
  {
    if ((*a2 & 1) == 0)
    {
      *a2 |= 1uLL;
    }
  }

  else if (result == *MEMORY[0x277D11748])
  {
    if ((*a2 & 2) == 0)
    {
      *a2 |= 2uLL;
    }
  }

  else if (result == *MEMORY[0x277D11760])
  {
    if ((*a2 & 4) == 0)
    {
      *a2 |= 4uLL;
    }
  }

  else if (result == *MEMORY[0x277D11758])
  {
    if ((*a2 & 8) == 0)
    {
      *a2 |= 8uLL;
    }
  }

  else if (result == *MEMORY[0x277D11730])
  {
    if ((*a2 & 0x10) == 0)
    {
      *a2 |= 0x10uLL;
    }
  }

  else if (result == *MEMORY[0x277D11750])
  {
    if ((*a2 & 0x20) == 0)
    {
      *a2 |= 0x20uLL;
    }
  }

  else if (result == *MEMORY[0x277D11740])
  {
    if ((*a2 & 0x40) == 0)
    {
      *a2 |= 0x40uLL;
    }
  }

  else
  {
    sub_228391150();
    v14(v11, a1, v7);
    v16 = sub_2283911A0();
    v17 = sub_2283925C0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26 = v24;
      *v18 = 136315394;
      *(v18 + 4) = sub_2281C96FC(0x737961646B656557, 0xE800000000000000, &v26);
      *(v18 + 12) = 2048;
      v23 = v17;
      v22 = sub_228391050();
      v19 = *(v8 + 8);
      v19(v11, v7);
      *(v18 + 14) = v22;
      _os_log_impl(&dword_22816B000, v16, v23, "[%s] Encountered unknown Day = %ld", v18, 0x16u);
      v20 = v24;
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x22AAB7B80](v20, -1, -1);
      MEMORY[0x22AAB7B80](v18, -1, -1);
    }

    else
    {
      v19 = *(v8 + 8);
      v19(v11, v7);
    }

    (*(v25 + 8))(v6, v4);
    return (v19)(v13, v7);
  }

  return result;
}

uint64_t sub_22821301C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22838F4A0();
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x28223BE20](v4);
  v20 = v2;
  v21 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_27D8253B0) = a1;
  v31 = 1;

  v32[0] = sub_228390770() & 1;
  v33 = 2;
  v34 = sub_2283907C0() & 1;
  v35 = 3;
  v24 = a1;
  v36 = sub_228390790() & 1;
  v29 = MEMORY[0x277D84F90];
  sub_228393240();
  v26 = sub_2281AF0A0();
  v6 = objc_opt_self();
  type metadata accessor for InteractionFactorsLifestyleOptionsItem(0);
  v7 = 0;
  v25 = 0x80000002283AC780;
  while (1)
  {
    v8 = *&v30[v7 + 32];
    v9 = v32[v7];
    v10 = swift_allocObject();
    *(v10 + qword_27D8256A8) = v8;
    *(v10 + qword_27D8256A0) = v9;
    v11 = [v6 systemBackgroundColor];
    v12 = [v6 secondarySystemBackgroundColor];
    sub_228392B80();

    HKDrugInteractionLifestyleFactor.image.getter(v8);
    if (v8 > 1)
    {
      break;
    }

    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_15;
      }

      v13 = 0xE700000000000000;
      v14 = 0x4C4F484F434C41;
      goto LABEL_11;
    }

LABEL_2:
    sub_2283901A0();
    sub_228393210();
    sub_228393250();
    sub_228393260();
    sub_228393220();
    v7 += 16;
    if (v7 == 48)
    {
      *(v20 + qword_27D8253A8) = v29;
      v15 = sub_22838F920();

      sub_22838F910();
      sub_22838FCD0();

      sub_22819F3B0(0);
      sub_22838FEF0();
      *(swift_allocObject() + 16) = xmmword_228397F40;

      sub_228195D94(v16);

      v17 = v21;
      sub_22838F490();
      sub_22838F450();
      (*(v22 + 8))(v17, v23);
      sub_22838FED0();
      sub_22838FF50();

      return v15;
    }
  }

  if (v8 == 3)
  {
    v13 = 0xE700000000000000;
    v14 = 0x4F434341424F54;
LABEL_11:
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_2283931D0();

    v27 = 0xD000000000000011;
    v28 = v25;
    MEMORY[0x22AAB5C80](v14, v13);

    MEMORY[0x22AAB5C80](95, 0xE100000000000000);
    MEMORY[0x22AAB5C80](0x4F4C41444E415453, 0xEA0000000000454ELL);
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();

    goto LABEL_2;
  }

  if (v8 == 2)
  {
    v13 = 0xE900000000000041;
    v14 = 0x4E41554A4952414DLL;
    goto LABEL_11;
  }

LABEL_15:
  result = sub_228393300();
  __break(1u);
  return result;
}

uint64_t sub_2282135B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  v6 = sub_2283900C0();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_228213688()
{
  v1 = v0;
  v31 = *v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + qword_27D8253A8);
  if (v8 >> 62)
  {
    result = sub_2283930D0();
    v9 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return result;
    }
  }

  if (v9 >= 1)
  {
    v10 = 0;
    v34 = v8 & 0xC000000000000001;
    v32 = (v3 + 8);
    *&v5 = 136446466;
    v26 = v5;
    v29 = v7;
    v30 = v2;
    v27 = v9;
    v28 = v8;
    v33 = qword_27D8253B0;
    while (1)
    {
      if (v34)
      {
        v11 = MEMORY[0x22AAB6D80](v10, v8);
      }

      else
      {
        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = *(v11 + qword_27D8256A8);
      switch(v12)
      {
        case 3:
          sub_2283907A0();
          break;
        case 2:
          sub_2283907D0();
          break;
        case 1:
          sub_228390780();
          break;
        default:
          sub_228391150();

          v13 = sub_2283911A0();
          v14 = sub_2283925C0();

          if (os_log_type_enabled(v13, v14))
          {
            v15 = swift_slowAlloc();
            v16 = swift_slowAlloc();
            v36 = v16;
            *v15 = v26;
            v17 = sub_228393600();
            v19 = v1;
            v20 = sub_2281C96FC(v17, v18, &v36);

            *(v15 + 4) = v20;
            *(v15 + 12) = 2080;
            v35 = v12;
            type metadata accessor for HKDrugInteractionLifestyleFactor(0);
            v21 = sub_228392020();
            v23 = sub_2281C96FC(v21, v22, &v36);
            v1 = v19;
            v8 = v28;

            *(v15 + 14) = v23;
            v7 = v29;
            _os_log_impl(&dword_22816B000, v13, v14, "%{public}s Unrecognized DDI factor: %s", v15, 0x16u);
            swift_arrayDestroy();
            v24 = v16;
            v2 = v30;
            MEMORY[0x22AAB7B80](v24, -1, -1);
            v25 = v15;
            v9 = v27;
            MEMORY[0x22AAB7B80](v25, -1, -1);
          }

          result = (*v32)(v7, v2);
          goto LABEL_7;
      }

LABEL_7:
      if (v9 == ++v10)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228213A44()
{
}

uint64_t InteractionFactorsLifestyleOptionsDataSource.deinit(uint64_t a1)
{
  v1 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  return v1;
}

uint64_t InteractionFactorsLifestyleOptionsDataSource.__deallocating_deinit(uint64_t a1)
{
  _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  return swift_deallocClassInstance();
}

unint64_t sub_228213C10()
{
  result = qword_27D8253B8;
  if (!qword_27D8253B8)
  {
    type metadata accessor for InteractionFactorsLifestyleOptionsDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8253B8);
  }

  return result;
}

uint64_t type metadata accessor for InteractionFactorsLifestyleOptionsDataSource(uint64_t a1)
{
  result = qword_27D8253C0;
  if (!qword_27D8253C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_228213DC0()
{
  sub_2283931D0();

  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);
  type metadata accessor for MedicationLogDetailsUnitItem(0);
  v1 = sub_228300540();
  MEMORY[0x22AAB5C80](v1);

  return 0xD000000000000013;
}

uint64_t sub_228213E80()
{
  sub_228393520();
  sub_22838F4A0();
  sub_228216EDC(&unk_27D823CA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_228391F70();
  sub_228300540();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_228213F40(uint64_t a1)
{
  sub_22838F4A0();
  sub_228216EDC(&unk_27D823CA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_228391F70();
  sub_228300540();
  sub_2283920B0();
}

uint64_t sub_228213FF4(uint64_t a1)
{
  sub_228393520();
  sub_22838F4A0();
  sub_228216EDC(&unk_27D823CA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_228391F70();
  sub_228300540();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_2282140B4(uint64_t a1)
{
  v2 = sub_228216EDC(&unk_27D8254C0, type metadata accessor for MedicationLogDetailsUnitItem, &unk_22839C798);

  return MEMORY[0x282169440](a1, v2);
}

id sub_228214130()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitCell____lazy_storage___unitView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitCell____lazy_storage___unitView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitCell____lazy_storage___unitView);
  }

  else
  {
    type metadata accessor for MedicationLogDetailsUnitView();
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

uint64_t sub_2282141B8()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228216CE0(0, &unk_27D825490, type metadata accessor for MedicationLogDetailsUnitItem, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for MedicationLogDetailsUnitItem(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v13], v31);
  if (v32)
  {
    sub_22817A700();
    v14 = swift_dynamicCast();
    (*(v10 + 56))(v8, v14 ^ 1u, 1, v9);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_2282166B0(v8, v12);
      v15 = sub_228214130();
      *&v15[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_viewModel] = *&v12[*(v9 + 20)];
      swift_retain_n();

      sub_228214B8C();

      v16 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitCell____lazy_storage___unitView];
      v17 = &v12[*(v9 + 24)];
      swift_unknownObjectWeakLoadStrong();
      v18 = *(v17 + 1);
      v19 = v16;
      sub_228216714(v12);
      *&v19[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_detailsDelegate + 8] = v18;
      swift_unknownObjectWeakAssign();

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_228216604(v31, &qword_280DDCD50, sub_22817A700);
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  sub_228216604(v8, &unk_27D825490, type metadata accessor for MedicationLogDetailsUnitItem);
  sub_228391150();
  v21 = v1;
  v22 = sub_2283911A0();
  v23 = sub_2283925C0();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v30 = v25;
    *v24 = 136315138;
    sub_22817E6C8(&v1[v13], v31);
    sub_228216CE0(0, &qword_280DDCD50, sub_22817A700, MEMORY[0x277D83D88]);
    v26 = sub_228392040();
    v28 = sub_2281C96FC(v26, v27, &v30);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_22816B000, v22, v23, "Incorrect view model for MedicationLogDetailsUnitItem: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x22AAB7B80](v25, -1, -1);
    MEMORY[0x22AAB7B80](v24, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

char *sub_228214648(double a1, double a2, double a3, double a4)
{
  v9 = sub_228391590();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitCell____lazy_storage___unitView] = 0;
  v13 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitCell_item];
  v14 = type metadata accessor for MedicationLogDetailsUnitCell();
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v30.receiver = v4;
  v30.super_class = v14;
  v15 = objc_msgSendSuper2(&v30, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = [v15 contentView];
  v17 = sub_228214130();
  [v16 addSubview_];

  v18 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitCell____lazy_storage___unitView;
  [*&v15[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitCell____lazy_storage___unitView] setTranslatesAutoresizingMaskIntoConstraints_];
  sub_228391520();
  sub_2283914D0();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  (*(v10 + 8))(v12, v9);
  v27 = *&v15[v18];
  v28 = [v15 contentView];

  [v27 hk:v28 alignConstraintsWithView:v20 insets:{v22, v24, v26}];
  return v15;
}

uint64_t sub_2282149A0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2282149F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2282141B8();
  return sub_228216604(a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t (*sub_228214A80(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228214AE4;
}

uint64_t sub_228214AE4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_2282141B8();
  }

  return result;
}

uint64_t sub_228214B8C()
{
  v1 = sub_22838F580();
  v2 = *(v1 - 8);
  result = MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_viewModel);
  if (v6)
  {

    v7 = sub_228214E34();
    sub_228215FCC();
    v8 = sub_228391FC0();

    [v7 setText_];

    v9 = (v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_valueText);
    if (*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_valueText + 8) && (, sub_2283920A0(), v11 = v10, , v11))
    {
    }

    else
    {
      sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
      sub_22838F540();
      v12 = sub_228390A90();
      v14 = v13;
      (*(v2 + 8))(v5, v1);
      *v9 = v12;
      v9[1] = v14;

      v15 = sub_228215168();
      v16 = sub_228391FC0();

      [v15 setText_];

      v17 = sub_2282153B8();
      v18 = *(v6 + 16);
      sub_228392A00();

      v19 = sub_228391FC0();

      [v17 setText_];
    }
  }

  return result;
}

id sub_228214E54()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setNumberOfLines_];
  v1 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  v7 = sub_228392000();
  v8 = v2;
  v3 = v0;

  MEMORY[0x22AAB5C80](0xD00000000000001DLL, 0x80000002283AC900);

  MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

  v4 = sub_228391FC0();

  [v3 setAccessibilityIdentifier_];

  v5 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 setFont_];

  return v3;
}

id sub_228215048()
{
  sub_228180ED0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228397F20;
  *(v0 + 32) = sub_228215168();
  *(v0 + 40) = sub_2282153B8();
  v1 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v2 = sub_228392190();

  v3 = [v1 initWithArrangedSubviews_];

  [v3 setAxis_];
  [v3 setAlignment_];
  [v3 setDistribution_];
  [v3 setSpacing_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  return v3;
}

id sub_228215188(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_2282151EC(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75BB8]) init];
  [v2 setDelegate_];
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [v2 setFont_];

  v4 = [objc_opt_self() systemBlueColor];
  [v2 setTextColor_];

  v9 = sub_228392000();
  v10 = v5;
  v6 = v2;

  MEMORY[0x22AAB5C80](0xD00000000000001DLL, 0x80000002283AC900);

  MEMORY[0x22AAB5C80](0x694665756C61562ELL, 0xEB00000000646C65);

  v7 = sub_228391FC0();

  [v6 setAccessibilityIdentifier_];

  [v6 setKeyboardType_];
  [v6 setAdjustsFontForContentSizeCategory_];
  return v6;
}

id sub_2282153D8(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_228215438()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setNumberOfLines_];
  v1 = objc_opt_self();
  v2 = [v1 labelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  v9 = sub_228392000();
  v10 = v3;
  v4 = v0;

  MEMORY[0x22AAB5C80](0xD00000000000001DLL, 0x80000002283AC900);

  MEMORY[0x22AAB5C80](0xD000000000000013, 0x80000002283AC920);

  v5 = sub_228391FC0();

  [v4 setAccessibilityIdentifier_];

  v6 = [objc_opt_self() preferredFontForTextStyle_];
  [v4 setFont_];

  v7 = [v1 systemBlueColor];
  [v4 setTextColor_];

  return v4;
}

void sub_228215648()
{
  sub_228180ED0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228397F20;
  *(v1 + 32) = sub_228214E34();
  *(v1 + 40) = sub_228215028();
  v2 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v3 = sub_228392190();

  v4 = [v2 initWithArrangedSubviews_];

  [v4 setAxis_];
  [v4 setAlignment_];
  [v4 setDistribution_];
  [v4 setSpacing_];
  v5 = v4;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_228397F00;
  v8 = [v5 topAnchor];
  v9 = [v0 topAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v7 + 32) = v10;
  v11 = [v5 leadingAnchor];
  v12 = [v0 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v7 + 40) = v13;
  v14 = [v5 trailingAnchor];
  v15 = [v0 trailingAnchor];
  if (qword_27D8232C8 != -1)
  {
    swift_once();
  }

  v16 = [v14 constraintEqualToAnchor:v15 constant:-*&qword_27D8253D0];

  *(v7 + 48) = v16;
  v17 = [v5 bottomAnchor];

  v18 = [v0 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v7 + 56) = v19;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v20 = sub_228392190();

  [v6 activateConstraints_];

  v21 = sub_228215168();
  [v21 addTarget:v0 action:sel_didChangeText_ forControlEvents:0x20000];
}

void sub_228215A00()
{
  v1 = v0;
  v2 = sub_22838F580();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_228215168();
  v7 = [v6 text];

  if (v7)
  {
    v8 = sub_228392000();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = (v1 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_valueText);
  *v11 = v8;
  v11[1] = v10;

  if (v10)
  {
    v12 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView____lazy_storage___valueTextField);

    v13 = v12;
    v14 = sub_228391FC0();

    [v13 setText_];
  }

  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);

  sub_22838F540();
  sub_228390AA0();
  v16 = v15;

  (*(v3 + 8))(v5, v2);
  v17 = sub_228214E34();
  sub_228215FCC();
  v18 = sub_228391FC0();

  [v17 setText_];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = [Strong navigationItem];
    v21 = [v20 rightBarButtonItem];

    [v21 setEnabled_];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_228215CFC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22838F580();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_valueText + 8))
  {
    sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);

    sub_22838F540();
    sub_228390AA0();
    v11 = v10;

    (*(v7 + 8))(v9, v6);
    return v11;
  }

  else
  {
    sub_228391150();
    v13 = sub_2283911A0();
    v14 = sub_2283925C0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      v17 = sub_228393600();
      v19 = sub_2281C96FC(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_22816B000, v13, v14, "[%s] Couldn't retrieve unit value", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AAB7B80](v16, -1, -1);
      MEMORY[0x22AAB7B80](v15, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

uint64_t sub_228215FCC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_viewModel);
  if (v6)
  {
    v7 = *(v6 + 16);

    v8 = v7;
    v9 = sub_2283929D0();
  }

  else
  {
    sub_228391170();
    v10 = sub_2283911A0();
    v11 = sub_2283925C0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      v14 = sub_228393600();
      v16 = sub_2281C96FC(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_22816B000, v10, v11, "[%s] item is not a MedicationsDoseLogViewModel", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x22AAB7B80](v13, -1, -1);
      MEMORY[0x22AAB7B80](v12, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return v9;
}

id sub_2282161E8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_viewModel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_detailsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_valueText];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView____lazy_storage___valueAffixStackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView____lazy_storage___valueTextField] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView____lazy_storage___countingAffixLabel] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for MedicationLogDetailsUnitView();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  sub_228215648();

  return v10;
}

id sub_228216340(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_22821643C(void *a1)
{
  v2 = [a1 endOfDocument];
  v3 = [a1 textRangeFromPosition:v2 toPosition:v2];
  [a1 setSelectedTextRange_];
}

uint64_t type metadata accessor for MedicationLogDetailsUnitItem(uint64_t a1)
{
  result = qword_27D8254A0;
  if (!qword_27D8254A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228216604(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228216CE0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_228216674()
{
  sub_228390360();
  sub_228390350();
  result = v0 * 0.5;
  qword_27D8253D0 = *&result;
  return result;
}

uint64_t sub_2282166B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationLogDetailsUnitItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_228216714(uint64_t a1)
{
  v2 = type metadata accessor for MedicationLogDetailsUnitItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_228216770()
{
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_viewModel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_detailsDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_valueText);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView____lazy_storage___valueAffixStackView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView____lazy_storage___valueTextField) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView____lazy_storage___countingAffixLabel) = 0;
  sub_228393300();
  __break(1u);
}

uint64_t sub_228216830(void *a1)
{
  v2 = sub_228391DC0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_228391DF0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v10 = sub_228392790();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = sub_228216CC0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228191E9C;
  aBlock[3] = &block_descriptor_9;
  v12 = _Block_copy(aBlock);
  v13 = a1;

  sub_228391DE0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_228216EDC(&qword_280DDCF10, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_228216CE0(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_228216D44();
  sub_228393030();
  MEMORY[0x22AAB6340](0, v9, v5, v12);
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_228216B18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_22838F580();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 text];
  if (v12)
  {
    v13 = v12;
    v14 = sub_228391FC0();
    v15 = [v13 stringByReplacingCharactersInRange:a2 withString:{a3, v14}];

    sub_228392000();
    sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
    sub_22838F540();
    v16 = sub_228390A80();

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_228216CE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_228216D44()
{
  result = qword_280DDCEF0;
  if (!qword_280DDCEF0)
  {
    sub_228216CE0(255, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDCEF0);
  }

  return result;
}

uint64_t sub_228216DF4(uint64_t a1)
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

uint64_t sub_228216EDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t TileItem.init(titleText:bodyText:subBodyText:buttonTitle:imageSystemName:background:didTapView:didTapDismiss:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22838F490();
  v21 = type metadata accessor for TileItem(0);
  v22 = (a9 + v21[5]);
  type metadata accessor for TileItemCell();
  sub_228218624(&qword_27D8254D0, v23, type metadata accessor for TileItemCell, &protocol conformance descriptor for TileItemCell);
  *v22 = sub_22838FBB0();
  v22[1] = v24;
  v25 = (a9 + v21[6]);
  *v25 = a1;
  v25[1] = a2;
  v26 = (a9 + v21[7]);
  *v26 = a3;
  v26[1] = a4;
  v27 = (a9 + v21[8]);
  *v27 = a5;
  v27[1] = a6;
  v28 = (a9 + v21[9]);
  *v28 = a7;
  v28[1] = a8;
  v29 = (a9 + v21[10]);
  *v29 = a10;
  v29[1] = a11;
  result = sub_22821B5DC(a12, a9 + v21[11], type metadata accessor for TileItem.Background);
  v31 = (a9 + v21[12]);
  *v31 = a13;
  v31[1] = a14;
  v32 = (a9 + v21[13]);
  *v32 = a15;
  v32[1] = a16;
  return result;
}

uint64_t TileItem.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22838F4A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TileItem.reuseIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for TileItem(0) + 20));

  return v1;
}

uint64_t TileItem.uniqueIdentifier.getter(uint64_t a1)
{
  v1 = sub_22838F450();
  MEMORY[0x22AAB5C80](v1);

  return 0x6D657449656C6954;
}

uint64_t TileItem.hash(into:)(uint64_t a1)
{
  type metadata accessor for TileItem(0);

  return sub_2283920B0();
}

uint64_t static TileItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for TileItem(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_228393460();
}

uint64_t TileItem.hashValue.getter()
{
  sub_228393520();
  type metadata accessor for TileItem(0);
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_228217360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  if (*(a1 + v3) == *(a2 + v3) && *(a1 + v3 + 8) == *(a2 + v3 + 8))
  {
    return 1;
  }

  else
  {
    return sub_228393460();
  }
}

uint64_t sub_228217394(uint64_t a1)
{
  v1 = sub_22838F450();
  MEMORY[0x22AAB5C80](v1);

  return 0x6D657449656C6954;
}

uint64_t sub_2282173F0(uint64_t a1)
{
  v2 = sub_228218624(&unk_27D8255A0, 255, type metadata accessor for TileItem, &protocol conformance descriptor for TileItem);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_228217470(uint64_t a1, uint64_t *a2)
{
  sub_22821B644(a1, v6, sub_228181D50);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_228217508();
  return sub_22821B6AC(v6, sub_228181D50);
}

uint64_t sub_228217508()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_228218898(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v77 = &v75 - v8;
  v78 = sub_2283913A0();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for TileItem.Background(0);
  MEMORY[0x28223BE20](v79);
  v11 = (&v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228218898(0, &unk_27D8255B0, type metadata accessor for TileItem, v6);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v75 - v13;
  v15 = type metadata accessor for TileItem(0);
  v16 = *(v15 - 1);
  MEMORY[0x28223BE20](v15);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell_item;
  swift_beginAccess();
  sub_22821B644(&v1[v19], v82, sub_228181D50);
  if (v82[3])
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v20 = swift_dynamicCast();
    (*(v16 + 56))(v14, v20 ^ 1u, 1, v15);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      v21 = sub_22821B5DC(v14, v18, type metadata accessor for TileItem);
      if (*&v18[v15[10] + 8])
      {
        v22 = [objc_opt_self() configurationWithPointSize:5 weight:34.0];
        v23 = sub_228391FC0();
        v24 = [objc_opt_self() systemImageNamed:v23 withConfiguration:v22];

        v26 = sub_228217FF4(v25);
        v27 = *&v26[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_iconImageView];

        [v27 setImage_];
      }

      else
      {
        v36 = sub_228217FF4(v21);
        v27 = *&v36[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_iconImageView];

        [v27 setImage_];
      }

      sub_22821B644(&v18[v15[11]], v11, type metadata accessor for TileItem.Background);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v38 = v75;
        v37 = v76;
        v39 = v78;
        (*(v76 + 32))(v75, v11, v78);
        v40 = v77;
        (*(v37 + 16))(v77, v38, v39);
        (*(v37 + 56))(v40, 0, 1, v39);
        MEMORY[0x22AAB6420](v40);
        v41 = (*(v37 + 8))(v38, v39);
      }

      else
      {
        v42 = *v11;
        v43 = [v1 contentView];
        [v43 setBackgroundColor_];
      }

      v44 = sub_228217FF4(v41);
      v45 = sub_228218CEC();

      v46 = sub_228391FC0();
      [v45 setText_];

      v47 = OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell____lazy_storage___tileTipView;
      v48 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell____lazy_storage___tileTipView];
      v49 = sub_228218EFC();

      v50 = sub_228391FC0();
      [v49 setText_];

      v51 = *&v1[v47];
      v52 = sub_228218F88();

      if (*&v18[v15[8] + 8])
      {
        v53 = sub_228391FC0();
      }

      else
      {
        v53 = 0;
      }

      [v52 setText_];

      v54 = *&v1[v47];
      v55 = sub_228219714();

      v56 = sub_228391FC0();
      [v55 setTitle:v56 forState:0];

      v57 = *&v1[v47];
      v58 = &v18[v15[12]];
      v59 = *v58;
      v60 = *(v58 + 1);
      v61 = &v57[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_onTap];
      *v61 = v59;
      *(v61 + 1) = v60;
      v62 = v57;

      v63 = *&v1[v47];
      v64 = &v18[v15[13]];
      v65 = *v64;
      v66 = v64[1];
      v67 = &v63[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_onDismiss];
      v68 = *&v63[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_onDismiss];
      v69 = *&v63[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_onDismiss + 8];
      *v67 = v65;
      v67[1] = v66;
      v70 = v63;
      sub_228176FA8(v65, v66);
      sub_228176EC8(v68, v69);
      sub_22821B020();

      v71 = *&v1[v47];
      v72 = [v71 traitCollection];
      v73 = [v72 preferredContentSizeCategory];
      LOBYTE(v68) = sub_2283928C0();

      sub_228219F34(v68 & 1);
      [v71 invalidateIntrinsicContentSize];
      v74 = type metadata accessor for TileTipView();
      v81.receiver = v71;
      v81.super_class = v74;
      objc_msgSendSuper2(&v81, sel_layoutSubviews);

      return sub_22821B6AC(v18, type metadata accessor for TileItem);
    }
  }

  else
  {
    sub_22821B6AC(v82, sub_228181D50);
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  sub_22821B550(v14);
  sub_228391150();
  v28 = sub_2283911A0();
  v29 = sub_2283925C0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v82[0] = v31;
    *v30 = 136315138;
    v32 = sub_228393600();
    v34 = sub_2281C96FC(v32, v33, v82);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_22816B000, v28, v29, "[%s] Incorrect view model for TileItemCell", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AAB7B80](v31, -1, -1);
    MEMORY[0x22AAB7B80](v30, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_228217E70@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell_item;
  swift_beginAccess();
  return sub_22821B644(v1 + v3, a1, sub_228181D50);
}

uint64_t sub_228217EDC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228217508();
  return sub_22821B6AC(a1, sub_228181D50);
}

uint64_t (*sub_228217F5C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228217FC0;
}

uint64_t sub_228217FC0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_228217508();
  }

  return result;
}

char *sub_228217FF4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell____lazy_storage___tileTipView;
  v3 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell____lazy_storage___tileTipView);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell____lazy_storage___tileTipView);
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell_didTapView);
    v6 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell_didTapView + 8);
    v7 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell_didTapDismiss);
    v8 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell_didTapDismiss + 8);
    objc_allocWithZone(type metadata accessor for TileTipView());

    sub_228176FA8(v7, v8);
    v9 = v6;
    v10 = v1;
    v11 = sub_228219A84(v5, v9, v7, v8);
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    v12 = *(v1 + v2);
    *(v10 + v2) = v11;
    v4 = v11;

    v3 = 0;
  }

  v13 = v3;
  return v4;
}

id sub_2282180D0(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell_didTapDismiss];
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell____lazy_storage___tileTipView] = 0;
  v11 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell_didTapView];
  *v11 = nullsub_1;
  v11[1] = 0;
  v12 = type metadata accessor for TileItemCell();
  *v10 = 0;
  *(v10 + 1) = 0;
  v17.receiver = v4;
  v17.super_class = v12;
  v13 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  sub_22838F7B0();
  sub_228392B00();
  v14 = [v13 contentView];
  v15 = sub_228217FF4(v14);
  [v14 addSubview_];

  sub_2282182BC();
  return v13;
}

void sub_2282182BC()
{
  v1 = objc_opt_self();
  sub_22821B3F8(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228397F00;
  v3 = sub_228217FF4(v2);
  v4 = [v3 topAnchor];

  v5 = [v0 contentView];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor_];
  *(v2 + 32) = v7;
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell____lazy_storage___tileTipView;
  v9 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell____lazy_storage___tileTipView] bottomAnchor];
  v10 = [v0 contentView];
  v11 = [v10 bottomAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v2 + 40) = v12;
  v13 = [*&v0[v8] leadingAnchor];
  v14 = [v0 contentView];
  v15 = [v14 layoutMarginsGuide];

  v16 = [v15 leadingAnchor];
  v17 = [v13 constraintEqualToAnchor_];

  *(v2 + 48) = v17;
  v18 = [*&v0[v8] trailingAnchor];
  v19 = [v0 contentView];
  v20 = [v19 trailingAnchor];

  v21 = [v18 constraintEqualToAnchor_];
  *(v2 + 56) = v21;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v22 = sub_228392190();

  [v1 activateConstraints_];
}

uint64_t sub_228218624(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_228218768(uint64_t a1)
{
  sub_22838F4A0();
  if (v1 <= 0x3F)
  {
    sub_22821B3F8(319, &qword_27D825070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for TileItem.Background(319);
      if (v3 <= 0x3F)
      {
        sub_2281C35D8();
        if (v4 <= 0x3F)
        {
          sub_228218898(319, &unk_27D826FC0, sub_2281C35D8, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_228218898(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2282188FC(uint64_t a1)
{
  result = sub_22817A958(319, &qword_280DDB990, 0x277D75348);
  if (v2 <= 0x3F)
  {
    result = sub_2283913A0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_228218A34(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_currentConstraints];
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_currentConstraints] = a1;

  v4 = sub_228210990(v3, v2);

  if (v4)
  {
  }

  else
  {
    v6 = objc_opt_self();
    sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
    v7 = sub_228392190();

    [v6 deactivateConstraints_];

    v8 = sub_228392190();

    [v6 activateConstraints_];

    return [v1 setNeedsLayout];
  }
}

id sub_228218B68()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setContentMode_];
  v1 = [objc_opt_self() systemGrayColor];
  [v0 setTintColor_];

  v5 = sub_228392000();
  v6 = v2;

  MEMORY[0x22AAB5C80](0x706954656C69542ELL, 0xEC00000077656956);

  MEMORY[0x22AAB5C80](0x616D496E6F63492ELL, 0xEE00776569566567);

  v3 = sub_228391FC0();

  [v0 setAccessibilityIdentifier_];

  return v0;
}

id sub_228218D0C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v8 = sub_228392000();
  v9 = v1;
  v2 = v0;

  MEMORY[0x22AAB5C80](0x706954656C69542ELL, 0xEC00000077656956);

  MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

  v3 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setNumberOfLines_];
  v4 = [objc_opt_self() _preferredFontForTextStyle_variant_];
  [v2 setFont_];

  [v2 setAdjustsFontForContentSizeCategory_];
  v5 = [objc_opt_self() labelColor];
  [v2 setTextColor_];

  LODWORD(v6) = 1132068864;
  [v2 setContentHuggingPriority:0 forAxis:v6];
  return v2;
}

id sub_228218F24(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = sub_228218FB4(a2, a3);
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

id sub_228218FB4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v12 = sub_228392000();
  v13 = v5;
  v6 = v4;

  MEMORY[0x22AAB5C80](0x706954656C69542ELL, 0xEC00000077656956);

  MEMORY[0x22AAB5C80](a1, a2);

  v7 = sub_228391FC0();

  [v6 setAccessibilityIdentifier_];

  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setNumberOfLines_];
  v8 = [objc_opt_self() preferredFontForTextStyle_];
  [v6 setFont_];

  [v6 setAdjustsFontForContentSizeCategory_];
  v9 = [objc_opt_self() secondaryLabelColor];
  [v6 setTextColor_];

  LODWORD(v10) = 1132068864;
  [v6 setContentHuggingPriority:0 forAxis:v10];
  return v6;
}

id sub_2282191BC(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_22821921C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_opt_self() opaqueSeparatorColor];
  [v0 setBackgroundColor_];

  v5 = sub_228392000();
  v6 = v2;

  MEMORY[0x22AAB5C80](0x706954656C69542ELL, 0xEC00000077656956);

  MEMORY[0x22AAB5C80](0x746172617065532ELL, 0xEE0077656956726FLL);

  v3 = sub_228391FC0();

  [v0 setAccessibilityIdentifier_];

  return v0;
}

id sub_228219390(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 addTarget:a1 action:sel_didTapDismiss forControlEvents:64];
  v6 = sub_228392000();
  v7 = v3;

  MEMORY[0x22AAB5C80](0x706954656C69542ELL, 0xEC00000077656956);

  MEMORY[0x22AAB5C80](0x7373696D7369442ELL, 0xEE006E6F74747542);

  v4 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];

  return v2;
}

id sub_2282194E8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___dismissImageView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___dismissImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___dismissImageView);
  }

  else
  {
    v4 = v0;
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v5 = sub_228392AD0();
    v6 = [objc_opt_self() configurationWithFont_];

    v7 = v6;
    v8 = sub_228391FC0();
    v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

    v10 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    [v10 setPreferredSymbolConfiguration_];
    [v10 setContentMode_];

    if (v9)
    {
      v11 = objc_opt_self();
      v12 = v9;
      v13 = [v11 quaternaryLabelColor];
      v14 = [v12 imageWithTintColor:v13 renderingMode:1];
    }

    else
    {
      v14 = 0;
    }

    [v10 setImage_];

    v15 = *(v4 + v1);
    *(v4 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

id sub_228219734(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_228219798(uint64_t a1)
{
  v2 = [objc_opt_self() buttonWithType_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = sub_228392000();
  v20 = v3;

  MEMORY[0x22AAB5C80](0x706954656C69542ELL, 0xEC00000077656956);

  MEMORY[0x22AAB5C80](0x426E6F697463412ELL, 0xED00006E6F747475);

  v4 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];

  v5 = v2;
  [v5 addTarget:a1 action:sel_didTapView forControlEvents:64];
  v6 = [v5 titleLabel];
  if (v6)
  {
    v7 = v6;
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v8 = sub_228392AD0();
    [v7 setFont_];
  }

  v9 = [v5 titleLabel];
  if (v9)
  {
    v10 = v9;
    [v9 setAdjustsFontForContentSizeCategory_];
  }

  v11 = [v5 titleLabel];
  if (v11)
  {
    v12 = v11;
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  v13 = [v5 titleLabel];
  if (v13)
  {
    v14 = v13;
    [v13 setNumberOfLines_];
  }

  v15 = [v5 titleLabel];
  if (v15)
  {
    v16 = v15;
    v17 = [objc_opt_self() systemBlueColor];
    [v16 setTextColor_];
  }

  [v5 setContentHorizontalAlignment_];

  return v5;
}

char *sub_228219A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_onDismiss];
  *v9 = 0;
  v9[1] = 0;
  v4[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_isUsingVerticalLayout] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_currentConstraints] = MEMORY[0x277D84F90];
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_iconImageView;
  *&v4[v10] = sub_228218B68();
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___detailLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___subdetailLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___separatorView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___dismissButton] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___dismissImageView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___actionButton] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_detailLabelBottomConstraint] = 0;
  v11 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_onTap];
  *v11 = a1;
  v11[1] = a2;
  v12 = *v9;
  v13 = v9[1];
  *v9 = a3;
  v9[1] = a4;

  sub_228176FA8(a3, a4);
  sub_228176EC8(v12, v13);
  v29.receiver = v4;
  v29.super_class = type metadata accessor for TileTipView();
  v14 = objc_msgSendSuper2(&v29, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_22838F7B0();
  sub_228392B00();
  [v14 addSubview_];
  v15 = sub_2282194E8();
  [v14 addSubview_];

  v16 = sub_228219370();
  [v14 addSubview_];

  v17 = sub_228218CEC();
  [v14 addSubview_];

  v18 = sub_228218EFC();
  [v14 addSubview_];

  v19 = sub_228218F88();
  [v14 addSubview_];

  v20 = sub_22821919C();
  [v14 addSubview_];

  v21 = sub_228219714();
  [v14 addSubview_];

  v22 = [v14 traitCollection];
  v23 = [v22 preferredContentSizeCategory];
  v24 = sub_2283928C0();

  sub_228219F34(v24 & 1);
  sub_228218898(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_228397F40;
  v26 = sub_228391640();
  v27 = MEMORY[0x277D74DB8];
  *(v25 + 32) = v26;
  *(v25 + 40) = v27;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_2281D5250();
  sub_228392B50();
  swift_unknownObjectRelease();

  sub_228176EC8(a3, a4);

  return v14;
}

void sub_228219E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = type metadata accessor for TileTipView();
    if ((sub_228392820() & 1) == 0)
    {
      v6 = [v4 traitCollection];
      v7 = [v6 preferredContentSizeCategory];
      v8 = sub_2283928C0() & 1;

      if (v8 != v4[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_isUsingVerticalLayout])
      {
        sub_228219F34(v8);
        [v4 invalidateIntrinsicContentSize];
        v9.receiver = v4;
        v9.super_class = v5;
        objc_msgSendSuper2(&v9, sel_layoutSubviews);
      }
    }
  }
}

void sub_228219F34(int a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v158 - v9;
  v11 = sub_2282194E8();
  v12 = [v11 image];

  if (v12)
  {
    [v12 size];
    v14 = v13;
    v16 = v15;
    v17 = sub_228219714();
    v18 = [v17 titleLabel];

    if (v18)
    {
      v166 = a1;
      v165 = v12;
      sub_22821B020();
      [v2 setLayoutMargins_];
      v167 = [v2 layoutMarginsGuide];
      sub_22821B3F8(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v164 = v19;
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_22839C860;
      v21 = sub_228219370();
      v22 = [v21 topAnchor];
      v161 = v18;
      v23 = v22;

      v24 = [v2 topAnchor];
      v25 = [v23 constraintEqualToAnchor_];

      *(v20 + 32) = v25;
      v26 = OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___dismissButton;
      v27 = [*&v2[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___dismissButton] trailingAnchor];
      v28 = [v2 trailingAnchor];
      v29 = [v27 constraintEqualToAnchor_];

      *(v20 + 40) = v29;
      v30 = [*&v2[v26] widthAnchor];
      v31 = [v30 constraintEqualToConstant_];

      *(v20 + 48) = v31;
      v32 = [*&v2[v26] heightAnchor];
      v33 = [v32 &selRef:v16 + 22.0 setDateTimeStyle:? + 1];

      *(v20 + 56) = v33;
      v34 = OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___dismissImageView;
      v35 = [*&v2[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___dismissImageView] topAnchor];
      v36 = [v2 topAnchor];
      v37 = [v35 constraintEqualToAnchor:v36 constant:11.0];

      *(v20 + 64) = v37;
      v159 = v34;
      v38 = [*&v2[v34] trailingAnchor];
      v39 = [v2 layoutMarginsGuide];
      v40 = [v39 trailingAnchor];

      v41 = [v38 constraintEqualToAnchor_];
      *(v20 + 72) = v41;
      v42 = *&v2[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_iconImageView];
      v43 = [v42 topAnchor];
      v44 = [v2 topAnchor];
      v45 = [v43 constraintEqualToAnchor:v44 constant:11.0];

      *(v20 + 80) = v45;
      v46 = [v42 leadingAnchor];
      v47 = [v2 &selRef_logTimeChanged_ + 1];
      v48 = [v46 constraintEqualToAnchor_];

      *(v20 + 88) = v48;
      v49 = [v42 widthAnchor];
      v50 = [v49 constraintEqualToConstant_];

      *(v20 + 96) = v50;
      v163 = v42;
      v51 = [v42 heightAnchor];
      v52 = [v51 constraintEqualToConstant_];

      *(v20 + 104) = v52;
      v53 = sub_228218EFC();
      v54 = [v53 topAnchor];

      v55 = sub_228218CEC();
      v56 = [v55 bottomAnchor];

      v57 = [v54 constraintEqualToAnchor:v56 constant:4.0];
      *(v20 + 112) = v57;
      v58 = OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___detailLabel;
      v59 = [*&v2[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___detailLabel] &selRef_logTimeChanged_ + 1];
      v60 = OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___titleLabel;
      v61 = [*&v2[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___titleLabel] &selRef_logTimeChanged_ + 1];
      v62 = [v59 constraintEqualToAnchor_];

      *(v20 + 120) = v62;
      v63 = [*&v2[v58] trailingAnchor];
      v64 = [v2 trailingAnchor];
      v65 = [v63 constraintEqualToAnchor_];

      *(v20 + 128) = v65;
      v66 = sub_228218F88();
      v67 = [v66 &selRef_logTimeChanged_ + 1];

      v162 = v60;
      v68 = [*&v2[v60] &selRef_logTimeChanged_ + 1];
      v69 = [v67 constraintEqualToAnchor_];

      *(v20 + 136) = v69;
      v70 = *&v2[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___subdetailLabel];
      v71 = OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___subdetailLabel;
      v160 = OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___subdetailLabel;
      v72 = [v70 trailingAnchor];
      v73 = [v2 trailingAnchor];
      v74 = [v72 constraintEqualToAnchor_];

      *(v20 + 144) = v74;
      v75 = [*&v2[v71] bottomAnchor];
      v76 = sub_22821919C();
      v77 = [v76 topAnchor];

      v78 = [v75 constraintEqualToAnchor:v77 constant:-11.0];
      *(v20 + 152) = v78;
      v79 = OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___separatorView;
      v80 = [*&v2[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___separatorView] heightAnchor];
      HKUIOnePixel();
      v81 = [v80 constraintEqualToConstant_];

      *(v20 + 160) = v81;
      v82 = [*&v2[v79] &selRef_logTimeChanged_ + 1];
      v83 = [*&v2[v58] &selRef_logTimeChanged_ + 1];
      v84 = [v82 &selRef_freeTextMedicationName + 5];

      *(v20 + 168) = v84;
      v85 = [*&v2[v79] trailingAnchor];
      v86 = [v2 trailingAnchor];
      v87 = [v85 &selRef_freeTextMedicationName + 5];

      *(v20 + 176) = v87;
      v88 = [*&v2[v79] bottomAnchor];
      v89 = v161;
      v90 = [v89 topAnchor];
      v91 = [v88 constraintEqualToAnchor:v90 constant:-11.0];

      *(v20 + 184) = v91;
      v92 = OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___actionButton;
      v93 = [*&v2[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___actionButton] &selRef_logTimeChanged_ + 1];
      v94 = [*&v2[v58] &selRef_logTimeChanged_ + 1];
      v95 = [v93 constraintEqualToAnchor_];

      *(v20 + 192) = v95;
      v96 = *&v2[v92];
      v97 = v58;
      v98 = v160;
      v99 = [v96 trailingAnchor];
      v100 = [*&v2[v97] trailingAnchor];
      v101 = [v99 constraintLessThanOrEqualToAnchor_];

      *(v20 + 200) = v101;
      v102 = [v89 bottomAnchor];

      v103 = [v167 bottomAnchor];
      v104 = [v102 constraintEqualToAnchor_];

      *(v20 + 208) = v104;
      v168[0] = v20;
      v105 = [*&v2[v98] text];
      v106 = 0.0;
      if (v105)
      {
        v107 = v105;
        sub_228392000();

        sub_2283920A0();
        v109 = v108;

        if (v109)
        {

          v106 = -11.0;
        }
      }

      v110 = [*&v2[v97] bottomAnchor];
      v111 = [*&v2[v98] topAnchor];
      v112 = [v110 constraintEqualToAnchor:v111 constant:v106];

      v113 = *&v2[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_detailLabelBottomConstraint];
      *&v2[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_detailLabelBottomConstraint] = v112;
      v114 = v112;

      if (v114)
      {
        [v114 setActive_];
      }

      v115 = v166;
      if (v166)
      {
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_228399D40;
        v117 = v162;
        v118 = [*&v2[v162] topAnchor];
        v119 = v163;
        v120 = [v163 bottomAnchor];
        v121 = [v118 constraintEqualToAnchor:v120 constant:4.0];

        *(inited + 32) = v121;
        v122 = [*&v2[v117] leadingAnchor];
        v123 = [v119 leadingAnchor];
        v124 = [v122 constraintEqualToAnchor_];

        *(inited + 40) = v124;
        v125 = [*&v2[v117] trailingAnchor];
        v126 = [v2 trailingAnchor];
        v127 = [v125 constraintEqualToAnchor_];

        *(inited + 48) = v127;
        sub_2281D5A98(inited);
      }

      else
      {
        v142 = v163;
        v143 = [v163 isHidden];
        v161 = v89;
        if (v143)
        {
          v144 = [v2 leadingAnchor];
          v145 = &off_2785F4000;
        }

        else
        {
          v145 = &off_2785F4000;
          v144 = [v142 trailingAnchor];
        }

        v146 = v144;
        if ([v142 isHidden])
        {
          v147 = 0.0;
        }

        else
        {
          v147 = 11.0;
        }

        v148 = swift_initStackObject();
        *(v148 + 16) = xmmword_228399D40;
        v149 = v162;
        v150 = [*&v2[v162] topAnchor];
        v151 = [v2 topAnchor];
        v152 = [v150 constraintEqualToAnchor:v151 constant:11.0];

        *(v148 + 32) = v152;
        v153 = [*&v2[v149] leadingAnchor];
        v154 = [v153 constraintEqualToAnchor:v146 constant:v147];

        *(v148 + 40) = v154;
        v155 = [*&v2[v149] v145[119]];
        v156 = [*&v2[v159] leadingAnchor];
        v157 = [v155 constraintEqualToAnchor:v156 constant:-10.0];

        *(v148 + 48) = v157;
        sub_2281D5A98(v148);

        v89 = v161;
        v115 = v166;
      }

      sub_228218A34(v168[0]);

      v2[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_isUsingVerticalLayout] = v115 & 1;
    }

    else
    {
      sub_228391150();
      v135 = sub_2283911A0();
      v136 = sub_2283925C0();
      if (os_log_type_enabled(v135, v136))
      {
        v137 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v168[0] = v138;
        *v137 = 136315138;
        v139 = sub_228393600();
        v141 = sub_2281C96FC(v139, v140, v168);

        *(v137 + 4) = v141;
        _os_log_impl(&dword_22816B000, v135, v136, "[%s] Action button label is nil.", v137, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v138);
        MEMORY[0x22AAB7B80](v138, -1, -1);
        MEMORY[0x22AAB7B80](v137, -1, -1);
      }

      (*(v5 + 8))(v10, v4);
    }
  }

  else
  {
    sub_228391150();
    v128 = sub_2283911A0();
    v129 = sub_2283925C0();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v168[0] = v131;
      *v130 = 136315138;
      v132 = sub_228393600();
      v134 = sub_2281C96FC(v132, v133, v168);

      *(v130 + 4) = v134;
      _os_log_impl(&dword_22816B000, v128, v129, "[%s] Dismiss button image is nil.", v130, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v131);
      MEMORY[0x22AAB7B80](v131, -1, -1);
      MEMORY[0x22AAB7B80](v130, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

void sub_22821B020()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_iconImageView);
  v2 = [v1 image];
  v3 = v2;
  if (v2)
  {
  }

  [v1 setHidden_];
  v4 = sub_228218F88();
  v5 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___subdetailLabel) text];
  if (v5 && (v6 = v5, sub_228392000(), v6, sub_2283920A0(), v8 = v7, , v8))
  {

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  [v4 setHidden_];

  v10 = sub_228219370();
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_onDismiss;
  [v10 setHidden_];

  v12 = sub_2282194E8();
  [v12 setHidden_];
}

id sub_22821B2A8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_22821B3F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_22821B448()
{
  v1 = (v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_onDismiss);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_isUsingVerticalLayout) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_currentConstraints) = MEMORY[0x277D84F90];
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_iconImageView;
  *(v0 + v2) = sub_228218B68();
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___detailLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___subdetailLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___separatorView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___dismissButton) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___dismissImageView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___actionButton) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_detailLabelBottomConstraint) = 0;
  sub_228393300();
  __break(1u);
}

uint64_t sub_22821B550(uint64_t a1)
{
  sub_228218898(0, &unk_27D8255B0, type metadata accessor for TileItem, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22821B5DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22821B644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22821B6AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22821B70C(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_22821D7F8();
  return sub_2282203EC(v6, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_2281810DC);
}

uint64_t sub_22821B7A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22821B800(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22821D7F8();
  return sub_2282203EC(a1, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_2281810DC);
}

uint64_t (*sub_22821B898(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22821B8FC;
}

uint64_t sub_22821B8FC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_22821D7F8();
  }

  return result;
}

id sub_22821B974()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___primaryLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___primaryLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___primaryLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v6 = sub_228392AD0();
    [v5 setFont_];

    v7 = v5;
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    [v7 setNumberOfLines_];
    v8 = sub_228392000();
    v10 = v9;
    MEMORY[0x22AAB5C80](*(v4 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_cellAXIdentifier), *(v4 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_cellAXIdentifier + 8));
    v16 = v8;

    MEMORY[0x22AAB5C80](46, 0xE100000000000000);

    MEMORY[0x22AAB5C80](0xD000000000000014, 0x80000002283ACDA0);

    v11 = sub_228391FC0();

    [v7 setAccessibilityIdentifier_];

    LODWORD(v12) = 1148846080;
    [v7 setContentCompressionResistancePriority:1 forAxis:v12];
    v13 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

id sub_22821BBD0()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___disclosureIndicator;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___disclosureIndicator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___disclosureIndicator);
  }

  else
  {
    v4 = sub_22821BC30();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_22821BC30()
{
  sub_22827CAD4();
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  v3 = [objc_opt_self() tertiaryLabelColor];
  [v2 setTintColor_];

  [v2 setContentMode_];
  LODWORD(v4) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v4];

  return v2;
}

id sub_22821BD64()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___pillImageView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___pillImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___pillImageView);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(sub_228390BC0()) initWithFrame_];
    sub_228390960();
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];

    v6 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_22821BFEC(uint64_t *a1, double a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    [v7 setAxis_];
    [v7 setAlignment_];
    [v7 setSpacing_];
    v8 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

id sub_22821C144()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___itemsStackView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___itemsStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___itemsStackView);
  }

  else
  {
    v4 = sub_22821C1F0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_22821C1F0()
{
  sub_228180ED0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228399D40;
  *(v0 + 32) = sub_22821BEA4();
  *(v0 + 40) = sub_22821BF40();
  *(v0 + 48) = sub_22821BFDC();
  v1 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v2 = sub_228392190();

  v3 = [v1 initWithArrangedSubviews_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setAxis_];
  [v3 setAlignment_];
  [v3 setSpacing_];
  return v3;
}

id sub_22821C304()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___minHeightConstraint;
  v2 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___minHeightConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___minHeightConstraint];
  }

  else
  {
    v4 = [v0 heightAnchor];
    v5 = [v4 constraintGreaterThanOrEqualToConstant_];

    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_22821C3AC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = &v5[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_cellAXIdentifier];
  *v10 = 0xD000000000000016;
  *(v10 + 1) = 0x800000022839CAA0;
  v11 = &v5[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_item];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___primaryLabel] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___disclosureIndicator] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___pillImageView] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___medicationDetailStackView] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___scheduleStackView] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___metaScheduleStackView] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___itemsStackView] = 0;
  sub_228391150();
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_activeConstraints] = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___minHeightConstraint] = 0;
  v30.receiver = v5;
  v30.super_class = type metadata accessor for MedicationListItemCell(0);
  v12 = objc_msgSendSuper2(&v30, sel_initWithFrame_, a2, a3, a4, a5);
  sub_228180ED0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228397F00;
  v14 = v12;
  *(inited + 32) = sub_22821B974();
  *(inited + 40) = sub_22821C144();
  *(inited + 48) = sub_22821BD64();
  *(inited + 56) = sub_22821BBD0();
  v15 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x22AAB6D80](0, inited))
  {
    v17 = i;
    [v14 addSubview_];

    if (v15)
    {
      v18 = MEMORY[0x22AAB6D80](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_14;
      }

      v18 = *(inited + 40);
    }

    v19 = v18;
    [v14 addSubview_];

    if (v15)
    {
      v20 = MEMORY[0x22AAB6D80](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_14;
      }

      v20 = *(inited + 48);
    }

    v21 = v20;
    [v14 addSubview_];

    if (v15)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v22 = *(inited + 56);
      goto LABEL_13;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v22 = MEMORY[0x22AAB6D80](3, inited);
LABEL_13:
  v23 = v22;
  [v14 addSubview_];

  swift_setDeallocating();
  swift_arrayDestroy();
  sub_22821CC40();
  sub_22821E71C(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_228397F30;
  v25 = sub_228391640();
  v26 = MEMORY[0x277D74DB8];
  *(v24 + 32) = v25;
  *(v24 + 40) = v26;
  v27 = sub_228391E20();
  v28 = sub_2282204DC(&qword_27D825618, MEMORY[0x277D126D0], MEMORY[0x277D126C8]);
  *(v24 + 48) = v27;
  *(v24 + 56) = v28;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2281D5250();
  sub_228392B50();

  swift_unknownObjectRelease();

  return v14;
}

id sub_22821C7BC(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_cellAXIdentifier];
  *v3 = 0xD000000000000016;
  *(v3 + 1) = 0x800000022839CAA0;
  v4 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_item];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___primaryLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___disclosureIndicator] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___pillImageView] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___medicationDetailStackView] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___scheduleStackView] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___metaScheduleStackView] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___itemsStackView] = 0;
  sub_228391150();
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_activeConstraints] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___minHeightConstraint] = 0;
  v23.receiver = v1;
  v23.super_class = type metadata accessor for MedicationListItemCell(0);
  v5 = objc_msgSendSuper2(&v23, sel_initWithCoder_, a1);
  if (!v5)
  {

    return v5;
  }

  sub_228180ED0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228397F00;
  v7 = v5;
  *(inited + 32) = sub_22821B974();
  *(inited + 40) = sub_22821C144();
  *(inited + 48) = sub_22821BD64();
  *(inited + 56) = sub_22821BBD0();
  v8 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_18;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x22AAB6D80](0, inited))
  {
    v10 = i;
    [v7 addSubview_];

    if (v8)
    {
      v11 = MEMORY[0x22AAB6D80](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_17;
      }

      v11 = *(inited + 40);
    }

    v12 = v11;
    [v7 addSubview_];

    if (v8)
    {
      v13 = MEMORY[0x22AAB6D80](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_17;
      }

      v13 = *(inited + 48);
    }

    v14 = v13;
    [v7 addSubview_];

    if (v8)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v15 = *(inited + 56);
      goto LABEL_14;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v15 = MEMORY[0x22AAB6D80](3, inited);
LABEL_14:
  v16 = v15;
  [v7 addSubview_];

  swift_setDeallocating();
  swift_arrayDestroy();
  sub_22821CC40();
  sub_22821E71C(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_228397F30;
  v18 = sub_228391640();
  v19 = MEMORY[0x277D74DB8];
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  v20 = sub_228391E20();
  v21 = sub_2282204DC(&qword_27D825618, MEMORY[0x277D126D0], MEMORY[0x277D126C8]);
  *(v17 + 48) = v20;
  *(v17 + 56) = v21;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2281D5250();
  sub_228392B50();

  swift_unknownObjectRelease();

  return v5;
}

void sub_22821CBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_22821D7F8();
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    sub_22821CC40();
  }
}

void sub_22821CC40()
{
  v1 = v0;
  v2 = objc_opt_self();
  v70 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_activeConstraints;
  sub_228180ED0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228396260;

  *(inited + 32) = sub_22821C304();
  sub_2281D5A98(inited);
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v4 = sub_228392190();

  v71 = v2;
  [v2 deactivateConstraints_];

  LOBYTE(inited) = sub_228392B40();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22839CA00;
  v6 = sub_22821BD64();
  v7 = [v6 topAnchor];

  v8 = [v1 topAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v5 + 32) = v9;
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___pillImageView;
  v11 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___pillImageView] leadingAnchor];
  v12 = [v1 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v5 + 40) = v13;
  v14 = *&v1[v10];
  if (inited)
  {
    v15 = [v14 heightAnchor];
    v16 = [v15 constraintEqualToConstant_];

    *(v5 + 48) = v16;
    v17 = [*&v1[v10] trailingAnchor];
    v18 = [v1 trailingAnchor];
    v19 = [v17 constraintEqualToAnchor_];

    *(v5 + 56) = v19;
    v20 = sub_22821B974();
    v21 = [v20 leadingAnchor];

    v22 = [v1 leadingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:16.0];

    *(v5 + 64) = v23;
    v24 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___primaryLabel];
    v25 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___primaryLabel] topAnchor];
    v69 = &selRef_bottomAnchor;
    v26 = [*&v1[v10] bottomAnchor];
    v27 = -34.0;
    v28 = -0.0;
  }

  else
  {
    v29 = [v14 widthAnchor];
    v30 = [v29 constraintEqualToConstant_];

    *(v5 + 48) = v30;
    v31 = [*&v1[v10] bottomAnchor];
    v32 = [v1 bottomAnchor];
    v33 = [v31 constraintEqualToAnchor_];

    *(v5 + 56) = v33;
    v34 = sub_22821B974();
    v35 = [v34 leadingAnchor];

    v36 = [*&v1[v10] trailingAnchor];
    v37 = [v35 constraintEqualToAnchor:v36 constant:16.0];

    *(v5 + 64) = v37;
    v24 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___primaryLabel];
    v25 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___primaryLabel] topAnchor];
    v26 = [v1 topAnchor];
    v69 = &selRef_lastBaselineAnchor;
    v27 = -8.0;
    v28 = 0.0;
  }

  v38 = v26;
  v39 = [v25 constraintEqualToAnchor:v38 constant:16.0];

  *(v5 + 72) = v39;
  v40 = [*v24 trailingAnchor];
  v41 = sub_22821BBD0();
  v42 = [v41 leadingAnchor];

  v43 = [v40 constraintLessThanOrEqualToAnchor:v42 constant:-8.0];
  *(v5 + 80) = v43;
  v44 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___disclosureIndicator;
  v45 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___disclosureIndicator] trailingAnchor];
  v46 = [v1 trailingAnchor];
  v47 = [v45 &selRef_resignFirstResponder + 6];

  *(v5 + 88) = v47;
  v48 = [*&v1[v44] firstBaselineAnchor];
  v49 = [*v24 firstBaselineAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v5 + 96) = v50;
  v51 = sub_22821C144();
  v52 = [v51 topAnchor];

  v53 = [*v24 bottomAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:v28];

  *(v5 + 104) = v54;
  v55 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___itemsStackView;
  v56 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___itemsStackView] leadingAnchor];
  v57 = [*v24 leadingAnchor];
  v58 = [v56 constraintEqualToAnchor_];

  *(v5 + 112) = v58;
  v59 = [*&v1[v55] trailingAnchor];
  v60 = [v1 trailingAnchor];
  v61 = [v59 constraintEqualToAnchor:v60 constant:v27];

  *(v5 + 120) = v61;
  v62 = [*&v1[v55] *v69];
  v63 = [v1 bottomAnchor];
  v64 = [v62 constraintEqualToAnchor:v63 constant:-16.0];

  *(v5 + 128) = v64;
  *&v1[v70] = v5;

  v65 = swift_initStackObject();
  *(v65 + 16) = xmmword_228396260;
  v66 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___minHeightConstraint];
  *(v65 + 32) = v66;

  v67 = v66;
  sub_2281D5A98(v65);
  v68 = sub_228392190();

  [v71 activateConstraints_];
}

uint64_t sub_22821D4A0()
{
  v1 = v0;
  sub_22821E71C(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v19 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = sub_228391330();
  v12 = type metadata accessor for MedicationListItemCell(0);
  v19.receiver = v1;
  v19.super_class = v12;
  objc_msgSendSuper2(&v19, sel__bridgedUpdateConfigurationUsingState_, v11);

  if ([v1 isHighlighted])
  {
    MEMORY[0x22AAB6410]();
    v13 = sub_2283913A0();
    if ((*(*(v13 - 8) + 48))(v10, 1, v13))
    {
      sub_228205274(v10, v8);
      MEMORY[0x22AAB6420](v8);
      v14 = v10;
      return sub_228205308(v14);
    }

    sub_22817A958(0, &qword_280DDB990, 0x277D75348);
    sub_228392BA0();
    sub_228391370();
    v17 = v10;
  }

  else
  {
    MEMORY[0x22AAB6410]();
    v15 = sub_2283913A0();
    if ((*(*(v15 - 8) + 48))(v5, 1, v15))
    {
      sub_228205274(v5, v8);
      MEMORY[0x22AAB6420](v8);
      v14 = v5;
      return sub_228205308(v14);
    }

    v18 = [objc_opt_self() tertiarySystemBackgroundColor];
    sub_228391370();
    v17 = v5;
  }

  return MEMORY[0x22AAB6420](v17);
}

uint64_t sub_22821D7F8()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_22821E71C(0, &qword_27D825628, MEMORY[0x277D12720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v109 = v101 - v8;
  sub_22821E71C(0, &qword_280DDBD20, MEMORY[0x277D116C8], v6);
  MEMORY[0x28223BE20](v9 - 8);
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v10], &v127);
  if (v129)
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    type metadata accessor for MedicationListItem();
    if (swift_dynamicCast())
    {
      v11 = v126[0];
      v117 = *MEMORY[0x277D12788];
      v12 = sub_228392000();
      v14 = v13;
      v127 = 46;
      v128 = 0xE100000000000000;
      v15 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_cellAXIdentifier + 8];
      v116 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_cellAXIdentifier];
      v115 = v15;
      MEMORY[0x22AAB5C80]();
      MEMORY[0x22AAB5C80](46, 0xE100000000000000);
      v126[0] = v11[8];
      v16 = sub_228393420();
      MEMORY[0x22AAB5C80](v16);

      v17 = v127;
      v18 = v128;
      v127 = v12;
      v128 = v14;

      MEMORY[0x22AAB5C80](v17, v18);

      v19 = sub_228391FC0();

      [v1 setAccessibilityIdentifier_];

      sub_22838F7B0();
      sub_228392B00();
      v20 = sub_22821BD64();
      _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
      sub_228390950();

      v21 = sub_22821B974();
      v23 = v11[3];
      v127 = v11[2];
      v22 = v127;
      sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
      v24 = v22;
      v25 = v23;
      sub_228390F20();
      v26 = sub_228391FC0();

      [v21 setText_];
      v27 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___primaryLabel];
      v28 = sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
      v29 = v27;
      v114 = v28;
      v30 = sub_228392AD0();
      [v29 setFont_];

      sub_228180ED0();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_228399D40;
      *(inited + 32) = sub_22821BEA4();
      *(inited + 40) = sub_22821BF40();
      *(inited + 48) = sub_22821BFDC();
      v103 = v1;
      if ((inited & 0xC000000000000001) == 0)
      {
        if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v32 = *(inited + 32);
          sub_228392B10();

          if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) > 1uLL)
          {
            v33 = *(inited + 40);
            sub_228392B10();

            if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
            {
              v34 = *(inited + 48);
LABEL_8:
              v35 = v34;
              sub_228392B10();

              swift_setDeallocating();
              swift_arrayDestroy();
              v101[1] = v11;
              v36 = v11[3];
              v127 = v11[2];
              v128 = v36;
              v102 = MedicationListViewData.items.getter();
              v37 = *(v102 + 2);
              if (v37)
              {
                v107 = &v103[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___metaScheduleStackView];
                v108 = &v103[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___scheduleStackView];
                v113 = &v103[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___medicationDetailStackView];
                v112 = "pregnancy / lactation";
                v111 = *MEMORY[0x277D769D0];
                v38 = (v102 + 48);
                v110 = *MEMORY[0x277D74418];
                v106 = *MEMORY[0x277D740C0];
                v105 = *MEMORY[0x277D740A8];
                v104 = xmmword_228397F30;
                do
                {
                  v124 = v37;
                  v42 = *(v38 - 16);
                  v43 = *(v38 - 1);
                  v125 = *v38;
                  v44 = v38[1];
                  v118 = v38[2];
                  v45 = v38[3];
                  v119 = v38[4];
                  v46 = v38[5];
                  v47 = objc_allocWithZone(MEMORY[0x277D756B8]);

                  v122 = v43;
                  v120 = v44;

                  v123 = v45;

                  v48 = [v47 init];
                  v49 = sub_228392000();
                  v51 = v50;
                  v127 = 0;
                  v128 = 0xE000000000000000;
                  v52 = v48;
                  sub_2283931D0();

                  v127 = 46;
                  v128 = 0xE100000000000000;
                  MEMORY[0x22AAB5C80](v116, v115);
                  MEMORY[0x22AAB5C80](0xD000000000000017, v112 | 0x8000000000000000);
                  v38 += 8;
                  v53 = 0x6874676E65727473;
                  if (v42 != 2)
                  {
                    v53 = 1836216166;
                  }

                  v54 = 0xE400000000000000;
                  if (v42 == 2)
                  {
                    v54 = 0xE800000000000000;
                  }

                  v55 = 0x656C756465686373;
                  if (v42)
                  {
                    v55 = 0x656863536174656DLL;
                  }

                  v56 = 0xEC000000656C7564;
                  if (!v42)
                  {
                    v56 = 0xE800000000000000;
                  }

                  v121 = v42;
                  if (v42 > 1)
                  {
                    v57 = v54;
                  }

                  else
                  {
                    v53 = v55;
                    v57 = v56;
                  }

                  v126[0] = v53;
                  v126[1] = v57;
                  sub_22819DFF4();
                  v58 = sub_228392F50();
                  v60 = v59;

                  MEMORY[0x22AAB5C80](v58, v60);

                  v61 = v127;
                  v62 = v128;
                  v127 = v49;
                  v128 = v51;

                  MEMORY[0x22AAB5C80](v61, v62);

                  v63 = sub_228391FC0();

                  [v52 setAccessibilityIdentifier_];

                  if (!v46)
                  {
                  }

                  v64 = v52;

                  v65 = sub_228391FC0();

                  [v64 setAccessibilityLabel_];

                  [v64 setTranslatesAutoresizingMaskIntoConstraints_];
                  [v64 setNumberOfLines_];
                  LODWORD(v66) = 1144750080;
                  [v64 setContentCompressionResistancePriority:1 forAxis:v66];
                  v67 = v122;
                  if (v123)
                  {
                    sub_22817A958(0, &unk_280DDBAA0, 0x277CCA898);
                    v68 = sub_228392800();
                    (*(*(v68 - 8) + 56))(v109, 1, 1, v68);
                    v69 = v67;

                    v70 = v69;

                    sub_228392AD0();
                    v71 = sub_2283927E0();
                  }

                  else
                  {
                    sub_22821E71C(0, &qword_280DDB880, sub_2281D50E8, MEMORY[0x277D84560]);
                    v72 = swift_initStackObject();
                    *(v72 + 16) = v104;
                    v73 = v106;
                    *(v72 + 32) = v106;
                    v74 = sub_22817A958(0, &qword_280DDB990, 0x277D75348);
                    *(v72 + 40) = v67;
                    v75 = v105;
                    *(v72 + 64) = v74;
                    *(v72 + 72) = v75;
                    v76 = v67;
                    v77 = v73;
                    v78 = v75;
                    v79 = v114;
                    v80 = sub_228392AD0();
                    *(v72 + 104) = v79;
                    *(v72 + 80) = v80;
                    sub_2281A859C(v72);
                    swift_setDeallocating();
                    sub_2281D50E8(0);
                    swift_arrayDestroy();
                    v81 = objc_allocWithZone(MEMORY[0x277CCA898]);
                    v82 = sub_228391FC0();
                    type metadata accessor for Key(0);
                    sub_2282204DC(&qword_280DDBA40, type metadata accessor for Key, &unk_22839759C);
                    v83 = sub_228391F10();

                    v71 = [v81 initWithString:v82 attributes:v83];
                  }

                  [v64 setAttributedText_];

                  v84 = v121;
                  v85 = sub_228304638(v121);
                  v40 = v113;
                  if ((v85 & 1) == 0)
                  {
                    if (v84)
                    {
                      v39 = sub_228393460();

                      v40 = v107;
                      if (v39)
                      {
                        v40 = v108;
                      }
                    }

                    else
                    {

                      v40 = v108;
                    }
                  }

                  v41 = *v40;
                  [v41 addArrangedSubview_];

                  v37 = v124 - 1;
                }

                while (v124 != 1);
              }

              v95 = *&v103[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___metaScheduleStackView];
              v96 = objc_allocWithZone(MEMORY[0x277D75D18]);
              v97 = v95;
              v98 = [v96 init];
              [v97 addArrangedSubview_];

              sub_2283928F0();
            }
          }
        }

        __break(1u);
      }

      v99 = MEMORY[0x22AAB6D80](0, inited);
      sub_228392B10();

      v100 = MEMORY[0x22AAB6D80](1, inited);
      sub_228392B10();

      v34 = MEMORY[0x22AAB6D80](2, inited);
      goto LABEL_8;
    }
  }

  else
  {
    sub_2282203EC(&v127, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_2281810DC);
  }

  sub_228391150();
  v86 = v1;
  v87 = sub_2283911A0();
  v88 = sub_2283925C0();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v126[0] = v90;
    *v89 = 136446210;
    sub_22817E6C8(&v1[v10], &v127);
    sub_228220448(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_2281810DC);
    v91 = sub_228392040();
    v93 = sub_2281C96FC(v91, v92, v126);

    *(v89 + 4) = v93;
    _os_log_impl(&dword_22816B000, v87, v88, "Incorrect view model for MedicationListItemCell: %{public}s", v89, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v90);
    MEMORY[0x22AAB7B80](v90, -1, -1);
    MEMORY[0x22AAB7B80](v89, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_22821E71C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for MedicationListItemCell(uint64_t a1)
{
  result = qword_280DDC4A8;
  if (!qword_280DDC4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id MedicationListItemCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationListItemCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22821E950()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_item;
  swift_beginAccess();
  sub_22817E6C8(v0 + v1, v6);
  if (v7)
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    type metadata accessor for MedicationListItem();
    if (swift_dynamicCast())
    {
      swift_beginAccess();

      sub_22817E6C8(v0 + v1, v6);
      if (v7)
      {
        if (swift_dynamicCast())
        {
          v2 = *(v5 + 16);

          v3 = sub_2283906B0();

          return (v3 & 1) == 0;
        }
      }

      else
      {
        sub_2282203EC(v6, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_2281810DC);
      }
    }
  }

  else
  {
    sub_2282203EC(v6, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_2281810DC);
  }

  result = sub_228393300();
  __break(1u);
  return result;
}

void sub_22821EB5C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_2283906E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_item;
  swift_beginAccess();
  sub_22817E6C8(v1 + v7, aBlock);
  if (!v28)
  {
    goto LABEL_21;
  }

  v25 = ObjectType;
  sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
  type metadata accessor for MedicationListItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  swift_beginAccess();

  sub_22817E6C8(v1 + v7, aBlock);
  if (!v28)
  {
    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v26 = v6;
  v8 = *(v33 + 16);

  v9 = sub_2283906B0();

  sub_22817E6C8(v1 + v7, aBlock);
  if (!v28)
  {
LABEL_21:
    sub_2282203EC(aBlock, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_2281810DC);
    goto LABEL_22;
  }

  v10 = v4;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v11 = v9;
  swift_beginAccess();

  sub_22817E6C8(v1 + v7, aBlock);
  if (!v28)
  {
    goto LABEL_19;
  }

  v12 = v3;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v13 = *(v32 + 16);

  v14 = v26;
  ListConceptManager.toggleMedicationPinState(for:onCommitHandler:)(v13, 0, 0);

  (*(v10 + 8))(v14, v12);
  if ((v11 & 1) == 0)
  {
    return;
  }

  sub_22817E6C8(v1 + v7, aBlock);
  if (!v28)
  {
    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v15 = *(v32 + 16);

  v16 = [v15 firstOntologyCoding];

  if (!v16)
  {
    return;
  }

  sub_22817E6C8(v1 + v7, aBlock);
  if (!v28)
  {
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    while (1)
    {
LABEL_22:
      sub_228393300();
      __break(1u);
LABEL_23:
      sub_2282203EC(aBlock, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_2281810DC);
    }
  }

  v17 = v32;
  swift_beginAccess();
  v18 = *(v17 + 32);

  v19 = [objc_allocWithZone(MEMORY[0x277D11530]) initWithHealthStore_];

  sub_22817E6C8(v1 + v7, aBlock);
  if (!v28)
  {
LABEL_19:
    sub_2282203EC(aBlock, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_2281810DC);
    goto LABEL_22;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v20 = *(v31 + 16);

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  v23 = v25;
  *(v22 + 16) = v21;
  *(v22 + 24) = v23;
  v29 = sub_2282203E4;
  v30 = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2283282E4;
  v28 = &block_descriptor_39;
  v24 = _Block_copy(aBlock);

  [v19 deleteDismissedPregnancyLactationInteractionsForMedication:v20 interactionTypes:0 completion:v24];
  _Block_release(v24);
}

void *sub_22821F158(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2283911B0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v49 - v10;
  if (a2)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v13 = result;
      (*(v6 + 16))(v9, result + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_logger, v5);

      v14 = a2;
      v15 = sub_2283911A0();
      v16 = sub_2283925C0();

      if (!os_log_type_enabled(v15, v16))
      {

LABEL_17:
        return (*(v6 + 8))(v9, v5);
      }

      v17 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v55 = v50;
      *v17 = 136446978;
      v18 = sub_228393600();
      v20 = sub_2281C96FC(v18, v19, &v55);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      v52 = 0xD000000000000015;
      v53 = 0x80000002283ACED0;
      v21 = sub_228392070();
      v23 = sub_2281C96FC(v21, v22, &v55);

      *(v17 + 14) = v23;
      *(v17 + 22) = 2112;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {

        goto LABEL_16;
      }

      v25 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_item;
      swift_beginAccess();
      sub_22817E6C8(Strong + v25, &v52);
      if (v54)
      {
        sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
        type metadata accessor for MedicationListItem();
        if (swift_dynamicCast())
        {

          v26 = *(v51 + 16);

          Strong = [v26 semanticIdentifier];

LABEL_16:
          *(v17 + 24) = Strong;
          v42 = v49;
          *v49 = Strong;
          *(v17 + 32) = 2080;
          v52 = a2;
          v43 = a2;
          sub_228220448(0, &qword_27D823B00, &qword_280DDB860, MEMORY[0x277D84948], sub_2281810DC);
          v44 = sub_228392020();
          v46 = sub_2281C96FC(v44, v45, &v55);

          *(v17 + 34) = v46;
          _os_log_impl(&dword_22816B000, v15, v16, "%{public}s] Unexpected error deleting dismissed %s interactions for medication: %@, error: %s", v17, 0x2Au);
          sub_2282203EC(v42, &qword_27D823DA0, &qword_27D825620, 0x277D82BB8, sub_22817A958);
          MEMORY[0x22AAB7B80](v42, -1, -1);
          v47 = v50;
          swift_arrayDestroy();
          MEMORY[0x22AAB7B80](v47, -1, -1);
          MEMORY[0x22AAB7B80](v17, -1, -1);
          goto LABEL_17;
        }

        goto LABEL_25;
      }

      goto LABEL_23;
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v27 = result;
      (*(v6 + 16))(v11, result + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_logger, v5);

      v28 = sub_2283911A0();
      v29 = sub_2283925E0();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v55 = v50;
        *v30 = 136446722;
        v32 = sub_228393600();
        v34 = sub_2281C96FC(v32, v33, &v55);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2080;
        v52 = 0xD000000000000015;
        v53 = 0x80000002283ACED0;
        v35 = sub_228392070();
        v37 = sub_2281C96FC(v35, v36, &v55);

        *(v30 + 14) = v37;
        *(v30 + 22) = 2112;
        swift_beginAccess();
        v38 = swift_unknownObjectWeakLoadStrong();
        if (v38)
        {
          v39 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_item;
          swift_beginAccess();
          sub_22817E6C8(v38 + v39, &v52);
          if (!v54)
          {
LABEL_23:
            sub_2282203EC(&v52, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_2281810DC);
            goto LABEL_25;
          }

          sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
          type metadata accessor for MedicationListItem();
          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_25:
            result = sub_228393300();
            __break(1u);
            return result;
          }

          v40 = *(v51 + 16);

          v38 = [v40 semanticIdentifier];

          v41 = v38;
        }

        else
        {
          v41 = 0;
        }

        *(v30 + 24) = v38;
        *v31 = v41;
        _os_log_impl(&dword_22816B000, v28, v29, "%{public}s] Successfully deleted dismissed %s interactions for medication: %@", v30, 0x20u);
        sub_2282203EC(v31, &qword_27D823DA0, &qword_27D825620, 0x277D82BB8, sub_22817A958);
        MEMORY[0x22AAB7B80](v31, -1, -1);
        v48 = v50;
        swift_arrayDestroy();
        MEMORY[0x22AAB7B80](v48, -1, -1);
        MEMORY[0x22AAB7B80](v30, -1, -1);
      }

      return (*(v6 + 8))(v11, v5);
    }
  }

  return result;
}

id MedicationListItemCell.trailingSwipeActionsConfigurationProvider.getter()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (sub_22821E950())
  {
    v2 = sub_22821FE0C(sub_22821FD0C, v1);
  }

  else
  {
    v2 = sub_228220018(sub_22821FC08, v0);
  }

  v3 = v2;
  sub_228180ED0();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_228396260;
  *(v4 + 32) = v3;
  sub_22817A958(0, &qword_27D8255D0, 0x277D753C0);
  v5 = v3;
  v6 = sub_228392190();

  v7 = [objc_opt_self() configurationWithActions_];

  return v7;
}

void sub_22821FA90(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a3;
    v10[4] = a4;
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a4;
    swift_retain_n();

    v12 = _sSo17UIAlertControllerC19HealthMedicationsUIE31makeAlertForArchivingMedication9onConfirm0K6CancelAByyc_yycSgtFZ_0(sub_2282204A4, v10, sub_2282204B0, v11);

    v13 = [v8 viewController];
    if (v13)
    {
      v14 = v13;
      [v13 presentViewController:v12 animated:1 completion:0];
    }
  }

  else
  {
    a3();
  }
}

uint64_t sub_22821FC10(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_22821EB5C();
  }

  return a2(1);
}

void sub_22821FC84(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_22821EB5C();
    a3(1);
  }

  else
  {
    (a3)();
  }
}

void sub_22821FD38(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_2282203CC, v8);
}

id sub_22821FE0C(uint64_t a1, uint64_t a2)
{
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v4 = sub_228391FC0();

  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22821FD38;
  aBlock[3] = &block_descriptor_10;
  v5 = _Block_copy(aBlock);
  v6 = objc_opt_self();

  v7 = [v6 contextualActionWithStyle:0 title:v4 handler:{v5, 0xE000000000000000}];

  _Block_release(v5);

  v8 = sub_228391FC0();
  v9 = [objc_opt_self() systemImageNamed_];

  [v7 setImage_];
  v10 = [objc_opt_self() systemYellowColor];
  [v7 setBackgroundColor_];

  return v7;
}

id sub_228220018(uint64_t a1, uint64_t a2)
{
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v4 = sub_228391FC0();

  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22821FD38;
  aBlock[3] = &block_descriptor_32;
  v5 = _Block_copy(aBlock);
  v6 = objc_opt_self();

  v7 = [v6 contextualActionWithStyle:0 title:v4 handler:{v5, 0xE000000000000000}];

  _Block_release(v5);

  v8 = sub_228391FC0();
  v9 = [objc_opt_self() systemImageNamed_];

  [v7 setImage_];
  v10 = [objc_opt_self() systemYellowColor];
  [v7 setBackgroundColor_];

  return v7;
}

uint64_t sub_22822022C(uint64_t a1)
{
  result = sub_2283911B0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2282203EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_228220448(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_228220448(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_228392F00();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2282204DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t InteractionNoneFoundItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_228220568()
{
  v2 = *(v0 + 16);

  MEMORY[0x22AAB5C80](0x6E756F46656E6F4ELL, 0xE900000000000064);
  return v2;
}

uint64_t InteractionNoneFoundItem.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for InteractionNoneFoundCell();
  sub_228220A10(&qword_27D825630, 255, type metadata accessor for InteractionNoneFoundCell, &protocol conformance descriptor for InteractionNoneFoundCell);
  *(v0 + 16) = sub_22838FBB0();
  *(v0 + 24) = v1;
  return v0;
}

uint64_t InteractionNoneFoundItem.init()()
{
  type metadata accessor for InteractionNoneFoundCell();
  sub_228220A10(&qword_27D825630, 255, type metadata accessor for InteractionNoneFoundCell, &protocol conformance descriptor for InteractionNoneFoundCell);
  *(v0 + 16) = sub_22838FBB0();
  *(v0 + 24) = v1;
  return v0;
}

uint64_t static InteractionNoneFoundItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 16);
  v9 = *(a1 + 24);

  MEMORY[0x22AAB5C80](0x6E756F46656E6F4ELL, 0xE900000000000064);
  v4 = v7;
  v3 = v9;
  v8 = *(a2 + 16);

  MEMORY[0x22AAB5C80](0x6E756F46656E6F4ELL, 0xE900000000000064);
  if (__PAIR128__(v3, v4) == v8)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_228393460();
  }

  return v5 & 1;
}

uint64_t InteractionNoneFoundItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2282207F0()
{
  sub_228393520();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_228220834(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v7 = *(*a1 + 16);
  v9 = *(*a1 + 24);

  MEMORY[0x22AAB5C80](0x6E756F46656E6F4ELL, 0xE900000000000064);
  v4 = v7;
  v3 = v9;
  v8 = *(v2 + 16);

  MEMORY[0x22AAB5C80](0x6E756F46656E6F4ELL, 0xE900000000000064);
  if (__PAIR128__(v3, v4) == v8)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_228393460();
  }

  return v5 & 1;
}

uint64_t sub_228220A10(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_228220A58(uint64_t a1)
{
  sub_228393520();

  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_228220AB4()
{
  v2 = *(*v0 + 16);

  MEMORY[0x22AAB5C80](0x6E756F46656E6F4ELL, 0xE900000000000064);
  return v2;
}

uint64_t sub_228220B0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t sub_228220C08(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;
}

uint64_t sub_228220C68()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_228220CB4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_228220D58()
{
  sub_22838F4A0();
  sub_228220FC0(&qword_27D824618, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v4 = sub_228393420();
  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  swift_beginAccess();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  MEMORY[0x22AAB5C80](v2, v1);

  return v4;
}

uint64_t MedicationComponentsItem.__allocating_init(medicationName:componentsList:hasEducation:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  type metadata accessor for MedicationComponentsItemCell();
  sub_228220FC0(&qword_27D825650, v9, type metadata accessor for MedicationComponentsItemCell, &protocol conformance descriptor for MedicationComponentsItemCell);
  *(v8 + 48) = sub_22838FBB0();
  *(v8 + 56) = v10;
  sub_22838F490();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  return v8;
}

uint64_t MedicationComponentsItem.init(medicationName:componentsList:hasEducation:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  type metadata accessor for MedicationComponentsItemCell();
  sub_228220FC0(&qword_27D825650, v9, type metadata accessor for MedicationComponentsItemCell, &protocol conformance descriptor for MedicationComponentsItemCell);
  *(v4 + 48) = sub_22838FBB0();
  *(v4 + 56) = v10;
  sub_22838F490();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return v4;
}

uint64_t sub_228220FC0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *MedicationComponentsItem.deinit()
{

  v1 = OBJC_IVAR____TtC19HealthMedicationsUI24MedicationComponentsItem_uuid;
  v2 = sub_22838F4A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MedicationComponentsItem.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC19HealthMedicationsUI24MedicationComponentsItem_uuid;
  v2 = sub_22838F4A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_228221134()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 48);

  return v2;
}

uint64_t sub_228221184()
{
  v1 = *v0;
  sub_22838F4A0();
  sub_228220FC0(&qword_27D824618, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v5 = sub_228393420();
  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  swift_beginAccess();
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);

  MEMORY[0x22AAB5C80](v2, v3);

  return v5;
}

uint64_t sub_228221260(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t sub_2282212C4(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_2282224E8();
  return sub_22819482C(v6);
}

uint64_t sub_228221334@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22822138C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2282224E8();
  return sub_22819482C(a1);
}

uint64_t (*sub_2282213F8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22822145C;
}

uint64_t sub_22822145C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_2282224E8();
  }

  return result;
}

id sub_2282214B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v7 = sub_228392000();
  v8 = v1;
  v2 = v0;

  MEMORY[0x22AAB5C80](0xD000000000000011, 0x80000002283AD0E0);

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xED00006C6562614CLL);

  v3 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setNumberOfLines_];
  LODWORD(v4) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v4];
  v5 = [objc_opt_self() preferredFontForTextStyle_];
  [v2 setFont_];

  [v2 setAdjustsFontForContentSizeCategory_];
  return v2;
}

id sub_228221680(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_2282216E0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v8 = sub_228392000();
  v9 = v1;
  v2 = v0;

  MEMORY[0x22AAB5C80](0xD000000000000011, 0x80000002283AD0E0);

  MEMORY[0x22AAB5C80](0xD000000000000010, 0x80000002283A9590);

  v3 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setNumberOfLines_];
  v4 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  LODWORD(v5) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v5];
  v6 = [objc_opt_self() preferredFontForTextStyle_];
  [v2 setFont_];

  [v2 setAdjustsFontForContentSizeCategory_];
  return v2;
}

id sub_2282218C8(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___primaryLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___componentsLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___constraintsWithComponentsLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___constraintsWithoutComponentsLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___constraintsWithComponentsWithoutEducationLabel] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for MedicationComponentsItemCell();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  sub_228221AA8();

  return v10;
}

id sub_2282219C4(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___primaryLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___componentsLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___constraintsWithComponentsLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___constraintsWithoutComponentsLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___constraintsWithComponentsWithoutEducationLabel] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for MedicationComponentsItemCell();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_228221AA8()
{
  v1 = v0;
  sub_22817A7F0(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_2283913A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v0 contentView];
  v10 = sub_228221490();
  [v9 addSubview_];

  v11 = [v1 contentView];
  v12 = sub_228221660();
  [v11 addSubview_];

  sub_228391390();
  v13 = [objc_opt_self() tertiarySystemBackgroundColor];
  sub_228391370();
  (*(v6 + 16))(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  MEMORY[0x22AAB6420](v4);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_228221CE4()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___constraintsWithoutComponentsLabel;
  if (*&v0[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___constraintsWithoutComponentsLabel])
  {
    v2 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___constraintsWithoutComponentsLabel];
  }

  else
  {
    v2 = sub_228221D4C(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_228221D4C(char *a1)
{
  sub_228222D8C(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22839CC40;
  v3 = sub_228221490();
  v4 = [v3 topAnchor];

  v5 = [a1 contentView];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor:v6 constant:8.0];
  *(v2 + 32) = v7;
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___primaryLabel;
  v9 = [*&a1[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___primaryLabel] bottomAnchor];
  v10 = [a1 contentView];
  v11 = [v10 bottomAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:-8.0];
  *(v2 + 40) = v12;
  v13 = [*&a1[v8] leadingAnchor];
  v14 = [a1 contentView];
  v15 = [v14 layoutMarginsGuide];

  v16 = [v15 leadingAnchor];
  v17 = [v13 constraintEqualToAnchor_];

  *(v2 + 48) = v17;
  v18 = [*&a1[v8] trailingAnchor];
  v19 = [a1 contentView];
  v20 = [v19 layoutMarginsGuide];

  v21 = [v20 trailingAnchor];
  v22 = [v18 constraintEqualToAnchor_];

  *(v2 + 56) = v22;
  v23 = [a1 contentView];
  v24 = [v23 heightAnchor];

  v25 = [v24 constraintGreaterThanOrEqualToConstant_];
  *(v2 + 64) = v25;
  return v2;
}

uint64_t sub_22822207C(uint64_t *a1, double a2)
{
  v3 = *a1;
  v4 = *&v2[*a1];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = sub_2282220E0(v2, a2);
    *&v2[v3] = v5;
  }

  return v5;
}

uint64_t sub_2282220E0(char *a1, double a2)
{
  sub_228222D8C(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_228399E10;
  v5 = sub_228221490();
  v6 = [v5 topAnchor];

  v7 = [a1 contentView];
  v8 = [v7 topAnchor];

  v9 = [v6 constraintEqualToAnchor:v8 constant:16.0];
  *(v4 + 32) = v9;
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___primaryLabel;
  v11 = [*&a1[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___primaryLabel] leadingAnchor];
  v12 = [a1 contentView];
  v13 = [v12 layoutMarginsGuide];

  v14 = [v13 &selRef_logTimeChanged_ + 1];
  v15 = [v11 constraintEqualToAnchor_];

  *(v4 + 40) = v15;
  v16 = [*&a1[v10] trailingAnchor];
  v17 = [a1 contentView];
  v18 = [v17 layoutMarginsGuide];

  v19 = [v18 trailingAnchor];
  v20 = [v16 constraintEqualToAnchor_];

  *(v4 + 48) = v20;
  v21 = sub_228221660();
  v22 = [v21 topAnchor];

  v23 = [*&a1[v10] bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:2.0];

  *(v4 + 56) = v24;
  v25 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___componentsLabel;
  v26 = [*&a1[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell____lazy_storage___componentsLabel] leadingAnchor];
  v27 = [*&a1[v10] leadingAnchor];
  v28 = [v26 &selRef_freeTextMedicationName + 5];

  *(v4 + 64) = v28;
  v29 = [*&a1[v25] trailingAnchor];
  v30 = [*&a1[v10] trailingAnchor];
  v31 = [v29 &selRef_freeTextMedicationName + 5];

  *(v4 + 72) = v31;
  v32 = [*&a1[v25] bottomAnchor];
  v33 = [a1 contentView];
  v34 = [v33 bottomAnchor];

  v35 = [v32 constraintEqualToAnchor:v34 constant:a2];
  *(v4 + 80) = v35;
  return v4;
}

uint64_t sub_2282224E8()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationComponentsItemCell_item;
  swift_beginAccess();
  sub_22817E6C8(v1 + v6, v31);
  if (v31[3])
  {
    sub_22817A700();
    type metadata accessor for MedicationComponentsItem(0);
    if (swift_dynamicCast())
    {
      v7 = v30;
      v8 = sub_228221490();

      v9 = sub_228391FC0();

      [v8 setText_];

      v10 = sub_228221660();
      v31[0] = *(v7 + 32);
      sub_228222D8C(0, &qword_27D827E10, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      sub_2281BF13C();

      sub_228391F90();

      v11 = sub_228391FC0();

      [v10 setText_];

      if (*(*(v7 + 32) + 16))
      {
        v12 = *(v7 + 40);
        v13 = objc_opt_self();
        if (v12 != 1)
        {
          sub_22822206C();
          sub_2281BF1B8();
          v26 = sub_228392190();

          [v13 activateConstraints_];

          sub_228221CE4();
          v27 = sub_228392190();

          [v13 deactivateConstraints_];

          sub_228221CD4();
          goto LABEL_13;
        }

        sub_228221CD4();
        sub_2281BF1B8();
        v14 = sub_228392190();

        [v13 activateConstraints_];

        sub_228221CE4();
      }

      else
      {
        v13 = objc_opt_self();
        sub_228221CE4();
        sub_2281BF1B8();
        v24 = sub_228392190();

        [v13 activateConstraints_];

        sub_228221CD4();
      }

      v25 = sub_228392190();

      [v13 deactivateConstraints_];

      sub_22822206C();
LABEL_13:
      v28 = sub_228392190();

      [v13 deactivateConstraints_];
    }
  }

  else
  {
    sub_22819482C(v31);
  }

  sub_228391150();
  v15 = v1;
  v16 = sub_2283911A0();
  v17 = sub_2283925C0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136446210;
    sub_22817E6C8(v1 + v6, v31);
    sub_22817A7F0(0, &qword_280DDCD50, sub_22817A700);
    v20 = sub_228392040();
    v22 = sub_2281C96FC(v20, v21, &v30);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_22816B000, v16, v17, "Incorrect view model for MedicationListItemCell: %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x22AAB7B80](v19, -1, -1);
    MEMORY[0x22AAB7B80](v18, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

id MedicationComponentsItemCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationComponentsItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MedicationComponentsItem(uint64_t a1)
{
  result = qword_27D825668;
  if (!qword_27D825668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228222B68(uint64_t a1)
{
  result = sub_22838F4A0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_228222D8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t InteractionFactorsLifestyleOptionsItem.__allocating_init(factor:enabled:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  swift_allocObject();
  return InteractionFactorsLifestyleOptionsItem.init(factor:enabled:)(a1, v2);
}

uint64_t InteractionFactorsLifestyleOptionsItem.init(factor:enabled:)(uint64_t a1, char a2)
{
  *(v2 + qword_27D8256A8) = a1;
  *(v2 + qword_27D8256A0) = a2;
  sub_2281AF0A0();
  v4 = objc_opt_self();
  v5 = [v4 systemBackgroundColor];
  v6 = [v4 secondarySystemBackgroundColor];
  sub_228392B80();

  HKDrugInteractionLifestyleFactor.image.getter(a1);
  v8 = 0;
  HKDrugInteractionLifestyleFactor.localizedString(variant:)(&v8, a1);

  return sub_2283901A0();
}

uint64_t InteractionFactorsLifestyleOptionsItem.__deallocating_deinit()
{
  _s19HealthMedicationsUI38InteractionFactorsLifestyleOptionsItemCfd_0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InteractionFactorsLifestyleOptionsItem(uint64_t a1)
{
  result = qword_27D8256B0;
  if (!qword_27D8256B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282230F0()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_228223120()
{
  v1 = *(v0 + 40);
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  sub_228393540();
  if (v1)
  {
    sub_2283920B0();
  }

  sub_228392C70();
  return sub_228393570();
}

uint64_t sub_2282231D8(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_2283920B0();
  sub_2283920B0();
  sub_228393540();
  if (v2)
  {
    sub_2283920B0();
  }

  return sub_228392C70();
}

uint64_t sub_228223270(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  sub_228393540();
  if (v2)
  {
    sub_2283920B0();
  }

  sub_228392C70();
  return sub_228393570();
}

uint64_t sub_228223324(uint64_t a1)
{
  v2 = sub_228223E38();

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_228223370(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_228223ACC(v7, v9) & 1;
}

uint64_t sub_228223554()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationOnboardingHeaderCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v0[v1], v30);
  if (!v31)
  {
    return sub_22819482C(v30);
  }

  sub_22817A700();
  result = swift_dynamicCast();
  if (result)
  {
    v32[2] = v27;
    v32[3] = v28;
    v33 = v29;
    v32[0] = v25;
    v32[1] = v26;
    v3 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationOnboardingHeaderCell_headerView;
    [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationOnboardingHeaderCell_headerView] removeFromSuperview];
    v4 = sub_228223BEC(v32);
    v5 = *&v0[v3];
    *&v0[v3] = v4;
    v6 = v4;

    [v0 addSubview_];
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_228180ED0();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_228397F00;
    v8 = [v6 leadingAnchor];
    v9 = [v0 leadingAnchor];
    v10 = [objc_allocWithZone(MEMORY[0x277CCDD30]) init];
    v11 = [v10 isiPad];

    if (v11)
    {
      v12 = 16.0;
    }

    else
    {
      v12 = 0.0;
    }

    v13 = objc_opt_self();
    v14 = [v8 constraintEqualToAnchor:v9 constant:v12];

    *(v7 + 32) = v14;
    v15 = [v6 trailingAnchor];
    v16 = [v0 trailingAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    *(v7 + 40) = v17;
    v18 = [v6 topAnchor];
    v19 = [v0 topAnchor];
    v20 = [v18 constraintEqualToAnchor_];

    *(v7 + 48) = v20;
    v21 = [v6 bottomAnchor];
    v22 = [v0 bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:-30.0];

    *(v7 + 56) = v23;
    sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
    v24 = sub_228392190();

    [v13 activateConstraints_];

    return sub_228223CE0(v32);
  }

  return result;
}

id sub_2282238CC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MedicationOnboardingHeaderCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_228223970@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationOnboardingHeaderCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2282239C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationOnboardingHeaderCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228223554();
  return sub_22819482C(a1);
}

uint64_t (*sub_228223A34(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228223A98;
}

uint64_t sub_228223A98(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_228223554();
  }

  return result;
}

uint64_t sub_228223ACC(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_228393460() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_228393460() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = a2[5];
  if (v6)
  {
    if (!v7 || (a1[4] != a2[4] || v6 != v7) && (sub_228393460() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
  if ((sub_228392C60() & 1) == 0)
  {
    return 0;
  }

  if (a1[7] == a2[7] && a1[8] == a2[8])
  {
    return 1;
  }

  return sub_228393460();
}

id sub_228223BEC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = sub_228391FC0();
  if (v1)
  {
    v4 = sub_228391FC0();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(MEMORY[0x277D37640]) initWithTitle:v3 detailText:v4 icon:v2];

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  [v7 setBackgroundColor_];

  return v7;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_228223D34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_228223D7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_228223DE0()
{
  result = qword_27D8256D0;
  if (!qword_27D8256D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8256D0);
  }

  return result;
}

unint64_t sub_228223E38()
{
  result = qword_27D8256D8;
  if (!qword_27D8256D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8256D8);
  }

  return result;
}

uint64_t sub_228223E8C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_228223ED4(uint64_t a1)
{
  v2 = sub_2282251AC(&qword_27D824350, &unk_22839D100);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t MedicationMarkdownItemCell.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_228223F94(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_228224070();
  return sub_22819482C(v6);
}

uint64_t MedicationMarkdownItemCell.item.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228224070();
  return sub_22819482C(a1);
}

void sub_228224070()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v6], v35);
  if (v35[3])
  {
    sub_22817A700();
    type metadata accessor for MedicationMarkdownItem();
    if (swift_dynamicCast())
    {
      v7 = v34;
      v8 = *(v34 + 64);
      v9 = sub_228224588();
      v10 = v9;
      if (v8 == 1)
      {
        v11 = sub_228224660();
        [v10 insertArrangedSubview:v11 atIndex:0];
      }

      else
      {
        v20 = [v9 arrangedSubviews];

        sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
        v21 = sub_2283921A0();

        v22 = sub_228224660();
        v35[0] = v22;
        MEMORY[0x28223BE20](v22);
        *(&v33 - 2) = v35;
        v23 = sub_228309FEC(sub_2282251EC, (&v33 - 4), v21);

        if (v23)
        {
          [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___stackView] removeArrangedSubview_];
        }
      }

      v24 = sub_228224768();

      v25 = sub_228391FC0();

      [v24 setText_];

      v26 = sub_2282248D4();
      if (*(v7 + 56))
      {

        v27 = sub_228391FC0();
      }

      else
      {
        v27 = 0;
      }

      [v26 setText_];

      v28 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___attributionLabel];
      if (*(v7 + 56))
      {
        v29 = v28;

        sub_2283920A0();
        v31 = v30;

        if (v31)
        {

          v32 = 0;
LABEL_19:
          [v29 setHidden_];

          return;
        }
      }

      else
      {
        v29 = v28;
      }

      v32 = 1;
      goto LABEL_19;
    }
  }

  else
  {
    sub_22819482C(v35);
  }

  sub_228391150();
  v12 = v1;
  v13 = sub_2283911A0();
  v14 = sub_2283925C0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v34 = v16;
    *v15 = 136446210;
    sub_22817E6C8(&v1[v6], v35);
    sub_228181D50(0);
    v17 = sub_228392040();
    v19 = sub_2281C96FC(v17, v18, &v34);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_22816B000, v13, v14, "Incorrect view model for MedicationMarkdownItem: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AAB7B80](v16, -1, -1);
    MEMORY[0x22AAB7B80](v15, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
}

void (*MedicationMarkdownItemCell.item.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228224554;
}

void sub_228224554(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_228224070();
  }
}

id sub_228224588()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___stackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setAxis_];
    [v4 setAlignment_];
    [v4 setDistribution_];
    [v4 setSpacing_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_228224660()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___criticalButton;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___criticalButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___criticalButton);
  }

  else
  {
    if (qword_27D823310 != -1)
    {
      swift_once();
    }

    v4 = sub_22838F0C0();
    _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(v4, v5, 0x616369746972432ELL, 0xE90000000000006CLL);
    v7 = v6;

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_228224768()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___primaryLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___primaryLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___primaryLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v6 = sub_228392AD0();
    [v5 setFont_];

    [v5 setAdjustsFontForContentSizeCategory_];
    v7 = v5;
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    [v7 setNumberOfLines_];
    v8 = sub_228392190();
    v9 = HKUIJoinStringsForAutomationIdentifier();

    [v7 setAccessibilityIdentifier_];
    v10 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_2282248D4()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___attributionLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___attributionLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___attributionLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v6 = sub_228392AD0();
    [v5 setFont_];

    [v5 setAdjustsFontForContentSizeCategory_];
    v7 = [objc_opt_self() secondaryLabelColor];
    [v5 setTextColor_];

    v8 = v5;
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    [v8 setNumberOfLines_];
    v9 = sub_228392190();
    v10 = HKUIJoinStringsForAutomationIdentifier();

    [v8 setAccessibilityIdentifier_];
    v11 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

char *sub_228224A7C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_228391590();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell_item];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___stackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___criticalButton] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___primaryLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___attributionLabel] = 0;
  v44.receiver = v4;
  v44.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v44, sel_initWithFrame_, a1, a2, a3, a4);
  [v15 setUserInteractionEnabled_];
  v16 = sub_228224588();
  v17 = sub_228224768();
  [v16 addArrangedSubview_];

  v18 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___stackView;
  v19 = *&v15[OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell____lazy_storage___stackView];
  v20 = sub_2282248D4();
  [v19 addArrangedSubview_];

  v21 = [v15 contentView];
  [v21 addSubview_];

  sub_228391520();
  sub_2283914D0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  (*(v11 + 8))(v13, v10);
  v30 = *&v15[v18];
  v31 = [v15 contentView];
  [v30 hk:v31 alignHorizontalConstraintsWithView:v23 insets:{v25, v27, v29}];

  v32 = objc_opt_self();
  sub_228180ED0();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_228397F20;
  v34 = [*&v15[v18] topAnchor];
  v35 = [v15 contentView];
  v36 = [v35 topAnchor];

  v37 = [v34 constraintEqualToAnchor:v36 constant:16.0];
  *(v33 + 32) = v37;
  v38 = [*&v15[v18] bottomAnchor];
  v39 = [v15 contentView];

  v40 = [v39 bottomAnchor];
  v41 = [v38 constraintEqualToAnchor:v40 constant:-16.0];

  *(v33 + 40) = v41;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v42 = sub_228392190();

  [v32 activateConstraints_];

  return v15;
}

id MedicationMarkdownItemCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228225008@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_228225060(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI26MedicationMarkdownItemCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228224070();
  return sub_22819482C(a1);
}

void (*sub_2282250CC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228224554;
}

uint64_t sub_2282251AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MedicationMarkdownItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MedicationNicknameNotes.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!*(v1 + 8))
  {
    sub_228393540();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_228393540();
  }

  sub_228393540();
  sub_2283920B0();
  if (!v2)
  {
    return sub_228393540();
  }

LABEL_3:
  sub_228393540();

  return sub_2283920B0();
}

uint64_t MedicationNicknameNotes.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_228393520();
  if (!v1)
  {
    sub_228393540();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_228393540();
    return sub_228393570();
  }

  sub_228393540();
  sub_2283920B0();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_228393540();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_22822537C(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!*(v1 + 8))
  {
    sub_228393540();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_228393540();
  }

  sub_228393540();
  sub_2283920B0();
  if (!v2)
  {
    return sub_228393540();
  }

LABEL_3:
  sub_228393540();

  return sub_2283920B0();
}

uint64_t sub_228225434(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  sub_228393520();
  if (!v2)
  {
    sub_228393540();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_228393540();
    return sub_228393570();
  }

  sub_228393540();
  sub_2283920B0();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_228393540();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t _s19HealthMedicationsUI23MedicationNicknameNotesV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_228393460() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (sub_228393460() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}