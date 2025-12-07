unint64_t sub_21BCBD090()
{
  result = qword_27CDB9220;
  if (!qword_27CDB9220)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9228, &qword_21BE3EE90);
    v4[0] = sub_21BBC7DA8();
    v4[1] = MEMORY[0x277CDFC60];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB9220);
  }

  return result;
}

uint64_t sub_21BCBD140(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8[0] = a4();
    v8[1] = MEMORY[0x277CE1410];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BCBD1C4()
{
  result = qword_27CDB9240;
  if (!qword_27CDB9240)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9248, &qword_21BE3EEA0);
    v4[0] = sub_21BB3B038(&qword_27CDB9250, &qword_27CDB9258, &qword_21BE3EEA8, MEMORY[0x277CE1138]);
    v4[1] = sub_21BCBD27C();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDB9240);
  }

  return result;
}

unint64_t sub_21BCBD27C()
{
  result = qword_27CDB9260;
  if (!qword_27CDB9260)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9268, &qword_21BE3EEB0);
    v4[0] = sub_21BB3B038(&qword_27CDB9270, &qword_27CDB9278, &qword_21BE3EEB8, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable(MEMORY[0x277CE1290], v3, v4);
    atomic_store(result, &qword_27CDB9260);
  }

  return result;
}

uint64_t sub_21BCBD338(void **a1)
{
  v3 = *(type metadata accessor for AgeRangeSharingView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21BCB9F7C(a1, v4);
}

id sub_21BCBD3B8(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
  }

  return result;
}

void sub_21BCBD3D4(void *a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

double sub_21BCBD3F8(_OWORD *a1)
{
  result = 0.0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void sub_21BCBD414(_DWORD *a1@<X8>)
{
  v3 = *(type metadata accessor for AgeRangeSharingView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  sub_21BCB888C(v4, a1);
}

uint64_t objectdestroy_68Tm()
{
  v1 = type metadata accessor for AgeRangeSharingView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21BE26FEC();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_21BCBC920(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v6 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21BE288BC();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21BE27B0C();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
  }

  v10 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21BE26F5C();
    (*(*(v11 - 8) + 8))(v3 + v10, v11);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_21BCBD74C(unsigned int *a1)
{
  v3 = *(type metadata accessor for AgeRangeSharingView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_21BCB8944(a1, v4, v5, v6);
}

unint64_t sub_21BCBD7CC()
{
  result = qword_27CDB9300;
  if (!qword_27CDB9300)
  {
    result = swift_getWitnessTable(byte_21BE3F0FC, &type metadata for AgeRangeSharingView.AgeRangeStateLabel, v0, v1);
    atomic_store(result, &qword_27CDB9300);
  }

  return result;
}

void sub_21BCBD820()
{
  v1 = *(type metadata accessor for AgeRangeSharingView(0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 20) & ~*(v1 + 80)));

  sub_21BCB8BF0(v2, v3);
}

uint64_t sub_21BCBD884(uint64_t a1)
{
  v2 = type metadata accessor for AgeRangeSharingView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_41Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BCBD928()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21BBA6A64;

  return sub_21BCFBAF4(v2, v3, v5, v4);
}

uint64_t objectdestroy_57Tm()
{
  v1 = type metadata accessor for AgeRangeSharingView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21BE26FEC();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_21BCBC920(*(v2 + v1[9]), *(v2 + v1[9] + 8));
  v5 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21BE288BC();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21BE27B0C();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  v9 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21BE26F5C();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21BCBDD58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBB7EB8;

  return sub_21BCBC3EC(a1, v4, v5, v1 + 32);
}

unint64_t sub_21BCBDE18()
{
  result = qword_27CDB9370;
  if (!qword_27CDB9370)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB79E0, &qword_21BE3F220);
    v4[0] = sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460, MEMORY[0x277CDF028]);
    v4[1] = sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB9370);
  }

  return result;
}

uint64_t objectdestroy_103Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_106Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BCBDFAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBB7EB8;

  return sub_21BCBBAD0(a1, v4, v5, v1 + 4);
}

uint64_t sub_21BCBE05C(void *a1)
{
  v2 = sub_21BE25C4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21BE25C6C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21BE25D1C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 response];
  v77 = v6;
  if (v14 != 2)
  {
    v74 = v5;
    v75 = v9;
    v76 = v10;
    v25 = [a1 lowerbound];
    if (v25)
    {
      v26 = v25;
      v27 = [a1 upperbound];
      if (!v27)
      {
        v73 = 0x800000021BE5BBD0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_21BE33260;
        *(v50 + 56) = sub_21BCBEAA4();
        *(v50 + 64) = sub_21BCBEAF0(&qword_27CDB9378, sub_21BCBEAA4, MEMORY[0x277D85388]);
        *(v50 + 32) = v26;
        v72 = v26;
        v51 = [a1 createdAt];
        sub_21BE25CDC();

        v52 = v75;
        sub_21BE25C5C();
        v53 = v74;
        sub_21BE25C3C();
        v54 = sub_21BE25CFC();
        v56 = v55;
        (*(v3 + 8))(v53, v2);
        (*(v7 + 8))(v52, v77);
        (*(v11 + 8))(v13, v76);
        *(v50 + 96) = MEMORY[0x277D837D0];
        *(v50 + 104) = sub_21BBBEFE8();
        *(v50 + 72) = v54;
        *(v50 + 80) = v56;
        type metadata accessor for ConfirmChildAgeViewModel();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v58 = objc_opt_self();

        v59 = [v58 bundleForClass_];
        goto LABEL_14;
      }

      v28 = v27;
    }

    v29 = [a1 upperbound];
    if (!v29)
    {
      goto LABEL_9;
    }

    v30 = v29;
    v31 = [a1 lowerbound];
    if (v31)
    {
      v32 = v31;

LABEL_9:
      v33 = [a1 lowerbound];
      if (v33)
      {
        v34 = v33;
        v35 = [a1 upperbound];
        if (v35)
        {
          v36 = v35;
          v73 = 0x800000021BE5BB90;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
          v37 = swift_allocObject();
          *(v37 + 16) = xmmword_21BE362A0;
          v38 = sub_21BCBEAA4();
          *(v37 + 56) = v38;
          v39 = sub_21BCBEAF0(&qword_27CDB9378, sub_21BCBEAA4, MEMORY[0x277D85388]);
          *(v37 + 32) = v34;
          *(v37 + 96) = v38;
          *(v37 + 104) = v39;
          *(v37 + 64) = v39;
          *(v37 + 72) = v36;
          v72 = v34;
          v71 = v36;
          v40 = [a1 createdAt];
          sub_21BE25CDC();

          v41 = v75;
          sub_21BE25C5C();
          v42 = v74;
          sub_21BE25C3C();
          v43 = sub_21BE25CFC();
          v45 = v44;
          (*(v3 + 8))(v42, v2);
          (*(v7 + 8))(v41, v77);
          (*(v11 + 8))(v13, v76);
          *(v37 + 136) = MEMORY[0x277D837D0];
          *(v37 + 144) = sub_21BBBEFE8();
          *(v37 + 112) = v43;
          *(v37 + 120) = v45;
          type metadata accessor for ConfirmChildAgeViewModel();
          v46 = swift_getObjCClassFromMetadata();
          v47 = objc_opt_self();

          v48 = [v47 bundleForClass_];
          sub_21BE2599C();

          v24 = sub_21BE289DC();
          v49 = v71;
LABEL_15:

          goto LABEL_16;
        }
      }

      return 0;
    }

    v73 = 0x800000021BE5BBB0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_21BE33260;
    *(v60 + 56) = sub_21BCBEAA4();
    *(v60 + 64) = sub_21BCBEAF0(&qword_27CDB9378, sub_21BCBEAA4, MEMORY[0x277D85388]);
    *(v60 + 32) = v30;
    v72 = v30;
    v61 = [a1 createdAt];
    sub_21BE25CDC();

    v62 = v75;
    sub_21BE25C5C();
    v63 = v74;
    sub_21BE25C3C();
    v64 = sub_21BE25CFC();
    v66 = v65;
    (*(v3 + 8))(v63, v2);
    (*(v7 + 8))(v62, v77);
    (*(v11 + 8))(v13, v76);
    *(v60 + 96) = MEMORY[0x277D837D0];
    *(v60 + 104) = sub_21BBBEFE8();
    *(v60 + 72) = v64;
    *(v60 + 80) = v66;
    type metadata accessor for ConfirmChildAgeViewModel();
    v67 = swift_getObjCClassFromMetadata();
    v68 = objc_opt_self();

    v59 = [v68 bundleForClass_];
LABEL_14:
    sub_21BE2599C();

    v24 = sub_21BE289DC();
    v49 = v72;
    goto LABEL_15;
  }

  v76 = 0x800000021BE5BBF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21BE32770;
  v16 = [a1 createdAt];
  sub_21BE25CDC();

  sub_21BE25C5C();
  sub_21BE25C3C();
  v17 = sub_21BE25CFC();
  v18 = v5;
  v20 = v19;
  (*(v3 + 8))(v18, v2);
  (*(v7 + 8))(v9, v77);
  (*(v11 + 8))(v13, v10);
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_21BBBEFE8();
  *(v15 + 32) = v17;
  *(v15 + 40) = v20;
  type metadata accessor for ConfirmChildAgeViewModel();
  v21 = swift_getObjCClassFromMetadata();
  v22 = objc_opt_self();

  v23 = [v22 bundleForClass_];
  sub_21BE2599C();

  v24 = sub_21BE289DC();
LABEL_16:

  return v24;
}

unint64_t sub_21BCBEAA4()
{
  result = qword_280BD68F8;
  if (!qword_280BD68F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BD68F8);
  }

  return result;
}

uint64_t sub_21BCBEAF0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_21BCBEB38()
{
  result = qword_27CDB9388;
  if (!qword_27CDB9388)
  {
    v7[10] = v0;
    v7[11] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9330, &unk_21BE3F1B0);
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9320, &qword_21BE3F1A0);
    v5 = sub_21BB3B038(&qword_27CDB9338, &qword_27CDB9320, &qword_21BE3F1A0, aY_2);
    v6 = sub_21BB41FA4();
    v7[2] = v4;
    v7[3] = MEMORY[0x277D837D0];
    v7[4] = v5;
    v7[5] = v6;
    v7[0] = swift_getOpaqueTypeConformance2();
    v7[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v7);
    atomic_store(result, &qword_27CDB9388);
  }

  return result;
}

uint64_t sub_21BCBEC48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_21BCBEC90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21BCBECE4()
{
  result = qword_27CDB9390;
  if (!qword_27CDB9390)
  {
    result = swift_getWitnessTable(aEF, &type metadata for AgeRangeSharingViewWrapper, v0, v1);
    atomic_store(result, &qword_27CDB9390);
  }

  return result;
}

id sub_21BCBED38()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = objc_allocWithZone(type metadata accessor for AgeRangeSharingViewController());
  v4 = v1;

  return sub_21BCBEED4(v4, v2, v3);
}

uint64_t sub_21BCBED90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BCBEE80();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21BCBEDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BCBEE80();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21BCBEE58(uint64_t a1)
{
  sub_21BCBEE80();
  sub_21BE27ABC();
  __break(1u);
}

unint64_t sub_21BCBEE80()
{
  result = qword_27CDB9398;
  if (!qword_27CDB9398)
  {
    result = swift_getWitnessTable(byte_21BE3F2DC, &type metadata for AgeRangeSharingViewWrapper, v0, v1);
    atomic_store(result, &qword_27CDB9398);
  }

  return result;
}

id sub_21BCBEED4(uint64_t a1, char a2, _BYTE *a3)
{
  v6 = type metadata accessor for AgeRangeSharingView(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  a3[OBJC_IVAR____TtC14FamilyCircleUI29AgeRangeSharingViewController_presentAsModal] = a2;
  v12 = [objc_allocWithZone(MEMORY[0x277D08210]) init];
  type metadata accessor for AgeRangeSharingViewModel(0);
  v13 = swift_allocObject();
  *&a3[OBJC_IVAR____TtC14FamilyCircleUI29AgeRangeSharingViewController_ageRangeSharingViewModel] = sub_21BCBF078(v12, a1, v13);

  sub_21BCB3920(v14, a2, v11);
  sub_21BCBC8BC(v11, v9);
  sub_21BCBF558();
  v21 = sub_21BE2852C();
  v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5778, &qword_21BE4F700));
  *&a3[OBJC_IVAR____TtC14FamilyCircleUI29AgeRangeSharingViewController_underlyingHostingController] = sub_21BE2774C();
  v16 = type metadata accessor for AgeRangeSharingViewController();
  v20.receiver = a3;
  v20.super_class = v16;
  v17 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  sub_21BCBD884(v11);
  return v17;
}

uint64_t sub_21BCBF078(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  v13 = sub_21BE25D6C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + 24) = 0;
  *(a3 + 32) = 2;
  *(a3 + 40) = MEMORY[0x277D84F90];
  *(a3 + 48) = 0;
  *(a3 + 52) = 0;
  *(a3 + 56) = 1;
  *(a3 + 64) = 0;
  *(a3 + 80) = 0;
  *(a3 + 82) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 1;
  sub_21BE25D5C();
  (*(v14 + 32))(a3 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__dismissToken, v16, v13);
  *(a3 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldOpenPersonalInfoOnMac) = 0;
  v17 = (a3 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__onDismiss);
  *v17 = 0;
  v17[1] = 0;
  *(a3 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldShowOnboarding) = 0;
  sub_21BE25F4C();
  *(a3 + 16) = a1;
  *(a3 + 72) = a2;
  v18 = a1;
  sub_21BE263FC();
  v19 = sub_21BE289CC();

  v20 = [objc_opt_self() bundleWithIdentifier_];

  v21 = [objc_opt_self() flowWithBundle_];
  if (v21)
  {
    v22 = [v21 contentVersion];
    v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    sub_21BE2614C();
    v24 = v23;
    v25 = sub_21BE26A2C();
    v26 = sub_21BE28FCC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v46 = v6;
      v28 = v27;
      v29 = swift_slowAlloc();
      v45 = v7;
      v30 = v29;
      v47 = v29;
      *v28 = 136315138;
      v24 = v24;
      v31 = [v24 description];
      v43 = v18;
      v32 = v31;
      v33 = sub_21BE28A0C();
      v44 = v12;
      v34 = v33;
      v36 = v35;

      v37 = sub_21BB3D81C(v34, v36, &v47);

      *(v28 + 4) = v37;
      _os_log_impl(&dword_21BB35000, v25, v26, "Privacy version for onboarding: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x21CF05C50](v30, -1, -1);
      MEMORY[0x21CF05C50](v28, -1, -1);

      (*(v45 + 8))(v44, v46);
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }
  }

  else
  {
    sub_21BE2614C();
    v38 = sub_21BE26A2C();
    v39 = sub_21BE28FDC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_21BB35000, v38, v39, "Failed to get privacy version from onboarding", v40, 2u);
      MEMORY[0x21CF05C50](v40, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    sub_21BCBEAA4();
    v24 = sub_21BE293EC();
  }

  *(a3 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__privacyVersion) = v24;
  return a3;
}

unint64_t sub_21BCBF558()
{
  result = qword_27CDB93A0;
  if (!qword_27CDB93A0)
  {
    v3 = type metadata accessor for AgeRangeSharingView(255);
    result = swift_getWitnessTable(byte_21BE3ECD4, v3, v0, v1);
    atomic_store(result, &qword_27CDB93A0);
  }

  return result;
}

uint64_t sub_21BCBF5BC(uint64_t *a1, int a2)
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

uint64_t sub_21BCBF604(uint64_t result, int a2, int a3)
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

uint64_t sub_21BCBF680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93A8, &qword_21BE3F488);
  MEMORY[0x28223BE20](v5);
  v7 = v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93B0, &qword_21BE3F490);
  v9 = *(v8 - 8);
  v29 = v8;
  v30 = v9;
  MEMORY[0x28223BE20](v8);
  v28 = v27 - v10;
  v11 = swift_allocObject();
  v12 = *(v3 + 16);
  v11[1] = *v3;
  v11[2] = v12;
  v11[3] = *(v3 + 32);
  *(v11 + 57) = *(v3 + 41);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93B8, &qword_21BE3F498);
  (*(*(v13 - 8) + 16))(v7, a1, v13);
  v14 = &v7[*(v5 + 36)];
  *v14 = sub_21BCC0188;
  v14[1] = v11;
  v38 = *(v3 + 40);
  v39 = *(v3 + 56);
  sub_21BCC0190(v3, &v35);
  v27[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2856C();
  v15 = swift_allocObject();
  v16 = *(v3 + 16);
  v15[1] = *v3;
  v15[2] = v16;
  v15[3] = *(v3 + 32);
  *(v15 + 57) = *(v3 + 41);
  sub_21BCC0190(v3, &v35);
  v17 = sub_21BCC01D0();
  v18 = sub_21BBF32A0();
  sub_21BE2812C();

  sub_21BCC0288(v7);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  v21 = sub_21BE2599C();
  v23 = v22;

  v33 = v21;
  v34 = v23;
  v35 = *(v3 + 16);
  LOBYTE(v36) = *(v3 + 32);
  sub_21BE2856C();
  v32 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93D0, &qword_21BE439B0);
  *&v35 = v5;
  *(&v35 + 1) = &type metadata for CreateContactView;
  v36 = v17;
  v37 = v18;
  swift_getOpaqueTypeConformance2();
  sub_21BB41FA4();
  sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0, MEMORY[0x277CE14C0]);
  v24 = v29;
  v25 = v28;
  sub_21BE280EC();

  return (*(v30 + 8))(v25, v24);
}

id sub_21BCBFBBC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = objc_allocWithZone(type metadata accessor for CreateContactView.ContactViewDelegate());
  v5 = v3;
  result = [v4 init];
  *a2 = v3;
  a2[1] = result;
  return result;
}

uint64_t sub_21BCBFC10@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8158, &unk_21BE3AE50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v39 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v38 = &v37 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v37 = &v37 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - v14;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = objc_opt_self();
  v18 = [v17 bundleForClass_];
  v19 = sub_21BE2599C();
  v21 = v20;

  v41[0] = v19;
  v41[1] = v21;
  sub_21BE26DEC();
  v22 = sub_21BE26DFC();
  (*(*(v22 - 8) + 56))(v5, 0, 1, v22);
  sub_21BB41FA4();
  sub_21BE2844C();
  v23 = [v17 bundleForClass_];
  v24 = sub_21BE2599C();
  v26 = v25;

  v41[8] = v24;
  v41[9] = v26;
  v27 = swift_allocObject();
  v28 = a1[1];
  v27[1] = *a1;
  v27[2] = v28;
  v27[3] = a1[2];
  *(v27 + 57) = *(a1 + 41);
  sub_21BCC0190(a1, v41);
  v29 = v37;
  sub_21BE2845C();
  v30 = *(v7 + 16);
  v31 = v38;
  v30(v38, v15, v6);
  v32 = v39;
  v30(v39, v29, v6);
  v33 = v40;
  v30(v40, v31, v6);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93E0, &qword_21BE3F4A0);
  v30(&v33[*(v34 + 48)], v32, v6);
  v35 = *(v7 + 8);
  v35(v29, v6);
  v35(v15, v6);
  v35(v32, v6);
  return (v35)(v31, v6);
}

uint64_t sub_21BCC0064@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

unint64_t sub_21BCC01D0()
{
  result = qword_27CDB93C0;
  if (!qword_27CDB93C0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB93A8, &qword_21BE3F488);
    v4[0] = sub_21BB3B038(&qword_27CDB93C8, &qword_27CDB93B8, &qword_21BE3F498, MEMORY[0x277CE04B0]);
    v4[1] = sub_21BBDD1FC();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB93C0);
  }

  return result;
}

uint64_t sub_21BCC0288(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93A8, &qword_21BE3F488);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_13()
{

  return swift_deallocObject();
}

uint64_t sub_21BCC03B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21BCC03F8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_21BCC0464(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, _BYTE *a5@<X8>)
{
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EF0, &unk_21BE3E520);
  MEMORY[0x21CF036E0](v11, v7);
  v8 = v11[0];
  if (v11[0])
  {
    sub_21BBE66D8();
    v9 = a1;
    v10 = sub_21BE2940C();
  }

  else
  {
    v10 = 0;
  }

  *a5 = v10 & 1;
}

_BYTE *sub_21BCC0504(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((*result & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EF0, &unk_21BE3E520);
    return sub_21BE2854C();
  }

  return result;
}

double sub_21BCC0564(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_21BE28D7C();
  v9 = a5;
  v10 = a2;

  v11 = sub_21BE28D6C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a5;
  v14 = v10;

  v15 = v9;
  v16 = sub_21BE28D6C();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v13;
  v17[4] = v14;
  v17[5] = a3;
  v17[6] = a4;
  v17[7] = a5;
  sub_21BE2857C();
  v18 = swift_allocObject();
  v18[2] = v14;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  v19 = v14;

  v20 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93E8, &qword_21BE3F548);
  sub_21BB3B038(&qword_27CDB93F0, &qword_27CDB93E8, &qword_21BE3F548, MEMORY[0x277CE04B0]);
  sub_21BBF32A0();
  sub_21BE2812C();

  return result;
}

id sub_21BCC07A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = objc_allocWithZone(type metadata accessor for CreateContactView.ContactViewDelegate());
  v5 = a1;
  result = [v4 init];
  *a2 = a1;
  a2[1] = result;
  return result;
}

uint64_t objectdestroy_16Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BCC0888()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

void *sub_21BCC08FC()
{
  type metadata accessor for AppleCashFamilyCache();
  v0 = swift_allocObject();
  return sub_21BE210B8(v0);
}

