id sub_2281BDA28()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v6 = sub_228392000();
  v7 = v1;
  v2 = v0;

  MEMORY[0x22AAB5C80](0xD000000000000014, 0x80000002283A9550);

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

uint64_t sub_2281BDBBC()
{
  v1 = v0;
  v122 = sub_2283911B0();
  v2 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v4 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281BEFD8(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  MEMORY[0x28223BE20](v5 - 8);
  v120 = &v114 - v6;
  v7 = sub_2283913A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v121 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281BEFD8(0, &qword_27D824660, type metadata accessor for MedicationEducationAndComponentsItem);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v114 - v11;
  v13 = type metadata accessor for MedicationEducationAndComponentsItem(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v17], v124);
  if (v124[3])
  {
    sub_22817A700();
    v18 = swift_dynamicCast();
    (*(v14 + 56))(v12, v18 ^ 1u, 1, v13);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_2281BF088(v12, v16);
      v19 = v16[40];
      v118 = v8;
      v119 = v7;
      v117 = v16;
      if (v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = [objc_opt_self() supportsOntologyBackedMedications];
      }

      sub_2281BF0EC(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_228397F10;
      v31 = sub_2281BD608();
      v32 = [v31 topAnchor];

      v33 = [v1 contentView];
      v34 = [v33 topAnchor];

      sub_22838F7D0();
      v35 = [v32 constraintEqualToAnchor:v34 constant:?];

      *(v30 + 32) = v35;
      v36 = OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___primaryLabel;
      v37 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___primaryLabel] leadingAnchor];
      v38 = [v1 &selRef_didTapDay_];
      v39 = [v38 &selRef_logTimeChanged_ + 1];

      sub_22838F7D0();
      v40 = [v37 constraintEqualToAnchor:v39 constant:?];

      *(v30 + 40) = v40;
      v41 = [*&v1[v36] trailingAnchor];
      v42 = [v1 &selRef_didTapDay_];
      v43 = v42;
      v44 = &selRef_centerXAnchor;
      LODWORD(v122) = v20;
      if (v20)
      {
        v44 = &selRef_trailingAnchor;
      }

      v45 = [v42 *v44];

      sub_22838F7D0();
      v47 = [v41 constraintEqualToAnchor:v45 constant:-v46];

      *(v30 + 48) = v47;
      v48 = [*&v1[v36] bottomAnchor];
      v49 = [v1 &selRef_didTapDay_];
      v50 = [v49 bottomAnchor];

      sub_22838F7D0();
      v52 = [v48 constraintLessThanOrEqualToAnchor:v50 constant:-v51];

      *(v30 + 56) = v52;
      v53 = sub_2281BD7BC();
      v54 = [v53 topAnchor];

      v55 = [*&v1[v36] bottomAnchor];
      v56 = [v54 constraintEqualToAnchor:v55 constant:2.0];

      *(v30 + 64) = v56;
      v57 = OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___componentsLabel;
      v58 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___componentsLabel];
      v114 = OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___componentsLabel;
      v59 = [v58 leadingAnchor];
      v60 = *&v1[v36];
      v115 = v36;
      v61 = [v60 leadingAnchor];
      v62 = [v59 constraintEqualToAnchor_];

      *(v30 + 72) = v62;
      v63 = [*&v1[v57] trailingAnchor];
      v64 = [*&v1[v36] trailingAnchor];
      v65 = [v63 constraintEqualToAnchor_];

      *(v30 + 80) = v65;
      v66 = sub_2281BD9A8();
      v67 = [v66 leadingAnchor];

      v68 = [v1 contentView];
      v69 = [v68 centerXAnchor];

      sub_22838F7D0();
      v70 = [v67 constraintEqualToAnchor:v69 constant:?];

      *(v30 + 88) = v70;
      v71 = OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___educationLabel;
      v72 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___educationLabel] trailingAnchor];
      v73 = [v1 contentView];
      v74 = [v73 trailingAnchor];

      sub_22838F7D0();
      v76 = v114;
      v77 = [v72 constraintEqualToAnchor:v74 constant:-v75];

      *(v30 + 96) = v77;
      v78 = [*&v1[v71] topAnchor];
      v79 = v115;
      v80 = [*&v1[v115] topAnchor];
      v81 = v79;
      v82 = [v78 constraintEqualToAnchor_];

      *(v30 + 104) = v82;
      v83 = [*&v1[v71] bottomAnchor];
      v84 = [v1 contentView];
      v85 = [v84 bottomAnchor];

      sub_22838F7D0();
      v87 = [v83 constraintEqualToAnchor:v85 constant:-v86];

      v116 = v30;
      *(v30 + 112) = v87;
      v88 = [v1 contentView];
      [v88 addSubview_];

      v89 = [v1 &selRef_didTapDay_];
      [v89 addSubview_];

      v90 = [v1 &selRef_didTapDay_];
      [v90 addSubview_];

      v91 = v121;
      sub_228391390();
      if (v122)
      {
        v92 = qword_280DDCF18;
        v93 = *&v1[v79];
        v94 = v117;
        if (v92 != -1)
        {
          swift_once();
        }

        sub_22838F0C0();
        v95 = sub_228391FC0();

        [v93 setText_];

        v96 = *&v1[v81];
        v97 = objc_opt_self();
        v98 = v96;
        v99 = [v97 secondaryLabelColor];
        [v98 setTextColor_];

        v100 = [v97 tertiarySystemFillColor];
        sub_228391370();
        v102 = v118;
        v101 = v119;
      }

      else
      {
        v103 = [objc_opt_self() tertiarySystemBackgroundColor];
        sub_228391370();
        v94 = v117;
        v104 = *&v1[v81];
        v105 = sub_228391FC0();
        [v104 setText_];

        v106 = *&v1[v76];
        v124[0] = *(v94 + 32);
        sub_2281BF0EC(0, &qword_27D827E10, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
        sub_2281BF13C();

        v107 = v106;
        sub_228391F90();

        v108 = sub_228391FC0();

        [v107 setText_];

        v109 = *(v94 + 8);
        v110 = *&v1[v71];
        if (v109)
        {
          v109 = sub_228391FC0();
        }

        v102 = v118;
        v101 = v119;
        [v110 setText_];

        v91 = v121;
      }

      v111 = v120;
      (*(v102 + 16))(v120, v91, v101);
      (*(v102 + 56))(v111, 0, 1, v101);
      MEMORY[0x22AAB6420](v111);
      v112 = objc_opt_self();
      sub_2281BF1B8();
      v113 = sub_228392190();

      [v112 activateConstraints_];

      (*(v102 + 8))(v91, v101);
      return sub_2281BF204(v94);
    }
  }

  else
  {
    sub_2281BF02C(v124, &qword_280DDCD50, sub_22817A700);
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  sub_2281BF02C(v12, &qword_27D824660, type metadata accessor for MedicationEducationAndComponentsItem);
  sub_228391150();
  v21 = v1;
  v22 = sub_2283911A0();
  v23 = sub_2283925C0();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v123 = v25;
    *v24 = 136446210;
    sub_22817E6C8(&v1[v17], v124);
    sub_2281BEFD8(0, &qword_280DDCD50, sub_22817A700);
    v26 = sub_228392040();
    v28 = sub_2281C96FC(v26, v27, &v123);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_22816B000, v22, v23, "Incorrect view model for MedicationEducationAndComponentsItemCell: %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x22AAB7B80](v25, -1, -1);
    MEMORY[0x22AAB7B80](v24, -1, -1);
  }

  return (*(v2 + 8))(v4, v122);
}

id MedicationEducationAndComponentsItemCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MedicationEducationAndComponentsItemCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___primaryLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___componentsLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___educationLabel] = 0;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for MedicationEducationAndComponentsItemCell();
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id MedicationEducationAndComponentsItemCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MedicationEducationAndComponentsItemCell.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___primaryLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___componentsLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI40MedicationEducationAndComponentsItemCell____lazy_storage___educationLabel] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for MedicationEducationAndComponentsItemCell();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id MedicationEducationAndComponentsItemCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationEducationAndComponentsItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2281BEE30(uint64_t a1)
{
  v1 = MEMORY[0x277D837D0];
  sub_2281BF0EC(319, &qword_27D825070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v2 <= 0x3F)
  {
    sub_2281BF0EC(319, &qword_27D827E10, v1, MEMORY[0x277D83940]);
    if (v3 <= 0x3F)
    {
      sub_22838F4A0();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2281BEFD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_2281BF02C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2281BEFD8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2281BF088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationEducationAndComponentsItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2281BF0EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2281BF13C()
{
  result = qword_27D825080;
  if (!qword_27D825080)
  {
    sub_2281BF0EC(255, &qword_27D827E10, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825080);
  }

  return result;
}

unint64_t sub_2281BF1B8()
{
  result = qword_280DDBA90;
  if (!qword_280DDBA90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DDBA90);
  }

  return result;
}

uint64_t sub_2281BF204(uint64_t a1)
{
  v2 = type metadata accessor for MedicationEducationAndComponentsItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

UIImage __swiftcall MedicationVisualizationConfig.makeAccessoryImage(size:circular:)(CGSize size, Swift::Bool circular)
{
  v3 = circular;
  height = size.height;
  width = size.width;
  sub_2281A99B0(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_228390D50();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, v2, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = sub_2281BF3D4(v3, v8, width, height);
  sub_2281A9A08(v8);
  return v11;
}

void sub_2281BF388(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_2281BF3D4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  sub_2281A99B0(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(sub_228390970()) initWithFrame_];
  sub_228390960();
  sub_2281BF64C(a2, v9);
  sub_228390950();
  sub_2281BF6B0();
  v11 = [swift_getObjCClassFromMetadata() defaultFormat];
  [v11 setOpaque_];
  v12 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v11 format:{a3, a4}];
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_2281BF6FC;
  *(v14 + 24) = v13;
  aBlock[4] = sub_2281BF75C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2281BF388;
  aBlock[3] = &block_descriptor_5;
  v15 = _Block_copy(aBlock);
  v16 = v10;

  v17 = [v12 imageWithActions_];

  _Block_release(v15);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if ((v11 & 1) == 0)
  {
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_2281BF64C(uint64_t a1, uint64_t a2)
{
  sub_2281A99B0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2281BF6B0()
{
  result = qword_27D824670;
  if (!qword_27D824670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D824670);
  }

  return result;
}

id sub_2281BF6FC()
{
  v1 = *(v0 + 16);
  [v1 layoutIfNeeded];
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id PregnancyLactationEducationViewController.init(listManager:educationType:)(uint64_t a1, unsigned __int8 *a2)
{
  v36 = sub_22838F4A0();
  v4 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a2;
  v34 = a1;
  v8 = sub_228390660();
  v9 = sub_2281BFDC0(v8, 0x277D115B8);

  if (!v9)
  {
    v9 = MEMORY[0x277D84F90];
  }

  v41 = v7;
  v40 = 0;
  v10 = sub_2281F48D0(v9, &v41, &v40);
  v33 = v7;
  v39 = v7;
  v38 = 1;
  v11 = sub_2281F48D0(v9, &v39, &v38);

  v12 = *(v10 + 16);
  v32 = v11;
  if (v12)
  {
    v13 = *(v11 + 16) != 0;
  }

  else
  {
    v13 = 0;
  }

  HIDWORD(v27) = v13;
  sub_228182110(0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_228397F30;
  type metadata accessor for PregnancyLactationEducationDataSource(0);
  v14 = swift_allocObject();
  *(v14 + qword_27D824F70) = 0;
  *(v14 + qword_27D824F78) = v13;
  sub_22819F3B0(0);
  v31 = v15;
  v30 = *(*(sub_22838FEF0() - 8) + 72);
  v16 = swift_allocObject();
  v29 = xmmword_228397F40;
  *(v16 + 16) = xmmword_228397F40;
  sub_228194894(v10);

  sub_22838F490();
  sub_22838F450();
  v28 = *(v4 + 8);
  v28(v6, v36);
  sub_22838FED0();
  v17 = sub_22838F920();
  v18 = sub_2281C07E0();
  v19 = v35;
  *(v35 + 32) = v17;
  *(v19 + 40) = v18;
  v20 = swift_allocObject();
  *(v20 + qword_27D824F70) = 1;
  *(v20 + qword_27D824F78) = BYTE4(v27);
  *(swift_allocObject() + 16) = v29;
  sub_228194894(v32);

  sub_22838F490();
  sub_22838F450();
  v28(v6, v36);
  sub_22838FED0();
  v21 = sub_22838F920();
  v22 = v35;
  *(v35 + 48) = v21;
  *(v22 + 56) = v18;
  sub_2283901F0();
  swift_allocObject();
  sub_228390210();

  v23 = sub_228390480();
  v37 = v33;
  v24 = v23;
  MedicationSecondaryEducationType.title.getter();
  v25 = sub_228391FC0();

  [v24 setTitle_];

  return v24;
}

uint64_t sub_2281BFC38(unint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_15:
    sub_2283930D0();
    sub_228393240();
    v2 = sub_2283930D0();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_228393240();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x22AAB6D80](v3, a1);
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        type metadata accessor for MedicationChartUserInfo(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_228393210();
        sub_228393250();
        sub_228393260();
        sub_228393220();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return v6;
}

uint64_t sub_2281BFDC0(unint64_t a1, void *a2)
{
  v9 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_228393240();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x22AAB6D80](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_228393210();
      sub_228393250();
      sub_228393260();
      sub_228393220();
      if (v7 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_2283930D0();
    sub_228393240();
  }

  return v9;
}

id PregnancyLactationEducationViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_2281C0024(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for PregnancyLactationEducationViewController(0);
  return objc_msgSendSuper2(&v2, sel_viewDidLoad);
}

void sub_2281C0068(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_228391310();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22838FB90();
  MEMORY[0x28223BE20](v6);
  (*(v8 + 104))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D10E68]);
  v9 = a1;
  sub_2283926F0();
  sub_228391300();
  sub_228392700();
  v10 = type metadata accessor for PregnancyLactationEducationViewController(0);
  v11.receiver = v9;
  v11.super_class = v10;
  objc_msgSendSuper2(&v11, sel_viewIsAppearing_, a3);
}

uint64_t sub_2281C01E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D10E68];
  v3 = sub_22838FB90();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2281C0258(void *a1, uint64_t a2, void *a3, uint64_t a4)
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

id PregnancyLactationEducationViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id sub_2281C0434(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PregnancyLactationEducationViewController(0);
  return objc_msgSendSuper2(&v4, *a1);
}

Swift::Void __swiftcall PregnancyLactationEducationViewController.viewControllerWillEnterAdaptiveModal()()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  sub_22817A958(0, &qword_27D824138, 0x277D751E0);
  sub_22817A958(0, &qword_27D827890, 0x277D750C8);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228392C90();
  v4 = sub_228392640();
  [v2 setRightBarButtonItem_];

  v5 = [v1 navigationController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 navigationBar];

    [v7 setPrefersLargeTitles_];
  }

  v8 = [v1 navigationController];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 navigationBar];

    sub_2283928D0();
    [v10 setDirectionalLayoutMargins_];
  }
}

void sub_2281C066C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_2281C06D0(void *a1)
{
  v1 = a1;
  PregnancyLactationEducationViewController.viewControllerWillEnterAdaptiveModal()();
}

Swift::Void __swiftcall PregnancyLactationEducationViewController.viewControllerDidLeaveAdaptiveModal()()
{
  v1 = [v0 navigationItem];
  [v1 setRightBarButtonItem_];
}

void sub_2281C0774(void *a1)
{
  v2 = a1;
  v1 = [v2 navigationItem];
  [v1 setRightBarButtonItem_];
}

unint64_t sub_2281C07E0()
{
  result = qword_27D824678;
  if (!qword_27D824678)
  {
    type metadata accessor for PregnancyLactationEducationDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824678);
  }

  return result;
}

uint64_t type metadata accessor for PregnancyLactationEducationViewController(uint64_t a1)
{
  result = qword_27D824680;
  if (!qword_27D824680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2281C0968(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 24))();
  if (!v5)
  {
    return (*(a2 + 16))(a1, a2);
  }

  v8 = v4;
  MEMORY[0x22AAB5C80](10272, 0xE200000000000000);
  v6 = (*(a2 + 16))(a1, a2);
  MEMORY[0x22AAB5C80](v6);

  MEMORY[0x22AAB5C80](41, 0xE100000000000000);
  return v8;
}

uint64_t sub_2281C0A38(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = (*(a2 + 40))(a1, a2);
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      sub_2281C2E94(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_228397F30;
      v14 = MEMORY[0x277D837D0];
      *(v13 + 56) = MEMORY[0x277D837D0];
      v15 = sub_22818E210();
      *(v13 + 32) = v7;
      *(v13 + 40) = v8;
      *(v13 + 96) = v14;
      *(v13 + 104) = v15;
      *(v13 + 64) = v15;
      *(v13 + 72) = v11;
      *(v13 + 80) = v12;
      v16 = sub_22838F0C0();
      if (*(v13 + 16))
      {
        v17 = sub_228391FD0();

        return v17;
      }

      else
      {
        v20 = v16;

        return v20;
      }
    }
  }

  result = (v4)(a1, a2);
  if (!v19)
  {
    return (*(a2 + 40))(a1, a2);
  }

  return result;
}

uint64_t sub_2281C0C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    sub_2281C2EFC(0, &qword_27D827E10, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2281BF13C();

    v5 = sub_228391F90();
    v7 = v6;

    v8 = sub_2281C0A38(a2, a3);
    if (!v9)
    {
      goto LABEL_9;
    }

    if (v7)
    {
      v10 = v8;
      v11 = v9;
      sub_2281C2EFC(0, &qword_27D823EE0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_228397F30;
      *(v12 + 32) = v10;
      *(v12 + 40) = v11;
      *(v12 + 48) = v5;
      *(v12 + 56) = v7;
      v5 = sub_228391F90();

      return v5;
    }

    goto LABEL_7;
  }

  sub_2281C0A38(a2, a3);
  if (v13)
  {
    v5 = 0;
LABEL_7:

    goto LABEL_9;
  }

  v5 = 0;
LABEL_9:
  v14 = sub_2281C0A38(a2, a3);
  if (v15)
  {
    v16 = v14;

    return v16;
  }

  return v5;
}

