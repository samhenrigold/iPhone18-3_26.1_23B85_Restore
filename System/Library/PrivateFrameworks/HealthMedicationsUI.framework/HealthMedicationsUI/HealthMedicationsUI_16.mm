uint64_t sub_2283141AC(void *a1)
{
  v97 = a1;
  ObjectType = swift_getObjectType();
  v102 = sub_2283911B0();
  v2 = *(v102 - 8);
  v3 = MEMORY[0x28223BE20](v102);
  v5 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v85 - v6;
  v93 = sub_22838F440();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_22838F4A0();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_22838F580();
  v96 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v95 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_22831713C(0, &qword_27D826200, type metadata accessor for Dosage, MEMORY[0x277D83D88]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v86 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v87 = &v85 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v85 - v17;
  v19 = type metadata accessor for Dosage(0);
  v99 = *(v19 - 8);
  v100 = v19;
  MEMORY[0x28223BE20](v19);
  v98 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22831713C(0, &qword_27D827AA0, type metadata accessor for DosageItem, v11);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v85 - v22;
  v24 = type metadata accessor for DosageItem(0);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_item;
  swift_beginAccess();
  sub_228317208(v1 + v28, v104, sub_228181D50);
  if (v104[3])
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v29 = swift_dynamicCast();
    (*(v25 + 56))(v23, v29 ^ 1u, 1, v24);
    if ((*(v25 + 48))(v23, 1, v24) != 1)
    {
      v30 = v27;
      sub_2283171A0(v23, v27, type metadata accessor for DosageItem);
      v31 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_currentDosage;
      swift_beginAccess();
      sub_228318BCC(v1 + v31, v18, &qword_27D826200, type metadata accessor for Dosage);
      if ((*(v99 + 48))(v18, 1, v100) == 1)
      {
        sub_228318DB0(v18, &qword_27D826200, type metadata accessor for Dosage);
        sub_228391170();
        v32 = sub_2283911A0();
        v33 = sub_2283925C0();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v103[0] = v35;
          *v34 = 136315138;
          v36 = sub_228393600();
          v38 = sub_2281C96FC(v36, v37, v103);
          v30 = v27;

          *(v34 + 4) = v38;
          _os_log_impl(&dword_22816B000, v32, v33, "[%s] CurrentDosage is nil", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v35);
          MEMORY[0x22AAB7B80](v35, -1, -1);
          MEMORY[0x22AAB7B80](v34, -1, -1);
        }

        (*(v2 + 8))(v7, v102);
      }

      else
      {
        v102 = v31;
        v47 = v98;
        sub_2283171A0(v18, v98, type metadata accessor for Dosage);
        v48 = v97;
        v49 = [v97 text];
        if (!v49)
        {
          goto LABEL_17;
        }

        v50 = v49;
        v51 = sub_228392000();
        v53 = v52;

        v54 = HIBYTE(v53) & 0xF;
        if ((v53 & 0x2000000000000000) == 0)
        {
          v54 = v51 & 0xFFFFFFFFFFFFLL;
        }

        if (v54)
        {
          v55 = [v48 text];
          ObjectType = v1;
          if (v55)
          {
            v56 = v55;
            sub_228392000();
          }

          sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
          v58 = v95;
          sub_22838F540();
          sub_228390AA0();
          v60 = v59;

          v61 = v96 + 8;
          v62 = *(v96 + 8);
          v63 = v58;
          v64 = v94;
          v62(v63, v94);
          v57 = v98;
          if (v60 != *(v98 + *(v100 + 24)))
          {
            v96 = v61;
            v65 = [v48 text];
            if (v65)
            {
              v66 = v65;
              sub_228392000();

              v64 = v94;
            }

            v67 = v95;
            sub_22838F540();
            sub_228390AA0();
            v69 = v68;

            v62(v67, v64);
            v70 = sub_2283127F4();
            sub_228313CA8(v69);
            v71 = sub_228391FC0();

            [v70 setText_];

            v72 = v98;
            (*(v89 + 16))(v88, v98, v90);
            (*(v92 + 16))(v91, v72 + *(v100 + 20), v93);
            v73 = [v48 text];
            if (v73)
            {
              v74 = v73;
              sub_228392000();
            }

            v75 = v95;
            sub_22838F540();
            sub_228390AA0();
            v77 = v76;

            v62(v75, v94);
            v78 = v87;
            (*(v89 + 32))(v87, v88, v90);
            v79 = v100;
            (*(v92 + 32))(v78 + *(v100 + 20), v91, v93);
            *(v78 + *(v79 + 24)) = v77;
            (*(v99 + 56))(v78, 0, 1, v79);
            v81 = ObjectType;
            v80 = v102;
            swift_beginAccess();
            sub_228318C4C(v78, v81 + v80, &qword_27D826200, type metadata accessor for Dosage);
            swift_endAccess();
            v82 = *(v30 + *(v24 + 48));
            if (v82)
            {
              v83 = v81 + v80;
              v84 = v86;
              sub_228318BCC(v83, v86, &qword_27D826200, type metadata accessor for Dosage);
              v82(v30, v84);
              sub_228318DB0(v84, &qword_27D826200, type metadata accessor for Dosage);
            }

            v57 = v98;
          }
        }

        else
        {
LABEL_17:
          v57 = v47;
        }

        sub_228317270(v57, type metadata accessor for Dosage);
      }

      return sub_228317270(v30, type metadata accessor for DosageItem);
    }
  }

  else
  {
    sub_228317270(v104, sub_228181D50);
    (*(v25 + 56))(v23, 1, 1, v24);
  }

  sub_228318DB0(v23, &qword_27D827AA0, type metadata accessor for DosageItem);
  sub_228391170();
  v39 = sub_2283911A0();
  v40 = sub_2283925C0();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v104[0] = v42;
    *v41 = 136315138;
    v43 = sub_228393600();
    v45 = sub_2281C96FC(v43, v44, v104);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_22816B000, v39, v40, "[%s] item is not a DatePickerItem", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x22AAB7B80](v42, -1, -1);
    MEMORY[0x22AAB7B80](v41, -1, -1);
  }

  return (*(v2 + 8))(v5, v102);
}

void sub_228314FDC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_timePicker);

  MEMORY[0x22AAB5C80](0x636950656D69542ELL, 0xEF6C6C654372656BLL);
  v4 = sub_228391FC0();

  [v3 setAccessibilityIdentifier_];

  v5 = sub_228312440();

  MEMORY[0x22AAB5C80](0x694665756C61562ELL, 0xEB00000000646C65);
  v6 = sub_228391FC0();

  [v5 setAccessibilityIdentifier_];
}

id sub_228315110()
{
  v1 = objc_opt_self();
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_currentLayoutConstraints;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);

  v3 = sub_228392190();

  [v1 deactivateConstraints_];

  *&v0[v2] = MEMORY[0x277D84F90];

  v4 = [v0 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = sub_2283928C0();
  if (v4)
  {
    sub_228315230();
  }

  else
  {
    sub_228315834();
  }

  return [v0 setNeedsLayout];
}

uint64_t sub_228315230()
{
  sub_22821B3F8(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228399D50;
  v2 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_timePicker];
  v3 = [v2 topAnchor];
  v4 = [v0 contentView];
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:6.0];
  *(v1 + 32) = v6;
  v7 = [v2 leadingAnchor];
  v8 = [v0 contentView];
  v9 = [v8 leadingAnchor];

  if (qword_27D823320 != -1)
  {
    swift_once();
  }

  v10 = *&qword_27D827A80;
  v11 = [v7 constraintEqualToAnchor:v9 constant:*&qword_27D827A80];

  *(v1 + 40) = v11;
  v12 = [v2 trailingAnchor];
  v13 = [v0 contentView];
  v14 = [v13 trailingAnchor];

  v15 = [v12 constraintGreaterThanOrEqualToAnchor:v14 constant:-v10];
  *(v1 + 48) = v15;
  v16 = sub_228312440();
  v17 = [v16 topAnchor];

  v18 = [v2 bottomAnchor];
  v19 = [v17 &selRef_resignFirstResponder + 6];

  *(v1 + 56) = v19;
  v20 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField;
  v21 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField] leadingAnchor];
  v22 = [v0 contentView];
  v23 = [v22 leadingAnchor];

  v24 = [v21 &selRef_resignFirstResponder + 6];
  *(v1 + 64) = v24;
  v25 = [*&v0[v20] trailingAnchor];
  v26 = [v0 contentView];
  v27 = [v26 trailingAnchor];

  v28 = [v25 constraintGreaterThanOrEqualToAnchor:v27 constant:-v10];
  *(v1 + 72) = v28;
  v29 = sub_2283127F4();
  v30 = [v29 topAnchor];

  v31 = [*&v0[v20] bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:6.0];

  *(v1 + 80) = v32;
  v33 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueLabel;
  v34 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueLabel] leadingAnchor];
  v35 = [v0 &selRef_didTapDay_];
  v36 = [v35 leadingAnchor];

  v37 = [v34 constraintEqualToAnchor:v36 constant:v10];
  *(v1 + 88) = v37;
  v38 = [*&v0[v33] trailingAnchor];
  v39 = [v0 &selRef_didTapDay_];
  v40 = [v39 trailingAnchor];

  v41 = [v38 constraintGreaterThanOrEqualToAnchor:v40 constant:-v10];
  *(v1 + 96) = v41;
  v42 = [*&v0[v33] bottomAnchor];
  v43 = [v0 &selRef_didTapDay_];
  v44 = [v43 bottomAnchor];

  v45 = [v42 constraintEqualToAnchor:v44 constant:-6.0];
  *(v1 + 104) = v45;
  v46 = objc_opt_self();
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v47 = sub_228392190();
  [v46 activateConstraints_];

  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_currentLayoutConstraints] = v1;
}

uint64_t sub_228315834()
{
  sub_22821B3F8(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228399D50;
  v2 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_timePicker];
  v3 = [v2 leadingAnchor];
  v4 = [v0 contentView];
  v5 = [v4 leadingAnchor];

  if (qword_27D823320 != -1)
  {
    swift_once();
  }

  v6 = *&qword_27D827A80;
  v7 = [v3 constraintEqualToAnchor:v5 constant:*&qword_27D827A80];

  *(v1 + 32) = v7;
  v8 = [v2 topAnchor];
  v9 = [v0 contentView];
  v10 = [v9 topAnchor];

  v11 = [v8 constraintEqualToAnchor:v10 constant:6.0];
  *(v1 + 40) = v11;
  v12 = [v2 bottomAnchor];
  v13 = [v0 contentView];
  v14 = [v13 bottomAnchor];

  v15 = [v12 constraintEqualToAnchor:v14 constant:-6.0];
  *(v1 + 48) = v15;
  v16 = sub_228312440();
  v17 = [v16 leadingAnchor];

  v18 = [v2 trailingAnchor];
  v19 = [v17 constraintGreaterThanOrEqualToAnchor:v18 constant:v6];

  *(v1 + 56) = v19;
  v20 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField;
  v21 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField] topAnchor];
  v22 = [v0 contentView];
  v23 = [v22 topAnchor];

  v24 = [v21 constraintEqualToAnchor:v23 constant:6.0];
  *(v1 + 64) = v24;
  v25 = [*&v0[v20] bottomAnchor];
  v26 = [v0 contentView];
  v27 = [v26 bottomAnchor];

  v28 = [v25 constraintEqualToAnchor:v27 constant:-6.0];
  *(v1 + 72) = v28;
  v29 = sub_2283127F4();
  v30 = [v29 leadingAnchor];

  v31 = [*&v0[v20] trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:5.0];

  *(v1 + 80) = v32;
  v33 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueLabel;
  v34 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueLabel] trailingAnchor];
  v35 = [v0 contentView];
  v36 = [v35 trailingAnchor];

  v37 = [v34 constraintEqualToAnchor:v36 constant:-v6];
  *(v1 + 88) = v37;
  v38 = [*&v0[v33] topAnchor];
  v39 = [v0 contentView];
  v40 = [v39 topAnchor];

  v41 = [v38 constraintEqualToAnchor:v40 constant:6.0];
  *(v1 + 96) = v41;
  v42 = [*&v0[v33] bottomAnchor];
  v43 = [v0 contentView];
  v44 = [v43 bottomAnchor];

  v45 = [v42 constraintEqualToAnchor:v44 constant:-6.0];
  *(v1 + 104) = v45;
  v46 = objc_opt_self();
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v47 = sub_228392190();
  [v46 activateConstraints_];

  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_currentLayoutConstraints] = v1;
}

id DosageCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DosageCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DosageCollectionViewCell.deselectionBehavior(in:)@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 1;
  v2 = *MEMORY[0x277D10F90];
  v3 = sub_22838FFC0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

Swift::Void __swiftcall DosageCollectionViewCell.textFieldShouldReturn(_:)(UITextField *a1)
{
  v1 = sub_228312440();
  [v1 resignFirstResponder];
}

void sub_22831625C()
{
  sub_228390360();
  sub_228390350();
  qword_27D827A80 = v0;
}

uint64_t sub_228316290()
{
  ObjectType = swift_getObjectType();
  v1 = sub_2283911B0();
  v89 = *(v1 - 8);
  v90 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v82 = &v77 - v5;
  v6 = MEMORY[0x277D83D88];
  sub_22831713C(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v80 = &v77 - v8;
  v86 = sub_22838F440();
  v84 = *(v86 - 8);
  v9 = MEMORY[0x28223BE20](v86);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v85 = &v77 - v12;
  sub_22831713C(0, &qword_27D826200, type metadata accessor for Dosage, v6);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v81 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v77 - v16;
  v18 = type metadata accessor for Dosage(0);
  v87 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v83 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22831713C(0, &qword_27D827AA0, type metadata accessor for DosageItem, v6);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v77 - v21;
  v23 = type metadata accessor for DosageItem(0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_item;
  swift_beginAccess();
  sub_228317208(v0 + v27, v92, sub_228181D50);
  if (v92[3])
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v28 = swift_dynamicCast();
    (*(v24 + 56))(v22, v28 ^ 1u, 1, v23);
    if ((*(v24 + 48))(v22, 1, v23) != 1)
    {
      v29 = v22;
      v30 = v26;
      sub_2283171A0(v29, v26, type metadata accessor for DosageItem);
      v31 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_currentDosage;
      swift_beginAccess();
      sub_228318BCC(v0 + v31, v17, &qword_27D826200, type metadata accessor for Dosage);
      if ((*(v87 + 48))(v17, 1, v18) == 1)
      {
        sub_228318DB0(v17, &qword_27D826200, type metadata accessor for Dosage);
        v32 = v82;
        sub_228391170();
        v33 = sub_2283911A0();
        v34 = sub_2283925C0();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v91[0] = v36;
          *v35 = 136315138;
          v37 = sub_228393600();
          v39 = sub_2281C96FC(v37, v38, v91);

          *(v35 + 4) = v39;
          v30 = v26;
          _os_log_impl(&dword_22816B000, v33, v34, "[%s] CurrentDosage is nil", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v36);
          MEMORY[0x22AAB7B80](v36, -1, -1);
          MEMORY[0x22AAB7B80](v35, -1, -1);
        }

        (*(v89 + 8))(v32, v90);
        return sub_228317270(v30, type metadata accessor for DosageItem);
      }

      v90 = v26;
      v48 = v83;
      sub_2283171A0(v17, v83, type metadata accessor for Dosage);
      ObjectType = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_timePicker);
      v89 = v0;
      v49 = [ObjectType date];
      sub_22838F3E0();

      v50 = v85;
      sub_22838F3B0();
      v51 = *(v84 + 8);
      v52 = v86;
      v51(v11, v86);
      sub_228318D68(&unk_27D827B20, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      if (sub_228391FB0())
      {
        v51(v50, v52);
        sub_228317270(v48, type metadata accessor for Dosage);
        return sub_228317270(v90, type metadata accessor for DosageItem);
      }

      v82 = v51;
      v53 = v90;
      v54 = &v90[*(v23 + 52)];
      v55 = v48;
      if (*v54)
      {
        v56 = *(v54 + 1);
        v57 = v84;
        v58 = *(v84 + 16);
        v59 = v80;
        v78 = *v54;
        v60 = v90;
        v61 = v86;
        v58(v80, v85, v86);
        v62 = v61;
        v53 = v60;
        v63 = v78;
        (*(v57 + 56))(v59, 0, 1, v62);

        v79 = v56;
        LOBYTE(v57) = v63(v53, v59, 0, 0);
        sub_228318DB0(v59, &qword_280DDCDB0, MEMORY[0x277CC9578]);
        if ((v57 & 1) == 0)
        {
          v72 = v85;
          sub_22838F350();
          v73 = sub_22838F380();
          v74 = v86;
          v75 = v82;
          (v82)(v11, v86);
          [ObjectType setDate:v73 animated:1];

          sub_228316290();
          sub_228176EC8(v63, v79);
          v75(v72, v74);
          goto LABEL_20;
        }

        sub_228176EC8(v63, v79);
        v55 = v83;
      }

      v64 = sub_22838F4A0();
      v65 = v81;
      (*(*(v64 - 8) + 16))(v81, v55, v64);
      v66 = v85;
      v67 = v86;
      (*(v84 + 16))(&v65[*(v18 + 20)], v85, v86);
      *&v65[*(v18 + 24)] = *(v55 + *(v18 + 24));
      v68 = v18;
      v69 = v65;
      (*(v87 + 56))(v65, 0, 1, v68);
      v70 = v89;
      swift_beginAccess();
      sub_228318C4C(v69, v70 + v31, &qword_27D826200, type metadata accessor for Dosage);
      swift_endAccess();
      v71 = *(v53 + *(v23 + 48));
      if (!v71)
      {
        (v82)(v66, v67);
        v76 = v55;
        goto LABEL_22;
      }

      sub_228318BCC(v70 + v31, v69, &qword_27D826200, type metadata accessor for Dosage);
      v71(v53, v69);
      sub_228318DB0(v69, &qword_27D826200, type metadata accessor for Dosage);
      (v82)(v66, v67);
LABEL_20:
      v76 = v83;
LABEL_22:
      sub_228317270(v76, type metadata accessor for Dosage);
      return sub_228317270(v53, type metadata accessor for DosageItem);
    }
  }

  else
  {
    sub_228317270(v92, sub_228181D50);
    (*(v24 + 56))(v22, 1, 1, v23);
  }

  sub_228318DB0(v22, &qword_27D827AA0, type metadata accessor for DosageItem);
  sub_228391170();
  v41 = sub_2283911A0();
  v42 = sub_2283925C0();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v92[0] = v44;
    *v43 = 136315138;
    v45 = sub_228393600();
    v47 = sub_2281C96FC(v45, v46, v92);

    *(v43 + 4) = v47;
    _os_log_impl(&dword_22816B000, v41, v42, "[%s] item is not a DatePickerItem", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x22AAB7B80](v44, -1, -1);
    MEMORY[0x22AAB7B80](v43, -1, -1);
  }

  return (*(v89 + 8))(v4, v90);
}

void _s19HealthMedicationsUI24DosageCollectionViewCellC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_currentDosage;
  v3 = type metadata accessor for Dosage(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = (v1 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_baseIdentifier);
  v12 = sub_228392000();
  v13 = v5;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283AF450);

  *v4 = v12;
  v4[1] = v13;
  v6 = v1 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_item;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0;
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___deleteAccessory;
  v8 = sub_2283912F0();
  v9 = *(*(v8 - 8) + 56);
  v9(v1 + v7, 1, 1, v8);
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_timePicker;
  v11 = [objc_allocWithZone(MEMORY[0x277D753E8]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setPreferredDatePickerStyle_];
  [v11 setDatePickerMode_];
  [v11 setMinuteInterval_];
  [v11 setContentHorizontalAlignment_];
  [v11 setRoundsToMinuteInterval_];
  *(v1 + v10) = v11;
  *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField) = 0;
  *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueLabel) = 0;
  v9(v1 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___spacerAccessory, 1, 1, v8);
  *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_currentLayoutConstraints) = MEMORY[0x277D84F90];
  sub_228393300();
  __break(1u);
}

void sub_22831713C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2283171A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_228317208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_228317270(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s19HealthMedicationsUI24DosageCollectionViewCellC27textFieldShouldBeginEditingySbSo06UITextI0CF_0()
{
  sub_22831713C(0, &qword_27D827AA0, type metadata accessor for DosageItem, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12[-v2];
  v4 = type metadata accessor for DosageItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_item;
  swift_beginAccess();
  sub_228317208(v0 + v8, v13, sub_228181D50);
  if (v14)
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v9 = swift_dynamicCast();
    (*(v5 + 56))(v3, v9 ^ 1u, 1, v4);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      sub_2283171A0(v3, v7, type metadata accessor for DosageItem);
      v10 = v7[*(v4 + 32)];
      sub_228317270(v7, type metadata accessor for DosageItem);
      return v10;
    }
  }

  else
  {
    sub_228317270(v13, sub_228181D50);
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  sub_228318DB0(v3, &qword_27D827AA0, type metadata accessor for DosageItem);
  return 0;
}

uint64_t _s19HealthMedicationsUI24DosageCollectionViewCellC24textFieldDidBeginEditingyySo06UITextI0CF_0(void *a1)
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
  aBlock[3] = &block_descriptor_25;
  v12 = _Block_copy(aBlock);
  v13 = a1;

  sub_228391DE0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_228318D68(&qword_280DDCF10, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_22831713C(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_228216D44();
  sub_228393030();
  MEMORY[0x22AAB6340](0, v9, v5, v12);
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t _s19HealthMedicationsUI24DosageCollectionViewCellC9textField_24shouldChangeCharactersIn17replacementStringSbSo06UITextI0C_So8_NSRangeVSStF_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t _s19HealthMedicationsUI24DosageCollectionViewCellC22textFieldDidEndEditingyySo06UITextI0CF_0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v71 = sub_2283911B0();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v3 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22838F440();
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x28223BE20](v4);
  v75 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_22838F4A0();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_22838F580();
  v81 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_22831713C(0, &qword_27D826200, type metadata accessor for Dosage, MEMORY[0x277D83D88]);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v67 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v69 = &v66 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v66 - v15;
  v17 = type metadata accessor for Dosage(0);
  v80 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v79 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22831713C(0, &qword_27D827AA0, type metadata accessor for DosageItem, v9);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v66 - v20;
  v22 = type metadata accessor for DosageItem(0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_228312440();
  [v26 resignFirstResponder];

  v27 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_item;
  swift_beginAccess();
  sub_228317208(v1 + v27, v83, sub_228181D50);
  if (!v84)
  {
    sub_228317270(v83, sub_228181D50);
    (*(v23 + 56))(v21, 1, 1, v22);
    return sub_228318DB0(v21, &qword_27D827AA0, type metadata accessor for DosageItem);
  }

  sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
  v28 = swift_dynamicCast();
  (*(v23 + 56))(v21, v28 ^ 1u, 1, v22);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    return sub_228318DB0(v21, &qword_27D827AA0, type metadata accessor for DosageItem);
  }

  v29 = v25;
  sub_2283171A0(v21, v25, type metadata accessor for DosageItem);
  v30 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell_currentDosage;
  swift_beginAccess();
  sub_228318BCC(v1 + v30, v16, &qword_27D826200, type metadata accessor for Dosage);
  if ((*(v80 + 48))(v16, 1, v17) == 1)
  {
    sub_228318DB0(v16, &qword_27D826200, type metadata accessor for Dosage);
    sub_228391170();
    v31 = sub_2283911A0();
    v32 = sub_2283925C0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v82[0] = v34;
      *v33 = 136315138;
      v35 = sub_228393600();
      v37 = sub_2281C96FC(v35, v36, v82);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_22816B000, v31, v32, "[%s] CurrentDosage is nil", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x22AAB7B80](v34, -1, -1);
      MEMORY[0x22AAB7B80](v33, -1, -1);
    }

    v70[1](v3, v71);
    return sub_228317270(v29, type metadata accessor for DosageItem);
  }

  v71 = v30;
  v39 = v79;
  sub_2283171A0(v16, v79, type metadata accessor for Dosage);
  v40 = OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField;
  v41 = [*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI24DosageCollectionViewCell____lazy_storage___valueField) text];
  if (v41)
  {
    v42 = v41;
    v43 = sub_228392000();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  sub_228313AB8(v43, v45);

  v46 = [*(v1 + v40) text];
  if (v46)
  {
    v47 = v46;
    sub_228392000();
  }

  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  sub_22838F540();
  sub_228390AA0();
  v49 = v48;

  v50 = *(v81 + 8);
  v81 += 8;
  v70 = v50;
  (v50)(v8, v78);
  if (v49 != *(v39 + *(v17 + 24)))
  {
    goto LABEL_20;
  }

  v51 = [*(v1 + v40) text];
  if (v51)
  {
    v52 = v51;
    v53 = sub_228392000();
    v55 = v54;

    if (!v53 && v55 == 0xE000000000000000)
    {

      v39 = v79;
LABEL_20:
      (*(v73 + 16))(v72, v39, v74);
      (*(v76 + 16))(v75, v39 + *(v17 + 20), v77);
      v57 = [*(v1 + v40) text];
      if (v57)
      {
        v58 = v57;
        sub_228392000();

        v39 = v79;
      }

      sub_22838F540();
      sub_228390AA0();
      v60 = v59;

      (v70)(v8, v78);
      v61 = v69;
      (*(v73 + 32))(v69, v72, v74);
      (*(v76 + 32))(v61 + *(v17 + 20), v75, v77);
      *(v61 + *(v17 + 24)) = v60;
      (*(v80 + 56))(v61, 0, 1, v17);
      v62 = v71;
      swift_beginAccess();
      sub_228318C4C(v61, v1 + v62, &qword_27D826200, type metadata accessor for Dosage);
      swift_endAccess();
      v63 = *(v29 + *(v22 + 48));
      if (v63)
      {
        v64 = v1 + v62;
        v65 = v67;
        sub_228318BCC(v64, v67, &qword_27D826200, type metadata accessor for Dosage);
        v63(v29, v65);
        sub_228318DB0(v65, &qword_27D826200, type metadata accessor for Dosage);
      }

      goto LABEL_24;
    }

    v56 = sub_228393460();

    v39 = v79;
    if (v56)
    {
      goto LABEL_20;
    }
  }

LABEL_24:
  sub_228317270(v39, type metadata accessor for Dosage);
  return sub_228317270(v29, type metadata accessor for DosageItem);
}