uint64_t sub_21BCC0934()
{
  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  v1 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v1 removeObserver_];

  sub_21BB3A4CC(v0 + 24, &qword_27CDB9418, &qword_21BE3F6B8);
  v2 = OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCashViewModel__appleCashCellSublabel;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C80, &qword_21BE3B3A0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_21BB47CE0(*(v0 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCashViewModel__appleCashPersistedCache), *(v0 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCashViewModel__appleCashPersistedCache + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_21BCC0A5C()
{
  v1[69] = v0;
  v2 = sub_21BE26A4C();
  v1[70] = v2;
  v1[71] = *(v2 - 8);
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  sub_21BE28D7C();
  v1[77] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[78] = v4;
  v1[79] = v3;

  return MEMORY[0x2822009F8](sub_21BCC0B84, v4, v3);
}

uint64_t sub_21BCC0B84()
{
  v126 = v0;
  sub_21BBA3854(*(v0 + 552) + 24, v0 + 56, &qword_27CDB9418, &qword_21BE3F6B8);
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 56), *(v0 + 80));
    v122 = (*(v2 + 8) + **(v2 + 8));
    v3 = swift_task_alloc();
    *(v0 + 640) = v3;
    *v3 = v0;
    v3[1] = sub_21BCC1BE0;

    return v122(v0 + 16, v1, v2);
  }

  sub_21BB3A4CC(v0 + 56, &qword_27CDB9418, &qword_21BE3F6B8);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  v5 = *(*(v0 + 552) + 16);
  if ([v5 isMe] & 1) != 0 && (sub_21BE2916C())
  {
    sub_21BBA3854(v0 + 16, v0 + 416, &qword_27CDB9430, &unk_21BE3F720);
    v6 = *(v0 + 440);
    if (v6)
    {
      v7 = *(v0 + 448);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 416), *(v0 + 440));
      v8 = (*(v7 + 24))(v6, v7);
      v10 = v9;
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 416));
      sub_21BE2614C();

      v11 = sub_21BE26A2C();
      v12 = sub_21BE28FFC();

      v13 = os_log_type_enabled(v11, v12);
      v14 = *(v0 + 608);
      v15 = *(v0 + 568);
      v16 = *(v0 + 560);
      if (v13)
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v125[0] = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_21BB3D81C(v8, v10, v125);
        _os_log_impl(&dword_21BB35000, v11, v12, "MemberDetailsAppleCashViewModel, current balance for self %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
        MEMORY[0x21CF05C50](v18, -1, -1);
        MEMORY[0x21CF05C50](v17, -1, -1);
      }

      (*(v15 + 8))(v14, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21BE32770;
      *(v19 + 56) = MEMORY[0x277D837D0];
      *(v19 + 64) = sub_21BBBEFE8();
      *(v19 + 32) = v8;
      *(v19 + 40) = v10;
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v21 = objc_opt_self();

      v22 = [v21 bundleForClass_];
      sub_21BE2599C();

      v23 = sub_21BE289DC();
      v25 = v24;

      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 536) = v23;
      *(v0 + 544) = v25;

      sub_21BE26CBC();
      goto LABEL_61;
    }

    sub_21BB3A4CC(v0 + 416, &qword_27CDB9430, &unk_21BE3F720);
    sub_21BE2614C();
    v72 = sub_21BE26A2C();
    v73 = sub_21BE28FFC();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_21BB35000, v72, v73, "MemberDetailsAppleCashViewModel, no formattedCashBalance", v74, 2u);
      MEMORY[0x21CF05C50](v74, -1, -1);
    }

    v75 = *(v0 + 600);
    v76 = *(v0 + 568);
    v77 = *(v0 + 560);

    (*(v76 + 8))(v75, v77);
    type metadata accessor for ConfirmChildAgeViewModel();
    v78 = swift_getObjCClassFromMetadata();
    v79 = [objc_opt_self() bundleForClass_];
    v80 = sub_21BE2599C();
    v82 = v81;

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 520) = v80;
    *(v0 + 528) = v82;

    goto LABEL_50;
  }

  sub_21BBA3854(v0 + 16, v0 + 96, &qword_27CDB9430, &unk_21BE3F720);
  v26 = *(v0 + 120);
  if (!v26)
  {
    sub_21BB3A4CC(v0 + 96, &qword_27CDB9430, &unk_21BE3F720);
    sub_21BE2614C();
    v37 = sub_21BE26A2C();
    v38 = sub_21BE28FFC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_21BB35000, v37, v38, "MemberDetailsAppleCashViewModel, no associatedAccountInformation", v39, 2u);
      MEMORY[0x21CF05C50](v39, -1, -1);
    }

    v40 = *(v0 + 576);
    v41 = *(v0 + 568);
    v42 = *(v0 + 560);

    (*(v41 + 8))(v40, v42);
    type metadata accessor for ConfirmChildAgeViewModel();
    v43 = swift_getObjCClassFromMetadata();
    v44 = [objc_opt_self() bundleForClass_];
    v45 = sub_21BE2599C();
    v47 = v46;

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 456) = v45;
    *(v0 + 464) = v47;

LABEL_50:
    sub_21BE26CBC();
    sub_21BCC2F2C();
LABEL_61:
    sub_21BB3A4CC(v0 + 16, &qword_27CDB9430, &unk_21BE3F720);

    v120 = *(v0 + 8);

    return v120();
  }

  v27 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 96), *(v0 + 120));
  (*(v27 + 8))(v26, v27);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  sub_21BE2974C();
  sub_21BE297EC();
  if (*(v0 + 160))
  {
    v28 = MEMORY[0x277D84F90];
    do
    {
      sub_21BB3D104((v0 + 136), v0 + 376);
      v30 = *(v0 + 400);
      v31 = *(v0 + 408);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 376), v30);
      v32 = (*(v31 + 16))(v30, v31);
      v34 = v33;
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 376));
      if (v34)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_21BBBC990(0, *(v28 + 2) + 1, 1, v28);
        }

        v36 = *(v28 + 2);
        v35 = *(v28 + 3);
        if (v36 >= v35 >> 1)
        {
          v28 = sub_21BBBC990((v35 > 1), v36 + 1, 1, v28);
        }

        *(v28 + 2) = v36 + 1;
        v29 = &v28[16 * v36];
        *(v29 + 4) = v32;
        *(v29 + 5) = v34;
      }

      sub_21BE297EC();
    }

    while (*(v0 + 160));
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  v48 = [v5 altDSID];
  if (v48)
  {
    v49 = v48;
    v50 = sub_21BE28A0C();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0xE000000000000000;
  }

  *(v0 + 472) = v50;
  *(v0 + 480) = v52;
  v53 = swift_task_alloc();
  *(v53 + 16) = v0 + 472;
  v54 = sub_21BC9BF08(sub_21BBF0CC4, v53, v28);

  if ((v54 & 1) == 0)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    v67 = swift_getObjCClassFromMetadata();
    v68 = [objc_opt_self() bundleForClass_];
    v69 = sub_21BE2599C();
    v71 = v70;

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 488) = v69;
    *(v0 + 496) = v71;

    sub_21BE26CBC();
LABEL_60:
    sub_21BCC2F2C();

    goto LABEL_61;
  }

  sub_21BE2974C();
  while (1)
  {
    sub_21BE297EC();
    if (!*(v0 + 280))
    {

      goto LABEL_60;
    }

    sub_21BB3D104((v0 + 256), v0 + 296);
    v55 = *(v0 + 320);
    v56 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 296), v55);
    v57 = (*(v56 + 16))(v55, v56);
    v59 = v58;
    v60 = [v5 altDSID];
    if (!v60)
    {
      if (!v59)
      {
        goto LABEL_52;
      }

      goto LABEL_31;
    }

    v61 = v60;
    v62 = sub_21BE28A0C();
    v64 = v63;

    if (!v59)
    {
      if (!v64)
      {
        goto LABEL_52;
      }

LABEL_31:

      goto LABEL_32;
    }

    if (!v64)
    {
      goto LABEL_31;
    }

    if (v57 == v62 && v59 == v64)
    {
      break;
    }

    v66 = sub_21BE2995C();

    if (v66)
    {
      goto LABEL_52;
    }

LABEL_32:
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 296));
  }

LABEL_52:

  sub_21BB3D104((v0 + 296), v0 + 216);
  sub_21BB3D104((v0 + 216), v0 + 176);
  sub_21BE2614C();
  sub_21BB3A35C(v0 + 176, v0 + 336);
  v83 = sub_21BE26A2C();
  v84 = sub_21BE28FFC();
  if (!os_log_type_enabled(v83, v84))
  {
    v96 = *(v0 + 592);
    v97 = *(v0 + 568);
    v98 = *(v0 + 560);

    v95 = *(v97 + 8);
    v95(v96, v98);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 336));
LABEL_56:
    v99 = *(v0 + 200);
    v100 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 176), v99);
    v101 = (*(v100 + 24))(v99, v100);
    v103 = v102;
    sub_21BE2614C();

    v104 = sub_21BE26A2C();
    v105 = sub_21BE28FFC();

    v106 = os_log_type_enabled(v104, v105);
    v107 = *(v0 + 584);
    v108 = *(v0 + 560);
    if (v106)
    {
      v124 = v95;
      v109 = swift_slowAlloc();
      v121 = v107;
      v110 = v101;
      v111 = swift_slowAlloc();
      v125[0] = v111;
      *v109 = 136315138;
      *(v109 + 4) = sub_21BB3D81C(v110, v103, v125);
      _os_log_impl(&dword_21BB35000, v104, v105, "MemberDetailsAppleCashViewModel, current balance for member %s", v109, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v111);
      v112 = v111;
      v101 = v110;
      MEMORY[0x21CF05C50](v112, -1, -1);
      MEMORY[0x21CF05C50](v109, -1, -1);

      v124(v121, v108);
    }

    else
    {

      v95(v107, v108);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_21BE32770;
    *(v113 + 56) = MEMORY[0x277D837D0];
    *(v113 + 64) = sub_21BBBEFE8();
    *(v113 + 32) = v101;
    *(v113 + 40) = v103;
    type metadata accessor for ConfirmChildAgeViewModel();
    v114 = swift_getObjCClassFromMetadata();
    v115 = objc_opt_self();

    v116 = [v115 bundleForClass_];
    sub_21BE2599C();

    v117 = sub_21BE289DC();
    v119 = v118;

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 504) = v117;
    *(v0 + 512) = v119;

    sub_21BE26CBC();
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
    goto LABEL_60;
  }

  v85 = swift_slowAlloc();
  v86 = swift_slowAlloc();
  v125[0] = v86;
  *v85 = 136315138;
  v87 = *(v0 + 360);
  v88 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 336), v87);
  result = (*(v88 + 16))(v87, v88);
  if (v89)
  {
    v90 = result;
    v91 = v89;
    v123 = *(v0 + 592);
    v92 = *(v0 + 568);
    v93 = *(v0 + 560);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 336));
    v94 = sub_21BB3D81C(v90, v91, v125);

    *(v85 + 4) = v94;
    _os_log_impl(&dword_21BB35000, v83, v84, "MemberDetailsAppleCashViewModel, dsids matched for %s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v86);
    MEMORY[0x21CF05C50](v86, -1, -1);
    MEMORY[0x21CF05C50](v85, -1, -1);

    v95 = *(v92 + 8);
    v95(v123, v93);
    goto LABEL_56;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BCC1BE0()
{
  v1 = *v0;

  v2 = *(v1 + 632);
  v3 = *(v1 + 624);

  return MEMORY[0x2822009F8](sub_21BCC1D00, v3, v2);
}

uint64_t sub_21BCC1D00()
{
  v122 = v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v1 = *(*(v0 + 552) + 16);
  if ([v1 isMe] && (sub_21BE2916C() & 1) != 0)
  {
    sub_21BBA3854(v0 + 16, v0 + 416, &qword_27CDB9430, &unk_21BE3F720);
    v2 = *(v0 + 440);
    if (v2)
    {
      v3 = *(v0 + 448);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 416), *(v0 + 440));
      v4 = (*(v3 + 24))(v2, v3);
      v6 = v5;
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 416));
      sub_21BE2614C();

      v7 = sub_21BE26A2C();
      v8 = sub_21BE28FFC();

      v9 = os_log_type_enabled(v7, v8);
      v10 = *(v0 + 608);
      v11 = *(v0 + 568);
      v12 = *(v0 + 560);
      if (v9)
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v121[0] = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_21BB3D81C(v4, v6, v121);
        _os_log_impl(&dword_21BB35000, v7, v8, "MemberDetailsAppleCashViewModel, current balance for self %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        MEMORY[0x21CF05C50](v14, -1, -1);
        MEMORY[0x21CF05C50](v13, -1, -1);
      }

      (*(v11 + 8))(v10, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_21BE32770;
      *(v15 + 56) = MEMORY[0x277D837D0];
      *(v15 + 64) = sub_21BBBEFE8();
      *(v15 + 32) = v4;
      *(v15 + 40) = v6;
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v17 = objc_opt_self();

      v18 = [v17 bundleForClass_];
      sub_21BE2599C();

      v19 = sub_21BE289DC();
      v21 = v20;

      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 536) = v19;
      *(v0 + 544) = v21;

      sub_21BE26CBC();
      goto LABEL_57;
    }

    sub_21BB3A4CC(v0 + 416, &qword_27CDB9430, &unk_21BE3F720);
    sub_21BE2614C();
    v68 = sub_21BE26A2C();
    v69 = sub_21BE28FFC();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_21BB35000, v68, v69, "MemberDetailsAppleCashViewModel, no formattedCashBalance", v70, 2u);
      MEMORY[0x21CF05C50](v70, -1, -1);
    }

    v71 = *(v0 + 600);
    v72 = *(v0 + 568);
    v73 = *(v0 + 560);

    (*(v72 + 8))(v71, v73);
    type metadata accessor for ConfirmChildAgeViewModel();
    v74 = swift_getObjCClassFromMetadata();
    v75 = [objc_opt_self() bundleForClass_];
    v76 = sub_21BE2599C();
    v78 = v77;

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 520) = v76;
    *(v0 + 528) = v78;

    goto LABEL_46;
  }

  sub_21BBA3854(v0 + 16, v0 + 96, &qword_27CDB9430, &unk_21BE3F720);
  v22 = *(v0 + 120);
  if (!v22)
  {
    sub_21BB3A4CC(v0 + 96, &qword_27CDB9430, &unk_21BE3F720);
    sub_21BE2614C();
    v33 = sub_21BE26A2C();
    v34 = sub_21BE28FFC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_21BB35000, v33, v34, "MemberDetailsAppleCashViewModel, no associatedAccountInformation", v35, 2u);
      MEMORY[0x21CF05C50](v35, -1, -1);
    }

    v36 = *(v0 + 576);
    v37 = *(v0 + 568);
    v38 = *(v0 + 560);

    (*(v37 + 8))(v36, v38);
    type metadata accessor for ConfirmChildAgeViewModel();
    v39 = swift_getObjCClassFromMetadata();
    v40 = [objc_opt_self() bundleForClass_];
    v41 = sub_21BE2599C();
    v43 = v42;

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 456) = v41;
    *(v0 + 464) = v43;

LABEL_46:
    sub_21BE26CBC();
    sub_21BCC2F2C();
LABEL_57:
    sub_21BB3A4CC(v0 + 16, &qword_27CDB9430, &unk_21BE3F720);

    v117 = *(v0 + 8);

    return v117();
  }

  v23 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 96), *(v0 + 120));
  (*(v23 + 8))(v22, v23);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  sub_21BE2974C();
  sub_21BE297EC();
  if (*(v0 + 160))
  {
    v24 = MEMORY[0x277D84F90];
    do
    {
      sub_21BB3D104((v0 + 136), v0 + 376);
      v26 = *(v0 + 400);
      v27 = *(v0 + 408);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 376), v26);
      v28 = (*(v27 + 16))(v26, v27);
      v30 = v29;
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 376));
      if (v30)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_21BBBC990(0, *(v24 + 2) + 1, 1, v24);
        }

        v32 = *(v24 + 2);
        v31 = *(v24 + 3);
        if (v32 >= v31 >> 1)
        {
          v24 = sub_21BBBC990((v31 > 1), v32 + 1, 1, v24);
        }

        *(v24 + 2) = v32 + 1;
        v25 = &v24[16 * v32];
        *(v25 + 4) = v28;
        *(v25 + 5) = v30;
      }

      sub_21BE297EC();
    }

    while (*(v0 + 160));
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v44 = [v1 altDSID];
  if (v44)
  {
    v45 = v44;
    v46 = sub_21BE28A0C();
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0xE000000000000000;
  }

  *(v0 + 472) = v46;
  *(v0 + 480) = v48;
  v49 = swift_task_alloc();
  *(v49 + 16) = v0 + 472;
  v50 = sub_21BC9BF08(sub_21BBF0CC4, v49, v24);

  if ((v50 & 1) == 0)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    v63 = swift_getObjCClassFromMetadata();
    v64 = [objc_opt_self() bundleForClass_];
    v65 = sub_21BE2599C();
    v67 = v66;

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 488) = v65;
    *(v0 + 496) = v67;

    sub_21BE26CBC();
LABEL_56:
    sub_21BCC2F2C();

    goto LABEL_57;
  }

  sub_21BE2974C();
  while (1)
  {
    sub_21BE297EC();
    if (!*(v0 + 280))
    {

      goto LABEL_56;
    }

    sub_21BB3D104((v0 + 256), v0 + 296);
    v51 = *(v0 + 320);
    v52 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 296), v51);
    v53 = (*(v52 + 16))(v51, v52);
    v55 = v54;
    v56 = [v1 altDSID];
    if (!v56)
    {
      if (!v55)
      {
        goto LABEL_48;
      }

      goto LABEL_27;
    }

    v57 = v56;
    v58 = sub_21BE28A0C();
    v60 = v59;

    if (!v55)
    {
      if (!v60)
      {
        goto LABEL_48;
      }

LABEL_27:

      goto LABEL_28;
    }

    if (!v60)
    {
      goto LABEL_27;
    }

    if (v53 == v58 && v55 == v60)
    {
      break;
    }

    v62 = sub_21BE2995C();

    if (v62)
    {
      goto LABEL_48;
    }

LABEL_28:
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 296));
  }

LABEL_48:

  sub_21BB3D104((v0 + 296), v0 + 216);
  sub_21BB3D104((v0 + 216), v0 + 176);
  sub_21BE2614C();
  sub_21BB3A35C(v0 + 176, v0 + 336);
  v79 = sub_21BE26A2C();
  v80 = sub_21BE28FFC();
  if (!os_log_type_enabled(v79, v80))
  {
    v93 = *(v0 + 592);
    v94 = *(v0 + 568);
    v95 = *(v0 + 560);

    v92 = *(v94 + 8);
    v92(v93, v95);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 336));
LABEL_52:
    v96 = *(v0 + 200);
    v97 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 176), v96);
    v98 = (*(v97 + 24))(v96, v97);
    v100 = v99;
    sub_21BE2614C();

    v101 = sub_21BE26A2C();
    v102 = sub_21BE28FFC();

    v103 = os_log_type_enabled(v101, v102);
    v104 = *(v0 + 584);
    v105 = *(v0 + 560);
    if (v103)
    {
      v120 = v92;
      v106 = swift_slowAlloc();
      v118 = v104;
      v107 = v98;
      v108 = swift_slowAlloc();
      v121[0] = v108;
      *v106 = 136315138;
      *(v106 + 4) = sub_21BB3D81C(v107, v100, v121);
      _os_log_impl(&dword_21BB35000, v101, v102, "MemberDetailsAppleCashViewModel, current balance for member %s", v106, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v108);
      v109 = v108;
      v98 = v107;
      MEMORY[0x21CF05C50](v109, -1, -1);
      MEMORY[0x21CF05C50](v106, -1, -1);

      v120(v118, v105);
    }

    else
    {

      v92(v104, v105);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_21BE32770;
    *(v110 + 56) = MEMORY[0x277D837D0];
    *(v110 + 64) = sub_21BBBEFE8();
    *(v110 + 32) = v98;
    *(v110 + 40) = v100;
    type metadata accessor for ConfirmChildAgeViewModel();
    v111 = swift_getObjCClassFromMetadata();
    v112 = objc_opt_self();

    v113 = [v112 bundleForClass_];
    sub_21BE2599C();

    v114 = sub_21BE289DC();
    v116 = v115;

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 504) = v114;
    *(v0 + 512) = v116;

    sub_21BE26CBC();
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
    goto LABEL_56;
  }

  v81 = swift_slowAlloc();
  v82 = swift_slowAlloc();
  v121[0] = v82;
  *v81 = 136315138;
  v83 = *(v0 + 360);
  v84 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 336), v83);
  result = (*(v84 + 16))(v83, v84);
  if (v86)
  {
    v87 = result;
    v88 = v86;
    v119 = *(v0 + 592);
    v89 = *(v0 + 568);
    v90 = *(v0 + 560);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 336));
    v91 = sub_21BB3D81C(v87, v88, v121);

    *(v81 + 4) = v91;
    _os_log_impl(&dword_21BB35000, v79, v80, "MemberDetailsAppleCashViewModel, dsids matched for %s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v82);
    MEMORY[0x21CF05C50](v82, -1, -1);
    MEMORY[0x21CF05C50](v81, -1, -1);

    v92 = *(v89 + 8);
    v92(v119, v90);
    goto LABEL_52;
  }

  __break(1u);
  return result;
}

double sub_21BCC2C0C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v9 = sub_21BE26A2C();
  v10 = sub_21BE28FFC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21BB35000, v9, v10, "MemberDetailsAppleCashViewModel, got notification to update peer paymeant account", v11, 2u);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v12 = sub_21BE28DAC();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_21BE28D7C();

  v13 = sub_21BE28D6C();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v1;
  sub_21BBA932C(0, 0, v4, &unk_21BE3F718, v14);

  return result;
}

uint64_t sub_21BCC2E44()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BCC0A5C();
}

void sub_21BCC2F2C()
{
  v1 = (v0 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCashViewModel__appleCashPersistedCache);
  v2 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCashViewModel__appleCashPersistedCache);
  v3 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCashViewModel__appleCashPersistedCache + 8);
  sub_21BC718B0(v2, v3);
  type metadata accessor for AppleCashFamilyCache();
  sub_21BCC3DBC();
  v4 = sub_21BE26EAC();
  sub_21BB47CE0(v2, v3);
  sub_21BE1F1EC(v16);
  v6 = v16[0];
  v5 = v16[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v7 = sub_21BE289CC();

  v8 = sub_21BE1F55C();
  if (v8)
  {
    v9 = v8;
    v14 = *(v4 + 16);
    v15 = *(v4 + 24);

    MEMORY[0x21CF03CA0](46, 0xE100000000000000);
    MEMORY[0x21CF03CA0](v6, v5);
    v10 = sub_21BE289CC();

    [v9 setValue:v7 forKey:{v10, v14, v15}];

    v7 = v10;
  }

  else
  {
  }

  v11 = *v1;
  v12 = v1[1];
  sub_21BC718B0(*v1, v12);
  sub_21BE26EAC();
  sub_21BB47CE0(v11, v12);
  v13 = sub_21BE1F55C();
  [v13 synchronize];
}

uint64_t sub_21BCC313C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MemberDetailsAppleCashViewModel(0);
  result = sub_21BE26C0C();
  *a2 = result;
  return result;
}

id sub_21BCC317C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  a2[3] = sub_21BB3A2A4(0, &qword_27CDB9440, 0x277D38188);
  a2[4] = &off_282D8F1D0;
  *a2 = v4;

  return v4;
}

void sub_21BCC31E8()
{
  v1 = [*v0 associatedAccountInformation];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 associatedAccounts];

    if (v3)
    {
      sub_21BB3A2A4(0, &qword_27CDB9440, 0x277D38188);
      sub_21BCC3EC8();
      v4 = sub_21BE28E4C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9450, &unk_21BE3F740);
      v5 = swift_allocObject();
      v5[2] = v4;
      v5[3] = sub_21BCC317C;
      v5[4] = 0;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_21BCC32BC()
{
  v1 = [*v0 altDSID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21BE28A0C();

  return v3;
}

void sub_21BCC3324()
{
  v1 = [*v0 currentBalance];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 formattedStringValue];

    if (v3)
    {
      sub_21BE28A0C();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_21BCC33AC(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](sub_21BCC33CC, 0, 0);
}

uint64_t sub_21BCC33CC()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21BCC34E8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9438, &qword_21BE3F738);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BC2D85C;
  v0[13] = &block_descriptor_24;
  v0[14] = v2;
  [v1 accountWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BCC34E8()
{

  return MEMORY[0x2822009F8](sub_21BCC35C8, 0, 0);
}

uint64_t sub_21BCC35C8()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = sub_21BB3A2A4(0, &qword_27CDB9440, 0x277D38188);
    v3 = &off_282D8F1D0;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = v0[19];
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
  }

  v5 = v0[19];
  *v5 = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = v0[1];

  return v6();
}

uint64_t sub_21BCC366C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBA6A64;

  return sub_21BCC33AC(a1);
}

uint64_t type metadata accessor for MemberDetailsAppleCashViewModel(uint64_t a1)
{
  result = qword_27CDB9408;
  if (!qword_27CDB9408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BCC375C(uint64_t a1)
{
  sub_21BCC380C();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21BCC380C()
{
  if (!qword_27CDB7C58)
  {
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB7C58);
    }
  }
}

uint64_t sub_21BCC3898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21BBA6A64;

  return v9(a1, a2, a3);
}

