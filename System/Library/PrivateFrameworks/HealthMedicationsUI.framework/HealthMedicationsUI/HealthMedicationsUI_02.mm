void sub_2281A2F3C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_2Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2281A3058(uint64_t a1, uint64_t *a2)
{
  sub_2281A42AC(a1, v6, &qword_280DDCD50, sub_22817A700);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_2281A3D6C();
  return sub_2281A4318(v6, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_2281A30FC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell_item;
  swift_beginAccess();
  return sub_2281A42AC(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_2281A3170(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2281A3D6C();
  return sub_2281A4318(a1, &qword_280DDCD50, sub_22817A700);
}

void (*sub_2281A31F8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2281A325C;
}

void sub_2281A325C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_2281A3D6C();
  }
}

id sub_2281A3290()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___medicationView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___medicationView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___medicationView);
  }

  else
  {
    v4 = [objc_allocWithZone(sub_228390970()) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2281A3328()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___titleLabel);
  }

  else
  {
    v4 = sub_2281A3388();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2281A3388()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v7 = sub_228392000();
  v8 = v1;
  v2 = v0;

  MEMORY[0x22AAB5C80](0xD00000000000001ALL, 0x80000002283A8960);

  MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

  v3 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];

  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v4 = sub_228392AD0();
  [v2 setFont_];

  v5 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setNumberOfLines_];
  [v2 setAdjustsFontForContentSizeCategory_];
  return v2;
}

id sub_2281A3624(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___medicationView] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___titleLabel] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for InteractionNotCheckedCell();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

void sub_2281A373C()
{
  v1 = v0;
  sub_2281A4374(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v48 - v6;
  v8 = [v0 contentView];
  v9 = sub_2281A3290();
  [v8 addSubview_];

  v10 = [v1 contentView];
  v11 = sub_2281A3328();
  [v10 addSubview_];

  sub_228391390();
  v12 = sub_2283913A0();
  v13 = *(v12 - 8);
  (*(v13 + 56))(v7, 0, 1, v12);
  v14 = MEMORY[0x22AAB6420](v7);
  MEMORY[0x22AAB6410](v14);
  if ((*(v13 + 48))(v5, 1, v12))
  {
    v15 = MEMORY[0x277D74BD0];
    sub_2281A42AC(v5, v7, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
    MEMORY[0x22AAB6420](v7);
    sub_2281A4318(v5, &unk_280DDBCD0, v15);
  }

  else
  {
    v16 = [objc_opt_self() quaternarySystemFillColor];
    sub_228391370();
    MEMORY[0x22AAB6420](v5);
  }

  v49 = objc_opt_self();
  sub_228180ED0();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_228399190;
  v18 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___medicationView;
  v19 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___medicationView] leadingAnchor];
  v20 = [v1 contentView];
  v21 = [v20 leadingAnchor];

  v22 = [v19 constraintEqualToAnchor:v21 constant:16.0];
  *(v17 + 32) = v22;
  v23 = [*&v1[v18] topAnchor];
  v24 = [v1 contentView];
  v25 = [v24 topAnchor];

  v26 = [v23 constraintEqualToAnchor:v25 constant:16.0];
  *(v17 + 40) = v26;
  v27 = [*&v1[v18] bottomAnchor];
  v28 = [v1 contentView];
  v29 = [v28 bottomAnchor];

  v30 = [v27 constraintEqualToAnchor:v29 constant:-16.0];
  *(v17 + 48) = v30;
  v31 = [*&v1[v18] widthAnchor];
  v32 = [v31 constraintEqualToConstant_];

  *(v17 + 56) = v32;
  v33 = [*&v1[v18] heightAnchor];
  v34 = [v33 constraintEqualToConstant_];

  *(v17 + 64) = v34;
  v35 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___titleLabel;
  v36 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___titleLabel] leadingAnchor];
  v37 = [*&v1[v18] trailingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:16.0];

  *(v17 + 72) = v38;
  v39 = [*&v1[v35] centerYAnchor];
  v40 = [v1 contentView];
  v41 = [v40 centerYAnchor];

  v42 = [v39 constraintEqualToAnchor_];
  *(v17 + 80) = v42;
  v43 = [*&v1[v35] trailingAnchor];
  v44 = [v1 contentView];
  v45 = [v44 trailingAnchor];

  v46 = [v43 constraintEqualToAnchor:v45 constant:-16.0];
  *(v17 + 88) = v46;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v47 = sub_228392190();

  [v49 activateConstraints_];
}

void sub_2281A3D6C()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281A4374(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell_item;
  swift_beginAccess();
  sub_2281A42AC(v1 + v7, v25, &qword_280DDCD50, sub_22817A700);
  if (v25[3])
  {
    sub_22817A700();
    type metadata accessor for InteractionNotCheckedItem();
    if (swift_dynamicCast())
    {
      v8 = v24;
      v9 = sub_2281A3290();
      _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
      sub_228390950();

      v10 = sub_2281A3328();
      v25[0] = *(v8 + 16);
      v11 = v25[0];
      sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
      v12 = v11;
      sub_228390F20();
      v13 = sub_228391FC0();

      [v10 setText_];

      return;
    }
  }

  else
  {
    sub_2281A4318(v25, &qword_280DDCD50, sub_22817A700);
  }

  sub_228391150();
  v14 = v1;
  v15 = sub_2283911A0();
  v16 = sub_2283925C0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v2;
    v24 = v18;
    v19 = v18;
    *v17 = 136446210;
    sub_2281A42AC(v1 + v7, v25, &qword_280DDCD50, sub_22817A700);
    sub_2281A4374(0, &qword_280DDCD50, sub_22817A700);
    v20 = sub_228392040();
    v22 = sub_2281C96FC(v20, v21, &v24);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_22816B000, v15, v16, "Incorrect view model for InteractionFactorsItem: %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x22AAB7B80](v19, -1, -1);
    MEMORY[0x22AAB7B80](v17, -1, -1);

    (*(v3 + 8))(v5, v23);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

id InteractionNotCheckedCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionNotCheckedCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2281A42AC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2281A4374(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2281A4318(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2281A4374(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2281A4374(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t RelatedCHRRecordsDataSource.init(with:healthStore:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = qword_27D824160;
  sub_22838F8E0();
  v7 = sub_22838F8D0();
  v8 = sub_22838F8C0();

  *(v3 + v6) = v8;
  *(v3 + qword_27D824168) = MEMORY[0x277D84FA0];
  sub_228390EA0();
  swift_allocObject();
  v9 = a2;
  *(v3 + qword_27D824170) = sub_228390E90();
  type metadata accessor for ClinicalRecordsMedicationsProvider();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v3 + qword_27D824178) = v10;
  v11 = v9;
  v12 = sub_22838F920();

  sub_2281A4524(a1);

  return v12;
}

uint64_t sub_2281A4524(uint64_t a1)
{
  sub_2281A629C(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v48 = &v35 - v3;
  sub_2281A6308(0);
  v5 = *(v4 - 8);
  v36 = v4;
  v37 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281A662C(0);
  v9 = *(v8 - 8);
  v39 = v8;
  v40 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281A66E8(0);
  v13 = *(v12 - 8);
  v41 = v12;
  v42 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281A6870(0);
  v17 = *(v16 - 8);
  v44 = v16;
  v45 = v17;
  MEMORY[0x28223BE20](v16);
  v38 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281A6904(0);
  v20 = *(v19 - 8);
  v46 = v19;
  v47 = v20;
  MEMORY[0x28223BE20](v19);
  v43 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;

  sub_2283917E0();
  sub_2281A65B4(0);
  sub_2281A63F4(0);
  sub_2281A60D8(&qword_27D8241C0, sub_2281A65B4, MEMORY[0x277CBCE48]);
  v22 = MEMORY[0x277CBCD90];
  sub_2281A60D8(&qword_27D8241C8, sub_2281A63F4, MEMORY[0x277CBCD90]);
  sub_228391AF0();

  sub_22817A958(0, &qword_27D823BD8, 0x277CCD1B0);
  v23 = MEMORY[0x277CBCCE0];
  sub_2281A60D8(&qword_27D8241E0, sub_2281A6308, MEMORY[0x277CBCCE0]);
  v24 = v36;
  sub_2283919A0();
  (*(v37 + 8))(v7, v24);

  sub_2283917E0();
  sub_2281A6490(0, &qword_27D8241F8, &qword_27D824200, 0x277CCD5F8, MEMORY[0x277D83940]);
  sub_2281A67D4(0);
  sub_2281A60D8(&qword_27D824210, sub_2281A662C, MEMORY[0x277CBCB10]);
  sub_2281A60D8(&qword_27D824208, sub_2281A67D4, v22);
  v25 = v39;
  sub_228391A50();

  (*(v40 + 8))(v11, v25);
  v49 = MEMORY[0x277D84F90];
  sub_2281A60D8(&qword_27D824220, sub_2281A66E8, v23);
  v26 = v38;
  v27 = v41;
  sub_2283919B0();
  (*(v42 + 8))(v15, v27);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v28 = sub_228392790();
  v49 = v28;
  v29 = sub_228392730();
  v30 = v48;
  (*(*(v29 - 8) + 56))(v48, 1, 1, v29);
  sub_2281A60D8(&qword_27D824230, sub_2281A6870, MEMORY[0x277CBCB78]);
  sub_2281A1504();
  v31 = v43;
  v32 = v44;
  sub_228391A70();
  sub_2281A16F0(v30);

  (*(v45 + 8))(v26, v32);
  swift_allocObject();
  swift_weakInit();
  sub_2281A60D8(&qword_27D824238, sub_2281A6904, MEMORY[0x277CBCD60]);
  v33 = v46;
  sub_228391AC0();

  (*(v47 + 8))(v31, v33);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_2281A4D24@<X0>(uint64_t *a2@<X8>)
{
  sub_228390E80();
  sub_2281A63F4(0);
  sub_2281A60D8(&qword_27D8241C8, sub_2281A63F4, MEMORY[0x277CBCD90]);
  v3 = sub_228391990();

  *a2 = v3;
  return result;
}

id sub_2281A4DC8@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_2281A4DD4(unint64_t *a1, uint64_t a2)
{
  v20 = sub_228390170();
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (v6 >> 62)
    {
      v9 = sub_2283930D0();
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = MEMORY[0x277D84F90];
    if (v9)
    {
      v21 = MEMORY[0x277D84F90];
      result = sub_2281C9FFC(0, v9 & ~(v9 >> 63), 0);
      if (v9 < 0)
      {
        __break(1u);
        return result;
      }

      v19 = v8;
      v11 = 0;
      v10 = v21;
      v12 = v6;
      v18 = v6 & 0xC000000000000001;
      do
      {
        if (v18)
        {
          v13 = MEMORY[0x22AAB6D80](v11);
        }

        else
        {
          v13 = *(v12 + 8 * v11 + 32);
        }

        v14 = v13;
        sub_2281A51B0(v13, v5);

        v21 = v10;
        v16 = *(v10 + 16);
        v15 = *(v10 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_2281C9FFC((v15 > 1), v16 + 1, 1);
          v10 = v21;
        }

        ++v11;
        *(v10 + 16) = v16 + 1;
        (*(v3 + 32))(v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v16, v5, v20);
        v12 = v6;
      }

      while (v9 != v11);
    }

    sub_22838F910();

    sub_22838FCD0();

    sub_2281A629C(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
    sub_22838FEF0();
    *(swift_allocObject() + 16) = xmmword_228397F40;
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_228195594(v10);

    sub_22838FED0();
    sub_22838FF50();
  }

  return result;
}

uint64_t sub_2281A51B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_228390460();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_2281A629C(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v56 = &v42 - v7;
  v8 = sub_22838FFC0();
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x28223BE20](v8);
  v53 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281A629C(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], v5);
  MEMORY[0x28223BE20](v10 - 8);
  v50 = &v42 - v11;
  v12 = sub_2283912A0();
  v51 = *(v12 - 8);
  v52 = v12;
  MEMORY[0x28223BE20](v12);
  v49 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_228391220();
  v47 = *(v14 - 8);
  v48 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22838F4A0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_228391590();
  v21 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391580();
  v44 = a1;
  v24 = [a1 sourceRevision];
  v25 = [v24 source];

  v26 = [v25 name];
  sub_228392000();

  sub_228391540();
  v27 = [a1 UUID];
  sub_22838F480();

  v46 = sub_22838F450();
  v45 = v28;
  (*(v18 + 8))(v20, v17);
  v29 = v43;
  v62[3] = v43;
  v62[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);
  (*(v21 + 16))(boxed_opaque_existential_1, v23, v29);
  sub_2281A629C(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
  sub_2283912F0();
  *(swift_allocObject() + 16) = xmmword_228397F40;
  v32 = v47;
  v31 = v48;
  (*(v47 + 104))(v16, *MEMORY[0x277D74A98], v48);
  v33 = sub_228391230();
  (*(*(v33 - 8) + 56))(v50, 1, 1, v33);
  v34 = v49;
  sub_228391290();
  sub_228391260();
  (*(v51 + 8))(v34, v52);
  (*(v32 + 8))(v16, v31);
  v35 = *(v57 + qword_27D824160);
  v36 = swift_allocObject();
  v37 = v44;
  *(v36 + 16) = v44;
  *(v36 + 24) = v35;
  (*(v54 + 104))(v53, *MEMORY[0x277D10F98], v55);
  v38 = sub_2283913A0();
  (*(*(v38 - 8) + 56))(v56, 1, 1, v38);
  (*(v59 + 104))(v58, *MEMORY[0x277D11140], v60);
  v39 = v35;
  v40 = v37;
  sub_228390160();
  return (*(v21 + 8))(v23, v29);
}

void sub_2281A597C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_22838FA40();
  v4 = sub_22838FA30();
  v7 = sub_22838FA20();

  v5 = [a1 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 pushViewController:v7 animated:1];
  }
}

uint64_t sub_2281A5A28(uint64_t a1, uint64_t a2)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390010();
  v6 = sub_2283900C0();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_2281A5AFC()
{
}

void *RelatedCHRRecordsDataSource.deinit()
{
  v1 = qword_27D824168;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_228393080();
    sub_228391820();
    sub_2281A60D8(&qword_27D824180, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    result = sub_2283924C0();
    v5 = v19;
    v4 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v7 = 0;
    v5 = v2;
  }

  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v7;
    v13 = v8;
    v14 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
LABEL_18:
      sub_228176F04(v5);

      v17 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

      return v17;
    }

    while (1)
    {
      sub_228391810();

      v7 = v14;
      v8 = v15;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_228393100())
      {
        sub_228391820();
        swift_dynamicCast();
        v14 = v7;
        v15 = v8;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v6 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t RelatedCHRRecordsDataSource.__deallocating_deinit()
{
  RelatedCHRRecordsDataSource.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall RelatedCHRRecordsDataSource.registerCells(for:)(UICollectionView *a1)
{
  sub_228390120();
  sub_2283926D0();
  sub_2283904F0();
  sub_2283926B0();
}

uint64_t sub_2281A5EE4()
{
  sub_228390120();
  sub_2283926D0();
  sub_2283904F0();
  return sub_2283926B0();
}

uint64_t RelatedCHRRecordsDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_228391590();
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228391500();
  v3 = sub_22838FB60();
  swift_allocObject();
  v4 = sub_22838FB50();
  a1[3] = v3;
  result = sub_2281A60D8(&qword_27D823960, MEMORY[0x277D10E18], MEMORY[0x277D10E08]);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_2281A60D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for RelatedCHRRecordsDataSource(uint64_t a1)
{
  result = qword_27D824190;
  if (!qword_27D824190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2281A629C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2281A6308(uint64_t a1)
{
  if (!qword_27D8241A0)
  {
    sub_2281A63F4(255);
    sub_2281A64F8(255);
    sub_2281A60D8(&qword_27D8241C8, sub_2281A63F4, MEMORY[0x277CBCD90]);
    sub_2281A60D8(&qword_27D8241D0, sub_2281A64F8, MEMORY[0x277CBCBA0]);
    v1 = sub_228391780();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8241A0);
    }
  }
}

void sub_2281A63F4(uint64_t a1)
{
  if (!qword_27D8241A8)
  {
    sub_2281A6490(255, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0, MEMORY[0x277D83D88]);
    sub_228192C1C();
    v1 = sub_2283917F0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8241A8);
    }
  }
}

void sub_2281A6490(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_22817A958(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2281A64F8(uint64_t a1)
{
  if (!qword_27D8241B0)
  {
    sub_2281A65B4(255);
    sub_228192C1C();
    sub_2281A60D8(&qword_27D8241C0, sub_2281A65B4, MEMORY[0x277CBCE48]);
    v1 = sub_228391710();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8241B0);
    }
  }
}

void sub_2281A65B4(uint64_t a1)
{
  if (!qword_27D8241B8)
  {
    sub_22817A958(255, &qword_280DDB9E0, 0x277D115B8);
    v1 = sub_228391880();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8241B8);
    }
  }
}

void sub_2281A662C(uint64_t a1)
{
  if (!qword_27D8241D8)
  {
    sub_2281A6308(255);
    sub_22817A958(255, &qword_27D823BD8, 0x277CCD1B0);
    sub_2281A60D8(&qword_27D8241E0, sub_2281A6308, MEMORY[0x277CBCCE0]);
    v1 = sub_2283916D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8241D8);
    }
  }
}

void sub_2281A66E8(uint64_t a1)
{
  if (!qword_27D8241E8)
  {
    sub_2281A67D4(255);
    sub_2281A662C(255);
    sub_2281A60D8(&qword_27D824208, sub_2281A67D4, MEMORY[0x277CBCD90]);
    sub_2281A60D8(&qword_27D824210, sub_2281A662C, MEMORY[0x277CBCB10]);
    v1 = sub_228391780();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8241E8);
    }
  }
}

void sub_2281A67D4(uint64_t a1)
{
  if (!qword_27D8241F0)
  {
    sub_2281A6490(255, &qword_27D8241F8, &qword_27D824200, 0x277CCD5F8, MEMORY[0x277D83940]);
    sub_228192C1C();
    v1 = sub_2283917F0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8241F0);
    }
  }
}

void sub_2281A6870(uint64_t a1)
{
  if (!qword_27D824218)
  {
    sub_2281A66E8(255);
    sub_2281A60D8(&qword_27D824220, sub_2281A66E8, MEMORY[0x277CBCCE0]);
    v1 = sub_228391700();
    if (!v2)
    {
      atomic_store(v1, &qword_27D824218);
    }
  }
}

void sub_2281A6904(uint64_t a1)
{
  if (!qword_27D824228)
  {
    sub_2281A6870(255);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_2281A60D8(&qword_27D824230, sub_2281A6870, MEMORY[0x277CBCB78]);
    sub_2281A1504();
    v1 = sub_2283917D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D824228);
    }
  }
}

uint64_t sub_2281A69D8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_228318E64(*a1);
  *a2 = result;
  return result;
}