void sub_228318610(uint64_t a1)
{
  sub_22821B3F8(319, &qword_27D825070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22838F4A0();
    if (v2 <= 0x3F)
    {
      sub_22817A958(319, &qword_280DDB9E0, 0x277D115B8);
      if (v3 <= 0x3F)
      {
        sub_22831713C(319, &qword_27D827AD8, sub_228318784, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_22831713C(319, &unk_27D826FC0, sub_2281C35D8, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_228318784()
{
  if (!qword_27D827AE0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D827AE0);
    }
  }
}

void sub_2283187EC(uint64_t a1)
{
  sub_22831713C(319, &qword_27D826200, type metadata accessor for Dosage, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22831713C(319, &qword_280DDBCE0, MEMORY[0x277D74AE0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_228318BCC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22831713C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_228318C4C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22831713C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_228318CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v8[0] = a3;
  v8[1] = a4;
  v5(&v7, a1, a2, v8);
  return v7;
}

uint64_t sub_228318D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  result = (*(v4 + 16))(a1, a2, *a3, a3[1]);
  *a4 = result & 1;
  return result;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_228318D68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_228318DB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22831713C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t ClinicalRecordsMedicationsProvider.__allocating_init(healthStore:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_228318E64(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_228319854(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281AB388(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_228396260;
  sub_228392000();
  v11 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v12 = sub_228391FC0();

  v13 = [v11 initWithKey:v12 ascending:0];

  *(v10 + 32) = v13;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = v10;
  v14[4] = v2;
  v14[5] = v4;
  sub_2283198E8(0);
  sub_2283199CC(&qword_27D827B40, sub_2283198E8, MEMORY[0x277CBCEB0]);
  v15 = a1;

  sub_228391900();
  sub_2283199CC(&qword_27D827B48, sub_228319854, MEMORY[0x277CBCEB8]);
  v16 = sub_228391990();
  (*(v7 + 8))(v9, v6);
  return v16;
}

uint64_t sub_2283190E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  sub_2283198E8(0);
  swift_allocObject();
  v11 = a1;

  result = sub_2283918F0();
  *a5 = result;
  return result;
}

void sub_228319190(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  _sSo17HKQueryDescriptorC19HealthMedicationsUIE22recordsMatchingConceptySayABGSo9HKConceptCFZ_0(a3);
  sub_2281AB388(0, &qword_27D823EE0, MEMORY[0x277D837D0]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_228397F40;
  *(v12 + 32) = sub_228392000();
  *(v12 + 40) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_22818DEBC;
  *(v14 + 24) = v11;
  v15 = objc_allocWithZone(MEMORY[0x277CCD8B8]);
  sub_22817A958(0, &qword_27D827B50, 0x277CCD848);
  v16 = sub_228392190();

  sub_22817A958(0, &qword_280DDBAE8, 0x277CCAC98);
  v17 = sub_228392190();
  v18 = sub_228392190();

  aBlock[4] = sub_228319ADC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228319658;
  aBlock[3] = &block_descriptor_26;
  v19 = _Block_copy(aBlock);
  v20 = [v15 initWithQueryDescriptors:v16 sortDescriptors:v17 followingAnchor:0 upToAndIncludingAnchor:0 distinctByKeyPaths:v18 limit:0 resultsHandler:v19];

  _Block_release(v19);

  aBlock[0] = a6;
  swift_getMetatypeMetadata();
  v21 = v20;
  sub_228392020();
  v22 = sub_228391FC0();

  [v21 setDebugIdentifier_];

  [*(a5 + 16) executeQuery_];
}

void sub_228319430(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, char **a5)
{
  if (a2 && (v7 = sub_2281BFDB4(a2)) != 0)
  {
    v8 = v7;
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v16 = MEMORY[0x277D84F90];
  if (v8 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v14 = a4;
    v15 = a5;
    v10 = 0;
    a5 = &selRef_localizedStringFromTimeInterval_;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AAB6D80](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      a4 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if ([v11 isDisplayable])
      {
        sub_228393210();
        sub_228393250();
        sub_228393260();
        sub_228393220();
      }

      else
      {
      }

      ++v10;
      if (a4 == i)
      {
        a5 = v15;
        a4 = v14;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  v13 = a4;
  sub_228319958(0);
  sub_228393580();
  (a5)(v16, v17);
  sub_228319AFC(v16, v17);
}

uint64_t ClinicalRecordsMedicationsProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_228319658(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 32);
  if (a3)
  {
    sub_22817A958(0, &unk_280DDB968, 0x277CCD8A8);
    v7 = sub_2283921A0();
  }

  v10 = a2;
  v11 = a4;
  v12 = a5;
  v9(v10, v7, a4, a5);
}

uint64_t _sSo17HKQueryDescriptorC19HealthMedicationsUIE22recordsMatchingConceptySayABGSo9HKConceptCFZ_0(void *a1)
{
  sub_2281AB388(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228396260;
  v3 = [objc_opt_self() medicationOrderType];
  sub_22817A958(0, &qword_27D827B58, 0x277D10380);
  v4 = [a1 identifier];
  [v4 rawIdentifier];

  v5 = sub_228392B70();
  v6 = [objc_allocWithZone(MEMORY[0x277CCD848]) initWithSampleType:v3 predicate:v5];

  *(v2 + 32) = v6;
  return v2;
}

void sub_228319854(uint64_t a1)
{
  if (!qword_27D827B30)
  {
    sub_2283198E8(255);
    sub_2283199CC(&qword_27D827B40, sub_2283198E8, MEMORY[0x277CBCEB0]);
    v1 = sub_228391910();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827B30);
    }
  }
}

void sub_2283198E8(uint64_t a1)
{
  if (!qword_27D827B38)
  {
    sub_228319958(255);
    sub_228192C1C();
    v1 = sub_2283918E0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827B38);
    }
  }
}

void sub_228319958(uint64_t a1)
{
  if (!qword_27D8241F8)
  {
    sub_22817A958(255, &qword_27D824200, 0x277CCD5F8);
    v1 = sub_228392240();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8241F8);
    }
  }
}

uint64_t sub_2283199CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_228319AFC(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_228319B08()
{
  v0 = sub_22838F4A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InteractionFactorsHeaderItem();
  v5 = swift_allocObject();
  type metadata accessor for InteractionFactorsHeaderCell();
  sub_22831A17C(&qword_27D825718, type metadata accessor for InteractionFactorsHeaderCell, &protocol conformance descriptor for InteractionFactorsHeaderCell);
  *(v5 + 16) = sub_22838FBB0();
  *(v5 + 24) = v6;
  sub_22818272C(0, &qword_27D823910, MEMORY[0x277D10F78]);
  sub_22838FEF0();
  v7 = swift_allocObject();
  v11 = xmmword_228397F40;
  *(v7 + 16) = xmmword_228397F40;
  sub_22818272C(0, &qword_27D823918, sub_228182780);
  v8 = swift_allocObject();
  *(v8 + 16) = v11;
  *(v8 + 56) = v4;
  *(v8 + 64) = sub_22831A17C(&qword_27D825720, type metadata accessor for InteractionFactorsHeaderItem, &protocol conformance descriptor for InteractionFactorsHeaderItem);
  *(v8 + 32) = v5;

  sub_22838F490();
  sub_22838F450();
  (*(v1 + 8))(v3, v0);
  sub_22838FED0();
  v9 = sub_22838F920();

  return v9;
}

uint64_t sub_228319DC4(uint64_t a1, uint64_t a2)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  sub_2283928D0();
  sub_2283900B0();
  v6 = sub_2283900C0();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t InteractionFactorsHeaderDataSource.__deallocating_deinit(uint64_t a1)
{
  _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall InteractionFactorsHeaderDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for InteractionFactorsHeaderCell();
  sub_22831A17C(&qword_27D825718, type metadata accessor for InteractionFactorsHeaderCell, &protocol conformance descriptor for InteractionFactorsHeaderCell);
  sub_2283926B0();
}

uint64_t type metadata accessor for InteractionFactorsHeaderDataSource(uint64_t a1)
{
  result = qword_27D827B68;
  if (!qword_27D827B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22831A06C()
{
  type metadata accessor for InteractionFactorsHeaderCell();
  sub_22831A17C(&qword_27D825718, type metadata accessor for InteractionFactorsHeaderCell, &protocol conformance descriptor for InteractionFactorsHeaderCell);
  return sub_2283926B0();
}

uint64_t sub_22831A17C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CustomStrengthOptionItem.init(title:actionTitle:onActionTapped:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  type metadata accessor for CustomStrengthOptionCell();
  sub_22831A270();
  result = sub_22838FBB0();
  a7[6] = result;
  a7[7] = v15;
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

unint64_t sub_22831A270()
{
  result = qword_27D8271D8;
  if (!qword_27D8271D8)
  {
    type metadata accessor for CustomStrengthOptionCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8271D8);
  }

  return result;
}

uint64_t CustomStrengthOptionItem.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CustomStrengthOptionItem.actionTitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CustomStrengthOptionItem.onActionTapped.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CustomStrengthOptionItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t CustomStrengthOptionItem.uniqueIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[6];
  sub_2283931D0();

  MEMORY[0x22AAB5C80](0x3A656C7469745FLL, 0xE700000000000000);
  MEMORY[0x22AAB5C80](v1, v2);
  MEMORY[0x22AAB5C80](0x6E6F69746361202CLL, 0xEE003A656C746954);
  MEMORY[0x22AAB5C80](v3, v4);
  return v5;
}

uint64_t static CustomStrengthOptionItem.== infix(_:_:)(uint64_t *a1, void *a2)
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

uint64_t CustomStrengthOptionItem.hash(into:)(uint64_t a1)
{
  sub_2283920B0();

  return sub_2283920B0();
}

uint64_t CustomStrengthOptionItem.hashValue.getter()
{
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  return sub_228393570();
}

unint64_t sub_22831A5C0()
{
  result = qword_27D827B78;
  if (!qword_27D827B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827B78);
  }

  return result;
}

unint64_t sub_22831A618()
{
  result = qword_27D827B80;
  if (!qword_27D827B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827B80);
  }

  return result;
}

uint64_t sub_22831A670(uint64_t a1)
{
  v2 = sub_2282BC780();

  return MEMORY[0x282169440](a1, v2);
}

id sub_22831A6CC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  [v0 setAdjustsFontForContentSizeCategory_];
  v2 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  return v0;
}

id sub_22831A7C4()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell____lazy_storage___actionButton;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell____lazy_storage___actionButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell____lazy_storage___actionButton);
  }

  else
  {
    v4 = [objc_opt_self() buttonWithType_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = v4;
    [v5 setContentHorizontalAlignment_];
    [v5 setContentVerticalAlignment_];

    [v5 addTarget:v0 action:sel_actionButtonTapped forControlEvents:64];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_22831A8A8(double a1, double a2, double a3, double a4)
{
  sub_22831B690(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v52 - v10;
  v12 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell_item];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  v13 = OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell_titleLabel;
  *&v4[v13] = sub_22831A6CC();
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell____lazy_storage___actionButton] = 0;
  v14 = type metadata accessor for CustomStrengthOptionCell();
  v54.receiver = v4;
  v54.super_class = v14;
  v15 = objc_msgSendSuper2(&v54, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = [v15 contentView];
  v17 = OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell_titleLabel;
  [v16 addSubview_];

  v18 = [v15 &selRef_didTapDay_];
  v19 = sub_22831A7C4();
  [v18 addSubview_];

  sub_228391380();
  v20 = sub_2283913A0();
  (*(*(v20 - 8) + 56))(v11, 0, 1, v20);
  MEMORY[0x22AAB6420](v11);
  v53 = objc_opt_self();
  sub_228180ED0();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_228399E10;
  v22 = [*&v15[v17] leadingAnchor];
  v23 = [v15 &selRef_didTapDay_];
  v24 = [v23 layoutMarginsGuide];

  v25 = [v24 &selRef_logTimeChanged_ + 1];
  v26 = [v22 constraintEqualToAnchor_];

  *(v21 + 32) = v26;
  v27 = [*&v15[v17] trailingAnchor];
  v28 = [v15 &selRef_didTapDay_];
  v29 = [v28 layoutMarginsGuide];

  v30 = [v29 trailingAnchor];
  v31 = [v27 constraintEqualToAnchor_];

  *(v21 + 40) = v31;
  v32 = [*&v15[v17] topAnchor];
  v33 = [v15 &selRef_didTapDay_];
  v34 = [v33 topAnchor];

  v35 = [v32 constraintEqualToAnchor_];
  *(v21 + 48) = v35;
  v36 = OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell____lazy_storage___actionButton;
  v37 = [*&v15[OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell____lazy_storage___actionButton] topAnchor];
  v38 = [*&v15[v17] bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:6.0];

  *(v21 + 56) = v39;
  v40 = [*&v15[v36] leadingAnchor];
  v41 = [*&v15[v17] leadingAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  *(v21 + 64) = v42;
  v43 = [*&v15[v36] trailingAnchor];
  v44 = [*&v15[v17] trailingAnchor];
  v45 = [v43 constraintEqualToAnchor_];

  *(v21 + 72) = v45;
  v46 = [*&v15[v36] bottomAnchor];
  v47 = [v15 contentView];

  v48 = [v47 bottomAnchor];
  v49 = [v46 constraintEqualToAnchor_];

  *(v21 + 80) = v49;
  sub_2281BF1B8();
  v50 = sub_228392190();

  [v53 activateConstraints_];

  return v15;
}

uint64_t sub_22831AF00()
{
  sub_22831B690(0, &qword_280DDB950, MEMORY[0x277D75058]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v19 - v2;
  v4 = sub_228392D00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_228392DE0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell_item;
  swift_beginAccess();
  sub_22817E6C8(v0 + v12, v27);
  if (!v28)
  {
    return sub_22819482C(v27);
  }

  sub_22817A700();
  result = swift_dynamicCast();
  if (result)
  {
    v20 = v9;
    v14 = v5;
    v19[0] = v24;
    v19[1] = v23;
    v21 = v26;
    v22 = v25;
    v15 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell_titleLabel);
    v16 = sub_228391FC0();
    [v15 setText_];

    sub_228392DA0();

    sub_228392DB0();
    sub_228392CF0();
    sub_228392D40();
    (*(v14 + 104))(v7, *MEMORY[0x277D74FF8], v4);
    sub_228392D20();
    v17 = sub_22831A7C4();
    v18 = v20;
    (*(v20 + 16))(v3, v11, v8);
    (*(v18 + 56))(v3, 0, 1, v8);
    sub_228392E10();

    return (*(v18 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_22831B25C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell_item;
  swift_beginAccess();
  sub_22817E6C8(v0 + v1, v4);
  if (!v5)
  {
    return sub_22819482C(v4);
  }

  sub_22817A700();
  result = swift_dynamicCast();
  if (result)
  {
    v3();
  }

  return result;
}

id sub_22831B36C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomStrengthOptionCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22831B3FC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22831B454(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22831AF00();
  return sub_22819482C(a1);
}

uint64_t (*sub_22831B4C0(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22831B524;
}

uint64_t sub_22831B528@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a1);
}

uint64_t sub_22831B584(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v3 + v4);
  swift_endAccess();
  sub_22831AF00();
  return sub_22819482C(a1);
}

uint64_t (*sub_22831B5F4(uint64_t a1))()
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_22831B6E4;
}

uint64_t sub_22831B65C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_22831AF00();
  }

  return result;
}

void sub_22831B690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_22831B6E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  return v1;
}

uint64_t PregnancyLactationInteractionCriticalAlertDataSource.__allocating_init(listManager:healthStore:viewController:analyticsManager:pregnancyModelProvider:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v31 = a5;
  sub_22831F6D8(0, &qword_27D827BA0, MEMORY[0x277CBCED0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = qword_27D827BC8;
  aBlock = 0;
  sub_22831F8E8(0, &qword_27D827BA8, &qword_27D827BB0, &qword_27D827BB8, 0x277D114F8);
  sub_228391920();
  v16 = v14 + v15;
  v17 = a3;
  v18 = a4;
  v19 = v31;
  (*(v11 + 32))(v16, v13, v10);
  *(v14 + qword_27D827BD0) = 0;
  *(v14 + qword_27D827BD8) = 0;
  *(v14 + qword_27D827BE0) = MEMORY[0x277D84FA0];
  *(v14 + qword_27D827BE8) = a1;
  *(v14 + qword_27D827BF0) = a2;
  swift_unknownObjectWeakAssign();
  *(v14 + qword_27D827BF8) = v18;
  if (v19)
  {

    v20 = a2;

    v21 = v19;
  }

  else
  {
    v22 = objc_allocWithZone(MEMORY[0x277D119C8]);

    v23 = a2;

    v21 = [v22 initWithHealthStore_];
  }

  *(v14 + qword_27D827C00) = v21;
  aBlock = 0;
  LOBYTE(v33) = 1;
  sub_22831BF5C(0);
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  *(v14 + qword_27D827C18) = sub_228391890();
  v24 = sub_22838F920();
  swift_retain_n();
  v25 = sub_22831C400();
  v26 = swift_allocObject();
  swift_weakInit();
  v36 = sub_22831C958;
  v37 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_22831CA40;
  v35 = &block_descriptor_27;
  v27 = _Block_copy(&aBlock);

  [v25 allDismissedPregnancyLactationInteractionsWithCompletion_];
  _Block_release(v27);

  sub_22831CBBC();
  sub_22838F910();
  sub_22838FCD0();

  v28 = sub_22838FF20();

  [v28 registerObserver_];

  [v21 registerObserver:v24 isUserInitiated:1];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v24;
}

uint64_t PregnancyLactationInteractionCriticalAlertDataSource.init(listManager:healthStore:viewController:analyticsManager:pregnancyModelProvider:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v31 = a5;
  sub_22831F6D8(0, &qword_27D827BA0, MEMORY[0x277CBCED0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  swift_unknownObjectWeakInit();
  v15 = qword_27D827BC8;
  aBlock = 0;
  sub_22831F8E8(0, &qword_27D827BA8, &qword_27D827BB0, &qword_27D827BB8, 0x277D114F8);
  sub_228391920();
  v16 = v5 + v15;
  v17 = a3;
  v18 = a4;
  v19 = v31;
  (*(v12 + 32))(v16, v14, v11);
  *(v5 + qword_27D827BD0) = 0;
  *(v5 + qword_27D827BD8) = 0;
  *(v5 + qword_27D827BE0) = MEMORY[0x277D84FA0];
  *(v5 + qword_27D827BE8) = a1;
  *(v5 + qword_27D827BF0) = a2;
  swift_unknownObjectWeakAssign();
  *(v5 + qword_27D827BF8) = v18;
  if (v19)
  {

    v20 = a2;

    v21 = v19;
  }

  else
  {
    v22 = objc_allocWithZone(MEMORY[0x277D119C8]);

    v23 = a2;

    v21 = [v22 initWithHealthStore_];
  }

  *(v5 + qword_27D827C00) = v21;
  aBlock = 0;
  LOBYTE(v33) = 1;
  sub_22831BF5C(0);
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  *(v5 + qword_27D827C18) = sub_228391890();
  v24 = sub_22838F920();
  swift_retain_n();
  v25 = sub_22831C400();
  v26 = swift_allocObject();
  swift_weakInit();
  v36 = sub_228320D68;
  v37 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_22831CA40;
  v35 = &block_descriptor_5_2;
  v27 = _Block_copy(&aBlock);

  [v25 allDismissedPregnancyLactationInteractionsWithCompletion_];
  _Block_release(v27);

  sub_22831CBBC();
  sub_22838F910();
  sub_22838FCD0();

  v28 = sub_22838FF20();

  [v28 registerObserver_];

  [v21 registerObserver:v24 isUserInitiated:1];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v24;
}

void sub_22831BF5C(uint64_t a1)
{
  if (!qword_27D827C08)
  {
    sub_22831BFF4(255, &qword_27D827C10, type metadata accessor for HKMCPregnancyState, MEMORY[0x277D83D88]);
    v1 = sub_228391880();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827C08);
    }
  }
}

void sub_22831BFF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22831C058()
{
  MEMORY[0x22AAB7C80](v0 + qword_27D827BC0);

  v1 = qword_27D827BC8;
  sub_22831F6D8(0, &qword_27D827BA0, MEMORY[0x277CBCED0]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
}

uint64_t PregnancyLactationInteractionCriticalAlertDataSource.deinit()
{
  [*(v0 + qword_27D827C00) unregisterObserver_];
  v1 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();
  MEMORY[0x22AAB7C80](v1 + qword_27D827BC0);

  v2 = qword_27D827BC8;
  sub_22831F6D8(0, &qword_27D827BA0, MEMORY[0x277CBCED0]);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  swift_unknownObjectRelease();

  return v1;
}

uint64_t PregnancyLactationInteractionCriticalAlertDataSource.__deallocating_deinit()
{
  PregnancyLactationInteractionCriticalAlertDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22831C2F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  v6 = [objc_opt_self() systemBackgroundColor];
  sub_228390050();
  sub_2283900B0();
  v7 = sub_2283900C0();
  (*(v3 + 8))(v5, v2);
  return v7;
}

id sub_22831C400()
{
  v1 = qword_27D827BD0;
  v2 = *(v0 + qword_27D827BD0);
  if (v2)
  {
    v3 = *(v0 + qword_27D827BD0);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D11530]) initWithHealthStore_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_22831C484()
{
  sub_228241B70();
  result = sub_2283915B0();
  if (result >= 1)
  {
    return sub_228390FE0();
  }

  return result;
}

uint64_t sub_22831C4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_228241B70();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283915D0();

  if (sub_2283915B0() < 1)
  {

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_228390FE0();
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_22831C620(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_228391DC0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_228391DF0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
    v22 = sub_228392790();
    v15 = swift_allocObject();
    v15[2] = a2;
    v15[3] = v14;
    v15[4] = a1;
    aBlock[4] = sub_228320D2C;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228191E9C;
    aBlock[3] = &block_descriptor_42;
    v16 = _Block_copy(aBlock);
    v21 = v9;
    v17 = v16;
    v18 = a2;

    sub_228391DE0();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_22831F2D8(&qword_280DDCF10, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_22831BFF4(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_228216D44();
    sub_228393030();
    v19 = v22;
    MEMORY[0x22AAB6340](0, v12, v8, v17);
    _Block_release(v17);

    (*(v6 + 8))(v8, v5);
    return (*(v10 + 8))(v12, v21);
  }

  return result;
}

uint64_t sub_22831C960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
  }

  return sub_228391970();
}

uint64_t sub_22831CA40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_22817A958(0, &qword_27D827BB8, 0x277D114F8);
    v4 = sub_2283921A0();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22831CAFC(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  sub_22817A958(0, &qword_280DDBB00, 0x277CCD8D8);
  v4 = [swift_getObjCClassFromMetadata() lactationType];
  if (v4)
  {
    v5 = v4;
    if (*(v3 + 16) && (v6 = sub_2281A7B2C(v4), (v7 & 1) != 0))
    {
      v8 = *(*(v3 + 56) + 8 * v6);

      v9 = v8 > 0;
    }

    else
    {

      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    __break(1u);
  }
}

id sub_22831CBBC()
{
  v1 = v0;
  sub_22831BFF4(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v98 = &v70 - v3;
  v72 = sub_228392570();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22831F530(0);
  v79 = v5;
  v77 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v75 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22831F5CC(0);
  v81 = v7;
  v80 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v76 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22838F440();
  v103 = *(v9 - 8);
  v104 = v9;
  MEMORY[0x28223BE20](v9);
  v102 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22831F6D8(0, &qword_27D827CE8, MEMORY[0x277CBCEC0]);
  v89 = v11;
  v88 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v105 = &v70 - v12;
  sub_22831F758(0, &qword_27D827CF0, &qword_280DDBB50, &qword_280DDB9E0, 0x277D115B8);
  v14 = v13;
  v99 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v70 - v15;
  sub_22831F81C(0);
  v18 = *(v17 - 8);
  v100 = v17;
  v101 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22831F944(0);
  v74 = v21;
  v73 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = (&v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22831F968(0);
  v84 = v24;
  v83 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v78 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22831FC20(0);
  v86 = v26;
  v85 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v82 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22831FEF8(0);
  v90 = *(v28 - 8);
  v91 = v28;
  MEMORY[0x28223BE20](v28);
  v87 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22831FF8C(0);
  v93 = *(v30 - 8);
  v94 = v30;
  MEMORY[0x28223BE20](v30);
  v92 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228320068(0);
  v96 = *(v32 - 8);
  v97 = v32;
  MEMORY[0x28223BE20](v32);
  v95 = &v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_2283906C0();
  sub_22830F1F0(0);
  sub_22818DF04(0, &qword_280DDBB50, &qword_280DDB9E0, 0x277D115B8);
  sub_22831F2D8(&qword_27D827D00, sub_22830F1F0, MEMORY[0x277CBCD90]);
  sub_2283919A0();

  swift_allocObject();
  swift_weakInit();
  sub_22831F8E8(0, &unk_27D827D10, &qword_27D824A48, &qword_27D827D20, 0x277D11568);
  sub_2283916C0();

  v99[1](v16, v14);
  sub_22818DF04(0, &qword_27D824A48, &qword_27D827D20, 0x277D11568);
  v99 = v23;
  v34 = v100;
  sub_2283916B0();
  (*(v101 + 8))(v20, v34);
  swift_beginAccess();
  sub_22831F6D8(0, &qword_27D827BA0, MEMORY[0x277CBCED0]);
  sub_228391930();
  swift_endAccess();
  v106 = *(v0 + qword_27D827C18);
  v35 = objc_opt_self();

  v36 = v102;
  sub_22838F330();
  v37 = sub_22838F380();
  (*(v103 + 8))(v36, v104);
  v38 = [v35 predicateForSamplesWithStartDate:0 endDate:v37 options:0];

  v104 = v1;
  sub_228222D8C(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_228396260;
  sub_22817A958(0, &qword_280DDBB00, 0x277CCD8D8);
  result = [swift_getObjCClassFromMetadata() lactationType];
  if (result)
  {
    *(v39 + 32) = result;
    v41 = v38;
    v42 = v70;
    sub_228392580();

    sub_22831F2D8(&qword_27D827CC0, MEMORY[0x277D11358], MEMORY[0x277D11350]);
    v43 = v75;
    v44 = v72;
    sub_2283919F0();
    (*(v71 + 8))(v42, v44);
    v45 = MEMORY[0x277CBCE88];
    sub_22831FB00(0, &qword_27D827CD0, MEMORY[0x277CBCE88]);
    v103 = MEMORY[0x277CBCC08];
    sub_22831F2D8(&qword_27D827CD8, sub_22831F530, MEMORY[0x277CBCC08]);
    sub_22831FBDC(&qword_27D827CE0, &qword_27D827CD0, v45, MEMORY[0x277CBCE90]);
    v46 = v76;
    v47 = v79;
    sub_228391A10();
    (*(v77 + 8))(v43, v47);
    sub_22831F2D8(&qword_27D827DE8, sub_22831F5CC, MEMORY[0x277CBCC40]);
    v48 = v81;
    v49 = sub_228391990();

    (*(v80 + 8))(v46, v48);
    v110 = v49;
    sub_22831BF5C(0);
    v50 = MEMORY[0x277CBCD88];
    sub_22831FB00(0, &qword_27D8245D0, MEMORY[0x277CBCD88]);
    sub_22831F2D8(&qword_27D827D40, sub_22831F944, MEMORY[0x277CBCB10]);
    sub_22831FB68();
    sub_22831F2D8(&unk_27D827D50, sub_22831BF5C, MEMORY[0x277CBCE48]);
    v51 = MEMORY[0x277CBCD90];
    sub_22831FBDC(&qword_27D8245D8, &qword_27D8245D0, v50, MEMORY[0x277CBCD90]);
    v52 = v78;
    v53 = v105;
    v54 = v74;
    v55 = v89;
    v56 = v99;
    sub_2283919D0();

    (*(v88 + 8))(v53, v55);
    (*(v73 + 8))(v56, v54);
    sub_2283917E0();
    v57 = MEMORY[0x277CBCD88];
    sub_22832054C(0, &qword_27D827D68, MEMORY[0x277CBCD88]);
    sub_22831F2D8(&qword_27D827D88, sub_22831F968, MEMORY[0x277CBCB00]);
    sub_2283205D4(&qword_27D827D90, &qword_27D827D68, v57, v51);
    v58 = v82;
    v59 = v84;
    sub_228391AF0();
    (*(v83 + 8))(v52, v59);
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v109 = 1;
    sub_22831F2D8(&qword_27D827DA8, sub_22831FC20, MEMORY[0x277CBCCE0]);
    v60 = v87;
    v61 = v86;
    sub_2283919B0();
    (*(v85 + 8))(v58, v61);
    sub_22831BFF4(0, &qword_27D827DB8, type metadata accessor for PregnancyLactationInteractionCriticalAlertItem, MEMORY[0x277D83940]);
    sub_22831F2D8(&qword_27D827DC0, sub_22831FEF8, MEMORY[0x277CBCB78]);

    v62 = v91;
    v63 = v92;
    sub_2283919F0();

    (*(v90 + 8))(v60, v62);
    sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
    v64 = sub_228392790();
    v106 = v64;
    v65 = sub_228392730();
    v66 = v98;
    (*(*(v65 - 8) + 56))(v98, 1, 1, v65);
    sub_22831F2D8(&unk_27D827DD8, sub_22831FF8C, v103);
    sub_2281A1504();
    v68 = v94;
    v67 = v95;
    sub_228391A70();
    sub_228320CBC(v66, &qword_280DDBAD0, MEMORY[0x277D85248]);

    (*(v93 + 8))(v63, v68);
    swift_allocObject();
    swift_weakInit();
    sub_22831F2D8(&unk_27D827DF0, sub_228320068, MEMORY[0x277CBCD60]);
    v69 = v97;
    sub_228391AC0();

    (*(v96 + 8))(v67, v69);
    swift_beginAccess();
    sub_228391800();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22831DE54@<X0>(unint64_t *a1@<X0>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = sub_228320618(v4);
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_22831DED0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v22 = a4;
  v23 = a5;
  sub_22831BFF4(0, &qword_27D827E20, sub_22831FD2C, MEMORY[0x277CBCE78]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = MEMORY[0x277CBCF38];
  sub_22832054C(0, &qword_27D827E28, MEMORY[0x277CBCF38]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v21 - v17;
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = v22 & 1;
  v28 = v23;
  sub_22831FD2C(0);

  sub_2283918C0();
  sub_2281810DC(0, &qword_280DDB860, MEMORY[0x277D84948]);
  sub_2283918A0();
  (*(v10 + 8))(v12, v9);
  sub_2283205D4(&qword_27D827E30, &qword_27D827E28, v13, MEMORY[0x277CBCF40]);
  v19 = sub_228391990();
  (*(v16 + 8))(v18, v15);
  return v19;
}

uint64_t sub_22831E148@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22831DED0(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 25));
  *a2 = result;
  return result;
}

uint64_t sub_22831E184@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *result;
  v4 = *(result + 8);
  v6 = *(result + 16);
  v7 = *(result + 24);
  v8 = *(result + 25);
  v9 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  if (v5)
  {

    sub_22832014C(v5, a2, v4, v6, v7, v8, &v11);

    v9 = v11;
  }

  *a3 = v9;
  return result;
}

uint64_t sub_22831E234(unint64_t *a1, uint64_t a2)
{
  v30 = sub_22838F4A0();
  v3 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22838FEF0();
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    if (v9 >> 62)
    {
      v12 = sub_2283930D0();
    }

    else
    {
      v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v12)
    {
      v31 = MEMORY[0x277D84F90];
      result = sub_2281CA2AC(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        __break(1u);
        return result;
      }

      v22[1] = v11;
      v13 = 0;
      v14 = v31;
      v15 = v9;
      v25 = (v3 + 8);
      v26 = v9 & 0xC000000000000001;
      v24 = v6 + 32;
      v23 = xmmword_228397F40;
      v27 = v8;
      v28 = v9;
      v16 = v8;
      do
      {
        v17 = v12;
        if (v26)
        {
          v18 = MEMORY[0x22AAB6D80](v13, v15);
        }

        else
        {
          v18 = *(v15 + 8 * v13 + 32);
        }

        sub_2281BBE0C(0);
        v19 = swift_allocObject();
        *(v19 + 16) = v23;
        *(v19 + 56) = type metadata accessor for PregnancyLactationInteractionCriticalAlertItem();
        *(v19 + 64) = sub_22831F2D8(&qword_27D827238, type metadata accessor for PregnancyLactationInteractionCriticalAlertItem, &protocol conformance descriptor for PregnancyLactationInteractionCriticalAlertItem);
        *(v19 + 32) = v18;

        sub_22838F490();
        sub_22838F450();
        (*v25)(v5, v30);
        sub_22838FED0();

        v31 = v14;
        v21 = *(v14 + 16);
        v20 = *(v14 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_2281CA2AC((v20 > 1), v21 + 1, 1);
          v14 = v31;
        }

        ++v13;
        *(v14 + 16) = v21 + 1;
        (*(v6 + 32))(v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21, v16, v29);
        v12 = v17;
        v15 = v28;
      }

      while (v17 != v13);
    }

    sub_22838F910();

    sub_22838FCD0();

    sub_22838FF50();
  }

  return result;
}

void sub_22831E5F8(void *a1, uint64_t a2)
{
  v4 = [a1 interactionType];
  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    if (v4 != 2)
    {
      sub_228393300();
      __break(1u);
      return;
    }

    v5 = 2;
  }

  v6 = [a1 medication];
  v7 = sub_22827F81C(v6, v5);
  v9 = v8;

  if (!v9)
  {
    v7 = MedicationSecondaryEducationType.unavailableText.getter();
    v9 = v10;
  }

  v11 = [a1 medication];
  v12 = [v11 localizedOntologyEducationContent];
  if (!v12)
  {

    v14 = 0;
LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  v13 = v12;
  v14 = [v12 primarySection];

  if (!v14)
  {

    goto LABEL_12;
  }

  sub_228392A90();

  sub_228222D8C(0, &qword_27D827E10, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2281BF13C();
  v14 = sub_228391F90();
  v16 = v15;

LABEL_13:
  v17 = sub_22824DB80(v5, [a1 medication], v7, v9, v14, v16);
  [v17 setModalPresentationStyle_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    [Strong showAdaptively:v17 sender:a2];
  }
}

void sub_22831E844(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  v8 = [a2 medication];
  v9 = [a2 interactionType];
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v12[4] = sub_228320544;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2283282E4;
  v12[3] = &block_descriptor_27;
  v11 = _Block_copy(v12);

  [a1 markPregnancyLactationInteractionForMedicationAsDismissed:v8 interactionType:v9 completion:v11];
  _Block_release(v11);
}

uint64_t sub_22831E980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = sub_22831C400();
    v4 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_228320D68;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22831CA40;
    aBlock[3] = &block_descriptor_32_0;
    v5 = _Block_copy(aBlock);

    [v3 allDismissedPregnancyLactationInteractionsWithCompletion_];
    _Block_release(v5);
  }

  return sub_228390FE0();
}

Swift::Void __swiftcall PregnancyLactationInteractionCriticalAlertDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for PregnancyLactationInteractionCriticalAlertCell();
  sub_22831F2D8(&qword_27D827228, type metadata accessor for PregnancyLactationInteractionCriticalAlertCell, &protocol conformance descriptor for PregnancyLactationInteractionCriticalAlertCell);
  sub_2283926B0();
}

uint64_t sub_22831EBA4()
{
  type metadata accessor for PregnancyLactationInteractionCriticalAlertCell();
  sub_22831F2D8(&qword_27D827228, type metadata accessor for PregnancyLactationInteractionCriticalAlertCell, &protocol conformance descriptor for PregnancyLactationInteractionCriticalAlertCell);
  return sub_2283926B0();
}

uint64_t PregnancyLactationInteractionCriticalAlertDataSource.pregnancyModelDidUpdate(_:)(void *a1)
{
  v2 = v1;
  sub_22831BFF4(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26[-v5];
  v7 = sub_2283911B0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (HKShowSensitiveLogItems())
  {
    sub_228391160();
    v11 = sub_2283911A0();
    v12 = sub_2283925E0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v13 = 136315138;
      v14 = sub_228393600();
      v16 = sub_2281C96FC(v14, v15, &v29);
      v27 = v12;
      v17 = a1;
      v18 = v16;

      *(v13 + 4) = v18;
      a1 = v17;
      _os_log_impl(&dword_22816B000, v11, v27, "[%s] Received pregnancy model update", v13, 0xCu);
      v19 = v28;
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x22AAB7B80](v19, -1, -1);
      MEMORY[0x22AAB7B80](v13, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
  }

  v20 = sub_2283922D0();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  sub_2283922A0();

  v21 = a1;
  v22 = sub_228392290();
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = v2;
  v23[5] = v21;
  sub_2281DC568(0, 0, v6, &unk_2283A42A8, v23);
}

uint64_t sub_22831EF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  sub_2283922A0();
  v5[6] = sub_228392290();
  v7 = sub_228392250();

  return MEMORY[0x2822009F8](sub_22831EFBC, v7, v6);
}

uint64_t sub_22831EFBC()
{
  v1 = *(v0 + 40);

  sub_228391870();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = [v1 state];
  if ((v3 & 1) != 0 || v2 != v4)
  {
    *(v0 + 16) = [*(v0 + 40) state];
    *(v0 + 24) = 0;
    sub_228391850();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22831F084(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819D87C;

  return sub_22831EF24(a1, v4, v5, v7, v6);
}

uint64_t sub_22831F144(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  PregnancyLactationInteractionCriticalAlertDataSource.pregnancyModelDidUpdate(_:)(v3);
}

uint64_t sub_22831F194@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228391960();

  *a2 = v4;
  return result;
}

uint64_t sub_22831F214(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_228391970();
}

uint64_t sub_22831F2D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PregnancyLactationInteractionCriticalAlertDataSource(uint64_t a1)
{
  result = qword_27D827C40;
  if (!qword_27D827C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22831F36C(uint64_t a1)
{
  sub_22831F6D8(319, &qword_27D827BA0, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_22831F530(uint64_t a1)
{
  if (!qword_27D827CB8)
  {
    sub_228392570();
    sub_22831F2D8(&qword_27D827CC0, MEMORY[0x277D11358], MEMORY[0x277D11350]);
    v1 = sub_228391740();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827CB8);
    }
  }
}

void sub_22831F5CC(uint64_t a1)
{
  if (!qword_27D827CC8)
  {
    sub_22831F530(255);
    v1 = MEMORY[0x277CBCE88];
    sub_22831FB00(255, &qword_27D827CD0, MEMORY[0x277CBCE88]);
    sub_22831F2D8(&qword_27D827CD8, sub_22831F530, MEMORY[0x277CBCC08]);
    sub_22831FBDC(&qword_27D827CE0, &qword_27D827CD0, v1, MEMORY[0x277CBCE90]);
    v2 = sub_228391750();
    if (!v3)
    {
      atomic_store(v2, &qword_27D827CC8);
    }
  }
}

void sub_22831F6D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_22831F8E8(255, &qword_27D827BA8, &qword_27D827BB0, &qword_27D827BB8, 0x277D114F8);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_22831F758(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_22830F1F0(255);
    sub_22818DF04(255, a3, a4, a5);
    sub_22831F2D8(&qword_27D827D00, sub_22830F1F0, MEMORY[0x277CBCD90]);
    v9 = sub_2283916D0();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22831F81C(uint64_t a1)
{
  if (!qword_27D827D08)
  {
    sub_22830F1F0(255);
    sub_22831F8E8(255, &unk_27D827D10, &qword_27D824A48, &qword_27D827D20, 0x277D11568);
    sub_22831F2D8(&qword_27D827D00, sub_22830F1F0, MEMORY[0x277CBCD90]);
    v1 = sub_2283916D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827D08);
    }
  }
}

void sub_22831F8E8(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_22818DF04(255, a3, a4, a5);
    v6 = sub_228392F00();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_22831F968(uint64_t a1)
{
  if (!qword_27D827D30)
  {
    sub_22831F944(255);
    sub_22831F6D8(255, &qword_27D827CE8, MEMORY[0x277CBCEC0]);
    sub_22831BF5C(255);
    v1 = MEMORY[0x277CBCD88];
    sub_22831FB00(255, &qword_27D8245D0, MEMORY[0x277CBCD88]);
    sub_22831F2D8(&qword_27D827D40, sub_22831F944, MEMORY[0x277CBCB10]);
    sub_22831FB68();
    sub_22831F2D8(&unk_27D827D50, sub_22831BF5C, MEMORY[0x277CBCE48]);
    sub_22831FBDC(&qword_27D8245D8, &qword_27D8245D0, v1, MEMORY[0x277CBCD90]);
    v2 = sub_2283916A0();
    if (!v3)
    {
      atomic_store(v2, &qword_27D827D30);
    }
  }
}

void sub_22831FB00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0], MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22831FB68()
{
  result = qword_27D827D48;
  if (!qword_27D827D48)
  {
    sub_22831F6D8(255, &qword_27D827CE8, MEMORY[0x277CBCEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827D48);
  }

  return result;
}

uint64_t sub_22831FBDC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22831FB00(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22831FC20(uint64_t a1)
{
  if (!qword_27D827D60)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_22832054C(255, &qword_27D827D68, MEMORY[0x277CBCD88]);
    sub_22831FE2C(255);
    sub_2283205D4(&qword_27D827D90, &qword_27D827D68, v1, MEMORY[0x277CBCD90]);
    sub_22831F2D8(&qword_27D827D98, sub_22831FE2C, MEMORY[0x277CBCBA0]);
    v2 = sub_228391780();
    if (!v3)
    {
      atomic_store(v2, &qword_27D827D60);
    }
  }
}

void sub_22831FD2C(uint64_t a1)
{
  if (!qword_27D827D70)
  {
    sub_22831F8E8(255, &unk_27D827D10, &qword_27D824A48, &qword_27D827D20, 0x277D11568);
    sub_22831F8E8(255, &qword_27D827BA8, &qword_27D827BB0, &qword_27D827BB8, 0x277D114F8);
    sub_22831BFF4(255, &qword_27D827C10, type metadata accessor for HKMCPregnancyState, MEMORY[0x277D83D88]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27D827D70);
    }
  }
}

void sub_22831FE2C(uint64_t a1)
{
  if (!qword_27D827D80)
  {
    sub_22831F968(255);
    sub_2281810DC(255, &qword_280DDB860, MEMORY[0x277D84948]);
    sub_22831F2D8(&qword_27D827D88, sub_22831F968, MEMORY[0x277CBCB00]);
    v1 = sub_228391710();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827D80);
    }
  }
}

void sub_22831FEF8(uint64_t a1)
{
  if (!qword_27D827DA0)
  {
    sub_22831FC20(255);
    sub_22831F2D8(&qword_27D827DA8, sub_22831FC20, MEMORY[0x277CBCCE0]);
    v1 = sub_228391700();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827DA0);
    }
  }
}

void sub_22831FF8C(uint64_t a1)
{
  if (!qword_27D827DB0)
  {
    sub_22831FEF8(255);
    sub_22831BFF4(255, &qword_27D827DB8, type metadata accessor for PregnancyLactationInteractionCriticalAlertItem, MEMORY[0x277D83940]);
    sub_22831F2D8(&qword_27D827DC0, sub_22831FEF8, MEMORY[0x277CBCB78]);
    v1 = sub_228391740();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827DB0);
    }
  }
}

void sub_228320068(uint64_t a1)
{
  if (!qword_27D827DC8)
  {
    sub_22831FF8C(255);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_22831F2D8(&unk_27D827DD8, sub_22831FF8C, MEMORY[0x277CBCC08]);
    sub_2281A1504();
    v1 = sub_2283917D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827DC8);
    }
  }
}

void sub_22832014C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, unsigned int a6, void *a7)
{
  LODWORD(v8) = a5;
  if (a1 >> 62)
  {
LABEL_40:
    v10 = sub_2283930D0();
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return;
    }
  }

  v11 = 0;
  v28 = qword_27D827BF8;
  if ((a3 & 0x8000000000000000) == 0)
  {
    v12 = a3 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v12 = a3;
  }

  v26 = v12;
  v36 = v8;
  v37 = a6;
  v35 = v10;
  while (1)
  {
LABEL_8:
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x22AAB6D80](v11, a1);
    }

    else
    {
      if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v13 = *(a1 + 32 + 8 * v11);
    }

    v14 = v13;
    if (__OFADD__(v11++, 1))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if ([v13 interactionType] != 1 || (v8 & 1) == 0 && a4 == 1) && (objc_msgSend(v14, sel_interactionType, v26) != 2 || (a6) && a3)
    {
      break;
    }

    if (v11 == v10)
    {
      return;
    }
  }

  if (a3 >> 62)
  {
    v8 = sub_2283930D0();
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = 0;
  while (v8 != v16)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x22AAB6D80](v16, a3);
    }

    else
    {
      if (v16 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v17 = *(a3 + 8 * v16 + 32);
    }

    v18 = v17;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    a6 = [v17 isEquivalentToPregnancyLactationInteraction_];

    ++v16;
    if (a6)
    {

      goto LABEL_32;
    }
  }

  v34 = swift_allocObject();
  *(v34 + 16) = v14;
  *(v34 + 24) = a2;
  v32 = swift_allocObject();
  swift_weakInit();
  v19 = v14;

  v20 = sub_22831C400();
  v33 = *(a2 + v28);
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = v19;
  v21[4] = v32;
  v21[5] = v33;
  type metadata accessor for PregnancyLactationInteractionCriticalAlertItem();
  v22 = swift_allocObject();
  type metadata accessor for PregnancyLactationInteractionCriticalAlertCell();
  sub_22831F2D8(&qword_27D827228, type metadata accessor for PregnancyLactationInteractionCriticalAlertCell, &protocol conformance descriptor for PregnancyLactationInteractionCriticalAlertCell);
  v31 = v19;

  v22[3] = sub_22838FBB0();
  v22[4] = v23;
  v24 = v31;

  v22[2] = v24;
  v22[5] = sub_228320530;
  v22[6] = v34;
  v22[7] = sub_228320538;
  v22[8] = v21;

  MEMORY[0x22AAB5D20](v25);
  if (*((*a7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2283921E0();
  }

  sub_228392230();

LABEL_32:
  LODWORD(v8) = v36;
  a6 = v37;
  v10 = v35;
  if (v11 != v35)
  {
    goto LABEL_8;
  }
}

void sub_22832054C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_22831FD2C(255);
    v7 = v6;
    v8 = sub_2281810DC(255, &qword_280DDB860, MEMORY[0x277D84948]);
    v9 = a3(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2283205D4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22832054C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_228320618(unint64_t a1)
{
  sub_22831BFF4(0, &unk_280DDBD10, MEMORY[0x277D11720], MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v47 - v6;
  v51 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2283930D0())
  {
    v49 = a1;
    v50 = i;
    if (i)
    {
      v9 = 0;
      v10 = a1 & 0xC000000000000001;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v10)
        {
          v12 = MEMORY[0x22AAB6D80](v9, a1);
        }

        else
        {
          if (v9 >= *(v11 + 16))
          {
            goto LABEL_54;
          }

          v12 = *(a1 + 8 * v9 + 32);
        }

        v13 = v12;
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        sub_228392A10();
        v15 = sub_228390F60();
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(v7, 1, v15) == 1)
        {

          sub_228320CBC(v7, &unk_280DDBD10, MEMORY[0x277D11720]);
        }

        else
        {
          v17 = sub_228390F40();
          (*(v16 + 8))(v7, v15);
          if (v17)
          {
            sub_228393210();
            sub_228393250();
            sub_228393260();
            sub_228393220();
          }

          else
          {
          }
        }

        a1 = v49;
        ++v9;
        if (v14 == v50)
        {
          i = v50;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

LABEL_17:
    KeyPath = swift_getKeyPath();

    v51 = sub_2281D93A0(v19);
    sub_2282014A8(&v51, KeyPath);
    v20 = 0;

    v21 = v51;
    if ((v51 & 0x8000000000000000) != 0 || (v51 & 0x4000000000000000) != 0)
    {
      v22 = sub_2283930D0();
    }

    else
    {
      v22 = *(v51 + 16);
    }

    v23 = MEMORY[0x277D84F90];
    v48 = 0;
    if (v22)
    {
      break;
    }

    v20 = MEMORY[0x277D84F90];
    v51 = v23;
    if (!i)
    {
      goto LABEL_42;
    }

LABEL_28:
    v47 = v20;
    v27 = 0;
    v28 = a1 & 0xC000000000000001;
    v29 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = &unk_280DDBD10;
    while (1)
    {
      if (v28)
      {
        v30 = MEMORY[0x22AAB6D80](v27, a1);
      }

      else
      {
        if (v27 >= *(v29 + 16))
        {
          goto LABEL_56;
        }

        v30 = *(a1 + 8 * v27 + 32);
      }

      v31 = v30;
      v32 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      sub_228392A10();
      v33 = sub_228390F60();
      v34 = *(v33 - 8);
      if ((*(v34 + 48))(v5, 1, v33) == 1)
      {

        sub_228320CBC(v5, &unk_280DDBD10, MEMORY[0x277D11720]);
      }

      else
      {
        v35 = sub_228390F50();
        (*(v34 + 8))(v5, v33);
        if (v35)
        {
          sub_228393210();
          sub_228393250();
          sub_228393260();
          sub_228393220();
        }

        else
        {
        }
      }

      a1 = v49;
      ++v27;
      if (v32 == v50)
      {
        v20 = v47;
        goto LABEL_42;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  v51 = MEMORY[0x277D84F90];
  sub_228393240();
  if (v22 < 0)
  {
    __break(1u);
LABEL_63:
    __break(1u);

    v46 = v20;
    goto LABEL_65;
  }

  v24 = 0;
  do
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x22AAB6D80](v24, v21);
    }

    else
    {
      v25 = *(v21 + 8 * v24 + 32);
    }

    v26 = v25;
    ++v24;
    [objc_allocWithZone(MEMORY[0x277D11568]) initWithMedication:v25 interactionType:1];

    sub_228393210();
    sub_228393250();
    sub_228393260();
    sub_228393220();
  }

  while (v22 != v24);

  v20 = v51;
  v51 = v23;
  if (v50)
  {
    goto LABEL_28;
  }

LABEL_42:
  v36 = swift_getKeyPath();

  v51 = sub_2281D93A0(v37);
  v38 = v48;
  sub_2282014A8(&v51, v36);
  if (!v38)
  {

    v39 = v51;
    if ((v51 & 0x8000000000000000) == 0 && (v51 & 0x4000000000000000) == 0)
    {
      v40 = *(v51 + 16);
      if (v40)
      {
        goto LABEL_46;
      }

LABEL_60:

      v44 = MEMORY[0x277D84F90];
LABEL_61:
      v51 = v20;
      sub_2281D5FB0(v44);
      return v51;
    }

    v40 = sub_2283930D0();
    if (!v40)
    {
      goto LABEL_60;
    }

LABEL_46:
    v51 = MEMORY[0x277D84F90];
    sub_228393240();
    if ((v40 & 0x8000000000000000) == 0)
    {
      v41 = 0;
      do
      {
        if ((v39 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x22AAB6D80](v41, v39);
        }

        else
        {
          v42 = *(v39 + 8 * v41 + 32);
        }

        v43 = v42;
        ++v41;
        [objc_allocWithZone(MEMORY[0x277D11568]) initWithMedication:v42 interactionType:2];

        sub_228393210();
        sub_228393250();
        sub_228393260();
        sub_228393220();
      }

      while (v40 != v41);

      v44 = v51;
      goto LABEL_61;
    }

    goto LABEL_63;
  }

  v46 = v38;
LABEL_65:

  __break(1u);
  return result;
}

uint64_t sub_228320CBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22831BFF4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for MedicationsLogDataSource(uint64_t a1)
{
  result = qword_280DDCCE0;
  if (!qword_280DDCCE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_228320E1C(uint64_t a1)
{
  v2 = qword_280DDCCF0;
  *(v1 + qword_280DDCCF0) = a1;

  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    v16 = *(v1 + v2);
    v4 = sub_2283930D0();
    v3 = v16;
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
LABEL_13:
    sub_22819578C(v5);

    sub_22838FF60();
  }

  v19 = MEMORY[0x277D84F90];
  v6 = v3;

  result = sub_2281CA04C(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v19;
    type metadata accessor for MedicationDoseLogMedicationCell();
    v8 = 0;
    v9 = v1 + qword_280DDCCF8;
    v10 = v6;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AAB6D80](v8, v10);
      }

      else
      {
        v11 = *(v10 + 8 * v8 + 32);
      }

      swift_unknownObjectWeakLoadStrong();
      v12 = *(v9 + 8);
      sub_228321B10(&unk_280DDCD40, type metadata accessor for MedicationDoseLogMedicationCell, &unk_22839A680);
      v17[0] = sub_22838FBB0();
      v17[1] = v13;
      v18 = 0;
      swift_unknownObjectWeakInit();
      v17[2] = v11;
      v18 = v12;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      v19 = v5;
      v15 = *(v5 + 16);
      v14 = *(v5 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_2281CA04C((v14 > 1), v15 + 1, 1);
        v5 = v19;
      }

      ++v8;
      *(v5 + 16) = v15 + 1;
      sub_2281D3334(v17, v5 + 40 * v15 + 32);
      v10 = v6;
    }

    while (v4 != v8);

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_22832108C()
{

  v1 = v0 + qword_280DDCCF8;

  return sub_22818B730(v1);
}

uint64_t sub_2283210E0()
{
  v0 = sub_22838FFB0();

  sub_22818B730(v0 + qword_280DDCCF8);

  return swift_deallocClassInstance();
}

uint64_t sub_228321194()
{
  type metadata accessor for MedicationDoseLogMedicationCell();
  sub_228321B10(&unk_280DDCD40, type metadata accessor for MedicationDoseLogMedicationCell, &unk_22839A680);
  return sub_2283926B0();
}

uint64_t sub_228321204@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_228391590();
  MEMORY[0x28223BE20](v3 - 8);
  if (*(*v1 + qword_280DDCD00 + 8))
  {

    sub_228391500();
    v4 = sub_22838FB60();
    swift_allocObject();
    v5 = sub_22838FB50();
    a1[3] = v4;
    result = sub_228321B10(&qword_27D823960, MEMORY[0x277D10E18], MEMORY[0x277D10E08]);
    a1[4] = result;
    *a1 = v5;
  }

  else
  {
    a1[3] = sub_22838FC00();
    a1[4] = sub_228321B10(&qword_27D823958, MEMORY[0x277D10EC8], MEMORY[0x277D10EC0]);
    __swift_allocate_boxed_opaque_existential_1(a1);
    return sub_22838FBF0();
  }

  return result;
}

void *sub_228321434(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = a5;
  v10 = sub_22838F4A0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v34 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v6 + qword_280DDCD00);
  *v13 = 0;
  v13[1] = 0;
  *(v6 + qword_280DDCCF8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + qword_280DDCCF0) = a1;
  *v13 = a2;
  v13[1] = a3;

  if (!(a1 >> 62))
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v35 = v11;
    v36 = v10;
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_16:

    v16 = MEMORY[0x277D84F90];
LABEL_17:
    sub_22819F3B0(0);
    sub_22838FEF0();
    *(swift_allocObject() + 16) = xmmword_228397F40;
    sub_22819578C(v16);

    v27 = v34;
    sub_22838F490();
    sub_22838F450();
    v28 = v36;
    v29 = *(v35 + 8);
    v29(v27, v36);
    sub_22838FED0();
    v38[0] = 0;
    v38[1] = 0xE000000000000000;
    sub_2283931D0();

    strcpy(v38, "MutableArray<");
    HIWORD(v38[1]) = -4864;
    sub_22838F490();
    v30 = sub_22838F450();
    v32 = v31;
    v29(v27, v28);
    MEMORY[0x22AAB5C80](v30, v32);

    MEMORY[0x22AAB5C80](62, 0xE100000000000000);
    return sub_22838FF30();
  }

  v14 = sub_2283930D0();
  v35 = v11;
  v36 = v10;
  if (!v14)
  {
    goto LABEL_16;
  }

