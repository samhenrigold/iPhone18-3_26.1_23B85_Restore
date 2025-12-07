id InteractionSummaryContentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionSummaryContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22834E1C4(void *a1, uint64_t a2, void *a3)
{
  v13[0] = a3;
  v13[1] = a1;
  sub_22834E3E0(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22817A958(0, &unk_280DDBAA0, 0x277CCA898);
  sub_228180ED0();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_228396260;
  sub_22817A958(0, &qword_280DDB990, 0x277D75348);
  v7 = objc_opt_self();
  v8 = [v7 systemBlackColor];
  v9 = [v7 systemWhiteColor];
  v10 = sub_228392B90();

  *(v6 + 32) = v10;
  v11 = sub_228392800();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);

  [v7 labelColor];
  v13[0];
  return sub_2283927F0();
}

void sub_22834E3E0(uint64_t a1)
{
  if (!qword_27D825628)
  {
    sub_228392800();
    v1 = sub_228392F00();
    if (!v2)
    {
      atomic_store(v1, &qword_27D825628);
    }
  }
}

uint64_t MedicationDetailsDataSource.init(with:healthStore:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = qword_27D828258;
  *(v3 + qword_27D828258) = 0;
  *(v3 + qword_27D828260) = MEMORY[0x277D84FA0];
  *(v3 + qword_27D828268) = a2;
  *(v3 + v6) = a1;
  sub_228390EA0();
  swift_allocObject();
  v7 = a2;

  *(v3 + qword_27D828270) = sub_228390E90();
  sub_228391870();
  v8 = [v18 localizedOntologyEducationContent];
  if (v8)
  {
    v9 = v8;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    sub_22838FA70();
    v11 = v10;

    if (v11)
    {
    }
  }

  else
  {
  }

  sub_228391870();
  v12 = [v18 localizedOntologyEducationContent];
  if (v12)
  {
    v13 = v12;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    sub_22838FA90();
    v15 = v14;

    if (v15)
    {
    }
  }

  else
  {
  }

  sub_228391020();
  swift_allocObject();
  *(v3 + qword_27D828278) = sub_228390FF0();
  v16 = sub_22838F920();

  sub_22834EA9C(a1);

  return v16;
}

uint64_t MedicationDetailsDataSource.init(with:)(void *a1)
{
  v2 = v1;
  v4 = sub_22838F4A0();
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + qword_27D828258) = 0;
  *(v1 + qword_27D828260) = MEMORY[0x277D84FA0];
  v7 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  *(v2 + qword_27D828268) = v7;
  sub_228390EA0();
  swift_allocObject();
  v8 = v7;
  *(v2 + qword_27D828270) = sub_228390E90();
  sub_228391020();
  swift_allocObject();
  *(v2 + qword_27D828278) = sub_228390FF0();
  v9 = MEMORY[0x277D84560];
  sub_228350130(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  sub_22838FEF0();
  v10 = swift_allocObject();
  v18 = xmmword_228397F40;
  *(v10 + 16) = xmmword_228397F40;
  sub_228350130(0, &qword_27D823918, sub_228182780, v9);
  v11 = swift_allocObject();
  *(v11 + 16) = v18;
  sub_228180FB0(a1, v21);
  v12 = type metadata accessor for MedicationDetailsCardItem(0);
  *(v11 + 56) = v12;
  *(v11 + 64) = sub_22834EEBC(&unk_27D825030, type metadata accessor for MedicationDetailsCardItem, &protocol conformance descriptor for MedicationDetailsCardItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v11 + 32));
  sub_22838F490();
  v14 = (boxed_opaque_existential_1 + *(v12 + 28));
  type metadata accessor for MedicationDetailsCardCell();
  sub_22834EEBC(&unk_27D824FB0, type metadata accessor for MedicationDetailsCardCell, &protocol conformance descriptor for MedicationDetailsCardCell);
  *v14 = sub_22838FBB0();
  v14[1] = v15;
  sub_22816DFFC(v21, boxed_opaque_existential_1);
  *(boxed_opaque_existential_1 + *(v12 + 24)) = 0;
  sub_22838F490();
  sub_22838F450();
  (*(v19 + 8))(v6, v20);
  sub_22838FED0();
  v16 = sub_22838F920();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v16;
}