void sub_21BCC39C4(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_21BCC3A44(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

uint64_t sub_21BCC3AC8(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C80, &qword_21BE3B3A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCashViewModel__appleCashCellSublabel;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_21BE2599C();
  v14 = v13;

  *&v24[0] = v12;
  *(&v24[0] + 1) = v14;
  sub_21BE26C6C();
  (*(v6 + 32))(v2 + v9, v8, v5);
  v15 = v2 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCashViewModel__appleCashPersistedCache;
  *v15 = sub_21BCC08FC;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  sub_21BBA3854(a2, &v22, &qword_27CDB9418, &qword_21BE3F6B8);
  if (v23)
  {
    sub_21BB3D104(&v22, v24);
    sub_21BB3D104(v24, v2 + 24);
  }

  else
  {
    sub_21BB3A4CC(&v22, &qword_27CDB9418, &qword_21BE3F6B8);
    v16 = [objc_opt_self() sharedInstance];
    if (v16)
    {
      v17 = v16;
      *(v2 + 48) = sub_21BB3A2A4(0, &qword_27CDB9420, 0x277D381A0);
      *(v2 + 56) = &off_282D8F1F0;
      *(v2 + 24) = v17;
    }

    else
    {
      *(v2 + 56) = 0;
      *(v2 + 40) = 0u;
      *(v2 + 24) = 0u;
    }
  }

  *(v2 + 16) = a1;
  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  v18 = swift_getObjCClassFromMetadata();
  v19 = a1;
  v20 = [v18 defaultCenter];
  [v20 addObserver:v2 selector:sel_paymentAccountDidChange name:*MEMORY[0x277D38350] object:0];

  sub_21BB3A4CC(a2, &qword_27CDB9418, &qword_21BE3F6B8);
  return v2;
}

unint64_t sub_21BCC3DBC()
{
  result = qword_27CDB9428;
  if (!qword_27CDB9428)
  {
    v3 = type metadata accessor for AppleCashFamilyCache();
    result = swift_getWitnessTable(protocol conformance descriptor for SimpleFamilyServerCache, v3, v0, v1);
    atomic_store(result, &qword_27CDB9428);
  }

  return result;
}

uint64_t sub_21BCC3E14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBB7EB8;

  return sub_21BCC2E44();
}

unint64_t sub_21BCC3EC8()
{
  result = qword_27CDB9448;
  if (!qword_27CDB9448)
  {
    v3 = sub_21BB3A2A4(255, &qword_27CDB9440, 0x277D38188);
    result = swift_getWitnessTable(MEMORY[0x277D85378], v3, v0, v1);
    atomic_store(result, &qword_27CDB9448);
  }

  return result;
}

void *sub_21BCC3F5C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v11 = a2;
  v12 = a4;
  result = sub_21BE283EC();
  *a5 = v14;
  a5[1] = v15;
  a5[2] = sub_21BCC5DEC;
  a5[3] = v10;
  a5[4] = sub_21BCC5D70;
  a5[5] = 0;
  a5[6] = 0;
  a5[7] = 0;
  return result;
}

id sub_21BCC4054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9458, &qword_21BE3F800);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = v25;
  v30 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9460, &qword_21BE3F808);
  sub_21BB3B038(&qword_27CDB9468, &qword_27CDB9460, &qword_21BE3F808, MEMORY[0x277CE14C0]);
  sub_21BE27D1C();
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  v17 = sub_21BE2599C();
  v19 = v18;

  v31 = v17;
  v32 = v19;
  sub_21BB3B038(&qword_27CDB9470, &qword_27CDB9458, &qword_21BE3F800, MEMORY[0x277CDE5A0]);
  sub_21BB41FA4();
  sub_21BE27F9C();

  (*(v12 + 8))(v14, v11);
  sub_21BBDAF04();
  sub_21BCC7290(&qword_280BD8A20, sub_21BBDAF04, protocol conformance descriptor for FAProfilePictureStore);
  v20 = sub_21BE26BFC();
  v21 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9478, &qword_21BE3F810) + 36));
  v22 = v25;
  *v21 = v20;
  v21[1] = v22;

  return v22;
}

uint64_t sub_21BCC4338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v54 = a3;
  v53 = a1;
  v59 = a6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9480, &qword_21BE3F818);
  v56 = *(v58 - 8);
  v11 = MEMORY[0x28223BE20](v58);
  v57 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v61 = &v50 - v13;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9488, &qword_21BE3F820);
  v52 = *(v55 - 8);
  v14 = v52;
  v15 = MEMORY[0x28223BE20](v55);
  v60 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - v17;
  v66 = a1;
  v67 = a2;
  v68 = a3;
  v69 = a4;
  v19 = a4;
  v70 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9490, &qword_21BE3F828);
  sub_21BB3B038(&qword_27CDB9498, &qword_27CDB9490, &qword_21BE3F828, MEMORY[0x277CE14C0]);
  v51 = v18;
  sub_21BE2860C();
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = objc_opt_self();
  v22 = [v21 bundleForClass_];
  v23 = sub_21BE2599C();
  v25 = v24;

  v75 = v23;
  v76 = v25;
  sub_21BB41FA4();
  v75 = sub_21BE27DBC();
  v76 = v26;
  v77 = v27 & 1;
  v78 = v28;
  v29 = [v21 bundleForClass_];
  v30 = sub_21BE2599C();
  v32 = v31;

  v71 = v30;
  v72 = v32;
  v71 = sub_21BE27DBC();
  v72 = v33;
  v73 = v34 & 1;
  v74 = v35;
  v62 = v53;
  v63 = a2;
  v64 = v54;
  v65 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB94A0, &qword_21BE3F830);
  sub_21BCC70CC();
  v36 = v61;
  sub_21BE285FC();
  v37 = *(v14 + 16);
  v38 = v60;
  v39 = v55;
  v37(v60, v18, v55);
  v40 = v56;
  v41 = *(v56 + 16);
  v42 = v57;
  v43 = v36;
  v44 = v58;
  v41(v57, v43, v58);
  v45 = v59;
  v37(v59, v38, v39);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB94C8, &qword_21BE3F840);
  v41(&v45[*(v46 + 48)], v42, v44);
  v47 = *(v40 + 8);
  v47(v61, v44);
  v48 = *(v52 + 8);
  v48(v51, v39);
  v47(v42, v44);
  return (v48)(v60, v39);
}

uint64_t sub_21BCC489C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, _OWORD *a6@<X8>)
{
  v50 = a5;
  v51 = a4;
  v48 = a1;
  v49 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB94E0, &qword_21BE3F8B8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v47 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB94E8, &qword_21BE3F8C0);
  v55 = *(v58 - 8);
  v11 = MEMORY[0x28223BE20](v58);
  v53 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = v47 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB94F0, &qword_21BE3F8C8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v56 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v47 - v17;
  v57 = sub_21BE2770C();
  LOBYTE(v65) = 0;
  sub_21BCC5098(&v61);
  v82 = *&v62[144];
  v83 = *&v62[160];
  v78 = *&v62[80];
  v79 = *&v62[96];
  v80 = *&v62[112];
  v81 = *&v62[128];
  v74 = *&v62[16];
  v75 = *&v62[32];
  v76 = *&v62[48];
  v77 = *&v62[64];
  v72 = v61;
  v73 = *v62;
  v85[10] = *&v62[144];
  v85[11] = *&v62[160];
  v85[6] = *&v62[80];
  v85[7] = *&v62[96];
  v85[8] = *&v62[112];
  v85[9] = *&v62[128];
  v85[2] = *&v62[16];
  v85[3] = *&v62[32];
  v85[4] = *&v62[48];
  v85[5] = *&v62[64];
  v84 = v62[176];
  v86 = v62[176];
  v85[0] = v61;
  v85[1] = *v62;
  sub_21BBA3854(&v72, &v59, &qword_27CDB94F8, &qword_21BE3F8D0);
  sub_21BB3A4CC(v85, &qword_27CDB94F8, &qword_21BE3F8D0);
  *&v64[151] = v81;
  *&v64[167] = v82;
  *&v64[183] = v83;
  *&v64[87] = v77;
  *&v64[103] = v78;
  *&v64[119] = v79;
  *&v64[135] = v80;
  *&v64[23] = v73;
  *&v64[39] = v74;
  *&v64[55] = v75;
  *&v64[71] = v76;
  v64[199] = v84;
  *&v64[7] = v72;
  v54 = v65;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v19 = 1;
  if ((v61 & 1) == 0)
  {
    *v10 = sub_21BE2770C();
    *(v10 + 1) = 0x402C000000000000;
    v10[16] = 0;
    v47[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9500, &unk_21BE3F920) + 44);
    v20 = swift_allocObject();
    v21 = v49;
    v20[2] = v48;
    v20[3] = a2;
    v22 = v10;
    v23 = v18;
    v24 = a2;
    v25 = v51;
    v20[4] = v21;
    v20[5] = v25;
    v26 = v50;
    v20[6] = v50;
    v27 = v26;
    v28 = v24;
    v18 = v23;
    v29 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DA0, &qword_21BE39C40);
    sub_21BCC72E8();
    sub_21BE2843C();
    sub_21BE2869C();
    sub_21BE2725C();
    v30 = v53;
    sub_21BBB7D84(v22, v53, &qword_27CDB94E0, &qword_21BE3F8B8);
    v31 = (v30 + *(v58 + 36));
    v32 = v68;
    v33 = v70;
    v31[4] = v69;
    v31[5] = v33;
    v31[6] = v71;
    v34 = v66;
    *v31 = v65;
    v31[1] = v34;
    v31[2] = v67;
    v31[3] = v32;
    v35 = v52;
    sub_21BBB7D84(v30, v52, &qword_27CDB94E8, &qword_21BE3F8C0);
    sub_21BBB7D84(v35, v23, &qword_27CDB94E8, &qword_21BE3F8C0);
    v19 = 0;
  }

  (*(v55 + 56))(v18, v19, 1, v58);
  v36 = v56;
  sub_21BBA3854(v18, v56, &qword_27CDB94F0, &qword_21BE3F8C8);
  *(&v60[9] + 1) = *&v64[144];
  *(&v60[10] + 1) = *&v64[160];
  *(&v60[11] + 1) = *&v64[176];
  *(&v60[5] + 1) = *&v64[80];
  *(&v60[6] + 1) = *&v64[96];
  *(&v60[7] + 1) = *&v64[112];
  *(&v60[8] + 1) = *&v64[128];
  *(&v60[1] + 1) = *&v64[16];
  *(&v60[2] + 1) = *&v64[32];
  *(&v60[3] + 1) = *&v64[48];
  v37 = v57;
  *&v59 = v57;
  *(&v59 + 1) = 0x402C000000000000;
  v38 = v54;
  LOBYTE(v60[0]) = v54;
  *(&v60[12] + 1) = *&v64[192];
  *(&v60[4] + 1) = *&v64[64];
  *(v60 + 1) = *v64;
  v39 = v60[10];
  a6[10] = v60[9];
  a6[11] = v39;
  a6[12] = v60[11];
  *(a6 + 201) = *(&v60[11] + 9);
  v40 = v60[6];
  a6[6] = v60[5];
  a6[7] = v40;
  v41 = v60[8];
  a6[8] = v60[7];
  a6[9] = v41;
  v42 = v60[2];
  a6[2] = v60[1];
  a6[3] = v42;
  v43 = v60[4];
  a6[4] = v60[3];
  a6[5] = v43;
  v44 = v60[0];
  *a6 = v59;
  a6[1] = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9510, &qword_21BE3F930);
  sub_21BBA3854(v36, a6 + *(v45 + 48), &qword_27CDB94F0, &qword_21BE3F8C8);
  sub_21BBA3854(&v59, &v61, &qword_27CDB9518, &unk_21BE3F938);
  sub_21BB3A4CC(v18, &qword_27CDB94F0, &qword_21BE3F8C8);
  sub_21BB3A4CC(v36, &qword_27CDB94F0, &qword_21BE3F8C8);
  *&v62[145] = *&v64[144];
  *&v62[161] = *&v64[160];
  *&v62[177] = *&v64[176];
  *&v62[81] = *&v64[80];
  *&v62[97] = *&v64[96];
  *&v62[113] = *&v64[112];
  *&v62[129] = *&v64[128];
  *&v62[17] = *&v64[16];
  *&v62[33] = *&v64[32];
  *&v62[49] = *&v64[48];
  *&v62[65] = *&v64[64];
  *&v61 = v37;
  *(&v61 + 1) = 0x402C000000000000;
  v62[0] = v38;
  v63 = *&v64[192];
  *&v62[1] = *v64;
  return sub_21BB3A4CC(&v61, &qword_27CDB9518, &unk_21BE3F938);
}

uint64_t sub_21BCC5098@<X0>(_OWORD *a1@<X8>)
{
  v72 = a1;
  v1 = sub_21BE2838C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  v8 = sub_21BE289CC();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:v7 withConfiguration:0];

  if (v9)
  {
    sub_21BE2836C();
    (*(v2 + 104))(v4, *MEMORY[0x277CE0FE0], v1);
    v75 = sub_21BE283CC();

    (*(v2 + 8))(v4, v1);
    sub_21BE2869C();
    sub_21BE26F2C();
    v10 = v121;
    v78 = v120;
    v79 = v122;
    v11 = v123;
    v76 = v121;
    v77 = v123;
    v74 = v124;
    v81 = v125;
    v80 = sub_21BE27B8C();
    sub_21BE26E0C();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v119 = v10;
    v117 = v11;
    v114 = 0;
    type metadata accessor for ConfirmChildAgeViewModel();
    v67 = swift_getObjCClassFromMetadata();
    v20 = [v6 bundleForClass_];
    v21 = sub_21BE2599C();
    v23 = v22;

    *&v92 = v21;
    *(&v92 + 1) = v23;
    v68 = sub_21BB41FA4();
    v24 = sub_21BE27DBC();
    v26 = v25;
    v28 = v27;
    sub_21BE27C7C();
    v65 = v6;
    v29 = sub_21BE27D9C();
    v31 = v30;
    v33 = v32;

    sub_21BBC7C7C(v24, v26, v28 & 1);

    v34 = sub_21BE27D8C();
    v70 = v35;
    v71 = v34;
    v66 = v36;
    v73 = v37;
    sub_21BBC7C7C(v29, v31, v33 & 1);

    KeyPath = swift_getKeyPath();
    v38 = [v65 bundleForClass_];
    v39 = sub_21BE2599C();
    v41 = v40;

    *&v92 = v39;
    *(&v92 + 1) = v41;
    v42 = sub_21BE27DBC();
    v44 = v43;
    LOBYTE(v24) = v45;
    sub_21BE27BEC();
    v46 = sub_21BE27D9C();
    v65 = v46;
    v48 = v47;
    v50 = v49;
    v68 = v51;

    sub_21BBC7C7C(v42, v44, v24 & 1);

    v52 = swift_getKeyPath();
    v67 = v52;
    LOBYTE(v24) = v66 & 1;
    v84 = v66 & 1;
    *&v85 = v75;
    *(&v85 + 1) = v78;
    LOBYTE(v86) = v76;
    *(&v86 + 1) = *v118;
    DWORD1(v86) = *&v118[3];
    *(&v86 + 1) = v79;
    LOBYTE(v87) = v77;
    *(&v87 + 1) = *v116;
    DWORD1(v87) = *&v116[3];
    *(&v87 + 1) = v74;
    *&v88 = v81;
    BYTE8(v88) = v80;
    HIDWORD(v88) = *&v115[3];
    *(&v88 + 9) = *v115;
    *&v89 = v13;
    *(&v89 + 1) = v15;
    *&v90 = v17;
    *(&v90 + 1) = v19;
    v91 = 0;
    LOBYTE(v98) = 0;
    v96 = v89;
    v97 = v90;
    v94 = v87;
    v95 = v88;
    v92 = v85;
    v93 = v86;
    v83 = v66 & 1;
    v50 &= 1u;
    v82 = v50;
    v53 = v86;
    v55 = v71;
    v54 = v72;
    *v72 = v85;
    v54[1] = v53;
    v56 = v94;
    v57 = v95;
    v58 = v97;
    v59 = v98;
    v54[4] = v96;
    v54[5] = v58;
    v54[2] = v56;
    v54[3] = v57;
    *(v54 + 12) = v59;
    *(v54 + 13) = v55;
    v61 = KeyPath;
    v60 = v70;
    *(v54 + 14) = v70;
    *(v54 + 120) = v24;
    *(v54 + 16) = v73;
    *(v54 + 17) = v61;
    *(v54 + 144) = 1;
    *(v54 + 19) = v46;
    *(v54 + 20) = v48;
    *(v54 + 168) = v50;
    *(v54 + 22) = v68;
    *(v54 + 23) = v52;
    *(v54 + 192) = 1;
    sub_21BBA3854(&v85, v99, &qword_27CDB9520, &qword_21BE3F998);
    sub_21BBA4A38(v55, v60, v24);

    v62 = v65;
    sub_21BBA4A38(v65, v48, v50);

    sub_21BBC7C7C(v62, v48, v50);

    sub_21BBC7C7C(v55, v60, v84);

    v99[0] = v75;
    v99[1] = v78;
    v100 = v76;
    *v101 = *v118;
    *&v101[3] = *&v118[3];
    v102 = v79;
    v103 = v77;
    *v104 = *v116;
    *&v104[3] = *&v116[3];
    v105 = v74;
    v106 = v81;
    v107 = v80;
    *v108 = *v115;
    *&v108[3] = *&v115[3];
    v109 = v13;
    v110 = v15;
    v111 = v17;
    v112 = v19;
    v113 = 0;
    return sub_21BB3A4CC(v99, &qword_27CDB9520, &qword_21BE3F998);
  }

  else
  {
    result = sub_21BE2978C();
    __break(1u);
  }

  return result;
}

double sub_21BCC57C8(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  v13 = sub_21BE28DAC();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_21BE28D7C();
  v14 = a5;
  v15 = a2;
  v16 = a4;
  v17 = sub_21BE28D6C();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = a1;
  v18[5] = v15;
  v18[6] = a3;
  v18[7] = v16;
  v18[8] = a5;
  sub_21BBA932C(0, 0, v12, &unk_21BE3F950, v18);

  return result;
}

uint64_t sub_21BCC5924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = sub_21BE28D7C();
  v8[3] = sub_21BE28D6C();
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_21BBAFDA8;

  return sub_21BCC7448(a8, a5);
}

double sub_21BCC59F4@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_21BE2599C();
  v6 = v5;

  *&v14 = v4;
  *(&v14 + 1) = v6;
  sub_21BB41FA4();
  v7 = sub_21BE27DBC();
  v9 = v8;
  LOBYTE(v6) = v10;
  v12 = v11;
  sub_21BE2869C();
  sub_21BE26F2C();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v12;
  *(a1 + 32) = v14;
  *(a1 + 48) = v15;
  result = *&v16;
  *(a1 + 64) = v16;
  return result;
}

uint64_t sub_21BCC5B20(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  swift_getKeyPath();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v9 = a2;
  v10 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8228, &qword_21BE3B0E0);
  sub_21BB3B038(&qword_27CDB94D0, &qword_27CDB8228, &qword_21BE3B0E0, MEMORY[0x277D83980]);
  sub_21BCC723C();
  sub_21BCC71DC();
  return sub_21BE285BC();
}

uint64_t sub_21BCC5C8C@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v14 = *(a1 + 40);
  type metadata accessor for AppleCardFamilySettingsViewModel(0);
  sub_21BCC7290(&unk_27CDB5760, type metadata accessor for AppleCardFamilySettingsViewModel, protocol conformance descriptor for AppleCardFamilySettingsViewModel);
  v10 = v5;

  v11 = a2;
  result = sub_21BE270CC();
  *a3 = v10;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v14;
  *(a3 + 48) = result;
  *(a3 + 56) = v13;
  return result;
}

double sub_21BCC5D70()
{
  if (qword_27CDB4F90 != -1)
  {
    swift_once();
  }

  v1[0] = 0;
  v2 = xmmword_21BE33DF0;
  v3 = 0;
  v4 = 0;
  v5 = 514;
  return sub_21BD23430(v1);
}

id sub_21BCC5DF8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21BE275DC();
  v32 = 0;
  sub_21BCC6030(a2, &v23);
  v38 = v27;
  v39 = v28;
  v40 = v29;
  v41 = v30;
  v34 = v23;
  v35 = v24;
  v36 = v25;
  v37 = v26;
  v42[0] = v23;
  v42[1] = v24;
  v42[2] = v25;
  v42[3] = v26;
  v42[4] = v27;
  v42[5] = v28;
  v42[6] = v29;
  v43 = v30;
  sub_21BBA3854(&v34, v22, &qword_27CDB9548, &qword_21BE3FA50);
  sub_21BB3A4CC(v42, &qword_27CDB9548, &qword_21BE3FA50);
  *&v31[71] = v38;
  *&v31[87] = v39;
  *&v31[103] = v40;
  *&v31[7] = v34;
  *&v31[23] = v35;
  *&v31[39] = v36;
  *&v31[119] = v41;
  *&v31[55] = v37;
  v6 = v32;
  sub_21BE286AC();
  sub_21BE2725C();
  v7 = *(a2 + 24);
  KeyPath = swift_getKeyPath();
  v33 = 0;
  v9 = swift_allocObject();
  v10 = *(a2 + 16);
  *(v9 + 16) = *a2;
  *(v9 + 32) = v10;
  v11 = *(a2 + 48);
  *(v9 + 48) = *(a2 + 32);
  *(v9 + 64) = v11;
  *(v9 + 80) = a1;
  *a3 = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = v6;
  v12 = *&v31[16];
  *(a3 + 17) = *v31;
  *(a3 + 33) = v12;
  v13 = *&v31[48];
  *(a3 + 49) = *&v31[32];
  *(a3 + 65) = v13;
  v14 = *&v31[64];
  v15 = *&v31[80];
  v16 = v23;
  *(a3 + 128) = *&v31[111];
  *(a3 + 144) = v16;
  *(a3 + 113) = *&v31[96];
  *(a3 + 97) = v15;
  *(a3 + 81) = v14;
  v17 = v27;
  *(a3 + 192) = v26;
  *(a3 + 208) = v17;
  v18 = v25;
  *(a3 + 160) = v24;
  *(a3 + 176) = v18;
  v19 = v29;
  *(a3 + 224) = v28;
  *(a3 + 240) = v19;
  *(a3 + 256) = (v7 & 1) == 0;
  *(a3 + 264) = KeyPath;
  *(a3 + 272) = 0;
  *(a3 + 280) = sub_21BCC7A90;
  *(a3 + 288) = v9;
  sub_21BCC7A58(a2, v22);

  return a1;
}

void sub_21BCC6030(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = qword_27CDB4E58;
  v5 = *a1;
  if (v4 != -1)
  {
    swift_once();
  }

  if (byte_27CDD41B0)
  {
    v6 = 40.0;
  }

  else
  {
    v6 = 38.0;
  }

  sub_21BBDAF04();
  sub_21BCC7290(&qword_280BD8A20, sub_21BBDAF04, protocol conformance descriptor for FAProfilePictureStore);
  v7 = sub_21BE2727C();
  v9 = v8;
  v10 = sub_21BE2771C();
  LOBYTE(v26[0]) = 1;
  sub_21BCC624C(a1, v22);
  *&v21[55] = v23;
  *&v21[39] = v22[2];
  *&v21[23] = v22[1];
  *&v21[7] = v22[0];
  v11 = v26[0];
  v24 = v10;
  v25[0] = v26[0];
  v12 = *v21;
  *&v25[1] = *v21;
  *&v25[64] = *(&v23 + 1);
  *&v25[49] = *&v21[48];
  v13 = *&v21[32];
  *&v25[33] = *&v21[32];
  v14 = *&v21[16];
  *&v25[17] = *&v21[16];
  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  v15 = *v25;
  *(a2 + 32) = v24;
  *(a2 + 48) = v15;
  v16 = *&v25[48];
  *(a2 + 80) = *&v25[32];
  *(a2 + 96) = v16;
  v17 = *&v25[16];
  *(a2 + 112) = *&v25[64];
  *(a2 + 64) = v17;
  v26[0] = v10;
  v26[1] = 0;
  v27 = v11;
  v28 = v12;
  *&v31[15] = *&v21[63];
  *v31 = *&v21[48];
  v30 = v13;
  v29 = v14;
  v18 = v7;
  v19 = v5;
  sub_21BBA3854(&v24, &v20, &qword_27CDB9550, &qword_21BE3FAA0);
  sub_21BB3A4CC(v26, &qword_27CDB9550, &qword_21BE3FAA0);
}