LABEL_3:
  v41 = MEMORY[0x277D84F90];
  result = sub_2281CA04C(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v33[1] = v6;
    v16 = v41;
    type metadata accessor for MedicationDoseLogMedicationCell();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v17 = 0;
      do
      {
        v18 = MEMORY[0x22AAB6D80](v17, a1);
        sub_228321B10(&unk_280DDCD40, type metadata accessor for MedicationDoseLogMedicationCell, &unk_22839A680);
        swift_unknownObjectRetain();
        v38[0] = sub_22838FBB0();
        v38[1] = v19;
        v40 = 0;
        swift_unknownObjectWeakInit();
        v39 = v18;
        v40 = v37;
        swift_unknownObjectWeakAssign();
        swift_unknownObjectRelease();
        v41 = v16;
        v21 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_2281CA04C((v20 > 1), v21 + 1, 1);
          v16 = v41;
        }

        ++v17;
        *(v16 + 16) = v21 + 1;
        sub_2281D3334(v38, v16 + 40 * v21 + 32);
      }

      while (v14 != v17);
    }

    else
    {
      sub_228321B10(&unk_280DDCD40, type metadata accessor for MedicationDoseLogMedicationCell, &unk_22839A680);
      v22 = 32;
      do
      {
        v23 = *(a1 + v22);
        swift_unknownObjectRetain();

        v38[0] = sub_22838FBB0();
        v38[1] = v24;
        v40 = 0;
        swift_unknownObjectWeakInit();
        v39 = v23;
        v40 = v37;
        swift_unknownObjectWeakAssign();
        swift_unknownObjectRelease();
        v41 = v16;
        v26 = *(v16 + 16);
        v25 = *(v16 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_2281CA04C((v25 > 1), v26 + 1, 1);
          v16 = v41;
        }

        *(v16 + 16) = v26 + 1;
        sub_2281D3334(v38, v16 + 40 * v26 + 32);
        v22 += 8;
        --v14;
      }

      while (v14);
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_228321964(void *a1)
{
  v2 = v1;
  v4 = sub_2283900D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = [a1 traitCollection];
  v9 = [v8 horizontalSizeClass];

  if (*(v2 + qword_280DDCD00 + 8))
  {
    sub_228390010();
  }

  else
  {
    sub_228390040();
  }

  if (v9 == 2)
  {
    v10 = 64.0;
  }

  else
  {
    v10 = 8.0;
  }

  v11 = sub_228390090();
  *(v12 + 8) = v10;
  v11(v17, 0);
  v13 = sub_228390090();
  *(v14 + 24) = v10;
  v13(v17, 0);
  sub_228390070();
  v15 = sub_2283900C0();
  (*(v5 + 8))(v7, v4);
  return v15;
}

uint64_t sub_228321B10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_228321B58(uint64_t a1, uint64_t a2)
{
  sub_228321CC4(0xD000000000000015, 0x80000002283ABB40, a2);
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_2281BC044(0);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D83B88];
  *(v3 + 16) = xmmword_228397F40;
  v5 = MEMORY[0x277D83C10];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = a1;
  v6 = sub_22838F0C0();

  if (*(v3 + 16))
  {
    v7 = sub_228391FD0();

    return v7;
  }

  else
  {

    return v6;
  }
}