uint64_t HKMedicationUserDomainConcept.visualizationConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 userVisualizationConfigJSONString];
  if (v3)
  {
    v4 = v3;
    sub_228392000();

    sub_228390CE0();
  }

  else
  {
    v5 = sub_228390D50();
    (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }

  type metadata accessor for DrugInteractionVisualizationConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t HKMedicationUserDomainConcept.nickname.getter()
{
  v1 = [v0 userSpecifiedName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_228392000();

  v3 = sub_2283920A0();

  return v3;
}

uint64_t sub_2281C0FD8@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 userVisualizationConfigJSONString];
  if (v3)
  {
    v4 = v3;
    sub_228392000();

    sub_228390CE0();
  }

  else
  {
    v5 = sub_228390D50();
    (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }

  type metadata accessor for DrugInteractionVisualizationConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2281C1110()
{
  v1 = [*v0 userSpecifiedName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_228392000();

  v3 = sub_2283920A0();

  return v3;
}

uint64_t HKDrugInteractionLifestyleFactor.visualizationConfig.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for DrugInteractionVisualizationConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2281C12A0@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  type metadata accessor for DrugInteractionVisualizationConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2281C12EC()
{
  v1 = *v0;
  v3 = 0;
  return HKDrugInteractionLifestyleFactor.localizedString(variant:)(&v3, v1);
}

uint64_t sub_2281C1318(uint64_t a1, uint64_t *a2)
{
  sub_2281C2920(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_viewModelFactor;
  swift_beginAccess();
  sub_2281C29B0(v6, v3 + v4);
  swift_endAccess();
  sub_2281C1E30();
  return sub_2281C2A40(v6);
}

uint64_t sub_2281C1388@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_viewModelFactor;
  swift_beginAccess();
  return sub_2281C2920(v1 + v3, a1);
}

uint64_t sub_2281C13E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_viewModelFactor;
  swift_beginAccess();
  sub_2281C29B0(a1, v1 + v3);
  swift_endAccess();
  sub_2281C1E30();
  return sub_2281C2A40(a1);
}

uint64_t (*sub_2281C144C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2281C14B0;
}

uint64_t sub_2281C14B0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_2281C1E30();
  }

  return result;
}

uint64_t sub_2281C14E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_ingredients;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_2281C1594(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_ingredients;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_2281C164C()
{
  v1 = &v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_viewModelFactor];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_ingredients] = 0;
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___drugInteractionVisualization] = 0;
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___factorNameLabel] = 0;
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___infoLabel] = 0;
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelHiddenBottomConstraint] = 0;
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelVisibleBottomConstraint] = 0;
  v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelHidden] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for InteractionDetailFactorView();
  v2 = objc_msgSendSuper2(&v4, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_2281C1CAC();
  sub_2281C21F8();

  return v2;
}

id InteractionDetailFactorView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_2281C17C0()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___drugInteractionVisualization;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___drugInteractionVisualization);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___drugInteractionVisualization);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for DrugInteractionVisualizationView(0)) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2281C1848()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___factorNameLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___factorNameLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___factorNameLabel);
  }

  else
  {
    v4 = sub_2281C18A8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2281C18A8()
{
  v0 = [objc_allocWithZone(sub_22838FC30()) initWithFrame_];
  v1 = *MEMORY[0x277D76918];
  sub_22838FC20();
  sub_22838FC10();
  v7 = sub_228392000();
  v8 = v2;
  v3 = v0;

  MEMORY[0x22AAB5C80](0xD00000000000001CLL, 0x80000002283A9870);

  MEMORY[0x22AAB5C80](0xD000000000000010, 0x80000002283A9890);

  v4 = sub_228391FC0();

  [v3 setAccessibilityIdentifier_];

  v5 = v3;
  [v5 setNumberOfLines_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];

  return v5;
}

id sub_2281C1A10()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___infoLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___infoLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___infoLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(sub_22838FC30()) initWithFrame_];
    v6 = *MEMORY[0x277D769D0];
    sub_22838FC20();
    sub_22838FC10();
    v7 = objc_opt_self();
    v8 = v5;
    v9 = [v7 secondaryLabelColor];
    [v8 setTextColor_];

    v15 = sub_228392000();
    v16 = v10;

    MEMORY[0x22AAB5C80](0xD00000000000001CLL, 0x80000002283A9870);

    MEMORY[0x22AAB5C80](0x62614C6F666E492ELL, 0xEA00000000006C65);

    v11 = sub_228391FC0();

    [v8 setAccessibilityIdentifier_];

    [v8 setNumberOfLines_];
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];

    v12 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

id sub_2281C1BF0(id result)
{
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelHidden;
  v3 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelHidden);
  *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelHidden) = result;
  if (v3 != (result & 1))
  {
    v4 = sub_2281C1A10();
    [v4 setHidden_];

    v5 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelHiddenBottomConstraint);
    if (v5)
    {
      [v5 setActive_];
    }

    result = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelVisibleBottomConstraint);
    if (result)
    {
      v6 = (*(v1 + v2) & 1) == 0;

      return [result setActive_];
    }
  }

  return result;
}

uint64_t sub_2281C1CAC()
{
  sub_2281C2EFC(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228399D40;
  *(inited + 32) = sub_2281C17C0();
  *(inited + 40) = sub_2281C1848();
  *(inited + 48) = sub_2281C1A10();
  v2 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_12;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x22AAB6D80](0, inited))
  {
    v4 = i;
    [v0 addSubview_];

    if (v2)
    {
      v5 = MEMORY[0x22AAB6D80](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_11;
      }

      v5 = *(inited + 40);
    }

    v6 = v5;
    [v0 addSubview_];

    if (v2)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v7 = *(inited + 48);
      goto LABEL_10;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    ;
  }

  v7 = MEMORY[0x22AAB6D80](2, inited);
LABEL_10:
  v8 = v7;
  [v0 addSubview_];

  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t sub_2281C1E30()
{
  v1 = v0;
  sub_2281C2D7C(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_viewModelFactor;
  swift_beginAccess();
  sub_2281C2920(v1 + v5, &v35);
  if (!v36)
  {
    return sub_2281C2A40(&v35);
  }

  sub_22819A62C(&v35, v37);
  v6 = sub_2281C17C0();
  v7 = v38;
  v8 = v39;
  __swift_project_boxed_opaque_existential_0(v37, v38);
  (*(v8 + 8))(v7, v8);
  v9 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_visualizationConfig;
  swift_beginAccess();
  sub_2281C2DD4(v4, &v6[v10]);
  swift_endAccess();
  sub_2281C5840();
  v11 = *&v6[OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_subview];
  if (v11)
  {
    [v11 hk:v6 alignConstraintsWithView:?];
  }

  sub_2281C2E38(v4);
  v12 = sub_2281C1848();
  v13 = v38;
  v14 = v39;
  __swift_project_boxed_opaque_existential_0(v37, v38);
  sub_2281C0968(v13, v14);
  v15 = sub_228391FC0();

  [v12 setText_];

  v16 = v38;
  v17 = v39;
  __swift_project_boxed_opaque_existential_0(v37, v38);
  swift_beginAccess();

  v19 = sub_2281C0C48(v18, v16, v17);
  v21 = v20;

  v22 = sub_2281C1A10();
  sub_228360898(v19, v21, 2.0);

  v23 = v38;
  v24 = v39;
  __swift_project_boxed_opaque_existential_0(v37, v38);
  sub_2281C0A38(v23, v24);
  if (v25)
  {
    v26 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___infoLabel;
    v27 = [*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___infoLabel) attributedText];
    if (v27)
    {
      v28 = v27;
      v29 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
      v30 = *MEMORY[0x277D740C0];
      v31 = [objc_opt_self() labelColor];
      v32 = sub_2283920C0();

      [v29 addAttribute:v30 value:v31 range:{0, v32}];

      [*(v1 + v26) setAttributedText_];
    }

    else
    {
    }
  }

  sub_2281C1BF0((v21 == 0));
  return __swift_destroy_boxed_opaque_existential_0(v37);
}

id sub_2281C21F8()
{
  v47 = objc_opt_self();
  sub_2281C2EFC(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228399D50;
  v2 = sub_2281C17C0();
  v3 = [v2 leadingAnchor];

  v4 = [v0 leadingAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v5;
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___drugInteractionVisualization;
  v7 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___drugInteractionVisualization] widthAnchor];
  v8 = [v7 constraintEqualToConstant_];

  *(v1 + 40) = v8;
  v9 = [*&v0[v6] heightAnchor];
  v10 = [*&v0[v6] widthAnchor];
  v11 = [v9 &selRef_freeTextMedicationName + 5];

  *(v1 + 48) = v11;
  v12 = [*&v0[v6] centerYAnchor];
  v13 = sub_2281C1848();
  v14 = [v13 centerYAnchor];

  v15 = [v12 &selRef_freeTextMedicationName + 5];
  *(v1 + 56) = v15;
  v16 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___factorNameLabel;
  v17 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___factorNameLabel] leadingAnchor];
  v18 = [*&v0[v6] trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:10.0];

  *(v1 + 64) = v19;
  v20 = [*&v0[v16] topAnchor];
  v21 = [v0 topAnchor];
  v22 = [v20 &selRef_freeTextMedicationName + 5];

  *(v1 + 72) = v22;
  v23 = [*&v0[v16] trailingAnchor];
  v24 = [v0 trailingAnchor];
  v25 = [v23 &selRef_freeTextMedicationName + 5];

  *(v1 + 80) = v25;
  v26 = sub_2281C1A10();
  v27 = [v26 leadingAnchor];

  v28 = [*&v0[v16] leadingAnchor];
  v29 = [v27 &selRef_freeTextMedicationName + 5];

  *(v1 + 88) = v29;
  v30 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___infoLabel;
  v31 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___infoLabel] trailingAnchor];
  v32 = [v0 trailingAnchor];
  v33 = [v31 &selRef_freeTextMedicationName + 5];

  *(v1 + 96) = v33;
  v34 = [*&v0[v30] topAnchor];
  v35 = [*&v0[v16] bottomAnchor];
  v36 = [v34 constraintGreaterThanOrEqualToAnchor:v35 constant:2.0];

  *(v1 + 104) = v36;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v37 = sub_228392190();

  [v47 activateConstraints_];

  v38 = [v0 bottomAnchor];
  v39 = [*&v0[v30] bottomAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  v41 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelVisibleBottomConstraint];
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelVisibleBottomConstraint] = v40;

  v42 = [v0 bottomAnchor];
  v43 = [*&v0[v16] bottomAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  v45 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelHiddenBottomConstraint];
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelHiddenBottomConstraint] = v44;

  return sub_2281C1BF0(1);
}

id InteractionDetailFactorView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id InteractionDetailFactorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionDetailFactorView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2281C2920(uint64_t a1, uint64_t a2)
{
  sub_2281C2E94(0, &qword_27D824698, &qword_27D8246A0, &protocol descriptor for InteractionDetailFactorViewModelProviding, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281C29B0(uint64_t a1, uint64_t a2)
{
  sub_2281C2E94(0, &qword_27D824698, &qword_27D8246A0, &protocol descriptor for InteractionDetailFactorViewModelProviding, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281C2A40(uint64_t a1)
{
  sub_2281C2E94(0, &qword_27D824698, &qword_27D8246A0, &protocol descriptor for InteractionDetailFactorViewModelProviding, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void _s19HealthMedicationsUI27InteractionDetailFactorViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_viewModelFactor;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_ingredients) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___drugInteractionVisualization) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___factorNameLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView____lazy_storage___infoLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelHiddenBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelVisibleBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_infoLabelHidden) = 0;
  sub_228393300();
  __break(1u);
}

void sub_2281C2D7C(uint64_t a1)
{
  if (!qword_27D8246E0)
  {
    type metadata accessor for DrugInteractionVisualizationConfig(255);
    v1 = sub_228392F00();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8246E0);
    }
  }
}