id sub_2281A6A1C()
{
  sub_2281A99B0(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 48);
  if (v4)
  {
    v5 = *(v0 + 48);
  }

  else
  {
    v6 = sub_228390D50();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_228392AC0();
    v9 = sub_2281BF3D4(1, v3, v7, v8);
    sub_2281A9A08(v3);
    v10 = *(v0 + 48);
    *(v0 + 48) = v9;
    v5 = v9;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

uint64_t MedmojiImageCache.__allocating_init(listManager:imageDimension:includeArchived:)(uint64_t a1, char a2, double a3)
{
  v6 = swift_allocObject();
  *(v6 + 40) = sub_2281A8F00(MEMORY[0x277D84F90], sub_2281A9A64, sub_2281A78C0);
  *(v6 + 48) = 0;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  *(v6 + 32) = a2;
  sub_2281A6D7C();
  return v6;
}

uint64_t MedmojiImageCache.init(listManager:imageDimension:includeArchived:)(uint64_t a1, char a2, double a3)
{
  *(v3 + 40) = sub_2281A8F00(MEMORY[0x277D84F90], sub_2281A9A64, sub_2281A78C0);
  *(v3 + 48) = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  *(v3 + 32) = a2;

  sub_2281A6D7C();

  return v3;
}

id sub_2281A6C44(void *a1)
{
  v2 = [a1 semanticIdentifier];
  swift_beginAccess();
  v3 = *(v1 + 40);
  if ((v3 & 0xC000000000000001) != 0)
  {

    v4 = v2;
    v5 = sub_2283932D0();

    if (!v5 || (sub_22817A958(0, &qword_280DDB980, 0x277D755B8), swift_dynamicCast(), (v6 = v11) == 0))
    {
LABEL_8:
      v6 = sub_2281A6A1C();
    }
  }

  else
  {
    v7 = *(v3 + 16);

    if (!v7)
    {
      goto LABEL_8;
    }

    v8 = sub_2281A78C0(v2);
    if ((v9 & 1) == 0)
    {
      goto LABEL_8;
    }

    v6 = *(*(v3 + 56) + 8 * v8);
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  return v6;
}

uint64_t sub_2281A6D7C()
{
  v1 = v0;
  sub_2281A99B0(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v88 = v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v85[1] = *(v0 + 16);
  v86 = v85 - v5;
  v6 = sub_228390660();
  v7 = v6;
  v93 = MEMORY[0x277D84F90];
  v8 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
LABEL_57:
    v9 = sub_2283930D0();
  }

  else
  {
    v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9)
  {
    v10 = 0;
    v87 = MEMORY[0x277D84F90];
    while (2)
    {
      v11 = v10;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x22AAB6D80](v11, v7);
        }

        else
        {
          if (v11 >= *(v8 + 16))
          {
            goto LABEL_51;
          }

          v12 = *(v7 + 8 * v11 + 32);
        }

        v13 = v12;
        v10 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        ++v11;
        if (v10 == v9)
        {
          goto LABEL_19;
        }
      }

      MEMORY[0x22AAB5D20]();
      if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2283921E0();
      }

      sub_228392230();
      v87 = v93;
      if (v10 != v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v87 = MEMORY[0x277D84F90];
  }

LABEL_19:

  v14 = v87;
  if (v87 >> 62)
  {
    v15 = sub_2283930D0();
    v7 = v86;
    if (v15)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v15 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = v86;
    if (v15)
    {
LABEL_21:
      v16 = 0;
      v90 = v14 & 0xFFFFFFFFFFFFFF8;
      v91 = v14 & 0xC000000000000001;
      v89 = v15;
      do
      {
        if (v91)
        {
          v18 = MEMORY[0x22AAB6D80](v16, v14);
        }

        else
        {
          if (v16 >= *(v90 + 16))
          {
            goto LABEL_53;
          }

          v18 = *(v14 + 8 * v16 + 32);
        }

        v19 = v18;
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_52;
        }

        v20 = [v18 semanticIdentifier];
        _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
        v21 = sub_228390D50();
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(v7, 1, v21) == 1)
        {
          sub_2281A9A08(v7);
          swift_beginAccess();
        }

        else
        {
          sub_228392AC0();
          v24 = v23;
          v26 = v25;
          v27 = v88;
          (*(v22 + 16))(v88, v7, v21);
          (*(v22 + 56))(v27, 0, 1, v21);
          v28 = sub_2281BF3D4(1, v27, v24, v26);
          v29 = v27;
          v14 = v87;
          sub_2281A9A08(v29);
          (*(v22 + 8))(v7, v21);
          swift_beginAccess();
          if (v28)
          {
            v30 = *(v1 + 40);
            if ((v30 & 0xC000000000000001) != 0)
            {
              if (v30 < 0)
              {
                v31 = *(v1 + 40);
              }

              else
              {
                v31 = v30 & 0xFFFFFFFFFFFFFF8;
              }

              v32 = sub_2283930D0();
              if (__OFADD__(v32, 1))
              {
                goto LABEL_55;
              }

              *(v1 + 40) = sub_2281A8348(v31, v32 + 1);
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v92 = *(v1 + 40);
            v34 = v92;
            *(v1 + 40) = 0x8000000000000000;
            v36 = sub_2281A78C0(v20);
            v37 = v34[2];
            v38 = (v35 & 1) == 0;
            v39 = v37 + v38;
            if (__OFADD__(v37, v38))
            {
              goto LABEL_54;
            }

            v7 = v35;
            if (v34[3] >= v39)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v42 = v92;
                if ((v35 & 1) == 0)
                {
                  goto LABEL_47;
                }
              }

              else
              {
                sub_22829B154();
                v42 = v92;
                if ((v7 & 1) == 0)
                {
                  goto LABEL_47;
                }
              }
            }

            else
            {
              sub_228299910(v39, isUniquelyReferenced_nonNull_native);
              v40 = sub_2281A78C0(v20);
              if ((v7 & 1) != (v41 & 1))
              {
LABEL_114:
                sub_22817A958(0, &qword_27D8242E8, 0x277CCDB40);
                result = sub_2283934A0();
                __break(1u);
                return result;
              }

              v36 = v40;
              v42 = v92;
              if ((v7 & 1) == 0)
              {
LABEL_47:
                v42[(v36 >> 6) + 8] |= 1 << v36;
                *(v42[6] + 8 * v36) = v20;
                *(v42[7] + 8 * v36) = v28;
                v45 = v42[2];
                v46 = __OFADD__(v45, 1);
                v47 = v45 + 1;
                if (v46)
                {
                  goto LABEL_56;
                }

                v42[2] = v47;
                goto LABEL_49;
              }
            }

            v43 = v42[7];
            v44 = *(v43 + 8 * v36);
            *(v43 + 8 * v36) = v28;

LABEL_49:
            *(v1 + 40) = v42;
            v7 = v86;
            v14 = v87;
            goto LABEL_24;
          }
        }

        v17 = sub_2281A81FC(v20);

LABEL_24:
        swift_endAccess();

        ++v16;
      }

      while (v8 != v89);
    }
  }

  if (*(v1 + 32) != 1)
  {
    return result;
  }

  v49 = sub_228390650();
  v50 = v49;
  v93 = MEMORY[0x277D84F90];
  v51 = v49 & 0xFFFFFFFFFFFFFF8;
  if (v49 >> 62)
  {
LABEL_78:
    v52 = sub_2283930D0();
    if (v52)
    {
LABEL_62:
      v53 = 0;
      v54 = MEMORY[0x277D84F90];
      do
      {
        v55 = v53;
        while (1)
        {
          if ((v50 & 0xC000000000000001) != 0)
          {
            v56 = MEMORY[0x22AAB6D80](v55, v50);
          }

          else
          {
            if (v55 >= *(v51 + 16))
            {
              goto LABEL_77;
            }

            v56 = *(v50 + 8 * v55 + 32);
          }

          v57 = v56;
          v53 = v55 + 1;
          if (__OFADD__(v55, 1))
          {
            __break(1u);
LABEL_77:
            __break(1u);
            goto LABEL_78;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v55;
          if (v53 == v52)
          {
            goto LABEL_80;
          }
        }

        MEMORY[0x22AAB5D20]();
        if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2283921E0();
        }

        sub_228392230();
        v54 = v93;
      }

      while (v53 != v52);
      goto LABEL_80;
    }
  }

  else
  {
    v52 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v52)
    {
      goto LABEL_62;
    }
  }

  v54 = MEMORY[0x277D84F90];
LABEL_80:

  if (v54 >> 62)
  {
    goto LABEL_111;
  }

  for (i = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v59 = 0;
    v90 = v54 & 0xFFFFFFFFFFFFFF8;
    v91 = v54 & 0xC000000000000001;
    v89 = v54;
    while (1)
    {
      if (v91)
      {
        v62 = MEMORY[0x22AAB6D80](v59, v54);
      }

      else
      {
        if (v59 >= *(v90 + 16))
        {
          goto LABEL_107;
        }

        v62 = *(v54 + 8 * v59 + 32);
      }

      v63 = v62;
      v64 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      v65 = [v62 semanticIdentifier];
      v66 = v88;
      _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
      sub_228392AC0();
      v69 = sub_2281BF3D4(1, v66, v67, v68);
      sub_2281A9A08(v66);
      swift_beginAccess();
      v70 = *(v1 + 40);
      if ((v70 & 0xC000000000000001) != 0)
      {
        if (v70 < 0)
        {
          v71 = *(v1 + 40);
        }

        else
        {
          v71 = v70 & 0xFFFFFFFFFFFFFF8;
        }

        v72 = sub_2283930D0();
        if (__OFADD__(v72, 1))
        {
          goto LABEL_109;
        }

        *(v1 + 40) = sub_2281A8348(v71, v72 + 1);
      }

      v73 = swift_isUniquelyReferenced_nonNull_native();
      v92 = *(v1 + 40);
      v74 = v92;
      *(v1 + 40) = 0x8000000000000000;
      v75 = sub_2281A78C0(v65);
      v77 = v74[2];
      v78 = (v76 & 1) == 0;
      v46 = __OFADD__(v77, v78);
      v79 = v77 + v78;
      if (v46)
      {
        goto LABEL_108;
      }

      v54 = v76;
      if (v74[3] < v79)
      {
        sub_228299910(v79, v73);
        v75 = sub_2281A78C0(v65);
        if ((v54 & 1) != (v80 & 1))
        {
          goto LABEL_114;
        }

LABEL_100:
        v81 = v92;
        if (v54)
        {
          goto LABEL_83;
        }

        goto LABEL_101;
      }

      if (v73)
      {
        goto LABEL_100;
      }

      v84 = v75;
      sub_22829B154();
      v75 = v84;
      v81 = v92;
      if (v54)
      {
LABEL_83:
        v60 = v81[7];
        v61 = *(v60 + 8 * v75);
        *(v60 + 8 * v75) = v69;

        goto LABEL_84;
      }

LABEL_101:
      v81[(v75 >> 6) + 8] |= 1 << v75;
      *(v81[6] + 8 * v75) = v65;
      *(v81[7] + 8 * v75) = v69;
      v82 = v81[2];
      v46 = __OFADD__(v82, 1);
      v83 = v82 + 1;
      if (v46)
      {
        goto LABEL_110;
      }

      v81[2] = v83;
LABEL_84:
      *(v1 + 40) = v81;
      swift_endAccess();

      ++v59;
      v54 = v89;
      if (v64 == i)
      {
      }
    }

    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    ;
  }
}

uint64_t MedmojiImageCache.deinit()
{

  return v0;
}

uint64_t MedmojiImageCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_2281A76E0(uint64_t a1, uint64_t a2)
{
  sub_228393520();
  sub_2283920B0();
  v4 = sub_228393570();

  return sub_2281A7CA0(a1, a2, v4);
}

unint64_t sub_2281A7758(uint64_t a1)
{
  v2 = sub_228393140();

  return sub_2281A7D58(a1, v2);
}

unint64_t sub_2281A779C(uint64_t a1)
{
  sub_228391130();
  v2 = MEMORY[0x277D11768];
  sub_2281A930C(&qword_27D8242E0, MEMORY[0x277D11768], MEMORY[0x277D11770]);
  v3 = sub_228391F60();
  return sub_2281A7FF0(a1, v3, MEMORY[0x277D11768], &qword_280DDBD08, v2, MEMORY[0x277D11778]);
}

unint64_t sub_2281A7960(uint64_t a1)
{
  sub_228393520();
  MEMORY[0x22AAB70D0](a1);
  v2 = sub_228393570();
  return sub_2281A8190(a1, v2);
}

unint64_t sub_2281A79C8(uint64_t a1)
{
  sub_228390E20();
  v2 = MEMORY[0x277D116F0];
  sub_2281A930C(&qword_27D8242A0, MEMORY[0x277D116F0], MEMORY[0x277D116F8]);
  v3 = sub_228391F60();
  return sub_2281A7FF0(a1, v3, MEMORY[0x277D116F0], &qword_27D8242A8, v2, MEMORY[0x277D11700]);
}

unint64_t sub_2281A7A9C(uint64_t a1)
{
  sub_228392000();
  sub_228393520();
  sub_2283920B0();
  v2 = sub_228393570();

  return sub_2281A7EEC(a1, v2);
}