uint64_t sub_228321CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v3 = 0xE800000000000000;
      v4 = 0x4554415245444F4DLL;
      goto LABEL_10;
    }

    if (a3 == 4)
    {
      v3 = 0xE500000000000000;
      v4 = 0x524F4E494DLL;
      goto LABEL_10;
    }
  }

  else
  {
    if (a3 == 1)
    {
      v3 = 0xE800000000000000;
      v4 = 0x4C41434954495243;
LABEL_10:

      MEMORY[0x22AAB5C80](v4, v3);

      return a1;
    }

    if (a3 == 2)
    {
      v3 = 0xE700000000000000;
      v4 = 0x53554F49524553;
      goto LABEL_10;
    }
  }

  result = sub_228393300();
  __break(1u);
  return result;
}

unint64_t sub_228321DE4()
{
  v1 = sub_22838F440();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v5 = v0[1];
  v7 = *(v0 + 16);
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_2283931D0();

  v20 = 0xD000000000000014;
  v21 = 0x80000002283B4330;
  v8 = [v5 semanticIdentifier];
  v9 = [v8 stringValue];

  v10 = sub_228392000();
  v12 = v11;

  MEMORY[0x22AAB5C80](v10, v12);

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);
  v17 = v6;
  v18 = v5;
  v19 = v7;
  LoggableDose.scheduleDate.getter(v4);
  v13 = sub_22838F420();
  (*(v2 + 8))(v4, v1);
  v16 = v13;
  v14 = sub_228393420();
  MEMORY[0x22AAB5C80](v14);

  return v20;
}

uint64_t sub_228321FBC(uint64_t a1)
{
  v2 = sub_22838F440();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = v7;
  sub_228392C70();

  v12 = v9;
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  sub_228390F20();
  sub_2283920B0();

  v12 = v6;
  v13 = v7;
  v14 = v8;
  LoggableDose.scheduleDate.getter(v5);
  sub_228324EB8(&qword_27D825C90, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_228391F70();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_228322150()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  v6 = *v0;
  v7 = v1;
  v8 = *(v0 + 24);
  v9 = v2;
  v10 = v3;
  sub_228393520();
  sub_228321FBC(v5);
  return sub_228393570();
}

uint64_t sub_2283221B8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 5);
  v4 = *(v1 + 6);
  v7 = *v1;
  v8 = v2;
  v9 = *(v1 + 24);
  v10 = v3;
  v11 = v4;
  sub_228393520();
  sub_228321FBC(v6);
  return sub_228393570();
}

uint64_t sub_228322220(uint64_t a1)
{
  v2 = sub_2282E333C();

  return MEMORY[0x282169440](a1, v2);
}

id sub_22832226C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___medicationView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___medicationView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___medicationView);
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

id sub_228322304()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___timeLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___timeLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___timeLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v6 = sub_228392AD0();
    [v5 setFont_];

    v7 = [objc_opt_self() labelColor];
    [v5 setTextColor_];

    [v5 setNumberOfLines_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_228322444(uint64_t a1)
{
  v2 = sub_2283911B0();
  v95 = *(v2 - 8);
  v96 = v2;
  MEMORY[0x28223BE20](v2);
  v94 = v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D83D88];
  sub_228324C10(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v80 - v6;
  v91 = sub_2283912D0();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v88 = v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_228391280();
  v89 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v92 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228324C10(0, &qword_280DDBD20, MEMORY[0x277D116C8], v4);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v80 - v11;
  v13 = sub_22838F250();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22838F270();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v87 = v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22838F440();
  v86 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v85 = v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228324C74(a1, v103, &qword_280DDCD50, sub_22817A700);
  if (v104)
  {
    sub_22817A700();
    if (swift_dynamicCast())
    {
      v82 = v20;
      v22 = v18;
      v23 = v16;
      v24 = v17;
      v25 = v12;
      v26 = v98;
      v27 = v99;
      v83 = v13;
      v28 = v100;
      v84 = v7;
      sub_22819A598(v98, v99, v100);
      sub_2282E32E8(v26, v27, v28);

      v29 = v27;
      v30 = v27;
      v12 = v25;
      v17 = v24;
      v16 = v23;
      v18 = v22;
      v20 = v82;
      sub_2282E32E8(v26, v30, v28);
      v31 = [v29 semanticIdentifier];

      v32 = [v31 stringValue];
      sub_228392000();

      sub_228390B90();
      v13 = v83;

      v7 = v84;
    }
  }

  else
  {
    sub_228324CF4(v103, &qword_280DDCD50, sub_22817A700);
  }

  v33 = OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell_item;
  v34 = v97;
  swift_beginAccess();
  sub_228324C74(&v34[v33], v103, &qword_280DDCD50, sub_22817A700);
  if (v104)
  {
    sub_22817A700();
    if (swift_dynamicCast())
    {
      v83 = v13;
      v80[1] = v12;
      v82 = v20;
      v35 = v98;
      v36 = v99;
      v37 = v100;
      v96 = v101;
      v80[2] = v102;
      v38 = v16;
      v39 = v17;
      v40 = sub_228322304();
      v95 = v35;
      v98 = v35;
      v99 = v36;
      v81 = v37;
      v100 = v37;
      v41 = v85;
      LoggableDose.scheduleDate.getter(v85);
      v42 = v87;
      sub_22838F260();
      sub_22838F240();
      sub_22838F400();
      v84 = v7;
      (*(v14 + 8))(v38, v83);
      (*(v18 + 8))(v42, v39);
      (*(v86 + 8))(v41, v82);
      v43 = sub_228391FC0();

      [v40 setText_];

      v44 = v97;
      v45 = sub_22832226C();
      v94 = v36;
      v46 = v36;
      _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();

      sub_228390950();

      v47 = [v46 semanticIdentifier];
      v48 = [v47 stringValue];

      sub_228392000();
      sub_228390B80();

      sub_228324C10(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
      sub_2283912F0();
      *(swift_allocObject() + 16) = xmmword_228397F40;
      sub_22817A958(0, &qword_27D827890, 0x277D750C8);
      sub_22827CAB8();
      v49 = sub_228392C90();
      sub_22817A958(0, &unk_280DDB940, 0x277D75220);
      v50 = v49;
      v51 = sub_228392E20();
      [v51 setUserInteractionEnabled_];
      sub_22820DC6C(0);
      v53 = v89;
      v54 = v88;
      v55 = &v88[*(v52 + 48)];
      v56 = *MEMORY[0x277D74A98];
      v57 = sub_228391220();
      (*(*(v57 - 8) + 104))(v54, v56, v57);
      *v55 = sub_2281AF1B4;
      v55[1] = 0;
      (*(v90 + 104))(v54, *MEMORY[0x277D74AD8], v91);
      v58 = sub_228391230();
      (*(*(v58 - 8) + 56))(v84, 1, 1, v58);
      v59 = v92;
      sub_228391270();

      sub_2283911D0();
      (*(v53 + 8))(v59, v93);
      sub_2283928F0();
      v98 = sub_228392000();
      v99 = v60;

      MEMORY[0x22AAB5C80](0xD00000000000001ELL, 0x80000002283B42E0);

      v61 = v98;
      v62 = v99;
      v63 = OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___timeLabel;
      v64 = [*&v44[OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___timeLabel] text];
      if (!v64)
      {
        v64 = [*&v97[v63] description];
      }

      v65 = v64;
      v66 = sub_228392000();
      v68 = v67;

      v98 = v61;
      v99 = v62;

      MEMORY[0x22AAB5C80](v66, v68);

      v69 = sub_228391FC0();

      [v97 setAccessibilityIdentifier_];

      sub_2282E32E8(v95, v94, v81);
    }
  }

  else
  {
    sub_228324CF4(v103, &qword_280DDCD50, sub_22817A700);
  }

  v71 = v94;
  sub_228391150();
  v72 = v97;
  v73 = sub_2283911A0();
  v74 = sub_2283925C0();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v103[0] = v76;
    *v75 = 136315138;
    sub_228324C74(&v97[v33], &v98, &qword_280DDCD50, sub_22817A700);
    sub_228324C10(0, &qword_280DDCD50, sub_22817A700, MEMORY[0x277D83D88]);
    v77 = sub_228392040();
    v79 = sub_2281C96FC(v77, v78, v103);

    *(v75 + 4) = v79;
    _os_log_impl(&dword_22816B000, v73, v74, "Incorrect view model for ScheduledDetailItem: %s", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v76);
    MEMORY[0x22AAB7B80](v76, -1, -1);
    MEMORY[0x22AAB7B80](v75, -1, -1);
  }

  return (*(v95 + 1))(v71, v96);
}

void (*sub_2283231E4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell_item;
  *(v3 + 168) = v1;
  *(v3 + 176) = v5;
  swift_beginAccess();
  sub_228324C74(v1 + v5, v4, &qword_280DDCD50, sub_22817A700);
  return sub_228323298;
}

void sub_228323298(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  v4 = *(*a1 + 176);
  if (a2)
  {
    sub_228324C74(*a1, v2 + 40, &qword_280DDCD50, sub_22817A700);
    sub_228324C74(v3 + v4, v2 + 80, &qword_280DDCD50, sub_22817A700);
    swift_beginAccess();
    sub_22818FD64(v2 + 40, v3 + v4);
    swift_endAccess();
    sub_228322444(v2 + 80);
    sub_228324CF4(v2 + 80, &qword_280DDCD50, sub_22817A700);
  }

  else
  {
    sub_228324C74(v3 + v4, v2 + 40, &qword_280DDCD50, sub_22817A700);
    swift_beginAccess();
    sub_22818FD64(v2, v3 + v4);
    swift_endAccess();
    sub_228322444(v2 + 40);
  }

  sub_228324CF4(v2 + 40, &qword_280DDCD50, sub_22817A700);
  sub_228324CF4(v2, &qword_280DDCD50, sub_22817A700);

  free(v2);
}

char *sub_2283233F0(double a1, double a2, double a3, double a4)
{
  v9 = sub_228391590();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228324C10(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v62 - v14;
  v16 = sub_2283913A0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___medicationView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___timeLabel] = 0;
  v20 = OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell_detailProvider;
  sub_228390BB0();
  *&v4[v20] = sub_228390BA0();
  v21 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell_item];
  v22 = type metadata accessor for ScheduledDetailItemCell();
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 4) = 0;
  v66.receiver = v4;
  v66.super_class = v22;
  v23 = objc_msgSendSuper2(&v66, sel_initWithFrame_, a1, a2, a3, a4);
  sub_228391390();
  v24 = [objc_opt_self() tertiarySystemBackgroundColor];
  sub_228391370();
  v64 = v16;
  v65 = v17;
  (*(v17 + 16))(v15, v19, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  MEMORY[0x22AAB6420](v15);
  v25 = [v23 contentView];
  v26 = sub_22832226C();
  [v25 addSubview_];

  v27 = [v23 &selRef_didTapDay_];
  v28 = sub_228322304();
  [v27 addSubview_];

  sub_228391520();
  sub_2283914D0();
  v30 = v29;
  (*(v10 + 8))(v12, v9);
  v63 = objc_opt_self();
  sub_228180ED0();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_228399190;
  v32 = OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___medicationView;
  v33 = [*&v23[OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___medicationView] leadingAnchor];
  v34 = [v23 &selRef_didTapDay_];
  v35 = [v34 leadingAnchor];

  v36 = [v33 constraintEqualToAnchor:v35 constant:v30];
  *(v31 + 32) = v36;
  v37 = [*&v23[v32] centerYAnchor];
  v38 = [v23 &selRef_didTapDay_];
  v39 = [v38 centerYAnchor];

  v40 = [v37 constraintEqualToAnchor_];
  *(v31 + 40) = v40;
  v41 = [*&v23[v32] widthAnchor];
  v42 = [v41 constraintEqualToConstant_];

  *(v31 + 48) = v42;
  v43 = [*&v23[v32] heightAnchor];
  v44 = [v43 constraintEqualToConstant_];

  *(v31 + 56) = v44;
  v45 = OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___timeLabel;
  v46 = [*&v23[OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___timeLabel] leadingAnchor];
  v47 = [*&v23[v32] trailingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:8.0];

  *(v31 + 64) = v48;
  v49 = [*&v23[v45] centerYAnchor];
  v50 = [v23 contentView];
  v51 = [v50 centerYAnchor];

  v52 = [v49 constraintEqualToAnchor_];
  *(v31 + 72) = v52;
  v53 = [*&v23[v45] trailingAnchor];
  v54 = [v23 contentView];
  v55 = [v54 trailingAnchor];

  v56 = [v53 constraintEqualToAnchor_];
  *(v31 + 80) = v56;
  v57 = [v23 contentView];

  v58 = [v57 heightAnchor];
  v59 = [v58 constraintGreaterThanOrEqualToConstant_];

  *(v31 + 88) = v59;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v60 = sub_228392190();

  [v63 activateConstraints_];

  (*(v65 + 8))(v19, v64);
  return v23;
}

