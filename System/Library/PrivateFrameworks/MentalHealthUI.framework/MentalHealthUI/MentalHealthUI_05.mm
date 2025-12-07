id StateOfMindOverlayContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StateOfMindOverlayContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateOfMindOverlayContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_258A308BC(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v52 = a3;
  v53 = a4;
  v49 = a1;
  ObjectType = swift_getObjectType();
  v7 = sub_258B00384();
  v47 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_258AFFBC4();
  v10 = *(v48 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v48);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_258B00084();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v5 + OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayDisplayType);
  v50 = a2;
  v18 = [v17 graphSeriesForTimeScope_];
  if (v18)
  {
    v19 = *(v5 + OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayChartController);
    v46 = v18;
    v47 = v19;
    v20 = v49;
    sub_258AFFBB4();
    v45 = sub_258B00014();
    v21 = *(v14 + 8);
    v21(v16, v13);
    sub_258AFFBA4();
    v22 = sub_258B00014();
    v21(v16, v13);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = v48;
    (*(v10 + 16))(&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v48);
    v25 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v26 = (v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    *(v28 + 16) = v23;
    (*(v10 + 32))(v28 + v25, v12, v24);
    v29 = (v28 + v26);
    v30 = v53;
    *v29 = v52;
    v29[1] = v30;
    *(v28 + v27) = ObjectType;
    aBlock[4] = sub_258A30F8C;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_258A30094;
    aBlock[3] = &block_descriptor_5;
    v31 = _Block_copy(aBlock);

    v32 = v46;
    v33 = v45;
    [v47 cachedDataForCustomGraphSeries:v46 timeScope:v50 resolution:0 startDate:v45 endDate:v22 completion:v31];
    _Block_release(v31);
  }

  else
  {
    sub_258B00364();
    v34 = sub_258B00374();
    v35 = sub_258B02E84();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      aBlock[0] = v37;
      *v36 = 136446210;
      v38 = sub_258B035A4();
      v40 = sub_2589F1F78(v38, v39, aBlock);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_2589A1000, v34, v35, "[%{public}s] Cannot update context item without a graph series", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x259C945C0](v37, -1, -1);
      MEMORY[0x259C945C0](v36, -1, -1);
    }

    (*(v47 + 1))(v9, v7);
    v41 = v52;
    v42 = (*((*MEMORY[0x277D85000] & *v5) + 0xC0))(MEMORY[0x277D84F90]);
    v43 = *(v5 + OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem);
    *(v5 + OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem) = v42;

    v41(0, 0);
  }
}

void *sub_258A30F8C(uint64_t a1, int a2, void *a3)
{
  v7 = *(sub_258AFFBC4() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v3 + 16);
  v12 = (v3 + v9);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v3 + v10);

  return sub_258A2EE80(a1, a2, a3, v11, v3 + v8, v13, v14, v15);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_258A3106C()
{
  result = qword_27F96EBC0;
  if (!qword_27F96EBC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F96EBC0);
  }

  return result;
}

void sub_258A310D0()
{
  v1 = *(sub_258AFFBC4() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v3 + 39) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = v0 + v3;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v0 + v4);
  v11 = *(v0 + v4 + 8);
  v12 = *(v0 + v5);
  v13 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_258A2F30C(v6, v0 + v2, v8, v9, v10, v11, v12, v13);
}

unint64_t sub_258A31190()
{
  result = qword_27F96EBE0;
  if (!qword_27F96EBE0)
  {
    sub_258A3139C(255, &qword_27F96D780, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EBE0);
  }

  return result;
}

void sub_258A31218(uint64_t a1)
{
  if (!qword_27F96EBE8)
  {
    sub_258A3139C(255, &qword_27F96EBF0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96EBE8);
    }
  }
}

uint64_t sub_258A312AC(uint64_t a1, uint64_t a2)
{
  sub_258A3139C(0, &qword_27F96EBF0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A31340(uint64_t a1)
{
  sub_258A31218(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258A3139C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A31400(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s20EntryMomentsDataViewVMa(uint64_t a1)
{
  result = qword_27F96EC10;
  if (!qword_27F96EC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A314C4(uint64_t a1)
{
  sub_258A32370(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_258A32370(319, &qword_27F96EAD0, _s5EntryVMa, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_258A3243C(319, &qword_280DF8948, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_258A315F8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v72 = a3;
  v5 = type metadata accessor for StateOfMindTimeline.Styles(0);
  MEMORY[0x28223BE20](v5 - 8);
  v62 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = _s5EntryVMa(0);
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v60 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A2C548(0);
  v70 = v8;
  MEMORY[0x28223BE20](v8);
  v71 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A32370(0, &qword_27F96D908, _s5EntryVMa, MEMORY[0x277D83D88]);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v61 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v67 = &v59 - v14;
  MEMORY[0x28223BE20](v13);
  v65 = &v59 - v15;
  sub_258A320A4(0);
  v17 = v16 - 8;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v59 - v21;
  v23 = _s19EntryMomentDataViewVMa(0);
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23);
  v26 = (&v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A323D4(a1, v22, sub_258A320A4);
  v69 = *(v17 + 56);
  v64 = _s20EntryMomentsDataViewVMa(0);
  v27 = *(a2 + *(v64 + 24));
  sub_258A3243C(0, &qword_280DF88F0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B2C470;
  v73 = *a1;
  sub_258B003E4();
  *(inited + 32) = sub_258B03414();
  *(inited + 40) = v29;
  v73 = v27;
  v30 = v26;
  v31 = v66;
  sub_2589FC8C8(inited);
  v32 = v73;
  *v30 = swift_getKeyPath();
  sub_258A32370(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_258A324F0(&v22[v69], v30 + *(v24 + 28), _s5EntryVMa);
  *(v30 + *(v24 + 32)) = v32;
  v33 = v68;
  LODWORD(v69) = sub_258B01894();
  sub_258A323D4(a1, v20, sub_258A320A4);
  v34 = *(v17 + 56);
  v35 = v65;
  sub_258A324F0(&v20[v34], v65, _s5EntryVMa);
  v36 = *(v31 + 56);
  v37 = 1;
  v36(v35, 0, 1, v33);
  v38 = *(v63 + *(v64 + 20));
  v39 = *(v38 + 16);
  v40 = v67;
  if (v39)
  {
    sub_258A323D4(v38 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * (v39 - 1), v67, _s5EntryVMa);
    v37 = 0;
  }

  v36(v40, v37, 1, v33);
  v41 = v71;
  v42 = *(v70 + 48);
  sub_258A2C284(v35, v71);
  sub_258A2C284(v40, v41 + v42);
  v43 = *(v31 + 48);
  if (v43(v41, 1, v33) != 1)
  {
    v44 = v61;
    sub_258A2C284(v41, v61);
    if (v43(v41 + v42, 1, v33) != 1)
    {
      v57 = v60;
      sub_258A324F0(v41 + v42, v60, _s5EntryVMa);
      v58 = sub_258ABAEE0(v44, v57);
      sub_258A32490(v57, _s5EntryVMa);
      sub_258A2C670(v40);
      sub_258A2C670(v35);
      sub_258A32490(v44, _s5EntryVMa);
      sub_258A2C670(v41);
      if (v58)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    sub_258A2C670(v40);
    sub_258A2C670(v35);
    sub_258A32490(v44, _s5EntryVMa);
LABEL_8:
    sub_258A32490(v41, sub_258A2C548);
LABEL_9:
    v45 = v62;
    sub_258AC1060(v62);
    sub_258A32490(v45, type metadata accessor for StateOfMindTimeline.Styles);
    goto LABEL_10;
  }

  sub_258A2C670(v40);
  sub_258A2C670(v35);
  if (v43(v41 + v42, 1, v33) != 1)
  {
    goto LABEL_8;
  }

  sub_258A2C670(v41);
LABEL_10:
  sub_258B00654();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = v72;
  sub_258A324F0(v30, v72, _s19EntryMomentDataViewVMa);
  sub_258A32110(0);
  v56 = v54 + *(v55 + 36);
  *v56 = v69;
  *(v56 + 8) = v47;
  *(v56 + 16) = v49;
  *(v56 + 24) = v51;
  *(v56 + 32) = v53;
  *(v56 + 40) = 0;
}

uint64_t sub_258A31D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  *a2 = sub_258B011A4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_258A31F38(0);
  v10[1] = sub_258AACC70(*(v2 + *(v4 + 28)));
  swift_getKeyPath();
  sub_258A323D4(v2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), _s20EntryMomentsDataViewVMa);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_258A324F0(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, _s20EntryMomentsDataViewVMa);
  sub_258A32370(0, &qword_27F96EC30, sub_258A320A4, MEMORY[0x277D83940]);
  sub_258A32110(0);
  sub_258A32170();
  sub_258A321F8(&qword_27F96EC50, _s5EntryVMa, &unk_258B33C24);
  sub_258A322C0();
  return sub_258B023B4();
}

void sub_258A31F38(uint64_t a1)
{
  if (!qword_27F96EC20)
  {
    sub_258A31FA0(255);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96EC20);
    }
  }
}

void sub_258A31FA0(uint64_t a1)
{
  if (!qword_27F96EC28)
  {
    sub_258A32370(255, &qword_27F96EC30, sub_258A320A4, MEMORY[0x277D83940]);
    _s5EntryVMa(255);
    sub_258A32110(255);
    sub_258A32170();
    sub_258A321F8(&qword_27F96EC50, _s5EntryVMa, &unk_258B33C24);
    v1 = sub_258B023D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96EC28);
    }
  }
}

void sub_258A320A4(uint64_t a1)
{
  if (!qword_27F96EC38)
  {
    _s5EntryVMa(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96EC38);
    }
  }
}

void sub_258A32110(uint64_t a1)
{
  if (!qword_27F96EC40)
  {
    _s19EntryMomentDataViewVMa(255);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96EC40);
    }
  }
}

unint64_t sub_258A32170()
{
  result = qword_27F96EC48;
  if (!qword_27F96EC48)
  {
    sub_258A32370(255, &qword_27F96EC30, sub_258A320A4, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EC48);
  }

  return result;
}

uint64_t sub_258A321F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258A32240(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s20EntryMomentsDataViewVMa(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_258A315F8(a1, v6, a2);
}

unint64_t sub_258A322C0()
{
  result = qword_27F96EC58;
  if (!qword_27F96EC58)
  {
    sub_258A32110(255);
    sub_258A321F8(&qword_27F96EC60, _s19EntryMomentDataViewVMa, &unk_258B2E4D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EC58);
  }

  return result;
}

void sub_258A32370(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A323D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258A3243C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258A32490(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A324F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_258A32558(uint64_t a1)
{
  if (!qword_27F96EC70)
  {
    sub_258A31FA0(255);
    sub_258A325BC();
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96EC70);
    }
  }
}

unint64_t sub_258A325BC()
{
  result = qword_27F96EC78;
  if (!qword_27F96EC78)
  {
    sub_258A31FA0(255);
    sub_258A322C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EC78);
  }

  return result;
}

void sub_258A32648(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for ValenceSliderCaptions(uint64_t a1)
{
  result = qword_27F96EC80;
  if (!qword_27F96EC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A3270C(uint64_t a1)
{
  sub_258A32648(319, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_258A32648(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_258A32814(uint64_t a1)
{
  v304 = MEMORY[0x28223BE20](a1);
  v241 = v1;
  sub_258A35838(0);
  v239 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v242 = v233 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v238 = v233 - v6;
  MEMORY[0x28223BE20](v5);
  v240 = v233 - v7;
  sub_2589D5AFC(0);
  v296 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v246 = v233 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v257 = v233 - v12;
  MEMORY[0x28223BE20](v11);
  v269 = v233 - v13;
  v303 = sub_258B02554();
  v307 = *(v303 - 8);
  v14 = MEMORY[0x28223BE20](v303);
  v256 = v233 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v266 = v233 - v17;
  MEMORY[0x28223BE20](v16);
  v273 = v233 - v18;
  v302 = sub_258B006A4();
  v306 = *(v302 - 8);
  v19 = MEMORY[0x28223BE20](v302);
  v255 = v233 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v265 = v233 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v300 = v233 - v24;
  MEMORY[0x28223BE20](v23);
  v279 = (v233 - v25);
  sub_258A3566C(0);
  v301 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  v254 = v233 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v264 = v233 - v30;
  MEMORY[0x28223BE20](v29);
  v272 = v233 - v31;
  v298 = sub_258B019F4();
  v308 = *(v298 - 8);
  v32 = MEMORY[0x28223BE20](v298);
  v249 = v233 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v250 = v233 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v260 = v233 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v261 = v233 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v285 = v233 - v41;
  MEMORY[0x28223BE20](v40);
  v283 = v233 - v42;
  v297 = type metadata accessor for ValenceSelectionPhaseSpecs(0);
  v43 = MEMORY[0x28223BE20](v297);
  v253 = v233 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v248 = v233 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v263 = v233 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v259 = v233 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v271 = v233 - v52;
  MEMORY[0x28223BE20](v51);
  v54 = v233 - v53;
  sub_258A350F8(0);
  v299 = v55;
  v309 = *(v55 - 8);
  v56 = MEMORY[0x28223BE20](v55);
  v251 = v233 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v56);
  v262 = v233 - v59;
  MEMORY[0x28223BE20](v58);
  v293 = v233 - v60;
  sub_258A35050(0);
  v310 = v61;
  v62 = MEMORY[0x28223BE20](v61);
  v252 = v233 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x28223BE20](v62);
  v291 = v233 - v65;
  MEMORY[0x28223BE20](v64);
  v292 = v233 - v66;
  sub_258A34F7C(0);
  v295 = v67;
  v305 = *(v67 - 8);
  v68 = MEMORY[0x28223BE20](v67);
  v235 = v233 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x28223BE20](v68);
  v247 = v233 - v71;
  MEMORY[0x28223BE20](v70);
  v258 = v233 - v72;
  sub_258A34F48(0);
  v74 = MEMORY[0x28223BE20](v73 - 8);
  v237 = v233 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x28223BE20](v74);
  v236 = v233 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v234 = v233 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v270 = v233 - v81;
  MEMORY[0x28223BE20](v80);
  v294 = v233 - v82;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v84 = qword_27F97AB90;
  v83 = qword_27F97AB98;
  v85 = qword_27F97ABA0;
  v86 = sub_258AFFD94();
  v88 = v87;
  v288 = v85;
  v289 = v83;
  v290 = v84;
  v89 = sub_258AFFD94();
  v91 = v90;
  v282 = sub_258B00FF4();
  v354 = 0;
  v267 = v91;
  v268 = v88;
  v92 = v304;
  sub_258A3499C(v86, v88, v304, 1, v89, v91, v352);
  v368 = *&v352[192];
  v369 = *&v352[208];
  v370[0] = *&v352[224];
  *(v370 + 9) = *&v352[233];
  v364 = *&v352[128];
  v365 = *&v352[144];
  v366 = *&v352[160];
  v367 = *&v352[176];
  v360 = *&v352[64];
  v361 = *&v352[80];
  v362 = *&v352[96];
  v363 = *&v352[112];
  v356 = *v352;
  v357 = *&v352[16];
  v358 = *&v352[32];
  v359 = *&v352[48];
  v371[12] = *&v352[192];
  v371[13] = *&v352[208];
  v372[0] = *&v352[224];
  *(v372 + 9) = *&v352[233];
  v371[8] = *&v352[128];
  v371[9] = *&v352[144];
  v371[10] = *&v352[160];
  v371[11] = *&v352[176];
  v371[4] = *&v352[64];
  v371[5] = *&v352[80];
  v371[6] = *&v352[96];
  v371[7] = *&v352[112];
  v371[0] = *v352;
  v371[1] = *&v352[16];
  v371[2] = *&v352[32];
  v371[3] = *&v352[48];
  sub_258A35914(&v356, v351);
  sub_258A359A8(v371);
  *(&v353[12] + 7) = v368;
  *(&v353[13] + 7) = v369;
  *(&v353[14] + 7) = v370[0];
  v353[15] = *(v370 + 9);
  *(&v353[8] + 7) = v364;
  *(&v353[9] + 7) = v365;
  *(&v353[10] + 7) = v366;
  *(&v353[11] + 7) = v367;
  *(&v353[4] + 7) = v360;
  *(&v353[5] + 7) = v361;
  *(&v353[6] + 7) = v362;
  *(&v353[7] + 7) = v363;
  *(v353 + 7) = v356;
  *(&v353[1] + 7) = v357;
  *(&v353[2] + 7) = v358;
  *(&v353[3] + 7) = v359;
  v93 = v354;
  v385 = v353[12];
  v386 = v353[13];
  v387 = v353[14];
  v388 = *(v370 + 9);
  v381 = v353[8];
  v382 = v353[9];
  v383 = v353[10];
  v384 = v353[11];
  v377 = v353[4];
  v378 = v353[5];
  v379 = v353[6];
  v380 = v353[7];
  v373 = v353[0];
  v374 = v353[1];
  v375 = v353[2];
  v376 = v353[3];
  sub_258AC1B90(v54);
  sub_258B01A04();
  v94 = sub_258B00A84();
  v95 = v308;
  v96 = *(v308 + 104);
  v97 = MEMORY[0x277CE0A10];
  if ((v94 & 1) == 0)
  {
    v97 = MEMORY[0x277CE0A18];
  }

  v98 = *v97;
  v99 = v285;
  v100 = v298;
  v286 = *(v308 + 104);
  v287 = v308 + 104;
  v96(v285, v98, v298);
  v101 = v283;
  v284 = *(v95 + 32);
  v285 = (v95 + 32);
  v284(v283, v99, v100);
  v102 = sub_258B01A14();

  v104 = *(v95 + 8);
  v103 = v95 + 8;
  v283 = v104;
  (v104)(v101, v100);
  sub_258A35C2C(v54, type metadata accessor for ValenceSelectionPhaseSpecs);
  KeyPath = swift_getKeyPath();
  *&v351[257] = v388;
  *&v351[209] = v385;
  *&v351[225] = v386;
  *&v351[241] = v387;
  *&v351[145] = v381;
  *&v351[161] = v382;
  *&v351[177] = v383;
  *&v351[193] = v384;
  *&v351[81] = v377;
  *&v351[97] = v378;
  *&v351[113] = v379;
  *&v351[129] = v380;
  *&v351[17] = v373;
  *&v351[33] = v374;
  *&v351[49] = v375;
  *&v351[273] = *v355;
  *&v351[276] = *&v355[3];
  *v351 = v282;
  *&v351[8] = 0;
  v351[16] = v93;
  *&v351[65] = v376;
  *&v351[280] = KeyPath;
  *&v351[288] = v102;
  sub_258B01994();
  sub_258A3517C(0);
  v107 = v106;
  v281 = sub_258A354B8();
  v282 = v107;
  sub_258B01BB4();
  memcpy(v352, v351, sizeof(v352));
  sub_258A35C2C(v352, sub_258A3517C);
  LODWORD(v308) = sub_258B014A4();
  v108 = type metadata accessor for ValenceSliderCaptions(0);
  v109 = v92;
  v110 = v92 + *(v108 + 20);
  v111 = v279;
  v280 = v110;
  sub_258AC14E8(v279);
  v112 = v306;
  v113 = *(v306 + 104);
  v114 = v300;
  v277 = *MEMORY[0x277CDF3C0];
  v115 = v302;
  v278 = v306 + 104;
  v276 = v113;
  v113(v300);
  LOBYTE(v110) = sub_258B00694();
  v117 = *(v112 + 8);
  v116 = v112 + 8;
  v117(v114, v115);
  v279 = v117;
  v117(v111, v115);
  v118 = MEMORY[0x277CE13B8];
  if ((v110 & 1) == 0)
  {
    v118 = MEMORY[0x277CE13B0];
  }

  v119 = *v118;
  v120 = v307;
  v121 = v273;
  v122 = v303;
  v274 = *(v307 + 104);
  v275 = v307 + 104;
  v274(v273, v119, v303);
  v124 = *(v120 + 32);
  v123 = v120 + 32;
  v125 = v272;
  v126 = &v272[*(v301 + 36)];
  v273 = v124;
  (v124)(v126, v121, v122);
  *v125 = v308;
  v125[1] = 1053609165;
  v127 = v292;
  sub_258A35A34(v125, &v292[*(v310 + 36)]);
  v128 = v309 + 32;
  v129 = v293;
  v293 = *(v309 + 32);
  (v293)(v127, v129, v299);
  v130 = v271;
  sub_258AC1B90(v271);
  v131 = *(v109 + *(v108 + 24));
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_43;
  }

  v133 = result;
  v308 = v103;
  v309 = v128;

  homeButtonType = MobileGestalt_get_homeButtonType();

  sub_258A35C2C(v130, type metadata accessor for ValenceSelectionPhaseSpecs);
  v135 = v269;
  if (homeButtonType == 2)
  {
    v136 = sub_258B00AA4();
    if (v131)
    {
      v137 = MEMORY[0x277CDFA10];
    }

    else
    {
      v137 = MEMORY[0x277CDF988];
    }

    (*(*(v136 - 8) + 104))(v135, *v137, v136);
  }

  else
  {
    v138 = *MEMORY[0x277CDF998];
    v136 = sub_258B00AA4();
    (*(*(v136 - 8) + 104))(v135, v138, v136);
  }

  sub_258B00AA4();
  v272 = sub_258A35C8C(&qword_27F96D048, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_258B02AA4();
  if (result)
  {
    v271 = v136;
    v243 = v131;
    v139 = v123;
    v306 = v116;
    v140 = sub_258A35758();
    v141 = sub_258A35C8C(&qword_27F96D030, sub_2589D5AFC, MEMORY[0x277D84470]);
    v142 = v258;
    v143 = v296;
    v144 = v292;
    sub_258B01C84();
    sub_258A35C2C(v135, sub_2589D5AFC);
    sub_258A35B68(v144, sub_258A35050);
    *v351 = v310;
    *&v351[8] = v143;
    v292 = v140;
    *&v351[16] = v140;
    v269 = v141;
    *&v351[24] = v141;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v146 = v295;
    v268 = OpaqueTypeConformance2;
    sub_258B01D64();
    v147 = *(v305 + 8);
    v305 += 8;
    v267 = v147;
    v147(v142, v146);
    v233[2] = "ERY_PLEASANT_SINGLE_LINE";
    v148 = sub_258AFFD94();
    v150 = v149;
    v233[0] = 0xD000000000000026;
    v233[1] = "ERY_UNPLEASANT_TWO_LINES";
    v151 = sub_258AFFD94();
    v307 = v139;
    v152 = v151;
    v154 = v153;
    v258 = sub_258B00FF4();
    v333 = 0;
    v244 = v154;
    v245 = v150;
    sub_258A3499C(v148, v150, v304, 2, v152, v154, v351);
    v346 = *&v351[192];
    v347 = *&v351[208];
    v348[0] = *&v351[224];
    *(v348 + 9) = *&v351[233];
    v342 = *&v351[128];
    v343 = *&v351[144];
    v344 = *&v351[160];
    v345 = *&v351[176];
    v338 = *&v351[64];
    v339 = *&v351[80];
    v340 = *&v351[96];
    v341 = *&v351[112];
    v334 = *v351;
    v335 = *&v351[16];
    v336 = *&v351[32];
    v337 = *&v351[48];
    v349[12] = *&v351[192];
    v349[13] = *&v351[208];
    v350[0] = *&v351[224];
    *(v350 + 9) = *&v351[233];
    v349[8] = *&v351[128];
    v349[9] = *&v351[144];
    v349[10] = *&v351[160];
    v349[11] = *&v351[176];
    v349[4] = *&v351[64];
    v349[5] = *&v351[80];
    v349[6] = *&v351[96];
    v349[7] = *&v351[112];
    v349[0] = *v351;
    v349[1] = *&v351[16];
    v349[2] = *&v351[32];
    v349[3] = *&v351[48];
    sub_258A35914(&v334, v331);
    sub_258A359A8(v349);
    *(&v332[12] + 7) = v346;
    *(&v332[13] + 7) = v347;
    *(&v332[14] + 7) = v348[0];
    v332[15] = *(v348 + 9);
    *(&v332[8] + 7) = v342;
    *(&v332[9] + 7) = v343;
    *(&v332[10] + 7) = v344;
    *(&v332[11] + 7) = v345;
    *(&v332[4] + 7) = v338;
    *(&v332[5] + 7) = v339;
    *(&v332[6] + 7) = v340;
    *(&v332[7] + 7) = v341;
    *(v332 + 7) = v334;
    *(&v332[1] + 7) = v335;
    *(&v332[2] + 7) = v336;
    *(&v332[3] + 7) = v337;
    v155 = v333;
    v156 = v259;
    sub_258AC1B90(v259);
    sub_258B01A04();
    v157 = sub_258B00A84();
    v158 = MEMORY[0x277CE0A10];
    if ((v157 & 1) == 0)
    {
      v158 = MEMORY[0x277CE0A18];
    }

    v159 = v260;
    v160 = v298;
    v286(v260, *v158, v298);
    v161 = v261;
    v284(v261, v159, v160);
    v162 = sub_258B01A14();

    (v283)(v161, v160);
    sub_258A35C2C(v156, type metadata accessor for ValenceSelectionPhaseSpecs);
    v163 = swift_getKeyPath();
    *&v331[257] = v332[15];
    *&v331[209] = v332[12];
    *&v331[225] = v332[13];
    *&v331[241] = v332[14];
    *&v331[145] = v332[8];
    *&v331[161] = v332[9];
    *&v331[177] = v332[10];
    *&v331[193] = v332[11];
    *&v331[81] = v332[4];
    *&v331[97] = v332[5];
    *&v331[113] = v332[6];
    *&v331[129] = v332[7];
    *&v331[17] = v332[0];
    *&v331[33] = v332[1];
    *&v331[49] = v332[2];
    *v331 = v258;
    *&v331[8] = 0;
    v331[16] = v155;
    v164 = v303;
    *&v331[65] = v332[3];
    *&v331[280] = v163;
    *&v331[288] = v162;
    sub_258B01994();
    v165 = v262;
    sub_258B01BB4();
    memcpy(v351, v331, sizeof(v351));
    sub_258A35C2C(v351, sub_258A3517C);
    v166 = sub_258B014A4();
    v167 = v265;
    sub_258AC14E8(v265);
    v168 = v300;
    v169 = v302;
    v276(v300, v277, v302);
    LOBYTE(v162) = sub_258B00694();
    v170 = v279;
    v279(v168, v169);
    v170(v167, v169);
    v171 = v304;
    v172 = MEMORY[0x277CE13B8];
    if ((v162 & 1) == 0)
    {
      v172 = MEMORY[0x277CE13B0];
    }

    v173 = v266;
    v274(v266, *v172, v164);
    v174 = v264;
    (v273)(&v264[*(v301 + 36)], v173, v164);
    *v174 = v166;
    v174[1] = 1053609165;
    v175 = v291;
    sub_258A35A34(v174, &v291[*(v310 + 36)]);
    (v293)(v175, v165, v299);
    v176 = v263;
    sub_258AC1B90(v263);
    result = MobileGestalt_get_current_device();
    if (!result)
    {
      goto LABEL_44;
    }

    v177 = result;

    v178 = MobileGestalt_get_homeButtonType();

    sub_258A35C2C(v176, type metadata accessor for ValenceSelectionPhaseSpecs);
    if (v178 == 2)
    {
      v179 = *(v271 - 8);
      v180 = v257;
      if (v243)
      {
        v181 = MEMORY[0x277CDFA10];
      }

      else
      {
        v181 = MEMORY[0x277CDF988];
      }

      (*(v179 + 13))(v257, *v181, v271);
    }

    else
    {
      v179 = *(v271 - 8);
      v180 = v257;
      (*(v179 + 13))(v257, *MEMORY[0x277CDF998], v271);
    }

    result = sub_258B02AA4();
    if (result)
    {
      v266 = v179;
      v182 = v171;
      v183 = v247;
      v184 = v291;
      sub_258B01C84();
      sub_258A35C2C(v180, sub_2589D5AFC);
      sub_258A35B68(v184, sub_258A35050);
      v185 = v295;
      sub_258B01D64();
      v267(v183, v185);
      v186 = sub_258AFFD94();
      v188 = v187;
      v189 = sub_258AFFD94();
      v191 = v190;
      v192 = sub_258B00FF4();
      v290 = v188;
      v291 = v192;
      v313 = 0;
      v289 = v191;
      sub_258A3499C(v186, v188, v182, 2, v189, v191, v331);
      v326 = *&v331[192];
      v327 = *&v331[208];
      v328[0] = *&v331[224];
      *(v328 + 9) = *&v331[233];
      v322 = *&v331[128];
      v323 = *&v331[144];
      v324 = *&v331[160];
      v325 = *&v331[176];
      v318 = *&v331[64];
      v319 = *&v331[80];
      v320 = *&v331[96];
      v321 = *&v331[112];
      v314 = *v331;
      v315 = *&v331[16];
      v316 = *&v331[32];
      v317 = *&v331[48];
      v329[12] = *&v331[192];
      v329[13] = *&v331[208];
      v330[0] = *&v331[224];
      *(v330 + 9) = *&v331[233];
      v329[8] = *&v331[128];
      v329[9] = *&v331[144];
      v329[10] = *&v331[160];
      v329[11] = *&v331[176];
      v329[4] = *&v331[64];
      v329[5] = *&v331[80];
      v329[6] = *&v331[96];
      v329[7] = *&v331[112];
      v329[0] = *v331;
      v329[1] = *&v331[16];
      v329[2] = *&v331[32];
      v329[3] = *&v331[48];
      sub_258A35914(&v314, v311);
      sub_258A359A8(v329);
      *(&v312[12] + 7) = v326;
      *(&v312[13] + 7) = v327;
      *(&v312[14] + 7) = v328[0];
      v312[15] = *(v328 + 9);
      *(&v312[8] + 7) = v322;
      *(&v312[9] + 7) = v323;
      *(&v312[10] + 7) = v324;
      *(&v312[11] + 7) = v325;
      *(&v312[4] + 7) = v318;
      *(&v312[5] + 7) = v319;
      *(&v312[6] + 7) = v320;
      *(&v312[7] + 7) = v321;
      *(v312 + 7) = v314;
      *(&v312[1] + 7) = v315;
      *(&v312[2] + 7) = v316;
      *(&v312[3] + 7) = v317;
      v193 = v313;
      v194 = v248;
      sub_258AC1B90(v248);
      sub_258B01A24();
      v195 = sub_258B00A84();
      v196 = MEMORY[0x277CE0A10];
      if ((v195 & 1) == 0)
      {
        v196 = MEMORY[0x277CE0A18];
      }

      v197 = v249;
      v198 = v298;
      v286(v249, *v196, v298);
      v199 = v250;
      v284(v250, v197, v198);
      v200 = sub_258B01A14();

      (v283)(v199, v198);
      sub_258A35C2C(v194, type metadata accessor for ValenceSelectionPhaseSpecs);
      v201 = swift_getKeyPath();
      *(&v311[32] + 1) = v312[15];
      *(&v311[26] + 1) = v312[12];
      *(&v311[28] + 1) = v312[13];
      *(&v311[30] + 1) = v312[14];
      *(&v311[18] + 1) = v312[8];
      *(&v311[20] + 1) = v312[9];
      *(&v311[22] + 1) = v312[10];
      *(&v311[24] + 1) = v312[11];
      *(&v311[10] + 1) = v312[4];
      *(&v311[12] + 1) = v312[5];
      *(&v311[14] + 1) = v312[6];
      *(&v311[16] + 1) = v312[7];
      *(&v311[2] + 1) = v312[0];
      *(&v311[4] + 1) = v312[1];
      *(&v311[6] + 1) = v312[2];
      v311[0] = v291;
      v311[1] = 0;
      LOBYTE(v311[2]) = v193;
      *(&v311[8] + 1) = v312[3];
      v311[35] = v201;
      v311[36] = v200;
      sub_258B01994();
      v202 = v251;
      sub_258B01BB4();
      memcpy(v331, v311, sizeof(v331));
      sub_258A35C2C(v331, sub_258A3517C);
      v203 = sub_258B014A4();
      v204 = v255;
      sub_258AC14E8(v255);
      v205 = v300;
      v206 = v302;
      v276(v300, v277, v302);
      LOBYTE(v200) = sub_258B00694();
      v207 = v205;
      v208 = v279;
      v279(v207, v206);
      v208(v204, v206);
      v209 = MEMORY[0x277CE13B8];
      if ((v200 & 1) == 0)
      {
        v209 = MEMORY[0x277CE13B0];
      }

      v210 = v256;
      v211 = v303;
      v274(v256, *v209, v303);
      v212 = v254;
      (v273)(&v254[*(v301 + 36)], v210, v211);
      *v212 = v203;
      v212[1] = 1053609165;
      v213 = v252;
      sub_258A35A34(v212, &v252[*(v310 + 36)]);
      (v293)(v213, v202, v299);
      v214 = v253;
      sub_258AC1B90(v253);
      result = MobileGestalt_get_current_device();
      if (!result)
      {
        goto LABEL_45;
      }

      v215 = result;

      v216 = MobileGestalt_get_homeButtonType();

      sub_258A35C2C(v214, type metadata accessor for ValenceSelectionPhaseSpecs);
      if (v216 == 2)
      {
        v217 = v246;
        if (v243)
        {
          v218 = MEMORY[0x277CDFA10];
        }

        else
        {
          v218 = MEMORY[0x277CDF988];
        }

        (*(v266 + 13))(v246, *v218, v271);
      }

      else
      {
        v217 = v246;
        (*(v266 + 13))(v246, *MEMORY[0x277CDF998], v271);
      }

      result = sub_258B02AA4();
      if (result)
      {
        v219 = v235;
        sub_258B01C84();
        sub_258A35C2C(v217, sub_2589D5AFC);
        sub_258A35B68(v213, sub_258A35050);
        v220 = v234;
        v221 = v295;
        sub_258B01D64();
        v267(v219, v221);
        v222 = swift_getKeyPath();
        v223 = v238;
        sub_258A35A98(v220, v238, sub_258A34F48);
        v224 = v240;
        v225 = (v223 + *(v239 + 36));
        *v225 = v222;
        v225[1] = 0x3FE999999999999ALL;
        sub_258A35A98(v223, v224, sub_258A35838);
        v226 = v236;
        sub_258A35B00(v294, v236, sub_258A34F48);
        v227 = v270;
        v228 = v237;
        sub_258A35B00(v270, v237, sub_258A34F48);
        v229 = v242;
        sub_258A35B00(v224, v242, sub_258A35838);
        v230 = v241;
        sub_258A35B00(v226, v241, sub_258A34F48);
        sub_258A34ED4(0);
        v232 = v231;
        sub_258A35B00(v228, v230 + *(v231 + 48), sub_258A34F48);
        sub_258A35B00(v229, v230 + *(v232 + 64), sub_258A35838);
        sub_258A35B68(v224, sub_258A35838);
        sub_258A35B68(v227, sub_258A34F48);
        sub_258A35B68(v294, sub_258A34F48);
        sub_258A35B68(v229, sub_258A35838);
        sub_258A35B68(v228, sub_258A34F48);
        return sub_258A35B68(v226, sub_258A34F48);
      }

      goto LABEL_42;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_258A3499C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *&v69 = a5;
  *(&v69 + 1) = a6;
  v72 = a4;
  v65[1] = a3;
  v10 = type metadata accessor for ValenceSelectionPhaseSpecs(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v94 = a1;
  *(&v94 + 1) = a2;
  sub_2589BFF58(v11, v14, v15);
  sub_258B003E4();
  v16 = sub_258B01B44();
  v73 = v17;
  v74 = v16;
  v70 = v18;
  LOBYTE(a2) = v19;
  KeyPath = swift_getKeyPath();
  v71 = KeyPath;
  v21 = a2 & 1;
  LOBYTE(v118[0]) = a2 & 1;
  v22 = sub_258B018C4();
  sub_258AC1B90(v13);
  sub_258A2B188();
  sub_258A35C2C(v13, type metadata accessor for ValenceSelectionPhaseSpecs);
  sub_258B00654();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  LOBYTE(v94) = 0;
  v31 = swift_getKeyPath();
  v94 = v69;
  sub_258B003E4();
  v32 = sub_258B01B44();
  v68 = v33;
  *&v69 = v32;
  LOBYTE(a2) = v34;
  *(&v69 + 1) = v35;
  v67 = swift_getKeyPath();
  LOBYTE(v118[0]) = a2 & 1;
  v66 = sub_258B018A4();
  sub_258AC1B90(v13);
  sub_258A2B188();
  sub_258A35C2C(v13, type metadata accessor for ValenceSelectionPhaseSpecs);
  sub_258B00654();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  LOBYTE(v94) = 0;
  v44 = swift_getKeyPath();
  v45 = v70;
  *&v78 = v74;
  *(&v78 + 1) = v70;
  LOBYTE(v79) = v21;
  *(&v79 + 1) = v73;
  *&v80 = KeyPath;
  WORD4(v80) = 0;
  BYTE10(v80) = 1;
  LOBYTE(v81) = v22;
  *(&v81 + 1) = v24;
  *&v82 = v26;
  *(&v82 + 1) = v28;
  *&v83 = v30;
  BYTE8(v83) = 0;
  v46 = v72;
  *&v84 = v31;
  *(&v84 + 1) = v72;
  v85 = 0;
  v96 = v80;
  v97 = v81;
  v94 = v78;
  v95 = v79;
  LOBYTE(v101) = 0;
  v99 = v83;
  v100 = v84;
  v98 = v82;
  v76 = 1;
  v48 = v68;
  v47 = v69;
  *&v86 = v69;
  *(&v86 + 1) = v68;
  LOBYTE(v87) = a2 & 1;
  DWORD1(v87) = *&v77[3];
  *(&v87 + 1) = *v77;
  v49 = *(&v69 + 1);
  v50 = v67;
  *(&v87 + 1) = *(&v69 + 1);
  *&v88 = v67;
  WORD4(v88) = 2;
  BYTE10(v88) = 1;
  v51 = v66;
  LOBYTE(v89) = v66;
  *(&v89 + 1) = v37;
  *&v90 = v39;
  *(&v90 + 1) = v41;
  *&v91 = v43;
  BYTE8(v91) = 0;
  *&v92 = v44;
  *(&v92 + 1) = v72;
  v93 = 0;
  v75[119] = 0;
  *&v75[103] = v92;
  *&v75[87] = v91;
  *&v75[71] = v90;
  *&v75[55] = v89;
  *&v75[39] = v88;
  *&v75[23] = v87;
  *&v75[7] = v86;
  v52 = v78;
  v53 = v79;
  v54 = v81;
  *(a7 + 32) = v80;
  *(a7 + 48) = v54;
  *a7 = v52;
  *(a7 + 16) = v53;
  v55 = v98;
  v56 = v100;
  v57 = v101;
  *(a7 + 80) = v99;
  *(a7 + 96) = v56;
  *(a7 + 64) = v55;
  *(a7 + 112) = v57;
  *(a7 + 120) = 0;
  *(a7 + 128) = 1;
  v58 = *v75;
  v59 = *&v75[16];
  v60 = *&v75[32];
  *(a7 + 177) = *&v75[48];
  *(a7 + 161) = v60;
  *(a7 + 145) = v59;
  *(a7 + 129) = v58;
  v61 = *&v75[64];
  v62 = *&v75[80];
  v63 = *&v75[96];
  *(a7 + 241) = *&v75[112];
  *(a7 + 225) = v63;
  *(a7 + 209) = v62;
  *(a7 + 193) = v61;
  v102[0] = v47;
  v102[1] = v48;
  v103 = a2 & 1;
  *&v104[3] = *&v77[3];
  *v104 = *v77;
  v105 = v49;
  v106 = v50;
  v107 = 2;
  v108 = 1;
  v109 = v51;
  v110 = v37;
  v111 = v39;
  v112 = v41;
  v113 = v43;
  v114 = 0;
  v115 = v44;
  v116 = v46;
  v117 = 0;
  sub_258A35BC8(&v78, v118);
  sub_258A35BC8(&v86, v118);
  sub_258A35C2C(v102, sub_258A3531C);
  v118[0] = v74;
  v118[1] = v45;
  v119 = v21;
  v120 = v73;
  v121 = v71;
  v122 = 0;
  v123 = 1;
  v124 = v22;
  v125 = v24;
  v126 = v26;
  v127 = v28;
  v128 = v30;
  v129 = 0;
  v130 = v31;
  v131 = v46;
  v132 = 0;
  return sub_258A35C2C(v118, sub_258A3531C);
}

uint64_t sub_258A34DF8@<X0>(_BYTE *a2@<X8>)
{
  *a2 = sub_258B01834();
  sub_258A34E38(0);
  return sub_258A32814(v2);
}

void sub_258A34E38(uint64_t a1)
{
  if (!qword_27F96EC90)
  {
    sub_258A32648(255, &qword_27F96EC98, sub_258A34ED4, MEMORY[0x277CE14B8]);
    sub_2589FFCB4(v1, v2, v3);
    v4 = sub_258B00974();
    if (!v5)
    {
      atomic_store(v4, &qword_27F96EC90);
    }
  }
}

void sub_258A34ED4(uint64_t a1)
{
  if (!qword_27F96ECA0)
  {
    sub_258A34F48(255);
    sub_258A35838(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F96ECA0);
    }
  }
}

void sub_258A34F7C(uint64_t a1)
{
  if (!qword_27F96ECB0)
  {
    sub_258A35050(255);
    sub_2589D5AFC(255);
    sub_258A35758();
    sub_258A35C8C(&qword_27F96D030, sub_2589D5AFC, MEMORY[0x277D84470]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96ECB0);
    }
  }
}

void sub_258A35084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A350F8(uint64_t a1)
{
  if (!qword_27F96ECC0)
  {
    sub_258A3517C(255);
    sub_258A354B8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96ECC0);
    }
  }
}

void sub_258A3517C(uint64_t a1)
{
  if (!qword_27F96ECC8)
  {
    sub_258A351FC(255);
    sub_258A3544C(255, &qword_27F96C868, &qword_27F96C870, MEMORY[0x277CE0AE0]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96ECC8);
    }
  }
}

void sub_258A351FC(uint64_t a1)
{
  if (!qword_27F96ECD0)
  {
    sub_258A32648(255, &qword_27F96ECD8, sub_258A352B0, MEMORY[0x277CE14B8]);
    sub_258A35D88(&qword_27F96ED08, &qword_27F96ECD8, sub_258A352B0);
    v1 = sub_258B021D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96ECD0);
    }
  }
}

void sub_258A352B0(uint64_t a1)
{
  if (!qword_27F96ECE0)
  {
    sub_258A3531C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F96ECE0);
    }
  }
}