uint64_t sub_21BCC624C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v39 = *a1;
  v40[0] = v3;
  *(v40 + 9) = *(a1 + 25);
  sub_21BCC7B5C(&v39, &v37);
  *&v37 = sub_21BE2917C();
  *(&v37 + 1) = v4;
  sub_21BB41FA4();
  v5 = sub_21BE27DBC();
  v7 = v6;
  v9 = v8;
  sub_21BE2832C();
  v10 = sub_21BE27D4C();
  v34 = v11;
  v35 = v10;
  v33 = v12;
  v36 = v13;

  sub_21BBC7C7C(v5, v7, v9 & 1);

  v37 = v39;
  v38[0] = v40[0];
  *(v38 + 9) = *(v40 + 9);
  v14 = sub_21BCC64B8(&v37);
  v16 = v15;

  *&v37 = v14;
  *(&v37 + 1) = v16;
  v17 = sub_21BE27DBC();
  v19 = v18;
  LOBYTE(v16) = v20;
  sub_21BE27BEC();
  v21 = sub_21BE27D9C();
  v23 = v22;
  v25 = v24;

  sub_21BBC7C7C(v17, v19, v16 & 1);

  sub_21BE2833C();
  v26 = sub_21BE27D4C();
  v28 = v27;
  LOBYTE(v5) = v29;
  v31 = v30;

  sub_21BBC7C7C(v21, v23, v25 & 1);

  LOBYTE(v37) = v33 & 1;
  v41 = v5 & 1;
  *a2 = v35;
  *(a2 + 8) = v34;
  *(a2 + 16) = v33 & 1;
  *(a2 + 24) = v36;
  *(a2 + 32) = v26;
  *(a2 + 40) = v28;
  *(a2 + 48) = v5 & 1;
  *(a2 + 56) = v31;
  sub_21BBA4A38(v35, v34, v33 & 1);

  sub_21BBA4A38(v26, v28, v5 & 1);

  sub_21BBC7C7C(v26, v28, v5 & 1);

  sub_21BBC7C7C(v35, v34, v33 & 1);
}

uint64_t sub_21BCC64B8(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
LABEL_6:
    v3 = sub_21BE2599C();

    return v3;
  }

  v3 = *(a1 + 8);
  if ((*(a1 + 40) & 1) == 0 && *(a1 + 32) == 1)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    v4 = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
    goto LABEL_6;
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  return v3;
}

double sub_21BCC6620(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15[-v6];
  if ((*(a1 + 24) & 1) == 0)
  {
    v8 = sub_21BE28DAC();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    sub_21BE28D7C();
    sub_21BCC7A58(a1, v15);
    v9 = a2;
    v10 = sub_21BE28D6C();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    *(v11 + 16) = v10;
    *(v11 + 24) = v12;
    v13 = *(a1 + 16);
    *(v11 + 32) = *a1;
    *(v11 + 48) = v13;
    v14 = *(a1 + 48);
    *(v11 + 64) = *(a1 + 32);
    *(v11 + 80) = v14;
    *(v11 + 96) = a2;
    sub_21BBA932C(0, 0, v7, &unk_21BE3FA90, v11);
  }

  return result;
}

uint64_t sub_21BCC676C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  *(v5 + 80) = sub_21BE28D7C();
  *(v5 + 88) = sub_21BE28D6C();
  v8 = a4[1];
  *(v5 + 16) = *a4;
  *(v5 + 32) = v8;
  v9 = a4[3];
  *(v5 + 48) = a4[2];
  *(v5 + 64) = v9;
  v10 = *a4;
  v11 = swift_task_alloc();
  *(v5 + 96) = v11;
  *v11 = v5;
  v11[1] = sub_21BCC6840;

  return sub_21BCC69DC(v10, a5);
}

uint64_t sub_21BCC6840()
{

  v1 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BCC697C, v1, v0);
}

uint64_t sub_21BCC697C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BCC69DC(uint64_t a1, uint64_t a2)
{
  v3[18] = a1;
  v3[19] = a2;
  v4 = sub_21BE26A4C();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *(v2 + 56);
  v3[22] = v5;
  v3[23] = v6;
  sub_21BE28D7C();
  v3[24] = sub_21BE28D6C();
  v8 = sub_21BE28D0C();
  v3[25] = v8;
  v3[26] = v7;

  return MEMORY[0x2822009F8](sub_21BCC6AD4, v8, v7);
}

uint64_t sub_21BCC6AD4()
{
  v1 = v0[19];
  if (v1 && (v2 = [v1 topViewController], (v0[27] = v2) != 0))
  {
    v3 = v2;
    v4 = v0[18];
    v5 = *(v0[23] + OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_appleCardUtilities);
    v0[28] = v5;
    swift_unknownObjectRetain();
    v6 = [v4 altDSID];
    if (v6)
    {
      v7 = v6;
      sub_21BE28A0C();
    }

    v10 = sub_21BE289CC();
    v0[29] = v10;

    v0[2] = v0;
    v0[7] = v0 + 30;
    v0[3] = sub_21BCC6CF4;
    v11 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB61F0, &qword_21BE39610);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21BBDC4C4;
    v0[13] = &block_descriptor_49;
    v0[14] = v11;
    [v5 presentAppleCardSharingDetailsForAltDSID:v10 viewController:v3 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_21BCC6CF4()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);

  return MEMORY[0x2822009F8](sub_21BCC6DFC, v2, v1);
}

uint64_t sub_21BCC6DFC()
{
  v18 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);

  v3 = *(v0 + 240);
  swift_unknownObjectRelease();

  sub_21BE2614C();
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FFC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v3;
    _os_log_impl(&dword_21BB35000, v4, v5, "AppleCardFamilyView presentAppleCardSharingDetails %{BOOL}d", v6, 8u);
    MEMORY[0x21CF05C50](v6, -1, -1);
  }

  v8 = *(v0 + 168);
  v7 = *(v0 + 176);
  v9 = *(v0 + 160);

  (*(v8 + 8))(v7, v9);
  if (qword_27CDB4F90 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 216);
  v13[0] = 0;
  v14 = xmmword_21BE33DF0;
  v15 = 0;
  v16 = 0;
  v17 = 513;
  sub_21BD23430(v13);

  v11 = *(v0 + 8);

  return v11();
}

void *sub_21BCC6F94@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v12[0] = *v1;
  v12[1] = v3;
  v4 = v1[3];
  v12[2] = v1[2];
  v12[3] = v4;
  v5 = swift_allocObject();
  v6 = v1[1];
  v5[1] = *v1;
  v5[2] = v6;
  v7 = v1[3];
  v5[3] = v1[2];
  v5[4] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v11[8] = v8;
  sub_21BCC7A58(v12, v11);
  result = sub_21BE283EC();
  v10 = v11[1];
  *a1 = v11[0];
  a1[1] = v10;
  a1[2] = sub_21BCC7A50;
  a1[3] = v5;
  return result;
}

unint64_t sub_21BCC70CC()
{
  result = qword_27CDB94A8;
  if (!qword_27CDB94A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB94A0, &qword_21BE3F830);
    v4[0] = sub_21BCC7158();
    v4[1] = sub_21BBDD54C();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB94A8);
  }

  return result;
}

unint64_t sub_21BCC7158()
{
  result = qword_27CDB94B0;
  if (!qword_27CDB94B0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB94B8, &qword_21BE3F838);
    v4[0] = sub_21BCC71DC();
    result = swift_getWitnessTable(MEMORY[0x277CE1290], v3, v4);
    atomic_store(result, &qword_27CDB94B0);
  }

  return result;
}

unint64_t sub_21BCC71DC()
{
  result = qword_27CDB94C0;
  if (!qword_27CDB94C0)
  {
    result = swift_getWitnessTable(byte_21BE3FA00, &type metadata for FamilyMemberViewForAppleCard, v0, v1);
    atomic_store(result, &qword_27CDB94C0);
  }

  return result;
}

unint64_t sub_21BCC723C()
{
  result = qword_27CDB94D8;
  if (!qword_27CDB94D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyMemberWithSharedAppleCard, &type metadata for FamilyMemberWithSharedAppleCard, v0, v1);
    atomic_store(result, &qword_27CDB94D8);
  }

  return result;
}

uint64_t sub_21BCC7290(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_21BCC72E8()
{
  result = qword_27CDB9508;
  if (!qword_27CDB9508)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7DA0, &qword_21BE39C40);
    v4[0] = MEMORY[0x277CE0BC8];
    v4[1] = MEMORY[0x277CDF678];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB9508);
  }

  return result;
}

uint64_t sub_21BCC736C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21BBA6A64;

  return sub_21BCC5924(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_21BCC7448(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = sub_21BE26A4C();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  sub_21BE28D7C();
  v2[23] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v2[24] = v5;
  v2[25] = v4;

  return MEMORY[0x2822009F8](sub_21BCC753C, v5, v4);
}

uint64_t sub_21BCC753C()
{
  v1 = v0[18];
  if (v1 && (v2 = [v1 topViewController], (v0[26] = v2) != 0))
  {
    v3 = v2;
    v4 = *(v0[19] + OBJC_IVAR____TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel_appleCardUtilities);
    v0[2] = v0;
    v0[7] = v0 + 27;
    v0[3] = sub_21BCC76E4;
    v5 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB61F0, &qword_21BE39610);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21BBDC4C4;
    v0[13] = &block_descriptor_25;
    v0[14] = v5;
    [v4 presentAppleCardUserInvitationFlowWithViewController:v3 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_21BCC76E4()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return MEMORY[0x2822009F8](sub_21BCC77EC, v2, v1);
}

uint64_t sub_21BCC77EC()
{
  v17 = v0;
  v1 = *(v0 + 208);

  v2 = *(v0 + 216);

  sub_21BE2614C();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FFC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_21BB35000, v3, v4, "AppleCardFamilyView presentAppleCardUserInvitationFlow %{BOOL}d", v5, 8u);
    MEMORY[0x21CF05C50](v5, -1, -1);
  }

  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  v8 = *(v0 + 160);

  (*(v7 + 8))(v6, v8);
  if (qword_27CDB4F90 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 208);
  v12[0] = 0;
  v13 = xmmword_21BE33DF0;
  v14 = 0;
  v15 = 0;
  v16 = 512;
  sub_21BD23430(v12);

  v10 = *(v0 + 8);

  return v10();
}

unint64_t sub_21BCC797C()
{
  result = qword_27CDB9528;
  if (!qword_27CDB9528)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9530, &qword_21BE3F9F0);
    v4[0] = sub_21BB3B038(&qword_27CDB9538, &qword_27CDB9540, &qword_21BE3F9F8, byte_21BE477F8);
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB9528);
  }

  return result;
}

uint64_t sub_21BCC7A9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 96);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BCC676C(a1, v4, v5, (v1 + 32), v6);
}

uint64_t sub_21BCC7BC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  return v1;
}

uint64_t sub_21BCC7C18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  return v1;
}

uint64_t sub_21BCC7C74()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);

  if ((v6 & 1) == 0)
  {
    sub_21BE28FEC();
    v7 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

double NavigationControllerLink.body.getter(uint64_t a1)
{
  v3 = v1[1];
  v26[0] = *v1;
  v26[1] = v3;
  v27[0] = v1[2];
  *(v27 + 9) = *(v1 + 41);
  v4 = swift_allocObject();
  v5 = *(a1 + 24);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = v5;
  v6 = v1[1];
  *(v4 + 32) = *v1;
  *(v4 + 48) = v6;
  *(v4 + 64) = v1[2];
  *(v4 + 73) = *(v1 + 41);
  (*(*(a1 - 8) + 16))(&v22, v26, a1);
  v7 = sub_21BE2846C();
  v8 = sub_21BE2721C();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CDF028], v7);
  v10 = sub_21BCC83F4();
  v22 = v7;
  v23 = v8;
  v24 = WitnessTable;
  v25 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v22 = v7;
  v23 = v8;
  v24 = WitnessTable;
  v25 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_21BD614C8();
  v19 = v13;
  v20 = v14;
  v21 = v15;
  v16 = type metadata accessor for NavigationControllerReader(0, OpaqueTypeMetadata2, OpaqueTypeConformance2, v15);
  swift_getWitnessTable(byte_21BE477F8, v16, v18, v19, v20, v21);
  sub_21BD37338();

  sub_21BD37338();

  return result;
}

uint64_t sub_21BCC7FE8@<X0>(void *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a1;
  v41 = a5;
  v8 = sub_21BE2721C();
  v34 = v8;
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v38 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21BE2846C();
  v39 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CDF028], v10);
  v33 = WitnessTable;
  v32 = sub_21BCC83F4();
  v45 = v10;
  v46 = v8;
  v47 = WitnessTable;
  v48 = v32;
  v36 = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v37 = *(OpaqueTypeMetadata2 - 8);
  v15 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  v21 = a2[1];
  *(v20 + 32) = *a2;
  *(v20 + 48) = v21;
  *(v20 + 64) = a2[2];
  *(v20 + 73) = *(a2 + 41);
  v22 = v35;
  *(v20 + 96) = v35;
  v42 = a3;
  v43 = a4;
  v44 = a2;
  v24 = type metadata accessor for NavigationControllerLink(0, a3, a4, v23);
  (*(*(v24 - 8) + 16))(&v45, a2, v24);
  v25 = v22;
  sub_21BE2843C();
  v26 = v38;
  sub_21BE2720C();
  v27 = v34;
  v28 = v33;
  v29 = v32;
  sub_21BE27ECC();
  (*(v40 + 8))(v26, v27);
  (*(v39 + 8))(v12, v10);
  v45 = v10;
  v46 = v27;
  v47 = v28;
  v48 = v29;
  swift_getOpaqueTypeConformance2();
  sub_21BD37338();
  v30 = *(v37 + 8);
  v30(v17, OpaqueTypeMetadata2);
  sub_21BD37338();
  return (v30)(v19, OpaqueTypeMetadata2);
}

unint64_t sub_21BCC83F4()
{
  result = qword_27CDBC430;
  if (!qword_27CDBC430)
  {
    v3 = sub_21BE2721C();
    result = swift_getWitnessTable(MEMORY[0x277CDDB08], v3, v0, v1);
    atomic_store(result, &qword_27CDBC430);
  }

  return result;
}

double sub_21BCC8490(_OWORD *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[1];
  v21[2] = *a1;
  v21[3] = v8;
  v22[0] = a1[2];
  *(v22 + 9) = *(a1 + 41);
  v9 = type metadata accessor for NavigationControllerLink(0, a3, a4, a4);
  sub_21BCC7C74();
  v10 = a1[1];
  v20[4] = *a1;
  v20[5] = v10;
  v21[0] = a1[2];
  *(v21 + 9) = *(a1 + 41);
  v11 = sub_21BCC7C18();
  v13 = v12;
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a2;
  v17 = a1[1];
  *(v16 + 40) = *a1;
  *(v16 + 56) = v17;
  *(v16 + 72) = a1[2];
  *(v16 + 81) = *(a1 + 41);
  v18 = a2;
  (*(*(v9 - 8) + 16))(v20, a1, v9);
  sub_21BC57A64(v11, v13, v15 & 1, &unk_21BE3FBF8, v16);

  return result;
}

uint64_t sub_21BCC8608(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_21BE28D7C();
  v2[4] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_21BCC86A0, v4, v3);
}

uint64_t sub_21BCC86A0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = **(v0 + 24);
    v3 = v1;
    v7 = (v2 + *v2);
    v4 = swift_task_alloc();
    *(v0 + 56) = v4;
    *v4 = v0;
    v4[1] = sub_21BCC87E8;

    return v7(v3);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_21BCC87E8()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_21BCC8990;
  }

  else
  {
    v5 = sub_21BCC8924;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BCC8924()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BCC8990()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BCC89FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v14[-v8];
  v10 = *(v7 + 16);
  v11 = *(v7 + 40);
  v14[16] = *(v7 + 32) & 1;
  v15 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  v10(v14[15]);
  sub_21BD37338();
  v12 = *(v3 + 8);
  v12(v6, a2);
  sub_21BD37338();
  return (v12)(v9, a2);
}

uint64_t sub_21BCC8B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21BCC8BEC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBA6A64;

  return sub_21BCC8608(v2, v0 + 40);
}

uint64_t Link.init(action:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_21BE283EC();
  *(a5 + 32) = v12;
  *(a5 + 40) = v13;
  type metadata accessor for NavigationManager(0);
  sub_21BC16738();
  result = sub_21BE26E9C();
  *(a5 + 48) = result;
  *(a5 + 56) = v11 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *a5 = a1;
  *(a5 + 8) = a2;
  return result;
}

uint64_t sub_21BCC8D78()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);

  if ((v6 & 1) == 0)
  {
    sub_21BE28FEC();
    v7 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t Link.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v4 = a1 + 3;
  v21[0] = a1 + 5;
  v5 = a1[2];
  v6 = a1[4];
  v7 = sub_21BE2846C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v21 - v12;
  v14 = v2[1];
  v26[0] = *v2;
  v26[1] = v14;
  v27[0] = v2[2];
  *(v27 + 9) = *(v2 + 41);
  v15 = swift_allocObject();
  *&v16 = v5;
  *(&v16 + 1) = *v4;
  *&v17 = v6;
  *(&v17 + 1) = *v21[0];
  v15[1] = v16;
  v15[2] = v17;
  v18 = v2[1];
  v15[3] = *v2;
  v15[4] = v18;
  v15[5] = v2[2];
  *(v15 + 89) = *(v2 + 41);
  v23 = v17;
  v22 = v16;
  v24 = v26;
  (*(*(a1 - 1) + 16))(v25, v26, a1);
  sub_21BE2843C();
  swift_getWitnessTable(MEMORY[0x277CDF028], v7);
  sub_21BD37338();
  v19 = *(v8 + 8);
  v19(v11, v7);
  sub_21BD37338();
  return (v19)(v13, v7);
}

double sub_21BCC9124(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1[1];
  v14 = *a1;
  v15 = v8;
  v16[0] = a1[2];
  *(v16 + 9) = *(a1 + 41);
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  type metadata accessor for Link(0, v13);
  sub_21BCC8D78();
  v9 = sub_21BCC7C18();
  sub_21BC56624(v9, v11, v10 & 1, *a1, *(a1 + 1), a3, a5);

  return result;
}

uint64_t sub_21BCC91F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - v8;
  v10 = *(v7 + 16);
  v11 = *(v7 + 32);
  v12 = *(v7 + 40);
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  type metadata accessor for Link(0, &v20);
  LOBYTE(v20) = v11 & 1;
  v21 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  v10(v24);
  sub_21BD37338();
  v17 = *(v3 + 8);
  v17(v6, a2);
  sub_21BD37338();
  return (v17)(v9, a2);
}

uint64_t sub_21BCC93DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21BCC945C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9668, &qword_21BE3FDE8) + 36);
  *&v7[*(type metadata accessor for HandleInviteErrorAlertViewModifier(0) + 24)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  swift_storeEnumTagMultiPayload();
  *v7 = 1;

  sub_21BE283EC();
  v7[8] = v12;
  *(v7 + 2) = v13;
  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  v8 = [swift_getObjCClassFromMetadata() defaultCenter];
  if (qword_27CDB4EE8 != -1)
  {
    swift_once();
  }

  sub_21BE2935C();

  *a3 = a1;
  a3[1] = a2;
  if (qword_280BD83C0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BC2ACA4();
  v9 = sub_21BE26BFC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9670, &unk_21BE3FE40);
  v11 = (a3 + *(result + 36));
  *v11 = v9;
  v11[1] = v12;
  return result;
}

uint64_t sub_21BCC969C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB96F0, &qword_21BE3FF80);
  v3 = v2 - 8;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v31[-v7];
  v33 = sub_21BE275DC();
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_21BE2599C();
  v13 = v12;

  *&v36 = v11;
  *(&v36 + 1) = v13;
  sub_21BB41FA4();
  v14 = sub_21BE27DBC();
  v16 = v15;
  v32 = v17;
  v19 = v18;
  sub_21BE2869C();
  sub_21BE26F2C();
  v35 = 1;
  *&v34[5] = v36;
  *&v34[21] = v37;
  *&v34[37] = v38;
  *v8 = sub_21BE275DC();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v20 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB96F8, &qword_21BE3FF88) + 44)];
  sub_21BE26EEC();
  *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF8, &unk_21BE38C60) + 36)] = 257;
  v21 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E00, &unk_21BE33820) + 36)];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
  v23 = *MEMORY[0x277CDF420];
  v24 = sub_21BE26E7C();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = swift_getKeyPath();
  v25 = sub_21BE282DC();
  v26 = sub_21BE27B7C();
  v27 = &v8[*(v3 + 44)];
  *v27 = v25;
  v27[8] = v26;
  sub_21BBA3854(v8, v6, &qword_27CDB96F0, &qword_21BE3FF80);
  v28 = *&v34[16];
  *(a1 + 67) = *v34;
  *a1 = v33;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = v16;
  LOBYTE(v25) = v32 & 1;
  *(a1 + 40) = v32 & 1;
  *(a1 + 48) = v19;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 65) = 257;
  *(a1 + 83) = v28;
  *(a1 + 99) = *&v34[32];
  *(a1 + 112) = *&v34[45];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9700, &qword_21BE3FFC8);
  sub_21BBA3854(v6, a1 + *(v29 + 64), &qword_27CDB96F0, &qword_21BE3FF80);
  sub_21BBA4A38(v14, v16, v25);

  sub_21BB3A4CC(v8, &qword_27CDB96F0, &qword_21BE3FF80);
  sub_21BB3A4CC(v6, &qword_27CDB96F0, &qword_21BE3FF80);
  sub_21BBC7C7C(v14, v16, v25);
}

uint64_t sub_21BCC9A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_21BE2869C();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB96D0, &qword_21BE3FF60);
  return sub_21BCC9A98(a1, a2, a3 + *(v7 + 44));
}

uint64_t sub_21BCC9A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB96D8, &qword_21BE3FF68);
  v7 = v6 - 8;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  *v12 = sub_21BE2770C();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB96E0, &qword_21BE3FF70);
  sub_21BCC969C(&v12[*(v13 + 44)]);
  v14 = sub_21BE282DC();
  v15 = sub_21BE27B7C();
  v16 = &v12[*(v7 + 44)];
  *v16 = v14;
  v16[8] = v15;

  v17 = sub_21BE271CC();
  LOBYTE(v14) = sub_21BE27B7C();
  sub_21BBA3854(v12, v10, &qword_27CDB96D8, &qword_21BE3FF68);
  sub_21BBA3854(v10, a3, &qword_27CDB96D8, &qword_21BE3FF68);
  v18 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB96E8, &qword_21BE3FF78) + 48);
  *v18 = a1;
  *(v18 + 8) = a2;
  *(v18 + 16) = v17;
  *(v18 + 24) = v14;

  sub_21BB3A4CC(v12, &qword_27CDB96D8, &qword_21BE3FF68);

  return sub_21BB3A4CC(v10, &qword_27CDB96D8, &qword_21BE3FF68);
}