uint64_t sub_228323B6C()
{
  v1 = v0;
  sub_228324C10(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v20 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = sub_228391330();
  v12 = type metadata accessor for ScheduledDetailItemCell();
  v20.receiver = v1;
  v20.super_class = v12;
  objc_msgSendSuper2(&v20, sel__bridgedUpdateConfigurationUsingState_, v11);

  if ([v1 isHighlighted])
  {
    MEMORY[0x22AAB6410]();
    v13 = sub_2283913A0();
    if ((*(*(v13 - 8) + 48))(v10, 1, v13))
    {
      v14 = MEMORY[0x277D74BD0];
      sub_228324C74(v10, v8, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
      MEMORY[0x22AAB6420](v8);
      v15 = v10;
      return sub_228324CF4(v15, &unk_280DDBCD0, v14);
    }

    sub_22817A958(0, &qword_280DDB990, 0x277D75348);
    sub_228392BA0();
    sub_228391370();
    v18 = v10;
  }

  else
  {
    MEMORY[0x22AAB6410]();
    v16 = sub_2283913A0();
    if ((*(*(v16 - 8) + 48))(v5, 1, v16))
    {
      v14 = MEMORY[0x277D74BD0];
      sub_228324C74(v5, v8, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
      MEMORY[0x22AAB6420](v8);
      v15 = v5;
      return sub_228324CF4(v15, &unk_280DDBCD0, v14);
    }

    v19 = [objc_opt_self() tertiarySystemBackgroundColor];
    sub_228391370();
    v18 = v5;
  }

  return MEMORY[0x22AAB6420](v18);
}

id sub_228323FC8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ScheduledDetailItemCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22832409C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell_item;
  swift_beginAccess();
  return sub_228324C74(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_228324110(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell_item;
  swift_beginAccess();
  sub_228324C74(v1 + v3, v5, &qword_280DDCD50, sub_22817A700);
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228322444(v5);
  sub_228324CF4(a1, &qword_280DDCD50, sub_22817A700);
  return sub_228324CF4(v5, &qword_280DDCD50, sub_22817A700);
}

void (*sub_2283241E4(uint64_t **a1))(void *a1)
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
  v2[4] = sub_2283231E4(v2);
  return sub_22819467C;
}

uint64_t sub_228324254(void *a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v6 = sub_228391DC0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_228391DF0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell_item;
  swift_beginAccess();
  sub_228324C74(v3 + v14, v44, &qword_280DDCD50, sub_22817A700);
  if (!v45)
  {
    return sub_228324CF4(v44, &qword_280DDCD50, sub_22817A700);
  }

  sub_22817A700();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v35 = v7;
  v36 = a1;
  v33 = v11;
  v34 = v10;
  v16 = aBlock;
  v17 = v39;
  v18 = v40;
  sub_22819A598(aBlock, v39, v40);
  sub_2282E32E8(v16, v17, v18);

  v19 = v17;
  sub_2282E32E8(v16, v17, v18);
  v20 = [v19 semanticIdentifier];
  v21 = [v20 stringValue];

  v22 = sub_228392000();
  v24 = v23;

  if (v22 == a2 && v24 == v37)
  {

    v25 = v36;
  }

  else
  {
    v26 = sub_228393460();

    v25 = v36;
    if ((v26 & 1) == 0)
    {
      return result;
    }
  }

  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v27 = sub_228392790();
  v28 = sub_22832226C();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = v25;
  v42 = sub_228324BF0;
  v43 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_228191E9C;
  v41 = &block_descriptor_28;
  v30 = _Block_copy(&aBlock);
  v31 = v25;

  sub_228391DE0();
  aBlock = MEMORY[0x277D84F90];
  sub_228324EB8(&qword_280DDCF10, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_228324C10(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_228216D44();
  sub_228393030();
  MEMORY[0x22AAB6340](0, v13, v9, v30);
  _Block_release(v30);

  (*(v35 + 8))(v9, v6);
  return (*(v33 + 8))(v13, v34);
}

uint64_t sub_2283246F0()
{
  sub_228324C10(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
  return sub_228390950();
}

uint64_t sub_228324844(uint64_t a1, uint64_t a2)
{
  v4 = sub_22838F440();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = *(a1 + 8);
  v31 = *a1;
  v30 = *(a1 + 16);
  v12 = *a2;
  v13 = *(a2 + 8);
  v32 = *(a2 + 16);
  sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
  v14 = v11;
  v15 = v13;
  LOBYTE(a2) = sub_228392C60();

  if ((a2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v27 = v12;
  v28 = v5;
  v29 = v4;
  v36 = v14;
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v16 = sub_228390F20();
  v18 = v17;
  v36 = v15;
  if (v16 != sub_228390F20() || v18 != v19)
  {
    v23 = sub_228393460();

    v21 = v28;
    v20 = v29;
    v22 = v27;
    if (v23)
    {
      goto LABEL_6;
    }

LABEL_7:
    v24 = 0;
    return v24 & 1;
  }

  v21 = v28;
  v20 = v29;
  v22 = v27;
LABEL_6:
  v36 = v31;
  v37 = v11;
  v38 = v30;
  LoggableDose.scheduleDate.getter(v10);
  v33 = v22;
  v34 = v13;
  v35 = v32;
  LoggableDose.scheduleDate.getter(v8);
  v24 = sub_22838F3D0();
  v25 = *(v21 + 8);
  v25(v8, v20);
  v25(v10, v20);
  return v24 & 1;
}

uint64_t sub_228324AC4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell_item;
  swift_beginAccess();
  sub_228324C74(v1 + v3, v9, &qword_280DDCD50, sub_22817A700);
  if (!v10)
  {
    return sub_228324CF4(v9, &qword_280DDCD50, sub_22817A700);
  }

  sub_22817A700();
  result = swift_dynamicCast();
  if (result)
  {

    sub_2282E32E8(v5, v6, v7);

    v8(a1);
  }

  return result;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_228324C10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228324C74(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_228324C10(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_228324CF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228324C10(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228324D64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_228324DAC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_228324E0C()
{
  result = qword_27D827E60;
  if (!qword_27D827E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827E60);
  }

  return result;
}

unint64_t sub_228324E64()
{
  result = qword_27D827E68;
  if (!qword_27D827E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827E68);
  }

  return result;
}

uint64_t sub_228324EB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void UITextViewWithPlaceholder.text.setter(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v5 = sub_228391FC0();
  }

  else
  {
    v5 = 0;
  }

  v9.receiver = v2;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, sel_setText_, v5);

  v8.receiver = v2;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_text);
  v7.receiver = v2;
  v7.super_class = ObjectType;
  objc_msgSendSuper2(&v7, sel_setText_, v6);

  sub_2283255A4();
}

void UITextViewWithPlaceholder.placeholder.setter(uint64_t a1, uint64_t a2)
{
  v3 = sub_2283251B8();
  if (a2)
  {
    v4 = sub_228391FC0();
  }

  else
  {
    v4 = 0;
  }

  [v3 setText_];
}

uint64_t UITextViewWithPlaceholder.placeholder.getter()
{
  v0 = sub_2283251B8();
  v1 = [v0 text];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_228392000();

  return v2;
}

void sub_2283250BC(uint64_t *a1@<X8>)
{
  v2 = sub_2283251B8();
  v3 = [v2 text];

  if (v3)
  {
    v4 = sub_228392000();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *a1 = v4;
  a1[1] = v6;
}

void sub_228325134(uint64_t *a1)
{
  v1 = a1[1];
  v2 = sub_2283251B8();
  if (v1)
  {
    v3 = sub_228391FC0();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setText_];
}

id sub_2283251B8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder____lazy_storage___placeholderLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder____lazy_storage___placeholderLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder____lazy_storage___placeholderLabel);
  }

  else
  {
    v4 = sub_2283258B0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void (*UITextViewWithPlaceholder.placeholder.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = sub_2283251B8();
  v4 = [v3 text];

  if (v4)
  {
    v5 = sub_228392000();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_2283252AC;
}

void sub_2283252AC(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(a1[2] + OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder____lazy_storage___placeholderLabel);
  if (a2)
  {
    v5 = v3;
    if (v2)
    {

      v4 = sub_228391FC0();
    }

    else
    {
      v4 = 0;
    }

    [v5 setText_];
  }

  else
  {
    v5 = v3;
    if (v2)
    {
      v4 = sub_228391FC0();

      [v5 setText_];
    }

    else
    {
      v4 = 0;
      [v5 setText_];
    }
  }
}

uint64_t UITextViewWithPlaceholder.text.getter()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v5, sel_text);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_228392000();

  return v3;
}

void sub_2283255A4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_2283251B8();
  v3 = [v2 isHidden];

  v4 = OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder____lazy_storage___placeholderLabel;
  v5 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder____lazy_storage___placeholderLabel];
  v14.receiver = v0;
  v14.super_class = ObjectType;
  v6 = v5;
  v7 = objc_msgSendSuper2(&v14, sel_text);
  if (v7)
  {
    v8 = v7;
    v9 = sub_228392000();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12 != 0;
  }

  else
  {
    v13 = 0;
  }

  [v6 setHidden_];

  if (v3)
  {
    if (([*&v0[v4] isHidden] & 1) == 0)
    {
      [v0 setNeedsLayout];
    }
  }
}

void (*UITextViewWithPlaceholder.text.modify(objc_super **a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  v4[6].receiver = v2;
  ObjectType = swift_getObjectType();
  v5[1].receiver = v2;
  v5[6].super_class = ObjectType;
  v5[1].super_class = ObjectType;
  v7 = objc_msgSendSuper2(v5 + 1, sel_text);
  if (v7)
  {
    v8 = v7;
    v9 = sub_228392000();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v5->receiver = v9;
  v5->super_class = v11;
  return sub_228325788;
}

void sub_228325788(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (a2)
  {
    if (v3)
    {

      v4 = sub_228391FC0();
    }

    else
    {
      v4 = 0;
    }

    *(v2 + 32) = *(v2 + 96);
    objc_msgSendSuper2((v2 + 32), sel_setText_, v4);
  }

  else
  {
    if (v3)
    {
      v5 = sub_228391FC0();
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v2 + 96);
    v7 = *(v2 + 104);
    *(v2 + 48) = v6;
    *(v2 + 56) = v7;
    objc_msgSendSuper2((v2 + 48), sel_setText_, v5);

    *(v2 + 64) = v6;
    *(v2 + 72) = v7;
    v8 = objc_msgSendSuper2((v2 + 64), sel_text);
    *(v2 + 80) = v6;
    *(v2 + 88) = v7;
    objc_msgSendSuper2((v2 + 80), sel_setText_, v8);

    sub_2283255A4();
  }

  free(v2);
}

id sub_2283258B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v2 = [objc_opt_self() placeholderTextColor];
  [v0 setTextColor_];

  [v0 setContentMode_];
  [v0 setNumberOfLines_];
  return v0;
}

id UITextViewWithPlaceholder.__allocating_init(frame:textContainer:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 textContainer:{a2, a3, a4, a5}];

  return v7;
}

id UITextViewWithPlaceholder.init(frame:textContainer:)(void *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder____lazy_storage___placeholderLabel] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder_textDidChangeSubscription] = 0;
  v15.receiver = v5;
  v15.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v15, sel_initWithFrame_textContainer_, a1, a2, a3, a4, a5);
  v13 = sub_2283251B8();
  [v12 addSubview_];

  sub_228325AE0();
  return v12;
}

uint64_t sub_228325AE0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_228392830();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282355CC(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_228397F40;
  v8 = sub_228391640();
  v9 = MEMORY[0x277D74DB8];
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2281D5250();
  sub_228392B50();
  swift_unknownObjectRelease();

  v10 = [objc_opt_self() defaultCenter];
  sub_228392840();

  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = ObjectType;
  sub_228326334();
  v12 = v1;
  v13 = sub_228391AC0();

  (*(v4 + 8))(v6, v3);
  *&v12[OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder_textDidChangeSubscription] = v13;
}

void sub_228325DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong setFont_];
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = sub_2283251B8();

    [v8 setFont_];
  }
}

void sub_228325EC8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_22838EF70();
  if (v8)
  {
    if (swift_dynamicCast())
    {
      v4 = a2;
      v5 = sub_228392C60();

      if (v5)
      {
        sub_2283255A4();
      }
    }
  }

  else
  {
    sub_2281AC998(v7);
  }
}

id UITextViewWithPlaceholder.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void UITextViewWithPlaceholder.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder____lazy_storage___placeholderLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder_textDidChangeSubscription) = 0;
  sub_228393300();
  __break(1u);
}

Swift::Void __swiftcall UITextViewWithPlaceholder.layoutSubviews()()
{
  v25.receiver = v0;
  v25.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v25, sel_layoutSubviews);
  v1 = sub_2283251B8();
  v2 = [v1 isHidden];

  if ((v2 & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder____lazy_storage___placeholderLabel;
    [v0 bringSubviewToFront_];
    [v0 textContainerInset];
    v5 = v4;
    v7 = v6;
    v8 = [v0 textContainer];
    [v8 lineFragmentPadding];
    v10 = v9;

    v11 = [v0 textContainer];
    [v11 lineFragmentPadding];

    [v0 bounds];
    v16 = UIEdgeInsetsInsetRect(v12, v13, v14, v15, v5, v7 + v10);
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [*&v0[v3] sizeThatFits_];
    if (v23 >= v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = v23;
    }

    [*&v0[v3] setFrame_];
  }
}

id UITextViewWithPlaceholder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_228326334()
{
  result = qword_27D827528;
  if (!qword_27D827528)
  {
    sub_228392830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827528);
  }

  return result;
}