void sub_258A3531C(uint64_t a1)
{
  if (!qword_27F96ECE8)
  {
    sub_258A353E8(255, &qword_27F96ECF0, sub_258A353C0, MEMORY[0x277CDF928]);
    sub_258A3544C(255, &qword_27F96ED00, &qword_280DF8928, MEMORY[0x277D83B88]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96ECE8);
    }
  }
}

void sub_258A353E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_258B00B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258A3544C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_258A358C4(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_258B017C4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_258A354B8()
{
  result = qword_27F96ED10;
  if (!qword_27F96ED10)
  {
    sub_258A3517C(255);
    sub_258A35C8C(&qword_27F96ED18, sub_258A351FC, MEMORY[0x277CE1138]);
    sub_258A35568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96ED10);
  }

  return result;
}

unint64_t sub_258A35568()
{
  result = qword_27F96C938;
  if (!qword_27F96C938)
  {
    sub_258A3544C(255, &qword_27F96C868, &qword_27F96C870, MEMORY[0x277CE0AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C938);
  }

  return result;
}

void sub_258A355D8(uint64_t a1)
{
  if (!qword_27F96ED20)
  {
    sub_258A3566C(255);
    sub_258A35C8C(&qword_27F96ED40, sub_258A3566C, MEMORY[0x277CE03C0]);
    v1 = sub_258B015C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96ED20);
    }
  }
}

void sub_258A3566C(uint64_t a1)
{
  if (!qword_27F96ED28)
  {
    sub_258A35700();
    sub_258A35C8C(&qword_27F96ED38, sub_258A35700, MEMORY[0x277CE01D8]);
    v1 = sub_258B013B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96ED28);
    }
  }
}

void sub_258A35700()
{
  if (!qword_27F96ED30)
  {
    v0 = sub_258B01104();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96ED30);
    }
  }
}

unint64_t sub_258A35758()
{
  result = qword_27F96ED48;
  if (!qword_27F96ED48)
  {
    sub_258A35050(255);
    sub_258A3517C(255);
    sub_258A354B8();
    swift_getOpaqueTypeConformance2();
    sub_258A35C8C(&qword_27F96ED50, sub_258A355D8, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96ED48);
  }

  return result;
}

void sub_258A35838(uint64_t a1)
{
  if (!qword_27F96ED58)
  {
    sub_258A34F48(255);
    sub_258A358C4(255, &qword_27F96ED60, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96ED58);
    }
  }
}