uint64_t sub_2281C2DD4(uint64_t a1, uint64_t a2)
{
  sub_2281C2D7C(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281C2E38(uint64_t a1)
{
  sub_2281C2D7C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2281C2E94(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_2281C2EFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t MedicationAvatarItem.reuseIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for MedicationAvatarItem(0) + 28));

  return v1;
}

uint64_t type metadata accessor for MedicationAvatarItem(uint64_t a1)
{
  result = qword_27D8246F8;
  if (!qword_27D8246F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MedicationAvatarItem.uniqueIdentifier.getter()
{
  type metadata accessor for MedicationAvatarItem(0);
  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return 0x7449726174617641;
}

uint64_t static MedicationAvatarItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MedicationAvatarItem(0);

  return sub_22838F470();
}

uint64_t MedicationAvatarItem.hash(into:)(uint64_t a1)
{
  type metadata accessor for MedicationAvatarItem(0);
  sub_22838F4A0();
  sub_2281C511C(&unk_27D823CA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_228391F70();
}

uint64_t MedicationAvatarItem.hashValue.getter()
{
  sub_228393520();
  type metadata accessor for MedicationAvatarItem(0);
  sub_22838F4A0();
  sub_2281C511C(&unk_27D823CA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_228391F70();
  return sub_228393570();
}

uint64_t sub_2281C31B8()
{
  sub_228393520();
  sub_22838F4A0();
  sub_2281C511C(&unk_27D823CA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_228391F70();
  return sub_228393570();
}

uint64_t sub_2281C3254(uint64_t a1)
{
  sub_22838F4A0();
  sub_2281C511C(&unk_27D823CA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_228391F70();
}

uint64_t sub_2281C32D4(uint64_t a1)
{
  sub_228393520();
  sub_22838F4A0();
  sub_2281C511C(&unk_27D823CA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_228391F70();
  return sub_228393570();
}

uint64_t sub_2281C340C(uint64_t a1)
{
  v1 = sub_22838F450();
  MEMORY[0x22AAB5C80](v1);

  return 0x7449726174617641;
}

uint64_t sub_2281C3474(uint64_t a1)
{
  v2 = sub_2281C511C(&qword_27D824728, type metadata accessor for MedicationAvatarItem, &protocol conformance descriptor for MedicationAvatarItem);

  return MEMORY[0x282169440](a1, v2);
}

void sub_2281C3518(uint64_t a1)
{
  sub_2281C50C8(319, &qword_280DDBD20, MEMORY[0x277D116C8]);
  if (v1 <= 0x3F)
  {
    sub_2281C35D8();
    if (v2 <= 0x3F)
    {
      sub_22838F4A0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2281C35D8()
{
  result = qword_280DDB820;
  if (!qword_280DDB820)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280DDB820);
  }

  return result;
}

id sub_2281C3628()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell____lazy_storage___pillImageView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell____lazy_storage___pillImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell____lazy_storage___pillImageView);
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

id sub_2281C36C0()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell____lazy_storage___editButton;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell____lazy_storage___editButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell____lazy_storage___editButton);
  }

  else
  {
    v4 = sub_2281C3724(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2281C3724(uint64_t a1)
{
  v21 = a1;
  sub_2281C50C8(0, &qword_280DDB950, MEMORY[0x277D75058]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_228392D80();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_228392CC0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_228392DE0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228392DC0();
  (*(v9 + 104))(v11, *MEMORY[0x277D74FD8], v8);
  sub_228392CD0();
  (*(v5 + 104))(v7, *MEMORY[0x277D75028], v4);
  sub_228392CB0();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228392DB0();
  v16 = [objc_opt_self() buttonWithType_];
  v17 = [v16 titleLabel];
  if (v17)
  {
    v18 = v17;
    [v17 setAdjustsFontForContentSizeCategory_];
  }

  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  (*(v13 + 16))(v3, v15, v12);
  (*(v13 + 56))(v3, 0, 1, v12);
  sub_228392E10();
  [v16 addTarget:v21 action:sel_editButtonTappedWithSender_ forControlEvents:64];
  (*(v13 + 8))(v15, v12);
  return v16;
}

void sub_2281C3C5C()
{
  sub_2281C50C8(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v36 - v2;
  sub_228391380();
  v4 = sub_2283913A0();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  MEMORY[0x22AAB6420](v3);
  v5 = [v0 contentView];
  v6 = sub_2281C3628();
  [v5 addSubview_];

  v7 = [v0 contentView];
  v8 = sub_2281C36C0();
  [v7 addSubview_];

  v37 = objc_opt_self();
  sub_228180ED0();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_228399E10;
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell____lazy_storage___pillImageView;
  v11 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell____lazy_storage___pillImageView] topAnchor];
  v12 = [v0 contentView];
  v13 = [v12 topAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(v9 + 32) = v14;
  v15 = [*&v0[v10] centerXAnchor];
  v16 = [v0 contentView];
  v17 = [v16 centerXAnchor];

  v18 = [v15 &selRef_freeTextMedicationName + 5];
  *(v9 + 40) = v18;
  v19 = [*&v0[v10] widthAnchor];
  v20 = [v19 constraintEqualToConstant_];

  *(v9 + 48) = v20;
  v21 = [*&v0[v10] heightAnchor];
  v22 = [v21 constraintEqualToConstant_];

  *(v9 + 56) = v22;
  v23 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell____lazy_storage___editButton;
  v24 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell____lazy_storage___editButton] topAnchor];
  v25 = [*&v0[v10] bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:8.0];

  *(v9 + 64) = v26;
  v27 = [*&v0[v23] bottomAnchor];
  v28 = [v0 contentView];
  v29 = [v28 bottomAnchor];

  v30 = [v27 constraintEqualToAnchor_];
  *(v9 + 72) = v30;
  v31 = [*&v0[v23] centerXAnchor];
  v32 = [v0 contentView];
  v33 = [v32 centerXAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v9 + 80) = v34;
  sub_2281BF1B8();
  v35 = sub_228392190();

  [v37 activateConstraints_];
}

uint64_t sub_2281C4104()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281C50C8(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  sub_2281C50C8(0, &qword_27D824720, type metadata accessor for MedicationAvatarItem);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for MedicationAvatarItem(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell_item;
  swift_beginAccess();
  sub_2281C5000(v1 + v16, v30, &qword_280DDCD50, sub_22817A700);
  if (v31)
  {
    sub_22817A700();
    v17 = swift_dynamicCast();
    (*(v13 + 56))(v11, v17 ^ 1u, 1, v12);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      sub_2281C4F9C(v11, v15);
      v18 = sub_2281C3628();
      sub_2281C5000(v15, v8, &qword_280DDBD20, MEMORY[0x277D116C8]);
      sub_228390950();

      return sub_2281C506C(v15);
    }
  }

  else
  {
    sub_2281C4F40(v30, &qword_280DDCD50, sub_22817A700);
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  sub_2281C4F40(v11, &qword_27D824720, type metadata accessor for MedicationAvatarItem);
  sub_228391150();
  v20 = v1;
  v21 = sub_2283911A0();
  v22 = sub_2283925C0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 136446210;
    v28 = v2;
    v29 = v24;
    sub_2281C5000(v1 + v16, v30, &qword_280DDCD50, sub_22817A700);
    sub_2281C50C8(0, &qword_280DDCD50, sub_22817A700);
    v25 = sub_228392040();
    v27 = sub_2281C96FC(v25, v26, &v29);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_22816B000, v21, v22, "Incorrect view model for MedicationAvatarCell: %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x22AAB7B80](v24, -1, -1);
    MEMORY[0x22AAB7B80](v23, -1, -1);

    return (*(v3 + 8))(v5, v28);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

void sub_2281C45B0()
{
  sub_2281C50C8(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = [v0 viewController];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2281C3628();
    sub_228390940();

    v7 = objc_allocWithZone(type metadata accessor for MedmojiPickerViewController(0));
    v8 = MedmojiPickerViewController.init(config:)(v3);
    *&v8[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_delegate + 8] = &off_283B688F0;
    swift_unknownObjectWeakAssign();
    v9 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
    [v9 setModalPresentationStyle_];
    [v9 setModalInPresentation_];
    [v5 presentViewController:v9 animated:1 completion:0];
  }
}

id sub_2281C4778()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationAvatarCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2281C483C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell_item;
  swift_beginAccess();
  return sub_2281C5000(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_2281C48B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2281C4104();
  return sub_2281C4F40(a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t (*sub_2281C4938(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2281C499C;
}

uint64_t sub_2281C499C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_2281C4104();
  }

  return result;
}

uint64_t sub_2281C49D0(uint64_t a1)
{
  v2 = v1;
  v36 = a1;
  v37 = sub_2283911B0();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281C50C8(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  sub_2281C50C8(0, &qword_27D824720, type metadata accessor for MedicationAvatarItem);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v35 - v13;
  v15 = type metadata accessor for MedicationAvatarItem(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell_item;
  swift_beginAccess();
  sub_2281C5000(v2 + v19, v39, &qword_280DDCD50, sub_22817A700);
  if (v40)
  {
    sub_22817A700();
    v20 = swift_dynamicCast();
    (*(v16 + 56))(v14, v20 ^ 1u, 1, v15);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      sub_2281C4F9C(v14, v18);
      v21 = sub_228390D50();
      v22 = *(v21 - 8);
      v23 = v36;
      (*(v22 + 16))(v11, v36, v21);
      (*(v22 + 56))(v11, 0, 1, v21);
      v24 = sub_2281C3628();
      v25 = MEMORY[0x277D116C8];
      sub_2281C5000(v11, v9, &qword_280DDBD20, MEMORY[0x277D116C8]);
      sub_228390950();

      sub_2281C4F40(v11, &qword_280DDBD20, v25);
      (*&v18[*(v15 + 20)])(v18, v23);
      return sub_2281C506C(v18);
    }
  }

  else
  {
    sub_2281C4F40(v39, &qword_280DDCD50, sub_22817A700);
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  sub_2281C4F40(v14, &qword_27D824720, type metadata accessor for MedicationAvatarItem);
  sub_228391150();
  v27 = v2;
  v28 = sub_2283911A0();
  v29 = sub_2283925C0();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v38 = v31;
    *v30 = 136446210;
    sub_2281C5000(v2 + v19, v39, &qword_280DDCD50, sub_22817A700);
    sub_2281C50C8(0, &qword_280DDCD50, sub_22817A700);
    v32 = sub_228392040();
    v34 = sub_2281C96FC(v32, v33, &v38);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_22816B000, v28, v29, "Incorrect view model for MedicationAvatarCell: %{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AAB7B80](v31, -1, -1);
    MEMORY[0x22AAB7B80](v30, -1, -1);
  }

  return (*(v3 + 8))(v5, v37);
}

uint64_t sub_2281C4F40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2281C50C8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2281C4F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationAvatarItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281C5000(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2281C50C8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2281C506C(uint64_t a1)
{
  v2 = type metadata accessor for MedicationAvatarItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2281C50C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_2281C511C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2281C5164(uint64_t a1, uint64_t *a2)
{
  sub_2281C5F14(0, &qword_27D8246E0, type metadata accessor for DrugInteractionVisualizationConfig);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_2281C608C(a1, &v11 - v5, &qword_27D8246E0, type metadata accessor for DrugInteractionVisualizationConfig);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_visualizationConfig;
  swift_beginAccess();
  sub_2281C2DD4(v6, v7 + v8);
  swift_endAccess();
  sub_2281C5840();
  v9 = *(v7 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_subview);
  if (v9)
  {
    [v9 hk:v7 alignConstraintsWithView:?];
  }

  return sub_2281C60F8(v6, &qword_27D8246E0, type metadata accessor for DrugInteractionVisualizationConfig);
}

uint64_t sub_2281C5294@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_visualizationConfig;
  swift_beginAccess();
  return sub_2281C608C(v1 + v3, a1, &qword_27D8246E0, type metadata accessor for DrugInteractionVisualizationConfig);
}

uint64_t sub_2281C5308(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_visualizationConfig;
  swift_beginAccess();
  sub_2281C2DD4(a1, v1 + v3);
  swift_endAccess();
  sub_2281C5840();
  v4 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_subview);
  if (v4)
  {
    [v4 hk:v1 alignConstraintsWithView:?];
  }

  return sub_2281C60F8(a1, &qword_27D8246E0, type metadata accessor for DrugInteractionVisualizationConfig);
}

id (*sub_2281C53B0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2281C5414;
}

id sub_2281C5414(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    sub_2281C5840();
    result = *(v5 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_subview);
    if (result)
    {
      v6 = *(a1 + 24);

      return [result hk:v6 alignConstraintsWithView:?];
    }
  }

  return result;
}

id sub_2281C5480()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView____lazy_storage___medicationView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView____lazy_storage___medicationView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView____lazy_storage___medicationView);
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

id sub_2281C5518()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView____lazy_storage___imageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id DrugInteractionVisualizationView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DrugInteractionVisualizationView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_visualizationConfig;
  v2 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_subview) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView____lazy_storage___medicationView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView____lazy_storage___imageView) = 0;
  sub_228393300();
  __break(1u);
}

uint64_t sub_2281C5840()
{
  v1 = v0;
  sub_2281C5F14(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v30 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - v5;
  sub_2281C5F14(0, &qword_27D8246E0, type metadata accessor for DrugInteractionVisualizationConfig);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v17 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_visualizationConfig;
  swift_beginAccess();
  sub_2281C608C(&v1[v17], v9, &qword_27D8246E0, type metadata accessor for DrugInteractionVisualizationConfig);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_2281C60F8(v9, &qword_27D8246E0, type metadata accessor for DrugInteractionVisualizationConfig);
  }

  sub_2281C5F68(v9, v16);
  v19 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_subview;
  [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_subview] removeFromSuperview];
  sub_2281C5FCC(v16, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v14;
    v21 = sub_2281C5518();
    v22 = HKDrugInteractionLifestyleFactor.image.getter(v20);
    [v21 setImage_];

    v23 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView____lazy_storage___imageView];
    v24 = *&v1[v19];
    *&v1[v19] = v23;
    v25 = v23;
  }

  else
  {
    sub_2281AA8D4(v14, v6);
    v26 = sub_2281C5480();
    v27 = MEMORY[0x277D116C8];
    sub_2281C608C(v6, v30, &qword_280DDBD20, MEMORY[0x277D116C8]);
    sub_228390950();

    v28 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView____lazy_storage___medicationView];
    v25 = v28;
    sub_2281C60F8(v6, &qword_280DDBD20, v27);
    v24 = *&v1[v19];
    *&v1[v19] = v28;
  }

  v29 = v25;

  [v1 addSubview_];
  return sub_2281C6030(v16);
}

id DrugInteractionVisualizationView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DrugInteractionVisualizationView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DrugInteractionVisualizationView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DrugInteractionVisualizationView(uint64_t a1)
{
  result = qword_27D824748;
  if (!qword_27D824748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2281C5DA8(uint64_t a1)
{
  sub_2281C5F14(319, &qword_27D8246E0, type metadata accessor for DrugInteractionVisualizationConfig);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2281C5F14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_2281C5F68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281C5FCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281C6030(uint64_t a1)
{
  v2 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2281C608C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2281C5F14(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2281C60F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2281C5F14(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2281C6154()
{
  v1 = v0;
  v2 = sub_22838F080();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v55 - v7;
  if ([v1 scheduleType] != 8)
  {
    v23 = [v1 timeIntervals];
    sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
    v24 = sub_2283921A0();

    return v24;
  }

  v60 = v6;
  v9 = MEMORY[0x277D84F90];
  v63 = MEMORY[0x277D84F90];
  v10 = [v1 timeIntervals];
  v61 = sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
  v11 = sub_2283921A0();

  if (v11 >> 62)
  {
    v12 = sub_2283930D0();
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_15:

    v14 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_4:
  v65 = v9;
  sub_2281C9D64(0, v12 & ~(v12 >> 63), 0);
  if (v12 < 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  v58 = v12;
  v59 = v2;
  v57 = v1;
  v13 = 0;
  v14 = v65;
  v15 = v11;
  v16 = v11 & 0xC000000000000001;
  v17 = v11;
  do
  {
    if (v16)
    {
      v18 = MEMORY[0x22AAB6D80](v13, v15);
    }

    else
    {
      v18 = *(v15 + 8 * v13 + 32);
    }

    v19 = v18;
    v20 = [v18 startTimeComponent];
    sub_22838EFD0();

    v65 = v14;
    v22 = *(v14 + 16);
    v21 = *(v14 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_2281C9D64((v21 > 1), v22 + 1, 1);
      v14 = v65;
    }

    ++v13;
    *(v14 + 16) = v22 + 1;
    (*(v3 + 4))(v14 + ((v3[80] + 32) & ~v3[80]) + *(v3 + 9) * v22, v8, v59);
    v15 = v17;
  }

  while (v58 != v13);

  v1 = v57;
  v2 = v59;
LABEL_16:
  v65 = v14;
  sub_2281CBCB4(0, &qword_27D824798, MEMORY[0x277CC8990], MEMORY[0x277D83940]);
  sub_2281CBE04();
  sub_2281CC050(&qword_27D8247A8, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
  v26 = sub_228392510();

  v27 = *(v26 + 16);
  if (v27)
  {
    v29 = *(v3 + 2);
    v28 = (v3 + 16);
    v30 = v28[64];
    v55 = v26;
    v31 = v26 + ((v30 + 32) & ~v30);
    v58 = *(v28 + 7);
    v59 = v29;
    v57 = (v28 - 8);
    v56 = MEMORY[0x277D84F90];
    v32 = v60;
    do
    {
      v33 = v28;
      v59(v32, v31, v2);
      v34 = [v1 timeIntervals];
      v35 = v1;
      v36 = v32;
      v37 = v34;
      v38 = sub_2283921A0();

      MEMORY[0x28223BE20](v39);
      *(&v55 - 2) = v36;
      v1 = v35;
      v40 = sub_2282CD5E0(sub_2281CBE8C, (&v55 - 4), v38);

      if (v40)
      {
        v41 = v2;
        v42 = v40;
        MEMORY[0x22AAB5D20]();
        if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2283921E0();
        }

        sub_228392230();

        v56 = v63;
        v2 = v41;
      }

      v32 = v60;
      (*v57)(v60, v2);
      v31 += v58;
      --v27;
      v28 = v33;
    }

    while (v27);
  }

  else
  {

    v56 = MEMORY[0x277D84F90];
  }

  v43 = [v1 timeIntervals];
  v44 = sub_2283921A0();

  v62 = v44;
  if (v44 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
    v60 = (v44 + 32);
    v61 = v44 & 0xFFFFFFFFFFFFFF8;
    while (!__OFSUB__(i--, 1))
    {
      if ((v44 & 0xC000000000000001) != 0)
      {
        v47 = MEMORY[0x22AAB6D80](i, v44);
      }

      else
      {
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        if (i >= *(v61 + 16))
        {
          goto LABEL_41;
        }

        v47 = *&v60[8 * i];
      }

      v48 = v47;
      v49 = [v47 dose];
      v50 = sub_228392C40();
      v51 = v50;
      if (v49)
      {
        v52 = sub_228392C60();

        if (v52)
        {
          MEMORY[0x28223BE20](v53);
          *(&v55 - 2) = &v62;
          v64 = i;
          sub_2281CBEAC(&v64, &v65);
          v54 = v65;
          goto LABEL_44;
        }
      }

      else
      {
      }

      if (!i)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

LABEL_43:
  v54 = 0;
LABEL_44:

  result = v56;
  if (v54)
  {
    v3 = v54;
    MEMORY[0x22AAB5D20]();
    if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_46:
      sub_228392230();

      return v63;
    }

LABEL_49:
    sub_2283921E0();
    goto LABEL_46;
  }

  return result;
}

uint64_t sub_2281C6888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = sub_2283911B0();
  v4 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_2281CBCB4(0, &unk_280DDCD70, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = v45 - v9;
  sub_2281CBCB4(0, &qword_280DDCD80, MEMORY[0x277CC99E8], v7);
  MEMORY[0x28223BE20](v10 - 8);
  v52 = v45 - v11;
  v54 = sub_22838F440();
  v12 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_22838F6C0();
  v15 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v17 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22838F080();
  v49 = *(v18 - 8);
  v50 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v47 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = v45 - v21;
  v23 = sub_22838EFE0();
  if (v24)
  {
    v25 = v54;
    sub_228391150();
    v26 = sub_2283911A0();
    v27 = sub_2283925C0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_22816B000, v26, v27, "Cannot infer date from timeComponents; hour is nil.", v28, 2u);
      MEMORY[0x22AAB7B80](v28, -1, -1);
    }

    (*(v4 + 8))(v6, v46);
    return (*(v12 + 56))(a2, 1, 1, v25);
  }

  else
  {
    v45[0] = a1;
    v46 = v23;
    v30 = sub_22838F020();
    if (v31)
    {
      v32 = 0;
    }

    else
    {
      v32 = v30;
    }

    v45[2] = v32;
    sub_22838F680();
    sub_2281CBCB4(0, &qword_280DDB8D8, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v33 = sub_22838F6A0();
    v34 = *(v33 - 8);
    v45[1] = a2;
    v35 = v34;
    v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_228397F40;
    (*(v35 + 104))(v37 + v36, *MEMORY[0x277CC9988], v33);
    sub_2281EF358(v37);
    swift_setDeallocating();
    (*(v35 + 8))(v37 + v36, v33);
    swift_deallocClassInstance();
    v38 = [v48 startDateTime];
    sub_22838F3E0();

    sub_22838F5C0();

    (*(v12 + 8))(v14, v54);
    v39 = *(v15 + 8);
    v40 = v51;
    v39(v17, v51);
    v41 = v52;
    sub_22838F680();
    (*(v15 + 56))(v41, 0, 1, v40);
    sub_22838F070();
    sub_22838F010();
    v42 = v47;
    sub_22838F060();
    sub_22838F680();
    sub_22838F640();
    v39(v17, v40);
    v43 = v50;
    v44 = *(v49 + 8);
    v44(v42, v50);
    return (v44)(v22, v43);
  }
}

uint64_t HKMedicationSchedule.makeScheduleItems()()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_2283911B0();
  v3 = *(v2 - 1);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v72 - v7;
  v78 = sub_22838F6C0();
  v75 = *(v78 - 1);
  MEMORY[0x28223BE20](v78);
  v77 = (&v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = sub_228391130();
  v10 = *(v76 - 8);
  v11 = MEMORY[0x28223BE20](v76);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v72 - v14;
  v16 = [v1 scheduleType];
  if (v16 <= 3)
  {
    if ((v16 - 1) < 2)
    {
      goto LABEL_22;
    }

    if (v16 != 3)
    {
      if (!v16)
      {
        v60 = v3;
        sub_228391150();
        v61 = v1;
        v62 = sub_2283911A0();
        v63 = sub_2283925C0();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v81 = v78;
          *v64 = 136315394;
          v65 = sub_228393600();
          v67 = sub_2281C96FC(v65, v66, &v81);

          *(v64 + 4) = v67;
          *(v64 + 12) = 2112;
          *(v64 + 14) = v61;
          v68 = v77;
          *v77 = v61;
          v69 = v61;
          _os_log_impl(&dword_22816B000, v62, v63, "%s Unexpectedly found schedule with null type. Schedule: %@", v64, 0x16u);
          sub_228193354(v68);
          MEMORY[0x22AAB7B80](v68, -1, -1);
          v70 = v78;
          __swift_destroy_boxed_opaque_existential_0(v78);
          MEMORY[0x22AAB7B80](v70, -1, -1);
          MEMORY[0x22AAB7B80](v64, -1, -1);
        }

        (*(v60 + 8))(v6, v2);
      }

      goto LABEL_57;
    }

    v2 = [v1 timeIntervals];
    sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
    v36 = sub_2283921A0();

    if (v36 >> 62)
    {
      v16 = sub_2283930D0();
      if (v16)
      {
LABEL_30:
        if ((v36 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x22AAB6D80](0, v36);
        }

        else
        {
          if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_48:
            __break(1u);
LABEL_49:
            if (v16 == 6)
            {
              v47 = v3;
              sub_228391150();
              v48 = v1;
              v49 = sub_2283911A0();
              v50 = sub_2283925C0();
              v78 = v48;

              if (os_log_type_enabled(v49, v50))
              {
                v51 = swift_slowAlloc();
                v52 = swift_slowAlloc();
                v53 = swift_slowAlloc();
                v81 = v53;
                *v51 = 136315394;
                v54 = sub_228393600();
                v56 = sub_2281C96FC(v54, v55, &v81);

                *(v51 + 4) = v56;
                *(v51 + 12) = 2112;
                v57 = v78;
                *(v51 + 14) = v78;
                *v52 = v57;
                v58 = v57;
                _os_log_impl(&dword_22816B000, v49, v50, "%s Unexpectedly found schedule with deprecated alternating daily type. Schedule: %@", v51, 0x16u);
                sub_228193354(v52);
                MEMORY[0x22AAB7B80](v52, -1, -1);
                __swift_destroy_boxed_opaque_existential_0(v53);
                MEMORY[0x22AAB7B80](v53, -1, -1);
                MEMORY[0x22AAB7B80](v51, -1, -1);
              }

              (*(v47 + 8))(v8, v2);
              v81 = 0;
              v82 = 0xE000000000000000;
              sub_2283931D0();
              MEMORY[0x22AAB5C80](0xD00000000000001CLL, 0x80000002283A9B50);
              v80 = [v78 scheduleType];
              v59 = sub_228393420();
              MEMORY[0x22AAB5C80](v59);

              MEMORY[0x22AAB5C80](0xD000000000000021, 0x80000002283A9B70);
              goto LABEL_58;
            }

LABEL_57:
            v81 = 0;
            v82 = 0xE000000000000000;
            sub_2283931D0();

            v81 = 0xD00000000000001CLL;
            v82 = 0x80000002283A9B50;
            v80 = [v1 scheduleType];
            v71 = sub_228393420();
            MEMORY[0x22AAB5C80](v71);

            MEMORY[0x22AAB5C80](0x776F6E6B6E752820, 0xEB0000000029216ELL);
LABEL_58:
            result = sub_228393300();
            __break(1u);
            return result;
          }

          v37 = *(v36 + 32);
        }

        v38 = v37;

        v39 = [v38 daysOfWeek];

        sub_2282D9ECC(v39, v15);
        v40 = v77;
        sub_22838F680();
        v41 = sub_228391100();
        v43 = v42;
        (*(v75 + 8))(v40, v78);
        (*(v10 + 8))(v15, v76);
        if (v43)
        {
LABEL_38:
          v79[0] = v41;
          v79[1] = v43;

          v21 = MEMORY[0x277D84F90];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_22819837C(0, *(v21 + 16) + 1, 1, v21);
          }

          v45 = *(v21 + 16);
          v44 = *(v21 + 24);
          if (v45 >= v44 >> 1)
          {
            v21 = sub_22819837C((v44 > 1), v45 + 1, 1, v21);
          }

          *(v21 + 16) = v45 + 1;
          v46 = v21 + 24 * v45;
          *(v46 + 32) = v41;
          *(v46 + 40) = v43;
          *(v46 + 48) = 0;
          sub_2281CBC34(v79);
          return v21;
        }

LABEL_37:

        v41 = 0;
        v43 = 0xE000000000000000;
        goto LABEL_38;
      }
    }

    else
    {
      v16 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_37;
  }

  if (v16 <= 6)
  {
    if (v16 != 4)
    {
      if (v16 != 5)
      {
        goto LABEL_49;
      }

      v17 = [v1 timeIntervals];
      sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
      sub_2283921A0();

      v18 = sub_228392210();

      if (v18 >> 62)
      {
        v3 = sub_2283930D0();
        if (v3)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v3 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v3)
        {
LABEL_7:
          v2 = v18;
          v81 = MEMORY[0x277D84F90];
          v16 = sub_2281C9D24(0, v3 & ~(v3 >> 63), 0);
          if ((v3 & 0x8000000000000000) == 0)
          {
            v19 = 0;
            v20 = v18;
            v73 = v18 & 0xC000000000000001;
            v74 = v3;
            v21 = v81;
            v22 = (v75 + 8);
            v23 = (v10 + 8);
            v75 = v18;
            do
            {
              if (v73)
              {
                v24 = MEMORY[0x22AAB6D80](v19);
              }

              else
              {
                v24 = *(v20 + 8 * v19 + 32);
              }

              v25 = v24;
              sub_2282D9ECC([v24 daysOfWeek], v13);
              v26 = v77;
              sub_22838F680();
              v27 = sub_228391100();
              v29 = v28;
              (*v22)(v26, v78);
              (*v23)(v13, v76);

              if (v29)
              {
                v30 = v27;
              }

              else
              {
                v30 = 0;
              }

              if (!v29)
              {
                v29 = 0xE000000000000000;
              }

              v81 = v21;
              v32 = *(v21 + 16);
              v31 = *(v21 + 24);
              if (v32 >= v31 >> 1)
              {
                sub_2281C9D24((v31 > 1), v32 + 1, 1);
                v21 = v81;
              }

              ++v19;
              *(v21 + 16) = v32 + 1;
              v33 = v21 + 24 * v32;
              *(v33 + 32) = v30;
              *(v33 + 40) = v29;
              *(v33 + 48) = 0;
              v20 = v75;
            }

            while (v74 != v19);

            return v21;
          }

          __break(1u);
          goto LABEL_48;
        }
      }

      return MEMORY[0x277D84F90];
    }

LABEL_22:
    sub_2281CBF3C(0, &qword_27D823EF0, &type metadata for ScheduleListItem, MEMORY[0x277D84560]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_228397F40;
    *(v21 + 32) = sub_2281DB0CC();
    *(v21 + 40) = v34;
    *(v21 + 48) = 0;
    return v21;
  }

  if ((v16 - 7) >= 2)
  {
    goto LABEL_57;
  }

  return _sSo20HKMedicationScheduleC19HealthMedicationsUIE024unittesting_makeCyclicalB5ItemsSayAC0B8ListItemOGyF_0();
}

uint64_t sub_2281C7A58@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_228391130();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282D9ECC([*a1 daysOfWeek], v7);
  v8 = sub_2283910D0();
  result = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  return result;
}

uint64_t _sSo20HKMedicationScheduleC19HealthMedicationsUIE024unittesting_makeCyclicalB5ItemsSayAC0B8ListItemOGyF_0()
{
  v1 = v0;
  v2 = MEMORY[0x277D83D88];
  sub_2281CBCB4(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v61 = &v58 - v4;
  v5 = sub_22838F6C0();
  MEMORY[0x28223BE20](v5 - 8);
  v66 = (&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2281CBCB4(0, &qword_27D824550, type metadata accessor for CycleData, v2);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v58 - v8;
  v10 = type metadata accessor for CycleData(0);
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22838F440();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v58 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v58 - v21;
  v63 = sub_2281DB0CC();
  v24 = v23;
  v25 = [v1 endDateTime];
  if (v25)
  {
    v62 = v24;
    v59 = v12;
    v60 = v17;
    v26 = v25;
    sub_22838F3E0();

    sub_22838F340();
    sub_2281CC050(&qword_280DDCDB8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    LOBYTE(v26) = sub_228391FA0();
    v27 = v14;
    v28 = *(v14 + 1);
    v28(v20, v13);
    if ((v26 & 1) == 0)
    {
      sub_2281CBF3C(0, &qword_27D823EF0, &type metadata for ScheduleListItem, MEMORY[0x277D84560]);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_228397F40;
      v39 = v62;
      *(v38 + 32) = v63;
      *(v38 + 40) = v39;
      *(v38 + 48) = 0;
      v28(v22, v13);
      return v38;
    }

    v28(v22, v13);
    v14 = v27;
    v12 = v59;
    v17 = v60;
    v24 = v62;
  }

  v29 = v1;
  v30 = v66;
  sub_22838F620();
  sub_2282CD948(v29, v30, v9);
  if ((*(v64 + 48))(v9, 1, v65) == 1)
  {

    v31 = &qword_27D824550;
    v32 = type metadata accessor for CycleData;
LABEL_9:
    sub_2281CBECC(v9, v31, v32);
    return MEMORY[0x277D84F90];
  }

  v33 = v24;
  v66 = v14;
  sub_2281CC098(v9, v12, type metadata accessor for CycleData);
  CycleData.currentPhase.getter(v67);
  v34 = v69;
  if (v69 == 255)
  {
    sub_2281CBFF0(v12, type metadata accessor for CycleData);

    return MEMORY[0x277D84F90];
  }

  v35 = v68;
  v9 = v61;
  CycleData.nextCycleChangeDate.getter(v61);
  v36 = v66;
  v37 = v13;
  if (v66[6](v9, 1, v13) == 1)
  {
    sub_2281CBFF0(v12, type metadata accessor for CycleData);

    v31 = &qword_280DDCDB0;
    v32 = MEMORY[0x277CC9578];
    goto LABEL_9;
  }

  v36[4](v17, v9, v13);
  v41 = CycleData.localizeCurrentPhaseDescription.getter();
  if (!v42)
  {

    (v36[1])(v17, v13);
    sub_2281CBFF0(v12, type metadata accessor for CycleData);
    return MEMORY[0x277D84F90];
  }

  v43 = v41;
  v44 = v42;
  if (v34)
  {
    sub_2281CBF3C(0, &qword_27D823EF0, &type metadata for ScheduleListItem, MEMORY[0x277D84560]);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_228398270;
    *(v45 + 32) = v63;
    *(v45 + 40) = v33;
    v38 = v45;
    *(v45 + 48) = 0;
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    *(v38 + 56) = sub_22838F0C0();
    *(v38 + 64) = v46;
    *(v38 + 72) = 1;
    *(v38 + 80) = v43;
    *(v38 + 88) = v44;
    *(v38 + 96) = 1;
    goto LABEL_26;
  }

  sub_2281CBF3C(0, &qword_27D823EF0, &type metadata for ScheduleListItem, MEMORY[0x277D84560]);
  if (!v35)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_228397F30;
    *(v38 + 32) = v63;
    *(v38 + 40) = v33;
    *(v38 + 48) = 0;
    *(v38 + 56) = v43;
    *(v38 + 64) = v44;
    *(v38 + 72) = 1;
LABEL_26:
    (v66[1])(v17, v37);
    sub_2281CBFF0(v12, type metadata accessor for CycleData);
    return v38;
  }

  v59 = v12;
  v60 = v17;
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_228398270;
  *(v47 + 32) = v63;
  *(v47 + 40) = v33;
  *(v47 + 48) = 0;
  *(v47 + 56) = v43;
  *(v47 + 64) = v44;
  v48 = v47;
  *(v47 + 72) = 1;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22819A064(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], 1);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_228397F40;
  v50 = Date.formattedWithYearIfDifferent()();
  *(v49 + 56) = MEMORY[0x277D837D0];
  *(v49 + 64) = sub_22818E210();
  *(v49 + 32) = v50;
  v51 = sub_22838F0C0();
  v53 = v52;
  if (*(v49 + 16))
  {
    v51 = sub_228391FD0();
    v55 = v54;

    v53 = v55;
  }

  else
  {
  }

  v57 = v59;
  v56 = v60;
  *(v48 + 80) = v51;
  *(v48 + 88) = v53;
  *(v48 + 96) = 1;
  (v66[1])(v56, v37);
  sub_2281CBFF0(v57, type metadata accessor for CycleData);
  return v48;
}

uint64_t HKMedicationSchedule.makeItems()()
{
  if ([v0 isUnavailable])
  {
    if (qword_280DDCF18 == -1)
    {
LABEL_3:
      v1 = sub_22838F0C0();
      v3 = v2;
      sub_2281CBF3C(0, &qword_280DDB8B8, &type metadata for MedicationCellItem, MEMORY[0x277D84560]);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_228397F40;
      v5 = [objc_opt_self() secondaryLabelColor];
      v6 = sub_22838F0C0();
      MEMORY[0x22AAB5C80](v6);

      MEMORY[0x22AAB5C80](32, 0xE100000000000000);
      MEMORY[0x22AAB5C80](v1, v3);
      *(v4 + 32) = 0;
      *(v4 + 40) = v5;
      *(v4 + 48) = v1;
      *(v4 + 56) = v3;
      *(v4 + 64) = 0xD00000000000001BLL;
      *(v4 + 72) = 0x80000002283A9BE0;
      *(v4 + 80) = 0;
      *(v4 + 88) = 0xE000000000000000;
      return v4;
    }

LABEL_22:
    swift_once();
    goto LABEL_3;
  }

  v7 = HKMedicationSchedule.makeScheduleItems()();
  v8 = *(v7 + 16);
  if (!v8)
  {

    return MEMORY[0x277D84F90];
  }

  v29 = MEMORY[0x277D84F90];
  sub_2281C9D44(0, v8, 0);
  v4 = v29;
  v23 = objc_opt_self();
  if (!*(v7 + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v9 = 0;
  v10 = (v7 + 48);
  v22 = v8 - 1;
  while (1)
  {
    v11 = *(v10 - 2);
    v12 = *(v10 - 1);
    v13 = *v10;
    sub_2281CBC88(v11, v12);
    v14 = [v23 secondaryLabelColor];
    v15 = 0x7261646E656C6163;
    if (v13)
    {
      v15 = 0;
    }

    v26 = v15;
    v16 = 0xE800000000000000;
    if (v13)
    {
      v16 = 0;
    }

    v24 = v14;
    v25 = v16;
    sub_2281CBC88(v11, v12);
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    v17 = sub_22838F0C0();
    MEMORY[0x22AAB5C80](v17);

    MEMORY[0x22AAB5C80](32, 0xE100000000000000);
    sub_2281CBC88(v11, v12);
    MEMORY[0x22AAB5C80](v11, v12);
    sub_2281CBC90(v11, v12);
    sub_2281CBC90(v11, v12);
    v27 = *v28;
    HIBYTE(v27) = v28[3];
    v19 = *(v29 + 16);
    v18 = *(v29 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_2281C9D44((v18 > 1), v19 + 1, 1);
    }

    *(v29 + 16) = v19 + 1;
    v20 = v29 + (v19 << 6);
    *(v20 + 32) = 0;
    *(v20 + 33) = v27;
    *(v20 + 36) = *&v28[3];
    *(v20 + 40) = v24;
    *(v20 + 48) = v11;
    *(v20 + 56) = v12;
    *(v20 + 64) = v26;
    *(v20 + 72) = v25;
    *(v20 + 80) = 0;
    *(v20 + 88) = 0xE000000000000000;
    if (v22 == v9)
    {
      break;
    }

    v10 += 24;
    if (++v9 >= *(v7 + 16))
    {
      goto LABEL_21;
    }
  }

  return v4;
}

uint64_t sub_2281C8894(id *a1, uint64_t a2)
{
  v4 = sub_22838F080();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*a1 startTimeComponent];
  sub_22838EFD0();

  LOBYTE(a2) = MEMORY[0x22AAB2B60](v7, a2);
  (*(v5 + 8))(v7, v4);
  return a2 & 1;
}

void *sub_2281C89A0()
{
  v0 = sub_228391130();
  v1 = *(v0 - 8);
  v106 = v0;
  v107 = v1;
  v2 = MEMORY[0x28223BE20](v0);
  v73 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v80 = &v71 - v5;
  MEMORY[0x28223BE20](v4);
  v102 = &v71 - v6;
  v103 = type metadata accessor for WeekdaysAndDosages(0);
  v101 = *(v103 - 8);
  v7 = MEMORY[0x28223BE20](v103);
  v81 = (&v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v100 = &v71 - v9;
  v86 = sub_22838F4A0();
  v10 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v85 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22838F080();
  v105 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v79 = (&v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_22838F6C0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v96 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281CBCB4(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v71 - v18;
  v20 = sub_22838F440();
  v21 = *(v20 - 1);
  v22 = MEMORY[0x28223BE20](v20);
  v78 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v71 - v24;
  v26 = sub_2281C6154();
  v90 = v26;
  if (v26 >> 62)
  {
    goto LABEL_40;
  }

  v97 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v97)
  {
    while (1)
    {
      v91 = v25;
      v98 = v20;
      v95 = v19;
      v25 = 0;
      v99 = v90 & 0xC000000000000001;
      v89 = v90 & 0xFFFFFFFFFFFFFF8;
      v88 = v90 + 32;
      v93 = (v15 + 2);
      v94 = (v105 + 8);
      v92 = (v21 + 48);
      v27 = (v21 + 32);
      v77 = (v21 + 16);
      v76 = (v10 + 32);
      v104 = (v107 + 1);
      v82 = (v21 + 8);
      v21 = v90;
      v72 = (v107 + 2);
      v71 = (v10 + 8);
      v107 = MEMORY[0x277D84F90];
      v75 = xmmword_228397F40;
      v15 = v79;
      v10 = v97;
      v74 = v12;
      v83 = v14;
      v84 = v27;
      while (1)
      {
        if (v99)
        {
          v28 = MEMORY[0x22AAB6D80](v25, v21);
        }

        else
        {
          if (v25 >= *(v89 + 16))
          {
            goto LABEL_38;
          }

          v28 = *(v88 + 8 * v25);
        }

        v20 = v28;
        if (__OFADD__(v25++, 1))
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v30 = [v28 dose];
        if (!v30)
        {
          break;
        }

        v31 = v30;
        [v30 doubleValue];
        v33 = v32;

        if (v33 != 0.0)
        {
          break;
        }

LABEL_5:
        if (v25 == v10)
        {

          return v107;
        }
      }

      v34 = v96;
      sub_22838F680();
      v35 = [v20 startTimeComponent];
      sub_22838EFD0();

      v19 = v95;
      sub_22838F640();
      (*v94)(v15, v12);
      (*v93)(v34, v14);
      v10 = v98;
      if ((*v92)(v19, 1, v98) == 1)
      {
        break;
      }

      v36 = v84;
      v37 = *v84;
      v21 = v91;
      (*v84)(v91, v19, v10);
      v38 = [v20 dose];
      if (!v38)
      {
        (*v82)(v21, v10);

        v14 = v83;
        v21 = v90;
        goto LABEL_34;
      }

      v105 = v20;
      v19 = v36;
      v39 = v38;
      [v38 doubleValue];
      v41 = v40;

      sub_2281CBCB4(0, &qword_27D823E30, type metadata accessor for Dosage, MEMORY[0x277D84560]);
      v15 = (type metadata accessor for Dosage(0) - 8);
      v42 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = v75;
      v87 = v43;
      v44 = v43 + v42;
      v45 = v78;
      (*v77)(v78, v21, v10);
      v12 = v85;
      sub_22838F490();
      (*v76)(v44, v12, v86);
      v37((v44 + v15[7]), v45, v10);
      *(v44 + v15[8]) = v41;
      v46 = v107;
      v47 = v107[2];
      if (!v47)
      {
LABEL_21:
        v20 = v105;
        v49 = [v105 daysOfWeek];
        v50 = v102;
        sub_2282D9ECC(v49, v102);
        v51 = MEMORY[0x277D11768];
        sub_2281CC050(&qword_27D824820, MEMORY[0x277D11768], MEMORY[0x277D11788]);
        v52 = v73;
        v53 = v106;
        sub_228393020();
        sub_2281CC050(&qword_280DDBD08, v51, MEMORY[0x277D11778]);
        v54 = sub_228391FB0();
        v55 = *v104;
        (*v104)(v52, v53);
        v56 = v55;
        v55(v50, v53);
        v21 = v90;
        if (v54)
        {
          v57 = v80;
          sub_228391070();
        }

        else
        {
          v58 = [v20 daysOfWeek];
          v57 = v80;
          sub_2282D9ECC(v58, v80);
        }

        v14 = v83;
        v59 = v103;
        v60 = v81;
        (*v72)(v81 + *(v103 + 20), v57, v106);
        v19 = v85;
        sub_22838F490();
        v61 = sub_22838F450();
        v63 = v62;
        (*v71)(v19, v86);
        *v60 = v61;
        v60[1] = v63;
        *(v60 + *(v59 + 24)) = v87;
        v64 = v107;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = sub_2281984B4(0, v64[2] + 1, 1, v64);
        }

        v12 = v74;
        v10 = v97;
        v66 = v64[2];
        v65 = v64[3];
        v107 = v64;
        if (v66 >= v65 >> 1)
        {
          v107 = sub_2281984B4((v65 > 1), v66 + 1, 1, v107);
        }

        v56(v80, v106);
        (*v82)(v91, v98);
        v67 = v107;
        v107[2] = v66 + 1;
        sub_2281CC098(v81, v67 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v66, type metadata accessor for WeekdaysAndDosages);
        v15 = v79;
        goto LABEL_5;
      }

      v14 = 0;
      while (1)
      {
        if (v14 >= v46[2])
        {
          __break(1u);
          goto LABEL_37;
        }

        v21 = v100;
        v20 = ((*(v101 + 80) + 32) & ~*(v101 + 80));
        v19 = *(v101 + 72) * v14;
        sub_2281CBF8C(v20 + v46 + v19, v100);
        v48 = [v105 daysOfWeek];
        v12 = v102;
        sub_2282D9ECC(v48, v102);
        v15 = sub_2281CC050(&qword_27D824818, MEMORY[0x277D11768], MEMORY[0x277D11780]);
        v10 = v106;
        sub_228392170();
        sub_228392170();
        (*v104)(v12, v10);
        sub_2281CBFF0(v21, type metadata accessor for WeekdaysAndDosages);
        if (v109 == v108)
        {
          break;
        }

        ++v14;
        v46 = v107;
        if (v47 == v14)
        {
          goto LABEL_21;
        }
      }

      v68 = v107;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v90;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v68 = sub_2281D9300(v68);
      }

      v12 = v74;
      v15 = v79;
      if (v14 < v68[2])
      {
        v107 = v68;
        sub_2281D55D0(v87);

        (*v82)(v91, v98);
        v14 = v83;
        goto LABEL_34;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      v97 = sub_2283930D0();
      if (!v97)
      {
        goto LABEL_41;
      }
    }

    sub_2281CBECC(v19, &qword_280DDCDB0, MEMORY[0x277CC9578]);
LABEL_34:
    v10 = v97;
    goto LABEL_5;
  }

LABEL_41:

  return MEMORY[0x277D84F90];
}

unint64_t sub_2281C96FC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2281C97C8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2281BC4A4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2281C97C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2281C98D4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_228393200();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2281C98D4(uint64_t a1, unint64_t a2)
{
  v3 = sub_2281C9920(a1, a2);
  sub_2281C9A50(&unk_283B66640);
  return v3;
}

void *sub_2281C9920(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2281C9B3C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_228393200();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2283920F0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2281C9B3C(v10, 0);
        result = sub_2283931C0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2281C9A50(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2281C9BC8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2281C9B3C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2281CBF3C(0, &qword_27D8247F8, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2281C9BC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2281CBF3C(0, &qword_27D8247F8, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
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

void *sub_2281C9CD4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CB668(a1, a2, a3, *v3, &qword_27D823DE0, type metadata accessor for WeekdaysAndDosages, type metadata accessor for WeekdaysAndDosages);
  *v3 = result;
  return result;
}

char *sub_2281C9D24(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CA3F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2281C9D44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CA524(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2281C9D64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CB668(a1, a2, a3, *v3, &qword_27D8247B0, MEMORY[0x277CC8990], MEMORY[0x277CC8990]);
  *v3 = result;
  return result;
}

void *sub_2281C9DB4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CB120(a1, a2, a3, *v3, &qword_280DDB8D0, &qword_280DDCD60, MEMORY[0x277D10D48]);
  *v3 = result;
  return result;
}

void *sub_2281C9DEC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CB120(a1, a2, a3, *v3, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40]);
  *v3 = result;
  return result;
}

char *sub_2281C9E24(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CA648(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2281C9E44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CA764(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2281C9E64(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CA888(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2281C9E84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CB668(a1, a2, a3, *v3, &qword_27D823DE8, sub_228199E70, sub_228199E70);
  *v3 = result;
  return result;
}

void *sub_2281C9ED4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CB668(a1, a2, a3, *v3, &qword_27D824768, sub_228199F78, sub_228199F78);
  *v3 = result;
  return result;
}

void *sub_2281C9F24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CB668(a1, a2, a3, *v3, &qword_27D824570, type metadata accessor for ScheduleIntervalItem, type metadata accessor for ScheduleIntervalItem);
  *v3 = result;
  return result;
}

void *sub_2281C9F74(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CB668(a1, a2, a3, *v3, &qword_27D8247B8, type metadata accessor for MedicationSearchItem, type metadata accessor for MedicationSearchItem);
  *v3 = result;
  return result;
}

void *sub_2281C9FC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CB120(a1, a2, a3, *v3, &qword_27D824808, &qword_27D824810, &protocol descriptor for DayScheduleLineItemDisplayable);
  *v3 = result;
  return result;
}

void *sub_2281C9FFC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CB668(a1, a2, a3, *v3, &qword_27D824800, MEMORY[0x277D11000], MEMORY[0x277D11000]);
  *v3 = result;
  return result;
}

void *sub_2281CA04C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CA9E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2281CA06C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CAB3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2281CA08C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CAC60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2281CA0AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CB120(a1, a2, a3, *v3, &qword_27D8247C0, &qword_27D8247C8, &protocol descriptor for DayHistoryDisplayable);
  *v3 = result;
  return result;
}

char *sub_2281CA0E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CADAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2281CA104(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CB668(a1, a2, a3, *v3, &qword_27D824760, MEMORY[0x277D116F0], MEMORY[0x277D116F0]);
  *v3 = result;
  return result;
}

char *sub_2281CA154(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CAEC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2281CA174(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CAFE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2281CA194(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CB120(a1, a2, a3, *v3, &qword_27D8247E8, &qword_27D8247F0, &protocol descriptor for DayScheduleDisplayable);
  *v3 = result;
  return result;
}

char *sub_2281CA1CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CB27C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2281CA1EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CB668(a1, a2, a3, *v3, &qword_27D8247D0, MEMORY[0x277D116B0], MEMORY[0x277D116B0]);
  *v3 = result;
  return result;
}

void *sub_2281CA23C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CB668(a1, a2, a3, *v3, &qword_27D823E30, type metadata accessor for Dosage, type metadata accessor for Dosage);
  *v3 = result;
  return result;
}

char *sub_2281CA28C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CB3DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2281CA2AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CB668(a1, a2, a3, *v3, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D10F78]);
  *v3 = result;
  return result;
}

void *sub_2281CA2FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CB51C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2281CA31C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CB668(a1, a2, a3, *v3, &qword_27D824758, sub_2281CBD18, sub_2281CBD18);
  *v3 = result;
  return result;
}

void *sub_2281CA36C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2281CB668(a1, a2, a3, *v3, &qword_280DDB8A8, type metadata accessor for MedicationChartCodableData, type metadata accessor for MedicationChartCodableData);
  *v3 = result;
  return result;
}

char *sub_2281CA3F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2281CBF3C(0, &qword_27D823EF0, &type metadata for ScheduleListItem, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2281CA524(char *result, int64_t a2, char a3, char *a4)
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
    sub_2281CBF3C(0, &qword_280DDB8B8, &type metadata for MedicationCellItem, MEMORY[0x277D84560]);
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

char *sub_2281CA648(char *result, int64_t a2, char a3, char *a4)
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
    sub_2281CBF3C(0, &qword_27D8247E0, &type metadata for FrequencyInterval, MEMORY[0x277D84560]);
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

char *sub_2281CA764(char *result, int64_t a2, char a3, char *a4)
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
    sub_2281CBF3C(0, &qword_27D823EE0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
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

char *sub_2281CA888(char *result, int64_t a2, char a3, char *a4)
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
    sub_2281CBCB4(0, &qword_27D824770, type metadata accessor for HKMedicationFreeTextFormTypeCode, MEMORY[0x277D84560]);
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

void *sub_2281CA9E4(void *result, int64_t a2, char a3, void *a4)
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
    sub_2281CBF3C(0, &qword_280DDB8C8, &type metadata for MedicationDoseLogMedicationItem, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2281CAB3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2281CBF3C(0, &qword_27D823E98, &type metadata for ScheduledDoseIdentifier, MEMORY[0x277D84560]);
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

void *sub_2281CAC60(void *result, int64_t a2, char a3, void *a4)
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
    sub_2281CBCB4(0, &qword_27D823EA8, sub_22819A174, MEMORY[0x277D84560]);
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

char *sub_2281CADAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2281CBF3C(0, &qword_27D824780, &type metadata for UserSelectableScheduleType, MEMORY[0x277D84560]);
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

char *sub_2281CAEC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2281CBF3C(0, &qword_27D824788, &type metadata for PauseUsePeriod, MEMORY[0x277D84560]);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void *sub_2281CAFE0(void *result, int64_t a2, char a3, void *a4)
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
    sub_2281CBF3C(0, &qword_27D823EC0, &type metadata for LoggableDose, MEMORY[0x277D83940]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2281CB120(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
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

char *sub_2281CB27C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2281CBF3C(0, &qword_27D8247D8, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
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

char *sub_2281CB3DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2281CBF3C(0, &qword_27D824778, &type metadata for ScheduleTypeOptionItem, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2281CB51C(void *result, int64_t a2, char a3, void *a4)
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

void *sub_2281CB668(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_2281CBCB4(0, a5, a6, MEMORY[0x277D84560]);
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

void (*sub_2281CB85C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AAB6D80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2281CC100;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2281CB8DC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AAB6D80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_2281CB95C;
  }

  __break(1u);
  return result;
}

void (*sub_2281CB964(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AAB6D80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2281CB9E4;
  }

  __break(1u);
  return result;
}

unint64_t sub_2281CB9EC@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x22AAB6D80](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t _s19HealthMedicationsUI16ScheduleListItemO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v6 = *a1;
      v7 = v2;
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    sub_2281CBC88(*a2, a2[1]);
    sub_2281CBC88(v3, v2);
    sub_2281CBC90(v3, v2);
    sub_2281CBC90(v5, v4);
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *a1;
  v7 = v2;
  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v11 = sub_228393460();
    sub_2281CBC88(v5, v4);
    sub_2281CBC88(v3, v2);
    sub_2281CBC90(v3, v2);
    sub_2281CBC90(v5, v4);
    return v11 & 1;
  }

LABEL_15:
  sub_2281CBC88(v6, v7);
  sub_2281CBC88(v3, v2);
  sub_2281CBC90(v3, v2);
  sub_2281CBC90(v3, v2);
  return 1;
}

void sub_2281CBCB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2281CBD18(uint64_t a1)
{
  if (!qword_27D823DF8)
  {
    sub_2281CBD9C(255, &qword_27D823E00, &qword_280DDB990, 0x277D75348, MEMORY[0x277CCB2C8]);
    v1 = sub_228392F00();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823DF8);
    }
  }
}

void sub_2281CBD9C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_2281CBE04()
{
  result = qword_27D8247A0;
  if (!qword_27D8247A0)
  {
    sub_2281CBCB4(255, &qword_27D824798, MEMORY[0x277CC8990], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8247A0);
  }

  return result;
}

uint64_t sub_2281CBECC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2281CBCB4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2281CBF3C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2281CBF8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeekdaysAndDosages(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281CBFF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2281CC050(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2281CC098(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2281CC17C()
{
  sub_2281CCB30(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = *(*(v0 + qword_27D824D88) + 24);
  sub_2281CC9A0(0);
  sub_2281CCBF4(&qword_27D824868, sub_2281CC9A0, MEMORY[0x277CBCE48]);

  sub_2283919F0();

  sub_2281CCBF4(&qword_27D824880, sub_2281CCB30, MEMORY[0x277CBCC08]);
  v6 = sub_228391990();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_2281CC334@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 24);
  if (v2 == 255)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2 & 1;
  }

  *a2 = v3;
  return result;
}

id sub_2281CC34C()
{
  v1 = qword_27D824828;
  v2 = *(v0 + qword_27D824828);
  if (v2)
  {
    v3 = *(v0 + qword_27D824828);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    [v4 setNumberStyle_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_2281CC3D4()
{
  sub_2281CC980(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = *(*&v0[qword_27D824D88] + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2281CCA58;
  *(v7 + 24) = v6;
  sub_2281CC9A0(0);
  sub_2281CCBF4(&qword_27D824868, sub_2281CC9A0, MEMORY[0x277CBCE48]);

  v8 = v0;
  sub_2283919A0();

  sub_2281CCBF4(&qword_27D824870, sub_2281CC980, MEMORY[0x277CBCB10]);
  v9 = sub_228391990();
  (*(v3 + 8))(v5, v2);
  return v9;
}

uint64_t sub_2281CC5E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a4 == 0xFF)
  {
    return 0;
  }

  if (a4)
  {
    if (a2)
    {
      v6 = a4;

      v9 = a3;
      v10 = sub_2281CC34C();
      v11 = sub_228391FC0();
      v12 = [v10 numberFromString_];
      sub_2281CCAC8(a1, a2, a3, v6);

      if (!v12)
      {
        v19 = 0;
        return v19 & 1;
      }
    }

    else
    {
      sub_2281CCAC8(a1, 0, a3, a4);
    }

    v19 = 1;
  }

  else
  {
    v17 = a4;
    swift_beginAccess();
    sub_2281CCAA4(a1, a2, a3, v17);

    v18 = sub_228390690();
    sub_2281CCAC8(a1, a2, a3, v17);

    v19 = v18 ^ 1;
  }

  return v19 & 1;
}

void sub_2281CC750(uint64_t a1)
{
  *(a1 + qword_27D824828) = 0;
  sub_228393300();
  __break(1u);
}

id sub_2281CC938(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2281CC9A0(uint64_t a1)
{
  if (!qword_27D824858)
  {
    sub_2281CCA08();
    v1 = sub_228391880();
    if (!v2)
    {
      atomic_store(v1, &qword_27D824858);
    }
  }
}

void sub_2281CCA08()
{
  if (!qword_27D824860)
  {
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824860);
    }
  }
}

uint64_t sub_2281CCA60@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  *a2 = result & 1;
  return result;
}

void sub_2281CCAA4(uint64_t result, uint64_t a2, void *a3, char a4)
{
  if (a4 != -1)
  {
    sub_2281CCABC(result, a2, a3, a4 & 1);
  }
}

void sub_2281CCABC(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {
    sub_2281A222C(a1, a2, a3);
  }

  else
  {
    v4 = a1;
  }
}

void sub_2281CCAC8(uint64_t result, uint64_t a2, void *a3, char a4)
{
  if (a4 != -1)
  {
    sub_2281CCAE0(result, a2, a3, a4 & 1);
  }
}

void sub_2281CCAE0(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {
    sub_2281CCAEC(a1, a2, a3);
  }

  else
  {
  }
}

void sub_2281CCAEC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

void sub_2281CCB50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    sub_2281CC9A0(255);
    v7 = v6;
    v8 = sub_2281CCBF4(&qword_27D824868, sub_2281CC9A0, MEMORY[0x277CBCE48]);
    v9 = a3(a1, v7, MEMORY[0x277D839B0], v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2281CCBF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MedicationHeaderDataSource(uint64_t a1)
{
  result = qword_27D824890;
  if (!qword_27D824890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2281CCD34()
{
  sub_2283903B0();

  return swift_deallocClassInstance();
}

unint64_t sub_2281CCD80()
{
  result = qword_27D8248A0;
  if (!qword_27D8248A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8248A0);
  }

  return result;
}

void *sub_2281CCDD4@<X0>(void *a1@<X8>)
{
  if (*(v1 + qword_27D824888))
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  else
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    v3 = sub_22838F0C0();
    v4 = v5;
  }

  type metadata accessor for MedicationSummaryCollectionViewHeaderCell();
  sub_2281CCF5C();
  v6 = sub_22838FBB0();
  v8 = v7;
  a1[3] = &type metadata for MedicationSummaryItem;
  a1[4] = sub_2281CCFB4();
  result = swift_allocObject();
  *a1 = result;
  result[2] = v3;
  result[3] = v4;
  result[4] = v6;
  result[5] = v8;
  return result;
}

uint64_t sub_2281CCF1C()
{
  type metadata accessor for MedicationSummaryCollectionViewHeaderCell();
  sub_2281CCF5C();
  return sub_2283926D0();
}

unint64_t sub_2281CCF5C()
{
  result = qword_27D8248A8;
  if (!qword_27D8248A8)
  {
    type metadata accessor for MedicationSummaryCollectionViewHeaderCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8248A8);
  }

  return result;
}

unint64_t sub_2281CCFB4()
{
  result = qword_27D8248B0;
  if (!qword_27D8248B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8248B0);
  }

  return result;
}

uint64_t type metadata accessor for NotificationFooterDataSource(uint64_t a1)
{
  result = qword_27D8248C0;
  if (!qword_27D8248C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2281CD0A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_228391630();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2283900D0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  sub_228390040();
  sub_228390000();
  v13 = *(v7 + 8);
  v13(v10, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D74D88], v2);
  sub_22838FFF0();
  v14 = sub_2283900C0();
  v13(v12, v6);
  return v14;
}

uint64_t sub_2281CD2D8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v4 = sub_22838F0C0();
  v6 = v5;
  v7 = *(v3 + qword_27D8248B8);
  type metadata accessor for SeparatorFooterCell();
  sub_2281CDF70();
  v8 = sub_22838FBB0();
  v10 = v9;
  a1[3] = &type metadata for SeparatorFooterItem;
  a1[4] = sub_2281CDFC4();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v4;
  *(result + 24) = v6;
  *(result + 32) = v7;
  *(result + 40) = v8;
  *(result + 48) = v10;
  return result;
}

uint64_t sub_2281CD3F0()
{
  type metadata accessor for SeparatorFooterCell();
  sub_2281CDF70();
  return sub_2283926C0();
}

uint64_t sub_2281CD42C()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_2281CD490(uint64_t a1)
{
  v2 = sub_2281CE0D0();

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_2281CD4DC()
{
  v1 = sub_228391590();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorFooterCell_item;
  swift_beginAccess();
  sub_22817E6C8(v0 + v5, v15);
  if (!v16)
  {
    return sub_22819482C(v15);
  }

  sub_22817A700();
  result = swift_dynamicCast();
  if (result)
  {
    v7 = v14[24];
    sub_228391560();

    sub_228391540();
    v8 = sub_2283914C0();
    *v9 = 0x4028000000000000;
    v8(v15, 0);
    v10 = sub_2283914C0();
    *(v11 + 16) = 0x4028000000000000;
    v10(v15, 0);
    v16 = v1;
    v17 = MEMORY[0x277D74C30];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
    (*(v2 + 16))(boxed_opaque_existential_1, v4, v1);
    MEMORY[0x22AAB6400](v15);
    sub_2281CD7DC();
    v13 = sub_2281CD708();

    [v13 setHidden_];

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

id sub_2281CD708()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorFooterCell____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorFooterCell____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorFooterCell____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D12A48]) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [objc_opt_self() separatorColor];
    [v4 setColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_2281CD7DC()
{
  v1 = v0;
  v2 = [v0 contentView];
  v3 = sub_2281CD708();
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v4 = sub_228392810();

  if ((v4 & 1) == 0)
  {
    v5 = [v1 contentView];
    v6 = OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorFooterCell____lazy_storage___separatorView;
    [v5 addSubview_];

    v7 = objc_opt_self();
    sub_228180ED0();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_228397F00;
    v9 = [*&v1[v6] heightAnchor];
    v10 = [v9 constraintEqualToConstant_];

    *(v8 + 32) = v10;
    v11 = [*&v1[v6] leadingAnchor];
    v12 = [v1 layoutMarginsGuide];
    v13 = [v12 leadingAnchor];

    v14 = [v11 constraintEqualToAnchor_];
    *(v8 + 40) = v14;
    v15 = [*&v1[v6] trailingAnchor];
    v16 = [v1 layoutMarginsGuide];
    v17 = [v16 trailingAnchor];

    v18 = [v15 constraintEqualToAnchor_];
    *(v8 + 48) = v18;
    v19 = [*&v1[v6] topAnchor];
    v20 = [v1 contentView];
    v21 = [v20 topAnchor];

    v22 = [v19 constraintEqualToAnchor_];
    *(v8 + 56) = v22;
    sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
    v23 = sub_228392190();

    [v7 activateConstraints_];
  }
}

id sub_2281CDC38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeparatorFooterCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2281CDCDC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorFooterCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2281CDD34(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorFooterCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2281CD4DC();
  return sub_22819482C(a1);
}

uint64_t (*sub_2281CDDA0(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2281CDE04;
}

uint64_t sub_2281CDE08@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorFooterCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a1);
}

uint64_t sub_2281CDE64(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorFooterCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v3 + v4);
  swift_endAccess();
  sub_2281CD4DC();
  return sub_22819482C(a1);
}

uint64_t (*sub_2281CDED4(uint64_t a1))()
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_2281CE16C;
}

uint64_t sub_2281CDF3C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_2281CD4DC();
  }

  return result;
}

unint64_t sub_2281CDF70()
{
  result = qword_27D8248E0;
  if (!qword_27D8248E0)
  {
    type metadata accessor for SeparatorFooterCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8248E0);
  }

  return result;
}

unint64_t sub_2281CDFC4()
{
  result = qword_27D8248E8;
  if (!qword_27D8248E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8248E8);
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

uint64_t sub_2281CE02C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2281CE074(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2281CE0D0()
{
  result = qword_27D8248F0;
  if (!qword_27D8248F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8248F0);
  }

  return result;
}

unint64_t sub_2281CE124()
{
  result = qword_27D8248F8;
  if (!qword_27D8248F8)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D8248F8);
  }

  return result;
}

uint64_t MedicationShape.previewConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v57 = sub_228390E20();
  v3 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v43 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228199E70(0);
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_228390FD0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228199F10(0);
  v54 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v47 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2283909E0();
  v44 = *(v15 - 8);
  v45 = v15;
  MEMORY[0x28223BE20](v15);
  v46 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2283909D0();
  v18 = *(v17 + 16);
  if (v18)
  {
    v38 = v11;
    v39 = v9;
    v40 = v8;
    v41 = v1;
    v42 = a1;
    v58 = MEMORY[0x277D84F90];
    v19 = v17;
    sub_2281C9E84(0, v18, 0);
    v20 = v58;
    v23 = *(v3 + 16);
    v22 = v3 + 16;
    v21 = v23;
    v24 = (*(v22 + 64) + 32) & ~*(v22 + 64);
    v37[1] = v19;
    v25 = v19 + v24;
    v26 = *(v22 + 56);
    v49 = (v22 + 16);
    v50 = (v13 + 56);
    v51 = v26;
    v52 = v23;
    v53 = v22;
    v48 = (v22 - 8);
    v27 = v43;
    do
    {
      v28 = v7;
      v29 = v57;
      v30 = v21;
      v21(v27, v25, v57);
      v31 = sub_228390E10();
      v32 = *(v56 + 48);
      if (v31)
      {
        v30(v28, v27, v29);
        v7 = v28;
        sub_2281AF0A0();
        sub_228392BC0();
        sub_228391E50();
        (*v48)(v27, v29);
        v33 = 0;
      }

      else
      {
        v7 = v28;
        (*v49)(v28, v27, v29);
        v33 = 1;
      }

      (*v50)(&v7[v32], v33, 1, v54);
      v58 = v20;
      v35 = *(v20 + 16);
      v34 = *(v20 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_2281C9E84((v34 > 1), v35 + 1, 1);
        v27 = v43;
        v20 = v58;
      }

      *(v20 + 16) = v35 + 1;
      sub_2281CE830(v7, v20 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v35);
      v21 = v52;
      v25 += v51;
      --v18;
    }

    while (v18);

    v1 = v41;
    v9 = v39;
    v8 = v40;
    v11 = v38;
  }

  else
  {
  }

  (*(v44 + 16))(v46, v1, v45);
  sub_2281AF0A0();
  sub_228392BB0();
  sub_228391E50();
  (*(v9 + 104))(v11, *MEMORY[0x277D11728], v8);
  return sub_228390D30();
}

id MedicationShape.shapeImage.getter()
{
  sub_2281CE894(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_228390D50();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MedicationShape.previewConfig.getter(v6);
  (*(v4 + 16))(v2, v6, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  v7 = sub_2281BF3D4(1, v2, 104.0, 104.0);
  sub_2281A9A08(v2);
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_2281CE830(uint64_t a1, uint64_t a2)
{
  sub_228199E70(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2281CE894(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t HKMedicationUserDomainConcept.medmojiConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2281D5084(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = [v2 userVisualizationConfigJSONString];
  if (v7)
  {
    v8 = v7;
    sub_228392000();

    sub_228390CE0();
    v9 = sub_228390D50();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v6, 1, v9) != 1)
    {
      (*(v10 + 32))(a1, v6, v9);
      return (*(v10 + 56))(a1, 0, 1, v9);
    }

    sub_2281CEB7C(v6, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88], sub_2281D5084);
  }

  v11 = sub_228390D50();
  return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
}

uint64_t sub_2281CEB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_2281CEC00(uint64_t a1)
{
  result = sub_2281CEC28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2281CEC28()
{
  result = qword_280DDB9D8;
  if (!qword_280DDB9D8)
  {
    sub_22817A958(255, &qword_280DDB9E0, 0x277D115B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDB9D8);
  }

  return result;
}

uint64_t sub_2281CECA4()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281D5084(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v80 - v10;
  v12 = sub_228390D50();
  MEMORY[0x28223BE20](v12);
  v15 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_viewModel);
  if (v15)
  {
    v81 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v82 = v9;
    v16 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_lastDoseLabelContainer);
    v17 = *(v15 + 32);
    v83 = v14;

    if (v17)
    {

      v18 = sub_228390910();

      v19 = v18 ^ 1;
    }

    else
    {
      v19 = 1;
    }

    [v16 setHidden_];

    sub_2281D3518(v28);
    sub_2281CFA50();
    v30 = v29;
    v31 = sub_228391FC0();
    [v30 setText_];

    v32 = sub_2281CFC3C();
    v33 = sub_228391FC0();

    [v32 setText_];

    v34 = sub_2281CFCF4();
    v35 = [*(v15 + 16) userSpecifiedNotes];
    [v34 setText_];

    v36 = sub_2281CFD14();
    v37 = *(v15 + 24);
    if (v37)
    {
      v38 = [v37 logOrigin] == 2;
    }

    else
    {
      v38 = *(v15 + 32) != 0;
    }

    [v36 setHidden_];

    v39 = [*(v15 + 16) userVisualizationConfigJSONString];
    if (v39)
    {
      v40 = v39;
      sub_228392000();

      sub_228390CE0();
      v41 = v83;
      if ((*(v83 + 48))(v11, 1, v12) == 1)
      {
        sub_2281CEB7C(v11, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88], sub_2281D5084);
      }

      else
      {
        v77 = v81;
        (*(v41 + 32))(v81, v11, v12);
        v78 = sub_2281CFC5C();
        v79 = v82;
        (*(v41 + 16))(v82, v77, v12);
        (*(v41 + 56))(v79, 0, 1, v12);
        sub_228390950();

        (*(v41 + 8))(v77, v12);
      }
    }

    v42 = [*(v15 + 16) userSpecifiedNotes];
    if (v42)
    {
      v43 = v42;
      sub_228392000();

      sub_2283920A0();
      v45 = v44;

      if (v45)
      {

        v46 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_contentView);
        if (v46)
        {
          v47 = v46;
          [v47 setSpacing_];
          v48 = sub_2281D0444();
          [v47 removeArrangedSubview_];

          v49 = sub_2281D02D4();
          [v47 addArrangedSubview_];

          v50 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___lowerSectionStackViewWithNotes;
          v51 = [*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___lowerSectionStackViewWithNotes) leadingAnchor];
          v52 = v47;
          v53 = [v52 &selRef_logTimeChanged_ + 1];
          v54 = [v51 constraintEqualToAnchor_];

          [v54 setActive_];
          v55 = [*(v1 + v50) trailingAnchor];
          v56 = [v52 trailingAnchor];

          v57 = [v55 constraintEqualToAnchor_];
          [v57 setActive_];

          v58 = sub_2281D07B8();
          v59 = [v58 heightAnchor];

          v60 = [v59 constraintEqualToConstant_];
          [v60 setActive_];

          v61 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___dividerView;
          v62 = [*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___dividerView) leadingAnchor];
          v63 = [*(v1 + v50) leadingAnchor];
          v64 = [v62 constraintEqualToAnchor_];

          [v64 setActive_];
          v65 = [*(v1 + v61) trailingAnchor];
          v66 = [*(v1 + v50) trailingAnchor];
          v67 = [v65 constraintEqualToAnchor_];

          [v67 setActive_];
          v68 = sub_2281D05A4();
          v69 = [v68 leadingAnchor];

          v70 = [*(v1 + v50) leadingAnchor];
          v71 = [v69 constraintEqualToAnchor_];

          [v71 setActive_];
          v72 = [*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___skippedTakenStackView) trailingAnchor];
          v73 = [*(v1 + v50) trailingAnchor];
          v74 = [v72 constraintEqualToAnchor_];

          [v74 setActive_];
        }
      }
    }

    sub_2281CF6A8();
    v75 = *(v15 + 48);
    if (v75 == 4)
    {
      v76 = 1;
    }

    else
    {
      v76 = 2 * (v75 == 5);
    }

    sub_2281D4CA8(v76);
  }

  else
  {
    sub_228391150();
    v20 = sub_2283911A0();
    v21 = sub_2283925C0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v84 = v23;
      *v22 = 136315138;
      v24 = sub_228393600();
      v26 = sub_2281C96FC(v24, v25, &v84);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_22816B000, v20, v21, "[%s] Couldn't load viewModel", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AAB7B80](v23, -1, -1);
      MEMORY[0x22AAB7B80](v22, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

void sub_2281CF6A8()
{
  sub_228392000();
  MEMORY[0x22AAB5C80](0x676F4C65736F442ELL, 0xE90000000000005BLL);
  v0 = sub_228393420();
  MEMORY[0x22AAB5C80](v0);

  MEMORY[0x22AAB5C80](93, 0xE100000000000000);
  sub_2281CFA50();
  v2 = v1;

  MEMORY[0x22AAB5C80](0x62614C656D614E2ELL, 0xEA00000000006C65);
  v3 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];

  v4 = sub_2281CFC3C();
  sub_2283931D0();

  MEMORY[0x22AAB5C80](0xD000000000000012, 0x80000002283AA310);
  v5 = sub_228391FC0();

  [v4 setAccessibilityIdentifier_];

  v6 = sub_2281CFCF4();

  MEMORY[0x22AAB5C80](0x614C7365746F4E2ELL, 0xEB000000006C6562);
  v7 = sub_228391FC0();

  [v6 setAccessibilityIdentifier_];

  v8 = sub_2281CFD14();
  sub_2283931D0();

  MEMORY[0x22AAB5C80](0x64657070696B532ELL, 0xEE006E6F74747542);
  v9 = sub_228391FC0();

  [v8 setAccessibilityIdentifier_];

  v10 = sub_2281CFE9C();

  MEMORY[0x22AAB5C80](0x75426E656B61542ELL, 0xEC0000006E6F7474);
  v11 = sub_228391FC0();

  [v10 setAccessibilityIdentifier_];

  v12 = sub_2281D0024();
  sub_2283931D0();

  MEMORY[0x22AAB5C80](0xD000000000000015, 0x80000002283AA330);
  v13 = sub_228391FC0();

  [v12 setAccessibilityIdentifier_];
}

void sub_2281CFA50()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medicationNameLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medicationNameLabel);
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v3 setAdjustsFontForContentSizeCategory_];
  [v3 setNumberOfLines_];
  v4 = [objc_opt_self() labelColor];
  [v3 setTextColor_];

  v5 = objc_opt_self();
  v6 = [v5 preferredFontForTextStyle_];
  v7 = [v6 fontDescriptor];
  v8 = [v7 fontDescriptorWithSymbolicTraits_];

  if (v8)
  {
    v9 = v8;
    [v6 pointSize];
    v10 = [v5 fontWithDescriptor:v9 size:?];

    [v3 setFont_];
    [v3 setNumberOfLines_];
    [v3 setLineBreakMode_];

    v11 = *(v0 + v1);
    *(v0 + v1) = v3;
    v3;

    v2 = 0;
LABEL_4:
    v12 = v2;
    return;
  }

  __break(1u);
}