unint64_t sub_2281A7B7C(uint64_t a1)
{
  sub_22838EF60();
  v2 = MEMORY[0x277CC88A8];
  sub_2281A930C(&unk_280DDCE00, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
  v3 = sub_228391F60();
  return sub_2281A7FF0(a1, v3, MEMORY[0x277CC88A8], &qword_280DDCDF8, v2, MEMORY[0x277CC88C8]);
}

unint64_t sub_2281A7CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_228393460())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2281A7D58(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2281A9900(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x22AAB6CF0](v9, a1);
      sub_2281A995C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2281A7E20(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_22817A958(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_228392C60();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_2281A7EEC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_228392000();
      v8 = v7;
      if (v6 == sub_228392000() && v8 == v9)
      {
        break;
      }

      v11 = sub_228393460();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2281A7FF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_2281A930C(v23, v24, v25);
      v19 = sub_228391FB0();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_2281A8190(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_2281A81FC(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_2281A78C0(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_2282E6F24(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_22829B154();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_2283932D0();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_2283930D0();
  v8 = sub_2281A8348(v4, v7);

  v9 = sub_2281A78C0(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_2282E6F24(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_2281A8348(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_2281A9A64(0);
    v2 = sub_228393350();
    v19 = v2;
    sub_2283932B0();
    v3 = sub_2283932E0();
    if (v3)
    {
      v4 = v3;
      sub_22817A958(0, &qword_27D8242E8, 0x277CCDB40);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_22817A958(0, &qword_280DDB980, 0x277D755B8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_228299910(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_228392C50();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_2283932E0();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

unint64_t sub_2281A8644(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2281A9630();
    v3 = sub_228393360();
    v4 = a1 + 32;

    while (1)
    {
      sub_2281A9694(v4, &v13, sub_2281A96FC);
      v5 = v13;
      v6 = v14;
      result = sub_2281A76E0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22819A2AC(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2281A875C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2281A8840(0);
    v3 = sub_228393360();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_2281A7870(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2281A8840(uint64_t a1)
{
  if (!qword_27D824248)
  {
    sub_22817A958(255, &qword_27D824240, 0x277CCDA00);
    sub_2281A89C4(&qword_27D827840, &qword_27D824240, 0x277CCDA00);
    v1 = sub_228393370();
    if (!v2)
    {
      atomic_store(v1, &qword_27D824248);
    }
  }
}

void sub_2281A8908(uint64_t a1)
{
  if (!qword_27D824250)
  {
    sub_22817A958(255, &qword_27D824258, 0x277CCD4B0);
    sub_22817A958(255, &qword_280DDB960, 0x277CCABB0);
    sub_2281A89C4(&qword_27D824260, &qword_27D824258, 0x277CCD4B0);
    v1 = sub_228393370();
    if (!v2)
    {
      atomic_store(v1, &qword_27D824250);
    }
  }
}

uint64_t sub_2281A89C4(unint64_t *a1, unint64_t *a2, void *a3)
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

unint64_t sub_2281A8A14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2281A9760(0);
    v3 = sub_228393360();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_2281A7960(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2281A8AE4(uint64_t a1)
{
  sub_2281A9354(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2281A93BC(0);
    v8 = sub_228393360();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_2281A9694(v10, v6, sub_2281A9354);
      v12 = *v6;
      v13 = v6[1];
      result = sub_2281A76E0(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for Dosage(0);
      result = sub_2281A9424(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2281A8CA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2281A9594(0);
    v3 = sub_228393360();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_2281A7A9C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2281A8DBC(uint64_t a1, void (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    a2(0);
    v8 = sub_228393360();
    v9 = a1 + 32;

    while (1)
    {
      sub_2281A9528(v9, &v16, a3, a4);
      v10 = v16;
      result = sub_2281A7A9C(v16);
      if (v12)
      {
        break;
      }

      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v10;
      result = sub_22819A2AC(&v17, (v8[7] + 32 * result));
      v13 = v8[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v8[2] = v15;
      v9 += 40;
      if (!--v4)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2281A8F00(uint64_t a1, void (*a2)(void), uint64_t (*a3)(id))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    a2(0);
    v6 = sub_228393360();

    for (i = (a1 + 40); ; i += 2)
    {
      v8 = *i;
      v9 = *(i - 1);
      v10 = v8;
      result = a3(v9);
      if (v12)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v6[6] + 8 * result) = v9;
      *(v6[7] + 8 * result) = v10;
      v13 = v6[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v6[2] = v15;
      if (!--v3)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2281A8FF8(uint64_t a1)
{
  if (!qword_27D824268)
  {
    sub_22817A958(255, &qword_280DDB960, 0x277CCABB0);
    sub_22817A958(255, &qword_27D824270, 0x277D12B30);
    sub_2281A89C4(&qword_280DDB958, &qword_280DDB960, 0x277CCABB0);
    v1 = sub_228393370();
    if (!v2)
    {
      atomic_store(v1, &qword_27D824268);
    }
  }
}

unint64_t sub_2281A90CC(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

  a2(0);
  v4 = sub_228393360();
  v5 = *(a1 + 32);
  v17 = *(a1 + 40);
  v6 = *(a1 + 56);
  result = sub_2281A7960(v5);
  v8 = v17;
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v4;
  }

  v10 = (a1 + 88);
  while (1)
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v4[6] + 8 * result) = v5;
    v11 = v4[7] + 24 * result;
    *v11 = v8;
    *(v11 + 16) = v6;
    v12 = v4[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v4[2] = v14;
    if (!--v2)
    {
      goto LABEL_8;
    }

    v15 = v10 + 4;
    v5 = *(v10 - 3);
    v18 = *(v10 - 1);
    v6 = *v10;
    swift_unknownObjectRetain();
    result = sub_2281A7960(v5);
    v10 = v15;
    v8 = v18;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_2281A91F8(uint64_t a1)
{
  if (!qword_27D824278)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    sub_2281A92A4();
    sub_2281A930C(&qword_27D824288, type metadata accessor for UIUserInterfaceSizeClass, &unk_228397CEC);
    v1 = sub_228393370();
    if (!v2)
    {
      atomic_store(v1, &qword_27D824278);
    }
  }
}

unint64_t sub_2281A92A4()
{
  result = qword_27D824280;
  if (!qword_27D824280)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D824280);
  }

  return result;
}

uint64_t sub_2281A930C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2281A9354(uint64_t a1)
{
  if (!qword_27D824290)
  {
    type metadata accessor for Dosage(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D824290);
    }
  }
}

void sub_2281A93BC(uint64_t a1)
{
  if (!qword_27D824298)
  {
    type metadata accessor for Dosage(255);
    v1 = sub_228393370();
    if (!v2)
    {
      atomic_store(v1, &qword_27D824298);
    }
  }
}

uint64_t sub_2281A9424(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Dosage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2281A9488(uint64_t a1)
{
  if (!qword_27D8242B0)
  {
    type metadata accessor for AttributeName(255);
    sub_2281A930C(&qword_27D8236C8, type metadata accessor for AttributeName, &unk_228397C64);
    v1 = sub_228393370();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8242B0);
    }
  }
}

uint64_t sub_2281A9528(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2281A9898(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2281A9594(uint64_t a1)
{
  if (!qword_27D8242C0)
  {
    type metadata accessor for FeatureKey(255);
    sub_2281A930C(&qword_27D8236B8, type metadata accessor for FeatureKey, &unk_228397CA8);
    v1 = sub_228393370();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8242C0);
    }
  }
}

void sub_2281A9630()
{
  if (!qword_27D8283C0)
  {
    v0 = sub_228393370();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8283C0);
    }
  }
}

uint64_t sub_2281A9694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2281A96FC()
{
  if (!qword_27D8242C8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8242C8);
    }
  }
}

void sub_2281A9760(uint64_t a1)
{
  if (!qword_27D8242D0)
  {
    type metadata accessor for HKMedicationScheduleType(255);
    sub_2281A930C(&qword_27D8242D8, type metadata accessor for HKMedicationScheduleType, &unk_228396CB8);
    v1 = sub_228393370();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8242D0);
    }
  }
}

void sub_2281A97F8(uint64_t a1)
{
  if (!qword_280DDB908)
  {
    type metadata accessor for Key(255);
    sub_2281A930C(&qword_280DDBA40, type metadata accessor for Key, &unk_22839759C);
    v1 = sub_228393370();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDB908);
    }
  }
}

void sub_2281A9898(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_2281A99B0(uint64_t a1)
{
  if (!qword_280DDBD20)
  {
    sub_228390D50();
    v1 = sub_228392F00();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDBD20);
    }
  }
}

uint64_t sub_2281A9A08(uint64_t a1)
{
  sub_2281A99B0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2281A9A64(uint64_t a1)
{
  if (!qword_27D8242F0)
  {
    sub_22817A958(255, &qword_27D8242E8, 0x277CCDB40);
    sub_22817A958(255, &qword_280DDB980, 0x277D755B8);
    sub_2281A89C4(&qword_27D8242F8, &qword_27D8242E8, 0x277CCDB40);
    v1 = sub_228393370();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8242F0);
    }
  }
}

void sub_2281A9B20(uint64_t a1)
{
  if (!qword_27D824300)
  {
    type metadata accessor for HKMedicationScheduleType(255);
    sub_2281A92A4();
    sub_2281A930C(&qword_27D8242D8, type metadata accessor for HKMedicationScheduleType, &unk_228396CB8);
    v1 = sub_228393370();
    if (!v2)
    {
      atomic_store(v1, &qword_27D824300);
    }
  }
}

uint64_t sub_2281A9D04(uint64_t a1)
{
  _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_2281A9D3C()
{
  v1 = *v0;
  type metadata accessor for MedicationInfoItemCell();
  sub_2281AA03C(&qword_27D824338, type metadata accessor for MedicationInfoItemCell, &protocol conformance descriptor for MedicationInfoItemCell);
  sub_2283926B0();
  if (*(v1 + qword_27D824318))
  {
    type metadata accessor for MedicationMarkdownItemCell();
    v2 = &qword_27D824340;
    v3 = type metadata accessor for MedicationMarkdownItemCell;
    v4 = &protocol conformance descriptor for MedicationMarkdownItemCell;
  }

  else
  {
    type metadata accessor for MedicationSideEffectsItemCell();
    v2 = &qword_27D823838;
    v3 = type metadata accessor for MedicationSideEffectsItemCell;
    v4 = &protocol conformance descriptor for MedicationSideEffectsItemCell;
  }

  sub_2281AA03C(v2, v3, v4);
  return sub_2283926B0();
}

uint64_t sub_2281A9E58(uint64_t a1, uint64_t a2)
{
  v3 = sub_2283900D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_228390040();
  if (a1)
  {
    v7 = -10.0;
  }

  else
  {
    v7 = 10.0;
  }

  v8 = sub_228390090();
  *v9 = v7;
  v8(v12, 0);
  v10 = sub_2283900C0();
  (*(v4 + 8))(v6, v3);
  return v10;
}

uint64_t sub_2281AA03C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2281AA084(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v80 = a5;
  v78 = a3;
  *&v79 = a4;
  v86 = sub_22838F4A0();
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22838FEF0();
  v88 = *(v16 - 8);
  v89 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v87 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v83 = &v77 - v19;
  sub_2281AA968(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v77 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v26;
  (*(v26 + 32))(v25, a2, a8);
  v27 = *a1;
  v90 = a7;
  *(a7 + qword_27D824318) = v27;
  if (v27)
  {
    LOBYTE(v91[0]) = v27;
    v28 = a6;
    v29 = sub_228236718(v25, v91, a8, a9);
    v30 = type metadata accessor for MedicationMarkdownItem();
    v31 = swift_allocObject();
    type metadata accessor for MedicationMarkdownItemCell();
    sub_2281AA03C(&qword_27D824340, type metadata accessor for MedicationMarkdownItemCell, &protocol conformance descriptor for MedicationMarkdownItemCell);
    *(v31 + 16) = sub_22838FBB0();
    *(v31 + 24) = v32;
    v33 = v79;
    *(v31 + 32) = v78;
    *(v31 + 40) = v33;
    *(v31 + 48) = v80;
    *(v31 + 56) = v28;
    *(v31 + 64) = v29 & 1;
    v34 = &unk_27D824350;
    v35 = type metadata accessor for MedicationMarkdownItem;
    v36 = &unk_22839D100;
  }

  else
  {
    v30 = type metadata accessor for MedicationSideEffectsItem();
    v31 = swift_allocObject();
    type metadata accessor for MedicationSideEffectsItemCell();
    sub_2281AA03C(&qword_27D823838, type metadata accessor for MedicationSideEffectsItemCell, &protocol conformance descriptor for MedicationSideEffectsItemCell);
    *(v31 + 16) = sub_22838FBB0();
    *(v31 + 24) = v37;
    v38 = v79;
    *(v31 + 32) = v78;
    *(v31 + 40) = v38;
    *(v31 + 48) = v80;
    *(v31 + 56) = a6;
    v34 = &unk_27D824360;
    v35 = type metadata accessor for MedicationSideEffectsItem;
    v36 = &unk_22839ED8C;
  }

  v39 = sub_2281AA03C(v34, v35, v36);
  v92 = v30;
  v93 = v39;
  v91[0] = v31;
  (*(a9 + 16))(a8, a9);
  v40 = v25;
  v41 = (*(a9 + 24))(a8, a9);
  v43 = v42;
  v44 = *(a9 + 32);
  v82 = v40;
  v45 = v44(a8, a9);
  if (v46)
  {
    v47 = v45;
  }

  else
  {
    v47 = 0;
  }

  v48 = a8;
  v81 = a8;
  if (v46)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0xE000000000000000;
  }

  v50 = (*(a9 + 40))(v48, a9);
  if (v50)
  {
    v51 = v50;
  }

  else
  {
    v51 = MEMORY[0x277D84F90];
  }

  v52 = type metadata accessor for MedicationInfoItem(0);
  v53 = swift_allocObject();
  type metadata accessor for MedicationInfoItemCell();
  sub_2281AA03C(&qword_27D824338, type metadata accessor for MedicationInfoItemCell, &protocol conformance descriptor for MedicationInfoItemCell);
  *(v53 + 16) = sub_22838FBB0();
  *(v53 + 24) = v54;
  sub_2281AA8D4(v23, v53 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_medmoji);
  v55 = (v53 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_name);
  *v55 = v41;
  v55[1] = v43;
  v56 = (v53 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_strength);
  *v56 = v47;
  v56[1] = v49;
  *(v53 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_ingredients) = v51;
  v80 = MEMORY[0x277D84560];
  sub_2281AA968(0, &qword_27D823918, sub_228182780, MEMORY[0x277D84560]);
  v57 = swift_allocObject();
  v79 = xmmword_228397F40;
  *(v57 + 16) = xmmword_228397F40;
  *(v57 + 56) = v52;
  *(v57 + 64) = sub_2281AA03C(&qword_27D824358, type metadata accessor for MedicationInfoItem, &protocol conformance descriptor for MedicationInfoItem);
  *(v57 + 32) = v53;

  sub_22838F490();
  sub_22838F450();
  v58 = *(v84 + 8);
  v59 = v86;
  v58(v15, v86);
  v60 = v83;
  sub_22838FED0();
  v61 = swift_allocObject();
  *(v61 + 16) = v79;
  v62 = v92;
  v63 = v93;
  v64 = __swift_project_boxed_opaque_existential_0(v91, v92);
  *(v61 + 56) = v62;
  *(v61 + 64) = *(v63 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v61 + 32));
  (*(*(v62 - 8) + 16))(boxed_opaque_existential_1, v64, v62);
  sub_22838F490();
  sub_22838F450();
  v58(v15, v59);
  v66 = v87;
  sub_22838FED0();
  sub_2281AA968(0, &qword_27D823910, MEMORY[0x277D10F78], v80);
  v67 = v88;
  v68 = *(v88 + 72);
  v69 = (*(v88 + 80) + 32) & ~*(v88 + 80);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_228397F30;
  v71 = v70 + v69;
  v72 = *(v67 + 16);
  v73 = v89;
  v72(v71, v60, v89);
  v72(v71 + v68, v66, v73);
  v74 = sub_22838F920();

  v75 = *(v67 + 8);
  v75(v66, v73);
  v75(v60, v73);
  __swift_destroy_boxed_opaque_existential_0(v91);
  (*(v85 + 8))(v82, v81);
  return v74;
}

uint64_t sub_2281AA8D4(uint64_t a1, uint64_t a2)
{
  sub_2281AA968(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2281AA968(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for MedicationHighlightsDataSource(uint64_t a1)
{
  result = qword_27D824368;
  if (!qword_27D824368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2281AAA88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationHighlightsDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2281AAAC8(uint64_t a1)
{
  v2 = sub_22838FC60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838FC50();
  v6 = sub_22838FC40();
  if (v1)
  {
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    v8 = [objc_opt_self() estimatedDimension_];
    v2 = sub_228392910();
  }

  return v2;
}

unint64_t sub_2281AAC18@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_228391590();
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228391500();
  v3 = sub_22838FB60();
  swift_allocObject();
  v4 = sub_22838FB50();
  a1[3] = v3;
  result = sub_2281AAD8C();
  a1[4] = result;
  *a1 = v4;
  return result;
}

unint64_t sub_2281AAD8C()
{
  result = qword_27D823960;
  if (!qword_27D823960)
  {
    sub_22838FB60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D823960);
  }

  return result;
}

uint64_t sub_2281AADE4(uint64_t a1, void *a2)
{
  sub_2281AB298(0, &unk_280DDCF40, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  sub_22838F8B0();
  v7 = MEMORY[0x22AAB3440]();
  v8 = [a2 semanticIdentifier];
  v9 = [v8 stringValue];

  sub_228392000();
  v10 = sub_22838F890();

  sub_2281AB298(0, &qword_27D824378, MEMORY[0x277D11E28], MEMORY[0x277D84560]);
  v11 = sub_22838F820();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_228397F40;
  (*(v12 + 104))(v14 + v13, *MEMORY[0x277D11E18], v11);
  sub_22838F840();
  v15 = sub_22838EF60();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  sub_2281AB388(0, &qword_27D824380, MEMORY[0x277D11E90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_228397F30;
  *(v16 + 32) = sub_22838F830();
  *(v16 + 40) = 0;
  v17 = sub_22838F880();

  sub_2281AB2FC(v6);
  sub_2281AB388(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_228397F20;
  *(v18 + 32) = v10;
  *(v18 + 40) = v17;
  sub_22817A958(0, &qword_280DDBB08, 0x277CCAC30);
  v19 = v10;
  v20 = v17;
  v21 = sub_228392190();

  v22 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v7 setPredicate_];
  v23 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v24 = sub_228391FC0();
  v25 = [v23 initWithKey:v24 ascending:0];

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_228396260;
  *(v26 + 32) = v25;
  sub_22817A958(0, &qword_280DDBAE8, 0x277CCAC98);
  v27 = v25;
  v28 = sub_228392190();

  [v7 setSortDescriptors_];

  [objc_allocWithZone(MEMORY[0x277CBE430]) initWithFetchRequest:v7 managedObjectContext:a1 sectionNameKeyPath:0 cacheName:0];
  v29 = sub_2283903F0();

  return v29;
}

void sub_2281AB298(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2281AB2FC(uint64_t a1)
{
  sub_2281AB298(0, &unk_280DDCF40, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2281AB388(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_228393430();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t InteractionResultDetailViewController.firstItemName.getter()
{
  v1 = *(v0 + qword_27D824398);

  return v1;
}

uint64_t InteractionResultDetailViewController.secondItemName.getter()
{
  v1 = *(v0 + qword_27D8243B0);

  return v1;
}

id InteractionResultDetailViewController.__allocating_init(interactionResults:stackedMemojiDisplayable:firstItemName:firstItemDetailsProviding:firstItemIngredients:secondItemName:secondItemDetailsProviding:secondItemIngredients:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v11 = v10;
  v19 = objc_allocWithZone(v11);
  *&v19[qword_27D824388] = a1;
  v31 = a2;
  v20 = a2;
  v21 = a5;
  sub_228180FB0(v20, &v19[qword_27D824390]);
  v22 = &v19[qword_27D824398];
  *v22 = a3;
  *(v22 + 1) = a4;
  sub_228180FB0(a5, &v19[qword_27D8243A0]);
  *&v19[qword_27D8243A8] = a6;
  v23 = &v19[qword_27D8243B0];
  *v23 = a7;
  *(v23 + 1) = a8;
  sub_228180FB0(a9, &v19[qword_27D8243B8]);
  *&v19[qword_27D8243C0] = a10;
  v32.receiver = v19;
  v32.super_class = v11;

  v24 = objc_msgSendSuper2(&v32, sel_initWithCollectionViewLayout_, 0);
  v25 = qword_280DDCF18;
  v26 = v24;
  if (v25 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v27 = sub_228391FC0();

  [v26 setTitle_];

  v28 = [v26 navigationItem];
  [v28 setLargeTitleDisplayMode_];

  [v26 setModalPresentationStyle_];

  __swift_destroy_boxed_opaque_existential_0(a9);
  __swift_destroy_boxed_opaque_existential_0(v21);
  __swift_destroy_boxed_opaque_existential_0(v31);
  return v26;
}

id InteractionResultDetailViewController.init(interactionResults:stackedMemojiDisplayable:firstItemName:firstItemDetailsProviding:firstItemIngredients:secondItemName:secondItemDetailsProviding:secondItemIngredients:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  *&v10[qword_27D824388] = a1;
  sub_228180FB0(a2, &v10[qword_27D824390]);
  v17 = &v10[qword_27D824398];
  *v17 = a3;
  *(v17 + 1) = a4;
  sub_228180FB0(a5, &v10[qword_27D8243A0]);
  *&v10[qword_27D8243A8] = a6;
  v18 = &v10[qword_27D8243B0];
  *v18 = a7;
  *(v18 + 1) = a8;
  sub_228180FB0(a9, &v10[qword_27D8243B8]);
  *&v10[qword_27D8243C0] = a10;
  v26.receiver = v10;
  v26.super_class = type metadata accessor for InteractionResultDetailViewController(0);

  v19 = objc_msgSendSuper2(&v26, sel_initWithCollectionViewLayout_, 0);
  v20 = qword_280DDCF18;
  v21 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v22 = sub_228391FC0();

  [v21 setTitle_];

  v23 = [v21 navigationItem];
  [v23 setLargeTitleDisplayMode_];

  [v21 setModalPresentationStyle_];

  __swift_destroy_boxed_opaque_existential_0(a9);
  __swift_destroy_boxed_opaque_existential_0(a5);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v21;
}

void sub_2281AB9C8()
{
  v1 = *&v0[qword_27D824388];
  sub_228180FB0(&v0[qword_27D824390], &v19);
  v3 = *&v0[qword_27D824398];
  v2 = *&v0[qword_27D824398 + 8];
  sub_228180FB0(&v0[qword_27D8243A0], v18);
  v4 = *&v0[qword_27D8243A8];
  v6 = *&v0[qword_27D8243B0];
  v5 = *&v0[qword_27D8243B0 + 8];
  sub_228180FB0(&v0[qword_27D8243B8], v17);
  v7 = *&v0[qword_27D8243C0];
  v8 = type metadata accessor for InteractionResultDetailDataSourceProvider();
  v9 = swift_allocObject();
  v9[2] = v1;
  sub_22816DFFC(&v19, (v9 + 3));
  v9[8] = v3;
  v9[9] = v2;
  sub_22816DFFC(v18, (v9 + 10));
  v9[15] = v4;
  v9[16] = v6;
  v9[17] = v5;
  sub_22816DFFC(v17, (v9 + 18));
  v9[23] = v7;
  v20 = v8;
  v21 = sub_2281AC7D0();
  *&v19 = v9;

  sub_2283904B0();
  v16.receiver = v0;
  v16.super_class = type metadata accessor for InteractionResultDetailViewController(0);
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  v10 = [v0 collectionView];
  if (v10)
  {
    v11 = v10;
    sub_22817A958(0, &qword_280DDB990, 0x277D75348);
    v12 = objc_opt_self();
    v13 = [v12 secondarySystemBackgroundColor];
    v14 = [v12 systemGroupedBackgroundColor];
    v15 = sub_228392B80();

    [v11 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2281ABBF8(void *a1)
{
  v1 = a1;
  sub_2281AB9C8();
}

id sub_2281ABC40()
{
  sub_2283904D0();
  v1 = sub_2283904E0();
  v1();
  sub_228390470();
  v2 = sub_2283901E0();

  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x277D10F28];
    v7 = MEMORY[0x277D11070];
    v9 = v2;
    while (v5 < *(v2 + 16))
    {
      v12 = *(v2 + 16 * v5 + 32);
      sub_22818217C(0, &qword_27D8238E8, v6, 0);
      sub_22818217C(0, &qword_27D8243D0, v7, 1);
      swift_unknownObjectRetain_n();
      if (swift_dynamicCast())
      {
        sub_22816DFFC(v10, v13);
        __swift_project_boxed_opaque_existential_0(v13, v13[3]);
        result = [v0 collectionView];
        if (!result)
        {
          goto LABEL_14;
        }

        v8 = result;
        sub_2283902B0();

        swift_unknownObjectRelease();
        result = __swift_destroy_boxed_opaque_existential_0(v13);
        v2 = v9;
        v7 = MEMORY[0x277D11070];
      }

      else
      {
        swift_unknownObjectRelease();
        v11 = 0;
        memset(v10, 0, sizeof(v10));
        result = sub_2281AC828(v10, &qword_27D8243D8, &qword_27D8243D0, v7);
      }

      if (v4 == ++v5)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
  }

  return result;
}

void sub_2281ABE84(void *a1, uint64_t a2)
{
  v3 = sub_22838F710();
  [a1 deselectItemAtIndexPath:v3 animated:1];

  v4 = sub_22838F710();
  v5 = [a1 cellForItemAtIndexPath_];

  if (v5)
  {
    sub_228390470();
    sub_2283901F0();
    sub_22838FD60();

    sub_228180FB0(v12, v9);
    sub_22818217C(0, &qword_27D827E00, MEMORY[0x277D10D40], 1);
    sub_22818217C(0, &qword_27D8243E0, MEMORY[0x277D10F68], 1);
    if (swift_dynamicCast())
    {
      v6 = v7;
LABEL_6:
      sub_22816DFFC(v6, v11);
      __swift_project_boxed_opaque_existential_0(v11, v11[3]);
      sub_22838FE30();

      __swift_destroy_boxed_opaque_existential_0(v12);
      __swift_destroy_boxed_opaque_existential_0(v11);
      return;
    }

    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_2281AC828(v7, &qword_27D827780, &qword_27D8243E0, MEMORY[0x277D10F68]);
    *&v7[0] = v5;
    sub_22817A958(0, &qword_27D827770, 0x277D752A8);
    v5 = v5;
    if (swift_dynamicCast())
    {
      v6 = v9;
      goto LABEL_6;
    }

    v10 = 0;
    memset(v9, 0, sizeof(v9));
    __swift_destroy_boxed_opaque_existential_0(v12);
    sub_2281AC828(v9, &qword_27D827780, &qword_27D8243E0, MEMORY[0x277D10F68]);
  }
}

uint64_t sub_2281AC0B8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_22838F760();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  v10 = a3;
  v11 = a1;
  sub_2281ABE84(v10, v9);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2281AC1B4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_228392F90();
  swift_unknownObjectRelease();
  [v4 dismissViewControllerAnimated:1 completion:0];

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

void sub_2281AC228(char a1)
{
  v3 = [v1 navigationItem];
  if (a1)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v1 action:sel_doneButtonTapped_];
  }

  else
  {
    v4 = 0;
  }

  v11[8] = v4;
  sub_22817A958(0, &qword_27D824138, 0x277D751E0);
  v11[3] = type metadata accessor for InteractionResultDetailViewController(0);
  v11[0] = v1;
  v5 = v1;
  v6 = MEMORY[0x22AAB61D0](v11, sel_tapToRadar_);
  sub_2281AC998(v11);
  v7 = 0;
  v11[9] = v6;
  v11[0] = MEMORY[0x277D84F90];
  while (v7 != 2)
  {
    v8 = v11[v7++ + 8];
    if (v8)
    {
      v9 = v8;
      MEMORY[0x22AAB5D20]();
      if (*((v11[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2283921E0();
      }

      sub_228392230();
    }
  }

  sub_2281ACA48(0);
  swift_arrayDestroy();
  v10 = sub_228392190();

  [v3 setRightBarButtonItems_];
}

uint64_t sub_2281AC3F0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_228392F90();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v5 = a1;
  }

  sub_22838F900();
  sub_22838F8F0();

  return sub_2281AC998(v7);
}

id InteractionResultDetailViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

uint64_t sub_2281AC540()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_27D824390));

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_27D8243A0));

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_27D8243B8));
}

id InteractionResultDetailViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionResultDetailViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2281AC620(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_0((a1 + qword_27D824390));

  __swift_destroy_boxed_opaque_existential_0((a1 + qword_27D8243A0));

  __swift_destroy_boxed_opaque_existential_0((a1 + qword_27D8243B8));
}

void sub_2281AC6DC(void *a1)
{
  v1 = a1;
  sub_2281AC228(1);
}

void sub_2281AC734(void *a1)
{
  v1 = a1;
  sub_2281AC228(0);
}

uint64_t type metadata accessor for InteractionResultDetailViewController(uint64_t a1)
{
  result = qword_27D8243E8;
  if (!qword_27D8243E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2281AC7D0()
{
  result = qword_27D8243C8;
  if (!qword_27D8243C8)
  {
    type metadata accessor for InteractionResultDetailDataSourceProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8243C8);
  }

  return result;
}

uint64_t sub_2281AC828(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_2281AC884(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_2281AC884(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_22818217C(255, a3, a4, 1);
    v5 = sub_228392F00();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2281AC998(uint64_t a1)
{
  sub_2281AC9F4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2281AC9F4()
{
  if (!qword_280DDCE20)
  {
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDCE20);
    }
  }
}

void sub_2281ACA48(uint64_t a1)
{
  if (!qword_27D827760)
  {
    sub_22817A958(255, &qword_27D824138, 0x277D751E0);
    v1 = sub_228392F00();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827760);
    }
  }
}

void sub_2281ACAE0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sub_228180ED0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228396260;
  *(v1 + 32) = [objc_opt_self() systemCyanColor];
  sub_2281AF0A0();
  v2 = sub_228392190();

  v3 = objc_opt_self();
  v4 = [v3 configurationWithPaletteColors_];

  v5 = [objc_opt_self() systemFontOfSize_];
  v6 = [v3 configurationWithFont_];

  v7 = [v4 configurationByApplyingConfiguration_];
  v8 = sub_228391FC0();
  v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

  if (v9)
  {

    v10 = type metadata accessor for SymbolWithPlatterView();
    v11 = objc_allocWithZone(v10);
    *&v11[OBJC_IVAR____TtC19HealthMedicationsUI21SymbolWithPlatterView_image] = v9;
    v14.receiver = v11;
    v14.super_class = v10;
    v12 = v9;
    v13 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    sub_228350C6C();
  }

  else
  {
    __break(1u);
  }
}

id sub_2281ACD3C(uint64_t *a1, uint64_t (*a2)(void))
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

id sub_2281ACDD0(uint64_t *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v8 = sub_2281AEECC(a2, a3, a4);
    v9 = *(v4 + v5);
    *(v4 + v5) = v8;
    v7 = v8;

    v6 = 0;
  }

  v10 = v6;
  return v7;
}

uint64_t sub_2281ACE68()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___countLabelConstraints;
  if (*&v0[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___countLabelConstraints])
  {
    v2 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___countLabelConstraints];
  }

  else
  {
    v2 = sub_2281ACED0(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_2281ACED0(char *a1)
{
  sub_228180ED0();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228397F00;
  v3 = sub_2281ACE38();
  v4 = [v3 topAnchor];

  v5 = sub_2281ACD1C();
  v6 = [v5 bottomAnchor];

  v7 = [v4 constraintEqualToAnchor:v6 constant:4.0];
  *(v2 + 32) = v7;
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___countLabel;
  v9 = [*&a1[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___countLabel] leadingAnchor];
  v10 = [a1 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v2 + 40) = v11;
  v12 = [*&a1[v8] trailingAnchor];
  v13 = [a1 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v2 + 48) = v14;
  v15 = [*&a1[v8] bottomAnchor];
  v16 = [a1 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v2 + 56) = v17;
  return v2;
}

uint64_t sub_2281AD0C4()
{
  v1 = sub_2281ACAC0();
  [v0 addSubview_];

  v2 = sub_2281ACD1C();
  [v0 addSubview_];

  v3 = sub_2281ACE38();
  [v0 addSubview_];

  v4 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___iconPlatterView;
  [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___iconPlatterView] setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___titleLabel;
  [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___titleLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___countLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [*&v0[v4] heightAnchor];
  v7 = [v6 constraintEqualToConstant_];

  [v7 setActive_];
  v8 = [*&v0[v4] topAnchor];
  v9 = [v0 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:20.0];

  [v10 setActive_];
  v11 = [*&v0[v4] centerXAnchor];
  v12 = [v0 centerXAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  [v13 setActive_];
  v14 = [*&v0[v5] topAnchor];
  v15 = [*&v0[v4] bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:20.0];

  [v16 setActive_];
  v17 = [*&v0[v5] leadingAnchor];
  v18 = [v0 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  [v19 setActive_];
  v20 = [*&v0[v5] trailingAnchor];
  v21 = [v0 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  [v22 setActive_];
  v23 = sub_2281ACE68();
  v24 = v23;
  if (v23 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v26 = 0;
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x22AAB6D80](v26, v24);
      }

      else
      {
        if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v27 = *(v24 + 8 * v26 + 32);
      }

      v28 = v27;
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      [v27 setActive_];

      ++v26;
      if (v29 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_2281AD4E0(uint64_t a1)
{
  v2 = sub_2281ACD1C();
  type metadata accessor for MedicationsDoseLogHeaderItem(0);
  v3 = sub_228391FC0();
  [v2 setText_];

  v4 = sub_2281ACD9C();
  [v4 setHidden_];

  v5 = sub_2281ACE38();
  [v5 setHidden_];

  v6 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___titleLabel] bottomAnchor];
  v7 = [v1 bottomAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  [v8 setActive_];
  v9 = sub_2281ACE68();
  v10 = v9;
  if (v9 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x22AAB6D80](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      [v13 setActive_];

      ++v12;
      if (v15 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_2281AD6C0(unint64_t a1)
{
  v3 = sub_2281ACD1C();
  v4 = type metadata accessor for MedicationsDoseLogHeaderItem(0);
  v5 = sub_228391FC0();
  v6 = &off_2785F4000;
  [v3 setText_];

  v7 = sub_2281ACD9C();
  [v7 setHidden_];

  v8 = sub_2281ACE38();
  if (qword_280DDCF18 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    sub_22838F0C0();
    sub_2281AEAE8(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_228397F40;
    v10 = *(a1 + *(v4 + 32));
    v11 = MEMORY[0x277D83C10];
    *(v9 + 56) = MEMORY[0x277D83B88];
    *(v9 + 64) = v11;
    *(v9 + 32) = v10;
    sub_228392010();

    v12 = sub_228391FC0();

    [v8 v6[73]];

    v13 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___titleLabel] bottomAnchor];
    v14 = [v1 bottomAnchor];
    v8 = [v13 constraintEqualToAnchor:v14 constant:30.0];

    [v8 setActive_];
    v15 = sub_2281ACE68();
    a1 = v15;
    if (v15 >> 62)
    {
      break;
    }

    v1 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v1)
    {
      goto LABEL_16;
    }

LABEL_4:
    v4 = 0;
    v6 = (a1 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x22AAB6D80](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v16 = *(a1 + 8 * v4 + 32);
      }

      v8 = v16;
      v17 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v16 setActive_];

      ++v4;
      if (v17 == v1)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    swift_once();
  }

  v1 = sub_2283930D0();
  if (v1)
  {
    goto LABEL_4;
  }

LABEL_16:
}

id sub_2281AD9D4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___iconPlatterView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___dateLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___countLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___countLabelConstraints] = 0;
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView_item];
  v10 = type metadata accessor for MedicationDoseLogHeaderView();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v13.receiver = v4;
  v13.super_class = v10;
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  sub_2281AD0C4();

  return v11;
}

uint64_t sub_2281ADB04()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281AEA90(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MedicationsDoseLogHeaderItem(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView_item;
  swift_beginAccess();
  sub_22817E6C8(v1 + v13, v26);
  if (v27)
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v14 = swift_dynamicCast();
    (*(v10 + 56))(v8, v14 ^ 1u, 1, v9);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_2281AEB50(v8, v12);
      if (*&v12[*(v9 + 32)] == 1)
      {
        sub_2281AD4E0(v12);
      }

      else
      {
        sub_2281AD6C0(v12);
      }

      return sub_2281AEBB4(v12, type metadata accessor for MedicationsDoseLogHeaderItem);
    }
  }

  else
  {
    sub_22819482C(v26);
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  sub_2281AEBB4(v8, sub_2281AEA90);
  sub_228391150();
  v15 = v1;
  v16 = sub_2283911A0();
  v17 = sub_2283925C0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136315138;
    sub_22817E6C8(v1 + v13, v26);
    sub_2281AEAE8(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], MEMORY[0x277D83D88]);
    v20 = sub_228392040();
    v22 = sub_2281C96FC(v20, v21, &v25);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_22816B000, v16, v17, "Incorrect view model for MedicationsDoseLogHeaderItem: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x22AAB7B80](v19, -1, -1);
    MEMORY[0x22AAB7B80](v18, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

id sub_2281ADEF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationDoseLogHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2281ADFF4(uint64_t a1)
{
  result = type metadata accessor for MedicationsDoseLogHeaderItem(319);
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

uint64_t sub_2281AE08C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a1);
}

uint64_t sub_2281AE0E8(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView_item;
  swift_beginAccess();
  sub_22818FD64(a1, v3 + v4);
  swift_endAccess();
  sub_2281ADB04();
  return sub_22819482C(a1);
}

uint64_t (*sub_2281AE158(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_2281AE1C0;
}

uint64_t sub_2281AE1C0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_2281ADB04();
  }

  return result;
}

uint64_t sub_2281AE210(int *a1)
{
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  sub_22838F440();
  sub_2281AE9B0(&qword_27D825C90, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_228391F70();
  MEMORY[0x22AAB70D0](*(v1 + a1[8]));
  return sub_228393570();
}

uint64_t sub_2281AE2E8(uint64_t a1, int *a2)
{
  sub_2283920B0();
  sub_2283920B0();
  sub_22838F440();
  sub_2281AE9B0(&qword_27D825C90, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_228391F70();
  return MEMORY[0x22AAB70D0](*(v2 + a2[8]));
}

uint64_t sub_2281AE3AC(uint64_t a1, int *a2)
{
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  sub_22838F440();
  sub_2281AE9B0(&qword_27D825C90, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_228391F70();
  MEMORY[0x22AAB70D0](*(v2 + a2[8]));
  return sub_228393570();
}

uint64_t sub_2281AE480(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));

  return v2;
}

BOOL sub_2281AE4B8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = a3[6];
  v7 = a1 + v6;
  v8 = *(a1 + v6);
  v9 = (a2 + v6);
  v10 = v8 == *v9 && *(v7 + 8) == v9[1];
  return (v10 || (sub_228393460() & 1) != 0) && (sub_22838F3D0() & 1) != 0 && *(a1 + a3[8]) == *(a2 + a3[8]);
}

unint64_t sub_2281AE544()
{
  sub_2283931D0();

  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return 0xD000000000000012;
}

uint64_t sub_2281AE5C4(uint64_t a1)
{
  v2 = sub_2281AE9B0(qword_280DDC9B0, type metadata accessor for MedicationsDoseLogHeaderItem, &unk_228399688);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_2281AE640(uint64_t a1, uint64_t a2)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390010();
  v6 = sub_2283900C0();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_2281AE7AC()
{
  v0 = sub_2283903B0();
  sub_2281AEBB4(v0 + qword_27D828A40, type metadata accessor for MedicationsDoseLogHeaderItem);

  return swift_deallocClassInstance();
}

uint64_t sub_2281AE884(uint64_t a1)
{
  result = sub_22838F4A0();
  if (v2 <= 0x3F)
  {
    result = sub_22838F440();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2281AE9B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2281AE9F8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = qword_27D828A40;
  a1[3] = type metadata accessor for MedicationsDoseLogHeaderItem(0);
  a1[4] = sub_2281AE9B0(&qword_27D824498, type metadata accessor for MedicationsDoseLogHeaderItem, &unk_228399630);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);

  return sub_2281AEC14(v3 + v4, boxed_opaque_existential_1);
}

void sub_2281AEA90(uint64_t a1)
{
  if (!qword_280DDC960)
  {
    type metadata accessor for MedicationsDoseLogHeaderItem(255);
    v1 = sub_228392F00();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDC960);
    }
  }
}

void sub_2281AEAE8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_2281AEB50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationsDoseLogHeaderItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281AEBB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2281AEC14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationsDoseLogHeaderItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2281AEC78()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setNumberOfLines_];
  v11 = sub_228392000();
  v12 = v1;
  v2 = v0;

  MEMORY[0x22AAB5C80](0xD00000000000001CLL, 0x80000002283A9040);

  MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

  v3 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];

  v4 = [objc_opt_self() labelColor];
  [v2 setTextColor_];

  [v2 setTextAlignment_];
  [v2 setAdjustsFontForContentSizeCategory_];
  v5 = *MEMORY[0x277D769A8];
  v6 = objc_opt_self();
  v7 = [v6 preferredFontForTextStyle_];
  v8 = [v7 fontDescriptor];
  v9 = [v8 fontDescriptorWithSymbolicTraits_];

  if (v9)
  {
    v10 = [v6 fontWithDescriptor:v9 size:0.0];
    [v2 setFont_];
  }

  else
  {
    __break(1u);
  }
}

id sub_2281AEECC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v6 setNumberOfLines_];
  v13 = sub_228392000();
  v14 = v7;
  v8 = v6;

  MEMORY[0x22AAB5C80](0xD00000000000001CLL, 0x80000002283A9040);

  MEMORY[0x22AAB5C80](a1, a2);

  v9 = sub_228391FC0();

  [v8 setAccessibilityIdentifier_];

  v10 = [objc_opt_self() *a3];
  [v8 setTextColor_];

  [v8 setTextAlignment_];
  [v8 setAdjustsFontForContentSizeCategory_];
  v11 = [objc_opt_self() preferredFontForTextStyle_];
  [v8 setFont_];

  return v8;
}

unint64_t sub_2281AF0A0()
{
  result = qword_280DDB990;
  if (!qword_280DDB990)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DDB990);
  }

  return result;
}

void sub_2281AF0EC()
{
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___iconPlatterView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___dateLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___countLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___countLabelConstraints) = 0;
  v1 = v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  sub_228393300();
  __break(1u);
}

Swift::String __swiftcall ScheduleItemDisplayable.localizedResolvedLoggingUnit(for:)(Swift::Double a1)
{
  v3 = v2;
  v4 = v1;
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v3[6](v4, v3);
  v3[7](v4, v3);
  v3[9](v4, v3);
  v5 = sub_2283929C0();
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t HKMedicationUserDomainConcept.identifier.getter()
{
  v1 = [v0 semanticIdentifier];
  v2 = [v1 stringValue];

  v3 = sub_228392000();
  return v3;
}

uint64_t sub_2281AF374()
{
  v1 = [*v0 semanticIdentifier];
  v2 = [v1 stringValue];

  v3 = sub_228392000();
  return v3;
}

void *sub_2281AF4B0()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t sub_2281AF4E0()
{
  if (!*(v0 + 32))
  {
    return 0;
  }

  v1 = sub_2282604EC();
  if (!v2)
  {
    return 0;
  }

  v3 = v1;

  return v3;
}

uint64_t sub_2281AF538()
{
  if (!*(v0 + 32))
  {
    return 0;
  }

  sub_2282604EC();
  if (!v2)
  {
    return 0;
  }

  v3 = v1;

  return v3;
}

uint64_t ScheduleDataSource.DisplayContext.hashValue.getter()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](v1);
  return sub_228393570();
}

uint64_t sub_2281AF634(uint64_t a1)
{
  sub_228393520();
  sub_22838F440();
  sub_2281BCDF8(&qword_27D825C90, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_228391F70();
  sub_2283920B0();
  sub_228392C70();
  return sub_228393570();
}

uint64_t sub_2281AF6EC(uint64_t a1, uint64_t a2)
{
  sub_22838F440();
  sub_2281BCDF8(&qword_27D825C90, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_228391F70();
  sub_2283920B0();
  return sub_228392C70();
}

uint64_t sub_2281AF78C(uint64_t a1, uint64_t a2)
{
  sub_228393520();
  sub_22838F440();
  sub_2281BCDF8(&qword_27D825C90, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_228391F70();
  sub_2283920B0();
  sub_228392C70();
  return sub_228393570();
}

uint64_t sub_2281AF840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_22838F3D0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_228393460() & 1) == 0)
  {
    return 0;
  }

  sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
  return sub_228392C60() & 1;
}

uint64_t ScheduleDataSource.__allocating_init(with:healthStore:isMedicationActivePublisher:analyticsManager:context:)(void *a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  v14 = sub_2281BB874(v13, a2, a3, a4, a5, v5, v11, v12);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v14;
}

uint64_t ScheduleDataSource.init(with:healthStore:isMedicationActivePublisher:analyticsManager:context:)(void *a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v6 = v5;
  v12 = a1[3];
  v13 = a1[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a1, v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = sub_2281BB350(v16, a2, a3, a4, a5, v6, v12, v13);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v18;
}

uint64_t sub_2281AFAAC()
{
  v1 = v0;
  v58 = *v0;
  v2 = sub_2283911B0();
  v52 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_2281BBE94(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v45 - v7;
  sub_2281BC51C(0);
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x28223BE20](v8);
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281BBE94(0, &qword_280DDBAD0, MEMORY[0x277D85248], v5);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v45 - v11;
  sub_2281BC660(0);
  v14 = v13;
  v53 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (v1 + qword_27D8244B0);
  v18 = *(v1 + qword_27D8244B0 + 24);
  v19 = *(v1 + qword_27D8244B0 + 32);
  __swift_project_boxed_opaque_existential_0((v1 + qword_27D8244B0), v18);
  if ((*(v19 + 40))(v18, v19))
  {
    v59 = *(v1 + qword_27D8244B8);
    sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);

    v20 = sub_228392790();
    v60 = v20;
    v51 = sub_228392730();
    v21 = *(v51 - 8);
    v50 = *(v21 + 56);
    v52 = v21 + 56;
    v50(v12, 1, 1, v51);
    sub_2281BC72C(0);
    sub_2281BCDF8(&qword_27D8245A8, sub_2281BC72C, MEMORY[0x277CBCE48]);
    v49 = sub_2281A1504();
    sub_228391A70();
    v48 = MEMORY[0x277D85248];
    v47 = MEMORY[0x277D83D88];
    v46 = sub_2281BBE94;
    sub_2281BC7AC(v12, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88], sub_2281BBE94);

    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v24 = v58;
    *(v23 + 16) = v22;
    *(v23 + 24) = v24;
    v25 = MEMORY[0x277CBCD60];
    sub_2281BCDF8(&qword_27D8245B0, sub_2281BC660, MEMORY[0x277CBCD60]);
    sub_228391AC0();

    (*(v53 + 8))(v16, v14);
    swift_beginAccess();
    sub_228391800();
    swift_endAccess();

    v59 = sub_228390ED0();
    v26 = sub_228392790();
    v60 = v26;
    v50(v12, 1, 1, v51);
    sub_2281BC99C(0, &qword_27D824588, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCE30]);
    sub_2281BC5E0();
    v27 = v54;
    sub_228391A70();
    sub_2281BC7AC(v12, &qword_280DDBAD0, v48, v47, v46);

    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = sub_2281BC814;
    *(v29 + 24) = v28;
    sub_2281BCDF8(&qword_27D8245B8, sub_2281BC51C, v25);
    v30 = v56;
    sub_228391AC0();

    (*(v55 + 8))(v27, v30);
    swift_beginAccess();
    sub_228391800();
    swift_endAccess();

    v31 = v57;
    sub_2283922B0();
    v32 = sub_2283922D0();
    (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
    v33 = swift_allocObject();
    swift_weakInit();
    sub_2283922A0();

    v34 = sub_228392290();
    v35 = swift_allocObject();
    v36 = MEMORY[0x277D85700];
    v35[2] = v34;
    v35[3] = v36;
    v37 = v58;
    v35[4] = v33;
    v35[5] = v37;

    sub_2281DC568(0, 0, v31, &unk_2283999D0, v35);
  }

  else
  {
    v39 = v17[3];
    v40 = v17[4];
    __swift_project_boxed_opaque_existential_0(v17, v39);
    v41 = (*(v40 + 24))(v39, v40);
    if (v41)
    {

      result = sub_22838F930();
      if ((result & 1) == 0)
      {
        sub_22838F910();
        sub_22838FCD0();

        sub_2281B1154();
        sub_22838FF50();
      }
    }

    else
    {
      sub_228391150();
      v42 = sub_2283911A0();
      v43 = sub_2283925C0();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_22816B000, v42, v43, "Unable to display schedule if we have no prefetched schedule and should not fetch it.", v44, 2u);
        MEMORY[0x22AAB7B80](v44, -1, -1);
      }

      return (*(v52 + 8))(v4, v2);
    }
  }

  return result;
}

uint64_t sub_2281B03F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2283911B0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if ((sub_22838F930() & 1) == 0)
    {
      sub_22838F910();
      sub_22838FCD0();

      sub_2281B1154();
      sub_22838FF50();
    }
  }

  else
  {
    sub_228391150();
    v8 = sub_2283911A0();
    v9 = sub_2283925C0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136315138;
      v12 = sub_228393600();
      v14 = sub_2281C96FC(v12, v13, &v15);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_22816B000, v8, v9, "Unable to update section as %s was deallocated.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x22AAB7B80](v11, -1, -1);
      MEMORY[0x22AAB7B80](v10, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2281B0624(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2281B067C();
  }

  return result;
}

uint64_t sub_2281B067C()
{
  v1 = *v0;
  sub_2281BBE94(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  sub_2283922B0();
  v5 = sub_2283922D0();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  sub_2283922A0();

  v7 = sub_228392290();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  v8[5] = v1;

  sub_2281DC568(0, 0, v4, &unk_2283999C8, v8);
}

uint64_t sub_2281B0828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v6 = sub_2283911B0();
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  sub_2283922A0();
  v5[30] = sub_228392290();
  v8 = sub_228392250();
  v5[31] = v8;
  v5[32] = v7;

  return MEMORY[0x2822009F8](sub_2281B0934, v8, v7);
}

uint64_t sub_2281B0934()
{
  v35 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[33] = Strong;
  if (!Strong)
  {

    sub_228391150();
    v12 = sub_2283911A0();
    v13 = sub_2283925C0();
    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[26];
    v15 = v0[27];
    v17 = v0[25];
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = v19;
      *v18 = 136315138;
      v20 = sub_228393600();
      v22 = sub_2281C96FC(v20, v21, &v34);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_22816B000, v12, v13, "Unable to fetch schedule as %s was deallocated.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x22AAB7B80](v19, -1, -1);
      MEMORY[0x22AAB7B80](v18, -1, -1);
    }

    (*(v16 + 8))(v15, v17);
    goto LABEL_17;
  }

  v2 = Strong;
  v3 = (Strong + qword_27D8244B0);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v4);
  (*(v5 + 16))(v4, v5);
  if (v6)
  {
    v7 = *(v2 + qword_27D8244D0);
    v0[34] = v7;
    if (v7)
    {
      v8 = [objc_allocWithZone(MEMORY[0x277D11578]) initWithHealthStore_];
      v0[35] = v8;
      v9 = sub_228391FC0();
      v0[36] = v9;

      v0[2] = v0;
      v0[7] = v0 + 21;
      v0[3] = sub_2281B0DB4;
      v10 = swift_continuation_init();
      sub_2281BC3FC(0);
      v0[17] = v11;
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2281B1080;
      v0[13] = &block_descriptor_21;
      v0[14] = v10;
      [v8 fetchScheduleWithMedicationIdentifier:v9 completion:v0 + 10];

      return MEMORY[0x282200938](v0 + 2);
    }

    sub_228391150();
    v23 = sub_2283911A0();
    v24 = sub_2283925C0();
    v31 = os_log_type_enabled(v23, v24);
    v26 = v0[28];
    v27 = v0[25];
    v28 = v0[26];
    if (v31)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "Unable to fetch schedule as healthStore is nil.";
      goto LABEL_14;
    }

LABEL_15:

    goto LABEL_16;
  }

  sub_228391150();
  v23 = sub_2283911A0();
  v24 = sub_2283925C0();
  v25 = os_log_type_enabled(v23, v24);
  v26 = v0[29];
  v27 = v0[25];
  v28 = v0[26];
  if (!v25)
  {
    goto LABEL_15;
  }

  v29 = swift_slowAlloc();
  *v29 = 0;
  v30 = "Unable to fetch schedule as identifier is nil.";
LABEL_14:
  _os_log_impl(&dword_22816B000, v23, v24, v30, v29, 2u);
  MEMORY[0x22AAB7B80](v29, -1, -1);

LABEL_16:
  (*(v28 + 8))(v26, v27);
LABEL_17:

  v32 = v0[1];

  return v32();
}

uint64_t sub_2281B0DB4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  v3 = *(v1 + 256);
  v4 = *(v1 + 248);
  if (v2)
  {
    v5 = sub_2281B0FAC;
  }

  else
  {
    v5 = sub_2281B0EE4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2281B0EE4()
{

  v1 = *(v0 + 168);
  v2 = *(v0 + 280);
  v3 = *(v0 + 272);

  *(v0 + 176) = v1;
  sub_228391850();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2281B0FAC()
{
  v1 = *(v0 + 296);

  swift_willThrow();

  v2 = *(v0 + 280);
  v3 = *(v0 + 272);

  *(v0 + 176) = 0;
  sub_228391850();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2281B1080(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_2281810DC(0, &qword_280DDB860, MEMORY[0x277D84948]);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2281B1154()
{
  v52 = *v0;
  v1 = sub_228390460();
  v56 = *(v1 - 8);
  v57 = v1;
  MEMORY[0x28223BE20](v1);
  *&v58 = v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22838FFC0();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v4 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281BBE94(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v47 - v6;
  v8 = sub_228391590();
  v55 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22838F4A0();
  v60 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v59 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_27D8244A8;
  LOBYTE(v64) = *(v0 + qword_27D8244A8);
  v14 = qword_27D8244B0;
  v61 = sub_2281B42D4(&v64, (v0 + qword_27D8244B0));
  sub_228391870();
  v15 = v64;
  if (v64)
  {
    if ([v64 isUnavailable])
    {

      v16 = sub_2281B3EA4((v0 + v14));
    }

    else
    {
      LOBYTE(v64) = *(v0 + v13);
      v40 = v11;
      v41 = sub_2281B9A5C((v0 + v14), &v64);
      LOBYTE(v64) = *(v0 + v13);
      v42 = sub_2281B1BD0(&v64);
      LOBYTE(v64) = *(v0 + v13);
      v43 = sub_2281BA3F8(&v64);
      LOBYTE(v64) = *(v0 + v13);
      v44 = sub_2281BACD8(&v64);
      sub_2281BBE94(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
      sub_22838FEF0();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_228397F40;
      v62 = v41;
      sub_2281D5710(v42);
      sub_2281D5710(v43);
      sub_2281D5710(v61);
      sub_2281D5710(v44);
      sub_228194894(v62);

      v45 = v59;
      sub_22838F490();
      sub_22838F450();
      (*(v60 + 8))(v45, v40);
      sub_22838FED0();
    }
  }

  else
  {
    v48 = v10;
    v49 = v7;
    v50 = v4;
    v51 = v11;
    if (qword_27D8232A0 != -1)
    {
      swift_once();
    }

    v64 = 0;
    v65 = 0xE000000000000000;

    sub_2283931D0();
    v17 = sub_228393600();
    v19 = v18;

    v64 = v17;
    v65 = v19;
    MEMORY[0x22AAB5C80](0xD00000000000001DLL, 0x80000002283A92C0);
    v20 = *(v0 + v13);
    v52 = v64;
    v47[3] = v65;
    v21 = *(v0 + qword_27D8244C0 + 8);
    v47[2] = *(v0 + qword_27D8244C0);
    v47[1] = v21;
    v22 = v48;
    sub_228391520();

    sub_228391540();
    v23 = objc_opt_self();
    v24 = [v23 labelColor];
    v25 = sub_228391450();
    sub_228391420();
    v25(&v64, 0);
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    sub_228392AD0();
    v26 = sub_228391450();
    sub_228391410();
    v26(&v64, 0);
    v63[3] = v8;
    v63[4] = MEMORY[0x277D74C30];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
    v28 = v55;
    (*(v55 + 16))(boxed_opaque_existential_1, v22, v8);
    v29 = v49;
    sub_228391390();
    v30 = &selRef_tertiarySystemGroupedBackgroundColor;
    if (!v20)
    {
      v30 = &selRef_tertiarySystemBackgroundColor;
    }

    v31 = [v23 *v30];
    sub_228391370();
    v32 = sub_2283913A0();
    (*(*(v32 - 8) + 56))(v29, 0, 1, v32);
    (*(v53 + 104))(v50, *MEMORY[0x277D10F98], v54);
    (*(v56 + 104))(v58, *MEMORY[0x277D11140], v57);
    v66 = sub_228390170();
    v67 = sub_2281BCDF8(&qword_27D824520, MEMORY[0x277D11000], MEMORY[0x277D10FF8]);
    __swift_allocate_boxed_opaque_existential_1(&v64);

    sub_228390160();

    (*(v28 + 8))(v22, v8);
    sub_2281BBE94(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
    sub_22838FEF0();
    v16 = swift_allocObject();
    v58 = xmmword_228397F40;
    *(v16 + 16) = xmmword_228397F40;
    sub_2281BBE0C(0);
    v33 = swift_allocObject();
    *(v33 + 16) = v58;
    v34 = v66;
    v35 = v67;
    v36 = __swift_project_boxed_opaque_existential_0(&v64, v66);
    *(v33 + 56) = v34;
    *(v33 + 64) = *(v35 + 8);
    v37 = __swift_allocate_boxed_opaque_existential_1((v33 + 32));
    (*(*(v34 - 8) + 16))(v37, v36, v34);
    v38 = sub_228194894(v61);

    v63[0] = v33;
    sub_2281D55FC(v38);
    v39 = v59;
    sub_22838F490();
    sub_22838F450();
    (*(v60 + 8))(v39, v51);
    sub_22838FED0();
    __swift_destroy_boxed_opaque_existential_0(&v64);
  }

  return v16;
}

uint64_t sub_2281B1BD0(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_2283911B0();
  v95 = *(v4 - 8);
  v96 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_228390460();
  v92 = *(v7 - 8);
  v93 = v7;
  MEMORY[0x28223BE20](v7);
  v90 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22838FFC0();
  v85 = *(v9 - 8);
  v86 = v9;
  MEMORY[0x28223BE20](v9);
  v88 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_2281BBE94(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v84 = &v78 - v13;
  v91 = sub_228390170();
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v87 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22838F440();
  v94 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v83 = &v78 - v19;
  sub_2281BBE94(0, &qword_280DDCDB0, MEMORY[0x277CC9578], v11);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v78 - v24;
  v26 = sub_228391590();
  v97 = *(v26 - 8);
  v98 = v26;
  MEMORY[0x28223BE20](v26);
  v99 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22838F6C0();
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281BBE94(0, &qword_27D824550, type metadata accessor for CycleData, v11);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v34 = &v78 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v78 - v35;
  v37 = *a1;
  v38 = [v2 scheduleType];
  if (v38 == 7)
  {
    if (v37)
    {
      return MEMORY[0x277D84F90];
    }
  }

  else if ((v38 != 8) | v37 & 1)
  {
    return MEMORY[0x277D84F90];
  }

  v39 = v2;
  sub_22838F620();
  sub_2282CD948(v39, v30, v36);
  v40 = type metadata accessor for CycleData(0);
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);
  v82 = v40;
  v81 = v42;
  v80 = v41 + 48;
  if ((v42)(v36, 1) == 1)
  {
    sub_2281BC7AC(v36, &qword_27D824550, type metadata accessor for CycleData, MEMORY[0x277D83D88], sub_2281BBE94);
    sub_228391150();
    v43 = sub_2283911A0();
    v44 = sub_2283925C0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_22816B000, v43, v44, "Could not create cycleDataDescription item while attempting to display an item.", v45, 2u);
      MEMORY[0x22AAB7B80](v45, -1, -1);
    }

    v95[1](v6, v96);
    return MEMORY[0x277D84F90];
  }

  LODWORD(v96) = v37;
  CycleData.localizedDescription.getter();
  sub_2281BCD98(v36, type metadata accessor for CycleData);
  sub_228391580();
  sub_228391540();
  v46 = [v39 endDateTime];
  if (v46)
  {
    v47 = v46;
    sub_22838F3E0();

    v48 = v94;
    v79 = *(v94 + 56);
    v79(v25, 0, 1, v15);
    sub_2281BC7AC(v25, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_2281BBE94);
    v95 = v39;
    v49 = [v39 endDateTime];
    if (v49)
    {
      v50 = v49;
      sub_22838F3E0();

      v51 = *(v48 + 32);
      v51(v23, v18, v15);
      v79(v23, 0, 1, v15);
      v52 = v83;
      v51(v83, v23, v15);
      v53 = v96;
    }

    else
    {
      v79(v23, 1, 1, v15);
      v52 = v83;
      sub_22838F3F0();
      v54 = (*(v48 + 48))(v23, 1, v15);
      v53 = v96;
      if (v54 != 1)
      {
        sub_2281BC7AC(v23, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_2281BBE94);
      }
    }

    sub_22838F340();
    v55 = sub_22838F390();
    v56 = *(v48 + 8);
    v56(v18, v15);
    v56(v52, v15);
    v39 = v95;
    if (v55)
    {
      goto LABEL_16;
    }

    (*(v97 + 8))(v99, v98);
    return MEMORY[0x277D84F90];
  }

  (*(v94 + 56))(v25, 1, 1, v15);
  sub_2281BC7AC(v25, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_2281BBE94);
  v53 = v96;
LABEL_16:
  v57 = v39;
  sub_22838F620();
  sub_2282CD948(v57, v30, v34);
  if (v81(v34, 1, v82) == 1)
  {
    sub_2281BC7AC(v34, &qword_27D824550, type metadata accessor for CycleData, MEMORY[0x277D83D88], sub_2281BBE94);
  }

  else
  {
    CycleData.localizedNextPhaseDateChangeDescription.getter();
    v59 = v58;
    sub_2281BCD98(v34, type metadata accessor for CycleData);
    if (v59)
    {
      sub_2283913D0();
      v60 = [objc_opt_self() preferredFontForTextStyle_];
      v61 = sub_2283914A0();
      sub_228391410();
      v61(v100, 0);
      v62 = [objc_opt_self() secondaryLabelColor];
      v63 = sub_2283914A0();
      sub_228391420();
      v63(v100, 0);
    }
  }

  v64 = v98;
  v100[3] = v98;
  v100[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v100);
  v66 = v97;
  v67 = v99;
  (*(v97 + 16))(boxed_opaque_existential_1, v99, v64);
  v68 = v84;
  sub_228391390();
  v69 = objc_opt_self();
  v70 = &selRef_tertiarySystemGroupedBackgroundColor;
  if (!v53)
  {
    v70 = &selRef_tertiarySystemBackgroundColor;
  }

  v71 = [v69 *v70];
  sub_228391370();
  v72 = sub_2283913A0();
  (*(*(v72 - 8) + 56))(v68, 0, 1, v72);
  (*(v85 + 104))(v88, *MEMORY[0x277D10F98], v86);
  (*(v92 + 104))(v90, *MEMORY[0x277D11140], v93);
  v73 = v87;
  sub_228390160();
  sub_2281BBDA4(0);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_228397F40;
  v75 = v91;
  *(v74 + 56) = v91;
  *(v74 + 64) = sub_2281BCDF8(&qword_27D824520, MEMORY[0x277D11000], MEMORY[0x277D10FF8]);
  v76 = __swift_allocate_boxed_opaque_existential_1((v74 + 32));
  (*(v89 + 32))(v76, v73, v75);
  (*(v66 + 8))(v67, v64);
  return v74;
}

id sub_2281B2920()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  v8 = v7 == 1;
  v9 = *(v1 + qword_27D8244B0 + 24);
  v10 = *(v1 + qword_27D8244B0 + 32);
  __swift_project_boxed_opaque_existential_0((v1 + qword_27D8244B0), v9);
  v11 = (*(v10 + 40))(v9, v10);
  LOBYTE(v24[0]) = v8;
  BYTE1(v24[0]) = 1;
  BYTE2(v24[0]) = (v11 & 1) == 0;
  v24[1] = 1;
  result = ScheduleUnavailableDeviceState.bodyText.getter();
  if (!v13)
  {
    sub_228391150();

    v14 = sub_2283911A0();
    v15 = sub_2283925C0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23[1] = v1;
      v24[0] = v17;
      *v16 = 136446210;
      type metadata accessor for ScheduleDataSource(0);

      v18 = sub_228392020();
      v20 = sub_2281C96FC(v18, v19, v24);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_22816B000, v14, v15, "[%{public}s] Error getting body text for data source, ScheduleUnavailableDeviceState returned nil", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x22AAB7B80](v17, -1, -1);
      MEMORY[0x22AAB7B80](v16, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    result = [objc_opt_self() sharedBehavior];
    if (result)
    {
      v21 = result;
      v22 = [result isAppleInternalInstall];

      if (v22)
      {
        return 0xD00000000000002ALL;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2281B2BF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2283913A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v6 = sub_22838F0C0();
  v36 = v7;
  v37 = v6;
  v8 = sub_2281B2920();
  v34 = v9;
  v35 = v8;
  v33 = sub_22838F0C0();
  v11 = v10;
  sub_228391390();
  v12 = objc_allocWithZone(MEMORY[0x277D75348]);
  aBlock[4] = sub_2281BCE54;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2281B73E0;
  aBlock[3] = &block_descriptor_13;
  v13 = _Block_copy(aBlock);
  v14 = [v12 initWithDynamicProvider_];
  _Block_release(v13);

  v15 = v14;
  sub_228391370();
  v16 = type metadata accessor for TileItem(0);
  a1[3] = v16;
  a1[4] = sub_2281BCDF8(&unk_27D8255A0, type metadata accessor for TileItem, &protocol conformance descriptor for TileItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(v3 + 16))(boxed_opaque_existential_1 + v16[11], v5, v2);
  type metadata accessor for TileItem.Background(0);
  swift_storeEnumTagMultiPayload();
  sub_22838F490();
  v18 = (boxed_opaque_existential_1 + v16[5]);
  type metadata accessor for TileItemCell();
  sub_2281BCDF8(&qword_27D8254D0, type metadata accessor for TileItemCell, &protocol conformance descriptor for TileItemCell);
  v19 = sub_22838FBB0();
  v21 = v20;

  *v18 = v19;
  v18[1] = v21;
  v22 = (boxed_opaque_existential_1 + v16[6]);
  v23 = v36;
  *v22 = v37;
  v22[1] = v23;
  v24 = (boxed_opaque_existential_1 + v16[7]);
  v25 = v34;
  *v24 = v35;
  v24[1] = v25;
  v26 = (boxed_opaque_existential_1 + v16[8]);
  *v26 = 0;
  v26[1] = 0;
  v27 = (boxed_opaque_existential_1 + v16[9]);
  *v27 = v33;
  v27[1] = v11;
  v28 = (boxed_opaque_existential_1 + v16[10]);
  *v28 = 0;
  v28[1] = 0;
  v29 = (boxed_opaque_existential_1 + v16[12]);
  *v29 = sub_2281B2FC8;
  v29[1] = 0;
  v30 = (boxed_opaque_existential_1 + v16[13]);
  *v30 = 0;
  v30[1] = 0;
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2281B2FC8()
{
  v17 = sub_228390A00();
  v0 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277CC9788];
  v3 = MEMORY[0x277D83D88];
  sub_2281BBE94(0, &unk_27D825D00, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  sub_2281BBE94(0, &qword_27D824530, MEMORY[0x277CC9260], v3);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_22838F1F0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22838F580();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  sub_2283909F0();
  sub_228391140();
  (*(v0 + 8))(v2, v17);
  sub_2281BC7AC(v6, &unk_27D825D00, v16, v3, sub_2281BBE94);
  sub_22838F1E0();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_2281BC7AC(v9, &qword_27D824530, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2281BBE94);
  }

  (*(v11 + 32))(v13, v9, v10);
  sub_22838F1B0();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_2281B337C@<X0>(uint64_t *a1@<X8>)
{
  v44 = a1;
  v34 = *v1;
  v2 = sub_228390460();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v43 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_22838FFC0();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281BBE94(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v30 - v6;
  v38 = sub_2283913A0();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_228391590();
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391580();
  v12 = [objc_opt_self() linkColor];
  v13 = sub_228391450();
  sub_228391420();
  v13(&aBlock, 0);
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228391540();
  sub_228391390();
  v14 = objc_allocWithZone(MEMORY[0x277D75348]);
  v49 = sub_2281BCE54;
  v50 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v46 = 1107296256;
  v47 = sub_2281B73E0;
  v48 = &block_descriptor_4;
  v15 = _Block_copy(&aBlock);
  v16 = [v14 initWithDynamicProvider_];
  _Block_release(v15);

  v33 = v16;
  v31 = v8;
  sub_228391370();
  aBlock = 0;
  v46 = 0xE000000000000000;
  sub_2283931D0();
  v17 = sub_228393600();
  v19 = v18;

  aBlock = v17;
  v46 = v19;
  MEMORY[0x22AAB5C80](0x635374657365725FLL, 0xEE00656C75646568);
  v34 = aBlock;
  v32 = v46;
  v20 = v9;
  v48 = v9;
  v49 = MEMORY[0x277D74C30];
  v21 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
  v22 = v30;
  (*(v30 + 16))(v21, v11, v20);
  swift_allocObject();
  swift_weakInit();
  v23 = v36;
  v24 = v39;
  v25 = v8;
  v26 = v38;
  (*(v36 + 16))(v39, v25, v38);
  (*(v23 + 56))(v24, 0, 1, v26);
  (*(v35 + 104))(v40, *MEMORY[0x277D10F98], v37);
  (*(v41 + 104))(v43, *MEMORY[0x277D11140], v42);
  v27 = sub_228390170();
  v28 = v44;
  v44[3] = v27;
  v28[4] = sub_2281BCDF8(&qword_27D824520, MEMORY[0x277D11000], MEMORY[0x277D10FF8]);
  __swift_allocate_boxed_opaque_existential_1(v28);

  sub_228390160();

  (*(v23 + 8))(v31, v26);
  (*(v22 + 8))(v11, v20);
}

id sub_2281B3A34(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_tertiarySystemBackgroundColor;
  if (v1 != 2)
  {
    v3 = &selRef_tertiarySystemFillColor;
  }

  v4 = [v2 *v3];

  return v4;
}

uint64_t sub_2281B3AA0(void *a1, uint64_t a2)
{
  v3 = sub_2283911B0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v33 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v33 - v11;
  sub_228391150();
  v13 = sub_2283911A0();
  v14 = sub_2283925A0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22816B000, v13, v14, "Did tap 'Reset Schedule' item", v15, 2u);
    MEMORY[0x22AAB7B80](v15, -1, -1);
  }

  v16 = *(v4 + 8);
  v16(v12, v3);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    sub_228180FB0(Strong + qword_27D8244B0, v34);
    sub_2281810DC(0, &qword_27D824528, &protocol descriptor for ScheduleItemDisplayable);
    sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
    if (swift_dynamicCast())
    {
      v19 = v33[1];
      v20 = *(v18 + qword_27D8244B8);
      v21 = objc_allocWithZone(type metadata accessor for MedicationsInputViewController(0));

      v22 = v19;
      v23 = MedicationsInputViewController.init(schedulePublisher:medication:resetSchedule:restartingSchedule:)(v20, v22, 1, 0);
      v24 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
      [a1 presentViewController:v24 animated:1 completion:0];

      sub_228390FE0();
    }

    sub_228391150();
    v30 = sub_2283911A0();
    v31 = sub_2283925C0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_22816B000, v30, v31, "Unable to create MedicationsInputViewController if medication is nil.", v32, 2u);
      MEMORY[0x22AAB7B80](v32, -1, -1);
    }

    else
    {
    }

    v29 = v7;
  }

  else
  {
    sub_228391150();
    v26 = sub_2283911A0();
    v27 = sub_2283925C0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_22816B000, v26, v27, "Unable to create MedicationsInputViewController if ScheduleDataSource is nil.", v28, 2u);
      MEMORY[0x22AAB7B80](v28, -1, -1);
    }

    v29 = v10;
  }

  return (v16)(v29, v3);
}

char *sub_2281B3EA4(void *a1)
{
  v3 = sub_22838F4A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_22838FEF0();
  v7 = *(v45 - 8);
  v8 = MEMORY[0x28223BE20](v45);
  v43 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v42 = v1;
  sub_2281B2BF4(v49);
  sub_2281BBE0C(0);
  v41 = v12;
  v13 = swift_allocObject();
  v39 = xmmword_228397F40;
  *(v13 + 16) = xmmword_228397F40;
  v14 = v50;
  v15 = v51;
  v16 = __swift_project_boxed_opaque_existential_0(v49, v50);
  *(v13 + 56) = v14;
  *(v13 + 64) = *(v15 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 32));
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v16, v14);
  sub_22838F490();
  sub_22838F450();
  v18 = *(v4 + 8);
  v44 = v3;
  v40 = v18;
  v18(v6, v3);
  sub_22838FED0();
  v19 = sub_228198AA0(0, 1, 1, MEMORY[0x277D84F90]);
  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_228198AA0((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v23 = *(v7 + 32);
  v22 = v7 + 32;
  v24 = (*(v22 + 48) + 32) & ~*(v22 + 48);
  v25 = *(v22 + 40);
  v38 = v23;
  v23(&v19[v24 + v25 * v21], v11, v45);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v26);
  if ((*(v27 + 32))(v26, v27))
  {
    sub_2281B337C(v46);
    v28 = swift_allocObject();
    *(v28 + 16) = v39;
    v29 = v47;
    v30 = v48;
    v31 = __swift_project_boxed_opaque_existential_0(v46, v47);
    *(v28 + 56) = v29;
    *(v28 + 64) = *(v30 + 8);
    v32 = __swift_allocate_boxed_opaque_existential_1((v28 + 32));
    (*(*(v29 - 8) + 16))(v32, v31, v29);
    sub_22838F490();
    sub_22838F450();
    v40(v6, v44);
    v33 = v43;
    sub_22838FED0();
    v35 = *(v19 + 2);
    v34 = *(v19 + 3);
    if (v35 >= v34 >> 1)
    {
      v19 = sub_228198AA0((v34 > 1), v35 + 1, 1, v19);
    }

    *(v19 + 2) = v35 + 1;
    v38(&v19[v24 + v35 * v25], v33, v45);
    __swift_destroy_boxed_opaque_existential_0(v46);
  }

  __swift_destroy_boxed_opaque_existential_0(v49);
  return v19;
}

uint64_t sub_2281B42D4(_BYTE *a1, void *a2)
{
  v4 = sub_228390460();
  v44 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22838FFC0();
  v43 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281BBE94(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = sub_228390170();
  v45 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_228391590();
  v17 = MEMORY[0x28223BE20](v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    return MEMORY[0x277D84F90];
  }

  v40 = v13;
  v41 = v18;
  v39 = v4;
  v42 = v17;
  v22 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v22);
  if (((*(v21 + 32))(v22, v21) & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  sub_228391870();
  v23 = v50[0];
  if (v50[0])
  {
    v24 = [v50[0] isUnavailable];

    if (v24)
    {
      return MEMORY[0x277D84F90];
    }
  }

  sub_228391580();
  v38 = objc_opt_self();
  v26 = [v38 tintColor];
  v27 = sub_228391450();
  sub_228391420();
  v27(v50, 0);
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228391540();
  v28 = v42;
  v50[3] = v42;
  v50[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
  (*(v41 + 16))(boxed_opaque_existential_1, v20, v28);
  v30 = swift_allocObject();
  swift_weakInit();
  sub_228180FB0(a2, v49);
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  sub_22816DFFC(v49, v31 + 24);

  sub_228391390();
  v32 = [v38 tertiarySystemBackgroundColor];
  sub_228391370();
  v46 = "EDIT_SCHEDULE_TEXT";
  v33 = sub_2283913A0();
  (*(*(v33 - 8) + 56))(v12, 0, 1, v33);
  v47 = sub_228392000();
  v48 = v34;

  MEMORY[0x22AAB5C80](0xD000000000000027, 0x80000002283A91E0);

  (*(v43 + 104))(v9, *MEMORY[0x277D10F98], v7);
  (*(v44 + 104))(v6, *MEMORY[0x277D11140], v39);
  sub_228390160();

  sub_2281BBDA4(0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_228397F40;
  v36 = v40;
  *(v35 + 56) = v40;
  *(v35 + 64) = sub_2281BCDF8(&qword_27D824520, MEMORY[0x277D11000], MEMORY[0x277D10FF8]);
  v37 = __swift_allocate_boxed_opaque_existential_1((v35 + 32));
  (*(v45 + 32))(v37, v15, v36);
  (*(v41 + 8))(v20, v42);
  return v35;
}

uint64_t sub_2281B4990(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2283911B0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = *(result + qword_27D8244B8);

    sub_228180FB0(a3, v20);
    sub_2281810DC(0, &qword_27D824528, &protocol descriptor for ScheduleItemDisplayable);
    sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
    if (swift_dynamicCast())
    {
      v11 = v19[1];
      v12 = objc_allocWithZone(type metadata accessor for MedicationsInputViewController(0));

      v13 = v11;
      v14 = MedicationsInputViewController.init(schedulePublisher:medication:resetSchedule:restartingSchedule:)(v10, v13, 0, 0);
      v15 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
      [v15 setModalPresentationStyle_];
      [v15 setModalInPresentation_];
      [a1 presentViewController:v15 animated:1 completion:0];

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {

        sub_228390FE0();
      }
    }

    else
    {
      sub_228391150();
      v16 = sub_2283911A0();
      v17 = sub_2283925C0();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_22816B000, v16, v17, "Unable to create MedicationsInputViewController if medication is nil.", v18, 2u);
        MEMORY[0x22AAB7B80](v18, -1, -1);
      }

      else
      {
      }

      return (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

uint64_t sub_2281B4C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_2283900D0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-v9];
  if (a1)
  {
    sub_228390040();
  }

  else
  {
    sub_228390010();
  }

  if (*(v2 + qword_27D8244A8))
  {
    v11 = sub_228390090();
    *(v12 + 16) = 0x4024000000000000;
    v11(v15, 0);
  }

  else
  {
    sub_228390000();
    (*(v5 + 8))(v10, v4);
    (*(v5 + 32))(v10, v8, v4);
  }

  v13 = sub_2283900C0();
  (*(v5 + 8))(v10, v4);
  return v13;
}

uint64_t sub_2281B4E70()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + qword_27D8244B0));
}

uint64_t ScheduleDataSource.deinit(uint64_t a1)
{
  v1 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();
  __swift_destroy_boxed_opaque_existential_0((v1 + qword_27D8244B0));

  return v1;
}

uint64_t ScheduleDataSource.__deallocating_deinit(uint64_t a1)
{
  ScheduleDataSource.deinit(a1);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall ScheduleDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for TileItemCell();
  sub_2281BCDF8(&qword_27D8254D0, type metadata accessor for TileItemCell, &protocol conformance descriptor for TileItemCell);
  sub_2283926B0();
  sub_228390420();
  sub_2283926D0();
  sub_2283904F0();
  sub_2283926B0();
  type metadata accessor for ScheduleIntervalCell();
  sub_2281BCDF8(&qword_27D8244F0, type metadata accessor for ScheduleIntervalCell, &unk_2283A26C0);
  sub_2283926B0();
}

uint64_t sub_2281B5160()
{
  type metadata accessor for TileItemCell();
  sub_2281BCDF8(&qword_27D8254D0, type metadata accessor for TileItemCell, &protocol conformance descriptor for TileItemCell);
  sub_2283926B0();
  sub_228390420();
  sub_2283926D0();
  sub_2283904F0();
  sub_2283926B0();
  type metadata accessor for ScheduleIntervalCell();
  sub_2281BCDF8(&qword_27D8244F0, type metadata accessor for ScheduleIntervalCell, &unk_2283A26C0);
  return sub_2283926B0();
}

uint64_t ScheduleDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_228391590();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22838F4A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_228392000() == a1 && v12 == a2)
  {
  }

  else
  {
    v14 = sub_228393460();

    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if ((*(v3 + qword_27D8244A8) & 1) == 0)
  {
    sub_228391870();
    v19 = v27[0];
    if (!v27[0] || (sub_228303B9C(1), v21 = v20, v19, !v21))
    {
    }

    v27[0] = 0x74497265746F6F46;
    v27[1] = 0xEB000000005F6D65;
    sub_22838F490();
    v22 = sub_22838F450();
    v24 = v23;
    (*(v9 + 8))(v11, v8);
    MEMORY[0x22AAB5C80](v22, v24);

    a3[3] = sub_228390330();
    a3[4] = sub_2281BCDF8(&qword_27D8244F8, MEMORY[0x277D110D8], MEMORY[0x277D110C8]);
    __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_228390320();
  }

LABEL_9:
  if (sub_228392000() == a1 && v15 == a2)
  {
  }

  else
  {
    v17 = sub_228393460();

    if ((v17 & 1) == 0)
    {
      a3[3] = sub_22838FC00();
      a3[4] = sub_2281BCDF8(&qword_27D823958, MEMORY[0x277D10EC8], MEMORY[0x277D10EC0]);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_22838FBF0();
    }
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228391500();
  v25 = sub_22838FB60();
  swift_allocObject();
  v26 = sub_22838FB50();
  a3[3] = v25;
  result = sub_2281BCDF8(&qword_27D823960, MEMORY[0x277D10E18], MEMORY[0x277D10E08]);
  a3[4] = result;
  *a3 = v26;
  return result;
}

uint64_t sub_2281B56B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22838F6C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F680();
  v8 = sub_22838F5A0();
  v9 = *(v5 + 8);
  v9(v7, v4);
  sub_22838F680();
  v10 = sub_22838F5D0();
  v9(v7, v4);
  v11 = sub_22838F440();
  v12 = *(v11 - 8);
  if (v8)
  {
    (*(v12 + 8))(a1, v11);
    v13 = 1;
  }

  else if (v10)
  {
    (*(v12 + 8))(a1, v11);
    v13 = 2;
  }

  else
  {
    (*(v12 + 32))(a2, a1, v11);
    v13 = 0;
  }

  sub_2281BBFFC();
  return (*(*(v14 - 8) + 56))(a2, v13, 2, v14);
}

id sub_2281B589C@<X0>(id *a1@<X0>, void *a2@<X2>, char *a3@<X8>)
{
  v37 = a2;
  v42 = a3;
  v4 = sub_2283911B0();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22838F080();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281BBE94(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = sub_22838F440();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *a1;
  v17 = [v41 startTimeComponent];
  sub_22838EFD0();

  sub_2281C6888(v9, v12);
  (*(v7 + 8))(v9, v6);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v18 = v42;
    sub_2281BC7AC(v12, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_2281BBE94);
    v19 = v38;
    sub_228391150();
    v20 = v41;
    v21 = sub_2283911A0();
    v22 = sub_2283925C0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v20;
      v25 = v20;
      _os_log_impl(&dword_22816B000, v21, v22, "Could not create schedule dosage row for timeInterval: %@", v23, 0xCu);
      sub_2281BC7AC(v24, &qword_27D823DA0, &qword_27D825620, 0x277D82BB8, sub_2281BC2E4);
      MEMORY[0x22AAB7B80](v24, -1, -1);
      MEMORY[0x22AAB7B80](v23, -1, -1);
    }

    (*(v39 + 8))(v19, v40);
    v26 = type metadata accessor for ScheduleDataSource.DoseItem(0);
    return (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
  }

  else
  {
    v28 = *(v14 + 32);
    v28(v16, v12, v13);
    __swift_project_boxed_opaque_existential_0(v37, v37[3]);
    v29 = v41;
    v30 = [v41 dose];
    v31 = sub_228390A70();
    v33 = v32;

    v34 = v42;
    v28(v42, v16, v13);
    v35 = type metadata accessor for ScheduleDataSource.DoseItem(0);
    v36 = &v34[*(v35 + 20)];
    *v36 = v31;
    v36[1] = v33;
    *&v34[*(v35 + 24)] = v29;
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    return v29;
  }
}

BOOL sub_2281B5DF8(uint64_t a1, uint64_t a2)
{
  v18[1] = a2;
  v2 = sub_22838F6C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_228391060();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - v11;
  sub_22838F680();
  v13 = sub_228391030();
  v14 = *(v3 + 8);
  v14(v5, v2);
  if (*(v13 + 16))
  {
    (*(v7 + 16))(v12, v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

    v18[0] = sub_228391050();
    (*(v7 + 8))(v12, v6);
  }

  else
  {

    v18[0] = 0;
  }

  sub_22838F680();
  v15 = sub_228391030();
  v14(v5, v2);
  if (*(v15 + 16))
  {
    (*(v7 + 16))(v10, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

    v16 = sub_228391050();
    (*(v7 + 8))(v10, v6);
  }

  else
  {

    v16 = 0;
  }

  return v18[0] < v16;
}

uint64_t sub_2281B60A4()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v103 = *(v2 - 8);
  v104 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v101 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v100 = &v100 - v6;
  MEMORY[0x28223BE20](v5);
  v102 = &v100 - v7;
  sub_2281BBEF8(0);
  v105 = v8;
  MEMORY[0x28223BE20](v8);
  v106 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_2281BBE94(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v100 - v15;
  sub_2281BBE94(0, &qword_27D824540, type metadata accessor for FutureDateRecencyState, v10);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v111 = &v100 - v21;
  v22 = sub_22838F440();
  v23 = *(v22 - 8);
  v112 = v22;
  v113 = v23;
  v24 = MEMORY[0x28223BE20](v22);
  v107 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v100 - v26;
  v28 = type metadata accessor for FutureDateRecencyState(0);
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v108 = &v100 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v100 - v35;
  v37 = [v1 startDateTime];
  sub_22838F3E0();

  v109 = v27;
  v110 = v36;
  sub_2281B56B0(v27, v36);
  v38 = [v1 endDateTime];
  if (v38)
  {
    v39 = v38;
    sub_22838F3E0();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = v112;
  v42 = v113;
  v43 = 1;
  (*(v113 + 56))(v16, v40, 1, v112);
  sub_2281BBF7C(v16, v14, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  v44 = (*(v42 + 48))(v14, 1, v41);
  v45 = v111;
  if (v44 != 1)
  {
    v46 = v113;
    v47 = v109;
    (*(v113 + 32))(v109, v14, v41);
    v48 = v107;
    (*(v46 + 16))(v107, v47, v41);
    sub_2281B56B0(v48, v45);
    (*(v46 + 8))(v47, v41);
    v43 = 0;
  }

  sub_2281BC7AC(v16, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_2281BBE94);
  (*(v29 + 56))(v45, v43, 1, v28);
  sub_2281BBF7C(v45, v20, &qword_27D824540, type metadata accessor for FutureDateRecencyState);
  if ((*(v29 + 48))(v20, 1, v28) != 1)
  {
    v52 = v108;
    sub_2281BC0AC(v20, v108, type metadata accessor for FutureDateRecencyState);
    v53 = v106;
    v54 = *(v105 + 48);
    v55 = v110;
    sub_2281BC27C(v110, v106, type metadata accessor for FutureDateRecencyState);
    sub_2281BC27C(v52, v53 + v54, type metadata accessor for FutureDateRecencyState);
    sub_2281BBFFC();
    v57 = v56;
    v58 = *(*(v56 - 8) + 48);
    v59 = v58(v53 + v54, 2, v56);
    v60 = v58(v53, 2, v57);
    if (v59)
    {
      v61 = v112;
      if (v59 == 1)
      {
        if (v60 == 1)
        {
          if (qword_280DDCF18 == -1)
          {
            goto LABEL_29;
          }

          goto LABEL_51;
        }

        v72 = v102;
        sub_228391150();
        v73 = sub_2283911A0();
        v74 = sub_2283925C0();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          *v75 = 0;
          _os_log_impl(&dword_22816B000, v73, v74, "Attempted to display an endDate that is today. Impossible!", v75, 2u);
          MEMORY[0x22AAB7B80](v75, -1, -1);
        }

        (*(v103 + 8))(v72, v104);
        sub_2281BCD98(v52, type metadata accessor for FutureDateRecencyState);
        sub_2281BC7AC(v45, &qword_27D824540, type metadata accessor for FutureDateRecencyState, MEMORY[0x277D83D88], sub_2281BBE94);
        sub_2281BCD98(v55, type metadata accessor for FutureDateRecencyState);
        v76 = v53;
      }

      else
      {
        if (!v60)
        {
          v92 = v100;
          sub_228391150();
          v93 = sub_2283911A0();
          v94 = sub_2283925C0();
          if (os_log_type_enabled(v93, v94))
          {
            v95 = swift_slowAlloc();
            *v95 = 0;
            _os_log_impl(&dword_22816B000, v93, v94, "Attempted to display a start and end date with start date after endDate. Impossible!", v95, 2u);
            MEMORY[0x22AAB7B80](v95, -1, -1);
          }

          (*(v103 + 8))(v92, v104);
          sub_2281BCD98(v52, type metadata accessor for FutureDateRecencyState);
          sub_2281BC7AC(v45, &qword_27D824540, type metadata accessor for FutureDateRecencyState, MEMORY[0x277D83D88], sub_2281BBE94);
          sub_2281BCD98(v55, type metadata accessor for FutureDateRecencyState);
          (*(v113 + 8))(v53, v61);
          return 0;
        }

        if (v60 == 1)
        {
          if (qword_280DDCF18 == -1)
          {
LABEL_29:
            v66 = sub_22838F0C0();
            sub_2281BCD98(v52, type metadata accessor for FutureDateRecencyState);
            sub_2281BC7AC(v45, &qword_27D824540, type metadata accessor for FutureDateRecencyState, MEMORY[0x277D83D88], sub_2281BBE94);
            v71 = v55;
            goto LABEL_39;
          }

LABEL_51:
          swift_once();
          goto LABEL_29;
        }

        v96 = v101;
        sub_228391150();
        v97 = sub_2283911A0();
        v98 = sub_2283925C0();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          *v99 = 0;
          _os_log_impl(&dword_22816B000, v97, v98, "Attempted to display a start and end date with equal state. Impossible!", v99, 2u);
          MEMORY[0x22AAB7B80](v99, -1, -1);
        }

        (*(v103 + 8))(v96, v104);
        sub_2281BCD98(v52, type metadata accessor for FutureDateRecencyState);
        sub_2281BC7AC(v45, &qword_27D824540, type metadata accessor for FutureDateRecencyState, MEMORY[0x277D83D88], sub_2281BBE94);
        v76 = v55;
      }

      sub_2281BCD98(v76, type metadata accessor for FutureDateRecencyState);
      return 0;
    }

    v67 = v112;
    v68 = *(v113 + 32);
    if (!v60)
    {
      v77 = v53;
      v78 = v109;
      v68(v109, v77, v112);
      v79 = v107;
      v68(v107, v77 + v54, v67);
      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      sub_22838F0C0();
      sub_2281BC044(0);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_228397F30;
      v81 = Date.formattedWithYearIfDifferent()();
      v82 = v78;
      v83 = MEMORY[0x277D837D0];
      *(v80 + 56) = MEMORY[0x277D837D0];
      v84 = sub_22818E210();
      *(v80 + 64) = v84;
      *(v80 + 32) = v81;
      v85 = Date.formattedWithYearIfDifferent()();
      *(v80 + 96) = v83;
      *(v80 + 104) = v84;
      *(v80 + 72) = v85;
      v66 = sub_228391FD0();

      v86 = v112;
      v87 = *(v113 + 8);
      v87(v79, v112);
      v87(v82, v86);
      v88 = v108;
      goto LABEL_38;
    }

    v69 = v53 + v54;
    if (v60 == 1)
    {
      v70 = v109;
      v68(v109, v69, v112);
      if (qword_280DDCF18 == -1)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v70 = v109;
      v68(v109, v69, v112);
      if (qword_280DDCF18 == -1)
      {
LABEL_37:
        sub_22838F0C0();
        sub_2281BC044(0);
        v89 = swift_allocObject();
        *(v89 + 16) = xmmword_228397F40;
        v90 = Date.formattedWithYearIfDifferent()();
        *(v89 + 56) = MEMORY[0x277D837D0];
        *(v89 + 64) = sub_22818E210();
        *(v89 + 32) = v90;
        v66 = sub_228391FD0();

        (*(v113 + 8))(v70, v67);
        v88 = v52;
LABEL_38:
        sub_2281BCD98(v88, type metadata accessor for FutureDateRecencyState);
        sub_2281BC7AC(v45, &qword_27D824540, type metadata accessor for FutureDateRecencyState, MEMORY[0x277D83D88], sub_2281BBE94);
        v71 = v110;
        goto LABEL_39;
      }
    }

    swift_once();
    goto LABEL_37;
  }

  sub_2281BC7AC(v20, &qword_27D824540, type metadata accessor for FutureDateRecencyState, MEMORY[0x277D83D88], sub_2281BBE94);
  v49 = v110;
  sub_2281BC27C(v110, v32, type metadata accessor for FutureDateRecencyState);
  sub_2281BBFFC();
  v51 = (*(*(v50 - 8) + 48))(v32, 2, v50);
  if (!v51)
  {
    v62 = v113;
    v63 = v109;
    (*(v113 + 32))(v109, v32, v41);
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_2281BC044(0);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_228397F40;
    v65 = Date.formattedWithYearIfDifferent()();
    *(v64 + 56) = MEMORY[0x277D837D0];
    *(v64 + 64) = sub_22818E210();
    *(v64 + 32) = v65;
    v66 = sub_228391FD0();

    (*(v62 + 8))(v63, v41);
    goto LABEL_25;
  }

  if (v51 == 1)
  {
    if (qword_280DDCF18 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

  if (qword_280DDCF18 != -1)
  {
LABEL_49:
    swift_once();
  }

LABEL_24:
  v66 = sub_22838F0C0();
LABEL_25:
  sub_2281BC7AC(v111, &qword_27D824540, type metadata accessor for FutureDateRecencyState, MEMORY[0x277D83D88], sub_2281BBE94);
  v71 = v49;
LABEL_39:
  sub_2281BCD98(v71, type metadata accessor for FutureDateRecencyState);
  return v66;
}

uint64_t sub_2281B7338(uint64_t *a1)
{
  sub_2281BC114(0);
  v3 = *(v2 - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_228340810(v4);
  }

  v5 = v4[2];
  v7[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v7[1] = v5;
  result = sub_2281B7448(v7);
  *a1 = v4;
  return result;
}

id sub_2281B73E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_2281B7448(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_228393410();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2281BC114(0);
        v6 = sub_228392220();
        *(v6 + 16) = v5;
      }

      sub_2281BC114(0);
      v8[0] = v6 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));
      v8[1] = v5;
      sub_2281B7A70(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2281B7574(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2281B7574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v68 = sub_22838F6C0();
  v8 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_228391060();
  v12 = *(v11 - 8);
  v63 = v11;
  v64 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v55 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v54 = &v47 - v15;
  sub_2281BC114(0);
  v59 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v58 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v47 - v20;
  result = MEMORY[0x28223BE20](v19);
  v67 = &v47 - v24;
  v49 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v26 = *(v23 + 72);
    v66 = (v8 + 8);
    v60 = v64 + 8;
    v61 = v64 + 16;
    v27 = v25 + v26 * (a3 - 1);
    v56 = -v26;
    v57 = v25;
    v28 = a1 - a3;
    v48 = v26;
    v29 = v25 + v26 * a3;
    v62 = v21;
LABEL_5:
    v52 = v27;
    v53 = a3;
    v50 = v29;
    v51 = v28;
    v30 = v27;
    while (1)
    {
      sub_2281BC27C(v29, v67, sub_2281BC114);
      sub_2281BC27C(v30, v21, sub_2281BC114);
      sub_22838F680();
      v31 = sub_228391030();
      v32 = *v66;
      (*v66)(v10, v68);
      if (*(v31 + 16))
      {
        v34 = v63;
        v33 = v64;
        v35 = v10;
        v36 = v54;
        (*(v64 + 16))(v54, v31 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v63);

        v65 = sub_228391050();
        v37 = v36;
        v10 = v35;
        v38 = v34;
        v21 = v62;
        (*(v33 + 8))(v37, v38);
      }

      else
      {

        v65 = 0;
      }

      sub_22838F680();
      v39 = sub_228391030();
      v32(v10, v68);
      if (*(v39 + 16))
      {
        v41 = v63;
        v40 = v64;
        v42 = v55;
        (*(v64 + 16))(v55, v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80)), v63);

        v43 = sub_228391050();
        v44 = v42;
        v21 = v62;
        (*(v40 + 8))(v44, v41);
      }

      else
      {

        v43 = 0;
      }

      sub_2281BCD98(v21, sub_2281BC114);
      result = sub_2281BCD98(v67, sub_2281BC114);
      if (v65 >= v43)
      {
LABEL_4:
        a3 = v53 + 1;
        v27 = v52 + v48;
        v28 = v51 - 1;
        v29 = v50 + v48;
        if (v53 + 1 == v49)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v57)
      {
        break;
      }

      v45 = v58;
      sub_2281BC0AC(v29, v58, sub_2281BC114);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2281BC0AC(v45, v30, sub_2281BC114);
      v30 += v56;
      v29 += v56;
      if (__CFADD__(v28++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2281B7A70(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v147 = a1;
  v177 = sub_22838F6C0();
  v8 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v176 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_228391060();
  v10 = *(v173 - 8);
  v11 = MEMORY[0x28223BE20](v173);
  v164 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v163 = &v143 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v153 = &v143 - v16;
  MEMORY[0x28223BE20](v15);
  v152 = &v143 - v17;
  sub_2281BC114(0);
  v168 = v18;
  v159 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v151 = &v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v167 = &v143 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v143 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v174 = &v143 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v162 = &v143 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v143 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  result = MEMORY[0x28223BE20](v33);
  v160 = a3;
  v37 = a3[1];
  if (v37 < 1)
  {
    v39 = MEMORY[0x277D84F90];
LABEL_107:
    v8 = *v147;
    if (!*v147)
    {
      goto LABEL_147;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_109;
  }

  v144 = &v143 - v35;
  v143 = v36;
  v38 = 0;
  v175 = (v8 + 8);
  v170 = v10 + 8;
  v171 = v10 + 16;
  v39 = MEMORY[0x277D84F90];
  v146 = a4;
  v172 = v10;
  v169 = v25;
  v156 = v32;
  while (1)
  {
    v40 = v38;
    v41 = v38 + 1;
    if (v38 + 1 >= v37)
    {
      v55 = v38 + 1;
    }

    else
    {
      v161 = v37;
      v42 = *v160;
      v43 = *(v159 + 72);
      v44 = *v160 + v43 * v41;
      v166 = sub_2281BC114;
      v45 = v144;
      sub_2281BC27C(v44, v144, sub_2281BC114);
      v165 = v42;
      v46 = v42 + v43 * v40;
      v47 = v40;
      v48 = v143;
      sub_2281BC27C(v46, v143, v166);
      LODWORD(v158) = sub_2281B5DF8(v45, v48);
      if (v5)
      {
        sub_2281BCD98(v48, sub_2281BC114);
        sub_2281BCD98(v144, sub_2281BC114);
      }

      sub_2281BCD98(v48, sub_2281BC114);
      result = sub_2281BCD98(v144, sub_2281BC114);
      v145 = v47;
      v49 = v47 + 2;
      v8 = v165 + v43 * (v47 + 2);
      v50 = v43;
      v165 = v43;
      v157 = v39;
      while (1)
      {
        v55 = v161;
        if (v161 == v49)
        {
          break;
        }

        sub_2281BC27C(v8, v32, sub_2281BC114);
        sub_2281BC27C(v44, v162, sub_2281BC114);
        v56 = v176;
        sub_22838F680();
        v57 = sub_228391030();
        v58 = *v175;
        (*v175)(v56, v177);
        if (*(v57 + 16))
        {
          v59 = v172;
          v60 = v173;
          v61 = v5;
          v62 = v152;
          (*(v172 + 16))(v152, v57 + ((*(v59 + 80) + 32) & ~*(v59 + 80)), v173);

          v166 = sub_228391050();
          v63 = v62;
          v5 = v61;
          (*(v59 + 8))(v63, v60);
        }

        else
        {

          v166 = 0;
        }

        v64 = v176;
        sub_22838F680();
        v65 = sub_228391030();
        v58(v64, v177);
        if (*(v65 + 16))
        {
          v52 = v172;
          v51 = v173;
          v53 = v153;
          (*(v172 + 16))(v153, v65 + ((*(v52 + 80) + 32) & ~*(v52 + 80)), v173);

          v54 = sub_228391050();
          (*(v52 + 8))(v53, v51);
        }

        else
        {

          v54 = 0;
        }

        v39 = v157;
        sub_2281BCD98(v162, sub_2281BC114);
        v32 = v156;
        result = sub_2281BCD98(v156, sub_2281BC114);
        v50 = v165;
        ++v49;
        v8 += v165;
        v44 += v165;
        v25 = v169;
        if (((v158 ^ (v166 >= v54)) & 1) == 0)
        {
          v55 = v49 - 1;
          break;
        }
      }

      a4 = v146;
      v40 = v145;
      if (v158)
      {
        if (v55 < v145)
        {
          goto LABEL_140;
        }

        if (v145 < v55)
        {
          v66 = v50 * (v55 - 1);
          v67 = v55 * v50;
          v161 = v55;
          v68 = v55;
          v69 = v145;
          v70 = v145 * v50;
          v148 = v5;
          do
          {
            if (v69 != --v68)
            {
              v71 = *v160;
              if (!*v160)
              {
                goto LABEL_144;
              }

              v8 = v71 + v70;
              sub_2281BC0AC(v71 + v70, v151, sub_2281BC114);
              if (v70 < v66 || v8 >= v71 + v67)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v70 != v66)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_2281BC0AC(v151, v71 + v66, sub_2281BC114);
              v5 = v148;
              v50 = v165;
            }

            ++v69;
            v66 -= v50;
            v67 -= v50;
            v70 += v50;
          }

          while (v69 < v68);
          a4 = v146;
          v32 = v156;
          v40 = v145;
          v55 = v161;
        }
      }
    }

    v72 = v160[1];
    if (v55 < v72)
    {
      if (__OFSUB__(v55, v40))
      {
        goto LABEL_137;
      }

      if (v55 - v40 < a4)
      {
        if (__OFADD__(v40, a4))
        {
          goto LABEL_138;
        }

        if (v40 + a4 >= v72)
        {
          v73 = v160[1];
        }

        else
        {
          v73 = v40 + a4;
        }

        if (v73 < v40)
        {
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          result = sub_2283406C0(v39);
          v39 = result;
LABEL_109:
          v178 = v39;
          v139 = *(v39 + 2);
          if (v139 >= 2)
          {
            while (*v160)
            {
              v140 = *&v39[16 * v139];
              v141 = *&v39[16 * v139 + 24];
              sub_2281B8970(*v160 + *(v159 + 72) * v140, *v160 + *(v159 + 72) * *&v39[16 * v139 + 16], (*v160 + *(v159 + 72) * v141), v8);
              if (v5)
              {
              }

              if (v141 < v140)
              {
                goto LABEL_134;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v39 = sub_2283406C0(v39);
              }

              if (v139 - 2 >= *(v39 + 2))
              {
                goto LABEL_135;
              }

              v142 = &v39[16 * v139];
              *v142 = v140;
              *(v142 + 1) = v141;
              v178 = v39;
              result = sub_228340634(v139 - 1);
              v39 = v178;
              v139 = *(v178 + 2);
              if (v139 <= 1)
              {
              }
            }

            goto LABEL_145;
          }
        }

        if (v55 != v73)
        {
          break;
        }
      }
    }

    v38 = v55;
    if (v55 < v40)
    {
      goto LABEL_136;
    }

LABEL_41:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_228198978(0, *(v39 + 2) + 1, 1, v39);
      v39 = result;
    }

    v75 = *(v39 + 2);
    v74 = *(v39 + 3);
    v8 = v75 + 1;
    if (v75 >= v74 >> 1)
    {
      result = sub_228198978((v74 > 1), v75 + 1, 1, v39);
      v39 = result;
    }

    *(v39 + 2) = v8;
    v76 = &v39[16 * v75];
    *(v76 + 4) = v40;
    *(v76 + 5) = v38;
    v166 = *v147;
    if (!v166)
    {
      goto LABEL_146;
    }

    if (v75)
    {
      while (1)
      {
        v77 = v8 - 1;
        if (v8 >= 4)
        {
          break;
        }

        if (v8 == 3)
        {
          v78 = *(v39 + 4);
          v79 = *(v39 + 5);
          v88 = __OFSUB__(v79, v78);
          v80 = v79 - v78;
          v81 = v88;
LABEL_60:
          if (v81)
          {
            goto LABEL_125;
          }

          v94 = &v39[16 * v8];
          v96 = *v94;
          v95 = *(v94 + 1);
          v97 = __OFSUB__(v95, v96);
          v98 = v95 - v96;
          v99 = v97;
          if (v97)
          {
            goto LABEL_128;
          }

          v100 = &v39[16 * v77 + 32];
          v102 = *v100;
          v101 = *(v100 + 1);
          v88 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v88)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v98, v103))
          {
            goto LABEL_132;
          }

          if (v98 + v103 >= v80)
          {
            if (v80 < v103)
            {
              v77 = v8 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        v104 = &v39[16 * v8];
        v106 = *v104;
        v105 = *(v104 + 1);
        v88 = __OFSUB__(v105, v106);
        v98 = v105 - v106;
        v99 = v88;
LABEL_74:
        if (v99)
        {
          goto LABEL_127;
        }

        v107 = &v39[16 * v77];
        v109 = *(v107 + 4);
        v108 = *(v107 + 5);
        v88 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v88)
        {
          goto LABEL_130;
        }

        if (v110 < v98)
        {
          goto LABEL_3;
        }

LABEL_81:
        v115 = v77 - 1;
        if (v77 - 1 >= v8)
        {
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v160)
        {
          goto LABEL_143;
        }

        v8 = *&v39[16 * v115 + 32];
        v116 = *&v39[16 * v77 + 40];
        sub_2281B8970(*v160 + *(v159 + 72) * v8, *v160 + *(v159 + 72) * *&v39[16 * v77 + 32], (*v160 + *(v159 + 72) * v116), v166);
        if (v5)
        {
        }

        if (v116 < v8)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_2283406C0(v39);
        }

        if (v115 >= *(v39 + 2))
        {
          goto LABEL_122;
        }

        v117 = &v39[16 * v115];
        *(v117 + 4) = v8;
        *(v117 + 5) = v116;
        v178 = v39;
        result = sub_228340634(v77);
        v39 = v178;
        v8 = *(v178 + 2);
        if (v8 <= 1)
        {
          goto LABEL_3;
        }
      }

      v82 = &v39[16 * v8 + 32];
      v83 = *(v82 - 64);
      v84 = *(v82 - 56);
      v88 = __OFSUB__(v84, v83);
      v85 = v84 - v83;
      if (v88)
      {
        goto LABEL_123;
      }

      v87 = *(v82 - 48);
      v86 = *(v82 - 40);
      v88 = __OFSUB__(v86, v87);
      v80 = v86 - v87;
      v81 = v88;
      if (v88)
      {
        goto LABEL_124;
      }

      v89 = &v39[16 * v8];
      v91 = *v89;
      v90 = *(v89 + 1);
      v88 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v88)
      {
        goto LABEL_126;
      }

      v88 = __OFADD__(v80, v92);
      v93 = v80 + v92;
      if (v88)
      {
        goto LABEL_129;
      }

      if (v93 >= v85)
      {
        v111 = &v39[16 * v77 + 32];
        v113 = *v111;
        v112 = *(v111 + 1);
        v88 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v88)
        {
          goto LABEL_133;
        }

        if (v80 < v114)
        {
          v77 = v8 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_60;
    }

LABEL_3:
    v37 = v160[1];
    a4 = v146;
    if (v38 >= v37)
    {
      goto LABEL_107;
    }
  }

  v157 = v39;
  v148 = v5;
  v118 = *v160;
  v119 = *(v159 + 72);
  v8 = *v160 + v119 * (v55 - 1);
  v165 = -v119;
  v145 = v40;
  v120 = v40 - v55;
  v166 = v118;
  v149 = v119;
  v121 = v118 + v55 * v119;
  v150 = v73;
LABEL_92:
  v161 = v55;
  v154 = v121;
  v155 = v120;
  v158 = v8;
  while (1)
  {
    sub_2281BC27C(v121, v174, sub_2281BC114);
    sub_2281BC27C(v8, v25, sub_2281BC114);
    v122 = v176;
    sub_22838F680();
    v123 = sub_228391030();
    v124 = *v175;
    (*v175)(v122, v177);
    if (*(v123 + 16))
    {
      v126 = v172;
      v125 = v173;
      v127 = v163;
      (*(v172 + 16))(v163, v123 + ((*(v126 + 80) + 32) & ~*(v126 + 80)), v173);

      v128 = sub_228391050();
      v129 = *(v126 + 8);
      v25 = v169;
      v129(v127, v125);
    }

    else
    {

      v128 = 0;
    }

    v130 = v176;
    sub_22838F680();
    v131 = sub_228391030();
    v124(v130, v177);
    if (*(v131 + 16))
    {
      v133 = v172;
      v132 = v173;
      v134 = v164;
      (*(v172 + 16))(v164, v131 + ((*(v133 + 80) + 32) & ~*(v133 + 80)), v173);

      v135 = sub_228391050();
      v136 = *(v133 + 8);
      v25 = v169;
      v136(v134, v132);
    }

    else
    {

      v135 = 0;
    }

    sub_2281BCD98(v25, sub_2281BC114);
    result = sub_2281BCD98(v174, sub_2281BC114);
    if (v128 >= v135)
    {
LABEL_91:
      v55 = v161 + 1;
      v8 = v158 + v149;
      v120 = v155 - 1;
      v121 = v154 + v149;
      v38 = v150;
      if (v161 + 1 != v150)
      {
        goto LABEL_92;
      }

      v5 = v148;
      v39 = v157;
      v32 = v156;
      v40 = v145;
      if (v150 < v145)
      {
        goto LABEL_136;
      }

      goto LABEL_41;
    }

    if (!v166)
    {
      break;
    }

    v137 = v167;
    sub_2281BC0AC(v121, v167, sub_2281BC114);
    swift_arrayInitWithTakeFrontToBack();
    sub_2281BC0AC(v137, v8, sub_2281BC114);
    v8 += v165;
    v121 += v165;
    if (__CFADD__(v120++, 1))
    {
      goto LABEL_91;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_2281B8970(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v91 = sub_22838F6C0();
  v8 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_228391060();
  v12 = *(v11 - 8);
  v87 = v11;
  v88 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v75 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v74 = &v72 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v78 = &v72 - v18;
  MEMORY[0x28223BE20](v17);
  v77 = &v72 - v19;
  sub_2281BC114(0);
  v84 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v80 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v85 = (&v72 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  result = MEMORY[0x28223BE20](v25);
  v86 = &v72 - v28;
  v30 = *(v29 + 72);
  if (!v30)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v30 == -1)
  {
    goto LABEL_72;
  }

  v31 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v30 == -1)
  {
    goto LABEL_73;
  }

  v32 = (a2 - a1) / v30;
  v94 = a1;
  v93 = a4;
  if (v32 >= v31 / v30)
  {
    v34 = v31 / v30 * v30;
    if (a4 < a2 || a2 + v34 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v51 = a4 + v34;
    if (v34 >= 1)
    {
      v89 = a4;
      v52 = -v30;
      v83 = (v8 + 8);
      v77 = (v88 + 8);
      v78 = (v88 + 16);
      v53 = a4 + v34;
      v54 = v80;
      v86 = -v30;
      do
      {
        v73 = v51;
        v55 = a2 + v52;
        v56 = v51;
        v90 = a2 + v52;
        v79 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v94 = a2;
            v92 = v73;
            goto LABEL_70;
          }

          v58 = a3;
          v76 = v56;
          v81 = v53 + v52;
          sub_2281BC27C(v53 + v52, v85, sub_2281BC114);
          sub_2281BC27C(v55, v54, sub_2281BC114);
          sub_22838F680();
          v59 = sub_228391030();
          v60 = *v83;
          (*v83)(v10, v91);
          if (*(v59 + 16))
          {
            v61 = v87;
            v62 = v88;
            v63 = v74;
            (*(v88 + 16))(v74, v59 + ((*(v62 + 80) + 32) & ~*(v62 + 80)), v87);

            v82 = sub_228391050();
            v64 = *(v62 + 8);
            v54 = v80;
            v64(v63, v61);
          }

          else
          {

            v82 = 0;
          }

          sub_22838F680();
          v65 = sub_228391030();
          v60(v10, v91);
          if (*(v65 + 16))
          {
            v66 = v87;
            v67 = v88;
            v68 = v75;
            (*(v88 + 16))(v75, v65 + ((*(v67 + 80) + 32) & ~*(v67 + 80)), v87);

            v69 = sub_228391050();
            v70 = v68;
            v54 = v80;
            (*(v67 + 8))(v70, v66);
          }

          else
          {

            v69 = 0;
          }

          a3 = &v58[v86];
          sub_2281BCD98(v54, sub_2281BC114);
          sub_2281BCD98(v85, sub_2281BC114);
          if (v82 < v69)
          {
            break;
          }

          v71 = v81;
          v56 = v81;
          v55 = v90;
          if (v58 < v53 || a3 >= v53)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v58 != v53)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v56;
          v57 = v71 > v89;
          v52 = v86;
          a2 = v79;
          if (!v57)
          {
            v51 = v56;
            goto LABEL_69;
          }
        }

        a2 = v90;
        if (v58 < v79 || a3 >= v79)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v58 != v79)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v51 = v76;
        v52 = v86;
      }

      while (v53 > v89);
    }

LABEL_69:
    v94 = a2;
    v92 = v51;
  }

  else
  {
    v83 = v27;
    v33 = v32 * v30;
    if (a4 < a1 || a1 + v33 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v80 = (a4 + v33);
    v92 = a4 + v33;
    v35 = v33 < 1 || a2 >= a3;
    v36 = v83;
    if (!v35)
    {
      v85 = (v8 + 8);
      v81 = v88 + 8;
      v82 = v88 + 16;
      v79 = a3;
      do
      {
        v90 = a2;
        sub_2281BC27C(a2, v86, sub_2281BC114);
        v89 = a4;
        sub_2281BC27C(a4, v36, sub_2281BC114);
        sub_22838F680();
        v37 = sub_228391030();
        v38 = *v85;
        (*v85)(v10, v91);
        if (*(v37 + 16))
        {
          v40 = v87;
          v39 = v88;
          v41 = v77;
          (*(v88 + 16))(v77, v37 + ((*(v39 + 80) + 32) & ~*(v39 + 80)), v87);

          v42 = sub_228391050();
          v43 = *(v39 + 8);
          v36 = v83;
          v43(v41, v40);
        }

        else
        {

          v42 = 0;
        }

        sub_22838F680();
        v44 = sub_228391030();
        v38(v10, v91);
        if (*(v44 + 16))
        {
          v46 = v87;
          v45 = v88;
          v47 = v78;
          (*(v88 + 16))(v78, v44 + ((*(v45 + 80) + 32) & ~*(v45 + 80)), v87);

          v48 = sub_228391050();
          v49 = *(v45 + 8);
          v36 = v83;
          v49(v47, v46);
        }

        else
        {

          v48 = 0;
        }

        sub_2281BCD98(v36, sub_2281BC114);
        sub_2281BCD98(v86, sub_2281BC114);
        if (v42 >= v48)
        {
          a2 = v90;
          a4 = v89 + v30;
          if (a1 < v89 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v50 = v79;
          }

          else
          {
            v50 = v79;
            if (a1 != v89)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v93 = a4;
        }

        else
        {
          a4 = v89;
          a2 = v90 + v30;
          if (a1 < v90 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v50 = v79;
          }

          else
          {
            v50 = v79;
            if (a1 != v90)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 += v30;
        v94 = a1;
      }

      while (a4 < v80 && a2 < v50);
    }
  }

LABEL_70:
  sub_2283333C0(&v94, &v93, &v92);
  return 1;
}

uint64_t sub_2281B92F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22838F440();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FutureDateRecencyState(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281BBEF8(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 56);
  sub_2281BC27C(a1, v14, type metadata accessor for FutureDateRecencyState);
  sub_2281BC27C(a2, &v14[v15], type metadata accessor for FutureDateRecencyState);
  sub_2281BBFFC();
  v17 = v16;
  v18 = *(*(v16 - 8) + 48);
  v19 = v18(v14, 2, v16);
  if (!v19)
  {
    sub_2281BC27C(v14, v10, type metadata accessor for FutureDateRecencyState);
    if (!v18(&v14[v15], 2, v17))
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v23 = sub_22838F3D0();
      v25 = *(v5 + 8);
      v25(v7, v4);
      v25(v10, v4);
      v21 = type metadata accessor for FutureDateRecencyState;
      goto LABEL_10;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v19 == 1)
  {
    v20 = v18(&v14[v15], 2, v17);
    v21 = type metadata accessor for FutureDateRecencyState;
    if (v20 == 1)
    {
      goto LABEL_8;
    }

LABEL_9:
    v23 = 0;
    v21 = sub_2281BBEF8;
    goto LABEL_10;
  }

  v22 = v18(&v14[v15], 2, v17);
  v21 = type metadata accessor for FutureDateRecencyState;
  if (v22 != 2)
  {
    goto LABEL_9;
  }

LABEL_8:
  v23 = 1;
LABEL_10:
  sub_2281BCD98(v14, v21);
  return v23 & 1;
}

void *sub_2281B9614(uint64_t a1)
{
  v2 = sub_228391130();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScheduleDataSource.DoseItem(0);
  v7 = MEMORY[0x28223BE20](v6);
  v49 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = &v38 - v10;
  v11 = MEMORY[0x277D84F98];
  v51 = MEMORY[0x277D84F98];
  v12 = *(a1 + 16);
  if (!v12)
  {
    return v11;
  }

  v13 = *(v9 + 80);
  v14 = *(v9 + 72);
  v48 = (v13 + 32) & ~v13;
  v15 = a1 + v48;
  v42 = v3 + 32;
  v43 = v13;
  v40 = v3;
  v41 = (v3 + 8);
  v39 = xmmword_228397F40;
  v16 = v2;
  v45 = v5;
  v46 = v2;
  v47 = v14;
  v44 = v6;
  while (1)
  {
    v18 = v50;
    sub_2281BC27C(v15, v50, type metadata accessor for ScheduleDataSource.DoseItem);
    sub_2282D9ECC([*(v18 + *(v6 + 24)) daysOfWeek], v5);
    v20 = sub_2281A779C(v5);
    v21 = v11[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      break;
    }

    v24 = v19;
    if (v11[3] < v23)
    {
      sub_2282992D0(v23, 1);
      v11 = v51;
      v25 = sub_2281A779C(v5);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_19;
      }

      v20 = v25;
    }

    if (v24)
    {
      (*v41)(v5, v16);
      v27 = v11[7];
      sub_2281BC0AC(v50, v49, type metadata accessor for ScheduleDataSource.DoseItem);
      v28 = *(v27 + 8 * v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v27 + 8 * v20) = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_228198AD4(0, v28[2] + 1, 1, v28);
        *(v27 + 8 * v20) = v28;
      }

      v31 = v28[2];
      v30 = v28[3];
      if (v31 >= v30 >> 1)
      {
        v28 = sub_228198AD4((v30 > 1), v31 + 1, 1, v28);
        *(v27 + 8 * v20) = v28;
      }

      v28[2] = v31 + 1;
      v17 = v47;
      sub_2281BC0AC(v49, v28 + v48 + v31 * v47, type metadata accessor for ScheduleDataSource.DoseItem);
      v5 = v45;
      v16 = v46;
      v6 = v44;
    }

    else
    {
      sub_2281BBE94(0, &qword_27D823E80, type metadata accessor for ScheduleDataSource.DoseItem, MEMORY[0x277D84560]);
      v32 = v48;
      v33 = swift_allocObject();
      *(v33 + 16) = v39;
      sub_2281BC0AC(v50, v33 + v32, type metadata accessor for ScheduleDataSource.DoseItem);
      v11[(v20 >> 6) + 8] |= 1 << v20;
      (*(v40 + 32))(v11[6] + *(v40 + 72) * v20, v5, v16);
      *(v11[7] + 8 * v20) = v33;
      v34 = v11[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_18;
      }

      v11[2] = v36;
      v17 = v47;
    }

    v15 += v17;
    if (!--v12)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_2283934A0();
  __break(1u);
  return result;
}

uint64_t sub_2281B9A5C(void (**a1)(char *, char *, uint64_t), unsigned __int8 *a2)
{
  v3 = v2;
  v82 = sub_2283913A0();
  v6 = *(v82 - 8);
  v7 = MEMORY[0x28223BE20](v82);
  v72 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v78 = &v67 - v9;
  v77 = sub_22838F6C0();
  v69 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v76 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281BC114(0);
  v75 = v11;
  v83 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v74 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for ScheduleIntervalItem(0);
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *a2;
  v15 = sub_2281C6154();
  v16 = v15;
  v84[0] = MEMORY[0x277D84F90];
  if (v15 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v68 = a1;
    v70 = v6;
    v71 = v3;
    a1 = 0;
    v3 = (v16 & 0xC000000000000001);
    v6 = v16 & 0xFFFFFFFFFFFFFF8;
    v73 = v16 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v3)
      {
        v18 = MEMORY[0x22AAB6D80](a1, v16);
      }

      else
      {
        if (a1 >= *(v6 + 16))
        {
          goto LABEL_16;
        }

        v18 = *(v16 + 8 * a1 + 32);
      }

      v19 = v18;
      v20 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      v21 = [v18 dose];
      if (v21 && (v22 = v21, [v21 floatValue], v24 = v23, v22, v24 > 0.0))
      {
        sub_228393210();
        sub_228393250();
        v6 = v73;
        sub_228393260();
        sub_228393220();
      }

      else
      {
      }

      a1 = (a1 + 1);
      if (v20 == i)
      {
        v25 = v84[0];
        v3 = v71;
        v6 = v70;
        a1 = v68;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v25 = MEMORY[0x277D84F90];
LABEL_19:

  MEMORY[0x28223BE20](v26);
  *(&v67 - 2) = v3;
  *(&v67 - 1) = a1;
  v27 = sub_2282A2C18(sub_2281BC1D8, (&v67 - 4), v25);

  v84[0] = v27;
  swift_getKeyPath();
  sub_2281BBE94(0, &qword_27D824560, type metadata accessor for ScheduleDataSource.DoseItem, MEMORY[0x277D83940]);
  sub_2281BC1F4();
  v28 = sub_228392150();

  v30 = sub_2281B9614(v29);

  if ([v3 scheduleType] != 5)
  {

    sub_2281BBE94(0, &qword_27D824570, type metadata accessor for ScheduleIntervalItem, MEMORY[0x277D84560]);
    v37 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_228397F40;
    v38 = (v36 + v37);
    v39 = [v3 scheduleType];
    v40 = sub_2281DB0CC();
    v42 = v41;
    v43 = v72;
    sub_228391390();
    v44 = objc_opt_self();
    v45 = &selRef_tertiarySystemGroupedBackgroundColor;
    if (!v80)
    {
      v45 = &selRef_tertiarySystemBackgroundColor;
    }

    v46 = [v44 *v45];
    sub_228391370();
    *v38 = 0xD000000000000014;
    *(v38 + 1) = 0x80000002283A93F0;
    *(v38 + 2) = v40;
    *(v38 + 3) = v42;
    *(v38 + 4) = v39;
    *(v38 + 5) = v28;
    (*(v6 + 32))(&v38[*(v81 + 32)], v43, v82);
    goto LABEL_42;
  }

  v31 = v30[2];
  v32 = MEMORY[0x277D84F90];
  if (!v31)
  {
    v33 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v33 = sub_2281D77D4(v30[2], 0);
  v34 = sub_2282665F8(v84, v33 + ((*(v83 + 80) + 32) & ~*(v83 + 80)), v31, v30);
  v35 = v84[0];
  v36 = v84[2];
  v72 = v84[3];
  v73 = v34;
  v71 = v84[4];

  sub_228176F04(v35);
  if (v73 == v31)
  {
    v32 = MEMORY[0x277D84F90];
LABEL_27:
    v84[0] = v33;
    sub_2281B7338(v84);

    v47 = v84[0];
    v48 = *(v84[0] + 16);
    if (v48)
    {
      v84[0] = v32;
      sub_2281C9F24(0, v48, 0);
      v49 = 0;
      v36 = v84[0];
      v71 = v47 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
      v70 = 0x80000002283A93F0;
      ++v69;
      v68 = (v6 + 32);
      v72 = v48;
      v73 = v47;
      while (v49 < *(v47 + 16))
      {
        v50 = v74;
        sub_2281BC27C(v71 + *(v83 + 72) * v49, v74, sub_2281BC114);
        v51 = *(v50 + *(v75 + 48));
        v52 = v3;
        v53 = [v3 scheduleType];
        v54 = v76;
        sub_22838F680();
        v55 = sub_228391100();
        v57 = v56;
        (*v69)(v54, v77);
        if (v57)
        {
          v58 = v55;
        }

        else
        {
          v58 = 0;
        }

        if (!v57)
        {
          v57 = 0xE000000000000000;
        }

        v59 = v78;
        sub_228391390();
        v60 = objc_opt_self();
        v61 = &selRef_tertiarySystemGroupedBackgroundColor;
        if (!v80)
        {
          v61 = &selRef_tertiarySystemBackgroundColor;
        }

        v62 = [v60 *v61];
        sub_228391370();
        *v14 = 0xD000000000000014;
        *(v14 + 1) = v70;
        *(v14 + 2) = v58;
        *(v14 + 3) = v57;
        *(v14 + 4) = v53;
        *(v14 + 5) = v51;
        (*v68)(&v14[*(v81 + 32)], v59, v82);

        sub_2281BCD98(v50, sub_2281BC114);
        v84[0] = v36;
        v64 = *(v36 + 16);
        v63 = *(v36 + 24);
        if (v64 >= v63 >> 1)
        {
          sub_2281C9F24((v63 > 1), v64 + 1, 1);
          v36 = v84[0];
        }

        ++v49;
        *(v36 + 16) = v64 + 1;
        sub_2281BC0AC(v14, v36 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v64, type metadata accessor for ScheduleIntervalItem);
        v47 = v73;
        v3 = v52;
        if (v72 == v49)
        {

          goto LABEL_42;
        }
      }

      __break(1u);
      goto LABEL_44;
    }

    v36 = MEMORY[0x277D84F90];
LABEL_42:
    v65 = sub_228194E64(v36);

    return v65;
  }

LABEL_44:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_2281BA3F8(unsigned __int8 *a1)
{
  v3 = sub_228390460();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v60 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22838FFC0();
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x28223BE20](v5);
  v58 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_2281BBE94(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v53 - v9;
  v61 = sub_228390170();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v57 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_228391430();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_228391590();
  v53 = *(v13 - 8);
  v54 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22838F6C0();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281BBE94(0, &qword_27D824550, type metadata accessor for CycleData, v7);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v53 - v20;
  v22 = type metadata accessor for CycleData(0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  v27 = v1;
  sub_22838F620();
  sub_2282CD948(v27, v18, v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_2281BC7AC(v21, &qword_27D824550, type metadata accessor for CycleData, MEMORY[0x277D83D88], sub_2281BBE94);
  }

  else
  {
    sub_2281BC0AC(v21, v25, type metadata accessor for CycleData);
    if (v26)
    {
      sub_2283913C0();
      CycleData.localizedDescription.getter();
      sub_228391540();
      v28 = objc_opt_self();
      v29 = [v28 labelColor];
      v30 = sub_228391450();
      sub_228391420();
      v30(v64, 0);
      v31 = objc_opt_self();
      v32 = *MEMORY[0x277D769D0];
      v33 = [v31 preferredFontForTextStyle_];
      v34 = sub_228391450();
      sub_228391410();
      v34(v64, 0);
      sub_228391510();
      CycleData.localizedNextPhaseDateChangeDescription.getter();
      sub_2283913D0();
      sub_228391460();
      sub_2283914B0();
      v35 = [v28 secondaryLabelColor];
      v36 = sub_2283914A0();
      sub_228391420();
      v36(v64, 0);
      v37 = [v31 preferredFontForTextStyle_];
      v38 = sub_2283914A0();
      sub_228391410();
      v38(v64, 0);
      v39 = sub_2283914C0();
      *v40 = 0x4028000000000000;
      v39(v64, 0);
      v41 = sub_2283914C0();
      *(v42 + 16) = 0x4028000000000000;
      v41(v64, 0);
      v43 = v54;
      v64[3] = v54;
      v64[4] = MEMORY[0x277D74C30];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
      v45 = v53;
      (*(v53 + 16))(boxed_opaque_existential_1, v15, v43);
      sub_228391390();
      v46 = [v28 tertiarySystemGroupedBackgroundColor];
      sub_228391370();
      v47 = sub_2283913A0();
      (*(*(v47 - 8) + 56))(v10, 0, 1, v47);
      (*(v55 + 104))(v58, *MEMORY[0x277D10F98], v56);
      (*(v62 + 104))(v60, *MEMORY[0x277D11140], v63);
      v48 = v57;
      sub_228390160();
      sub_2281BBDA4(0);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_228397F40;
      v50 = v61;
      *(v49 + 56) = v61;
      *(v49 + 64) = sub_2281BCDF8(&qword_27D824520, MEMORY[0x277D11000], MEMORY[0x277D10FF8]);
      v51 = __swift_allocate_boxed_opaque_existential_1((v49 + 32));
      (*(v59 + 32))(v51, v48, v50);
      (*(v45 + 8))(v15, v43);
      sub_2281BCD98(v25, type metadata accessor for CycleData);
      return v49;
    }

    sub_2281BCD98(v25, type metadata accessor for CycleData);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2281BACD8(_BYTE *a1)
{
  v2 = sub_228390460();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v40 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22838FFC0();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v38 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281BBE94(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_228390170();
  v39 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_228391590();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != 1)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2283913C0();
  sub_2281B60A4();
  sub_228391540();
  v17 = objc_opt_self();
  v18 = [v17 secondaryLabelColor];
  v35 = v10;
  v19 = v3;
  v33 = v12;
  v20 = sub_228391450();
  v34 = v2;
  v21 = v20;
  sub_228391420();
  v21(v41, 0);
  v22 = [objc_opt_self() preferredFontForTextStyle_];
  v23 = sub_228391450();
  sub_228391410();
  v23(v41, 0);
  v41[3] = v13;
  v41[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  (*(v14 + 16))(boxed_opaque_existential_1, v16, v13);
  sub_228391390();
  v25 = [v17 tertiarySystemGroupedBackgroundColor];
  sub_228391370();
  v26 = sub_2283913A0();
  (*(*(v26 - 8) + 56))(v9, 0, 1, v26);
  (*(v36 + 104))(v38, *MEMORY[0x277D10F98], v37);
  (*(v19 + 104))(v40, *MEMORY[0x277D11140], v34);
  v27 = v33;
  sub_228390160();
  sub_2281BBDA4(0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_228397F40;
  v29 = v35;
  *(v28 + 56) = v35;
  *(v28 + 64) = sub_2281BCDF8(&qword_27D824520, MEMORY[0x277D11000], MEMORY[0x277D10FF8]);
  v30 = __swift_allocate_boxed_opaque_existential_1((v28 + 32));
  (*(v39 + 32))(v30, v27, v29);
  (*(v14 + 8))(v16, v13);
  return v28;
}

uint64_t sub_2281BB24C(uint64_t a1, char a2, uint64_t a3, double a4)
{
  if (a3)
  {
    sub_2282604EC();
    if (!v4)
    {
      sub_2282604EC();
      if (!v6)
      {
        goto LABEL_7;
      }

      goto LABEL_4;
    }

    sub_2282604EC();
    if (v5)
    {
LABEL_4:
    }
  }

LABEL_7:
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v7 = sub_2283929C0();

  return v7;
}

uint64_t sub_2281BB350(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a3;
  sub_2281BC944();
  v34 = *(v15 - 8);
  v35 = v15;
  MEMORY[0x28223BE20](v15);
  v33 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_228390EC0();
  MEMORY[0x28223BE20](v17 - 8);
  v39[3] = a7;
  v39[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a1, a7);
  v36 = *a5;
  v19 = (a6 + qword_27D8244C0);
  *v19 = 0xD000000000000014;
  v19[1] = 0x80000002283A9440;
  v20 = qword_27D8244C8;
  sub_228390EB0();
  v21 = objc_allocWithZone(sub_228390EF0());
  *(a6 + v20) = sub_228390EE0();
  v22 = qword_27D8244D0;
  *(a6 + qword_27D8244D0) = 0;
  v23 = qword_27D8244E0;
  *(a6 + qword_27D8244E0) = 0;
  *(a6 + qword_27D8244E8) = MEMORY[0x277D84FA0];
  sub_228180FB0(v39, a6 + qword_27D8244B0);
  *(a6 + v22) = a2;
  *(a6 + qword_27D8244D8) = a4;
  v24 = *(a8 + 24);
  v25 = a2;

  v38 = v24(a7, a8);
  sub_2281BC72C(0);
  swift_allocObject();
  *(a6 + qword_27D8244B8) = sub_228391890();
  *(a6 + qword_27D8244A8) = v36;
  *(a6 + v23) = v37;

  sub_2281BBE94(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  sub_22838FEF0();
  *(swift_allocObject() + 16) = xmmword_228397F40;
  sub_22838FED0();
  v26 = sub_22838F920();
  v27 = *(v26 + qword_27D8244E0);
  if (v27)
  {

    v28 = v27;
  }

  else
  {
    LOBYTE(v38) = 1;

    v29 = v33;
    sub_2283918C0();
    sub_2281BCDF8(&qword_27D8245C8, sub_2281BC944, MEMORY[0x277CBCE80]);
    v30 = v35;
    v28 = sub_228391990();
    (*(v34 + 8))(v29, v30);
  }

  v38 = v28;
  swift_allocObject();
  swift_weakInit();
  sub_2281BC99C(0, &qword_27D8245D0, MEMORY[0x277D839B0], MEMORY[0x277CBCD88]);
  sub_2281BCA04();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  sub_2281AFAAC();

  __swift_destroy_boxed_opaque_existential_0(v39);
  return v26;
}

uint64_t sub_2281BB874(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScheduleDataSource(0);
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a1, a7);
  return sub_2281BB350(v17, a2, a3, a4, a5, v18, a7, a8);
}

unint64_t sub_2281BB998()
{
  result = qword_27D824500;
  if (!qword_27D824500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824500);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HistoryDisplayContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HistoryDisplayContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_2281BBDA4(uint64_t a1)
{
  if (!qword_280DDB8D0)
  {
    sub_2281810DC(255, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v1 = sub_228393430();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDB8D0);
    }
  }
}

void sub_2281BBE0C(uint64_t a1)
{
  if (!qword_27D823918)
  {
    sub_2281810DC(255, &qword_27D827E00, MEMORY[0x277D10D40]);
    v1 = sub_228393430();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823918);
    }
  }
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2281BBE94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2281BBEF8(uint64_t a1)
{
  if (!qword_27D824538)
  {
    type metadata accessor for FutureDateRecencyState(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D824538);
    }
  }
}

uint64_t sub_2281BBF7C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2281BBE94(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2281BBFFC()
{
  if (!qword_27D824548)
  {
    v0 = sub_22838F440();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824548);
    }
  }
}

void sub_2281BC044(uint64_t a1)
{
  if (!qword_280DDB870)
  {
    sub_2281810DC(255, &qword_280DDB830, MEMORY[0x277D84D98]);
    v1 = sub_228393430();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDB870);
    }
  }
}

uint64_t sub_2281BC0AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2281BC114(uint64_t a1)
{
  if (!qword_27D824558)
  {
    sub_228391130();
    sub_2281BBE94(255, &qword_27D824560, type metadata accessor for ScheduleDataSource.DoseItem, MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D824558);
    }
  }
}

unint64_t sub_2281BC1F4()
{
  result = qword_27D824568;
  if (!qword_27D824568)
  {
    sub_2281BBE94(255, &qword_27D824560, type metadata accessor for ScheduleDataSource.DoseItem, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824568);
  }

  return result;
}

uint64_t sub_2281BC27C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2281BC2E4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_22817A958(255, a3, a4);
    v5 = sub_228392F00();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2281BC33C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819DA1C;

  return sub_2281B0828(a1, v4, v5, v7, v6);
}

void sub_2281BC3FC(uint64_t a1)
{
  if (!qword_27D824578)
  {
    sub_2281BC2E4(255, &qword_280DDBA60, &unk_280DDBA68, 0x277D11570);
    sub_2281810DC(255, &qword_280DDB860, MEMORY[0x277D84948]);
    v1 = sub_228392350();
    if (!v2)
    {
      atomic_store(v1, &qword_27D824578);
    }
  }
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  return sub_2281BC4A4(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2281BC4A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t block_destroy_helper_20(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

void sub_2281BC51C(uint64_t a1)
{
  if (!qword_27D824580)
  {
    sub_2281BC99C(255, &qword_27D824588, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCE30]);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_2281BC5E0();
    sub_2281A1504();
    v1 = sub_2283917D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D824580);
    }
  }
}

unint64_t sub_2281BC5E0()
{
  result = qword_27D824590;
  if (!qword_27D824590)
  {
    sub_2281BC99C(255, &qword_27D824588, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCE30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824590);
  }

  return result;
}

void sub_2281BC660(uint64_t a1)
{
  if (!qword_27D824598)
  {
    sub_2281BC72C(255);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_2281BCDF8(&qword_27D8245A8, sub_2281BC72C, MEMORY[0x277CBCE48]);
    sub_2281A1504();
    v1 = sub_2283917D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D824598);
    }
  }
}

void sub_2281BC72C(uint64_t a1)
{
  if (!qword_27D8245A0)
  {
    sub_2281BC2E4(255, &qword_280DDBA60, &unk_280DDBA68, 0x277D11570);
    v1 = sub_228391880();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8245A0);
    }
  }
}

uint64_t sub_2281BC7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t objectdestroy_16Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2281BC884(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819D87C;

  return sub_2281B0828(a1, v4, v5, v7, v6);
}

void sub_2281BC944()
{
  if (!qword_27D8245C0)
  {
    v0 = sub_2283918B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8245C0);
    }
  }
}

void sub_2281BC99C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void, void))
{
  if (!*a2)
  {
    v5 = a4(0, a3, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2281BCA04()
{
  result = qword_27D8245D8;
  if (!qword_27D8245D8)
  {
    sub_2281BC99C(255, &qword_27D8245D0, MEMORY[0x277D839B0], MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8245D8);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2281BCA94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2281BCADC(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_2281BCB60(uint64_t a1)
{
  sub_2281BBFFC();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_2281BCBE0(uint64_t a1)
{
  result = sub_22838F440();
  if (v2 <= 0x3F)
  {
    result = sub_22817A958(319, &qword_280DDB9C8, 0x277D11580);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2281BCCC8()
{
  result = qword_27D824608;
  if (!qword_27D824608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824608);
  }

  return result;
}

unint64_t sub_2281BCD1C(uint64_t a1)
{
  result = sub_2281BCD44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2281BCD44()
{
  result = qword_27D824610;
  if (!qword_27D824610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824610);
  }

  return result;
}

uint64_t sub_2281BCD98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2281BCDF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MedicationEducationAndComponentsItem.primaryEducationContent.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MedicationEducationAndComponentsItem.medicationName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MedicationEducationAndComponentsItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t MedicationEducationAndComponentsItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t MedicationEducationAndComponentsItem.uniqueIdentifier.getter()
{
  type metadata accessor for MedicationEducationAndComponentsItem(0);
  sub_22838F4A0();
  sub_2281BD138(&qword_27D824618, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v2 = sub_228393420();
  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  MEMORY[0x22AAB5C80](*(v0 + 48), *(v0 + 56));
  return v2;
}

uint64_t type metadata accessor for MedicationEducationAndComponentsItem(uint64_t a1)
{
  result = qword_27D824650;
  if (!qword_27D824650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MedicationEducationAndComponentsItem.init(medicationName:primaryEducationContent:componentsList:hasEducation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  type metadata accessor for MedicationEducationAndComponentsItemCell();
  sub_2281BD138(&qword_27D824620, v14, type metadata accessor for MedicationEducationAndComponentsItemCell, &protocol conformance descriptor for MedicationEducationAndComponentsItemCell);
  *(a7 + 48) = sub_22838FBB0();
  *(a7 + 56) = v15;
  type metadata accessor for MedicationEducationAndComponentsItem(0);
  result = sub_22838F490();
  *(a7 + 16) = a1;
  *(a7 + 24) = a2;
  *a7 = a3;
  *(a7 + 8) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_2281BD138(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2281BD180()
{
  sub_22838F4A0();
  sub_2281BD138(&qword_27D824618, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v2 = sub_228393420();
  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  MEMORY[0x22AAB5C80](*(v0 + 48), *(v0 + 56));
  return v2;
}

uint64_t sub_2281BD22C(uint64_t a1)
{
  v2 = sub_2281BD138(&qword_27D824668, 255, type metadata accessor for MedicationEducationAndComponentsItem, &protocol conformance descriptor for MedicationEducationAndComponentsItem);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_2281BD2AC(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_2281BD338();
  return sub_2281BF02C(v6, &qword_280DDCD50, sub_22817A700);
}

void sub_2281BD338()
{
  v1 = v0;
  sub_2281BDBBC();
  sub_228392000();

  MEMORY[0x22AAB5C80](0xD00000000000001BLL, 0x80000002283A95B0);

  v2 = sub_2281BD608();
  v3 = [v2 text];

  if (!v3)
  {
    v3 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___primaryLabel] description];
  }

  v4 = sub_228392000();
  v6 = v5;

  MEMORY[0x22AAB5C80](v4, v6);

  v7 = sub_228391FC0();

  [v1 setAccessibilityIdentifier_];
}

uint64_t sub_2281BD490@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2281BD4E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2281BD338();
  return sub_2281BF02C(a1, &qword_280DDCD50, sub_22817A700);
}

void (*sub_2281BD570(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2281BD5D4;
}

void sub_2281BD5D4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_2281BD338();
  }
}

id sub_2281BD628()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v6 = sub_228392000();
  v7 = v1;
  v2 = v0;

  MEMORY[0x22AAB5C80](0xD000000000000012, 0x80000002283A9570);

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xED00006C6562614CLL);

  v3 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setNumberOfLines_];
  v4 = [objc_opt_self() preferredFontForTextStyle_];
  [v2 setFont_];

  [v2 setAdjustsFontForContentSizeCategory_];
  return v2;
}

id sub_2281BD7DC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v7 = sub_228392000();
  v8 = v1;
  v2 = v0;

  MEMORY[0x22AAB5C80](0xD000000000000012, 0x80000002283A9570);

  MEMORY[0x22AAB5C80](0xD000000000000010, 0x80000002283A9590);

  v3 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setNumberOfLines_];
  v4 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  v5 = [objc_opt_self() preferredFontForTextStyle_];
  [v2 setFont_];

  [v2 setAdjustsFontForContentSizeCategory_];
  return v2;
}

id sub_2281BD9C8(uint64_t *a1, uint64_t (*a2)(void))
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