uint64_t sub_22832638C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2283263D4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_22832642C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v3);
  if (!(*(v4 + 40))(v3, v4))
  {
    goto LABEL_9;
  }

  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v5);
  (*(v6 + 48))(v21, v5, v6);
  if (v22)
  {
    __swift_project_boxed_opaque_existential_0(v21, v22);
    v7 = sub_22838F960();
    __swift_destroy_boxed_opaque_existential_0(v21);
    if (v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_22823203C(v21, &qword_27D825988, &qword_27D825990, MEMORY[0x277D12508]);
  }

  sub_228326D54(v21);
  sub_22817E6C8(v21, &v19);
  if (v20)
  {
    sub_22816DFFC(&v19, v16);
    sub_2282320AC(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_228397F40;
    v9 = v17;
    v10 = v18;
    v11 = __swift_project_boxed_opaque_existential_0(v16, v17);
    *(v8 + 56) = v9;
    *(v8 + 64) = *(v10 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v8 + 32));
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v11, v9);
    sub_22838FEB0();
    sub_22823203C(v21, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v13 = sub_22838FEF0();
    (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  sub_22823203C(v21, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
LABEL_9:
  v15 = sub_22838FEF0();
  return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
}

id sub_2283266DC@<X0>(id result@<X0>, uint64_t a2@<X8>)
{
  if (!result)
  {
    goto LABEL_21;
  }

  v4 = v2;
  if (result == 1)
  {
    v5 = v2[3];
    v6 = v2[4];
    __swift_project_boxed_opaque_existential_0(v2, v5);
    (*(v6 + 48))(&v44, v5, v6);
    if (v45)
    {
      __swift_project_boxed_opaque_existential_0(&v44, v45);
      v7 = sub_22838F990();
      v9 = v8;
      result = __swift_destroy_boxed_opaque_existential_0(&v44);
      if (v9)
      {
        v10 = v2[3];
        v11 = v2[4];
        __swift_project_boxed_opaque_existential_0(v2, v10);
        (*(v11 + 48))(&v44, v10, v11);
        if (v45)
        {
          __swift_project_boxed_opaque_existential_0(&v44, v45);
          v12 = sub_22838F970();
          v14 = v13;
          __swift_destroy_boxed_opaque_existential_0(&v44);
          if (v14)
          {
            v15 = type metadata accessor for MedicationEducationItem(0);
            v16 = swift_allocObject();
            type metadata accessor for MedicationEducationItemCell();
            sub_2283281E4(&qword_27D8268F8, type metadata accessor for MedicationEducationItemCell, &protocol conformance descriptor for MedicationEducationItemCell);
            *(v16 + 56) = sub_22838FBB0();
            *(v16 + 64) = v17;
            sub_22838F490();
            *(v16 + 16) = v7;
            *(v16 + 24) = v9;
            *(v16 + 32) = v12;
            *(v16 + 40) = v14;
            *(v16 + 48) = 0;
            *(a2 + 24) = v15;
            result = sub_2283281E4(&qword_27D827E88, type metadata accessor for MedicationEducationItem, &protocol conformance descriptor for MedicationEducationItem);
            *(a2 + 32) = result;
            *a2 = v16;
            return result;
          }

          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_21:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

LABEL_20:
    result = sub_22823203C(&v44, &qword_27D825988, &qword_27D825990, MEMORY[0x277D12508]);
    goto LABEL_21;
  }

  if (result != 2)
  {
    sub_2283931D0();

    v43 = sub_228393420();
    MEMORY[0x22AAB5C80](v43);

    result = sub_228393300();
    __break(1u);
    return result;
  }

  v18 = v2[3];
  v19 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v18);
  (*(v19 + 48))(&v44, v18, v19);
  if (v45)
  {
    __swift_project_boxed_opaque_existential_0(&v44, v45);
    v20 = sub_22838F960();
    __swift_destroy_boxed_opaque_existential_0(&v44);
    if (v20)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_22823203C(&v44, &qword_27D825988, &qword_27D825990, MEMORY[0x277D12508]);
  }

  result = [objc_opt_self() supportsOntologyBackedMedications];
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_14:
  v21 = v4[3];
  v22 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v21);
  (*(v22 + 48))(&v44, v21, v22);
  if (!v45)
  {
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_0(&v44, v45);
  v23 = sub_22838F960();
  result = __swift_destroy_boxed_opaque_existential_0(&v44);
  if ((v23 & 1) == 0)
  {
    goto LABEL_21;
  }

  v24 = v4[3];
  v25 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v24);
  (*(v25 + 48))(&v44, v24, v25);
  if (!v45)
  {
    sub_22823203C(&v44, &qword_27D825988, &qword_27D825990, MEMORY[0x277D12508]);
LABEL_24:

    v26 = 0;
    v28 = 0xE000000000000000;
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_0(&v44, v45);
  v26 = sub_22838F990();
  v28 = v27;
  __swift_destroy_boxed_opaque_existential_0(&v44);
  if (!v28)
  {
    goto LABEL_24;
  }

LABEL_25:
  v29 = v4[3];
  v30 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v29);
  v31 = (*(v30 + 24))(v29, v30);
  v33 = v32;
  v34 = v4[3];
  v35 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v34);
  v36 = (*(v35 + 40))(v34, v35);
  if (v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }

  v38 = v4[3];
  v39 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v38);
  (*(v39 + 48))(&v44, v38, v39);
  v40 = v45;
  if (v45)
  {
    __swift_project_boxed_opaque_existential_0(&v44, v45);
    v40 = sub_22838F960();
    __swift_destroy_boxed_opaque_existential_0(&v44);
  }

  else
  {
    sub_22823203C(&v44, &qword_27D825988, &qword_27D825990, MEMORY[0x277D12508]);
  }

  *(a2 + 24) = type metadata accessor for MedicationEducationAndComponentsItem(0);
  *(a2 + 32) = sub_2283281E4(&qword_27D824668, type metadata accessor for MedicationEducationAndComponentsItem, &protocol conformance descriptor for MedicationEducationAndComponentsItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  type metadata accessor for MedicationEducationAndComponentsItemCell();
  sub_2283281E4(&qword_27D824620, type metadata accessor for MedicationEducationAndComponentsItemCell, &protocol conformance descriptor for MedicationEducationAndComponentsItemCell);
  boxed_opaque_existential_1[6] = sub_22838FBB0();
  boxed_opaque_existential_1[7] = v42;
  result = sub_22838F490();
  boxed_opaque_existential_1[2] = v31;
  boxed_opaque_existential_1[3] = v33;
  *boxed_opaque_existential_1 = v26;
  boxed_opaque_existential_1[1] = v28;
  boxed_opaque_existential_1[4] = v37;
  *(boxed_opaque_existential_1 + 40) = v40 & 1;
  return result;
}

uint64_t sub_228326D54@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v3);
  result = (*(v4 + 40))(v3, v4);
  if (result && (, v6 = v1[3], v7 = v1[4], __swift_project_boxed_opaque_existential_0(v1, v6), (result = (*(v7 + 40))(v6, v7)) != 0))
  {
    v8 = result;
    v9 = v1[3];
    v10 = v1[4];
    __swift_project_boxed_opaque_existential_0(v1, v9);
    v11 = (*(v10 + 24))(v9, v10);
    v13 = v12;
    v14 = v1[3];
    v15 = v1[4];
    __swift_project_boxed_opaque_existential_0(v1, v14);
    (*(v15 + 48))(v20, v14, v15);
    v16 = v21;
    if (v21)
    {
      __swift_project_boxed_opaque_existential_0(v20, v21);
      v16 = sub_22838F960();
      __swift_destroy_boxed_opaque_existential_0(v20);
    }

    else
    {
      sub_22823203C(v20, &qword_27D825988, &qword_27D825990, MEMORY[0x277D12508]);
    }

    v17 = type metadata accessor for MedicationComponentsItem(0);
    v18 = swift_allocObject();
    type metadata accessor for MedicationComponentsItemCell();
    sub_2283281E4(&qword_27D825650, type metadata accessor for MedicationComponentsItemCell, &protocol conformance descriptor for MedicationComponentsItemCell);
    *(v18 + 48) = sub_22838FBB0();
    *(v18 + 56) = v19;
    sub_22838F490();
    *(v18 + 16) = v11;
    *(v18 + 24) = v13;
    *(v18 + 32) = v8;
    *(v18 + 40) = v16 & 1;
    *(a1 + 24) = v17;
    result = sub_2283281E4(&qword_27D827E80, type metadata accessor for MedicationComponentsItem, &protocol conformance descriptor for MedicationComponentsItem);
    *(a1 + 32) = result;
    *a1 = v18;
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_228326FA8@<X0>(uint64_t *a1@<X8>)
{
  v23 = a1;
  v20 = sub_228390460();
  v1 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22838FFC0();
  v3 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283273C4(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  sub_228327C88(0, v26);
  v8 = sub_2283913A0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v24 = sub_228392000();
  v25 = v9;

  MEMORY[0x22AAB5C80](0xD00000000000001BLL, 0x80000002283B44F0);

  v10 = v24;
  v11 = v25;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v12 = qword_280DDCF20;

  v13 = sub_22838F0C0();
  v15 = v14;

  v24 = v10;
  v25 = v11;

  MEMORY[0x22AAB5C80](v13, v15);

  (*(v3 + 104))(v21, *MEMORY[0x277D10F98], v19);
  (*(v1 + 104))(v22, *MEMORY[0x277D11140], v20);
  v16 = sub_228390170();
  v17 = v23;
  v23[3] = v16;
  v17[4] = sub_2283281E4(&qword_27D824520, MEMORY[0x277D11000], MEMORY[0x277D10FF8]);
  __swift_allocate_boxed_opaque_existential_1(v17);
  return sub_228390160();
}

void sub_2283273C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228327428@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v58 = a2;
  v7 = sub_228390460();
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x28223BE20](v7);
  v65 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22838FFC0();
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x28223BE20](v9);
  v64 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_2283273C4(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v61 = &v50 - v13;
  sub_2283273C4(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], v11);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v50 - v15;
  v57 = sub_2283912A0();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_228391220();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  LOBYTE(v71[0]) = *a1;
  v24 = v4[3];
  v25 = v4[4];
  v26 = __swift_project_boxed_opaque_existential_0(v4, v24);
  result = sub_22823651C(v26, v71, v24, v25);
  if (v28)
  {
    v51 = v28;
    v52 = result;
    v55 = a3;
    v29 = v4[3];
    v30 = v4[4];
    __swift_project_boxed_opaque_existential_0(v4, v29);
    (*(v30 + 48))(v71, v29, v30);
    v31 = v72;
    if (v72)
    {
      __swift_project_boxed_opaque_existential_0(v71, v72);
      v31 = sub_22838F970();
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_0(v71);
    }

    else
    {
      sub_22823203C(v71, &qword_27D825988, &qword_27D825990, MEMORY[0x277D12508]);
      v33 = 0;
    }

    v50 = v33;
    if (v23)
    {
      if (v23 == 1)
      {
        v54 = 0xED00006D65744979;
        v34 = 0x636E616E67657270;
        v35 = &v73;
      }

      else
      {
        v53 = 0x6F6974617463616CLL;
        v34 = 0xED00006D6574496ELL;
        v35 = &v74;
      }
    }

    else
    {
      v54 = 0xEF6D657449737463;
      v34 = 0x6566664565646973;
      v35 = &v73;
    }

    *(v35 - 32) = v34;
    sub_228327EC4(v23, v71);
    sub_2283273C4(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
    sub_2283912F0();
    *(swift_allocObject() + 16) = xmmword_228397F40;
    (*(v20 + 104))(v22, *MEMORY[0x277D74A98], v19);
    v36 = sub_228391230();
    (*(*(v36 - 8) + 56))(v16, 1, 1, v36);
    sub_228391290();
    sub_228391260();
    (*(v56 + 8))(v18, v57);
    (*(v20 + 8))(v22, v19);
    sub_228328194(v4, v69);
    v37 = swift_allocObject();
    *(v37 + 16) = v23;
    v38 = v69[1];
    *(v37 + 24) = v69[0];
    *(v37 + 40) = v38;
    v39 = v52;
    *(v37 + 56) = v70;
    *(v37 + 64) = v39;
    *(v37 + 72) = v51;
    *(v37 + 80) = v31;
    v40 = v58;
    *(v37 + 88) = v50;
    *(v37 + 96) = v40;
    v41 = sub_2283913A0();
    (*(*(v41 - 8) + 56))(v61, 1, 1, v41);
    v67 = sub_228392000();
    v68 = v42;

    MEMORY[0x22AAB5C80](0xD00000000000001BLL, 0x80000002283B44F0);

    v44 = v67;
    v43 = v68;
    v66 = v23;
    v45 = MedicationSecondaryEducationType.title.getter();
    v47 = v46;
    v67 = v44;
    v68 = v43;

    MEMORY[0x22AAB5C80](v45, v47);

    (*(v59 + 104))(v64, *MEMORY[0x277D10F98], v60);
    (*(v62 + 104))(v65, *MEMORY[0x277D11140], v63);
    v48 = sub_228390170();
    v49 = v55;
    *(v55 + 24) = v48;
    v49[4] = sub_2283281E4(&qword_27D824520, MEMORY[0x277D11000], MEMORY[0x277D10FF8]);
    __swift_allocate_boxed_opaque_existential_1(v49);
    return sub_228390160();
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_228327C88@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = sub_228391590();
  v5 = MEMORY[0x277D74C30];
  a2[3] = v4;
  a2[4] = v5;
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_228391580();
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_27D823310 == -1)
      {
LABEL_4:
        v6 = &qword_27D826AD0;
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

  v6 = &qword_280DDCF20;
LABEL_8:
  v7 = *v6;

  sub_22838F0C0();

  sub_228391540();
  if (qword_27D823310 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  return sub_2283913D0();
}

uint64_t sub_228327EC4@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = sub_228391590();
  v5 = MEMORY[0x277D74C30];
  a2[3] = v4;
  a2[4] = v5;
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_228391520();
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_27D823310 == -1)
      {
LABEL_4:
        v6 = &qword_27D826AD0;
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

  v6 = &qword_280DDCF20;
LABEL_8:
  v7 = *v6;

  sub_22838F0C0();

  return sub_228391540();
}

void sub_228328084(void *a1, signed __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v14 = type metadata accessor for MedicationSecondaryEducationViewController(0);
  v22 = a2;
  sub_228180FB0(a3, v19);
  v16 = v20;
  v15 = v21;
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);

  v18 = sub_228212278(&v22, v17, a4, a5, a6, a7, v14, v16, v15);
  __swift_destroy_boxed_opaque_existential_0(v19);
  [a1 showAdaptively:v18 sender:0];
  sub_228390FE0();
}

uint64_t sub_2283281E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MedicationDetailEditViewController(uint64_t a1)
{
  result = qword_27D827EB8;
  if (!qword_27D827EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2283282E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_22832835C()
{
  v1 = qword_27D827EA8;
  v2 = *(v0 + qword_27D827EA8);
  if (v2)
  {
    v3 = *(v0 + qword_27D827EA8);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCDB48]) initWithHealthStore_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_2283283E0(uint64_t a1)
{
  *(a1 + qword_27D827EA8) = 0;
  v2 = qword_27D827EB0;
  sub_228329260(0);
  swift_allocObject();
  *(a1 + v2) = sub_228391890();
  sub_228393300();
  __break(1u);
}

void sub_228328490()
{
  sub_2283285BC();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for MedicationDetailEditViewController(0);
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

void sub_228328574(void *a1)
{
  v1 = a1;
  sub_228328490();
}

void sub_2283285BC()
{
  v1 = [v0 navigationItem];
  v2 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v3 = v0;
  v4 = [v2 initWithBarButtonSystemItem:1 target:v3 action:sel_didTapCancel];
  [v1 setLeftBarButtonItem_];

  v5 = [v3 navigationItem];
  v6 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v3 action:sel_didTapDone];

  [v5 setRightBarButtonItem_];
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v7 = sub_228391FC0();

  [v3 setTitle_];
}

void sub_228328790()
{
  v1 = v0;
  v2 = sub_228390D50();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228329340(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v29 = *&v0[qword_27D827E98];

  sub_228391870();

  v10 = aBlock;
  v9 = v31;
  v11 = v32;
  v12 = v33;
  if (v31 == 1)
  {
    sub_228294FEC(aBlock, 1, v32, v33);
  }

  else
  {

    sub_228294FEC(v10, v9, v11, v12);
    if (v9)
    {
      goto LABEL_5;
    }
  }

LABEL_5:
  v13 = sub_228391FC0();

  sub_228391870();

  v14 = v31;
  if (v31 == 1)
  {
    sub_228294FEC(aBlock, 1, v32, v33);
  }

  else
  {
    v16 = v32;
    v15 = v33;
    v17 = aBlock;

    sub_228294FEC(v17, v14, v16, v15);
    if (v15)
    {
      goto LABEL_9;
    }
  }

LABEL_9:
  v18 = sub_228391FC0();

  v19 = *&v1[qword_27D827EA0];
  v20 = qword_27D8290B0;
  swift_beginAccess();
  sub_2281BF64C(v19 + v20, v8);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_2281A9A08(v8);
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_2281A9A08(v8);
    sub_228390CF0();
    v23 = v22;
    (*(v3 + 8))(v5, v2);
    if (v23)
    {
      v21 = sub_228391FC0();

      goto LABEL_14;
    }
  }

  v21 = 0;
LABEL_14:
  v24 = [v29 copyMedicationByUpdatingUserSpecifiedName:v13 userSpecifiedNotes:v18 userVisualizationConfigJSONString:v21];

  v25 = sub_22832835C();
  v26 = swift_allocObject();
  *(v26 + 16) = v1;
  v34 = sub_228329318;
  v35 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_2283282E4;
  v33 = &block_descriptor_29;
  v27 = _Block_copy(&aBlock);
  v28 = v1;

  [v25 saveOrUpdateUserDomainConcept:v24 completion:v27];
  _Block_release(v27);
}

uint64_t sub_228328BB4(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_228391DC0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_228391DF0();
  v9 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22820FD30();
  v12 = sub_228392790();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  aBlock[4] = sub_228329338;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228191E9C;
  aBlock[3] = &block_descriptor_6;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  v16 = a3;

  sub_228391DE0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_228292E70();
  sub_228329340(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_228216D44();
  sub_228393030();
  MEMORY[0x22AAB6340](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v19);
}

id sub_228328E68(void *a1, void *a2)
{
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    sub_228391150();
    v9 = a1;
    v10 = sub_2283911A0();
    v11 = sub_2283925C0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v22 = a2;
      v13 = v12;
      v14 = swift_slowAlloc();
      v23 = a1;
      v24 = v14;
      *v13 = 136446210;
      v15 = a1;
      sub_22818217C(0, &qword_280DDB860, MEMORY[0x277D84948], 1);
      v16 = sub_228392020();
      v18 = sub_2281C96FC(v16, v17, &v24);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_22816B000, v10, v11, "Failed to save medication: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x22AAB7B80](v14, -1, -1);
      v19 = v13;
      a2 = v22;
      MEMORY[0x22AAB7B80](v19, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
  }

  return [a2 dismissViewControllerAnimated:1 completion:0];
}

void sub_22832908C(void *a1)
{
  v1 = a1;
  sub_228328790();
}

uint64_t sub_228329134()
{
}

id sub_2283291A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationDetailEditViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2283291DC(uint64_t a1)
{
}

void sub_228329260(uint64_t a1)
{
  if (!qword_27D827808)
  {
    sub_2283292C8();
    v1 = sub_228391880();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827808);
    }
  }
}

void sub_2283292C8()
{
  if (!qword_27D827810)
  {
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827810);
    }
  }
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_228329340(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2283293A4(void *a1, void *a2)
{
  v3 = v2;
  *(v2 + qword_27D827EA8) = 0;
  v6 = qword_27D827EB0;
  v24 = xmmword_2283A4870;
  sub_228329260(0);
  v25 = 0uLL;
  swift_allocObject();
  *(v2 + v6) = sub_228391890();
  *(v2 + qword_27D827E90) = a1;
  *(v2 + qword_27D827E98) = a2;

  v7 = a1;
  v8 = a2;
  v9 = [v8 userSpecifiedName];
  if (v9)
  {
    v10 = v9;
    v11 = sub_228392000();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = [v8 userSpecifiedNotes];
  if (v14)
  {
    v15 = v14;
    v16 = sub_228392000();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  sub_228391850();

  sub_228294FEC(v11, v13, v16, v18);
  type metadata accessor for MedmojiPreviewDataSource(0);
  swift_allocObject();
  v19 = sub_22835F2C4(v8);
  *(v3 + qword_27D827EA0) = v19;
  sub_2283901F0();
  sub_228182110(0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_228397F30;
  v21 = MEMORY[0x277D10F80];
  *(v20 + 32) = v19;
  *(v20 + 40) = v21;
  type metadata accessor for NicknameAndNotesDataSource(0);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  swift_allocObject();

  *(v20 + 48) = sub_228292F84(v22, &v24);
  *(v20 + 56) = v21;
  sub_228390220();
  return sub_228390480();
}

uint64_t MedicationScheduleDataSource.__allocating_init(schedulePublisher:medication:concept:presentationContext:)(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  swift_allocObject();
  v8 = sub_228333ABC(a1, a2, a3, a4);

  return v8;
}

uint64_t sub_228329654(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v30 = MEMORY[0x277D84F90];
    sub_2281C9E44(0, v2, 0);
    v4 = v30;
    v5 = v1 + 64;
    result = sub_228393040();
    v6 = result;
    v7 = 0;
    v25 = v1 + 72;
    v26 = v2;
    v27 = v1 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v28 = v7;
      v29 = *(v1 + 36);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v10 = sub_22838FCE0();
      v12 = v11;
      result = swift_unknownObjectRelease();
      v13 = v4;
      v31 = v4;
      v14 = v1;
      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_2281C9E44((v15 > 1), v16 + 1, 1);
        v13 = v31;
      }

      *(v13 + 16) = v16 + 1;
      v17 = v13 + 16 * v16;
      *(v17 + 32) = v10;
      *(v17 + 40) = v12;
      v8 = 1 << *(v14 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v5 = v27;
      v18 = *(v27 + 8 * v9);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v14;
      v4 = v13;
      if (v29 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (v25 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_228205ADC(v6, v29, 0);
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_228205ADC(v6, v29, 0);
      }

LABEL_4:
      v7 = v28 + 1;
      v6 = v8;
      if (v28 + 1 == v26)
      {
        return v4;
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
  }

  return result;
}

uint64_t sub_2283298B0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for Dosage(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x277D84F90];
  sub_2281CA23C(0, v10, 0);
  v11 = v21;
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a3 + v18;
  v13 = *(v7 + 72);
  while (1)
  {
    v19(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_2281CA23C((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_228336ACC(v9, v11 + v18 + v15 * v13, type metadata accessor for Dosage);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228329A58(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v13 = MEMORY[0x277D84F90];
    sub_228393240();
    v9 = *(type metadata accessor for Dosage(0) - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v12, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_228393210();
      sub_228393250();
      sub_228393260();
      sub_228393220();
      v10 += v11;
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_228329B9C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t), uint64_t a3, uint64_t a4)
{
  v14 = a1;
  v7 = a1;
  v8 = *(a4 + 16);

  if (v8)
  {
    v9 = *(type metadata accessor for Dosage(0) - 8);
    v10 = a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a2(&v13, &v14, v10);
      if (v4)
      {
        break;
      }

      v7 = v13;
      v14 = v13;
      v10 += v11;
      if (!--v8)
      {
        return v7;
      }
    }
  }

  return v7;
}

uint64_t sub_228329CA0(uint64_t *a1)
{
  v2 = *(type metadata accessor for Dosage(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22834084C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2283301DC(v6, type metadata accessor for Dosage, sub_228330AEC, sub_22833032C);
  *a1 = v3;
  return result;
}

uint64_t sub_228329D84(uint64_t *a1)
{
  v2 = *(type metadata accessor for WeekdaysAndDosages(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_228340860(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2283301DC(v6, type metadata accessor for WeekdaysAndDosages, sub_2283314E0, sub_2283305DC);
  *a1 = v3;
  return result;
}

uint64_t sub_228329E68()
{
  v1 = v0;
  swift_allocObject();
  swift_weakInit();
  sub_228297C40(0);
  sub_228335C58(&qword_27D825868, sub_228297C40, MEMORY[0x277CBCE48]);

  v2 = sub_228391AC0();

  *(v1 + 88) = v2;
}

uint64_t sub_228329F6C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong || (v4 = Strong, swift_beginAccess(), v5 = *(v4 + 80), result = , v5 != a1))
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v7 = result;
      swift_beginAccess();
      *(v7 + 80) = a1;
      sub_22832A084();
      sub_228336A38(0);
      sub_228335C58(&qword_27D827F78, sub_228336A38, &protocol conformance descriptor for DynamicDataSource<A>);
      sub_22838FD00();
    }
  }

  return result;
}

void sub_22832A084()
{
  v1 = v0;
  swift_beginAccess();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v2 = sub_22838FCF0();
  swift_unknownObjectRelease();
  [v2 unregisterObserver_];

  v3 = v0[8];
  swift_beginAccess();
  if (*(v3 + 16) && (v4 = sub_2281A9BCC(), (v5 & 1) != 0))
  {
    v6 = (*(v3 + 56) + 24 * v4);
    v7 = v6 + 1;
    v8 = v6 + 2;
  }

  else
  {
    v6 = v1 + 5;
    v7 = v1 + 6;
    v8 = v1 + 7;
  }

  v9 = *v6;
  v10 = *v7;
  v11 = *v8;
  v1[12] = v9;
  v1[13] = v10;
  v1[14] = v11;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v12 = sub_22838FCF0();
  swift_unknownObjectRelease();
  [v12 registerObserver_];
}

uint64_t sub_22832A1C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27D828F30;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_22832A274(uint64_t a1)
{
  v3 = qword_27D828F30;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t MedicationScheduleDataSource.init(schedulePublisher:medication:concept:presentationContext:)(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v6 = sub_228333ABC(a1, a2, a3, a4);

  return v6;
}

uint64_t sub_22832A374()
{

  sub_228391850();
}

uint64_t sub_22832A3C4()
{
  v1 = v0;
  sub_228335AE4(0);
  v3 = *(v2 - 8);
  v18 = v2;
  v19 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v0 + qword_27D828F38);
  swift_allocObject();
  swift_weakInit();
  sub_228297C40(0);
  v6 = MEMORY[0x277CBCE48];
  sub_228335C58(&qword_27D825868, sub_228297C40, MEMORY[0x277CBCE48]);

  v7 = sub_228391AC0();

  *(v1 + qword_27D828FD0) = v7;

  v21 = *(v1 + qword_27D828F48);
  swift_allocObject();
  swift_weakInit();
  sub_228335CA8(0, &qword_27D827F18, &qword_27D827F20, &type metadata for FrequencyInterval);
  sub_228335B9C(&qword_27D827F28, &qword_27D827F18, &qword_27D827F20, &type metadata for FrequencyInterval);

  v8 = sub_228391AC0();

  *(v1 + qword_27D828F90) = v8;

  v21 = *(v1 + qword_27D828F50);
  swift_allocObject();
  swift_weakInit();
  sub_228335D24(0);
  sub_228335C58(&qword_27D827F40, sub_228335D24, v6);

  v9 = sub_228391AC0();

  *(v1 + qword_27D828FA0) = v9;

  v21 = *(v1 + qword_27D828F58);
  swift_allocObject();
  swift_weakInit();
  sub_2282ABC18(0);
  sub_228335C58(&qword_27D826EB0, sub_2282ABC18, v6);

  v10 = sub_228391AC0();

  *(v1 + qword_27D828FA8) = v10;

  v21 = *(v1 + qword_27D828F60);
  swift_allocObject();
  swift_weakInit();
  sub_228241D38(0);
  sub_228335C58(&qword_27D825C50, sub_228241D38, v6);

  v11 = sub_228391AC0();

  *(v1 + qword_27D828FB0) = v11;

  v21 = *(v1 + qword_27D828F68);
  swift_allocObject();
  swift_weakInit();
  sub_228241DA0(0);
  sub_228335C58(&qword_27D825C58, sub_228241DA0, v6);

  v12 = sub_228391AC0();

  *(v1 + qword_27D828FB8) = v12;

  v13 = *(v1 + qword_27D828F80);
  v20 = *(v1 + qword_27D828F78);
  v21 = v13;
  sub_228335CA8(0, &qword_27D827F00, &qword_27D827F08, &type metadata for PauseUsePeriod);
  sub_228335B9C(&qword_27D827F10, &qword_27D827F00, &qword_27D827F08, &type metadata for PauseUsePeriod);
  sub_2283919E0();
  swift_allocObject();
  swift_weakInit();
  sub_228335C58(&qword_27D827F48, sub_228335AE4, MEMORY[0x277CBCAF0]);
  v14 = v18;
  v15 = sub_228391AC0();

  (*(v19 + 8))(v5, v14);
  *(v1 + qword_27D828FC8) = v15;

  v21 = *(v1 + qword_27D828F28);
  swift_allocObject();
  swift_weakInit();
  sub_2281BC72C(0);
  sub_228335C58(&qword_27D8245A8, sub_2281BC72C, v6);

  v16 = sub_228391AC0();

  *(v1 + qword_27D828FC0) = v16;
}

void sub_22832AB18(void *a1, uint64_t a2)
{
  if (*a1 != 3)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v2 = sub_22832ABF0();
      }

      else
      {
        v2 = 0;
      }

      sub_228391850();
    }
  }
}

id sub_22832ABF0()
{
  v1 = v0;
  v257 = *v0;
  v234 = sub_22838F080();
  v233 = *(v234 - 8);
  MEMORY[0x28223BE20](v234);
  v239 = &v227 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_22838F700();
  v246 = *(v245 - 8);
  MEMORY[0x28223BE20](v245);
  v244 = &v227 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = type metadata accessor for Dosage(0);
  v271 = *(v266 - 8);
  v4 = MEMORY[0x28223BE20](v266);
  v250 = &v227 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v227 - v6;
  v260 = sub_2283911B0();
  v261 = *(v260 - 8);
  v8 = MEMORY[0x28223BE20](v260);
  v258 = &v227 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v254 = &v227 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v238 = &v227 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v243 = &v227 - v15;
  MEMORY[0x28223BE20](v14);
  v255 = &v227 - v16;
  v275 = type metadata accessor for WeekdaysAndDosages(0);
  v17 = *(v275 - 8);
  v18 = MEMORY[0x28223BE20](v275);
  v253 = &v227 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v248 = &v227 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v252 = &v227 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v256 = &v227 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v227 - v26;
  v28 = sub_22838F4A0();
  v273 = *(v28 - 8);
  v29 = MEMORY[0x28223BE20](v28);
  v259 = &v227 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v227 - v32;
  MEMORY[0x28223BE20](v31);
  v274 = &v227 - v34;
  sub_228301654(0);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v237 = &v227 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v232 = &v227 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v236 = &v227 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v235 = &v227 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v230 = &v227 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v229 = &v227 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v231 = &v227 - v49;
  MEMORY[0x28223BE20](v48);
  v51 = &v227 - v50;
  v264 = sub_22838F440();
  v265 = *(v264 - 8);
  MEMORY[0x28223BE20](v264);
  v53 = &v227 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = sub_22838F6C0();
  v263 = *(v262 - 8);
  MEMORY[0x28223BE20](v262);
  v55 = &v227 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = [*(v0 + qword_27D828FE8) currentCalendar];
  v267 = v55;
  sub_22838F630();

  v269 = v53;
  sub_228391870();

  v268 = v51;
  sub_228391870();

  sub_228391870();

  v57 = v278;
  if (!v278)
  {
    v57 = MEMORY[0x277D84F90];
  }

  v270 = v57;

  sub_228391870();

  v272 = v278;

  sub_228391870();

  v242 = v278;
  v251 = v279;

  sub_228391870();

  v241 = v278;
  v249 = v279;
  v240 = qword_27D828F58;

  sub_228391870();

  v58 = v278;
  sub_22838F490();
  v247 = v1;
  v59 = *(v1 + qword_27D827ED8);
  if (v59)
  {
    v60 = v59;
    v61 = [v60 UUID];
    v62 = v259;
    sub_22838F480();

    v63 = v273;
    (*(v273 + 8))(v33, v28);
    v64 = *(v63 + 32);
    v64(v33, v62, v28);
  }

  else
  {
    v64 = *(v273 + 32);
  }

  v65 = v28;
  v64(v274, v33, v28);
  v66 = v272;
  v67 = v266;
  if (v272 == 4)
  {
    v68 = v28;

    v69 = v258;
    sub_228391150();
    v70 = sub_2283911A0();
    v71 = sub_2283925C0();
    if (!os_log_type_enabled(v70, v71))
    {
LABEL_10:

      (*(v261 + 8))(v69, v260);
      (*(v273 + 8))(v274, v68);
LABEL_11:
      sub_228335E3C(v268, sub_228301654);
      (*(v265 + 8))(v269, v264);
      (*(v263 + 8))(v267, v262);
      return 0;
    }

    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v278 = v73;
    *v72 = 136315138;
    v74 = sub_228393600();
    v76 = sub_2281C96FC(v74, v75, &v278);

    *(v72 + 4) = v76;
    v77 = "[%s] Frequency is nil or as needed. Unable to create schedule.";
LABEL_9:
    _os_log_impl(&dword_22816B000, v70, v71, v77, v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v73);
    MEMORY[0x22AAB7B80](v73, -1, -1);
    MEMORY[0x22AAB7B80](v72, -1, -1);
    goto LABEL_10;
  }

  v78 = *(v58 + 16);
  if (v78)
  {
    v79 = 0;
    do
    {
      v80 = v79;
      if (v78 == v79)
      {
        break;
      }

      if (v79 >= *(v58 + 16))
      {
        __break(1u);
        goto LABEL_124;
      }

      sub_228336908(v58 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v79++, v27, type metadata accessor for WeekdaysAndDosages);
      v28 = *(*&v27[*(v275 + 24)] + 16);
      sub_228335E3C(v27, type metadata accessor for WeekdaysAndDosages);
    }

    while (!v28);
    v66 = v272;
    if (v272 == 3 || v272 == 5)
    {
      if (v78 != v80)
      {
        goto LABEL_27;
      }

      goto LABEL_41;
    }
  }

  else if (v272 == 3 || v272 == 5)
  {
    goto LABEL_41;
  }

  if (!*(v270 + 16))
  {
LABEL_41:
    v95 = v65;

    v96 = v255;
    sub_228391150();
    v97 = sub_2283911A0();
    v98 = sub_2283925C0();
    v99 = os_log_type_enabled(v97, v98);
    v100 = v267;
    v101 = v265;
    v102 = v273;
    if (v99)
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v278 = v104;
      *v103 = 136315138;
      v105 = sub_228393600();
      v107 = sub_2281C96FC(v105, v106, &v278);

      *(v103 + 4) = v107;
      _os_log_impl(&dword_22816B000, v97, v98, "[%s] Dosages is nil. Unable to create schedule.", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v104);
      MEMORY[0x22AAB7B80](v104, -1, -1);
      MEMORY[0x22AAB7B80](v103, -1, -1);

      (*(v261 + 8))(v255, v260);
    }

    else
    {

      (*(v261 + 8))(v96, v260);
    }

    (*(v102 + 8))(v274, v95);
LABEL_48:
    sub_228335E3C(v268, sub_228301654);
    (*(v101 + 8))(v269, v264);
    (*(v263 + 8))(v100, v262);
    return 0;
  }

  if ((v66 - 7) <= 1 && (v251 == 255 || v249 == 255))
  {
    v134 = v65;

    v135 = v243;
    sub_228391150();
    v65 = sub_2283911A0();
    v136 = sub_2283925C0();
    if (!os_log_type_enabled(v65, v136))
    {

      (*(v261 + 8))(v135, v260);
      (*(v273 + 8))(v274, v134);
      goto LABEL_11;
    }

    v137 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v278 = v138;
    *v137 = 136315650;
    v139 = sub_228393600();
    v141 = sub_2281C96FC(v139, v140, &v278);

    *(v137 + 4) = v141;
    *(v137 + 12) = 2048;
    v92 = v267;
    v66 = v265;
    v142 = v264;
    v143 = v273;
    if (v251 == 255)
    {
      v144 = -1;
    }

    else
    {
      v144 = v242;
      if ((v251 & 1) == 0)
      {
        v144 = 7 * v242;
        if ((v242 * 7) >> 64 != (7 * v242) >> 63)
        {
          __break(1u);
LABEL_76:
          if (!v66)
          {

            (*(v273 + 8))(v274, v65);
            goto LABEL_11;
          }

          if (v66 != 1)
          {
            if (v66 != 2)
            {
              goto LABEL_98;
            }

            MEMORY[0x28223BE20](v90);
            v28 = v267;
            v225 = v267;
            sub_228329A58(sub_228336848, (&v227 - 4), v92);

            v275 = sub_22838F460();
            v145 = [*(v247 + qword_27D827EC8) semanticIdentifier];
            v78 = [v145 stringValue];

            if (!v78)
            {
              sub_228392000();
              v78 = sub_228391FC0();
            }

            v146 = v244;
            sub_22838F690();
            v80 = sub_22838F6D0();
            (*(v246 + 8))(v146, v245);
            v79 = sub_22838F380();
            v147 = v235;
            sub_228336908(v268, v235, sub_228301654);
            v17 = v265;
            v65 = v264;
            if ((*(v265 + 48))(v147, 1, v264) == 1)
            {
              v148 = 0;
            }

            else
            {
              v148 = sub_22838F380();
              (*(v17 + 8))(v147, v65);
            }

            v185 = objc_opt_self();
            sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
            v181 = sub_228392190();

            v186 = v185;
            v183 = v275;
            v184 = [v186 dailyScheduleWithUUID:v275 medicationIdentifier:v78 createdUTCOffset:v80 startDateTime:v79 endDateTime:v148 timeIntervals:v181 note:0];
            goto LABEL_128;
          }

          MEMORY[0x28223BE20](v90);
          v170 = v247;
          *(&v227 - 4) = v267;
          *(&v227 - 3) = v170;
          v225 = v92;
          v226 = v257;
          sub_228329B9C(MEMORY[0x277D84F90], sub_228336828, (&v227 - 6), v92);

          v171 = sub_22838F460();
          v172 = [*(v170 + qword_27D827EC8) semanticIdentifier];
          v173 = [v172 stringValue];

          if (!v173)
          {
            sub_228392000();
            v173 = sub_228391FC0();
          }

          v174 = v244;
          sub_22838F690();
          v175 = sub_22838F6D0();
          (*(v246 + 8))(v174, v245);
          v176 = sub_22838F380();
          v177 = v236;
          sub_228336908(v268, v236, sub_228301654);
          v17 = v265;
          v178 = v264;
          if ((*(v265 + 48))(v177, 1, v264) == 1)
          {
            v179 = 0;
          }

          else
          {
            v179 = sub_22838F380();
            (*(v17 + 8))(v177, v178);
          }

          v188 = objc_opt_self();
          sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
          v189 = sub_228392190();

          v190 = [v188 everyXDaysScheduleWithUUID:v171 medicationIdentifier:v173 createdUTCOffset:v175 startDateTime:v176 endDateTime:v179 timeIntervals:v189 cycleStartDateComponents:0 note:0];
LABEL_160:
          v187 = v190;

          (*(v273 + 8))(v274, v228);
          sub_228335E3C(v268, sub_228301654);
          (*(v17 + 8))(v269, v178);
          (*(v263 + 8))(v267, v262);
          return v187;
        }
      }
    }

    *(v137 + 14) = v144;
    *(v137 + 22) = 2048;
    if (v249 != 255)
    {
      v151 = v241;
      if (v249)
      {
        goto LABEL_96;
      }

      v151 = 7 * v241;
      if ((v241 * 7) >> 64 == (7 * v241) >> 63)
      {
        goto LABEL_96;
      }

      __break(1u);
    }

    v151 = -1;
LABEL_96:
    *(v137 + 24) = v151;
    _os_log_impl(&dword_22816B000, v65, v136, "[%s] No take for value %ld or pause For Value %ld. Unable to create schedule.", v137, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v138);
    MEMORY[0x22AAB7B80](v138, -1, -1);
    MEMORY[0x22AAB7B80](v137, -1, -1);

    (*(v261 + 8))(v135, v260);
    (*(v143 + 8))(v274, v134);
    sub_228335E3C(v268, sub_228301654);
    (*(v66 + 8))(v269, v142);
    (*(v263 + 8))(v92, v262);
    return 0;
  }

LABEL_27:
  v228 = v65;
  if (!v78)
  {
    goto LABEL_36;
  }

  inited = 0;
  v82 = *(v275 + 24);
  v83 = (v58 + ((*(v17 + 80) + 32) & ~*(v17 + 80)));
  v259 = v82;
  v258 = v83;
  while (2)
  {
    if (inited >= *(v58 + 16))
    {
LABEL_163:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        v156 = MEMORY[0x22AAB6D80](0, v65);
LABEL_103:
        v157 = v156;
        v17 = v265;
        v158 = [(objc_class *)v156 startTimeComponent];

        sub_22838EFD0();
        sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
        v159 = sub_228392C40();
        if (v249 == 255)
        {
          v160 = 0;
LABEL_150:
          v213 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          v214 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          v215 = objc_allocWithZone(MEMORY[0x277D11580]);
          v216 = v239;
          v217 = sub_22838EFB0();
          v218 = [v215 initWithStartTimeComponent:v217 daysOfWeek:0 cycleIndex:v159 cycleIntervalDays:v213 dose:v214];

          (*(v233 + 8))(v216, v234);
          *(inited + 32) = v218;
          v278 = v65;
          sub_2281D5FC8(inited);
          v171 = sub_22838F460();
          v219 = [*(v247 + qword_27D827EC8) semanticIdentifier];
          v173 = [v219 stringValue];

          if (!v173)
          {
            sub_228392000();
            v173 = sub_228391FC0();
          }

          v220 = v244;
          sub_22838F690();
          v175 = sub_22838F6D0();
          (*(v246 + 8))(v220, v245);
          v176 = sub_22838F380();
          v221 = v232;
          sub_228336908(v268, v232, sub_228301654);
          v178 = v264;
          if ((*(v17 + 48))(v221, 1, v264) == 1)
          {
            v179 = 0;
          }

          else
          {
            v179 = sub_22838F380();
            (*(v17 + 8))(v221, v178);
          }

          v222 = objc_opt_self();
          sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
          v189 = sub_228392190();

          v190 = [v222 activeXDaysPauseYDaysWithUUID:v171 medicationIdentifier:v173 createdUTCOffset:v175 startDateTime:v176 endDateTime:v179 timeIntervals:v189 cycleStartDateComponents:0 note:0];
          goto LABEL_160;
        }

        v160 = v241;
        if (v249)
        {
          goto LABEL_150;
        }

        v160 = 7 * v241;
        if ((v241 * 7) >> 64 == (7 * v241) >> 63)
        {
          goto LABEL_150;
        }

        __break(1u);
LABEL_107:
        v272 = sub_22832E390();

        sub_228391870();

        v161 = v278;
        isa = v278[2].isa;
        if (!isa)
        {
          break;
        }

        v163 = 0;
        v164 = MEMORY[0x277D84F90];
        inited = v248;
        while (v163 < *(v161 + 16))
        {
          v165 = (*(v17 + 80) + 32) & ~*(v17 + 80);
          v166 = *(v17 + 72);
          sub_228336908(v161 + v165 + v166 * v163, inited, type metadata accessor for WeekdaysAndDosages);
          if (*(*(inited + *(v275 + 24)) + 16))
          {
            sub_228336ACC(inited, v253, type metadata accessor for WeekdaysAndDosages);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v276 = v164;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_2281C9CD4(0, *(v164 + 16) + 1, 1);
              v164 = v276;
            }

            v169 = *(v164 + 16);
            v168 = *(v164 + 24);
            if (v169 >= v168 >> 1)
            {
              sub_2281C9CD4((v168 > 1), v169 + 1, 1);
              v164 = v276;
            }

            *(v164 + 16) = v169 + 1;
            sub_228336ACC(v253, v164 + v165 + v169 * v166, type metadata accessor for WeekdaysAndDosages);
            inited = v248;
          }

          else
          {
            sub_228335E3C(inited, type metadata accessor for WeekdaysAndDosages);
          }

          if (isa == ++v163)
          {
            goto LABEL_140;
          }
        }
      }

      v164 = MEMORY[0x277D84F90];
LABEL_140:

      v207 = *(v164 + 16);

      v171 = sub_22838F460();
      v208 = [*(v247 + qword_27D827EC8) semanticIdentifier];
      v173 = [v208 stringValue];

      if (v207 <= 1)
      {
        v17 = v265;
        v178 = v264;
        if (!v173)
        {
          sub_228392000();
          v173 = sub_228391FC0();
        }

        v211 = v244;
        sub_22838F690();
        v175 = sub_22838F6D0();
        (*(v246 + 8))(v211, v245);
        v176 = sub_22838F380();
        v212 = v230;
        sub_228336908(v268, v230, sub_228301654);
        if ((*(v17 + 48))(v212, 1, v178) == 1)
        {
          v179 = 0;
        }

        else
        {
          v179 = sub_22838F380();
          (*(v17 + 8))(v212, v178);
        }

        v224 = objc_opt_self();
        sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
        v189 = sub_228392190();

        v190 = [v224 daysOfWeekScheduleWithUUID:v171 medicationIdentifier:v173 createdUTCOffset:v175 startDateTime:v176 endDateTime:v179 timeIntervals:v189 note:0];
      }

      else
      {
        v17 = v265;
        v178 = v264;
        if (!v173)
        {
          sub_228392000();
          v173 = sub_228391FC0();
        }

        v209 = v244;
        sub_22838F690();
        v175 = sub_22838F6D0();
        (*(v246 + 8))(v209, v245);
        v176 = sub_22838F380();
        v210 = v229;
        sub_228336908(v268, v229, sub_228301654);
        if ((*(v17 + 48))(v210, 1, v178) == 1)
        {
          v179 = 0;
        }

        else
        {
          v179 = sub_22838F380();
          (*(v17 + 8))(v210, v178);
        }

        v223 = objc_opt_self();
        sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
        v189 = sub_228392190();

        v190 = [v223 differentDosesDaysOfWeekScheduleWithUUID:v171 medicationIdentifier:v173 createdUTCOffset:v175 startDateTime:v176 endDateTime:v179 timeIntervals:v189 note:0];
      }

      goto LABEL_160;
    }

    v84 = v256;
    sub_228336908(&v83[*(v17 + 72) * inited], v256, type metadata accessor for WeekdaysAndDosages);
    v85 = 0;
    ++inited;
    v86 = *&v82[v84];
    v87 = *(v86 + 16);
    v88 = v271;
    while (v87 != v85)
    {
      if (v85 >= *(v86 + 16))
      {
        __break(1u);
        goto LABEL_132;
      }

      sub_228336908(v86 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v85++, v7, type metadata accessor for Dosage);
      v89 = *&v7[*(v67 + 24)];
      sub_228335E3C(v7, type metadata accessor for Dosage);
      if (v89 <= 0.0)
      {

        sub_228335E3C(v256, type metadata accessor for WeekdaysAndDosages);
LABEL_45:
        v108 = v254;
        sub_228391150();
        v109 = sub_2283911A0();
        v110 = sub_2283925C0();
        v111 = os_log_type_enabled(v109, v110);
        v100 = v267;
        v101 = v265;
        v112 = v273;
        if (v111)
        {
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v278 = v114;
          *v113 = 136315138;
          v115 = sub_228393600();
          v117 = sub_2281C96FC(v115, v116, &v278);

          *(v113 + 4) = v117;
          _os_log_impl(&dword_22816B000, v109, v110, "[%s] Unable to create schedule with a dosage less than or equal to 0", v113, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v114);
          MEMORY[0x22AAB7B80](v114, -1, -1);
          MEMORY[0x22AAB7B80](v113, -1, -1);
        }

        (*(v261 + 8))(v108, v260);
        (*(v112 + 8))(v274, v228);
        goto LABEL_48;
      }
    }

    sub_228335E3C(v256, type metadata accessor for WeekdaysAndDosages);
    v65 = v228;
    v66 = v272;
    v82 = v259;
    v83 = v258;
    if (inited != v78)
    {
      continue;
    }

    break;
  }

LABEL_36:

  v91 = 0;
  v92 = v270;
  inited = *(v270 + 16);
  v93 = v250;
  while (inited != v91)
  {
    if (v91 >= *(v92 + 16))
    {
      __break(1u);
      goto LABEL_163;
    }

    sub_228336908(v92 + ((*(v271 + 80) + 32) & ~*(v271 + 80)) + *(v271 + 72) * v91++, v93, type metadata accessor for Dosage);
    v94 = *(v93 + *(v67 + 24));
    v90 = sub_228335E3C(v93, type metadata accessor for Dosage);
    if (v94 <= 0.0)
    {

      goto LABEL_45;
    }
  }

  if (v66 <= 2)
  {
    goto LABEL_76;
  }

  if (v66 <= 6)
  {
    if (v66 == 3 || v66 == 5)
    {

      sub_228391870();

      v119 = sub_22832DEEC(v278);

      if ((v119 & 1) == 0)
      {
        goto LABEL_107;
      }

      sub_228391870();

      v120 = v278[2].isa;
      if (v120)
      {
        v121 = *(v275 + 24);
        v122 = *(v17 + 80);
        v275 = v278;
        inited = v278 + ((v122 + 32) & ~v122);
        v123 = *(v17 + 72);
        v65 = MEMORY[0x277D84F90];
        do
        {
          v124 = v252;
          sub_228336908(inited, v252, type metadata accessor for WeekdaysAndDosages);
          v125 = *(v124 + v121);

          sub_228335E3C(v124, type metadata accessor for WeekdaysAndDosages);
          v126 = *(v125 + 16);
          v127 = *(v65 + 16);
          v128 = v127 + v126;
          if (__OFADD__(v127, v126))
          {
            goto LABEL_165;
          }

          v129 = swift_isUniquelyReferenced_nonNull_native();
          if (!v129 || v128 > *(v65 + 24) >> 1)
          {
            if (v127 <= v128)
            {
              v130 = v127 + v126;
            }

            else
            {
              v130 = v127;
            }

            v65 = sub_2281984E8(v129, v130, 1, v65);
          }

          if (*(v125 + 16))
          {
            if ((*(v65 + 24) >> 1) - *(v65 + 16) < v126)
            {
              goto LABEL_167;
            }

            swift_arrayInitWithCopy();

            if (v126)
            {
              v131 = *(v65 + 16);
              v132 = __OFADD__(v131, v126);
              v133 = (v131 + v126);
              if (v132)
              {
                goto LABEL_168;
              }

              *(v65 + 16) = v133;
            }
          }

          else
          {

            if (v126)
            {
              goto LABEL_166;
            }
          }

          inited += v123;
          v120 = (v120 - 1);
        }

        while (v120);
      }

      else
      {
LABEL_132:

        v65 = MEMORY[0x277D84F90];
      }

      v191 = sub_228264B78(v65);

      v278 = v191;

      sub_228329CA0(&v278);
      v192 = v267;
      v193 = v247;

      v272 = v278;
      v275 = sub_22838F460();
      v194 = [*(v193 + qword_27D827EC8) semanticIdentifier];
      v195 = [v194 stringValue];

      if (!v195)
      {
        sub_228392000();
        v195 = sub_228391FC0();
      }

      v196 = v244;
      sub_22838F690();
      v271 = sub_22838F6D0();
      (*(v246 + 8))(v196, v245);
      v197 = sub_22838F380();
      v198 = v231;
      sub_228336908(v268, v231, sub_228301654);
      v199 = v265;
      v200 = v264;
      if ((*(v265 + 48))(v198, 1, v264) == 1)
      {
        v201 = 0;
      }

      else
      {
        v201 = sub_22838F380();
        (*(v199 + 8))(v198, v200);
      }

      v202 = objc_opt_self();
      MEMORY[0x28223BE20](v202);
      sub_228329A58(sub_228336B90, (&v227 - 4), v272);

      sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
      v203 = sub_228392190();

      v204 = v202;
      v205 = v275;
      v206 = v271;
      v187 = [v204 dailyScheduleWithUUID:v275 medicationIdentifier:v195 createdUTCOffset:v271 startDateTime:v197 endDateTime:v201 timeIntervals:v203 note:0];

      (*(v273 + 8))(v274, v228);
      sub_228335E3C(v268, sub_228301654);
      (*(v199 + 8))(v269, v200);
      (*(v263 + 8))(v192, v262);
      return v187;
    }

LABEL_98:
    v68 = v65;

    v69 = v238;
    sub_228391150();
    v70 = sub_2283911A0();
    v71 = sub_2283925C0();
    if (!os_log_type_enabled(v70, v71))
    {
      goto LABEL_10;
    }

    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v278 = v73;
    *v72 = 136315138;
    v152 = sub_228393600();
    v154 = sub_2281C96FC(v152, v153, &v278);

    *(v72 + 4) = v154;
    v77 = "%s encountered unsupported scheduleType when attempting to save schedule.";
    goto LABEL_9;
  }

  if (v66 != 7)
  {
    if (v66 != 8)
    {
      goto LABEL_98;
    }

    v278 = v241;
    v279 = v249;
    v276 = v242;
    v277 = v251;
    v28 = v267;
    sub_22833618C(v92, v267, &v278, &v276);

    v275 = sub_22838F460();
    v149 = [*(v247 + qword_27D827EC8) semanticIdentifier];
    v78 = [v149 stringValue];

    if (!v78)
    {
      sub_228392000();
      v78 = sub_228391FC0();
    }

    v150 = v244;
    sub_22838F690();
    v80 = sub_22838F6D0();
    (*(v246 + 8))(v150, v245);
    v79 = sub_22838F380();
    v67 = v237;
    sub_228336908(v268, v237, sub_228301654);
    v17 = v265;
    v65 = v264;
    if ((*(v265 + 48))(v67, 1, v264) == 1)
    {
      v148 = 0;
      goto LABEL_125;
    }

LABEL_124:
    v148 = sub_22838F380();
    (*(v17 + 8))(v67, v65);
LABEL_125:
    v180 = objc_opt_self();
    sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
    v181 = sub_228392190();

    v182 = v180;
    v183 = v275;
    v184 = [v182 activeXWeeksPauseYWeeksWithUUID:v275 medicationIdentifier:v78 createdUTCOffset:v80 startDateTime:v79 endDateTime:v148 timeIntervals:v181 cycleStartDateComponents:0 note:0];
LABEL_128:
    v187 = v184;

    (*(v273 + 8))(v274, v228);
    sub_228335E3C(v268, sub_228301654);
    (*(v17 + 8))(v269, v65);
    (*(v263 + 8))(v28, v262);
    return v187;
  }

  MEMORY[0x28223BE20](v90);
  v155 = v242;
  *(&v227 - 4) = v267;
  *(&v227 - 3) = v155;
  LOBYTE(v225) = v251;
  v65 = sub_228329A58(sub_228336804, (&v227 - 6), v92);

  sub_228336B34(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228396260;
  if ((v65 & 0xC000000000000001) != 0)
  {
    goto LABEL_169;
  }

  if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v156 = *(v65 + 32);
    goto LABEL_103;
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_22832D680(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v2 = sub_22832ABF0();
    }

    else
    {
      v2 = 0;
    }

    sub_228391850();
  }
}

void sub_22832D748(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (sub_22832D940())
    {

      v2 = sub_22832ABF0();
      sub_228391850();
    }

    else
    {
    }
  }
}

uint64_t sub_22832D7F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_228391870();

      if (v3 == 4)
      {
      }

      else
      {

        sub_228391870();

        if (v3)
        {
        }
      }
    }

    sub_228391850();
  }

  return result;
}

BOOL sub_22832D940()
{

  sub_228391870();

  sub_228391870();

  sub_228391870();

  result = 0;
  if (v2 != 255)
  {

    sub_228391870();

    if (v1 == 8 && (v2 & 1) == 0)
    {
      return 1;
    }

    if (v1 == 7 && (v2 & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

void sub_22832DA88()
{
  sub_228335E3C(v0 + qword_27D828F40, sub_2283356B0);

  sub_228267618(*(v0 + qword_27D828FE0), *(v0 + qword_27D828FE0 + 8), *(v0 + qword_27D828FE0 + 16), *(v0 + qword_27D828FE0 + 24));
  v1 = *(v0 + qword_27D828FE8);
}

uint64_t MedicationScheduleDataSource.deinit()
{
  v0 = sub_228390200();

  sub_228335E3C(v0 + qword_27D828F40, sub_2283356B0);

  sub_228267618(*(v0 + qword_27D828FE0), *(v0 + qword_27D828FE0 + 8), *(v0 + qword_27D828FE0 + 16), *(v0 + qword_27D828FE0 + 24));

  return v0;
}

uint64_t MedicationScheduleDataSource.__deallocating_deinit()
{
  MedicationScheduleDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22832DEEC(uint64_t a1)
{
  v2 = type metadata accessor for WeekdaysAndDosages(0);
  v42 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_228391130();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v33 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v33 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v33 - v17;
  MEMORY[0x28223BE20](v16);
  v36 = &v33 - v19;
  v44 = 0;
  v41 = sub_228335C58(&qword_280DDBD00, MEMORY[0x277D11768], MEMORY[0x277D11790]);
  sub_2283935F0();
  v20 = *(v6 + 16);
  v35 = v18;
  v40 = v20;
  v20(v15, v18, v5);
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = *(v2 + 20);
    v23 = *(v42 + 80);
    v33 = v6;
    v34 = a1;
    v24 = a1 + ((v23 + 32) & ~v23);
    v38 = *(v42 + 72);
    v39 = v22;
    v42 = v6 + 8;
    v25 = (v6 + 32);
    v37 = v6 + 16;
    do
    {
      sub_228336908(v24, v4, type metadata accessor for WeekdaysAndDosages);
      v26 = MEMORY[0x277D11768];
      sub_228335C58(&qword_27D824818, MEMORY[0x277D11768], MEMORY[0x277D11780]);
      sub_228392170();
      sub_2283935F0();
      v40(v9, &v4[v39], v5);
      sub_228335C58(&qword_27D824820, v26, MEMORY[0x277D11788]);
      sub_228393000();
      sub_228335E3C(v4, type metadata accessor for WeekdaysAndDosages);
      v27 = *v42;
      (*v42)(v15, v5);
      (*v25)(v15, v12, v5);
      v24 += v38;
      --v21;
    }

    while (v21);
    v42 = v42 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v28 = v33;
    a1 = v34;
  }

  else
  {
    v28 = v6;
    v29 = v6 + 8;
    v27 = *(v6 + 8);
    v42 = v29 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v27(v35, v5);
  v30 = v36;
  (*(v28 + 32))(v36, v15, v5);
  sub_2283910C0();
  sub_228335C58(&qword_27D824818, MEMORY[0x277D11768], MEMORY[0x277D11780]);
  sub_228392170();
  sub_228392170();
  v27(v12, v5);
  v27(v30, v5);
  v31 = v44 == v43;
  return v31 & sub_22832FFAC(a1);
}

uint64_t sub_22832E390()
{
  v53 = sub_22838F700();
  v1 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_22838F080();
  v3 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Dosage(0);
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WeekdaysAndDosages(0);
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v61 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_22838F6C0();
  v10 = *(v55 - 8);
  v11 = MEMORY[0x28223BE20](v55);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v16 = [*(v0 + qword_27D828FE8) currentCalendar];
  v54 = v15;
  sub_22838F630();

  v64 = MEMORY[0x277D84F90];

  sub_228391870();

  v62 = v63;

  v17 = 0;
  sub_228329D84(&v62);

  v18 = v62;
  v46 = *(v62 + 16);
  if (v46)
  {
    v45 = v62 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
    v50 = (v1 + 8);
    v40 = v10;
    v49 = (v10 + 8);
    v19 = (v3 + 8);
    v20 = 0;
    v21 = MEMORY[0x277D84F90];
    v42 = v8;
    v41 = v62;
    while (v20 < *(v18 + 16))
    {
      v22 = v61;
      sub_228336908(v45 + *(v47 + 72) * v20, v61, type metadata accessor for WeekdaysAndDosages);
      v17 = *(v22 + *(v8 + 24));
      v23 = v17[2];
      if (v23)
      {
        v48 = v20;
        v24 = v44;
        v25 = *(v44 + 20);
        v59 = *(v8 + 20);
        v60 = v25;
        v26 = objc_opt_self();
        v57 = *(v24 + 24);
        v58 = v26;
        v27 = v17 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
        v56 = *(v43 + 72);
        do
        {
          sub_228336908(v27, v7, type metadata accessor for Dosage);
          v28 = v52;
          sub_22838F690();
          sub_22838F5B0();
          v29 = (*v50)(v28, v53);
          v63 = 0;
          MEMORY[0x28223BE20](v29);
          v30 = v5;
          *(&v39 - 2) = &v63;
          v31 = [v58 hk_gregorianCalendar];
          sub_22838F630();

          sub_228391110();
          (*v49)(v13, v55);
          v32 = v63;
          v33 = *&v7[v57];
          sub_228335E3C(v7, type metadata accessor for Dosage);
          v34 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          v35 = objc_allocWithZone(MEMORY[0x277D11580]);
          v36 = sub_22838EFB0();
          v17 = [v35 initWithStartTimeComponent:v36 daysOfWeek:v32 cycleIndex:0 cycleIntervalDays:0 dose:v34];

          v37 = v17;
          MEMORY[0x22AAB5D20]();
          if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2283921E0();
          }

          sub_228392230();

          (*v19)(v30, v51);
          v27 += v56;
          --v23;
          v5 = v30;
        }

        while (v23);
        v21 = v64;
        v8 = v42;
        v18 = v41;
        v20 = v48;
      }

      ++v20;
      sub_228335E3C(v61, type metadata accessor for WeekdaysAndDosages);
      if (v20 == v46)
      {

        v10 = v40;
        goto LABEL_13;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
LABEL_13:
    (*(v10 + 8))(v54, v55);
    return v21;
  }

  return result;
}

void sub_22832EAAC(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v86 = a3;
  v72[1] = a5;
  v78 = a4;
  v85 = a6;
  v8 = sub_2283911B0();
  v75 = *(v8 - 1);
  v76 = v8;
  MEMORY[0x28223BE20](v8);
  v74 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Dosage(0);
  v79 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v72[0] = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228336870(0);
  v77 = v12;
  MEMORY[0x28223BE20](v12);
  v81 = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283368D4(0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v73 = v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v82 = v72 - v18;
  MEMORY[0x28223BE20](v17);
  v80 = v72 - v19;
  v20 = sub_22838F700();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22838F080();
  v83 = *(v24 - 8);
  v84 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  v89 = v27;

  sub_22838F690();
  sub_22838F5B0();
  (*(v21 + 8))(v23, v20);

  sub_228391870();

  if ((v88 & 1) == 0)
  {
    v75 = v87;
    v37 = sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
    v38 = sub_228392C40();
    v74 = v37;
    v39 = sub_228392C40();
    v40 = a2;
    v41 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v42 = objc_allocWithZone(MEMORY[0x277D11580]);
    v43 = sub_22838EFB0();
    v44 = [v42 initWithStartTimeComponent:v43 daysOfWeek:0 cycleIndex:v38 cycleIntervalDays:v39 dose:v41];

    v45 = v44;
    MEMORY[0x22AAB5D20]();
    v46 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v47 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18);
    v86 = v26;
    if (v46 >= v47 >> 1)
    {
      sub_2283921E0();
    }

    v76 = v45;
    sub_228392230();
    v27 = v89;
    v48 = v80;
    sub_228336908(v40, v80, type metadata accessor for Dosage);
    v49 = v79;
    v50 = *(v79 + 56);
    v51 = 1;
    v50(v48, 0, 1, v10);
    v52 = *(v78 + 16);
    v53 = v81;
    v54 = v82;
    if (v52)
    {
      sub_228336908(v78 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * (v52 - 1), v82, type metadata accessor for Dosage);
      v51 = 0;
    }

    v50(v54, v51, 1, v10);
    v55 = *(v77 + 48);
    sub_228336908(v48, v53, sub_2283368D4);
    sub_228336908(v54, &v53[v55], sub_2283368D4);
    v56 = *(v49 + 48);
    if (v56(v53, 1, v10) == 1)
    {
      sub_228335E3C(v54, sub_2283368D4);
      sub_228335E3C(v48, sub_2283368D4);
      if (v56(&v53[v55], 1, v10) == 1)
      {
        sub_228335E3C(v53, sub_2283368D4);
LABEL_12:
        v57 = v75 - 1;
        if (v75 != 1)
        {
          if (__OFSUB__(v75, 1))
          {
            __break(1u);
          }

          else
          {
            v58 = sub_228392C40();
            v59 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            v60 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            v61 = objc_allocWithZone(MEMORY[0x277D11580]);
            v62 = sub_22838EFB0();
            v63 = [v61 initWithStartTimeComponent:v62 daysOfWeek:0 cycleIndex:v58 cycleIntervalDays:v59 dose:v60];

            v10 = v63;
            MEMORY[0x22AAB5D20]();
            v53 = v76;
            if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
LABEL_15:
              sub_228392230();

              (*(v83 + 8))(v86, v84);
              v27 = v89;
              goto LABEL_28;
            }
          }

          sub_2283921E0();
          goto LABEL_15;
        }

LABEL_27:
        (*(v83 + 8))(v86, v84);

        goto LABEL_28;
      }

      v65 = sub_228336870;
    }

    else
    {
      v64 = v73;
      sub_228336908(v53, v73, sub_2283368D4);
      if (v56(&v53[v55], 1, v10) == 1)
      {
        sub_228335E3C(v82, sub_2283368D4);
        sub_228335E3C(v48, sub_2283368D4);
        v65 = sub_228336870;
      }

      else
      {
        v66 = v72[0];
        sub_228336ACC(&v53[v55], v72[0], type metadata accessor for Dosage);
        if (sub_22838F470())
        {
          v67 = v64;
          v68 = sub_22838F3D0();
          sub_228335E3C(v82, sub_2283368D4);
          sub_228335E3C(v48, sub_2283368D4);
          if (v68)
          {
            v69 = v10[6];
            v70 = *(v67 + v69);
            v71 = *(v66 + v69);
            v10 = type metadata accessor for Dosage;
            sub_228335E3C(v66, type metadata accessor for Dosage);
            sub_228335E3C(v67, type metadata accessor for Dosage);
            sub_228335E3C(v53, sub_2283368D4);
            if (v70 != v71)
            {
              goto LABEL_27;
            }

            goto LABEL_12;
          }

          sub_228335E3C(v66, type metadata accessor for Dosage);
          v65 = sub_2283368D4;
          v64 = v67;
        }

        else
        {
          sub_228335E3C(v66, type metadata accessor for Dosage);
          v65 = sub_2283368D4;
          sub_228335E3C(v82, sub_2283368D4);
          sub_228335E3C(v48, sub_2283368D4);
        }
      }

      sub_228335E3C(v64, type metadata accessor for Dosage);
    }

    sub_228335E3C(v53, v65);
    goto LABEL_27;
  }

  v28 = v26;
  v29 = v74;
  sub_228391150();
  v30 = sub_2283911A0();
  v31 = sub_2283925C0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v87 = v33;
    *v32 = 136315138;
    v34 = sub_228393600();
    v36 = sub_2281C96FC(v34, v35, &v87);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_22816B000, v30, v31, "%s encountered HKMedicationScheduleIntervalData with nil frequencyInterval.", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x22AAB7B80](v33, -1, -1);
    MEMORY[0x22AAB7B80](v32, -1, -1);
  }

  (*(v75 + 8))(v29, v76);
  (*(v83 + 8))(v28, v84);
LABEL_28:
  *v85 = v27;
}

uint64_t sub_22832F580@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v17 = a2;
  v3 = sub_22838F700();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22838F080();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F690();
  v11 = type metadata accessor for Dosage(0);
  sub_22838F5B0();
  (*(v4 + 8))(v6, v3);
  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v13 = objc_allocWithZone(MEMORY[0x277D11580]);
  v14 = sub_22838EFB0();
  v15 = [v13 initWithStartTimeComponent:v14 daysOfWeek:0 cycleIndex:0 cycleIntervalDays:0 dose:v12];

  result = (*(v8 + 8))(v10, v7);
  *v17 = v15;
  return result;
}

void *sub_22832F79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, void *a4@<X8>)
{
  v30 = a4;
  v27 = a2;
  v26 = a3;
  v31 = ~a3;
  v5 = sub_22838F700();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22838F080();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v25[-v14];
  sub_22838F690();
  v28 = type metadata accessor for Dosage(0);
  v29 = a1;
  sub_22838F5B0();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 16))(v13, v15, v9);
  sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
  result = sub_228392C40();
  v17 = result;
  if (!v31)
  {
    v18 = 0;
    goto LABEL_6;
  }

  if (v26)
  {
    v18 = v27;
LABEL_6:
    v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v21 = objc_allocWithZone(MEMORY[0x277D11580]);
    v22 = sub_22838EFB0();
    v23 = [v21 initWithStartTimeComponent:v22 daysOfWeek:0 cycleIndex:v17 cycleIntervalDays:v19 dose:v20];

    v24 = *(v10 + 8);
    v24(v13, v9);
    result = (v24)(v15, v9);
    *v30 = v23;
    return result;
  }

  v18 = 7 * v27;
  if ((v27 * 7) >> 64 == (7 * v27) >> 63)
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_22832FAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v24 = a4;
  v22 = a3;
  v23 = a2;
  v5 = sub_22838F700();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22838F080();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F690();
  v13 = type metadata accessor for Dosage(0);
  sub_22838F5B0();
  (*(v6 + 8))(v8, v5);
  v14 = sub_2283924E0();
  v15 = *(a1 + *(v13 + 24));
  v16 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v17 = [v16 initWithDouble_];
  v18 = objc_allocWithZone(MEMORY[0x277D11580]);
  v19 = sub_22838EFB0();
  v20 = [v18 initWithStartTimeComponent:v19 daysOfWeek:0 cycleIndex:v23 cycleIntervalDays:v14 dose:v17];

  result = (*(v10 + 8))(v12, v9);
  *v24 = v20;
  return result;
}