id sub_2281CFC5C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medmojiImageView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medmojiImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medmojiImageView);
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

id sub_2281CFD14()
{
  v1 = v0;
  sub_2281D5084(0, &qword_280DDB950, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___skippedButton;
  v6 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___skippedButton);
  if (v6)
  {
    v7 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___skippedButton);
  }

  else
  {
    v8 = [objc_opt_self() buttonWithType_];
    sub_2281D1ADC(0, 0xD000000000000023, 0x80000002283A87B0, 0xD000000000000011, 0x80000002283A8180);
    v9 = sub_228392DE0();
    (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
    sub_228392E10();
    v10 = *(v1 + v5);
    *(v1 + v5) = v8;
    v7 = v8;

    v6 = 0;
  }

  v11 = v6;
  return v7;
}

id sub_2281CFE9C()
{
  v1 = v0;
  sub_2281D5084(0, &qword_280DDB950, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___takenButton;
  v6 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___takenButton);
  if (v6)
  {
    v7 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___takenButton);
  }

  else
  {
    v8 = [objc_opt_self() buttonWithType_];
    sub_2281D1ADC(0, 0xD000000000000021, 0x80000002283A87E0, 0xD000000000000015, 0x80000002283AA250);
    v9 = sub_228392DE0();
    (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
    sub_228392E10();
    v10 = *(v1 + v5);
    *(v1 + v5) = v8;
    v7 = v8;

    v6 = 0;
  }

  v11 = v6;
  return v7;
}

