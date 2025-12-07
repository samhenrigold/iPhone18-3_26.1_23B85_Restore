void sub_2281EAEC0()
{
  v37 = MEMORY[0x277D84F90];
  v1 = &off_2785F4000;
  v2 = [v0 layoutMarginsGuide];
  v36 = [v2 topAnchor];

  v3 = [v0 layoutMarginsGuide];
  v35 = [v3 bottomAnchor];

  v4 = [v0 layoutMarginsGuide];
  v5 = [v4 leadingAnchor];

  v6 = OBJC_IVAR____TtC19HealthMedicationsUI9DayPicker_dayViews;
  swift_beginAccess();
  v7 = *&v0[v6];
  if (v7 >> 62)
  {
    v8 = sub_2283930D0();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_18:
    v28 = 0;
    goto LABEL_19;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  v34 = v0;

  v9 = 0;
  v10 = 0;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x22AAB6D80](v10, v7);
    }

    else
    {
      v12 = *(v7 + 8 * v10 + 32);
    }

    v13 = v12;
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_228180ED0();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_228399D40;
    v15 = [v13 leadingAnchor];
    v16 = [v15 constraintEqualToAnchor_];

    *(inited + 32) = v16;
    v17 = [v13 topAnchor];
    v18 = [v17 constraintEqualToAnchor_];

    *(inited + 40) = v18;
    v19 = [v13 bottomAnchor];
    v20 = [v35 constraintEqualToAnchor_];

    *(inited + 48) = v20;
    sub_2281D5A98(inited);
    v21 = [v13 heightAnchor];
    v22 = [v21 constraintEqualToConstant_];

    LODWORD(v23) = 1144750080;
    [v22 setPriority_];
    v24 = v22;
    MEMORY[0x22AAB5D20]();
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2283921E0();
    }

    sub_228392230();
    if (v9)
    {
      v25 = v9;
      v26 = [v13 widthAnchor];
      v27 = [v26 constraintEqualToAnchor_];

      MEMORY[0x22AAB5D20]();
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2283921E0();
      }

      sub_228392230();
    }

    else
    {
      v9 = [v13 widthAnchor];
    }

    ++v10;
    v11 = [v13 trailingAnchor];

    v5 = v11;
  }

  while (v8 != v10);
  v28 = v9;

  v5 = v11;
  v0 = v34;
  v1 = &off_2785F4000;
LABEL_19:
  v29 = [v0 v1[116]];
  v30 = [v29 trailingAnchor];

  v31 = [v30 constraintEqualToAnchor_];
  MEMORY[0x22AAB5D20]();
  if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2283921E0();
  }

  sub_228392230();
  v32 = objc_opt_self();
  sub_2281BF1B8();
  v33 = sub_228392190();

  [v32 activateConstraints_];
}

uint64_t sub_2281EB43C(void *a1)
{
  sub_2281EBC94(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_228391130();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  [a1 setSelected_];
  sub_228391040();
  v16 = [a1 isSelected];
  v17 = OBJC_IVAR____TtC19HealthMedicationsUI9DayPicker_selectedDays;
  if (v16)
  {
    swift_beginAccess();
    sub_2281EB758(v13, v15);
    (*(v7 + 8))(v13, v6);
  }

  else
  {
    swift_beginAccess();
    (*(v7 + 16))(v13, &v1[v17], v6);
    sub_2281DC0DC(&qword_27D824820, MEMORY[0x277D11788]);
    sub_228392FB0();
    if (sub_228392FE0())
    {
      (*(v7 + 8))(v10, v6);
      v18 = 1;
    }

    else
    {
      sub_228392FF0();
      (*(v7 + 32))(v5, v10, v6);
      v18 = 0;
    }

    (*(v7 + 56))(v5, v18, 1, v6);
    sub_2281EBCEC(v5);
  }

  swift_endAccess();
  [v1 sendActionsForControlEvents_];
  return (*(v7 + 8))(v15, v6);
}

uint64_t sub_2281EB758(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  sub_2281EBD48(0);
  v5 = v4;
  v6 = MEMORY[0x28223BE20](v4);
  v27 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v10 = sub_228391130();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  v17 = *(v11 + 16);
  v26 = v2;
  v17(v14, v2, v10);
  v24 = sub_2281DC0DC(&qword_27D824820, MEMORY[0x277D11788]);
  sub_228392FB0();
  sub_2281DC0DC(&qword_280DDBD08, MEMORY[0x277D11778]);
  v25 = a2;
  v18 = sub_228391FB0();
  v28 = v5;
  v19 = *(v5 + 48);
  *v9 = (v18 & 1) == 0;
  if (v18)
  {
    (*(v11 + 32))(&v9[v19], v16, v10);
  }

  else
  {
    (*(v11 + 8))(v16, v10);
    v20 = v25;
    v17(&v9[v19], v25, v10);
    v17(v14, v20, v10);
    sub_228393000();
  }

  v21 = v27;
  sub_2281EBDB4(v9, v27);
  v22 = *v21;
  (*(v11 + 32))(v29, &v21[*(v28 + 48)], v10);
  return v22;
}

id sub_2281EBABC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DayPicker(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DayPicker(uint64_t a1)
{
  result = qword_27D824D78;
  if (!qword_27D824D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2281EBBF4(uint64_t a1)
{
  result = sub_228391130();
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

void sub_2281EBC94(uint64_t a1)
{
  if (!qword_280DDBCF8)
  {
    sub_228391130();
    v1 = sub_228392F00();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDBCF8);
    }
  }
}

uint64_t sub_2281EBCEC(uint64_t a1)
{
  sub_2281EBC94(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2281EBD48(uint64_t a1)
{
  if (!qword_280DDBB28)
  {
    sub_228391130();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DDBB28);
    }
  }
}

uint64_t sub_2281EBDB4(uint64_t a1, uint64_t a2)
{
  sub_2281EBD48(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SpecificationStepViewController.init(item:dataSource:listManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *MEMORY[0x277D85000] & *v3;
  sub_228181FB4(a1, v4 + qword_27D828B18);
  v9 = *(v8 + class metadata base offset for SpecificationStepViewController + 8);
  type metadata accessor for SpecificationStepViewController.MedicationOnboardingStepObservableDataSource(0, *(v8 + class metadata base offset for SpecificationStepViewController), v9, v10);
  v11 = swift_unknownObjectRetain();
  v15 = sub_2281ECF30(v11, v12, v13, v14);
  swift_unknownObjectRelease();
  *(v4 + qword_27D824D88) = v15;
  *(v4 + qword_27D824D90) = a3;
  sub_2283901F0();
  if (swift_dynamicCastClass())
  {
    v16 = sub_228390480();
  }

  else
  {
    sub_228182110(0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_228397F40;
    v18 = *(v9 + 8);
    *(v17 + 32) = a2;
    *(v17 + 40) = v18;
    swift_unknownObjectRetain();

    sub_228390220();
    v16 = sub_228390480();
    swift_unknownObjectRelease();
  }

  sub_2281ED224(a1, sub_2281EBF9C);
  return v16;
}

void sub_2281EBF9C(uint64_t a1)
{
  if (!qword_27D8238D0)
  {
    type metadata accessor for MedicationSearchItem(255);
    v1 = sub_228392F00();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8238D0);
    }
  }
}

uint64_t sub_2281EC03C()
{
  sub_2281ED014();
}

uint64_t sub_2281EC064(uint64_t a1)
{
  v3 = qword_27D824D90;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2281EC11C()
{
  sub_2281ED058();
}

uint64_t sub_2281EC144()
{
  v1 = v0;
  v2 = *MEMORY[0x277D85000] & *v0;
  v4 = *(v2 + class metadata base offset for SpecificationStepViewController);
  v3 = *(v2 + class metadata base offset for SpecificationStepViewController + 8);
  swift_getAssociatedTypeWitness();
  sub_228392F00();
  sub_228391880();
  swift_getWitnessTable();
  v5 = sub_228391740();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  v12[1] = *(*(v1 + qword_27D824D88) + 24);
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = v3;

  sub_2283919F0();

  swift_getWitnessTable();
  v10 = sub_228391990();
  (*(v6 + 8))(v8, v5);
  return v10;
}

uint64_t sub_2281EC388()
{
  sub_2281BC944();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7[15] = 0;
  sub_2283918C0();
  sub_2281ED0F4();
  v5 = sub_228391990();
  (*(v2 + 8))(v4, v1);
  return v5;
}

void sub_2281EC474()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = [v0 navigationItem];
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v4 = type metadata accessor for SpecificationStepViewController(0, *(v1 + class metadata base offset for SpecificationStepViewController), *(v1 + class metadata base offset for SpecificationStepViewController + 8), v3);
  v14[3] = v4;
  v14[0] = v0;
  v5 = v0;
  v6 = sub_228391FC0();

  if (v4)
  {
    v7 = __swift_project_boxed_opaque_existential_0(v14, v4);
    v8 = *(v4 - 8);
    MEMORY[0x28223BE20](v7);
    v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_228393450();
    (*(v8 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v13 = [v12 initWithTitle:v6 style:2 target:v11 action:{sel_cancelTapped_, v14[0]}];

  swift_unknownObjectRelease();
  [v2 setRightBarButtonItem_];
}

uint64_t sub_2281EC6F8()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id SpecificationStepViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_2281EC860()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  sub_2281EC474();
  v3 = type metadata accessor for SpecificationStepViewController(0, *(v1 + class metadata base offset for SpecificationStepViewController), *(v1 + class metadata base offset for SpecificationStepViewController + 8), v2);
  v9.receiver = v0;
  v9.super_class = v3;
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v4 = [v0 collectionView];
  if (v4)
  {
    v5 = v4;
    [v4 setPreservesSuperviewLayoutMargins_];

    v6 = [v0 collectionView];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_opt_self() systemBackgroundColor];
      [v7 setBackgroundColor_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2281EC98C(void *a1)
{
  v1 = a1;
  sub_2281EC860();
}

void sub_2281EC9D4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2281ED14C();
}

void sub_2281ECA34(void *a1)
{
  v2 = sub_22838F710();
  [a1 deselectItemAtIndexPath:v2 animated:1];

  v3 = sub_22838F710();
  v4 = [a1 cellForItemAtIndexPath_];

  if (v4)
  {
    v8 = v4;
    sub_2281ED1D8();
    sub_22818217C(0, &qword_27D8243E0, MEMORY[0x277D10F68], 1);
    v5 = v4;
    if (swift_dynamicCast())
    {
      sub_22819A62C(v6, v9);
      __swift_project_boxed_opaque_existential_0(v9, v9[3]);
      sub_22838FE30();

      __swift_destroy_boxed_opaque_existential_0(v9);
    }

    else
    {

      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_2281ED224(v6, sub_2281ED284);
    }
  }
}

uint64_t sub_2281ECB8C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_22838F760();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  v10 = a3;
  v11 = a1;
  sub_2281ECA34(v10);

  return (*(v7 + 8))(v9, v6);
}

id SpecificationStepViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

void sub_2281ECD7C(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_2281ED2F0();
}

uint64_t sub_2281ECDF8()
{

  return sub_2281ED224(v0 + qword_27D828B18, sub_2281EBF9C);
}

id SpecificationStepViewController.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SpecificationStepViewController(0, *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for SpecificationStepViewController), *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for SpecificationStepViewController + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_2281ECECC(uint64_t a1)
{

  return sub_2281ED224(a1 + qword_27D828B18, sub_2281EBF9C);
}

uint64_t *sub_2281ECF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SpecificationStepViewController.MedicationOnboardingStepObservableDataSource(0, *(v4 + 80), *(v4 + 88), a4);
  v6 = swift_allocObject();
  v7 = *v6;
  v6[2] = a1;
  v8 = *(v7 + 88);
  v9 = *(v8 + 32);
  v10 = *(v7 + 80);
  swift_unknownObjectRetain();
  v6[3] = v9(v10, v8);
  return v6;
}

uint64_t sub_2281ED014()
{
  v1 = qword_27D824D90;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2281ED06C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 48))(a1, 1, AssociatedTypeWitness);
  *a2 = result != 1;
  return result;
}

unint64_t sub_2281ED0F4()
{
  result = qword_27D8245C8;
  if (!qword_27D8245C8)
  {
    sub_2281BC944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8245C8);
  }

  return result;
}

unint64_t sub_2281ED1D8()
{
  result = qword_27D827770;
  if (!qword_27D827770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D827770);
  }

  return result;
}

uint64_t sub_2281ED224(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2281ED284(uint64_t a1)
{
  if (!qword_27D827780)
  {
    sub_22818217C(255, &qword_27D8243E0, MEMORY[0x277D10F68], 1);
    v1 = sub_228392F00();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827780);
    }
  }
}