void sub_258A358C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258A35914(uint64_t a1, uint64_t a2)
{
  sub_258A32648(0, &qword_27F96ECD8, sub_258A352B0, MEMORY[0x277CE14B8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A359A8(uint64_t a1)
{
  sub_258A32648(0, &qword_27F96ECD8, sub_258A352B0, MEMORY[0x277CE14B8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258A35A34(uint64_t a1, uint64_t a2)
{
  sub_258A3566C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A35A98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A35B00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A35B68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A35BC8(uint64_t a1, uint64_t a2)
{
  sub_258A3531C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A35C2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A35C8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258A35CD4(uint64_t a1)
{
  if (!qword_27F96ED70)
  {
    sub_258A32648(255, &qword_27F96EC98, sub_258A34ED4, MEMORY[0x277CE14B8]);
    sub_258A35D88(&qword_27F96ED78, &qword_27F96EC98, sub_258A34ED4);
    v1 = sub_258B00844();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96ED70);
    }
  }
}

uint64_t sub_258A35D88(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_258A32648(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MentalWellbeingNotificationSettingsView.init(settingsModel:assessmentsSettingModel:navigationTitleText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_258B02114();
  *(a5 + 64) = v11;
  *(a5 + 72) = v12;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  *a5 = sub_2589C0528;
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(a5 + 24) = sub_258A35EA8;
  *(a5 + 32) = result;
  *(a5 + 40) = 0;
  return result;
}

uint64_t MentalWellbeingNotificationSettingsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_258B013D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A36214(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A364B4(0);
  v24 = v11;
  v25 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[3];
  v33[2] = v1[2];
  v34 = v14;
  v35 = v1[4];
  v15 = v1[1];
  v33[0] = *v1;
  v33[1] = v15;
  v27 = v33;
  sub_258A362C4(0);
  sub_258A36588(&qword_27F96EDB8, sub_258A362C4, MEMORY[0x277CE14C0]);
  sub_258B01A74();
  sub_258B013C4();
  v16 = sub_258A36588(&qword_27F96EDC8, sub_258A36214, MEMORY[0x277CDE5A0]);
  v17 = MEMORY[0x277CDE0D0];
  sub_258B01F24();
  (*(v3 + 8))(v5, v2);
  (*(v8 + 8))(v10, v7);
  v32 = v34;
  v28 = v7;
  v29 = v2;
  v30 = v16;
  v31 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2589BFF58(OpaqueTypeConformance2, v19, v20);
  v21 = v24;
  sub_258B01CB4();
  return (*(v25 + 8))(v13, v21);
}

void sub_258A36214(uint64_t a1)
{
  if (!qword_27F96ED80)
  {
    sub_258A362C4(255);
    sub_258A36588(&qword_27F96EDB8, sub_258A362C4, MEMORY[0x277CE14C0]);
    v1 = sub_258B01A84();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96ED80);
    }
  }
}

void sub_258A362F8(uint64_t a1)
{
  if (!qword_27F96ED90)
  {
    sub_258A36390(255, &qword_27F96ED98, sub_258A363F4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96ED90);
    }
  }
}

void sub_258A36390(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A36428(uint64_t a1)
{
  if (!qword_27F96EDA8)
  {
    sub_258A00D6C(255, &qword_27F96EDB0, &type metadata for LinkToMindSettingsButton, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96EDA8);
    }
  }
}

void sub_258A364B4(uint64_t a1)
{
  if (!qword_27F96EDC0)
  {
    sub_258A36214(255);
    sub_258B013D4();
    sub_258A36588(&qword_27F96EDC8, sub_258A36214, MEMORY[0x277CDE5A0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96EDC0);
    }
  }
}

uint64_t sub_258A36588(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_258A365D0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v5 = result;
    v6 = [result isiPad];

    v19 = a2;
    if (v6)
    {
      v23 = 0;
      v24 = 0;
      v21 = 0;
      v22 = 0;
      v20 = 0;
      v32 = 0;
      v33 = 0;
      v30 = 0;
      v31 = 0;
      v28 = 0;
      v29 = 0;
      v26 = 0;
      v27 = 0;
      v25 = 0;
    }

    else
    {
      type metadata accessor for NotificationSettingsModel(0);
      sub_258A36588(&qword_27F96D308, type metadata accessor for NotificationSettingsModel, &protocol conformance descriptor for NotificationSettingsModel);
      sub_258B00744();
      sub_258A5B958(&v67);
      v7 = sub_258B00744();
      v8 = NotificationSettingsModel.shouldShowMindfulnessSettingsButton()();

      v9 = 0;
      v10 = 0;
      if (v8)
      {
        if (qword_27F96C240 != -1)
        {
          swift_once();
        }

        v9 = sub_258AFFD94();
      }

      v25 = v10;
      v26 = v9;
      v43 = v67;
      v44 = v68;
      v45 = v69;
      v46 = v70;
      v47 = v71;
      v48 = v72;
      v23 = *(&v67 + 1);
      v24 = v67;
      v21 = *(&v68 + 1);
      v22 = v68;
      v20 = v69;
      v32 = v70;
      v33 = *(&v69 + 1);
      v30 = v71;
      v31 = *(&v70 + 1);
      v28 = v72;
      v29 = *(&v71 + 1);
      v27 = *(&v72 + 1);
      sub_258A36BA0(&v43, &v59);
      v61 = v69;
      v62 = v70;
      v63 = v71;
      v64 = v72;
      v59 = v67;
      v60 = v68;
      sub_258A36BFC(&v59);
    }

    type metadata accessor for AssessmentsSettingsModel();
    sub_258A36588(&qword_27F96EDD0, type metadata accessor for AssessmentsSettingsModel, &protocol conformance descriptor for AssessmentsSettingsModel);
    sub_258B00744();
    type metadata accessor for NotificationSettingsModel(0);
    sub_258A36588(&qword_27F96D308, type metadata accessor for NotificationSettingsModel, &protocol conformance descriptor for NotificationSettingsModel);
    sub_258B00744();
    v43 = *(a1 + 4);
    sub_258A00D6C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    sub_258B02144();
    v11 = v59;
    v12 = v60;
    v13 = sub_258B00A24();
    v15 = v14;
    v16 = sub_258B00A24();
    *&v43 = v24;
    *(&v43 + 1) = v23;
    *&v44 = v22;
    *(&v44 + 1) = v21;
    *&v45 = v20;
    *(&v45 + 1) = v33;
    *&v46 = v32;
    *(&v46 + 1) = v31;
    *&v47 = v30;
    *(&v47 + 1) = v29;
    *&v48 = v28;
    *(&v48 + 1) = v27;
    *&v49 = v26;
    *(&v49 + 1) = v25;
    v36 = v47;
    v37 = v48;
    v34 = v45;
    v35 = v46;
    *&v50 = v13;
    *(&v50 + 1) = v15;
    *&v51 = v16;
    *(&v51 + 1) = v17;
    v52 = v11;
    LOBYTE(v53) = v12;
    DWORD1(v53) = *&v42[3];
    *(&v53 + 1) = *v42;
    *(&v53 + 1) = &unk_2869D52F0;
    v41 = v53;
    v39 = v50;
    v40 = v51;
    v38 = v49;
    v18 = v44;
    *v19 = v43;
    v19[1] = v18;
    v19[4] = v36;
    v19[5] = v37;
    v19[2] = v34;
    v19[3] = v35;
    v19[9] = v11;
    v19[10] = v41;
    v19[7] = v39;
    v19[8] = v40;
    v19[6] = v38;
    v54[0] = v13;
    v54[1] = v15;
    v54[2] = v16;
    v54[3] = v17;
    v55 = v11;
    v56 = v12;
    *v57 = *v42;
    *&v57[3] = *&v42[3];
    v58 = &unk_2869D52F0;
    sub_258A36C50(&v43, &v59);
    sub_258A36CE4(&v50, &v59);
    sub_258A36D40(v54);
    *&v59 = v24;
    *(&v59 + 1) = v23;
    *&v60 = v22;
    *(&v60 + 1) = v21;
    *&v61 = v20;
    *(&v61 + 1) = v33;
    *&v62 = v32;
    *(&v62 + 1) = v31;
    *&v63 = v30;
    *(&v63 + 1) = v29;
    *&v64 = v28;
    *(&v64 + 1) = v27;
    v65 = v26;
    v66 = v25;
    return sub_258A36D94(&v59);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258A36AF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258A36B3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_258A36C50(uint64_t a1, uint64_t a2)
{
  sub_258A36390(0, &qword_27F96ED98, sub_258A363F4, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A36D94(uint64_t a1)
{
  sub_258A36390(0, &qword_27F96ED98, sub_258A363F4, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for IntroPhaseContent(uint64_t a1)
{
  result = qword_27F96EDD8;
  if (!qword_27F96EDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A36E9C(uint64_t a1)
{
  sub_2589E3D24(319);
  if (v1 <= 0x3F)
  {
    sub_2589C0D10();
    if (v2 <= 0x3F)
    {
      sub_258A37D9C(319, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_258A36F84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CDF458];
  sub_258A37D9C(0, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = type metadata accessor for IntroPhaseContent(0);
  sub_258A37E00(v1 + *(v11 + 24), v10, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs, v7, sub_258A37D9C);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_258A37ED8(v10, a1);
  }

  sub_258B02E94();
  v13 = sub_258B01824();
  sub_258B00354();

  sub_258B00F74();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_258A3719C@<X0>(uint64_t (*a1)(uint64_t)@<X0>, _BYTE *a2@<X8>)
{
  v88 = a2;
  v3 = MEMORY[0x277CDF928];
  sub_258A37D38(0, &qword_27F96EE10, type metadata accessor for IntroPhaseBulletView, MEMORY[0x277CDF928]);
  v93 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v89 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v96 = v84 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v87 = v84 - v10;
  MEMORY[0x28223BE20](v9);
  v85 = v84 - v11;
  sub_258A37D38(0, &qword_27F96EE08, type metadata accessor for IntroPhaseHeaderText, v3);
  v94 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v95 = v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = (v84 - v15);
  v17 = type metadata accessor for IntroPhaseSpecs(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_258B01884();
  v97 = a1;
  sub_258A36F84(v19);
  v20 = v19;
  sub_2589F9F8C(v19);
  sub_258B00654();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_258B024F4();
  sub_258B00C94();
  *&v98[55] = v103;
  *&v98[71] = v104;
  *&v98[87] = v105;
  *&v98[103] = v106;
  *&v98[7] = v100;
  *&v98[23] = v101;
  v99 = 0;
  *&v98[39] = v102;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v29 = qword_27F97AB98;
  v90 = qword_27F97AB90;
  v30 = qword_27F97ABA0;
  v31 = sub_258AFFD94();
  v33 = v32;
  KeyPath = swift_getKeyPath();
  v35 = type metadata accessor for IntroPhaseHeaderText(0);
  *(v16 + *(v35 + 20)) = KeyPath;
  v36 = MEMORY[0x277CDF458];
  sub_258A37D9C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  v92 = v37;
  swift_storeEnumTagMultiPayload();
  *(v16 + *(v35 + 24)) = swift_getKeyPath();
  sub_258A37D9C(0, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs, v36);
  v91 = v38;
  swift_storeEnumTagMultiPayload();
  *v16 = v31;
  v16[1] = v33;
  LOBYTE(v36) = sub_258B01884();
  sub_258A36F84(v20);
  sub_2589F9F8C(v20);
  sub_258B00654();
  v39 = v16 + *(v94 + 9);
  *v39 = v36;
  *(v39 + 1) = v40;
  *(v39 + 2) = v41;
  *(v39 + 3) = v42;
  *(v39 + 4) = v43;
  v39[40] = 0;
  v84[1] = v29;
  v84[0] = v30;
  v44 = sub_258AFFD94();
  v46 = v45;
  v47 = sub_258AFFD94();
  v94 = v16;
  v49 = v48;
  v50 = swift_getKeyPath();
  v51 = type metadata accessor for IntroPhaseBulletView(0);
  v52 = v85;
  *&v85[*(v51 + 28)] = v50;
  swift_storeEnumTagMultiPayload();
  *(v52 + *(v51 + 32)) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v52 = v44;
  *(v52 + 8) = v46;
  *(v52 + 16) = v47;
  *(v52 + 24) = v49;
  *(v52 + 32) = 7;
  LOBYTE(v44) = sub_258B01884();
  sub_258A36F84(v20);
  sub_2589F9F8C(v20);
  sub_258B00654();
  v53 = v52 + *(v93 + 36);
  *v53 = v44;
  *(v53 + 8) = v54;
  *(v53 + 16) = v55;
  *(v53 + 24) = v56;
  *(v53 + 32) = v57;
  *(v53 + 40) = 0;
  v58 = sub_258AFFD94();
  v60 = v59;
  v61 = sub_258AFFD94();
  v63 = v62;
  v64 = swift_getKeyPath();
  v65 = v87;
  *&v87[*(v51 + 28)] = v64;
  swift_storeEnumTagMultiPayload();
  *(v65 + *(v51 + 32)) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v65 = v58;
  *(v65 + 8) = v60;
  *(v65 + 16) = v61;
  *(v65 + 24) = v63;
  *(v65 + 32) = 1;
  LOBYTE(v44) = sub_258B01884();
  sub_258A36F84(v20);
  sub_2589F9F8C(v20);
  sub_258B00654();
  v66 = v65 + *(v93 + 36);
  *v66 = v44;
  *(v66 + 8) = v67;
  *(v66 + 16) = v68;
  *(v66 + 24) = v69;
  *(v66 + 32) = v70;
  *(v66 + 40) = 0;
  v71 = MEMORY[0x277CDF928];
  v72 = v95;
  v97 = type metadata accessor for IntroPhaseHeaderText;
  sub_258A37E00(v94, v95, &qword_27F96EE08, type metadata accessor for IntroPhaseHeaderText, MEMORY[0x277CDF928], sub_258A37D38);
  sub_258A37E00(v52, v96, &qword_27F96EE10, type metadata accessor for IntroPhaseBulletView, v71, sub_258A37D38);
  v73 = v89;
  sub_258A37E00(v65, v89, &qword_27F96EE10, type metadata accessor for IntroPhaseBulletView, v71, sub_258A37D38);
  v74 = v88;
  *v88 = v86;
  *(v74 + 1) = v22;
  *(v74 + 2) = v24;
  *(v74 + 3) = v26;
  *(v74 + 4) = v28;
  v74[40] = 0;
  v75 = *&v98[80];
  *(v74 + 105) = *&v98[64];
  *(v74 + 121) = v75;
  *(v74 + 137) = *&v98[96];
  *(v74 + 19) = *&v98[111];
  v76 = *&v98[16];
  *(v74 + 41) = *v98;
  *(v74 + 57) = v76;
  v77 = *&v98[48];
  *(v74 + 73) = *&v98[32];
  *(v74 + 89) = v77;
  sub_258A37C44(0);
  v79 = v78;
  v80 = MEMORY[0x277CDF928];
  sub_258A37E00(v72, &v74[*(v78 + 48)], &qword_27F96EE08, type metadata accessor for IntroPhaseHeaderText, MEMORY[0x277CDF928], sub_258A37D38);
  v81 = v96;
  sub_258A37E00(v96, &v74[*(v79 + 64)], &qword_27F96EE10, type metadata accessor for IntroPhaseBulletView, v80, sub_258A37D38);
  sub_258A37E00(v73, &v74[*(v79 + 80)], &qword_27F96EE10, type metadata accessor for IntroPhaseBulletView, v80, sub_258A37D38);
  sub_258A37E74(v65, &qword_27F96EE10, type metadata accessor for IntroPhaseBulletView);
  sub_258A37E74(v52, &qword_27F96EE10, type metadata accessor for IntroPhaseBulletView);
  v82 = v97;
  sub_258A37E74(v94, &qword_27F96EE08, v97);
  sub_258A37E74(v73, &qword_27F96EE10, type metadata accessor for IntroPhaseBulletView);
  sub_258A37E74(v81, &qword_27F96EE10, type metadata accessor for IntroPhaseBulletView);
  return sub_258A37E74(v95, &qword_27F96EE08, v82);
}

uint64_t sub_258A37B68@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_258B011A4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_258A37BAC(0);
  return sub_258A3719C(v2, (a2 + *(v4 + 44)));
}

void sub_258A37BAC(uint64_t a1)
{
  if (!qword_27F96EDE8)
  {
    sub_258A37D9C(255, &qword_27F96EDF0, sub_258A37C44, MEMORY[0x277CE14B8]);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96EDE8);
    }
  }
}

void sub_258A37C44(uint64_t a1)
{
  if (!qword_27F96EDF8)
  {
    sub_258A37D38(255, &qword_27F96EE00, sub_258A2E67C, MEMORY[0x277CDFC70]);
    v1 = MEMORY[0x277CDF928];
    sub_258A37D38(255, &qword_27F96EE08, type metadata accessor for IntroPhaseHeaderText, MEMORY[0x277CDF928]);
    sub_258A37D38(255, &qword_27F96EE10, type metadata accessor for IntroPhaseBulletView, v1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_27F96EDF8);
    }
  }
}

void sub_258A37D38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_258B00B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258A37D9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A37E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_258A37E74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_258A37D38(0, a2, a3, MEMORY[0x277CDF928]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_258A37ED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntroPhaseSpecs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A37F3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258A37F84(uint64_t a1)
{
  if (!qword_27F96EE20)
  {
    sub_258A37D9C(255, &qword_27F96EDF0, sub_258A37C44, MEMORY[0x277CE14B8]);
    sub_258A38018();
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96EE20);
    }
  }
}

unint64_t sub_258A38018()
{
  result = qword_27F96EE28;
  if (!qword_27F96EE28)
  {
    sub_258A37D9C(255, &qword_27F96EDF0, sub_258A37C44, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EE28);
  }

  return result;
}

uint64_t sub_258A380A0(void *a1)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v3 = 16;
  v4 = MEMORY[0x277D84F90];
  while (2)
  {
    v5 = 0;
    v25 = v1 + 1;
    v26 = v3;
    do
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_258A75154(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
      }

      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v8 >= v7 >> 1)
      {
        result = sub_258A75154((v7 > 1), v8 + 1, 1, v4);
        v4 = result;
      }

      *&v9 = ((v5 / 15.0) + (v5 / 15.0)) + -1.0;
      *(&v9 + 1) = ((v1 / 15.0) + (v1 / 15.0)) + -1.0;
      *(v4 + 16) = v8 + 1;
      *(v4 + 32 + 16 * v8) = v9;
      if (v1 == 15 || v5 >= 0xF)
      {
        v10 = MEMORY[0x277D84F90];
        v11 = *(MEMORY[0x277D84F90] + 16);
      }

      else
      {
        sub_258A38584();
        result = swift_allocObject();
        v10 = result;
        *(result + 16) = xmmword_258B2FB80;
        *(result + 32) = v3 - 16;
        *(result + 36) = v3 - 15;
        *(result + 40) = v3 + 1;
        *(result + 44) = v3 - 16;
        v11 = 6;
        *(result + 48) = v3 + 1;
        *(result + 52) = v3;
      }

      v12 = *(v2 + 16);
      v13 = v12 + v11;
      if (__OFADD__(v12, v11))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v13 <= *(v2 + 24) >> 1)
      {
        if (!*(v10 + 16))
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (v12 <= v13)
        {
          v14 = v12 + v11;
        }

        else
        {
          v14 = v12;
        }

        result = sub_258A74F10(result, v14, 1, v2);
        v2 = result;
        if (!*(v10 + 16))
        {
LABEL_4:

          if (v11)
          {
            goto LABEL_33;
          }

          goto LABEL_5;
        }
      }

      v15 = *(v2 + 16);
      if ((*(v2 + 24) >> 1) - v15 < v11)
      {
        goto LABEL_34;
      }

      memcpy((v2 + 4 * v15 + 32), (v10 + 32), 4 * v11);

      if (v11)
      {
        v16 = *(v2 + 16);
        v17 = __OFADD__(v16, v11);
        v18 = v16 + v11;
        if (v17)
        {
          goto LABEL_35;
        }

        *(v2 + 16) = v18;
      }

LABEL_5:
      ++v5;
      ++v3;
    }

    while (v5 != 16);
    v3 = v26 + 16;
    ++v1;
    if (v25 != 16)
    {
      continue;
    }

    break;
  }

  v19 = *(v4 + 16);
  v24[4] = v19;
  v24[5] = *(v2 + 16);
  if (v19 >> 59)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v20 = [a1 newBufferWithBytes:v4 + 32 length:16 * v19 options:0];

  v24[6] = v20;
  result = swift_unknownObjectRelease();
  v21 = v24[5];
  if ((v21 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  v22 = [a1 newBufferWithBytes:v2 + 32 length:4 * v21 options:0];

  v24[7] = v22;

  return swift_unknownObjectRelease();
}

uint64_t sub_258A383B4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_258A38418()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD7090]) init];
  v1 = [v0 attributes];
  v2 = [v0 layouts];
  result = [v1 objectAtIndexedSubscript_];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  [result setFormat_];

  result = [v1 objectAtIndexedSubscript_];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  [result setOffset_];

  result = [v1 objectAtIndexedSubscript_];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  [result setBufferIndex_];

  result = [v2 objectAtIndexedSubscript_];
  if (result)
  {
    v7 = result;
    [result setStride_];

    return v0;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_258A38584()
{
  if (!qword_27F96EE90[0])
  {
    v0 = sub_258B03424();
    if (!v1)
    {
      atomic_store(v0, qword_27F96EE90);
    }
  }
}

void sub_258A385DC(uint64_t a1)
{
  sub_258B02CD4();
  if (v1 <= 0x3F)
  {
    sub_258B02364();
    if (v2 <= 0x3F)
    {
      sub_2589C0D10();
      if (v3 <= 0x3F)
      {
        sub_258A3B278(319, &qword_27F96DEF8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

id sub_258A38760(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = [objc_opt_self() whiteColor];
  v3 = v2;
  v4 = 0.6;
  if (v1 == 2)
  {
    v4 = 0.12;
  }

  v5 = [v2 colorWithAlphaComponent_];

  return v5;
}

id sub_258A387EC(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = dbl_258B2FBE0[v1 == 2];
  v4 = &selRef_whiteColor;
  if (v1 != 2)
  {
    v4 = &selRef_blackColor;
  }

  v5 = [v2 *v4];
  v6 = [v5 colorWithAlphaComponent_];

  return v6;
}

id sub_258A3888C(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  if (v1 == 2)
  {
    v3 = [v2 blackColor];
    v4 = [v3 colorWithAlphaComponent_];

    return v4;
  }

  else
  {
    v6 = [v2 whiteColor];

    return v6;
  }
}

id sub_258A38938(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_whiteColor;
  if (v1 != 2)
  {
    v3 = &selRef_blackColor;
  }

  v4 = [v2 *v3];

  return v4;
}

uint64_t sub_258A389A4(uint64_t a1)
{
  v4[1] = *(v1 + 8);
  v5 = *(v1 + 16);
  sub_258B02CD4();
  v2 = sub_258B02364();
  MEMORY[0x259C92900](v4, v2);
  return v4[0];
}

uint64_t sub_258A38A00(uint64_t a1, uint64_t a2)
{
  sub_258B02CD4();
  sub_258B02364();
  return sub_258B02314();
}

uint64_t sub_258A38A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_258B00F84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A3B278(0, &qword_27F96DE40, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_258A3B4D8(v2 + *(a1 + 60), &v15 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_258B00AA4();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_258B02E94();
    v14 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_258A38C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  v26[1] = a2;
  sub_258A3A6A0(255, a3, a4);
  v6 = *(a1 + 16);
  v7 = sub_258B02CD4();
  sub_258A3A8CC(255, &qword_27F96EF30, sub_258A3A750, MEMORY[0x277CDE470]);
  v9 = v8;
  WitnessTable = swift_getWitnessTable();
  v11 = *(a1 + 24);
  v34 = v7;
  v35 = v6;
  v36 = v9;
  v37 = WitnessTable;
  v38 = v11;
  sub_258B023D4();
  sub_258A3AB10(&qword_27F96EFA8, sub_258A3A6A0, MEMORY[0x277CDF500]);
  v12 = sub_258B00974();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v26 - v17;
  v19 = *(v4 + 40);
  v20 = *(v4 + 48);
  v21 = swift_allocObject();
  v21[2] = v6;
  v21[3] = v11;
  v21[4] = v19;
  v21[5] = v20;
  v28 = v6;
  v29 = v11;
  v30 = v4;
  sub_258A38F64(sub_258A3AE30, v27, v16);

  v22 = sub_258A3AB10(&qword_27F96EFB0, sub_258A3A6A0, MEMORY[0x277CDF510]);
  v33 = sub_258A3AE3C();
  v23 = swift_getWitnessTable();
  v31 = v22;
  v32 = v23;
  swift_getWitnessTable();
  sub_258A4DFD4();
  v24 = *(v13 + 8);
  v24(v16, v12);
  sub_258A4DFD4();
  return (v24)(v18, v12);
}

uint64_t sub_258A38F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  sub_258B02CD4();
  sub_258A3A8CC(255, &qword_27F96EF30, sub_258A3A750, MEMORY[0x277CDE470]);
  swift_getWitnessTable();
  v10 = sub_258B023D4();
  v13 = sub_258A3A6FC(v10, v11, v12);
  sub_258A3AE3C();
  WitnessTable = swift_getWitnessTable();
  return sub_258A00E00(a1, a2, &type metadata for TagLayout, v10, v13, WitnessTable, a5);
}

uint64_t sub_258A39094@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a5;
  v32 = type metadata accessor for TagPicker(0, a2, a3, a4);
  v8 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v10 = &KeyPath - v9;
  v11 = sub_258B02CD4();
  v31 = v11;
  sub_258A3A8CC(255, &qword_27F96EF30, sub_258A3A750, MEMORY[0x277CDE470]);
  v13 = v12;
  v30 = v12;
  WitnessTable = swift_getWitnessTable();
  v38 = v11;
  v39 = a2;
  v40 = v13;
  v41 = WitnessTable;
  v42 = a3;
  v14 = sub_258B023D4();
  v33 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &KeyPath - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v28 = &KeyPath - v18;
  v38 = *a1;
  v35 = a2;
  v36 = a3;
  KeyPath = swift_getKeyPath();
  v19 = v10;
  v20 = v32;
  (*(v8 + 16))(v10, a1, v32);
  v21 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  (*(v8 + 32))(v22 + v21, v19, v20);
  v23 = sub_258A3AE3C();
  sub_258B003E4();
  sub_258B023B4();
  v37 = v23;
  swift_getWitnessTable();
  v24 = v28;
  sub_258A4DFD4();
  v25 = *(v33 + 8);
  v25(v17, v14);
  sub_258A4DFD4();
  return (v25)(v24, v14);
}

uint64_t sub_258A393E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v127 = a5;
  v128 = sub_258B01134();
  v126 = *(v128 - 8);
  v9 = MEMORY[0x28223BE20](v128);
  v125 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = *(a3 - 8);
  MEMORY[0x28223BE20](v9);
  v117 = v11;
  v119 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TagPicker(0, a3, a4, v12);
  v114 = *(v13 - 8);
  v111 = *(v114 + 64);
  MEMORY[0x28223BE20](v13);
  v112 = &v102 - v14;
  v109 = sub_258B00AA4();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_258B019F4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A3A8CC(0, &qword_27F96EF50, sub_258A3A940, sub_258A3A9CC);
  v106 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v102 - v21;
  sub_258A3A808(0);
  v130 = v23;
  MEMORY[0x28223BE20](v23);
  v110 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A3A784(0);
  v118 = v25;
  v115 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v113 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A3A750(0);
  v123 = v27;
  MEMORY[0x28223BE20](v27);
  v124 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v13;
  aBlock = sub_258A389A4(v13);
  v122 = a3;
  sub_258B02CD4();
  swift_getWitnessTable();
  v121 = a4;
  v133 = sub_258B02C24();

  v29 = *(a2 + 56);
  v131 = a2;
  v132 = a1;
  aBlock = v29(a1);
  v135 = v30;
  sub_2589BFF58(aBlock, v30, v31);
  v32 = sub_258B01B44();
  v34 = v33;
  LOBYTE(a2) = v35;
  sub_258B018F4();
  (*(v17 + 104))(v19, *MEMORY[0x277CE0A10], v16);
  sub_258B01A14();

  (*(v17 + 8))(v19, v16);
  v36 = sub_258B01AE4();
  v38 = v37;
  v40 = v39;
  v129 = v41;

  sub_2589BFFAC(v32, v34, a2 & 1);

  v42 = objc_allocWithZone(MEMORY[0x277D75348]);
  if (v133)
  {
    v138 = sub_258A3888C;
    v139 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v135 = 1107296256;
    v43 = &block_descriptor_7;
  }

  else
  {
    v138 = sub_258A38938;
    v139 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v135 = 1107296256;
    v43 = &block_descriptor_6;
  }

  v136 = sub_258A52B54;
  v137 = v43;
  v44 = _Block_copy(&aBlock);
  [v42 initWithDynamicProvider_];
  _Block_release(v44);

  sub_258B01F94();
  v105 = sub_258B01AA4();
  v104 = v45;
  v47 = v46;
  v103 = v48;

  sub_2589BFFAC(v36, v38, v40 & 1);

  LODWORD(v129) = sub_258B018D4();
  v49 = v107;
  v50 = v116;
  v51 = v131;
  sub_258A38A5C(v116, v107);
  sub_258B00A84();
  v52 = *(v108 + 8);
  v53 = v109;
  v52(v49, v109);
  sub_258B00654();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v47 & 1;
  v141 = v47 & 1;
  v140 = 0;
  LODWORD(v108) = sub_258B01864();
  sub_258A38A5C(v50, v49);
  sub_258B00A84();
  v52(v49, v53);
  sub_258B00654();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v142 = 0;
  v71 = sub_258B024F4();
  v73 = v72;
  v74 = &v22[*(v106 + 36)];
  LOBYTE(v53) = v133 & 1;
  sub_258A3A134(v133 & 1, v74);
  sub_258A3A9CC(0);
  v76 = (v74 + *(v75 + 36));
  *v76 = v71;
  v76[1] = v73;
  v77 = v104;
  *v22 = v105;
  *(v22 + 1) = v77;
  v22[16] = v62;
  *(v22 + 3) = v103;
  v22[32] = v129;
  *(v22 + 5) = v55;
  *(v22 + 6) = v57;
  *(v22 + 7) = v59;
  *(v22 + 8) = v61;
  v22[72] = 0;
  v22[80] = v108;
  *(v22 + 11) = v64;
  *(v22 + 12) = v66;
  *(v22 + 13) = v68;
  *(v22 + 14) = v70;
  v22[120] = 0;
  v78 = v110;
  sub_258A3B0B0(v22, v110);
  v79 = v78 + v130[9];
  *v79 = 0;
  *(v79 + 8) = v53;
  v80 = v114;
  v81 = v112;
  v82 = v50;
  (*(v114 + 16))(v112, v51, v50);
  v83 = v120;
  v84 = v119;
  v85 = v122;
  (*(v120 + 16))(v119, v132, v122);
  v86 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v87 = (v111 + *(v83 + 80) + v86) & ~*(v83 + 80);
  v88 = swift_allocObject();
  v89 = v121;
  *(v88 + 16) = v85;
  *(v88 + 24) = v89;
  (*(v80 + 32))(v88 + v86, v81, v82);
  (*(v83 + 32))(v88 + v87, v84, v85);
  v90 = sub_258A3ABAC();
  v91 = v113;
  v92 = v130;
  sub_258B01C34();

  sub_258A3B21C(v78);
  (*(v131 + 72))(v132);
  aBlock = &unk_2869D4670;
  v93 = sub_258B003E4();
  sub_2589FC8C8(v93);
  sub_258A3B424(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  aBlock = v92;
  v135 = v90;
  swift_getOpaqueTypeConformance2();
  v94 = v124;
  v95 = v118;
  sub_258B01DD4();

  (*(v115 + 8))(v91, v95);
  if (v133)
  {
    v96 = MEMORY[0x277CE01F0];
    sub_258A3B278(0, &qword_27F96EFC8, MEMORY[0x277CE01F0], MEMORY[0x277D84560]);
    v97 = v126;
    v98 = swift_allocObject();
    v98[1] = xmmword_258B2BE60;
    sub_258B01114();
    sub_258B01124();
    aBlock = v98;
    sub_258A3AB10(&qword_27F96EFD0, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    sub_258A3B278(0, &qword_27F96EFD8, v96, MEMORY[0x277D83940]);
    sub_258A3B2DC();
    v99 = v125;
    v100 = v128;
    sub_258B03114();
  }

  else
  {
    v99 = v125;
    sub_258B01124();
    v100 = v128;
    v97 = v126;
  }

  sub_258A3AF1C();
  sub_258B01DB4();
  (*(v97 + 8))(v99, v100);
  return sub_2589AD380(v94);
}

void sub_258A3A134(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_258B02384();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *MEMORY[0x277CE0118];
  v8 = sub_258B010C4();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  v9 = objc_allocWithZone(MEMORY[0x277D75348]);
  if (a1)
  {
    v18 = sub_258A387EC;
    v19 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v10 = &block_descriptor_13;
  }

  else
  {
    v18 = sub_258A38760;
    v19 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v10 = &block_descriptor_10;
  }

  v16 = sub_258A52B54;
  v17 = v10;
  v11 = _Block_copy(&aBlock);
  [v9 initWithDynamicProvider_];
  _Block_release(v11);

  v12 = sub_258B01F94();
  sub_258A3B474(v6, a2);
  sub_258A3AA60(0);
  *(a2 + *(v13 + 52)) = v12;
  *(a2 + *(v13 + 56)) = 256;
}

uint64_t sub_258A3A320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for TagPicker(0, v11, v12, v12);
  v32 = sub_258A389A4(v13);
  sub_258B02CD4();
  swift_getWitnessTable();
  v14 = sub_258B02C24();

  if (v14)
  {
    MEMORY[0x28223BE20](v15);
    *&v27[-32] = a3;
    *&v27[-24] = a4;
    *&v27[-16] = a2;
    v17 = *(a1 + 16);
    v18 = *(a1 + 24);
    v32 = *(a1 + 8);
    v16 = v32;
    v33 = v17;
    v34 = v18;
    v19 = sub_258B02364();

    sub_258B003E4();
    MEMORY[0x259C92900](&v35, v19);
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_258B02DE4();
    v29 = v16;
    v30 = v17;
    v31 = v18;
    v28 = v35;
    sub_258B02314();
  }

  else if (*(a1 + 32) == 1)
  {
    (*(v8 + 16))(v10, a2, a3);
    v21 = *(a1 + 8);
    v22 = *(a1 + 16);
    v23 = *(a1 + 24);
    v32 = v21;
    v33 = v22;
    v34 = v23;
    v24 = sub_258B02364();

    sub_258B003E4();
    MEMORY[0x259C92900](&v35, v24);
    sub_258B02CC4();
    v29 = v21;
    v30 = v22;
    v31 = v23;
    v28 = v35;
    sub_258B02314();
  }

  else
  {
    sub_258A3B364(a3, a3);
    swift_allocObject();
    v25 = sub_258B02C84();
    (*(v8 + 16))(v26, a2, a3);
    return sub_258A38A00(v25, v13);
  }
}

void sub_258A3A6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27F96EF20)
  {
    sub_258A3A6FC(0, a2, a3);
    v3 = sub_258B007B4();
    if (!v4)
    {
      atomic_store(v3, &qword_27F96EF20);
    }
  }
}

unint64_t sub_258A3A6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96EF28;
  if (!qword_27F96EF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EF28);
  }

  return result;
}

void sub_258A3A784(uint64_t a1)
{
  if (!qword_27F96EF40)
  {
    sub_258A3A808(255);
    sub_258A3ABAC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96EF40);
    }
  }
}

void sub_258A3A808(uint64_t a1)
{
  if (!qword_27F96EF48)
  {
    sub_258A3A8CC(255, &qword_27F96EF50, sub_258A3A940, sub_258A3A9CC);
    sub_258A3AB58(255, &qword_27F96CD00, MEMORY[0x277D839B0], MEMORY[0x277D839C8], MEMORY[0x277CE0190]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96EF48);
    }
  }
}

void sub_258A3A8CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A3A940(uint64_t a1)
{
  if (!qword_27F96EF58)
  {
    sub_258A3AB58(255, &qword_27F96DF40, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96EF58);
    }
  }
}

void sub_258A3A9CC(uint64_t a1)
{
  if (!qword_27F96EF60)
  {
    sub_258A3AA60(255);
    sub_258A3AB10(&qword_27F96EF78, sub_258A3AA60, MEMORY[0x277CDF3A0]);
    v1 = sub_258B01294();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96EF60);
    }
  }
}

void sub_258A3AA60(uint64_t a1)
{
  if (!qword_27F96EF68)
  {
    sub_258B02384();
    sub_258A3AB10(&qword_27F96EF70, MEMORY[0x277CE1260], MEMORY[0x277CE1258]);
    v1 = sub_258B00684();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96EF68);
    }
  }
}