uint64_t sub_22834EA9C(uint64_t a1)
{
  v22 = a1;
  sub_228350130(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  sub_22834FF4C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22834FFF8(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  sub_2281A65B4(0);
  type metadata accessor for MedicationDetailsDataProvider(0);
  sub_22834EEBC(&qword_27D8241C0, sub_2281A65B4, MEMORY[0x277CBCE48]);
  sub_2283919F0();
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v15 = sub_228392790();
  v23 = v15;
  v16 = sub_228392730();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  sub_22834EEBC(&qword_27D8282A8, sub_22834FF4C, MEMORY[0x277CBCC08]);
  sub_2281A1504();
  sub_228391A70();
  sub_2281A16F0(v4);

  (*(v7 + 8))(v9, v6);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v19 = v22;
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  sub_22834EEBC(&qword_27D8282B0, sub_22834FFF8, MEMORY[0x277CBCD60]);

  sub_228391AC0();

  (*(v12 + 8))(v14, v11);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_22834EEBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22834EF04@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_228350130(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v29 = *a1;
  v7 = v29;
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v28 = sub_228390F20();
  v9 = v8;
  v10 = sub_2283929A0();
  v12 = v11;
  v13 = _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE8strengthSSSgvg_0();
  v15 = v14;
  _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
  v16 = [v7 userSpecifiedNotes];
  if (v16)
  {
    v17 = v16;
    v18 = sub_228392000();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = 0xE000000000000000;
  if (v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  if (v15)
  {
    v23 = v13;
  }

  else
  {
    v23 = 0;
  }

  *a2 = v28;
  a2[1] = v9;
  if (v12)
  {
    v21 = v12;
    v24 = v10;
  }

  else
  {
    v24 = 0;
  }

  a2[2] = v24;
  a2[3] = v21;
  a2[4] = v23;
  a2[5] = v22;
  v25 = type metadata accessor for MedicationDetailsDataProvider(0);
  result = sub_2281AA8D4(v6, a2 + *(v25 + 28));
  v27 = (a2 + *(v25 + 32));
  *v27 = v18;
  v27[1] = v20;
  return result;
}

uint64_t sub_22834F0AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22838F4A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = v4;

    sub_22838F910();

    v21 = sub_22838FCD0();

    v8 = MEMORY[0x277D84560];
    sub_228350130(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
    v9 = *(sub_22838FEF0() - 8);
    v19 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v10 = swift_allocObject();
    v18 = xmmword_228397F40;
    *(v10 + 16) = xmmword_228397F40;
    sub_228350130(0, &qword_27D823918, sub_228182780, v8);
    v11 = swift_allocObject();
    *(v11 + 16) = v18;
    v24 = type metadata accessor for MedicationDetailsDataProvider(0);
    v25 = &protocol witness table for MedicationDetailsDataProvider;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
    sub_2283500CC(a1, boxed_opaque_existential_1);
    sub_228391870();
    v13 = v22;
    v14 = type metadata accessor for MedicationDetailsCardItem(0);
    *(v11 + 56) = v14;
    *(v11 + 64) = sub_22834EEBC(&unk_27D825030, type metadata accessor for MedicationDetailsCardItem, &protocol conformance descriptor for MedicationDetailsCardItem);
    v15 = __swift_allocate_boxed_opaque_existential_1((v11 + 32));
    sub_22838F490();
    v16 = (v15 + *(v14 + 28));
    type metadata accessor for MedicationDetailsCardCell();
    sub_22834EEBC(&unk_27D824FB0, type metadata accessor for MedicationDetailsCardCell, &protocol conformance descriptor for MedicationDetailsCardCell);
    *v16 = sub_22838FBB0();
    v16[1] = v17;
    sub_22816DFFC(&v23, v15);
    *(v15 + *(v14 + 24)) = v13;
    sub_22838F490();
    sub_22838F450();
    (*(v20 + 8))(v6, v3);
    sub_22838FED0();
    sub_22838FF50();
  }

  return result;
}

uint64_t sub_22834F440(uint64_t a1, uint64_t a2)
{
  v3 = sub_2283900D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_228390040();
  }

  else
  {
    sub_228390010();
  }

  v7 = sub_2283900C0();
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_22834F560()
{
}

uint64_t MedicationDetailsDataSource.deinit(uint64_t a1)
{
  v1 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  return v1;
}

uint64_t MedicationDetailsDataSource.__deallocating_deinit(uint64_t a1)
{
  v1 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall MedicationDetailsDataSource.registerCells(for:)(UICollectionView *a1)
{
  sub_228390120();
  sub_2283926D0();
  sub_228390420();
  sub_2283926D0();
  type metadata accessor for MedicationDetailsCardCell();
  sub_22834EEBC(&unk_27D824FB0, type metadata accessor for MedicationDetailsCardCell, &protocol conformance descriptor for MedicationDetailsCardCell);
  sub_2283926B0();
}

uint64_t sub_22834F7E8()
{
  sub_228390120();
  sub_2283926D0();
  sub_228390420();
  sub_2283926D0();
  type metadata accessor for MedicationDetailsCardCell();
  sub_22834EEBC(&unk_27D824FB0, type metadata accessor for MedicationDetailsCardCell, &protocol conformance descriptor for MedicationDetailsCardCell);
  return sub_2283926B0();
}

uint64_t MedicationDetailsDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_228391590();
  MEMORY[0x28223BE20](v3 - 8);
  if (*(v1 + qword_27D828258))
  {

    sub_228391870();

    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_22838F0C0();
    swift_allocObject();
    swift_weakInit();

    sub_228391500();
    v4 = sub_22838FB60();
    swift_allocObject();
    v5 = sub_22838FB50();
  }

  else
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_228391500();
    v4 = sub_22838FB60();
    swift_allocObject();
    v5 = sub_22838FB50();
  }

  a1[3] = v4;
  result = sub_22834EEBC(&qword_27D823960, MEMORY[0x277D10E18], MEMORY[0x277D10E08]);
  a1[4] = result;
  *a1 = v5;
  return result;
}

void sub_22834FBCC(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(Strong + qword_27D828258))
    {

      sub_228391870();

      sub_228390FE0();

      v5 = *(v4 + qword_27D828268);
      v6 = objc_allocWithZone(type metadata accessor for MedicationDetailEditViewController(0));
      v7 = v5;
      v8 = v13;
      v9 = sub_2283293A4(v7, v8);

      v10 = [a1 viewController];
      if (v10)
      {
        v11 = v10;
        v12 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
        [v12 setModalPresentationStyle_];
        [v12 setModalInPresentation_];
        [v11 presentViewController:v12 animated:1 completion:0];
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t type metadata accessor for MedicationDetailsDataSource(uint64_t a1)
{
  result = qword_27D828288;
  if (!qword_27D828288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22834FF4C(uint64_t a1)
{
  if (!qword_27D828298)
  {
    sub_2281A65B4(255);
    type metadata accessor for MedicationDetailsDataProvider(255);
    sub_22834EEBC(&qword_27D8241C0, sub_2281A65B4, MEMORY[0x277CBCE48]);
    v1 = sub_228391740();
    if (!v2)
    {
      atomic_store(v1, &qword_27D828298);
    }
  }
}

void sub_22834FFF8(uint64_t a1)
{
  if (!qword_27D8282A0)
  {
    sub_22834FF4C(255);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_22834EEBC(&qword_27D8282A8, sub_22834FF4C, MEMORY[0x277CBCC08]);
    sub_2281A1504();
    v1 = sub_2283917D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8282A0);
    }
  }
}

uint64_t sub_2283500CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationDetailsDataProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_228350130(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22835030C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  [v2 setNumberOfLines_];
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v4 = sub_228391FC0();

  [v2 setText_];

  if ([objc_opt_self() isAppleInternalInstall])
  {
    sub_22838F0C0();
    v5 = sub_228391FC0();

    [v2 setText_];
  }

  [v2 setTextAlignment_];
  v27 = v2;
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v0 contentView];
  [v6 addSubview_];

  v7 = [v0 contentView];
  v8 = v1;
  [v7 addSubview_];

  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = objc_opt_self();
  sub_228180ED0();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_228397F00;
  v11 = [v8 centerYAnchor];

  v12 = [v0 contentView];
  v13 = [v12 centerYAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(v10 + 32) = v14;
  v15 = [v8 centerXAnchor];

  v16 = [v0 contentView];
  v17 = [v16 centerXAnchor];

  v18 = [v15 constraintEqualToAnchor_];
  *(v10 + 40) = v18;
  v19 = [v27 topAnchor];
  v20 = [v8 bottomAnchor];

  v21 = [v19 constraintEqualToAnchor:v20 constant:8.0];
  *(v10 + 48) = v21;
  v22 = [v27 centerXAnchor];

  v23 = [v0 contentView];
  v24 = [v23 centerXAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  *(v10 + 56) = v25;
  sub_2281BF1B8();
  v26 = sub_228392190();

  [v9 activateConstraints_];

  [v8 startAnimating];
}

id sub_228350820(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ShardSpinnerDownloadCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_228350888@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI24ShardSpinnerDownloadCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2283508E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI24ShardSpinnerDownloadCell_item;
  swift_beginAccess();
  sub_22817A680(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_2283509C4()
{
  type metadata accessor for ShardSpinnerDownloadCell();
  sub_228350AD4(&qword_27D8239D8, type metadata accessor for ShardSpinnerDownloadCell, &unk_2283A56A4);
  return sub_22838FBB0();
}

uint64_t sub_228350A28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t sub_228350AD4(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t HistoryDisplayContext.hashValue.getter()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](v1);
  return sub_228393570();
}

unint64_t sub_228350BAC()
{
  result = qword_27D8282C0;
  if (!qword_27D8282C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8282C0);
  }

  return result;
}

void sub_228350C6C()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = objc_opt_self();
  v4 = &selRef_secondarySystemBackgroundColor;
  if (v2 != 2)
  {
    v4 = &selRef_systemBackgroundColor;
  }

  v5 = [v3 *v4];
  [v0 setBackgroundColor_];

  v6 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  [v6 setContentMode_];
  [v0 addSubview_];
  [v6 hk:v0 alignCenterConstraintsWithView:?];
  v7 = [v0 heightAnchor];
  v8 = [v0 widthAnchor];
  v10 = [v7 constraintEqualToAnchor_];

  LODWORD(v9) = 1148846080;
  [v10 setPriority_];
  [v10 setActive_];
}

void sub_228350ED0(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SymbolWithPlatterView();
  objc_msgSendSuper2(&v8, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceStyle];

  v5 = objc_opt_self();
  v6 = &selRef_secondarySystemBackgroundColor;
  if (v4 != 2)
  {
    v6 = &selRef_systemBackgroundColor;
  }

  v7 = [v5 *v6];
  [v1 setBackgroundColor_];
}

id sub_228351038(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SymbolWithPlatterView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for MedicationLogDetailsDataSource(uint64_t a1)
{
  result = qword_27D8282D8;
  if (!qword_27D8282D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2283510EC(uint64_t a1)
{
  result = type metadata accessor for MedicationLogDetailsHeaderItem(319);
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

void *sub_2283511A8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t *sub_2283511E4@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_22835120C(unint64_t a1, uint64_t a2)
{
  v4 = sub_2283900D0();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = *(v2 + qword_27D8282D0);
  if (*(v9 + 16) <= a1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (*(v9 + a1 + 32))
  {
    sub_228390040();
  }

  else
  {
    sub_228390010();
  }

  v10 = sub_2283900C0();
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_22835135C()
{
  sub_2282BDBBC(v0 + qword_27D829088);

  sub_22818B730(v0 + qword_27D829098);
}

uint64_t sub_2283513BC()
{
  v0 = sub_22838FFB0();
  v1 = qword_27D829088;

  sub_2282BDBBC(v2 + v1);

  sub_22818B730(v0 + qword_27D829098);

  return swift_deallocClassInstance();
}

unint64_t sub_2283514CC()
{
  result = qword_27D8282F8;
  if (!qword_27D8282F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8282F8);
  }

  return result;
}

uint64_t sub_228351550(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2283515A0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2283515A0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_228392240();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2283515F0()
{
  result = qword_27D828310;
  if (!qword_27D828310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D828310);
  }

  return result;
}

uint64_t sub_228351668()
{
  type metadata accessor for MedicationLogDetailsUnitCell();
  sub_2283519DC(&qword_27D8272F8, type metadata accessor for MedicationLogDetailsUnitCell, &unk_22839C700);
  sub_2283926B0();
  type metadata accessor for MedicationLogDetailsTimeCell();
  sub_2283519DC(&qword_27D828320, type metadata accessor for MedicationLogDetailsTimeCell, &unk_22839EEA8);
  sub_2283926B0();
  type metadata accessor for MedicationLogDetailsTimePickerCell();
  sub_2283519DC(&qword_27D827308, type metadata accessor for MedicationLogDetailsTimePickerCell, &unk_2283985F4);
  sub_2283926B0();
  type metadata accessor for MedicationLogDetailsHeader();
  sub_2283519DC(&qword_27D828328, type metadata accessor for MedicationLogDetailsHeader, &unk_2283A1E48);
  sub_2283926D0();
  sub_228390300();
  return sub_2283926C0();
}

uint64_t sub_2283517E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *v3;
  if (sub_228392000() == a1 && v7 == a2)
  {
  }

  else
  {
    v9 = sub_228393460();

    if ((v9 & 1) == 0)
    {
      a3[3] = sub_22838FC00();
      a3[4] = sub_2283519DC(&qword_27D823958, MEMORY[0x277D10EC8], MEMORY[0x277D10EC0]);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_22838FBF0();
    }
  }

  v11 = qword_27D829088;
  a3[3] = type metadata accessor for MedicationLogDetailsHeaderItem(0);
  a3[4] = sub_2283519DC(&qword_27D827208, type metadata accessor for MedicationLogDetailsHeaderItem, &unk_2283A1D80);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);

  return sub_2282C567C(v6 + v11, boxed_opaque_existential_1);
}

uint64_t sub_2283519DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_228351A24(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v5 = sub_22838F4A0();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v33 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v2 + qword_27D829098;
  *(v2 + qword_27D829098 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + qword_27D8282D0) = &unk_283B66BC8;
  v34 = v2;
  sub_2282C567C(a2, v2 + qword_27D829088);
  *(v2 + qword_27D829090) = a1;
  sub_228241A58(0, &qword_280DDB8D0, &qword_280DDCD60, MEMORY[0x277D10D48]);
  inited = swift_initStackObject();
  v30 = xmmword_228397F40;
  *(inited + 16) = xmmword_228397F40;
  v9 = type metadata accessor for MedicationLogDetailsTimeItem(0);
  *(inited + 56) = v9;
  *(inited + 64) = sub_2283519DC(&qword_27D826128, type metadata accessor for MedicationLogDetailsTimeItem, &unk_22839EFC8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  swift_retain_n();
  sub_22838F490();
  v11 = (boxed_opaque_existential_1 + *(v9 + 24));
  type metadata accessor for MedicationLogDetailsTimeCell();
  sub_2283519DC(&qword_27D828320, type metadata accessor for MedicationLogDetailsTimeCell, &unk_22839EEA8);
  *v11 = sub_22838FBB0();
  v11[1] = v12;
  *(boxed_opaque_existential_1 + *(v9 + 20)) = a1;
  sub_22819F3B0(0);
  v13 = *(sub_22838FEF0() - 8);
  v31 = *(v13 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v32 = v15;
  *(v15 + 16) = xmmword_228397F30;
  v29[1] = v15 + v14;
  sub_228241A58(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40]);
  v16 = swift_allocObject();
  *(v16 + 16) = v30;
  swift_unknownObjectWeakLoadStrong();
  v17 = *(v7 + 8);
  v18 = type metadata accessor for MedicationLogDetailsUnitItem(0);
  *(v16 + 56) = v18;
  *(v16 + 64) = sub_2283519DC(&qword_27D8254B0, type metadata accessor for MedicationLogDetailsUnitItem, &unk_22839C830);
  v19 = __swift_allocate_boxed_opaque_existential_1((v16 + 32));

  sub_22838F490();
  v20 = v19 + v18[6];
  *(v20 + 1) = 0;
  swift_unknownObjectWeakInit();
  v21 = (v19 + v18[7]);
  type metadata accessor for MedicationLogDetailsUnitCell();
  sub_2283519DC(&qword_27D8272F8, type metadata accessor for MedicationLogDetailsUnitCell, &unk_22839C700);
  *v21 = sub_22838FBB0();
  v21[1] = v22;
  *(v19 + v18[5]) = a1;
  *(v20 + 1) = v17;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_22838FED0();
  sub_228194894(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((inited + 32));
  sub_22838FED0();
  v38[0] = 0;
  v38[1] = 0xE000000000000000;
  sub_2283931D0();

  strcpy(v38, "MutableArray<");
  HIWORD(v38[1]) = -4864;
  v23 = v33;
  sub_22838F490();
  v24 = sub_22838F450();
  v26 = v25;
  (*(v35 + 8))(v23, v36);
  MEMORY[0x22AAB5C80](v24, v26);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v27 = sub_22838FF30();
  sub_2282BDBBC(v37);
  return v27;
}

uint64_t MedicationChartCodableData.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22838F440();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MedicationChartCodableData.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MedicationChartCodableData(0) + 20);
  v4 = sub_22838F440();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MedicationChartCodableData(uint64_t a1)
{
  result = qword_280DDC3B0;
  if (!qword_280DDC3B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MedicationChartCodableData.statisticsInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MedicationChartCodableData(0) + 32);
  v4 = sub_22838F080();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_228352184()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x65746144646E65;
    if (v1 != 1)
    {
      v5 = 0x756F436E656B6174;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x7461447472617473;
    }
  }

  else
  {
    v2 = 0xD000000000000010;
    if (v1 != 5)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0x4364657070696B73;
    if (v1 != 3)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_228352280@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_228356D94(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2283522C0(uint64_t a1)
{
  v2 = sub_228352638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2283522FC(uint64_t a1)
{
  v2 = sub_228352638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MedicationChartCodableData.encode(to:)(void *a1)
{
  sub_228352D38(0, &qword_280DDB900, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_228352638();
  sub_2283935B0();
  v16 = 0;
  sub_22838F440();
  sub_22835268C(&qword_280DDCDC0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_2283933F0();
  if (!v1)
  {
    type metadata accessor for MedicationChartCodableData(0);
    v15 = 1;
    sub_2283933F0();
    v14 = 2;
    sub_2283933D0();
    v13 = 3;
    sub_2283933D0();
    v12 = 4;
    sub_22838F080();
    sub_22835268C(&qword_280DDCDD8, MEMORY[0x277CC8990], MEMORY[0x277CC8998]);
    sub_2283933F0();
    v11 = 5;
    sub_2283933E0();
    v10 = 6;
    sub_2283933E0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_228352638()
{
  result = qword_280DDC3E8;
  if (!qword_280DDC3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDC3E8);
  }

  return result;
}

uint64_t sub_22835268C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MedicationChartCodableData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_22838F080();
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_22838F440();
  v35 = *(v38 - 8);
  v7 = MEMORY[0x28223BE20](v38);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v36 = &v30 - v10;
  sub_228352D38(0, &qword_27D828330, MEMORY[0x277D844C8]);
  v39 = v11;
  v37 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = type metadata accessor for MedicationChartCodableData(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_228352638();
  v40 = v13;
  v17 = v41;
  sub_2283935A0();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v18 = v9;
  v31 = v6;
  v41 = v16;
  v48 = 0;
  sub_22835268C(&qword_27D828338, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v19 = v36;
  sub_2283933C0();
  v20 = v41;
  v21 = v19;
  v22 = v38;
  v36 = *(v35 + 32);
  (v36)(v41, v21, v38);
  v47 = 1;
  sub_2283933C0();
  (v36)(v20 + v14[5], v18, v22);
  v46 = 2;
  v23 = v39;
  v36 = 0;
  sub_2283933A0();
  *(v20 + v14[6]) = v24;
  v45 = 3;
  sub_2283933A0();
  v25 = v34;
  *(v20 + v14[7]) = v26;
  v44 = 4;
  sub_22835268C(&qword_27D828340, MEMORY[0x277CC8990], MEMORY[0x277CC89B0]);
  v27 = v33;
  sub_2283933C0();
  (*(v25 + 32))(v20 + v14[8], v31, v27);
  v43 = 5;
  *(v20 + v14[9]) = sub_2283933B0();
  v42 = 6;
  v28 = sub_2283933B0();
  (*(v37 + 8))(v40, v23);
  *(v20 + v14[10]) = v28;
  sub_228359AE8(v20, v32, type metadata accessor for MedicationChartCodableData);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2283595B0(v20, type metadata accessor for MedicationChartCodableData);
}

void sub_228352D38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_228352638();
    v7 = a3(a1, &type metadata for MedicationChartCodableData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_228352DCC()
{

  return swift_deallocClassInstance();
}

id MedicationChartDataSource.init(with:displayType:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationChartDataSource_encoder;
  sub_22838EEB0();
  swift_allocObject();
  *&v2[v6] = sub_22838EEA0();
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationChartDataSource_decoder;
  sub_22838EE80();
  swift_allocObject();
  *&v2[v7] = sub_22838EE70();
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationChartDataSource_sortDescriptors;
  sub_2281F8E18(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_228396260;
  sub_22817A958(0, &qword_280DDBAE8, 0x277CCAC98);
  swift_getKeyPath();
  *(v9 + 32) = sub_2283926A0();
  *&v2[v8] = v9;
  *&v2[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationChartDataSource_medication] = a1;
  v10 = objc_allocWithZone(MEMORY[0x277CCD4D8]);
  v11 = a1;
  v12 = [v10 init];
  v15.receiver = v3;
  v15.super_class = type metadata accessor for MedicationChartDataSource();
  v13 = objc_msgSendSuper2(&v15, sel_initWithDisplayType_healthStore_, a2, v12);

  return v13;
}

void sub_2283530A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  if (a1)
  {
    swift_beginAccess();
    *(a3 + 16) = a1;
  }

  else
  {
    swift_beginAccess();
    v10 = *(a4 + 16);
    *(a4 + 16) = a2;
    v11 = a2;
  }

  dispatch_group_leave(a5);
}

uint64_t sub_22835314C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(__int128 *, void), uint64_t a6)
{
  v69 = sub_2283911B0();
  v68 = *(v69 - 8);
  v12 = MEMORY[0x28223BE20](v69);
  v14 = &v63[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v63[-v15];
  swift_beginAccess();
  v17 = *(a1 + 16);
  if (v17 && (swift_beginAccess(), (v18 = *(a2 + 16)) != 0))
  {
    sub_2281F8E18(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_228397F20;
    *(v19 + 32) = v17;
    *(v19 + 40) = v18;
    sub_228359B50(0, &unk_280DDBB90, type metadata accessor for MedicationStatsContext, MEMORY[0x277D83940]);
    *(&v72 + 1) = v20;
    *&v71 = v19;
    swift_retain_n();
    swift_retain_n();
    a5(&v71, 0);
  }

  else
  {
    swift_beginAccess();
    v21 = *(a3 + 16);
    if (v21)
    {
      v22 = v21;
      sub_228391150();
      v23 = v21;
      v24 = a4;
      v25 = sub_2283911A0();
      v26 = sub_2283925C0();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *&v71 = v66;
        *v27 = 136446466;
        v28 = v24;
        v29 = [v28 description];
        v67 = a5;
        v30 = v29;
        v31 = sub_228392000();
        LODWORD(v65) = v26;
        v32 = v31;
        v34 = v33;

        v35 = sub_2281C96FC(v32, v34, &v71);

        *(v27 + 4) = v35;
        *(v27 + 12) = 2082;
        v70 = v21;
        v36 = v21;
        sub_228192C1C();
        v37 = sub_228392020();
        v39 = sub_2281C96FC(v37, v38, &v71);

        *(v27 + 14) = v39;
        a5 = v67;
        _os_log_impl(&dword_22816B000, v25, v65, "[%{public}s] Error executing statistics queries for dose event chart: %{public}s", v27, 0x16u);
        v40 = v66;
        swift_arrayDestroy();
        MEMORY[0x22AAB7B80](v40, -1, -1);
        MEMORY[0x22AAB7B80](v27, -1, -1);
      }

      else
      {
      }

      (*(v68 + 8))(v16, v69);
    }

    else
    {
      sub_228391150();
      v41 = a4;

      v42 = sub_2283911A0();
      v43 = sub_2283925C0();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *&v71 = v65;
        *v44 = 136446722;
        v45 = v41;
        v46 = [v45 description];
        v67 = a5;
        v47 = v46;
        v48 = sub_228392000();
        v66 = a6;
        v49 = v48;
        v64 = v43;
        v51 = v50;

        v52 = sub_2281C96FC(v49, v51, &v71);

        *(v44 + 4) = v52;
        *(v44 + 12) = 2082;
        swift_beginAccess();
        v70 = *(a1 + 16);
        sub_228359B50(0, &unk_27D8283A8, type metadata accessor for MedicationStatsContext, MEMORY[0x277D83D88]);

        v53 = sub_228392020();
        v55 = sub_2281C96FC(v53, v54, &v71);

        *(v44 + 14) = v55;
        *(v44 + 22) = 2082;
        swift_beginAccess();
        v70 = *(a2 + 16);

        v56 = sub_228392020();
        v58 = sub_2281C96FC(v56, v57, &v71);

        *(v44 + 24) = v58;
        a5 = v67;
        _os_log_impl(&dword_22816B000, v42, v64, "[%{public}s] Found a nil statistic without an error takenDoseEventStatsContext is nil: %{public}s, skippedDoseEventStatsContext is nil: %{public}s", v44, 0x20u);
        v59 = v65;
        swift_arrayDestroy();
        MEMORY[0x22AAB7B80](v59, -1, -1);
        MEMORY[0x22AAB7B80](v44, -1, -1);
      }

      (*(v68 + 8))(v14, v69);
    }

    v71 = 0u;
    v72 = 0u;
    swift_beginAccess();
    v60 = *(a3 + 16);
    v61 = v60;
    a5(&v71, v60);
  }

  return sub_228357114(&v71, &qword_280DDCE20, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2281F8E18);
}

void sub_228353904(uint64_t a1, void *a2, uint64_t a3)
{
  sub_2283596D8(a1, v11);
  v5 = v12;
  if (!v12)
  {
    v10 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = __swift_project_boxed_opaque_existential_0(v11, v12);
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = sub_228393450();
  (*(v7 + 8))(v9, v5);
  __swift_destroy_boxed_opaque_existential_0(v11);
  if (a2)
  {
LABEL_3:
    a2 = sub_22838F170();
  }

LABEL_4:
  (*(a3 + 16))(a3, v10, a2);
  swift_unknownObjectRelease();
}

uint64_t sub_228353A68(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t (*a7)(void, void), uint64_t a8)
{
  v65 = a8;
  v14 = sub_22838F080();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v56[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_2283911B0();
  v19 = MEMORY[0x28223BE20](v18);
  v66 = &v56[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    v63 = v20;
    v64 = v19;
    v22 = a3;
    sub_228391150();
    (*(v15 + 16))(v17, a5, v14);
    v23 = a3;
    v24 = a4;
    v25 = sub_2283911A0();
    v26 = sub_2283925C0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v61 = a2;
      v28 = v27;
      v59 = swift_slowAlloc();
      v68[0] = v59;
      *v28 = 136446978;
      v29 = v24;
      v30 = [v29 description];
      v58 = v25;
      v31 = v30;
      v32 = sub_228392000();
      v62 = a7;
      v33 = v32;
      v60 = a6;
      v57 = v26;
      v35 = v34;

      v36 = sub_2281C96FC(v33, v35, v68);
      a6 = v60;

      *(v28 + 4) = v36;
      *(v28 + 12) = 2082;
      sub_22835268C(&qword_27D8283B8, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
      v37 = sub_228393420();
      v39 = v38;
      (*(v15 + 8))(v17, v14);
      v40 = sub_2281C96FC(v37, v39, v68);

      *(v28 + 14) = v40;
      *(v28 + 22) = 2082;
      v67 = a6;
      type metadata accessor for LogStatus(0);
      v41 = sub_228392020();
      v43 = sub_2281C96FC(v41, v42, v68);

      *(v28 + 24) = v43;
      *(v28 + 32) = 2082;
      a7 = v62;
      v67 = a3;
      v44 = a3;
      sub_228192C1C();
      v45 = sub_228392020();
      v47 = sub_2281C96FC(v45, v46, v68);

      *(v28 + 34) = v47;
      v48 = v58;
      _os_log_impl(&dword_22816B000, v58, v57, "[%{public}s] Error querying for statistic collection query with date interval %{public}s with dose event status %{public}s: %{public}s", v28, 0x2Au);
      v49 = v59;
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v49, -1, -1);
      v50 = v28;
      a2 = v61;
      MEMORY[0x22AAB7B80](v50, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v17, v14);
    }

    (*(v63 + 8))(v66, v64);
  }

  if (!a2)
  {
    return a7(0, a3);
  }

  if (a6 == 4)
  {
    v51 = 0;
  }

  else
  {
    if (a6 != 5)
    {
      v68[0] = 0;
      v68[1] = 0xE000000000000000;
      v55 = a2;
      sub_2283931D0();
      MEMORY[0x22AAB5C80](0xD000000000000045, 0x80000002283B5A40);
      v67 = a6;
      type metadata accessor for LogStatus(0);
      sub_2283932A0();
      result = sub_228393300();
      __break(1u);
      return result;
    }

    v51 = 1;
  }

  type metadata accessor for MedicationStatsContext();
  v53 = swift_allocObject();
  *(v53 + 16) = a2;
  *(v53 + 24) = v51;
  v54 = a2;
  a7(v53, 0);
}

void sub_228353FB8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

id sub_228354058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v101 = a3;
  v111 = a1;
  v4 = sub_2283911B0();
  v103 = *(v4 - 8);
  v104 = v4;
  MEMORY[0x28223BE20](v4);
  v106 = v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_228359B50(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v110 = v100 - v8;
  v9 = sub_22838F440();
  v112 = *(v9 - 8);
  v113 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v102 = v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v100[0] = v100 - v12;
  v13 = sub_22838F6C0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v119 = v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228359B50(0, &unk_280DDCD70, MEMORY[0x277CC9A70], v6);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v100 - v17;
  sub_228359B50(0, &qword_280DDCD80, MEMORY[0x277CC99E8], v6);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v100 - v20;
  v22 = sub_22838F080();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v105 = v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = v100 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = v100 - v29;
  v114 = v14;
  v31 = *(v14 + 56);
  v120 = v13;
  v108 = v31;
  v31(v21, 1, 1, v13);
  v32 = sub_22838F700();
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v116 = v33 + 56;
  v107 = v34;
  v34(v18, 1, 1, v32);
  sub_22838F060();
  v117 = a2;
  LOBYTE(a2) = MEMORY[0x22AAB2B60](a2, v30);
  v121 = *(v23 + 8);
  v122 = v23 + 8;
  v121(v30, v22);
  v118 = v28;
  v109 = v23;
  if (a2)
  {
    v35 = v117;
    (*(v23 + 16))(v28, v117, v22);
    v36 = v22;
    v38 = v107;
    v37 = v108;
  }

  else
  {
    v39 = v108;
    v108(v21, 1, 1, v120);
    v38 = v107;
    v107(v18, 1, 1, v32);
    sub_22838F060();
    v35 = v117;
    v36 = v22;
    v37 = v39;
  }

  sub_22838F680();
  v37(v21, 1, 1, v120);
  v38(v18, 1, 1, v32);
  sub_22838F060();
  v40 = MEMORY[0x22AAB2B60](v35, v30);
  v121(v30, v36);
  sub_228359B50(0, &qword_280DDB8D8, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v41 = sub_22838F6A0();
  v42 = *(v41 - 8);
  v43 = *(v42 + 72);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v45 = (v42 + 104);
  v46 = 2 * v43;
  v115 = v36;
  v47 = swift_allocObject();
  if (v40)
  {
    *(v47 + 16) = xmmword_22839B440;
    v48 = v47 + v44;
    v49 = *v45;
    (*v45)(v48, *MEMORY[0x277CC9988], v41);
    v49(v48 + v43, *MEMORY[0x277CC9998], v41);
    v49(v48 + v46, *MEMORY[0x277CC9968], v41);
    v49(v48 + 3 * v43, *MEMORY[0x277CC9980], v41);
  }

  else
  {
    *(v47 + 16) = xmmword_228398270;
    v50 = v47 + v44;
    v51 = *v45;
    (*v45)(v50, *MEMORY[0x277CC9988], v41);
    v51(v50 + v43, *MEMORY[0x277CC9998], v41);
    v51(v50 + v46, *MEMORY[0x277CC9968], v41);
  }

  sub_2281EF358(v47);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v52 = v111;
  v53 = v119;
  sub_22838F5C0();

  v54 = v110;
  sub_22838F640();
  v55 = v115;
  v56 = v121;
  v121(v30, v115);
  v57 = v112;
  v58 = v113;
  v59 = (*(v112 + 48))(v54, 1, v113);
  v60 = v118;
  v61 = v109;
  if (v59 == 1)
  {
    sub_228357114(v54, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_228359B50);
    v62 = v106;
    sub_228391150();
    v63 = v102;
    v64 = v58;
    (*(v57 + 16))(v102, v52, v58);
    v65 = v105;
    (*(v61 + 16))(v105, v117, v55);
    v66 = v100[1];
    v67 = sub_2283911A0();
    v68 = sub_2283925C0();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v123[0] = v117;
      *v69 = 136446722;
      v70 = v63;
      v71 = v57;
      v72 = v66;
      v73 = [v72 description];
      v74 = sub_228392000();
      LODWORD(v116) = v68;
      v76 = v75;

      v77 = sub_2281C96FC(v74, v76, v123);

      *(v69 + 4) = v77;
      v78 = v67;
      *(v69 + 12) = 2082;
      sub_22835268C(&qword_27D8283D0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v79 = sub_228393420();
      v81 = v80;
      (*(v71 + 8))(v70, v64);
      v82 = sub_2281C96FC(v79, v81, v123);

      *(v69 + 14) = v82;
      *(v69 + 22) = 2082;
      sub_22835268C(&qword_27D8283B8, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
      v83 = v105;
      v84 = v115;
      v85 = sub_228393420();
      v87 = v86;
      v88 = v121;
      v121(v83, v84);
      v89 = sub_2281C96FC(v85, v87, v123);

      *(v69 + 24) = v89;
      _os_log_impl(&dword_22816B000, v78, v116, "[%{public}s] Could not generate anchor date for start date with statistic interval <%{public}s %{public}s>", v69, 0x20u);
      v90 = v117;
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v90, -1, -1);
      MEMORY[0x22AAB7B80](v69, -1, -1);

      (*(v103 + 8))(v106, v104);
      (*(v114 + 8))(v119, v120);
      v88(v118, v84);
    }

    else
    {

      v56(v65, v55);
      (*(v57 + 8))(v63, v64);
      (*(v103 + 8))(v62, v104);
      (*(v114 + 8))(v119, v120);
      v56(v118, v55);
    }

    return 0;
  }

  else
  {
    v91 = v100[0];
    (*(v57 + 32))(v100[0], v54, v58);
    sub_22817A958(0, &qword_280DDBB00, 0x277CCD8D8);
    v92 = v57;
    v93 = [swift_getObjCClassFromMetadata() medicationDoseEventType];
    v94 = v58;
    v95 = objc_allocWithZone(MEMORY[0x277CCDA60]);
    v96 = sub_22838F380();
    v97 = sub_22838EFB0();
    v98 = [v95 initWithSampleType:v93 samplePredicate:v101 options:16 anchorDate:v96 intervalComponents:v97];

    (*(v92 + 8))(v91, v94);
    (*(v114 + 8))(v53, v120);
    v121(v60, v55);
    return v98;
  }
}

void (*sub_228354F08(void *a1, void *a2, uint64_t a3, uint64_t a4))()
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x277D84F98];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a1;
  v13[6] = v11;
  v13[7] = ObjectType;
  v26[4] = sub_2283571B4;
  v26[5] = v13;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 1107296256;
  v26[2] = sub_228356058;
  v26[3] = &block_descriptor_38;
  v14 = _Block_copy(v26);

  v15 = a1;

  v16 = [v5 queriesForRequest:v15 completionHandler:v14];
  _Block_release(v14);
  sub_22817A958(0, &unk_280DDB9A0, 0x277CCD838);
  v17 = sub_2283921A0();

  if (v17 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v19 = 0;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x22AAB6D80](v19, v17);
      }

      else
      {
        if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      [a2 executeQuery_];

      ++v19;
      if (v22 == i)
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
  v23 = swift_allocObject();
  *(v23 + 16) = v17;
  *(v23 + 24) = a2;
  v24 = a2;

  return sub_2283571C4;
}

void sub_228355194(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5, unint64_t a6, uint64_t a7)
{
  v126 = a5;
  v127 = a4;
  v125 = a2;
  v10 = sub_22838EF60();
  v144 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22819A338(0);
  v135 = v13;
  v152 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = sub_22838F080();
  v122 = *(isUniquelyReferenced_nonNull_native - 8);
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v138 = v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_22838F440();
  v121 = *(v139 - 8);
  v18 = MEMORY[0x28223BE20](v139);
  v137 = v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v136 = v119 - v20;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v124 = Strong;
    sub_2283596D8(a1, v154);
    if (v155)
    {
      sub_228359B50(0, &unk_280DDBB90, type metadata accessor for MedicationStatsContext, MEMORY[0x277D83940]);
      if (swift_dynamicCast())
      {
        v22 = v153;
        if (v153 >> 62)
        {
          goto LABEL_93;
        }

        if (*((v153 & 0xFFFFFFFFFFFFFF8) + 0x10) == 2)
        {
          v134 = isUniquelyReferenced_nonNull_native;
          v129 = 2;
          while (1)
          {
            v132 = type metadata accessor for MedicationChartStatisticsFormatter();
            v23 = 0;
            v133 = v22 & 0xC000000000000001;
            v120 = v22 & 0xFFFFFFFFFFFFFF8;
            v119[1] = v22 + 32;
            v131 = (v122 + 8);
            v130 = (v121 + 8);
            v143 = v144 + 16;
            v146 = (v144 + 8);
            v147 = (v144 + 32);
            v123 = a6;
            v128 = v22;
            while (1)
            {
              if (v133)
              {
                v24 = MEMORY[0x22AAB6D80](v23, v22);
                v25 = __OFADD__(v23, 1);
                v26 = v23 + 1;
                if (v25)
                {
                  break;
                }

                goto LABEL_16;
              }

              if (v23 >= *(v120 + 16))
              {
                goto LABEL_92;
              }

              v25 = __OFADD__(v23, 1);
              v26 = v23 + 1;
              if (v25)
              {
                break;
              }

LABEL_16:
              v142 = v26;
              v27 = *(v24 + 16);
              v141 = v24;
              v151 = *(v24 + 24);
              v28 = v27;
              v29 = [a6 startDate];
              v30 = v136;
              sub_22838F3E0();

              v31 = [a6 endDate];
              v32 = v137;
              sub_22838F3E0();

              v33 = [a6 statisticsInterval];
              v34 = v138;
              sub_22838EFD0();

              v140 = v28;
              v35 = sub_2281EF074(v30, v32, v34, v28);
              v36 = v34;
              v37 = v35;
              (*v131)(v36, v134);
              v22 = v130;
              v38 = *v130;
              v39 = v32;
              isUniquelyReferenced_nonNull_native = v139;
              (*v130)(v39, v139);
              v38(v30, isUniquelyReferenced_nonNull_native);
              v150 = *(v37 + 2);
              if (v150)
              {
                v40 = 0;
                v41 = *(v135 + 48);
                v148 = &v37[(*(v152 + 80) + 32) & ~*(v152 + 80)];
                v149 = v41;
                v145 = v37;
                while (1)
                {
                  if (v40 >= *(v37 + 2))
                  {
                    __break(1u);
LABEL_83:
                    __break(1u);
LABEL_84:
                    __break(1u);
LABEL_85:
                    __break(1u);
LABEL_86:
                    __break(1u);
LABEL_87:
                    __break(1u);
LABEL_88:
                    __break(1u);
LABEL_89:
                    __break(1u);
LABEL_90:
                    __break(1u);
                    goto LABEL_91;
                  }

                  sub_228359AE8(&v148[*(v152 + 72) * v40], v15, sub_22819A338);
                  v43 = *&v15[v149];
                  (*v147)(v12, v15, v10);
                  a6 = *(v43 + 16);
                  if (!a6)
                  {
                    v45 = 0.0;
                    goto LABEL_31;
                  }

                  if (a6 <= 3)
                  {
                    break;
                  }

                  v44 = a6 & 0x7FFFFFFFFFFFFFFCLL;
                  v46 = (v43 + 48);
                  v45 = 0.0;
                  v47 = a6 & 0x7FFFFFFFFFFFFFFCLL;
                  do
                  {
                    v45 = v45 + *(v46 - 2) + *(v46 - 1) + *v46 + v46[1];
                    v46 += 4;
                    v47 -= 4;
                  }

                  while (v47);
                  if (a6 != v44)
                  {
                    goto LABEL_29;
                  }

LABEL_31:

                  swift_beginAccess();
                  v51 = *(a7 + 16);
                  v52 = *(v51 + 16);
                  if (v151)
                  {
                    if (!v52 || (v53 = sub_2281A7B7C(v12), (v54 & 1) == 0))
                    {
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v153 = *(a7 + 16);
                      v22 = v153;
                      *(a7 + 16) = 0x8000000000000000;
                      v77 = sub_2281A7B7C(v12);
                      v79 = *(v22 + 16);
                      v80 = (v78 & 1) == 0;
                      v25 = __OFADD__(v79, v80);
                      v81 = v79 + v80;
                      if (v25)
                      {
                        goto LABEL_83;
                      }

                      v82 = v78;
                      if (*(v22 + 24) >= v81)
                      {
                        if (isUniquelyReferenced_nonNull_native)
                        {
                          goto LABEL_49;
                        }

                        isUniquelyReferenced_nonNull_native = v77;
                        sub_22829B90C();
                        v77 = isUniquelyReferenced_nonNull_native;
                        v22 = v153;
                        if ((v82 & 1) == 0)
                        {
                          goto LABEL_68;
                        }

LABEL_50:
                        v84 = *(v22 + 56) + 32 * v77;
                        *v84 = 0;
                        *(v84 + 8) = 0;
                        *(v84 + 16) = v45;
                        *(v84 + 24) = a6;
                      }

                      else
                      {
                        sub_22829A8D8(v81, isUniquelyReferenced_nonNull_native);
                        v77 = sub_2281A7B7C(v12);
                        if ((v82 & 1) != (v83 & 1))
                        {
                          goto LABEL_100;
                        }

LABEL_49:
                        v22 = v153;
                        if (v82)
                        {
                          goto LABEL_50;
                        }

LABEL_68:
                        *(v22 + 8 * (v77 >> 6) + 64) |= 1 << v77;
                        v98 = v77;
                        (*(v144 + 16))(*(v22 + 48) + *(v144 + 72) * v77, v12, v10);
                        v99 = *(v22 + 56) + 32 * v98;
                        *v99 = 0;
                        *(v99 + 8) = 0;
                        *(v99 + 16) = v45;
                        *(v99 + 24) = a6;
                        v100 = *(v22 + 16);
                        v25 = __OFADD__(v100, 1);
                        v101 = v100 + 1;
                        if (v25)
                        {
                          goto LABEL_86;
                        }

                        *(v22 + 16) = v101;
                      }

                      *(a7 + 16) = v22;

                      goto LABEL_20;
                    }

                    v55 = (*(v51 + 56) + 32 * v53);
                    v56 = *v55;
                    v57 = v55[1];
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v153 = *(a7 + 16);
                    v22 = v153;
                    *(a7 + 16) = 0x8000000000000000;
                    v58 = sub_2281A7B7C(v12);
                    v60 = *(v22 + 16);
                    v61 = (v59 & 1) == 0;
                    v25 = __OFADD__(v60, v61);
                    v62 = v60 + v61;
                    if (v25)
                    {
                      goto LABEL_87;
                    }

                    v63 = v59;
                    if (*(v22 + 24) < v62)
                    {
                      sub_22829A8D8(v62, isUniquelyReferenced_nonNull_native);
                      v58 = sub_2281A7B7C(v12);
                      if ((v63 & 1) != (v64 & 1))
                      {
                        goto LABEL_100;
                      }

                      goto LABEL_62;
                    }

                    if (isUniquelyReferenced_nonNull_native)
                    {
LABEL_62:
                      v22 = v153;
                      if ((v63 & 1) == 0)
                      {
                        goto LABEL_74;
                      }
                    }

                    else
                    {
                      isUniquelyReferenced_nonNull_native = v58;
                      sub_22829B90C();
                      v58 = isUniquelyReferenced_nonNull_native;
                      v22 = v153;
                      if ((v63 & 1) == 0)
                      {
LABEL_74:
                        *(v22 + 8 * (v58 >> 6) + 64) |= 1 << v58;
                        v102 = v58;
                        (*(v144 + 16))(*(v22 + 48) + *(v144 + 72) * v58, v12, v10);
                        v103 = *(v22 + 56) + 32 * v102;
                        *v103 = v56;
                        *(v103 + 8) = v57;
                        *(v103 + 16) = v45;
                        *(v103 + 24) = a6;
                        v104 = *(v22 + 16);
                        v25 = __OFADD__(v104, 1);
                        v95 = v104 + 1;
                        if (v25)
                        {
                          goto LABEL_89;
                        }

                        goto LABEL_79;
                      }
                    }

                    v96 = *(v22 + 56) + 32 * v58;
                    *v96 = v56;
                    *(v96 + 8) = v57;
                    *(v96 + 16) = v45;
                    *(v96 + 24) = a6;
                    goto LABEL_19;
                  }

                  if (v52)
                  {
                    v65 = sub_2281A7B7C(v12);
                    if (v66)
                    {
                      v67 = *(v51 + 56) + 32 * v65;
                      v68 = *(v67 + 16);
                      v69 = *(v67 + 24);
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v153 = *(a7 + 16);
                      v22 = v153;
                      *(a7 + 16) = 0x8000000000000000;
                      v70 = sub_2281A7B7C(v12);
                      v72 = *(v22 + 16);
                      v73 = (v71 & 1) == 0;
                      v25 = __OFADD__(v72, v73);
                      v74 = v72 + v73;
                      if (v25)
                      {
                        goto LABEL_88;
                      }

                      v75 = v71;
                      if (*(v22 + 24) < v74)
                      {
                        sub_22829A8D8(v74, isUniquelyReferenced_nonNull_native);
                        v70 = sub_2281A7B7C(v12);
                        if ((v75 & 1) != (v76 & 1))
                        {
                          goto LABEL_100;
                        }

                        goto LABEL_65;
                      }

                      if (isUniquelyReferenced_nonNull_native)
                      {
LABEL_65:
                        v22 = v153;
                        if ((v75 & 1) == 0)
                        {
                          goto LABEL_78;
                        }
                      }

                      else
                      {
                        isUniquelyReferenced_nonNull_native = v70;
                        sub_22829B90C();
                        v70 = isUniquelyReferenced_nonNull_native;
                        v22 = v153;
                        if ((v75 & 1) == 0)
                        {
LABEL_78:
                          *(v22 + 8 * (v70 >> 6) + 64) |= 1 << v70;
                          v105 = v70;
                          (*(v144 + 16))(*(v22 + 48) + *(v144 + 72) * v70, v12, v10);
                          v106 = *(v22 + 56) + 32 * v105;
                          *v106 = v45;
                          *(v106 + 8) = a6;
                          *(v106 + 16) = v68;
                          *(v106 + 24) = v69;
                          v107 = *(v22 + 16);
                          v25 = __OFADD__(v107, 1);
                          v95 = v107 + 1;
                          if (v25)
                          {
                            goto LABEL_90;
                          }

                          goto LABEL_79;
                        }
                      }

                      v97 = *(v22 + 56) + 32 * v70;
                      *v97 = v45;
                      *(v97 + 8) = a6;
                      *(v97 + 16) = v68;
                      *(v97 + 24) = v69;
                      goto LABEL_19;
                    }
                  }

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v153 = *(a7 + 16);
                  v22 = v153;
                  *(a7 + 16) = 0x8000000000000000;
                  v86 = sub_2281A7B7C(v12);
                  v87 = *(v22 + 16);
                  v88 = (v85 & 1) == 0;
                  v89 = v87 + v88;
                  if (__OFADD__(v87, v88))
                  {
                    goto LABEL_84;
                  }

                  v90 = v85;
                  if (*(v22 + 24) >= v89)
                  {
                    if (isUniquelyReferenced_nonNull_native)
                    {
                      v22 = v153;
                      if ((v85 & 1) == 0)
                      {
                        goto LABEL_58;
                      }
                    }

                    else
                    {
                      sub_22829B90C();
                      v22 = v153;
                      if ((v90 & 1) == 0)
                      {
                        goto LABEL_58;
                      }
                    }
                  }

                  else
                  {
                    sub_22829A8D8(v89, isUniquelyReferenced_nonNull_native);
                    v91 = sub_2281A7B7C(v12);
                    if ((v90 & 1) != (v92 & 1))
                    {
LABEL_100:
                      sub_2283934A0();
                      __break(1u);
                      return;
                    }

                    v86 = v91;
                    v22 = v153;
                    if ((v90 & 1) == 0)
                    {
LABEL_58:
                      *(v22 + 8 * (v86 >> 6) + 64) |= 1 << v86;
                      (*(v144 + 16))(*(v22 + 48) + *(v144 + 72) * v86, v12, v10);
                      v93 = *(v22 + 56) + 32 * v86;
                      *v93 = v45;
                      *(v93 + 8) = a6;
                      *(v93 + 16) = 0;
                      *(v93 + 24) = 0;
                      v94 = *(v22 + 16);
                      v25 = __OFADD__(v94, 1);
                      v95 = v94 + 1;
                      if (v25)
                      {
                        goto LABEL_85;
                      }

LABEL_79:
                      *(v22 + 16) = v95;
                      goto LABEL_19;
                    }
                  }

                  v42 = *(v22 + 56) + 32 * v86;
                  *v42 = v45;
                  *(v42 + 16) = 0;
                  *(v42 + 24) = 0;
                  *(v42 + 8) = a6;
LABEL_19:
                  *(a7 + 16) = v22;

                  v37 = v145;
LABEL_20:
                  ++v40;
                  swift_endAccess();
                  (*v146)(v12, v10);
                  if (v40 == v150)
                  {

                    a6 = v123;
                    goto LABEL_9;
                  }
                }

                v44 = 0;
                v45 = 0.0;
LABEL_29:
                v48 = (a6 - v44);
                v49 = (v43 + 8 * v44 + 32);
                do
                {
                  v50 = *v49++;
                  v45 = v45 + v50;
                  --v48;
                }

                while (v48);
                goto LABEL_31;
              }

LABEL_9:

              v23 = v142;
              v22 = v128;
              if (v142 == v129)
              {
                goto LABEL_95;
              }
            }

LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            if (sub_2283930D0() != 2)
            {
              break;
            }

            v134 = isUniquelyReferenced_nonNull_native;
            v129 = sub_2283930D0();
            if (!v129)
            {
LABEL_95:

              swift_beginAccess();
              v108 = *(a7 + 16);

              v109 = [a6 startDate];
              v110 = v136;
              sub_22838F3E0();

              v111 = [a6 endDate];
              v112 = v137;
              sub_22838F3E0();

              v113 = [a6 statisticsInterval];
              v114 = v138;
              sub_22838EFD0();

              v115 = v124;
              v116 = sub_2283563C4(v108, v110, v112, v114);

              (*(v122 + 8))(v114, v134);
              v117 = *(v121 + 8);
              v118 = v139;
              v117(v112, v139);
              v117(v110, v118);
              v127(v116, v125);

              goto LABEL_98;
            }
          }
        }
      }
    }

    else
    {
      sub_228357114(v154, &qword_280DDCE20, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2281F8E18);
    }

    v127(0, v125);
    v116 = v124;
LABEL_98:
  }
}

uint64_t sub_228356058(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_22819A2AC(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v10, a3);

  return sub_228357114(v10, &qword_280DDCE20, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2281F8E18);
}

void sub_228356134(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AAB6D80](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [a2 stopQuery_];

      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_228356354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_22838F170();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_2283563C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a4;
  sub_228359544(0);
  v66 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v65 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = v57 - v9;
  v68 = type metadata accessor for MedicationChartCodableData(0);
  v63 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x277D127F0]) init];
  if (v12)
  {
    sub_22838F230();
    [v12 setStartDate_];
    v13 = v12;
    sub_22838F230();
    [v13 setEndDate_];
  }

  v14 = a1;
  v15 = *(a1 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v57[1] = v4;
    v58 = v12;
    v72 = MEMORY[0x277D84F90];
    sub_2281CA36C(0, v15, 0);
    v16 = v72;
    v17 = v14 + 64;
    v18 = sub_228393040();
    v19 = 0;
    v71 = *(v14 + 36);
    v59 = v14 + 72;
    v60 = v15;
    v61 = v14;
    v62 = v14 + 64;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(v14 + 32))
    {
      v22 = v18 >> 6;
      if ((*(v17 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_28;
      }

      if (v71 != *(v14 + 36))
      {
        goto LABEL_29;
      }

      v69 = v19;
      v23 = *(v14 + 48);
      v24 = sub_22838EF60();
      v70 = v16;
      v25 = v24;
      v26 = *(v24 - 8);
      v27 = v11;
      v28 = v64;
      (*(v26 + 16))(v64, v23 + *(v26 + 72) * v18, v24);
      v29 = (*(v14 + 56) + 32 * v18);
      v30 = *v29;
      v31 = v29[1];
      v32 = v29[2];
      v33 = v29[3];
      v34 = v65;
      v35 = v28;
      v11 = v27;
      (*(v26 + 32))(v65, v35, v25);
      v36 = (v34 + *(v66 + 48));
      *v36 = v30;
      v36[1] = v31;
      v36[2] = v32;
      v36[3] = v33;
      sub_22838EF40();
      v37 = v68;
      sub_22838EF20();
      v38 = v37[8];
      v39 = sub_22838F080();
      v40 = v27 + v38;
      v16 = v70;
      (*(*(v39 - 8) + 16))(v40, v67, v39);
      *(v27 + v37[6]) = v30;
      *(v27 + v37[7]) = v32;
      *(v27 + v37[9]) = v31;
      *(v27 + v37[10]) = v33;
      sub_2283595B0(v34, sub_228359544);
      v72 = v16;
      v42 = *(v16 + 16);
      v41 = *(v16 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_2281CA36C((v41 > 1), v42 + 1, 1);
        v16 = v72;
      }

      *(v16 + 16) = v42 + 1;
      sub_228359610(v27, v16 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v42);
      v14 = v61;
      v17 = v62;
      v20 = 1 << *(v61 + 32);
      if (v18 >= v20)
      {
        goto LABEL_30;
      }

      v43 = *(v62 + 8 * v22);
      if ((v43 & (1 << v18)) == 0)
      {
        goto LABEL_31;
      }

      if (v71 != *(v61 + 36))
      {
        goto LABEL_32;
      }

      v44 = v43 & (-2 << (v18 & 0x3F));
      if (v44)
      {
        v20 = __clz(__rbit64(v44)) | v18 & 0x7FFFFFFFFFFFFFC0;
        v21 = v60;
      }

      else
      {
        v45 = v22 << 6;
        v46 = v22 + 1;
        v21 = v60;
        v47 = (v59 + 8 * v22);
        while (v46 < (v20 + 63) >> 6)
        {
          v49 = *v47++;
          v48 = v49;
          v45 += 64;
          ++v46;
          if (v49)
          {
            sub_228205ADC(v18, v71, 0);
            v20 = __clz(__rbit64(v48)) + v45;
            goto LABEL_6;
          }
        }

        sub_228205ADC(v18, v71, 0);
      }

LABEL_6:
      v19 = v69 + 1;
      v18 = v20;
      if (v69 + 1 == v21)
      {
        v12 = v58;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);

    v72 = 0;
    v73 = 0xE000000000000000;
    sub_2283931D0();

    v72 = 0xD00000000000001FLL;
    v73 = 0x80000002283B59E0;
    v56 = MEMORY[0x22AAB5D50](v16, v68);
    MEMORY[0x22AAB5C80](v56);

    result = sub_228393300();
    __break(1u);
  }

  else
  {
LABEL_23:
    v72 = v16;
    sub_228359B50(0, &qword_280DDBB88, type metadata accessor for MedicationChartCodableData, MEMORY[0x277D83940]);
    sub_2283599C0(&qword_280DDBB80, &qword_280DDC3C8, &protocol conformance descriptor for MedicationChartCodableData, MEMORY[0x277D83948]);
    v50 = sub_22838EE90();
    v52 = v51;

    if (v12)
    {
      v53 = v12;
      v54 = sub_22838F200();
      [v53 setQueryDataObject_];
      sub_228359674(v50, v52);
    }

    else
    {
      sub_228359674(v50, v52);
    }

    return v12;
  }

  return result;
}

id MedicationChartDataSource.__allocating_init(displayType:healthStore:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithDisplayType:a1 healthStore:a2];

  return v5;
}

id MedicationChartDataSource.__allocating_init(dataType:healthStore:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithDataType:a1 healthStore:a2];

  return v5;
}

id MedicationChartDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MedicationChartDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationChartDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228356D94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_228393460() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_228393460() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F436E656B6174 && a2 == 0xEA0000000000746ELL || (sub_228393460() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4364657070696B73 && a2 == 0xEC000000746E756FLL || (sub_228393460() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002283ADB50 == a2 || (sub_228393460() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002283ADB70 == a2 || (sub_228393460() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002283ADB90 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_228393460();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_228356FFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2281A9630();
    v3 = sub_228393360();
    v4 = a1 + 32;

    while (1)
    {
      sub_228359AE8(v4, &v13, sub_2281A96FC);
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

uint64_t sub_228357114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2283571CC(void *a1, void (*a2)(char *, uint64_t), void (**a3)(const void *, uint64_t, void *))
{
  v180 = sub_228391DC0();
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v177 = &v159 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_228391DF0();
  v176 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v175 = &v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_228391DD0();
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v172 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_22838F080();
  v205 = *(v202 - 8);
  v9 = v205[8];
  v10 = MEMORY[0x28223BE20](v202);
  v171 = &v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v198 = &v159 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v185 = (&v159 - v14);
  MEMORY[0x28223BE20](v13);
  v16 = &v159 - v15;
  v201 = sub_22838F440();
  v194 = *(v201 - 8);
  v17 = MEMORY[0x28223BE20](v201);
  v199 = &v159 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v200 = &v159 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v159 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v159 - v24;
  v196 = swift_allocObject();
  *(v196 + 16) = a3;
  v182 = a3;
  _Block_copy(a3);
  v26 = dispatch_group_create();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v203 = swift_allocObject();
  *(v203 + 16) = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v181 = (v28 + 16);
  v29 = [a1 startDate];
  sub_22838F3E0();

  v30 = [a1 endDate];
  sub_22838F3E0();

  v187 = a1;
  v31 = [a1 statisticsInterval];
  v189 = v16;
  sub_22838EFD0();

  v32 = swift_allocObject();
  *(v32 + 2) = v27;
  *(v32 + 3) = v28;
  v191 = v32;
  *(v32 + 4) = v26;
  v192 = a2;
  v33 = *(a2 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationChartDataSource_medication);
  v193 = v26;
  v204 = v28;

  v195 = v27;

  v186 = v33;
  v34 = [v33 semanticIdentifier];
  v35 = [v34 stringValue];

  if (!v35)
  {
    sub_228392000();
    v35 = sub_228391FC0();
  }

  v36 = objc_opt_self();
  v37 = [v36 predicateForMedicationDoseEventWithMedicationIdentifier_];

  v38 = sub_22838F380();
  v39 = sub_22838F380();
  v40 = [v36 predicateForSamplesWithStartDate:v38 endDate:v39 options:0];

  v41 = [v36 predicateForMedicationDoseEventWithStatus_];
  sub_2281F8E18(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v197 = v42;
  v43 = swift_allocObject();
  v183 = xmmword_228399D40;
  *(v43 + 16) = xmmword_228399D40;
  *(v43 + 32) = v40;
  *(v43 + 40) = v37;
  *(v43 + 48) = v41;
  v44 = sub_22817A958(0, &qword_280DDBB08, 0x277CCAC30);
  v45 = v40;
  v46 = v37;
  v47 = v25;
  v188 = v23;
  v48 = v46;
  v49 = v41;
  v184 = v44;
  v50 = sub_228392190();

  v51 = objc_opt_self();
  v52 = [v51 andPredicateWithSubpredicates_];

  v190 = v47;
  v53 = v189;
  v54 = v192;
  v55 = sub_228354058(v47, v189, v52);
  if (v55)
  {
    v56 = v55;
    v169 = v51;
    v170 = v36;
    v168 = v52;
    v57 = v205;
    v58 = v205[2];
    v59 = v185;
    v60 = v202;
    v164 = (v205 + 2);
    v163 = v58;
    v58(v185, v53, v202);
    v61 = (*(v57 + 80) + 24) & ~*(v57 + 80);
    v62 = (v9 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v162 = *(v57 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = v54;
    v64 = v57[4];
    v165 = v61;
    v161 = v57 + 4;
    v160 = v64;
    v64(v63 + v61, v59, v60);
    v167 = v62;
    *(v63 + v62) = 4;
    v166 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
    v65 = (v63 + v166);
    v66 = v191;
    *v65 = sub_228359BE0;
    v65[1] = v66;
    v208 = sub_228359BD8;
    v209 = v63;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v207 = sub_228353FB8;
    *(&v207 + 1) = &block_descriptor_98;
    v67 = _Block_copy(&aBlock);
    v185 = v54;

    sub_228176FA8(sub_228359BD8, v63);

    [v56 setInitialResultsHandler_];

    _Block_release(v67);

    v68 = v57[1];
    v205 = v57 + 1;
    v191 = v68;
    v68(v53, v60);
    isa = v194[1].isa;
    v70 = v201;
    isa(v188, v201);
    v192 = isa;
    isa(v190, v70);

    v194 = v56;
    v71 = v187;
    v72 = [v187 startDate];
    v73 = v200;
    sub_22838F3E0();

    v74 = [v71 endDate];
    sub_22838F3E0();

    v75 = [v71 statisticsInterval];
    v76 = v198;
    sub_22838EFD0();

    v77 = swift_allocObject();
    v78 = v204;
    *(v77 + 2) = v203;
    *(v77 + 3) = v78;
    v79 = v193;
    *(v77 + 4) = v193;
    v193 = v79;

    v80 = [v186 semanticIdentifier];
    v81 = [v80 stringValue];

    if (!v81)
    {
      sub_228392000();
      v81 = sub_228391FC0();
    }

    v82 = v170;
    v83 = [v170 predicateForMedicationDoseEventWithMedicationIdentifier_];

    v84 = sub_22838F380();
    v85 = sub_22838F380();
    v86 = [v82 predicateForSamplesWithStartDate:v84 endDate:v85 options:0];

    v87 = [v82 predicateForMedicationDoseEventWithStatus_];
    v88 = swift_allocObject();
    *(v88 + 16) = v183;
    *(v88 + 32) = v86;
    *(v88 + 40) = v83;
    *(v88 + 48) = v87;
    v89 = v86;
    v90 = v83;
    v91 = v87;
    v92 = sub_228392190();

    v93 = [v169 andPredicateWithSubpredicates_];

    v94 = v185;
    v95 = sub_228354058(v73, v76, v93);
    if (v95)
    {
      v96 = v95;
      v97 = v171;
      v98 = v76;
      v99 = v202;
      v163(v171, v98, v202);
      v100 = v166;
      v101 = swift_allocObject();
      *(v101 + 16) = v94;
      v160(v101 + v165, v97, v99);
      *(v101 + v167) = 5;
      v102 = (v101 + v100);
      *v102 = sub_228359BE0;
      v102[1] = v77;
      v208 = sub_228359BD8;
      v209 = v101;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v207 = sub_228353FB8;
      *(&v207 + 1) = &block_descriptor_95;
      v103 = _Block_copy(&aBlock);
      v104 = v94;
      v105 = v103;
      v190 = v104;

      sub_228176FA8(sub_228359BD8, v101);

      [v96 setInitialResultsHandler_];

      _Block_release(v105);

      v191(v198, v99);
      v106 = v201;
      v107 = v192;
      v192(v199, v201);
      v107(v200, v106);

      v205 = v96;
      v108 = v193;
      dispatch_group_enter(v193);
      dispatch_group_enter(v108);
      sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
      v109 = v173;
      v110 = v172;
      v111 = v174;
      (*(v173 + 104))(v172, *MEMORY[0x277D851B8], v174);
      v202 = sub_2283927C0();
      (*(v109 + 8))(v110, v111);
      v112 = swift_allocObject();
      v114 = v203;
      v113 = v204;
      v112[2] = v195;
      v112[3] = v114;
      v115 = v190;
      v112[4] = v113;
      v112[5] = v115;
      v116 = v196;
      v112[6] = sub_2283596D0;
      v112[7] = v116;
      v208 = sub_228359BDC;
      v209 = v112;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v207 = sub_228191E9C;
      *(&v207 + 1) = &block_descriptor_92;
      v117 = _Block_copy(&aBlock);

      v118 = v115;

      v119 = v175;
      sub_228391DE0();
      v210 = MEMORY[0x277D84F90];
      sub_22835268C(&qword_280DDCF10, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_228359B50(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_228216D44();
      v120 = v177;
      v121 = v180;
      sub_228393030();
      v122 = v202;
      sub_228392710();
      _Block_release(v117);

      (*(v179 + 8))(v120, v121);
      (*(v176 + 8))(v119, v178);

      v123 = swift_allocObject();
      *(v123 + 16) = xmmword_228397F20;
      v124 = v194;
      v125 = v205;
      *(v123 + 32) = v194;
      *(v123 + 40) = v125;

      return v123;
    }

    type metadata accessor for HKError(0);
    v210 = 0;
    v142 = MEMORY[0x277D84F90];
    sub_228356FFC(MEMORY[0x277D84F90]);
    sub_22835268C(&unk_27D8235B0, type metadata accessor for HKError, &unk_22839748C);
    sub_22838F160();
    v143 = aBlock;
    v144 = v181;
    swift_beginAccess();
    v145 = *v144;
    *v144 = v143;
    v146 = v143;

    v147 = v193;
    dispatch_group_leave(v193);

    v191(v76, v202);
    v148 = v201;
    v149 = v192;
    v192(v199, v201);
    v149(v200, v148);
    v132 = v194;

    aBlock = 0u;
    v207 = 0u;
    v210 = 0;
    sub_228356FFC(v142);
    sub_22838F160();
    v150 = v212;
    sub_2283596D8(&aBlock, &v210);
    v151 = v211;
    if (v211)
    {
      v152 = __swift_project_boxed_opaque_existential_0(&v210, v211);
      v153 = *(v151 - 8);
      MEMORY[0x28223BE20](v152);
      v155 = &v159 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v153 + 16))(v155);
      v156 = sub_228393450();
      (*(v153 + 8))(v155, v151);
      __swift_destroy_boxed_opaque_existential_0(&v210);
    }

    else
    {
      v156 = 0;
    }

    v158 = sub_22838F170();
    v182[2](v182, v156, v158);

    swift_unknownObjectRelease();
    sub_228357114(&aBlock, &qword_280DDCE20, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2281F8E18);
  }

  else
  {
    type metadata accessor for HKError(0);
    v210 = 0;
    v127 = MEMORY[0x277D84F90];
    sub_228356FFC(MEMORY[0x277D84F90]);
    sub_22835268C(&unk_27D8235B0, type metadata accessor for HKError, &unk_22839748C);
    sub_22838F160();
    v128 = aBlock;
    v129 = v181;
    swift_beginAccess();
    v130 = *v129;
    *v129 = v128;
    v131 = v128;

    v132 = v193;
    dispatch_group_leave(v193);

    (v205[1])(v53, v202);
    v133 = v194[1].isa;
    v134 = v201;
    v133(v188, v201);
    v133(v190, v134);
    aBlock = 0u;
    v207 = 0u;
    v210 = 0;
    sub_228356FFC(v127);
    sub_22838F160();
    v135 = v212;
    sub_2283596D8(&aBlock, &v210);
    v136 = v211;
    if (v211)
    {
      v137 = __swift_project_boxed_opaque_existential_0(&v210, v211);
      v138 = *(v136 - 8);
      MEMORY[0x28223BE20](v137);
      v140 = &v159 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v138 + 16))(v140);
      v141 = sub_228393450();
      (*(v138 + 8))(v140, v136);
      __swift_destroy_boxed_opaque_existential_0(&v210);
    }

    else
    {
      v141 = 0;
    }

    v157 = sub_22838F170();
    v182[2](v182, v141, v157);

    swift_unknownObjectRelease();
    sub_228357114(&aBlock, &qword_280DDCE20, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2281F8E18);
  }

  return MEMORY[0x277D84F90];
}

void *sub_228358908(void *a1)
{
  v65 = sub_22838F080();
  v72 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v74 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_22838F440();
  v7 = *(v64 - 8);
  v8 = MEMORY[0x28223BE20](v64);
  v63 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v73 = &v49 - v10;
  v11 = type metadata accessor for MedicationChartCodableData(0);
  v12 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v66 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 queryDataObject];
  if (v14)
  {
    v15 = v14;
    sub_228359B50(0, &qword_280DDBB88, type metadata accessor for MedicationChartCodableData, MEMORY[0x277D83940]);
    v16 = sub_22838F210();
    v18 = v17;

    sub_2283599C0(&qword_27D828380, &unk_27D828388, &protocol conformance descriptor for MedicationChartCodableData, MEMORY[0x277D83978]);
    sub_22838EE60();
    sub_228359674(v16, v18);
    v19 = v76[0];
    v20 = [objc_allocWithZone(MEMORY[0x277D128B8]) init];
    v21 = v20;
    v77 = MEMORY[0x277D84F90];
    v22 = *(v19 + 16);
    if (v22)
    {
      v50 = v20;
      v23 = v11[5];
      v62 = v11[6];
      v61 = &v66[v23];
      v60 = v11[7];
      v59 = &v66[v11[8]];
      v24 = v11[10];
      v58 = v11[9];
      v57 = v24;
      v56 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationChartDataSource_medication);
      v25 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v49 = v19;
      v26 = v19 + v25;
      v55 = *(v12 + 72);
      v54 = (v7 + 16);
      v53 = (v72 + 16);
      v52 = (v72 + 8);
      v51 = (v7 + 8);
      v27 = v65;
      v28 = v66;
      do
      {
        v71 = v26;
        v72 = v22;
        sub_228359AE8(v26, v28, type metadata accessor for MedicationChartCodableData);
        v29 = *v54;
        v30 = v73;
        v31 = v64;
        (*v54)(v73, v28, v64);
        v32 = v63;
        v29(v63, v61, v31);
        v33 = *(v28 + v62);
        v34 = *(v28 + v60);
        v67 = *v53;
        v67(v74, v59, v27);
        v69 = *(v28 + v58);
        v70 = *(v28 + v57);
        v68 = type metadata accessor for MedicationChartPoint(0);
        v35 = objc_allocWithZone(v68);
        v76[3] = sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
        v76[4] = MEMORY[0x277D117B0];
        v36 = v56;
        v76[0] = v56;
        *&v35[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_takenCount] = v33;
        *&v35[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_skippedCount] = v34;
        v29(&v35[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_startDate], v30, v31);
        v29(&v35[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_endDate], v32, v31);
        v37 = v74;
        v67(&v35[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_statisticsInterval], v74, v27);
        sub_228180FB0(v76, &v35[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_medication]);
        v38 = v70;
        *&v35[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_windowTakenCount] = v69;
        *&v35[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_windowSkippedCount] = v38;
        v75.receiver = v35;
        v75.super_class = v68;
        v39 = v36;
        objc_msgSendSuper2(&v75, sel_init, v49);
        (*v52)(v37, v27);
        v40 = *v51;
        (*v51)(v32, v31);
        v40(v73, v31);
        sub_2283595B0(v28, type metadata accessor for MedicationChartCodableData);
        v41 = __swift_destroy_boxed_opaque_existential_0(v76);
        MEMORY[0x22AAB5D20](v41);
        if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2283921E0();
        }

        sub_228392230();
        v26 = v71 + v55;
        v22 = v72 - 1;
      }

      while (v72 != 1);
      v42 = v77;

      v21 = v50;
      if (!(v42 >> 62))
      {
        goto LABEL_8;
      }
    }

    else
    {

      if (!(MEMORY[0x277D84F90] >> 62))
      {
LABEL_8:

        sub_228393470();
        sub_228359A84();
LABEL_9:

        sub_228359A84();
        v43 = sub_228392190();

        [v21 setChartPoints_];

        return v21;
      }
    }

    sub_228359A84();

    sub_228393310();

    goto LABEL_9;
  }

  __break(1u);

  sub_228359674(v4, v3);
  v76[0] = 0;
  v76[1] = 0xE000000000000000;
  sub_2283931D0();
  MEMORY[0x22AAB5C80](0xD000000000000033, 0x80000002283B5A00);
  v45 = [a1 description];
  v46 = sub_228392000();
  v48 = v47;

  MEMORY[0x22AAB5C80](v46, v48);

  result = sub_228393300();
  __break(1u);
  return result;
}

uint64_t sub_228359194(uint64_t a1)
{
  result = sub_22838F440();
  if (v2 <= 0x3F)
  {
    result = sub_22838F080();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MedicationChartCodableData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MedicationChartCodableData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2283593E8()
{
  result = qword_27D828370;
  if (!qword_27D828370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D828370);
  }

  return result;
}

unint64_t sub_228359440()
{
  result = qword_27D828378;
  if (!qword_27D828378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D828378);
  }

  return result;
}

unint64_t sub_228359498()
{
  result = qword_280DDC3D0;
  if (!qword_280DDC3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDC3D0);
  }

  return result;
}

unint64_t sub_2283594F0()
{
  result = qword_280DDC3D8;
  if (!qword_280DDC3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDC3D8);
  }

  return result;
}

void sub_228359544(uint64_t a1)
{
  if (!qword_280DDCE10)
  {
    sub_22838EF60();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DDCE10);
    }
  }
}

uint64_t sub_2283595B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228359610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationChartCodableData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_228359674(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2283596D8(uint64_t a1, uint64_t a2)
{
  sub_2281F8E18(0, &qword_280DDCE20, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_6Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_9Tm()
{
  v1 = sub_22838F080();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_228359890(uint64_t a1, void *a2, void *a3)
{
  v7 = *(sub_22838F080() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + v9);
  v11 = *(v3 + 16);
  v12 = v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);

  return sub_228353A68(a1, a2, a3, v11, v3 + v8, v10, v13, v14);
}

uint64_t objectdestroy_19Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2283599C0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_228359B50(255, &qword_280DDBB88, type metadata accessor for MedicationChartCodableData, MEMORY[0x277D83940]);
    sub_22835268C(a2, type metadata accessor for MedicationChartCodableData, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_228359A84()
{
  result = qword_27D828398;
  if (!qword_27D828398)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D828398);
  }

  return result;
}

uint64_t sub_228359AE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_228359B50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228359BF8(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_22835A244();
  return sub_22819482C(v6);
}

uint64_t sub_228359C68@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_228359CC0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22835A244();
  return sub_22819482C(a1);
}

void (*sub_228359D2C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228359D90;
}

void sub_228359D90(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_22835A244();
  }
}

id sub_228359DC4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = &v5[OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell_item];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell____lazy_storage___stackView] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell____lazy_storage___attributionLabel] = 0;
  v15.receiver = v5;
  v15.super_class = type metadata accessor for InteractionResultDetailEducationCell();
  v11 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a2, a3, a4, a5);
  [v11 setUserInteractionEnabled_];
  v12 = [v11 contentView];
  v13 = sub_228359FBC();
  [v12 addSubview_];

  return v11;
}

id sub_228359FBC()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell____lazy_storage___stackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setAxis_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setSpacing_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_22835A06C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell____lazy_storage___attributionLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell____lazy_storage___attributionLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell____lazy_storage___attributionLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(sub_22838FC30()) initWithFrame_];
    v6 = *MEMORY[0x277D769D0];
    sub_22838FC20();
    sub_22838FC10();
    v7 = v5;
    [v7 setNumberOfLines_];
    v14 = sub_228392000();
    v15 = v8;

    MEMORY[0x22AAB5C80](0xD000000000000025, 0x80000002283B5AD0);

    MEMORY[0x22AAB5C80](0xD000000000000011, 0x80000002283B0420);

    v9 = sub_228391FC0();

    [v7 setAccessibilityIdentifier_];

    v10 = [objc_opt_self() secondaryLabelColor];
    [v7 setTextColor_];

    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

void sub_22835A244()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v6], v50);
  if (v51)
  {
    sub_22817A700();
    sub_22834B070(0);
    if (swift_dynamicCast())
    {
      v7 = v49;
      v8 = sub_228359FBC();
      v9 = [v8 arrangedSubviews];

      sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
      v10 = sub_2283921A0();

      if (v10 >> 62)
      {
        v11 = sub_2283930D0();
        if (v11)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v11)
        {
LABEL_5:
          if (v11 < 1)
          {
            __break(1u);
            return;
          }

          v12 = 0;
          v13 = OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell____lazy_storage___stackView;
          do
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v14 = MEMORY[0x22AAB6D80](v12, v10);
            }

            else
            {
              v14 = *(v10 + 8 * v12 + 32);
            }

            v15 = v14;
            ++v12;
            [*&v1[v13] removeArrangedSubview_];
            [v15 removeFromSuperview];
          }

          while (v11 != v12);
        }
      }

      v24 = *(v7 + *(*v7 + 120));
      v25 = [v24 severity];
      v26 = [v25 severityLevel];

      v27 = sub_22823D160();
      v29 = v28;
      v30 = objc_allocWithZone(type metadata accessor for InteractionDetailEducationView());
      v48 = sub_2282BA0B0(v26, v27, v29);
      v31 = OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell____lazy_storage___stackView;
      [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell____lazy_storage___stackView] addArrangedSubview_];
      v32 = sub_22835A06C();
      sub_22823D284();
      v33 = sub_228391FC0();

      [v32 setText_];

      [*&v1[v31] addArrangedSubview_];
      v34 = *&v1[v31];
      v35 = [v1 contentView];
      [v34 hk:v35 alignVerticalConstraintsWithView:16.0 insets:{16.0, 16.0, 16.0}];

      v36 = [*&v1[v31] leadingAnchor];
      v37 = [v1 &selRef_didTapDay_];
      v38 = [v37 layoutMarginsGuide];

      v39 = [v38 leadingAnchor];
      v40 = [v36 constraintEqualToAnchor_];

      [v40 setActive_];
      v41 = [*&v1[v31] trailingAnchor];
      v42 = [v1 contentView];
      v43 = [v42 layoutMarginsGuide];

      v44 = [v43 trailingAnchor];
      v45 = [v41 constraintEqualToAnchor_];

      [v45 setActive_];
      v46 = *&v1[v31];
      v47 = v48;
      [v46 setCustomSpacing:v48 afterView:10.0];

      return;
    }
  }

  else
  {
    sub_22819482C(v50);
  }

  sub_228391150();
  v16 = v1;
  v17 = sub_2283911A0();
  v18 = sub_2283925C0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v49 = v20;
    *v19 = 136446210;
    sub_22817E6C8(&v1[v6], v50);
    sub_228181D50(0);
    v21 = sub_228392040();
    v23 = sub_2281C96FC(v21, v22, &v49);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_22816B000, v17, v18, "Incorrect view model for InteractionResultDetailEducationCell: %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x22AAB7B80](v20, -1, -1);
    MEMORY[0x22AAB7B80](v19, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
}

id sub_22835A884(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for InteractionResultDetailEducationCell();
  return objc_msgSendSuper2(&v4, *a1);
}

uint64_t MedmojiConfigItem.init(_:isSelected:sectionIdentifier:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  result = type metadata accessor for MedmojiConfigItem(0, a5, a6, v13);
  *(a7 + *(result + 36)) = a2;
  v15 = (a7 + *(result + 40));
  *v15 = a3;
  v15[1] = a4;
  return result;
}

uint64_t sub_22835AB80(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  a1();
  sub_22835DE98(a2, v7, a3, a4);
  return sub_22838FBB0();
}

uint64_t sub_22835AC48(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(a1, a2);
  sub_22835DE98(a4, v9, a5, a6);
  return sub_22838FBB0();
}

uint64_t MedmojiConfigItem.uniqueIdentifier.getter(uint64_t a1)
{
  v7 = (*(*(a1 + 24) + 16))(*(a1 + 16));
  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  MEMORY[0x22AAB5C80](*(v1 + *(a1 + 40)), *(v1 + *(a1 + 40) + 8));
  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  if (*(v1 + *(a1 + 36)))
  {
    v3 = 0x64657463656C6573;
  }

  else
  {
    v3 = 0x7463656C65736E75;
  }

  if (*(v1 + *(a1 + 36)))
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA00000000006465;
  }

  MEMORY[0x22AAB5C80](v3, v4);

  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  MedmojiConfigItem.hashValue.getter(a1);
  v5 = sub_228393420();
  MEMORY[0x22AAB5C80](v5);

  return v7;
}