id sub_2281D0044(uint64_t *a1, uint64_t (*a2)(void))
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

id sub_2281D00C4()
{
  sub_2281D548C(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228399D40;
  sub_2281CFA50();
  *(v0 + 32) = v1;
  *(v0 + 40) = sub_2281CFC3C();
  *(v0 + 48) = sub_2281D0024();
  v2 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v3 = sub_228392190();

  v4 = [v2 initWithArrangedSubviews_];

  [v4 setAxis_];
  [v4 setAlignment_];
  [v4 setDistribution_];
  [v4 setSpacing_];
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_228397F20;
  *(v5 + 32) = sub_2281CFC5C();
  *(v5 + 40) = v4;
  v6 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v7 = v4;
  v8 = sub_228392190();

  v9 = [v6 initWithArrangedSubviews_];

  [v9 setAxis_];
  [v9 setAlignment_];
  [v7 setDistribution_];
  [v9 setSpacing_];

  return v9;
}

id sub_2281D02F4()
{
  sub_2281D548C(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228399D40;
  *(v0 + 32) = sub_2281D07B8();
  *(v0 + 40) = sub_2281CFCF4();
  *(v0 + 48) = sub_2281D05A4();
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

id sub_2281D0464()
{
  sub_2281D548C(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228396260;
  *(v0 + 32) = sub_2281D05A4();
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

id sub_2281D05C4(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

id sub_2281D0628(void *a1)
{
  sub_2281D548C(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228397F20;
  *(v2 + 32) = sub_2281CFD14();
  *(v2 + 40) = sub_2281CFE9C();
  v3 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v4 = sub_228392190();

  v5 = [v3 initWithArrangedSubviews_];

  v6 = [a1 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  v8 = sub_2281D3E10(v7);
  [v5 setAxis_];
  [v5 setAlignment_];
  [v5 setDistribution_];
  [v5 setSpacing_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  return v5;
}

id sub_2281D07B8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___dividerView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___dividerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___dividerView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    v5 = [objc_opt_self() separatorColor];
    [v4 setBackgroundColor_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2281D0880()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228392050();

  v1 = sub_228391FC0();

  [v0 setText_];

  [v0 setNumberOfLines_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v2 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v3 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  return v0;
}

void sub_2281D0A40()
{
  v1 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_lastDoseLabelContainer];
  v2 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_lastDoseLabel];
  [v1 addSubview_];
  sub_2283928D0();
  [v2 hk:v1 alignConstraintsWithView:? insets:?];
  sub_2281D548C(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_228399D40;
  *(v3 + 32) = v1;
  v4 = v1;
  *(v3 + 40) = sub_2281D00A4();
  *(v3 + 48) = sub_2281D0444();
  v5 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v6 = sub_228392190();

  v7 = [v5 initWithArrangedSubviews_];

  v8 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_contentView;
  v9 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_contentView];
  *&v0[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_contentView] = v7;
  v10 = v7;

  if (v10)
  {
    [v10 setCustomSpacing:v4 afterView:8.0];
  }

  v11 = *&v0[v8];
  if (v11)
  {
    v12 = v11;
    [v12 setAxis_];
    [v12 setAlignment_];
    [v12 setDistribution_];
    [v12 setSpacing_];
    v13 = v12;
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];
    [v0 addSubview_];
    v62 = objc_opt_self();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_22839A460;
    v15 = [v13 topAnchor];
    v16 = [v0 topAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    *(v14 + 32) = v17;
    v18 = [v13 leadingAnchor];
    v19 = [v0 leadingAnchor];
    v20 = [v18 constraintEqualToAnchor_];

    *(v14 + 40) = v20;
    v21 = [v13 trailingAnchor];
    v22 = [v0 trailingAnchor];
    v23 = [v21 constraintEqualToAnchor_];

    *(v14 + 48) = v23;
    v24 = [v13 bottomAnchor];
    v25 = [v0 bottomAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    *(v14 + 56) = v26;
    v27 = sub_2281CFC5C();
    v28 = [v27 topAnchor];

    v29 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medicationStackView;
    v30 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medicationStackView] topAnchor];
    v31 = [v28 constraintEqualToAnchor:v30 constant:5.0];

    *(v14 + 64) = v31;
    v32 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medmojiImageView;
    v33 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medmojiImageView] leadingAnchor];
    v34 = [*&v0[v29] leadingAnchor];
    v35 = [v33 constraintEqualToAnchor_];

    *(v14 + 72) = v35;
    v36 = [*&v0[v32] widthAnchor];
    v37 = [v36 constraintEqualToConstant_];

    *(v14 + 80) = v37;
    v38 = [*&v0[v32] heightAnchor];
    v39 = [*&v0[v32] widthAnchor];
    v40 = [v38 constraintEqualToAnchor_];

    *(v14 + 88) = v40;
    v41 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___lowerSectionStackView;
    v42 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___lowerSectionStackView] leadingAnchor];
    v43 = [v13 leadingAnchor];
    v44 = [v42 constraintEqualToAnchor_];

    *(v14 + 96) = v44;
    v45 = [*&v0[v41] trailingAnchor];
    v46 = [v13 trailingAnchor];

    v47 = [v45 constraintEqualToAnchor_];
    *(v14 + 104) = v47;
    v48 = sub_2281D05A4();
    v49 = [v48 leadingAnchor];

    v50 = [*&v0[v41] leadingAnchor];
    v51 = [v49 constraintEqualToAnchor_];

    *(v14 + 112) = v51;
    v52 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___skippedTakenStackView] trailingAnchor];
    v53 = [*&v0[v41] trailingAnchor];
    v54 = [v52 constraintEqualToAnchor_];

    *(v14 + 120) = v54;
    sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
    v55 = sub_228392190();

    [v62 activateConstraints_];

    v56 = sub_2281CFE9C();
    [v56 addTarget:v0 action:sel_didTapRecord_ forControlEvents:64];

    v57 = sub_2281CFD14();
    [v57 addTarget:v0 action:sel_didTapSkip_ forControlEvents:64];

    v58 = sub_2281D0024();
    [v58 addTarget:v0 action:sel_didTapUnitTime_ forControlEvents:64];

    sub_2281D5084(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_228397F40;
    v60 = sub_228391640();
    v61 = MEMORY[0x277D74DB8];
    *(v59 + 32) = v60;
    *(v59 + 40) = v61;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2281D5250();
    sub_228392B50();

    swift_unknownObjectRelease();
  }
}

void sub_2281D12B0(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    type metadata accessor for MedicationDoseLogMedicationView();
    if ((sub_228392820() & 1) == 0)
    {
      v6 = sub_2281D05A4();
      v7 = [a1 traitCollection];
      v8 = [v7 preferredContentSizeCategory];

      v9 = sub_2281D3E10(v8);
      [v6 setAxis_];

      v5 = v6;
    }
  }
}

void sub_2281D1390()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for MedicationDoseLogMedicationView();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  sub_2281D548C(0, &qword_27D8247D8, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228398270;
  v2 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_lastDoseLabelContainer];
  [v2 frame];
  v3 = MEMORY[0x277D85048];
  *(v1 + 56) = MEMORY[0x277D85048];
  *(v1 + 32) = v4;
  v5 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_lastDoseLabel];
  [v5 frame];
  *(v1 + 88) = v3;
  *(v1 + 64) = v6;
  v7 = [v5 font];
  if (v7)
  {
    v8 = v7;
    [v7 lineHeight];
    v10 = v9;

    *(v1 + 120) = v3;
    *(v1 + 96) = v10;
    sub_2283934F0();

    v11 = [v2 layer];
    v12 = [v5 font];
    if (v12)
    {
      v13 = v12;
      [v12 pointSize];
      v15 = v14;

      [v11 setCornerRadius_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_2281D1598(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_viewModel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_logDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___timeFormatter] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medicationNameLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___formStrengthLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medmojiImageView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___notesLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___skippedButton] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___takenButton] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___doseAmountTimeButton] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medicationStackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___lowerSectionStackViewWithNotes] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___lowerSectionStackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___skippedTakenStackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___dividerView] = 0;
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_lastDoseLabel;
  *&v4[v9] = sub_2281D0880();
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_lastDoseLabelContainer;
  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v12 = [objc_opt_self() systemGray3Color];
  [v11 setBackgroundColor_];

  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v10] = v11;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_contentView] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for MedicationDoseLogMedicationView();
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  sub_2281D0A40();

  return v13;
}