uint64_t sub_21BCC9C44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB96C0, &qword_21BE3FF58);
  sub_21BB3B038(&qword_27CDB96C8, &qword_27CDB96C0, &qword_21BE3FF58, MEMORY[0x277CE11A8]);
  return sub_21BE271BC();
}

uint64_t sub_21BCC9CEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BE2754C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for HandleInviteErrorAlertViewModifier(0);
  sub_21BBA3854(v1 + *(v10 + 24), v9, &unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21BE26F5C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_21BE28FEC();
    v13 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_21BCC9EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26[1] = a2;
  v5 = type metadata accessor for HandleInviteErrorAlertViewModifier(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB96A8, &qword_21BE3FF40);
  MEMORY[0x28223BE20](v9);
  v11 = v26 - v10;
  v12 = *(v6 + 36);
  sub_21BCCAAEC(v3, v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_21BCCAB50(v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB96B0, &unk_21BE3FF48);
  (*(*(v15 - 8) + 16))(v11, a1, v15);
  v26[0] = v9;
  v16 = *(v9 + 52);
  v17 = sub_21BE2934C();
  (*(*(v17 - 8) + 16))(&v11[v16], v3 + v12, v17);
  v18 = &v11[*(v9 + 56)];
  *v18 = sub_21BCCABB4;
  v18[1] = v14;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  v21 = sub_21BE2599C();
  v23 = v22;

  v29 = v21;
  v30 = v23;
  v24 = *(v3 + 16);
  v27 = *(v3 + 8);
  v28 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  v26[4] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  sub_21BB3B038(&qword_27CDB96B8, &qword_27CDB96A8, &qword_21BE3FF40, MEMORY[0x277CDDB50]);
  sub_21BB41FA4();
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460, MEMORY[0x277CDF028]);
  sub_21BE280EC();

  return sub_21BB3A4CC(v11, &qword_27CDB96A8, &qword_21BE3FF40);
}

uint64_t sub_21BCCA354(uint64_t a1)
{
  v2 = type metadata accessor for HandleInviteErrorAlertViewModifier(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8158, &unk_21BE3AE50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - v6;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_21BE2599C();
  v12 = v11;

  v17[0] = v10;
  v17[1] = v12;
  sub_21BE26DEC();
  v13 = sub_21BE26DFC();
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  sub_21BCCAAEC(a1, v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  sub_21BCCAB50(v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_21BB41FA4();
  return sub_21BE2844C();
}

uint64_t sub_21BCCA590(uint64_t a1)
{
  v2 = sub_21BE26F5C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(a1 + 16);
  v8[16] = *(a1 + 8);
  v9 = v6;
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  result = sub_21BE2840C();
  if (*a1 == 1)
  {
    sub_21BCC9CEC(v5);
    sub_21BE26F4C();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_21BCCA6B0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t type metadata accessor for HandleInviteErrorAlertViewModifier(uint64_t a1)
{
  result = qword_27CDB9678;
  if (!qword_27CDB9678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BCCA818(uint64_t a1)
{
  sub_21BB403C0();
  if (v1 <= 0x3F)
  {
    sub_21BB40410(319);
    if (v2 <= 0x3F)
    {
      sub_21BE2934C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21BCCA8C4()
{
  result = qword_27CDB9688;
  if (!qword_27CDB9688)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9670, &unk_21BE3FE40);
    v4[0] = sub_21BCCA97C();
    v4[1] = sub_21BB3B038(&qword_27CDB6B20, &qword_27CDB6B28, &qword_21BE35DB8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB9688);
  }

  return result;
}

unint64_t sub_21BCCA97C()
{
  result = qword_27CDB9690;
  if (!qword_27CDB9690)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9668, &qword_21BE3FDE8);
    v4[0] = sub_21BCCAA08();
    v4[1] = sub_21BCCAA5C();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB9690);
  }

  return result;
}

unint64_t sub_21BCCAA08()
{
  result = qword_27CDB9698;
  if (!qword_27CDB9698)
  {
    result = swift_getWitnessTable(byte_21BE3FEA0, &type metadata for ModernInvitationLoadingView, v0, v1);
    atomic_store(result, &qword_27CDB9698);
  }

  return result;
}

unint64_t sub_21BCCAA5C()
{
  result = qword_27CDB96A0;
  if (!qword_27CDB96A0)
  {
    v3 = type metadata accessor for HandleInviteErrorAlertViewModifier(255);
    result = swift_getWitnessTable(asc_21BE3FEF0, v3, v0, v1);
    atomic_store(result, &qword_27CDB96A0);
  }

  return result;
}

uint64_t sub_21BCCAAEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandleInviteErrorAlertViewModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCCAB50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandleInviteErrorAlertViewModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCCABB4(uint64_t a1)
{
  v3 = *(type metadata accessor for HandleInviteErrorAlertViewModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21BCCA2F4(a1, v4);
}

uint64_t objectdestroyTm_14()
{
  v1 = type metadata accessor for HandleInviteErrorAlertViewModifier(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21BE26F5C();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 28);
  v6 = sub_21BE2934C();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_21BCCAD90()
{
  v1 = *(type metadata accessor for HandleInviteErrorAlertViewModifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21BCCA590(v2);
}

uint64_t sub_21BCCAE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21BBB8A28;

  return v9(a1, a2, a3);
}

uint64_t sub_21BCCAF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21BCCB0A8;

  return v9(a1, a2, a3);
}

uint64_t sub_21BCCB0A8(uint64_t a1, char a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2 & 1);
}

uint64_t sub_21BCCB1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21BBB7EB8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_21BCCB2E0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_21BE25CDC();
    v10 = sub_21BE25D1C();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_21BE25D1C();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_21BB3A4CC(v8, &qword_27CDB9720, &unk_21BE39F00);
}

uint64_t sub_21BCCB434()
{
  v1 = v0;
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v6 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v7 = objc_allocWithZone(MEMORY[0x277CBDA70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB66B0, &qword_21BE40060);
  v8 = sub_21BE28C1C();
  v9 = [v7 initWithKeysToFetch_];

  v20[0] = 0;
  v10 = [v6 contactCountForFetchRequest:v9 error:v20];

  if (v10)
  {
    v11 = v20[0];
    v12 = [v10 integerValue];

    *(v1 + 16) = v12;
    *(v1 + 24) = 0;
  }

  else
  {
    v13 = v20[0];
    v14 = sub_21BE25A8C();

    swift_willThrow();
    sub_21BE2614C();
    v15 = sub_21BE26A2C();
    v16 = sub_21BE28FDC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21BB35000, v15, v16, "Failed to fetch contact count", v17, 2u);
      MEMORY[0x21CF05C50](v17, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  return v1;
}

uint64_t sub_21BCCB6AC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_21BE26A4C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BCCB798, 0, 0);
}

uint64_t sub_21BCCB798()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D4BAE0]) initWithDSID_];
  v2 = [objc_allocWithZone(MEMORY[0x277D4BA98]) init];
  *(v0 + 16) = 0;
  v3 = [v2 currentConfigurationForUser:v1 error:v0 + 16];

  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = v4;
    v6 = [v3 screenTimeState];

    v7 = v6 == 1;
  }

  else
  {
    v9 = *(v0 + 48);
    v8 = *(v0 + 56);
    v10 = *(v0 + 40);
    v11 = v4;
    v12 = sub_21BE25A8C();

    swift_willThrow();
    sub_21BE261BC();
    v13 = v12;
    sub_21BC51D50(v12, 0xD00000000000002CLL, 0x800000021BE5BFD0);

    (*(v9 + 8))(v8, v10);
    v7 = 0;
  }

  **(v0 + 24) = v7;

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_21BCCB970(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_21BE26A4C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BCCBA68, 0, 0);
}

uint64_t sub_21BCCBA68()
{
  v33 = v0;
  v32[1] = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 32) dsid];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x277D4BAE0]) initWithDSID_];
    v4 = [objc_allocWithZone(MEMORY[0x277D4BA98]) init];
    *(v0 + 16) = 0;
    v5 = [v4 currentConfigurationForUser:v3 error:v0 + 16];

    v6 = *(v0 + 16);
    if (v5)
    {
      v7 = v6;
      v8 = [v5 contactManagementState];

      v9 = 0;
      goto LABEL_9;
    }

    v24 = *(v0 + 48);
    v23 = *(v0 + 56);
    v25 = *(v0 + 40);
    v26 = v6;
    v27 = sub_21BE25A8C();

    swift_willThrow();
    sub_21BE261BC();
    v28 = v27;
    sub_21BC51D50(v27, 0xD000000000000037, 0x800000021BE5BF50);

    (*(v24 + 8))(v23, v25);
  }

  else
  {
    v10 = *(v0 + 32);
    sub_21BE261BC();
    v11 = v10;
    v12 = sub_21BE26A2C();
    v13 = sub_21BE28FDC();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 64);
    v16 = *(v0 + 40);
    v17 = *(v0 + 48);
    if (v14)
    {
      v18 = *(v0 + 32);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32[0] = v21;
      *v19 = 136315394;
      *(v19 + 4) = sub_21BB3D81C(0xD00000000000002DLL, 0x800000021BE5BF20, v32);
      *(v19 + 12) = 2112;
      *(v19 + 14) = v18;
      *v20 = v18;
      v22 = v18;
      _os_log_impl(&dword_21BB35000, v12, v13, "%s %@ has no dsid", v19, 0x16u);
      sub_21BB3A4CC(v20, &qword_27CDB7AF0, &qword_21BE37410);
      MEMORY[0x21CF05C50](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x21CF05C50](v21, -1, -1);
      MEMORY[0x21CF05C50](v19, -1, -1);
    }

    (*(v17 + 8))(v15, v16);
  }

  v8 = 0;
  v9 = 1;
LABEL_9:
  v29 = *(v0 + 24);
  *v29 = v8;
  *(v29 + 8) = v9;

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_21BCCBDD0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_21BCCBDF0, 0, 0);
}

uint64_t sub_21BCCBDF0()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = sub_21BE25D1C();
  *v3 = v0;
  v3[1] = sub_21BC523B4;
  v5 = v0[2];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD00000000000002DLL, 0x800000021BE5BEF0, sub_21BCCC340, v2, v4);
}

void sub_21BCCBEEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9718, &unk_21BE40070);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = [objc_allocWithZone(MEMORY[0x277D4BA08]) init];
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_21BCCC348;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BCCB2E0;
  aBlock[3] = &block_descriptor_26;
  v11 = _Block_copy(aBlock);

  [v8 lastCommunicationLimitsModifcationDateForDSID:a2 completionHandler:v11];
  _Block_release(v11);
}

uint64_t sub_21BCCC0C0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_21BE25D1C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  if (a2)
  {
    v19 = a2;
    v14 = a2;
  }

  else
  {
    sub_21BC1E1AC(a1, v6);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v13, v6, v7);
      (*(v8 + 16))(v11, v13, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9718, &unk_21BE40070);
      sub_21BE28D2C();
      return (*(v8 + 8))(v13, v7);
    }

    sub_21BB3A4CC(v6, &qword_27CDB9720, &unk_21BE39F00);
    sub_21BCCC3D4();
    v15 = swift_allocError();
    *v16 = 0;
    v19 = v15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9718, &unk_21BE40070);
  return sub_21BE28D1C();
}

uint64_t sub_21BCCC348(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9718, &unk_21BE40070);

  return sub_21BCCC0C0(a1, a2);
}

unint64_t sub_21BCCC3D4()
{
  result = qword_27CDB9728;
  if (!qword_27CDB9728)
  {
    result = swift_getWitnessTable(aI_6, &_s14FamilyCircleUI20ParentalControlErrorON_0, v0, v1);
    atomic_store(result, &qword_27CDB9728);
  }

  return result;
}

uint64_t sub_21BCCC428(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BCCC4F4, 0, 0);
}

uint64_t sub_21BCCC4F4()
{
  v1 = [*(v0 + 16) dsid];
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_21BE261EC();
    v5 = v4;
    v6 = swift_allocObject();
    *(v0 + 64) = v6;
    *(v6 + 16) = v2;
    v7 = v2;
    v8 = swift_task_alloc();
    *(v0 + 72) = v8;
    *v8 = v0;
    v8[1] = sub_21BCCC700;
    v9 = MEMORY[0x277D839B0];

    return MEMORY[0x2821372C0](v0 + 88, v3, v5, &unk_21BE400A0, v6, v9);
  }

  else
  {
    sub_21BE261BC();
    v10 = sub_21BE26A2C();
    v11 = sub_21BE28FDC();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 48);
    v14 = *(v0 + 24);
    v15 = *(v0 + 32);
    if (v12)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_21BB35000, v10, v11, "Member has no DSID", v16, 2u);
      MEMORY[0x21CF05C50](v16, -1, -1);
    }

    (*(v15 + 8))(v13, v14);

    v17 = *(v0 + 8);

    return v17(0);
  }
}

uint64_t sub_21BCCC700()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_21BCCC894;
  }

  else
  {

    v2 = sub_21BCCC81C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21BCCC81C()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21BCCC894()
{
  v1 = v0[10];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];

  sub_21BE261AC();
  v6 = v1;
  sub_21BC51D50(v1, 0xD000000000000031, 0x800000021BE5BF90);

  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_21BCCC980(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBA6A64;

  return sub_21BCCB6AC(a1, v4);
}

unint64_t sub_21BCCCA34()
{
  result = qword_27CDB9738;
  if (!qword_27CDB9738)
  {
    result = swift_getWitnessTable(byte_21BE40108, &_s14FamilyCircleUI20ParentalControlErrorON_0, v0, v1);
    atomic_store(result, &qword_27CDB9738);
  }

  return result;
}

uint64_t sub_21BCCCA8C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  if (v31 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21BE2951C())
  {

    if (i < 1 || ((v1 = sub_21BCD11F4(), v2 = sub_21BE2905C(), v1, v2 >> 62) ? (v3 = sub_21BE2951C()) : (v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10)), , i == v3))
    {
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v5 = [objc_opt_self() bundleForClass_];
      v6 = sub_21BE2599C();

      return v6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_21BE32770;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v7 = v31;
    if (v31 >> 62)
    {
      break;
    }

    v8 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_27;
    }

LABEL_10:
    v9 = 0;
    v30 = v31 & 0xC000000000000001;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v30)
      {
        v11 = MEMORY[0x21CF047C0](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v31 = sub_21BE2917C();
      v14 = sub_21BE28B8C();
      v16 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_21BBBC990(0, *(v10 + 2) + 1, 1, v10);
      }

      v18 = *(v10 + 2);
      v17 = *(v10 + 3);
      if (v18 >= v17 >> 1)
      {
        v10 = sub_21BBBC990((v17 > 1), v18 + 1, 1, v10);
      }

      *(v10 + 2) = v18 + 1;
      v19 = &v10[16 * v18];
      *(v19 + 4) = v14;
      *(v19 + 5) = v16;
      ++v9;
      if (v13 == v8)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v8 = sub_21BE2951C();
  if (v8)
  {
    goto LABEL_10;
  }

LABEL_27:
  v20 = MEMORY[0x277D837D0];

  type metadata accessor for ConfirmChildAgeViewModel();
  v21 = swift_getObjCClassFromMetadata();
  v22 = objc_opt_self();
  v23 = [v22 bundleForClass_];
  sub_21BE2599C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
  sub_21BBBF03C();
  v24 = sub_21BE2897C();
  v26 = v25;

  *(v29 + 56) = v20;
  *(v29 + 64) = sub_21BBBEFE8();
  *(v29 + 32) = v24;
  *(v29 + 40) = v26;

  v27 = [v22 bundleForClass_];
  sub_21BE2599C();

  v6 = sub_21BE289DC();

  return v6;
}

uint64_t sub_21BCCCFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21BBB7EB8;

  return MEMORY[0x28215FAD0](a1, a2, a3, a4, a5);
}

uint64_t sub_21BCCD0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21BBA6A64;

  return MEMORY[0x28215FA38](a1, a2, a3, a4);
}

uint64_t sub_21BCCD18C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBDEAC0;

  return MEMORY[0x28215FB60]();
}

uint64_t sub_21BCCD220()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBDE3D4;

  return MEMORY[0x28215FA40]();
}

uint64_t static LocationViewModel.shared.getter()
{
  swift_beginAccess();
  v0 = qword_27CDB9740;
  v1 = qword_27CDB9740;
  return v0;
}

void static LocationViewModel.shared.setter(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_27CDB9740;
  qword_27CDB9740 = a1;
}

void sub_21BCCD44C(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = qword_27CDB9740;
  qword_27CDB9740 = v1;
  v3 = v1;
}

uint64_t (*sub_21BCCD4F8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21BE26C9C();
  return sub_21BCCD59C;
}

uint64_t sub_21BCCD5A0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9758, &qword_21BE401D0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9750, &qword_21BE401C8);
  sub_21BE26C8C();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_21BCCD740(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9758, &qword_21BE401D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9750, &qword_21BE401C8);
  sub_21BE26C8C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_21BCCD878(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9758, &qword_21BE401D0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel__familyMembersSharingLocationWithMe;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9750, &qword_21BE401C8);
  sub_21BE26C7C();
  swift_endAccess();
  return sub_21BCCD9E8;
}

uint64_t sub_21BCCDA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_21BE26CBC();
}

uint64_t (*sub_21BCCDACC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21BE26C9C();
  return sub_21BCD9C20;
}

void sub_21BCCDB70(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_21BCCDBD8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_21BE26C7C();
  return swift_endAccess();
}

uint64_t sub_21BCCDC54(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9770, &unk_21BE40228);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9768, &qword_21BE40220);
  sub_21BE26C8C();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_21BCCDDF4(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_21BE26C7C();
  return swift_endAccess();
}

uint64_t sub_21BCCDE6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9770, &unk_21BE40228);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9768, &qword_21BE40220);
  sub_21BE26C8C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_21BCCDFA4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9770, &unk_21BE40228);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel__sharingLocationWithFamilyMembers;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9768, &qword_21BE40220);
  sub_21BE26C7C();
  swift_endAccess();
  return sub_21BCD9C24;
}

void sub_21BCCE114(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_21BE26C8C();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_21BE26C8C();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_21BCCE2A4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v3;
}

id LocationViewModel.__deallocating_deinit()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = sub_21BE28DAC();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_21BBA9018(0, 0, v3, &unk_21BE40240, v5);

  v7 = type metadata accessor for LocationViewModel(0);
  v9.receiver = v6;
  v9.super_class = v7;
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

uint64_t sub_21BCCE438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_21BCCE458, 0, 0);
}

uint64_t sub_21BCCE458()
{
  sub_21BE28D7C();
  *(v0 + 32) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BCCE4EC, v2, v1);
}

uint64_t sub_21BCCE4EC()
{
  v1 = *(v0 + 24);

  *(v0 + 40) = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_locationListener);

  return MEMORY[0x2822009F8](sub_21BCCE56C, 0, 0);
}

uint64_t sub_21BCCE56C()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    sub_21BC2CC60();
  }

  **(v0 + 16) = v1 == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BCCE954(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BCCE9EC, v4, v3);
}

uint64_t sub_21BCCE9EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_21BBCDD2C;

    return sub_21BCD2AA8();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_21BCCEADC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_21BE28D7C();
  v2[4] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_21BCCEB74, v4, v3);
}

uint64_t sub_21BCCEB74()
{
  v1 = [*(v0 + 16) dsid];
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_21BCCEC64;

    return sub_21BCD0C44(v2);
  }

  else
  {

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_21BCCEC64(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);

  return MEMORY[0x2822009F8](sub_21BCCED8C, v4, v3);
}

uint64_t sub_21BCCED8C()
{
  v1 = *(v0 + 72);

  if (v1)
  {
    v2 = *(v0 + 72);
    if ([v2 BOOLValue])
    {
      v3 = *(*(v0 + 24) + OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_screenTimeConnection);
      if (qword_27CDB4E60 != -1)
      {
        swift_once();
      }

      v4 = sub_21BE289CC();
      v5 = [v3 isRestrictedForFeature_];
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v0 + 56);
    v7 = *(v0 + 24);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 80) = v5;
    v8 = v7;
    sub_21BE26CBC();
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21BCCEEEC()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BCD4000();
}

uint64_t sub_21BCCEF98()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_21BE28D7C();
  v1[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21BCCF08C, v4, v3);
}

uint64_t sub_21BCCF08C(uint64_t a1)
{
  v13 = v1;
  sub_21BE2616C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[3];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21BB3D81C(0xD000000000000016, 0x800000021BE5C000, &v12);
    _os_log_impl(&dword_21BB35000, v2, v3, "%s Some location sharing change event has occurred", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v10 = swift_task_alloc();
  v1[9] = v10;
  *v10 = v1;
  v10[1] = sub_21BCCF224;

  return sub_21BCD31DC();
}

uint64_t sub_21BCCF224()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 80) = v3;
  *v3 = v2;
  v3[1] = sub_21BCCF364;

  return sub_21BCD4000();
}

uint64_t sub_21BCCF364()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21BBCCE5C, v3, v2);
}

uint64_t sub_21BCCF484(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = sub_21BE26A4C();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = sub_21BE28D7C();
  v2[25] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v2[26] = v5;
  v2[27] = v4;

  return MEMORY[0x2822009F8](sub_21BCCF594, v5, v4);
}

uint64_t sub_21BCCF594()
{
  v25 = v0;
  if ([*(v0 + 136) memberType] && (v1 = objc_msgSend(*(v0 + 136), sel_dsid), (*(v0 + 224) = v1) != 0))
  {
    v2 = *(v0 + 136);
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = sub_21BE26C9C();
    v5 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v5;
    *v5 = 0x8000000000000000;
    sub_21BC7FDF0(1, v2, isUniquelyReferenced_nonNull_native);
    *v5 = v24;

    v3(v0 + 16, 0);

    *(v0 + 232) = sub_21BE28D6C();
    v8 = sub_21BE28D0C();
    *(v0 + 240) = v8;
    *(v0 + 248) = v7;

    return MEMORY[0x2822009F8](sub_21BCCF8CC, v8, v7);
  }

  else
  {
    v9 = *(v0 + 136);

    sub_21BE2616C();
    v10 = v9;
    v11 = sub_21BE26A2C();
    v12 = sub_21BE28FCC();

    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 160);
    v14 = *(v0 + 168);
    v16 = *(v0 + 152);
    if (v13)
    {
      v17 = *(v0 + 136);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24 = v20;
      *v18 = 136315394;
      *(v18 + 4) = sub_21BB3D81C(0xD000000000000028, 0x800000021BE5C450, &v24);
      *(v18 + 12) = 2112;
      *(v18 + 14) = v17;
      *v19 = v17;
      v21 = v17;
      _os_log_impl(&dword_21BB35000, v11, v12, "%s %@ not a child", v18, 0x16u);
      sub_21BB3A4CC(v19, &qword_27CDB7AF0, &qword_21BE37410);
      MEMORY[0x21CF05C50](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x21CF05C50](v20, -1, -1);
      MEMORY[0x21CF05C50](v18, -1, -1);
    }

    (*(v15 + 8))(v14, v16);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_21BCCF8CC(uint64_t a1)
{
  v2 = v1[28];
  v3 = v1[18];
  v4 = sub_21BE28D6C();
  v1[32] = v4;
  v5 = swift_task_alloc();
  v1[33] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_task_alloc();
  v1[34] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9800, &qword_21BE40580);
  *v6 = v1;
  v6[1] = sub_21BCCF9F4;
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v1 + 13, v4, v8, 0xD000000000000029, 0x800000021BE5C480, sub_21BCD70A8, v5, v7);
}