void sub_2281ED320(uint64_t a1)
{
  sub_2281EBF9C(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void *sub_2281ED684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v111 = a2;
  v112 = a4;
  v103 = a1;
  v97 = sub_2283911B0();
  v96 = *(v97 - 8);
  v5 = MEMORY[0x28223BE20](v97);
  v95 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v93 = &v92 - v7;
  v106 = sub_22838EF60();
  v110 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v115 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_2281EEA64(0, &unk_280DDCD70, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v92 - v11;
  sub_2281EEA64(0, &qword_280DDCD80, MEMORY[0x277CC99E8], v9);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v92 - v14;
  v16 = sub_22838F080();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281EEA64(0, &qword_280DDCDB0, MEMORY[0x277CC9578], v9);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v108 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v101 = &v92 - v23;
  v24 = sub_22838F440();
  v100 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v94 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v105 = &v92 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v104 = &v92 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v114 = &v92 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v113 = &v92 - v34;
  MEMORY[0x28223BE20](v33);
  v99 = &v92 - v35;
  v36 = sub_22838F6C0();
  (*(*(v36 - 8) + 56))(v15, 1, 1, v36);
  v37 = sub_22838F700();
  (*(*(v37 - 8) + 56))(v12, 1, 1, v37);
  sub_22838F060();
  v109 = a3;
  v38 = MEMORY[0x22AAB2B60](a3, v19);
  v39 = *(v17 + 8);
  v107 = v16;
  v102 = (v17 + 8);
  v98 = v39;
  v39(v19, v16);
  sub_2281EEA64(0, &qword_280DDB8D8, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v40 = sub_22838F6A0();
  v41 = *(v40 - 8);
  v42 = *(v41 + 72);
  v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v44 = (v41 + 104);
  v45 = 2 * v42;
  v46 = swift_allocObject();
  if (v38)
  {
    *(v46 + 16) = xmmword_22839B440;
    v47 = v46 + v43;
    v48 = *v44;
    (*v44)(v47, *MEMORY[0x277CC9988], v40);
    v48(v47 + v42, *MEMORY[0x277CC9998], v40);
    v48(v47 + v45, *MEMORY[0x277CC9968], v40);
    v48(v47 + 3 * v42, *MEMORY[0x277CC9980], v40);
  }

  else
  {
    *(v46 + 16) = xmmword_228398270;
    v49 = v46 + v43;
    v50 = *v44;
    (*v44)(v49, *MEMORY[0x277CC9988], v40);
    v50(v49 + v42, *MEMORY[0x277CC9998], v40);
    v50(v49 + v45, *MEMORY[0x277CC9968], v40);
  }

  sub_2281EF358(v46);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v51 = v103;
  sub_22838F5C0();

  v52 = v101;
  sub_22838F640();
  v98(v19, v107);
  v53 = v100;
  v107 = *(v100 + 48);
  if (v107(v52, 1, v24) == 1)
  {
    sub_2281982F0(v52);
    v54 = v95;
    sub_228391190();
    v55 = v94;
    (*(v53 + 16))(v94, v51, v24);
    v56 = sub_2283911A0();
    v57 = sub_2283925C0();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v116[0] = v59;
      *v58 = 136315394;
      v60 = sub_228393600();
      v62 = sub_2281C96FC(v60, v61, v116);

      *(v58 + 4) = v62;
      *(v58 + 12) = 2080;
      sub_2281F0A24(&qword_27D8283D0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v63 = sub_228393420();
      v65 = v64;
      (*(v53 + 8))(v55, v24);
      v66 = sub_2281C96FC(v63, v65, v116);

      *(v58 + 14) = v66;
      _os_log_impl(&dword_22816B000, v56, v57, "<%s> Failed to strip date of unrelated components %s", v58, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v59, -1, -1);
      MEMORY[0x22AAB7B80](v58, -1, -1);
    }

    else
    {

      (*(v53 + 8))(v55, v24);
    }

    (*(v96 + 8))(v54, v97);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v67 = v99;
    v102 = *(v53 + 32);
    v103 = v53 + 32;
    v102(v99, v52, v24);
    v68 = *(v53 + 16);
    v68(v113, v67, v24);
    if (sub_22838F3A0())
    {
      v101 = (v110 + 32);
      v69 = (v53 + 40);
      v70 = MEMORY[0x277D84F90];
      v71 = v113;
      v72 = v114;
      while (1)
      {
        v73 = v108;
        sub_22838F650();
        if (v107(v73, 1, v24) == 1)
        {
          break;
        }

        v102(v72, v73, v24);
        v68(v104, v71, v24);
        v68(v105, v72, v24);
        sub_22838EF30();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_228199038(0, v70[2] + 1, 1, v70);
        }

        v75 = v70[2];
        v74 = v70[3];
        if (v75 >= v74 >> 1)
        {
          v70 = sub_228199038((v74 > 1), v75 + 1, 1, v70);
        }

        v70[2] = v75 + 1;
        (*(v110 + 32))(v70 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v75, v115, v106);
        v71 = v113;
        (*v69)(v113, v114, v24);
        if ((sub_22838F3A0() & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      sub_2281982F0(v73);
      v78 = v93;
      sub_228391190();
      v79 = sub_2283911A0();
      v80 = sub_2283925C0();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v117[0] = v82;
        *v81 = 136315394;
        v83 = sub_228393600();
        v85 = sub_2281C96FC(v83, v84, v117);

        *(v81 + 4) = v85;
        *(v81 + 12) = 2080;
        v86 = v113;
        swift_beginAccess();
        sub_2281F0A24(&qword_27D8283D0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v87 = sub_228393420();
        v89 = sub_2281C96FC(v87, v88, v117);

        *(v81 + 14) = v89;
        _os_log_impl(&dword_22816B000, v79, v80, "<%s> Failed to add interval to current start date %s", v81, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAB7B80](v82, -1, -1);
        MEMORY[0x22AAB7B80](v81, -1, -1);

        (*(v96 + 8))(v78, v97);
        v90 = *(v100 + 8);
        v90(v99, v24);
        v90(v86, v24);
      }

      else
      {

        (*(v96 + 8))(v78, v97);
        v91 = *(v100 + 8);
        v91(v99, v24);
        v91(v113, v24);
      }
    }

    else
    {
      v70 = MEMORY[0x277D84F90];
      v71 = v113;
LABEL_19:
      v76 = *(v100 + 8);
      v76(v99, v24);
      v76(v71, v24);
    }
  }

  return v70;
}

uint64_t sub_2281EE528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a1;
  v32 = a3;
  v4 = MEMORY[0x277D83D88];
  sub_2281EEA64(0, &unk_280DDCD70, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  sub_2281EEA64(0, &qword_280DDCD80, MEMORY[0x277CC99E8], v4);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_22838F080();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22838F6C0();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = sub_22838F700();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  sub_22838F060();
  LOBYTE(v10) = MEMORY[0x22AAB2B60](a2, v14);
  v29 = *(v12 + 8);
  v30 = v11;
  v29(v14, v11);
  sub_2281EEA64(0, &qword_280DDB8D8, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v17 = sub_22838F6A0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = (v18 + 104);
  v22 = 2 * v19;
  v23 = swift_allocObject();
  if (v10)
  {
    *(v23 + 16) = xmmword_22839B440;
    v24 = v23 + v20;
    v25 = *v21;
    (*v21)(v24, *MEMORY[0x277CC9988], v17);
    v25(v24 + v19, *MEMORY[0x277CC9998], v17);
    v25(v24 + v22, *MEMORY[0x277CC9968], v17);
    v25(v24 + 3 * v19, *MEMORY[0x277CC9980], v17);
  }

  else
  {
    *(v23 + 16) = xmmword_228398270;
    v26 = v23 + v20;
    v27 = *v21;
    (*v21)(v26, *MEMORY[0x277CC9988], v17);
    v27(v26 + v19, *MEMORY[0x277CC9998], v17);
    v27(v26 + v22, *MEMORY[0x277CC9968], v17);
  }

  sub_2281EF358(v23);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22838F5C0();

  sub_22838F640();
  return (v29)(v14, v30);
}

void sub_2281EEA64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2281EEAC8(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x277D84F90];
  v3 = sub_22838F380();
  v4 = sub_22838F380();
  v8[4] = sub_2281EF66C;
  v8[5] = v2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2281EEF90;
  v8[3] = &block_descriptor_8;
  v5 = _Block_copy(v8);

  [a1 enumerateStatisticsFromDate:v3 toDate:v4 withBlock:v5];
  _Block_release(v5);

  swift_beginAccess();
  v6 = *(v2 + 16);

  return v6;
}

id sub_2281EEC1C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_22819A424(0, &unk_280DDCDE0, MEMORY[0x277CC88A8]);
  v6 = v5;
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = sub_22838F440();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  MEMORY[0x28223BE20](v10);
  v11 = sub_22838EF60();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 sumQuantity];
  if (result)
  {
    v16 = result;
    v17 = [objc_opt_self() countUnit];
    v30 = a3;
    v18 = v17;
    [v16 doubleValueForUnit_];
    v20 = v19;

    v21 = [a1 startDate];
    sub_22838F3E0();

    v22 = [a1 endDate];
    sub_22838F3E0();

    sub_22838EF30();
    v23 = *(v6 + 48);
    (*(v12 + 32))(v8, v14, v11);
    *&v8[v23] = v20;
    v24 = v30;
    swift_beginAccess();
    v25 = *(v24 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v24 + 16) = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_22819906C(0, v25[2] + 1, 1, v25);
      *(v24 + 16) = v25;
    }

    v28 = v25[2];
    v27 = v25[3];
    if (v28 >= v27 >> 1)
    {
      v25 = sub_22819906C((v27 > 1), v28 + 1, 1, v25);
    }

    v25[2] = v28 + 1;
    result = sub_2281F0924(v8, v25 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v28, &unk_280DDCDE0, MEMORY[0x277CC88A8]);
    *(v24 + 16) = v25;
  }

  return result;
}

void sub_2281EEF90(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2281EF008()
{
  sub_22838F230();
  sub_22838F230();

  return sub_22838F220();
}

char *sub_2281EF074(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = sub_22838F6C0();
  v8 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F680();
  v11 = sub_2281ED684(a1, a2, a3, v10);
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x277D84F90];
  v13 = sub_22838F380();
  v14 = sub_22838F380();
  aBlock[4] = sub_2281F0A74;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2281EEF90;
  aBlock[3] = &block_descriptor_5;
  v15 = _Block_copy(aBlock);

  [a4 enumerateStatisticsFromDate:v13 toDate:v14 withBlock:v15];
  _Block_release(v15);

  swift_beginAccess();
  v16 = *(v12 + 16);

  v17 = sub_2281EF68C(v16);

  v18 = sub_2281EFBA4(v11, v17);

  (*(v8 + 8))(v10, v21);
  return v18;
}

double sub_2281EF2BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0.0;
  }

  if (v1 <= 3)
  {
    v2 = 0;
    result = 0.0;
LABEL_8:
    v6 = v1 - v2;
    v7 = (a1 + 8 * v2 + 32);
    do
    {
      v8 = *v7++;
      result = result + v8;
      --v6;
    }

    while (v6);
    return result;
  }

  v2 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  v4 = (a1 + 48);
  result = 0.0;
  v5 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    result = result + *(v4 - 2) + *(v4 - 1) + *v4 + v4[1];
    v4 += 4;
    v5 -= 4;
  }

  while (v5);
  if (v1 != v2)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_2281EF358(uint64_t a1)
{
  v2 = sub_22838F6A0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2281F0990(0);
    v9 = sub_2283931A0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_2281F0A24(&qword_280DDCD90, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_228391F60();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_2281F0A24(&qword_280DDCD88, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_228391FB0();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_2281EF68C(uint64_t a1)
{
  v48 = sub_22838F440();
  v2 = *(v48 - 8);
  v3 = MEMORY[0x28223BE20](v48);
  v47 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v46 = &v36 - v5;
  sub_2281F07E8(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22819A424(0, &unk_280DDCDA0, MEMORY[0x277CC9578]);
  v45 = v9;
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v44 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v37 = &v36 - v13;
  sub_22819A424(0, &unk_280DDCDE0, MEMORY[0x277CC88A8]);
  v43 = v14;
  MEMORY[0x28223BE20](v14);
  v42 = &v36 - v16;
  v17 = *(a1 + 16);
  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v19 = *(v15 + 72);
  v40 = (v2 + 8);
  v41 = v19;
  v39 = (v10 + 56);
  v49 = MEMORY[0x277D84F90];
  v36 = v10;
  v38 = (v10 + 48);
  v20 = v46;
  do
  {
    v50 = v17;
    v21 = MEMORY[0x277CC88A8];
    v22 = v42;
    sub_2281F085C(v18, v42, &unk_280DDCDE0, MEMORY[0x277CC88A8]);
    v23 = *(v22 + *(v43 + 48));
    v24 = v45;
    v25 = *(v45 + 48);
    sub_22838EF40();
    v26 = v47;
    sub_22838EF20();
    sub_22838F230();
    sub_22838F230();
    sub_22838F220();
    v27 = *v40;
    v28 = v26;
    v29 = v48;
    (*v40)(v28, v48);
    v27(v20, v29);
    *&v8[v25] = v23;
    (*v39)(v8, 0, 1, v24);
    sub_2281F078C(v22, &unk_280DDCDE0, v21);
    if ((*v38)(v8, 1, v24) == 1)
    {
      sub_2281F08C8(v8);
    }

    else
    {
      v30 = MEMORY[0x277CC9578];
      v31 = v37;
      sub_2281F0924(v8, v37, &unk_280DDCDA0, MEMORY[0x277CC9578]);
      sub_2281F0924(v31, v44, &unk_280DDCDA0, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_22819928C(0, v49[2] + 1, 1, v49);
      }

      v33 = v49[2];
      v32 = v49[3];
      if (v33 >= v32 >> 1)
      {
        v49 = sub_22819928C((v32 > 1), v33 + 1, 1, v49);
      }

      v34 = v49;
      v49[2] = v33 + 1;
      sub_2281F0924(v44, v34 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v33, &unk_280DDCDA0, MEMORY[0x277CC9578]);
    }

    v18 += v41;
    v17 = v50 - 1;
  }

  while (v50 != 1);
  return v49;
}

char *sub_2281EFBA4(uint64_t a1, uint64_t a2)
{
  sub_22819A338(0);
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_22838EF60();
  v6 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22819A424(0, &unk_280DDCDA0, MEMORY[0x277CC9578]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  v17 = *(a2 + 16);
  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  v49 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  sub_2281F085C(v49, &v36 - v15, &unk_280DDCDA0, MEMORY[0x277CC9578]);
  v41 = *(a1 + 16);
  if (v41)
  {
    v48 = v11;
    v18 = 0;
    v19 = 0;
    v43 = *(v6 + 16);
    v44 = v6 + 16;
    v40 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v20 = *(v6 + 72);
    v38 = (v6 + 8);
    v39 = v20;
    v21 = MEMORY[0x277D84F90];
    do
    {
      v45 = v21;
      v46 = v19;
      v43(v8, v40 + v39 * v19, v47);
      v22 = MEMORY[0x277D84F90];
      if (v18 < v17)
      {
        while ((sub_22838EF50() & 1) != 0)
        {
          v23 = *(v10 + 48);
          v24 = *&v16[v23];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2281992E8(0, *(v22 + 2) + 1, 1, v22);
            v22 = result;
          }

          v27 = *(v22 + 2);
          v26 = *(v22 + 3);
          if (v27 >= v26 >> 1)
          {
            result = sub_2281992E8((v26 > 1), v27 + 1, 1, v22);
            v22 = result;
          }

          *(v22 + 2) = v27 + 1;
          *&v22[8 * v27 + 32] = v24;
          v28 = v18 + 1;
          if (v18 + 1 < v17)
          {
            if (v18 < -1)
            {
              __break(1u);
              return result;
            }

            sub_2281F085C(v49 + *(v48 + 72) * v28, v14, &unk_280DDCDA0, MEMORY[0x277CC9578]);
            v29 = *&v14[*(v10 + 48)];
            v30 = sub_22838F440();
            (*(*(v30 - 8) + 40))(v16, v14, v30);
            *&v16[v23] = v29;
          }

          ++v18;
          if (v17 == v28)
          {
            v18 = v17;
            break;
          }
        }
      }

      if (*(v22 + 2))
      {
        v31 = *(v37 + 48);
        v32 = v42;
        v43(v42, v8, v47);
        *(v32 + v31) = v22;
        v33 = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_2281992B4(0, v33[2] + 1, 1, v33);
        }

        v35 = v33[2];
        v34 = v33[3];
        v21 = v33;
        if (v35 >= v34 >> 1)
        {
          v21 = sub_2281992B4((v34 > 1), v35 + 1, 1, v33);
        }

        (*v38)(v8, v47);
        v21[2] = v35 + 1;
        sub_2281F0728(v42, v21 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v35);
      }

      else
      {
        (*v38)(v8, v47);

        v21 = v45;
      }

      v19 = v46 + 1;
    }

    while (v46 + 1 != v41);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  sub_2281F078C(v16, &unk_280DDCDA0, MEMORY[0x277CC9578]);
  return v21;
}

uint64_t sub_2281F01D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2281F06D0();
    v3 = sub_2283931A0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_228393520();

      sub_2283920B0();
      result = sub_228393570();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_228393460();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_2281F0358(unint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a5;
    v11 = a2;
    v12 = sub_2283930D0();
    a2 = v11;
    a5 = v10;
    if (v12)
    {
LABEL_3:
      sub_2281F0644(0, a2, a3, a4, a5);
      v7 = sub_2283931A0();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_2283930D0();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x277D84FA0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v46 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v42 = v5;
    while (1)
    {
      v15 = MEMORY[0x22AAB6D80](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = sub_228392C50();
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *(v13 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        sub_22817A958(0, a3, a4);
        while (1)
        {
          v25 = *(*(v7 + 48) + 8 * v20);
          v26 = sub_228392C60();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *(v13 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            v5 = v42;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v46;
        v5 = v42;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v21) = v23 | v22;
        *(*(v7 + 48) + 8 * v20) = v17;
        v27 = *(v7 + 16);
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v43 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = *(v5 + 32 + 8 * v29);
      v31 = sub_228392C50();
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      v35 = *(v13 + 8 * (v33 >> 6));
      v36 = 1 << v33;
      if (((1 << v33) & v35) != 0)
      {
        v37 = ~v32;
        sub_22817A958(0, a3, a4);
        while (1)
        {
          v38 = *(*(v7 + 48) + 8 * v33);
          v39 = sub_228392C60();

          if (v39)
          {
            break;
          }

          v33 = (v33 + 1) & v37;
          v34 = v33 >> 6;
          v35 = *(v13 + 8 * (v33 >> 6));
          v36 = 1 << v33;
          if (((1 << v33) & v35) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v34) = v36 | v35;
        *(*(v7 + 48) + 8 * v33) = v30;
        v40 = *(v7 + 16);
        v16 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v41;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_2281F0644(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_22817A958(255, a3, a4);
    sub_2281A89C4(a5, a3, a4);
    v9 = sub_2283931B0();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2281F06D0()
{
  if (!qword_27D824EA0)
  {
    v0 = sub_2283931B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824EA0);
    }
  }
}

uint64_t sub_2281F0728(uint64_t a1, uint64_t a2)
{
  sub_22819A338(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281F078C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22819A424(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2281F07E8(uint64_t a1)
{
  if (!qword_280DDCD98)
  {
    sub_22819A424(255, &unk_280DDCDA0, MEMORY[0x277CC9578]);
    v1 = sub_228392F00();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDCD98);
    }
  }
}

uint64_t sub_2281F085C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22819A424(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2281F08C8(uint64_t a1)
{
  sub_2281F07E8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2281F0924(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22819A424(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_2281F0990(uint64_t a1)
{
  if (!qword_280DDB920)
  {
    sub_22838F6A0();
    sub_2281F0A24(&qword_280DDCD90, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
    v1 = sub_2283931B0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDB920);
    }
  }
}

uint64_t sub_2281F0A24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2281F0A88(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = qword_27D824ED0;
  result = sub_2283909C0();
  if (*(result + 16) < 8uLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = result;
  v8 = v2 + v5;
  v9 = *(sub_2283909E0() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *v8 = v7;
  *(v8 + 8) = v7 + v10;
  *(v8 + 16) = xmmword_22839B490;
  v11 = qword_27D824ED8;
  result = sub_2283909C0();
  if (*(result + 16) < 0x1CuLL)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v12 = v2 + v11;
  *v12 = result;
  *(v12 + 8) = result + v10;
  *(v12 + 16) = xmmword_22839B4A0;
  v13 = qword_27D824EE0;
  result = sub_2283909C0();
  if (*(result + 16) < 0x28uLL)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = v2 + v13;
  *v14 = result;
  *(v14 + 8) = result + v10;
  *(v14 + 16) = xmmword_22839B4B0;
  v15 = qword_27D824EE8;
  result = sub_2283909C0();
  v16 = *(result + 16);
  if (v16 >= 0x28)
  {
    v17 = (v2 + v15);
    *v17 = result;
    v17[1] = result + v10;
    v17[2] = 40;
    v17[3] = (2 * v16) | 1;
    *(v2 + qword_27D824EF0) = MEMORY[0x277D84FA0];
    *(v2 + qword_27D824EA8) = a1;
    sub_2281F2C24(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
    sub_22838FEF0();
    *(swift_allocObject() + 16) = xmmword_228397F40;

    sub_22838FED0();
    *(swift_allocObject() + 16) = v4;
    v18 = sub_228390380();

    sub_2281F142C();

    return v18;
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_2281F0D28(uint64_t a1, void *a2, int a3)
{
  v6 = sub_2283900D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v55 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22838FDE0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 traitCollection];
  v14 = sub_2283927D0();

  v60 = v10;
  v61 = v9;
  v62 = a1;
  v63 = v12;
  v56 = v7;
  v57 = v6;
  LODWORD(v58) = a3;
  if (v14 >= 3 && (a3 & 1) != 0)
  {
    v15 = 44.0;
  }

  else
  {
    v16 = objc_opt_self();
    v15 = 3.5;
    if (([v16 hk_currentDeviceHas4InchScreen] & 1) == 0)
    {
      if ([v16 hk_currentDeviceHas4Point7InchScreen])
      {
        v15 = 3.5;
      }

      else
      {
        v15 = 4.0;
      }
    }
  }

  v17 = objc_opt_self();
  v18 = [v17 fractionalWidthDimension_];
  v19 = [v17 fractionalHeightDimension_];
  v20 = objc_opt_self();
  v21 = [v20 sizeWithWidthDimension:v18 heightDimension:v19];

  v22 = objc_opt_self();
  v59 = v21;
  v23 = [v22 itemWithLayoutSize_];
  sub_2283928D0();
  [v23 setContentInsets_];
  v24 = [v17 fractionalWidthDimension_];
  v25 = [v17 fractionalWidthDimension_];
  v26 = [v20 sizeWithWidthDimension:v24 heightDimension:v25];

  v27 = objc_opt_self();
  sub_228180ED0();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_228396260;
  *(v28 + 32) = v23;
  sub_22817A958(0, &qword_27D824F40, 0x277CFB860);
  v29 = v23;
  v30 = sub_228392190();

  v31 = [v27 horizontalGroupWithLayoutSize:v26 subitems:v30];

  v32 = v63;
  sub_22838FDB0();
  v33 = [objc_opt_self() sectionWithGroup_];
  [v33 setContentInsetsReference_];
  v34 = sub_22838FD80();
  [v34 contentInsets];
  v36 = v35;

  v37 = sub_22838FD80();
  [v37 contentInsets];
  v39 = v38;

  [v33 setContentInsets_];
  if (!v62 && (v58 & 1) != 0)
  {
    v40 = sub_22838FD80();
    [v40 contentInsets];
    v42 = v41;

    [v33 contentInsets];
    [v33 setContentInsets_];
LABEL_24:
    (*(v60 + 8))(v32, v61);

    return v33;
  }

  if (v62 < 1)
  {
    goto LABEL_24;
  }

  v54 = v31;
  v43 = v55;
  sub_228390010();
  v44 = sub_2283900C0();
  (*(v56 + 8))(v43, v57);
  v45 = [v44 boundarySupplementaryItems];

  if (!v45)
  {
    sub_22817A958(0, &qword_27D824F48, 0x277CFB830);
    sub_2283921A0();
    v45 = sub_228392190();
  }

  v58 = v29;
  v62 = v26;
  [v33 setBoundarySupplementaryItems_];

  [v33 setSupplementaryContentInsetsReference_];
  v46 = [v33 boundarySupplementaryItems];
  sub_22817A958(0, &qword_27D824F48, 0x277CFB830);
  v47 = sub_2283921A0();

  if (v47 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v49 = 0;
    v15 = v15 + 3.0;
    while (1)
    {
      if ((v47 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x22AAB6D80](v49, v47);
      }

      else
      {
        if (v49 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v50 = *(v47 + 8 * v49 + 32);
      }

      v51 = v50;
      v52 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      [v50 contentInsets];
      [v51 setContentInsets_];
      [v51 contentInsets];
      [v51 setContentInsets_];

      ++v49;
      if (v52 == i)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

LABEL_28:

  (*(v60 + 8))(v63, v61);
  return v33;
}

uint64_t sub_2281F142C()
{
  sub_2281F2C24(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v12 - v2;
  sub_2281F2C88(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[2] = *(v0 + qword_27D824EA8);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);

  v9 = sub_228392790();
  v12[5] = v9;
  v10 = sub_228392730();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  sub_228181EDC(0);
  sub_2281F24A4(&qword_27D824F30, sub_228181EDC, MEMORY[0x277CBCE48]);
  sub_2281A1504();
  sub_228391A70();
  sub_2281F2D54(v3, &qword_280DDBAD0, v12[1]);

  swift_allocObject();
  swift_weakInit();
  sub_2281F24A4(&qword_27D824F38, sub_2281F2C88, MEMORY[0x277CBCD60]);
  sub_228391AC0();

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_2281F1748(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2281F17A8(a1);
  }

  return result;
}

uint64_t sub_2281F17A8(uint64_t a1)
{
  sub_2281F2C24(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v3 = *(sub_22838FEF0() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v25[2] = *(v3 + 72);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22839B440;
  v25[3] = v5;
  v6 = v5 + v4;
  v7 = *(v1 + qword_27D824ED0 + 8);
  v8 = *(v1 + qword_27D824ED0 + 16);
  v9 = *(v1 + qword_27D824ED0 + 24);
  v26 = a1;
  v28 = a1;
  swift_unknownObjectRetain();
  sub_228335E9C(sub_2281F2DF4, v27, v7, v8, v9);
  swift_unknownObjectRelease();
  v25[4] = v6;
  sub_22838FED0();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v24 = 0xE000000000000000;
  v10 = sub_22838F0C0();
  v11 = *(v1 + qword_27D824ED8 + 8);
  v13 = *(v1 + qword_27D824ED8 + 16);
  v12 = *(v1 + qword_27D824ED8 + 24);
  MEMORY[0x28223BE20](v10);
  v24 = v26;
  swift_unknownObjectRetain();
  sub_228335E9C(sub_2281F2A80, v23, v11, v13, v12);
  swift_unknownObjectRelease();
  v14 = sub_22838FED0();
  v25[1] = v25;
  v15 = *(v1 + qword_27D824EE0 + 8);
  v16 = *(v1 + qword_27D824EE0 + 16);
  v17 = *(v1 + qword_27D824EE0 + 24);
  MEMORY[0x28223BE20](v14);
  v24 = v26;
  swift_unknownObjectRetain();
  sub_228335E9C(sub_2281F2DF4, v23, v15, v16, v17);
  swift_unknownObjectRelease();
  v18 = sub_22838FED0();
  v19 = *(v1 + qword_27D824EE8 + 8);
  v20 = *(v1 + qword_27D824EE8 + 16);
  v21 = *(v1 + qword_27D824EE8 + 24);
  MEMORY[0x28223BE20](v18);
  v24 = v26;
  swift_unknownObjectRetain();
  sub_228335E9C(sub_2281F2DF4, v23, v19, v20, v21);
  swift_unknownObjectRelease();
  sub_22838FED0();
  sub_22838FF50();
}

uint64_t sub_2281F1BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = a2;
  v35 = a3;
  sub_2281F2AA0(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281F2C24(0, &qword_27D8238A8, MEMORY[0x277D11640], MEMORY[0x277D83D88]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = sub_2283909E0();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = *(v14 + 16);
  v34 = &v32 - v19;
  v18();
  (v18)(v12, a1, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  v20 = *(v5 + 56);
  sub_2281F2B34(v12, v7);
  sub_2281F2B34(v33, &v7[v20]);
  v21 = *(v14 + 48);
  if (v21(v7, 1, v13) != 1)
  {
    v23 = v32;
    sub_2281F2B34(v7, v32);
    if (v21(&v7[v20], 1, v13) != 1)
    {
      (*(v14 + 32))(v17, &v7[v20], v13);
      sub_2281F24A4(&qword_27D824F00, MEMORY[0x277D11640], MEMORY[0x277D11650]);
      v22 = sub_228391FB0();
      v24 = *(v14 + 8);
      v24(v17, v13);
      v25 = MEMORY[0x277D11640];
      sub_2281F2D54(v12, &qword_27D8238A8, MEMORY[0x277D11640]);
      v24(v32, v13);
      sub_2281F2D54(v7, &qword_27D8238A8, v25);
      goto LABEL_8;
    }

    sub_2281F2D54(v12, &qword_27D8238A8, MEMORY[0x277D11640]);
    (*(v14 + 8))(v23, v13);
    goto LABEL_6;
  }

  sub_2281F2D54(v12, &qword_27D8238A8, MEMORY[0x277D11640]);
  if (v21(&v7[v20], 1, v13) != 1)
  {
LABEL_6:
    sub_2281F2BC8(v7);
    v22 = 0;
    goto LABEL_8;
  }

  sub_2281F2D54(v7, &qword_27D8238A8, MEMORY[0x277D11640]);
  v22 = 1;
LABEL_8:
  sub_228181CBC(0);
  v27 = v26;
  v28 = v35;
  v35[3] = v26;
  v28[4] = sub_2281F24A4(&qword_27D824F20, sub_228181CBC, &protocol conformance descriptor for MedmojiConfigItem<A>);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  result = (*(v14 + 32))(boxed_opaque_existential_1, v34, v13);
  *(boxed_opaque_existential_1 + *(v27 + 36)) = v22 & 1;
  v31 = (boxed_opaque_existential_1 + *(v27 + 40));
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  return result;
}

unint64_t sub_2281F20B0@<X0>(uint64_t *a1@<X8>)
{
  sub_2281F2C24(0, &qword_27D824EB0, MEMORY[0x277D10FE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_22838FEF0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_22838F750() == 1)
  {
    v9 = sub_22838FF40();
    result = sub_22838F750();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v9 + 16))
    {
      (*(v6 + 16))(v8, v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * result, v5);

      sub_22838FEE0();
      v12 = v11;
      (*(v6 + 8))(v8, v5);
      if (v12)
      {
        v13 = sub_228390130();
        (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
        a1[3] = sub_228390150();
        a1[4] = sub_2281F24A4(&qword_27D824EC8, MEMORY[0x277D10FE8], MEMORY[0x277D10FD8]);
        __swift_allocate_boxed_opaque_existential_1(a1);
        return sub_228390140();
      }

      goto LABEL_7;
    }

    __break(1u);
  }

  else
  {
    if ((sub_22838F750() - 5) < 0xFFFFFFFFFFFFFFFDLL)
    {
LABEL_7:
      a1[3] = sub_22838FC00();
      a1[4] = sub_2281F24A4(&qword_27D823958, MEMORY[0x277D10EC8], MEMORY[0x277D10EC0]);
      __swift_allocate_boxed_opaque_existential_1(a1);
      return sub_22838FBF0();
    }

    v14 = [objc_opt_self() separatorColor];
    type metadata accessor for SeparatorHeaderCell();
    sub_2281F24A4(&qword_27D824EB8, type metadata accessor for SeparatorHeaderCell, &unk_22839E9E4);
    v15 = sub_22838FBB0();
    v17 = v16;
    a1[3] = &type metadata for SeparatorHeaderItem;
    result = sub_2281F2450();
    a1[4] = result;
    *a1 = v14;
    a1[1] = v15;
    a1[2] = v17;
  }

  return result;
}

unint64_t sub_2281F2450()
{
  result = qword_27D824EC0;
  if (!qword_27D824EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824EC0);
  }

  return result;
}

uint64_t sub_2281F24A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2281F2550()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t VisualizationShapeDataSource.deinit()
{
  v0 = sub_2283903B0();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t VisualizationShapeDataSource.__deallocating_deinit()
{
  sub_2283903B0();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall VisualizationShapeDataSource.registerCells(for:)(UICollectionView *a1)
{
  sub_228390120();
  sub_2283926D0();
  type metadata accessor for SeparatorHeaderCell();
  sub_2281F24A4(&qword_27D824EB8, type metadata accessor for SeparatorHeaderCell, &unk_22839E9E4);
  sub_2283926D0();
  type metadata accessor for ShapeCell();
  sub_2281F24A4(&qword_27D824EF8, type metadata accessor for ShapeCell, &unk_2283A60A4);
  sub_2283926B0();
}

uint64_t sub_2281F2850()
{
  sub_228390120();
  sub_2283926D0();
  type metadata accessor for SeparatorHeaderCell();
  sub_2281F24A4(&qword_27D824EB8, type metadata accessor for SeparatorHeaderCell, &unk_22839E9E4);
  sub_2283926D0();
  type metadata accessor for ShapeCell();
  sub_2281F24A4(&qword_27D824EF8, type metadata accessor for ShapeCell, &unk_2283A60A4);
  return sub_2283926B0();
}

uint64_t type metadata accessor for VisualizationShapeDataSource(uint64_t a1)
{
  result = qword_27D824F08;
  if (!qword_27D824F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2281F2AA0(uint64_t a1)
{
  if (!qword_27D824F18)
  {
    sub_2281F2C24(255, &qword_27D8238A8, MEMORY[0x277D11640], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D824F18);
    }
  }
}

uint64_t sub_2281F2B34(uint64_t a1, uint64_t a2)
{
  sub_2281F2C24(0, &qword_27D8238A8, MEMORY[0x277D11640], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281F2BC8(uint64_t a1)
{
  sub_2281F2AA0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2281F2C24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2281F2C88(uint64_t a1)
{
  if (!qword_27D824F28)
  {
    sub_228181EDC(255);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_2281F24A4(&qword_27D824F30, sub_228181EDC, MEMORY[0x277CBCE48]);
    sub_2281A1504();
    v1 = sub_2283917D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D824F28);
    }
  }
}

uint64_t sub_2281F2D54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2281F2C24(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2281F2E0C(uint64_t a1, uint64_t *a2)
{
  sub_22817A890(a1, v6, &qword_280DDCD50, sub_22817A700);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionFactorsHeaderCell_item;
  swift_beginAccess();
  sub_22817A680(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_2281F2E8C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionFactorsHeaderCell_item;
  swift_beginAccess();
  return sub_22817A890(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_2281F2F00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionFactorsHeaderCell_item;
  swift_beginAccess();
  sub_22817A680(a1, v1 + v3);
  return swift_endAccess();
}

id sub_2281F2FE0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v1 = sub_228392AD0();
  [v0 setFont_];

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v2 = sub_228391FC0();

  [v0 setText_];

  sub_228392000();
  v3 = v0;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283AB310);

  MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

  v4 = sub_228391FC0();

  [v3 setAccessibilityIdentifier_];

  v5 = [objc_opt_self() labelColor];
  [v3 setTextColor_];

  [v3 setTextAlignment_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];

  [v3 setNumberOfLines_];
  [v3 setAdjustsFontForContentSizeCategory_];
  LODWORD(v6) = 1036831949;
  [v3 _setHyphenationFactor_];
  return v3;
}

id sub_2281F32B4(uint64_t *a1, uint64_t (*a2)(void))
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

id sub_2281F3314()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v1 = sub_228392AD0();
  [v0 setFont_];

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v2 = sub_228391FC0();

  [v0 setText_];

  sub_228392000();
  v3 = v0;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283AB310);

  MEMORY[0x22AAB5C80](0x6C7469746275532ELL, 0xEE006C6562614C65);

  v4 = sub_228391FC0();

  [v3 setAccessibilityIdentifier_];

  v5 = [objc_opt_self() labelColor];
  [v3 setTextColor_];

  [v3 setTextAlignment_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];

  [v3 setNumberOfLines_];
  [v3 setAdjustsFontForContentSizeCategory_];
  return v3;
}

void sub_2281F378C()
{
  v1 = [v0 contentView];
  v2 = sub_2281F2FC0();
  [v1 addSubview_];

  v3 = [v0 contentView];
  v4 = sub_2281F3294();
  [v3 addSubview_];

  v35 = objc_opt_self();
  sub_228180ED0();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_228399E10;
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionFactorsHeaderCell____lazy_storage___titleLabel;
  v7 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionFactorsHeaderCell____lazy_storage___titleLabel] topAnchor];
  v8 = [v0 contentView];
  v9 = [v8 topAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  *(v5 + 32) = v10;
  v11 = [*&v0[v6] leadingAnchor];
  v12 = [v0 contentView];
  v13 = [v12 leadingAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:16.0];
  *(v5 + 40) = v14;
  v15 = [*&v0[v6] trailingAnchor];
  v16 = [v0 contentView];
  v17 = [v16 trailingAnchor];

  v18 = [v15 constraintEqualToAnchor:v17 constant:-16.0];
  *(v5 + 48) = v18;
  v19 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionFactorsHeaderCell____lazy_storage___subtitleLabel;
  v20 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionFactorsHeaderCell____lazy_storage___subtitleLabel] leadingAnchor];
  v21 = [v0 contentView];
  v22 = [v21 leadingAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:16.0];
  *(v5 + 56) = v23;
  v24 = [*&v0[v19] trailingAnchor];
  v25 = [v0 contentView];
  v26 = [v25 trailingAnchor];

  v27 = [v24 constraintEqualToAnchor:v26 constant:-16.0];
  *(v5 + 64) = v27;
  v28 = [*&v0[v19] topAnchor];
  v29 = [*&v0[v6] bottomAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:15.0];

  *(v5 + 72) = v30;
  v31 = [*&v0[v19] bottomAnchor];
  v32 = [v0 contentView];
  v33 = [v32 bottomAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v5 + 80) = v34;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v36 = sub_228392190();

  [v35 activateConstraints_];
}

uint64_t sub_2281F3C20()
{
  v1 = v0;
  sub_22817A7F0(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = sub_228391330();
  v9 = type metadata accessor for InteractionFactorsHeaderCell();
  v14.receiver = v1;
  v14.super_class = v9;
  objc_msgSendSuper2(&v14, sel__bridgedUpdateConfigurationUsingState_, v8);

  MEMORY[0x22AAB6410]();
  v10 = sub_2283913A0();
  if ((*(*(v10 - 8) + 48))(v7, 1, v10))
  {
    v11 = MEMORY[0x277D74BD0];
    sub_22817A890(v7, v5, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
    MEMORY[0x22AAB6420](v5);
    return sub_22817A8FC(v7, &unk_280DDBCD0, v11);
  }

  else
  {
    v13 = [objc_opt_self() clearColor];
    sub_228391370();
    return MEMORY[0x22AAB6420](v7);
  }
}

id InteractionFactorsHeaderCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionFactorsHeaderCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MedicationOnboardingDataSource.cellBackgroundConfiguration.getter(uint64_t a1)
{
  sub_228391390();
  v1 = [objc_opt_self() secondarySystemBackgroundColor];
  return sub_228391370();
}

uint64_t sub_2281F40EC(uint64_t a1)
{
  sub_228391390();
  v1 = [objc_opt_self() secondarySystemBackgroundColor];
  return sub_228391370();
}

uint64_t sub_2281F413C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2283906D0();
  v3 = sub_2281BFC2C(v2);

  *a1 = v3;
  return result;
}

uint64_t sub_2281F4184()
{
  if (*v0)
  {
    if (qword_27D823310 == -1)
    {
      return sub_22838F0C0();
    }

    goto LABEL_6;
  }

  if (qword_27D823310 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_22838F0C0();
}

uint64_t MedicationInformationImportance.hashValue.getter()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](v1);
  return sub_228393570();
}

unint64_t sub_2281F4310()
{
  result = qword_27D824F68;
  if (!qword_27D824F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824F68);
  }

  return result;
}

uint64_t type metadata accessor for PregnancyLactationEducationDataSource(uint64_t a1)
{
  result = qword_27D824F80;
  if (!qword_27D824F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2281F443C(uint64_t a1)
{
  _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_2281F4474()
{
  type metadata accessor for MedicationInformationOverviewCell();
  sub_2281F4C8C(&qword_27D824F98, type metadata accessor for MedicationInformationOverviewCell, &protocol conformance descriptor for MedicationInformationOverviewCell);
  sub_2283926B0();
  sub_228390120();
  return sub_2283926D0();
}

uint64_t sub_2281F44FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_2283900D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v3 + qword_27D824F78) == 1)
  {
    sub_228390010();
    sub_228390070();
  }

  else
  {
    sub_228390040();
    sub_228390070();
    sub_2283900B0();
  }

  v8 = sub_2283900C0();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_2281F469C@<X0>(uint64_t *a1@<X8>)
{
  sub_2281F4878(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v1 + qword_27D824F70);
  v9[1] = sub_2281F4184();
  v9[2] = v6;
  sub_22819DFF4();
  sub_228392F60();

  v7 = sub_228390130();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  a1[3] = sub_228390150();
  a1[4] = sub_2281F4C8C(&qword_27D824EC8, MEMORY[0x277D10FE8], MEMORY[0x277D10FD8]);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_228390140();
}

void sub_2281F4878(uint64_t a1)
{
  if (!qword_27D824EB0)
  {
    sub_228390130();
    v1 = sub_228392F00();
    if (!v2)
    {
      atomic_store(v1, &qword_27D824EB0);
    }
  }
}

uint64_t sub_2281F48D0(uint64_t a1, unsigned __int8 *a2, char *a3)
{
  v3 = *a3;
  v30 = *a2;
  v31[0] = v30;
  v5 = Array<A>.groupByCritical(for:)(v31, a1);
  if (v3)
  {
    *v31 = v4;

    sub_2281D5878(v6);

    v5 = *v31;
  }

  else
  {
  }

  if (v5 >> 62)
  {
    goto LABEL_20;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    while (1)
    {
      v8 = v5;
      v34 = MEMORY[0x277D84F90];
      sub_2281C9DB4(0, v7 & ~(v7 >> 63), 0);
      if (v7 < 0)
      {
        break;
      }

      v9 = v34;
      type metadata accessor for MedicationInformationOverviewCell();
      v5 = 0;
      v10 = v8;
      v29 = v8 & 0xC000000000000001;
      v27 = v8 & 0xFFFFFFFFFFFFFF8;
      v28 = v30 - 1;
      v11 = v8;
      v12 = v7;
      while (1)
      {
        v13 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if (v29)
        {
          v14 = MEMORY[0x22AAB6D80](v5, v10);
        }

        else
        {
          if (v5 >= *(v27 + 16))
          {
            goto LABEL_19;
          }

          v14 = *(v10 + 8 * v5 + 32);
        }

        v15 = v14;
        v16 = type metadata accessor for MedicationInformationOverviewItem();
        v17 = swift_allocObject();
        sub_2281F4C8C(&qword_27D824F98, type metadata accessor for MedicationInformationOverviewCell, &protocol conformance descriptor for MedicationInformationOverviewCell);
        *(v17 + 32) = sub_22838FBB0();
        *(v17 + 40) = v18;
        *(v17 + 16) = v15;
        *(v17 + 24) = v30;
        if (v28 >= 2)
        {
          goto LABEL_24;
        }

        v32 = v16;
        v19 = sub_2281F4C8C(&qword_27D824FA8, type metadata accessor for MedicationInformationOverviewItem, &protocol conformance descriptor for MedicationInformationOverviewItem);
        v33 = v19;
        v34 = v9;
        *v31 = v17;
        v21 = *(v9 + 16);
        v20 = *(v9 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_2281C9DB4((v20 > 1), v21 + 1, 1);
          v16 = v32;
          v19 = v33;
        }

        v22 = __swift_mutable_project_boxed_opaque_existential_1(v31, v16);
        MEMORY[0x28223BE20](v22);
        v24 = &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v25 + 16))(v24);
        sub_2282E841C(v21, v24, &v34, v16, v19);
        __swift_destroy_boxed_opaque_existential_0(v31);
        v9 = v34;
        ++v5;
        v10 = v11;
        if (v13 == v12)
        {

          return v9;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v7 = sub_2283930D0();
      if (!v7)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_24:
    result = sub_228393300();
    __break(1u);
  }

  else
  {
LABEL_21:

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2281F4C8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MedicationDetailsCardItem.init(detailsDisplayable:medication:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MedicationDetailsCardItem(0);
  sub_22838F490();
  v7 = (a3 + *(v6 + 28));
  type metadata accessor for MedicationDetailsCardCell();
  sub_2281F4F9C(&unk_27D824FB0, v8, type metadata accessor for MedicationDetailsCardCell, &protocol conformance descriptor for MedicationDetailsCardCell);
  *v7 = sub_22838FBB0();
  v7[1] = v9;
  result = sub_22816DFFC(a1, a3);
  *(a3 + *(v6 + 24)) = a2;
  return result;
}

uint64_t type metadata accessor for MedicationDetailsCardItem(uint64_t a1)
{
  result = qword_27D825040;
  if (!qword_27D825040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MedicationDetailsCardItem.reuseIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for MedicationDetailsCardItem(0) + 28));

  return v1;
}

unint64_t MedicationDetailsCardItem.uniqueIdentifier.getter()
{
  sub_2283931D0();

  type metadata accessor for MedicationDetailsCardItem(0);
  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return 0xD000000000000010;
}

uint64_t static MedicationDetailsCardItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MedicationDetailsCardItem(0);

  return sub_22838F470();
}

uint64_t MedicationDetailsCardItem.hash(into:)(uint64_t a1)
{
  type metadata accessor for MedicationDetailsCardItem(0);
  sub_22838F4A0();
  sub_2281F4F9C(&unk_27D823CA0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_228391F70();
}

uint64_t sub_2281F4F9C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t MedicationDetailsCardItem.hashValue.getter()
{
  sub_228393520();
  type metadata accessor for MedicationDetailsCardItem(0);
  sub_22838F4A0();
  sub_2281F4F9C(&unk_27D823CA0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_228391F70();
  return sub_228393570();
}

uint64_t sub_2281F5088()
{
  sub_228393520();
  sub_22838F4A0();
  sub_2281F4F9C(&unk_27D823CA0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_228391F70();
  return sub_228393570();
}

uint64_t sub_2281F5128(uint64_t a1)
{
  sub_22838F4A0();
  sub_2281F4F9C(&unk_27D823CA0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_228391F70();
}

uint64_t sub_2281F51AC(uint64_t a1)
{
  sub_228393520();
  sub_22838F4A0();
  sub_2281F4F9C(&unk_27D823CA0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_228391F70();
  return sub_228393570();
}

unint64_t sub_2281F5258()
{
  sub_2283931D0();

  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return 0xD000000000000010;
}

uint64_t sub_2281F52E8(uint64_t a1)
{
  v2 = sub_2281F4F9C(&qword_27D825068, 255, type metadata accessor for MedicationDetailsCardItem, &protocol conformance descriptor for MedicationDetailsCardItem);

  return MEMORY[0x282169440](a1, v2);
}

id sub_2281F5368()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___pillImageView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___pillImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___pillImageView);
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

id sub_2281F5400()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___titleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    LODWORD(v6) = 1148846080;
    [v5 setContentHuggingPriority:1 forAxis:v6];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v13 = sub_228392000();
    v14 = v7;

    MEMORY[0x22AAB5C80](0xD000000000000016, 0x80000002283AB620);

    MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xED00006C6562614CLL);

    v8 = sub_228391FC0();

    [v5 setAccessibilityIdentifier_];

    [v5 setNumberOfLines_];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v9 = sub_228392AD0();
    [v5 setFont_];

    v10 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_2281F55F0()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___captionLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___captionLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___captionLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v5 setNumberOfLines_];
    v13 = sub_228392000();
    v14 = v6;
    v7 = v5;

    MEMORY[0x22AAB5C80](0xD000000000000016, 0x80000002283AB620);

    MEMORY[0x22AAB5C80](0x6F6974697061432ELL, 0xEE006C6562614C6ELL);

    v8 = sub_228391FC0();

    [v7 setAccessibilityIdentifier_];

    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v9 = sub_228392AD0();
    [v7 setFont_];

    v10 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_2281F57C4()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___separatorView;
  v2 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___separatorView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___separatorView];
  }

  else
  {
    v4 = sub_2281F5828(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2281F5828(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D12A48]) initWithFrame_];
  HKUIOnePixel();
  [v2 setSeparatorThickness_];
  v3 = [objc_opt_self() separatorColor];
  [v2 setColor_];

  v4 = v2;
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [a1 traitCollection];
  v6 = [v5 horizontalSizeClass];

  [v4 setHidden_];
  return v4;
}

id sub_2281F5934()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___notesLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___notesLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___notesLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v5 setNumberOfLines_];
    v6 = v5;
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v14 = sub_228392000();
    v15 = v7;

    MEMORY[0x22AAB5C80](0xD000000000000016, 0x80000002283AB620);

    MEMORY[0x22AAB5C80](0x614C7365746F4E2ELL, 0xEB000000006C6562);

    v8 = sub_228391FC0();

    [v6 setAccessibilityIdentifier_];

    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v9 = sub_228392AD0();
    [v6 setFont_];

    v10 = [objc_opt_self() secondaryLabelColor];
    [v6 setTextColor_];

    v11 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

uint64_t sub_2281F5B5C(char *a1)
{
  sub_2281F8E18(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228397F00;
  v3 = sub_2281F5368();
  v4 = [v3 topAnchor];

  v5 = [a1 contentView];
  v6 = [v5 topAnchor];

  v7 = [a1 traitCollection];
  v8 = [v7 horizontalSizeClass];

  v9 = 24.0;
  if (v8 == 1)
  {
    v9 = 16.0;
  }

  v10 = [v4 constraintEqualToAnchor:v6 constant:v9];

  *(v2 + 32) = v10;
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___pillImageView;
  v12 = [*&a1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___pillImageView] leadingAnchor];
  v13 = [a1 contentView];
  v14 = [v13 layoutMarginsGuide];

  v15 = [v14 leadingAnchor];
  v16 = [v12 constraintEqualToAnchor_];

  *(v2 + 40) = v16;
  v17 = [*&a1[v11] widthAnchor];
  v18 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_pillImageSize;
  v19 = [v17 constraintEqualToConstant_];

  *(v2 + 48) = v19;
  v20 = [*&a1[v11] heightAnchor];
  v21 = [v20 constraintEqualToConstant_];

  *(v2 + 56) = v21;
  return v2;
}

uint64_t sub_2281F5DEC(char *a1)
{
  sub_2281F8E18(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228399E10;
  v3 = sub_2281F55F0();
  v4 = [v3 bottomAnchor];

  v5 = sub_2281F57C4();
  v6 = [v5 topAnchor];

  v7 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_separatorToNoteMargin;
  v8 = [v4 constraintEqualToAnchor:v6 constant:-*&a1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_separatorToNoteMargin]];

  *(v2 + 32) = v8;
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___separatorView;
  v10 = [*&a1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___separatorView] leadingAnchor];
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___captionLabel;
  v12 = [*&a1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___captionLabel] &selRef_logTimeChanged_ + 1];
  v13 = [v10 constraintEqualToAnchor_];

  *(v2 + 40) = v13;
  v14 = [*&a1[v9] trailingAnchor];
  v15 = [*&a1[v11] trailingAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v2 + 48) = v16;
  v17 = [*&a1[v9] bottomAnchor];
  v18 = sub_2281F5934();
  v19 = [v18 topAnchor];

  v20 = [v17 constraintEqualToAnchor:v19 constant:-*&a1[v7]];
  *(v2 + 56) = v20;
  v21 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___notesLabel;
  v22 = [*&a1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___notesLabel] leadingAnchor];
  v23 = [*&a1[v9] leadingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v2 + 64) = v24;
  v25 = [*&a1[v21] trailingAnchor];
  v26 = [*&a1[v9] trailingAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v2 + 72) = v27;
  v28 = [*&a1[v21] bottomAnchor];
  v29 = [a1 contentView];
  v30 = [v29 bottomAnchor];

  v31 = [a1 traitCollection];
  v32 = [v31 horizontalSizeClass];

  v33 = -24.0;
  if (v32 == 1)
  {
    v33 = -16.0;
  }

  v34 = [v28 constraintEqualToAnchor:v30 constant:v33];

  *(v2 + 80) = v34;
  return v2;
}

uint64_t sub_2281F61D8(void *a1)
{
  sub_2281F8E18(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228397F20;
  v3 = sub_2281F55F0();
  v4 = [v3 lastBaselineAnchor];

  v5 = [a1 contentView];
  v6 = [v5 bottomAnchor];

  v7 = [a1 traitCollection];
  v8 = [v7 horizontalSizeClass];

  if (v8 == 1)
  {
    v9 = -16.0;
  }

  else
  {
    v9 = -24.0;
  }

  v10 = [v4 constraintEqualToAnchor:v6 constant:v9];

  *(v2 + 32) = v10;
  v11 = sub_2281F5368();
  v12 = [v11 bottomAnchor];

  v13 = [a1 contentView];
  v14 = [v13 bottomAnchor];

  v15 = [a1 traitCollection];
  v16 = [v15 horizontalSizeClass];

  if (v16 == 1)
  {
    v17 = -16.0;
  }

  else
  {
    v17 = -24.0;
  }

  v18 = [v12 constraintLessThanOrEqualToAnchor:v14 constant:v17];

  *(v2 + 40) = v18;
  return v2;
}

uint64_t sub_2281F6404(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_2281F646C(uint64_t a1)
{
  sub_2281F8E18(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228397F20;
  v3 = sub_2281F55F0();
  v4 = [v3 leadingAnchor];

  v5 = sub_2281F5400();
  v6 = [v5 leadingAnchor];

  v7 = [v4 constraintEqualToAnchor_];
  *(v2 + 32) = v7;
  v8 = [*(a1 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___captionLabel) trailingAnchor];
  v9 = [*(a1 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___titleLabel) trailingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v2 + 40) = v10;
  return v2;
}

id MedicationDetailsCardCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MedicationDetailsCardCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___pillImageView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___captionLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___separatorView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___notesLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_pillImageSize] = 0x4054000000000000;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_separatorToNoteMargin] = 0x4028000000000000;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___pillImageConstraints] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___notesConstraints] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___emptyNotesConstraints] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___captionConstraints] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_titleToPillImageConstraints] = MEMORY[0x277D84F90];
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_item];
  v10 = type metadata accessor for MedicationDetailsCardCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v15.receiver = v4;
  v15.super_class = v10;
  v11 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  sub_2281F680C();
  v12 = [v11 traitCollection];
  v13 = [v12 horizontalSizeClass];

  if (v13 == 1)
  {
    sub_2281F6DD8();
  }

  else
  {
    sub_2281F7174();
  }

  return v11;
}

id sub_2281F680C()
{
  v1 = v0;
  sub_2281F8C84(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_2283913A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F7B0();
  sub_228392B00();
  sub_228391390();
  v9 = [objc_opt_self() tertiarySystemBackgroundColor];
  sub_228391370();
  (*(v6 + 16))(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  MEMORY[0x22AAB6420](v4);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v11 = result;
    v12 = [result isAppleInternalInstall];

    if (v12)
    {
      v13 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v1 action:sel_cellTripleTapped_];
      [v13 setNumberOfTapsRequired_];
      [v1 addGestureRecognizer_];
    }

    v14 = [v1 contentView];
    v15 = sub_2281F5368();
    [v14 addSubview_];

    v16 = [v1 contentView];
    v17 = sub_2281F5400();
    [v16 addSubview_];

    v18 = [v1 contentView];
    v19 = sub_2281F55F0();
    [v18 addSubview_];

    v20 = [v1 contentView];
    v21 = sub_2281F57C4();
    [v20 addSubview_];

    v22 = [v1 contentView];
    v23 = sub_2281F5934();
    [v22 addSubview_];

    sub_2281F8C84(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_228397F40;
    v25 = sub_2283915A0();
    v26 = MEMORY[0x277D74C50];
    *(v24 + 32) = v25;
    *(v24 + 40) = v26;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2281D5250();
    sub_228392B50();
    swift_unknownObjectRelease();

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2281F6C7C(void *a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [a2 horizontalSizeClass];
    v8 = [a1 traitCollection];
    v9 = [v8 horizontalSizeClass];

    if (v7 != v9)
    {
      v10 = objc_opt_self();
      sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);

      v11 = sub_228392190();

      [v10 deactivateConstraints_];

      v12 = [v6 traitCollection];
      v13 = [v12 horizontalSizeClass];

      if (v13 == 1)
      {
        sub_2281F6DD8();
      }

      else
      {
        sub_2281F7174();
      }

      sub_2281F76D8();
    }
  }
}

void sub_2281F6DD8()
{
  v1 = v0;
  sub_2281F8E18(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228397F00;
  v3 = sub_2281F5400();
  v4 = [v3 leadingAnchor];

  v5 = sub_2281F5368();
  v6 = [v5 leadingAnchor];

  v7 = [v4 constraintEqualToAnchor_];
  *(v2 + 32) = v7;
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___titleLabel;
  v9 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___titleLabel] trailingAnchor];
  v10 = [v1 contentView];
  v11 = [v10 trailingAnchor];

  v12 = [v1 traitCollection];
  v13 = [v12 horizontalSizeClass];

  v14 = -24.0;
  if (v13 == 1)
  {
    v14 = -16.0;
  }

  v15 = [v9 constraintEqualToAnchor:v11 constant:v14];

  *(v2 + 40) = v15;
  v16 = [*&v1[v8] topAnchor];
  v17 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___pillImageView] bottomAnchor];
  v18 = [v1 traitCollection];
  v19 = [v18 horizontalSizeClass];

  v20 = 24.0;
  if (v19 == 1)
  {
    v20 = 16.0;
  }

  v21 = [v16 constraintEqualToAnchor:v17 constant:v20];

  *(v2 + 48) = v21;
  v22 = [*&v1[v8] bottomAnchor];
  v23 = sub_2281F55F0();
  v24 = [v23 topAnchor];

  v25 = [v22 constraintEqualToAnchor:v24 constant:-2.0];
  *(v2 + 56) = v25;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_titleToPillImageConstraints] = v2;

  v26 = objc_opt_self();
  sub_2281F5B3C();

  sub_2281D5A98(v27);
  v28 = sub_2281F63E4();
  sub_2281D5A98(v28);
  v29 = sub_2281F5DCC();
  sub_2281D5A98(v29);
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v30 = sub_228392190();

  [v26 activateConstraints_];
}

void sub_2281F7174()
{
  v1 = v0;
  sub_2281F8E18(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228397F00;
  v3 = sub_2281F5400();
  v4 = [v3 leadingAnchor];

  v5 = sub_2281F5368();
  v6 = [v5 trailingAnchor];

  v7 = [v1 traitCollection];
  v8 = [v7 horizontalSizeClass];

  v9 = 24.0;
  if (v8 == 1)
  {
    v9 = 16.0;
  }

  v10 = [v4 constraintEqualToAnchor:v6 constant:v9];

  *(v2 + 32) = v10;
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___titleLabel;
  v12 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___titleLabel] trailingAnchor];
  v13 = [v1 contentView];
  v14 = [v13 trailingAnchor];

  v15 = [v1 traitCollection];
  v16 = [v15 horizontalSizeClass];

  v17 = -24.0;
  if (v16 == 1)
  {
    v17 = -16.0;
  }

  v18 = [v12 constraintEqualToAnchor:v14 constant:v17];

  *(v2 + 40) = v18;
  v19 = [*&v1[v11] topAnchor];
  v20 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___pillImageView] topAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v2 + 48) = v21;
  v22 = [*&v1[v11] bottomAnchor];
  v23 = sub_2281F55F0();
  v24 = [v23 topAnchor];

  v25 = [v22 constraintEqualToAnchor:v24 constant:-2.0];
  *(v2 + 56) = v25;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_titleToPillImageConstraints] = v2;

  v26 = objc_opt_self();
  sub_2281F5B3C();

  sub_2281D5A98(v27);
  v28 = sub_2281F63E4();
  sub_2281D5A98(v28);
  v29 = sub_2281F5DCC();
  sub_2281D5A98(v29);
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v30 = sub_228392190();

  [v26 activateConstraints_];
}

uint64_t sub_2281F750C(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_2281F76D8();
  return sub_22819482C(v6);
}

uint64_t sub_2281F757C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2281F75D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2281F76D8();
  return sub_22819482C(a1);
}

uint64_t (*sub_2281F7640(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2281F76A4;
}

uint64_t sub_2281F76A4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_2281F76D8();
  }

  return result;
}

uint64_t sub_2281F76D8()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_2281F8C84(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v59 - v11;
  sub_2281F8C84(0, &qword_27D825060, type metadata accessor for MedicationDetailsCardItem, v6);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v59 - v13;
  v15 = type metadata accessor for MedicationDetailsCardItem(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v19], v61);
  if (v62)
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v20 = swift_dynamicCast();
    (*(v16 + 56))(v14, v20 ^ 1u, 1, v15);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      sub_2281F8CE8(v14, v18);
      sub_228180FB0(v18, v61);
      v21 = v62;
      v22 = v63;
      __swift_project_boxed_opaque_existential_0(v61, v62);
      v23 = v59;
      (*(v22 + 32))(v21, v22);
      v24 = sub_2281F5368();
      sub_2281BF64C(v23, v10);
      sub_228390950();

      v25 = sub_2281F5400();
      v26 = v62;
      v27 = v63;
      __swift_project_boxed_opaque_existential_0(v61, v62);
      (*(v27 + 8))(v26, v27);
      v28 = sub_228391FC0();

      [v25 setText_];

      v29 = sub_2281F55F0();
      sub_2281F7F1C(v61);
      if (v30)
      {
        v31 = sub_228391FC0();
      }

      else
      {
        v31 = 0;
      }

      [v29 setText_];

      v41 = sub_2281F5934();
      v42 = v62;
      v43 = v63;
      __swift_project_boxed_opaque_existential_0(v61, v62);
      (*(v43 + 40))(v42, v43);
      if (v44)
      {
        v45 = sub_228391FC0();
      }

      else
      {
        v45 = 0;
      }

      [v41 setText_];

      v46 = v62;
      v47 = v63;
      __swift_project_boxed_opaque_existential_0(v61, v62);
      (*(v47 + 40))(v46, v47);
      if (v48 && (sub_2283920A0(), v50 = v49, , v50))
      {

        [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___notesLabel] setHidden_];
        v51 = sub_2281F57C4();
        v52 = [v1 traitCollection];
        v53 = [v52 horizontalSizeClass];

        [v51 setHidden_];
        v54 = objc_opt_self();
        sub_2281F61B8();
        sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
        v55 = sub_228392190();

        [v54 deactivateConstraints_];

        sub_2281F5DCC();
      }

      else
      {
        [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___notesLabel] setHidden_];
        v56 = sub_2281F57C4();
        [v56 setHidden_];

        v54 = objc_opt_self();
        sub_2281F5DCC();
        sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
        v57 = sub_228392190();

        [v54 deactivateConstraints_];

        sub_2281F61B8();
      }

      v58 = sub_228392190();

      [v54 activateConstraints_];

      sub_2281F8DA8(v23, &qword_280DDBD20, MEMORY[0x277D116C8]);
      sub_2281F8D4C(v18);
      return __swift_destroy_boxed_opaque_existential_0(v61);
    }
  }

  else
  {
    sub_22819482C(v61);
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  sub_2281F8DA8(v14, &qword_27D825060, type metadata accessor for MedicationDetailsCardItem);
  sub_228391150();
  v32 = v1;
  v33 = sub_2283911A0();
  v34 = sub_2283925C0();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v60 = v36;
    *v35 = 136446210;
    sub_22817E6C8(&v1[v19], v61);
    sub_2281F8450(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_2281810DC);
    v37 = sub_228392040();
    v39 = sub_2281C96FC(v37, v38, &v60);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_22816B000, v33, v34, "Incorrect view model for MedicationDetailsCardCell: %{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x22AAB7B80](v36, -1, -1);
    MEMORY[0x22AAB7B80](v35, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2281F7F1C(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v2);
  (*(v3 + 16))(v2, v3);
  sub_2283920A0();
  v5 = v4;

  v23[0] = v5;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v6);
  (*(v7 + 24))(v6, v7);
  v8 = sub_2283920A0();
  v10 = v9;

  v11 = 0;
  v23[1] = v8;
  v23[2] = v10;
  v12 = MEMORY[0x277D84F90];
LABEL_2:
  v13 = &v23[2 * v11];
  while (++v11 != 3)
  {
    v14 = v13 + 2;
    v15 = *v13;
    v13 += 2;
    if (v15)
    {
      v16 = *(v14 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_228198748(0, *(v12 + 2) + 1, 1, v12);
      }

      v18 = *(v12 + 2);
      v17 = *(v12 + 3);
      if (v18 >= v17 >> 1)
      {
        v12 = sub_228198748((v17 > 1), v18 + 1, 1, v12);
      }

      *(v12 + 2) = v18 + 1;
      v19 = &v12[16 * v18];
      *(v19 + 4) = v16;
      *(v19 + 5) = v15;
      goto LABEL_2;
    }
  }

  v20 = MEMORY[0x277D837D0];
  sub_2281F8E18(0, &qword_27D825070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  swift_arrayDestroy();
  sub_2281F8E18(0, &qword_27D827E10, v20, MEMORY[0x277D83940]);
  sub_2281BF13C();
  v21 = sub_228391F90();

  return v21;
}

id MedicationDetailsCardCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationDetailsCardCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2281F8370(uint64_t a1)
{
  sub_2281810DC(319, &qword_27D825050, &protocol descriptor for MedicationDetailsDisplayable);
  if (v1 <= 0x3F)
  {
    sub_22838F4A0();
    if (v2 <= 0x3F)
    {
      sub_2281F8450(319, &qword_27D825058, &qword_280DDB9E0, 0x277D115B8, sub_22817A958);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2281F8450(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_2281F8578()
{
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___pillImageView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___captionLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___separatorView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___notesLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_pillImageSize) = 0x4054000000000000;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_separatorToNoteMargin) = 0x4028000000000000;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___pillImageConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___notesConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___emptyNotesConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell____lazy_storage___captionConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_titleToPillImageConstraints) = MEMORY[0x277D84F90];
  v1 = v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  sub_228393300();
  __break(1u);
}

id sub_2281F868C()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v42 - v7;
  sub_2281F8C84(0, &qword_27D825060, type metadata accessor for MedicationDetailsCardItem, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v42 - v10;
  v12 = type metadata accessor for MedicationDetailsCardItem(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationDetailsCardCell_item;
  swift_beginAccess();
  sub_22817E6C8(v1 + v16, v45);
  if (!v46)
  {
    sub_22819482C(v45);
    (*(v13 + 56))(v11, 1, 1, v12);
    goto LABEL_7;
  }

  sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
  v17 = swift_dynamicCast();
  (*(v13 + 56))(v11, v17 ^ 1u, 1, v12);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
LABEL_7:
    sub_2281F8DA8(v11, &qword_27D825060, type metadata accessor for MedicationDetailsCardItem);
    sub_228391150();
    v26 = v1;
    v27 = sub_2283911A0();
    v28 = sub_2283925C0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v44 = v30;
      *v29 = 136446210;
      sub_22817E6C8(v1 + v16, v45);
      sub_2281F8450(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_2281810DC);
      v31 = sub_228392040();
      v33 = sub_2281C96FC(v31, v32, &v44);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_22816B000, v27, v28, "Incorrect view model for MedicationDetailsCardCell: %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AAB7B80](v30, -1, -1);
      MEMORY[0x22AAB7B80](v29, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }

  sub_2281F8CE8(v11, v15);
  v18 = [v1 viewController];
  if (v18)
  {
    v19 = v18;
    v20 = *&v15[*(v12 + 24)];
    v21 = type metadata accessor for OntologyInfoInternalViewController();
    v22 = objc_allocWithZone(v21);
    type metadata accessor for OntologyIDDataSource();
    swift_allocObject();
    v23 = v20;
    *&v22[OBJC_IVAR____TtC19HealthMedicationsUI34OntologyInfoInternalViewController_conceptsDataSource] = OntologyIDDataSource.init(with:)(v20);
    v43.receiver = v22;
    v43.super_class = v21;
    result = objc_msgSendSuper2(&v43, sel_initWithUsingInsetStyling_, 1);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v25 = result;
    [v19 showViewController:result sender:0];
  }

  else
  {
    sub_228391150();
    v34 = v1;
    v35 = sub_2283911A0();
    v36 = sub_2283925C0();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v44 = v38;
      *v37 = 136446210;
      sub_22817E6C8(v1 + v16, v45);
      sub_2281F8450(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_2281810DC);
      v39 = sub_228392040();
      v41 = sub_2281C96FC(v39, v40, &v44);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_22816B000, v35, v36, "Incorrect ViewController for MedicationDetailsCardCell: %{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x22AAB7B80](v38, -1, -1);
      MEMORY[0x22AAB7B80](v37, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
  }

  return sub_2281F8D4C(v15);
}

void sub_2281F8C84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2281F8CE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationDetailsCardItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281F8D4C(uint64_t a1)
{
  v2 = type metadata accessor for MedicationDetailsCardItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2281F8DA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2281F8C84(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2281F8E18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *sub_2281F8E70()
{
  result = sub_2281A8A14(&unk_283B66C40);
  off_27D8250A8 = result;
  return result;
}

uint64_t sub_2281F8E98(uint64_t a1)
{
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (a1 > 4)
  {
    if ((a1 - 7) < 2)
    {
      if (qword_280DDCF18 == -1)
      {
        return sub_22838F0C0();
      }

      goto LABEL_25;
    }

    if (a1 == 5)
    {
      goto LABEL_20;
    }

    if (a1 != 6)
    {
      return result;
    }
  }

  else
  {
    if (a1 > 1)
    {
      if (a1 != 2)
      {
        if (a1 != 3)
        {
          if (qword_280DDCF18 == -1)
          {
            return sub_22838F0C0();
          }

          goto LABEL_25;
        }

LABEL_20:
        if (qword_280DDCF18 == -1)
        {
          return sub_22838F0C0();
        }

        goto LABEL_25;
      }

      if (qword_280DDCF18 == -1)
      {
        return sub_22838F0C0();
      }

LABEL_25:
      swift_once();
      return sub_22838F0C0();
    }

    if (a1)
    {
      if (a1 != 1)
      {
        return result;
      }

      if (qword_280DDCF18 == -1)
      {
        return sub_22838F0C0();
      }

      goto LABEL_25;
    }
  }

  v8 = v4;
  sub_228391150();
  v9 = sub_2283911A0();
  v10 = sub_2283925E0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_2281C96FC(0xD000000000000018, 0x80000002283AB680, &v14);
    _os_log_impl(&dword_22816B000, v9, v10, "[%{public}s] attempting to display localized title of a schedule with type null or deprecated.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AAB7B80](v12, -1, -1);
    MEMORY[0x22AAB7B80](v11, -1, -1);
  }

  (*(v3 + 8))(v6, v8);
  return 0;
}

uint64_t sub_2281F92A8(uint64_t a1)
{
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (a1 > 1)
  {
    switch(a1)
    {
      case 2:
        if (qword_280DDCF18 == -1)
        {
          return sub_22838F0C0();
        }

        break;
      case 3:
        if (qword_280DDCF18 == -1)
        {
          return sub_22838F0C0();
        }

        break;
      case 7:
        if (qword_280DDCF18 == -1)
        {
          return sub_22838F0C0();
        }

        break;
      default:
        return result;
    }

LABEL_19:
    swift_once();
    return sub_22838F0C0();
  }

  if (a1)
  {
    if (a1 != 1)
    {
      return result;
    }

    if (qword_280DDCF18 == -1)
    {
      return sub_22838F0C0();
    }

    goto LABEL_19;
  }

  v8 = v4;
  sub_228391150();
  v9 = sub_2283911A0();
  v10 = sub_2283925E0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_2281C96FC(0xD00000000000001ALL, 0x800000022839B9A0, &v14);
    _os_log_impl(&dword_22816B000, v9, v10, "[%{public}s] attempting to display localized usage of a schedule with type null", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AAB7B80](v12, -1, -1);
    MEMORY[0x22AAB7B80](v11, -1, -1);
  }

  (*(v3 + 8))(v6, v8);
  return 0;
}

uint64_t sub_2281F9634()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](v1);
  return sub_228393570();
}

uint64_t sub_2281F967C(uint64_t a1)
{
  v2 = *v1;
  sub_228393520();
  MEMORY[0x22AAB70D0](v2);
  return sub_228393570();
}

uint64_t sub_2281F96C0()
{
  v6 = MEMORY[0x277D84F90];
  sub_2281CA0E4(0, 5, 0);
  if (qword_27D8232B8 != -1)
  {
    swift_once();
  }

  v0 = 0;
  while (1)
  {
    v1 = *(&unk_283B66C80 + v0 + 32);
    swift_beginAccess();
    if (*(off_27D8250A8 + 2))
    {
      sub_2281A9BCC();
      if (v2)
      {
        break;
      }
    }

    swift_endAccess();
    v4 = *(v6 + 16);
    v3 = *(v6 + 24);
    if (v4 >= v3 >> 1)
    {
      sub_2281CA0E4((v3 > 1), v4 + 1, 1);
    }

    *(v6 + 16) = v4 + 1;
    *(v6 + 8 * v4 + 32) = v1;
    v0 += 8;
    if (v0 == 40)
    {
      return v6;
    }
  }

  swift_endAccess();
  sub_2283931D0();
  MEMORY[0x22AAB5C80](0xD00000000000002DLL, 0x80000002283AB820);
  type metadata accessor for HKMedicationScheduleType(0);
  sub_2283932A0();
  MEMORY[0x22AAB5C80](0xD000000000000019, 0x80000002283AB850);
  sub_2283932A0();
  MEMORY[0x22AAB5C80](39, 0xE100000000000000);
  result = sub_228393300();
  __break(1u);
  return result;
}

unint64_t sub_2281F9914()
{
  result = qword_27D8250B0;
  if (!qword_27D8250B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8250B0);
  }

  return result;
}

uint64_t TipAction.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TipAction.accessibilityIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TipAction.action.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TipAction.init(title:accessibilityIdentifier:action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t static TipAction.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_228393460();
  }
}

uint64_t TipAction.hash(into:)(uint64_t a1)
{
  sub_2283920B0();

  return sub_2283920B0();
}

uint64_t TipAction.hashValue.getter()
{
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2281F9AF0()
{
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2281F9B58(uint64_t a1)
{
  sub_2283920B0();

  return sub_2283920B0();
}

uint64_t sub_2281F9BA8(uint64_t a1)
{
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t MedicationsCategoryTipItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t MedicationsCategoryTipItem.uniqueIdentifier.getter()
{
  sub_2283931D0();

  MEMORY[0x22AAB5C80](*v0, v0[1]);
  return 0xD000000000000010;
}

uint64_t MedicationsCategoryTipItem.init(identifier:headerView:titleText:bodyText:bodyTextLineLimit:buttonTitle:imageSystemName:imageTintColor:baseIdentifier:didTapActionButton:didTapDismiss:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  type metadata accessor for MedicationCategoryTipCell();
  sub_2281FDED8(&qword_27D8250C0, v27, type metadata accessor for MedicationCategoryTipCell, &protocol conformance descriptor for MedicationCategoryTipCell);
  a9[2] = sub_22838FBB0();
  a9[3] = v28;
  *a9 = a1;
  a9[1] = a2;
  a9[4] = a3;
  a9[5] = a4;
  a9[6] = a5;
  a9[7] = a6;
  a9[8] = a7;
  a9[9] = a8;
  v29 = type metadata accessor for MedicationsCategoryTipItem(0);
  v30 = a9 + v29[10];
  *v30 = a12;
  *(v30 + 2) = a13;
  *(v30 + 3) = 0x4041000000000000;
  type metadata accessor for TipImage(0);
  swift_storeEnumTagMultiPayload();
  v31 = (a9 + v29[12]);
  *v31 = a14;
  v31[1] = a15;
  v32 = (a9 + v29[11]);
  *v32 = a18;
  v32[1] = a19;
  sub_2281FE610(0, &qword_27D8250C8, &type metadata for TipAction, MEMORY[0x277D84560]);
  result = swift_allocObject();
  *(result + 16) = xmmword_228397F40;
  *(result + 32) = a10;
  *(result + 40) = a11;
  strcpy((result + 48), "ActionButton");
  *(result + 61) = 0;
  *(result + 62) = -5120;
  *(result + 64) = a16;
  *(result + 72) = a17;
  *(a9 + v29[13]) = result;
  return result;
}

uint64_t MedicationsCategoryTipItem.init(identifier:headerView:titleText:bodyText:bodyTextLineLimit:image:baseIdentifier:actions:didTapDismiss:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  type metadata accessor for MedicationCategoryTipCell();
  sub_2281FDED8(&qword_27D8250C0, v24, type metadata accessor for MedicationCategoryTipCell, &protocol conformance descriptor for MedicationCategoryTipCell);
  a9[2] = sub_22838FBB0();
  a9[3] = v25;
  *a9 = a1;
  a9[1] = a2;
  a9[4] = a3;
  a9[5] = a4;
  a9[6] = a5;
  a9[7] = a6;
  a9[8] = a7;
  a9[9] = a8;
  v26 = type metadata accessor for MedicationsCategoryTipItem(0);
  result = sub_2281FEEB0(a10, a9 + v26[10], type metadata accessor for TipImage);
  v28 = (a9 + v26[12]);
  *v28 = a11;
  v28[1] = a12;
  v29 = (a9 + v26[11]);
  *v29 = a14;
  v29[1] = a15;
  *(a9 + v26[13]) = a13;
  return result;
}

uint64_t MedicationsCategoryTipItem.hash(into:)(uint64_t a1)
{
  sub_2283920B0();
  v2 = *(v1 + *(type metadata accessor for MedicationsCategoryTipItem(0) + 52));
  v3 = *(v2 + 16);
  MEMORY[0x22AAB70D0](v3);
  if (v3)
  {
    v4 = v2 + 40;
    do
    {

      sub_2283920B0();
      sub_2283920B0();

      v4 += 48;
      --v3;
    }

    while (v3);
  }

  sub_2283920B0();

  return sub_2283920B0();
}

uint64_t static MedicationsCategoryTipItem.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_228393460() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for MedicationsCategoryTipItem(0);
  if ((sub_2282106E8(*(a1 + *(v5 + 52)), *(a2 + *(v5 + 52))) & 1) == 0)
  {
    return 0;
  }

  if (*a2 == *a1 && a2[1] == a1[1])
  {
    return 1;
  }

  return sub_228393460();
}

uint64_t MedicationsCategoryTipItem.hashValue.getter()
{
  sub_228393520();
  MedicationsCategoryTipItem.hash(into:)(v1);
  return sub_228393570();
}

uint64_t sub_2281FA230()
{
  sub_228393520();
  MedicationsCategoryTipItem.hash(into:)(v1);
  return sub_228393570();
}

uint64_t sub_2281FA270(uint64_t a1, uint64_t a2)
{
  sub_2283920B0();
  sub_2281DA534(a1, *(v2 + *(a2 + 52)));
  sub_2283920B0();

  return sub_2283920B0();
}

uint64_t sub_2281FA2D8(uint64_t a1)
{
  sub_228393520();
  MedicationsCategoryTipItem.hash(into:)(v2);
  return sub_228393570();
}

uint64_t sub_2281FA314(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_228393460() & 1) == 0 || (sub_2282106E8(*(a1 + *(a3 + 52)), *(a2 + *(a3 + 52))) & 1) == 0)
  {
    return 0;
  }

  if (*a2 == *a1 && a2[1] == a1[1])
  {
    return 1;
  }

  return sub_228393460();
}

uint64_t sub_2281FA3C4()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t sub_2281FA3F4()
{
  sub_2283931D0();

  MEMORY[0x22AAB5C80](*v0, v0[1]);
  return 0xD000000000000010;
}

uint64_t sub_2281FA464(uint64_t a1)
{
  v2 = sub_2281FDED8(&qword_27D825150, 255, type metadata accessor for MedicationsCategoryTipItem, &protocol conformance descriptor for MedicationsCategoryTipItem);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_2281FA4E4(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationCategoryTipCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_2281FA554();
  return sub_22819482C(v6);
}

uint64_t sub_2281FA554()
{
  swift_getObjectType();
  v1 = sub_2283911B0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2281FE1C8(0, &qword_27D825158, type metadata accessor for MedicationsCategoryTipItem, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22[-v6];
  v8 = type metadata accessor for MedicationsCategoryTipItem(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationCategoryTipCell_item;
  swift_beginAccess();
  sub_22817E6C8(v0 + v12, v23);
  if (v23[3])
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v13 = swift_dynamicCast();
    (*(v9 + 56))(v7, v13 ^ 1u, 1, v8);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      sub_2281FEEB0(v7, v11, type metadata accessor for MedicationsCategoryTipItem);
      sub_2281FAB3C(v11);
      return sub_2281FEF18(v11, type metadata accessor for MedicationsCategoryTipItem);
    }
  }

  else
  {
    sub_22819482C(v23);
    (*(v9 + 56))(v7, 1, 1, v8);
  }

  sub_2281FEE40(v7, &qword_27D825158, type metadata accessor for MedicationsCategoryTipItem);
  sub_228391150();
  v15 = sub_2283911A0();
  v16 = sub_2283925C0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23[0] = v18;
    *v17 = 136315138;
    v19 = sub_228393600();
    v21 = sub_2281C96FC(v19, v20, v23);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_22816B000, v15, v16, "[%s] Incorrect view model for MedicationsCategoryTipCell", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AAB7B80](v18, -1, -1);
    MEMORY[0x22AAB7B80](v17, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_2281FA920@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationCategoryTipCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2281FA978(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationCategoryTipCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2281FA554();
  return sub_22819482C(a1);
}

uint64_t (*sub_2281FA9E4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2281FAA48;
}

uint64_t sub_2281FAA48(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_2281FA554();
  }

  return result;
}

void sub_2281FAB3C(void *a1)
{
  v2 = v1;
  sub_2281FE1C8(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v66 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v67 = &v65 - v7;
  v72 = type metadata accessor for TipImage(0);
  v8 = MEMORY[0x28223BE20](v72);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v65 - v11;
  v13 = a1[4];
  v14 = type metadata accessor for MedicationsCategoryTipItem(0);
  v15 = *(a1 + v14[13]);
  v16 = v14[10];
  v70 = v14;
  v71 = v16;
  sub_2281FE5AC(a1 + v16, v12);
  v17 = (a1 + v14[11]);
  v19 = *v17;
  v18 = v17[1];
  v20 = objc_allocWithZone(type metadata accessor for MedicationsCategoryRoomTipView(0));
  v21 = v13;
  v69 = v13;
  v22 = v21;

  sub_228176FA8(v19, v18);
  v23 = sub_2281FE6C0(v13, v15, v12, v19, v18);
  sub_228176EC8(v19, v18);

  v24 = v23;
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  v25 = [v2 contentView];
  [v25 addSubview_];

  v68 = objc_opt_self();
  sub_2281FE610(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_228397F00;
  v27 = [v24 topAnchor];
  v28 = [v2 contentView];
  v29 = [v28 topAnchor];

  v30 = [v27 constraintEqualToAnchor_];
  *(v26 + 32) = v30;
  v31 = [v24 bottomAnchor];
  v32 = [v2 contentView];
  v33 = [v32 bottomAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v26 + 40) = v34;
  v35 = [v24 leadingAnchor];
  v36 = [v2 contentView];
  v37 = [v36 leadingAnchor];

  v38 = [v35 constraintEqualToAnchor_];
  *(v26 + 48) = v38;
  v39 = [v24 trailingAnchor];

  v40 = [v2 contentView];
  v41 = [v40 trailingAnchor];

  v42 = [v39 constraintEqualToAnchor_];
  *(v26 + 56) = v42;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v43 = sub_228392190();

  [v68 activateConstraints_];

  v44 = *&v24[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_headerView];
  *&v24[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_headerView] = v69;

  v45 = sub_2281FB804();
  v46 = sub_228391FC0();
  [v45 setText_];

  v47 = sub_2281FBA94();
  v48 = sub_228391FC0();
  [v47 setText_];

  [*&v24[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___detailLabel] setNumberOfLines_];
  v49 = (a1 + v70[12]);
  v51 = *v49;
  v50 = v49[1];
  v52 = &v24[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier];
  *v52 = v51;
  *(v52 + 1) = v50;

  sub_2281FE5AC(a1 + v71, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v54 = v67;
      sub_2281AA8D4(v10, v67);
      v55 = sub_2281FB66C();
      sub_2281BF64C(v54, v66);
      sub_228390950();

      sub_2281FEE40(v54, &qword_280DDBD20, MEMORY[0x277D116C8]);
      return;
    }

    v63 = *v10;
    v64 = sub_2281FB484();
    [v64 setImage_];
  }

  else
  {
    v56 = *(v10 + 2);
    v57 = [objc_opt_self() configurationWithPointSize:5 weight:*(v10 + 3)];
    v58 = sub_228391FC0();

    v59 = [objc_opt_self() systemImageNamed:v58 withConfiguration:v57];

    v60 = sub_2281FB484();
    [v60 setImage_];

    v61 = *&v24[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___iconImageView];
    v62 = v56;
    [v61 setTintColor_];
  }
}

id sub_2281FB350(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_currentConstraints];
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_currentConstraints] = a1;

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

id sub_2281FB4A4(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setContentMode_];
  v3 = [objc_opt_self() systemGrayColor];
  [v2 setTintColor_];

  v4 = sub_228392000();
  v6 = v5;
  v7 = *(a1 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier);
  v8 = *(a1 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier + 8);

  MEMORY[0x22AAB5C80](v7, v8);

  v11 = v4;

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  MEMORY[0x22AAB5C80](0x616D496E6F63492ELL, 0xEE00776569566567);

  v9 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];

  return v2;
}

id sub_2281FB68C(uint64_t a1)
{
  v2 = [objc_allocWithZone(sub_228390970()) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = sub_228392000();
  v5 = v4;
  v6 = *(a1 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier);
  v7 = *(a1 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier + 8);

  MEMORY[0x22AAB5C80](v6, v7);

  v10 = v3;

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  MEMORY[0x22AAB5C80](0x7461636964654D2ELL, 0xEF776569566E6F69);

  v8 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];

  return v2;
}

id sub_2281FB824(char *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = sub_228392000();
  v5 = v4;
  v6 = *&a1[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier];
  v7 = *&a1[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier + 8];
  v8 = v2;

  MEMORY[0x22AAB5C80](v6, v7);

  v15 = v3;

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

  v9 = sub_228391FC0();

  [v8 setAccessibilityIdentifier_];

  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setNumberOfLines_];
  v10 = [objc_opt_self() _preferredFontForTextStyle_variant_];
  [v8 setFont_];

  [v8 setAdjustsFontForContentSizeCategory_];
  v11 = [objc_opt_self() labelColor];
  [v8 setTextColor_];

  v12 = [a1 backgroundColor];
  [v8 setBackgroundColor_];

  LODWORD(v13) = 1132068864;
  [v8 setContentHuggingPriority:0 forAxis:v13];
  return v8;
}

id sub_2281FBAB4(char *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = sub_228392000();
  v5 = v4;
  v6 = *&a1[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier];
  v7 = *&a1[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier + 8];
  v8 = v2;

  MEMORY[0x22AAB5C80](v6, v7);

  v15 = v3;

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  MEMORY[0x22AAB5C80](0x4C6C69617465442ELL, 0xEC0000006C656261);

  v9 = sub_228391FC0();

  [v8 setAccessibilityIdentifier_];

  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setNumberOfLines_];
  v10 = [objc_opt_self() preferredFontForTextStyle_];
  [v8 setFont_];

  [v8 setAdjustsFontForContentSizeCategory_];
  v11 = [objc_opt_self() secondaryLabelColor];
  [v8 setTextColor_];

  v12 = [a1 backgroundColor];
  [v8 setBackgroundColor_];

  LODWORD(v13) = 1132068864;
  [v8 setContentHuggingPriority:0 forAxis:v13];
  return v8;
}

id sub_2281FBD84(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

id sub_2281FBE30(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 addTarget:a1 action:sel_didTapDismiss forControlEvents:64];
  v3 = sub_228392000();
  v5 = v4;
  v6 = *(a1 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier);
  v7 = *(a1 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier + 8);

  MEMORY[0x22AAB5C80](v6, v7);

  v10 = v3;

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  MEMORY[0x22AAB5C80](0x7373696D7369442ELL, 0xEE006E6F74747542);

  v8 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];

  return v2;
}