void sub_2281D17C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_viewModel);
  if (v1)
  {
    if (*(v1 + 48) == 5)
    {
      v2 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus);
      if ((v2 - 1) >= 2)
      {
        v2 = 6;
      }
    }

    else
    {
      v2 = 5;
    }

    *(v1 + 48) = v2;
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_2282D3BD8(v1);
      swift_unknownObjectRelease();
    }

    v4 = *(v1 + 48);
    if (v4 == 4)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2 * (v4 == 5);
    }

    sub_2281D4CA8(v5);
  }
}

void sub_2281D18C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_viewModel);
  if (v1)
  {
    if (*(v1 + 48) == 4)
    {
      v2 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus);
      if ((v2 - 1) >= 2)
      {
        v2 = 6;
      }
    }

    else
    {
      v2 = 4;
    }

    *(v1 + 48) = v2;
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_2282D3BD8(v1);
      swift_unknownObjectRelease();
    }

    v4 = *(v1 + 48);
    if (v4 == 4)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2 * (v4 == 5);
    }

    sub_2281D4CA8(v5);
  }
}

uint64_t sub_2281D19BC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_228392F90();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return __swift_destroy_boxed_opaque_existential_0(v9);
}

void sub_2281D1ADC(char a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v48 = a4;
  v50 = a2;
  v51 = a3;
  sub_2281D5084(0, &unk_280DDCDC8, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v48 - v7;
  v8 = sub_22838F0D0();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v49 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - v11;
  v13 = sub_228392D80();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_228392CC0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_228392DC0();
  }

  else
  {
    sub_228392DD0();
  }

  (*(v18 + 104))(v20, *MEMORY[0x277D74FC8], v17);
  sub_228392CD0();
  (*(v14 + 104))(v16, *MEMORY[0x277D75030], v13);
  sub_228392CB0();
  if (a1)
  {
    v21 = objc_opt_self();
    v22 = *MEMORY[0x277D76918];
    v23 = [v21 preferredFontForTextStyle_];
    v24 = [objc_opt_self() configurationWithFont:v23 scale:2];

    v25 = sub_228391FC0();
    v26 = [objc_opt_self() systemImageNamed_];

    if (v26)
    {
      v27 = [v26 imageWithConfiguration_];
    }

    sub_228392D90();
    sub_228392D10();
    sub_228392CE0();
  }

  else
  {
    v28 = [objc_opt_self() systemBlueColor];
    sub_228392D60();
    v22 = *MEMORY[0x277D76918];
  }

  v29 = v12;
  v30 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  LODWORD(v31) = 1036831949;
  [v30 setHyphenationFactor_];
  v32 = objc_opt_self();
  v33 = [v32 preferredFontForTextStyle_];
  v34 = [v33 fontDescriptor];

  v35 = [v34 fontDescriptorWithSymbolicTraits_];
  if (v35)
  {
    v36 = [v32 fontWithDescriptor:v35 size:0.0];
    sub_2281D5084(0, &qword_280DDB880, sub_2281D50E8, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_228397F30;
    v38 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v39 = sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    *(inited + 40) = v36;
    v40 = *MEMORY[0x277D74118];
    *(inited + 64) = v39;
    *(inited + 72) = v40;
    *(inited + 104) = sub_22817A958(0, &qword_280DDBA00, 0x277D74240);
    *(inited + 80) = v30;
    v41 = v38;
    v48 = v36;
    v42 = v40;
    v43 = v30;
    sub_2281A859C(inited);
    swift_setDeallocating();
    sub_2281D50E8(0);
    swift_arrayDestroy();
    sub_22838F0F0();
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    v45 = v53;
    v44 = v54;
    (*(v53 + 16))(v49, v29, v54);
    v46 = v52;
    sub_22838F0B0();
    v47 = sub_22838F0A0();
    (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
    sub_228392D30();

    (*(v45 + 8))(v29, v44);
  }

  else
  {
    __break(1u);
  }
}

id sub_2281D232C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell____lazy_storage___logView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell____lazy_storage___logView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell____lazy_storage___logView);
  }

  else
  {
    type metadata accessor for MedicationDoseLogMedicationView();
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

uint64_t sub_2281D23B4()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2281D5084(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30[-v7];
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v9], v31);
  if (v32)
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    if (swift_dynamicCast())
    {
      if (*(&v33 + 1))
      {
        sub_2281D3334(&v33, v36);
        v10 = sub_2281D232C();
        v11 = sub_2281CFC5C();

        v12 = v37;
        v13 = *(v37 + 16);

        v14 = v13;
        HKMedicationUserDomainConcept.medmojiConfiguration.getter(v8);

        sub_228390950();
        v15 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell____lazy_storage___logView;
        v16 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell____lazy_storage___logView];
        *&v16[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_viewModel] = v12;

        v17 = v16;

        sub_2281CECA4();

        v18 = *&v1[v15];
        swift_unknownObjectWeakLoadStrong();
        v19 = v38;
        v20 = v18;
        sub_22819A258(v36);
        *&v20[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_logDelegate + 8] = v19;
        swift_unknownObjectWeakAssign();

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
    }
  }

  else
  {
    sub_22819482C(v31);
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
  }

  sub_2281CEB7C(&v33, &unk_27D8249B8, &type metadata for MedicationDoseLogMedicationItem, MEMORY[0x277D83D88], sub_2281D548C);
  sub_228391150();
  v22 = v1;
  v23 = sub_2283911A0();
  v24 = sub_2283925C0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v33 = v26;
    *v25 = 136315138;
    sub_22817E6C8(&v1[v9], v36);
    sub_2281AEAE8(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], MEMORY[0x277D83D88]);
    v27 = sub_228392040();
    v29 = sub_2281C96FC(v27, v28, &v33);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_22816B000, v23, v24, "Incorrect view model for MedicationDoseLogMedicationItem: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x22AAB7B80](v26, -1, -1);
    MEMORY[0x22AAB7B80](v25, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

char *sub_2281D27DC(double a1, double a2, double a3, double a4)
{
  v9 = sub_228391590();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281D5084(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v34 - v14;
  v16 = sub_2283913A0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell____lazy_storage___logView] = 0;
  v20 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell_item];
  v21 = type metadata accessor for MedicationDoseLogMedicationCell();
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 4) = 0;
  v35.receiver = v4;
  v35.super_class = v21;
  v22 = objc_msgSendSuper2(&v35, sel_initWithFrame_, a1, a2, a3, a4);
  sub_228391390();
  sub_228391360();
  v23 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  sub_228391370();
  (*(v17 + 16))(v15, v19, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  MEMORY[0x22AAB6420](v15);
  v24 = [v22 contentView];
  v25 = sub_2281D232C();
  [v24 addSubview_];

  sub_228391520();
  sub_2283914D0();
  v27 = v26;
  (*(v10 + 8))(v12, v9);
  v28 = *&v22[OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell____lazy_storage___logView];
  v29 = [v22 contentView];

  [v28 hk:v29 alignConstraintsWithView:v27 insets:{v27, v27, v27}];
  v30 = sub_2281D2C24();
  if (v30)
  {
    v31 = v30;
    type metadata accessor for UILayoutPriority(0);
    v34[1] = 1065353216;
    v34[2] = 1148846080;
    sub_2281D5154(&qword_280DDBAE0, type metadata accessor for UILayoutPriority, MEMORY[0x277D74E40]);
    sub_2283911C0();
    LODWORD(v32) = v34[3];
    [v31 setPriority_];
  }

  else
  {
  }

  (*(v17 + 8))(v19, v16);
  return v22;
}