uint64_t sub_21BCCF9F4()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return MEMORY[0x2822009F8](sub_21BCCFB54, v3, v2);
}

uint64_t sub_21BCCFB54()
{

  *(v0 + 280) = *(v0 + 104);
  *(v0 + 113) = *(v0 + 112);
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return MEMORY[0x2822009F8](sub_21BCCFBC8, v1, v2);
}

uint64_t sub_21BCCFBC8()
{
  v54 = v0;
  v1 = *(v0 + 113);

  if (v1)
  {
    v2 = *(v0 + 280);
    v3 = *(v0 + 136);
    sub_21BE2616C();
    v4 = v3;
    sub_21BCD70B0(v2, 1);
    v5 = sub_21BE26A2C();
    v6 = sub_21BE28FDC();
    sub_21BCD70BC(v2, 1);

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 280);
    v9 = *(v0 + 176);
    v10 = *(v0 + 152);
    v11 = *(v0 + 160);
    if (v7)
    {
      v49 = *(v0 + 280);
      v51 = *(v0 + 224);
      v12 = *(v0 + 136);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v53 = v48;
      *v13 = 136315650;
      *(v13 + 4) = sub_21BB3D81C(0xD000000000000028, 0x800000021BE5C450, &v53);
      *(v13 + 12) = 2080;
      swift_getErrorValue();
      v15 = sub_21BE29A5C();
      v47 = v10;
      v17 = sub_21BB3D81C(v15, v16, &v53);

      *(v13 + 14) = v17;
      *(v13 + 22) = 2112;
      *(v13 + 24) = v12;
      *v14 = v12;
      v18 = v12;
      _os_log_impl(&dword_21BB35000, v5, v6, "%s unable to add child can modify %s for %@", v13, 0x20u);
      sub_21BB3A4CC(v14, &qword_27CDB7AF0, &qword_21BE37410);
      MEMORY[0x21CF05C50](v14, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v48, -1, -1);
      MEMORY[0x21CF05C50](v13, -1, -1);

      sub_21BCD70BC(v49, 1);
      (*(v11 + 8))(v9, v47);
      goto LABEL_15;
    }

    sub_21BCD70BC(v8, 1);
    v41 = *(v11 + 8);
    v42 = v9;
    goto LABEL_14;
  }

  v19 = *(v0 + 280);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v20 = *(v0 + 128);
  if (*(v20 + 16) && (v21 = sub_21BBB31A4(*(v0 + 136)), (v22 & 1) != 0))
  {
    v23 = *(*(v20 + 56) + v21);

    if (v23 == (v19 & 1))
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v24 = *(v0 + 136);
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = sub_21BE26C9C();
  v27 = v26;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v27;
  *v27 = 0x8000000000000000;
  sub_21BC7FDF0(v19 & 1, v24, isUniquelyReferenced_nonNull_native);
  *v27 = v53;

  v25(v0 + 48, 0);

LABEL_10:
  v29 = *(v0 + 136);
  sub_21BE2616C();
  v30 = v29;
  v31 = sub_21BE26A2C();
  v32 = sub_21BE28FCC();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = *(v0 + 280);
    v34 = *(v0 + 224);
    v35 = *(v0 + 160);
    v50 = *(v0 + 152);
    v52 = *(v0 + 184);
    v36 = *(v0 + 136);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v53 = v39;
    *v37 = 136315650;
    *(v37 + 4) = sub_21BB3D81C(0xD000000000000028, 0x800000021BE5C450, &v53);
    *(v37 + 12) = 2112;
    *(v37 + 14) = v36;
    *v38 = v36;
    *(v37 + 22) = 1024;
    *(v37 + 24) = v33 & 1;
    v40 = v36;
    _os_log_impl(&dword_21BB35000, v31, v32, "%s %@ isLocationModificationAllowed: %{BOOL}d", v37, 0x1Cu);
    sub_21BB3A4CC(v38, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v38, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    MEMORY[0x21CF05C50](v39, -1, -1);
    MEMORY[0x21CF05C50](v37, -1, -1);

    (*(v35 + 8))(v52, v50);
    goto LABEL_15;
  }

  v43 = *(v0 + 184);
  v10 = *(v0 + 152);
  v44 = *(v0 + 160);

  v41 = *(v44 + 8);
  v42 = v43;
LABEL_14:
  v41(v42, v10);
LABEL_15:

  v45 = *(v0 + 8);

  return v45();
}

void sub_21BCD0138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9808, &qword_21BE40588);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &aBlock - v11;
  v13 = [objc_allocWithZone(FALocationSharingModificationClient) init];
  if (v13)
  {
    v14 = v13;
    v15 = [objc_allocWithZone(MEMORY[0x277D4BAE0]) initWithDSID_];
    (*(v10 + 16))(v12, a1, v9);
    v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v17 = swift_allocObject();
    (*(v10 + 32))(v17 + v16, v12, v9);
    v27 = sub_21BCD70C8;
    v28 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_21BD197D4;
    v26 = &block_descriptor_107;
    v18 = _Block_copy(&aBlock);

    [v14 isLocationSharingModificationAllowedForUserID:v15 completionHandler:v18];
    _Block_release(v18);
  }

  else
  {
    sub_21BE2616C();
    v19 = sub_21BE26A2C();
    v20 = sub_21BE28FDC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_21BB3D81C(0xD000000000000029, 0x800000021BE5C480, &aBlock);
      _os_log_impl(&dword_21BB35000, v19, v20, "%s no location sharing client found", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x21CF05C50](v22, -1, -1);
      MEMORY[0x21CF05C50](v21, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    aBlock = MEMORY[0x21CF01210](0xD00000000000003CLL, 0x800000021BE5C4B0, 0xD000000000000010, 0x800000021BE573A0, 500);
    LOBYTE(v24) = 1;
    sub_21BE28D2C();
  }
}

uint64_t sub_21BCD04F0(char a1, void *a2)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2616C();
  if (a2)
  {
    sub_21BC51D50(a2, 0xD00000000000004CLL, 0x800000021BE5C4F0);
    (*(v5 + 8))(v7, v4);
    v14 = a2;
    v15 = 1;
    v8 = a2;
  }

  else
  {
    v9 = sub_21BE26A2C();
    v10 = sub_21BE28FFC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_21BB3D81C(0xD000000000000043, 0x800000021BE5C540, &v14);
      _os_log_impl(&dword_21BB35000, v9, v10, "%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x21CF05C50](v12, -1, -1);
      MEMORY[0x21CF05C50](v11, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v14 = a1 & 1;
    v15 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9808, &qword_21BE40588);
  return sub_21BE28D2C();
}

uint64_t sub_21BCD0724(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_21BE26A4C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_21BE28D7C();
  v2[7] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v2[8] = v5;
  v2[9] = v4;

  return MEMORY[0x2822009F8](sub_21BCD0818, v5, v4);
}

uint64_t sub_21BCD0818()
{
  v15 = v0;
  v1 = [*(v0 + 16) dsid];
  *(v0 + 80) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_21BCD0A20;

    return sub_21BCD0C44(v2);
  }

  else
  {

    sub_21BE2616C();
    v5 = sub_21BE26A2C();
    v6 = sub_21BE28FDC();
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);
    v10 = *(v0 + 32);
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_21BB3D81C(0xD00000000000001CLL, 0x800000021BE5C430, &v14);
      _os_log_impl(&dword_21BB35000, v5, v6, "%s No DSID ", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x21CF05C50](v12, -1, -1);
      MEMORY[0x21CF05C50](v11, -1, -1);
    }

    (*(v9 + 8))(v8, v10);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_21BCD0A20(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return MEMORY[0x2822009F8](sub_21BCD0B48, v4, v3);
}

uint64_t sub_21BCD0B48()
{
  v1 = *(v0 + 96);

  if (v1)
  {
    v2 = *(v0 + 96);
    v3 = *(v0 + 80);
    v4 = *(v0 + 24);
    v5 = [v2 BOOLValue];
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 104) = v5;
    v6 = v4;
    sub_21BE26CBC();
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_21BCD0C44(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = sub_21BE26A4C();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  sub_21BE28D7C();
  v2[28] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v2[29] = v5;
  v2[30] = v4;

  return MEMORY[0x2822009F8](sub_21BCD0D38, v5, v4);
}

uint64_t sub_21BCD0D38()
{
  v1 = v0[23];
  v2 = *(v0[24] + OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_screenTimeConnection);
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_21BCD0E6C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7EF0, &unk_21BE405B0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BBB25CC;
  v0[13] = &block_descriptor_127;
  v0[14] = v3;
  [v2 isContentPrivacyEnabledForDSID:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BCD0E6C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  if (v2)
  {
    v5 = sub_21BCD100C;
  }

  else
  {
    v5 = sub_21BCD0F9C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BCD0F9C()
{

  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21BCD100C()
{
  v20 = v0;
  v1 = *(v0 + 248);

  swift_willThrow();
  sub_21BE2614C();
  v2 = v1;
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FDC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 248);
    v6 = *(v0 + 208);
    v18 = *(v0 + 216);
    v7 = *(v0 + 200);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_21BE29A5C();
    v12 = sub_21BB3D81C(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_21BB35000, v3, v4, "Unable to get content and privacy restriction settings %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 208);
    v13 = *(v0 + 216);
    v15 = *(v0 + 200);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16(0);
}

id sub_21BCD11F4()
{
  v1 = sub_21BE26A4C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_circleStore + 24];
  v6 = *&v0[OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_circleStore + 32];
  __swift_project_boxed_opaque_existential_1Tm(&v0[OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_circleStore], v5);
  result = (*(v6 + 8))(v5, v6);
  if (!result)
  {
    sub_21BE2614C();
    v8 = v0;
    v9 = sub_21BE26A2C();
    v10 = sub_21BE28FDC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_21BB35000, v9, v10, "%{public}@ tried to access familyCircle before loading it. Retuning empty circle", v11, 0xCu);
      sub_21BB3A4CC(v12, &qword_27CDB7AF0, &qword_21BE37410);
      MEMORY[0x21CF05C50](v12, -1, -1);
      MEMORY[0x21CF05C50](v11, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    return [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  return result;
}

uint64_t sub_21BCD13E4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = [v9 appleID];
  if (v10)
  {
    v11 = v10;
    sub_21BE28A0C();

    sub_21BCD716C(MEMORY[0x277D84F90]);
    sub_21BE265BC();
    v12 = sub_21BE265CC();
    return (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
  }

  else
  {
    sub_21BE2616C();
    v14 = v9;
    v15 = sub_21BE26A2C();
    v16 = sub_21BE28FDC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23[1] = v2;
      v19 = v18;
      v23[0] = swift_slowAlloc();
      v24 = v23[0];
      *v17 = 136315394;
      *(v17 + 4) = sub_21BB3D81C(0xD000000000000017, 0x800000021BE5C640, &v24);
      *(v17 + 12) = 2112;
      *(v17 + 14) = v14;
      *v19 = v14;
      v20 = v14;
      _os_log_impl(&dword_21BB35000, v15, v16, "%s, trying to share location but destination member has no appleID %@", v17, 0x16u);
      sub_21BB3A4CC(v19, &qword_27CDB7AF0, &qword_21BE37410);
      MEMORY[0x21CF05C50](v19, -1, -1);
      v21 = v23[0];
      __swift_destroy_boxed_opaque_existential_0Tm(v23[0]);
      MEMORY[0x21CF05C50](v21, -1, -1);
      MEMORY[0x21CF05C50](v17, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    v22 = sub_21BE265CC();
    return (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
  }
}

uint64_t sub_21BCD16E0()
{
  v1[2] = v0;
  sub_21BE28D7C();
  v1[3] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_21BCD1778, v3, v2);
}

uint64_t sub_21BCD1778()
{
  v1 = sub_21BCD11F4();
  v2 = sub_21BE290AC();
  v0[6] = v2;

  if (v2 >> 62)
  {
    result = sub_21BE2951C();
    v0[7] = result;
    if (result)
    {
LABEL_3:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v0[8] = 0;
        v4 = v0[6];
        if ((v4 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x21CF047C0](0);
        }

        else
        {
          v5 = *(v4 + 32);
        }

        v6 = v5;
        v0[9] = v5;
        v7 = swift_task_alloc();
        v0[10] = v7;
        *v7 = v0;
        v7[1] = sub_21BCD18DC;

        return sub_21BCCF484(v6);
      }

      return result;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[7] = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_21BCD18DC()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21BCD19FC, v3, v2);
}

uint64_t sub_21BCD19FC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  if (v1 + 1 == v2)
  {

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 64) + 1;
    *(v0 + 64) = v5;
    v6 = *(v0 + 48);
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x21CF047C0]();
    }

    else
    {
      v7 = *(v6 + 8 * v5 + 32);
    }

    v8 = v7;
    *(v0 + 72) = v7;
    v9 = swift_task_alloc();
    *(v0 + 80) = v9;
    *v9 = v0;
    v9[1] = sub_21BCD18DC;

    return sub_21BCCF484(v8);
  }
}

uint64_t sub_21BCD1B24(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_21BE26A4C();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_21BE28D7C();
  v2[28] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v2[29] = v5;
  v2[30] = v4;

  return MEMORY[0x2822009F8](sub_21BCD1C48, v5, v4);
}

uint64_t sub_21BCD1C48()
{
  v55 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v1 = v0[18];
  if (*(v1 + 16) && (v2 = sub_21BBB31A4(v0[19]), (v3 & 1) != 0))
  {
    v4 = v0[19];
    v5 = *(*(v1 + 56) + v2);

    v6 = [v4 dsid];
    v0[31] = v6;
    if (v6)
    {
      v7 = v6;
      v8 = [objc_allocWithZone(FALocationSharingModificationClient) init];
      v0[32] = v8;
      if (v8)
      {
        v9 = v8;
        v10 = [objc_allocWithZone(MEMORY[0x277D4BAE0]) initWithDSID_];
        v0[33] = v10;
        v0[2] = v0;
        v0[3] = sub_21BCD23A0;
        v11 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F8, &qword_21BE40530);
        v0[10] = MEMORY[0x277D85DD0];
        v0[11] = 1107296256;
        v0[12] = sub_21BCF8794;
        v0[13] = &block_descriptor_91;
        v0[14] = v11;
        [v9 setLocationSharingModificationAllowed:v5 ^ 1u forUserID:v10 completionHandler:v0 + 10];

        return MEMORY[0x282200938](v0 + 2);
      }

      sub_21BE2616C();
      v34 = sub_21BE26A2C();
      v35 = sub_21BE28FDC();
      v36 = os_log_type_enabled(v34, v35);
      v37 = v0[26];
      v38 = v0[21];
      v39 = v0[22];
      if (v36)
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v53 = v41;
        *v40 = 136315138;
        *(v40 + 4) = sub_21BB3D81C(0xD000000000000031, 0x800000021BE5C340, &v53);
        _os_log_impl(&dword_21BB35000, v34, v35, "%s no location sharing client found", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v41);
        MEMORY[0x21CF05C50](v41, -1, -1);
        MEMORY[0x21CF05C50](v40, -1, -1);

        (*(v39 + 8))(v37, v38);
      }

      else
      {

        (*(v39 + 8))(v37, v38);
      }

      v42 = MEMORY[0x21CF01210](0xD000000000000044, 0x800000021BE5C380, 0xD000000000000010, 0x800000021BE573A0, 500);
      swift_willThrow();
      v43 = v0[31];
      v45 = v0[22];
      v44 = v0[23];
      v46 = v0[21];
      sub_21BE2616C();
      v53 = 0;
      v54 = 0xE000000000000000;
      v47 = v42;
      sub_21BE295EC();
      MEMORY[0x21CF03CA0](0xD000000000000031, 0x800000021BE5C340);
      MEMORY[0x21CF03CA0](0xD00000000000003BLL, 0x800000021BE5C3D0);
      v48 = [v43 description];
      v49 = sub_21BE28A0C();
      v51 = v50;

      MEMORY[0x21CF03CA0](v49, v51);

      MEMORY[0x21CF03CA0](4203808, 0xE300000000000000);
      sub_21BC51D50(v42, v53, v54);

      (*(v45 + 8))(v44, v46);
    }

    else
    {

      sub_21BE2616C();
      v26 = sub_21BE26A2C();
      v27 = sub_21BE28FDC();
      v28 = os_log_type_enabled(v26, v27);
      v29 = v0[25];
      v30 = v0[21];
      v31 = v0[22];
      if (v28)
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v53 = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_21BB3D81C(0xD000000000000031, 0x800000021BE5C340, &v53);
        _os_log_impl(&dword_21BB35000, v26, v27, "%s No DSID ", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v33);
        MEMORY[0x21CF05C50](v33, -1, -1);
        MEMORY[0x21CF05C50](v32, -1, -1);
      }

      (*(v31 + 8))(v29, v30);
    }
  }

  else
  {
    v12 = v0[19];

    sub_21BE2616C();
    v13 = v12;
    v14 = sub_21BE26A2C();
    v15 = sub_21BE28FFC();

    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[24];
    v18 = v0[21];
    v19 = v0[22];
    if (v16)
    {
      v20 = v0[19];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v53 = v23;
      *v21 = 136315394;
      *(v21 + 4) = sub_21BB3D81C(0xD000000000000031, 0x800000021BE5C340, &v53);
      *(v21 + 12) = 2112;
      *(v21 + 14) = v20;
      *v22 = v20;
      v24 = v20;
      _os_log_impl(&dword_21BB35000, v14, v15, "%s %@ has no locationStatus in map", v21, 0x16u);
      sub_21BB3A4CC(v22, &qword_27CDB7AF0, &qword_21BE37410);
      MEMORY[0x21CF05C50](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x21CF05C50](v23, -1, -1);
      MEMORY[0x21CF05C50](v21, -1, -1);
    }

    (*(v19 + 8))(v17, v18);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_21BCD23A0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  if (v2)
  {
    v5 = sub_21BCD28C0;
  }

  else
  {
    v5 = sub_21BCD24D0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BCD24D0()
{
  v1 = swift_task_alloc();
  *(v0 + 280) = v1;
  *v1 = v0;
  v1[1] = sub_21BCD2564;
  v2 = *(v0 + 152);

  return sub_21BCCF484(v2);
}

uint64_t sub_21BCD2564()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return MEMORY[0x2822009F8](sub_21BCD2684, v3, v2);
}

uint64_t sub_21BCD2684()
{
  v23 = v0;
  v1 = v0[19];

  sub_21BE2616C();
  v2 = v1;
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FFC();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[32];
  v6 = v0[33];
  v8 = v0[31];
  v9 = v0[27];
  v10 = v0[21];
  v11 = v0[22];
  if (v5)
  {
    v12 = v0[19];
    v21 = v0[27];
    v13 = swift_slowAlloc();
    v19 = v7;
    v14 = swift_slowAlloc();
    v20 = v10;
    v15 = swift_slowAlloc();
    v22 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_21BB3D81C(0xD000000000000031, 0x800000021BE5C340, &v22);
    *(v13 + 12) = 2112;
    *(v13 + 14) = v12;
    *v14 = v12;
    v16 = v12;
    _os_log_impl(&dword_21BB35000, v3, v4, "%s %@ toggle completed", v13, 0x16u);
    sub_21BB3A4CC(v14, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x21CF05C50](v15, -1, -1);
    MEMORY[0x21CF05C50](v13, -1, -1);

    (*(v11 + 8))(v21, v20);
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_21BCD28C0()
{
  v1 = v0[33];
  v2 = v0[32];

  swift_willThrow();

  v3 = v0[34];
  v4 = v0[31];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
  sub_21BE2616C();
  v8 = v3;
  sub_21BE295EC();
  MEMORY[0x21CF03CA0](0xD000000000000031, 0x800000021BE5C340);
  MEMORY[0x21CF03CA0](0xD00000000000003BLL, 0x800000021BE5C3D0);
  v9 = [v4 description];
  v10 = sub_21BE28A0C();
  v12 = v11;

  MEMORY[0x21CF03CA0](v10, v12);

  MEMORY[0x21CF03CA0](4203808, 0xE300000000000000);
  sub_21BC51D50(v3, 0, 0xE000000000000000);

  (*(v6 + 8))(v5, v7);

  v13 = v0[1];

  return v13();
}

uint64_t sub_21BCD2AA8()
{
  v1[4] = v0;
  v2 = sub_21BE26A4C();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = sub_21BE28D7C();
  v1[9] = sub_21BE28D6C();
  v3 = swift_task_alloc();
  v1[10] = v3;
  *v3 = v1;
  v3[1] = sub_21BCD2BB4;

  return sub_21BCD4000();
}

uint64_t sub_21BCD2BB4()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 88) = v3;
  *v3 = v2;
  v3[1] = sub_21BCD2CF4;

  return sub_21BCD31DC();
}

uint64_t sub_21BCD2CF4()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 96) = v3;
  *v3 = v2;
  v3[1] = sub_21BCD2E34;

  return sub_21BCD16E0();
}

uint64_t sub_21BCD2E34()
{

  v1 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BCD2F70, v1, v0);
}

uint64_t sub_21BCD2F70()
{
  v1 = v0[4];

  __swift_project_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_servicesStore), *(v1 + OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_servicesStore + 24));
  v2 = off_282D8FF00;
  type metadata accessor for ServicesStore(0);
  v3 = v2(0xD000000000000011, 0x800000021BE57B00);
  if (v3)
  {
    v4 = v3;
    v5 = [v3 subscriberDSIDs];
    if (v5)
    {
      v6 = v5;
      sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
      v7 = sub_21BE28C3C();
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16 = v0[4];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[3] = v7;
    v17 = v16;
    sub_21BE26CBC();
  }

  else
  {
    sub_21BE2616C();
    v8 = sub_21BE26A2C();
    v9 = sub_21BE28FDC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_21BB35000, v8, v9, "Can't get location service in loadAllData, clearing data!", v10, 2u);
      MEMORY[0x21CF05C50](v10, -1, -1);
    }

    v12 = v0[6];
    v11 = v0[7];
    v14 = v0[4];
    v13 = v0[5];

    (*(v12 + 8))(v11, v13);
    swift_getKeyPath();
    swift_getKeyPath();
    v0[2] = MEMORY[0x277D84F90];
    v15 = v14;
    sub_21BE26CBC();
  }

  *(v0[4] + OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_wasLoadDataCalled) = 1;

  v18 = v0[1];

  return v18();
}

uint64_t sub_21BCD31DC()
{
  v1[19] = v0;
  v2 = sub_21BE26A4C();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v3 = sub_21BE265CC();
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();
  v4 = sub_21BE2658C();
  v1[27] = v4;
  v1[28] = *(v4 - 8);
  v1[29] = swift_task_alloc();
  sub_21BE28D7C();
  v1[30] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v1[31] = v6;
  v1[32] = v5;

  return MEMORY[0x2822009F8](sub_21BCD3394, v6, v5);
}

uint64_t sub_21BCD3394()
{
  v1 = (*(v0 + 152) + OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_fmlSession);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  *v4 = v0;
  v4[1] = sub_21BCD34C4;

  return v6(v2, v3);
}