id sub_2281FBFC8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissImageView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissImageView);
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

id sub_2281FC1F4()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___actionButtonsStackView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___actionButtonsStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___actionButtonsStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setAxis_];
    [v4 setAlignment_];
    [v4 setDistribution_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_2281FC2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = sub_2283928C0() & 1;

    if (v7 != v4[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_isUsingVerticalLayout])
    {
      sub_2281FCACC(v7);
      [v4 invalidateIntrinsicContentSize];
      v8.receiver = v4;
      v8.super_class = type metadata accessor for MedicationsCategoryRoomTipView(0);
      objc_msgSendSuper2(&v8, sel_layoutSubviews);
    }
  }
}

id sub_2281FC3CC()
{
  v1 = sub_22838F4A0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277D12A48]) init];
  HKUIOnePixel();
  [v5 setSeparatorThickness_];
  v6 = [objc_opt_self() separatorColor];
  [v5 setColor_];

  v7 = sub_228392000();
  v9 = v8;
  v24 = 46;
  v25 = 0xE100000000000000;
  v10 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier);
  v11 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier + 8);
  v12 = v5;

  MEMORY[0x22AAB5C80](v10, v11);

  v13 = v24;
  v14 = v25;
  v24 = v7;
  v25 = v9;

  MEMORY[0x22AAB5C80](v13, v14);

  MEMORY[0x22AAB5C80](0x746172617065532ELL, 0xEE0077656956726FLL);

  v16 = v24;
  v15 = v25;
  v24 = 46;
  v25 = 0xE100000000000000;
  sub_22838F490();
  v17 = sub_22838F450();
  v19 = v18;
  (*(v2 + 8))(v4, v1);
  MEMORY[0x22AAB5C80](v17, v19);

  v20 = v24;
  v21 = v25;
  v24 = v16;
  v25 = v15;

  MEMORY[0x22AAB5C80](v20, v21);

  v22 = sub_228391FC0();

  [v12 setAccessibilityIdentifier_];

  return v12;
}