BOOL sub_22832FCE0(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v2 = sub_22838F6C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_228391060();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v20 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  type metadata accessor for WeekdaysAndDosages(0);
  sub_22838F680();
  v12 = sub_228391030();
  v13 = *(v3 + 8);
  v22 = v2;
  v13(v5, v2);
  if (*(v12 + 16))
  {
    (*(v7 + 16))(v11, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

    v14 = sub_228391050();
    (*(v7 + 8))(v11, v6);
  }

  else
  {

    v14 = 0;
  }

  sub_22838F680();
  v15 = sub_228391030();
  v13(v5, v22);
  if (*(v15 + 16))
  {
    v16 = v20;
    (*(v7 + 16))(v20, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

    v17 = sub_228391050();
    (*(v7 + 8))(v16, v6);
  }

  else
  {

    v17 = 0;
  }

  return v14 < v17;
}

uint64_t sub_22832FFAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = type metadata accessor for WeekdaysAndDosages(0);
  v22 = *(v3 - 8);
  v4 = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));

  v6 = sub_228264B78(v5);

  v7 = 1;
  while (1)
  {
    if (v1 == v7)
    {

      return 1;
    }

    v8 = *(v4 + *(v22 + 72) * v7 + *(v3 + 24));
    v9 = *(v8 + 16);
    if (!v9)
    {
      goto LABEL_16;
    }

    v10 = v6[2];
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v13 = v6, v11 > v6[3] >> 1))
    {
      if (v10 <= v11)
      {
        v14 = v10 + v9;
      }

      else
      {
        v14 = v10;
      }

      v13 = sub_2281984E8(isUniquelyReferenced_nonNull_native, v14, 1, v6);
    }

    if (!*(v8 + 16))
    {
      goto LABEL_22;
    }

    v15 = (v13[3] >> 1) - v13[2];
    type metadata accessor for Dosage(0);
    if (v15 < v9)
    {
      goto LABEL_20;
    }

    swift_arrayInitWithCopy();

    v16 = v13[2];
    v17 = __OFADD__(v16, v9);
    v18 = v16 + v9;
    if (v17)
    {
      goto LABEL_21;
    }

    v13[2] = v18;
    v19 = sub_228264B78(v13);

    v20 = v19[2];

    ++v7;
    if (v20 != v6[2])
    {
LABEL_16:

      return 0;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_2283301DC(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_228393410();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = sub_228392220();
        *(v12 + 16) = v11;
      }

      v13 = *(a2(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_22833032C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Dosage(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v35 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  result = MEMORY[0x28223BE20](v12);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    sub_22838F440();
    v19 = *(v9 + 72);
    v20 = v18 + v19 * (a3 - 1);
    v33 = -v19;
    v34 = v18;
    v21 = a1 - a3;
    v27 = v19;
    v22 = v18 + v19 * a3;
LABEL_5:
    v31 = v20;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_228336908(v22, v17, type metadata accessor for Dosage);
      sub_228336908(v20, v14, type metadata accessor for Dosage);
      sub_228335C58(&qword_280DDCDB8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v23 = sub_228391FA0();
      sub_228335E3C(v14, type metadata accessor for Dosage);
      result = sub_228335E3C(v17, type metadata accessor for Dosage);
      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v20 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v24 = v35;
      sub_228336ACC(v22, v35, type metadata accessor for Dosage);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_228336ACC(v24, v20, type metadata accessor for Dosage);
      v20 += v33;
      v22 += v33;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2283305DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v69 = sub_22838F6C0();
  v8 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_228391060();
  v12 = *(v11 - 8);
  v64 = v11;
  v65 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v57 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v56 = &v48 - v15;
  v16 = type metadata accessor for WeekdaysAndDosages(0);
  v17 = MEMORY[0x28223BE20](v16);
  v60 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v48 - v20;
  result = MEMORY[0x28223BE20](v19);
  v25 = &v48 - v24;
  v50 = a2;
  if (a3 != a2)
  {
    v26 = *a4;
    v27 = *(v23 + 72);
    v68 = (v8 + 8);
    v62 = v65 + 8;
    v63 = v65 + 16;
    v28 = v26 + v27 * (a3 - 1);
    v58 = -v27;
    v59 = v26;
    v29 = a1 - a3;
    v49 = v27;
    v30 = v26 + v27 * a3;
    v55 = v21;
    v61 = &v48 - v24;
LABEL_5:
    v53 = v28;
    v54 = a3;
    v51 = v30;
    v52 = v29;
    v31 = v29;
    while (1)
    {
      v67 = v31;
      sub_228336908(v30, v25, type metadata accessor for WeekdaysAndDosages);
      sub_228336908(v28, v21, type metadata accessor for WeekdaysAndDosages);
      sub_22838F680();
      v32 = sub_228391030();
      v33 = *v68;
      (*v68)(v10, v69);
      if (*(v32 + 16))
      {
        v35 = v64;
        v34 = v65;
        v36 = v16;
        v37 = v10;
        v38 = v56;
        (*(v65 + 16))(v56, v32 + ((*(v34 + 80) + 32) & ~*(v34 + 80)), v64);

        v66 = sub_228391050();
        v39 = v38;
        v10 = v37;
        v16 = v36;
        v21 = v55;
        (*(v34 + 8))(v39, v35);
      }

      else
      {

        v66 = 0;
      }

      sub_22838F680();
      v40 = sub_228391030();
      v33(v10, v69);
      if (*(v40 + 16))
      {
        v41 = v64;
        v42 = v65;
        v43 = v57;
        (*(v65 + 16))(v57, v40 + ((*(v42 + 80) + 32) & ~*(v42 + 80)), v64);

        v44 = sub_228391050();
        (*(v42 + 8))(v43, v41);
      }

      else
      {

        v44 = 0;
      }

      v45 = v67;
      sub_228335E3C(v21, type metadata accessor for WeekdaysAndDosages);
      v25 = v61;
      result = sub_228335E3C(v61, type metadata accessor for WeekdaysAndDosages);
      if (v66 >= v44)
      {
LABEL_4:
        a3 = v54 + 1;
        v28 = v53 + v49;
        v29 = v52 - 1;
        v30 = v51 + v49;
        if (v54 + 1 == v50)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v59)
      {
        break;
      }

      v46 = v60;
      sub_228336ACC(v30, v60, type metadata accessor for WeekdaysAndDosages);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_228336ACC(v46, v28, type metadata accessor for WeekdaysAndDosages);
      v28 += v58;
      v30 += v58;
      v47 = __CFADD__(v45, 1);
      v31 = v45 + 1;
      if (v47)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_228330AEC(uint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v109 = a1;
  v8 = type metadata accessor for Dosage(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v112 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v120 = &v104 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v122 = &v104 - v15;
  result = MEMORY[0x28223BE20](v14);
  v121 = &v104 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_97:
    v31 = *v109;
    if (!*v109)
    {
      goto LABEL_136;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = sub_2283406C0(a4);
    }

    v124 = result;
    v99 = *(result + 16);
    if (v99 >= 2)
    {
      while (*a3)
      {
        a4 = v99 - 1;
        v100 = *(result + 16 * v99);
        v101 = result;
        v102 = *(result + 16 * (v99 - 1) + 40);
        sub_228332428(*a3 + *(v9 + 72) * v100, *a3 + *(v9 + 72) * *(result + 16 * (v99 - 1) + 32), *a3 + *(v9 + 72) * v102, v31);
        if (v5)
        {
        }

        if (v102 < v100)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_2283406C0(v101);
        }

        if (v99 - 2 >= *(v101 + 2))
        {
          goto LABEL_124;
        }

        v103 = &v101[16 * v99];
        *v103 = v100;
        *(v103 + 1) = v102;
        v124 = v101;
        sub_228340634(a4);
        result = v124;
        v99 = *(v124 + 16);
        if (v99 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v108 = a4;
  v123 = v8;
  v110 = a3;
  v105 = v9;
  while (1)
  {
    v113 = v20;
    if (v19 + 1 >= v18)
    {
      v31 = v19 + 1;
    }

    else
    {
      v118 = v18;
      v107 = v5;
      v21 = *a3;
      v22 = *(v9 + 72);
      v23 = v21 + v22 * (v19 + 1);
      v24 = v121;
      sub_228336908(v23, v121, type metadata accessor for Dosage);
      v25 = v122;
      sub_228336908(v21 + v22 * v19, v122, type metadata accessor for Dosage);
      sub_22838F440();
      v117 = sub_228335C58(&qword_280DDCDB8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      LODWORD(v119) = sub_228391FA0();
      sub_228335E3C(v25, type metadata accessor for Dosage);
      result = sub_228335E3C(v24, type metadata accessor for Dosage);
      v106 = v19;
      v26 = v19 + 2;
      v27 = v21 + v22 * (v19 + 2);
      while (v118 != v26)
      {
        v28 = v121;
        sub_228336908(v27, v121, type metadata accessor for Dosage);
        v29 = v122;
        sub_228336908(v23, v122, type metadata accessor for Dosage);
        v30 = sub_228391FA0() & 1;
        sub_228335E3C(v29, type metadata accessor for Dosage);
        result = sub_228335E3C(v28, type metadata accessor for Dosage);
        ++v26;
        v27 += v22;
        v23 += v22;
        if ((v119 & 1) != v30)
        {
          v31 = v26 - 1;
          goto LABEL_11;
        }
      }

      v31 = v118;
LABEL_11:
      v5 = v107;
      a4 = v108;
      v9 = v105;
      v19 = v106;
      a3 = v110;
      if (v119)
      {
        if (v31 < v106)
        {
          goto LABEL_127;
        }

        if (v106 < v31)
        {
          v32 = v22 * (v31 - 1);
          v33 = v31;
          v34 = v31 * v22;
          v118 = v33;
          v35 = v106;
          v36 = v106 * v22;
          do
          {
            if (v35 != --v33)
            {
              v37 = *a3;
              if (!v37)
              {
                goto LABEL_133;
              }

              sub_228336ACC(v37 + v36, v112, type metadata accessor for Dosage);
              if (v36 < v32 || v37 + v36 >= (v37 + v34))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_228336ACC(v112, v37 + v32, type metadata accessor for Dosage);
              a3 = v110;
            }

            ++v35;
            v32 -= v22;
            v34 -= v22;
            v36 += v22;
          }

          while (v35 < v33);
          v5 = v107;
          a4 = v108;
          v9 = v105;
          v19 = v106;
          v31 = v118;
        }
      }
    }

    v38 = a3[1];
    if (v31 < v38)
    {
      if (__OFSUB__(v31, v19))
      {
        goto LABEL_126;
      }

      if (v31 - v19 < a4)
      {
        if (__OFADD__(v19, a4))
        {
          goto LABEL_128;
        }

        if ((v19 + a4) >= v38)
        {
          v39 = a3[1];
        }

        else
        {
          v39 = v19 + a4;
        }

        if (v39 < v19)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v31 != v39)
        {
          break;
        }
      }
    }

    v40 = v31;
    if (v31 < v19)
    {
      goto LABEL_125;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v20 = v113;
    }

    else
    {
      result = sub_228198978(0, *(v113 + 2) + 1, 1, v113);
      v20 = result;
    }

    a4 = *(v20 + 2);
    v41 = *(v20 + 3);
    v42 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      result = sub_228198978((v41 > 1), a4 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v42;
    v43 = &v20[16 * a4];
    *(v43 + 4) = v19;
    *(v43 + 5) = v40;
    v31 = *v109;
    if (!*v109)
    {
      goto LABEL_135;
    }

    v114 = v40;
    if (a4)
    {
      while (1)
      {
        v44 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v45 = *(v20 + 4);
          v46 = *(v20 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_55:
          if (v48)
          {
            goto LABEL_114;
          }

          v61 = &v20[16 * v42];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_117;
          }

          v67 = &v20[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_121;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v42 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v71 = &v20[16 * v42];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_69:
        if (v66)
        {
          goto LABEL_116;
        }

        v74 = &v20[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_119;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_76:
        a4 = v44 - 1;
        if (v44 - 1 >= v42)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v82 = v20;
        v83 = *&v20[16 * a4 + 32];
        v84 = *&v20[16 * v44 + 40];
        sub_228332428(*a3 + *(v9 + 72) * v83, *a3 + *(v9 + 72) * *&v20[16 * v44 + 32], *a3 + *(v9 + 72) * v84, v31);
        if (v5)
        {
        }

        if (v84 < v83)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_2283406C0(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_111;
        }

        v85 = &v82[16 * a4];
        *(v85 + 4) = v83;
        *(v85 + 5) = v84;
        v124 = v82;
        result = sub_228340634(v44);
        v20 = v124;
        v42 = *(v124 + 16);
        if (v42 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v20[16 * v42 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_112;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_113;
      }

      v56 = &v20[16 * v42];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_115;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_118;
      }

      if (v60 >= v52)
      {
        v78 = &v20[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_122;
        }

        if (v47 < v81)
        {
          v44 = v42 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v114;
    a4 = v108;
    if (v114 >= v18)
    {
      goto LABEL_97;
    }
  }

  v107 = v5;
  v86 = *a3;
  sub_22838F440();
  v87 = *(v9 + 72);
  v88 = v86 + v87 * (v31 - 1);
  v89 = -v87;
  v106 = v19;
  v90 = v19 - v31;
  v119 = v86;
  v111 = v87;
  v91 = v86 + v31 * v87;
  v114 = v39;
LABEL_87:
  v117 = v88;
  v118 = v31;
  v115 = v91;
  v116 = v90;
  v92 = v91;
  v93 = v90;
  v94 = v88;
  while (1)
  {
    v95 = v121;
    sub_228336908(v92, v121, type metadata accessor for Dosage);
    v96 = v122;
    sub_228336908(v94, v122, type metadata accessor for Dosage);
    sub_228335C58(&qword_280DDCDB8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    a4 = sub_228391FA0();
    sub_228335E3C(v96, type metadata accessor for Dosage);
    result = sub_228335E3C(v95, type metadata accessor for Dosage);
    if ((a4 & 1) == 0)
    {
LABEL_86:
      v31 = v118 + 1;
      v88 = v117 + v111;
      v90 = v116 - 1;
      v91 = v115 + v111;
      v40 = v114;
      if (v118 + 1 != v114)
      {
        goto LABEL_87;
      }

      v19 = v106;
      v5 = v107;
      a3 = v110;
      v9 = v105;
      if (v114 < v106)
      {
        goto LABEL_125;
      }

      goto LABEL_36;
    }

    if (!v119)
    {
      break;
    }

    a4 = type metadata accessor for Dosage;
    v97 = v120;
    sub_228336ACC(v92, v120, type metadata accessor for Dosage);
    swift_arrayInitWithTakeFrontToBack();
    sub_228336ACC(v97, v94, type metadata accessor for Dosage);
    v94 += v89;
    v92 += v89;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_86;
    }
  }

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
  return result;
}