uint64_t sub_258A3AB10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258A3AB58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258A3ABAC()
{
  result = qword_27F96EF80;
  if (!qword_27F96EF80)
  {
    sub_258A3A808(255);
    sub_258A3AC2C();
    sub_2589D49FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EF80);
  }

  return result;
}

unint64_t sub_258A3AC2C()
{
  result = qword_27F96EF88;
  if (!qword_27F96EF88)
  {
    sub_258A3A8CC(255, &qword_27F96EF50, sub_258A3A940, sub_258A3A9CC);
    sub_258A3AD0C();
    sub_258A3AB10(&qword_27F96EFA0, sub_258A3A9CC, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EF88);
  }

  return result;
}

unint64_t sub_258A3AD0C()
{
  result = qword_27F96EF90;
  if (!qword_27F96EF90)
  {
    sub_258A3A940(255);
    sub_258A3AD8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EF90);
  }

  return result;
}

unint64_t sub_258A3AD8C()
{
  result = qword_27F96EF98;
  if (!qword_27F96EF98)
  {
    sub_258A3AB58(255, &qword_27F96DF40, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EF98);
  }

  return result;
}

unint64_t sub_258A3AE3C()
{
  result = qword_27F96EFB8;
  if (!qword_27F96EFB8)
  {
    sub_258A3A8CC(255, &qword_27F96EF30, sub_258A3A750, MEMORY[0x277CDE470]);
    sub_258A3AF1C();
    sub_258A3AB10(&qword_280DF8950, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EFB8);
  }

  return result;
}

unint64_t sub_258A3AF1C()
{
  result = qword_27F96EFC0;
  if (!qword_27F96EFC0)
  {
    sub_258A3A750(255);
    sub_258A3A808(255);
    sub_258A3ABAC();
    swift_getOpaqueTypeConformance2();
    sub_258A3AB10(&qword_280DF8950, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EFC0);
  }

  return result;
}