id sub_2281FC670(__int128 *a1, char a2)
{
  v3 = v2;
  v4 = a1[1];
  v33 = *a1;
  v34 = v4;
  v35 = a1[2];
  v5 = [objc_opt_self() buttonWithType_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = sub_228392000();
  v8 = v7;
  v31 = 46;
  v32 = 0xE100000000000000;
  v9 = *&v2[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier];
  v10 = *&v2[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier + 8];

  MEMORY[0x22AAB5C80](v9, v10);

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  MEMORY[0x22AAB5C80](v34, *(&v34 + 1));
  v31 = v6;
  v32 = v8;

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);

  v11 = sub_228391FC0();

  [v5 setAccessibilityIdentifier_];

  sub_22817A958(0, &qword_27D827890, 0x277D750C8);
  v12 = swift_allocObject();
  v13 = v34;
  v12[1] = v33;
  v12[2] = v13;
  v12[3] = v35;
  v14 = v5;
  sub_2281FE688(&v33, &v31);
  v15 = sub_228392C90();
  [v14 addAction:v15 forControlEvents:{64, 0, 0, 0, sub_2281FE660, v12}];

  v16 = [v3 backgroundColor];
  [v14 setBackgroundColor_];

  v17 = [v14 titleLabel];
  if (v17)
  {
    v18 = v17;
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v19 = sub_228392AD0();
    [v18 setFont_];
  }

  v20 = [v14 titleLabel];
  if (v20)
  {
    v21 = v20;
    [v20 setAdjustsFontForContentSizeCategory_];
  }

  v22 = [v14 titleLabel];
  if (v22)
  {
    v23 = v22;
    [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  v24 = [v14 titleLabel];
  if (v24)
  {
    v25 = v24;
    [v24 setNumberOfLines_];
  }

  v26 = [v14 titleLabel];
  if (v26)
  {
    v27 = v26;
    v28 = [objc_opt_self() systemBlueColor];
    [v27 setTextColor_];
  }

  v29 = sub_228391FC0();
  [v14 setTitle:v29 forState:0];

  [v14 setContentHorizontalAlignment_];
  return v14;
}

void sub_2281FCACC(int a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2281FBFC8();
  v9 = [v8 image];

  if (v9)
  {
    v104 = a1;
    v103 = v9;
    [v9 size];
    v11 = v10;
    v13 = v12;
    [v2 setLayoutMargins_];
    sub_2281FE610(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v105 = v14;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_22839BA70;
    v16 = sub_2281FBD64();
    v17 = [v16 topAnchor];

    v18 = [v2 topAnchor];
    v19 = [v17 constraintEqualToAnchor_];

    *(v15 + 32) = v19;
    v20 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissButton;
    v21 = [*&v2[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissButton] trailingAnchor];
    v22 = [v2 trailingAnchor];
    v23 = [v21 &selRef_freeTextMedicationName + 5];

    *(v15 + 40) = v23;
    v24 = [*&v2[v20] widthAnchor];
    v25 = [v24 constraintEqualToConstant_];

    *(v15 + 48) = v25;
    v26 = [*&v2[v20] heightAnchor];
    v27 = [v26 constraintEqualToConstant_];

    *(v15 + 56) = v27;
    v28 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissImageView;
    v29 = [*&v2[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissImageView] topAnchor];
    v30 = [v2 topAnchor];
    v31 = [v29 constraintEqualToAnchor:v30 constant:11.0];

    *(v15 + 64) = v31;
    v32 = [*&v2[v28] trailingAnchor];
    v33 = [v2 trailingAnchor];
    v34 = [v32 &selRef_resignFirstResponder + 6];

    *(v15 + 72) = v34;
    v35 = [*&v2[v28] widthAnchor];
    v36 = [v35 constraintGreaterThanOrEqualToConstant_];

    *(v15 + 80) = v36;
    v37 = sub_2281FBA94();
    v38 = [v37 topAnchor];

    v39 = sub_2281FB804();
    v40 = [v39 bottomAnchor];

    v41 = [v38 &selRef_resignFirstResponder + 6];
    *(v15 + 88) = v41;
    v42 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___detailLabel;
    v43 = [*&v2[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___detailLabel] leadingAnchor];
    v102 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___titleLabel;
    v44 = [*&v2[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___titleLabel] leadingAnchor];
    v45 = [v43 constraintEqualToAnchor_];

    *(v15 + 96) = v45;
    v46 = [*&v2[v42] trailingAnchor];
    v47 = [v2 trailingAnchor];
    v48 = [v46 &selRef_resignFirstResponder + 6];

    *(v15 + 104) = v48;
    v49 = [*&v2[v42] bottomAnchor];
    v50 = sub_2281FC1F4();
    v51 = [v50 topAnchor];

    v52 = [v49 &selRef_resignFirstResponder + 6];
    *(v15 + 112) = v52;
    v53 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___actionButtonsStackView;
    v54 = v28;
    v55 = [*&v2[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___actionButtonsStackView] topAnchor];
    v56 = [*&v2[v42] bottomAnchor];
    v57 = v53;
    v58 = [v55 &selRef_resignFirstResponder + 6];

    *(v15 + 120) = v58;
    v59 = [*&v2[v57] trailingAnchor];
    v60 = [v2 trailingAnchor];
    v61 = [v59 constraintEqualToAnchor_];

    *(v15 + 128) = v61;
    v62 = [*&v2[v57] bottomAnchor];
    v63 = [v2 bottomAnchor];
    v64 = [v62 constraintEqualToAnchor_];

    *(v15 + 136) = v64;
    v106 = v15;
    v65 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_headerView;
    v66 = *&v2[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_headerView];
    if (v66)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_228397F20;
      v68 = v66;
      v69 = [v68 topAnchor];
      v70 = [v2 topAnchor];
      v71 = [v69 constraintEqualToAnchor:v70 constant:11.0];

      *(inited + 32) = v71;
      v72 = [v68 trailingAnchor];
      v73 = [*&v2[v54] leadingAnchor];
      v74 = [v72 constraintLessThanOrEqualToAnchor:v73 constant:11.0];

      *(inited + 40) = v74;
      sub_2281D5A98(inited);
    }

    v75 = v104;
    if (v104)
    {
      v76 = swift_initStackObject();
      *(v76 + 16) = xmmword_228397F20;
      v77 = [*&v2[v102] trailingAnchor];
      v78 = [v2 trailingAnchor];
      v79 = [v77 constraintEqualToAnchor:v78 constant:-13.0];

      *(v76 + 32) = v79;
      v80 = [*&v2[v57] leadingAnchor];
      v81 = [v2 leadingAnchor];
      v82 = [v80 &selRef_resignFirstResponder + 6];
    }

    else
    {
      v90 = v54;
      v76 = swift_initStackObject();
      *(v76 + 16) = xmmword_228397F20;
      v91 = v102;
      v92 = [*&v2[v102] topAnchor];
      v93 = *&v2[v65];
      v94 = v93 == 0;
      if (v93)
      {
        v95 = *&v2[v65];
      }

      else
      {
        v95 = v2;
      }

      v96 = &selRef_bottomAnchor;
      if (v94)
      {
        v96 = &selRef_topAnchor;
      }

      v97 = [v95 *v96];
      v98 = [v92 constraintEqualToAnchor:v97 constant:11.0];

      *(v76 + 32) = v98;
      v80 = [*&v2[v91] trailingAnchor];
      v81 = [*&v2[v90] leadingAnchor];
      v82 = [v80 &selRef_resignFirstResponder + 6];
    }

    v99 = v82;

    *(v76 + 40) = v99;
    sub_2281D5A98(v76);
    v100 = sub_2281FD5EC(v75 & 1);
    sub_2281D5A98(v100);
    sub_2281FB350(v106);

    v2[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_isUsingVerticalLayout] = v75 & 1;
  }

  else
  {
    sub_228391150();
    v83 = sub_2283911A0();
    v84 = sub_2283925C0();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v107 = v86;
      *v85 = 136315138;
      v87 = sub_228393600();
      v89 = sub_2281C96FC(v87, v88, &v107);

      *(v85 + 4) = v89;
      _os_log_impl(&dword_22816B000, v83, v84, "[%s] Dismiss button image is nil.", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v86);
      MEMORY[0x22AAB7B80](v86, -1, -1);
      MEMORY[0x22AAB7B80](v85, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_2281FD5EC(int a1)
{
  v2 = v1;
  HIDWORD(v44) = a1;
  v3 = type metadata accessor for TipImage(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281FE5AC(&v1[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_tipImage], v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2281FB66C();
    sub_2281FEF18(v5, type metadata accessor for TipImage);
  }

  else
  {
    sub_2281FEF18(v5, type metadata accessor for TipImage);
    v6 = sub_2281FB484();
  }

  sub_2281FE610(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_228397F00;
  v8 = [v6 topAnchor];
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_headerView;
  v10 = *&v2[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_headerView];
  v11 = v10 == 0;
  if (v10)
  {
    v12 = *&v2[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_headerView];
  }

  else
  {
    v12 = v2;
  }

  v13 = &selRef_bottomAnchor;
  if (v11)
  {
    v13 = &selRef_topAnchor;
  }

  v14 = [v12 *v13];
  v15 = [v8 constraintEqualToAnchor:v14 constant:11.0];

  *(v7 + 32) = v15;
  v16 = [v6 leadingAnchor];
  v17 = [v2 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:13.0];

  *(v7 + 40) = v18;
  v19 = [v6 widthAnchor];
  v20 = [v19 constraintEqualToConstant_];

  *(v7 + 48) = v20;
  v21 = [v6 heightAnchor];

  v22 = [v21 constraintEqualToConstant_];
  *(v7 + 56) = v22;
  v45 = v7;
  v23 = *&v2[v9];
  if (v23)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_228396260;
    v25 = v23;
    v26 = [v25 leadingAnchor];
    v27 = [v6 leadingAnchor];
    v28 = [v26 constraintEqualToAnchor_];

    *(inited + 32) = v28;
    sub_2281D5A98(inited);
  }

  if ((v44 & 0x100000000) != 0)
  {
    v29 = swift_initStackObject();
    *(v29 + 16) = xmmword_228397F20;
    v30 = sub_2281FB804();
    v31 = [v30 topAnchor];

    v32 = [v6 bottomAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:4.0];

    *(v29 + 32) = v33;
    v34 = [*&v2[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___titleLabel] leadingAnchor];
    v35 = [v6 leadingAnchor];
    v36 = [v34 &selRef_freeTextMedicationName + 5];
  }

  else
  {
    v29 = swift_initStackObject();
    *(v29 + 16) = xmmword_228397F20;
    v37 = sub_2281FB804();
    v38 = [v37 leadingAnchor];

    v39 = [v6 trailingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39 constant:11.0];

    *(v29 + 32) = v40;
    v41 = sub_2281FC1F4();
    v34 = [v41 leadingAnchor];

    v35 = [v6 trailingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35 constant:11.0];
  }

  v42 = v36;

  *(v29 + 40) = v42;
  sub_2281D5A98(v29);

  return v45;
}

id MedicationsCategoryRoomTipView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_2281FDCC4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_2281FDE38()
{
  result = qword_27D8250D8;
  if (!qword_27D8250D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8250D8);
  }

  return result;
}

uint64_t sub_2281FDED8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2281FDF6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2281FDFB4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_2281FE060(uint64_t a1)
{
  sub_2281FE144(319);
  if (v1 <= 0x3F)
  {
    sub_2281FE1C8(319, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2281FE22C(319, &qword_280DDB978, &qword_280DDB980, 0x277D755B8, sub_22817A958);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2281FE144(uint64_t a1)
{
  if (!qword_280DDBBA0)
  {
    sub_22817A958(255, &qword_280DDB990, 0x277D75348);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_280DDBBA0);
    }
  }
}

void sub_2281FE1C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2281FE22C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_2281FE2B0(uint64_t a1)
{
  sub_2281FE22C(319, &unk_27D825108, &qword_280DDB9B0, 0x277D75D18, sub_22817A958);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TipImage(319);
    if (v2 <= 0x3F)
    {
      sub_2281FE1C8(319, &unk_27D826FC0, sub_2281C35D8, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2281FE610(319, &unk_27D825118, &type metadata for TipAction, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2281FE4BC(uint64_t a1)
{
  result = type metadata accessor for TipImage(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_2281FE5AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipImage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2281FE610(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

char *sub_2281FE6C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for TipImage(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_actions;
  v15 = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_actions] = MEMORY[0x277D84F90];
  v16 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_headerView;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_headerView] = 0;
  v17 = &v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_onDismiss];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier];
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_isUsingVerticalLayout] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_currentConstraints] = v15;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___iconImageView] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___medicationView] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___titleLabel] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___detailLabel] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissButton] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissImageView] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___actionButtonsStackView] = 0;
  *&v5[v16] = a1;
  *&v5[v14] = a2;
  *v17 = a4;
  v17[1] = a5;
  sub_2281FE5AC(a3, &v5[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_tipImage]);
  v19 = a1;
  v58 = a4;
  sub_228176FA8(a4, a5);
  v20 = type metadata accessor for MedicationsCategoryRoomTipView(0);
  v68.receiver = v5;
  v68.super_class = v20;
  v21 = objc_msgSendSuper2(&v68, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 secondarySystemBackgroundColor];
  [v23 setBackgroundColor_];

  sub_22838F7B0();
  sub_228392B00();
  if (a1)
  {
    v25 = v19;
    [v25 setTranslatesAutoresizingMaskIntoConstraints_];
    [v23 addSubview_];
  }

  v26 = sub_2281FBFC8();
  [v23 addSubview_];

  v27 = sub_2281FBD64();
  [v23 addSubview_];

  v28 = sub_2281FB804();
  [v23 addSubview_];

  v29 = sub_2281FBA94();
  [v23 addSubview_];

  v30 = sub_2281FC1F4();
  [v23 addSubview_];

  sub_2281FE5AC(a3, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v59 = a3;
  if (EnumCaseMultiPayload == 1)
  {
    v32 = sub_2281FB66C();
    [v23 addSubview_];

    sub_2281FEF18(v13, type metadata accessor for TipImage);
  }

  else
  {
    sub_2281FEF18(v13, type metadata accessor for TipImage);
    v33 = sub_2281FB484();
    [v23 addSubview_];
  }

  v34 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_actions;
  v35 = *(*&v23[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_actions] + 16);
  if (v35)
  {
    v61 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___actionButtonsStackView;

    v36 = v57 + 40;
    v60 = v34;
    do
    {
      v38 = *(v36 - 8);
      v37 = *v36;
      v39 = *(v36 + 8);
      v40 = *(v36 + 32);
      v41 = v61;
      v42 = *&v23[v61];

      v62 = *(v36 + 16);
      v63 = v62;

      v43 = v42;
      v44 = sub_2281FC3CC();
      [v43 addArrangedSubview_];

      *&v64 = v38;
      *(&v64 + 1) = v37;
      v65 = v39;
      v66 = v62;
      v67 = v40;
      v45 = sub_2281FC670(&v64, *(*&v23[v60] + 16) == 1);
      [*&v23[v41] addArrangedSubview_];
      v46 = [v45 heightAnchor];
      v47 = [v46 constraintGreaterThanOrEqualToConstant_];

      [v47 setActive_];

      v36 += 48;
      --v35;
    }

    while (v35);
  }

  v48 = v58 == 0;
  [*&v23[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissImageView] setHidden_];
  [*&v23[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissButton] setHidden_];
  v49 = [v23 traitCollection];
  v50 = [v49 preferredContentSizeCategory];
  v51 = sub_2283928C0();

  sub_2281FCACC(v51 & 1);
  sub_2281FE1C8(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_228397F40;
  v53 = sub_228391640();
  v54 = MEMORY[0x277D74DB8];
  *(v52 + 32) = v53;
  *(v52 + 40) = v54;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_2281D5250();
  sub_228392B50();

  swift_unknownObjectRelease();

  sub_2281FEF18(v59, type metadata accessor for TipImage);
  return v23;
}

void sub_2281FED2C()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_actions) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_headerView) = 0;
  v2 = (v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_onDismiss);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_baseIdentifier);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_isUsingVerticalLayout) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView_currentConstraints) = v1;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___iconImageView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___medicationView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___detailLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissButton) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___dismissImageView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsCategoryRoomTipView____lazy_storage___actionButtonsStackView) = 0;
  sub_228393300();
  __break(1u);
}