void *sub_2281D2C24()
{
  v0 = sub_2281D232C();
  v1 = [v0 constraints];

  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v2 = sub_2283921A0();

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x22AAB6D80](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 firstAttribute] == 4)
      {

        return v6;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

id sub_2281D2E94(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2281D2F4C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2281D2FA4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2281D23B4();
  return sub_22819482C(a1);
}

uint64_t (*sub_2281D3010(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2281D3074;
}

uint64_t sub_2281D3074(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_2281D23B4();
  }

  return result;
}

uint64_t sub_2281D30A8()
{
  sub_228393520();
  sub_2283920B0();
  sub_228300540();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_2281D3114(uint64_t a1)
{
  sub_2283920B0();
  sub_228300540();
  sub_2283920B0();
}

uint64_t sub_2281D3170(uint64_t a1)
{
  sub_228393520();
  sub_2283920B0();
  sub_228300540();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_2281D31D8()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_2281D320C()
{
  sub_2283931D0();

  v0 = sub_228300540();
  MEMORY[0x22AAB5C80](v0);

  return 0xD000000000000016;
}

uint64_t sub_2281D328C(uint64_t a1)
{
  v2 = sub_2281D519C();

  return MEMORY[0x282169440](a1, v2);
}

unint64_t sub_2281D32E0()
{
  result = qword_280DDCD30;
  if (!qword_280DDCD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDCD30);
  }

  return result;
}

uint64_t sub_2281D336C(void *a1, uint64_t *a2)
{
  v2 = sub_228392000();
  v4 = v3;
  if (v2 == sub_228392000() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_228393460();
  }

  return v7 & 1;
}

uint64_t sub_2281D33FC()
{
  sub_2283931D0();

  v0 = sub_228300540();
  MEMORY[0x22AAB5C80](v0);

  sub_2283931D0();

  v1 = sub_228300540();
  MEMORY[0x22AAB5C80](v1);

  return 1;
}

uint64_t sub_2281D3518(uint64_t a1)
{
  v2 = 0xE000000000000000;
  v3 = *(a1 + 16);
  _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE8doseFormSSSgvg_0();

  v4 = *(a1 + 16);
  v5 = _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE8strengthSSSgvg_0();
  v7 = v6;

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v2 = v7;
  }

  v9 = [*(a1 + 16) userSpecifiedName];
  if (v9 && (v10 = v9, sub_228392000(), v10, v11 = sub_2283920A0(), v13 = v12, , v13))
  {

    sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
    sub_228390F00();
    v14 = *(a1 + 16);
    sub_228392A30();
    v16 = v15;

    if (!v16)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
    v11 = sub_228390F20();
    sub_2283920A0();
    if (v17)
    {

      goto LABEL_14;
    }
  }

LABEL_14:
  sub_2283920A0();
  if (v18)
  {

    sub_2283920A0();
    if (v19)
    {

      MEMORY[0x22AAB5C80](v8, v2);

      MEMORY[0x22AAB5C80](8236, 0xE200000000000000);
    }
  }

  return v11;
}

void sub_2281D3788()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setNumberOfLines_];
  v1 = objc_opt_self();
  v2 = [v1 labelColor];
  [v0 setTextColor_];

  v3 = [v1 secondaryLabelColor];
  [v0 setTextColor_];

  v4 = objc_opt_self();
  v5 = [v4 preferredFontForTextStyle_];
  v6 = [v5 fontDescriptor];
  v7 = [v6 fontDescriptorWithSymbolicTraits_];

  if (v7)
  {
    v8 = v7;
    [v5 pointSize];
    v9 = [v4 fontWithDescriptor:v8 size:?];

    [v0 setFont_];
    [v0 setNumberOfLines_];
    [v0 setLineBreakMode_];
    v10 = objc_opt_self();
    v11 = v0;
    v12 = [v10 mainScreen];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v33.origin.x = v14;
    v33.origin.y = v16;
    v33.size.width = v18;
    v33.size.height = v20;
    if (CGRectGetWidth(v33) >= 390.0)
    {
      v22 = [v10 mainScreen];
      [v22 bounds];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v34.origin.x = v24;
      v34.origin.y = v26;
      v34.size.width = v28;
      v34.size.height = v30;
      Width = CGRectGetWidth(v34);
      v21 = MEMORY[0x277D767F0];
      if (Width < 414.0)
      {
        v21 = MEMORY[0x277D767F8];
      }
    }

    else
    {
      v21 = MEMORY[0x277D76800];
    }

    v32 = *v21;
    [v11 setMaximumContentSizeCategory_];

    [v11 setLineBreakMode_];
  }

  else
  {
    __break(1u);
  }
}