uint64_t MedmojiConfigItem.hashValue.getter(uint64_t a1)
{
  sub_228393520();
  MedmojiConfigItem.hash(into:)(v3, a1);
  return sub_228393570();
}

uint64_t MedmojiConfigItem.sectionIdentifier.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

uint64_t static MedmojiConfigItem.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_228391FB0() & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for MedmojiConfigItem(0, a3, a4, v8);
  if (*(a1 + *(v9 + 36)) != *(a2 + *(v9 + 36)))
  {
    return 0;
  }

  v11 = *(v9 + 40);
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  if (v12 == *v14 && v13 == v14[1])
  {
    return 1;
  }

  return sub_228393460();
}

uint64_t MedmojiConfigItem.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_228391F70();
  sub_228393540();

  return sub_2283920B0();
}

uint64_t sub_22835AFD4(uint64_t a1, uint64_t a2)
{
  sub_228393520();
  MedmojiConfigItem.hash(into:)(v4, a2);
  return sub_228393570();
}

uint64_t sub_22835B018(uint64_t a1)
{
  result = sub_22835DE98(&qword_27D8283F0, 255, MEMORY[0x277D11618], MEMORY[0x277D11620]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22835B074(uint64_t a1)
{
  result = sub_22835DE98(qword_27D8283F8, 255, MEMORY[0x277D11640], MEMORY[0x277D11648]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22835B11C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t sub_22835B19C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22835B224(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = (v6 & 0xFFFFFFFFFFFFFFF8) + 24;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_22835B358(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 24;
  if ((v8 & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if ((v8 & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if ((v8 & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, (v8 & 0xFFFFFFFFFFFFFFF8) + 24);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = (result + v8) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      *(v18 + 8) = a2 & 0x7FFFFFFF;
      *(v18 + 16) = 0;
    }

    else
    {
      *(v18 + 16) = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

id sub_22835B508()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell____lazy_storage___gradientView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell____lazy_storage___gradientView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell____lazy_storage___gradientView);
  }

  else
  {
    sub_228390CD0();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_22835B580(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  sub_22835DCB4(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell____lazy_storage___gradientView] = 0;
  v13 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell_item];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v29.receiver = v4;
  v29.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v29, sel_initWithFrame_, a1, a2, a3, a4);
  sub_228391380();
  v15 = sub_2283913A0();
  (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  MEMORY[0x22AAB6420](v12);
  v16 = [v14 contentView];
  v17 = sub_22835B508();
  [v16 addSubview_];

  v18 = *&v14[OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell____lazy_storage___gradientView];
  v19 = [v14 contentView];
  [v19 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v30.origin.x = v21;
  v30.origin.y = v23;
  v30.size.width = v25;
  v30.size.height = v27;
  v31 = CGRectInset(v30, 6.0, 6.0);
  [v18 setFrame_];

  return v14;
}

void sub_22835B844()
{
  v32.receiver = v0;
  v32.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v32, sel_layoutSubviews);
  v1 = [v0 contentView];
  v2 = [v1 layer];

  v3 = [v0 contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v33.origin.x = v5;
  v33.origin.y = v7;
  v33.size.width = v9;
  v33.size.height = v11;
  [v2 setCornerRadius_];

  v12 = sub_22835B508();
  v13 = [v0 contentView];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v34.origin.x = v15;
  v34.origin.y = v17;
  v34.size.width = v19;
  v34.size.height = v21;
  v35 = CGRectInset(v34, 6.0, 6.0);
  [v12 setFrame_];

  v22 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell____lazy_storage___gradientView] layer];
  v23 = [v0 contentView];
  [v23 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v36.origin.x = v25;
  v36.origin.y = v27;
  v36.size.width = v29;
  v36.size.height = v31;
  v37 = CGRectInset(v36, 6.0, 6.0);
  [v22 setCornerRadius_];
}

uint64_t sub_22835BA90()
{
  sub_22835DCB4(0, &qword_27D824BC0, sub_228199F78);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v30[-v2];
  sub_228199F78(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell_item;
  swift_beginAccess();
  sub_22835DD70(&v0[v9], v31, &qword_280DDCD50, sub_22817A700);
  if (!v32)
  {
    sub_22835DDDC(v31, &qword_280DDCD50, sub_22817A700);
    (*(v6 + 56))(v3, 1, 1, v5);
    return sub_22835DDDC(v3, &qword_27D824BC0, sub_228199F78);
  }

  sub_22817A700();
  v10 = swift_dynamicCast();
  (*(v6 + 56))(v3, v10 ^ 1u, 1, v5);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    return sub_22835DDDC(v3, &qword_27D824BC0, sub_228199F78);
  }

  sub_22835DD08(v3, v8, sub_228199F78);
  v11 = [v0 contentView];
  v12 = [v11 layer];

  v13 = 3.0;
  if (!v8[*(v5 + 36)])
  {
    v13 = 0.0;
  }

  [v12 setBorderWidth_];

  v14 = [v0 contentView];
  v15 = [v14 &selRef_setNumberStyle_];

  v16 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.780392157 green:0.780392157 blue:0.8 alpha:1.0];
  v17 = [v16 CGColor];

  [v15 setBorderColor_];
  v18 = v0;
  v19 = sub_22835B508();
  v20 = sub_2283908D0();
  [v19 setBackgroundColor_];

  v21 = OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell____lazy_storage___gradientView;
  v22 = [*&v18[OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell____lazy_storage___gradientView] layer];
  v23 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.780392157 green:0.780392157 blue:0.8 alpha:1.0];
  v24 = [v23 CGColor];

  [v22 setBorderColor_];
  v25 = [*&v18[v21] layer];
  sub_2281AF0A0();
  v26 = sub_2283908D0();
  v27 = sub_228392BC0();
  LOBYTE(v22) = sub_228392C60();

  if (v22)
  {
    v28 = 1.0;
  }

  else
  {
    v28 = 0.0;
  }

  [v25 setBorderWidth_];

  sub_22835BF50(v8);
  return sub_22835DE38(v8, sub_228199F78);
}

void sub_22835BF50(uint64_t a1)
{
  v2 = v1;
  [v1 setIsAccessibilityElement_];
  sub_2283908C0();
  if (v4)
  {
    v5 = sub_228391FC0();
  }

  else
  {
    v5 = 0;
  }

  [v2 setAccessibilityLabel_];

  v6 = sub_228392000();
  v8 = v7;
  v9 = 0xE000000000000000;
  sub_2283931D0();

  strcpy(v22, "Medications.");
  BYTE5(v22[1]) = 0;
  HIWORD(v22[1]) = -5120;
  sub_228199F78(0);
  MEMORY[0x22AAB5C80](*(a1 + *(v10 + 40)), *(a1 + *(v10 + 40) + 8));
  MEMORY[0x22AAB5C80](46, 0xE100000000000000);
  v11 = sub_22835DE98(&qword_27D823E10, 255, MEMORY[0x277D11618], &protocol conformance descriptor for MedmojiColor);
  v12 = *(v11 + 16);
  v13 = sub_2283908E0();
  v14 = v12(v13, v11);
  MEMORY[0x22AAB5C80](v14);

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);
  v15 = [v2 accessibilityLabel];
  if (v15)
  {
    v16 = v15;
    v17 = sub_228392000();
    v9 = v18;
  }

  else
  {
    v17 = 0;
  }

  MEMORY[0x22AAB5C80](v17, v9);

  v19 = v22[0];
  v20 = v22[1];
  v22[0] = v6;
  v22[1] = v8;

  MEMORY[0x22AAB5C80](v19, v20);

  v21 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];
}

uint64_t sub_22835C1E8()
{
  sub_22835DCB4(0, &qword_27D824BC0, sub_228199F78);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13[-v2];
  sub_228199F78(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell_item;
  swift_beginAccess();
  sub_22835DD70(v0 + v9, v14, &qword_280DDCD50, sub_22817A700);
  if (v15)
  {
    sub_22817A700();
    v10 = swift_dynamicCast();
    (*(v6 + 56))(v3, v10 ^ 1u, 1, v5);
    if ((*(v6 + 48))(v3, 1, v5) != 1)
    {
      sub_22835DD08(v3, v8, sub_228199F78);
      v11 = v8[*(v5 + 36)];
      sub_22835DE38(v8, sub_228199F78);
      return v11;
    }
  }

  else
  {
    sub_22835DDDC(v14, &qword_280DDCD50, sub_22817A700);
    (*(v6 + 56))(v3, 1, 1, v5);
  }

  sub_22835DDDC(v3, &qword_27D824BC0, sub_228199F78);
  return 0;
}

uint64_t (*sub_22835C4E8(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22835C54C;
}

id sub_22835C5F0()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI9ShapeCell____lazy_storage___shapeView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI9ShapeCell____lazy_storage___shapeView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI9ShapeCell____lazy_storage___shapeView);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(sub_228390970()) initWithFrame_];
    sub_228390960();
    v6 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_22835C684(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  sub_22835DCB4(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - v11;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI9ShapeCell____lazy_storage___shapeView] = 0;
  v13 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI9ShapeCell_item];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v40.receiver = v4;
  v40.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v40, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = [v14 contentView];
  v16 = [v15 layer];

  v17 = [v14 contentView];
  [v17 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v41.origin.x = v19;
  v41.origin.y = v21;
  v41.size.width = v23;
  v41.size.height = v25;
  [v16 setCornerRadius_];

  sub_228391380();
  v26 = sub_2283913A0();
  (*(*(v26 - 8) + 56))(v12, 0, 1, v26);
  MEMORY[0x22AAB6420](v12);
  v27 = [v14 contentView];

  v28 = sub_22835C5F0();
  [v27 addSubview_];

  v29 = *&v14[OBJC_IVAR____TtC19HealthMedicationsUI9ShapeCell____lazy_storage___shapeView];
  v30 = [v14 contentView];
  [v30 bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v42.origin.x = v32;
  v42.origin.y = v34;
  v42.size.width = v36;
  v42.size.height = v38;
  v43 = CGRectInset(v42, 6.0, 6.0);
  [v29 setFrame_];

  return v14;
}

void sub_22835C9EC()
{
  v22.receiver = v0;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, sel_layoutSubviews);
  v1 = [v0 contentView];
  v2 = [v1 layer];

  v3 = [v0 contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  [v2 setCornerRadius_];

  v12 = sub_22835C5F0();
  v13 = [v0 contentView];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v24.origin.x = v15;
  v24.origin.y = v17;
  v24.size.width = v19;
  v24.size.height = v21;
  v25 = CGRectInset(v24, 6.0, 6.0);
  [v12 setFrame_];
}

uint64_t sub_22835CBA0()
{
  v1 = sub_228390D50();
  v60 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v56 = v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228228644(0);
  v4 = v3;
  MEMORY[0x28223BE20](v3);
  v6 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22835DCB4(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v58 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v57 = v54 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v54 - v13;
  MEMORY[0x28223BE20](v12);
  v59 = v54 - v15;
  sub_22835DCB4(0, &qword_27D8238B0, sub_228181CBC);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v54 - v17;
  sub_228181CBC(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC19HealthMedicationsUI9ShapeCell_item;
  swift_beginAccess();
  sub_22835DD70(&v0[v24], v61, &qword_280DDCD50, sub_22817A700);
  if (!v62)
  {
    sub_22835DDDC(v61, &qword_280DDCD50, sub_22817A700);
    (*(v21 + 56))(v18, 1, 1, v20);
    return sub_22835DDDC(v18, &qword_27D8238B0, sub_228181CBC);
  }

  sub_22817A700();
  v25 = swift_dynamicCast();
  (*(v21 + 56))(v18, v25 ^ 1u, 1, v20);
  if ((*(v21 + 48))(v18, 1, v20) == 1)
  {
    return sub_22835DDDC(v18, &qword_27D8238B0, sub_228181CBC);
  }

  sub_22835DD08(v18, v23, sub_228181CBC);
  v26 = v23[*(v20 + 36)];
  v55 = v0;
  v27 = [v0 contentView];
  v28 = [v27 layer];

  v29 = v6;
  if (v26 == 1)
  {
    v30 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.780392157 green:0.780392157 blue:0.8 alpha:1.0];
    v31 = 3.0;
  }

  else
  {
    v30 = [objc_opt_self() secondarySystemFillColor];
    v31 = 0.0;
  }

  v33 = v59;
  v34 = [v30 CGColor];

  [v28 setBorderColor_];
  v35 = [v55 contentView];
  v36 = [v35 layer];

  [v36 setBorderWidth_];
  v37 = sub_22835C5F0();
  sub_228390940();

  MedicationShape.previewConfig.getter(v14);
  v38 = v33;
  v39 = v60;
  v54[0] = *(v60 + 56);
  v54[1] = v60 + 56;
  (v54[0])(v14, 0, 1, v1);
  v40 = *(v4 + 48);
  v41 = MEMORY[0x277D116C8];
  sub_22835DD70(v38, v29, &qword_280DDBD20, MEMORY[0x277D116C8]);
  sub_22835DD70(v14, v29 + v40, &qword_280DDBD20, v41);
  v42 = *(v39 + 48);
  if (v42(v29, 1, v1) != 1)
  {
    v44 = v57;
    sub_22835DD70(v29, v57, &qword_280DDBD20, MEMORY[0x277D116C8]);
    if (v42(v29 + v40, 1, v1) != 1)
    {
      v49 = v60;
      v50 = v56;
      (*(v60 + 32))(v56, v29 + v40, v1);
      sub_22835DE98(&qword_27D8257B8, 255, MEMORY[0x277D116C8], MEMORY[0x277D116D0]);
      v51 = sub_228391FB0();
      v52 = *(v49 + 8);
      v52(v50, v1);
      v53 = MEMORY[0x277D116C8];
      sub_22835DDDC(v14, &qword_280DDBD20, MEMORY[0x277D116C8]);
      sub_22835DDDC(v59, &qword_280DDBD20, v53);
      v52(v44, v1);
      sub_22835DDDC(v29, &qword_280DDBD20, v53);
      v46 = v55;
      if (v51)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v45 = MEMORY[0x277D116C8];
    sub_22835DDDC(v14, &qword_280DDBD20, MEMORY[0x277D116C8]);
    sub_22835DDDC(v59, &qword_280DDBD20, v45);
    (*(v60 + 8))(v44, v1);
LABEL_13:
    sub_22835DE38(v29, sub_228228644);
    v46 = v55;
LABEL_14:
    v47 = *&v46[OBJC_IVAR____TtC19HealthMedicationsUI9ShapeCell____lazy_storage___shapeView];
    v48 = v58;
    MedicationShape.previewConfig.getter(v58);
    (v54[0])(v48, 0, 1, v1);
    sub_228390950();

    goto LABEL_15;
  }

  v43 = MEMORY[0x277D116C8];
  sub_22835DDDC(v14, &qword_280DDBD20, MEMORY[0x277D116C8]);
  sub_22835DDDC(v38, &qword_280DDBD20, v43);
  if (v42(v29 + v40, 1, v1) != 1)
  {
    goto LABEL_13;
  }

  sub_22835DDDC(v29, &qword_280DDBD20, MEMORY[0x277D116C8]);
LABEL_15:
  sub_22835D44C();
  return sub_22835DE38(v23, sub_228181CBC);
}

void sub_22835D44C()
{
  v1 = v0;
  [v0 setIsAccessibilityElement_];
  sub_2283909B0();
  if (v2)
  {
    v3 = sub_228391FC0();
  }

  else
  {
    v3 = 0;
  }

  [v1 setAccessibilityLabel_];

  v4 = sub_228392000();
  v6 = v5;
  v7 = 0xE000000000000000;
  sub_2283931D0();

  strcpy(v19, "Medications.");
  BYTE5(v19[1]) = 0;
  HIWORD(v19[1]) = -5120;
  v8 = sub_22835DE98(&qword_27D8238C0, 255, MEMORY[0x277D11640], &protocol conformance descriptor for MedicationShape);
  v9 = *(v8 + 16);
  v10 = sub_2283909E0();
  v11 = v9(v10, v8);
  MEMORY[0x22AAB5C80](v11);

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);
  v12 = [v1 accessibilityLabel];
  if (v12)
  {
    v13 = v12;
    v14 = sub_228392000();
    v7 = v15;
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x22AAB5C80](v14, v7);

  v16 = v19[0];
  v17 = v19[1];
  v19[0] = v4;
  v19[1] = v6;

  MEMORY[0x22AAB5C80](v16, v17);

  v18 = sub_228391FC0();

  [v1 setAccessibilityIdentifier_];
}

uint64_t sub_22835D770()
{
  sub_22835DCB4(0, &qword_27D8238B0, sub_228181CBC);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13[-v2];
  sub_228181CBC(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI9ShapeCell_item;
  swift_beginAccess();
  sub_22835DD70(v0 + v9, v14, &qword_280DDCD50, sub_22817A700);
  if (v15)
  {
    sub_22817A700();
    v10 = swift_dynamicCast();
    (*(v6 + 56))(v3, v10 ^ 1u, 1, v5);
    if ((*(v6 + 48))(v3, 1, v5) != 1)
    {
      sub_22835DD08(v3, v8, sub_228181CBC);
      v11 = v8[*(v5 + 36)];
      sub_22835DE38(v8, sub_228181CBC);
      return v11;
    }
  }

  else
  {
    sub_22835DDDC(v14, &qword_280DDCD50, sub_22817A700);
    (*(v6 + 56))(v3, 1, 1, v5);
  }

  sub_22835DDDC(v3, &qword_27D8238B0, sub_228181CBC);
  return 0;
}

uint64_t sub_22835DA4C@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_22835DD70(v2 + v4, a2, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_22835DADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *a4;
  swift_beginAccess();
  sub_22818FD64(a1, v5 + v8);
  v9 = swift_endAccess();
  a5(v9);
  return sub_22835DDDC(a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t (*sub_22835DB68(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22835DBCC;
}

uint64_t sub_22835DBE4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

void sub_22835DCB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_22835DD08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22835DD70(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22835DCB4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22835DDDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22835DCB4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22835DE38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22835DE98(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

Swift::Bool __swiftcall PregnancyTrimesterLactationRatings.isCritical(for:)(HealthMedicationsUI::MedicationSecondaryEducationType a1)
{
  if (*a1 == 1)
  {
    return sub_228390F40();
  }

  else
  {
    return sub_228390F50();
  }
}

Swift::Bool __swiftcall PregnancyTrimesterLactationRatings.shouldIncludeMedication(for:importance:)(HealthMedicationsUI::MedicationSecondaryEducationType a1, HealthMedicationsUI::MedicationInformationImportance importance)
{
  v2 = *importance;
  if (*a1 == 1)
  {
    v3 = sub_228390F40();
  }

  else
  {
    v3 = sub_228390F50();
  }

  return (v2 ^ v3) & 1;
}

uint64_t sub_22835DF4C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
  if (sub_228392C60())
  {
    if (v2)
    {
      if (v3)
      {
        sub_22817A958(0, &qword_27D8284C0, 0x277CCAE58);
        v4 = v3;
        v5 = v2;
        v6 = sub_228392C60();

        if (v6)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

id sub_22835E004()
{
  v0 = [objc_opt_self() medicationDoseEventType];

  return v0;
}

void *sub_22835E048()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t sub_22835E0B4()
{
  v1 = [*v0 semanticIdentifier];
  v2 = [v1 description];
  v3 = sub_228392000();
  v5 = v4;

  MEMORY[0x22AAB5C80](v3, v5);

  return 0x6574497472616843;
}

uint64_t sub_22835E160(uint64_t a1)
{
  v2 = sub_22835F0E4();

  return MEMORY[0x282169440](a1, v2);
}

id _sSo18HKStackedBarSeriesC19HealthMedicationsUIE019makeMedicationEventC0AByFZ_0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D12AD8]) init];
  v1 = [objc_allocWithZone(MEMORY[0x277D12AE0]) &selRef_setBoundarySupplementaryItems_];
  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  [v1 setStrokeColor_];

  [v1 setLineWidth_];
  [v1 setBlendMode_];
  v4 = v0;
  [v4 setUnselectedStrokeStyle_];
  [v4 setCornerRadii_];
  v5 = [objc_allocWithZone(MEMORY[0x277D12AA0]) &selRef_setBoundarySupplementaryItems_];
  v6 = [v2 hk_medicationDoseEventTakenColor];
  [v5 setColor_];

  v7 = [objc_allocWithZone(MEMORY[0x277D12AA0]) &selRef_setBoundarySupplementaryItems_];
  v8 = [v2 hk_medicationDoseEventSkippedColor];
  [v7 &selRef:v8 setNumberStyle:?];

  v9 = [v2 hk_chartBackgroundColor];
  v23 = [objc_opt_self() strokeStyleWithColor:v9 lineWidth:1.0];

  [v4 setTiledStrokeStyle_];
  sub_228180ED0();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_228397F20;
  *(v10 + 32) = v5;
  *(v10 + 40) = v7;
  sub_22817A958(0, &qword_280DDBB10, 0x277D128A0);
  v22 = v5;
  v21 = v7;
  v11 = sub_228392190();

  [v4 setUnselectedFillStyles_];

  v12 = [objc_allocWithZone(MEMORY[0x277D12AA0]) init];
  v13 = [v2 hk_chartGrayGraphColor];
  [v12 setColor_];

  v14 = [objc_allocWithZone(MEMORY[0x277D12AA0]) init];
  v15 = [v2 hk_chartInactiveSeriesColor];
  [v14 setColor_];

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_228397F20;
  *(v16 + 32) = v12;
  *(v16 + 40) = v14;
  v17 = v12;
  v18 = v14;
  v19 = sub_228392190();

  [v4 setInactiveFillStyles_];

  return v4;
}

void sub_22835E56C(void *a1, void *a2)
{
  v84 = a2;
  v3 = sub_2283911B0();
  v82 = *(v3 - 1);
  v83 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22835F018(0, &qword_280DDCD80, MEMORY[0x277CC99E8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v86 = &v71 - v7;
  v8 = [a1 CHRRoomApplicationItems];
  v9 = [v8 timeScopeController];
  [v9 setSelectedTimeScope_];

  v10 = _sSo18HKStackedBarSeriesC19HealthMedicationsUIE019makeMedicationEventC0AByFZ_0();
  v11 = [objc_opt_self() standardNumericYAxisWithConfigurationOverrides_];
  v12 = v10;
  v85 = v11;
  [v12 setYAxis_];
  sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
  v13 = sub_228392C40();
  v14 = sub_228392C40();
  v15 = [objc_opt_self() valueRangeWithMinValue:v13 maxValue:v14];

  sub_2281A8ED4(MEMORY[0x277D84F90]);
  sub_22817A958(0, &qword_27D824270, 0x277D12B30);
  sub_228193168();
  v16 = sub_228391F10();

  v17 = [objc_opt_self() ruleWithDefaultAxisBounds:v15 axisBoundsOverrides:v16];

  [v12 setAxisScalingRule_];
  [v12 setIsCriticalForAutoscale_];
  [v12 setInvertYAxis_];
  v18 = objc_opt_self();
  v19 = [a1 healthStore];
  v20 = [v18 sharedInstanceForHealthStore_];

  if (v20)
  {
    v21 = [objc_opt_self() medicationDoseEventType];
    v22 = [v20 displayTypeForObjectType_];

    if (v22)
    {
      v83 = v17;
      v23 = objc_allocWithZone(type metadata accessor for MedicationChartDataFormatter());
      v24 = v22;
      v25 = [v23 init];
      v26 = objc_allocWithZone(MEMORY[0x277D128F0]);
      v27 = v12;
      v28 = [v26 initWithGraphSeries:v27 baseDisplayType:v24 valueFormatter:v25 dataTypeCode:273];

      v82 = v24;
      v29 = objc_allocWithZone(type metadata accessor for MedicationChartDataSource());
      v30 = v28;
      v31 = MedicationChartDataSource.init(with:displayType:)(v84, v30);
      v32 = [objc_allocWithZone(MEMORY[0x277D127C8]) init];
      v80 = v31;
      [v32 setDataSource_];
      v33 = [objc_opt_self() sharedOperationManager];
      [v32 setOperationManager_];

      v34 = v32;
      v35 = [v8 chartDataCacheController];
      v36 = v34;
      [v35 addCustomChartCache:v36 forDisplayType:v30];

      v37 = [objc_allocWithZone(MEMORY[0x277D127C0]) init];
      [v37 setChartCache_];
      v73 = v36;

      v79 = v37;
      [v27 setDataSource_];
      v81 = v27;

      sub_22835F018(0, &qword_27D828498, sub_22835F07C, MEMORY[0x277D84560]);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_228397F40;
      sub_228180ED0();
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_228396260;
      v74 = v30;
      *(v39 + 32) = v30;
      *(v38 + 32) = v39;
      v78 = [a1 healthStore];
      v77 = [v8 unitController];
      v76 = [v8 dateCache];
      v75 = [v8 chartDataCacheController];
      v40 = [v8 timeScopeController];
      v84 = v8;
      v41 = [v8 sampleDateRangeController];
      v88 = sub_22838F440();
      __swift_allocate_boxed_opaque_existential_1(v87);
      sub_22838F430();
      v42 = sub_22838F6C0();
      v43 = *(v42 - 8);
      v44 = v86;
      (*(v43 + 56))(v86, 1, 1, v42);
      sub_22835F07C(0);
      v72 = sub_228392190();

      v45 = v88;
      if (v88)
      {
        v46 = __swift_project_boxed_opaque_existential_0(v87, v88);
        v47 = *(v45 - 8);
        MEMORY[0x28223BE20](v46);
        v49 = &v71 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v47 + 16))(v49);
        v50 = sub_228393450();
        v51 = v49;
        v44 = v86;
        (*(v47 + 8))(v51, v45);
        __swift_destroy_boxed_opaque_existential_0(v87);
      }

      else
      {
        v50 = 0;
      }

      if ((*(v43 + 48))(v44, 1, v42) == 1)
      {
        v59 = 0;
      }

      else
      {
        v59 = sub_22838F610();
        (*(v43 + 8))(v44, v42);
      }

      v60 = objc_allocWithZone(MEMORY[0x277D12910]);
      v70 = v50;
      v68 = v40;
      v69 = v41;
      v61 = v41;
      v62 = v40;
      v63 = v75;
      v64 = v72;
      v66 = v77;
      v65 = v78;
      v67 = v76;
      [v60 initWithStackedDisplayTypes:v72 primaryDisplayTypeStackIndex:0 stackedDisplayTypeHeights:0 healthStore:v78 unitPreferenceController:v77 dateCache:v76 chartDataCacheController:v75 selectedTimeScopeController:v68 sampleTypeDateRangeController:v69 initialXValue:v70 currentCalendarOverride:v59 options:0x2000 timeScopeRanges:0];

      swift_unknownObjectRelease();
    }

    else
    {

      sub_228391190();
      v52 = sub_2283911A0();
      v53 = sub_2283925C0();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v87[0] = v55;
        *v54 = 136446210;
        v89 = &type metadata for MedicationChartItem;
        sub_22835EFD0();
        v56 = sub_228392020();
        v58 = sub_2281C96FC(v56, v57, v87);

        *(v54 + 4) = v58;
        _os_log_impl(&dword_22816B000, v52, v53, "[%{public}s] DisplayType not found for medication dose event type", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x22AAB7B80](v55, -1, -1);
        MEMORY[0x22AAB7B80](v54, -1, -1);
      }

      else
      {
      }

      (*(v82 + 1))(v5, v83);
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_22835EFD0()
{
  result = qword_27D828490;
  if (!qword_27D828490)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D828490);
  }

  return result;
}

void sub_22835F018(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22835F07C(uint64_t a1)
{
  if (!qword_27D8284A0)
  {
    sub_22817A958(255, &qword_27D8284A8, 0x277D12830);
    v1 = sub_228392240();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8284A0);
    }
  }
}

unint64_t sub_22835F0E4()
{
  result = qword_27D8284B0;
  if (!qword_27D8284B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8284B0);
  }

  return result;
}

unint64_t sub_22835F14C()
{
  result = qword_27D8284B8;
  if (!qword_27D8284B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8284B8);
  }

  return result;
}

uint64_t type metadata accessor for MedmojiPreviewDataSource(uint64_t a1)
{
  result = qword_27D8284D0;
  if (!qword_27D8284D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22835F1EC(uint64_t a1)
{
  sub_22835FD64(319, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_22835F2C4(void *a1)
{
  v2 = v1;
  v4 = sub_22838F4A0();
  v32 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22835FD64(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  v11 = qword_27D8290B0;
  v12 = sub_228390D50();
  (*(*(v12 - 8) + 56))(v2 + v11, 1, 1, v12);
  *(v2 + qword_27D8284C8) = a1;
  v13 = a1;
  _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
  swift_beginAccess();
  sub_22824F65C(v10, v2 + v11);
  swift_endAccess();
  v34[0] = 0;
  v34[1] = 0xE000000000000000;
  sub_2283931D0();

  strcpy(v34, "MutableArray<");
  HIWORD(v34[1]) = -4864;
  sub_22838F490();
  v14 = sub_22838F450();
  v16 = v15;
  v17 = *(v5 + 8);
  v31 = v5 + 8;
  v33 = v17;
  v17(v7, v4);
  MEMORY[0x22AAB5C80](v14, v16);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v18 = sub_22838FF30();
  v19 = MEMORY[0x277D84560];
  sub_22835FD64(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  sub_22838FEF0();
  *(swift_allocObject() + 16) = xmmword_228397F40;
  sub_22835FD64(0, &qword_27D823918, sub_228182780, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_228397F30;
  v21 = qword_27D8290B0;
  swift_beginAccess();
  sub_2281BF64C(v18 + v21, v10);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = type metadata accessor for MedicationAvatarItem(0);
  *(v20 + 56) = v23;
  *(v20 + 64) = sub_22835FDD0(&qword_27D8246F0, type metadata accessor for MedicationAvatarItem, &protocol conformance descriptor for MedicationAvatarItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v20 + 32));
  sub_2281AA8D4(v10, boxed_opaque_existential_1);
  v25 = (boxed_opaque_existential_1 + *(v23 + 20));
  *v25 = sub_22835FDC8;
  v25[1] = v22;

  sub_22838F490();
  v26 = (boxed_opaque_existential_1 + *(v23 + 28));
  type metadata accessor for MedicationAvatarCell();
  sub_22835FDD0(&qword_27D8284E8, type metadata accessor for MedicationAvatarCell, &unk_228399F48);
  *v26 = sub_22838FBB0();
  v26[1] = v27;

  *(v20 + 96) = &type metadata for MedicationDetailItem;
  *(v20 + 104) = sub_228269A58();
  *(v20 + 72) = v13;
  type metadata accessor for MedicationDetailCell();
  sub_22835FDD0(&qword_27D8284F0, type metadata accessor for MedicationDetailCell, &unk_22839F658);
  v28 = v13;
  *(v20 + 80) = sub_22838FBB0();
  *(v20 + 88) = v29;
  sub_22838F490();
  sub_22838F450();
  v33(v7, v32);
  sub_22838FED0();
  sub_22838FF50();

  return v18;
}

uint64_t sub_22835F864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22835FD64(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12[-v5];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_228390D50();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v6, a2, v9);
    (*(v10 + 56))(v6, 0, 1, v9);
    v11 = qword_27D8290B0;
    swift_beginAccess();
    sub_22824F65C(v6, v8 + v11);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_22835FA28()
{
  v1 = v0 + qword_27D8290B0;

  return sub_2281A9A08(v1);
}

uint64_t sub_22835FA68()
{
  v0 = sub_22838FFB0();
  v1 = *(v0 + qword_27D8284C8);

  sub_2281A9A08(v0 + qword_27D8290B0);

  return swift_deallocClassInstance();
}

uint64_t sub_22835FB00(uint64_t a1, uint64_t a2)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  v6 = [objc_opt_self() systemBackgroundColor];
  sub_228390050();
  sub_228390070();
  v7 = sub_2283900C0();
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_22835FC00()
{
  type metadata accessor for MedicationAvatarCell();
  sub_22835FDD0(&qword_27D8284E8, type metadata accessor for MedicationAvatarCell, &unk_228399F48);
  sub_2283926B0();
  type metadata accessor for MedicationDetailCell();
  sub_22835FDD0(&qword_27D8284F0, type metadata accessor for MedicationDetailCell, &unk_22839F658);
  return sub_2283926B0();
}

void sub_22835FD64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22835FDD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22835FE24()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = sub_22838F1C0();
    sub_2281A8644(MEMORY[0x277D84F90]);
    v3 = sub_228391F10();

    [v1 openSensitiveURL:v2 withOptions:v3];
  }
}

void _s19HealthMedicationsUI0B10TapToRadarC15promptBeforeTTR7message14viewController6actionySS_So06UIViewL0CyyctFZ_0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_228391FC0();
  v9 = sub_228391FC0();
  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = sub_228391FC0();
  v12 = objc_opt_self();
  v13 = [v12 actionWithTitle:v11 style:1 handler:0];

  [v10 addAction_];
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;

  v15 = sub_228391FC0();
  v18[4] = sub_2281BC81C;
  v18[5] = v14;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_228281980;
  v18[3] = &block_descriptor_30;
  v16 = _Block_copy(v18);

  v17 = [v12 actionWithTitle:v15 style:0 handler:v16];
  _Block_release(v16);

  [v10 addAction_];
  [a3 presentViewController:v10 animated:1 completion:0];
}

uint64_t _s19HealthMedicationsUI0B10TapToRadarC19medicationsTracking14viewControllerySo06UIViewJ0CSg_tFZ_0(void *a1)
{
  v2 = sub_22838F1F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = objc_opt_self();
  v10 = sub_228391FC0();
  v11 = sub_228391FC0();
  v12 = [v9 hk:0 tapToRadarURLForBundleID:1330752 component:v10 title:v11 description:7 classification:0 reproducibility:0 keywords:3 autoDiagnostics:0 attachments:0 collaborationContactHandles:1 diagnosticExtensionOptions:?];

  sub_22838F1D0();
  if (HKShowSensitiveLogItems() && a1)
  {
    (*(v3 + 16))(v6, v8, v2);
    v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v14 = swift_allocObject();
    (*(v3 + 32))(v14 + v13, v6, v2);
    v15 = a1;
    _s19HealthMedicationsUI0B10TapToRadarC15promptBeforeTTR7message14viewController6actionySS_So06UIViewL0CyyctFZ_0(0x10000000000000D2, 0x80000002283B5E50, v15, sub_228360894, v14);
  }

  else
  {
    v16 = [objc_opt_self() defaultWorkspace];
    if (v16)
    {
      v17 = v16;
      v18 = sub_22838F1C0();
      sub_2281A8644(MEMORY[0x277D84F90]);
      v19 = sub_228391F10();

      [v17 openSensitiveURL:v18 withOptions:v19];
    }
  }

  return (*(v3 + 8))(v8, v2);
}

uint64_t _s19HealthMedicationsUI0B10TapToRadarC16drugInteractions14viewControllerySo06UIViewJ0C_tFZ_0(void *a1)
{
  v2 = sub_22838F1F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v9 = objc_opt_self();
  v10 = sub_228391FC0();
  v11 = sub_228391FC0();
  v12 = [v9 hk:0 tapToRadarURLForBundleID:1330752 component:v10 title:v11 description:7 classification:0 reproducibility:0 keywords:2 autoDiagnostics:0 attachments:0 collaborationContactHandles:1 diagnosticExtensionOptions:?];

  sub_22838F1D0();
  if (HKShowSensitiveLogItems())
  {
    (*(v3 + 16))(v6, v8, v2);
    v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v14 = swift_allocObject();
    (*(v3 + 32))(v14 + v13, v6, v2);
    _s19HealthMedicationsUI0B10TapToRadarC15promptBeforeTTR7message14viewController6actionySS_So06UIViewL0CyyctFZ_0(0x10000000000000D2, 0x80000002283B5E50, a1, sub_2283607B4, v14);
  }

  else
  {
    v15 = [objc_opt_self() defaultWorkspace];
    if (v15)
    {
      v16 = v15;
      v17 = sub_22838F1C0();
      sub_2281A8644(MEMORY[0x277D84F90]);
      v18 = sub_228391F10();

      [v16 openSensitiveURL:v17 withOptions:v18];
    }
  }

  return (*(v3 + 8))(v8, v2);
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_4Tm()
{
  v1 = sub_22838F1F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_228360898(uint64_t a1, uint64_t a2, double a3)
{
  if (!a2)
  {
    return;
  }

  v5 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v5 setLineSpacing_];
  [v5 setAlignment_];
  v17 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  v6 = [v3 attributedText];
  if (v6)
  {

    v7 = [v3 attributedText];
    if (!v7)
    {
      __break(1u);
      return;
    }

    v8 = v7;
    [v17 appendAttributedString_];
    goto LABEL_8;
  }

  v9 = [v3 font];
  if (v9)
  {
    v10 = v9;
    v11 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v12 = sub_228391FC0();
    v13 = [v11 initWithString_];

    [v17 appendAttributedString_];
    v14 = *MEMORY[0x277D740A8];
    v8 = v10;
    [v17 addAttribute:v14 value:v8 range:{0, objc_msgSend(v17, sel_length)}];

LABEL_8:
    v15 = *MEMORY[0x277D74118];
    v16 = v5;
    v5 = v17;
    [v5 addAttribute:v15 value:v16 range:{0, objc_msgSend(v5, sel_length)}];

    [v3 setAttributedText_];
  }
}

uint64_t sub_228360B00()
{
  sub_228362CA8(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v35 = &v27 - v1;
  sub_22824E8E4(0);
  v28 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228362E64(0);
  v7 = *(v6 - 8);
  v29 = v6;
  v30 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228362F00(0);
  v11 = *(v10 - 8);
  v31 = v10;
  v32 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228362F94(0);
  v15 = *(v14 - 8);
  v33 = v14;
  v34 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2283906C0();
  sub_22830F1F0(0);
  sub_2281A6490(0, &qword_280DDBB50, &qword_280DDB9E0, 0x277D115B8, MEMORY[0x277D83940]);
  sub_228363098(&qword_27D827D00, sub_22830F1F0, MEMORY[0x277CBCD90]);
  sub_2283919A0();

  v18 = v28;
  sub_2283916C0();

  (*(v3 + 8))(v5, v18);
  sub_228363098(&qword_27D828538, sub_228362E64, MEMORY[0x277CBCB10]);
  v19 = v29;
  sub_228391AA0();
  (*(v30 + 8))(v9, v19);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v20 = sub_228392790();
  v36 = v20;
  v21 = sub_228392730();
  v22 = v35;
  (*(*(v21 - 8) + 56))(v35, 1, 1, v21);
  sub_228363098(&qword_27D828548, sub_228362F00, MEMORY[0x277CBCBE0]);
  sub_2281A1504();
  v23 = v31;
  sub_228391A70();
  sub_2281A16F0(v22);

  (*(v32 + 8))(v13, v23);
  sub_228363098(&qword_27D828550, sub_228362F94, MEMORY[0x277CBCD60]);
  v24 = v33;
  v25 = sub_228391990();
  (*(v34 + 8))(v17, v24);
  return v25;
}

uint64_t sub_22836108C()
{
  sub_228362CA8(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v35 = &v27 - v1;
  sub_22824E8E4(0);
  v28 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228362E64(0);
  v7 = *(v6 - 8);
  v29 = v6;
  v30 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228362F00(0);
  v11 = *(v10 - 8);
  v31 = v10;
  v32 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228362F94(0);
  v15 = *(v14 - 8);
  v33 = v14;
  v34 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2283906C0();
  sub_22830F1F0(0);
  sub_2281A6490(0, &qword_280DDBB50, &qword_280DDB9E0, 0x277D115B8, MEMORY[0x277D83940]);
  sub_228363098(&qword_27D827D00, sub_22830F1F0, MEMORY[0x277CBCD90]);
  sub_2283919A0();

  v18 = v28;
  sub_2283916C0();

  (*(v3 + 8))(v5, v18);
  sub_228363098(&qword_27D828538, sub_228362E64, MEMORY[0x277CBCB10]);
  v19 = v29;
  sub_228391AA0();
  (*(v30 + 8))(v9, v19);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v20 = sub_228392790();
  v36 = v20;
  v21 = sub_228392730();
  v22 = v35;
  (*(*(v21 - 8) + 56))(v35, 1, 1, v21);
  sub_228363098(&qword_27D828548, sub_228362F00, MEMORY[0x277CBCBE0]);
  sub_2281A1504();
  v23 = v31;
  sub_228391A70();
  sub_2281A16F0(v22);

  (*(v32 + 8))(v13, v23);
  sub_228363098(&qword_27D828550, sub_228362F94, MEMORY[0x277CBCD60]);
  v24 = v33;
  v25 = sub_228391990();
  (*(v34 + 8))(v17, v24);
  return v25;
}

uint64_t sub_22836160C()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v2 = *(v0 + 24);
    sub_2281A65B4(0);
    swift_allocObject();
    v3 = v2;
    v1 = sub_228391890();
    *(v0 + 56) = v1;
  }

  return v1;
}

uint64_t sub_22836169C()
{
  v1 = v0;
  v2 = MEMORY[0x277D84560];
  sub_228362CA8(0, &qword_27D827750, sub_228212470, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_228397F30;
  v4 = sub_22836160C();
  v5 = *(v0 + 32);
  type metadata accessor for RelatedCHRRecordsDataSource(0);
  swift_allocObject();
  v6 = v5;
  v7 = RelatedCHRRecordsDataSource.init(with:healthStore:)(v4, v6);
  v8 = MEMORY[0x277D12500];
  v9 = sub_228363098(&qword_27D828558, type metadata accessor for RelatedCHRRecordsDataSource, MEMORY[0x277D12500]);
  *(v3 + 32) = v7;
  *(v3 + 40) = v9;
  *(v3 + 48) = sub_228362950();
  *(v3 + 56) = v10;
  sub_2283901F0();
  swift_allocObject();

  v11 = sub_228390210();
  sub_228362CA8(0, &qword_27D828508, sub_228362D0C, v2);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228397F30;
  *(inited + 32) = 2;
  sub_22838FE90();
  v13 = sub_22838FEA0();
  v14 = MEMORY[0x277D110F0];
  *(inited + 40) = v13;
  *(inited + 48) = v14;
  v15 = MEMORY[0x277D10F80];
  v16 = MEMORY[0x277D11048];
  *(inited + 56) = MEMORY[0x277D10F80];
  *(inited + 64) = 1;
  *(inited + 72) = v11;
  *(inited + 80) = v16;
  *(inited + 88) = MEMORY[0x277D11040];
  sub_2281A90B4(inited);
  swift_setDeallocating();
  sub_228362D0C(0);

  swift_arrayDestroy();
  sub_2283902F0();
  swift_allocObject();

  v17 = sub_2283902E0();
  v18 = *(v1 + 24);
  v19 = sub_22818259C(v18);

  v48[0] = v19;
  v48[1] = sub_228363098(&qword_27D828560, type metadata accessor for MedicationChartCellDataSource, v8);
  v20 = *(v1 + 24);
  v21 = sub_228362108(v20);

  v48[2] = v21;
  v48[3] = v15;
  v48[4] = sub_228361BB4();
  v48[5] = v22;
  sub_2283926E0();
  __swift_project_boxed_opaque_existential_0(v47, v47[3]);
  v23 = sub_22838F7E0();
  v24 = *(v1 + 24);
  v25 = objc_allocWithZone(type metadata accessor for MedicationHighlightsDataSource(0));
  v26 = v24;
  v27 = sub_2281AADE4(v23, v26);

  v28 = sub_228363098(&qword_27D828568, type metadata accessor for MedicationHighlightsDataSource, MEMORY[0x277D11110]);
  __swift_destroy_boxed_opaque_existential_0(v47);
  v48[6] = v27;
  v48[7] = v28;
  type metadata accessor for MedicationDetailsDataSource(0);
  swift_allocObject();

  v30 = MedicationDetailsDataSource.init(with:healthStore:)(v29, v6);
  v31 = sub_228363098(&qword_27D828570, type metadata accessor for MedicationDetailsDataSource, v8);
  v48[8] = v30;
  v48[9] = v31;
  v32 = sub_22836259C();
  v33 = MEMORY[0x277D11080];
  v48[10] = v32;
  v48[11] = MEMORY[0x277D11080];
  v48[12] = sub_228362800();
  v48[13] = v34;
  v48[14] = v17;
  v48[15] = v33;

  v36 = 0;
  v37 = MEMORY[0x277D84F90];
LABEL_2:
  if (v36 <= 8)
  {
    v38 = 8;
  }

  else
  {
    v38 = v36;
  }

  v39 = v38 + 1;
  v40 = &v48[2 * v36];
  while (1)
  {
    if (v36 == 8)
    {
      sub_228362CA8(0, &qword_27D828578, sub_228212470, MEMORY[0x277D83D88]);
      swift_arrayDestroy();

      return v37;
    }

    if (v39 == ++v36)
    {
      break;
    }

    v41 = v40 + 2;
    v42 = *v40;
    v40 += 2;
    if (v42)
    {
      v43 = *(v41 - 1);
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_228198C84(0, v37[2] + 1, 1, v37);
        v37 = result;
      }

      v45 = v37[2];
      v44 = v37[3];
      if (v45 >= v44 >> 1)
      {
        result = sub_228198C84((v44 > 1), v45 + 1, 1, v37);
        v37 = result;
      }

      v37[2] = v45 + 1;
      v46 = &v37[2 * v45];
      v46[4] = v42;
      v46[5] = v43;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228361BB4()
{
  sub_2281BC944();
  v23 = *(v1 - 8);
  v24 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_228390EC0();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = *(v0 + 32);
  v6 = *(v0 + 24);
  v7 = v5;
  v8 = sub_22836108C();
  v9 = *(v0 + 40);
  type metadata accessor for ScheduleDataSource(0);
  v10 = swift_allocObject();
  v27[3] = sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v27[4] = &protocol witness table for HKMedicationUserDomainConcept;
  v27[0] = v6;
  v11 = (v10 + qword_27D8244C0);
  *v11 = 0xD000000000000014;
  v11[1] = 0x80000002283A9440;
  v12 = qword_27D8244C8;
  v25 = v6;
  sub_228390EB0();
  v13 = objc_allocWithZone(sub_228390EF0());
  *(v10 + v12) = sub_228390EE0();
  v14 = qword_27D8244D0;
  *(v10 + qword_27D8244D0) = 0;
  v15 = qword_27D8244E0;
  *(v10 + qword_27D8244E0) = 0;
  *(v10 + qword_27D8244E8) = MEMORY[0x277D84FA0];
  sub_228180FB0(v27, v10 + qword_27D8244B0);
  *(v10 + v14) = v5;
  *(v10 + qword_27D8244D8) = v9;
  v26 = 0;
  sub_2281BC72C(0);
  swift_allocObject();
  v16 = v7;

  *(v10 + qword_27D8244B8) = sub_228391890();
  *(v10 + qword_27D8244A8) = 0;
  *(v10 + v15) = v8;

  sub_228362CA8(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  sub_22838FEF0();
  *(swift_allocObject() + 16) = xmmword_228397F40;
  sub_22838FED0();
  v17 = sub_22838F920();
  v18 = *(v17 + qword_27D8244E0);
  if (v18)
  {

    v19 = v18;
  }

  else
  {
    LOBYTE(v26) = 1;

    sub_2283918C0();
    sub_228363098(&qword_27D8245C8, sub_2281BC944, MEMORY[0x277CBCE80]);
    v20 = v24;
    v19 = sub_228391990();
    (*(v23 + 8))(v3, v20);
  }

  v26 = v19;
  swift_allocObject();
  swift_weakInit();
  sub_22829514C();
  sub_228363098(&qword_27D8245D8, sub_22829514C, MEMORY[0x277CBCD90]);

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  sub_2281AFAAC();

  __swift_destroy_boxed_opaque_existential_0(v27);
  sub_228363098(&qword_27D826C00, type metadata accessor for ScheduleDataSource, MEMORY[0x277D12500]);
  return v17;
}

uint64_t sub_228362108(void *a1)
{
  v34 = sub_22838F4A0();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[2];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[4];
  type metadata accessor for MedicationsRecordDoseDataSource(0);
  v10 = swift_allocObject();
  *(v10 + qword_27D827488) = 0;
  *(v10 + qword_27D827490) = 0;
  *(v10 + qword_27D827498) = 0;
  v11 = (v10 + qword_27D8274A0);
  *v11 = 0;
  v11[1] = 0;
  *(v10 + qword_27D8274A8) = 0;
  *(v10 + qword_27D8274B0) = 0;
  *(v10 + qword_280DDC720) = v9;
  *(v10 + qword_27D8274B8) = a1;
  *(v10 + qword_27D8274C0) = v6;
  *(v10 + qword_27D8274C8) = v8;
  sub_228390890();

  v12 = v9;
  v13 = a1;

  v14 = v8;
  sub_228390880();
  v15 = sub_228390860();

  *(v10 + qword_27D8274D0) = v15;
  v16 = objc_allocWithZone(type metadata accessor for MedicationScheduleObserver(0));
  v17 = v12;
  v18 = sub_22819C7AC(v17);

  *(v10 + qword_27D8274D8) = v18;
  type metadata accessor for MedicationDoseEventDataSource();
  v19 = swift_allocObject();
  v20 = v17;
  v21 = v13;
  swift_defaultActor_initialize();
  *(v19 + 112) = v20;
  *(v19 + 120) = v13;
  *(v10 + qword_27D8274E0) = v19;
  v22 = *v11;
  v23 = v11[1];
  *v11 = sub_228362E58;
  v11[1] = v7;

  sub_228176EC8(v22, v23);
  v24 = (v10 + qword_27D8274E8);
  v25 = *(type metadata accessor for DayScheduleProvider(0) + 24);
  v26 = sub_2283909A0();
  (*(*(v26 - 8) + 56))(&v24[v25], 1, 1, v26);
  v27 = MEMORY[0x277D84F90];
  *v24 = MEMORY[0x277D84F90];
  *(v24 + 1) = v27;
  sub_228362CA8(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  sub_22838FEF0();
  *(swift_allocObject() + 16) = xmmword_228397F30;
  sub_22838FED0();
  sub_22838FED0();
  v35[0] = 0;
  v35[1] = 0xE000000000000000;
  sub_2283931D0();

  strcpy(v35, "MutableArray<");
  HIWORD(v35[1]) = -4864;
  sub_22838F490();
  v28 = sub_22838F450();
  v30 = v29;
  (*(v3 + 8))(v5, v34);
  MEMORY[0x22AAB5C80](v28, v30);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v31 = sub_22838FF30();

  sub_2282DBAA8();
  sub_2282DBCBC();

  return v31;
}

uint64_t sub_22836259C()
{
  v1 = sub_22836160C();
  v2 = *(v0 + 40);
  type metadata accessor for MedicationCompactEducationDataSource(0);
  swift_allocObject();
  swift_retain_n();
  v3 = MedicationCompactEducationDataSource.init(with:analyticsManager:)(v1, v2);
  type metadata accessor for MedicationRegularEducationDataSource(0);
  swift_allocObject();

  v5 = MedicationRegularEducationDataSource.init(with:analyticsManager:)(v4, v2);
  sub_228362CA8(0, &qword_27D828508, sub_228362D0C, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228397F30;
  *(inited + 32) = 1;
  v7 = sub_228363098(&qword_27D827FD0, type metadata accessor for MedicationCompactEducationDataSource, &protocol conformance descriptor for MedicationCompactEducationDataSource);
  v8 = MEMORY[0x277D12500];
  v9 = sub_228363098(&qword_27D828518, type metadata accessor for MedicationCompactEducationDataSource, MEMORY[0x277D12500]);
  *(inited + 40) = v3;
  *(inited + 48) = v7;
  *(inited + 56) = v9;
  *(inited + 64) = 2;
  v10 = sub_228363098(&qword_27D825998, type metadata accessor for MedicationRegularEducationDataSource, &protocol conformance descriptor for MedicationRegularEducationDataSource);
  v11 = sub_228363098(&qword_27D828520, type metadata accessor for MedicationRegularEducationDataSource, v8);
  *(inited + 72) = v5;
  *(inited + 80) = v10;
  *(inited + 88) = v11;
  sub_2281A90B4(inited);
  swift_setDeallocating();
  sub_228362D0C(0);

  swift_arrayDestroy();
  sub_2283902F0();
  swift_allocObject();
  v12 = sub_2283902E0();

  return v12;
}

uint64_t sub_228362800()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  type metadata accessor for MedicationInformationDataSource(0);
  v5 = swift_allocObject();
  *(v5 + qword_27D825D70) = 0;
  *(v5 + qword_27D825D78) = 0;
  *(v5 + qword_27D825D80) = MEMORY[0x277D84FA0];
  *(v5 + qword_27D825D88) = v2;
  *(v5 + qword_27D825D90) = v1;
  *(v5 + qword_27D825D98) = v4;
  *(v5 + qword_27D825DA0) = v3;
  v6 = v2;

  v7 = v4;

  v8 = sub_22838F920();

  v9 = [v6 firstOntologyCoding];

  if (v9)
  {

    sub_2282495C0();
  }

  sub_228363098(&qword_27D828500, type metadata accessor for MedicationInformationDataSource, MEMORY[0x277D12500]);
  return v8;
}

uint64_t sub_228362950()
{
  v1 = sub_22836160C();
  v2 = v0[2];
  v4 = v0[4];
  v3 = v0[5];
  type metadata accessor for OptionsDataSource(0);
  v5 = swift_allocObject();
  sub_228391150();
  v6 = (v5 + qword_27D8279A0);
  *v6 = 0xD000000000000020;
  v6[1] = 0x80000002283B3A00;
  *(v5 + qword_27D8279A8) = 0;
  *(v5 + qword_27D8279B0) = 0;
  *(v5 + qword_27D8279B8) = 0;
  *(v5 + qword_27D8279C0) = v2;
  *(v5 + qword_27D8279C8) = v1;
  *(v5 + qword_27D8279D0) = v4;
  *(v5 + qword_27D8279D8) = v3;
  sub_228362CA8(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  sub_22838FEF0();
  *(swift_allocObject() + 16) = xmmword_228398270;

  v7 = v4;

  sub_22838FED0();
  sub_22838FED0();
  sub_22838FED0();
  v8 = sub_22838F920();

  sub_22830A5B0(v9);
  sub_22830A824();

  sub_228363098(&qword_27D8284F8, type metadata accessor for OptionsDataSource, MEMORY[0x277D12500]);
  return v8;
}

uint64_t sub_228362C00()
{

  return swift_deallocClassInstance();
}

void sub_228362CA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_228362D0C(uint64_t a1)
{
  if (!qword_27D828510)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    sub_2281A92A4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D828510);
    }
  }
}

uint64_t sub_228362D7C(unsigned __int8 *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22838F940();
  }

  return result;
}

uint64_t sub_228362DE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
  v3 = *(v2 + 24);
  v4 = sub_228392C60();

  return v4 & 1;
}

void sub_228362E64(uint64_t a1)
{
  if (!qword_27D828528)
  {
    sub_22830F1F0(255);
    sub_228363098(&qword_27D827D00, sub_22830F1F0, MEMORY[0x277CBCD90]);
    v1 = sub_2283916D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D828528);
    }
  }
}

void sub_228362F00(uint64_t a1)
{
  if (!qword_27D828530)
  {
    sub_228362E64(255);
    sub_228363098(&qword_27D828538, sub_228362E64, MEMORY[0x277CBCB10]);
    v1 = sub_228391730();
    if (!v2)
    {
      atomic_store(v1, &qword_27D828530);
    }
  }
}

void sub_228362F94(uint64_t a1)
{
  if (!qword_27D828540)
  {
    sub_228362F00(255);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_228363098(&qword_27D828548, sub_228362F00, MEMORY[0x277CBCBE0]);
    sub_2281A1504();
    v1 = sub_2283917D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D828540);
    }
  }
}

uint64_t sub_228363098(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2283630F8@<X0>(_BYTE *a1@<X8>, unint64_t *a2@<X0>, uint64_t (*a3)(id *)@<X1>)
{
  v4 = *a2;
  v6[2] = &v7;
  result = sub_228309FEC(a3, v6, v4);
  *a1 = result & 1;
  return result;
}

id sub_2283631C8(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:a3 target:v3 action:*a2];
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

id sub_22836324C()
{
  v1 = qword_27D824C40;
  v2 = *(v0 + qword_27D824C40);
  if (v2)
  {
    v3 = *(v0 + qword_27D824C40);
  }

  else
  {
    v4 = sub_228391FC0();
    v5 = [objc_opt_self() systemImageNamed_];

    v6 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v5 style:0 target:v0 action:sel_tapToRadarButtonTappedWithSender_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_228363320()
{
  v1 = v0;
  v2 = sub_2283902A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390290();
  v6 = sub_228390280();
  (*(v3 + 8))(v5, v2);
  v7 = [v1 navigationItem];
  if (v6)
  {
    sub_228382CF4(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_228397F20;
    *(v8 + 32) = sub_22836324C();
    *(v8 + 40) = sub_2283631C8(&qword_27D824C38, &selRef_hxui_cancelButtonTapped, 1);
    sub_22817A958(0, &qword_27D824138, 0x277D751E0);
    v9 = sub_228392190();

    v10 = &selRef_setRightBarButtonItems_animated_;
  }

  else
  {
    v9 = sub_2283631C8(&qword_27D824C38, &selRef_hxui_cancelButtonTapped, 1);
    v10 = &selRef_setRightBarButtonItem_animated_;
  }

  [v7 *v10];
}

void sub_228363508(uint64_t a1)
{
  v2 = v1;
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  v7 = [v1 headerView];
  v8 = [v7 customIconContainerView];

  if (v8)
  {

    v9 = [objc_allocWithZone(sub_228390970()) initWithFrame_];
    sub_228390960();
    v10 = v9;
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = [v2 headerView];
    [v11 addSubview_];

    sub_228380F08(a1, v6, &qword_280DDBD20, MEMORY[0x277D116C8]);
    sub_228390950();
    sub_228382CF4(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_228397F00;
    v13 = [v2 headerView];
    v14 = [v13 topAnchor];

    v15 = [v10 topAnchor];
    v16 = objc_opt_self();
    v17 = 4.0;
    if (([v16 hk_currentDeviceHas4InchScreen] & 1) == 0)
    {
      if ([v16 hk_currentDeviceHas4Point7InchScreen])
      {
        v17 = 4.0;
      }

      else
      {
        v17 = 12.0;
      }
    }

    v18 = objc_opt_self();
    v19 = [v14 constraintEqualToAnchor:v15 constant:v17];

    *(v12 + 32) = v19;
    v20 = [v2 headerView];
    v21 = [v20 centerXAnchor];

    v22 = [v10 centerXAnchor];
    v23 = [v21 constraintEqualToAnchor_];

    *(v12 + 40) = v23;
    v24 = [v10 heightAnchor];
    v25 = [v24 constraintEqualToConstant_];

    *(v12 + 48) = v25;
    v26 = [v10 widthAnchor];

    v27 = [v26 constraintEqualToConstant_];
    *(v12 + 56) = v27;
    sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
    v28 = sub_228392190();

    [v18 activateConstraints_];

    v29 = qword_27D824C18;
    v30 = *&v2[qword_27D824C18];
    if (v30)
    {
      [v30 removeFromSuperview];
      v31 = *&v2[v29];
    }

    else
    {
      v31 = 0;
    }

    *&v2[v29] = v10;
  }
}

uint64_t sub_228363934()
{
  v1 = v0;
  v2 = qword_27D824C20;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380234(0, &qword_27D8277D0, &qword_27D825070, MEMORY[0x277D837D0]);
  sub_228380C4C();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v3 = *(v0 + v2);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + class metadata base offset for SpecificationStepViewController + 80);
  v6 = v3;
  v5();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380CDC(0, &qword_27D8245D0, MEMORY[0x277CBCD88]);
  sub_2281BCA04();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v7 = *(v1 + v2);
  v8 = *((*v4 & *v7) + class metadata base offset for SpecificationStepViewController + 88);
  v9 = v7;
  v8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  type metadata accessor for MedicationOnboardingFlowManager(0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  sub_228380DB4();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_228363D60()
{
  v1 = v0;
  v2 = qword_27D824C20;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228212A9C(0);
  sub_228380B60(&qword_27D828030, sub_228212A9C, MEMORY[0x277CBCE48]);

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v3 = *(v0 + v2);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + class metadata base offset for SpecificationStepViewController + 80);
  v6 = v3;
  v5();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380CDC(0, &qword_27D8245D0, MEMORY[0x277CBCD88]);
  sub_2281BCA04();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v7 = *(v1 + v2);
  v8 = *((*v4 & *v7) + class metadata base offset for SpecificationStepViewController + 88);
  v9 = v7;
  v8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  type metadata accessor for MedicationOnboardingFlowManager(0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  sub_228380DB4();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_2283641A4()
{
  v1 = v0;
  v2 = qword_27D824C20;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228212A9C(0);
  sub_228380B60(&qword_27D828030, sub_228212A9C, MEMORY[0x277CBCE48]);

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v3 = *(v0 + v2);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + class metadata base offset for SpecificationStepViewController + 80);
  v6 = v3;
  v5();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380CDC(0, &qword_27D8245D0, MEMORY[0x277CBCD88]);
  sub_2281BCA04();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v7 = *(v1 + v2);
  v8 = *((*v4 & *v7) + class metadata base offset for SpecificationStepViewController + 88);
  v9 = v7;
  v8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  type metadata accessor for MedicationOnboardingFlowManager(0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  sub_228380DB4();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_2283645E8()
{
  v1 = v0;
  v2 = qword_27D824C20;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380234(0, &qword_27D824858, &qword_27D824860, &type metadata for StrengthStepResult);
  sub_228381554();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v3 = *(v0 + v2);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + class metadata base offset for SpecificationStepViewController + 80);
  v6 = v3;
  v5();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380CDC(0, &qword_27D8245D0, MEMORY[0x277CBCD88]);
  sub_2281BCA04();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v7 = *(v1 + v2);
  v8 = *((*v4 & *v7) + class metadata base offset for SpecificationStepViewController + 88);
  v9 = v7;
  v8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  type metadata accessor for MedicationOnboardingFlowManager(0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  sub_228380DB4();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_228364A14()
{
  v1 = v0;
  v2 = qword_27D824C20;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380234(0, &qword_27D824858, &qword_27D824860, &type metadata for StrengthStepResult);
  sub_228381554();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v3 = *(v0 + v2);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + class metadata base offset for SpecificationStepViewController + 80);
  v6 = v3;
  v5();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380CDC(0, &qword_27D8245D0, MEMORY[0x277CBCD88]);
  sub_2281BCA04();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v7 = *(v1 + v2);
  v8 = *((*v4 & *v7) + class metadata base offset for SpecificationStepViewController + 88);
  v9 = v7;
  v8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  type metadata accessor for MedicationOnboardingFlowManager(0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  sub_228380DB4();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_228364E40()
{
  v1 = v0;
  v2 = qword_27D824C20;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2283802B0(0, &qword_27D8245A0, &qword_280DDBA60, &unk_280DDBA68, 0x277D11570);
  sub_228381B40();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v3 = *(v0 + v2);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + class metadata base offset for SpecificationStepViewController + 80);
  v6 = v3;
  v5();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380CDC(0, &qword_27D8245D0, MEMORY[0x277CBCD88]);
  sub_2281BCA04();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v7 = *(v1 + v2);
  v8 = *((*v4 & *v7) + class metadata base offset for SpecificationStepViewController + 88);
  v9 = v7;
  v8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  type metadata accessor for MedicationOnboardingFlowManager(0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  sub_228380DB4();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_228365274()
{
  v1 = v0;
  v2 = qword_27D824C20;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228181EDC(0);
  sub_228380B60(&qword_27D824F30, sub_228181EDC, MEMORY[0x277CBCE48]);

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v3 = *(v0 + v2);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + class metadata base offset for SpecificationStepViewController + 80);
  v6 = v3;
  v5();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380CDC(0, &qword_27D8245D0, MEMORY[0x277CBCD88]);
  sub_2281BCA04();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v7 = *(v1 + v2);
  v8 = *((*v4 & *v7) + class metadata base offset for SpecificationStepViewController + 88);
  v9 = v7;
  v8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  type metadata accessor for MedicationOnboardingFlowManager(0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  sub_228380DB4();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_2283656B8()
{
  v1 = v0;
  v2 = qword_27D824C20;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2281E4AF0(0);
  sub_228380B60(&qword_27D825288, sub_2281E4AF0, MEMORY[0x277CBCE48]);

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v3 = *(v0 + v2);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + class metadata base offset for SpecificationStepViewController + 80);
  v6 = v3;
  v5();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380CDC(0, &qword_27D8245D0, MEMORY[0x277CBCD88]);
  sub_2281BCA04();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v7 = *(v1 + v2);
  v8 = *((*v4 & *v7) + class metadata base offset for SpecificationStepViewController + 88);
  v9 = v7;
  v8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  type metadata accessor for MedicationOnboardingFlowManager(0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  sub_228380DB4();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_228365AFC()
{
  v1 = v0;
  v2 = qword_27D824C20;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380234(0, &qword_27D827808, &qword_27D827810, &type metadata for MedicationNicknameNotes);
  sub_228382210();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v3 = *(v0 + v2);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + class metadata base offset for SpecificationStepViewController + 80);
  v6 = v3;
  v5();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380CDC(0, &qword_27D8245D0, MEMORY[0x277CBCD88]);
  sub_2281BCA04();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v7 = *(v1 + v2);
  v8 = *((*v4 & *v7) + class metadata base offset for SpecificationStepViewController + 88);
  v9 = v7;
  v8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  type metadata accessor for MedicationOnboardingFlowManager(0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  sub_228380DB4();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_228365F28()
{
  v1 = v0;
  v2 = qword_27D824C20;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380234(0, &qword_27D8268D8, &qword_27D823CF8, MEMORY[0x277D839B0]);
  sub_228382498();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v3 = *(v0 + v2);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + class metadata base offset for SpecificationStepViewController + 80);
  v6 = v3;
  v5();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380CDC(0, &qword_27D8245D0, MEMORY[0x277CBCD88]);
  sub_2281BCA04();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v7 = *(v1 + v2);
  v8 = *((*v4 & *v7) + class metadata base offset for SpecificationStepViewController + 88);
  v9 = v7;
  v8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  type metadata accessor for MedicationOnboardingFlowManager(0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  sub_228380DB4();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_228366354()
{
  v1 = v0;
  v2 = qword_27D824C20;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_22829C0BC(0);
  sub_228380B60(&qword_27D8286E0, sub_22829C0BC, MEMORY[0x277CBCE48]);

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v3 = *(v0 + v2);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + class metadata base offset for SpecificationStepViewController + 80);
  v6 = v3;
  v5();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380CDC(0, &qword_27D8245D0, MEMORY[0x277CBCD88]);
  sub_2281BCA04();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v7 = *(v1 + v2);
  v8 = *((*v4 & *v7) + class metadata base offset for SpecificationStepViewController + 88);
  v9 = v7;
  v8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  type metadata accessor for MedicationOnboardingFlowManager(0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  sub_228380DB4();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

void *sub_228366798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for MedicationOnboardingFlowManager(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_228380F74(result + qword_27D824BF0, v7, type metadata accessor for MedicationOnboardingFlowManager);

    if (a2)
    {
      v10 = MEMORY[0x277D837D0];
      v11 = a2;
    }

    else
    {
      a1 = 0;
      v11 = 0;
      v10 = 0;
      v13[2] = 0;
    }

    v13[0] = a1;
    v13[1] = v11;
    v13[3] = v10;

    MedicationOnboardingFlowManager.consume(value:)(v13);
    sub_2283808C0(v7, type metadata accessor for MedicationOnboardingFlowManager);
    return sub_2281AC998(v13);
  }

  return result;
}

void *sub_2283668C4(uint64_t a1, uint64_t a2)
{
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for MedicationOnboardingFlowManager(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_228380F74(result + qword_27D824BF0, v8, type metadata accessor for MedicationOnboardingFlowManager);

    sub_228380F08(a1, v5, &unk_27D827790, type metadata accessor for FormStepResult);
    v11 = type metadata accessor for FormStepResult(0);
    if ((*(*(v11 - 8) + 48))(v5, 1, v11) == 1)
    {
      sub_228380BA8(v5, &unk_27D827790, type metadata accessor for FormStepResult);
      v13 = 0u;
      v14 = 0u;
    }

    else
    {
      *(&v14 + 1) = v11;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
      sub_228381EB4(v5, boxed_opaque_existential_1, type metadata accessor for FormStepResult);
    }

    MedicationOnboardingFlowManager.consume(value:)(&v13);
    sub_2283808C0(v8, type metadata accessor for MedicationOnboardingFlowManager);
    return sub_2281AC998(&v13);
  }

  return result;
}

void *sub_228366AE0(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5)
{
  v9 = type metadata accessor for MedicationOnboardingFlowManager(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    sub_228380F74(result + qword_27D824BF0, v11, type metadata accessor for MedicationOnboardingFlowManager);

    if (a4 == -1)
    {
      v14 = 0;
      v15 = 0;
      v17[1] = 0;
      v17[2] = 0;
    }

    else
    {
      v14 = swift_allocObject();
      *(v14 + 16) = a1;
      *(v14 + 24) = a2;
      *(v14 + 32) = a3;
      *(v14 + 40) = a4 & 1;
      v15 = &type metadata for StrengthStepResult;
    }

    v17[0] = v14;
    v17[3] = v15;
    sub_2281CCAA4(a1, a2, a3, a4);
    MedicationOnboardingFlowManager.consume(value:)(v17);
    sub_2283808C0(v11, type metadata accessor for MedicationOnboardingFlowManager);
    return sub_2281AC998(v17);
  }

  return result;
}

void *sub_228366C50(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for MedicationOnboardingFlowManager(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_228380F74(result + qword_27D824BF0, v5, type metadata accessor for MedicationOnboardingFlowManager);

    if (a1)
    {
      v8 = sub_22817A958(0, &unk_280DDBA68, 0x277D11570);
      v9 = a1;
    }

    else
    {
      v9 = 0;
      v8 = 0;
      v12[1] = 0;
      v12[2] = 0;
    }

    v12[0] = v9;
    v12[3] = v8;
    v10 = a1;
    MedicationOnboardingFlowManager.consume(value:)(v12);
    sub_2283808C0(v5, type metadata accessor for MedicationOnboardingFlowManager);
    return sub_2281AC998(v12);
  }

  return result;
}

void *sub_228366D80(uint64_t a1, uint64_t a2)
{
  v77 = a2;
  v3 = type metadata accessor for MedicationOnboardingFlowManager(0);
  MEMORY[0x28223BE20](v3 - 8);
  v78 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  MEMORY[0x28223BE20](v5 - 8);
  v66 = v60 - v6;
  v87 = sub_228390E20();
  v89 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v67 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228199E70(0);
  v85 = *(v8 - 8);
  v86 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_228390FD0();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283801CC(0, &qword_27D823E00, &qword_280DDB990, 0x277D75348, MEMORY[0x277CCB2C8]);
  v83 = *(v12 - 8);
  v84 = v12;
  MEMORY[0x28223BE20](v12);
  v71 = v60 - v13;
  v14 = MEMORY[0x277D11640];
  sub_228368E1C(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v60 - v19;
  v21 = sub_2283909E0();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v69 = v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = v60 - v25;
  v73 = sub_228390D50();
  v72 = *(v73 - 8);
  v27 = MEMORY[0x28223BE20](v73);
  v68 = v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v88 = v60 - v29;
  sub_228380F08(a1, v20, &qword_27D8238A8, v14);
  v30 = *(v22 + 48);
  if (v30(v20, 1, v21) == 1)
  {
    sub_228380BA8(v20, &qword_27D8238A8, MEMORY[0x277D11640]);
    v31 = v78;
    v32 = a1;
  }

  else
  {
    v62 = v30;
    v64 = v18;
    v63 = v22;
    (*(v22 + 32))(v26, v20, v21);
    v70 = v26;
    v33 = sub_2283909D0();
    v34 = *(v33 + 16);
    v65 = a1;
    if (v34)
    {
      v60[1] = v22 + 48;
      v61 = v21;
      *&v90 = MEMORY[0x277D84F90];
      sub_2281C9E84(0, v34, 0);
      v35 = v90;
      v36 = *(v89 + 16);
      v37 = (*(v89 + 80) + 32) & ~*(v89 + 80);
      v60[0] = v33;
      v38 = v33 + v37;
      v39 = *(v89 + 72);
      v80 = (v89 + 32);
      v81 = (v83 + 56);
      v82 = v39;
      v79 = (v89 + 8);
      v89 += 16;
      v83 = v36;
      v40 = v67;
      do
      {
        v41 = v10;
        v42 = v87;
        v43 = v36;
        (v36)(v40, v38, v87);
        v44 = sub_228390E10();
        v45 = *(v86 + 48);
        if (v44)
        {
          (v43)(v41, v40, v42);
          v10 = v41;
          sub_22817A958(0, &qword_280DDB990, 0x277D75348);
          sub_228392BC0();
          sub_228391E50();
          (*v79)(v40, v42);
          v46 = 0;
        }

        else
        {
          v10 = v41;
          (*v80)(v41, v40, v42);
          v46 = 1;
        }

        (*v81)(&v10[v45], v46, 1, v84);
        *&v90 = v35;
        v48 = *(v35 + 16);
        v47 = *(v35 + 24);
        v49 = v88;
        if (v48 >= v47 >> 1)
        {
          sub_2281C9E84((v47 > 1), v48 + 1, 1);
          v40 = v67;
          v35 = v90;
        }

        *(v35 + 16) = v48 + 1;
        sub_228381EB4(v10, v35 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v48, sub_228199E70);
        v36 = v83;
        v38 += v82;
        --v34;
      }

      while (v34);

      v21 = v61;
    }

    else
    {

      v49 = v88;
    }

    v22 = v63;
    (*(v63 + 16))(v69, v70, v21);
    sub_22817A958(0, &qword_280DDB990, 0x277D75348);
    sub_228392BB0();
    sub_228391E50();
    (*(v75 + 104))(v74, *MEMORY[0x277D11728], v76);
    v50 = v68;
    sub_228390D30();
    (*(v22 + 8))(v70, v21);
    v51 = v72;
    v52 = v73;
    (*(v72 + 32))(v49, v50, v73);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v30 = v62;
    if (Strong)
    {
      v54 = Strong;
      v55 = v49;
      v56 = v66;
      (*(v51 + 16))(v66, v55, v52);
      (*(v51 + 56))(v56, 0, 1, v52);
      sub_228363508(v56);

      sub_228380BA8(v56, &qword_280DDBD20, MEMORY[0x277D116C8]);
      (*(v51 + 8))(v55, v52);
    }

    else
    {
      (*(v51 + 8))(v49, v52);
    }

    v18 = v64;
    v31 = v78;
    v32 = v65;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v58 = result;
    sub_228380F74(result + qword_27D824BF0, v31, type metadata accessor for MedicationOnboardingFlowManager);

    sub_228380F08(v32, v18, &qword_27D8238A8, MEMORY[0x277D11640]);
    if (v30(v18, 1, v21) == 1)
    {
      sub_228380BA8(v18, &qword_27D8238A8, MEMORY[0x277D11640]);
      v90 = 0u;
      v91 = 0u;
    }

    else
    {
      *(&v91 + 1) = v21;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v90);
      (*(v22 + 32))(boxed_opaque_existential_1, v18, v21);
    }

    MedicationOnboardingFlowManager.consume(value:)(&v90);
    sub_2283808C0(v31, type metadata accessor for MedicationOnboardingFlowManager);
    return sub_2281AC998(&v90);
  }

  return result;
}

void *sub_2283678A0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MedicationOnboardingFlowManager(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D116C8];
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v32 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v15 = sub_228390D50();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v29 - v20;
  v33 = a1;
  sub_228380F08(a1, v14, &qword_280DDBD20, v6);
  v31 = *(v16 + 48);
  if (v31(v14, 1, v15) == 1)
  {
    sub_228380BA8(v14, &qword_280DDBD20, MEMORY[0x277D116C8]);
  }

  else
  {
    v30 = v5;
    v22 = *(v16 + 32);
    v22(v19, v14, v15);
    v22(v21, v19, v15);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v24 = Strong;
      (*(v16 + 16))(v12, v21, v15);
      (*(v16 + 56))(v12, 0, 1, v15);
      sub_228363508(v12);

      sub_228380BA8(v12, &qword_280DDBD20, MEMORY[0x277D116C8]);
    }

    (*(v16 + 8))(v21, v15);
    v5 = v30;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v26 = result;
    sub_228380F74(result + qword_27D824BF0, v5, type metadata accessor for MedicationOnboardingFlowManager);

    v27 = v32;
    sub_228380F08(v33, v32, &qword_280DDBD20, MEMORY[0x277D116C8]);
    if (v31(v27, 1, v15) == 1)
    {
      sub_228380BA8(v27, &qword_280DDBD20, MEMORY[0x277D116C8]);
      v34 = 0u;
      v35 = 0u;
    }

    else
    {
      *(&v35 + 1) = v15;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v34);
      (*(v16 + 32))(boxed_opaque_existential_1, v27, v15);
    }

    MedicationOnboardingFlowManager.consume(value:)(&v34);
    sub_2283808C0(v5, type metadata accessor for MedicationOnboardingFlowManager);
    return sub_2281AC998(&v34);
  }

  return result;
}

void *sub_228367CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for MedicationOnboardingFlowManager(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    sub_228380F74(result + qword_27D824BF0, v11, type metadata accessor for MedicationOnboardingFlowManager);

    if (a2 == 1)
    {
      v14 = 0;
      v15 = 0;
      v17[1] = 0;
      v17[2] = 0;
    }

    else
    {
      v14 = swift_allocObject();
      v14[2] = a1;
      v14[3] = a2;
      v14[4] = a3;
      v14[5] = a4;
      v15 = &type metadata for MedicationNicknameNotes;
    }

    v17[0] = v14;
    v17[3] = v15;
    sub_2283823B0(a1, a2, a3, a4);
    MedicationOnboardingFlowManager.consume(value:)(v17);
    sub_2283808C0(v11, type metadata accessor for MedicationOnboardingFlowManager);
    return sub_2281AC998(v17);
  }

  return result;
}

void *sub_228367E58(char a1, uint64_t a2)
{
  v3 = type metadata accessor for MedicationOnboardingFlowManager(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_228380F74(result + qword_27D824BF0, v5, type metadata accessor for MedicationOnboardingFlowManager);

    if (a1 == 2)
    {
      v8 = 0;
      memset(v10, 0, 24);
    }

    else
    {
      LOBYTE(v10[0]) = a1 & 1;
      v8 = MEMORY[0x277D839B0];
    }

    v10[3] = v8;
    MedicationOnboardingFlowManager.consume(value:)(v10);
    sub_2283808C0(v5, type metadata accessor for MedicationOnboardingFlowManager);
    return sub_2281AC998(v10);
  }

  return result;
}

void *sub_228367F7C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MedicationOnboardingFlowManager(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_228380F74(result + qword_27D824BF0, v5, type metadata accessor for MedicationOnboardingFlowManager);

    if (a1)
    {
      sub_2282FEA58(0);
      v9 = a1;
    }

    else
    {
      v9 = 0;
      v8 = 0;
      v11[1] = 0;
      v11[2] = 0;
    }

    v11[0] = v9;
    v11[3] = v8;

    MedicationOnboardingFlowManager.consume(value:)(v11);
    sub_2283808C0(v5, type metadata accessor for MedicationOnboardingFlowManager);
    return sub_2281AC998(v11);
  }

  return result;
}

void MedicationOnboardingFlowManager.consume(value:)(uint64_t a1)
{
  sub_228368E1C(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v70 - v4;
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v70 - v7;
  sub_228368E1C(0, &qword_27D8264E8, MEMORY[0x277D116A0]);
  MEMORY[0x28223BE20](v9 - 8);
  v73 = v70 - v10;
  sub_228368E1C(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v70 - v12;
  v14 = sub_228390C30();
  v75 = *(v14 - 8);
  v76 = v14;
  MEMORY[0x28223BE20](v14);
  v74 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v70 - v20;
  v22 = type metadata accessor for FormStepResult(0);
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v77 = v70 - v27;
  v28 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v29 = *(v1 + *(v28 + 28));
  v30 = v29 >> 5;
  if (v29 >> 5 <= 2)
  {
    if (v30)
    {
      if (v30 == 1)
      {
        sub_2283596D8(a1, &v80);
        if (v81.i64[1])
        {
          if (swift_dynamicCast())
          {
            v31 = v78;
            v32 = v79.i64[0];
            if (v79.i8[8])
            {
              if (v78.i64[1])
              {

                v33 = v31.i64[0];
              }

              else
              {
                v33 = 0;
              }

              v80.i64[0] = v33;
              v80.i64[1] = v31.i64[1];
              sub_228391850();

              if (v31.i64[1])
              {
                v68 = v32;
                v69 = v32;
              }

              else
              {
                v69 = 0;
              }

              v80.i64[0] = v69;
              sub_228391850();
              sub_2281CCAE0(v31.i64[0], v31.i64[1], v32, 1);
            }

            else
            {
              v80.i8[0] = 0;
              sub_228391850();
              v80.i64[0] = v31.i64[0];
              v62 = v31.i64[0];
              sub_228391850();
              sub_2281CCAE0(v31.i64[0], v31.i64[1], v32, 0);
              sub_2281CCAE0(v31.i64[0], v31.i64[1], v32, 0);
            }

            return;
          }
        }

        else
        {
          sub_2281AC998(&v80);
        }

        v80.i64[0] = 0;
        sub_228391850();
        v80 = 0uLL;
        sub_228391850();
        return;
      }

      if (v29 == 64)
      {
        return;
      }

      sub_2283596D8(a1, &v80);
      if (v81.i64[1])
      {
        v45 = swift_dynamicCast();
        v46 = v78.i64[0];
        if (v45)
        {
          v47 = v78.i64[1];
        }

        else
        {
          v46 = 0;
          v47 = 0;
        }
      }

      else
      {
        sub_2281AC998(&v80);
        v46 = 0;
        v47 = 0;
      }

      v80.i64[0] = v46;
      v80.i64[1] = v47;
LABEL_54:
      sub_228391850();

      return;
    }

    v36 = v28;
    sub_2283596D8(a1, &v80);
    if (v81.i64[1])
    {
      v37 = swift_dynamicCast();
      v72 = *(v23 + 56);
      v72(v21, v37 ^ 1u, 1, v22);
      if ((*(v23 + 48))(v21, 1, v22) != 1)
      {
        v38 = v77;
        sub_228381EB4(v21, v77, type metadata accessor for FormStepResult);
        v39 = v36;
        v40 = *(v1 + *(v36 + 48));
        v71 = type metadata accessor for FormStepResult;
        sub_228380F74(v38, v19, type metadata accessor for FormStepResult);
        v72(v19, 0, 1, v22);
        v70[1] = v40;
        sub_228391850();
        sub_228380BA8(v19, &unk_27D827790, type metadata accessor for FormStepResult);
        v41 = *(v39 + 40);
        v70[2] = v1;
        v42 = *(v1 + v41);
        v80.i64[0] = 0;
        sub_228391850();
        sub_228380F74(v38, v26, v71);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v80.i64[0] = 0;
          sub_228391850();
          v43 = v38;
        }

        else
        {
          v71 = v42;
          v57 = v74;
          v58 = v75;
          v59 = v76;
          (*(v75 + 32))(v74, v26, v76);
          v60 = *(v58 + 16);
          v60(v19, v57, v59);
          swift_storeEnumTagMultiPayload();
          v72(v19, 0, 1, v22);
          sub_228391850();
          sub_228380BA8(v19, &unk_27D827790, type metadata accessor for FormStepResult);
          sub_22837213C(v13);
          v61 = type metadata accessor for MedicationSearchItem(0);
          if ((*(*(v61 - 8) + 48))(v13, 1, v61) == 1)
          {
            (*(v58 + 8))(v57, v59);
            sub_2283808C0(v77, type metadata accessor for FormStepResult);
            sub_228380BA8(v13, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
            return;
          }

          v63 = v73;
          v60(v73, v57, v59);
          (*(v58 + 56))(v63, 0, 1, v59);
          v64 = sub_2282703FC();
          sub_228380BA8(v63, &qword_27D8264E8, MEMORY[0x277D116A0]);
          sub_2283808C0(v13, type metadata accessor for MedicationSearchItem);
          if (v64)
          {
            if (v64 >> 62)
            {
              v65 = sub_2283930D0();
            }

            else
            {
              v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v65 == 1)
            {
              if ((v64 & 0xC000000000000001) != 0)
              {
                v66 = MEMORY[0x22AAB6D80](0, v64);
              }

              else
              {
                if (!*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  return;
                }

                v66 = *(v64 + 32);
              }

              v67 = v66;

              v80.i64[0] = v67;
              sub_228391850();
            }

            else
            {
            }
          }

          (*(v58 + 8))(v57, v59);
          v43 = v77;
        }

        sub_2283808C0(v43, type metadata accessor for FormStepResult);
        return;
      }
    }

    else
    {
      sub_2281AC998(&v80);
      (*(v23 + 56))(v21, 1, 1, v22);
    }

    sub_228380BA8(v21, &unk_27D827790, type metadata accessor for FormStepResult);
    return;
  }

  if (v30 == 3)
  {
    if (v29 == 96)
    {
      sub_2283596D8(a1, &v80);
      if (v81.i64[1])
      {
        sub_22817A958(0, &unk_280DDBA68, 0x277D11570);
        if (swift_dynamicCast())
        {
          v44 = v78.i64[0];
        }

        else
        {
          v44 = 0;
        }
      }

      else
      {
        sub_2281AC998(&v80);
        v44 = 0;
      }

      v80.i64[0] = v44;
      sub_228391850();
    }

    else
    {
      sub_2283596D8(a1, &v80);
      if (v81.i64[1])
      {
        v49 = sub_2283909E0();
        v50 = swift_dynamicCast();
        (*(*(v49 - 8) + 56))(v5, v50 ^ 1u, 1, v49);
      }

      else
      {
        sub_2281AC998(&v80);
        v55 = sub_2283909E0();
        (*(*(v55 - 8) + 56))(v5, 1, 1, v55);
      }

      sub_228391850();
      sub_228380BA8(v5, &qword_27D8238A8, MEMORY[0x277D11640]);
    }
  }

  else
  {
    if (v30 != 4)
    {
      if (v29 == 160)
      {
        return;
      }

      sub_2283596D8(a1, &v80);
      if (v81.i64[1])
      {
        sub_2282FEA58(0);
        if (swift_dynamicCast())
        {
          v48 = v78.i64[0];
        }

        else
        {
          v48 = 0;
        }
      }

      else
      {
        sub_2281AC998(&v80);
        v48 = 0;
      }

      v80.i64[0] = v48;
      goto LABEL_54;
    }

    if (v29 == 128)
    {
      sub_2283596D8(a1, &v80);
      if (v81.i64[1])
      {
        v34 = sub_228390D50();
        v35 = swift_dynamicCast();
        (*(*(v34 - 8) + 56))(v8, v35 ^ 1u, 1, v34);
      }

      else
      {
        sub_2281AC998(&v80);
        v56 = sub_228390D50();
        (*(*(v56 - 8) + 56))(v8, 1, 1, v56);
      }

      sub_228391850();
      sub_228380BA8(v8, &qword_280DDBD20, MEMORY[0x277D116C8]);
    }

    else
    {
      sub_2283596D8(a1, &v80);
      if (v81.i64[1])
      {
        if (swift_dynamicCast())
        {
          v51 = -1;
        }

        else
        {
          v51 = 0;
        }

        v52 = vdupq_n_s64(v51);
        v53 = vbslq_s8(v52, v78, xmmword_2283A4870);
        v54 = vandq_s8(v79, v52);
      }

      else
      {
        sub_2281AC998(&v80);
        v53 = xmmword_2283A4870;
        v54 = 0uLL;
      }

      v80 = v53;
      v81 = v54;
      sub_228391850();
      sub_228294FEC(v80.i64[0], v80.i64[1], v81.i64[0], v81.i64[1]);
    }
  }
}

void sub_228368E1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_228368E90(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + qword_27D824C28);
    v5 = Strong;
    v6 = v4;

    if (v4)
    {
      [v6 setEnabled_];
    }
  }
}

void sub_228368F1C(char a1, uint64_t a2, void (*a3)(void))
{
  v5 = type metadata accessor for MedicationOnboardingFlowManager(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      sub_228380F74(Strong + qword_27D824BF0, v7, type metadata accessor for MedicationOnboardingFlowManager);

      sub_2283808C0(v7, type metadata accessor for MedicationOnboardingFlowManager);
      v12[0] = 1;
      sub_228391850();
    }

    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      a3();
    }
  }
}

void sub_228369070(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      type metadata accessor for MedicationOnboardingFlowManager(0);
      v8 = a1;
      v9 = sub_228390840();
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v11 = _sSo17UIAlertControllerC19HealthMedicationsUIE27makeAlertForExsitingConcept7concept11listManager11showHandlerABSgSo9HKConceptC_25UserDomainConceptsSupport04ListjM0CySo012HKMedicationqrJ0CctFZ_0(v8, v9, a4, v10);

      if (v11)
      {
        [v7 presentViewController:v11 animated:1 completion:0];
      }
    }
  }
}

uint64_t sub_22836918C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v41 = a1;
  v40 = MEMORY[0x277CC9E70];
  sub_228368E1C(0, &qword_280DDB938, MEMORY[0x277CC9E70]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - v4;
  v39 = MEMORY[0x277CC9E78];
  sub_228368E1C(0, &qword_27D8285D8, MEMORY[0x277CC9E78]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  v31 = &v30 - v7;
  v9 = sub_228392EC0();
  v32 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_228392830();
  v14 = *(v13 - 8);
  v34 = v13;
  v35 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228380A60(0);
  v18 = *(v17 - 8);
  v36 = v17;
  v37 = v18;
  MEMORY[0x28223BE20](v17);
  v30 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = objc_opt_self();
  v20 = [v38 defaultCenter];
  sub_228392840();

  sub_228392EB0();
  (*(v10 + 56))(v8, 1, 1, v9);
  v21 = [objc_opt_self() mainRunLoop];
  v44 = v21;
  v22 = sub_228392EA0();
  (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  sub_22817A958(0, &qword_280DDB928, 0x277CBEB88);
  v33 = sub_228380B60(&qword_27D827528, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  sub_22818C470(&qword_280DDB930, &qword_280DDB928, 0x277CBEB88, MEMORY[0x277CC9E80]);
  v23 = v31;
  v24 = v34;
  sub_228391A20();
  sub_228380BA8(v5, &qword_280DDB938, v40);
  sub_228380BA8(v23, &qword_27D8285D8, v39);
  (*(v10 + 8))(v12, v32);
  v25 = *(v35 + 8);
  v25(v16, v24);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380B60(&qword_27D8285E8, sub_228380A60, MEMORY[0x277CBCC48]);
  v26 = v36;
  v27 = v30;
  sub_228391AC0();

  (*(v37 + 8))(v27, v26);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v28 = [v38 defaultCenter];
  sub_228392840();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228391AC0();

  v25(v16, v24);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

void sub_228369790(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_22838EF80();
    if (v4)
    {
      v5 = v4;
      sub_228392000();
      sub_228393160();
      if (*(v5 + 16) && (v6 = sub_2281A7758(v54), (v7 & 1) != 0))
      {
        sub_2281BC4A4(*(v5 + 56) + 32 * v6, &v55);
        sub_2281A995C(v54);

        if (*(&v56 + 1))
        {
          sub_22817A958(0, &qword_27D8285F0, 0x277CCAE60);
          if ((swift_dynamicCast() & 1) == 0)
          {

            return;
          }

          v8 = v54[0];
          [v54[0] CGRectValue];
          v10 = v9;
          v12 = v11;
          v14 = v13;
          v16 = v15;

          v17 = v3;
          v18 = [v17 contentView];
          v19 = sub_2281E5880();

          if (!v19)
          {
            goto LABEL_20;
          }

          sub_22838EF70();
          if (v54[3])
          {
            sub_22817A958(0, &qword_27D8285F8, 0x277D759A0);
            if (swift_dynamicCast())
            {
              v20 = v55;
              v21 = [v17 navigationItem];
              sub_228382CF4(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
              v22 = swift_allocObject();
              *(v22 + 16) = xmmword_228396260;
              *(v22 + 32) = sub_2283631C8(&qword_27D824C30, &selRef_doneButtonTapped, 0);
              sub_22817A958(0, &qword_27D824138, 0x277D751E0);
              v23 = sub_228392190();

              [v21 setRightBarButtonItems:v23 animated:1];

              [v19 bounds];
              v25 = v24;
              v27 = v26;
              v29 = v28;
              v31 = v30;
              v32 = [v17 scrollView];
              [v19 convertRect:v32 toCoordinateSpace:{v25, v27, v29, v31}];
              v34 = v33;
              v36 = v35;
              v38 = v37;
              v40 = v39;

              v41 = [v20 coordinateSpace];
              v42 = [v17 scrollView];
              [v41 convertRect:v42 toCoordinateSpace:{v10, v12, v14, v16}];
              v44 = v43;
              v46 = v45;
              v48 = v47;
              v50 = v49;
              swift_unknownObjectRelease();

              v57.origin.x = v44;
              v57.origin.y = v46;
              v57.size.width = v48;
              v57.size.height = v50;
              v61.origin.x = v34;
              v61.origin.y = v36;
              v61.size.width = v38;
              v61.size.height = v40;
              v58 = CGRectIntersection(v57, v61);
              v51 = CGRectGetHeight(v58) * 0.5;
              v52 = [v17 scrollView];

              v59.origin.x = v34;
              v59.origin.y = v36;
              v59.size.width = v38;
              v59.size.height = v40;
              v60 = CGRectOffset(v59, 0.0, v51);
              [v52 scrollRectToVisible:1 animated:{v60.origin.x, v60.origin.y, v60.size.width, v60.size.height}];

              return;
            }

LABEL_20:
            return;
          }

          v53 = v54;
          goto LABEL_14;
        }
      }

      else
      {

        sub_2281A995C(v54);
        v55 = 0u;
        v56 = 0u;
      }
    }

    else
    {

      v55 = 0u;
      v56 = 0u;
    }

    v53 = &v55;
LABEL_14:
    sub_2281AC998(v53);
  }
}

void sub_228369C28(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_228363320();
  }
}

uint64_t sub_228369C7C(uint64_t a1)
{
  v3 = v1;
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  sub_228368E1C(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  sub_22836A018();
  sub_22836AB48();
  v10 = &v1[qword_27D824BF0];
  v11 = *(type metadata accessor for MedicationOnboardingFlowManager(0) + 28);
  v12 = v10[v11];
  if (v12 != 96 && (v12 & 0xE0) == 0x60)
  {
    sub_228391870();
    v13 = sub_2283909E0();
    v14 = (*(*(v13 - 8) + 48))(v9, 1, v13);
    sub_228380BA8(v9, &qword_27D8238A8, MEMORY[0x277D11640]);
    if (v14 == 1)
    {
      v15 = sub_228390D50();
      (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
      sub_228363508(v6);
      sub_228380BA8(v6, &qword_280DDBD20, MEMORY[0x277D116C8]);
    }
  }

  if (MedicationOnboardingFlowManager.isAtFinalStep.getter())
  {
    v16 = *&v3[qword_27D824C28];
    if (v16)
    {
      v17 = qword_280DDCF18;
      v18 = v16;
      if (v17 != -1)
      {
        swift_once();
      }

      sub_22838F0C0();
      v19 = sub_228391FC0();

      [v18 setTitle:v19 forState:0];
    }
  }

  if (sub_2282C1ED0(v10[v11], a1))
  {
    [v3 setShouldAdjustScrollViewInsetForKeyboard_];
  }

  v20 = v10[v11];
  if (v20 != 64 && (v20 & 0xE0) == 0x40)
  {
    [v3 setShouldAdjustButtonTrayForKeyboard_];
  }

  v21 = *&v3[qword_27D824BE8];
  v22 = *&v3[qword_27D824BE8 + 8];

  sub_22837028C(v21, v22);
}

void sub_22836A018()
{
  v1 = v0;
  v2 = &v0[qword_27D824BF0];
  MedicationOnboardingFlowManager.title.getter();
  if (v3)
  {
    v4 = v2[*(type metadata accessor for MedicationOnboardingFlowManager(0) + 28)];
    if (v4 == 128 || (v4 & 0xE0) != 0x80)
    {
      v7 = [v1 navigationItem];
      sub_2283900F0();
      MedicationOnboardingFlowManager.subtitle.getter();
      v8 = [objc_opt_self() labelColor];
      v10 = sub_2283900E0();
      [v7 setTitleView_];
    }

    else
    {

      [v1 setShouldMoveHeaderViewTitleToNavigationTitleWhenScrolledOffScreen_];
      v5 = [v1 headerView];
      LODWORD(v6) = 1036831949;
      [v5 setTitleHyphenationFactor_];

      v7 = [v1 navigationItem];
      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      sub_22838F0C0();
      v10 = sub_228391FC0();

      [v7 setTitle_];
    }
  }
}

uint64_t MedicationOnboardingFlowManager.title.getter()
{
  v0 = sub_228390B70();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MedicationSearchItem.Source(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228368E1C(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  sub_22837213C(&v18 - v8);
  v10 = type metadata accessor for MedicationSearchItem(0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    sub_228380BA8(v9, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
    type metadata accessor for MedicationOnboardingFlowManager(0);
    sub_228391870();
    if (v21)
    {
      return v20;
    }

    else
    {
      sub_228391870();
      v17 = v19;
      if (v19)
      {
        v11 = sub_228392E30();
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    sub_228380F74(v9, v6, type metadata accessor for MedicationSearchItem.Source);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v1 + 32))(v3, v6, v0);
      v11 = sub_228390B30();
      (*(v1 + 8))(v3, v0);
    }

    else
    {
      v12 = *v6;
      sub_22818DE38(0);
      v14 = *(v13 + 48);
      v11 = sub_228392E30();

      v15 = sub_228390C30();
      (*(*(v15 - 8) + 8))(v6 + v14, v15);
    }

    sub_2283808C0(v9, type metadata accessor for MedicationSearchItem);
  }

  return v11;
}

uint64_t MedicationOnboardingFlowManager.subtitle.getter()
{
  v0 = sub_228390C30();
  v45 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for FormStepResult(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v45 - v11;
  type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  if ((*(v4 + 48))(v12, 1, v3))
  {
    sub_228380BA8(v12, &unk_27D827790, type metadata accessor for FormStepResult);
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v15 = v45;
    sub_228380F74(v12, v9, type metadata accessor for FormStepResult);
    sub_228380BA8(v12, &unk_27D827790, type metadata accessor for FormStepResult);
    sub_228380F74(v9, v7, type metadata accessor for FormStepResult);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = sub_228392A60();
      v14 = v16;
    }

    else
    {
      (*(v15 + 32))(v2, v7, v0);
      v13 = sub_228390C00();
      v14 = v17;
      (*(v15 + 8))(v2, v0);
    }

    sub_2283808C0(v9, type metadata accessor for FormStepResult);
  }

  v18 = [objc_opt_self() medicationDoseEventType];
  v19 = sub_2283722D0();
  if ((v20 & 1) == 0 && (v21 = *&v19, sub_228391870(), (v22 = v46) != 0) && (v23 = [objc_opt_self() quantityWithUnit:v46 doubleValue:v21], v22, v23))
  {
    sub_22817A958(0, &qword_27D828580, 0x277D12A18);
    v24 = [v23 _unit];
    v25 = sub_228392A40();

    v26 = [v23 localizedStringForType:v18 parameters:v25];
    v27 = sub_228392000();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v47 = v13;
  v48[0] = v14;
  sub_228391870();
  v30 = v46;
  if (v46)
  {
    v27 = sub_228392E80();
    v32 = v31;

    v29 = v32;
  }

  v33 = 0;
  v48[1] = v27;
  v48[2] = v29;
  v34 = MEMORY[0x277D84F90];
LABEL_15:
  v35 = &v48[2 * v33];
  while (++v33 != 3)
  {
    v36 = v35 + 2;
    v37 = *v35;
    v35 += 2;
    if (v37)
    {
      v38 = *(v36 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_228198748(0, *(v34 + 2) + 1, 1, v34);
      }

      v40 = *(v34 + 2);
      v39 = *(v34 + 3);
      if (v40 >= v39 >> 1)
      {
        v34 = sub_228198748((v39 > 1), v40 + 1, 1, v34);
      }

      *(v34 + 2) = v40 + 1;
      v41 = &v34[16 * v40];
      *(v41 + 4) = v38;
      *(v41 + 5) = v37;
      goto LABEL_15;
    }
  }

  v42 = MEMORY[0x277D837D0];
  sub_228382CF4(0, &qword_27D825070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  swift_arrayDestroy();
  v46 = v34;
  sub_228382CF4(0, &qword_27D827E10, v42, MEMORY[0x277D83940]);
  sub_2281BF13C();
  v43 = sub_228391F90();

  return v43;
}

void sub_22836AB48()
{
  v1 = &v0[qword_27D824BF0];
  v2 = v1[*(type metadata accessor for MedicationOnboardingFlowManager(0) + 28)];
  v3 = v2 >> 5;
  if (v2 >> 5 > 2)
  {
    if (v3 == 5)
    {
      if (v2 == 160)
      {
        return;
      }
    }

    else if (v3 == 4 || v2 == 96)
    {
      return;
    }
  }

  else
  {
    if (v3)
    {
      v4 = v3 == 1;
    }

    else
    {
      v4 = 0;
    }

    if (!v4 || (v2 & 1) == 0)
    {
      return;
    }
  }

  v5 = v0;
  if ((MedicationOnboardingFlowManager.isAtFinalStep.getter() & 1) == 0)
  {
    v6 = v0;
    v7 = [objc_opt_self() linkButton];
    [v7 addTarget:v5 action:sel_skipButtonTapped_ forControlEvents:64];
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    v8 = sub_228391FC0();

    [v7 setTitle:v8 forState:{0, 0xE000000000000000}];

    v9 = v7;

    MEMORY[0x22AAB5C80](0x74754270696B532ELL, 0xEB000000006E6F74);
    v10 = sub_228391FC0();

    [v9 setAccessibilityIdentifier_];

    v11 = [v6 buttonTray];
    [v11 addButton_];
  }
}

uint64_t MedicationOnboardingFlowManager.isAtFinalStep.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D11640];
  sub_228368E1C(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_228371958();
  v7 = type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  v8 = sub_2283909E0();
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8) == 1;
  sub_228380BA8(v5, &qword_27D8238A8, v2);
  v10 = sub_228371B8C();
  v11 = _s19HealthMedicationsUI17SpecificationStepO10finalSteps16shouldDisplayDDI17skipVisualization0hI23ThirdPartyAuthorizationSayACGSb_S2btFZ_0(v6 & 1, v9, v10 & 1);
  v12 = sub_22837087C(*(v1 + *(v7 + 28)), v11);
  v14 = v13;
  v15 = *(v11 + 16);

  return (v12 == v15 - 1) & ~v14;
}

id MedicationOnboardingFlowManager.currentScheduleType.getter()
{
  type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  if (!v2)
  {
    return 0;
  }

  v0 = [v2 scheduleType];

  return v0;
}

void sub_22836AFB4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = aBlock - v4;
  v6 = &v0[qword_27D824BF0];
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(qword_27D824BF0);
  if (!v7)
  {
    sub_2283922B0();
    v12 = sub_2283922D0();
    (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
    sub_2283922A0();
    v13 = v0;
    v14 = sub_228392290();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v13;
    v15[5] = ObjectType;
    sub_2281DC568(0, 0, v5, &unk_2283A64A0, v15);

    return;
  }

  v8 = v7;
  v9 = type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  v10 = aBlock[0];
  if (aBlock[0])
  {
    v11 = v6[*(v9 + 28)];
    if (v11 >> 5 > 2 && v11 >> 5 == 3 && v11 == 96)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v1;
      *(v17 + 24) = v8;
      v18 = objc_allocWithZone(MEMORY[0x277D115A0]);
      v19 = v1;
      v20 = v8;
      v8 = [v18 init];
      v21 = swift_allocObject();
      v21[2] = sub_228382DC4;
      v21[3] = v17;
      v21[4] = 0;
      v21[5] = 0;
      v21[6] = v19;
      v21[7] = ObjectType;
      aBlock[4] = sub_22817DF4C;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2281A2F3C;
      aBlock[3] = &block_descriptor_61;
      v22 = _Block_copy(aBlock);
      v23 = v19;

      [v8 checkIncompatibilityForSchedule:v10 completion:v22];
      _Block_release(v22);

      goto LABEL_9;
    }
  }

  [v1 showViewController:v8 sender:v1];
LABEL_9:
}

void sub_22836B2D8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = aBlock - v4;
  v6 = &v0[qword_27D824BF0];
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(qword_27D824BF0);
  if (!v7)
  {
    sub_2283922B0();
    v12 = sub_2283922D0();
    (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
    sub_2283922A0();
    v13 = v0;
    v14 = sub_228392290();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v13;
    v15[5] = ObjectType;
    sub_2281DC568(0, 0, v5, &unk_2283A64B0, v15);

    return;
  }

  v8 = v7;
  v9 = type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  v10 = aBlock[0];
  if (aBlock[0])
  {
    v11 = v6[*(v9 + 28)];
    if (v11 >> 5 > 2 && v11 >> 5 == 3 && v11 == 96)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v1;
      *(v17 + 24) = v8;
      v18 = objc_allocWithZone(MEMORY[0x277D115A0]);
      v19 = v1;
      v20 = v8;
      v8 = [v18 init];
      v21 = swift_allocObject();
      v21[2] = sub_228382DC4;
      v21[3] = v17;
      v21[4] = 0;
      v21[5] = 0;
      v21[6] = v19;
      v21[7] = ObjectType;
      aBlock[4] = sub_22817E1C0;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2281A2F3C;
      aBlock[3] = &block_descriptor_87;
      v22 = _Block_copy(aBlock);
      v23 = v19;

      [v8 checkIncompatibilityForSchedule:v10 completion:v22];
      _Block_release(v22);

      goto LABEL_9;
    }
  }

  [v1 showViewController:v8 sender:v1];
LABEL_9:
}

void sub_22836B5FC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = aBlock - v4;
  v6 = &v0[qword_27D824BF0];
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(qword_27D824BF0);
  if (!v7)
  {
    sub_2283922B0();
    v12 = sub_2283922D0();
    (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
    sub_2283922A0();
    v13 = v0;
    v14 = sub_228392290();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v13;
    v15[5] = ObjectType;
    sub_2281DC568(0, 0, v5, &unk_2283A64C0, v15);

    return;
  }

  v8 = v7;
  v9 = type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  v10 = aBlock[0];
  if (aBlock[0])
  {
    v11 = v6[*(v9 + 28)];
    if (v11 >> 5 > 2 && v11 >> 5 == 3 && v11 == 96)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v1;
      *(v17 + 24) = v8;
      v18 = objc_allocWithZone(MEMORY[0x277D115A0]);
      v19 = v1;
      v20 = v8;
      v8 = [v18 init];
      v21 = swift_allocObject();
      v21[2] = sub_228382DC4;
      v21[3] = v17;
      v21[4] = 0;
      v21[5] = 0;
      v21[6] = v19;
      v21[7] = ObjectType;
      aBlock[4] = sub_22817E1C0;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2281A2F3C;
      aBlock[3] = &block_descriptor_113;
      v22 = _Block_copy(aBlock);
      v23 = v19;

      [v8 checkIncompatibilityForSchedule:v10 completion:v22];
      _Block_release(v22);

      goto LABEL_9;
    }
  }

  [v1 showViewController:v8 sender:v1];
LABEL_9:
}

void sub_22836B920()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = aBlock - v4;
  v6 = &v0[qword_27D824BF0];
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(qword_27D824BF0);
  if (!v7)
  {
    sub_2283922B0();
    v12 = sub_2283922D0();
    (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
    sub_2283922A0();
    v13 = v0;
    v14 = sub_228392290();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v13;
    v15[5] = ObjectType;
    sub_2281DC568(0, 0, v5, &unk_2283A64E0, v15);

    return;
  }

  v8 = v7;
  v9 = type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  v10 = aBlock[0];
  if (aBlock[0])
  {
    v11 = v6[*(v9 + 28)];
    if (v11 >> 5 > 2 && v11 >> 5 == 3 && v11 == 96)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v1;
      *(v17 + 24) = v8;
      v18 = objc_allocWithZone(MEMORY[0x277D115A0]);
      v19 = v1;
      v20 = v8;
      v8 = [v18 init];
      v21 = swift_allocObject();
      v21[2] = sub_228382DC4;
      v21[3] = v17;
      v21[4] = 0;
      v21[5] = 0;
      v21[6] = v19;
      v21[7] = ObjectType;
      aBlock[4] = sub_22817E1C0;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2281A2F3C;
      aBlock[3] = &block_descriptor_168;
      v22 = _Block_copy(aBlock);
      v23 = v19;

      [v8 checkIncompatibilityForSchedule:v10 completion:v22];
      _Block_release(v22);

      goto LABEL_9;
    }
  }

  [v1 showViewController:v8 sender:v1];
LABEL_9:
}

void sub_22836BC44()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = aBlock - v4;
  v6 = &v0[qword_27D824BF0];
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(qword_27D824BF0);
  if (!v7)
  {
    sub_2283922B0();
    v12 = sub_2283922D0();
    (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
    sub_2283922A0();
    v13 = v0;
    v14 = sub_228392290();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v13;
    v15[5] = ObjectType;
    sub_2281DC568(0, 0, v5, &unk_2283A64D0, v15);

    return;
  }

  v8 = v7;
  v9 = type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  v10 = aBlock[0];
  if (aBlock[0])
  {
    v11 = v6[*(v9 + 28)];
    if (v11 >> 5 > 2 && v11 >> 5 == 3 && v11 == 96)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v1;
      *(v17 + 24) = v8;
      v18 = objc_allocWithZone(MEMORY[0x277D115A0]);
      v19 = v1;
      v20 = v8;
      v8 = [v18 init];
      v21 = swift_allocObject();
      v21[2] = sub_228382DC4;
      v21[3] = v17;
      v21[4] = 0;
      v21[5] = 0;
      v21[6] = v19;
      v21[7] = ObjectType;
      aBlock[4] = sub_22817E1C0;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2281A2F3C;
      aBlock[3] = &block_descriptor_139;
      v22 = _Block_copy(aBlock);
      v23 = v19;

      [v8 checkIncompatibilityForSchedule:v10 completion:v22];
      _Block_release(v22);

      goto LABEL_9;
    }
  }

  [v1 showViewController:v8 sender:v1];
LABEL_9:
}