uint64_t sub_2281FEE40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2281FE1C8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2281FEEB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2281FEF18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2281FEF78(unint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v39 = a2;
  sub_2282015E0(0, &unk_280DDBD10, MEMORY[0x277D11720], MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v13 = 0;
    v37 = a1 & 0xFFFFFFFFFFFFFF8;
    v38 = a1 & 0xC000000000000001;
    v35 = i;
    v36 = a1;
    while (1)
    {
      if (v38)
      {
        v16 = MEMORY[0x22AAB6D80](v13, a1);
      }

      else
      {
        if (v13 >= *(v37 + 16))
        {
          goto LABEL_33;
        }

        v16 = *(a1 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      sub_228392A10();
      sub_2282016A8(v11, v9);
      v19 = sub_228390F60();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v9, 1, v19) == 1)
      {
        sub_228201554(v9);
      }

      else
      {
        if (v39 == 1)
        {
          v21 = sub_228390F40();
        }

        else
        {
          v21 = sub_228390F50();
        }

        v22 = v21;
        (*(v20 + 8))(v9, v19);
        if (v22)
        {
          v23 = v17;
          v24 = v32;
          MEMORY[0x22AAB5D20]();
          if (*((*v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2283921E0();
          }

          goto LABEL_5;
        }
      }

      v25 = [v17 localizedOntologyEducationContent];
      v26 = v25;
      if (v39)
      {
        if (v39 == 1)
        {
          if (!v25)
          {
            goto LABEL_4;
          }

          v40 = v25;
          sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
          sub_22838FA90();
        }

        else
        {
          if (!v25)
          {
            goto LABEL_4;
          }

          v40 = v25;
          sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
          sub_22838FA80();
        }
      }

      else
      {
        if (!v25)
        {
          goto LABEL_4;
        }

        v40 = v25;
        sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
        sub_22838FA70();
      }

      v28 = v27;

      if (!v28)
      {
LABEL_4:
        v14 = v17;
        v15 = v34;
        MEMORY[0x22AAB5D20]();
        if (*((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_29;
        }

        goto LABEL_5;
      }

      v29 = v17;
      v30 = v33;
      MEMORY[0x22AAB5D20]();
      if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_29:
        sub_2283921E0();
      }

LABEL_5:
      sub_228392230();
      sub_228201554(v11);

      ++v13;
      a1 = v36;
      if (v18 == v35)
      {
        return;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }
}

void sub_2281FF388(unint64_t a1, void *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
LABEL_26:
    v4 = sub_2283930D0();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v27 = v3 & 0xFFFFFFFFFFFFFF8;
      v28 = v3 & 0xC000000000000001;
      v26 = v3;
      do
      {
        if (v28)
        {
          v6 = MEMORY[0x22AAB6D80](v5, v3);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (v5 >= *(v27 + 16))
          {
            goto LABEL_22;
          }

          v6 = *(v3 + 8 * v5 + 32);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }
        }

        v29 = v7;
        v8 = v6;
        v9 = [v6 severityLevel];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = *a2;
        v30 = *a2;
        *a2 = 0x8000000000000000;
        v13 = sub_2281A9BCC();
        v14 = v11[2];
        v15 = (v12 & 1) == 0;
        v16 = v14 + v15;
        if (__OFADD__(v14, v15))
        {
          goto LABEL_23;
        }

        v3 = v12;
        if (v11[3] >= v16)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22829B40C();
            v11 = v30;
          }
        }

        else
        {
          sub_228299E08(v16, isUniquelyReferenced_nonNull_native);
          type metadata accessor for HKDrugInteractionSeverityLevel(0);
          v11 = v30;
          v17 = sub_2281A9BCC();
          if ((v3 & 1) != (v18 & 1))
          {
            sub_2283934A0();
            __break(1u);
            return;
          }

          v13 = v17;
        }

        *a2 = v11;

        v19 = *a2;
        if ((v3 & 1) == 0)
        {
          v19[(v13 >> 6) + 8] |= 1 << v13;
          *(v19[6] + 8 * v13) = v9;
          *(v19[7] + 8 * v13) = 0;
          v20 = v19[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_25;
          }

          v19[2] = v22;
        }

        v23 = v19[7];
        v24 = *(v23 + 8 * v13);
        v21 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v21)
        {
          goto LABEL_24;
        }

        *(v23 + 8 * v13) = v25;

        ++v5;
        v3 = v26;
      }

      while (v29 != v4);
    }
  }
}