uint64_t sub_21BCD34C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 272) = a1;
  *(v4 + 280) = v1;

  v5 = *(v3 + 256);
  v6 = *(v3 + 248);
  if (v1)
  {
    v7 = sub_21BCD3DE0;
  }

  else
  {
    v7 = sub_21BCD3608;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21BCD3608()
{
  v82 = v0;
  v1 = v0[34];

  v73 = v1;
  v74 = v0;
  v77 = *(v1 + 16);
  if (v77)
  {
    v2 = sub_21BCD11F4();
    v3 = sub_21BE2905C();

    if (v3 >> 62)
    {
      goto LABEL_44;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BE2951C())
    {
      v5 = 0;
      v72 = v0 + 16;
      v67 = v3 & 0xC000000000000001;
      v63 = v3 & 0xFFFFFFFFFFFFFF8;
      v64 = v0 + 12;
      v62 = v3 + 32;
      v70 = (v0[25] + 8);
      v71 = v0[28];
      v65 = v3;
      v66 = i;
      while (1)
      {
        if (v67)
        {
          v12 = MEMORY[0x21CF047C0](v5, v3);
        }

        else
        {
          if (v5 >= *(v63 + 16))
          {
            goto LABEL_43;
          }

          v12 = *(v62 + 8 * v5);
        }

        v13 = v12;
        v14 = __OFADD__(v5, 1);
        v15 = v5 + 1;
        if (v14)
        {
          goto LABEL_40;
        }

        v68 = v15;
        swift_getKeyPath();
        swift_getKeyPath();
        v16 = v13;
        v17 = sub_21BE26C9C();
        v19 = v18;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v81[0] = *v19;
        v21 = v81[0];
        *v19 = 0x8000000000000000;
        v69 = v16;
        v22 = sub_21BBB31A4(v16);
        v24 = *(v21 + 16);
        v25 = (v23 & 1) == 0;
        v14 = __OFADD__(v24, v25);
        v26 = v24 + v25;
        if (v14)
        {
          break;
        }

        v27 = v23;
        if (*(v21 + 24) >= v26)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v50 = v22;
            sub_21BC815D4();
            v22 = v50;
            v0 = v74;
          }

          v11 = v69;
          v29 = v81[0];
          if (v27)
          {
            goto LABEL_18;
          }
        }

        else
        {
          sub_21BC7D26C(v26, isUniquelyReferenced_nonNull_native);
          v11 = v69;
          v22 = sub_21BBB31A4(v69);
          if ((v27 & 1) != (v28 & 1))
          {
            sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);

            return sub_21BE299FC();
          }

          v29 = v81[0];
          if (v27)
          {
LABEL_18:
            *(v29[7] + v22) = 0;

            goto LABEL_24;
          }
        }

        v29[(v22 >> 6) + 8] |= 1 << v22;
        *(v29[6] + 8 * v22) = v11;
        *(v29[7] + v22) = 0;
        v30 = v29[2];
        v14 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v14)
        {
          goto LABEL_42;
        }

        v29[2] = v31;
LABEL_24:
        *v19 = v29;

        v17();

        v32 = [v11 appleID];
        if (v32)
        {
          v33 = v32;
          v75 = sub_21BE28A0C();
          v78 = v34;

          v35 = 0;
          do
          {
            v76 = v35;
            if (v77 == v35)
            {
              break;
            }

            if (v35 >= *(v73 + 16))
            {
              __break(1u);
LABEL_40:
              __break(1u);
              goto LABEL_41;
            }

            v36 = v0[29];
            v37 = v0[26];
            v80 = v0[27];
            v38 = v0[24];
            (*(v71 + 16))(v36, v0[34] + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v35);
            v79 = v35 + 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC880, &qword_21BE32F40);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_21BE32770;
            sub_21BE2657C();
            v40 = sub_21BE2659C();
            v42 = v41;
            v3 = v70;
            v43 = *v70;
            (*v70)(v37, v38);
            *(inited + 32) = v40;
            *(inited + 40) = v42;
            sub_21BE2657C();
            v44 = sub_21BE265AC();
            v43(v37, v38);
            v0 = v74;
            v81[0] = inited;
            sub_21BDE57E8(v44);
            v74[16] = v75;
            v74[17] = v78;
            v45 = swift_task_alloc();
            *(v45 + 16) = v72;
            LOBYTE(v38) = sub_21BC9BF08(sub_21BC69628, v45, inited);

            (*(v71 + 8))(v36, v80);
            v35 = v79;
          }

          while ((v38 & 1) == 0);

          swift_getKeyPath();
          swift_getKeyPath();
          sub_21BE26CAC();

          v46 = v0[18];
          v11 = v69;
          if (*(v46 + 16) && (v47 = sub_21BBB31A4(v69), (v48 & 1) != 0))
          {
            v49 = *(*(v46 + 56) + v47);

            v0 = v74;
            if ((((v77 != v76) ^ v49) & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          else
          {
          }

          swift_getKeyPath();
          swift_getKeyPath();
          v6 = v69;
          v7 = sub_21BE26C9C();
          v9 = v8;
          v10 = swift_isUniquelyReferenced_nonNull_native();
          v81[0] = *v9;
          *v9 = 0x8000000000000000;
          sub_21BC7FDF0(v77 != v76, v6, v10);

          *v9 = v81[0];

          v7(v64, 0);
          v11 = v69;

LABEL_7:
          v3 = v65;
        }

        v5 = v68;

        if (v68 == v66)
        {
          goto LABEL_45;
        }
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      ;
    }

LABEL_45:
  }

  else
  {

    sub_21BE2616C();
    v51 = sub_21BE26A2C();
    v52 = sub_21BE28FCC();
    v53 = os_log_type_enabled(v51, v52);
    v54 = v0[23];
    v55 = v0;
    v56 = v0[21];
    v57 = v55[20];
    if (v53)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v81[0] = v59;
      *v58 = 136315138;
      *(v58 + 4) = sub_21BB3D81C(0xD000000000000028, 0x800000021BE5C5C0, v81);
      _os_log_impl(&dword_21BB35000, v51, v52, "%s No one shares with me", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v59);
      MEMORY[0x21CF05C50](v59, -1, -1);
      MEMORY[0x21CF05C50](v58, -1, -1);
    }

    (*(v56 + 8))(v54, v57);
    v0 = v74;
  }

  v61 = v0[1];

  return v61();
}

uint64_t sub_21BCD3DE0()
{
  v18 = v0;
  v1 = v0[35];

  sub_21BE2616C();
  v2 = v1;
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FDC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[35];
  v8 = v0[21];
  v7 = v0[22];
  v9 = v0[20];
  if (v5)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_21BB3D81C(0xD000000000000028, 0x800000021BE5C5C0, &v17);
    *(v10 + 12) = 2112;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_21BB35000, v3, v4, "%s Error getting friends sharing with me: %@", v10, 0x16u);
    sub_21BB3A4CC(v11, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v10, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v7, v9);

  v15 = v0[1];

  return v15();
}

uint64_t sub_21BCD4000()
{
  v1[11] = v0;
  v2 = sub_21BE26A4C();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v3 = sub_21BE265CC();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v4 = sub_21BE2658C();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  sub_21BE28D7C();
  v1[21] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v1[22] = v6;
  v1[23] = v5;

  return MEMORY[0x2822009F8](sub_21BCD41AC, v6, v5);
}

uint64_t sub_21BCD41AC()
{
  v1 = (*(v0 + 88) + OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_fmlSession);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v6 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 192) = v4;
  *v4 = v0;
  v4[1] = sub_21BCD42DC;

  return v6(v2, v3);
}

uint64_t sub_21BCD42DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  v5 = *(v3 + 184);
  v6 = *(v3 + 176);
  if (v1)
  {
    v7 = sub_21BCD48B0;
  }

  else
  {
    v7 = sub_21BCD4420;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21BCD4420()
{

  v0 = sub_21BCD11F4();
  v1 = [v0 members];

  sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
  v2 = sub_21BE28C3C();

  v46 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BE2951C())
  {
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v6 = v2 & 0xFFFFFFFFFFFFFF8;
    v30 = v2;
    v2 += 32;
    v37 = (v38[16] + 8);
    v45 = v38[19];
    v7 = v38[26];
    v40 = v38[25];
    v8 = &selRef_fa_URLByAddingAirdropInviteParams;
    v33 = v5;
    v34 = i;
    v31 = v2;
    v32 = v6;
    while (1)
    {
      if (v5)
      {
        v9 = MEMORY[0x21CF047C0](v4, v30);
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_23;
        }

        v9 = *(v2 + 8 * v4);
      }

      v10 = v9;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      if (([v9 v8[268]] & 1) == 0)
      {
        v12 = [v10 appleID];
        if (v12)
        {
          v35 = v10;
          v36 = v4;
          v2 = v12;
          v39 = sub_21BE28A0C();
          v42 = v13;

          v14 = 0;
          v41 = *(v40 + 16);
          while (v41 != v14)
          {
            if (v14 >= *(v40 + 16))
            {
              __break(1u);
              goto LABEL_22;
            }

            v15 = v38[20];
            v16 = v38[17];
            v44 = v38[18];
            v17 = v38[15];
            (*(v45 + 16))(v15, v38[25] + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v14++);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC880, &qword_21BE32F40);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_21BE32770;
            sub_21BE2657C();
            v19 = sub_21BE2659C();
            v21 = v20;
            v43 = v7;
            v22 = *v37;
            (*v37)(v16, v17);
            *(inited + 32) = v19;
            *(inited + 40) = v21;
            sub_21BE2657C();
            v23 = sub_21BE265AC();
            v22(v16, v17);
            sub_21BDE57E8(v23);
            v2 = inited;
            v38[8] = v39;
            v38[9] = v42;
            v24 = swift_task_alloc();
            *(v24 + 16) = v38 + 8;
            LOBYTE(inited) = sub_21BC9BF08(sub_21BBF0CC4, v24, inited);
            v7 = v43;

            (*(v45 + 8))(v15, v44);
            if (inited)
            {

              sub_21BE296BC();
              sub_21BE296EC();
              sub_21BE296FC();
              sub_21BE296CC();
              goto LABEL_17;
            }
          }

LABEL_17:
          v5 = v33;
          i = v34;
          v4 = v36;
          v2 = v31;
          v6 = v32;
          v8 = &selRef_fa_URLByAddingAirdropInviteParams;
          if (v36 != v34)
          {
            continue;
          }

LABEL_20:
          v25 = v46;
          goto LABEL_26;
        }
      }

      if (v4 == i)
      {
        goto LABEL_20;
      }
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v25 = MEMORY[0x277D84F90];
LABEL_26:
  v26 = v38[11];

  swift_getKeyPath();
  swift_getKeyPath();
  v38[10] = v25;
  v27 = v26;
  sub_21BE26CBC();

  v28 = v38[1];

  return v28();
}

uint64_t sub_21BCD48B0()
{
  v18 = v0;
  v1 = v0[26];

  sub_21BE2614C();
  v2 = v1;
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FDC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[26];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[12];
  if (v5)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_21BB3D81C(0xD000000000000026, 0x800000021BE5C590, &v17);
    *(v10 + 12) = 2112;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_21BB35000, v3, v4, "%s Error getting friends I'm sharing with: %@", v10, 0x16u);
    sub_21BB3A4CC(v11, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v10, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v7, v9);

  v15 = v0[1];

  return v15();
}

uint64_t sub_21BCD4AC8(char a1, uint64_t a2)
{
  *(v3 + 216) = a2;
  *(v3 + 224) = v2;
  *(v3 + 361) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  *(v3 + 232) = swift_task_alloc();
  v4 = sub_21BE26A4C();
  *(v3 + 240) = v4;
  *(v3 + 248) = *(v4 - 8);
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = sub_21BE28D7C();
  *(v3 + 296) = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  *(v3 + 304) = v6;
  *(v3 + 312) = v5;

  return MEMORY[0x2822009F8](sub_21BCD4C20, v6, v5);
}

uint64_t sub_21BCD4C20()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 361);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7EF8, &unk_21BE40470);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  v5 = *MEMORY[0x277D081F0];
  *(inited + 32) = *MEMORY[0x277D081F0];
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = v3;
  v6 = v5;
  sub_21BBB6848(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB58A0, &qword_21BE32998);
  v7 = objc_allocWithZone(MEMORY[0x277D08350]);
  type metadata accessor for FAUpdateMemberFlagKey(0);
  sub_21BC54630();
  v8 = sub_21BE288EC();

  v9 = [v7 initWithFamilyMemberDSID:v1 flags:v8];
  *(v0 + 320) = v9;

  v10 = OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_wasLoadDataCalled;
  *(v0 + 328) = OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_wasLoadDataCalled;
  *(v2 + v10) = 0;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 360;
  *(v0 + 24) = sub_21BCD4E4C;
  v11 = swift_continuation_init();
  *(v0 + 208) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7F00, &qword_21BE40480);
  *(v0 + 152) = MEMORY[0x277D85DD0];
  *(v0 + 160) = 1107296256;
  *(v0 + 168) = sub_21BD63750;
  *(v0 + 176) = &block_descriptor_27;
  *(v0 + 184) = v11;
  [v9 startRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_21BCD4E4C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 336) = v2;
  v3 = *(v1 + 312);
  v4 = *(v1 + 304);
  if (v2)
  {
    v5 = sub_21BCD57E0;
  }

  else
  {
    v5 = sub_21BCD4F7C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BCD4F7C(uint64_t a1)
{
  v29 = v1;
  if (*(v1 + 360))
  {
    sub_21BE2616C();
    v2 = sub_21BE26A2C();
    v3 = sub_21BE28FCC();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 280);
    v6 = *(v1 + 240);
    v7 = *(v1 + 248);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v28[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_21BB3D81C(0xD000000000000027, 0x800000021BE5C280, v28);
      _os_log_impl(&dword_21BB35000, v2, v3, "%s blocking sleep ... ", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x21CF05C50](v9, -1, -1);
      MEMORY[0x21CF05C50](v8, -1, -1);
    }

    v10 = *(v7 + 8);
    v10(v5, v6);
    *(v1 + 344) = v10;
    v11 = swift_task_alloc();
    *(v1 + 352) = v11;
    *v11 = v1;
    v11[1] = sub_21BCD5350;

    return MEMORY[0x282200480](2000000000);
  }

  else
  {

    v12 = MEMORY[0x21CF01210](0xD00000000000003ELL, 0x800000021BE5C2B0, 0xD000000000000010, 0x800000021BE573A0, 500);
    swift_willThrow();
    v14 = *(v1 + 248);
    v13 = *(v1 + 256);
    v15 = *(v1 + 240);
    sub_21BE2616C();
    v16 = v12;
    sub_21BC51D50(v12, 0xD000000000000047, 0x800000021BE5C230);

    v17 = *(v14 + 8);
    v17(v13, v15);
    sub_21BE2616C();
    v18 = sub_21BE26A2C();
    v19 = sub_21BE28FFC();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v1 + 320);
    v22 = *(v1 + 264);
    v23 = *(v1 + 240);
    if (v20)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28[0] = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_21BB3D81C(0xD000000000000027, 0x800000021BE5C280, v28);
      *(v24 + 12) = 1024;
      *(v24 + 14) = 0;
      _os_log_impl(&dword_21BB35000, v18, v19, "%s Automatic location sharing flag request result success: %{BOOL}d", v24, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x21CF05C50](v25, -1, -1);
      MEMORY[0x21CF05C50](v24, -1, -1);
    }

    v17(v22, v23);

    v26 = *(v1 + 8);

    return v26(0);
  }
}

uint64_t sub_21BCD5350()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 304);
    v4 = *(v2 + 312);
    v5 = sub_21BCD9C1C;
  }

  else
  {
    v3 = *(v2 + 304);
    v4 = *(v2 + 312);
    v5 = sub_21BCD5474;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21BCD5474()
{
  v30 = v0;
  v1 = v0[41];
  v2 = v0[28];

  if ((*(v2 + v1) & 1) == 0)
  {
    sub_21BE2616C();
    v3 = sub_21BE26A2C();
    v4 = sub_21BE28FCC();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[43];
    v7 = v0[34];
    v8 = v0[30];
    if (v5)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v29 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_21BB3D81C(0xD000000000000027, 0x800000021BE5C280, &v29);
      _os_log_impl(&dword_21BB35000, v3, v4, "%s No reload was detected, forcing bg refresh", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x21CF05C50](v10, -1, -1);
      MEMORY[0x21CF05C50](v9, -1, -1);
    }

    v6(v7, v8);
    v12 = v0[28];
    v11 = v0[29];
    v13 = sub_21BE28DAC();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    v14 = v12;
    v15 = sub_21BE28D6C();
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D85700];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = v14;
    sub_21BBA932C(0, 0, v11, &unk_21BE40490, v16);
  }

  v18 = v0[43];
  sub_21BE2616C();
  v19 = sub_21BE26A2C();
  v20 = sub_21BE28FFC();
  v21 = os_log_type_enabled(v19, v20);
  v22 = v0[40];
  v23 = v0[33];
  v24 = v0[30];
  if (v21)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v29 = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_21BB3D81C(0xD000000000000027, 0x800000021BE5C280, &v29);
    *(v25 + 12) = 1024;
    *(v25 + 14) = 1;
    _os_log_impl(&dword_21BB35000, v19, v20, "%s Automatic location sharing flag request result success: %{BOOL}d", v25, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    MEMORY[0x21CF05C50](v26, -1, -1);
    MEMORY[0x21CF05C50](v25, -1, -1);
  }

  v18(v23, v24);

  v27 = v0[1];

  return v27(1);
}

uint64_t sub_21BCD57E0()
{
  v18 = v0;

  swift_willThrow();
  v1 = v0[42];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  sub_21BE2616C();
  v5 = v1;
  sub_21BC51D50(v1, 0xD000000000000047, 0x800000021BE5C230);

  v6 = *(v3 + 8);
  v6(v2, v4);
  sub_21BE2616C();
  v7 = sub_21BE26A2C();
  v8 = sub_21BE28FFC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[40];
  v11 = v0[33];
  v12 = v0[30];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_21BB3D81C(0xD000000000000027, 0x800000021BE5C280, &v17);
    *(v13 + 12) = 1024;
    *(v13 + 14) = 0;
    _os_log_impl(&dword_21BB35000, v7, v8, "%s Automatic location sharing flag request result success: %{BOOL}d", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x21CF05C50](v14, -1, -1);
    MEMORY[0x21CF05C50](v13, -1, -1);
  }

  v6(v11, v12);

  v15 = v0[1];

  return v15(0);
}

uint64_t sub_21BCD5A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_21BE26A4C();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v4[7] = swift_task_alloc();
  v4[8] = sub_21BE28D7C();
  v4[9] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x2822009F8](sub_21BCD5B38, v7, v6);
}

uint64_t sub_21BCD5B38()
{
  v0[12] = *__swift_project_boxed_opaque_existential_1Tm((v0[3] + OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_servicesStore), *(v0[3] + OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_servicesStore + 24));
  v0[13] = sub_21BE28D6C();
  v2 = sub_21BE28D0C();
  v0[14] = v2;
  v0[15] = v1;

  return MEMORY[0x2822009F8](sub_21BCD5BE4, v2, v1);
}

void sub_21BCD5BE4()
{
  v1 = *(v0[12] + 40);
  v0[16] = v1;
  if (v1)
  {
    v2 = v0[7];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v6 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v4 = swift_task_alloc();
    v0[17] = v4;
    *v4 = v0;
    v4[1] = sub_21BCD5CF8;
    v5 = v0[7];

    v6(v0 + 2, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BCD5CF8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  *(*v1 + 144) = v0;

  sub_21BB3A4CC(v3, &qword_27CDB5790, &qword_21BE32800);

  v4 = *(v2 + 120);
  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_21BCD5E84;
  }

  else
  {
    v6 = sub_21BBF5340;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BCD5E84()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_21BCD5EE8, v1, v2);
}

uint64_t sub_21BCD5EE8()
{
  v1 = v0[18];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];

  sub_21BE2616C();
  v5 = v1;
  sub_21BC51D50(v1, 0xD000000000000049, 0x800000021BE5C2F0);

  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

id LocationViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_21BCD6060@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LocationViewModel(0);
  result = sub_21BE26C0C();
  *a2 = result;
  return result;
}

uint64_t sub_21BCD60A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBA6A64;

  return sub_21BCCEF98();
}

void sub_21BCD6190(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a4 = v5;
}

uint64_t sub_21BCD6220(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = v6;
  return sub_21BE26CBC();
}

char *_s14FamilyCircleUI17LocationViewModelC06createF0ACyFZ_0()
{
  v0 = qword_27CDD4290;
  if (qword_27CDD4290)
  {
    v1 = qword_27CDD4290;
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    v2 = [objc_allocWithZone(type metadata accessor for ScreenTimeConfiguration()) init];
    v3 = objc_allocWithZone(type metadata accessor for LocationViewModel(0));
    v1 = sub_21BDD21D4(v2, v9, v7, &v6, v3);
    v0 = 0;
  }

  v4 = v0;
  return v1;
}

uint64_t sub_21BCD633C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BCCE438(a1, v4, v5, v6);
}