uint64_t sub_258A3AFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for TagPicker(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_258A393E0(a1, v9, v6, v7, a3);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_258A3B0B0(uint64_t a1, uint64_t a2)
{
  sub_258A3A8CC(0, &qword_27F96EF50, sub_258A3A940, sub_258A3A9CC);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A3B144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for TagPicker(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = v4 + ((v8 + *(v7 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80));

  return sub_258A3A320(v4 + v8, v9, v5, v6);
}

uint64_t sub_258A3B21C(uint64_t a1)
{
  sub_258A3A808(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258A3B278(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_258A3B2DC()
{
  result = qword_27F96EFE0;
  if (!qword_27F96EFE0)
  {
    sub_258A3B278(255, &qword_27F96EFD8, MEMORY[0x277CE01F0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EFE0);
  }

  return result;
}

void sub_258A3B364(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {
    sub_258A3B424(0, &qword_27F970720, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  }

  else
  {

    sub_258B03424();
  }
}

void sub_258A3B424(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258A3B474(uint64_t a1, uint64_t a2)
{
  v4 = sub_258B02384();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A3B4D8(uint64_t a1, uint64_t a2)
{
  sub_258A3B278(0, &qword_27F96DE40, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s15LogButtonFooterVMa(uint64_t a1)
{
  result = qword_27F96EFE8;
  if (!qword_27F96EFE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A3B5F8(uint64_t a1)
{
  sub_258A3C6EC(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_258A3C750(319, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_258A3B6EC(uint64_t a1@<X8>)
{
  v96 = a1;
  v94 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
  MEMORY[0x28223BE20](v94);
  v95 = &v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v3 = MEMORY[0x28223BE20](v92);
  v93 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v101 = &v86 - v6;
  MEMORY[0x28223BE20](v5);
  v100 = &v86 - v7;
  v98 = sub_258B01174();
  v8 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s15LogButtonFooterVMa(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  sub_2589D31B8(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A3C44C(0);
  v99 = v19 - 8;
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A3C7A0(0);
  v86 = v22;
  MEMORY[0x28223BE20](v22);
  v87 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A3C7C8(0, &qword_27F96F040, sub_258A3C7A0, MEMORY[0x277CDF928]);
  v89 = v24;
  MEMORY[0x28223BE20](v24);
  v90 = &v86 - v25;
  sub_258A3C82C(0);
  v88 = v26;
  MEMORY[0x28223BE20](v26);
  v91 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v1;
  sub_258A3CB4C(v1, &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), _s15LogButtonFooterVMa);
  v28 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v29 = swift_allocObject();
  sub_258A3C8B8(&v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
  v102 = v1;
  sub_258A3C3F4();
  sub_2589D329C();
  sub_258B02174();
  sub_258B01164();
  sub_258A3D29C(&qword_27F96CF98, sub_2589D31B8, MEMORY[0x277CDF028]);
  sub_258A3D29C(&qword_27F96F020, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  v30 = v98;
  sub_258B01BD4();
  (*(v8 + 8))(v10, v30);
  (*(v16 + 8))(v18, v15);
  sub_258A3C514(0);
  v32 = &v21[*(v31 + 36)];
  v33 = MEMORY[0x277CE0860];
  sub_258A3C6EC(0, &qword_27F96F028, MEMORY[0x277CDDBB8], MEMORY[0x277CE0860]);
  sub_258B00CB4();
  *v32 = swift_getKeyPath();
  v34 = MEMORY[0x277CDF450];
  sub_258A3C550(0, &qword_27F96F008, sub_258A3C514, &qword_27F96F030, MEMORY[0x277CDF450]);
  v36 = &v21[*(v35 + 36)];
  sub_258A3C6EC(0, &qword_27F96F030, v34, v33);
  v38 = *(v37 + 28);
  v39 = *MEMORY[0x277CDF440];
  v40 = sub_258B006C4();
  (*(*(v40 - 8) + 104))(v36 + v38, v39, v40);
  *v36 = swift_getKeyPath();
  v41 = sub_258B01FC4();
  KeyPath = swift_getKeyPath();
  sub_258A3C474(0);
  v44 = &v21[*(v43 + 36)];
  *v44 = KeyPath;
  v44[1] = v41;
  LOBYTE(v41) = sub_258B01884();
  v45 = v100;
  sub_258AC1060(v100);
  sub_258A3CBB4(v45, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B00654();
  v46 = &v21[*(v99 + 44)];
  *v46 = v41;
  *(v46 + 1) = v47;
  *(v46 + 2) = v48;
  *(v46 + 3) = v49;
  *(v46 + 4) = v50;
  v46[40] = 0;
  v51 = sub_258B01894();
  v52 = v101;
  sub_258AC1060(v101);
  sub_258A3CBB4(v52, type metadata accessor for StateOfMindTimeline.Styles);
  v53 = MobileGestalt_get_current_device();
  if (v53)
  {
    v54 = v53;
    MobileGestalt_get_homeButtonType();

    sub_258B00654();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v63 = v87;
    sub_258A3CC14(v21, v87, sub_258A3C44C);
    v64 = v63 + *(v86 + 36);
    *v64 = v51;
    *(v64 + 8) = v56;
    *(v64 + 16) = v58;
    *(v64 + 24) = v60;
    *(v64 + 32) = v62;
    *(v64 + 40) = 0;
    v65 = sub_258B01864();
    v66 = v93;
    sub_258AC1060(v93);
    v67 = v95;
    sub_258A3CB4C(v66 + *(v92 + 48), v95, type metadata accessor for StateOfMindTimeline.Styles.Entry);
    sub_258A3CBB4(v66, type metadata accessor for StateOfMindTimeline.Styles);
    if ((*(v67 + *(v94 + 24)) & 1) != 0 && (sub_258B00A84() & 1) == 0)
    {
      sub_258ABF198();
    }

    sub_258A3CBB4(v67, type metadata accessor for StateOfMindTimeline.Styles.Entry);
    sub_258B00654();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v76 = v90;
    sub_258A3CC14(v63, v90, sub_258A3C7A0);
    v77 = v76 + *(v89 + 36);
    *v77 = v65;
    *(v77 + 8) = v69;
    *(v77 + 16) = v71;
    *(v77 + 24) = v73;
    *(v77 + 32) = v75;
    *(v77 + 40) = 0;
    sub_258B01874();
    v110 = 0u;
    v111 = 0u;
    v112 = 1;
    v78 = v91;
    sub_258B01544();
    sub_2589ADF40(v76, v78);
    sub_258B024F4();
    sub_258B00C94();
    v79 = v96;
    sub_258A3CC14(v78, v96, sub_258A3C82C);
    sub_258A3C7C8(0, &qword_27F96F050, sub_258A3C82C, MEMORY[0x277CDFC70]);
    v81 = (v79 + *(v80 + 36));
    v82 = v108;
    v81[4] = v107;
    v81[5] = v82;
    v81[6] = v109;
    v84 = v104;
    v83 = v105;
    *v81 = v103;
    v81[1] = v84;
    v85 = v106;
    v81[2] = v83;
    v81[3] = v85;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258A3C184(uint64_t a1)
{
  _s15LogButtonFooterVMa(0);
  sub_258A3C750(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  return sub_258B02314();
}

__n128 sub_258A3C210@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StateOfMindTimeline.Styles(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  *&v18 = sub_258AFFD94();
  *(&v18 + 1) = v5;
  sub_2589BFF58(v18, v5, v6);
  v7 = sub_258B01B44();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_258AC1060(v4);
  sub_258A3CBB4(v4, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00C94();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  v14 = v23;
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 128) = v24;
  v15 = v19;
  *(a1 + 32) = v18;
  *(a1 + 48) = v15;
  result = v21;
  *(a1 + 64) = v20;
  *(a1 + 80) = result;
  return result;
}

void sub_258A3C3F4()
{
  if (!qword_27F96CF28)
  {
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CF28);
    }
  }
}

void sub_258A3C474(uint64_t a1)
{
  if (!qword_27F96F000)
  {
    sub_258A3C550(255, &qword_27F96F008, sub_258A3C514, &qword_27F96F030, MEMORY[0x277CDF450]);
    sub_2589D3448(255);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F000);
    }
  }
}

void sub_258A3C550(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258A3C6EC(255, a4, a5, MEMORY[0x277CE0860]);
    v8 = sub_258B00B04();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_258A3C5E8(uint64_t a1)
{
  if (!qword_27F96F018)
  {
    sub_2589D31B8(255);
    sub_258B01174();
    sub_258A3D29C(&qword_27F96CF98, sub_2589D31B8, MEMORY[0x277CDF028]);
    sub_258A3D29C(&qword_27F96F020, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F018);
    }
  }
}

void sub_258A3C6EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A3C750(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_258A3C7C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_258B00B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258A3C82C(uint64_t a1)
{
  if (!qword_27F96F048)
  {
    sub_258A3C7C8(255, &qword_27F96F040, sub_258A3C7A0, MEMORY[0x277CDF928]);
    sub_258B01554();
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F048);
    }
  }
}

uint64_t sub_258A3C8B8(uint64_t a1, uint64_t a2)
{
  v4 = _s15LogButtonFooterVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A3C91C()
{
  v1 = *(_s15LogButtonFooterVMa(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_258A3C184(v2);
}

uint64_t sub_258A3C984@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258B00F54();
  *a1 = result;
  return result;
}

uint64_t sub_258A3CA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_258A3CB4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A3CBB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A3CC14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_258A3CC7C()
{
  result = qword_27F96F058;
  if (!qword_27F96F058)
  {
    sub_258A3C7C8(255, &qword_27F96F050, sub_258A3C82C, MEMORY[0x277CDFC70]);
    sub_258A3CD20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F058);
  }

  return result;
}

unint64_t sub_258A3CD20()
{
  result = qword_27F96F060;
  if (!qword_27F96F060)
  {
    sub_258A3C82C(255);
    sub_258A3CDD0();
    sub_258A3D29C(&qword_27F96CB68, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F060);
  }

  return result;
}

unint64_t sub_258A3CDD0()
{
  result = qword_27F96F068;
  if (!qword_27F96F068)
  {
    sub_258A3C7C8(255, &qword_27F96F040, sub_258A3C7A0, MEMORY[0x277CDF928]);
    sub_258A3CED8(&qword_27F96F070, sub_258A3C7A0, sub_258A3CEA4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F068);
  }

  return result;
}

uint64_t sub_258A3CED8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258A3CF5C()
{
  result = qword_27F96F080;
  if (!qword_27F96F080)
  {
    sub_258A3C474(255);
    sub_258A3D00C();
    sub_258A3D29C(&qword_27F96CF60, sub_2589D3448, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F080);
  }

  return result;
}

unint64_t sub_258A3D00C()
{
  result = qword_27F96F088;
  if (!qword_27F96F088)
  {
    v1 = MEMORY[0x277CDF450];
    sub_258A3C550(255, &qword_27F96F008, sub_258A3C514, &qword_27F96F030, MEMORY[0x277CDF450]);
    sub_258A3D0E4();
    sub_258A3D238(&qword_27F96F0A0, &qword_27F96F030, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F088);
  }

  return result;
}

unint64_t sub_258A3D0E4()
{
  result = qword_27F96F090;
  if (!qword_27F96F090)
  {
    sub_258A3C514(255);
    sub_2589D31B8(255);
    sub_258B01174();
    sub_258A3D29C(&qword_27F96CF98, sub_2589D31B8, MEMORY[0x277CDF028]);
    sub_258A3D29C(&qword_27F96F020, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
    swift_getOpaqueTypeConformance2();
    sub_258A3D238(&qword_27F96F098, &qword_27F96F028, MEMORY[0x277CDDBB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F090);
  }

  return result;
}

uint64_t sub_258A3D238(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_258A3C6EC(255, a2, a3, MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258A3D29C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_258A3DBE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateOfMindChartViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_258A3DC44()
{
  v1 = v0;
  swift_getObjectType();
  sub_258A3F11C(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_258B00084();
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_258B00384();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00364();
  v12 = sub_258B00374();
  v13 = sub_258B02EA4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v39 = v5;
    v15 = v14;
    v16 = swift_slowAlloc();
    v40 = v4;
    v17 = v16;
    v42[0] = v16;
    *v15 = 136446210;
    v18 = sub_258B035A4();
    v20 = sub_2589F1F78(v18, v19, v42);
    v38 = v8;
    v21 = v20;

    *(v15 + 4) = v21;
    _os_log_impl(&dword_2589A1000, v12, v13, "[%{public}s] Tapped on current value view date", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v22 = v17;
    v4 = v40;
    MEMORY[0x259C945C0](v22, -1, -1);
    v23 = v15;
    v5 = v39;
    MEMORY[0x259C945C0](v23, -1, -1);

    (*(v9 + 8))(v11, v38);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v24 = [v1 healthStore];
  v25 = [v1 primaryGraphViewController];
  v26 = [v25 graphView];

  v27 = [v26 effectiveVisibleRangeCadence];
  v28 = [v27 minValue];

  if (v28)
  {
    v42[0] = v28;
    v29 = swift_dynamicCast();
    v30 = v41;
    (*(v41 + 56))(v4, v29 ^ 1u, 1, v5);
    if ((*(v30 + 48))(v4, 1, v5) != 1)
    {
      (*(v30 + 32))(v7, v4, v5);
      goto LABEL_10;
    }
  }

  else
  {
    v30 = v41;
    (*(v41 + 56))(v4, 1, 1, v5);
  }

  sub_258B00074();
  if ((*(v30 + 48))(v4, 1, v5) != 1)
  {
    sub_258A3F1DC(v4, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  }

LABEL_10:
  v31 = [v1 traitCollection];
  v32 = [v31 verticalSizeClass];

  v33 = objc_allocWithZone(type metadata accessor for StateOfMindCalendarViewController(0));
  v34 = sub_258ADCEE8(v24, v7, v32);

  v35 = &v34[qword_27F97AC38];
  swift_beginAccess();
  *(v35 + 1) = &off_2869D81A0;
  swift_unknownObjectWeakAssign();
  v36 = [objc_allocWithZone(MEMORY[0x277D12970]) initWithRootViewController_];
  [v1 presentViewController:v36 animated:1 completion:0];
}

id sub_258A3E184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v31 = a7;
  v32 = a3;
  v34 = a5;
  v35 = a6;
  v33 = a4;
  v30 = a2;
  sub_258A3F11C(0, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - v15;
  v17 = MEMORY[0x277CC9578];
  sub_258A3F11C(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v30 - v19;
  sub_258A3F170(a8, &v30 - v19, &qword_27F96EBF0, v17);
  v21 = sub_258B00084();
  v22 = *(v21 - 8);
  v23 = 0;
  if ((*(v22 + 48))(v20, 1, v21) != 1)
  {
    v23 = sub_258B00014();
    (*(v22 + 8))(v20, v21);
  }

  sub_258A3F170(a9, v16, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  v24 = sub_258B00224();
  v25 = *(v24 - 8);
  v26 = 0;
  if ((*(v25 + 48))(v16, 1, v24) != 1)
  {
    v26 = sub_258B00194();
    (*(v25 + 8))(v16, v24);
  }

  v27 = type metadata accessor for StateOfMindChartViewController();
  v36.receiver = v11;
  v36.super_class = v27;
  v28 = objc_msgSendSuper2(&v36, sel_initWithHealthStore_primaryDisplayType_unitPreferenceController_dateCache_chartDataCacheController_selectedTimeScopeController_sampleTypeDateRangeController_initialXValue_currentCalendarOverride_options_, a1, v30, v32, v33, v34, v35, v31, v23, v26, a10);

  sub_258A3F1DC(a9, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  sub_258A3F1DC(a8, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  return v28;
}

id sub_258A3E484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v32 = a8;
  v33 = a7;
  v36 = a5;
  v37 = a6;
  v34 = a3;
  v35 = a4;
  v31 = a2;
  sub_258A3F11C(0, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - v14;
  v16 = MEMORY[0x277CC9578];
  sub_258A3F11C(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v30 - v18;
  sub_2589F4488(0, &qword_27F96F0B0, 0x277CCABB0);
  sub_2589F4488(0, &qword_27F96F0B8, 0x277D12B30);
  sub_258A3EFA0();
  v20 = sub_258B029E4();

  sub_258A3F170(a9, v19, &qword_27F96EBF0, v16);
  v21 = sub_258B00084();
  v22 = *(v21 - 8);
  v23 = 0;
  if ((*(v22 + 48))(v19, 1, v21) != 1)
  {
    v23 = sub_258B00014();
    (*(v22 + 8))(v19, v21);
  }

  sub_258A3F170(a10, v15, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  v24 = sub_258B00224();
  v25 = *(v24 - 8);
  v26 = 0;
  if ((*(v25 + 48))(v15, 1, v24) != 1)
  {
    v26 = sub_258B00194();
    (*(v25 + 8))(v15, v24);
  }

  v27 = type metadata accessor for StateOfMindChartViewController();
  v38.receiver = v12;
  v38.super_class = v27;
  v28 = objc_msgSendSuper2(&v38, sel_initWithTimeScopeRanges_healthStore_primaryDisplayType_unitPreferenceController_dateCache_chartDataCacheController_selectedTimeScopeController_sampleTypeDateRangeController_initialXValue_currentCalendarOverride_options_, v20, v31, v34, v35, v36, v37, v33, v32, v23, v26, a11);

  sub_258A3F1DC(a10, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  sub_258A3F1DC(a9, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  return v28;
}

id sub_258A3E7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v33 = a2;
  v34 = a8;
  v35 = a7;
  v37 = a5;
  v38 = a6;
  v36 = a4;
  sub_258A3F11C(0, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v32 - v15;
  sub_258A3EF38(0);
  v17 = sub_258B02C64();

  if (a3)
  {
    sub_2589F4488(0, &qword_27F96F0C8, 0x277D12908);
    v18 = sub_258B02C64();
  }

  else
  {
    v18 = 0;
  }

  v39 = a10;
  sub_258A3F008(a10, v41);
  v19 = v42;
  if (v42)
  {
    v20 = __swift_project_boxed_opaque_existential_1Tm(v41, v42);
    v21 = *(v19 - 8);
    MEMORY[0x28223BE20](v20);
    v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v23);
    v24 = sub_258B03444();
    (*(v21 + 8))(v23, v19);
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    v24 = 0;
  }

  sub_258A3F170(a11, v16, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  v25 = sub_258B00224();
  v26 = *(v25 - 8);
  v27 = 0;
  if ((*(v26 + 48))(v16, 1, v25) != 1)
  {
    v27 = sub_258B00194();
    (*(v26 + 8))(v16, v25);
  }

  if (a13)
  {
    sub_2589F4488(0, &qword_27F96F0B0, 0x277CCABB0);
    sub_2589F4488(0, &qword_27F96F0B8, 0x277D12B30);
    sub_258A3EFA0();
    v28 = sub_258B029E4();
  }

  else
  {
    v28 = 0;
  }

  v29 = type metadata accessor for StateOfMindChartViewController();
  v40.receiver = v32;
  v40.super_class = v29;
  v30 = objc_msgSendSuper2(&v40, sel_initWithStackedDisplayTypes_primaryDisplayTypeStackIndex_stackedDisplayTypeHeights_healthStore_unitPreferenceController_dateCache_chartDataCacheController_selectedTimeScopeController_sampleTypeDateRangeController_initialXValue_currentCalendarOverride_options_timeScopeRanges_, v17, v33, v18, v36, v37, v38, v35, v34, a9, v24, v27, a12, v28);

  swift_unknownObjectRelease();
  sub_258A3F1DC(a11, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  sub_258A3F0C0(v39);
  return v30;
}

id sub_258A3EBAC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_258B00084();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_258B00384();
  v8 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00364();
  (*(v5 + 16))(v7, a1, v4);
  v11 = sub_258B00374();
  v12 = sub_258B02EA4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = a1;
    v14 = v13;
    v27 = swift_slowAlloc();
    v31 = v27;
    *v14 = 136446466;
    v15 = sub_258B035A4();
    v17 = sub_2589F1F78(v15, v16, &v31);
    ObjectType = v1;
    v18 = v17;

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    sub_258A3EEE0();
    v19 = sub_258B03414();
    v21 = v20;
    (*(v5 + 8))(v7, v4);
    v22 = sub_2589F1F78(v19, v21, &v31);
    v2 = ObjectType;

    *(v14 + 14) = v22;
    _os_log_impl(&dword_2589A1000, v11, v12, "[%{public}s] Scrolling to date: %{public}s", v14, 0x16u);
    v23 = v27;
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v23, -1, -1);
    MEMORY[0x259C945C0](v14, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  (*(v8 + 8))(v10, v30);
  v24 = sub_258B00014();
  [v2 scrollToDate:v24 withVisibleAlignment:3];

  return [v2 dismissViewControllerAnimated:1 completion:0];
}

unint64_t sub_258A3EEE0()
{
  result = qword_27F96D970;
  if (!qword_27F96D970)
  {
    sub_258B00084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D970);
  }

  return result;
}

void sub_258A3EF38(uint64_t a1)
{
  if (!qword_27F96D878)
  {
    sub_2589F4488(255, &qword_27F96D870, 0x277D12830);
    v1 = sub_258B02CD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D878);
    }
  }
}

unint64_t sub_258A3EFA0()
{
  result = qword_27F96F0C0;
  if (!qword_27F96F0C0)
  {
    sub_2589F4488(255, &qword_27F96F0B0, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F0C0);
  }

  return result;
}

uint64_t sub_258A3F008(uint64_t a1, uint64_t a2)
{
  sub_258A3F06C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_258A3F06C()
{
  if (!qword_27F9713B0)
  {
    v0 = sub_258B030C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9713B0);
    }
  }
}

uint64_t sub_258A3F0C0(uint64_t a1)
{
  sub_258A3F06C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258A3F11C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B030C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258A3F170(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_258A3F11C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_258A3F1DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_258A3F11C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_258A3F24C(uint64_t a1)
{
  if (!qword_27F96F0D0)
  {
    sub_258B00084();
    sub_258A41FD0(&qword_27F96F0D8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v1 = sub_258B02A84();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F0D0);
    }
  }
}

uint64_t type metadata accessor for MomentaryDatePickerFullView(uint64_t a1)
{
  result = qword_27F96F0E0;
  if (!qword_27F96F0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A3F340(uint64_t a1)
{
  sub_258A3F24C(319);
  if (v1 <= 0x3F)
  {
    sub_258A427D4(319, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_258A427D4(319, &qword_27F96E968, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_258A427D4(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_258A427D4(319, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_258A427D4(319, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_258A3F530@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A427D4(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MomentaryDatePickerFullView(0);
  sub_2589EE78C(v1 + *(v10 + 32), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_258B008A4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_258B02E94();
    v13 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_258A3F744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_258B013D4();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v60 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_258B00FB4();
  v5 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A41B54(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A41A84(0);
  v50 = v12;
  v48 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A41984(0);
  v54 = v15;
  v51 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A41804(0);
  v56 = v18;
  v52 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v49 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A4164C(0);
  v57 = *(v20 - 8);
  v58 = v20;
  MEMORY[0x28223BE20](v20);
  v53 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  v64 = a1;
  sub_258A41BD4(0);
  sub_258A420F4();
  sub_258B01A74();
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v65 = sub_258AFFD94();
  v66 = v22;
  v23 = sub_258A41FD0(&qword_27F96F170, sub_258A41B54, MEMORY[0x277CDE5A0]);
  v26 = sub_2589BFF58(v23, v24, v25);
  v27 = MEMORY[0x277D837D0];
  sub_258B01CB4();

  (*(v9 + 8))(v11, v8);
  v28 = v47;
  v29 = v55;
  (*(v5 + 104))(v47, *MEMORY[0x277CDDDC0], v55);
  v65 = v8;
  v66 = v27;
  v67 = v23;
  v68 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v50;
  sub_258B01E24();
  (*(v5 + 8))(v28, v29);
  v32 = (*(v48 + 8))(v14, v31);
  MEMORY[0x28223BE20](v32);
  sub_258A427D4(0, &qword_27F96F178, sub_258A421A4, MEMORY[0x277CDDF58]);
  v34 = v33;
  v65 = v31;
  v66 = OpaqueTypeConformance2;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = sub_258A423D8();
  v37 = v49;
  v38 = v54;
  sub_258B01EE4();
  (*(v51 + 8))(v17, v38);
  v65 = v38;
  v66 = v34;
  v67 = v35;
  v68 = v36;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = v53;
  v41 = v56;
  sub_258B01E04();
  (*(v52 + 8))(v37, v41);
  v42 = v60;
  sub_258B013C4();
  v65 = v41;
  v66 = v39;
  swift_getOpaqueTypeConformance2();
  v43 = v58;
  v44 = v63;
  sub_258B01F24();
  (*(v62 + 8))(v42, v44);
  return (*(v57 + 8))(v40, v43);
}

void sub_258A3FED4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_258B01004();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_258A42D74(0);
  sub_258A404AC(a1, (a2 + *(v4 + 44)));
  v5 = [objc_opt_self() labelColor];
  v6 = sub_258B01F94();
  sub_258A41BD4(0);
  *(a2 + *(v7 + 36)) = v6;
}

uint64_t sub_258A3FF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  sub_258A421A4(0);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A0A48C(0);
  v6 = *(v5 - 8);
  v38 = v5;
  v39 = v6;
  MEMORY[0x28223BE20](v5);
  v34 = sub_258A0A48C;
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A42284(0, &qword_27F96E038, sub_258A0A48C, &qword_27F96E048, sub_258A0A48C);
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x28223BE20](v8);
  v33 = &v33 - v9;
  v10 = sub_258B01384();
  MEMORY[0x28223BE20](v10 - 8);
  sub_258A42338(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A42284(0, &qword_27F96F188, sub_258A42338, &qword_27F96F198, sub_258A42338);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - v19;
  sub_258B01324();
  v44 = a1;
  sub_258B026D4();
  sub_258A41FD0(&qword_27F96CBA0, MEMORY[0x277D126A0], MEMORY[0x277D12690]);
  sub_258B00784();
  v21 = MEMORY[0x277CDD7A8];
  v22 = sub_258A41FD0(&qword_27F96F198, sub_258A42338, MEMORY[0x277CDD7A8]);
  MEMORY[0x259C91A00](v15, v12, v22);
  (*(v13 + 8))(v15, v12);
  sub_258B01334();
  v43 = a1;
  sub_258B026B4();
  sub_258A41FD0(&qword_27F96D6D8, MEMORY[0x277D12688], MEMORY[0x277D12678]);
  v23 = v35;
  sub_258B00784();
  v24 = sub_258A41FD0(&qword_27F96E048, v34, v21);
  v25 = v33;
  v26 = v38;
  MEMORY[0x259C91A00](v23, v38, v24);
  (*(v39 + 8))(v23, v26);
  v27 = v40;
  v28 = *(v41 + 48);
  (*(v18 + 16))(v40, v20, v17);
  v29 = v36;
  v30 = &v27[v28];
  v31 = v37;
  (*(v36 + 16))(v30, v25, v37);
  sub_258B011B4();
  (*(v29 + 8))(v25, v31);
  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_258A404AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v32 = a1;
  sub_258A41D6C(0);
  v34 = v2;
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v37 = sub_258AFFD94();
  v38 = v8;
  sub_2589BFF58(v37, v8, v9);
  v10 = sub_258B01B44();
  v12 = v11;
  v14 = v13;
  LODWORD(v37) = sub_258B014A4();
  v15 = sub_258B01AB4();
  v30 = v16;
  v18 = v17;
  v35 = v19;
  sub_2589BFFAC(v10, v12, v14 & 1);

  sub_258A40770(v7);
  LOBYTE(v37) = v18 & 1;
  v36 = 1;
  v20 = *(v3 + 16);
  v22 = v33;
  v21 = v34;
  v20(v33, v7, v34);
  v23 = v37;
  v24 = v30;
  v25 = v31;
  *v31 = v15;
  v25[1] = v24;
  *(v25 + 16) = v23;
  v26 = v36;
  v25[3] = v35;
  v25[4] = 0;
  *(v25 + 40) = v26;
  sub_258A41CFC(0);
  v20(v25 + *(v27 + 64), v22, v21);
  sub_2589E36D4(v15, v24, v23);
  v28 = *(v3 + 8);
  sub_258B003E4();
  v28(v7, v21);
  v28(v22, v21);
  sub_2589BFFAC(v15, v24, v37);
}

uint64_t sub_258A40770@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_258B01484();
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  MEMORY[0x28223BE20](v1);
  v31 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_258B012D4();
  MEMORY[0x28223BE20](v4 - 8);
  v30 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A3F24C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v27 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CC9578];
  sub_258A427D4(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  MEMORY[0x28223BE20](v9 - 8);
  sub_258A420A0(0, &qword_27F96E9D8, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDD660]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - v13;
  sub_258A41E9C(0);
  v16 = *(v15 - 8);
  v28 = v15;
  v29 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B01084();
  v26[0] = v19;
  type metadata accessor for MomentaryDatePickerFullView(0);
  sub_258A427D4(0, &qword_27F96E968, v8, MEMORY[0x277CE10B8]);
  v20 = v26[1];
  sub_258B02144();
  sub_258A42E0C(v20, v27, sub_258A3F24C);
  sub_258B012C4();
  sub_258B00644();
  v21 = sub_258A41F4C();
  sub_258B01C24();
  (*(v12 + 8))(v14, v11);
  v22 = v31;
  sub_258B01474();
  v35 = v11;
  v36 = v21;
  swift_getOpaqueTypeConformance2();
  sub_258A41FD0(&qword_27F96F150, MEMORY[0x277CDE150], MEMORY[0x277CDE148]);
  v23 = v28;
  v24 = v32;
  sub_258B01C74();
  (*(v33 + 8))(v22, v24);
  return (*(v29 + 8))(v18, v23);
}

uint64_t sub_258A40BFC(uint64_t a1)
{
  v2 = sub_258B00F84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A427D4(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = sub_258B008A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MomentaryDatePickerFullView(0);
  sub_2589EE78C(a1 + *(v13 + 32), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_258B02E94();
    v14 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_258B00894();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_258A40E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = type metadata accessor for MomentaryDatePickerFullView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_258A42E0C(a1, &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MomentaryDatePickerFullView);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  sub_258A42838(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  return a4(a3, v11);
}

uint64_t sub_258A40FB0()
{
  v13 = sub_258B008A4();
  v0 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_258B00084();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  type metadata accessor for MomentaryDatePickerFullView(0);
  v10 = MEMORY[0x277CC9578];
  sub_258A427D4(0, &qword_27F96E968, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
  sub_258B02124();
  (*(v4 + 16))(v7, v9, v3);
  sub_258A427D4(0, &qword_27F96EA60, v10, MEMORY[0x277CE11F8]);
  sub_258B02314();
  (*(v4 + 8))(v9, v3);
  sub_258A3F530(v2);
  sub_258B00894();
  return (*(v0 + 8))(v2, v13);
}

void sub_258A41200(uint64_t a1@<X8>)
{
  sub_258A41444(0);
  sub_258A4164C(255);
  sub_258B013D4();
  sub_258A41804(255);
  sub_258A41984(255);
  sub_258A427D4(255, &qword_27F96F178, sub_258A421A4, MEMORY[0x277CDDF58]);
  sub_258A41A84(255);
  sub_258A41B54(255);
  v2 = sub_258A41FD0(&qword_27F96F170, sub_258A41B54, MEMORY[0x277CDE5A0]);
  sub_2589BFF58(v2, v3, v4);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_258A423D8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_258B00B24();
  KeyPath = swift_getKeyPath();
  sub_258A42460(0);
  v7 = (a1 + *(v6 + 36));
  *v7 = KeyPath;
  v7[1] = 0;
}

void sub_258A41444(uint64_t a1)
{
  if (!qword_27F96F0F0)
  {
    sub_258A4164C(255);
    sub_258B013D4();
    sub_258A41804(255);
    sub_258A41984(255);
    sub_258A427D4(255, &qword_27F96F178, sub_258A421A4, MEMORY[0x277CDDF58]);
    sub_258A41A84(255);
    sub_258A41B54(255);
    v1 = sub_258A41FD0(&qword_27F96F170, sub_258A41B54, MEMORY[0x277CDE5A0]);
    sub_2589BFF58(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258A423D8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F0F0);
    }
  }
}

void sub_258A4164C(uint64_t a1)
{
  if (!qword_27F96F0F8)
  {
    sub_258A41804(255);
    sub_258A41984(255);
    sub_258A427D4(255, &qword_27F96F178, sub_258A421A4, MEMORY[0x277CDDF58]);
    sub_258A41A84(255);
    sub_258A41B54(255);
    v1 = sub_258A41FD0(&qword_27F96F170, sub_258A41B54, MEMORY[0x277CDE5A0]);
    sub_2589BFF58(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258A423D8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F0F8);
    }
  }
}

void sub_258A41804(uint64_t a1)
{
  if (!qword_27F96F100)
  {
    sub_258A41984(255);
    sub_258A427D4(255, &qword_27F96F178, sub_258A421A4, MEMORY[0x277CDDF58]);
    sub_258A41A84(255);
    sub_258A41B54(255);
    v1 = sub_258A41FD0(&qword_27F96F170, sub_258A41B54, MEMORY[0x277CDE5A0]);
    sub_2589BFF58(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258A423D8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F100);
    }
  }
}

void sub_258A41984(uint64_t a1)
{
  if (!qword_27F96F108)
  {
    sub_258A41A84(255);
    sub_258A41B54(255);
    v5 = sub_258A41FD0(&qword_27F96F170, sub_258A41B54, MEMORY[0x277CDE5A0]);
    sub_2589BFF58(v5, v1, v2);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F108);
    }
  }
}

void sub_258A41A84(uint64_t a1)
{
  if (!qword_27F96F110)
  {
    sub_258A41B54(255);
    v1 = sub_258A41FD0(&qword_27F96F170, sub_258A41B54, MEMORY[0x277CDE5A0]);
    sub_2589BFF58(v1, v2, v3);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F110);
    }
  }
}

void sub_258A41B54(uint64_t a1)
{
  if (!qword_27F96F118)
  {
    sub_258A41BD4(255);
    sub_258A420F4();
    v1 = sub_258B01A84();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F118);
    }
  }
}

void sub_258A41BD4(uint64_t a1)
{
  if (!qword_27F96F120)
  {
    sub_258A41C68(255);
    sub_258A420A0(255, &qword_27F96C860, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F120);
    }
  }
}

void sub_258A41C68(uint64_t a1)
{
  if (!qword_27F96F128)
  {
    sub_258A427D4(255, &qword_27F96F130, sub_258A41CFC, MEMORY[0x277CE14B8]);
    sub_258A42018();
    v1 = sub_258B021D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F128);
    }
  }
}

void sub_258A41CFC(uint64_t a1)
{
  if (!qword_27F96F138)
  {
    sub_258A41D6C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F96F138);
    }
  }
}

void sub_258A41D6C(uint64_t a1)
{
  if (!qword_27F96F140)
  {
    sub_258A41E9C(255);
    sub_258B01484();
    sub_258A420A0(255, &qword_27F96E9D8, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDD660]);
    sub_258A41F4C();
    swift_getOpaqueTypeConformance2();
    sub_258A41FD0(&qword_27F96F150, MEMORY[0x277CDE150], MEMORY[0x277CDE148]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F140);
    }
  }
}

void sub_258A41E9C(uint64_t a1)
{
  if (!qword_27F96F148)
  {
    sub_258A420A0(255, &qword_27F96E9D8, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDD660]);
    sub_258A41F4C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F148);
    }
  }
}

unint64_t sub_258A41F4C()
{
  result = qword_27F96E9E0;
  if (!qword_27F96E9E0)
  {
    sub_258A420A0(255, &qword_27F96E9D8, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDD660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E9E0);
  }

  return result;
}

uint64_t sub_258A41FD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_258A42018()
{
  result = qword_27F96F158;
  if (!qword_27F96F158)
  {
    sub_258A427D4(255, &qword_27F96F130, sub_258A41CFC, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F158);
  }

  return result;
}

void sub_258A420A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258A420F4()
{
  result = qword_27F96F160;
  if (!qword_27F96F160)
  {
    sub_258A41BD4(255);
    sub_258A41FD0(&qword_27F96F168, sub_258A41C68, MEMORY[0x277CE1138]);
    sub_2589C02DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F160);
  }

  return result;
}

void sub_258A421A4(uint64_t a1)
{
  if (!qword_27F96F180)
  {
    sub_258A42284(255, &qword_27F96F188, sub_258A42338, &qword_27F96F198, sub_258A42338);
    sub_258A42284(255, &qword_27F96E038, sub_258A0A48C, &qword_27F96E048, sub_258A0A48C);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96F180);
    }
  }
}

void sub_258A42284(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258A41FD0(a4, a5, MEMORY[0x277CDD7A8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_258A42338(uint64_t a1)
{
  if (!qword_27F96F190)
  {
    sub_258B026D4();
    sub_258A41FD0(&qword_27F96CBA0, MEMORY[0x277D126A0], MEMORY[0x277D12690]);
    v1 = sub_258B00794();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F190);
    }
  }
}

unint64_t sub_258A423D8()
{
  result = qword_27F96F1A0;
  if (!qword_27F96F1A0)
  {
    sub_258A427D4(255, &qword_27F96F178, sub_258A421A4, MEMORY[0x277CDDF58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F1A0);
  }

  return result;
}

void sub_258A42460(uint64_t a1)
{
  if (!qword_27F96F1A8)
  {
    sub_258A424F8();
    sub_258A427D4(255, &qword_27F96CF48, sub_2589D5EAC, MEMORY[0x277CE0860]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F1A8);
    }
  }
}

void sub_258A424F8()
{
  if (!qword_27F96F1B0)
  {
    sub_258B00A14();
    sub_258A41444(255);
    sub_258A4164C(255);
    sub_258B013D4();
    sub_258A41804(255);
    sub_258A41984(255);
    sub_258A427D4(255, &qword_27F96F178, sub_258A421A4, MEMORY[0x277CDDF58]);
    sub_258A41A84(255);
    sub_258A41B54(255);
    v0 = sub_258A41FD0(&qword_27F96F170, sub_258A41B54, MEMORY[0x277CDE5A0]);
    sub_2589BFF58(v0, v1, v2);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258A423D8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v3 = sub_258B00B34();
    if (!v4)
    {
      atomic_store(v3, &qword_27F96F1B0);
    }
  }
}

void sub_258A427D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A42838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MomentaryDatePickerFullView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_8()
{
  v1 = type metadata accessor for MomentaryDatePickerFullView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = sub_258B00084();
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  sub_258A3F24C(0);
  v4(v2 + *(v5 + 36), v3);
  v6 = v2 + v1[5];

  v7 = MEMORY[0x277CC9578];
  sub_258A427D4(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  v4(v6 + *(v8 + 32), v3);
  v4(v2 + v1[6], v3);
  sub_258A427D4(0, &qword_27F96E968, v7, MEMORY[0x277CE10B8]);

  v9 = v1[7];
  sub_258A427D4(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_258B006A4();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  v11 = v1[8];
  sub_258A427D4(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_258B008A4();
    (*(*(v12 - 8) + 8))(v2 + v11, v12);
  }

  else
  {
  }

  v13 = v2 + v1[9];
  sub_258A427D4(0, &qword_27F96D7C8, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_258B01504();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v13, 1, v14))
    {
      (*(v15 + 8))(v13, v14);
    }

    v16 = *(type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs(0) + 20);
    v17 = sub_258B00AA4();
    (*(*(v17 - 8) + 8))(v13 + v16, v17);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_258A42D00(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MomentaryDatePickerFullView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_258A42D74(uint64_t a1)
{
  if (!qword_27F96F1B8)
  {
    sub_258A427D4(255, &qword_27F96F130, sub_258A41CFC, MEMORY[0x277CE14B8]);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F1B8);
    }
  }
}

uint64_t sub_258A42E0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_258A42E74()
{
  result = qword_27F96F1C0;
  if (!qword_27F96F1C0)
  {
    sub_258A42460(255);
    sub_258A41FD0(&qword_27F96F1C8, sub_258A424F8, MEMORY[0x277CDDA18]);
    sub_2589D6238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F1C0);
  }

  return result;
}

uint64_t NotificationSOMSettingsView.init(settingsModel:navigationTitleText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  result = swift_allocObject();
  *(result + 16) = a1;
  *a4 = sub_258A35EA8;
  *(a4 + 8) = result;
  *(a4 + 16) = 0;
  return result;
}

uint64_t NotificationSOMSettingsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_258B013D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A432C0(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A434AC(0);
  v12 = *(v11 - 8);
  v24 = v11;
  v25 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1[1];
  v33 = *v1;
  *v34 = v15;
  *&v34[16] = *(v1 + 4);
  v27 = &v33;
  sub_258A43370(0, &qword_27F96ED98, sub_258A363F4, MEMORY[0x277D83D88]);
  sub_258A433D4();
  sub_258B01A74();
  sub_258B013C4();
  v16 = sub_258A43898(&qword_27F96F1F0, sub_258A432C0, MEMORY[0x277CDE5A0]);
  v17 = MEMORY[0x277CDE0D0];
  sub_258B01F24();
  (*(v3 + 8))(v5, v2);
  (*(v8 + 8))(v10, v7);
  v32 = *&v34[8];
  v28 = v7;
  v29 = v2;
  v30 = v16;
  v31 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2589BFF58(OpaqueTypeConformance2, v19, v20);
  v21 = v24;
  sub_258B01CB4();
  return (*(v25 + 8))(v14, v21);
}

void sub_258A432C0(uint64_t a1)
{
  if (!qword_27F96F1D0)
  {
    sub_258A43370(255, &qword_27F96ED98, sub_258A363F4, MEMORY[0x277D83D88]);
    sub_258A433D4();
    v1 = sub_258B01A84();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F1D0);
    }
  }
}

void sub_258A43370(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_258A433D4()
{
  result = qword_27F96F1D8;
  if (!qword_27F96F1D8)
  {
    sub_258A43370(255, &qword_27F96ED98, sub_258A363F4, MEMORY[0x277D83D88]);
    sub_258A43898(&qword_27F96F1E0, sub_258A363F4, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F1D8);
  }

  return result;
}

void sub_258A434AC(uint64_t a1)
{
  if (!qword_27F96F1E8)
  {
    sub_258A432C0(255);
    sub_258B013D4();
    sub_258A43898(&qword_27F96F1F0, sub_258A432C0, MEMORY[0x277CDE5A0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F1E8);
    }
  }
}

void sub_258A43580(uint64_t a2@<X8>)
{
  v3 = [objc_opt_self() sharedBehavior];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 isiPad];

    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0uLL;
      v9 = 0uLL;
      v10 = 0uLL;
      v11 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
    }

    else
    {
      type metadata accessor for NotificationSettingsModel(0);
      sub_258A43898(&qword_27F96D308, type metadata accessor for NotificationSettingsModel, &protocol conformance descriptor for NotificationSettingsModel);
      sub_258B00744();
      sub_258A5B958(&v25);
      v14 = sub_258B00744();
      v15 = NotificationSettingsModel.shouldShowMindfulnessSettingsButton()();

      v6 = 0;
      v7 = 0;
      if (v15)
      {
        if (qword_27F96C240 != -1)
        {
          swift_once();
        }

        v6 = sub_258AFFD94();
        v7 = v16;
      }

      v23[0] = v25;
      v23[1] = v26;
      v23[2] = v27;
      v23[3] = v28;
      v23[4] = v29;
      v23[5] = v30;
      v21 = v26;
      v22 = v25;
      v19 = v28;
      v20 = v27;
      v17 = v30;
      v18 = v29;
      sub_258A36BA0(v23, v24);
      v24[2] = v27;
      v24[3] = v28;
      v24[4] = v29;
      v24[5] = v30;
      v24[0] = v25;
      v24[1] = v26;
      sub_258A36BFC(v24);
      v13 = v17;
      v12 = v18;
      v11 = v19;
      v10 = v20;
      v9 = v21;
      v8 = v22;
    }

    *a2 = v8;
    *(a2 + 16) = v9;
    *(a2 + 32) = v10;
    *(a2 + 48) = v11;
    *(a2 + 64) = v12;
    *(a2 + 80) = v13;
    *(a2 + 96) = v6;
    *(a2 + 104) = v7;
  }

  else
  {
    __break(1u);
  }
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

uint64_t sub_258A437F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258A43840(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_258A43898(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258A438E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_258A43BEC(a1, a2, a3);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t StateOfMindTimelinePresentationContext.hashValue.getter()
{
  v1 = *v0;
  sub_258B03514();
  MEMORY[0x259C93B20](v1);
  return sub_258B03554();
}

void *EnvironmentValues.stateOfMindTimelinePresentationContext.getter(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_258A43A20(x0_0, a2, a3);

  return sub_258B00F94();
}

unint64_t sub_258A43A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96F1F8;
  if (!qword_27F96F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F1F8);
  }

  return result;
}

void *sub_258A43A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  sub_258A43A20(a1, a2, a3);
  result = sub_258B00F94();
  *a4 = v6;
  return result;
}

uint64_t (*EnvironmentValues.stateOfMindTimelinePresentationContext.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *a1 = v3;
  a1[1] = sub_258A43A20(a1, a2, a3);
  sub_258B00F94();
  return sub_258A43BB0;
}

unint64_t sub_258A43BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96F200;
  if (!qword_27F96F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F200);
  }

  return result;
}

uint64_t sub_258A43C60()
{
  sub_258B00E34();
  type metadata accessor for AssociationSelectionPhaseSpecs(0);
  return sub_258B00D84();
}

uint64_t type metadata accessor for AssociationSelectionPhaseSpecs(uint64_t a1)
{
  result = qword_27F96F208;
  if (!qword_27F96F208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void StateOfMindTimeline.Styles.Entry.viewHeight.getter()
{
  v0 = [objc_opt_self() sharedBehavior];
  if (v0)
  {
    v1 = v0;
    [v0 isiPad];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258A43D88@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v3 = a1 + v2[18];
  sub_258B00E34();
  v4 = *(_s6StylesV15LogButtonFooterVMa(0) + 20);
  v5 = sub_258B00D84();
  sub_258A43A20(v5, v6, v7);
  sub_258B00F94();
  v35 = a1 + v2[12];
  v36 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
  v34 = v36[7];
  sub_258B00D14();
  v8 = sub_258B01504();
  (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  sub_258A44DA8(v3, a1);
  v9 = v2[5];
  v10 = sub_258B00AA4();
  v11 = *(*(v10 - 8) + 16);
  v11(a1 + v9, v3 + v4, v10);
  *(a1 + v2[6]) = v37;
  v12 = v2[7];
  v13 = sub_258B006A4();
  (*(*(v13 - 8) + 16))(a1 + v12, v35 + v34, v13);
  v14 = a1 + v2[8];
  sub_258A2AECC(v3, v14);
  v15 = _s6StylesV8TimelineVMa(0);
  v11(v14 + *(v15 + 20), v3 + v4, v10);
  v16 = a1 + v2[9];
  sub_258A2AECC(v3, v16);
  v17 = _s6StylesV6NoDataVMa(0);
  v11(v16 + *(v17 + 20), v3 + v4, v10);
  *(v16 + *(v17 + 24)) = v37;
  v18 = a1 + v2[10];
  sub_258A2AECC(v3, v18);
  v19 = _s6StylesV11PlaceholderVMa(0);
  v33 = v4;
  v11(v18 + *(v19 + 20), v3 + v4, v10);
  v20 = a1 + v2[11];
  sub_258A2AECC(v3, v20);
  v21 = _s6StylesV6SymbolVMa(0);
  v11(v20 + *(v21 + 20), v3 + v4, v10);
  sub_258A2AECC(v3, v35);
  v11(v35 + v36[5], v3 + v4, v10);
  *(v35 + v36[6]) = v37;
  v22 = a1 + v2[13];
  sub_258A2AECC(v3, v22);
  v23 = _s6StylesV5EmptyVMa(0);
  v11(v22 + *(v23 + 20), v3 + v33, v10);
  *(v22 + *(v23 + 24)) = v37;
  v24 = a1 + v2[14];
  sub_258A2AECC(v3, v24);
  v25 = _s6StylesV5DailyVMa(0);
  v11(v24 + *(v25 + 20), v3 + v33, v10);
  *(v24 + *(v25 + 24)) = v37;
  v26 = a1 + v2[15];
  sub_258A2AECC(v3, v26);
  v27 = _s6StylesV9MomentaryVMa(0);
  v11(v26 + *(v27 + 20), v3 + v33, v10);
  v28 = a1 + v2[16];
  sub_258A2AECC(v3, v28);
  v29 = _s6StylesV6HeaderVMa(0);
  v11(v28 + *(v29 + 20), v3 + v33, v10);
  v30 = a1 + v2[17];
  sub_258A2AECC(v3, v30);
  v31 = _s6StylesV11ChartButtonVMa(0);
  return (v11)(v30 + *(v31 + 20), v3 + v33, v10);
}

void static StateOfMindTimeline.Styles.Entry.estimatedViewHeight.getter()
{
  v0 = [objc_opt_self() sharedBehavior];
  if (v0)
  {
    v1 = v0;
    [v0 isiPad];
  }

  else
  {
    __break(1u);
  }
}

void sub_258A443E4(uint64_t a1)
{
  sub_258A07454(319);
  if (v1 <= 0x3F)
  {
    sub_258B00AA4();
    if (v2 <= 0x3F)
    {
      sub_258B006A4();
      if (v3 <= 0x3F)
      {
        _s6StylesV8TimelineVMa(319);
        if (v4 <= 0x3F)
        {
          _s6StylesV6NoDataVMa(319);
          if (v5 <= 0x3F)
          {
            _s6StylesV11PlaceholderVMa(319);
            if (v6 <= 0x3F)
            {
              _s6StylesV6SymbolVMa(319);
              if (v7 <= 0x3F)
              {
                type metadata accessor for StateOfMindTimeline.Styles.Entry(319);
                if (v8 <= 0x3F)
                {
                  _s6StylesV5EmptyVMa(319);
                  if (v9 <= 0x3F)
                  {
                    _s6StylesV5DailyVMa(319);
                    if (v10 <= 0x3F)
                    {
                      _s6StylesV9MomentaryVMa(319);
                      if (v11 <= 0x3F)
                      {
                        _s6StylesV6HeaderVMa(319);
                        if (v12 <= 0x3F)
                        {
                          _s6StylesV11ChartButtonVMa(319);
                          if (v13 <= 0x3F)
                          {
                            _s6StylesV15LogButtonFooterVMa(319);
                            if (v14 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_258A445B8(uint64_t a1)
{
  sub_258A07454(319);
  if (v1 <= 0x3F)
  {
    sub_258B00AA4();
    if (v2 <= 0x3F)
    {
      sub_258B006A4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_54Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A07454(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_258B00AA4();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return v14 - 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t __swift_store_extra_inhabitant_index_55Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A07454(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_258B00AA4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_258A449D4(uint64_t a1)
{
  sub_258A07454(319);
  if (v1 <= 0x3F)
  {
    sub_258B00AA4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_18Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A07454(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_258B00AA4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t __swift_store_extra_inhabitant_index_19Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A07454(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_258B00AA4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_258A44C74()
{
  v0 = [objc_opt_self() systemGroupedBackgroundColor];

  return sub_258B01F94();
}

id sub_258A44CB8(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  if ([a1 userInterfaceStyle] != 2)
  {
    v9 = a4;
    if (!a4)
    {
      v9 = a5;
    }

    v12 = a4;
    a3 = a5;
    if ([a1 accessibilityContrast] != 1)
    {
      goto LABEL_5;
    }

    return v9;
  }

  v9 = a2;
  if (!a2)
  {
    v9 = a3;
  }

  v10 = a2;
  if ([a1 accessibilityContrast] == 1)
  {
    return v9;
  }

LABEL_5:

  return a3;
}

uint64_t sub_258A44DA8(uint64_t a1, uint64_t a2)
{
  sub_258A07454(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for LabelsSelectionPhaseContent(uint64_t a1)
{
  result = qword_27F96F2D8;
  if (!qword_27F96F2D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A44E88(uint64_t a1)
{
  sub_258A1E3AC(319);
  if (v1 <= 0x3F)
  {
    sub_258A4597C(319, &qword_27F96F2E8, sub_258A1E3AC, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_2589C0D10();
      if (v3 <= 0x3F)
      {
        sub_258A4597C(319, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

id sub_258A44FD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  sub_258A458E8(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v66 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v60 - v6;
  v60 = type metadata accessor for AssociationSelectionPhaseSpecs(0);
  v8 = MEMORY[0x28223BE20](v60);
  v67 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v60 - v10;
  v12 = type metadata accessor for ValenceSelectionSummary(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A0B920(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A0B900(0);
  v62 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v64 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v61 = &v60 - v24;
  MEMORY[0x28223BE20](v23);
  v63 = &v60 - v25;
  v26 = *a1;
  v27 = *(a1 + 40);
  *&v15[*(v13 + 40)] = swift_getKeyPath();
  v28 = MEMORY[0x277CDF458];
  sub_258A4597C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *v15 = v26;
  *(v15 + 1) = MEMORY[0x277D84F90];
  v15[16] = v27;
  v29 = *(v13 + 36);
  *&v15[v29] = swift_getKeyPath();
  sub_258A4597C(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, v28);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v28) = sub_258B01894();
  type metadata accessor for LabelsSelectionPhaseContent(0);
  sub_258AC1B28(v11);
  sub_258A45AAC(v11, type metadata accessor for AssociationSelectionPhaseSpecs);
  sub_258B00654();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_258A0BA00(v15, v19, type metadata accessor for ValenceSelectionSummary);
  v38 = &v19[*(v17 + 44)];
  *v38 = v28;
  v39 = v67;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  v40 = sub_258B01884();
  sub_258AC1B28(v39);
  if (v27 == 1)
  {
    goto LABEL_5;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v42 = result;
    homeButtonType = MobileGestalt_get_homeButtonType();

    if (homeButtonType == 2)
    {
      sub_258B00A84();
      sub_258A45AAC(v39, type metadata accessor for AssociationSelectionPhaseSpecs);
LABEL_6:
      sub_258B00654();
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v52 = v61;
      sub_258A0BA00(v19, v61, sub_258A0B920);
      v53 = v63;
      v54 = v52 + *(v62 + 36);
      *v54 = v40;
      *(v54 + 8) = v45;
      *(v54 + 16) = v47;
      *(v54 + 24) = v49;
      *(v54 + 32) = v51;
      *(v54 + 40) = 0;
      sub_258A0BA00(v52, v53, sub_258A0B900);
      *v7 = sub_258B011A4();
      *(v7 + 1) = 0;
      v7[16] = 0;
      sub_258A459E0(0, &qword_27F96F318, type metadata accessor for LabelsPicker);
      sub_258A455C4(a1, &v7[*(v55 + 44)]);
      v56 = v64;
      sub_258A45A44(v53, v64, sub_258A0B900);
      v57 = v66;
      sub_258A45A44(v7, v66, sub_258A458E8);
      v58 = v65;
      sub_258A45A44(v56, v65, sub_258A0B900);
      sub_258A45878(0);
      sub_258A45A44(v57, v58 + *(v59 + 48), sub_258A458E8);
      sub_258A45AAC(v7, sub_258A458E8);
      sub_258A45AAC(v53, sub_258A0B900);
      sub_258A45AAC(v57, sub_258A458E8);
      return sub_258A45AAC(v56, sub_258A0B900);
    }

LABEL_5:
    sub_258A45AAC(v39, type metadata accessor for AssociationSelectionPhaseSpecs);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_258A455C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v20 = a1[2];
  v21 = *(a1 + 3);
  sub_258A4597C(0, &qword_27F96F2E8, sub_258A1E3AC, MEMORY[0x277CE11F8]);
  v6 = v5;
  sub_258B02334();
  v7 = v19[0];
  v8 = v19[1];
  v9 = v19[2];
  v10 = type metadata accessor for LabelsPicker(0);
  v11 = v10[7];
  *(a2 + v11) = swift_getKeyPath();
  v12 = MEMORY[0x277CDF458];
  sub_258A4597C(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v13 = v10[8];
  *(a2 + v13) = swift_getKeyPath();
  sub_258A4597C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], v12);
  swift_storeEnumTagMultiPayload();
  v14 = a2 + v10[10];
  LOBYTE(v19[0]) = 0;
  sub_258B02114();
  v15 = v21;
  *v14 = v20;
  *(v14 + 1) = v15;
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  v20 = v7;
  *&v21 = v8;
  *(&v21 + 1) = v9;

  sub_258B003E4();
  sub_258B003E4();
  MEMORY[0x259C92900](v19, v6);
  v16 = sub_258AF1378(v4, v19[0]);

  v18 = (a2 + v10[9]);
  *v18 = v16;
  v18[1] = 0;
  return result;
}

id sub_258A457E4@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_258B01194();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_258A459E0(0, &qword_27F96F2F0, sub_258A45844);
  return sub_258A44FD0(v2, a2 + *(v4 + 44));
}

void sub_258A45878(uint64_t a1)
{
  if (!qword_27F96F300)
  {
    sub_258A0B900(255);
    sub_258A458E8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96F300);
    }
  }
}

void sub_258A458E8(uint64_t a1)
{
  if (!qword_27F96F308)
  {
    type metadata accessor for LabelsPicker(255);
    sub_258A45BA0(&qword_27F96F310, type metadata accessor for LabelsPicker, &unk_258B35294);
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F308);
    }
  }
}

void sub_258A4597C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A459E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00974();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258A45A44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A45AAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A45B0C(uint64_t a1)
{
  if (!qword_27F96F328)
  {
    sub_258A45844(255);
    sub_258A45BA0(&qword_27F96F330, sub_258A45844, MEMORY[0x277CE14C0]);
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F328);
    }
  }
}

uint64_t sub_258A45BA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ReflectiveIntervalSelectionPhase_iOS(uint64_t a1)
{
  result = qword_27F96F340;
  if (!qword_27F96F340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A45C5C(uint64_t a1)
{
  sub_2589E3D24(319);
  if (v1 <= 0x3F)
  {
    sub_258A48AF0(319, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_2589C0D10();
      if (v3 <= 0x3F)
      {
        sub_258A48A8C(319, &qword_27F96F338, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_258A48A8C(319, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_258A48A8C(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_258A48A8C(319, &qword_27F96F350, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_258A48A8C(319, &qword_27F96E968, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
                if (v8 <= 0x3F)
                {
                  sub_258A48AF0(319, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_258A45EE0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v47 = a2;
  v7 = sub_258B006A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A83F18(21, a4);
  v12 = v11;
  sub_258A48AF0(0, &qword_27F96F388, MEMORY[0x277CE1318], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B302A0;
  v14 = *(v8 + 16);
  v14(v10, a1, v7);
  *(inited + 32) = sub_258A9BA58(1, v10);
  v14(v10, a1, v7);
  *(inited + 40) = sub_258A9BA58(2, v10);
  v14(v10, a1, v7);
  *(inited + 48) = sub_258A9BA58(3, v10);
  v14(v10, a1, v7);
  *(inited + 56) = sub_258A9BA58(4, v10);
  v14(v10, a1, v7);
  *(inited + 64) = sub_258A9BA58(5, v10);
  v14(v10, a1, v7);
  *(inited + 72) = sub_258A9BA58(6, v10);
  v14(v10, a1, v7);
  *(inited + 80) = sub_258A9BA58(7, v10);
  v61 = MEMORY[0x277D84F90];
  sub_258AA91CC(0, 7, 0);
  v15 = v61;
  v17 = *(v61 + 16);
  v16 = *(v61 + 24);
  v18 = v16 >> 1;
  v19 = v17 + 1;
  if (v16 >> 1 <= v17)
  {
    sub_258AA91CC((v16 > 1), v17 + 1, 1);
    v15 = v61;
    v16 = *(v61 + 24);
    v18 = v16 >> 1;
  }

  *(v15 + 16) = v19;
  *(v15 + 8 * v17 + 32) = 0;
  if (v18 < (v17 + 2))
  {
    sub_258AA91CC((v16 > 1), v17 + 2, 1);
    v15 = v61;
  }

  *(v15 + 16) = v17 + 2;
  *(v15 + 8 * v19 + 32) = 0x3FC5604189374BC6;
  v21 = *(v15 + 16);
  v20 = *(v15 + 24);
  v22 = v21 + 1;
  if (v21 >= v20 >> 1)
  {
    sub_258AA91CC((v20 > 1), v21 + 1, 1);
  }

  v23 = v61;
  *(v61 + 16) = v22;
  *(v23 + 8 * v21 + 32) = 0x3FD55810624DD2F2;
  v24 = *(v23 + 24);
  if ((v21 + 2) > (v24 >> 1))
  {
    sub_258AA91CC((v24 > 1), v21 + 2, 1);
    v23 = v61;
  }

  *(v23 + 16) = v21 + 2;
  *(v23 + 8 * v22 + 32) = 0x3FE0000000000000;
  v26 = *(v23 + 16);
  v25 = *(v23 + 24);
  v27 = v25 >> 1;
  v28 = v26 + 1;
  if (v25 >> 1 <= v26)
  {
    sub_258AA91CC((v25 > 1), v26 + 1, 1);
    v23 = v61;
    v25 = *(v61 + 24);
    v27 = v25 >> 1;
  }

  *(v23 + 16) = v28;
  *(v23 + 8 * v26 + 32) = 0x3FE553F7CED91687;
  if (v27 < (v26 + 2))
  {
    sub_258AA91CC((v25 > 1), v26 + 2, 1);
  }

  v29 = v61;
  *(v61 + 16) = v26 + 2;
  *(v29 + 8 * v28 + 32) = 0x3FEAA7EF9DB22D0ELL;
  v31 = *(v29 + 16);
  v30 = *(v29 + 24);
  if (v31 >= v30 >> 1)
  {
    sub_258AA91CC((v30 > 1), v31 + 1, 1);
    v29 = v61;
  }

  *(v29 + 16) = v31 + 1;
  *(v29 + 8 * v31 + 32) = 0x3FF0000000000000;
  v32 = sub_258A9BE00(inited, v29, (v12 + 1.0) * 0.5);

  swift_setDeallocating();
  swift_arrayDestroy();
  v47(v32);

  sub_258B025C4();
  sub_258B025D4();
  sub_258B009F4();
  v33 = sub_258B024F4();
  v35 = v34;
  v36 = sub_258B00B44();
  v37 = sub_258B01874();
  v38 = v62;
  v40 = v63;
  v39 = v64;
  v50 = v62;
  v51 = v63;
  *&v52 = v64;
  *(&v52 + 1) = v36;
  LOBYTE(v53) = v37;
  *(&v53 + 1) = v33;
  v54 = v35;
  sub_258A48B40(v48, a3, sub_258A483B8);
  sub_258A48BA8(0);
  v42 = a3 + *(v41 + 36);
  v43 = v53;
  *(v42 + 32) = v52;
  *(v42 + 48) = v43;
  *(v42 + 64) = v54;
  v44 = v51;
  *v42 = v50;
  *(v42 + 16) = v44;
  v55[0] = v38;
  v55[1] = v40;
  v56 = v39;
  v57 = v36;
  v58 = v37;
  v59 = v33;
  v60 = v35;
  sub_258A48B40(&v50, &v49, sub_258A005F0);
  return sub_258A48C64(v55, sub_258A005F0);
}

uint64_t sub_258A464C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v57 = sub_258B006A4();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs(0);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for ReflectiveIntervalSelectionPhase_iOS(0);
  v6 = *(v58 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v58);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A4826C(0);
  v10 = v9;
  MEMORY[0x28223BE20](v9);
  v12 = (v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A483E0(0, &qword_27F96F368, sub_258A4826C, &type metadata for OnFirstAppear);
  v48 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v46 - v14;
  sub_258A48300(0);
  v49 = v16;
  MEMORY[0x28223BE20](v16);
  v50 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A483B8(0);
  v51 = v18;
  MEMORY[0x28223BE20](v18);
  v52 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0uLL;
  v21 = 0uLL;
  v22 = 0uLL;
  v23 = 0uLL;
  v24 = 0uLL;
  if (*(v1 + 33) == 1)
  {
    sub_258A46B78(v62);
    v20 = v62[0];
    v21 = v62[1];
    v22 = v62[2];
    v23 = v62[3];
    v24 = v62[4];
  }

  *v12 = v20;
  v12[1] = v21;
  v12[2] = v22;
  v12[3] = v23;
  v12[4] = v24;
  sub_258A46D9C(v12 + *(v10 + 36));
  v25 = *(v10 + 40);
  *(v12->n128_u64 + v25) = swift_getKeyPath();
  sub_258A48A8C(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_258A48B40(v2, v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReflectiveIntervalSelectionPhase_iOS);
  v26 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v46[1] = *(v6 + 80);
  v27 = swift_allocObject();
  v47 = type metadata accessor for ReflectiveIntervalSelectionPhase_iOS;
  sub_258A4845C(v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for ReflectiveIntervalSelectionPhase_iOS);
  v59 = 0;
  sub_258B02114();
  v28 = v60;
  v46[2] = v7;
  v29 = v61;
  sub_258A4845C(v12, v15, sub_258A4826C);
  v30 = &v15[*(v48 + 36)];
  *v30 = sub_258A48444;
  *(v30 + 1) = v27;
  v30[16] = v28;
  *(v30 + 3) = v29;
  v31 = v58;
  v32 = v53;
  sub_258AC1BC4(v53);
  sub_258A48C64(v32, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  v33 = sub_258B02544();
  v34 = v2 + *(v31 + 52);
  v35 = *v34;
  v36 = *(v34 + 8);
  v60 = v35;
  v61 = v36;
  sub_258A48AF0(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02124();
  LOBYTE(v32) = v59;
  v37 = v50;
  sub_258A484C4(v15, v50);
  v38 = v37 + *(v49 + 36);
  *v38 = v33;
  *(v38 + 8) = v32;
  sub_258A48B40(v2, v8, type metadata accessor for ReflectiveIntervalSelectionPhase_iOS);
  v39 = swift_allocObject();
  v40 = v47;
  sub_258A4845C(v8, v39 + v26, v47);
  v41 = v52;
  sub_258A4845C(v37, v52, sub_258A48300);
  v42 = (v41 + *(v51 + 36));
  *v42 = sub_258A4891C;
  v42[1] = v39;
  v42[2] = 0;
  v42[3] = 0;
  v43 = v54;
  sub_258AC14E8(v54);
  sub_258A48B40(v2, v8, type metadata accessor for ReflectiveIntervalSelectionPhase_iOS);
  v44 = swift_allocObject();
  sub_258A4845C(v8, v44 + v26, v40);
  sub_258A45EE0(v43, sub_258A489A8, v56, 0.0);
  (*(v55 + 8))(v43, v57);
  sub_258A48C64(v41, sub_258A483B8);
}

__n128 sub_258A46B78@<Q0>(__n128 *a1@<X8>)
{
  v3 = type metadata accessor for ReflectiveIntervalSelectionPhase_iOS(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v6 = sub_258AFFD94();
  v8 = v7;
  sub_258A48B40(v1, v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReflectiveIntervalSelectionPhase_iOS);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_258A4845C(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ReflectiveIntervalSelectionPhase_iOS);
  v14[1] = 0;
  v15 = 0;
  sub_258A48AF0(0, &qword_27F96D9F0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
  sub_258B02354();
  result = v16;
  v12 = v17;
  v13 = v18;
  a1->n128_u64[0] = v6;
  a1->n128_u64[1] = v8;
  a1[1] = result;
  a1[2].n128_u64[0] = v12;
  a1[2].n128_u8[8] = v13;
  a1[3].n128_u64[0] = 0x747475427478654ELL;
  a1[3].n128_u64[1] = 0xEA00000000006E6FLL;
  a1[4].n128_u64[0] = sub_258A48A0C;
  a1[4].n128_u64[1] = v10;
  return result;
}

double sub_258A46D9C@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ReflectiveIntervalSelectionPhase_iOS(0);
  v4 = v3 - 8;
  v20 = *(v3 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v25 = *(v1 + *(v4 + 52));
  v6 = MEMORY[0x277CE10B8];
  sub_258A48A8C(0, &qword_27F96F350, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE10B8]);
  sub_258B02144();
  *v22 = v23;
  v21 = v24;
  v7 = type metadata accessor for ReflectiveIntervalsSelectionPhaseContent(0);
  sub_258A48A8C(0, &qword_27F96E968, MEMORY[0x277CC9578], v6);
  sub_258B02144();
  v8 = v1 + *(v4 + 60);
  v9 = *v8;
  v10 = *(v8 + 8);
  LOBYTE(v25) = v9;
  *(&v25 + 1) = v10;
  sub_258A48AF0(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02144();
  v11 = v23;
  v19 = v24;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v12 = v23;
  sub_258A48B40(v1, &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ReflectiveIntervalSelectionPhase_iOS);
  v13 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v14 = swift_allocObject();
  sub_258A4845C(&v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13, type metadata accessor for ReflectiveIntervalSelectionPhase_iOS);
  *(a1 + v7[9]) = swift_getKeyPath();
  sub_258A48A8C(0, &qword_27F96D7C8, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  result = v22[0];
  *a1 = *v22;
  *(a1 + 16) = v21;
  v16 = a1 + v7[6];
  *v16 = v11;
  *(v16 + 16) = v19;
  *(a1 + v7[7]) = v12;
  v17 = (a1 + v7[8]);
  *v17 = sub_258A49040;
  v17[1] = v14;
  return result;
}

uint64_t sub_258A470C4(uint64_t a1)
{
  v2 = sub_258B00084();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v9 = v13;
  v13 = *(a1 + *(type metadata accessor for ReflectiveIntervalSelectionPhase_iOS(0) + 44));
  v12[1] = v9;
  v10 = MEMORY[0x277CE10B8];
  sub_258A48A8C(0, &qword_27F96F350, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE10B8]);
  sub_258B02134();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  (*(v3 + 16))(v6, v8, v2);
  sub_258A48A8C(0, &qword_27F96E968, MEMORY[0x277CC9578], v10);
  sub_258B02134();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_258A47310()
{
  type metadata accessor for ReflectiveIntervalSelectionPhase_iOS(0);
  v0 = MEMORY[0x277D839B0];
  sub_258A48AF0(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02134();
  sub_258A48AF0(0, &qword_27F971C90, v0, MEMORY[0x277CE11F8]);
  return sub_258B02314();
}

void *sub_258A473F4(void *a1)
{
  v2 = sub_258B006A4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  type metadata accessor for ReflectiveIntervalSelectionPhase_iOS(0);
  sub_258AC14E8(v8);
  (*(v3 + 104))(v6, *MEMORY[0x277CDF3C0], v2);
  v9 = sub_258B00694();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  if (v9)
  {
    v11 = a1[2];
    if (v11)
    {
      v29 = MEMORY[0x277D84F90];
      sub_258AA92CC(0, v11, 0);
      v12 = v29;

      sub_258B02024();
      v13 = sub_258B02464();
      v15 = v14;

      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_258AA92CC((v16 > 1), v17 + 1, 1);
        v12 = v29;
      }

      *(v12 + 16) = v17 + 1;
      v18 = v12 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v19 = v11 - 1;
      if (v11 != 1)
      {
        v21 = 16 * v17;
        v22 = v17 + 2;
        v23 = a1 + 7;
        do
        {
          v24 = *(v23 - 1);
          v25 = *v23;
          v26 = *(v12 + 24);
          v29 = v12;

          if (v22 - 1 >= v26 >> 1)
          {
            sub_258AA92CC((v26 > 1), v22, 1);
            v12 = v29;
          }

          *(v12 + 16) = v22;
          v27 = v12 + v21;
          *(v27 + 48) = v24;
          *(v27 + 56) = v25;
          v21 += 16;
          ++v22;
          v23 += 2;
          --v19;
        }

        while (v19);
      }
    }

    return sub_258B02474();
  }

  else
  {
    sub_258B003E4();
  }

  return a1;
}

void *sub_258A4768C()
{
  v1 = v0;
  v2 = sub_258B02624();
  v79 = *(v2 - 8);
  v80 = v2;
  MEMORY[0x28223BE20](v2);
  v77 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_258B02654();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ReflectiveIntervalSelectionPhase_iOS(0);
  v69 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v70 = v6;
  v71 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs(0);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_258B02614();
  v68 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v67 = (&v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_258B02674();
  v73 = *(v11 - 8);
  v74 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v65 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v72 = &v57 - v14;
  v60 = sub_258B00224();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_258B00084();
  v63 = *(v64 - 8);
  v16 = MEMORY[0x28223BE20](v64);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v61 = &v57 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v57 - v22;
  MEMORY[0x28223BE20](v21);
  v62 = &v57 - v24;
  v25 = *(v0 + 16);
  v26 = *(v0 + 24);
  v27 = *(v0 + 32);
  aBlock = v25;
  v82 = v26;
  LOBYTE(v83) = v27;
  sub_258A48AF0(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  result = MEMORY[0x259C92900](&v87);
  if ((v87 & 1) == 0)
  {
    v57 = v9;
    aBlock = v25;
    v82 = v26;
    LOBYTE(v83) = v27;
    LOBYTE(v87) = 1;
    sub_258B02314();
    v29 = (v0 + *(v5 + 44));
    v31 = v29[1];
    aBlock = *v29;
    v30 = aBlock;
    v82 = v31;
    sub_258A48A8C(0, &qword_27F96F350, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE10B8]);

    sub_258B02124();
    v32 = v87;
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = v32;
    sub_258B00574();
    aBlock = v30;
    v82 = v31;
    sub_258B02124();
    if (v87 == 2)
    {
      v33 = v5;

      v38 = v58;
      sub_258AC1BF8(v58);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_258B00564();

      if (sub_258B00124())
      {
        (*(v59 + 8))(v38, v60);
        v36 = v63;
        v35 = v61;
        v37 = v64;
        (*(v63 + 32))(v61, v18, v64);
      }

      else
      {
        v35 = v61;
        sub_258AB2424(v18, v61);
        v36 = v63;
        v37 = v64;
        (*(v63 + 8))(v18, v64);
        (*(v59 + 8))(v38, v60);
      }

      v34 = v57;
      swift_getKeyPath();
      swift_getKeyPath();
      (*(v36 + 16))(v62, v35, v37);
    }

    else
    {
      v33 = v5;
      v34 = v57;
      if (v87 != 1)
      {
LABEL_10:
        sub_2589F4488(0, &qword_27F96F380, 0x277D75780);
        [swift_getObjCClassFromMetadata() setAnimationsEnabled_];
        v39 = v0 + *(v33 + 52);
        v40 = *v39;
        v41 = *(v39 + 8);
        LOBYTE(aBlock) = v40;
        v82 = v41;
        LOBYTE(v87) = 0;
        sub_258A48AF0(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        sub_258B02134();
        sub_2589F4488(0, &qword_280DF8F98, 0x277D85C78);
        v64 = sub_258B02F54();
        v42 = v65;
        sub_258B02664();
        v43 = v66;
        sub_258AC1BC4(v66);
        sub_258A48C64(v43, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
        v45 = v67;
        v44 = v68;
        *v67 = 400;
        (*(v44 + 104))(v45, *MEMORY[0x277D85178], v34);
        v46 = v72;
        MEMORY[0x259C92C80](v42, v45);
        (*(v44 + 8))(v45, v34);
        v47 = v74;
        v48 = *(v73 + 8);
        v48(v42, v74);
        v49 = v71;
        sub_258A48B40(v1, v71, type metadata accessor for ReflectiveIntervalSelectionPhase_iOS);
        v50 = (*(v69 + 80) + 16) & ~*(v69 + 80);
        v51 = swift_allocObject();
        sub_258A4845C(v49, v51 + v50, type metadata accessor for ReflectiveIntervalSelectionPhase_iOS);
        v85 = sub_258A48A10;
        v86 = v51;
        aBlock = MEMORY[0x277D85DD0];
        v82 = 1107296256;
        v83 = sub_2589E92FC;
        v84 = &block_descriptor_7;
        v52 = _Block_copy(&aBlock);

        v53 = v75;
        sub_258B02644();
        aBlock = MEMORY[0x277D84F90];
        sub_258A48FF8(&unk_27F96EBD0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        sub_258A48A8C(0, &qword_27F96D780, MEMORY[0x277D85198], MEMORY[0x277D83940]);
        sub_258A31190();
        v54 = v77;
        v55 = v80;
        sub_258B03114();
        v56 = v64;
        MEMORY[0x259C93530](v46, v53, v54, v52);
        _Block_release(v52);

        (*(v79 + 8))(v54, v55);
        (*(v76 + 8))(v53, v78);
        return (v48)(v46, v47);
      }

      sub_258A48A8C(0, &qword_27F96E968, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);

      v35 = v62;
      sub_258B02124();
      swift_getKeyPath();
      swift_getKeyPath();
      v36 = v63;
      v37 = v64;
      (*(v63 + 16))(v23, v35, v64);
    }

    sub_258B00574();
    (*(v36 + 8))(v35, v37);
    goto LABEL_10;
  }

  return result;
}

void sub_258A4826C(uint64_t a1)
{
  if (!qword_27F96F358)
  {
    v2 = type metadata accessor for ReflectiveIntervalsSelectionPhaseContent(255);
    v3 = sub_258A48FF8(&qword_27F96F360, type metadata accessor for ReflectiveIntervalsSelectionPhaseContent, &unk_258B2F65C);
    v5 = type metadata accessor for StateOfMindEntryPhase_iOS(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27F96F358);
    }
  }
}

void sub_258A48300(uint64_t a1)
{
  if (!qword_27F96F370)
  {
    sub_258A483E0(255, &qword_27F96F368, sub_258A4826C, &type metadata for OnFirstAppear);
    sub_258A48C10(255, &qword_27F96CD00, MEMORY[0x277D839B0], MEMORY[0x277D839C8], MEMORY[0x277CE0190]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F370);
    }
  }
}

void sub_258A483E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_258B00B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_258A4845C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A484C4(uint64_t a1, uint64_t a2)
{
  sub_258A483E0(0, &qword_27F96F368, sub_258A4826C, &type metadata for OnFirstAppear);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_9()
{
  v1 = type metadata accessor for ReflectiveIntervalSelectionPhase_iOS(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[8];
  sub_258A48A8C(0, &qword_27F96D7C0, MEMORY[0x277CC99E8], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_258B00224();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + v1[9];
  sub_258A48A8C(0, &qword_27F96D7C8, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_258B01504();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v5, 1, v6))
    {
      (*(v7 + 8))(v5, v6);
    }

    v8 = *(type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs(0) + 20);
    v9 = sub_258B00AA4();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[10];
  sub_258A48A8C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_258B006A4();
    (*(*(v11 - 8) + 8))(v2 + v10, v11);
  }

  else
  {
  }

  v12 = v2 + v1[12];
  v13 = sub_258B00084();
  (*(*(v13 - 8) + 8))(v12, v13);
  sub_258A48A8C(0, &qword_27F96E968, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);

  return swift_deallocObject();
}

uint64_t sub_258A48934(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ReflectiveIntervalSelectionPhase_iOS(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_258A48A8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A48AF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258A48B40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258A48BA8(uint64_t a1)
{
  if (!qword_27F96F390)
  {
    sub_258A483B8(255);
    sub_258A005F0(255);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F390);
    }
  }
}

void sub_258A48C10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_258A48C64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_258A48D20()
{
  result = qword_27F96F398;
  if (!qword_27F96F398)
  {
    sub_258A48BA8(255);
    sub_258A48DD0();
    sub_258A48FF8(qword_27F96DBD0, sub_258A005F0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F398);
  }

  return result;
}

unint64_t sub_258A48DD0()
{
  result = qword_27F96F3A0;
  if (!qword_27F96F3A0)
  {
    sub_258A483B8(255);
    sub_258A48E50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F3A0);
  }

  return result;
}

unint64_t sub_258A48E50()
{
  result = qword_27F96F3A8;
  if (!qword_27F96F3A8)
  {
    sub_258A48300(255);
    sub_258A48ED0();
    sub_2589D49FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F3A8);
  }

  return result;
}

unint64_t sub_258A48ED0()
{
  result = qword_27F96F3B0;
  if (!qword_27F96F3B0)
  {
    sub_258A483E0(255, &qword_27F96F368, sub_258A4826C, &type metadata for OnFirstAppear);
    v3 = sub_258A48FF8(&qword_27F96F3B8, sub_258A4826C, &unk_258B2C7DC);
    sub_258A48FA4(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F3B0);
  }

  return result;
}

unint64_t sub_258A48FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96F3C0;
  if (!qword_27F96F3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F3C0);
  }

  return result;
}

uint64_t sub_258A48FF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258A49060(uint64_t a1, int a2)
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

uint64_t sub_258A490A8(uint64_t result, int a2, int a3)
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

uint64_t sub_258A49120@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  sub_258A4A108(0);
  v3 = v2;
  v19 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A4A34C(0);
  v7 = *(v6 - 8);
  v20 = v6;
  v21 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v11 = *(v1 + 16);
  *(v10 + 16) = *v1;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v1 + 32);
  *(v10 + 64) = *(v1 + 48);
  v23 = v1;
  sub_258A4A460(v1, v25);
  sub_258A4A9AC(0, &qword_27F96F3D0, sub_2589ED63C, sub_258A4A19C);
  sub_258A4A1F4();
  sub_258B02174();
  v24 = *(v1 + 40);
  sub_258A4A778(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02144();
  v12 = swift_allocObject();
  v13 = *(v1 + 16);
  *(v12 + 16) = *v1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(v1 + 32);
  *(v12 + 64) = *(v1 + 48);
  sub_258A4A460(v1, v25);
  v14 = type metadata accessor for CustomReminderView(0);
  v17 = sub_258A4A304(&qword_27F96F3F8, sub_258A4A108, MEMORY[0x277CDF028]);
  v18 = sub_258A4A304(&qword_27F96D3F8, type metadata accessor for CustomReminderView, &unk_258B2F2F4);
  sub_258B01E94();

  (*(v19 + 8))(v5, v3);
  v25[0] = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5328);
  sub_258A4A778(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  swift_arrayDestroy();
  v25[0] = v3;
  v25[1] = v14;
  v25[2] = v17;
  v25[3] = v18;
  swift_getOpaqueTypeConformance2();
  v15 = v20;
  sub_258B01DD4();

  return (*(v21 + 8))(v9, v15);
}

uint64_t sub_258A49598(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  if (v10 == 1)
  {
    v3 = *(a1 + 16);
    v2 = *(a1 + 24);
    v4 = *(a1 + 32);
    *&v13 = v3;
    *&v10 = v3;
    *(&v10 + 1) = v2;
    v11 = v4;
    sub_2589DE784(&v13, v8);
    sub_258A4A778(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    v6 = v5;

    MEMORY[0x259C92900](&v15, v6);
    v8[0] = v3;
    v8[1] = v2;
    v9 = v4;
    v14 = (v15 & 1) == 0;
    sub_258B02314();
    sub_258A4A7C8(&v13);
  }

  else
  {
    v10 = *(a1 + 40);
    v15 = *(&v10 + 1);
    sub_258A4A4F0(&v15, &v13, sub_258A4A67C);
    sub_258A4A778(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    sub_258B02124();
    v13 = v10;
    v12 = !v14;
    sub_258B02134();
    return sub_258A4A6F8(&v10);
  }
}

void sub_258A4976C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v47 = a2;
  v2 = sub_258AFFDD4();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x28223BE20](v2);
  v37 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_258B000E4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  v11 = sub_258B02AC4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = sub_258AFFDE4();
  v40 = *(v18 - 8);
  v41 = v18;
  MEMORY[0x28223BE20](v18);
  v38 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589ED63C();
  v44 = *(v20 - 8);
  v45 = v20;
  MEMORY[0x28223BE20](v20);
  v39 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B02AB4();
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v35 = qword_27F97AB98;
  v22 = qword_27F97AB90;
  sub_258B003E4();
  sub_258B000D4();
  v23 = *(v12 + 16);
  v36 = v17;
  v23(v15, v17, v11);
  (*(v5 + 16))(v8, v10, v4);
  v24 = [v22 bundleURL];
  v25 = v37;
  sub_258AFFE24();

  (*(v42 + 104))(v25, *MEMORY[0x277CC9118], v43);
  v26 = v38;
  sub_258AFFDF4();
  (*(v5 + 8))(v10, v4);
  v27 = (*(v12 + 8))(v36, v11);
  v28 = MEMORY[0x28223BE20](v27);
  *(&v35 - 2) = v26;
  MEMORY[0x28223BE20](v28);
  *(&v35 - 2) = 0xD000000000000010;
  *(&v35 - 1) = v29;
  v30 = v39;
  sub_258B020E4();
  (*(v40 + 8))(v26, v41);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  if (v48 == 1)
  {
    v31 = sub_258B014B4();
  }

  else
  {
    v31 = sub_258B014A4();
  }

  v32 = v31;
  v33 = v47;
  (*(v44 + 32))(v47, v30, v45);
  sub_258A4A9AC(0, &qword_27F96F3D0, sub_2589ED63C, sub_258A4A19C);
  *(v33 + *(v34 + 36)) = v32;
}

uint64_t sub_258A49D64@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_258B00084();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v30 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v9 = &v25[-v8];
  v10 = type metadata accessor for CustomReminderModel(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v25[-v15];
  v34 = *a1;
  v29 = *(&v34 + 1);
  *v16 = 0;
  *(v16 + 1) = 0;
  *(v16 + 8) = 257;
  v17 = *(v14 + 32);
  v18 = sub_258AFFD44();
  (*(*(v18 - 8) + 56))(&v16[v17], 1, 1, v18);
  sub_258A4A4F0(&v34, v31, sub_2589DEB08);
  sub_258B00044();
  v33 = *(a1 + 40);
  sub_258A4A778(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02144();
  v27 = v31[1];
  v28 = v31[0];
  v26 = v32;
  KeyPath = swift_getKeyPath();
  v20 = type metadata accessor for CustomReminderView(0);
  *(a2 + *(v20 + 32)) = KeyPath;
  sub_2589C0024(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NotificationSettingsModel(0);
  sub_258A4A304(&qword_27F96D308, type metadata accessor for NotificationSettingsModel, &protocol conformance descriptor for NotificationSettingsModel);
  *a2 = sub_258B00A24();
  a2[1] = v21;
  sub_258A4A4F0(v16, v13, type metadata accessor for CustomReminderModel);
  sub_258B02114();
  sub_258A2A75C(v16);
  (*(v5 + 16))(v30, v9, v4);
  sub_258B02114();
  result = (*(v5 + 8))(v9, v4);
  v23 = a2 + *(v20 + 28);
  v24 = v27;
  *v23 = v28;
  *(v23 + 1) = v24;
  v23[16] = v26;
  return result;
}

void sub_258A4A108(uint64_t a1)
{
  if (!qword_27F96F3C8)
  {
    sub_258A4A9AC(255, &qword_27F96F3D0, sub_2589ED63C, sub_258A4A19C);
    sub_258A4A1F4();
    v1 = sub_258B021B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F3C8);
    }
  }
}

void sub_258A4A19C()
{
  if (!qword_27F96F3D8)
  {
    v0 = sub_258B015C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F3D8);
    }
  }
}

unint64_t sub_258A4A1F4()
{
  result = qword_27F96F3E0;
  if (!qword_27F96F3E0)
  {
    sub_258A4A9AC(255, &qword_27F96F3D0, sub_2589ED63C, sub_258A4A19C);
    sub_258A4A304(&qword_27F96D6B8, sub_2589ED63C, MEMORY[0x277CDEFF0]);
    sub_258A4A304(&qword_27F96F3E8, sub_258A4A19C, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F3E0);
  }

  return result;
}

uint64_t sub_258A4A304(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258A4A34C(uint64_t a1)
{
  if (!qword_27F96F3F0)
  {
    sub_258A4A108(255);
    type metadata accessor for CustomReminderView(255);
    sub_258A4A304(&qword_27F96F3F8, sub_258A4A108, MEMORY[0x277CDF028]);
    sub_258A4A304(&qword_27F96D3F8, type metadata accessor for CustomReminderView, &unk_258B2F2F4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F3F0);
    }
  }
}

uint64_t objectdestroyTm_10()
{

  return swift_deallocObject();
}

uint64_t sub_258A4A4F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A4A558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258AFFDE4();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  result = sub_258B01B34();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_258A4A638@<X0>(uint64_t *a1@<X8>)
{
  sub_258B003E4();
  result = sub_258B02084();
  *a1 = result;
  return result;
}

void sub_258A4A67C(uint64_t a1)
{
  if (!qword_27F96F400)
  {
    sub_258A4A778(255, &qword_27F96F408, MEMORY[0x277D839B0], MEMORY[0x277CDF3B0]);
    v1 = sub_258B030C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96F400);
    }
  }
}

uint64_t sub_258A4A6F8(uint64_t a1)
{
  sub_258A4A778(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258A4A778(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_258A4A81C()
{
  result = qword_27F96F410;
  if (!qword_27F96F410)
  {
    sub_258A4A9AC(255, qword_27F96F418, sub_258A4A34C, MEMORY[0x277CDE470]);
    sub_258A4A108(255);
    type metadata accessor for CustomReminderView(255);
    sub_258A4A304(&qword_27F96F3F8, sub_258A4A108, MEMORY[0x277CDF028]);
    sub_258A4A304(&qword_27F96D3F8, type metadata accessor for CustomReminderView, &unk_258B2F2F4);
    swift_getOpaqueTypeConformance2();
    sub_258A4A304(&qword_280DF8950, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F410);
  }

  return result;
}

void sub_258A4A9AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A4AA28(void *a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_258A4B140();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_258A4AAF8(int *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[4] - 8);
  v6 = *(v5 + 84);
  v7 = a3[3];
  v8 = *(a3[2] - 8);
  v9 = *(v8 + 84);
  if (v6 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v5 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v11 + 84);
  v13 = *(v5 + 80);
  v14 = *(*(a3[4] - 8) + 64);
  v15 = *(v8 + 80);
  v16 = *(v11 + 80);
  if (v10 <= v12)
  {
    v17 = *(v11 + 84);
  }

  else
  {
    v17 = v10;
  }

  if (v17 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(*(a3[2] - 8) + 64) + v16;
  v19 = *(*(v7 - 8) + 64) + 7;
  if (v17 < a2)
  {
    v20 = ((((v19 + ((v18 + ((v14 + v15 + ((v13 + 1) & ~v13)) & ~v15)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v21 = a2 - v17;
    v22 = v20 & 0xFFFFFFF8;
    if ((v20 & 0xFFFFFFF8) != 0)
    {
      v23 = 2;
    }

    else
    {
      v23 = v21 + 1;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v26 = *(a1 + v20);
        if (!v26)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v26 = *(a1 + v20);
        if (!v26)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      if (!v25)
      {
        goto LABEL_32;
      }

      v26 = *(a1 + v20);
      if (!v26)
      {
        goto LABEL_32;
      }
    }

    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    v37 = v17 + (v29 | v28);
    return (v37 + 1);
  }

LABEL_32:
  v30 = (a1 + v13 + 1) & ~v13;
  if (v6 != v17)
  {
    v32 = (v30 + v14 + v15) & ~v15;
    if (v9 == v17)
    {
      v33 = *(v8 + 48);
      v34 = *(v8 + 84);
      v35 = a3[2];

      return v33(v32, v34, v35);
    }

    v32 = (v18 + v32) & ~v16;
    if (v12 == v17)
    {
      v33 = *(v11 + 48);
      v34 = *(v11 + 84);
      v35 = a3[3];

      return v33(v32, v34, v35);
    }

    v36 = *(((v19 + v32) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v36 >= 0xFFFFFFFF)
    {
      LODWORD(v36) = -1;
    }

    v37 = v36 - 1;
    if (v37 < 0)
    {
      v37 = -1;
    }

    return (v37 + 1);
  }

  v31 = *(v5 + 48);

  return v31(v30);
}

unsigned int *sub_258A4ADD4(unsigned int *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[4] - 8);
  v6 = *(v5 + 84);
  v7 = a4[2];
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v6 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v5 + 84);
  }

  v11 = *(a4[3] - 8);
  v12 = *(v11 + 84);
  v13 = *(v5 + 80);
  v14 = *(*(a4[4] - 8) + 64);
  v15 = *(v8 + 80);
  v16 = *(*(v7 - 8) + 64);
  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (v10 <= v12)
  {
    v19 = *(v11 + 84);
  }

  else
  {
    v19 = v10;
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  v20 = v16 + v17;
  v21 = ((((v18 + 7 + ((v16 + v17 + ((v14 + v15 + ((v13 + 1) & ~v13)) & ~v15)) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v19 >= a3)
  {
    v24 = 0;
    v25 = a2 - v19;
    if (a2 <= v19)
    {
      goto LABEL_21;
    }

LABEL_26:
    if (v21)
    {
      v26 = 1;
    }

    else
    {
      v26 = v25;
    }

    if (v21)
    {
      v27 = ~v19 + a2;
      v28 = result;
      bzero(result, v21);
      result = v28;
      *v28 = v27;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        *(result + v21) = v26;
      }

      else
      {
        *(result + v21) = v26;
      }
    }

    else if (v24)
    {
      *(result + v21) = v26;
    }

    return result;
  }

  v22 = a3 - v19;
  if (v21)
  {
    v23 = 2;
  }

  else
  {
    v23 = v22 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 < 2)
  {
    v24 = 0;
  }

  v25 = a2 - v19;
  if (a2 > v19)
  {
    goto LABEL_26;
  }

LABEL_21:
  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *(result + v21) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_37;
    }

    *(result + v21) = 0;
LABEL_36:
    if (!a2)
    {
      return result;
    }

    goto LABEL_37;
  }

  if (!v24)
  {
    goto LABEL_36;
  }

  *(result + v21) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_37:
  result = ((result + v13 + 1) & ~v13);
  if (v6 == v19)
  {
    v29 = *(v5 + 56);

    return v29(result);
  }

  v30 = (result + v14 + v15) & ~v15;
  if (v9 == v19)
  {
    v31 = *(v8 + 56);

    return v31(v30);
  }

  else
  {
    result = ((v20 + v30) & ~v17);
    if (v12 == v19)
    {
      v29 = *(v11 + 56);

      return v29(result);
    }

    v32 = ((result + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v32 = a2 - 0x7FFFFFFF;
      v32[1] = 0;
    }

    else
    {
      v32[1] = a2;
    }
  }

  return result;
}

void sub_258A4B140()
{
  if (!qword_27F96F4A0)
  {
    v0 = sub_258B02154();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F4A0);
    }
  }
}

uint64_t sub_258A4B214@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_258B030C4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

double sub_258A4B280@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, double a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _BYTE *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v23 = a1;
  v22 = a8;
  MEMORY[0x28223BE20](a1);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = a7;
  v36 = a9;
  v37 = v10;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = a9;
  v29 = a10;
  v30 = a2;
  v31 = a3;
  *(&v21 + 1) = a9;
  *&v21 = a7;
  return sub_258A4B618(v23, v18, sub_258A4DF8C, sub_258A4DFC0, a4, a5, v22, a6, v21, a10);
}

uint64_t sub_258A4B3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v8(v7);
  (v8)(a3, v7, a2);
  return (*(v5 + 8))(v7, a2);
}

uint64_t sub_258A4B4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v15 - v10;
  v9();
  v12 = *(v5 + 16);
  v12(v11, v8, a2);
  v13 = *(v5 + 8);
  v13(v8, a2);
  v12(a3, v11, a2);
  return (v13)(v11, a2);
}

double sub_258A4B618@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a4)(uint64_t)@<X4>, double a5@<X6>, uint64_t a6@<X7>, _BYTE *a7@<X8>, uint64_t a8, __int128 a9, uint64_t a10)
{
  *a7 = a1;
  v22 = a5;
  v23 = a6;
  v24 = a8;
  v25 = a9;
  v26 = a10;
  v14 = type metadata accessor for ScrollableWithPinnedFooter(0, &v22);
  v15 = (*(*(a8 - 8) + 32))(&a7[v14[17]], a2, a8);
  v16 = a3(v15);
  a4(v16);
  v17 = &a7[v14[20]];
  v27 = 0;
  sub_258B02114();
  v18 = v23;
  *v17 = v22;
  *(v17 + 1) = v18;
  v19 = &a7[v14[21]];
  v27 = 0;
  sub_258B02114();
  result = v22;
  v21 = v23;
  *v19 = v22;
  *(v19 + 1) = v21;
  return result;
}

uint64_t sub_258A4B758@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v102 = a2;
  v98 = *(a1 - 1);
  v101 = *(v98 + 64);
  MEMORY[0x28223BE20](a1);
  v99 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A4D9EC(255, v4, v5);
  v94 = a1[2];
  v93 = sub_258B00B04();
  *&v103 = a1[5];
  v6 = v103;
  OpaqueTypeMetadata2 = sub_258A024D8();
  v142 = v6;
  v143 = OpaqueTypeMetadata2;
  v7 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v8 = sub_258B00664();
  v96 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v91 = &v69 - v9;
  sub_258A4DACC(255, &qword_27F96F4A8, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277CDE2C8]);
  v86 = v8;
  v10 = sub_258B00B04();
  v97 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v89 = v10;
  v90 = &v69 - v11;
  v12 = sub_258B00B04();
  v100 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v95 = &v69 - v13;
  v80 = a1;
  v15 = a1[6];
  v124 = a1[3];
  v14 = v124;
  v125 = v15;
  v16 = v15;
  swift_getOpaqueTypeMetadata2();
  *&v104 = sub_258B030C4();
  v17 = swift_getWitnessTable();
  v85 = v17;
  v18 = sub_258A4DA48();
  v140 = v17;
  v141 = v18;
  v88 = swift_getWitnessTable();
  v138 = v88;
  v139 = OpaqueTypeMetadata2;
  v19 = swift_getWitnessTable();
  v69 = v16;
  v70 = v14;
  v124 = v14;
  v125 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v104;
  v21 = swift_getWitnessTable();
  v124 = v12;
  v125 = v20;
  v126 = v19;
  v127 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_258A4DACC(255, &qword_27F96F4B8, MEMORY[0x277CDF6A8], MEMORY[0x277CDF6A0], MEMORY[0x277CE0718]);
  sub_258B00B04();
  sub_258B030C4();
  v22 = sub_258A4DB20();
  v135 = v16;
  v136 = v22;
  v87 = v7;
  v134 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_258B010F4();
  v23 = sub_258B00B04();
  v79 = v12;
  v124 = v12;
  v125 = v104;
  v126 = v19;
  v127 = v21;
  v24 = swift_getOpaqueTypeConformance2();
  v74 = v24;
  v25 = swift_getWitnessTable();
  v132 = v19;
  v133 = v25;
  v76 = v19;
  v73 = v23;
  v72 = swift_getWitnessTable();
  v124 = v12;
  v125 = MEMORY[0x277CE1350];
  v126 = OpaqueTypeMetadata2;
  v127 = v23;
  v128 = v19;
  v129 = MEMORY[0x277CE1340];
  v130 = v24;
  v131 = v72;
  v83 = MEMORY[0x277CE0E60];
  v78 = swift_getOpaqueTypeMetadata2();
  v84 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v71 = &v69 - v26;
  v27 = sub_258B00B04();
  v81 = *(v27 - 8);
  v82 = v27;
  v28 = MEMORY[0x28223BE20](v27);
  v75 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v77 = &v69 - v30;
  sub_258B01854();
  v31 = v80;
  *&v32 = v80[4];
  *(&v32 + 1) = v103;
  *&v33 = v94;
  v34 = v69;
  *(&v33 + 1) = v70;
  v103 = v32;
  v104 = v33;
  v117 = v33;
  v118 = v32;
  v35 = v80[7];
  v119 = v69;
  v120 = v35;
  v36 = v35;
  v37 = v106;
  v121 = v106;
  v38 = v91;
  sub_258B00674();
  v124 = sub_258B035A4();
  v125 = v39;
  MEMORY[0x259C931B0](0x566C6C6F7263532ELL, 0xEB00000000776569);
  v40 = v90;
  v41 = v86;
  sub_258B01C64();

  (*(v96 + 8))(v38, v41);
  v42 = v98;
  v43 = v99;
  (*(v98 + 16))(v99, v37, v31);
  v44 = (*(v42 + 80) + 64) & ~*(v42 + 80);
  v45 = swift_allocObject();
  v46 = v103;
  *(v45 + 16) = v104;
  *(v45 + 32) = v46;
  *(v45 + 48) = v34;
  *(v45 + 56) = v36;
  v47 = v36;
  v48 = (*(v42 + 32))(v45 + v44, v43, v31);
  sub_2589D2E7C(v48, v49, v50);
  v51 = v95;
  v52 = v89;
  sub_258B01CD4();

  (*(v97 + 8))(v40, v52);
  sub_258B024C4();
  v112 = v104;
  v113 = v103;
  v114 = v34;
  v115 = v47;
  v116 = v106;
  v107 = v104;
  v108 = v103;
  v109 = v34;
  v110 = v47;
  v111 = v106;
  v53 = swift_checkMetadataState();
  v54 = swift_checkMetadataState();
  v55 = v72;
  v56 = v74;
  v57 = v76;
  v58 = v71;
  v59 = v79;
  sub_258B01F04();
  (*(v100 + 8))(v51, v59);
  sub_258B00B54();
  sub_258B01894();
  v124 = v59;
  v125 = MEMORY[0x277CE1350];
  v126 = v53;
  v127 = v54;
  v128 = v57;
  v129 = MEMORY[0x277CE1340];
  v130 = v56;
  v131 = v55;
  v60 = swift_getOpaqueTypeConformance2();
  v61 = v75;
  v62 = v78;
  sub_258B01C94();
  (*(v84 + 8))(v58, v62);
  v122 = v60;
  v123 = MEMORY[0x277CE0880];
  v63 = v82;
  swift_getWitnessTable();
  v64 = v81;
  v65 = *(v81 + 16);
  v66 = v77;
  v65(v77, v61, v63);
  v67 = *(v64 + 8);
  v67(v61, v63);
  v65(v102, v66, v63);
  return (v67)(v66, v63);
}

uint64_t sub_258A4C1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v55 = a7;
  v56 = a6;
  v47 = a3;
  v48 = a5;
  v57 = a1;
  v54 = a8;
  v60[0] = a2;
  v60[1] = a3;
  v60[2] = a4;
  v60[3] = a5;
  v45 = a4;
  v60[4] = a6;
  v60[5] = a7;
  v11 = type metadata accessor for ScrollableWithPinnedFooter(0, v60);
  v12 = *(v11 - 8);
  v44 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - v13;
  sub_258A4D9EC(255, v15, v16);
  v43 = a2;
  v17 = sub_258B00B04();
  v52 = *(v17 - 8);
  v53 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v50 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v51 = &v41 - v20;
  v49 = *(v11 + 72);
  v21 = v12;
  v46 = *(v12 + 16);
  v46(v14, a1, v11);
  v22 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v23 = swift_allocObject();
  v24 = v47;
  *(v23 + 2) = a2;
  *(v23 + 3) = v24;
  v25 = v48;
  *(v23 + 4) = a4;
  *(v23 + 5) = v25;
  v26 = v55;
  *(v23 + 6) = v56;
  *(v23 + 7) = v26;
  v27 = *(v21 + 32);
  v42 = v14;
  v27(&v23[v22], v14, v11);
  v46(v14, v57, v11);
  v28 = swift_allocObject();
  v28[2] = v43;
  v28[3] = v24;
  v28[4] = v45;
  v28[5] = v25;
  v29 = v55;
  v28[6] = v56;
  v28[7] = v29;
  v30 = (v27)(v28 + v22, v42, v11);
  sub_2589D2E7C(v30, v31, v32);
  v33 = v50;
  sub_258B01CD4();

  v34 = sub_258A024D8();
  v58 = v25;
  v59 = v34;
  v35 = v53;
  swift_getWitnessTable();
  v37 = v51;
  v36 = v52;
  v38 = *(v52 + 16);
  v38(v51, v33, v35);
  v39 = *(v36 + 8);
  v39(v33, v35);
  v38(v54, v37, v35);
  return (v39)(v37, v35);
}

void sub_258A4C570(CGFloat *a2@<X8>)
{
  v3 = sub_258B012F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = sub_258B035A4();
  v16[1] = v7;
  MEMORY[0x259C931B0](0x566C6C6F7263532ELL, 0xEB00000000776569);
  sub_258B01524();

  sub_258B008D4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  (*(v4 + 8))(v6, v3);
  v17.origin.x = v9;
  v17.origin.y = v11;
  v17.size.width = v13;
  v17.size.height = v15;
  *a2 = CGRectGetMaxY(v17);
}

uint64_t sub_258A4C6F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v8 = (a2 + *(type metadata accessor for ScrollableWithPinnedFooter(0, &v12) + 80));
  v9 = *v8;
  v10 = v8[1];
  v12 = v9;
  v13 = v10;
  sub_258A4B140();
  return sub_258B02134();
}

uint64_t sub_258A4C76C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v8 = (a2 + *(type metadata accessor for ScrollableWithPinnedFooter(0, &v12) + 84));
  v9 = *v8;
  v10 = v8[1];
  v12 = v9;
  v13 = v10;
  sub_258A4B140();
  return sub_258B02134();
}

uint64_t sub_258A4C7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v30 = a8;
  v26 = a6;
  v28 = a5;
  v27 = a3;
  v29 = a2;
  v31 = a1;
  v32 = a9;
  sub_258A4D9EC(255, a2, a3);
  sub_258B00B04();
  v49 = a6;
  v50 = sub_258A024D8();
  swift_getWitnessTable();
  sub_258B00664();
  sub_258A4DACC(255, &qword_27F96F4A8, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277CDE2C8]);
  sub_258B00B04();
  v12 = sub_258B00B04();
  swift_getOpaqueTypeMetadata2();
  v13 = sub_258B030C4();
  WitnessTable = swift_getWitnessTable();
  v48 = sub_258A4DA48();
  v45 = swift_getWitnessTable();
  v46 = v50;
  v14 = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v12;
  v41 = v13;
  v42 = v14;
  v43 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  v17 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v25 - v20;
  v33 = v27;
  v34 = a4;
  v35 = v28;
  v36 = v26;
  v37 = a7;
  v38 = v30;
  v39 = v29;
  sub_258B01194();
  swift_checkMetadataState();
  swift_checkMetadataState();
  sub_258B01BF4();
  v22 = *(v16 + 16);
  v22(v21, v19, OpaqueTypeMetadata2);
  v23 = *(v16 + 8);
  v23(v19, OpaqueTypeMetadata2);
  v22(v32, v21, OpaqueTypeMetadata2);
  return (v23)(v21, OpaqueTypeMetadata2);
}

uint64_t sub_258A4CBC4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v41 = a5;
  v42 = a7;
  v39 = a2;
  v40 = a4;
  v47 = a8;
  v11 = sub_258B01154();
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a6;
  v49 = a3;
  v50 = a6;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = *(OpaqueTypeMetadata2 - 8);
  v16 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v38 = &v37 - v19;
  v20 = sub_258B030C4();
  v45 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v46 = &v37 - v24;
  if (*a1 == 1)
  {
    v49 = v39;
    v50 = a3;
    v51 = v40;
    v52 = v41;
    v53 = v48;
    v54 = v42;
    type metadata accessor for ScrollableWithPinnedFooter(0, &v49);
    v37 = a3;
    sub_258B01144();
    sub_258B01D54();
    (*(v43 + 8))(v13, v44);
    v25 = *(v15 + 16);
    v26 = v38;
    v25(v38, v18, OpaqueTypeMetadata2);
    v27 = *(v15 + 8);
    v27(v18, OpaqueTypeMetadata2);
    v25(v18, v26, OpaqueTypeMetadata2);
    v27(v26, OpaqueTypeMetadata2);
    v28 = v37;
    v29 = v18;
    v30 = v48;
    (*(v15 + 32))(v23, v29, OpaqueTypeMetadata2);
    v31 = 0;
  }

  else
  {
    v31 = 1;
    v30 = v48;
    v28 = a3;
  }

  (*(v15 + 56))(v23, v31, 1, OpaqueTypeMetadata2);
  v32 = v45;
  v33 = v46;
  v34 = *(v45 + 16);
  v34(v46, v23, v20);
  v35 = *(v32 + 8);
  v35(v23, v20);
  v49 = v28;
  v50 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v34(v47, v33, v20);
  return (v35)(v33, v20);
}

uint64_t sub_258A4CFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v31 = a8;
  v27 = a6;
  v29 = a5;
  v28 = a3;
  v30 = a2;
  v33 = a1;
  v34 = a9;
  sub_258A4D9EC(255, a2, a3);
  sub_258B00B04();
  v32 = sub_258A024D8();
  v51 = a6;
  v52 = v32;
  swift_getWitnessTable();
  v26[2] = sub_258B00664();
  sub_258A4DACC(255, &qword_27F96F4A8, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277CDE2C8]);
  v26[3] = sub_258B00B04();
  sub_258B00B04();
  sub_258A4DACC(255, &qword_27F96F4B8, MEMORY[0x277CDF6A8], MEMORY[0x277CDF6A0], MEMORY[0x277CE0718]);
  sub_258B00B04();
  sub_258B030C4();
  v49 = a7;
  v50 = sub_258A4DB20();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v26[1] = sub_258B010F4();
  v12 = sub_258B00B04();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v26 - v17;
  v35 = v28;
  v36 = a4;
  v37 = v29;
  v38 = v27;
  v39 = a7;
  v40 = v31;
  v41 = v30;
  sub_258B01194();
  v19 = swift_getWitnessTable();
  v20 = sub_258A4DA48();
  v46 = v19;
  v47 = v20;
  v44 = swift_getWitnessTable();
  v45 = v32;
  v25 = swift_getWitnessTable();
  sub_258B01C44();
  v21 = swift_getWitnessTable();
  v42 = v25;
  v43 = v21;
  swift_getWitnessTable();
  v22 = *(v13 + 16);
  v22(v18, v16, v12);
  v23 = *(v13 + 8);
  v23(v16, v12);
  v22(v34, v18, v12);
  return (v23)(v18, v12);
}

uint64_t sub_258A4D410@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v37 = a5;
  v38 = a7;
  v36 = a4;
  v41 = a8;
  sub_258A4DACC(255, &qword_27F96F4B8, MEMORY[0x277CDF6A8], MEMORY[0x277CDF6A0], MEMORY[0x277CE0718]);
  v12 = a3;
  v13 = sub_258B00B04();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v39 = &v36 - v18;
  v19 = sub_258B030C4();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v40 = &v36 - v24;
  if (*a1 == 1)
  {
    v44[0] = a2;
    v44[1] = v12;
    v44[2] = v36;
    v44[3] = v37;
    v44[4] = a6;
    v44[5] = v38;
    v25 = type metadata accessor for ScrollableWithPinnedFooter(0, v44);
    v38 = *(v25 + 76);
    v44[0] = sub_258A4D844(v25);
    sub_258B01874();
    sub_258B01BA4();

    v26 = sub_258A4DB20();
    v42 = a6;
    v43 = v26;
    swift_getWitnessTable();
    v27 = *(v14 + 16);
    v28 = v39;
    v27(v39, v17, v13);
    v37 = v20;
    v38 = a6;
    v29 = *(v14 + 8);
    v29(v17, v13);
    v27(v17, v28, v13);
    v29(v28, v13);
    v20 = v37;
    a6 = v38;
    (*(v14 + 32))(v23, v17, v13);
    (*(v14 + 56))(v23, 0, 1, v13);
  }

  else
  {
    (*(v14 + 56))(v23, 1, 1, v13);
    v30 = sub_258A4DB20();
    v44[9] = a6;
    v44[10] = v30;
    swift_getWitnessTable();
  }

  v31 = *(v20 + 16);
  v32 = v40;
  v31(v40, v23, v19);
  v33 = *(v20 + 8);
  v33(v23, v19);
  v34 = sub_258A4DB20();
  v44[7] = a6;
  v44[8] = v34;
  v44[6] = swift_getWitnessTable();
  swift_getWitnessTable();
  v31(v41, v32, v19);
  return (v33)(v32, v19);
}

uint64_t sub_258A4D844(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_258A4D944(v5))
  {
    (*(v4 + 16))(v7, v1 + *(a1 + 68), v3);
  }

  else
  {
    v9[1] = sub_258B02004();
  }

  return sub_258B00864();
}

uint64_t sub_258A4D944(uint64_t a1)
{
  sub_258A4B140();
  sub_258B02124();
  sub_258B02124();
  return 0;
}

void sub_258A4D9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27F96DC78)
  {
    sub_2589D2E7C(0, a2, a3);
    v3 = sub_258B01584();
    if (!v4)
    {
      atomic_store(v3, &qword_27F96DC78);
    }
  }
}

unint64_t sub_258A4DA48()
{
  result = qword_27F96F4B0;
  if (!qword_27F96F4B0)
  {
    sub_258A4DACC(255, &qword_27F96F4A8, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277CDE2C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F4B0);
  }

  return result;
}

void sub_258A4DACC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258A4DB20()
{
  result = qword_27F96F4C0;
  if (!qword_27F96F4C0)
  {
    sub_258A4DACC(255, &qword_27F96F4B8, MEMORY[0x277CDF6A8], MEMORY[0x277CDF6A0], MEMORY[0x277CE0718]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F4C0);
  }

  return result;
}

void sub_258A4DC50(CGFloat *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8[0] = v1[2];
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v7;
  type metadata accessor for ScrollableWithPinnedFooter(0, v8);

  sub_258A4C570(a1);
}

uint64_t objectdestroyTm_11()
{
  v1 = *(v0 + 24);
  v9[0] = *(v0 + 16);
  v2 = v9[0];
  v9[1] = v1;
  v3 = *(v0 + 48);
  v10 = *(v0 + 32);
  v8 = v10;
  v11 = v3;
  v4 = type metadata accessor for ScrollableWithPinnedFooter(0, v9);
  v5 = v4 - 8;
  v6 = v0 + ((*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80));
  (*(*(v8 - 8) + 8))(v6 + *(v4 + 68));
  (*(*(v2 - 8) + 8))(v6 + *(v5 + 80), v2);
  (*(*(v1 - 8) + 8))(v6 + *(v5 + 84), v1);

  return swift_deallocObject();
}

uint64_t sub_258A4DEBC(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v14[0] = v2[2];
  v4 = v14[0];
  v14[1] = v5;
  v14[2] = v6;
  v14[3] = v7;
  v14[4] = v8;
  v14[5] = v9;
  v10 = *(type metadata accessor for ScrollableWithPinnedFooter(0, v14) - 8);
  v11 = v2 + ((*(v10 + 80) + 64) & ~*(v10 + 80));

  return a2(a1, v11, v4, v5, v6, v7, v8, v9);
}

uint64_t StateOfMindEntryPresentationStyle.hashValue.getter()
{
  v1 = *v0;
  sub_258B03514();
  MEMORY[0x259C93B20](v1);
  return sub_258B03554();
}

unint64_t sub_258A4E068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96F4C8;
  if (!qword_27F96F4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F4C8);
  }

  return result;
}

uint64_t type metadata accessor for ValenceSelectionTitleText(uint64_t a1)
{
  result = qword_27F96F4D0;
  if (!qword_27F96F4D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A4E140(uint64_t a1)
{
  sub_258A4EA5C(319, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_258A4E210(char a1)
{
  v2 = sub_258B019F4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v15 = (v3 + 104);
  v16 = (v3 + 32);
  if (a1)
  {
    sub_258B019D4();
    type metadata accessor for ValenceSelectionPhaseSpecs(0);
    v17 = sub_258B00A84();
    v18 = MEMORY[0x277CE0A10];
    if ((v17 & 1) == 0)
    {
      v18 = MEMORY[0x277CE0A18];
    }

    (*v15)(v12, *v18, v2);
    (*v16)(v14, v12, v2);
    v19 = sub_258B01A14();
  }

  else
  {
    sub_258B01944();
    type metadata accessor for ValenceSelectionPhaseSpecs(0);
    v20 = sub_258B00A84();
    v21 = MEMORY[0x277CE0A10];
    if ((v20 & 1) == 0)
    {
      v21 = MEMORY[0x277CE0A18];
    }

    (*v15)(v6, *v21, v2);
    (*v16)(v9, v6, v2);
    v19 = sub_258B01A14();
    v14 = v9;
  }

  (*(v3 + 8))(v14, v2);
  return v19;
}

void sub_258A4E45C(uint64_t a1@<X8>)
{
  v52 = a1;
  sub_2589D5AFC(0);
  v51[1] = v2;
  MEMORY[0x28223BE20](v2);
  v57 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ValenceSelectionPhaseSpecs(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1;
  v9 = *v1;
  v10 = v1[1];
  v11 = v8;
  v58 = v9;
  v59 = v10;
  sub_2589BFF58(v5, v12, v13);
  sub_258B003E4();
  v14 = sub_258B01B44();
  v16 = v15;
  v18 = v17;
  v19 = *(type metadata accessor for ValenceSelectionTitleText(0) + 24);
  v53 = v11;
  v54 = v19;
  sub_258AC1B90(v7);
  v56 = *(v11 + 16);
  sub_258A4E210(v56);
  v55 = type metadata accessor for ValenceSelectionPhaseSpecs;
  sub_258A4E934(v7, type metadata accessor for ValenceSelectionPhaseSpecs);
  v20 = sub_258B01AE4();
  v22 = v21;
  v24 = v23;

  sub_2589BFFAC(v14, v16, v18 & 1);

  v25 = sub_258B01AD4();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v20;
  v33 = v57;
  sub_2589BFFAC(v32, v22, v24 & 1);

  v58 = v25;
  v59 = v27;
  v60 = v29 & 1;
  v61 = v31;
  sub_258AC1B90(v7);
  sub_258A2AFD8(v56, v33);
  sub_258A4E934(v7, v55);
  sub_258B00AA4();
  sub_258A4F388(&qword_27F96D048, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  if (sub_258B02AA4())
  {
    sub_258A4F388(&qword_27F96D030, sub_2589D5AFC, MEMORY[0x277D84470]);
    v34 = v52;
    sub_258B01C84();
    sub_258A4E934(v33, sub_2589D5AFC);
    sub_2589BFFAC(v25, v27, v29 & 1);

    v35 = sub_258B014A4();
    sub_258A4E994(0);
    v37 = (v34 + *(v36 + 36));
    *v37 = v35;
    v37[1] = 1058642330;
    sub_258A4EC94(0, &qword_27F96F4F0, sub_258A4E994, type metadata accessor for LoggingFlowBlendMode);
    v39 = *(v38 + 36);
    *(v34 + v39) = swift_getKeyPath();
    sub_258A4EA5C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    sub_258A4EAC0(0);
    *(v34 + *(v40 + 36)) = 256;
    KeyPath = swift_getKeyPath();
    sub_258A4EB50(0);
    v43 = v34 + *(v42 + 36);
    *v43 = KeyPath;
    *(v43 + 8) = 1;
    sub_258AC1B90(v7);
    v44 = sub_258A2A930();
    sub_258A4E934(v7, type metadata accessor for ValenceSelectionPhaseSpecs);
    v45 = swift_getKeyPath();
    sub_258A4EC94(0, &qword_27F96F508, sub_258A4EB50, sub_258A4ED08);
    v47 = v34 + *(v46 + 36);
    *v47 = v45;
    *(v47 + 8) = v44;
    *(v47 + 16) = 0;
    v48 = swift_getKeyPath();
    sub_258A4ED84(0);
    v50 = (v34 + *(v49 + 36));
    *v50 = v48;
    v50[1] = 0x3FE3333333333333;
  }

  else
  {
    __break(1u);
  }
}