void *Array<A>.groupByCritical(for:)(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  KeyPath = swift_getKeyPath();

  v9 = sub_2281D93A0(v4);
  sub_2282014A8(&v9, KeyPath);

  v5 = v9;
  v9 = MEMORY[0x277D84F90];
  v7 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  sub_2281FEF78(v5, v2, &v9, &v8, &v7);

  return v9;
}

uint64_t sub_2281FF680@<X0>(uint64_t *a1@<X8>)
{
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  result = sub_228390F30();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Array<A>.cellContent(for:)(unsigned __int8 *a1, unint64_t a2)
{
  sub_2282015E0(0, &unk_280DDBD10, MEMORY[0x277D11720], MEMORY[0x277D83D88]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = *a1;
  v41 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
    goto LABEL_46;
  }

  v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
LABEL_47:
    v32 = MEMORY[0x277D84F90];
    v31 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
LABEL_48:
      if ((v32 & 0x4000000000000000) == 0)
      {
        v33 = *(v32 + 16);
        goto LABEL_50;
      }
    }

LABEL_57:
    v33 = sub_2283930D0();
LABEL_50:

    if (v33 <= 0)
    {
      if (v31 < 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      sub_228321B58(v33, 1);
      if (v31 < 0)
      {
        goto LABEL_58;
      }
    }

    if ((v31 & 0x4000000000000000) == 0)
    {
      v34 = *(v31 + 16);
LABEL_56:

      return v34;
    }

LABEL_58:
    v34 = sub_2283930D0();
    goto LABEL_56;
  }

LABEL_3:
  v12 = 0;
  v38 = a2 & 0xFFFFFFFFFFFFFF8;
  v39 = a2 & 0xC000000000000001;
  v37 = a2;
  while (1)
  {
    if (v39)
    {
      v13 = MEMORY[0x22AAB6D80](v12, a2);
    }

    else
    {
      if (v12 >= *(v38 + 16))
      {
        goto LABEL_43;
      }

      v13 = *(a2 + 8 * v12 + 32);
    }

    a2 = v13;
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      v11 = sub_2283930D0();
      if (!v11)
      {
        goto LABEL_47;
      }

      goto LABEL_3;
    }

    if (v10 == 1)
    {
      sub_228392A10();
      v15 = sub_228390F60();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v9, 1, v15) != 1)
      {
        v20 = sub_228390F40();
        (*(v16 + 8))(v9, v15);
        goto LABEL_19;
      }

      v17 = v9;
      goto LABEL_16;
    }

    if (v10 != 2)
    {
      break;
    }

    sub_228392A10();
    v18 = sub_228390F60();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v7, 1, v18) != 1)
    {
      v20 = sub_228390F50();
      (*(v19 + 8))(v7, v18);
LABEL_19:
      if (v20)
      {
        sub_228393210();
        sub_228393250();
        sub_228393260();
        sub_228393220();
      }

      else
      {
      }

      goto LABEL_5;
    }

    v17 = v7;
LABEL_16:
    sub_228201554(v17);
LABEL_5:
    ++v12;
    a2 = v37;
    if (v14 == v11)
    {
      v9 = 0;
      v36 = v41;
      v41 = MEMORY[0x277D84F90];
      v7 = &off_2785F4000;
      while (1)
      {
        if (v39)
        {
          v21 = MEMORY[0x22AAB6D80](v9, a2);
        }

        else
        {
          if (v9 >= *(v38 + 16))
          {
            goto LABEL_45;
          }

          v21 = *(a2 + 8 * v9 + 32);
        }

        v22 = v21;
        v23 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
          goto LABEL_44;
        }

        v24 = [v21 localizedOntologyEducationContent];
        if (v10 == 1)
        {
          if (!v24)
          {
            goto LABEL_23;
          }

          v40 = v24;
          v25 = v24;
          sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
          v26 = sub_22838FA90();
        }

        else
        {
          if (!v24)
          {
            goto LABEL_23;
          }

          v40 = v24;
          v25 = v24;
          sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
          v26 = sub_22838FA80();
        }

        v28 = v26;
        v29 = v27;

        a2 = v37;
        if (v29)
        {

          v30 = HIBYTE(v29) & 0xF;
          if ((v29 & 0x2000000000000000) == 0)
          {
            v30 = v28 & 0xFFFFFFFFFFFFLL;
          }

          if (v30)
          {
            sub_228393210();
            sub_228393250();
            sub_228393260();
            sub_228393220();
            goto LABEL_24;
          }
        }

LABEL_23:

LABEL_24:
        ++v9;
        if (v23 == v11)
        {
          v31 = v41;
          v32 = v36;
          if ((v36 & 0x8000000000000000) == 0)
          {
            goto LABEL_48;
          }

          goto LABEL_57;
        }
      }
    }
  }

  result = sub_228393300();
  __break(1u);
  return result;
}

uint64_t Array<A>.countBySeverityLevel.getter(unint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  sub_2281FF388(a1, &v2);
  return v2;
}

id Array<A>.count.getter(unint64_t a1)
{
  v15[8] = *MEMORY[0x277D85DE8];
  sub_228390890();
  sub_228390880();
  sub_228390830();

  sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
  sub_2283925F0();
  sub_2283907E0();
  swift_allocObject();
  sub_228390700();
  sub_2282015E0(0, &qword_27D823ED0, type metadata accessor for HKDrugInteractionSeverityLevel, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228398270;
  *(inited + 32) = xmmword_228397F40;
  *(inited + 48) = 3;
  if (sub_228390730())
  {
    result = [objc_opt_self() sharedBehavior];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;
    v5 = [result isAppleInternalInstall];

    if (v5)
    {
      inited = sub_2281997BC(1, 4, 1, inited);
      *(inited + 16) = 4;
      *(inited + 56) = 4;
    }
  }

  v6 = *(inited + 16);
  if (v6)
  {
    v7 = 0;
    v8 = inited + 32;
    v9 = MEMORY[0x277D84F98];
    do
    {
      v8 += 8;
      v15[0] = v9;
      sub_2281FF388(a1, v15);
      v10 = v15[0];
      if (*(v15[0] + 16) && (v11 = sub_2281A9BCC(), (v12 & 1) != 0))
      {
        v13 = *(*(v10 + 56) + 8 * v11);
      }

      else
      {
        v13 = 0;
      }

      v14 = __OFADD__(v7, v13);
      v7 += v13;
      if (v14)
      {
        __break(1u);
      }

      --v6;
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t Array<A>.interactionSummaryTitle()(unint64_t a1)
{
  v30[10] = *MEMORY[0x277D85DE8];
  v30[0] = MEMORY[0x277D84F98];
  sub_2281FF388(a1, v30);
  v1 = v30[0];
  sub_228390890();
  sub_228390880();
  sub_228390830();

  sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
  sub_2283925F0();
  sub_2283907E0();
  swift_allocObject();
  sub_228390700();
  sub_2282015E0(0, &qword_27D823ED0, type metadata accessor for HKDrugInteractionSeverityLevel, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228398270;
  *(inited + 32) = xmmword_228397F40;
  *(inited + 48) = 3;
  if (sub_228390730())
  {
    v3 = [objc_opt_self() sharedBehavior];
    if (!v3)
    {
      __break(1u);
LABEL_34:
      result = sub_228393300();
      __break(1u);
      return result;
    }

    v4 = v3;
    v5 = [v3 isAppleInternalInstall];

    if (v5)
    {
      inited = sub_2281997BC(1, 4, 1, inited);
      *(inited + 16) = 4;
      *(inited + 56) = 4;
    }
  }

  v6 = *(inited + 16);
  if (v6)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v29 = *(inited + 16);
    do
    {
      if (v7 >= *(inited + 16))
      {
        __break(1u);
      }

      if (*(v1 + 16))
      {
        v10 = *(inited + 8 * v7 + 32);
        v11 = sub_2281A9BCC();
        if (v12)
        {
          v13 = *(*(v1 + 56) + 8 * v11);
          if (v13)
          {
            if (v10 > 2)
            {
              if (v10 == 3)
              {
                v14 = 0xE800000000000000;
                v15 = 0x4554415245444F4DLL;
              }

              else
              {
                if (v10 != 4)
                {
                  goto LABEL_34;
                }

                v14 = 0xE500000000000000;
                v15 = 0x524F4E494DLL;
              }
            }

            else if (v10 == 1)
            {
              v14 = 0xE800000000000000;
              v15 = 0x4C41434954495243;
            }

            else
            {
              if (v10 != 2)
              {
                goto LABEL_34;
              }

              v14 = 0xE700000000000000;
              v15 = 0x53554F49524553;
            }

            v30[0] = 0xD000000000000015;
            v30[1] = 0x80000002283ABB40;
            MEMORY[0x22AAB5C80](v15, v14);

            if (qword_280DDCF18 != -1)
            {
              swift_once();
            }

            sub_2282015E0(0, &qword_280DDB870, sub_228201644, MEMORY[0x277D84560]);
            v16 = swift_allocObject();
            *(v16 + 16) = xmmword_228397F40;
            *(v16 + 56) = MEMORY[0x277D83B88];
            *(v16 + 64) = MEMORY[0x277D83C10];
            *(v16 + 32) = v13;
            v17 = sub_22838F0C0();
            v19 = v18;

            if (*(v16 + 16))
            {
              v17 = sub_228391FD0();
              v21 = v20;

              v19 = v21;
            }

            else
            {
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_228198748(0, *(v8 + 2) + 1, 1, v8);
            }

            v23 = *(v8 + 2);
            v22 = *(v8 + 3);
            if (v23 >= v22 >> 1)
            {
              v8 = sub_228198748((v22 > 1), v23 + 1, 1, v8);
            }

            *(v8 + 2) = v23 + 1;
            v9 = &v8[16 * v23];
            *(v9 + 4) = v17;
            *(v9 + 5) = v19;
            v6 = v29;
          }
        }
      }

      ++v7;
    }

    while (v6 != v7);
  }

  v24 = objc_opt_self();
  v25 = sub_228392190();

  v26 = [v24 localizedStringByJoiningStrings_];

  v27 = sub_228392000();

  return v27;
}

id Array<A>.interactionSummaryTitleColor()(unint64_t a1)
{
  if (a1 >> 62)
  {
    v1 = sub_2283930D0();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = objc_opt_self();
  v3 = &selRef_secondaryLabelColor;
  if (v1)
  {
    v3 = &selRef_labelColor;
  }

  v4 = [v2 *v3];

  return v4;
}

uint64_t sub_2282004AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  if (v8 == v6 && v9 == v7)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_228393460();
  }

  return v4 & 1;
}

uint64_t sub_22820054C(void **__src, void **__dst, void **a3, void **a4, uint64_t a5)
{
  v5 = a3;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v16 = a4;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      v24 = __dst;
      memmove(a4, __dst, 8 * v12);
      __dst = v24;
    }

    v23 = __dst;
    if (v10 < 8)
    {
      v15 = &v16[v12];
      goto LABEL_50;
    }

    v15 = &v16[v12];
    if (__dst <= v6)
    {
      goto LABEL_50;
    }

    v37 = v16;
    while (2)
    {
      v34 = v23;
      v25 = v23 - 1;
      v26 = v5;
      v27 = v15;
      while (1)
      {
        v28 = *--v27;
        v29 = *v25;
        v30 = v28;
        v31 = v29;
        swift_getAtKeyPath();
        swift_getAtKeyPath();
        if (v40 != v38 || v41 != v39)
        {
          break;
        }

        v5 = v26 - 1;
        if (v15 != v26)
        {
          goto LABEL_42;
        }

LABEL_33:
        v15 = v27;
        v26 = v5;
        if (v27 <= v37)
        {
          v15 = v27;
          v16 = v37;
          v23 = v34;
          goto LABEL_50;
        }
      }

      v36 = sub_228393460();

      v5 = v26 - 1;
      if (v36)
      {
        if (v26 != v34)
        {
          *v5 = *v25;
        }

        v16 = v37;
        if (v15 <= v37 || (v23 = v25, v25 <= v6))
        {
          v23 = v25;
          goto LABEL_50;
        }

        continue;
      }

      break;
    }

    if (v15 == v26)
    {
      goto LABEL_33;
    }

LABEL_42:
    *v5 = *v27;
    goto LABEL_33;
  }

  v13 = __dst;
  if (a4 != __src || &__src[v9] <= a4)
  {
    v14 = a4;
    memmove(a4, __src, 8 * v9);
    a4 = v14;
  }

  v15 = &a4[v9];
  v16 = a4;
  if (v7 >= 8 && v13 < v5)
  {
    v35 = v15;
    while (1)
    {
      v17 = *v16;
      v18 = *v13;
      v19 = v17;
      swift_getAtKeyPath();
      swift_getAtKeyPath();
      v20 = v40 == v38 && v41 == v39;
      if (v20)
      {
        break;
      }

      v21 = sub_228393460();

      if ((v21 & 1) == 0)
      {
        goto LABEL_21;
      }

      v22 = v13;
      v20 = v6 == v13++;
      if (!v20)
      {
        goto LABEL_22;
      }

LABEL_23:
      ++v6;
      v15 = v35;
      if (v16 >= v35 || v13 >= v5)
      {
        goto LABEL_25;
      }
    }

LABEL_21:
    v22 = v16;
    v20 = v6 == v16++;
    if (v20)
    {
      goto LABEL_23;
    }

LABEL_22:
    *v6 = *v22;
    goto LABEL_23;
  }

LABEL_25:
  v23 = v6;
LABEL_50:
  if (v23 != v16 || v23 >= (v16 + ((v15 - v16 + (v15 - v16 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v23, v16, 8 * (v15 - v16));
  }

  return 1;
}

uint64_t sub_2282008D8(uint64_t *a1, void **a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_2283406C0(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v24[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 8 * *v12);
      v15 = (v10 + 8 * *v13);
      v16 = (v10 + 8 * v14);

      sub_22820054C(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_228200A80(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  v117 = MEMORY[0x277D84F90];
  if (v6 >= 1)
  {
    swift_retain_n();
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v112 = a5;
    while (1)
    {
      v9 = a5;
      v10 = v7;
      v11 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v102 = v8;
        v12 = *a3;
        v13 = *(*a3 + 8 * v7);
        v14 = *(*a3 + 8 * v11);
        v15 = v13;
        v107 = sub_2282004AC(v14, v15, v9);
        if (v111)
        {

          goto LABEL_109;
        }

        v16 = v10 + 2;
        if (v10 + 2 < v6)
        {
          v99 = v10;
          v17 = (v12 + 8 * v10 + 16);
          do
          {
            v19 = *(v17 - 1);
            v20 = *v17;
            v21 = v19;
            swift_getAtKeyPath();
            swift_getAtKeyPath();
            if (v115 == v113 && v116 == v114)
            {

              if (v107)
              {
                v8 = v102;
                v10 = v99;
                goto LABEL_21;
              }
            }

            else
            {
              v18 = sub_228393460();

              if ((v107 ^ v18))
              {
                goto LABEL_19;
              }
            }

            ++v17;
            ++v16;
          }

          while (v6 != v16);
          v16 = v6;
LABEL_19:
          v10 = v99;
        }

        v8 = v102;
        if (v107)
        {
LABEL_21:
          if (v16 < v10)
          {
            goto LABEL_130;
          }

          if (v10 < v16)
          {
            v23 = 8 * v16 - 8;
            v24 = 8 * v10;
            v11 = v16;
            v25 = v10;
            while (1)
            {
              if (v25 != --v16)
              {
                v27 = *a3;
                if (!*a3)
                {
                  goto LABEL_135;
                }

                v26 = *(v27 + v24);
                *(v27 + v24) = *(v27 + v23);
                *(v27 + v23) = v26;
              }

              ++v25;
              v23 -= 8;
              v24 += 8;
              if (v25 >= v16)
              {
                goto LABEL_30;
              }
            }
          }
        }

        v11 = v16;
      }

LABEL_30:
      v28 = a3[1];
      if (v11 >= v28)
      {
        v30 = v11;
        if (v11 < v10)
        {
          goto LABEL_128;
        }
      }

      else
      {
        if (__OFSUB__(v11, v10))
        {
          goto LABEL_129;
        }

        if (v11 - v10 >= a4)
        {
          goto LABEL_38;
        }

        v29 = v10 + a4;
        if (__OFADD__(v10, a4))
        {
          goto LABEL_131;
        }

        if (v29 >= v28)
        {
          v29 = a3[1];
        }

        if (v29 < v10)
        {
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
          return result;
        }

        if (v11 == v29)
        {
LABEL_38:
          v30 = v11;
          if (v11 < v10)
          {
            goto LABEL_128;
          }
        }

        else
        {
          v85 = *a3;
          v86 = *a3 + 8 * v11 - 8;
          v100 = v10;
          v87 = v10 - v11;
          v104 = v29;
          do
          {
            v106 = v86;
            v109 = v11;
            v88 = *(v85 + 8 * v11);
            v89 = v87;
            while (1)
            {
              v90 = *v86;
              v91 = v88;
              v92 = v90;
              swift_getAtKeyPath();
              swift_getAtKeyPath();
              if (v115 == v113 && v116 == v114)
              {
                break;
              }

              v94 = sub_228393460();

              if ((v94 & 1) == 0)
              {
                goto LABEL_91;
              }

              if (!v85)
              {
                goto LABEL_133;
              }

              v95 = *v86;
              v88 = *(v86 + 8);
              *v86 = v88;
              *(v86 + 8) = v95;
              v86 -= 8;
              if (__CFADD__(v89++, 1))
              {
                goto LABEL_91;
              }
            }

LABEL_91:
            v11 = v109 + 1;
            v86 = v106 + 8;
            --v87;
          }

          while (v109 + 1 != v104);
          v30 = v104;
          v10 = v100;
          if (v104 < v100)
          {
            goto LABEL_128;
          }
        }
      }

      v108 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_228198978(0, *(v8 + 2) + 1, 1, v8);
      }

      v32 = *(v8 + 2);
      v31 = *(v8 + 3);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        v8 = sub_228198978((v31 > 1), v32 + 1, 1, v8);
      }

      *(v8 + 2) = v33;
      v34 = v8 + 32;
      v35 = &v8[16 * v32 + 32];
      *v35 = v10;
      *(v35 + 1) = v108;
      v117 = v8;
      v105 = *a1;
      if (!*a1)
      {
        goto LABEL_136;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v37 = *(v8 + 4);
            v38 = *(v8 + 5);
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
LABEL_60:
            if (v40)
            {
              goto LABEL_119;
            }

            v53 = &v8[16 * v33];
            v55 = *v53;
            v54 = *(v53 + 1);
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_122;
            }

            v59 = &v34[16 * v36];
            v61 = *v59;
            v60 = *(v59 + 1);
            v47 = __OFSUB__(v60, v61);
            v62 = v60 - v61;
            if (v47)
            {
              goto LABEL_125;
            }

            if (__OFADD__(v57, v62))
            {
              goto LABEL_126;
            }

            if (v57 + v62 >= v39)
            {
              if (v39 < v62)
              {
                v36 = v33 - 2;
              }

              goto LABEL_81;
            }

            goto LABEL_74;
          }

          v63 = &v8[16 * v33];
          v65 = *v63;
          v64 = *(v63 + 1);
          v47 = __OFSUB__(v64, v65);
          v57 = v64 - v65;
          v58 = v47;
LABEL_74:
          if (v58)
          {
            goto LABEL_121;
          }

          v66 = &v34[16 * v36];
          v68 = *v66;
          v67 = *(v66 + 1);
          v47 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v47)
          {
            goto LABEL_124;
          }

          if (v69 < v57)
          {
            goto LABEL_3;
          }

LABEL_81:
          if (v36 - 1 >= v33)
          {
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
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
            goto LABEL_132;
          }

          v74 = *a3;
          if (!*a3)
          {
            goto LABEL_134;
          }

          v75 = &v34[16 * v36 - 16];
          v76 = *v75;
          v77 = v36;
          v78 = &v34[16 * v36];
          v79 = *(v78 + 1);
          v80 = (v74 + 8 * *v75);
          v81 = (v74 + 8 * *v78);
          v82 = (v74 + 8 * v79);

          sub_22820054C(v80, v81, v82, v105, v112);
          if (v111)
          {

            v117 = v8;
            goto LABEL_109;
          }

          if (v79 < v76)
          {
            goto LABEL_114;
          }

          v83 = *(v8 + 2);
          if (v77 > v83)
          {
            goto LABEL_115;
          }

          *v75 = v76;
          *(v75 + 1) = v79;
          if (v77 >= v83)
          {
            goto LABEL_116;
          }

          v84 = v77;
          v33 = v83 - 1;
          memmove(v78, v78 + 16, 16 * (v83 - 1 - v84));
          *(v8 + 2) = v83 - 1;
          v34 = v8 + 32;
          if (v83 <= 2)
          {
LABEL_3:
            v117 = v8;
            goto LABEL_4;
          }
        }

        v41 = &v34[16 * v33];
        v42 = *(v41 - 8);
        v43 = *(v41 - 7);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_117;
        }

        v46 = *(v41 - 6);
        v45 = *(v41 - 5);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_118;
        }

        v48 = &v8[16 * v33];
        v50 = *v48;
        v49 = *(v48 + 1);
        v47 = __OFSUB__(v49, v50);
        v51 = v49 - v50;
        if (v47)
        {
          goto LABEL_120;
        }

        v47 = __OFADD__(v39, v51);
        v52 = v39 + v51;
        if (v47)
        {
          goto LABEL_123;
        }

        if (v52 >= v44)
        {
          v70 = &v34[16 * v36];
          v72 = *v70;
          v71 = *(v70 + 1);
          v47 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v47)
          {
            goto LABEL_127;
          }

          if (v39 < v73)
          {
            v36 = v33 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_60;
      }

LABEL_4:
      v7 = v108;
      v6 = a3[1];
      a5 = v112;
      if (v108 >= v6)
      {
        goto LABEL_106;
      }
    }
  }

  swift_retain_n();