id sub_2281D3AB0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setNumberOfLines_];
  v1 = objc_opt_self();
  v2 = [v1 labelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  v3 = [v1 secondaryLabelColor];
  [v0 setTextColor_];

  v4 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v5 = objc_opt_self();
  v6 = v0;
  v7 = [v5 mainScreen];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v20.origin.x = v9;
  v20.origin.y = v11;
  v20.size.width = v13;
  v20.size.height = v15;
  Width = CGRectGetWidth(v20);
  v17 = MEMORY[0x277D767F8];
  if (Width >= 414.0)
  {
    v17 = MEMORY[0x277D767F0];
  }

  v18 = *v17;
  [v6 setMaximumContentSizeCategory_];

  return v6;
}

BOOL sub_2281D3CBC()
{
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_22838F0C0();
  v0 = sub_2283920C0();

  if (v0 < 8)
  {
    v2 = sub_2283920C0();

    return v2 > 7;
  }

  else
  {

    return 1;
  }
}

uint64_t sub_2281D3E10(uint64_t a1)
{
  sub_2281D5084(0, &qword_280DDB878, type metadata accessor for UIContentSizeCategory, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  v51 = xmmword_22839A470;
  *(inited + 16) = xmmword_22839A470;
  v3 = *MEMORY[0x277D76808];
  v4 = *MEMORY[0x277D76800];
  v5 = MEMORY[0x277D767F8];
  *(inited + 32) = *MEMORY[0x277D76808];
  *(inited + 40) = v4;
  v6 = *v5;
  v7 = *MEMORY[0x277D767F0];
  *(inited + 48) = *v5;
  *(inited + 56) = v7;
  v8 = *MEMORY[0x277D767E8];
  *(inited + 64) = *MEMORY[0x277D767E8];
  v53 = inited;
  v9 = v3;
  v10 = v4;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  LOBYTE(v6) = sub_2281D3CBC();
  v14 = objc_opt_self();
  v15 = [v14 mainScreen];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v54.origin.x = v17;
  v54.origin.y = v19;
  v54.size.width = v21;
  v54.size.height = v23;
  Width = CGRectGetWidth(v54);
  if (v6)
  {
    if (Width < 414.0)
    {

      return 1;
    }

    v26 = swift_initStackObject();
    *(v26 + 16) = v51;
    v30 = *MEMORY[0x277D76840];
    v31 = *MEMORY[0x277D76838];
    *(v26 + 32) = *MEMORY[0x277D76840];
    *(v26 + 40) = v31;
    v32 = *MEMORY[0x277D76828];
    v33 = *MEMORY[0x277D76820];
    *(v26 + 48) = *MEMORY[0x277D76828];
    *(v26 + 56) = v33;
    v28 = *MEMORY[0x277D76818];
    *(v26 + 64) = *MEMORY[0x277D76818];
    v34 = v30;
    v35 = v31;
    v36 = v32;
    v37 = v33;
    goto LABEL_9;
  }

  if (Width < 390.0)
  {
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_228397F30;
    v27 = *MEMORY[0x277D76820];
    v28 = *MEMORY[0x277D76818];
    *(v26 + 32) = *MEMORY[0x277D76820];
    *(v26 + 40) = v28;
    v29 = v27;
LABEL_9:
    v48 = v28;
    v47 = sub_2281D5988(v26);
    goto LABEL_10;
  }

  v38 = [v14 mainScreen];
  [v38 bounds];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v55.origin.x = v40;
  v55.origin.y = v42;
  v55.size.width = v44;
  v55.size.height = v46;
  if (CGRectGetWidth(v55) < 414.0)
  {
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_228397F40;
    v28 = *MEMORY[0x277D76818];
    *(v26 + 32) = *MEMORY[0x277D76818];
    goto LABEL_9;
  }

LABEL_10:
  v52 = a1;
  MEMORY[0x28223BE20](v47);
  v50[2] = &v52;
  v49 = sub_2283088F8(sub_2281D52B4, v50, v53);

  return v49 & 1;
}

void sub_2281D4178()
{
  v0 = sub_228392DE0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v38 - v5;
  v7 = objc_opt_self();
  v8 = [v7 preferredFontForTextStyle_];
  v9 = [v8 fontDescriptor];
  v10 = [v9 fontDescriptorWithSymbolicTraits_];

  if (v10)
  {
    v11 = v10;
    [v8 pointSize];
    v12 = [v7 fontWithDescriptor:v11 size:?];

    v13 = [objc_opt_self() configurationWithFont:v12 scale:1];
    sub_228392DA0();
    v14 = [objc_opt_self() tertiaryLabelColor];
    sub_228392D60();
    sub_228392CF0();
    v15 = sub_228391FC0();
    v16 = [objc_opt_self() systemImageNamed_];

    v39 = v13;
    if (v16)
    {
      v17 = [v16 imageWithConfiguration_];
    }

    sub_228392D90();
    sub_228392D10();
    sub_228392CE0();
    sub_22817A958(0, &unk_280DDB940, 0x277D75220);
    (*(v1 + 16))(v4, v6, v0);
    v18 = sub_228392DF0();
    v19 = [v18 titleLabel];
    if (v19)
    {
      v20 = v19;
      v21 = v11;
      [v8 pointSize];
      v22 = [v7 fontWithDescriptor:v21 size:?];

      [v20 setFont_];
    }

    [v18 setContentHorizontalAlignment_];
    v23 = [v18 titleLabel];
    [v23 setNumberOfLines_];

    v24 = objc_opt_self();
    v25 = v18;
    v26 = [v24 mainScreen];
    [v26 bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v40.origin.x = v28;
    v40.origin.y = v30;
    v40.size.width = v32;
    v40.size.height = v34;
    Width = CGRectGetWidth(v40);
    v36 = MEMORY[0x277D76800];
    if (Width >= 414.0)
    {
      v36 = MEMORY[0x277D767F8];
    }

    v37 = *v36;
    [v25 setMaximumContentSizeCategory_];

    (*(v1 + 8))(v6, v0);
  }

  else
  {
    __break(1u);
  }
}

id sub_2281D460C(uint64_t a1)
{
  v2 = sub_22838F440();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53[0] = *(a1 + 16);
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v51 = sub_228390AB0();
  v52 = v6;
  v7 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v7 setDateStyle_];
  [v7 setTimeStyle_];
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
  *&v49 = a1;
  swift_beginAccess();
  v9 = *(v3 + 16);
  v10 = a1 + v8;
  v11 = v2;
  v9(v5, v10, v2);
  v12 = sub_22838F380();
  v13 = *(v3 + 8);
  v13(v5, v2);
  v14 = [v7 stringFromDate_];

  v48 = sub_228392000();
  v50 = v15;

  v16 = sub_228391FC0();
  v9(v5, v49 + v8, v11);
  v17 = sub_22838F380();
  v13(v5, v11);
  v47 = v7;
  v18 = [v7 hm:v16 localizableTimeStringKeyWithPrefix:v17 date:?];

  sub_228392000();
  v20 = v19;

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_2281AEAE8(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v21 = swift_allocObject();
  v49 = xmmword_228397F30;
  *(v21 + 16) = xmmword_228397F30;
  v22 = MEMORY[0x277D837D0];
  *(v21 + 56) = MEMORY[0x277D837D0];
  v23 = sub_22818E210();
  v24 = v52;
  *(v21 + 32) = v51;
  *(v21 + 40) = v24;
  *(v21 + 96) = v22;
  *(v21 + 104) = v23;
  v25 = v48;
  *(v21 + 64) = v23;
  *(v21 + 72) = v25;
  *(v21 + 80) = v50;

  v26 = sub_22838F0C0();
  v27 = *(v21 + 16);
  v46[1] = v20;
  if (v27)
  {
    v51 = sub_228391FD0();
  }

  else
  {
    v51 = v26;
  }

  v28 = objc_opt_self();
  v29 = [v28 preferredFontForTextStyle_];
  v30 = [v29 fontDescriptor];
  v31 = [v30 fontDescriptorWithSymbolicTraits_];

  sub_2281D5084(0, &qword_280DDB880, sub_2281D50E8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = v49;
  v33 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 systemBlueColor];
  result = sub_22817A958(0, &qword_280DDB990, 0x277D75348);
  *(inited + 40) = v36;
  v38 = *MEMORY[0x277D740A8];
  *(inited + 64) = result;
  *(inited + 72) = v38;
  if (v31)
  {
    v39 = v38;
    v40 = v31;

    [v29 pointSize];
    v41 = [v28 fontWithDescriptor:v40 size:?];

    *(inited + 104) = sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    *(inited + 80) = v41;
    sub_2281A859C(inited);
    swift_setDeallocating();
    sub_2281D50E8(0);
    swift_arrayDestroy();
    v42 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v43 = sub_228391FC0();

    type metadata accessor for Key(0);
    sub_2281D5154(&qword_280DDBA40, type metadata accessor for Key, &unk_22839759C);
    v44 = sub_228391F10();

    v45 = [v42 initWithString:v43 attributes:v44];

    return v45;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2281D4CA8(unsigned __int8 a1)
{
  sub_2281D5084(0, &qword_280DDB950, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - v4;
  if (*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_viewModel))
  {

    v6 = sub_2281D460C(v37);
    v7 = sub_2281D0024();
    v38 = v6;
    [v7 setAttributedTitle:v6 forState:0];

    v8 = sub_2281CFE9C();
    v36 = "$__lazy_storage_$_closeButton";
    v9 = a1;
    v10 = a1 != 1 && a1 == 2;
    sub_2281D1ADC(v9 == 1, 0xD000000000000021, 0x80000002283A87E0, 0xD000000000000015, 0x80000002283AA250);
    v11 = sub_228392DE0();
    v12 = *(*(v11 - 8) + 56);
    v12(v5, 0, 1, v11);
    sub_228392E10();

    v13 = sub_2281CFD14();
    sub_2281D1ADC(v10, 0xD000000000000023, 0x80000002283A87B0, 0xD000000000000011, v36 | 0x8000000000000000);
    v12(v5, 0, 1, v11);
    sub_228392E10();

    v14 = sub_2281D05A4();
    if (sub_2281D3CBC())
    {
      v15 = [objc_opt_self() mainScreen];
      [v15 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v40.origin.x = v17;
      v40.origin.y = v19;
      v40.size.width = v21;
      v40.size.height = v23;
      Width = CGRectGetWidth(v40);
      v25 = MEMORY[0x277D76800];
      if (Width < 414.0)
      {
        v25 = MEMORY[0x277D76808];
      }
    }

    else
    {
      v25 = MEMORY[0x277D767F8];
    }

    v26 = *v25;
    [v14 setMaximumContentSizeCategory_];

    v27 = v37;
    v28 = [*(v37 + 16) userSpecifiedName];
    if (v28)
    {
      v29 = v28;
      sub_228392000();

      sub_2283920A0();
      v31 = v30;

      if (v31)
      {

        v39 = *(v27 + 16);
        sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
        sub_228390F00();
        if (v32)
        {
          sub_2283920A0();
          v34 = v33;

          if (v34)
          {

            v35 = sub_2281CFC3C();
            [v35 setNumberOfLines_];
          }
        }
      }
    }
  }
}

void sub_2281D5084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2281D50E8(uint64_t a1)
{
  if (!qword_280DDBA20)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DDBA20);
    }
  }
}

uint64_t sub_2281D5154(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2281D519C()
{
  result = qword_280DDCD38;
  if (!qword_280DDCD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDCD38);
  }

  return result;
}

unint64_t sub_2281D51F0()
{
  result = qword_27D8249C0;
  if (!qword_27D8249C0)
  {
    sub_2281810DC(255, &qword_27D8250A0, MEMORY[0x277D74B60]);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27D8249C0);
  }

  return result;
}

unint64_t sub_2281D5250()
{
  result = qword_27D8249D0;
  if (!qword_27D8249D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D8249D0);
  }

  return result;
}

void sub_2281D52D4()
{
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_viewModel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_logDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___timeFormatter) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medicationNameLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___formStrengthLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medmojiImageView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___notesLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___skippedButton) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___takenButton) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___doseAmountTimeButton) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___medicationStackView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___lowerSectionStackViewWithNotes) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___lowerSectionStackView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___skippedTakenStackView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView____lazy_storage___dividerView) = 0;
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_lastDoseLabel;
  *(v0 + v1) = sub_2281D0880();
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_lastDoseLabelContainer;
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4 = [objc_opt_self() systemGray3Color];
  [v3 setBackgroundColor_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v2) = v3;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI31MedicationDoseLogMedicationView_contentView) = 0;
  sub_228393300();
  __break(1u);
}

void sub_2281D548C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

char *sub_2281D54DC(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_228198390(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_2281D5624(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_22819886C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v7 + 32], v6 + 32, v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2281D5738(uint64_t result, uint64_t (*a2)(void), unint64_t *a3, uint64_t a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v6 = result;
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_22818217C(0, a3, a4, 1);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, v5);
  v14 = v12 + v5;
  if (!v13)
  {
    *(v6 + 16) = v14;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2281D5890(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_2283930D0();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_2283930D0();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2281D7998(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_2281D5988(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_228198DD0(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for UIContentSizeCategory(0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2281D5AB0(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_228199404(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_2282668C4(&v45, &v4[32 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_49:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v48 = v23;
          v49 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v45;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v6 = *(v4 + 2);
  v13 = v46;
  v14 = v47;
  v2 = v48;
  v44 = v46;
  v41 = v47;
  if (!v49)
  {
    goto LABEL_19;
  }

  v19 = (v49 - 1) & v49;
  v20 = __clz(__rbit64(v49)) | (v48 << 6);
  v21 = (v47 + 64) >> 6;
LABEL_27:
  v43 = result;
  v26 = (result[6] + 32 * v20);
  v28 = *v26;
  v27 = v26[1];
  v30 = v26[2];
  v29 = v26[3];

  v31 = v44;
LABEL_29:
  while (1)
  {
    v32 = *(v4 + 3);
    v33 = v32 >> 1;
    if ((v32 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v33)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v6;
  }

  v39 = sub_228199404((v32 > 1), v6 + 1, 1, v4);
  v31 = v44;
  v4 = v39;
  v33 = *(v39 + 3) >> 1;
  if (v6 >= v33)
  {
    goto LABEL_28;
  }

LABEL_31:
  v42 = v33;
  while (1)
  {
    v34 = &v4[32 * v6 + 32];
    *v34 = v28;
    *(v34 + 1) = v27;
    *(v34 + 2) = v30;
    *(v34 + 3) = v29;
    ++v6;
    if (!v19)
    {
      break;
    }

    result = v43;
LABEL_39:
    v37 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v38 = (result[6] + ((v2 << 11) | (32 * v37)));
    v28 = *v38;
    v27 = v38[1];
    v30 = v38[2];
    v29 = v38[3];

    v31 = v44;
    if (v6 == v42)
    {
      v6 = v42;
      *(v4 + 2) = v42;
      goto LABEL_29;
    }
  }

  v35 = v2;
  result = v43;
  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v36 >= v21)
    {
      break;
    }

    v19 = *(v31 + 8 * v36);
    ++v35;
    if (v19)
    {
      v2 = v36;
      goto LABEL_39;
    }
  }

  if (v21 <= v2 + 1)
  {
    v40 = v2 + 1;
  }

  else
  {
    v40 = v21;
  }

  v47 = v41;
  v48 = v40 - 1;
  v49 = 0;
  *(v4 + 2) = v6;
LABEL_13:
  result = sub_228176F04(result);
  *v1 = v4;
  return result;
}