uint64_t type metadata accessor for LocationViewModel(uint64_t a1)
{
  result = qword_27CDB97C8;
  if (!qword_27CDB97C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of FMLSessionProtocol.sendFriendshipOffer(to:from:end:isFromGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 8) + **(a7 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_21BBA6A64;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of FMLSessionProtocol.stopSharingMyLocation(with:from:isFromGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_21BBB7EB8;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of FMLSessionProtocol.friendsSharingLocationsWithMe()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBE9D64;

  return v7(a1, a2);
}

uint64_t dispatch thunk of FMLSessionProtocol.friendsFollowingMyLocation()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB8C3C;

  return v7(a1, a2);
}

void sub_21BCD691C(uint64_t a1)
{
  sub_21BB3A6E8(319, &qword_27CDB97D8, &qword_27CDB8238, &unk_21BE4DC00);
  if (v1 <= 0x3F)
  {
    sub_21BB3D064();
    if (v2 <= 0x3F)
    {
      sub_21BB3A6E8(319, &qword_27CDB97E0, &qword_27CDB5CC8, &qword_21BE36190);
      if (v3 <= 0x3F)
      {
        sub_21BB3A6E8(319, &qword_27CDB97E8, &qword_27CDB97F0, &qword_21BE4DC10);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of LocationViewModel.computeLocationSharingToggles(selectedMember:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x228);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return v7(a1);
}

uint64_t dispatch thunk of LocationViewModel.notifyLocationChange()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x238);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBB7EB8;

  return v5();
}

uint64_t sub_21BCD6FF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BCD5A08(a1, v4, v5, v6);
}

id sub_21BCD70B0(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_21BCD70BC(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_21BCD70C8(char a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9808, &qword_21BE40588);

  return sub_21BCD04F0(a1, a2);
}

uint64_t block_copy_helper_105(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21BCD716C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9820, &qword_21BE405E0);
    v3 = sub_21BE297DC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21BDCE54C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_21BCD7270(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v2[6] = swift_task_alloc();
  v3 = sub_21BE2655C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_21BE2656C();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_21BE26A4C();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9818, &qword_21BE405C8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v6 = sub_21BE265CC();
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = sub_21BE28D7C();
  v2[25] = sub_21BE28D6C();
  v8 = sub_21BE28D0C();
  v2[26] = v8;
  v2[27] = v7;

  return MEMORY[0x2822009F8](sub_21BCD751C, v8, v7);
}

uint64_t sub_21BCD751C(uint64_t a1)
{
  v65 = v1;
  v2 = v1[4];
  if (v2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BE2951C())
  {
    v4 = 0;
    v5 = v1[21];
    v59 = v2 & 0xFFFFFFFFFFFFFF8;
    v62 = v2 & 0xC000000000000001;
    v56 = v1[4] + 32;
    v57 = (v5 + 48);
    v54 = v5;
    v2 = v5 + 32;
    v6 = MEMORY[0x277D84F90];
    v55 = i;
    while (1)
    {
      if (v62)
      {
        v7 = MEMORY[0x21CF047C0](v4, v1[4]);
      }

      else
      {
        if (v4 >= *(v59 + 16))
        {
          goto LABEL_18;
        }

        v7 = *(v56 + 8 * v4);
      }

      v8 = v7;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = v6;
      v12 = v1[19];
      v11 = v1[20];
      v64[0] = v7;
      sub_21BCD13E4(v64, v12);

      if ((*v57)(v12, 1, v11) == 1)
      {
        sub_21BB3A4CC(v1[19], &qword_27CDB9818, &qword_21BE405C8);
        v6 = v10;
      }

      else
      {
        v14 = v1[22];
        v13 = v1[23];
        v15 = v1[20];
        v16 = *v2;
        (*v2)(v13, v1[19], v15);
        v16(v14, v13, v15);
        v6 = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_21BBBD7CC(0, v10[2] + 1, 1, v10);
        }

        v18 = v6[2];
        v17 = v6[3];
        if (v18 >= v17 >> 1)
        {
          v6 = sub_21BBBD7CC((v17 > 1), v18 + 1, 1, v6);
        }

        v19 = v1[22];
        v20 = v1[20];
        v6[2] = v18 + 1;
        v16(v6 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v18, v19, v20);
        i = v55;
      }

      ++v4;
      if (v9 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_21:
  v1[28] = v6;
  v21 = v1[5];
  sub_21BE2616C();
  v22 = v21;

  v23 = sub_21BE26A2C();
  v24 = sub_21BE28FFC();

  v63 = v6;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = v6;
    v26 = v1[20];
    v27 = v1[14];
    v58 = v1[13];
    v60 = v1[17];
    v28 = v1[5];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v64[0] = v31;
    *v29 = 138543618;
    *(v29 + 4) = v28;
    *v30 = v28;
    *(v29 + 12) = 2080;
    v32 = v28;
    v33 = MEMORY[0x21CF03DF0](v25, v26);
    v35 = sub_21BB3D81C(v33, v34, v64);

    *(v29 + 14) = v35;
    _os_log_impl(&dword_21BB35000, v23, v24, "%{public}@ Sending friendship offer to %s", v29, 0x16u);
    sub_21BB3A4CC(v30, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v30, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x21CF05C50](v31, -1, -1);
    MEMORY[0x21CF05C50](v29, -1, -1);

    v36 = *(v27 + 8);
    v36(v60, v58);
  }

  else
  {
    v37 = v1[17];
    v39 = v1[13];
    v38 = v1[14];

    v36 = *(v38 + 8);
    v36(v37, v39);
  }

  v1[29] = v36;
  v41 = v1[20];
  v40 = v1[21];
  v42 = v1[18];
  v44 = v1[8];
  v43 = v1[9];
  v45 = v1[7];
  v46 = (v1[5] + OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_fmlSession);
  v47 = v46[3];
  v48 = v46[4];
  __swift_project_boxed_opaque_existential_1Tm(v46, v47);
  (*(v40 + 56))(v42, 1, 1, v41);
  (*(v44 + 104))(v43, *MEMORY[0x277D09108], v45);
  v61 = (*(v48 + 8) + **(v48 + 8));
  v49 = swift_task_alloc();
  v1[30] = v49;
  *v49 = v1;
  v49[1] = sub_21BCD7A70;
  v50 = v1[18];
  v51 = v1[12];
  v52 = v1[9];

  return v61(v51, v63, v50, v52, 0, v47, v48);
}

uint64_t sub_21BCD7A70()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  *(*v1 + 248) = v0;

  v4 = (v3 + 8);
  if (v0)
  {
    v5 = v2[18];
    (*v4)(v2[9], v2[7]);
    sub_21BB3A4CC(v5, &qword_27CDB9818, &qword_21BE405C8);
    v6 = v2[26];
    v7 = v2[27];
    v8 = sub_21BCD7E30;
  }

  else
  {
    v9 = v2[18];
    v11 = v2[11];
    v10 = v2[12];
    v13 = v2[9];
    v12 = v2[10];
    v14 = v2[7];

    (*v4)(v13, v14);
    sub_21BB3A4CC(v9, &qword_27CDB9818, &qword_21BE405C8);
    (*(v11 + 8))(v10, v12);
    v6 = v2[26];
    v7 = v2[27];
    v8 = sub_21BCD7C48;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_21BCD7C48()
{

  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_21BE28DAC();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = v2;
  v5 = sub_21BE28D6C();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;
  sub_21BBA932C(0, 0, v1, &unk_21BE405D8, v6);

  v8 = [objc_opt_self() defaultCenter];
  [v8 postNotificationName:*MEMORY[0x277D08110] object:0 userInfo:0 deliverImmediately:1];

  v9 = v0[1];

  return v9(1);
}

uint64_t sub_21BCD7E30()
{
  v30 = v0;
  v1 = *(v0 + 248);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  sub_21BB3A2A4(0, &unk_27CDBC630, 0x277CCA9B8);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = *(v0 + 248);

    v5 = *(v0 + 24);
    v6 = [v5 code];
    if (v6 == 204)
    {
      sub_21BE2616C();
      v7 = sub_21BE26A2C();
      v8 = sub_21BE28FDC();
      v9 = os_log_type_enabled(v7, v8);
      v10 = *(v0 + 232);
      v11 = *(v0 + 120);
      v12 = *(v0 + 104);
      if (v9)
      {
        v28 = *(v0 + 232);
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v29 = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_21BB3D81C(0xD000000000000017, 0x800000021BE5C640, &v29);
        _os_log_impl(&dword_21BB35000, v7, v8, "%s Ignoring 204 error code from findMy", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        MEMORY[0x21CF05C50](v14, -1, -1);
        MEMORY[0x21CF05C50](v13, -1, -1);

        v28(v11, v12);
      }

      else
      {

        v10(v11, v12);
      }
    }

    else
    {
      v15 = *(v0 + 232);
      v16 = *(v0 + 128);
      v17 = *(v0 + 104);
      sub_21BE2616C();
      v18 = v5;
      sub_21BC51D50(v5, 0xD000000000000045, 0x800000021BE5C5F0);

      v15(v16, v17);
    }

    v20 = *(v0 + 40);
    v19 = *(v0 + 48);
    v21 = sub_21BE28DAC();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
    v22 = v20;
    v23 = sub_21BE28D6C();
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D85700];
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = v22;
    sub_21BBA932C(0, 0, v19, &unk_21BE405D8, v24);

    v26 = [objc_opt_self() defaultCenter];
    [v26 postNotificationName:*MEMORY[0x277D08110] object:0 userInfo:0 deliverImmediately:1];

    v27 = *(v0 + 8);

    return v27(v6 == 204);
  }

  return result;
}

uint64_t sub_21BCD8268()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBB7EB8;

  return sub_21BCCEEEC();
}

uint64_t sub_21BCD831C(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_21BE26A4C();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9818, &qword_21BE405C8);
  v2[19] = swift_task_alloc();
  v4 = sub_21BE2656C();
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v5 = sub_21BE265CC();
  v2[23] = v5;
  v2[24] = *(v5 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v6 = sub_21BE2658C();
  v2[27] = v6;
  v2[28] = *(v6 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = sub_21BE28D7C();
  v2[33] = sub_21BE28D6C();
  v8 = sub_21BE28D0C();
  v2[34] = v8;
  v2[35] = v7;

  return MEMORY[0x2822009F8](sub_21BCD85C8, v8, v7);
}

uint64_t sub_21BCD85C8()
{
  v1 = v0[12];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_24:
    v3 = sub_21BE2951C();
    v4 = v0[12];
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v0[12];
  }

  v0[36] = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = v4 + 32;
    v24 = MEMORY[0x277D84F90];
    do
    {
      v1 = v5;
      while (1)
      {
        if (v6)
        {
          v8 = MEMORY[0x21CF047C0](v1, v0[12]);
        }

        else
        {
          if (v1 >= *(v2 + 16))
          {
            goto LABEL_23;
          }

          v8 = *(v7 + 8 * v1);
        }

        v9 = v8;
        v5 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v10 = [v8 appleID];
        if (v10)
        {
          break;
        }

        ++v1;
        if (v5 == v3)
        {
          goto LABEL_19;
        }
      }

      v11 = v10;
      v12 = sub_21BE28A0C();
      v23 = v13;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_21BBBC990(0, *(v24 + 2) + 1, 1, v24);
      }

      v15 = *(v24 + 2);
      v14 = *(v24 + 3);
      if (v15 >= v14 >> 1)
      {
        v24 = sub_21BBBC990((v14 > 1), v15 + 1, 1, v24);
      }

      *(v24 + 2) = v15 + 1;
      v16 = &v24[16 * v15];
      *(v16 + 4) = v12;
      *(v16 + 5) = v23;
      v0[36] = v24;
    }

    while (v5 != v3);
  }

LABEL_19:
  v17 = v0[13];
  v18 = OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_fmlSession;
  v0[37] = OBJC_IVAR____TtC14FamilyCircleUI17LocationViewModel_fmlSession;
  v19 = *(v17 + v18 + 24);
  v20 = *(v17 + v18 + 32);
  __swift_project_boxed_opaque_existential_1Tm((v17 + v18), v19);
  v25 = (*(v20 + 32) + **(v20 + 32));
  v21 = swift_task_alloc();
  v0[38] = v21;
  *v21 = v0;
  v21[1] = sub_21BCD8874;

  return v25(v19, v20);
}

uint64_t sub_21BCD8874(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 312) = a1;
  *(v4 + 320) = v1;

  v5 = *(v3 + 280);
  v6 = *(v3 + 272);
  if (v1)
  {
    v7 = sub_21BCD9350;
  }

  else
  {
    v7 = sub_21BCD89B8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

void sub_21BCD89B8()
{
  v1 = v0[39];
  v2 = MEMORY[0x277D84F90];
  v62 = *(v1 + 16);
  if (v62)
  {
    v3 = 0;
    v4 = v0[28];
    v60 = (v0[24] + 8);
    v61 = v4;
    v55 = (v4 + 8);
    v56 = (v4 + 32);
    v59 = v0[36] + 40;
    v5 = MEMORY[0x277D84F90];
    v57 = v0[39];
    v58 = v0[36];
    while (2)
    {
      if (v3 >= *(v1 + 16))
      {
LABEL_28:
        __break(1u);
        return;
      }

      v68 = v5;
      v8 = v0[26];
      v9 = v0[23];
      v64 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v63 = *(v61 + 72);
      (*(v61 + 16))(v0[31], v0[39] + v64 + v63 * v3, v0[27]);
      v66 = v3 + 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC880, &qword_21BE32F40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21BE32770;
      sub_21BE2657C();
      v11 = sub_21BE2659C();
      v13 = v12;
      v14 = *v60;
      (*v60)(v8, v9);
      *(inited + 32) = v11;
      *(inited + 40) = v13;
      sub_21BE2657C();
      v15 = sub_21BE265AC();
      v14(v8, v9);
      sub_21BDE57E8(v15);
      v16 = inited;
      v17 = *(v58 + 16);

      v18 = -v17;
      v19 = -1;
      v20 = v59;
      do
      {
        if (v18 + v19 == -1)
        {
          v6 = v0[31];
          v7 = v0[27];
          swift_bridgeObjectRelease_n();
          (*v55)(v6, v7);
          v5 = v68;
          v1 = v57;
          goto LABEL_4;
        }

        if (++v19 >= *(v58 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v21 = v20 + 2;
        v22 = *v20;
        v0[8] = *(v20 - 1);
        v0[9] = v22;
        v23 = swift_task_alloc();
        *(v23 + 16) = v0 + 8;

        v24 = sub_21BC9BF08(sub_21BC69628, v23, v16);

        v20 = v21;
      }

      while ((v24 & 1) == 0);
      v26 = v0[30];
      v25 = v0[31];
      v27 = v0[27];
      swift_bridgeObjectRelease_n();
      v28 = *v56;
      (*v56)(v26, v25, v27);
      v5 = v68;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21BC59D34(0, *(v68 + 16) + 1, 1);
        v5 = v68;
      }

      v1 = v57;
      v30 = *(v5 + 16);
      v29 = *(v5 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_21BC59D34((v29 > 1), v30 + 1, 1);
        v5 = v68;
      }

      v31 = v0[30];
      v32 = v0[27];
      *(v5 + 16) = v30 + 1;
      v28(v5 + v64 + v30 * v63, v31, v32);
LABEL_4:
      v3 = v66;
      if (v66 != v62)
      {
        continue;
      }

      break;
    }

    v2 = MEMORY[0x277D84F90];
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v33 = *(v5 + 16);
  if (v33)
  {
    v34 = v0[28];
    v35 = v0[24];
    sub_21BC59D14(0, v33, 0);
    v36 = v2;
    v37 = *(v34 + 16);
    v34 += 16;
    v67 = v37;
    v38 = v5 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v65 = *(v34 + 56);
    v39 = (v34 - 8);
    do
    {
      v40 = v0[29];
      v41 = v0[27];
      v67(v40, v38, v41);
      sub_21BE2657C();
      (*v39)(v40, v41);
      v43 = *(v36 + 16);
      v42 = *(v36 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_21BC59D14((v42 > 1), v43 + 1, 1);
      }

      v44 = v0[25];
      v45 = v0[23];
      *(v36 + 16) = v43 + 1;
      (*(v35 + 32))(v36 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v43, v44, v45);
      v38 += v65;
      --v33;
    }

    while (v33);
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
  }

  v0[41] = v36;
  v46 = v0[23];
  v47 = v0[24];
  v48 = v0[19];
  v49 = (v0[13] + v0[37]);
  v50 = v49[3];
  v51 = v49[4];
  __swift_project_boxed_opaque_existential_1Tm(v49, v50);
  (*(v47 + 56))(v48, 1, 1, v46);
  v69 = (*(v51 + 16) + **(v51 + 16));
  v52 = swift_task_alloc();
  v0[42] = v52;
  *v52 = v0;
  v52[1] = sub_21BCD8FD4;
  v53 = v0[22];
  v54 = v0[19];

  v69(v53, v36, v54, 0, v50, v51);
}

uint64_t sub_21BCD8FD4()
{
  v2 = *v1;
  (*v1)[43] = v0;

  if (v0)
  {
    sub_21BB3A4CC(v2[19], &qword_27CDB9818, &qword_21BE405C8);

    v3 = v2[34];
    v4 = v2[35];
    v5 = sub_21BCD9758;
  }

  else
  {
    v7 = v2[21];
    v6 = v2[22];
    v9 = v2[19];
    v8 = v2[20];

    sub_21BB3A4CC(v9, &qword_27CDB9818, &qword_21BE405C8);
    (*(v7 + 8))(v6, v8);
    v3 = v2[34];
    v4 = v2[35];
    v5 = sub_21BCD916C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21BCD916C()
{

  v1 = v0[18];
  v2 = v0[13];
  v3 = sub_21BE28DAC();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = v2;
  v5 = sub_21BE28D6C();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;
  sub_21BBA932C(0, 0, v1, &unk_21BE405F0, v6);

  v8 = [objc_opt_self() defaultCenter];
  [v8 postNotificationName:*MEMORY[0x277D08110] object:0 userInfo:0 deliverImmediately:1];

  v9 = v0[1];

  return v9(1);
}

uint64_t sub_21BCD9350()
{
  v28 = v0;

  v1 = *(v0 + 320);
  *(v0 + 80) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  sub_21BB3A2A4(0, &unk_27CDBC630, 0x277CCA9B8);
  result = swift_dynamicCast();
  if (result)
  {

    v4 = *(v0 + 88);
    v5 = [v4 code];
    if (v5 == 204)
    {
      sub_21BE2616C();
      v6 = sub_21BE26A2C();
      v7 = sub_21BE28FDC();
      v8 = os_log_type_enabled(v6, v7);
      v10 = *(v0 + 120);
      v9 = *(v0 + 128);
      v11 = *(v0 + 112);
      if (v8)
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v27 = v13;
        *v12 = 136315138;
        *(v12 + 4) = sub_21BB3D81C(0xD00000000000001DLL, 0x800000021BE5C6A0, &v27);
        _os_log_impl(&dword_21BB35000, v6, v7, "%s Ignoring 204 error code from findMy", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v13);
        MEMORY[0x21CF05C50](v13, -1, -1);
        MEMORY[0x21CF05C50](v12, -1, -1);
      }

      else
      {
      }

      (*(v10 + 8))(v9, v11);
    }

    else
    {
      v14 = *(v0 + 136);
      v15 = *(v0 + 112);
      v16 = *(v0 + 120);
      sub_21BE2616C();
      v17 = v4;
      sub_21BC51D50(v4, 0xD00000000000003ALL, 0x800000021BE5C660);

      (*(v16 + 8))(v14, v15);
    }

    v18 = *(v0 + 144);
    v19 = *(v0 + 104);
    v20 = sub_21BE28DAC();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
    v21 = v19;
    v22 = sub_21BE28D6C();
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D85700];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v21;
    sub_21BBA932C(0, 0, v18, &unk_21BE405F0, v23);

    v25 = [objc_opt_self() defaultCenter];
    [v25 postNotificationName:*MEMORY[0x277D08110] object:0 userInfo:0 deliverImmediately:1];

    v26 = *(v0 + 8);

    return v26(v5 == 204);
  }

  return result;
}

uint64_t sub_21BCD9758()
{
  v28 = v0;
  v1 = *(v0 + 344);
  *(v0 + 80) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  sub_21BB3A2A4(0, &unk_27CDBC630, 0x277CCA9B8);
  result = swift_dynamicCast();
  if (result)
  {

    v4 = *(v0 + 88);
    v5 = [v4 code];
    if (v5 == 204)
    {
      sub_21BE2616C();
      v6 = sub_21BE26A2C();
      v7 = sub_21BE28FDC();
      v8 = os_log_type_enabled(v6, v7);
      v10 = *(v0 + 120);
      v9 = *(v0 + 128);
      v11 = *(v0 + 112);
      if (v8)
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v27 = v13;
        *v12 = 136315138;
        *(v12 + 4) = sub_21BB3D81C(0xD00000000000001DLL, 0x800000021BE5C6A0, &v27);
        _os_log_impl(&dword_21BB35000, v6, v7, "%s Ignoring 204 error code from findMy", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v13);
        MEMORY[0x21CF05C50](v13, -1, -1);
        MEMORY[0x21CF05C50](v12, -1, -1);
      }

      else
      {
      }

      (*(v10 + 8))(v9, v11);
    }

    else
    {
      v14 = *(v0 + 136);
      v15 = *(v0 + 112);
      v16 = *(v0 + 120);
      sub_21BE2616C();
      v17 = v4;
      sub_21BC51D50(v4, 0xD00000000000003ALL, 0x800000021BE5C660);

      (*(v16 + 8))(v14, v15);
    }

    v18 = *(v0 + 144);
    v19 = *(v0 + 104);
    v20 = sub_21BE28DAC();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
    v21 = v19;
    v22 = sub_21BE28D6C();
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D85700];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v21;
    sub_21BBA932C(0, 0, v18, &unk_21BE405F0, v23);

    v25 = [objc_opt_self() defaultCenter];
    [v25 postNotificationName:*MEMORY[0x277D08110] object:0 userInfo:0 deliverImmediately:1];

    v26 = *(v0 + 8);

    return v26(v5 == 204);
  }

  return result;
}

uint64_t sub_21BCD9B58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBA6A64;

  return sub_21BCCEEEC();
}

uint64_t sub_21BCD9C28()
{
  v0 = sub_21BE26A4C();
  __swift_allocate_value_buffer(v0, qword_27CDD42A0);
  __swift_project_value_buffer(v0, qword_27CDD42A0);
  return sub_21BE26A3C();
}

uint64_t sub_21BCD9CA8()
{
  v0 = sub_21BE26A4C();
  __swift_allocate_value_buffer(v0, qword_27CDD42B8);
  v1 = __swift_project_value_buffer(v0, qword_27CDD42B8);
  if (qword_27CDB4F78 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27CDD42A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21BCD9D70()
{
  v1[2] = v0;
  v2 = sub_21BE265CC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_21BE2658C();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BCD9E8C, 0, 0);
}

uint64_t sub_21BCD9E8C()
{
  v0[9] = *(v0[2] + OBJC_IVAR____TtC14FamilyCircleUI19FindMyLocateSession_session);

  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_21BCD9F3C;

  return MEMORY[0x28215FA40]();
}

uint64_t sub_21BCD9F3C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_21BCDA36C;
  }

  else
  {

    v4 = sub_21BCDA058;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21BCDA058()
{
  v36 = v0;
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[7];
    v4 = v0[4];
    v35 = MEMORY[0x277D84F90];
    sub_21BC599DC(0, v2, 0);
    v5 = v35;
    v6 = *(v3 + 16);
    v3 += 16;
    v7 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v32 = *(v3 + 56);
    v33 = v6;
    v34 = v0;
    v30 = (v3 - 8);
    v31 = (v4 + 8);
    do
    {
      v8 = v0[8];
      v9 = v5;
      v11 = v0[5];
      v10 = v0[6];
      v12 = v0[3];
      v33(v8, v7, v10);
      sub_21BE2657C();
      v13 = sub_21BE2659C();
      v15 = v14;
      (*v31)(v11, v12);
      v16 = v10;
      v5 = v9;
      (*v30)(v8, v16);
      v35 = v9;
      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_21BC599DC((v17 > 1), v18 + 1, 1);
        v5 = v35;
      }

      *(v5 + 16) = v18 + 1;
      v19 = v5 + 16 * v18;
      *(v19 + 32) = v13;
      *(v19 + 40) = v15;
      v7 += v32;
      --v2;
      v0 = v34;
    }

    while (v2);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  if (qword_27CDB4F80 != -1)
  {
    swift_once();
  }

  v20 = sub_21BE26A4C();
  __swift_project_value_buffer(v20, qword_27CDD42B8);

  v21 = sub_21BE26A2C();
  v22 = sub_21BE28FFC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v35 = v24;
    *v23 = 136315138;
    v25 = MEMORY[0x21CF03DF0](v5, MEMORY[0x277D837D0]);
    v27 = sub_21BB3D81C(v25, v26, &v35);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_21BB35000, v21, v22, "Successfully got handles following my location: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x21CF05C50](v24, -1, -1);
    MEMORY[0x21CF05C50](v23, -1, -1);
  }

  v28 = v0[1];

  return v28(v5);
}

uint64_t sub_21BCDA36C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BCDA558(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_21BCDA600;

  return sub_21BCD9D70();
}

uint64_t sub_21BCDA600(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_21BE25A7C();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = sub_21BE28C1C();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

id FindMyLocateSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FindMyLocateSession.init()()
{
  v1 = v0;
  v2 = sub_21BE2652C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21BE2653C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = OBJC_IVAR____TtC14FamilyCircleUI19FindMyLocateSession_session;
  (*(v3 + 104))(v5, *MEMORY[0x277D09060], v2);
  sub_21BE2654C();
  sub_21BE2661C();
  swift_allocObject();
  *&v1[v7] = sub_21BE2662C();
  Session = type metadata accessor for FindMyLocateSession();
  v10.receiver = v1;
  v10.super_class = Session;
  return objc_msgSendSuper2(&v10, sel_init);
}

id FindMyLocateSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FindMyLocateSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of FindMyLocateSession.handlesFollowingMyLocation()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBB8C3C;

  return v5();
}

uint64_t sub_21BCDAC2C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBA6A64;

  return sub_21BCDA558(v2, v3);
}

uint64_t type metadata accessor for CommLimitsNotManagedCell(uint64_t a1)
{
  result = qword_27CDB9830;
  if (!qword_27CDB9830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BCDAD4C(uint64_t a1)
{
  sub_21BCB057C(319);
  if (v1 <= 0x3F)
  {
    sub_21BCB04E8(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CommLimitsItem(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21BCDAE14()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    sub_21BE28FEC();
    v7 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}