LABEL_106:
  v97 = *a1;
  if (!*a1)
  {
    goto LABEL_137;
  }

  sub_2282008D8(&v117, v97, a3, a5);
  if (v111)
  {

LABEL_109:
  }

  else
  {
  }
}

uint64_t sub_2282011F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = result - a3;
LABEL_6:
    v18 = v6;
    v19 = a3;
    v8 = *(v5 + 8 * a3);
    v17 = v7;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      swift_getAtKeyPath();
      swift_getAtKeyPath();
      if (v22 == v20 && v23 == v21)
      {

LABEL_5:
        a3 = v19 + 1;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v19 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v13 = sub_228393460();

      if ((v13 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22820133C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_228393410();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
        v8 = sub_228392220();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v9[1] = v7;

      sub_228200A80(v9, v10, a1, v6, a2);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_2282011F4(0, v4, 1, a1, a2);
  }
}

uint64_t sub_2282014A8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_22834169C(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_22820133C(v8, a2);

  sub_228393220();
}

uint64_t sub_228201554(uint64_t a1)
{
  sub_2282015E0(0, &unk_280DDBD10, MEMORY[0x277D11720], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2282015E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_228201644()
{
  result = qword_280DDB830;
  if (!qword_280DDB830)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DDB830);
  }

  return result;
}

uint64_t sub_2282016A8(uint64_t a1, uint64_t a2)
{
  sub_2282015E0(0, &unk_280DDBD10, MEMORY[0x277D11720], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_22820174C()
{
  _s30HealthMedicationsUIBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280DDCED8 = result;
  return result;
}

id static NSBundle.healthMedicationsUI.getter()
{
  if (qword_280DDCED0 != -1)
  {
    swift_once();
  }

  v1 = qword_280DDCED8;

  return v1;
}

uint64_t sub_228201824(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineCell_item;
  swift_beginAccess();
  sub_22817A680(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_228201888@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2282018E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineCell_item;
  swift_beginAccess();
  sub_22817A680(a1, v1 + v3);
  return swift_endAccess();
}

id sub_2282019A0()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineCell____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineCell____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineCell____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D12A48]) init];
    HKUIOnePixel();
    [v4 setSeparatorThickness_];
    v5 = [objc_opt_self() opaqueSeparatorColor];
    [v4 setColor_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_228201CB0()
{
  v1 = v0;
  v2 = [v0 contentView];
  v3 = sub_2282019A0();
  [v2 addSubview_];

  v4 = objc_opt_self();
  sub_228180ED0();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_228397F00;
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineCell____lazy_storage___separatorView;
  v7 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineCell____lazy_storage___separatorView] leadingAnchor];
  v8 = [v1 contentView];
  v9 = [v8 leadingAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  *(v5 + 32) = v10;
  v11 = [*&v1[v6] topAnchor];
  v12 = [v1 contentView];
  v13 = [v12 topAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(v5 + 40) = v14;
  v15 = [*&v1[v6] bottomAnchor];
  v16 = [v1 contentView];
  v17 = [v16 bottomAnchor];

  v18 = [v15 constraintEqualToAnchor_];
  *(v5 + 48) = v18;
  v19 = [*&v1[v6] trailingAnchor];
  v20 = [v1 contentView];
  v21 = [v20 trailingAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v5 + 56) = v22;
  sub_2281BF1B8();
  v23 = sub_228392190();

  [v4 activateConstraints_];
}

id InteractionSeparatorLineCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionSeparatorLineCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22820213C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_228393070();
    v5 = v4;
    v6 = sub_228393120();
    v8 = v7;
    v9 = MEMORY[0x22AAB6C40](v3, v5, v6, v7);
    sub_228205ADC(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_228205ADC(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_228393040();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_2282D9160(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_228205ADC(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_228202258()
{
  v1 = [v0 interactionType];
  v2 = [v0 medication];
  v3 = [v2 localizedOntologyEducationContent];
  if (v1 != 1)
  {
    if (v3)
    {
      v4 = v3;
      sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
      v5 = sub_22838FA80();
      goto LABEL_6;
    }

LABEL_7:

    return 0;
  }

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
  v5 = sub_22838FA90();
LABEL_6:
  v6 = v5;

  return v6;
}

uint64_t sub_228202364(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_228204C58();
  return sub_22819482C(v6);
}

uint64_t sub_2282023D4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22820242C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228204C58();
  return sub_22819482C(a1);
}

void (*sub_228202498(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2282024FC;
}

void sub_2282024FC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_228204C58();
  }
}

id sub_228202530(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_activeConstraints] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___medmojiView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___dismissLabel] = 0;
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_pregnancyTitleButton;
  if (qword_27D823310 != -1)
  {
    swift_once();
  }

  v11 = sub_22838F0C0();
  _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(v11, v12, 0xD000000000000012, 0x80000002283ABE90);
  v14 = v13;

  *&v4[v10] = v14;
  v15 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_lactationTitleButton;
  v16 = sub_22838F0C0();
  _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(v16, v17, 0xD000000000000012, 0x80000002283ABEE0);
  v19 = v18;

  *&v4[v15] = v19;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___subtitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___separatorView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___learnMoreLabel] = 0;
  v25.receiver = v4;
  v25.super_class = type metadata accessor for PregnancyLactationInteractionCriticalAlertCell();
  v20 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a1, a2, a3, a4, 0xE000000000000000);
  sub_228203C38();
  sub_228203F28();
  sub_228205210(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_228397F40;
  v22 = sub_228391640();
  v23 = MEMORY[0x277D74DB8];
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2281D5250();
  sub_228392B50();

  swift_unknownObjectRelease();

  return v20;
}

id sub_228202868(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_activeConstraints] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___medmojiView] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___dismissLabel] = 0;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_pregnancyTitleButton;
  if (qword_27D823310 != -1)
  {
    swift_once();
  }

  v5 = sub_22838F0C0();
  _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(v5, v6, 0xD000000000000012, 0x80000002283ABE90);
  v8 = v7;

  *&v1[v4] = v8;
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_lactationTitleButton;
  v10 = sub_22838F0C0();
  _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(v10, v11, 0xD000000000000012, 0x80000002283ABEE0);
  v13 = v12;

  *&v1[v9] = v13;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___subtitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___separatorView] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___learnMoreLabel] = 0;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for PregnancyLactationInteractionCriticalAlertCell();
  v14 = objc_msgSendSuper2(&v16, sel_initWithCoder_, a1, 0xE000000000000000);

  if (v14)
  {
  }

  return v14;
}

uint64_t sub_228202AA8()
{
  sub_228203C38();
  sub_228203F28();
  sub_228205210(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228397F40;
  v1 = sub_228391640();
  v2 = MEMORY[0x277D74DB8];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2281D5250();
  sub_228392B50();
  swift_unknownObjectRelease();
}

void sub_228202C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    type metadata accessor for PregnancyLactationInteractionCriticalAlertCell();
    if ((sub_228392820() & 1) == 0)
    {
      sub_228203F28();
    }
  }
}

uint64_t sub_228202CB4()
{
  v1 = v0;
  sub_228205210(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v19 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = sub_228391330();
  v12 = type metadata accessor for PregnancyLactationInteractionCriticalAlertCell();
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

    v18 = [objc_opt_self() secondarySystemBackgroundColor];
    sub_228391370();
    v17 = v5;
  }

  return MEMORY[0x22AAB6420](v17);
}

id sub_228203008()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___medmojiView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___medmojiView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___medmojiView);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(sub_228390970()) initWithFrame_];
    sub_228392B00();
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];

    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2282030F0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = [objc_opt_self() tertiaryLabelColor];
  [v0 setTextColor_];

  [v0 setTextAlignment_];
  v14 = sub_228392000();
  v15 = v2;
  v3 = v0;

  MEMORY[0x22AAB5C80](0xD00000000000001DLL, 0x80000002283ABE40);

  MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

  v4 = sub_228391FC0();

  [v3 setAccessibilityIdentifier_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setAdjustsFontSizeToFitWidth_];
  LODWORD(v5) = 1148846080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [v3 setContentCompressionResistancePriority:1 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [v3 setContentHuggingPriority:0 forAxis:v7];
  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v8 = sub_228392AD0();
  [v3 setFont_];
  sub_22817A958(0, &qword_280DDB980, 0x277D755B8);
  result = MEMORY[0x22AAB6790](v8);
  if (result)
  {
    v10 = result;
    v11 = [result imageWithRenderingMode_];
    v12 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
    [v12 setImage_];
    sub_22817A958(0, &qword_27D8251D8, 0x277CCAB48);
    v13 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    [v3 setAttributedText_];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_228203400()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___titleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v6 = sub_228392AD0();
    [v5 setFont_];

    v14 = sub_228392000();
    v15 = v7;
    v8 = v5;

    MEMORY[0x22AAB5C80](0xD00000000000001DLL, 0x80000002283ABE40);

    MEMORY[0x22AAB5C80](0x614C656C7469742ELL, 0xEB000000006C6562);

    v9 = sub_228391FC0();

    [v8 setAccessibilityIdentifier_];

    v10 = [objc_opt_self() labelColor];
    [v8 setTextColor_];

    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    [v8 setNumberOfLines_];
    [v8 setAdjustsFontForContentSizeCategory_];
    v11 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_22820362C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___subtitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___subtitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___subtitleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v6 = sub_228392AD0();
    [v5 setFont_];

    v14 = sub_228392000();
    v15 = v7;
    v8 = v5;

    MEMORY[0x22AAB5C80](0xD00000000000001DLL, 0x80000002283ABE40);

    MEMORY[0x22AAB5C80](0x6C7469746275532ELL, 0xEE006C6562614C65);

    v9 = sub_228391FC0();

    [v8 setAccessibilityIdentifier_];

    v10 = [objc_opt_self() labelColor];
    [v8 setTextColor_];

    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    [v8 setNumberOfLines_];
    [v8 setAdjustsFontForContentSizeCategory_];
    v11 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_228203854()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D12A48]) init];
    HKUIOnePixel();
    [v4 setSeparatorThickness_];
    v5 = [objc_opt_self() separatorColor];
    [v4 setColor_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_228203950(uint64_t *a1, uint64_t (*a2)(void))
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

id sub_2282039B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = qword_280DDCF18;
  v2 = v0;
  if (v1 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v3 = sub_228391FC0();

  [v2 setText_];

  sub_228392000();
  v4 = v2;

  MEMORY[0x22AAB5C80](0xD00000000000001DLL, 0x80000002283ABE40);

  MEMORY[0x22AAB5C80](0x6F4D6E7261654C2ELL, 0xEF6C6562614C6572);

  v5 = sub_228391FC0();

  [v4 setAccessibilityIdentifier_];

  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v6 = sub_228392AD0();
  [v4 setFont_];

  v7 = [objc_opt_self() systemBlueColor];
  [v4 setTextColor_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setAdjustsFontForContentSizeCategory_];

  return v4;
}

void sub_228203C38()
{
  v1 = v0;
  sub_228205210(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_2283913A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391390();
  v9 = [objc_opt_self() secondarySystemBackgroundColor];
  sub_228391370();
  v10 = *(v6 + 16);
  v21 = v8;
  v10(v4, v8, v5);
  v22 = v6;
  v23 = v5;
  (*(v6 + 56))(v4, 0, 1, v5);
  MEMORY[0x22AAB6420](v4);
  sub_228180ED0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228399190;
  *(inited + 32) = sub_228203008();
  *(inited + 40) = sub_2282030D0();
  v12 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_pregnancyTitleButton];
  *(inited + 48) = v12;
  v13 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_lactationTitleButton];
  *(inited + 56) = v13;
  v14 = v12;
  v15 = v13;
  *(inited + 64) = sub_228203400();
  *(inited + 72) = sub_22820362C();
  *(inited + 80) = sub_228203854();
  v16 = 0;
  *(inited + 88) = sub_228203930();
  while (1)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x22AAB6D80](v16, inited);
      goto LABEL_5;
    }

    if (v16 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v17 = *(inited + 8 * v16 + 32);
LABEL_5:
    v18 = v17;
    ++v16;
    v19 = [v1 contentView];
    [v19 addSubview_];

    if (v16 == 8)
    {
      swift_setDeallocating();
      swift_arrayDestroy();
      (*(v22 + 8))(v21, v23);
      return;
    }
  }

  __break(1u);
}

void sub_228203F28()
{
  v109 = objc_opt_self();
  v110 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_activeConstraints;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);

  v1 = sub_228392190();

  [v109 deactivateConstraints_];

  sub_228180ED0();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22839BE50;
  v3 = sub_228203008();
  v4 = [v3 leadingAnchor];

  v5 = [v0 contentView];
  v6 = [v5 &selRef_logTimeChanged_ + 1];

  v7 = [v4 constraintEqualToAnchor:v6 constant:16.0];
  *(v2 + 32) = v7;
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___medmojiView;
  v9 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___medmojiView) topAnchor];
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_pregnancyTitleButton;
  v11 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_pregnancyTitleButton) bottomAnchor];
  v12 = [v9 &selRef_resignFirstResponder + 6];

  *(v2 + 40) = v12;
  v13 = [*(v0 + v8) topAnchor];
  v14 = [*(v0 + v10) bottomAnchor];
  v15 = [v13 &selRef_resignFirstResponder + 6];

  *(v2 + 48) = v15;
  v16 = [*(v0 + v8) widthAnchor];
  v17 = [v16 constraintEqualToConstant_];

  *(v2 + 56) = v17;
  v18 = [*(v0 + v8) heightAnchor];
  v19 = [v18 constraintEqualToConstant_];

  *(v2 + 64) = v19;
  v20 = sub_2282030D0();
  v21 = [v20 trailingAnchor];

  v22 = [v0 contentView];
  v23 = [v22 trailingAnchor];

  v24 = [v21 &selRef_resignFirstResponder + 6];
  *(v2 + 72) = v24;
  v25 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___dismissLabel) topAnchor];
  v26 = [v0 contentView];
  v27 = [v26 topAnchor];

  v28 = [v25 &selRef_resignFirstResponder + 6];
  *(v2 + 80) = v28;
  v29 = [*(v0 + v10) leadingAnchor];
  v30 = [v0 contentView];
  v31 = [v30 leadingAnchor];

  v32 = [v29 &selRef_resignFirstResponder + 6];
  *(v2 + 88) = v32;
  v33 = [*(v0 + v10) trailingAnchor];
  v34 = [v0 contentView];
  v35 = [v34 trailingAnchor];

  v36 = [v33 constraintLessThanOrEqualToAnchor:v35 constant:16.0];
  *(v2 + 96) = v36;
  v37 = [*(v0 + v10) topAnchor];
  v38 = [v0 contentView];
  v39 = [v38 topAnchor];

  v40 = [v37 &selRef_resignFirstResponder + 6];
  *(v2 + 104) = v40;
  v41 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_lactationTitleButton;
  v42 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_lactationTitleButton) &selRef_logTimeChanged_ + 1];
  v43 = [v0 contentView];
  v44 = [v43 &selRef_logTimeChanged_ + 1];

  v45 = [v42 &selRef_resignFirstResponder + 6];
  *(v2 + 112) = v45;
  v46 = [*(v0 + v41) trailingAnchor];
  v47 = [v0 contentView];
  v48 = [v47 trailingAnchor];

  v49 = [v46 constraintLessThanOrEqualToAnchor:v48 constant:16.0];
  *(v2 + 120) = v49;
  v50 = [*(v0 + v41) topAnchor];
  v51 = [v0 contentView];
  v52 = [v51 topAnchor];

  v53 = [v50 &selRef_resignFirstResponder + 6];
  *(v2 + 128) = v53;
  v54 = sub_228203400();
  v55 = [v54 leadingAnchor];

  v56 = [*(v0 + v8) trailingAnchor];
  v57 = [v55 &selRef_resignFirstResponder + 6];

  *(v2 + 136) = v57;
  v58 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___titleLabel;
  v59 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___titleLabel) trailingAnchor];
  v60 = [v0 contentView];
  v61 = [v60 trailingAnchor];

  v62 = [v59 &selRef_resignFirstResponder + 6];
  *(v2 + 144) = v62;
  v63 = [*(v0 + v58) topAnchor];
  v64 = [*(v0 + v10) bottomAnchor];
  v65 = [v63 &selRef_resignFirstResponder + 6];

  *(v2 + 152) = v65;
  v66 = [*(v0 + v58) topAnchor];
  v67 = [*(v0 + v41) bottomAnchor];
  v68 = [v66 &selRef_resignFirstResponder + 6];

  *(v2 + 160) = v68;
  v69 = sub_22820362C();
  v70 = [v69 leadingAnchor];

  v71 = [*(v0 + v58) leadingAnchor];
  v72 = [v70 constraintEqualToAnchor_];

  *(v2 + 168) = v72;
  v73 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___subtitleLabel;
  v74 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___subtitleLabel) trailingAnchor];
  v75 = [v0 contentView];
  v76 = [v75 trailingAnchor];

  v77 = [v74 &selRef_resignFirstResponder + 6];
  *(v2 + 176) = v77;
  v78 = [*(v0 + v73) topAnchor];
  v79 = [*(v0 + v58) bottomAnchor];
  v80 = [v78 &selRef_resignFirstResponder + 6];

  *(v2 + 184) = v80;
  v81 = sub_228203854();
  v82 = [v81 leadingAnchor];

  v83 = [*(v0 + v73) leadingAnchor];
  v84 = [v82 &selRef_freeTextMedicationName + 5];

  *(v2 + 192) = v84;
  v85 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___separatorView;
  v86 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___separatorView) trailingAnchor];
  v87 = [v0 contentView];
  v88 = [v87 trailingAnchor];

  v89 = [v86 &selRef_freeTextMedicationName + 5];
  *(v2 + 200) = v89;
  v90 = [*(v0 + v85) topAnchor];
  v91 = [*(v0 + v73) bottomAnchor];
  v92 = [v90 constraintEqualToAnchor:v91 constant:12.0];

  *(v2 + 208) = v92;
  v93 = sub_228203930();
  v94 = [v93 leadingAnchor];

  v95 = [*(v0 + v73) leadingAnchor];
  v96 = [v94 &selRef_freeTextMedicationName + 5];

  *(v2 + 216) = v96;
  v97 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___learnMoreLabel;
  v98 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___learnMoreLabel) trailingAnchor];
  v99 = [v0 contentView];
  v100 = [v99 trailingAnchor];

  v101 = [v98 constraintLessThanOrEqualToAnchor_];
  *(v2 + 224) = v101;
  v102 = [*(v0 + v97) centerYAnchor];
  v103 = [*(v0 + v85) bottomAnchor];
  v104 = [v102 constraintEqualToAnchor:v103 constant:22.0];

  *(v2 + 232) = v104;
  v105 = [v0 contentView];
  v106 = [v105 bottomAnchor];

  v107 = [*(v0 + v85) bottomAnchor];
  v108 = [v106 constraintEqualToAnchor:v107 constant:44.0];

  *(v2 + 240) = v108;
  *&v110[v0] = v2;

  v111 = sub_228392190();

  [v109 activateConstraints_];
}

void sub_228204C58()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228205210(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v7], v38);
  if (v38[3])
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    type metadata accessor for PregnancyLactationInteractionCriticalAlertItem();
    if (swift_dynamicCast())
    {
      v8 = v37;
      v9 = sub_228203008();
      v10 = [*(v8 + 16) medication];
      _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();

      sub_228390950();
      v11 = sub_228203400();
      v12 = [*(v8 + 16) medication];
      v38[0] = v12;
      sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
      sub_228390F30();
      v13 = sub_228391FC0();

      [v11 setText_];
      v14 = sub_22820362C();
      sub_228202258();
      if (!v15)
      {
        if (qword_27D823310 != -1)
        {
          swift_once();
        }

        sub_22838F0C0();
      }

      v16 = sub_228391FC0();

      [v14 setText_];

      v17 = *(v8 + 16);
      v18 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___subtitleLabel];
      v19 = v17;
      sub_228202258();
      v21 = v20;

      if (v21)
      {
      }

      sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
      v30 = sub_228392AD0();
      [v18 setFont_];

      v31 = *(v8 + 16);
      v32 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_pregnancyTitleButton];
      [v32 setHidden_];

      v33 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_lactationTitleButton];
      v34 = *(v8 + 16);
      v35 = v33;
      [v35 setHidden_];

      return;
    }
  }

  else
  {
    sub_22819482C(v38);
  }

  if (HKShowSensitiveLogItems())
  {
    sub_228391150();
    v22 = v1;
    v23 = sub_2283911A0();
    v24 = sub_2283925C0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37 = v26;
      *v25 = 136315138;
      sub_22817E6C8(&v1[v7], v38);
      sub_228181D50(0);
      v27 = sub_228392040();
      v29 = sub_2281C96FC(v27, v28, &v37);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_22816B000, v23, v24, "Incorrect view model for PregnancyLactationInteractionCriticalAlertItem: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AAB7B80](v26, -1, -1);
      MEMORY[0x22AAB7B80](v25, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

void sub_228205210(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228205274(uint64_t a1, uint64_t a2)
{
  sub_228205210(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228205308(uint64_t a1)
{
  sub_228205210(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_228205394()
{
  result = qword_27D825180;
  if (!qword_27D825180)
  {
    sub_22817A958(255, &qword_27D825178, 0x277D75C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825180);
  }

  return result;
}

void sub_22820554C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2283911B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22820213C(a1);
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = v10;
  v12 = sub_2282030D0();
  v13 = MEMORY[0x22AAB66C0](v11, v12, 36.0, 36.0);

  if ((v13 & 1) == 0)
  {

LABEL_7:
    sub_22817A958(0, &qword_27D825178, 0x277D75C68);
    sub_228205394();
    v17 = sub_228392470();
    v18 = type metadata accessor for PregnancyLactationInteractionCriticalAlertCell();
    v31.receiver = v3;
    v31.super_class = v18;
    objc_msgSendSuper2(&v31, sel_touchesEnded_withEvent_, v17, a2);

    return;
  }

  v14 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_item;
  swift_beginAccess();
  sub_22817E6C8(v3 + v14, v29);
  if (v30)
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    type metadata accessor for PregnancyLactationInteractionCriticalAlertItem();
    if (swift_dynamicCast())
    {
      v15 = v28[7];

      v15(v16);

      return;
    }
  }

  else
  {
    sub_22819482C(v29);
  }

  if (HKShowSensitiveLogItems())
  {
    sub_228391150();
    v19 = v3;
    v20 = sub_2283911A0();
    v21 = sub_2283925C0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 136315138;
      sub_22817E6C8(v3 + v14, v29);
      sub_228181D50(0);
      v24 = sub_228392040();
      v26 = sub_2281C96FC(v24, v25, &v28);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_22816B000, v20, v21, "Incorrect view model for PregnancyLactationInteractionCriticalAlertItem: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AAB7B80](v23, -1, -1);
      MEMORY[0x22AAB7B80](v22, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }

  else
  {
  }
}

id PregnancyLactationInteractionCriticalAlertCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PregnancyLactationInteractionCriticalAlertCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228205ADC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t type metadata accessor for MedicationSourceListToggleItem(uint64_t a1)
{
  result = qword_27D825210;
  if (!qword_27D825210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228205BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 104) = a5;
  *(v6 + 40) = a4;
  *(v6 + 48) = a6;
  sub_2283922A0();
  *(v6 + 56) = sub_228392290();
  v8 = sub_228392250();
  *(v6 + 64) = v8;
  *(v6 + 72) = v7;

  return MEMORY[0x2822009F8](sub_228205C50, v8, v7);
}

uint64_t sub_228205C50()
{
  v1 = *(v0 + 40) + qword_27D8251F8;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 40);
    v4 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v6 = [*(v3 + qword_27D825208) source];
    *(v0 + 88) = v6;
    v11 = (*(v4 + 8) + **(v4 + 8));
    v7 = swift_task_alloc();
    *(v0 + 96) = v7;
    *v7 = v0;
    v7[1] = sub_228205E1C;
    v8 = *(v0 + 104);

    return v11(v6, v8, ObjectType, v4);
  }

  else
  {

    *(*(v0 + 40) + qword_27D825200) = 0;
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_228205E1C(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 32) = a2;
  v4[2] = v2;
  v4[3] = a1;
  v5 = v3[11];
  *(v4 + 105) = a2;

  swift_unknownObjectRelease();

  v6 = v3[9];
  v7 = v3[8];

  return MEMORY[0x2822009F8](sub_228205F80, v7, v6);
}

uint64_t sub_228205F80()
{
  v1 = *(v0 + 105);

  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 104);
    sub_228390180();
    sub_2282063BC(v2, 1);
    v4 = v3 ^ 1;
  }

  else
  {
    v4 = *(v0 + 104);
  }

  *(*(v0 + 40) + qword_27D8251F0) = v4 & 1;
  *(*(v0 + 40) + qword_27D825200) = 0;
  v5 = *(v0 + 8);

  return v5();
}

void sub_22820606C()
{
  sub_22818B730(v0 + qword_27D8251F8);
  v1 = *(v0 + qword_27D825208);
}

uint64_t sub_2282060AC()
{
  v0 = _s19HealthMedicationsUI38InteractionFactorsLifestyleOptionsItemCfd_0();
  v1 = qword_27D8251F8;

  sub_22818B730(v2 + v1);
  v3 = *(v0 + qword_27D825208);

  return swift_deallocClassInstance();
}

uint64_t sub_228206148(char a1, void *a2)
{
  v3 = v2;
  sub_228206298(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + qword_27D825200) = 1;
  v9 = sub_2283922D0();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_2283922A0();

  v10 = a2;
  v11 = sub_228392290();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = v3;
  *(v12 + 40) = a1;
  *(v12 + 48) = v10;
  sub_2281DC568(0, 0, v8, &unk_22839BFD8, v12);
}

void sub_228206298(uint64_t a1)
{
  if (!qword_27D827C30)
  {
    sub_2283922D0();
    v1 = sub_228392F00();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827C30);
    }
  }
}

uint64_t sub_2282062F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22819D87C;

  return sub_228205BB4(a1, v4, v5, v6, v7, v8);
}

void sub_2282063BC(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t type metadata accessor for ColorSelectionViewController(uint64_t a1)
{
  result = qword_27D825258;
  if (!qword_27D825258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_22820647C(uint64_t a1)
{
  v197 = a1;
  sub_228199F10(0);
  v154 = v1;
  v162 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v151 = &v146 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228208EB0(0, &qword_27D825268, sub_2281CBD18);
  MEMORY[0x28223BE20](v3 - 8);
  v196 = &v146 - v4;
  sub_2281CBD18(0);
  v189 = v5;
  v172 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v148 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v150 = &v146 - v9;
  MEMORY[0x28223BE20](v8);
  v179 = &v146 - v10;
  v181 = sub_228390E20();
  v183 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v182 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228208B64(0);
  v13 = v12;
  v186 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v180 = (&v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228208EB0(0, &qword_27D825278, sub_228208B64);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v192 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v190 = &v146 - v18;
  v169 = sub_2283908E0();
  v171 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v170 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228208EB0(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  MEMORY[0x28223BE20](v20 - 8);
  v188 = &v146 - v21;
  v22 = sub_2283909E0();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v167 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v146 - v26;
  sub_228208EB0(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v160 = &v146 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v191 = &v146 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v187 = (&v146 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v146 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v146 - v38;
  v40 = qword_27D825228;
  v41 = sub_228390D50();
  v42 = *(v41 - 8);
  v43 = *(v42 + 56);
  v158 = v42 + 56;
  v157 = v43;
  v43(v39, 1, 1, v41);
  sub_2281E4AF0(0);
  v156 = v44;
  swift_allocObject();
  v159 = v39;
  v45 = v173;
  *(v45 + v40) = sub_228391890();
  *(v45 + qword_27D825248) = MEMORY[0x277D84FA0];
  sub_2281BF64C(v197, v37);
  v193 = *(v42 + 48);
  v194 = v42 + 48;
  v46 = v193(v37, 1, v41);
  v195 = v41;
  v168 = v22;
  if (v46 == 1)
  {
    sub_228208C3C(v37, &qword_280DDBD20, MEMORY[0x277D116C8]);
    v47 = v188;
    (*(v23 + 56))(v188, 1, 1, v22);
    result = sub_2283909C0();
    if (!*(result + 2))
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    (*(v23 + 16))(v27, &result[(*(v23 + 80) + 32) & ~*(v23 + 80)], v22);

    if ((*(v23 + 48))(v47, 1, v22) != 1)
    {
      sub_228208C3C(v47, &qword_27D8238A8, MEMORY[0x277D11640]);
    }
  }

  else
  {
    v49 = v188;
    sub_228390D40();
    (*(v42 + 8))(v37, v41);
    (*(v23 + 56))(v49, 0, 1, v22);
    (*(v23 + 32))(v27, v49, v22);
  }

  sub_228208C98(0);
  swift_allocObject();
  v50 = sub_228391890();
  v51 = qword_27D825220;
  *(v45 + qword_27D825220) = v50;
  result = sub_2283908A0();
  v52 = v169;
  v53 = v171;
  v54 = v192;
  if (!*(result + 2))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v166 = v23;
  v155 = v51;
  v161 = v42;
  v55 = (*(v171 + 80) + 32) & ~*(v171 + 80);
  v56 = v171 + 16;
  v57 = *(v171 + 16);
  v58 = v170;
  v57(v170, &result[v55], v169);

  v165 = sub_2283908D0();
  v61 = *(v53 + 8);
  v59 = v53 + 8;
  v60 = v61;
  v61(v58, v52);
  result = sub_2283908A0();
  if (!*(result + 2))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v164 = v55;
  v153 = v57;
  v57(v58, &result[v55], v52);

  v163 = sub_2283908D0();
  v60(v58, v52);
  v62 = v187;
  sub_2281BF64C(v197, v187);
  v63 = v195;
  v64 = v193(v62, 1, v195);
  v65 = v60;
  v171 = v59;
  v152 = v56;
  if (v64 == 1)
  {
    sub_228208C3C(v62, &qword_280DDBD20, MEMORY[0x277D116C8]);
    v66 = v173;
LABEL_40:
    v114 = v165;
    v200 = v165;
    sub_228208BD0(0, &qword_27D824BC8, &qword_280DDB990, 0x277D75348, sub_22817A958);
    swift_allocObject();
    v115 = v114;
    v116 = sub_228391890();
    v117 = qword_27D825238;
    *(v66 + qword_27D825238) = v116;
    v118 = v163;
    v200 = v163;
    swift_allocObject();
    v192 = v118;
    v119 = sub_228391890();
    v120 = qword_27D825240;
    *(v66 + qword_27D825240) = v119;
    v121 = v160;
    sub_2281BF64C(v197, v160);
    v122 = v195;
    v123 = v193(v121, 1, v195);
    v124 = v170;
    v125 = v164;
    v196 = v115;
    if (v123 != 1)
    {
      v129 = v151;
      sub_228390D00();
      (*(v161 + 8))(v121, v122);
      v130 = v154;
      v128 = sub_228391E30();
      (*(v162 + 8))(v129, v130);
      goto LABEL_44;
    }

    sub_228208C3C(v121, &qword_280DDBD20, MEMORY[0x277D116C8]);
    result = sub_2283908B0();
    if (*(result + 2))
    {
      v126 = &result[v125];
      v127 = v169;
      v153(v124, v126, v169);

      v128 = sub_2283908D0();
      v65(v124, v127);
LABEL_44:
      v131 = v122;
      v200 = v128;
      swift_allocObject();
      v132 = sub_228391890();
      *(v66 + qword_27D825230) = v132;
      v133 = *(v66 + v155);
      v134 = *(v66 + v117);
      v135 = *(v66 + v120);
      type metadata accessor for VisualizationModificationDataSource(0);
      v136 = swift_allocObject();
      v137 = qword_27D8280A8;
      v157(v159, 1, 1, v131);
      swift_allocObject();

      *(v136 + v137) = sub_228391890();
      *(v136 + qword_27D8280D0) = MEMORY[0x277D84FA0];
      *(v136 + qword_27D8280B0) = v133;
      *(v136 + qword_27D8280B8) = v132;
      *(v136 + qword_27D8280C0) = v134;
      *(v136 + qword_27D8280C8) = v135;

      v138 = v167;
      sub_228391870();
      sub_228391870();
      v139 = v200;
      sub_228391870();
      v140 = v199;
      sub_228391870();
      v141 = v198;
      sub_2283478F0(v138, v139, v140, v198);

      (*(v166 + 8))(v138, v168);
      *(swift_allocObject() + 16) = 1;
      v142 = sub_228390380();

      sub_228344684();

      *(v173 + qword_27D825250) = v142;
      sub_2283901F0();
      sub_228182110(0);
      v143 = swift_allocObject();
      *(v143 + 16) = xmmword_228397F40;
      v144 = MEMORY[0x277D10F80];
      *(v143 + 32) = v142;
      *(v143 + 40) = v144;

      sub_228390220();
      v145 = sub_228390480();
      sub_228207D94();

      sub_228208C3C(v197, &qword_280DDBD20, MEMORY[0x277D116C8]);
      return v145;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v149 = v60;
  v67 = v167;
  sub_228390D40();
  v68 = *(v161 + 8);
  v176 = v161 + 8;
  v175 = v68;
  v68(v62, v63);
  v69 = sub_2283909D0();
  (*(v166 + 8))(v67, v168);
  v70 = sub_228343CB0(v69);

  v71 = 0;
  v177 = v183 + 16;
  v178 = v70;
  v72 = *(v70 + 16);
  v187 = (v186 + 6);
  v188 = (v186 + 7);
  v186 = (v183 + 32);
  v185 = (v172 + 56);
  v174 = (v172 + 48);
  v147 = (v162 + 48);
  v146 = (v162 + 8);
  v184 = (v183 + 8);
  v73 = v196;
  v74 = v181;
  v75 = v182;
  while (2)
  {
    v76 = v191;
    while (1)
    {
      if (v71 == v72)
      {
        v77 = 1;
        v71 = v72;
      }

      else
      {
        if ((v71 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        if (v71 >= *(v178 + 16))
        {
          goto LABEL_46;
        }

        v78 = v183;
        v79 = v178 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v71;
        v80 = *(v13 + 48);
        v81 = v180;
        *v180 = v71;
        (*(v78 + 16))(&v81[v80], v79, v74);
        v82 = v81;
        v76 = v191;
        sub_228208D80(v82, v54, sub_228208B64);
        v77 = 0;
        ++v71;
        v73 = v196;
      }

      (*v188)(v54, v77, 1, v13);
      v83 = v54;
      v84 = v190;
      sub_228208D00(v83, v190);
      if ((*v187)(v84, 1, v13) == 1)
      {

        v66 = v173;
        v65 = v149;
        goto LABEL_40;
      }

      v85 = v76;
      v86 = *v84;
      (*v186)(v75, &v84[*(v13 + 48)], v74);
      sub_2281BF64C(v197, v85);
      v87 = v195;
      if (v193(v85, 1, v195) == 1)
      {
        (*v184)(v75, v74);
        sub_228208C3C(v85, &qword_280DDBD20, MEMORY[0x277D116C8]);
        (*v185)(v73, 1, 1, v189);
        v54 = v192;
        v76 = v85;
        goto LABEL_13;
      }

      v88 = sub_228390D10();
      v175(v85, v87);
      if (*(v88 + 16))
      {
        v75 = v182;
        v89 = sub_2281A79C8(v182);
        v90 = v179;
        if (v91)
        {
          sub_228208DE8(*(v88 + 56) + *(v172 + 72) * v89, v196, sub_2281CBD18);
          v92 = 0;
        }

        else
        {
          v92 = 1;
        }
      }

      else
      {
        v92 = 1;
        v90 = v179;
        v75 = v182;
      }

      v54 = v192;

      v73 = v196;
      v93 = v92;
      v94 = v189;
      (*v185)(v196, v93, 1, v189);
      if ((*v174)(v73, 1, v94) != 1)
      {
        break;
      }

      v74 = v181;
      (*v184)(v75, v181);
      v76 = v191;
LABEL_13:
      result = sub_228208C3C(v73, &qword_27D825268, sub_2281CBD18);
    }

    sub_228208D80(v73, v90, sub_2281CBD18);
    v95 = v154;
    if (!v86)
    {
      v96 = v90;
      v97 = v150;
      sub_228208DE8(v96, v150, sub_2281CBD18);
      v98 = (*v147)(v97, 1, v95);
      v99 = v153;
      if (v98 == 1)
      {
        sub_228208E50(v97, sub_2281CBD18);
        result = sub_2283908A0();
        if (!*(result + 2))
        {
          goto LABEL_51;
        }

        v100 = v170;
        v101 = v169;
        v99(v170, &result[v164], v169);

        v102 = sub_2283908D0();

        v149(v100, v101);
        v165 = v102;
        goto LABEL_34;
      }

      v103 = v95;
      v104 = sub_228391E30();
      (*v146)(v97, v103);

      v105 = &v197;
LABEL_33:
      *(v105 - 32) = v104;
LABEL_34:
      v74 = v181;
      sub_228208E50(v179, sub_2281CBD18);
      result = (*v184)(v75, v74);
      v73 = v196;
      continue;
    }

    break;
  }

  v106 = v90;
  v107 = v148;
  sub_228208DE8(v106, v148, sub_2281CBD18);
  v108 = (*v147)(v107, 1, v95);
  v109 = v153;
  if (v108 != 1)
  {
    v113 = v95;
    v104 = sub_228391E30();
    (*v146)(v107, v113);

    v105 = &v195;
    goto LABEL_33;
  }

  sub_228208E50(v107, sub_2281CBD18);
  result = sub_2283908A0();
  if (*(result + 2))
  {
    v110 = v170;
    v111 = v169;
    v109(v170, &result[v164], v169);

    v112 = sub_2283908D0();

    v149(v110, v111);
    v163 = v112;
    goto LABEL_34;
  }

LABEL_52:
  __break(1u);
  return result;
}