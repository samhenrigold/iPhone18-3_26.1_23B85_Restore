uint64_t sub_21D6E3FCC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21D6E3B40(1);
  }

  return result;
}

uint64_t TTRLocationQuickPicksInteractor.locationTrigger(for:togglingProximityForCurrentSelection:)(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60598, &qword_21DC23FE0);
  v81 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v62 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE605A0, &qword_21DC23FE8);
  v82 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v62 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE605A8, &qword_21DC23FF0);
  v80 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE605B0, &qword_21DC23FF8);
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v74 = &v62 - v15;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE605B8, &qword_21DC24000);
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v73 = &v62 - v16;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE605C0, &qword_21DC24008);
  v66 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v65 = &v62 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE605C8, &qword_21DC24010);
  v68 = *(v18 - 8);
  v69 = v18;
  MEMORY[0x28223BE20](v18);
  v67 = &v62 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE605D0, &qword_21DC24018);
  v71 = *(v20 - 8);
  v72 = v20;
  MEMORY[0x28223BE20](v20);
  v70 = &v62 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA78, &qword_21DC24020);
  MEMORY[0x28223BE20](v22);
  v26 = *a1;
  if (v26 > 2)
  {
    if (v26 == 3)
    {

      v34 = 1;
    }

    else
    {
      if (v26 != 4)
      {
        return 0;
      }

      v33 = sub_21DBFC64C();

      if (v33)
      {
        v34 = 1;
      }

      else
      {
        v34 = 2;
      }
    }

    v83 = [objc_allocWithZone(MEMORY[0x277D44590]) initWithEvent_];
    LOBYTE(v84) = 1;
    v40 = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE605D8, &unk_21DC24028);
    sub_21DBF90EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
    sub_21DBF90DC();
    (*(v81 + 8))(v8, v6);
    sub_21D0D0F1C(&qword_27CE605E0, &qword_27CE605A0, &qword_21DC23FE8, MEMORY[0x277CBCF40]);
    v32 = sub_21DBF920C();

    v41 = *(v82 + 8);
    v42 = v11;
LABEL_17:
    v41(v42, v9);
    return v32;
  }

  v28 = *a2;
  v27 = a2[1];
  if (v26 - 1 >= 2)
  {
    v35 = &v62 - v24;
    v81 = v25;
    v82 = v23;
    v36 = v3[8];
    v37 = v3[9];
    __swift_project_boxed_opaque_existential_1(v3 + 5, v36);
    (*(v37 + 8))(&v83, v36, v37);
    v64 = v27;
    v63 = v28;
    if (v85 >> 2 != 0xFFFFFFFF || (v86 & 0xF000000000000007) != 0)
    {
      sub_21D0D73FC(v83, v84, v85, v86);
    }

    else
    {
      v38 = v3[8];
      v39 = v3[9];
      __swift_project_boxed_opaque_existential_1(v3 + 5, v38);
      (*(v39 + 24))(v38, v39);
    }

    v43 = v79;
    v44 = v3[8];
    v45 = v3[9];
    __swift_project_boxed_opaque_existential_1(v3 + 5, v44);
    v83 = (*(v45 + 72))(v44, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA80, &unk_21DC22080);
    v80 = sub_21D0D8CF0(0, &qword_280D17760, 0x277D44868);
    v46 = MEMORY[0x277CBCD90];
    sub_21D0D0F1C(&qword_27CE5FA88, &qword_27CE5FA80, &unk_21DC22080, MEMORY[0x277CBCD90]);
    sub_21DBF931C();

    v47 = v3[13];
    v48 = v3[14];
    __swift_project_boxed_opaque_existential_1(v3 + 10, v47);
    v83 = (*(v48 + 8))(v47, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E758, &qword_21DC1CD78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE605F0, &qword_21DC24038);
    sub_21D0D0F1C(&qword_280D0C4B8, &qword_27CE5E758, &qword_21DC1CD78, v46);
    v49 = v65;
    sub_21DBF927C();

    v83 = MEMORY[0x277D84F90];
    v50 = MEMORY[0x277CBCC08];
    sub_21D0D0F1C(&qword_27CE605F8, &qword_27CE605C0, &qword_21DC24008, MEMORY[0x277CBCC08]);
    v51 = v67;
    sub_21DBF922C();
    (*(v66 + 8))(v49, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
    sub_21D0D0F1C(&qword_27CE60600, &qword_27CE605C8, &qword_21DC24010, MEMORY[0x277CBCB78]);
    v52 = v69;
    v53 = v70;
    sub_21DBF93BC();
    (*(v68 + 8))(v51, v52);
    sub_21D0D0F1C(&qword_27CE5FA90, &qword_27CE5FA78, &qword_21DC24020, MEMORY[0x277CBCCC0]);
    sub_21D0D0F1C(&qword_27CE60608, &qword_27CE605D0, &qword_21DC24018, MEMORY[0x277CBCBA0]);
    v54 = v74;
    v9 = v82;
    v55 = v72;
    sub_21DBF925C();
    v56 = swift_allocObject();
    *(v56 + 16) = v3;
    *(v56 + 24) = 0;
    v57 = v64;
    *(v56 + 32) = v63;
    *(v56 + 40) = v57;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE605D8, &unk_21DC24028);
    v58 = v73;
    v59 = v78;
    sub_21DBF8F6C();

    (*(v76 + 8))(v54, v59);
    sub_21D0D0F1C(&qword_27CE60610, &qword_27CE605B8, &qword_21DC24000, v50);
    v60 = v77;
    v32 = sub_21DBF920C();
    (*(v75 + 8))(v58, v60);
    (*(v71 + 8))(v53, v55);
    v41 = *(v81 + 8);
    v42 = v35;
    goto LABEL_17;
  }

  v29 = v3[13];
  v30 = v3[14];
  __swift_project_boxed_opaque_existential_1(v3 + 10, v29);
  v83 = (*(v30 + 8))(v29, v30);
  v31 = swift_allocObject();
  *(v31 + 16) = v26;
  *(v31 + 24) = v3;
  *(v31 + 32) = v28;
  *(v31 + 40) = v27;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E758, &qword_21DC1CD78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE605D8, &unk_21DC24028);
  sub_21D0D0F1C(&qword_280D0C4B8, &qword_27CE5E758, &qword_21DC1CD78, MEMORY[0x277CBCD90]);
  sub_21DBF931C();

  sub_21D0D0F1C(&qword_27CE605E8, &qword_27CE605A8, &qword_21DC23FF0, MEMORY[0x277CBCCC0]);
  v32 = sub_21DBF920C();
  (*(v80 + 8))(v14, v12);
  return v32;
}

void sub_21D6E4D30(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (sub_21DBFADDC())
  {
    sub_21D0D8CF0(0, &qword_280D17760, 0x277D44868);
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v4 = v3;
    sub_21D8CAAE8(v4, 1);

    v5 = sub_21DBFB3EC();
    *a2 = v5;
  }

  else
  {

    v6 = objc_opt_self();
    v7 = sub_21DBFA12C();
    [v6 internalErrorWithDebugDescription_];

    swift_willThrow();
  }
}

void sub_21D6E4F04(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60620, &qword_21DC24130);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21DC08D20;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  v6 = v4;
  v7 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60628, &qword_21DC24138);
  sub_21D0D8CF0(0, &qword_280D17760, 0x277D44868);
  sub_21D0D0F1C(&qword_27CE60630, &qword_27CE60628, &qword_21DC24138, MEMORY[0x277D83970]);
  v8 = sub_21DBFA41C();

  *a2 = v8;
}

uint64_t sub_21D6E5008@<X0>(id *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v11 = *a1;
  v4 = *a2;
  if (*a2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223D44740](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      result = sub_21DBFB40C();
      if (result)
      {
        *a3 = v8;
        return result;
      }

      ++v6;
      if (v9 == i)
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
  *a3 = v11;

  return v11;
}

id sub_21D6E5138@<X0>(uint64_t *a1@<X0>, unsigned __int8 a2@<W2>, unsigned __int8 a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = *a1;
  if (a3 == 6)
  {
    v7 = 1;
  }

  else
  {
    v9 = sub_21D25BD94(a2, a3);
    v10 = 1;
    if (a4 == 1)
    {
      v10 = 2;
    }

    if (v9)
    {
      v7 = v10;
    }

    else
    {
      v7 = 1;
    }
  }

  result = [objc_allocWithZone(MEMORY[0x277D44580]) initWithStructuredLocation:v6 proximity:v7];
  *a5 = result;
  *(a5 + 8) = 0;
  return result;
}

void sub_21D6E51C8(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, unsigned __int8 a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  if (a2 == 1)
  {

    if (!v9)
    {
LABEL_3:
      v11 = objc_opt_self();
      v12 = sub_21DBFA12C();
      [v11 internalErrorWithDebugDescription_];

      swift_willThrow();
      return;
    }
  }

  else
  {
    v13 = sub_21DBFC64C();

    if ((v13 & 1) == 0)
    {
      v9 = v10;
    }

    if (!v9)
    {
      goto LABEL_3;
    }
  }

  if (a3 == 6)
  {
    v14 = v9;
    v15 = 1;
  }

  else
  {
    v16 = v9;
    v17 = sub_21D25BD94(a2, a3);
    v18 = 1;
    if (a4 == 1)
    {
      v18 = 2;
    }

    if (v17)
    {
      v15 = v18;
    }

    else
    {
      v15 = 1;
    }
  }

  v19 = [objc_allocWithZone(MEMORY[0x277D44580]) initWithStructuredLocation:v9 proximity:v15];

  *a5 = v19;
  *(a5 + 8) = 0;
}

void TTRLocationQuickPicksInteractor.quickPickItems(matchingAlarmTriggersIn:)(void *a1@<X0>, char *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  TTRReminderProtocol.mostRelevantLocationRelatedTrigger()(v3, v4, &v10);
  v5 = v11;
  if (v11 == 255)
  {
    v8 = 6;
    goto LABEL_13;
  }

  v6 = v10;
  if (v11)
  {
    v7 = [v10 event];
    sub_21D157864(v6, v5);
    if (!v7)
    {
      goto LABEL_11;
    }

    if (v7 == 2)
    {
      v8 = 4;
      goto LABEL_13;
    }

    if (v7 == 1)
    {
      v8 = 3;
    }

    else
    {
LABEL_11:
      v8 = 5;
    }

LABEL_13:
    *a2 = v8;
    return;
  }

  v9 = [v10 structuredLocation];
  TTRLocationQuickPicksInteractor.quickPickItems(matching:)(a2);

  sub_21D157864(v6, v5);
}

void TTRLocationQuickPicksInteractor.quickPickItems(matching:)(char *a1@<X8>)
{
  v2 = v1;
  v4 = v1[8];
  v5 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v4);
  v6 = (*(v5 + 16))(v4, v5);
  if (v6)
  {
    v7 = v6;
    v8 = sub_21DBFADDC();
    if (v8)
    {
      v9 = v8;
      [v8 center];
      v11 = v10;
      v13 = v12;

      v14 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v11 longitude:v13];
      v15 = v14;
      goto LABEL_6;
    }
  }

  v14 = 0;
LABEL_6:
  v16 = v2[13];
  v17 = v2[14];
  __swift_project_boxed_opaque_existential_1(v2 + 10, v16);
  v18 = (*(v17 + 16))(v16, v17);
  if (v18)
  {
    v19 = v18;
    v20 = sub_21DBFB3AC();
  }

  else
  {
    v20 = 0;
  }

  v21 = v2[13];
  v22 = v2[14];
  __swift_project_boxed_opaque_existential_1(v2 + 10, v21);
  v23 = (*(v22 + 24))(v21, v22);
  if (v23)
  {
    v24 = v23;
    v25 = sub_21DBFB3AC();
  }

  else
  {
    v25 = 0;
  }

  if (!v20)
  {
LABEL_16:
    if (v25)
    {
      v26 = v25;
      v29 = sub_21DBFB41C();

      if (v29)
      {
        v28 = 2;
        goto LABEL_23;
      }
    }

    if (v14)
    {
      v26 = v14;
      v30 = sub_21DBFB41C();

      if (v30)
      {
        v28 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      v26 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60618, &qword_21DC24040);
    swift_arrayDestroy();

    v28 = 5;
    goto LABEL_27;
  }

  v26 = v20;
  v27 = sub_21DBFB41C();

  if ((v27 & 1) == 0)
  {

    goto LABEL_16;
  }

  v28 = 1;
LABEL_23:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60618, &qword_21DC24040);
  swift_arrayDestroy();

LABEL_27:
  *a1 = v28;
}

uint64_t TTRLocationQuickPicksInteractor.deinit()
{
  sub_21D157444(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  __swift_destroy_boxed_opaque_existential_0((v0 + 80));

  return v0;
}

uint64_t TTRLocationQuickPicksInteractor.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  __swift_destroy_boxed_opaque_existential_0((v0 + 80));

  return swift_deallocClassInstance();
}

void *sub_21D6E5864(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0F0, &qword_21DC0E530);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v28 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E750, &qword_21DC1CD70);
  v18 = *(v17 - 8);
  v28 = v17;
  v29 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v28 - v19;
  v33[3] = a4;
  v33[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a1, a4);
  v32[3] = a5;
  v32[4] = a7;
  v22 = __swift_allocate_boxed_opaque_existential_0(v32);
  (*(*(a5 - 8) + 32))(v22, a2, a5);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = MEMORY[0x277D84F90];
  a3[15] = 0;
  a3[16] = 0;
  sub_21D0D32E4(v33, (a3 + 5));
  sub_21D0D32E4(v32, (a3 + 10));
  sub_21D6E3B40(0);
  v31 = (*(a7 + 8))(a5, a7);
  v23 = [objc_opt_self() mainRunLoop];
  v30 = v23;
  v24 = sub_21DBFBA0C();
  (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E758, &qword_21DC1CD78);
  sub_21D0D8CF0(0, &qword_280D17650, 0x277CBEB88);
  sub_21D0D0F1C(&qword_280D0C4B8, &qword_27CE5E758, &qword_21DC1CD78, MEMORY[0x277CBCD90]);
  sub_21D5A51D8();
  sub_21DBF936C();
  sub_21D60C7A8(v16);

  swift_allocObject();
  swift_weakInit();
  sub_21D0D0F1C(&qword_280D0C518, &qword_27CE5E750, &qword_21DC1CD70, MEMORY[0x277CBCD60]);
  v25 = v28;
  v26 = sub_21DBF93CC();

  (*(v29 + 8))(v20, v25);
  __swift_destroy_boxed_opaque_existential_0(v33);
  a3[15] = v26;

  __swift_destroy_boxed_opaque_existential_0(v32);
  return a3;
}

void *sub_21D6E5C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a7;
  v12 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  (*(v16 + 16))(v19, a1, a4);
  (*(v12 + 16))(v14, a2, a5);
  return sub_21D6E5864(v19, v14, v20, a4, a5, a6, v23);
}

uint64_t TTRBoardColumnItemClusterAdjuster.presentationToDataSource.getter()
{
  v1 = *(v0 + 16);
  sub_21D0D0E78(v1, *(v0 + 24));
  return v1;
}

uint64_t TTRBoardColumnItemClusterAdjuster.__allocating_init(presentationToDataSource:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC15RemindersUICore33TTRBoardColumnItemClusterAdjuster_detectedUpdate;
  v6 = type metadata accessor for TTRBoardColumnItemClusterAdjuster.DetectedUpdate(0);
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return v4;
}

uint64_t TTRBoardColumnItemClusterAdjuster.init(presentationToDataSource:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC15RemindersUICore33TTRBoardColumnItemClusterAdjuster_detectedUpdate;
  v6 = type metadata accessor for TTRBoardColumnItemClusterAdjuster.DetectedUpdate(0);
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

RemindersUICore::TTRBoardColumnItemClusterCollection __swiftcall TTRBoardColumnItemClusterAdjuster.adjust(_:)(RemindersUICore::TTRBoardColumnItemClusterCollection a1)
{
  v3 = v1;
  v4 = sub_21DBF5D5C();
  v44 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v38 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60640, &qword_21DC24140);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  v46 = *a1.itemClusters._rawValue;
  v47 = v46;
  swift_bridgeObjectRetain_n();
  sub_21D6E64E8(&v46, v17);

  sub_21D0D3954(v17, v14, &qword_27CE60640, &qword_21DC24140);
  v18 = type metadata accessor for TTRBoardColumnItemClusterAdjuster.DetectedUpdate(0);
  if ((*(*(v18 - 8) + 48))(v14, 1, v18) == 1)
  {
    goto LABEL_26;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v35 = v44;
    (*(v44 + 32))(v11, v14, v4);
    TTRBoardColumnItemClusterCollection.insert(_:)();
    (*(v35 + 8))(v11, v4);
LABEL_26:
    result.itemClusters._rawValue = sub_21D0CF7E0(v17, &qword_27CE60640, &qword_21DC24140);
LABEL_30:
    *v3 = v47;
    return result;
  }

  v42 = v3;
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60648, &qword_21DC24148) + 48);
  v20 = v45;
  v21 = v4;
  v22 = *(v44 + 32);
  v22(v45, v14, v21);
  v41 = v21;
  v22(v6, &v14[v19], v21);
  v23 = v47;
  v24 = *(v47 + 16);
  if (!v24)
  {
LABEL_28:
    TTRBoardColumnItemClusterCollection.delete(_:)();
    TTRBoardColumnItemClusterCollection.insert(_:)();
LABEL_29:
    sub_21D0CF7E0(v17, &qword_27CE60640, &qword_21DC24140);
    v36 = *(v44 + 8);
    v37 = v41;
    v36(v6, v41);
    result.itemClusters._rawValue = (v36)(v20, v37);
    v3 = v42;
    goto LABEL_30;
  }

  result.itemClusters._rawValue = sub_21DBF8E0C();
  v26 = 0;
  v27 = (v23 + 48);
  while (1)
  {
    if (v26 >= *(v23 + 16))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v29 = *(v27 - 2);
    v28 = *(v27 - 1);
    v30 = *v27;
    result.itemClusters._rawValue = sub_21DBF5D0C();
    if (result.itemClusters._rawValue == v29)
    {
      result.itemClusters._rawValue = sub_21DBF5CFC();
      if (result.itemClusters._rawValue >= v28)
      {
        if (__OFSUB__(result.itemClusters._rawValue, v28))
        {
          goto LABEL_32;
        }

        if (result.itemClusters._rawValue - v28 < v30)
        {
          result.itemClusters._rawValue = sub_21DBF5CFC();
          if (result.itemClusters._rawValue != v28)
          {
            break;
          }
        }
      }
    }

    ++v26;
    v27 += 3;
    if (v24 == v26)
    {
LABEL_27:

      v20 = v45;
      goto LABEL_28;
    }
  }

  v20 = v45;
  v39 = *(v23 + 16);
  if (!v39)
  {
    goto LABEL_28;
  }

  result.itemClusters._rawValue = sub_21DBF8E0C();
  v31 = 0;
  v32 = (v23 + 48);
  while (v31 < *(v23 + 16))
  {
    v33 = *(v32 - 2);
    v43 = *(v32 - 1);
    v40 = *v32;
    result.itemClusters._rawValue = sub_21DBF5D0C();
    v38 = v33;
    if (result.itemClusters._rawValue == v33)
    {
      result.itemClusters._rawValue = sub_21DBF5CFC();
      if (result.itemClusters._rawValue >= v43)
      {
        if (__OFSUB__(result.itemClusters._rawValue, v43))
        {
          goto LABEL_34;
        }

        v34 = v43;
        if (result.itemClusters._rawValue - v43 < v40)
        {
          result.itemClusters._rawValue = sub_21DBF5CFC();
          if (result.itemClusters._rawValue != v34)
          {

            v20 = v45;
            if (v29 == v38 && v28 == v43 && v30 == v40)
            {
              goto LABEL_29;
            }

            goto LABEL_28;
          }
        }
      }
    }

    ++v31;
    v32 += 3;
    if (v39 == v31)
    {
      goto LABEL_27;
    }
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void (*sub_21D6E64E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>))(uint64_t *, void)
{
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60678, &unk_21DC241C0);
  MEMORY[0x28223BE20](v90);
  v89 = &v84 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x28223BE20](v6 - 8);
  v102 = &v84 - v7;
  v103 = sub_21DBF5D5C();
  v8 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v84 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v84 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v84 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60680, &qword_21DC241D0);
  MEMORY[0x28223BE20](v20 - 8);
  v101 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v84 - v23;
  v104 = *(v2 + 16);
  if (!v104 || (v25 = *a1, (v26 = *(v25 + 16)) == 0))
  {
    v59 = type metadata accessor for TTRBoardColumnItemClusterAdjuster.DetectedUpdate(0);
    v60 = *(*(v59 - 8) + 56);

    return v60(a2, 1, 1, v59);
  }

  v27 = *(v2 + 24);
  v28 = (v25 + 24 * v26);
  v29 = v28[2];
  v99 = v28[1];
  v100 = v27;
  v30 = v28[3] + v29;

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60688, &qword_21DC241D8);
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v98 = v31;
  v95 = v33;
  v96 = v32 + 56;
  result = (v33)(v24, 1, 1);
  if (v30 < 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v84 = v25;
  v85 = v10;
  v86 = v8;
  v91 = v13;
  v105 = v16;
  v87 = a2;
  v36 = v102;
  v35 = v103;
  v94 = v30;
  if (!v30)
  {
LABEL_23:
    sub_21D0CF7E0(v24, &qword_27CE60680, &qword_21DC241D0);
    sub_21D0D0E88(v104, v100);
LABEL_26:
    v64 = type metadata accessor for TTRBoardColumnItemClusterAdjuster.DetectedUpdate(0);
    return (*(*(v64 - 8) + 56))(v87, 1, 1, v64);
  }

  v37 = 0;
  v97 = (v86 + 48);
  v107 = (v86 + 32);
  v92 = (v32 + 48);
  v93 = (v86 + 8);
  v88 = v19;
  while (1)
  {
    v40 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    MEMORY[0x223D3E490](v37, v99);
    v104(v19);
    if ((*v97)(v36, 1, v35) == 1)
    {
      sub_21D0CF7E0(v24, &qword_27CE60680, &qword_21DC241D0);
      sub_21D0D0E88(v104, v100);
      sub_21D0CF7E0(v36, &unk_27CE58E70, &unk_21DC0A930);
      v61 = v87;
      (*v107)(v87, v19, v35);
      v62 = type metadata accessor for TTRBoardColumnItemClusterAdjuster.DetectedUpdate(0);
      swift_storeEnumTagMultiPayload();
      return (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
    }

    v41 = *v107;
    v42 = v105;
    (*v107)(v105, v36, v35);
    v43 = sub_21DBF5D0C();
    if (v43 != sub_21DBF5D0C())
    {
      sub_21D0D0E88(v104, v100);
      v63 = *v93;
      (*v93)(v42, v35);
      v63(v19, v35);
      sub_21D0CF7E0(v24, &qword_27CE60680, &qword_21DC241D0);
      goto LABEL_26;
    }

    v44 = sub_21DBF5CFC();
    result = sub_21DBF5CFC();
    if (__OFSUB__(v44, result))
    {
      goto LABEL_39;
    }

    v106 = v44 - result;
    v45 = v101;
    sub_21D0D3954(v24, v101, &qword_27CE60680, &qword_21DC241D0);
    v46 = v98;
    if ((*v92)(v45, 1, v98) != 1)
    {
      break;
    }

    (*v93)(v19, v35);
    sub_21D0CF7E0(v24, &qword_27CE60680, &qword_21DC241D0);
    v38 = v45;
    v36 = v102;
LABEL_7:
    sub_21D0CF7E0(v38, &qword_27CE60680, &qword_21DC241D0);
    v39 = *(v46 + 48);
    v41(v24, v105, v35);
    *&v24[v39] = v106;
    result = v95(v24, 0, 1, v46);
    ++v37;
    if (v40 == v94)
    {
      goto LABEL_23;
    }
  }

  v47 = v45;
  v48 = *(v45 + *(v46 + 48));
  v49 = v90;
  v50 = *(v90 + 48);
  v51 = v41;
  v52 = v89;
  v51(v89, v47, v103);
  *&v52[v50] = v48;
  v35 = v103;
  v53 = *&v52[*(v49 + 48)];
  v54 = v91;
  v55 = v52;
  v41 = v51;
  result = (v51)(v91, v55, v103);
  if (!v53)
  {
    v57 = *v93;
    (*v93)(v54, v35);
    v19 = v88;
    v57(v88, v35);
    v38 = v24;
LABEL_19:
    v36 = v102;
    goto LABEL_7;
  }

  if (!v106)
  {
    v58 = *v93;
    (*v93)(v91, v35);
    v19 = v88;
    v58(v88, v35);
    v38 = v24;
    goto LABEL_19;
  }

  v19 = v88;
  v36 = v102;
  if (v106 < 0 == v53 < 0)
  {
    v56 = *v93;
    (*v93)(v91, v35);
    v56(v19, v35);
    v38 = v24;
    goto LABEL_7;
  }

  v65 = v106;
  v66 = v87;
  v67 = v104;
  v68 = v105;
  if (v106 < 0)
  {
    v65 = -v106;
    if (__OFSUB__(0, v106))
    {
      goto LABEL_41;
    }
  }

  if (v53 < 0)
  {
    v69 = __OFSUB__(0, v53);
    v53 = -v53;
    if (v69)
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      return result;
    }
  }

  if (v53 < v65 || v65 == v53 && (v109[0] = v84, TTRBoardColumnItemClusterCollection.positionInCluster(forItemAt:)(&v108), v108))
  {
    sub_21D0D0E88(v67, v100);
    v70 = v86;
    (*(v86 + 8))(v91, v35);
    sub_21D0CF7E0(v24, &qword_27CE60680, &qword_21DC241D0);
    v71 = v35;
    v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60648, &qword_21DC24148) + 48);
    v41(v66, v19, v71);
    (*(v70 + 16))(v66 + v72, v68, v71);
    v73 = type metadata accessor for TTRBoardColumnItemClusterAdjuster.DetectedUpdate(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v73 - 8) + 56))(v66, 0, 1, v73);
    v74 = v98;
    v75 = *(v98 + 48);
    v41(v24, v68, v71);
    *&v24[v75] = v106;
    v95(v24, 0, 1, v74);
    v76 = v24;
  }

  else
  {
    v77 = v85;
    (*(v86 + 16))(v85, v19, v35);
    result = sub_21DBF5CEC();
    if (__OFSUB__(*v78, 1))
    {
      goto LABEL_43;
    }

    --*v78;
    result(v109, 0);
    sub_21D0D0E88(v67, v100);
    (*v93)(v19, v35);
    sub_21D0CF7E0(v24, &qword_27CE60680, &qword_21DC241D0);
    v79 = v35;
    v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60648, &qword_21DC24148) + 48);
    v41(v66, v77, v79);
    v41(v66 + v80, v91, v79);
    v81 = type metadata accessor for TTRBoardColumnItemClusterAdjuster.DetectedUpdate(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v81 - 8) + 56))(v66, 0, 1, v81);
    v82 = v98;
    v83 = *(v98 + 48);
    v41(v24, v68, v79);
    *&v24[v83] = v106;
    v95(v24, 0, 1, v82);
    v76 = v24;
  }

  return sub_21D0CF7E0(v76, &qword_27CE60680, &qword_21DC241D0);
}

uint64_t TTRBoardColumnItemClusterAdjuster.deinit()
{
  sub_21D0D0E88(*(v0 + 16), *(v0 + 24));
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRBoardColumnItemClusterAdjuster_detectedUpdate, &qword_27CE60640, &qword_21DC24140);
  return v0;
}

uint64_t TTRBoardColumnItemClusterAdjuster.__deallocating_deinit()
{
  sub_21D0D0E88(*(v0 + 16), *(v0 + 24));
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRBoardColumnItemClusterAdjuster_detectedUpdate, &qword_27CE60640, &qword_21DC24140);

  return swift_deallocClassInstance();
}

void sub_21D6E71A0(uint64_t a1)
{
  sub_21D6E7268(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21D6E7268(uint64_t a1)
{
  if (!qword_27CE60660)
  {
    type metadata accessor for TTRBoardColumnItemClusterAdjuster.DetectedUpdate(255);
    v1 = sub_21DBFBA8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CE60660);
    }
  }
}

uint64_t *sub_21D6E72C0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = sub_21DBF5D5C();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    if (EnumCaseMultiPayload == 1)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60648, &qword_21DC24148);
      v8((a1 + *(v9 + 48)), (a2 + *(v9 + 48)), v7);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_21D6E73F8(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = sub_21DBF5D5C();
  v7 = *(*(v4 - 8) + 8);
  result = v7(a1, v4);
  if (EnumCaseMultiPayload == 1)
  {
    v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60648, &qword_21DC24148) + 48);

    return v7(v6, v4);
  }

  return result;
}

uint64_t sub_21D6E74C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = sub_21DBF5D5C();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  if (EnumCaseMultiPayload == 1)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60648, &qword_21DC24148);
    v7(a1 + *(v8 + 48), a2 + *(v8 + 48), v6);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_21D6E75AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D6E76A0(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = sub_21DBF5D5C();
    v7 = *(*(v6 - 8) + 16);
    v7(a1, a2, v6);
    if (EnumCaseMultiPayload == 1)
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60648, &qword_21DC24148);
      v7(a1 + *(v8 + 48), a2 + *(v8 + 48), v6);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_21D6E76A0(uint64_t a1)
{
  v2 = type metadata accessor for TTRBoardColumnItemClusterAdjuster.DetectedUpdate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D6E76FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = sub_21DBF5D5C();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  if (EnumCaseMultiPayload == 1)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60648, &qword_21DC24148);
    v7(a1 + *(v8 + 48), a2 + *(v8 + 48), v6);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_21D6E77E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D6E76A0(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = sub_21DBF5D5C();
    v7 = *(*(v6 - 8) + 32);
    v7(a1, a2, v6);
    if (EnumCaseMultiPayload == 1)
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60648, &qword_21DC24148);
      v7(a1 + *(v8 + 48), a2 + *(v8 + 48), v6);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_21D6E78D4(uint64_t a1)
{
  result = sub_21DBF5D5C();
  if (v2 <= 0x3F)
  {
    v3[4] = *(result - 8) + 64;
    swift_getTupleTypeLayout2();
    v3[5] = v3;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_21D6E7970()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE60690);
  v1 = __swift_project_value_buffer(v0, qword_27CE60690);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRTemplateSharingPresenterCapability.ActionPriorToCommit.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRTemplateSharingPresenterCapability.__allocating_init(interactor:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t TTRTemplateSharingPresenterCapability.init(interactor:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t TTRTemplateSharingPresenterCapability.prepareToStartOrManageSharing()(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_21DBFA84C();
  v2[9] = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();
  v2[10] = v4;
  v2[11] = v3;

  return MEMORY[0x2822009F8](sub_21D6E7BA4, v4, v3);
}

uint64_t sub_21D6E7BA4()
{
  v1 = v0[8];
  v0[12] = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[13] = v2;
  ObjectType = swift_getObjectType();
  v0[14] = ObjectType;
  v6 = (*(v2 + 16) + **(v2 + 16));
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_21D6E7CE0;

  return v6(v0 + 5, ObjectType, v2);
}

uint64_t sub_21D6E7CE0()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_21D6E8210;
  }

  else
  {
    v5 = sub_21D6E7E1C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D6E7E1C()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 40);
  *(v0 + 136) = v3;
  v4 = (*(v2 + 8))(v1);
  *(v0 + 144) = v4;
  v5 = [v4 publicLink];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 configuration];

    v8 = 256;
    if (v7)
    {
      v9 = [v7 shouldIncludeHashtags];
      v10 = [v7 shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval];
      v11 = [v7 shouldIncludeAlarmTriggersBasedOnLocationOrVehicle];

      if (v10)
      {
        v8 = 256;
      }

      else
      {
        v8 = 0;
      }

      if (v11)
      {
        v12 = 0x10000;
      }

      else
      {
        v12 = 0;
      }

      v13 = 1;
    }

    else
    {
      v13 = 0;
      v9 = 0;
      v12 = 0;
    }
  }

  else
  {
    v13 = 0;
    v9 = 0;
    v12 = 0;
    v8 = 256;
  }

  *(v0 + 172) = v8;
  *(v0 + 176) = v12;
  *(v0 + 168) = v9;
  *(v0 + 152) = v13;
  if ((v3 & 0x10) != 0)
  {

    v16 = *(v0 + 172) | *(v0 + 176) | *(v0 + 168);
    v17 = *(v0 + 136);
    v18 = *(v0 + 56);
    *v18 = *(v0 + 152);
    *(v18 + 8) = v17;
    *(v18 + 16) = v16;
    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v14 = swift_task_alloc();
    *(v0 + 160) = v14;
    *v14 = v0;
    v14[1] = sub_21D6E8028;

    return sub_21D6E99D4();
  }
}

uint64_t sub_21D6E8028(char a1)
{
  v2 = *v1;
  *(*v1 + 180) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return MEMORY[0x2822009F8](sub_21D6E8150, v4, v3);
}

uint64_t sub_21D6E8150()
{
  v1 = *(v0 + 180);

  v2 = *(v0 + 136);
  if (v2 == 8)
  {
    v3 = 50331648;
  }

  else
  {
    v3 = 0x4000000;
  }

  if ((v2 & 0xFFFFFFFFFFFFFFE7) != 0)
  {
    v3 = 0x2000000;
  }

  if (v1)
  {
    v4 = 0x1000000;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(v0 + 176) | v4 | *(v0 + 172) | *(v0 + 168);
  v6 = *(v0 + 56);
  *v6 = *(v0 + 152);
  *(v6 + 8) = v2;
  *(v6 + 16) = v5;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_21D6E8210()
{
  v17 = v0;

  if (qword_27CE56C18 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE60690);
  v3 = v1;
  v4 = sub_21DBF84AC();
  v5 = sub_21DBFAEBC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[16];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_21DBFC75C();
    v12 = sub_21D0CDFB4(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_21D0C9000, v4, v5, "TTRTemplateSharing: failed to fetch template content attributes {error: %s}", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223D46520](v9, -1, -1);
    MEMORY[0x223D46520](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[7];
  *v13 = xmmword_21DC241F0;
  *(v13 + 16) = 0;
  v14 = v0[1];

  return v14();
}

void TTRTemplateSharingPresenterCapability.alertNeededForCommittingLink(viewModel:)(_BYTE *a1@<X0>, void (**a2)()@<X8>)
{
  v2 = a1[18];
  if ((a1[17] & 1) == 0 && (a1[16] & 1) == 0 && !a1[18])
  {
    goto LABEL_4;
  }

  if (qword_280D1AA10 != -1)
  {
    v7 = a2;
    swift_once();
    a2 = v7;
  }

  v3 = *(qword_280D1AA18 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3 && (v4 = a2, v5 = sub_21DBFA12C(), v6 = [v3 BOOLForKey_], v5, a2 = v4, (v6 & 1) != 0))
  {
    if (!v2)
    {
LABEL_4:
      *a2 = xmmword_21DC11550;
      return;
    }

    *v4 = 0;
    v4[1] = 0;
  }

  else
  {
    *a2 = sub_21D6E84F0;
    a2[1] = 0;
  }
}

void sub_21D6E84F0()
{
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v0 = *(qword_280D1AA18 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v0)
  {
    v1 = sub_21DBFA12C();
    [v0 setBool:1 forKey:v1];
  }
}

LPLinkMetadata __swiftcall TTRTemplateSharingPresenterCapability.templateLinkMetadataForShareSheet()()
{
  v1 = type metadata accessor for TTRTemplatesListViewModel.Template(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 8))(ObjectType, v4);
  v7 = [objc_allocWithZone(MEMORY[0x277CD46C8]) init];
  v8 = [v6 name];
  if (!v8)
  {
    sub_21DBFA16C();
    v8 = sub_21DBFA12C();
  }

  [v7 setTitle_];

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v9 = sub_21DBFA12C();

  [v7 setSummary_];

  v10 = v6;
  TTRTemplatesListViewModel.Template.init(template:)(v10, v3);
  v11 = *(v3 + 72);
  v22 = *(v3 + 56);
  v23 = v11;
  v24[0] = *(v3 + 88);
  *(v24 + 10) = *(v3 + 98);
  v12 = *(v3 + 40);
  v20 = *(v3 + 24);
  v21 = v12;
  sub_21D24BF60(&v20, v18);
  sub_21D6E9CF4(v3);
  v18[2] = v22;
  v18[3] = v23;
  v19[0] = v24[0];
  *(v19 + 10) = *(v24 + 10);
  v18[0] = v20;
  v18[1] = v21;
  v13 = _s15RemindersUICore16TTRListBadgeViewC14shareSheetIcon4withSo7UIImageCSgAA0c6DetaildE5ModelV_tFZ_0(v18);
  if (v13)
  {
    v14 = v13;
    v15 = [objc_allocWithZone(MEMORY[0x277CD46B8]) init];
    [v15 setType_];
    v16 = [objc_allocWithZone(MEMORY[0x277CD46B0]) initWithPlatformImage:v14 properties:v15];
    [v7 setImage_];

    sub_21D24C27C(&v20);
  }

  else
  {

    sub_21D24C27C(&v20);
  }

  return v7;
}

void sub_21D6E88AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE606E0, &qword_21DC24348);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  sub_21DBF942C();
  swift_allocObject();
  sub_21DBF941C();
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_21DBF93EC();

  sub_21DBFA8BC();
  sub_21D0CE468();
  v8 = sub_21DBFB12C();
  sub_21DBF93FC();
}

uint64_t sub_21D6E8A60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE606E8, &qword_21DC24350);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE606F0, &qword_21DC24358);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  v9 = sub_21DBF945C();
  (*(*(v9 - 8) + 16))(v4, a1, v9);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE606E0, &qword_21DC24348);
  sub_21DBFA8DC();
  sub_21D0CF7E0(v4, &qword_27CE606E8, &qword_21DC24350);
  return (*(v6 + 8))(v8, v5);
}

uint64_t TTRTemplateSharingPresenterCapability.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21D6E8C74()
{
  v1 = sub_21DBF943C();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_21DBF945C();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE606B0, &qword_21DC24328);
  v0[10] = v3;
  v0[11] = *(v3 - 8);
  v0[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE606B8, &qword_21DC24330);
  v0[13] = v4;
  v0[14] = *(v4 - 8);
  v0[15] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE606C0, &qword_21DC24338);
  v0[16] = v5;
  v0[17] = *(v5 - 8);
  v0[18] = swift_task_alloc();
  v0[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE606C8, &qword_21DC24340);
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v0[23] = sub_21DBFA84C();
  v0[24] = sub_21DBFA83C();
  v7 = sub_21DBFA7CC();
  v0[25] = v7;
  v0[26] = v6;

  return MEMORY[0x2822009F8](sub_21D6E8F70, v7, v6);
}

uint64_t sub_21D6E8F70()
{
  if (qword_27CE56C18 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  v0[27] = __swift_project_value_buffer(v1, qword_27CE60690);
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAE9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21D0C9000, v2, v3, "TTRTemplateSharing: checking network reachability", v4, 2u);
    MEMORY[0x223D46520](v4, -1, -1);
  }

  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];

  (*(v6 + 104))(v5, *MEMORY[0x277D85778], v7);
  sub_21DBFA94C();

  return MEMORY[0x2822009F8](sub_21D6E90F8, 0, 0);
}

uint64_t sub_21D6E90F8()
{
  (*(v0[17] + 16))(v0[18], v0[19], v0[16]);
  sub_21D0D0F1C(&qword_27CE606D0, &qword_27CE606C0, &qword_21DC24338, MEMORY[0x277D857C0]);
  sub_21DBFA9BC();
  v1 = sub_21D0D0F1C(&qword_27CE606D8, &qword_27CE606B0, &qword_21DC24328, MEMORY[0x277D857B0]);
  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_21D6E923C;
  v3 = v0[21];
  v4 = v0[10];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_21D6E923C()
{
  v2 = *v1;

  v3 = v2[12];
  v4 = v2[11];
  v5 = v2[10];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = nullsub_1;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_21D6E93D4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21D6E93D4()
{
  v1 = v0[21];
  v2 = v0[5];
  v3 = v0[6];
  v4 = *(v3 + 48);
  v0[29] = v4;
  v0[30] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    v5 = v0[22];
    (*(v0[17] + 8))(v0[19], v0[16]);
    (*(v3 + 56))(v5, 1, 1, v2);
    v6 = v0[25];
    v7 = v0[26];
    v8 = sub_21D6E961C;
  }

  else
  {
    (*(v3 + 32))(v0[22], v1, v2);
    v0[31] = sub_21DBFA83C();
    v9 = sub_21DBFA7CC();
    v11 = v10;
    v8 = sub_21D6E9510;
    v6 = v9;
    v7 = v11;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_21D6E9510()
{

  return MEMORY[0x2822009F8](sub_21D6E9578, 0, 0);
}

uint64_t sub_21D6E9578()
{
  v1 = v0[22];
  v2 = v0[5];
  v3 = v0[6];
  (*(v0[17] + 8))(v0[19], v0[16]);
  (*(v3 + 56))(v1, 0, 1, v2);
  v4 = v0[25];
  v5 = v0[26];

  return MEMORY[0x2822009F8](sub_21D6E961C, v4, v5);
}

uint64_t sub_21D6E961C()
{
  v39 = v0;
  v1 = v0[29];
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[5];

  sub_21D6EA07C(v2, v3);
  if (v1(v3, 1, v4) == 1)
  {
    v5 = v0[20];
    sub_21D0CF7E0(v0[22], &qword_27CE606C8, &qword_21DC24340);
    sub_21D0CF7E0(v5, &qword_27CE606C8, &qword_21DC24340);
LABEL_3:
    v36 = 0;
    goto LABEL_9;
  }

  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[5];
  v9 = v0[6];
  (*(v9 + 32))(v6, v0[20], v8);
  v10 = *(v9 + 16);
  v10(v7, v6, v8);
  v11 = sub_21DBF84AC();
  v12 = sub_21DBFAE9C();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[8];
  if (v13)
  {
    v37 = v12;
    v15 = v0[6];
    v16 = v0[7];
    v17 = v0[5];
    v18 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38 = v35;
    *v18 = 136315138;
    v10(v16, v14, v17);
    v19 = sub_21DBFA1AC();
    v21 = v20;
    v22 = *(v15 + 8);
    v22(v14, v17);
    v23 = sub_21D0CDFB4(v19, v21, &v38);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_21D0C9000, v11, v37, "TTRTemplateSharing: got reachability result {path: %s}", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x223D46520](v35, -1, -1);
    MEMORY[0x223D46520](v18, -1, -1);
  }

  else
  {
    v24 = v0[5];
    v25 = v0[6];

    v22 = *(v25 + 8);
    v22(v14, v24);
  }

  v26 = v0[22];
  v27 = v0[9];
  v29 = v0[4];
  v28 = v0[5];
  v30 = v0[2];
  v31 = v0[3];
  sub_21DBF944C();
  v22(v27, v28);
  sub_21D0CF7E0(v26, &qword_27CE606C8, &qword_21DC24340);
  v32 = (*(v31 + 88))(v29, v30);
  if (v32 != *MEMORY[0x277CD8F78])
  {
    if (v32 == *MEMORY[0x277CD8F68])
    {
      goto LABEL_3;
    }

    if (v32 != *MEMORY[0x277CD8F70])
    {
      (*(v0[3] + 8))(v0[4], v0[2]);
    }
  }

  v36 = 1;
LABEL_9:

  v33 = v0[1];

  return v33(v36);
}

uint64_t sub_21D6E99D4()
{
  v0[2] = sub_21DBFA84C();
  v0[3] = sub_21DBFA83C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21D6E9A78;

  return sub_21D6E8C74();
}

uint64_t sub_21D6E9A78(char a1)
{
  *(*v1 + 40) = a1;

  v3 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D6E9BBC, v3, v2);
}

uint64_t sub_21D6E9BBC()
{

  if (qword_27CE56C18 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  __swift_project_value_buffer(v1, qword_27CE60690);
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAEDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 40);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_21D0C9000, v2, v3, "TTRTemplateSharing: network is reachable: %{BOOL}d", v5, 8u);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  v6 = *(v0 + 40);

  v7 = *(v0 + 8);

  return v7((v6 & 1) == 0);
}

uint64_t sub_21D6E9CF4(uint64_t a1)
{
  v2 = type metadata accessor for TTRTemplatesListViewModel.Template(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21D6E9D54()
{
  result = qword_27CE606A8;
  if (!qword_27CE606A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRTemplateSharingPresenterCapability.ActionPriorToCommit, &type metadata for TTRTemplateSharingPresenterCapability.ActionPriorToCommit, v0, v1);
    atomic_store(result, &qword_27CE606A8);
  }

  return result;
}

void *destroy for TTRTemplateSharingPresenterCapability.IncludePropertyAlert(void *result)
{
  if (*result >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

__n128 sub_21D6E9E24(__n128 *a1, __n128 *a2)
{
  if (a2->n128_u64[0] < 0xFFFFFFFF)
  {
    result = *a2;
    *a1 = *a2;
  }

  else
  {
    v2 = a2->n128_u64[1];
    a1->n128_u64[0] = a2->n128_u64[0];
    a1->n128_u64[1] = v2;
  }

  return result;
}

__n128 assignWithCopy for TTRTemplateSharingPresenterCapability.IncludePropertyAlert(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    if (v2 < 0xFFFFFFFF)
    {
      result = *a2;
      *a1 = *a2;
    }

    else
    {
      v5 = a2[1];
      *a1 = v2;
      *(a1 + 8) = v5;
    }
  }

  else if (v2 < 0xFFFFFFFF)
  {

    result = *a2;
    *a1 = *a2;
  }

  else
  {
    v3 = a2[1];
    *a1 = v2;
    *(a1 + 8) = v3;
  }

  return result;
}

_OWORD *assignWithTake for TTRTemplateSharingPresenterCapability.IncludePropertyAlert(_OWORD *result, uint64_t a2)
{
  if (*result < 0xFFFFFFFFuLL)
  {
    *result = *a2;
  }

  else
  {
    if (*a2 < 0xFFFFFFFFuLL)
    {
      v3 = result;

      *v3 = *a2;
    }

    else
    {
      v2 = *(a2 + 8);
      *result = *a2;
      *(result + 1) = v2;
      v3 = result;
    }

    return v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRTemplateSharingPresenterCapability.IncludePropertyAlert(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRTemplateSharingPresenterCapability.IncludePropertyAlert(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_21D6EA04C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_21D6EA07C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE606C8, &qword_21DC24340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D6EA0EC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE606E0, &qword_21DC24348);

  return sub_21D6E8A60(a1);
}

uint64_t sub_21D6EA170()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE606F8);
  v1 = __swift_project_value_buffer(v0, qword_27CE606F8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D6EA288(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21D6EA2F4(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_delegate;
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

uint64_t TTRShowFlaggedDataModelSource.__allocating_init(store:countCompleted:sortingStyle:canChangeSortingStyle:fetchSubtasks:)(void *a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_dataViewMonitor) = 0;
  *(v9 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_store) = a1;
  *(v9 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_countCompleted) = a2;
  v10 = OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_fetchSubtasks;
  v11 = sub_21DBF714C();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v9 + v10, a5, v11);
  v13 = qword_280D1AA10;
  v14 = a1;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v16 = swift_allocObject();
  v17 = sub_21D193548(2, 2, v15, v16);
  *(v9 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_showCompletedContextInstance) = v17;
  type metadata accessor for TTRRemindersListDataModelSourceTipKitContext();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 18) = 0;
  *(v9 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_tipKitContextInstance) = v18;
  v19 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v20 = sub_21DBF70DC();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v9 + v19, a3, v20);
  *(v9 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v9 + 16) = a4 & 1;
  swift_beginAccess();
  v17[3] = &protocol witness table for TTRShowFlaggedDataModelSource;
  swift_unknownObjectWeakAssign();
  v25 = 10;

  sub_21D6EB7D8(&v25, v22);

  (*(v12 + 8))(a5, v11);
  (*(v21 + 8))(a3, v20);
  return v9;
}

uint64_t TTRShowFlaggedDataModelSource.init(store:countCompleted:sortingStyle:canChangeSortingStyle:fetchSubtasks:)(void *a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_dataViewMonitor) = 0;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_store) = a1;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_countCompleted) = a2;
  v10 = OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_fetchSubtasks;
  v11 = sub_21DBF714C();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v5 + v10, a5, v11);
  v13 = qword_280D1AA10;
  v14 = a1;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v16 = swift_allocObject();
  v17 = sub_21D193548(2, 2, v15, v16);
  *(v5 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_showCompletedContextInstance) = v17;
  type metadata accessor for TTRRemindersListDataModelSourceTipKitContext();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 18) = 0;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_tipKitContextInstance) = v18;
  v19 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v20 = sub_21DBF70DC();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v5 + v19, a3, v20);
  *(v5 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v5 + 16) = a4 & 1;
  swift_beginAccess();
  v17[3] = &protocol witness table for TTRShowFlaggedDataModelSource;
  swift_unknownObjectWeakAssign();
  v25 = 10;

  sub_21D6EB7D8(&v25, v22);

  (*(v12 + 8))(a5, v11);
  (*(v21 + 8))(a3, v20);
  return v5;
}

id sub_21D6EA98C@<X0>(uint64_t *a1@<X8>)
{
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_store);
  v3 = type metadata accessor for TTRTipKitDataModelSourceBase();
  v4 = swift_allocObject();
  *(v4 + 16) = v6;
  a1[3] = v3;
  a1[4] = &protocol witness table for TTRTipKitDataModelSourceBase;
  *a1 = v4;

  return v6;
}

uint64_t sub_21D6EAA04@<X0>(uint64_t *a1@<X8>)
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
  v15 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_showCompletedContextInstance);
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
  v22 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_store);
  v23 = v36;
  (*(v6 + 16))(v36, v14, v5);
  v24 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v25 = v1 + v24;
  v26 = v38;
  (*(v3 + 16))(v38, v25, v2);
  v27 = type metadata accessor for TTRShowFlaggedPrintingDataModelSource(0);
  v28 = swift_allocObject();
  *(v28 + 16) = v22;
  (*(v6 + 32))(v28 + OBJC_IVAR____TtC15RemindersUICore37TTRShowFlaggedPrintingDataModelSource_showCompleted, v23, v5);
  (*(v3 + 32))(v28 + OBJC_IVAR____TtC15RemindersUICore37TTRShowFlaggedPrintingDataModelSource_sortingStyle, v26, v2);
  v29 = v37;
  v37[3] = v27;
  v29[4] = &protocol witness table for TTRShowFlaggedPrintingDataModelSource;
  *v29 = v28;
  v30 = *(v6 + 8);
  v31 = v22;
  return v30(v14, v5);
}

uint64_t TTRShowFlaggedPrintingDataModelSource.__allocating_init(store:showCompleted:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = OBJC_IVAR____TtC15RemindersUICore37TTRShowFlaggedPrintingDataModelSource_showCompleted;
  v8 = sub_21DBF71BC();
  (*(*(v8 - 8) + 32))(v6 + v7, a2, v8);
  v9 = OBJC_IVAR____TtC15RemindersUICore37TTRShowFlaggedPrintingDataModelSource_sortingStyle;
  v10 = sub_21DBF70DC();
  (*(*(v10 - 8) + 32))(v6 + v9, a3, v10);
  return v6;
}

uint64_t sub_21D6EAE50@<X0>(_OWORD *a1@<X8>)
{
  v82 = a1;
  v68 = sub_21DBF773C();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60710, &qword_21DC24360);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = &v60 - v4;
  v69 = sub_21DBFB1AC();
  v64 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v70 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v65 = &v60 - v7;
  v75 = sub_21DBF706C();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v63 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v71 = &v60 - v10;
  v11 = sub_21DBF734C();
  v76 = *(v11 - 8);
  v77 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DBF70DC();
  v83 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60718, &qword_21DC24368);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v60 - v18;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C358, &unk_21DC15E80);
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v74 = &v60 - v20;
  v81 = sub_21DBF71BC();
  v21 = *(v81 - 8);
  v22 = MEMORY[0x28223BE20](v81);
  v24 = (&v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_21D8526E8(v24, v22);
  v26 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v27 = *(v83 + 16);
  v28 = v1 + v26;
  v29 = v76;
  v30 = v77;
  v79 = v14;
  v27(v16, v28, v14);
  (*(v29 + 104))(v13, *MEMORY[0x277D45500], v30);
  sub_21DBF70EC();
  v60 = v25;
  v61 = v24;
  v62 = v21;
  v33 = v29;
  v34 = v70;
  v35 = v72;
  (*(v33 + 8))(v13, v30);
  (*(v83 + 8))(v16, v79);
  v36 = v78;
  v37 = v80;
  (*(v78 + 56))(v19, 0, 1, v80);
  v38 = v74;
  (*(v36 + 32))(v74, v19, v37);
  v39 = v71;
  sub_21DBF76DC();
  v40 = sub_21DBF703C();
  v41 = *(v73 + 8);
  v41(v39, v75);
  if (v40)
  {
    v42 = *MEMORY[0x277D44BA0];
    v43 = v35;
    sub_21DBFB1DC();
    v44 = sub_21DBFB1EC();
    v45 = *(v44 - 8);
    if ((*(v45 + 48))(v43, 1, v44) != 1)
    {
      sub_21DBFB1CC();
      (*(v45 + 8))(v43, v44);
      v46 = v64;
      v47 = v65;
      (*(v64 + 32))(v65, v34, v69);
      v48 = v63;
      v49 = sub_21DBF76DC();
      v50 = v66;
      MEMORY[0x223D3F810](v49);
      v41(v48, v75);
      v83 = sub_21DBF718C();
      (*(v67 + 8))(v50, v68);
      v51 = v40;
      v52 = sub_21DBFB18C();
      v53 = v37;
      v54 = sub_21DBFB19C();
      v55 = sub_21DBFB17C();
      v57 = v56;

      (*(v46 + 8))(v47, v69);
      (*(v36 + 8))(v74, v53);
      result = (*(v62 + 8))(v61, v81);
      v58 = v82;
      v59 = v60;
      *v82 = v83;
      *(v58 + 1) = v59;
      *(v58 + 2) = v40;
      *(v58 + 24) = 0;
      *(v58 + 4) = v52;
      *(v58 + 20) = v54;
      *(v58 + 6) = v55;
      *(v58 + 7) = v57;
      return result;
    }

    (*(v36 + 8))(v38, v37);
    (*(v62 + 8))(v61, v81);
    result = sub_21D0CF7E0(v43, &qword_27CE60710, &qword_21DC24360);
  }

  else
  {

    (*(v36 + 8))(v38, v37);
    result = (*(v62 + 8))(v61, v81);
  }

  v32 = v82;
  v82[2] = 0u;
  v32[3] = 0u;
  *v32 = 0u;
  v32[1] = 0u;
  return result;
}

uint64_t sub_21D6EB7D8(unsigned __int8 *a1, __n128 a2)
{
  v3 = v2;
  v80 = sub_21DBF714C();
  v73 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v67[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v83 = sub_21DBF70DC();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v78 = &v67[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = sub_21DBF71BC();
  v75 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = &v67[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C348, &unk_21DC15E70);
  v81 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v77 = &v67[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v67[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C360, &unk_21DC19680);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v67[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378, &qword_21DC19530);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v67[-v17];
  v19 = sub_21DBF773C();
  MEMORY[0x28223BE20](v19 - 8);
  v20 = sub_21DBF706C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v89 = &v67[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v84 = *a1;
  v23 = OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v86 = v23;
  v24 = *(v3 + v23);
  v85 = v21;
  if (v24)
  {
    v25 = v3 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v26 = v20;
      v27 = v12;
      v28 = *(v25 + 8);
      ObjectType = swift_getObjectType();
      v90[0] = v84;
      v30 = *(v28 + 8);
      v12 = v27;
      v20 = v26;
      v21 = v85;
      (*(v30 + 16))(v90, ObjectType);
      swift_unknownObjectRelease();
    }
  }

  v31 = sub_21DBF72DC();
  (*(*(v31 - 8) + 56))(v18, 1, 1, v31);
  MEMORY[0x223D3FED0](MEMORY[0x277D84F90], v18, 2, MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
  sub_21DBF704C();
  v32 = *(v3 + v86);
  if (!v32)
  {
    goto LABEL_7;
  }

  v33 = *(*v32 + 104);
  swift_beginAccess();
  sub_21D0D3954(v32 + v33, v15, &qword_27CE5C360, &unk_21DC19680);
  if ((*(v81 + 6))(v15, 1, v8) == 1)
  {
    sub_21D0CF7E0(v15, &qword_27CE5C360, &unk_21DC19680);
LABEL_7:
    v34 = 0;
    goto LABEL_9;
  }

  v34 = *&v15[*(v8 + 48)];
  (*(v21 + 8))(v15, v20);
LABEL_9:
  v76 = v8;
  v35 = *(v8 + 48);
  v36 = *(v21 + 16);
  v74 = v20;
  v71 = v21 + 16;
  v70 = v36;
  v36(v12, v89, v20);
  v81 = v12;
  *&v12[v35] = v34;
  v37 = v3 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v47 = v34;
    v45 = v88;
    v46 = v75;
    goto LABEL_13;
  }

  v38 = *(v37 + 8);
  v39 = swift_getObjectType();
  v40 = *(v38 + 8);
  v41 = *(v40 + 8);
  v42 = v34;
  v43 = v41(v39, v40);
  LOBYTE(v39) = v44;
  swift_unknownObjectRelease();
  v45 = v88;
  v46 = v75;
  if (v39)
  {
LABEL_13:
    v43 = 30;
  }

  v75 = *(v3 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_store);
  v48 = *(v3 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_showCompletedContextInstance);
  v49 = *(v48 + 40) == 1;
  v50 = v87;
  v72 = v34;
  v69 = v43;
  if (v49)
  {
    v46[13](v87, *MEMORY[0x277D45468], v45);
  }

  else
  {
    swift_beginAccess();
    *v50 = *(v48 + 48);
    (v46)[13](v50, *MEMORY[0x277D45480], v45);
    sub_21DBF8E0C();
  }

  v68 = *(v3 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_countCompleted);
  v51 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v52 = v82;
  v53 = v78;
  v54 = v83;
  (*(v82 + 16))(v78, v3 + v51, v83);
  v55 = v73;
  v56 = v79;
  v57 = v80;
  (*(v73 + 16))(v79, v3 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_fetchSubtasks, v80);
  type metadata accessor for TTRShowFlaggedMonitorableDataView(0);
  v58 = swift_allocObject();
  v59 = v75;
  *(v58 + 16) = v75;
  (v46)[4](v58 + OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_showCompleted, v87, v88);
  *(v58 + OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_countCompleted) = v68;
  (*(v52 + 32))(v58 + OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_sortingStyle, v53, v54);
  *(v58 + OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_remindersToPrefetchCount) = v69;
  (*(v55 + 32))(v58 + OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_fetchSubtasks, v56, v57);
  v60 = *(v76 + 48);
  v61 = v77;
  v62 = v81;
  v63 = v74;
  v70(v77, v81, v74);
  *(v61 + v60) = v72;
  v64 = v86;
  swift_beginAccess();
  v65 = v59;
  sub_21D4FD81C((v3 + v64), v61, v58, v3, v84);
  sub_21D0CF7E0(v61, &qword_27CE5C348, &unk_21DC15E70);
  swift_endAccess();

  sub_21D0CF7E0(v62, &qword_27CE5C348, &unk_21DC15E70);
  return (*(v85 + 8))(v89, v63);
}

uint64_t TTRShowFlaggedMonitorableDataView.__allocating_init(store:showCompleted:countCompleted:sortingStyle:remindersToPrefetchCount:fetchSubtasks:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_showCompleted;
  v14 = sub_21DBF71BC();
  (*(*(v14 - 8) + 32))(v12 + v13, a2, v14);
  *(v12 + OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_countCompleted) = a3;
  v15 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_sortingStyle;
  v16 = sub_21DBF70DC();
  (*(*(v16 - 8) + 32))(v12 + v15, a4, v16);
  *(v12 + OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_remindersToPrefetchCount) = a5;
  v17 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_fetchSubtasks;
  v18 = sub_21DBF714C();
  (*(*(v18 - 8) + 32))(v12 + v17, a6, v18);
  return v12;
}

uint64_t sub_21D6EC354()
{
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_delegate);

  v1 = OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_fetchSubtasks;
  v2 = sub_21DBF714C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t TTRShowFlaggedDataModelSource.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_delegate);

  v3 = OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_fetchSubtasks;
  v4 = sub_21DBF714C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t TTRShowFlaggedDataModelSource.__deallocating_deinit()
{
  TTRShowFlaggedDataModelSource.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall TTRShowFlaggedDataModelSource.showCompletedAllowlistChanged(isCleared:)(Swift::Bool isCleared)
{
  if (isCleared)
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  v3 = v2;
  sub_21D6EB7D8(&v3, v1);
}

uint64_t sub_21D6EC5F8(char a1, __n128 a2)
{
  if (a1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  v4 = v2;
  return sub_21D6EB7D8(&v4, a2);
}

uint64_t TTRShowFlaggedDataModelSource.monitorWillFetch(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_delegate;
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

uint64_t TTRShowFlaggedDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v67 = a4;
  v8 = sub_21DBF773C();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C348, &unk_21DC15E70);
  MEMORY[0x28223BE20](v11);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  v17 = sub_21DBF706C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a2, v17);
  v19 = *(v11 + 48);
  v68 = v16;
  *&v16[v19] = a3;
  v20 = OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v66 = v4;
  v21 = *(v4 + v20);
  if (!v21)
  {
    v30 = a3;
    return sub_21D0CF7E0(v68, &qword_27CE5C348, &unk_21DC15E70);
  }

  v22 = a3;
  if (v21 != a1)
  {
    return sub_21D0CF7E0(v68, &qword_27CE5C348, &unk_21DC15E70);
  }

  v23 = v22;
  v24 = sub_21DBF6E3C();
  sub_21D4F5F28(v24);
  v26 = v25;

  if (a3)
  {
    v27 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    v28 = v66;
    swift_beginAccess();
    if (*(v28 + v27))
    {
      v29 = v23;

      sub_21D4F9F64(v29, v26);
    }

    else
    {
      v63 = v26;
      v62 = *(v28 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_store);
      sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
      v31 = v27;
      v32 = v23;
      v33 = sub_21DBFB12C();
      v34 = swift_allocObject();
      *(v34 + 16) = 0;
      v35 = sub_21D87E81C(v62, sub_21D1947D8, v34, v32, v33);
      *(v28 + v31) = v35;

      swift_beginAccess();
      v35[3] = &protocol witness table for TTRShowFlaggedDataModelSource;
      swift_unknownObjectWeakAssign();
    }
  }

  else
  {
  }

  sub_21D0D3954(v68, v13, &qword_27CE5C348, &unk_21DC15E70);

  MEMORY[0x223D3F810]();
  (*(v18 + 8))(v13, v17);
  v36 = sub_21DBF716C();
  (*(v64 + 8))(v10, v65);
  if (!(v36 >> 62))
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
      goto LABEL_11;
    }

LABEL_29:

    v47 = v66;
LABEL_30:
    v69 = 0;
    v70 = 0xE000000000000000;
    sub_21DBFBEEC();
    v69 = *v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAF8, &unk_21DC1A880);
    v54 = sub_21DBFA1AC();
    v56 = v55;

    v69 = v54;
    v70 = v56;
    MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
    v57 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v57);
    v58 = v67;
    v59 = v68;
    *(&v61 - 4) = v47;
    *(&v61 - 3) = v59;
    *(&v61 - 2) = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
    sub_21DBF625C();

    return sub_21D0CF7E0(v68, &qword_27CE5C348, &unk_21DC15E70);
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_29;
  }

  v37 = sub_21DBFBD7C();
  if (!v37)
  {

    v39 = MEMORY[0x277D84F90];
LABEL_20:
    v47 = v66;
    if (*(v39 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8, &qword_21DC09560);
      v48 = sub_21DBFC40C();
    }

    else
    {
      v48 = MEMORY[0x277D84F98];
    }

    v71[0] = v48;
    v49 = sub_21DBF8E0C();
    sub_21D1931C0(v49, 1, v71);

    v50 = v71[0];
    v51 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    swift_beginAccess();
    if (*(v47 + v51))
    {

      sub_21D188810(v50);
      v53 = v52;

      TTRBatchFetchManager<A>.override(objects:)(v53);
    }

    else
    {
    }

    goto LABEL_30;
  }

LABEL_11:
  v71[0] = MEMORY[0x277D84F90];
  sub_21D18E6B8(0, v37 & ~(v37 >> 63), 0);
  if ((v37 & 0x8000000000000000) == 0)
  {
    v38 = 0;
    v39 = v71[0];
    do
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x223D44740](v38, v36);
      }

      else
      {
        v40 = *(v36 + 8 * v38 + 32);
      }

      v41 = v40;
      v42 = [v40 objectID];
      v71[0] = v39;
      v44 = *(v39 + 16);
      v43 = *(v39 + 24);
      if (v44 >= v43 >> 1)
      {
        v46 = v42;
        sub_21D18E6B8((v43 > 1), v44 + 1, 1);
        v42 = v46;
        v39 = v71[0];
      }

      ++v38;
      *(v39 + 16) = v44 + 1;
      v45 = v39 + 16 * v44;
      *(v45 + 32) = v42;
      *(v45 + 40) = v41;
    }

    while (v37 != v38);

    goto LABEL_20;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_21D6ECDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v7 = a1 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_delegate;
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

uint64_t sub_21D6ECEB8()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_delegate;
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

uint64_t sub_21D6ECF34(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C348, &unk_21DC15E70) + 48));

  return TTRShowFlaggedDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(a1, a2, v6, a3);
}

Swift::Void __swiftcall TTRShowFlaggedDataModelSource.updated(objectIDs:)(Swift::OpaquePointer objectIDs)
{
  sub_21DBFBEEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAF8, &unk_21DC1A880);
  sub_21DBFA1AC();

  MEMORY[0x223D42AA0](0xD000000000000013, 0x800000021DC44650);
  sub_21DBFAEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
  sub_21DBF625C();
}

uint64_t sub_21D6ED0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = a1 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_delegate;
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

void TTRShowFlaggedDataModelSource.update(error:)(void *a1)
{
  if (qword_27CE56C20 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE606F8);
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
    *(v5 + 14) = sub_21D0CDFB4(0x64656767616C66, 0xE700000000000000, &v11);
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowFlaggedDataModelSource update error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t TTRShowFlaggedPrintingDataModelSource.init(store:showCompleted:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  *(v4 + 16) = a1;
  v7 = OBJC_IVAR____TtC15RemindersUICore37TTRShowFlaggedPrintingDataModelSource_showCompleted;
  v8 = sub_21DBF71BC();
  (*(*(v8 - 8) + 32))(v4 + v7, a2, v8);
  v9 = OBJC_IVAR____TtC15RemindersUICore37TTRShowFlaggedPrintingDataModelSource_sortingStyle;
  v10 = sub_21DBF70DC();
  (*(*(v10 - 8) + 32))(v4 + v9, a3, v10);
  return v4;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TTRShowFlaggedPrintingDataModelSource.fetchListTree()(RemindersUICore::TTRRemindersPrintingListTree *__return_ptr retstr)
{
  v45 = retstr;
  v1 = sub_21DBF773C();
  v41 = *(v1 - 8);
  v42 = v1;
  MEMORY[0x28223BE20](v1);
  v40 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21DBF706C();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF734C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C358, &unk_21DC15E80);
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x28223BE20](v10);
  v60 = &v37 - v11;
  if (qword_27CE56C20 != -1)
  {
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_27CE606F8);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAEDC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_21D0C9000, v13, v14, "PrintingDataModelSource: fetch Flagged tree", v15, 2u);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  (*(v7 + 104))(v9, *MEMORY[0x277D45500], v6);
  v16 = v46;
  sub_21DBF70EC();
  if (v16)
  {
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    sub_21D6EEF24(v51);
    v17 = v44;
    v18 = sub_21DBF76DC();
    v19 = v40;
    MEMORY[0x223D3F810](v18);
    (*(v38 + 8))(v5, v39);
    v20 = sub_21DBF718C();
    (*(v41 + 8))(v19, v42);
    v57 = v51[4];
    v58 = v51[5];
    *v59 = v52[0];
    *&v59[10] = *(v52 + 10);
    v53 = v51[0];
    v54 = v51[1];
    v55 = v51[2];
    v56 = v51[3];
    v21 = *MEMORY[0x277D44BA0];
    v22 = REMSmartListType.title.getter(*MEMORY[0x277D44BA0]);
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }

    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0xE000000000000000;
    }

    v26 = REMSmartListType.color.getter(v21);
    if (!v26)
    {
      if (qword_280D1BAC0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v47 = xmmword_280D1BAC8;
      v48 = xmmword_280D1BAD8;
      v49 = xmmword_280D1BAE8;
      v50 = byte_280D1BAF8;
      v26 = TTRListColors.Color.nativeColor.getter();
    }

    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589D0, &unk_21DC09C30);
    v28 = swift_allocObject();
    v29 = v57;
    v30 = *v59;
    v31 = *&v59[16];
    *(v28 + 112) = v58;
    *(v28 + 128) = v30;
    *(v28 + 144) = v31;
    v32 = v53;
    v33 = v54;
    *(v28 + 16) = xmmword_21DC08D00;
    *(v28 + 32) = v32;
    v34 = v55;
    v35 = v56;
    *(v28 + 48) = v33;
    *(v28 + 64) = v34;
    *(v28 + 80) = v35;
    *(v28 + 96) = v29;
    *(v28 + 160) = v20;
    (*(v43 + 8))(v60, v17);
    v36 = v45;
    v45->listName._countAndFlagsBits = v24;
    v36->listName._object = v25;
    v36->listColor.super.isa = v27;
    v36->count.value = 0;
    v36->count.is_nil = 1;
    v36->sections._rawValue = v28;
    v36->reminderColorSource = RemindersUICore_TTRRemindersPrintingViewModel_ReminderColorSource_parentListColor;
  }
}

uint64_t TTRShowFlaggedPrintingDataModelSource.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRShowFlaggedPrintingDataModelSource_showCompleted;
  v2 = sub_21DBF71BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15RemindersUICore37TTRShowFlaggedPrintingDataModelSource_sortingStyle;
  v4 = sub_21DBF70DC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t TTRShowFlaggedPrintingDataModelSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRShowFlaggedPrintingDataModelSource_showCompleted;
  v2 = sub_21DBF71BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15RemindersUICore37TTRShowFlaggedPrintingDataModelSource_sortingStyle;
  v4 = sub_21DBF70DC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t TTRShowFlaggedMonitorableDataView.init(store:showCompleted:countCompleted:sortingStyle:remindersToPrefetchCount:fetchSubtasks:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  *(v7 + 16) = a1;
  v13 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_showCompleted;
  v14 = sub_21DBF71BC();
  (*(*(v14 - 8) + 32))(v7 + v13, a2, v14);
  *(v7 + OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_countCompleted) = a3;
  v15 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_sortingStyle;
  v16 = sub_21DBF70DC();
  (*(*(v16 - 8) + 32))(v7 + v15, a4, v16);
  *(v7 + OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_remindersToPrefetchCount) = a5;
  v17 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_fetchSubtasks;
  v18 = sub_21DBF714C();
  (*(*(v18 - 8) + 32))(v7 + v17, a6, v18);
  return v7;
}

uint64_t TTRShowFlaggedMonitorableDataView.fetchData(from:userInteractive:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v66) = a4;
  v50 = a1;
  v51 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C350, &qword_21DC24370);
  MEMORY[0x28223BE20](v45);
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C358, &unk_21DC15E80);
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x28223BE20](v9);
  v60 = &v45 - v10;
  v11 = sub_21DBF714C();
  v58 = *(v11 - 8);
  v59 = v11;
  MEMORY[0x28223BE20](v11);
  v57 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF71BC();
  v54 = *(v13 - 8);
  v55 = v13;
  MEMORY[0x28223BE20](v13);
  v56 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_21DBF70DC();
  v15 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21DBF738C();
  v61 = *(v18 - 8);
  v62 = v18;
  MEMORY[0x28223BE20](v18);
  v64 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21DBF734C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v52 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = (&v45 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C360, &unk_21DC19680);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v45 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C340, &unk_21DC1A870);
  sub_21DBFC83C();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C348, &unk_21DC15E70);
  if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
  {
    sub_21D0CF7E0(v28, &qword_27CE5C360, &unk_21DC19680);
    if (v66)
    {
      v66 = *(v5 + 16);
LABEL_6:
      v65 = 0;
      v32 = MEMORY[0x277D45508];
      goto LABEL_10;
    }

    v30 = 0;
    goto LABEL_8;
  }

  v30 = *&v28[*(v29 + 48)];
  v31 = sub_21DBF706C();
  (*(*(v31 - 8) + 8))(v28, v31);
  if ((v66 & 1) == 0)
  {
LABEL_8:
    v66 = [*(v5 + 16) nonUserInteractiveStore];
    goto LABEL_9;
  }

  v66 = *(v5 + 16);
  if (!v30)
  {
    goto LABEL_6;
  }

LABEL_9:
  v65 = v30;
  v32 = MEMORY[0x277D454F8];
LABEL_10:
  *v25 = *(v5 + OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_remindersToPrefetchCount);
  (*(v21 + 104))(v25, *v32, v20);
  (*(v15 + 16))(v17, v5 + OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_sortingStyle, v53);
  (*(v54 + 16))(v56, v5 + OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_showCompleted, v55);
  (*(v21 + 16))(v52, v25, v20);
  (*(v58 + 16))(v57, v5 + OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_fetchSubtasks, v59);
  v33 = v64;
  sub_21DBF737C();
  v34 = v60;
  v35 = v66;
  v36 = v65;
  v37 = v63;
  sub_21DBF70FC();
  if (v37)
  {

    (*(v61 + 8))(v33, v62);
    (*(v21 + 8))(v25, v20);
  }

  else
  {
    v63 = v20;
    v66 = v35;
    v38 = v45;
    v39 = *(v45 + 48);
    v41 = v48;
    v40 = v49;
    v65 = v36;
    sub_21DBF76DC();
    *(v40 + v39) = sub_21DBF76BC();
    v42 = v46;
    sub_21D0D3954(v40, v46, &qword_27CE5C350, &qword_21DC24370);
    v20 = *(v42 + *(v38 + 48));
    v43 = sub_21DBF706C();
    (*(*(v43 - 8) + 32))(v50, v42, v43);
    sub_21DBF76CC();

    sub_21D0CF7E0(v40, &qword_27CE5C350, &qword_21DC24370);
    (*(v47 + 8))(v34, v41);
    (*(v61 + 8))(v64, v62);
    (*(v21 + 8))(v25, v63);
  }

  return v20;
}

uint64_t TTRShowFlaggedMonitorableDataView.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_showCompleted;
  v2 = sub_21DBF71BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_sortingStyle;
  v4 = sub_21DBF70DC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_fetchSubtasks;
  v6 = sub_21DBF714C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t TTRShowFlaggedMonitorableDataView.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_showCompleted;
  v2 = sub_21DBF71BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_sortingStyle;
  v4 = sub_21DBF70DC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_fetchSubtasks;
  v6 = sub_21DBF714C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_21D6EE654(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = TTRShowFlaggedMonitorableDataView.fetchData(from:userInteractive:)(a1, a2, a3, a4);
  if (!v4)
  {
    v7 = result;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C348, &unk_21DC15E70);
    *(a1 + *(result + 48)) = v7;
  }

  return result;
}

void sub_21D6EE6D0(uint64_t a1)
{
  v34 = a1;
  v2 = sub_21DBF76AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C340, &unk_21DC1A870);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C360, &unk_21DC19680);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v36 = sub_21DBF706C();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v35 = v1;
  v17 = *(v1 + v16);
  if (v17)
  {
    v32 = v3;
    v33 = v2;
    v18 = *(*v17 + 96);
    swift_beginAccess();
    sub_21D0D3954(v17 + v18, v7, &qword_27CE5C340, &unk_21DC1A870);
    sub_21DBFC83C();
    sub_21D0CF7E0(v7, &qword_27CE5C340, &unk_21DC1A870);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C348, &unk_21DC15E70);
    if ((*(*(v19 - 8) + 48))(v10, 1, v19) == 1)
    {
      sub_21D0CF7E0(v10, &qword_27CE5C360, &unk_21DC19680);
    }

    else
    {

      v20 = *(v38 + 32);
      v21 = v36;
      v20(v12, v10, v36);
      v20(v15, v12, v21);
      v41[0] = v34;
      swift_getKeyPath("xK%_");
      swift_getKeyPath("PK%_");
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAF8, &unk_21DC1A880);
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

void sub_21D6EED24(void *a1)
{
  if (qword_27CE56C20 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE606F8);
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
    *(v5 + 14) = sub_21D0CDFB4(0x64656767616C66, 0xE700000000000000, &v11);
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowFlaggedDataModelSource did hit error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

double sub_21D6EEF24(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 106) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_21D6EEF9C(uint64_t a1, __n128 a2)
{
  result = sub_21DBF714C();
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

uint64_t sub_21D6EF1A0(uint64_t a1, __n128 a2)
{
  result = sub_21DBF71BC();
  if (v3 <= 0x3F)
  {
    result = sub_21DBF70DC();
    if (v4 <= 0x3F)
    {
      result = sub_21DBF714C();
      if (v5 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_21D6EF33C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE60720);
  v1 = __swift_project_value_buffer(v0, qword_27CE60720);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRRemindersListLayout.description.getter()
{
  if (*v0)
  {
    return 0x736E6D756C6F63;
  }

  else
  {
    return 1953720684;
  }
}

RemindersUICore::TTRRemindersListLayout_optional __swiftcall TTRRemindersListLayout.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DBFC45C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21D6EF4A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x736E6D756C6F63;
  }

  else
  {
    v3 = 1953720684;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x736E6D756C6F63;
  }

  else
  {
    v5 = 1953720684;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21DBFC64C();
  }

  return v8 & 1;
}

uint64_t sub_21D6EF548()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

double sub_21D6EF5C4(uint64_t a1)
{
  sub_21DBFA27C();

  return result;
}

uint64_t sub_21D6EF62C(uint64_t a1)
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

void sub_21D6EF6A4(char *a2@<X8>)
{
  v3 = sub_21DBFC45C();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_21D6EF704(uint64_t *a1@<X8>)
{
  v2 = 1953720684;
  if (*v1)
  {
    v2 = 0x736E6D756C6F63;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21D6EF74C()
{
  if (*v0)
  {
    return 0x736E6D756C6F63;
  }

  else
  {
    return 1953720684;
  }
}

uint64_t TTRRemindersListDataModelSourceLayoutContextType.nextSelectableLayout.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(a2 + 8);
  v6 = byte_282EA7888;
  v7 = v5();
  v8 = sub_21D1E1DE0(v6, v7);

  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v24 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_21D18F3F8(0, *(v9 + 16) + 1, 1);
      v9 = v24;
    }

    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_21D18F3F8((v10 > 1), v11 + 1, 1);
      v9 = v24;
    }

    *(v9 + 16) = v11 + 1;
    *(v9 + v11 + 32) = v6;
  }

  v12 = byte_282EA7889;
  v13 = (v5)(a1, a2);
  v14 = sub_21D1E1DE0(v12, v13);

  if (v14)
  {
    v24 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_21D18F3F8(0, *(v9 + 16) + 1, 1);
      v9 = v24;
    }

    v16 = *(v9 + 16);
    v15 = *(v9 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_21D18F3F8((v15 > 1), v16 + 1, 1);
      v9 = v24;
    }

    *(v9 + 16) = v16 + 1;
    *(v9 + v16 + 32) = v12;
  }

  (*(a2 + 16))(&v23, a1, a2);
  result = sub_21D6D8C8C(v23, v9);
  if (v18)
  {

    v19 = 0;
LABEL_19:
    *a3 = v19;
    return result;
  }

  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v20 = *(v9 + 16);
  if (!v20)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v21 = (result + 1) % v20;
  if ((v21 & 0x8000000000000000) == 0)
  {
    v19 = *(v9 + v21 + 32);

    goto LABEL_19;
  }

LABEL_22:
  __break(1u);
  return result;
}

double TTRRemindersListDataModelSourceLayoutContextType.forceListLayoutIfNeeded(forNavigatingTo:persistingPreferencesIfPossible:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = sub_21DBF669C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_21DBF66DC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v12 + 16))(v15, a1, v11, v13);
  if ((*(v12 + 88))(v15, v11) == *MEMORY[0x277D45170])
  {
    (*(v12 + 96))(v15, v11);
    (*(v8 + 32))(v10, v15, v7);
    v16 = (*(v8 + 88))(v10, v7);
    if (v16 == *MEMORY[0x277D45160])
    {
      (*(v8 + 96))(v10, v7);
      if (v10[1])
      {
        (*(a4 + 16))(&v31, a3, a4);
        if (v31)
        {
          v18 = sub_21DBFC64C();

          if ((v18 & 1) == 0)
          {
            if (qword_27CE56C28 != -1)
            {
              swift_once();
            }

            v19 = sub_21DBF84BC();
            __swift_project_value_buffer(v19, qword_27CE60720);
            swift_unknownObjectRetain();
            v20 = sub_21DBF84AC();
            v21 = sub_21DBFAEDC();
            swift_unknownObjectRelease();
            if (os_log_type_enabled(v20, v21))
            {
              v22 = swift_slowAlloc();
              v23 = swift_slowAlloc();
              v29 = v23;
              *v22 = 136315138;
              swift_getObjectType();
              v24 = sub_21DBFC8EC();
              v26 = sub_21D0CDFB4(v24, v25, &v29);

              *(v22 + 4) = v26;
              _os_log_impl(&dword_21D0C9000, v20, v21, "%s: overriding currentLayout to list", v22, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v23);
              MEMORY[0x223D46520](v23, -1, -1);
              MEMORY[0x223D46520](v22, -1, -1);
            }

            v30 = 0;
            (*(a4 + 40))(&v30, v28 & 1, a3, a4);
          }
        }

        else
        {
        }
      }
    }

    else if (v16 != *MEMORY[0x277D45158])
    {
      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    (*(v12 + 8))(v15, v11);
  }

  return result;
}

void (*sub_21D6EFE24(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 56);
  return sub_21D6EFE50;
}

void sub_21D6EFE50(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    v2 = &v3;
  }

  else
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  sub_21D6F0784(v2, 1);
}

uint64_t sub_21D6EFED8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21D6EFF38(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D45BB2C;
}

uint64_t TTRRemindersListDataModelSourceLayoutContext.__allocating_init(supportedLayouts:userDefaults:userDefaultsKey:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = a2[3];
  v8 = a2[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_21D6F1434(a1, v12, a3, v6, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v14;
}

uint64_t TTRRemindersListDataModelSourceLayoutContext.init(supportedLayouts:userDefaults:userDefaultsKey:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2[3];
  v8 = a2[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_21D6F1434(a1, v12, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v14;
}

uint64_t sub_21D6F01F0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 40);
    if (v4)
    {
      (*(v4 + 32))(&v20);
      v5 = v20;
      if (qword_27CE56C28 != -1)
      {
        swift_once();
      }

      v6 = sub_21DBF84BC();
      __swift_project_value_buffer(v6, qword_27CE60720);
      v7 = a2;
      v8 = sub_21DBF84AC();
      v9 = sub_21DBFAEDC();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v22 = v11;
        *v10 = 136315394;
        v12 = [a2 stringRepresentation];
        v13 = sub_21DBFA16C();
        v15 = v14;

        v20 = v13;
        v21 = v15;
        MEMORY[0x223D42AA0](0x74756F79614CLL, 0xE600000000000000);
        v16 = sub_21D0CDFB4(v20, v21, &v22);

        *(v10 + 4) = v16;
        *(v10 + 12) = 2080;
        if (v5)
        {
          v17 = 0x736E6D756C6F63;
        }

        else
        {
          v17 = 1953720684;
        }

        if (v5)
        {
          v18 = 0xE700000000000000;
        }

        else
        {
          v18 = 0xE400000000000000;
        }

        v19 = sub_21D0CDFB4(v17, v18, &v22);

        *(v10 + 14) = v19;
        _os_log_impl(&dword_21D0C9000, v8, v9, "TTRRemindersListDataModelSourceLayoutContext: handling user defaults change {key: %s, newValue: %s}", v10, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D46520](v11, -1, -1);
        MEMORY[0x223D46520](v10, -1, -1);
      }

      LOBYTE(v20) = v5;
      sub_21D6F0784(&v20, 0);
    }
  }

  return result;
}

uint64_t sub_21D6F0464(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 48);
    if (v2)
    {
      (*(v2 + 32))(&v8);
      v3 = v8;
      if (qword_27CE56C28 != -1)
      {
        swift_once();
      }

      v4 = sub_21DBF84BC();
      __swift_project_value_buffer(v4, qword_27CE60720);
      v5 = sub_21DBF84AC();
      v6 = sub_21DBFAEDC();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 67109120;
        *(v7 + 4) = v3;
        _os_log_impl(&dword_21D0C9000, v5, v6, "TTRRemindersListDataModelSourceLayoutContext: handling legacyTableViewBasedRemindersListEnabled change {newValue: %{BOOL}d}", v7, 8u);
        MEMORY[0x223D46520](v7, -1, -1);
      }

      sub_21D6F0C50(v3);
    }
  }

  return result;
}

void sub_21D6F05DC(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 40);
  if (!v3)
  {
LABEL_14:
    LOBYTE(v4) = 0;
    goto LABEL_15;
  }

  (*(v3 + 32))(&v14);
  v4 = v14;
  if ((sub_21D1E1DE0(v14, *(v1 + 16)) & 1) == 0)
  {
    if (qword_27CE56C28 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE60720);
    v6 = sub_21DBF84AC();
    v7 = sub_21DBFAEBC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      if (v4)
      {
        v10 = 0x736E6D756C6F63;
      }

      else
      {
        v10 = 1953720684;
      }

      if (v4)
      {
        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = 0xE400000000000000;
      }

      v12 = sub_21D0CDFB4(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_21D0C9000, v6, v7, "TTRRemindersListDataModelSourceLayoutContext: layout stored in user defaults is unsupported {layout: %s}", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223D46520](v9, -1, -1);
      MEMORY[0x223D46520](v8, -1, -1);
    }

    goto LABEL_14;
  }

LABEL_15:
  *a1 = v4;
}

void sub_21D6F0784(unsigned __int8 *a1, char a2)
{
  v3 = *a1;
  if (*(v2 + 56))
  {
    v4 = 0x736E6D756C6F63;
  }

  else
  {
    v4 = 1953720684;
  }

  if (*(v2 + 56))
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (v3)
  {
    v6 = 0x736E6D756C6F63;
  }

  else
  {
    v6 = 1953720684;
  }

  if (v3)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
  }

  else
  {
    v10 = sub_21DBFC64C();

    if (v10)
    {
      return;
    }

    if (sub_21D1E1DE0(v3, *(v2 + 16)))
    {
      oslog = v2;
      if (qword_27CE56C28 != -1)
      {
        swift_once();
      }

      v11 = sub_21DBF84BC();
      __swift_project_value_buffer(v11, qword_27CE60720);
      v12 = sub_21DBF84AC();
      v13 = sub_21DBFAEAC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v38[0] = v15;
        *v14 = 136315138;
        v16 = sub_21D0CDFB4(v6, v7, v38);

        *(v14 + 4) = v16;
        _os_log_impl(&dword_21D0C9000, v12, v13, "TTRRemindersListDataModelSourceLayoutContext: currentLayout changed {newValue: %s}", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x223D46520](v15, -1, -1);
        MEMORY[0x223D46520](v14, -1, -1);
      }

      v17 = v2;
      *(v2 + 56) = v3;
      if ((a2 & 1) == 0)
      {
        goto LABEL_30;
      }

      v18 = *(v2 + 40);
      if (!v18)
      {
        goto LABEL_30;
      }

      v19 = sub_21DBF84AC();
      v20 = sub_21DBFAEAC();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v38[0] = v22;
        *v21 = 136315138;
        v23 = sub_21D0CDFB4(v6, v7, v38);

        *(v21 + 4) = v23;
        _os_log_impl(&dword_21D0C9000, v19, v20, "TTRRemindersListDataModelSourceLayoutContext: setting user defaults {newValue: %s}", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x223D46520](v22, -1, -1);
        MEMORY[0x223D46520](v21, -1, -1);
      }

      v24 = *(v18 + 88);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
      }

      else
      {
        *(v18 + 88) = v26;
        LOBYTE(v38[0]) = v3;
        (*(v18 + 48))(v38);
        v27 = *(v18 + 88);
        v25 = __OFSUB__(v27, 1);
        v28 = v27 - 1;
        if (!v25)
        {
          *(v18 + 88) = v28;

          v17 = oslog;
LABEL_30:
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            isa = v17[4].isa;
            ObjectType = swift_getObjectType();
            (*(isa + 1))(0, ObjectType, isa);
            swift_unknownObjectRelease();
          }

          return;
        }
      }

      __break(1u);
      return;
    }

    if (qword_27CE56C28 != -1)
    {
      swift_once();
    }

    v31 = sub_21DBF84BC();
    __swift_project_value_buffer(v31, qword_27CE60720);
    osloga = sub_21DBF84AC();
    v32 = sub_21DBFAECC();
    if (os_log_type_enabled(osloga, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v38[0] = v34;
      *v33 = 136315138;
      v35 = sub_21D0CDFB4(v6, v7, v38);

      *(v33 + 4) = v35;
      _os_log_impl(&dword_21D0C9000, osloga, v32, "TTRRemindersListDataModelSourceLayoutContext: trying to set an unsupported currentLayout {newValue: %s}", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x223D46520](v34, -1, -1);
      MEMORY[0x223D46520](v33, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_21D6F0C50(uint64_t result)
{
  v2 = *(v1 + 57);
  if (v2 == 2 || ((v2 ^ result) & 1) != 0)
  {
    *(v1 + 57) = result & 1;
    if ((*(v1 + 56) & 1) == 0)
    {
      v3 = v1;
      if (qword_27CE56C28 != -1)
      {
        swift_once();
      }

      v4 = sub_21DBF84BC();
      __swift_project_value_buffer(v4, qword_27CE60720);
      v5 = sub_21DBF84AC();
      v6 = sub_21DBFAEDC();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_21D0C9000, v5, v6, "TTRRemindersListDataModelSourceLayoutContext: refresh due to change in legacyTableViewBasedRemindersListEnabled", v7, 2u);
        MEMORY[0x223D46520](v7, -1, -1);
      }

      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v8 = *(v3 + 32);
        ObjectType = swift_getObjectType();
        (*(v8 + 8))(1, ObjectType, v8);
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t TTRRemindersListDataModelSourceLayoutContext.deinit()
{

  sub_21D157444(v0 + 24);

  return v0;
}

uint64_t TTRRemindersListDataModelSourceLayoutContext.__deallocating_deinit()
{

  sub_21D157444(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t TTRRemindersListDataModelSourceLayoutContext.__allocating_init(listOrSmartList:userDefaults:)(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = sub_21D6F1094(a1, v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v12;
}

uint64_t TTRRemindersListDataModelSourceLayoutContext.__allocating_init(listOrSmartListChangeItem:userDefaults:)(id *a1, void *a2)
{
  v4 = *a1;
  v5 = [*a1 objectID];
  v6 = [v4 accountCapabilities];

  sub_21D0D32E4(a2, v17);
  v7 = v18;
  v8 = v19;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_21D6F126C(v5, v6, v12, v2, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(v17);
  return v14;
}

uint64_t sub_21D6F1094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v23 - v14;
  (*(v9 + 32))(&v23 - v14, v13);
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = [*a1 objectID];
  if (v17)
  {
    v19 = [v16 accountCapabilities];
  }

  else
  {
    v20 = [v16 account];
    v19 = [v20 capabilities];
  }

  (*(v9 + 16))(v11, v15, a4);
  v21 = sub_21D6F126C(v18, v19, v11, a3, a4, a5);
  (*(v9 + 8))(v15, a4);
  return v21;
}

uint64_t sub_21D6F126C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25[3] = a5;
  v25[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a3, a5);
  if ([a2 supportsSections])
  {
    sub_21D1CDCD4(&unk_282EA62C8);
    v13 = v12;
    sub_21D0D32E4(v25, v24);
    v22 = a1;
    v23 = 0;
    type metadata accessor for TTRRemindersListDataModelSourceLayoutContext();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v24, v24[3]);
    v16 = MEMORY[0x28223BE20](v15);
    v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v18, v16);
    v20 = sub_21D6F1434(v13, v18, &v22, v14, a5, a6);

    __swift_destroy_boxed_opaque_existential_0(v24);
    __swift_destroy_boxed_opaque_existential_0(v25);
    return v20;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v25);

    return 0;
  }
}

uint64_t sub_21D6F1434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 32))(v14, v12);
  v15 = *a3;
  v16 = *(a3 + 8);
  *(a4 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 56) = 512;
  *(a4 + 16) = a1;
  if (v16 == 255)
  {
    v19 = 0;
    *(a4 + 40) = 0;
  }

  else
  {
    v26 = v15;
    v27 = v16 & 1;
    v17 = *(a6 + 32);
    v18 = v15;
    *(a4 + 40) = v17(&v26, a5, a6);
    v19 = (*(a6 + 8))(a5, a6);
    sub_21D6F19E4(v15, v16);
  }

  *(a4 + 48) = v19;
  sub_21D6F05DC(&v28 + 1);
  *(a4 + 56) = BYTE1(v28);
  v20 = *(a4 + 48);
  if (v20)
  {
    (*(v20 + 32))(&v28);
    v21 = v28;
  }

  else
  {
    v21 = 2;
  }

  *(a4 + 57) = v21;
  if (v16 != 255)
  {
    if (*(a4 + 40))
    {
      v22 = swift_allocObject();
      swift_weakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = v15;
      *(v23 + 32) = v16 & 1;
      sub_21D6F1A0C(v15, v16);

      sub_21D0D0D40(sub_21D6F1A00, v23, &unk_282ECE138, sub_21D6F1A28);
    }

    sub_21D6F19E4(v15, v16);
  }

  if (*(a4 + 48))
  {
    v24 = swift_allocObject();
    swift_weakInit();

    sub_21D0D0D40(sub_21D6F19DC, v24, &unk_282ECE160, sub_21D6F1A4C);
  }

  (*(v11 + 8))(v14, a5);
  return a4;
}

unint64_t sub_21D6F1760()
{
  result = qword_280D15468;
  if (!qword_280D15468)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListLayout, &type metadata for TTRRemindersListLayout, v0, v1);
    atomic_store(result, &qword_280D15468);
  }

  return result;
}

unint64_t sub_21D6F17B8()
{
  result = qword_27CE60738;
  if (!qword_27CE60738)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE60740, &qword_21DC24640);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27CE60738);
  }

  return result;
}

void sub_21D6F19E4(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

id sub_21D6F1A0C(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

uint64_t TTRTreeStorageDerivedUntouchedTree.__allocating_init(baseTree:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  return v2;
}

uint64_t TTRTreeStorageDerivedUntouchedTree.baseTree.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t TTRTreeStorageDerivedUntouchedTree.numberOfChildren(of:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - v6;
  v8 = *(v3 + 96);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  v9 = (*(*(v3 + 88) + 24))(a1, v4);
  (*(v5 + 8))(v7, v4);
  return v9;
}

uint64_t TTRTreeStorageDerivedUntouchedTree.child(_:of:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - v8;
  v10 = *(v5 + 96);
  swift_beginAccess();
  (*(v7 + 16))(v9, v2 + v10, v6);
  (*(*(v5 + 88) + 32))(a1, a2, v6);
  return (*(v7 + 8))(v9, v6);
}

uint64_t TTRTreeStorageDerivedUntouchedTree.item(withID:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - v6;
  v8 = *(v3 + 96);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  (*(*(v3 + 88) + 40))(a1, v4);
  return (*(v5 + 8))(v7, v4);
}

uint64_t TTRTreeStorageDerivedUntouchedTree.parent(of:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - v6;
  v8 = *(v3 + 96);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  (*(*(v3 + 88) + 48))(a1, v4);
  return (*(v5 + 8))(v7, v4);
}

uint64_t TTRTreeStorageDerivedUntouchedTree.convertFromImmediateUpstream(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for TTRDerivedTreeLocation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v10 = *(v7 - 8);
  (*(v10 + 16))(a2, a1, v7);
  v8 = *(v10 + 56);

  return v8(a2, 0, 1, v7);
}

uint64_t TTRTreeStorageDerivedUntouchedTree.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return swift_deallocClassInstance();
}

void sub_21D6F24DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for TTRDerivedTreeLocation(255, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  sub_21DBFC5CC();
  v9 = *(v8 - 8);
  swift_allocObject();
  v10 = sub_21DBFA60C();
  (*(v9 + 16))(v11, a1, v8);

  sub_21D23C8B4(v10, v8);
}

uint64_t sub_21D6F2610(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for TTRTreeStorageDerivedUntouchedTree<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D6F264C(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for TTRTreeStorageDerivedUntouchedTree<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D6F26A4(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_21D6F277C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v32 = a3;
  v30 = a2;
  v31 = sub_21DBF563C();
  v34 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_21DBF56BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v12 = *(a1 + 8);
  v14 = v12;
  v28 = v13;
  v15 = [v28 uuid];
  sub_21DBF568C();

  if (v12)
  {
    v16 = [v14 uuid];
    sub_21DBF568C();

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v29 = v14;
  (*(v9 + 56))(v7, v17, 1, v8);
  v18 = v31;
  (*(v34 + 16))(v33, v30, v31);
  v19 = sub_21DBF566C();
  v20 = v11;
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_21DBF566C();
    (*(v9 + 8))(v7, v8);
  }

  v22 = objc_allocWithZone(MEMORY[0x277D446F0]);
  v23 = v33;
  v24 = sub_21DBF55BC();
  v25 = [v22 initWithMemberIdentifier:v19 groupIdentifier:v21 isObsolete:0 modifiedOn:v24];

  (*(v34 + 8))(v23, v18);
  result = (*(v9 + 8))(v20, v8);
  *v32 = v25;
  return result;
}

uint64_t TTRRemindersListViewModel.Item.reminderCasesOnly.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D105284(v2, v6, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload >= 2)
    {
LABEL_8:
      sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if ((EnumCaseMultiPayload - 5) < 4)
  {
LABEL_6:
    sub_21D106CD8(v6, type metadata accessor for TTRRemindersListViewModel.Item);
    goto LABEL_7;
  }

  if ((EnumCaseMultiPayload - 9) >= 2)
  {
    goto LABEL_8;
  }

LABEL_7:
  type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D105284(v2, v6, type metadata accessor for TTRRemindersListViewModel.SectionID);
  result = swift_getEnumCaseMultiPayload();
  v8 = 0;
  v9 = 3;
  if (result > 6)
  {
    if (result != 7)
    {
      v8 = *v6;
      if (result == 8)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }
    }
  }

  else if ((result - 2) >= 5)
  {
    if (result)
    {
      v9 = 0;
      v8 = *v6;
    }
  }

  else
  {
    result = sub_21D106CD8(v6, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v8 = 0;
    v9 = 3;
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  return result;
}

uint64_t TTRRemindersListViewModel.Item.baseTreeCasesOnly.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D105284(v2, v6, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      goto LABEL_8;
    }

LABEL_7:
    sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    goto LABEL_8;
  }

  if ((EnumCaseMultiPayload - 5) >= 4)
  {
    if ((EnumCaseMultiPayload - 9) < 2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_21D106CD8(v6, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_8:
  type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TTRRemindersListViewModel.Item.sectionCasesOnly.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D105284(v2, v6, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 8)
  {
    goto LABEL_4;
  }

  if ((EnumCaseMultiPayload - 2) < 7)
  {
    sub_21D106CD8(v6, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_4:
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }

  if (EnumCaseMultiPayload)
  {
    sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v11 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }

  else
  {
    v10 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
    return sub_21D106CD8(v6, type metadata accessor for TTRRemindersListViewModel.Item);
  }
}

uint64_t TTRRemindersListViewModel.Item.sectionsContainerAndSectionCasesOnly.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D105284(v2, v6, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 8)
  {
    if ((EnumCaseMultiPayload - 2) >= 7)
    {
      sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    }

    else
    {
      sub_21D106CD8(v6, type metadata accessor for TTRRemindersListViewModel.Item);
    }
  }

  type metadata accessor for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TTRRemindersListViewModel.Item.isReminderCase.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D105284(v1, v4, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if ((EnumCaseMultiPayload - 5) < 4)
  {
LABEL_6:
    sub_21D106CD8(v4, type metadata accessor for TTRRemindersListViewModel.Item);
    goto LABEL_7;
  }

  if ((EnumCaseMultiPayload - 9) < 2)
  {
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return 0;
  }

LABEL_10:
  sub_21D6F39C4(v4, v7, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  swift_storeEnumTagMultiPayload();
  if (swift_getEnumCaseMultiPayload() < 3)
  {
    sub_21D106CD8(v7, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    return 1;
  }

  return 0;
}

uint64_t TTRRemindersListViewModel.Item.isEligibleForAutoCompleteReminder.getter()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D105284(v0, v3, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if ((EnumCaseMultiPayload - 5) >= 4)
    {
      if ((EnumCaseMultiPayload - 9) >= 2)
      {
        goto LABEL_10;
      }

LABEL_7:
      swift_storeEnumTagMultiPayload();
      return 0;
    }

LABEL_6:
    sub_21D106CD8(v3, type metadata accessor for TTRRemindersListViewModel.Item);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload < 2)
  {
    goto LABEL_6;
  }

LABEL_10:
  sub_21D6F39C4(v3, v6, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  swift_storeEnumTagMultiPayload();
  v9 = swift_getEnumCaseMultiPayload();
  if ((v9 - 1) < 2)
  {
    sub_21D106CD8(v6, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    return 1;
  }

  if (!v9)
  {
    sub_21D106CD8(v6, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
  }

  return 0;
}

uint64_t TTRRemindersListViewModel.Item.iOSListCasesOnly.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D105284(v2, v6, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    }

    else
    {
      sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    }
  }

  else if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListTip);
      type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 5)
    {
      v8 = v6[8];
      v9 = v6[9];
      v10 = v6[10];
      v11 = *(v6 + 2);
      *a1 = *v6;
      *(a1 + 8) = v8;
      *(a1 + 9) = v9;
      *(a1 + 10) = v10;
      *(a1 + 16) = v11;
      type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload == 6)
    {
      sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListViewModel.HashtagsState);
    }

    else
    {
      sub_21D6F39C4(v6, a1, type metadata accessor for TTRTemplatePublicLinkData);
    }
  }

  type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21D6F39C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t TTRRemindersListViewModel.Item.macOSListCasesOnly.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D105284(v2, v6, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if ((EnumCaseMultiPayload - 6) >= 3)
    {
      if ((EnumCaseMultiPayload - 9) >= 2)
      {
        v8 = v6[8];
        v9 = v6[9];
        v10 = v6[10];
        v11 = *(v6 + 2);
        *a1 = *v6;
        *(a1 + 8) = v8;
        *(a1 + 9) = v9;
        *(a1 + 10) = v10;
        *(a1 + 16) = v11;
        type metadata accessor for TTRRemindersListViewModel.Item.MacOSListCasesInItem(0);
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      sub_21D106CD8(v6, type metadata accessor for TTRRemindersListViewModel.Item);
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  }

  else
  {
    sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  }

  type metadata accessor for TTRRemindersListViewModel.Item.MacOSListCasesInItem(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TTRRemindersListViewModel.Item.SectionCasesItem.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D105284(v2, v10, type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem);
  v11 = 1;
  if ((*(v5 + 48))(v10, 1, v4) != 1)
  {
    sub_21D6F39C4(v10, v7, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    sub_21D105284(v7, a1, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21D106CD8(v7, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v11 = 0;
  }

  v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
}

uint64_t sub_21D6F3EBC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D105284(v2, v10, type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem);
  v11 = 1;
  if ((*(v5 + 48))(v10, 1, v4) != 1)
  {
    sub_21D6F39C4(v10, v7, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    sub_21D105284(v7, a1, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21D106CD8(v7, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v11 = 0;
  }

  v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
}

uint64_t TTRRemindersListViewModel.Item.editableCasesOnly.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D105284(v2, v9, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_4;
    }

    if (EnumCaseMultiPayload)
    {
      sub_21D6F39C4(v9, v6, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter(&v15);
      v14 = v15;
      if (v16 > 1u)
      {
        if (v16 == 2)
        {

          sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
          type metadata accessor for TTRRemindersListViewModel.Item.EditableCasesInItem(0);
          return swift_storeEnumTagMultiPayload();
        }
      }

      else
      {
        if (!v16)
        {
          sub_21D106CD8(v6, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
          *a1 = v14;
          type metadata accessor for TTRRemindersListViewModel.Item.EditableCasesInItem(0);
          return swift_storeEnumTagMultiPayload();
        }
      }

      v11 = type metadata accessor for TTRRemindersListViewModel.SectionHeader;
      v12 = v6;
      goto LABEL_8;
    }

LABEL_7:
    v11 = type metadata accessor for TTRRemindersListViewModel.Item;
    v12 = v9;
LABEL_8:
    sub_21D106CD8(v12, v11);
    goto LABEL_9;
  }

  if ((EnumCaseMultiPayload - 5) < 4)
  {
    goto LABEL_7;
  }

  if ((EnumCaseMultiPayload - 9) < 2)
  {
LABEL_9:
    type metadata accessor for TTRRemindersListViewModel.Item.EditableCasesInItem(0);
    return swift_storeEnumTagMultiPayload();
  }

LABEL_4:
  sub_21D6F39C4(v9, a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  type metadata accessor for TTRRemindersListViewModel.Item.EditableCasesInItem(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TTRRemindersListViewModel.Item.boardViewCasesOnly.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D105284(v2, v6, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_4;
    }

    if (EnumCaseMultiPayload)
    {
      sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      goto LABEL_8;
    }

LABEL_7:
    sub_21D106CD8(v6, type metadata accessor for TTRRemindersListViewModel.Item);
    goto LABEL_8;
  }

  if ((EnumCaseMultiPayload - 5) < 4)
  {
    goto LABEL_7;
  }

  if ((EnumCaseMultiPayload - 9) >= 2)
  {
LABEL_4:
    sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  }

LABEL_8:
  type metadata accessor for TTRRemindersListViewModel.Item.BoardViewCasesInItem(0);
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_21D6F456C()
{
  result = qword_27CE60748;
  if (!qword_27CE60748)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE5CD70, &unk_21DC09230);
    v4[0] = sub_21D6F45F0();
    result = swift_getWitnessTable(MEMORY[0x277D84F48], v3, v4);
    atomic_store(result, &qword_27CE60748);
  }

  return result;
}

unint64_t sub_21D6F45F0()
{
  result = qword_27CE60750;
  if (!qword_27CE60750)
  {
    v3 = type metadata accessor for TTRRemindersListViewModel.SectionID(255);
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListViewModel.SectionID, v3, v0, v1);
    atomic_store(result, &qword_27CE60750);
  }

  return result;
}

char *_s19ReminderCasesInItemOwCP(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v18 = *a2;
      *a1 = *a2;
      v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = *(v10 - 8);
      v19 = *(v11 + 48);
      v20 = v18;
      if (v19(&a2[v9], 1, v10))
      {
LABEL_11:
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(&a1[v9], &a2[v9], *(*(v21 - 8) + 64));
LABEL_65:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v25 = swift_getEnumCaseMultiPayload();
      if (v25 > 4)
      {
        if (v25 <= 7)
        {
          if (v25 == 5 || v25 == 6)
          {
            goto LABEL_50;
          }

          goto LABEL_63;
        }

        if (v25 != 8 && v25 != 9)
        {
          goto LABEL_63;
        }

        goto LABEL_49;
      }

      if (v25 > 2)
      {
        goto LABEL_50;
      }

      if (v25 == 1)
      {
        goto LABEL_49;
      }

      if (v25 != 2)
      {
        goto LABEL_63;
      }

      goto LABEL_50;
    case 1:
      v15 = *a2;
      *a1 = *a2;
      v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = *(v10 - 8);
      v16 = *(v11 + 48);
      v17 = v15;
      if (v16(&a2[v9], 1, v10))
      {
        goto LABEL_11;
      }

      v24 = swift_getEnumCaseMultiPayload();
      if (v24 > 4)
      {
        if (v24 <= 7)
        {
          if (v24 == 5 || v24 == 6)
          {
            goto LABEL_50;
          }

          goto LABEL_63;
        }

        if (v24 != 8 && v24 != 9)
        {
          goto LABEL_63;
        }

        goto LABEL_49;
      }

      if (v24 > 2)
      {
        goto LABEL_50;
      }

      if (v24 == 1)
      {
        goto LABEL_49;
      }

      if (v24 != 2)
      {
        goto LABEL_63;
      }

      goto LABEL_50;
    case 0:
      v8 = *a2;
      *a1 = *a2;
      v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = *(v10 - 8);
      v12 = *(v11 + 48);
      v13 = v8;
      if (v12(&a2[v9], 1, v10))
      {
        goto LABEL_11;
      }

      v26 = swift_getEnumCaseMultiPayload();
      if (v26 > 4)
      {
        if (v26 <= 7)
        {
          if (v26 == 5 || v26 == 6)
          {
            goto LABEL_50;
          }

          goto LABEL_63;
        }

        if (v26 != 8 && v26 != 9)
        {
          goto LABEL_63;
        }

LABEL_49:
        v27 = *&a2[v9];
        *&a1[v9] = v27;
        v28 = v27;
        swift_storeEnumTagMultiPayload();
LABEL_64:
        (*(v11 + 56))(&a1[v9], 0, 1, v10);
        goto LABEL_65;
      }

      if (v26 <= 2)
      {
        if (v26 != 1)
        {
          if (v26 == 2)
          {
            goto LABEL_50;
          }

LABEL_63:
          memcpy(&a1[v9], &a2[v9], *(v11 + 64));
          goto LABEL_64;
        }

        goto LABEL_49;
      }

LABEL_50:
      v29 = sub_21DBF563C();
      (*(*(v29 - 8) + 16))(&a1[v9], &a2[v9], v29);
      swift_storeEnumTagMultiPayload();
      goto LABEL_64;
  }

  v22 = *(v6 + 64);

  return memcpy(a1, a2, v22);
}

void _s19ReminderCasesInItemOwxx(id *a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() > 2)
  {
    return;
  }

  v3 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  if ((*(*(v4 - 8) + 48))(a1 + v3, 1, v4))
  {
    return;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload != 5 && EnumCaseMultiPayload != 6)
      {
        return;
      }

      goto LABEL_12;
    }

    if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
    {
      return;
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 2)
    {
LABEL_12:
      v6 = sub_21DBF563C();
      v7 = *(*(v6 - 8) + 8);

      v7(a1 + v3, v6);
      return;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        return;
      }

      goto LABEL_12;
    }
  }

  v8 = *(a1 + v3);
}

void **_s19ReminderCasesInItemOwcp(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v16 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v17 = *(v10 + 48);
      v18 = v16;
      if (v17(a2 + v8, 1, v9))
      {
LABEL_9:
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v8, a2 + v8, *(*(v19 - 8) + 64));
LABEL_63:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v23 = swift_getEnumCaseMultiPayload();
      if (v23 > 4)
      {
        if (v23 <= 7)
        {
          if (v23 == 5 || v23 == 6)
          {
            goto LABEL_48;
          }

          goto LABEL_61;
        }

        if (v23 != 8 && v23 != 9)
        {
          goto LABEL_61;
        }

        goto LABEL_47;
      }

      if (v23 > 2)
      {
        goto LABEL_48;
      }

      if (v23 == 1)
      {
        goto LABEL_47;
      }

      if (v23 != 2)
      {
        goto LABEL_61;
      }

      goto LABEL_48;
    case 1:
      v13 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v14 = *(v10 + 48);
      v15 = v13;
      if (v14(a2 + v8, 1, v9))
      {
        goto LABEL_9;
      }

      v22 = swift_getEnumCaseMultiPayload();
      if (v22 > 4)
      {
        if (v22 <= 7)
        {
          if (v22 == 5 || v22 == 6)
          {
            goto LABEL_48;
          }

          goto LABEL_61;
        }

        if (v22 != 8 && v22 != 9)
        {
          goto LABEL_61;
        }

        goto LABEL_47;
      }

      if (v22 > 2)
      {
        goto LABEL_48;
      }

      if (v22 == 1)
      {
        goto LABEL_47;
      }

      if (v22 != 2)
      {
        goto LABEL_61;
      }

      goto LABEL_48;
    case 0:
      v7 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v11 = *(v10 + 48);
      v12 = v7;
      if (v11(a2 + v8, 1, v9))
      {
        goto LABEL_9;
      }

      v24 = swift_getEnumCaseMultiPayload();
      if (v24 > 4)
      {
        if (v24 <= 7)
        {
          if (v24 == 5 || v24 == 6)
          {
            goto LABEL_48;
          }

          goto LABEL_61;
        }

        if (v24 != 8 && v24 != 9)
        {
          goto LABEL_61;
        }

LABEL_47:
        v25 = *(a2 + v8);
        *(a1 + v8) = v25;
        v26 = v25;
        swift_storeEnumTagMultiPayload();
LABEL_62:
        (*(v10 + 56))(a1 + v8, 0, 1, v9);
        goto LABEL_63;
      }

      if (v24 <= 2)
      {
        if (v24 != 1)
        {
          if (v24 == 2)
          {
            goto LABEL_48;
          }

LABEL_61:
          memcpy(a1 + v8, a2 + v8, *(v10 + 64));
          goto LABEL_62;
        }

        goto LABEL_47;
      }

LABEL_48:
      v27 = sub_21DBF563C();
      (*(*(v27 - 8) + 16))(a1 + v8, a2 + v8, v27);
      swift_storeEnumTagMultiPayload();
      goto LABEL_62;
  }

  v20 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v20);
}

void **_s19ReminderCasesInItemOwca(void **a1, void **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D106CD8(a1, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v16 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v17 = *(v10 + 48);
      v18 = v16;
      if (v17(a2 + v8, 1, v9))
      {
LABEL_10:
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v8, a2 + v8, *(*(v19 - 8) + 64));
LABEL_64:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v23 = swift_getEnumCaseMultiPayload();
      if (v23 > 4)
      {
        if (v23 <= 7)
        {
          if (v23 == 5 || v23 == 6)
          {
            goto LABEL_49;
          }

          goto LABEL_62;
        }

        if (v23 != 8 && v23 != 9)
        {
          goto LABEL_62;
        }

        goto LABEL_48;
      }

      if (v23 > 2)
      {
        goto LABEL_49;
      }

      if (v23 == 1)
      {
        goto LABEL_48;
      }

      if (v23 != 2)
      {
        goto LABEL_62;
      }

      goto LABEL_49;
    case 1:
      v13 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v14 = *(v10 + 48);
      v15 = v13;
      if (v14(a2 + v8, 1, v9))
      {
        goto LABEL_10;
      }

      v22 = swift_getEnumCaseMultiPayload();
      if (v22 > 4)
      {
        if (v22 <= 7)
        {
          if (v22 == 5 || v22 == 6)
          {
            goto LABEL_49;
          }

          goto LABEL_62;
        }

        if (v22 != 8 && v22 != 9)
        {
          goto LABEL_62;
        }

        goto LABEL_48;
      }

      if (v22 > 2)
      {
        goto LABEL_49;
      }

      if (v22 == 1)
      {
        goto LABEL_48;
      }

      if (v22 != 2)
      {
        goto LABEL_62;
      }

      goto LABEL_49;
    case 0:
      v7 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v11 = *(v10 + 48);
      v12 = v7;
      if (v11(a2 + v8, 1, v9))
      {
        goto LABEL_10;
      }

      v24 = swift_getEnumCaseMultiPayload();
      if (v24 > 4)
      {
        if (v24 <= 7)
        {
          if (v24 == 5 || v24 == 6)
          {
            goto LABEL_49;
          }

          goto LABEL_62;
        }

        if (v24 != 8 && v24 != 9)
        {
          goto LABEL_62;
        }

LABEL_48:
        v25 = *(a2 + v8);
        *(a1 + v8) = v25;
        v26 = v25;
        swift_storeEnumTagMultiPayload();
LABEL_63:
        (*(v10 + 56))(a1 + v8, 0, 1, v9);
        goto LABEL_64;
      }

      if (v24 <= 2)
      {
        if (v24 != 1)
        {
          if (v24 == 2)
          {
            goto LABEL_49;
          }

LABEL_62:
          memcpy(a1 + v8, a2 + v8, *(v10 + 64));
          goto LABEL_63;
        }

        goto LABEL_48;
      }

LABEL_49:
      v27 = sub_21DBF563C();
      (*(*(v27 - 8) + 16))(a1 + v8, a2 + v8, v27);
      swift_storeEnumTagMultiPayload();
      goto LABEL_63;
  }

  v20 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v20);
}

char *_s19ReminderCasesInItemOwtk(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(&a2[v7], 1, v8))
      {
LABEL_9:
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
LABEL_48:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v14 = swift_getEnumCaseMultiPayload();
      if (v14 <= 3)
      {
        if (v14 == 2 || v14 == 3)
        {
          goto LABEL_27;
        }
      }

      else if (v14 == 4 || v14 == 5 || v14 == 6)
      {
        goto LABEL_27;
      }

      goto LABEL_46;
    case 1:
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(&a2[v7], 1, v8))
      {
        goto LABEL_9;
      }

      v13 = swift_getEnumCaseMultiPayload();
      if (v13 <= 3)
      {
        if (v13 == 2 || v13 == 3)
        {
          goto LABEL_27;
        }
      }

      else if (v13 == 4 || v13 == 5 || v13 == 6)
      {
        goto LABEL_27;
      }

      goto LABEL_46;
    case 0:
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(&a2[v7], 1, v8))
      {
        goto LABEL_9;
      }

      v15 = swift_getEnumCaseMultiPayload();
      if (v15 <= 3)
      {
        if (v15 == 2 || v15 == 3)
        {
          goto LABEL_27;
        }
      }

      else if (v15 == 4 || v15 == 5 || v15 == 6)
      {
LABEL_27:
        v16 = sub_21DBF563C();
        (*(*(v16 - 8) + 32))(&a1[v7], &a2[v7], v16);
        swift_storeEnumTagMultiPayload();
LABEL_47:
        (*(v9 + 56))(&a1[v7], 0, 1, v8);
        goto LABEL_48;
      }

LABEL_46:
      memcpy(&a1[v7], &a2[v7], *(v9 + 64));
      goto LABEL_47;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

char *_s19ReminderCasesInItemOwta(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D106CD8(a1, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(&a2[v7], 1, v8))
      {
LABEL_10:
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
LABEL_49:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v14 = swift_getEnumCaseMultiPayload();
      if (v14 <= 3)
      {
        if (v14 == 2 || v14 == 3)
        {
          goto LABEL_28;
        }
      }

      else if (v14 == 4 || v14 == 5 || v14 == 6)
      {
        goto LABEL_28;
      }

      goto LABEL_47;
    case 1:
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(&a2[v7], 1, v8))
      {
        goto LABEL_10;
      }

      v13 = swift_getEnumCaseMultiPayload();
      if (v13 <= 3)
      {
        if (v13 == 2 || v13 == 3)
        {
          goto LABEL_28;
        }
      }

      else if (v13 == 4 || v13 == 5 || v13 == 6)
      {
        goto LABEL_28;
      }

      goto LABEL_47;
    case 0:
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(&a2[v7], 1, v8))
      {
        goto LABEL_10;
      }

      v15 = swift_getEnumCaseMultiPayload();
      if (v15 <= 3)
      {
        if (v15 == 2 || v15 == 3)
        {
          goto LABEL_28;
        }
      }

      else if (v15 == 4 || v15 == 5 || v15 == 6)
      {
LABEL_28:
        v16 = sub_21DBF563C();
        (*(*(v16 - 8) + 32))(&a1[v7], &a2[v7], v16);
        swift_storeEnumTagMultiPayload();
LABEL_48:
        (*(v9 + 56))(&a1[v7], 0, 1, v8);
        goto LABEL_49;
      }

LABEL_47:
      memcpy(&a1[v7], &a2[v7], *(v9 + 64));
      goto LABEL_48;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t sub_21D6F78DC(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.ReminderID(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void **_s19BaseTreeCasesInItemOwCP(void **a1, void **a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = &v14[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_25;
      }

      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = swift_getEnumCaseMultiPayload();
      if (v16 <= 4)
      {
        if (v16 > 2)
        {
LABEL_55:
          v34 = sub_21DBF563C();
          (*(*(v34 - 8) + 16))(a1, v3, v34);
          swift_storeEnumTagMultiPayload();
          goto LABEL_86;
        }

        if (v16 != 1)
        {
          if (v16 == 2)
          {
            goto LABEL_55;
          }

          goto LABEL_85;
        }

LABEL_58:
        v35 = *v3;
        *a1 = *v3;
        v36 = v35;
        swift_storeEnumTagMultiPayload();
        goto LABEL_86;
      }

      if (v16 > 7)
      {
        if (v16 == 8 || v16 == 9)
        {
          goto LABEL_58;
        }
      }

      else if (v16 == 5 || v16 == 6)
      {
        goto LABEL_55;
      }

LABEL_85:
      memcpy(a1, v3, *(*(v15 - 8) + 64));
LABEL_86:
      v37 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v63 = v37[5];
      v39 = a1 + v63;
      v40 = v3 + v63;
      v64 = *(v3 + v63 + 8);
      if (v64)
      {
        v84 = v3;
        v86 = a1;
        *v39 = *v40;
        *(v39 + 1) = v64;
        v65 = *(v40 + 2);
        v66 = *(v40 + 3);
        v67 = *(v40 + 4);
        v68 = *(v40 + 5);
        v69 = *(v40 + 6);
        v70 = *(v40 + 7);
        v71 = v40[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v65, v66, v67, v68, v69, v70, v71);
        *(v39 + 2) = v65;
        *(v39 + 3) = v66;
        *(v39 + 4) = v67;
        *(v39 + 5) = v68;
        *(v39 + 6) = v69;
        *(v39 + 7) = v70;
        v39[64] = v71;
        *(v39 + 65) = *(v40 + 65);
        v72 = v40[120];
        if (v72 == 255)
        {
          *(v39 + 72) = *(v40 + 72);
          *(v39 + 88) = *(v40 + 88);
          *(v39 + 104) = *(v40 + 104);
          v39[120] = v40[120];
        }

        else
        {
          v73 = *(v40 + 9);
          v74 = *(v40 + 10);
          v75 = *(v40 + 11);
          v76 = *(v40 + 12);
          v77 = *(v40 + 13);
          v78 = *(v40 + 14);
          v79 = v72 & 1;
          sub_21D0FB960(v73, v74, v75, v76, v77, v78, v72 & 1);
          *(v39 + 9) = v73;
          *(v39 + 10) = v74;
          *(v39 + 11) = v75;
          *(v39 + 12) = v76;
          *(v39 + 13) = v77;
          *(v39 + 14) = v78;
          v39[120] = v79;
        }

        a1 = v86;
        v39[121] = v40[121];
        v3 = v84;
        goto LABEL_84;
      }

LABEL_81:
      v57 = *(v40 + 5);
      *(v39 + 4) = *(v40 + 4);
      *(v39 + 5) = v57;
      *(v39 + 6) = *(v40 + 6);
      *(v39 + 106) = *(v40 + 106);
      v58 = *(v40 + 1);
      *v39 = *v40;
      *(v39 + 1) = v58;
      v59 = *(v40 + 3);
      *(v39 + 2) = *(v40 + 2);
      *(v39 + 3) = v59;
LABEL_84:
      *(a1 + v37[6]) = *(v3 + v37[6]);
      *(a1 + v37[7]) = *(v3 + v37[7]);
      *(a1 + v37[8]) = *(v3 + v37[8]);
      *(a1 + v37[9]) = *(v3 + v37[9]);
      *(a1 + v37[10]) = *(v3 + v37[10]);
      v60 = v37[11];
      v61 = *(v3 + v60);
      *(a1 + v60) = v61;
      v62 = v61;
      goto LABEL_115;
    }

    v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v25 = swift_getEnumCaseMultiPayload();
    if (v25 <= 4)
    {
      if (v25 > 2)
      {
LABEL_51:
        v31 = sub_21DBF563C();
        (*(*(v31 - 8) + 16))(a1, v3, v31);
        swift_storeEnumTagMultiPayload();
        goto LABEL_78;
      }

      if (v25 != 1)
      {
        if (v25 == 2)
        {
          goto LABEL_51;
        }

        goto LABEL_77;
      }

LABEL_54:
      v32 = *v3;
      *a1 = *v3;
      v33 = v32;
      swift_storeEnumTagMultiPayload();
      goto LABEL_78;
    }

    if (v25 > 7)
    {
      if (v25 == 8 || v25 == 9)
      {
        goto LABEL_54;
      }
    }

    else if (v25 == 5 || v25 == 6)
    {
      goto LABEL_51;
    }

LABEL_77:
    memcpy(a1, v3, *(*(v24 - 8) + 64));
LABEL_78:
    v37 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v38 = v37[5];
    v39 = a1 + v38;
    v40 = v3 + v38;
    v41 = *(v3 + v38 + 8);
    if (v41)
    {
      v83 = v3;
      v85 = a1;
      *v39 = *v40;
      *(v39 + 1) = v41;
      v42 = *(v40 + 2);
      v43 = *(v40 + 3);
      v44 = *(v40 + 4);
      v45 = *(v40 + 5);
      v46 = *(v40 + 6);
      v47 = *(v40 + 7);
      v48 = v40[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v42, v43, v44, v45, v46, v47, v48);
      *(v39 + 2) = v42;
      *(v39 + 3) = v43;
      *(v39 + 4) = v44;
      *(v39 + 5) = v45;
      *(v39 + 6) = v46;
      *(v39 + 7) = v47;
      v39[64] = v48;
      *(v39 + 65) = *(v40 + 65);
      v49 = v40[120];
      if (v49 == 255)
      {
        *(v39 + 72) = *(v40 + 72);
        *(v39 + 88) = *(v40 + 88);
        *(v39 + 104) = *(v40 + 104);
        v39[120] = v40[120];
      }

      else
      {
        v50 = *(v40 + 9);
        v51 = *(v40 + 10);
        v52 = *(v40 + 11);
        v53 = *(v40 + 12);
        v54 = *(v40 + 13);
        v55 = *(v40 + 14);
        v56 = v49 & 1;
        sub_21D0FB960(v50, v51, v52, v53, v54, v55, v49 & 1);
        *(v39 + 9) = v50;
        *(v39 + 10) = v51;
        *(v39 + 11) = v52;
        *(v39 + 12) = v53;
        *(v39 + 13) = v54;
        *(v39 + 14) = v55;
        v39[120] = v56;
      }

      a1 = v85;
      v39[121] = v40[121];
      v3 = v83;
      goto LABEL_84;
    }

    goto LABEL_81;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v17 = *v3;
      *a1 = *v3;
      v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = *(v10 - 8);
      v18 = *(v11 + 48);
      v19 = v17;
      if (v18(v3 + v9, 1, v10))
      {
        goto LABEL_19;
      }

      v28 = swift_getEnumCaseMultiPayload();
      if (v28 > 4)
      {
        if (v28 <= 7)
        {
          if (v28 == 5 || v28 == 6)
          {
            goto LABEL_100;
          }

          goto LABEL_113;
        }

        if (v28 != 8 && v28 != 9)
        {
          goto LABEL_113;
        }

        goto LABEL_99;
      }

      if (v28 > 2)
      {
        goto LABEL_100;
      }

      if (v28 == 1)
      {
        goto LABEL_99;
      }

      if (v28 != 2)
      {
        goto LABEL_113;
      }

      goto LABEL_100;
    case 3:
      v20 = *v3;
      *a1 = *v3;
      v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = *(v10 - 8);
      v21 = *(v11 + 48);
      v22 = v20;
      if (v21(v3 + v9, 1, v10))
      {
LABEL_19:
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v9, v3 + v9, *(*(v23 - 8) + 64));
LABEL_115:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v29 = swift_getEnumCaseMultiPayload();
      if (v29 > 4)
      {
        if (v29 <= 7)
        {
          if (v29 == 5 || v29 == 6)
          {
            goto LABEL_100;
          }

          goto LABEL_113;
        }

        if (v29 != 8 && v29 != 9)
        {
          goto LABEL_113;
        }

        goto LABEL_99;
      }

      if (v29 > 2)
      {
        goto LABEL_100;
      }

      if (v29 == 1)
      {
        goto LABEL_99;
      }

      if (v29 != 2)
      {
        goto LABEL_113;
      }

      goto LABEL_100;
    case 4:
      v8 = *v3;
      *a1 = *v3;
      v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = *(v10 - 8);
      v12 = *(v11 + 48);
      v13 = v8;
      if (v12(v3 + v9, 1, v10))
      {
        goto LABEL_19;
      }

      v30 = swift_getEnumCaseMultiPayload();
      if (v30 > 4)
      {
        if (v30 <= 7)
        {
          if (v30 == 5 || v30 == 6)
          {
            goto LABEL_100;
          }

          goto LABEL_113;
        }

        if (v30 != 8 && v30 != 9)
        {
          goto LABEL_113;
        }

LABEL_99:
        v80 = *(v3 + v9);
        *(a1 + v9) = v80;
        v81 = v80;
        swift_storeEnumTagMultiPayload();
LABEL_114:
        (*(v11 + 56))(a1 + v9, 0, 1, v10);
        goto LABEL_115;
      }

      if (v30 <= 2)
      {
        if (v30 != 1)
        {
          if (v30 == 2)
          {
            goto LABEL_100;
          }

LABEL_113:
          memcpy(a1 + v9, v3 + v9, *(v11 + 64));
          goto LABEL_114;
        }

        goto LABEL_99;
      }

LABEL_100:
      v82 = sub_21DBF563C();
      (*(*(v82 - 8) + 16))(a1 + v9, v3 + v9, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_114;
  }

LABEL_25:
  v26 = *(v6 + 64);

  return memcpy(a1, v3, v26);
}

void _s19BaseTreeCasesInItemOwxx(id *a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload > 1)
    {
      return;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v7 = swift_getEnumCaseMultiPayload();
    if (v7 > 4)
    {
      if (v7 <= 7)
      {
        if (v7 != 5 && v7 != 6)
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      }

      if (v7 != 8 && v7 != 9)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v7 > 2)
      {
        goto LABEL_25;
      }

      if (v7 != 1)
      {
        if (v7 != 2)
        {
LABEL_29:
          v9 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v10 = a1 + *(v9 + 20);
          if (*(v10 + 1))
          {

            sub_21D179EF0(*(v10 + 2), *(v10 + 3), *(v10 + 4), *(v10 + 5), *(v10 + 6), *(v10 + 7), v10[64]);
            v11 = v10[120];
            if (v11 != 255)
            {
              sub_21D1078C0(*(v10 + 9), *(v10 + 10), *(v10 + 11), *(v10 + 12), *(v10 + 13), *(v10 + 14), v11 & 1);
            }
          }

          v12 = *(a1 + *(v9 + 44));
          goto LABEL_33;
        }

LABEL_25:
        v8 = sub_21DBF563C();
        (*(*(v8 - 8) + 8))(a1, v8);
        goto LABEL_29;
      }
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
  {
    return;
  }

  v4 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  if ((*(*(v5 - 8) + 48))(a1 + v4, 1, v5))
  {
    return;
  }

  v6 = swift_getEnumCaseMultiPayload();
  if (v6 > 4)
  {
    if (v6 <= 7)
    {
      if (v6 != 5 && v6 != 6)
      {
        return;
      }

      goto LABEL_36;
    }

    if (v6 != 8 && v6 != 9)
    {
      return;
    }
  }

  else
  {
    if (v6 > 2)
    {
LABEL_36:
      v13 = sub_21DBF563C();
      v14 = *(*(v13 - 8) + 8);

      v14(a1 + v4, v13);
      return;
    }

    if (v6 != 1)
    {
      if (v6 != 2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  v12 = *(a1 + v4);
LABEL_33:
}

void **_s19BaseTreeCasesInItemOwcp(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_23;
      }

      v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v14 = swift_getEnumCaseMultiPayload();
      if (v14 <= 4)
      {
        if (v14 > 2)
        {
LABEL_53:
          v32 = sub_21DBF563C();
          (*(*(v32 - 8) + 16))(a1, a2, v32);
          swift_storeEnumTagMultiPayload();
          goto LABEL_84;
        }

        if (v14 != 1)
        {
          if (v14 == 2)
          {
            goto LABEL_53;
          }

          goto LABEL_83;
        }

LABEL_56:
        v33 = *a2;
        *a1 = *a2;
        v34 = v33;
        swift_storeEnumTagMultiPayload();
        goto LABEL_84;
      }

      if (v14 > 7)
      {
        if (v14 == 8 || v14 == 9)
        {
          goto LABEL_56;
        }
      }

      else if (v14 == 5 || v14 == 6)
      {
        goto LABEL_53;
      }

LABEL_83:
      memcpy(a1, a2, *(*(v13 - 8) + 64));
LABEL_84:
      v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v61 = v35[5];
      v37 = a1 + v61;
      v38 = a2 + v61;
      v62 = *(a2 + v61 + 8);
      if (v62)
      {
        v82 = a2;
        v84 = a1;
        *v37 = *v38;
        *(v37 + 1) = v62;
        v63 = *(v38 + 2);
        v64 = *(v38 + 3);
        v65 = *(v38 + 4);
        v66 = *(v38 + 5);
        v67 = *(v38 + 6);
        v68 = *(v38 + 7);
        v69 = v38[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v63, v64, v65, v66, v67, v68, v69);
        *(v37 + 2) = v63;
        *(v37 + 3) = v64;
        *(v37 + 4) = v65;
        *(v37 + 5) = v66;
        *(v37 + 6) = v67;
        *(v37 + 7) = v68;
        v37[64] = v69;
        *(v37 + 65) = *(v38 + 65);
        v70 = v38[120];
        if (v70 == 255)
        {
          *(v37 + 72) = *(v38 + 72);
          *(v37 + 88) = *(v38 + 88);
          *(v37 + 104) = *(v38 + 104);
          v37[120] = v38[120];
        }

        else
        {
          v71 = *(v38 + 9);
          v72 = *(v38 + 10);
          v73 = *(v38 + 11);
          v74 = *(v38 + 12);
          v75 = *(v38 + 13);
          v76 = *(v38 + 14);
          v77 = v70 & 1;
          sub_21D0FB960(v71, v72, v73, v74, v75, v76, v70 & 1);
          *(v37 + 9) = v71;
          *(v37 + 10) = v72;
          *(v37 + 11) = v73;
          *(v37 + 12) = v74;
          *(v37 + 13) = v75;
          *(v37 + 14) = v76;
          v37[120] = v77;
        }

        a1 = v84;
        v37[121] = v38[121];
        a2 = v82;
        goto LABEL_82;
      }

LABEL_79:
      v55 = *(v38 + 5);
      *(v37 + 4) = *(v38 + 4);
      *(v37 + 5) = v55;
      *(v37 + 6) = *(v38 + 6);
      *(v37 + 106) = *(v38 + 106);
      v56 = *(v38 + 1);
      *v37 = *v38;
      *(v37 + 1) = v56;
      v57 = *(v38 + 3);
      *(v37 + 2) = *(v38 + 2);
      *(v37 + 3) = v57;
LABEL_82:
      *(a1 + v35[6]) = *(a2 + v35[6]);
      *(a1 + v35[7]) = *(a2 + v35[7]);
      *(a1 + v35[8]) = *(a2 + v35[8]);
      *(a1 + v35[9]) = *(a2 + v35[9]);
      *(a1 + v35[10]) = *(a2 + v35[10]);
      v58 = v35[11];
      v59 = *(a2 + v58);
      *(a1 + v58) = v59;
      v60 = v59;
      goto LABEL_113;
    }

    v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v23 = swift_getEnumCaseMultiPayload();
    if (v23 <= 4)
    {
      if (v23 > 2)
      {
LABEL_49:
        v29 = sub_21DBF563C();
        (*(*(v29 - 8) + 16))(a1, a2, v29);
        swift_storeEnumTagMultiPayload();
        goto LABEL_76;
      }

      if (v23 != 1)
      {
        if (v23 == 2)
        {
          goto LABEL_49;
        }

        goto LABEL_75;
      }

LABEL_52:
      v30 = *a2;
      *a1 = *a2;
      v31 = v30;
      swift_storeEnumTagMultiPayload();
      goto LABEL_76;
    }

    if (v23 > 7)
    {
      if (v23 == 8 || v23 == 9)
      {
        goto LABEL_52;
      }
    }

    else if (v23 == 5 || v23 == 6)
    {
      goto LABEL_49;
    }

LABEL_75:
    memcpy(a1, a2, *(*(v22 - 8) + 64));
LABEL_76:
    v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v36 = v35[5];
    v37 = a1 + v36;
    v38 = a2 + v36;
    v39 = *(a2 + v36 + 8);
    if (v39)
    {
      v81 = a2;
      v83 = a1;
      *v37 = *v38;
      *(v37 + 1) = v39;
      v40 = *(v38 + 2);
      v41 = *(v38 + 3);
      v42 = *(v38 + 4);
      v43 = *(v38 + 5);
      v44 = *(v38 + 6);
      v45 = *(v38 + 7);
      v46 = v38[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v40, v41, v42, v43, v44, v45, v46);
      *(v37 + 2) = v40;
      *(v37 + 3) = v41;
      *(v37 + 4) = v42;
      *(v37 + 5) = v43;
      *(v37 + 6) = v44;
      *(v37 + 7) = v45;
      v37[64] = v46;
      *(v37 + 65) = *(v38 + 65);
      v47 = v38[120];
      if (v47 == 255)
      {
        *(v37 + 72) = *(v38 + 72);
        *(v37 + 88) = *(v38 + 88);
        *(v37 + 104) = *(v38 + 104);
        v37[120] = v38[120];
      }

      else
      {
        v48 = *(v38 + 9);
        v49 = *(v38 + 10);
        v50 = *(v38 + 11);
        v51 = *(v38 + 12);
        v52 = *(v38 + 13);
        v53 = *(v38 + 14);
        v54 = v47 & 1;
        sub_21D0FB960(v48, v49, v50, v51, v52, v53, v47 & 1);
        *(v37 + 9) = v48;
        *(v37 + 10) = v49;
        *(v37 + 11) = v50;
        *(v37 + 12) = v51;
        *(v37 + 13) = v52;
        *(v37 + 14) = v53;
        v37[120] = v54;
      }

      a1 = v83;
      v37[121] = v38[121];
      a2 = v81;
      goto LABEL_82;
    }

    goto LABEL_79;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v15 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v16 = *(v10 + 48);
      v17 = v15;
      if (v16(a2 + v8, 1, v9))
      {
        goto LABEL_17;
      }

      v26 = swift_getEnumCaseMultiPayload();
      if (v26 > 4)
      {
        if (v26 <= 7)
        {
          if (v26 == 5 || v26 == 6)
          {
            goto LABEL_98;
          }

          goto LABEL_111;
        }

        if (v26 != 8 && v26 != 9)
        {
          goto LABEL_111;
        }

        goto LABEL_97;
      }

      if (v26 > 2)
      {
        goto LABEL_98;
      }

      if (v26 == 1)
      {
        goto LABEL_97;
      }

      if (v26 != 2)
      {
        goto LABEL_111;
      }

      goto LABEL_98;
    case 3:
      v18 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v19 = *(v10 + 48);
      v20 = v18;
      if (v19(a2 + v8, 1, v9))
      {
LABEL_17:
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v8, a2 + v8, *(*(v21 - 8) + 64));
LABEL_113:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v27 = swift_getEnumCaseMultiPayload();
      if (v27 > 4)
      {
        if (v27 <= 7)
        {
          if (v27 == 5 || v27 == 6)
          {
            goto LABEL_98;
          }

          goto LABEL_111;
        }

        if (v27 != 8 && v27 != 9)
        {
          goto LABEL_111;
        }

        goto LABEL_97;
      }

      if (v27 > 2)
      {
        goto LABEL_98;
      }

      if (v27 == 1)
      {
        goto LABEL_97;
      }

      if (v27 != 2)
      {
        goto LABEL_111;
      }

      goto LABEL_98;
    case 4:
      v7 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v11 = *(v10 + 48);
      v12 = v7;
      if (v11(a2 + v8, 1, v9))
      {
        goto LABEL_17;
      }

      v28 = swift_getEnumCaseMultiPayload();
      if (v28 > 4)
      {
        if (v28 <= 7)
        {
          if (v28 == 5 || v28 == 6)
          {
            goto LABEL_98;
          }

          goto LABEL_111;
        }

        if (v28 != 8 && v28 != 9)
        {
          goto LABEL_111;
        }

LABEL_97:
        v78 = *(a2 + v8);
        *(a1 + v8) = v78;
        v79 = v78;
        swift_storeEnumTagMultiPayload();
LABEL_112:
        (*(v10 + 56))(a1 + v8, 0, 1, v9);
        goto LABEL_113;
      }

      if (v28 <= 2)
      {
        if (v28 != 1)
        {
          if (v28 == 2)
          {
            goto LABEL_98;
          }

LABEL_111:
          memcpy(a1 + v8, a2 + v8, *(v10 + 64));
          goto LABEL_112;
        }

        goto LABEL_97;
      }

LABEL_98:
      v80 = sub_21DBF563C();
      (*(*(v80 - 8) + 16))(a1 + v8, a2 + v8, v80);
      swift_storeEnumTagMultiPayload();
      goto LABEL_112;
  }

LABEL_23:
  v24 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v24);
}

void **_s19BaseTreeCasesInItemOwca(void **a1, void **a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  v5 = a2;
  sub_21D106CD8(a1, type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_24;
      }

      v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v14 = swift_getEnumCaseMultiPayload();
      if (v14 <= 4)
      {
        if (v14 > 2)
        {
LABEL_54:
          v32 = sub_21DBF563C();
          (*(*(v32 - 8) + 16))(v3, v5, v32);
          swift_storeEnumTagMultiPayload();
          goto LABEL_85;
        }

        if (v14 != 1)
        {
          if (v14 == 2)
          {
            goto LABEL_54;
          }

          goto LABEL_84;
        }

LABEL_57:
        v33 = *v5;
        *v3 = *v5;
        v34 = v33;
        swift_storeEnumTagMultiPayload();
        goto LABEL_85;
      }

      if (v14 > 7)
      {
        if (v14 == 8 || v14 == 9)
        {
          goto LABEL_57;
        }
      }

      else if (v14 == 5 || v14 == 6)
      {
        goto LABEL_54;
      }

LABEL_84:
      memcpy(v3, v5, *(*(v13 - 8) + 64));
LABEL_85:
      v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v66 = v35[5];
      v37 = v3 + v66;
      v38 = v5 + v66;
      if (*(v5 + v66 + 8))
      {
        v89 = v5;
        v91 = v3;
        *v37 = *v38;
        *(v37 + 1) = *(v38 + 1);
        v67 = *(v38 + 2);
        v68 = *(v38 + 3);
        v69 = *(v38 + 4);
        v70 = *(v38 + 5);
        v71 = *(v38 + 6);
        v72 = *(v38 + 7);
        v73 = v38[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v67, v68, v69, v70, v71, v72, v73);
        *(v37 + 2) = v67;
        *(v37 + 3) = v68;
        *(v37 + 4) = v69;
        *(v37 + 5) = v70;
        *(v37 + 6) = v71;
        *(v37 + 7) = v72;
        v37[64] = v73;
        v37[65] = v38[65];
        v37[66] = v38[66];
        v37[67] = v38[67];
        v37[68] = v38[68];
        v74 = v38[120];
        if (v74 == 255)
        {
          v82 = *(v38 + 72);
          v83 = *(v38 + 88);
          v84 = *(v38 + 104);
          v37[120] = v38[120];
          *(v37 + 104) = v84;
          *(v37 + 88) = v83;
          *(v37 + 72) = v82;
        }

        else
        {
          v75 = *(v38 + 9);
          v76 = *(v38 + 10);
          v77 = *(v38 + 11);
          v78 = *(v38 + 12);
          v79 = *(v38 + 13);
          v80 = *(v38 + 14);
          v81 = v74 & 1;
          sub_21D0FB960(v75, v76, v77, v78, v79, v80, v74 & 1);
          *(v37 + 9) = v75;
          *(v37 + 10) = v76;
          *(v37 + 11) = v77;
          *(v37 + 12) = v78;
          *(v37 + 13) = v79;
          *(v37 + 14) = v80;
          v37[120] = v81;
        }

        v3 = v91;
        v37[121] = v38[121];
        v5 = v89;
        goto LABEL_83;
      }

LABEL_80:
      v54 = *v38;
      v55 = *(v38 + 1);
      v56 = *(v38 + 3);
      *(v37 + 2) = *(v38 + 2);
      *(v37 + 3) = v56;
      *v37 = v54;
      *(v37 + 1) = v55;
      v57 = *(v38 + 4);
      v58 = *(v38 + 5);
      v59 = *(v38 + 6);
      *(v37 + 106) = *(v38 + 106);
      *(v37 + 5) = v58;
      *(v37 + 6) = v59;
      *(v37 + 4) = v57;
LABEL_83:
      *(v3 + v35[6]) = *(v5 + v35[6]);
      *(v3 + v35[7]) = *(v5 + v35[7]);
      *(v3 + v35[8]) = *(v5 + v35[8]);
      *(v3 + v35[9]) = *(v5 + v35[9]);
      *(v3 + v35[10]) = *(v5 + v35[10]);
      v63 = v35[11];
      v64 = *(v5 + v63);
      *(v3 + v63) = v64;
      v65 = v64;
      goto LABEL_114;
    }

    v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v23 = swift_getEnumCaseMultiPayload();
    if (v23 <= 4)
    {
      if (v23 > 2)
      {
LABEL_50:
        v29 = sub_21DBF563C();
        (*(*(v29 - 8) + 16))(v3, v5, v29);
        swift_storeEnumTagMultiPayload();
        goto LABEL_77;
      }

      if (v23 != 1)
      {
        if (v23 == 2)
        {
          goto LABEL_50;
        }

        goto LABEL_76;
      }

LABEL_53:
      v30 = *v5;
      *v3 = *v5;
      v31 = v30;
      swift_storeEnumTagMultiPayload();
      goto LABEL_77;
    }

    if (v23 > 7)
    {
      if (v23 == 8 || v23 == 9)
      {
        goto LABEL_53;
      }
    }

    else if (v23 == 5 || v23 == 6)
    {
      goto LABEL_50;
    }

LABEL_76:
    memcpy(v3, v5, *(*(v22 - 8) + 64));
LABEL_77:
    v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v36 = v35[5];
    v37 = v3 + v36;
    v38 = v5 + v36;
    if (*(v5 + v36 + 8))
    {
      v88 = v5;
      v90 = v3;
      *v37 = *v38;
      *(v37 + 1) = *(v38 + 1);
      v39 = *(v38 + 2);
      v40 = *(v38 + 3);
      v41 = *(v38 + 4);
      v42 = *(v38 + 5);
      v43 = *(v38 + 6);
      v44 = *(v38 + 7);
      v45 = v38[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v39, v40, v41, v42, v43, v44, v45);
      *(v37 + 2) = v39;
      *(v37 + 3) = v40;
      *(v37 + 4) = v41;
      *(v37 + 5) = v42;
      *(v37 + 6) = v43;
      *(v37 + 7) = v44;
      v37[64] = v45;
      v37[65] = v38[65];
      v37[66] = v38[66];
      v37[67] = v38[67];
      v37[68] = v38[68];
      v46 = v38[120];
      if (v46 == 255)
      {
        v60 = *(v38 + 72);
        v61 = *(v38 + 88);
        v62 = *(v38 + 104);
        v37[120] = v38[120];
        *(v37 + 104) = v62;
        *(v37 + 88) = v61;
        *(v37 + 72) = v60;
      }

      else
      {
        v47 = *(v38 + 9);
        v48 = *(v38 + 10);
        v49 = *(v38 + 11);
        v50 = *(v38 + 12);
        v51 = *(v38 + 13);
        v52 = *(v38 + 14);
        v53 = v46 & 1;
        sub_21D0FB960(v47, v48, v49, v50, v51, v52, v46 & 1);
        *(v37 + 9) = v47;
        *(v37 + 10) = v48;
        *(v37 + 11) = v49;
        *(v37 + 12) = v50;
        *(v37 + 13) = v51;
        *(v37 + 14) = v52;
        v37[120] = v53;
      }

      v3 = v90;
      v37[121] = v38[121];
      v5 = v88;
      goto LABEL_83;
    }

    goto LABEL_80;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v15 = *v5;
      *v3 = *v5;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v16 = *(v10 + 48);
      v17 = v15;
      if (v16(v5 + v8, 1, v9))
      {
        goto LABEL_18;
      }

      v26 = swift_getEnumCaseMultiPayload();
      if (v26 > 4)
      {
        if (v26 <= 7)
        {
          if (v26 == 5 || v26 == 6)
          {
            goto LABEL_99;
          }

          goto LABEL_112;
        }

        if (v26 != 8 && v26 != 9)
        {
          goto LABEL_112;
        }

        goto LABEL_98;
      }

      if (v26 > 2)
      {
        goto LABEL_99;
      }

      if (v26 == 1)
      {
        goto LABEL_98;
      }

      if (v26 != 2)
      {
        goto LABEL_112;
      }

      goto LABEL_99;
    case 3:
      v18 = *v5;
      *v3 = *v5;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v19 = *(v10 + 48);
      v20 = v18;
      if (v19(v5 + v8, 1, v9))
      {
LABEL_18:
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(v3 + v8, v5 + v8, *(*(v21 - 8) + 64));
LABEL_114:
        swift_storeEnumTagMultiPayload();
        return v3;
      }

      v27 = swift_getEnumCaseMultiPayload();
      if (v27 > 4)
      {
        if (v27 <= 7)
        {
          if (v27 == 5 || v27 == 6)
          {
            goto LABEL_99;
          }

          goto LABEL_112;
        }

        if (v27 != 8 && v27 != 9)
        {
          goto LABEL_112;
        }

        goto LABEL_98;
      }

      if (v27 > 2)
      {
        goto LABEL_99;
      }

      if (v27 == 1)
      {
        goto LABEL_98;
      }

      if (v27 != 2)
      {
        goto LABEL_112;
      }

      goto LABEL_99;
    case 4:
      v7 = *v5;
      *v3 = *v5;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v11 = *(v10 + 48);
      v12 = v7;
      if (v11(v5 + v8, 1, v9))
      {
        goto LABEL_18;
      }

      v28 = swift_getEnumCaseMultiPayload();
      if (v28 > 4)
      {
        if (v28 <= 7)
        {
          if (v28 == 5 || v28 == 6)
          {
            goto LABEL_99;
          }

          goto LABEL_112;
        }

        if (v28 != 8 && v28 != 9)
        {
          goto LABEL_112;
        }

LABEL_98:
        v85 = *(v5 + v8);
        *(v3 + v8) = v85;
        v86 = v85;
        swift_storeEnumTagMultiPayload();
LABEL_113:
        (*(v10 + 56))(v3 + v8, 0, 1, v9);
        goto LABEL_114;
      }

      if (v28 <= 2)
      {
        if (v28 != 1)
        {
          if (v28 == 2)
          {
            goto LABEL_99;
          }

LABEL_112:
          memcpy(v3 + v8, v5 + v8, *(v10 + 64));
          goto LABEL_113;
        }

        goto LABEL_98;
      }

LABEL_99:
      v87 = sub_21DBF563C();
      (*(*(v87 - 8) + 16))(v3 + v8, v5 + v8, v87);
      swift_storeEnumTagMultiPayload();
      goto LABEL_113;
  }

LABEL_24:
  v24 = *(*(a3 - 8) + 64);

  return memcpy(v3, v5, v24);
}

uint64_t sub_21D6FB4A4(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.SectionHeader(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListViewModel.ReminderID(319);
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void **initializeBufferWithCopyOfBuffer for TTRRemindersListViewModel.Item(void **a1, void **a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = &v10[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v23 = *v3;
        *a1 = *v3;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        v24 = *(v16 + 48);
        v25 = v23;
        if (v24(v3 + v14, 1, v15))
        {
          goto LABEL_28;
        }

        v39 = swift_getEnumCaseMultiPayload();
        if (v39 > 4)
        {
          if (v39 <= 7)
          {
            if (v39 == 5 || v39 == 6)
            {
              goto LABEL_117;
            }

            goto LABEL_130;
          }

          if (v39 != 8 && v39 != 9)
          {
            goto LABEL_130;
          }

          goto LABEL_116;
        }

        if (v39 > 2)
        {
          goto LABEL_117;
        }

        if (v39 == 1)
        {
          goto LABEL_116;
        }

        if (v39 != 2)
        {
          goto LABEL_130;
        }
      }

      else
      {
        v13 = *v3;
        *a1 = *v3;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        v17 = *(v16 + 48);
        v18 = v13;
        if (v17(v3 + v14, 1, v15))
        {
          goto LABEL_28;
        }

        v38 = swift_getEnumCaseMultiPayload();
        if (v38 > 4)
        {
          if (v38 <= 7)
          {
            if (v38 == 5 || v38 == 6)
            {
              goto LABEL_117;
            }

            goto LABEL_130;
          }

          if (v38 != 8 && v38 != 9)
          {
            goto LABEL_130;
          }

          goto LABEL_116;
        }

        if (v38 > 2)
        {
          goto LABEL_117;
        }

        if (v38 == 1)
        {
          goto LABEL_116;
        }

        if (v38 != 2)
        {
          goto LABEL_130;
        }
      }

      goto LABEL_117;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_35;
      }

      v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v12 = swift_getEnumCaseMultiPayload();
      if (v12 > 4)
      {
        if (v12 <= 7)
        {
          if (v12 == 5 || v12 == 6)
          {
            goto LABEL_67;
          }

          goto LABEL_93;
        }

        if (v12 != 8 && v12 != 9)
        {
          goto LABEL_93;
        }
      }

      else
      {
        if (v12 > 2)
        {
LABEL_67:
          v52 = sub_21DBF563C();
          (*(*(v52 - 8) + 16))(a1, v3, v52);
          swift_storeEnumTagMultiPayload();
LABEL_94:
          v58 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v59 = v58[5];
          v60 = a1 + v59;
          v61 = v3 + v59;
          v62 = *(v3 + v59 + 8);
          if (v62)
          {
            v111 = v3;
            v114 = a1;
            *v60 = *v61;
            *(v60 + 1) = v62;
            v63 = *(v61 + 2);
            v64 = *(v61 + 3);
            v65 = *(v61 + 4);
            v66 = *(v61 + 5);
            v68 = *(v61 + 6);
            v67 = *(v61 + 7);
            v69 = v61[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v63, v64, v65, v66, v68, v67, v69);
            *(v60 + 2) = v63;
            *(v60 + 3) = v64;
            *(v60 + 4) = v65;
            *(v60 + 5) = v66;
            *(v60 + 6) = v68;
            *(v60 + 7) = v67;
            v60[64] = v69;
            *(v60 + 65) = *(v61 + 65);
            v70 = v61[120];
            if (v70 == 255)
            {
              *(v60 + 72) = *(v61 + 72);
              *(v60 + 88) = *(v61 + 88);
              *(v60 + 104) = *(v61 + 104);
              v60[120] = v61[120];
            }

            else
            {
              v71 = *(v61 + 9);
              v72 = *(v61 + 10);
              v73 = *(v61 + 11);
              v74 = *(v61 + 12);
              v75 = *(v61 + 13);
              v76 = *(v61 + 14);
              v77 = v70 & 1;
              sub_21D0FB960(v71, v72, v73, v74, v75, v76, v70 & 1);
              *(v60 + 9) = v71;
              *(v60 + 10) = v72;
              *(v60 + 11) = v73;
              *(v60 + 12) = v74;
              *(v60 + 13) = v75;
              *(v60 + 14) = v76;
              v60[120] = v77;
            }

            a1 = v114;
            v60[121] = v61[121];
            v3 = v111;
          }

          else
          {
            v78 = *(v61 + 5);
            *(v60 + 4) = *(v61 + 4);
            *(v60 + 5) = v78;
            *(v60 + 6) = *(v61 + 6);
            *(v60 + 106) = *(v61 + 106);
            v79 = *(v61 + 1);
            *v60 = *v61;
            *(v60 + 1) = v79;
            v80 = *(v61 + 3);
            *(v60 + 2) = *(v61 + 2);
            *(v60 + 3) = v80;
          }

          *(a1 + v58[6]) = *(v3 + v58[6]);
          *(a1 + v58[7]) = *(v3 + v58[7]);
          *(a1 + v58[8]) = *(v3 + v58[8]);
          *(a1 + v58[9]) = *(v3 + v58[9]);
          *(a1 + v58[10]) = *(v3 + v58[10]);
          v81 = v58[11];
          v82 = *(v3 + v81);
          *(a1 + v81) = v82;
          v83 = v82;
          goto LABEL_132;
        }

        if (v12 != 1)
        {
          if (v12 == 2)
          {
            goto LABEL_67;
          }

LABEL_93:
          memcpy(a1, v3, *(*(v11 - 8) + 64));
          goto LABEL_94;
        }
      }

      v53 = *v3;
      *a1 = *v3;
      v54 = v53;
      swift_storeEnumTagMultiPayload();
      goto LABEL_94;
    }

    v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v22 = swift_getEnumCaseMultiPayload();
    if (v22 > 4)
    {
      if (v22 <= 7)
      {
        if (v22 == 5 || v22 == 6)
        {
          goto LABEL_71;
        }

        goto LABEL_101;
      }

      if (v22 != 8 && v22 != 9)
      {
        goto LABEL_101;
      }
    }

    else
    {
      if (v22 > 2)
      {
LABEL_71:
        v55 = sub_21DBF563C();
        (*(*(v55 - 8) + 16))(a1, v3, v55);
        swift_storeEnumTagMultiPayload();
LABEL_102:
        v84 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v85 = v84[5];
        v86 = a1 + v85;
        v87 = v3 + v85;
        v88 = *(v3 + v85 + 8);
        if (v88)
        {
          v115 = a1;
          *v86 = *v87;
          *(v86 + 1) = v88;
          v89 = *(v87 + 2);
          v90 = *(v87 + 3);
          v91 = *(v87 + 4);
          v92 = *(v87 + 5);
          v94 = *(v87 + 6);
          v93 = *(v87 + 7);
          v112 = v87[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v89, v90, v91, v92, v94, v93, v112);
          *(v86 + 2) = v89;
          *(v86 + 3) = v90;
          *(v86 + 4) = v91;
          *(v86 + 5) = v92;
          *(v86 + 6) = v94;
          *(v86 + 7) = v93;
          v86[64] = v112;
          *(v86 + 65) = *(v87 + 65);
          v95 = v87[120];
          if (v95 == 255)
          {
            *(v86 + 72) = *(v87 + 72);
            *(v86 + 88) = *(v87 + 88);
            *(v86 + 104) = *(v87 + 104);
            v86[120] = v87[120];
          }

          else
          {
            v96 = *(v87 + 9);
            v113 = *(v87 + 10);
            v97 = *(v87 + 11);
            v98 = *(v87 + 12);
            v99 = *(v87 + 13);
            v100 = *(v87 + 14);
            v101 = v95 & 1;
            sub_21D0FB960(v96, v113, v97, v98, v99, v100, v95 & 1);
            *(v86 + 9) = v96;
            *(v86 + 10) = v113;
            *(v86 + 11) = v97;
            *(v86 + 12) = v98;
            *(v86 + 13) = v99;
            *(v86 + 14) = v100;
            v86[120] = v101;
          }

          a1 = v115;
          v86[121] = v87[121];
        }

        else
        {
          v102 = *(v87 + 5);
          *(v86 + 4) = *(v87 + 4);
          *(v86 + 5) = v102;
          *(v86 + 6) = *(v87 + 6);
          *(v86 + 106) = *(v87 + 106);
          v103 = *(v87 + 1);
          *v86 = *v87;
          *(v86 + 1) = v103;
          v104 = *(v87 + 3);
          *(v86 + 2) = *(v87 + 2);
          *(v86 + 3) = v104;
        }

        *(a1 + v84[6]) = *(v3 + v84[6]);
        *(a1 + v84[7]) = *(v3 + v84[7]);
        *(a1 + v84[8]) = *(v3 + v84[8]);
        *(a1 + v84[9]) = *(v3 + v84[9]);
        *(a1 + v84[10]) = *(v3 + v84[10]);
        v105 = v84[11];
        v106 = *(v3 + v105);
        *(a1 + v105) = v106;
        v107 = v106;
        goto LABEL_132;
      }

      if (v22 != 1)
      {
        if (v22 == 2)
        {
          goto LABEL_71;
        }

LABEL_101:
        memcpy(a1, v3, *(*(v21 - 8) + 64));
        goto LABEL_102;
      }
    }

    v56 = *v3;
    *a1 = *v3;
    v57 = v56;
    swift_storeEnumTagMultiPayload();
    goto LABEL_102;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *v3;
      *(a1 + 8) = *(v3 + 8);
      *(a1 + 9) = *(v3 + 9);
      v19 = v3[2];
      a1[2] = v19;
      v20 = v19;
      goto LABEL_132;
    }

    v30 = *v3;
    *a1 = *v3;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    v31 = *(v16 + 48);
    v32 = v30;
    if (v31(v3 + v14, 1, v15))
    {
LABEL_28:
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v14, v3 + v14, *(*(v26 - 8) + 64));
      goto LABEL_132;
    }

    v49 = swift_getEnumCaseMultiPayload();
    if (v49 > 4)
    {
      if (v49 <= 7)
      {
        if (v49 == 5 || v49 == 6)
        {
          goto LABEL_117;
        }

        goto LABEL_130;
      }

      if (v49 != 8 && v49 != 9)
      {
        goto LABEL_130;
      }

LABEL_116:
      v108 = *(v3 + v14);
      *(a1 + v14) = v108;
      v109 = v108;
      swift_storeEnumTagMultiPayload();
LABEL_131:
      (*(v16 + 56))(a1 + v14, 0, 1, v15);
      goto LABEL_132;
    }

    if (v49 <= 2)
    {
      if (v49 != 1)
      {
        if (v49 == 2)
        {
          goto LABEL_117;
        }

LABEL_130:
        memcpy(a1 + v14, v3 + v14, *(v16 + 64));
        goto LABEL_131;
      }

      goto LABEL_116;
    }

LABEL_117:
    v110 = sub_21DBF563C();
    (*(*(v110 - 8) + 16))(a1 + v14, v3 + v14, v110);
    swift_storeEnumTagMultiPayload();
    goto LABEL_131;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v27 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v3, 1, v27))
      {
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
        memcpy(a1, v3, *(*(v29 - 8) + 64));
      }

      else
      {
        *a1 = *v3;
        v40 = *(v27 + 20);
        v41 = sub_21DBF6C1C();
        v42 = *(*(v41 - 8) + 16);
        sub_21DBF8E0C();
        v42(a1 + v40, v3 + v40, v41);
        (*(v28 + 56))(a1, 0, 1, v27);
      }

      v43 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v44 = (a1 + v43);
      v45 = (v3 + v43);
      v46 = v45[1];
      if (v46)
      {
        *v44 = *v45;
        v44[1] = v46;
        v47 = v45[2];
        v44[2] = v47;
        sub_21DBF8E0C();
        v48 = v47;
      }

      else
      {
        *v44 = *v45;
        v44[2] = v45[2];
      }

      goto LABEL_132;
    case 7:
      v33 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v34 = *(v33 - 8);
      if ((*(v34 + 48))(v3, 1, v33))
      {
        v35 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(a1, v3, *(*(v35 - 8) + 64));
      }

      else
      {
        v50 = sub_21DBF563C();
        (*(*(v50 - 8) + 16))(a1, v3, v50);
        *(a1 + *(v33 + 20)) = *(v3 + *(v33 + 20));
        (*(v34 + 56))(a1, 0, 1, v33);
      }

      v51 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(a1 + *(v51 + 20)) = *(v3 + *(v51 + 20));
      goto LABEL_132;
    case 8:
      *a1 = *v3;
      v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v9 = sub_21DBF8D7C();
      (*(*(v9 - 8) + 16))(a1 + v8, v3 + v8, v9);
LABEL_132:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

LABEL_35:
  v36 = *(v6 + 64);

  return memcpy(a1, v3, v36);
}

void destroy for TTRRemindersListViewModel.Item(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload > 1)
    {
      return;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 > 4)
    {
      if (v8 <= 7)
      {
        if (v8 != 5 && v8 != 6)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      if (v8 != 8 && v8 != 9)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v8 > 2)
      {
        goto LABEL_37;
      }

      if (v8 != 1)
      {
        if (v8 != 2)
        {
LABEL_41:
          v19 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v20 = a1 + *(v19 + 20);
          if (*(v20 + 8))
          {

            sub_21D179EF0(*(v20 + 16), *(v20 + 24), *(v20 + 32), *(v20 + 40), *(v20 + 48), *(v20 + 56), *(v20 + 64));
            v21 = *(v20 + 120);
            if (v21 != 255)
            {
              sub_21D1078C0(*(v20 + 72), *(v20 + 80), *(v20 + 88), *(v20 + 96), *(v20 + 104), *(v20 + 112), v21 & 1);
            }
          }

          v9 = *(a1 + *(v19 + 44));
          goto LABEL_45;
        }

LABEL_37:
        v18 = sub_21DBF563C();
        (*(*(v18 - 8) + 8))(a1, v18);
        goto LABEL_41;
      }
    }

    goto LABEL_41;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v9 = *(a1 + 16);
LABEL_45:

      return;
    }

LABEL_17:

    v10 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v11 - 8) + 48))(a1 + v10, 1, v11))
    {
      return;
    }

    v12 = swift_getEnumCaseMultiPayload();
    if (v12 > 4)
    {
      if (v12 <= 7)
      {
        if (v12 != 5 && v12 != 6)
        {
          return;
        }

        goto LABEL_49;
      }

      if (v12 != 8 && v12 != 9)
      {
        return;
      }
    }

    else
    {
      if (v12 > 2)
      {
LABEL_49:
        v5 = sub_21DBF563C();
        v6 = *(*(v5 - 8) + 8);
        v7 = a1 + v10;
LABEL_50:

        v6(v7, v5);
        return;
      }

      if (v12 != 1)
      {
        if (v12 != 2)
        {
          return;
        }

        goto LABEL_49;
      }
    }

    v9 = *(a1 + v10);
    goto LABEL_45;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v17 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if ((*(*(v17 - 8) + 48))(a1, 1, v17))
      {
        return;
      }

      v22 = sub_21DBF563C();
      v6 = *(*(v22 - 8) + 8);
      v5 = v22;
      v7 = a1;
    }

    else
    {
      if (EnumCaseMultiPayload != 8)
      {
        return;
      }

      v4 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v5 = sub_21DBF8D7C();
      v6 = *(*(v5 - 8) + 8);
      v7 = a1 + v4;
    }

    goto LABEL_50;
  }

  v13 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v13 - 8) + 48))(a1, 1, v13))
  {

    v14 = *(v13 + 20);
    v15 = sub_21DBF6C1C();
    (*(*(v15 - 8) + 8))(a1 + v14, v15);
  }

  v16 = a1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  if (*(v16 + 8))
  {

    v9 = *(v16 + 16);
    goto LABEL_45;
  }
}

void **initializeWithCopy for TTRRemindersListViewModel.Item(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v21 = *a2;
        *a1 = *a2;
        v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v14 = *(v13 - 8);
        v22 = *(v14 + 48);
        v23 = v21;
        if (v22(a2 + v12, 1, v13))
        {
          goto LABEL_26;
        }

        v37 = swift_getEnumCaseMultiPayload();
        if (v37 > 4)
        {
          if (v37 <= 7)
          {
            if (v37 == 5 || v37 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v37 != 8 && v37 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v37 > 2)
        {
          goto LABEL_114;
        }

        if (v37 == 1)
        {
          goto LABEL_113;
        }

        if (v37 != 2)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v11 = *a2;
        *a1 = *a2;
        v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v14 = *(v13 - 8);
        v15 = *(v14 + 48);
        v16 = v11;
        if (v15(a2 + v12, 1, v13))
        {
          goto LABEL_26;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v36 > 2)
        {
          goto LABEL_114;
        }

        if (v36 == 1)
        {
          goto LABEL_113;
        }

        if (v36 != 2)
        {
          goto LABEL_127;
        }
      }

      goto LABEL_114;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_33;
      }

      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = swift_getEnumCaseMultiPayload();
      if (v10 <= 4)
      {
        if (v10 > 2)
        {
LABEL_65:
          v50 = sub_21DBF563C();
          (*(*(v50 - 8) + 16))(a1, a2, v50);
          swift_storeEnumTagMultiPayload();
          goto LABEL_92;
        }

        if (v10 != 1)
        {
          if (v10 == 2)
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        }

LABEL_68:
        v51 = *a2;
        *a1 = *a2;
        v52 = v51;
        swift_storeEnumTagMultiPayload();
        goto LABEL_92;
      }

      if (v10 > 7)
      {
        if (v10 == 8 || v10 == 9)
        {
          goto LABEL_68;
        }
      }

      else if (v10 == 5 || v10 == 6)
      {
        goto LABEL_65;
      }

LABEL_91:
      memcpy(a1, a2, *(*(v9 - 8) + 64));
LABEL_92:
      v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v57 = v56[5];
      v58 = a1 + v57;
      v59 = a2 + v57;
      v60 = *(a2 + v57 + 8);
      if (v60)
      {
        v102 = a2;
        v104 = a1;
        *v58 = *v59;
        *(v58 + 1) = v60;
        v61 = *(v59 + 2);
        v62 = *(v59 + 3);
        v63 = *(v59 + 4);
        v64 = *(v59 + 5);
        v65 = *(v59 + 6);
        v66 = *(v59 + 7);
        v67 = v59[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v61, v62, v63, v64, v65, v66, v67);
        *(v58 + 2) = v61;
        *(v58 + 3) = v62;
        *(v58 + 4) = v63;
        *(v58 + 5) = v64;
        *(v58 + 6) = v65;
        *(v58 + 7) = v66;
        v58[64] = v67;
        *(v58 + 65) = *(v59 + 65);
        v68 = v59[120];
        if (v68 == 255)
        {
          *(v58 + 72) = *(v59 + 72);
          *(v58 + 88) = *(v59 + 88);
          *(v58 + 104) = *(v59 + 104);
          v58[120] = v59[120];
        }

        else
        {
          v69 = *(v59 + 9);
          v70 = *(v59 + 10);
          v71 = *(v59 + 11);
          v72 = *(v59 + 12);
          v73 = *(v59 + 13);
          v74 = *(v59 + 14);
          v75 = v68 & 1;
          sub_21D0FB960(v69, v70, v71, v72, v73, v74, v68 & 1);
          *(v58 + 9) = v69;
          *(v58 + 10) = v70;
          *(v58 + 11) = v71;
          *(v58 + 12) = v72;
          *(v58 + 13) = v73;
          *(v58 + 14) = v74;
          v58[120] = v75;
        }

        a1 = v104;
        v58[121] = v59[121];
        a2 = v102;
        goto LABEL_98;
      }

LABEL_95:
      v76 = *(v59 + 5);
      *(v58 + 4) = *(v59 + 4);
      *(v58 + 5) = v76;
      *(v58 + 6) = *(v59 + 6);
      *(v58 + 106) = *(v59 + 106);
      v77 = *(v59 + 1);
      *v58 = *v59;
      *(v58 + 1) = v77;
      v78 = *(v59 + 3);
      *(v58 + 2) = *(v59 + 2);
      *(v58 + 3) = v78;
LABEL_98:
      *(a1 + v56[6]) = *(a2 + v56[6]);
      *(a1 + v56[7]) = *(a2 + v56[7]);
      *(a1 + v56[8]) = *(a2 + v56[8]);
      *(a1 + v56[9]) = *(a2 + v56[9]);
      *(a1 + v56[10]) = *(a2 + v56[10]);
      v79 = v56[11];
      v80 = *(a2 + v79);
      *(a1 + v79) = v80;
      v81 = v80;
      goto LABEL_129;
    }

    v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v20 = swift_getEnumCaseMultiPayload();
    if (v20 <= 4)
    {
      if (v20 > 2)
      {
LABEL_69:
        v53 = sub_21DBF563C();
        (*(*(v53 - 8) + 16))(a1, a2, v53);
        swift_storeEnumTagMultiPayload();
        goto LABEL_100;
      }

      if (v20 != 1)
      {
        if (v20 == 2)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

LABEL_72:
      v54 = *a2;
      *a1 = *a2;
      v55 = v54;
      swift_storeEnumTagMultiPayload();
      goto LABEL_100;
    }

    if (v20 > 7)
    {
      if (v20 == 8 || v20 == 9)
      {
        goto LABEL_72;
      }
    }

    else if (v20 == 5 || v20 == 6)
    {
      goto LABEL_69;
    }

LABEL_99:
    memcpy(a1, a2, *(*(v19 - 8) + 64));
LABEL_100:
    v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v82 = v56[5];
    v58 = a1 + v82;
    v59 = a2 + v82;
    v83 = *(a2 + v82 + 8);
    if (v83)
    {
      v103 = a2;
      v105 = a1;
      *v58 = *v59;
      *(v58 + 1) = v83;
      v84 = *(v59 + 2);
      v85 = *(v59 + 3);
      v86 = *(v59 + 4);
      v87 = *(v59 + 5);
      v88 = *(v59 + 6);
      v89 = *(v59 + 7);
      v90 = v59[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v84, v85, v86, v87, v88, v89, v90);
      *(v58 + 2) = v84;
      *(v58 + 3) = v85;
      *(v58 + 4) = v86;
      *(v58 + 5) = v87;
      *(v58 + 6) = v88;
      *(v58 + 7) = v89;
      v58[64] = v90;
      *(v58 + 65) = *(v59 + 65);
      v91 = v59[120];
      if (v91 == 255)
      {
        *(v58 + 72) = *(v59 + 72);
        *(v58 + 88) = *(v59 + 88);
        *(v58 + 104) = *(v59 + 104);
        v58[120] = v59[120];
      }

      else
      {
        v92 = *(v59 + 9);
        v93 = *(v59 + 10);
        v94 = *(v59 + 11);
        v95 = *(v59 + 12);
        v96 = *(v59 + 13);
        v97 = *(v59 + 14);
        v98 = v91 & 1;
        sub_21D0FB960(v92, v93, v94, v95, v96, v97, v91 & 1);
        *(v58 + 9) = v92;
        *(v58 + 10) = v93;
        *(v58 + 11) = v94;
        *(v58 + 12) = v95;
        *(v58 + 13) = v96;
        *(v58 + 14) = v97;
        v58[120] = v98;
      }

      a1 = v105;
      v58[121] = v59[121];
      a2 = v103;
      goto LABEL_98;
    }

    goto LABEL_95;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      v17 = a2[2];
      a1[2] = v17;
      v18 = v17;
      goto LABEL_129;
    }

    v28 = *a2;
    *a1 = *a2;
    v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v14 = *(v13 - 8);
    v29 = *(v14 + 48);
    v30 = v28;
    if (v29(a2 + v12, 1, v13))
    {
LABEL_26:
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v12, a2 + v12, *(*(v24 - 8) + 64));
      goto LABEL_129;
    }

    v47 = swift_getEnumCaseMultiPayload();
    if (v47 > 4)
    {
      if (v47 <= 7)
      {
        if (v47 == 5 || v47 == 6)
        {
          goto LABEL_114;
        }

        goto LABEL_127;
      }

      if (v47 != 8 && v47 != 9)
      {
        goto LABEL_127;
      }

LABEL_113:
      v99 = *(a2 + v12);
      *(a1 + v12) = v99;
      v100 = v99;
      swift_storeEnumTagMultiPayload();
LABEL_128:
      (*(v14 + 56))(a1 + v12, 0, 1, v13);
      goto LABEL_129;
    }

    if (v47 <= 2)
    {
      if (v47 != 1)
      {
        if (v47 == 2)
        {
          goto LABEL_114;
        }

LABEL_127:
        memcpy(a1 + v12, a2 + v12, *(v14 + 64));
        goto LABEL_128;
      }

      goto LABEL_113;
    }

LABEL_114:
    v101 = sub_21DBF563C();
    (*(*(v101 - 8) + 16))(a1 + v12, a2 + v12, v101);
    swift_storeEnumTagMultiPayload();
    goto LABEL_128;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v25 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(a2, 1, v25))
      {
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
        memcpy(a1, a2, *(*(v27 - 8) + 64));
      }

      else
      {
        *a1 = *a2;
        v38 = *(v25 + 20);
        v39 = sub_21DBF6C1C();
        v40 = *(*(v39 - 8) + 16);
        sub_21DBF8E0C();
        v40(a1 + v38, a2 + v38, v39);
        (*(v26 + 56))(a1, 0, 1, v25);
      }

      v41 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v42 = (a1 + v41);
      v43 = (a2 + v41);
      v44 = v43[1];
      if (v44)
      {
        *v42 = *v43;
        v42[1] = v44;
        v45 = v43[2];
        v42[2] = v45;
        sub_21DBF8E0C();
        v46 = v45;
      }

      else
      {
        *v42 = *v43;
        v42[2] = v43[2];
      }

      goto LABEL_129;
    case 7:
      v31 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(a2, 1, v31))
      {
        v33 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(a1, a2, *(*(v33 - 8) + 64));
      }

      else
      {
        v48 = sub_21DBF563C();
        (*(*(v48 - 8) + 16))(a1, a2, v48);
        *(a1 + *(v31 + 20)) = *(a2 + *(v31 + 20));
        (*(v32 + 56))(a1, 0, 1, v31);
      }

      v49 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(a1 + *(v49 + 20)) = *(a2 + *(v49 + 20));
      goto LABEL_129;
    case 8:
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v8 = sub_21DBF8D7C();
      (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
LABEL_129:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

LABEL_33:
  v34 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v34);
}

void **_s18iOSListCasesInItemOwca(void **a1, void **a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  v5 = a2;
  sub_21D106CD8(a1, type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v21 = *v5;
        *v3 = *v5;
        v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v14 = *(v13 - 8);
        v22 = *(v14 + 48);
        v23 = v21;
        if (v22(v5 + v12, 1, v13))
        {
          goto LABEL_27;
        }

        v37 = swift_getEnumCaseMultiPayload();
        if (v37 > 4)
        {
          if (v37 <= 7)
          {
            if (v37 == 5 || v37 == 6)
            {
              goto LABEL_116;
            }

            goto LABEL_129;
          }

          if (v37 != 8 && v37 != 9)
          {
            goto LABEL_129;
          }

          goto LABEL_115;
        }

        if (v37 > 2)
        {
          goto LABEL_116;
        }

        if (v37 == 1)
        {
          goto LABEL_115;
        }

        if (v37 != 2)
        {
          goto LABEL_129;
        }
      }

      else
      {
        v11 = *v5;
        *v3 = *v5;
        v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v14 = *(v13 - 8);
        v15 = *(v14 + 48);
        v16 = v11;
        if (v15(v5 + v12, 1, v13))
        {
          goto LABEL_27;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_116;
            }

            goto LABEL_129;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_129;
          }

          goto LABEL_115;
        }

        if (v36 > 2)
        {
          goto LABEL_116;
        }

        if (v36 == 1)
        {
          goto LABEL_115;
        }

        if (v36 != 2)
        {
          goto LABEL_129;
        }
      }

      goto LABEL_116;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_34;
      }

      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = swift_getEnumCaseMultiPayload();
      if (v10 > 4)
      {
        if (v10 <= 7)
        {
          if (v10 == 5 || v10 == 6)
          {
            goto LABEL_66;
          }

          goto LABEL_92;
        }

        if (v10 != 8 && v10 != 9)
        {
          goto LABEL_92;
        }
      }

      else
      {
        if (v10 > 2)
        {
LABEL_66:
          v50 = sub_21DBF563C();
          (*(*(v50 - 8) + 16))(v3, v5, v50);
          swift_storeEnumTagMultiPayload();
LABEL_93:
          v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v57 = v56[5];
          v58 = v3 + v57;
          v59 = v5 + v57;
          if (*(v5 + v57 + 8))
          {
            v117 = v5;
            v120 = v3;
            *v58 = *v59;
            *(v58 + 1) = *(v59 + 1);
            v60 = *(v59 + 2);
            v61 = *(v59 + 3);
            v62 = *(v59 + 4);
            v63 = *(v59 + 5);
            v65 = *(v59 + 6);
            v64 = *(v59 + 7);
            v66 = v59[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v60, v61, v62, v63, v65, v64, v66);
            *(v58 + 2) = v60;
            *(v58 + 3) = v61;
            *(v58 + 4) = v62;
            *(v58 + 5) = v63;
            *(v58 + 6) = v65;
            *(v58 + 7) = v64;
            v58[64] = v66;
            v58[65] = v59[65];
            v58[66] = v59[66];
            v58[67] = v59[67];
            v58[68] = v59[68];
            v67 = v59[120];
            if (v67 == 255)
            {
              v81 = *(v59 + 72);
              v82 = *(v59 + 88);
              v83 = *(v59 + 104);
              v58[120] = v59[120];
              *(v58 + 104) = v83;
              *(v58 + 88) = v82;
              *(v58 + 72) = v81;
            }

            else
            {
              v68 = *(v59 + 9);
              v69 = *(v59 + 10);
              v70 = *(v59 + 11);
              v71 = *(v59 + 12);
              v72 = *(v59 + 13);
              v73 = *(v59 + 14);
              v74 = v67 & 1;
              sub_21D0FB960(v68, v69, v70, v71, v72, v73, v67 & 1);
              *(v58 + 9) = v68;
              *(v58 + 10) = v69;
              *(v58 + 11) = v70;
              *(v58 + 12) = v71;
              *(v58 + 13) = v72;
              *(v58 + 14) = v73;
              v58[120] = v74;
            }

            v3 = v120;
            v58[121] = v59[121];
            v5 = v117;
          }

          else
          {
            v75 = *v59;
            v76 = *(v59 + 1);
            v77 = *(v59 + 3);
            *(v58 + 2) = *(v59 + 2);
            *(v58 + 3) = v77;
            *v58 = v75;
            *(v58 + 1) = v76;
            v78 = *(v59 + 4);
            v79 = *(v59 + 5);
            v80 = *(v59 + 6);
            *(v58 + 106) = *(v59 + 106);
            *(v58 + 5) = v79;
            *(v58 + 6) = v80;
            *(v58 + 4) = v78;
          }

          *(v3 + v56[6]) = *(v5 + v56[6]);
          *(v3 + v56[7]) = *(v5 + v56[7]);
          *(v3 + v56[8]) = *(v5 + v56[8]);
          *(v3 + v56[9]) = *(v5 + v56[9]);
          *(v3 + v56[10]) = *(v5 + v56[10]);
          v84 = v56[11];
          v85 = *(v5 + v84);
          *(v3 + v84) = v85;
          v86 = v85;
          goto LABEL_131;
        }

        if (v10 != 1)
        {
          if (v10 == 2)
          {
            goto LABEL_66;
          }

LABEL_92:
          memcpy(v3, v5, *(*(v9 - 8) + 64));
          goto LABEL_93;
        }
      }

      v51 = *v5;
      *v3 = *v5;
      v52 = v51;
      swift_storeEnumTagMultiPayload();
      goto LABEL_93;
    }

    v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v20 = swift_getEnumCaseMultiPayload();
    if (v20 > 4)
    {
      if (v20 <= 7)
      {
        if (v20 == 5 || v20 == 6)
        {
          goto LABEL_70;
        }

        goto LABEL_100;
      }

      if (v20 != 8 && v20 != 9)
      {
        goto LABEL_100;
      }
    }

    else
    {
      if (v20 > 2)
      {
LABEL_70:
        v53 = sub_21DBF563C();
        (*(*(v53 - 8) + 16))(v3, v5, v53);
        swift_storeEnumTagMultiPayload();
LABEL_101:
        v87 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v88 = v87[5];
        v89 = v3 + v88;
        v90 = v5 + v88;
        if (*(v5 + v88 + 8))
        {
          *v89 = *v90;
          *(v89 + 1) = *(v90 + 1);
          v91 = *(v90 + 2);
          v92 = *(v90 + 3);
          v93 = *(v90 + 4);
          v94 = *(v90 + 5);
          v95 = *(v90 + 6);
          v118 = *(v90 + 7);
          v121 = v90[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v91, v92, v93, v94, v95, v118, v121);
          *(v89 + 2) = v91;
          *(v89 + 3) = v92;
          *(v89 + 4) = v93;
          *(v89 + 5) = v94;
          *(v89 + 6) = v95;
          *(v89 + 7) = v118;
          v89[64] = v121;
          v89[65] = v90[65];
          v89[66] = v90[66];
          v89[67] = v90[67];
          v89[68] = v90[68];
          v96 = v90[120];
          if (v96 == 255)
          {
            v108 = *(v90 + 72);
            v109 = *(v90 + 88);
            v110 = *(v90 + 104);
            v89[120] = v90[120];
            *(v89 + 104) = v110;
            *(v89 + 88) = v109;
            *(v89 + 72) = v108;
          }

          else
          {
            v119 = *(v90 + 10);
            v122 = *(v90 + 9);
            v97 = *(v90 + 11);
            v98 = *(v90 + 12);
            v99 = *(v90 + 13);
            v100 = *(v90 + 14);
            v101 = v96 & 1;
            sub_21D0FB960(v122, v119, v97, v98, v99, v100, v96 & 1);
            *(v89 + 9) = v122;
            *(v89 + 10) = v119;
            *(v89 + 11) = v97;
            *(v89 + 12) = v98;
            *(v89 + 13) = v99;
            *(v89 + 14) = v100;
            v89[120] = v101;
          }

          v89[121] = v90[121];
        }

        else
        {
          v102 = *v90;
          v103 = *(v90 + 1);
          v104 = *(v90 + 3);
          *(v89 + 2) = *(v90 + 2);
          *(v89 + 3) = v104;
          *v89 = v102;
          *(v89 + 1) = v103;
          v105 = *(v90 + 4);
          v106 = *(v90 + 5);
          v107 = *(v90 + 6);
          *(v89 + 106) = *(v90 + 106);
          *(v89 + 5) = v106;
          *(v89 + 6) = v107;
          *(v89 + 4) = v105;
        }

        *(v3 + v87[6]) = *(v5 + v87[6]);
        *(v3 + v87[7]) = *(v5 + v87[7]);
        *(v3 + v87[8]) = *(v5 + v87[8]);
        *(v3 + v87[9]) = *(v5 + v87[9]);
        *(v3 + v87[10]) = *(v5 + v87[10]);
        v111 = v87[11];
        v112 = *(v5 + v111);
        *(v3 + v111) = v112;
        v113 = v112;
        goto LABEL_131;
      }

      if (v20 != 1)
      {
        if (v20 == 2)
        {
          goto LABEL_70;
        }

LABEL_100:
        memcpy(v3, v5, *(*(v19 - 8) + 64));
        goto LABEL_101;
      }
    }

    v54 = *v5;
    *v3 = *v5;
    v55 = v54;
    swift_storeEnumTagMultiPayload();
    goto LABEL_101;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *v3 = *v5;
      *(v3 + 8) = *(v5 + 8);
      *(v3 + 9) = *(v5 + 9);
      *(v3 + 10) = *(v5 + 10);
      v17 = v5[2];
      v3[2] = v17;
      v18 = v17;
      goto LABEL_131;
    }

    v28 = *v5;
    *v3 = *v5;
    v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v14 = *(v13 - 8);
    v29 = *(v14 + 48);
    v30 = v28;
    if (v29(v5 + v12, 1, v13))
    {
LABEL_27:
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(v3 + v12, v5 + v12, *(*(v24 - 8) + 64));
      goto LABEL_131;
    }

    v47 = swift_getEnumCaseMultiPayload();
    if (v47 > 4)
    {
      if (v47 <= 7)
      {
        if (v47 == 5 || v47 == 6)
        {
          goto LABEL_116;
        }

        goto LABEL_129;
      }

      if (v47 != 8 && v47 != 9)
      {
        goto LABEL_129;
      }

LABEL_115:
      v114 = *(v5 + v12);
      *(v3 + v12) = v114;
      v115 = v114;
      swift_storeEnumTagMultiPayload();
LABEL_130:
      (*(v14 + 56))(v3 + v12, 0, 1, v13);
      goto LABEL_131;
    }

    if (v47 <= 2)
    {
      if (v47 != 1)
      {
        if (v47 == 2)
        {
          goto LABEL_116;
        }

LABEL_129:
        memcpy(v3 + v12, v5 + v12, *(v14 + 64));
        goto LABEL_130;
      }

      goto LABEL_115;
    }

LABEL_116:
    v116 = sub_21DBF563C();
    (*(*(v116 - 8) + 16))(v3 + v12, v5 + v12, v116);
    swift_storeEnumTagMultiPayload();
    goto LABEL_130;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v25 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v5, 1, v25))
      {
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
        memcpy(v3, v5, *(*(v27 - 8) + 64));
      }

      else
      {
        *v3 = *v5;
        v38 = *(v25 + 20);
        v39 = sub_21DBF6C1C();
        v40 = *(*(v39 - 8) + 16);
        sub_21DBF8E0C();
        v40(v3 + v38, v5 + v38, v39);
        (*(v26 + 56))(v3, 0, 1, v25);
      }

      v41 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v42 = (v3 + v41);
      v43 = (v5 + v41);
      if (v43[1])
      {
        *v42 = *v43;
        v42[1] = v43[1];
        v44 = v43[2];
        v42[2] = v44;
        sub_21DBF8E0C();
        v45 = v44;
      }

      else
      {
        v46 = *v43;
        v42[2] = v43[2];
        *v42 = v46;
      }

      goto LABEL_131;
    case 7:
      v31 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(v5, 1, v31))
      {
        v33 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(v3, v5, *(*(v33 - 8) + 64));
      }

      else
      {
        v48 = sub_21DBF563C();
        (*(*(v48 - 8) + 16))(v3, v5, v48);
        *(v3 + *(v31 + 20)) = *(v5 + *(v31 + 20));
        (*(v32 + 56))(v3, 0, 1, v31);
      }

      v49 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(v3 + *(v49 + 20)) = *(v5 + *(v49 + 20));
      goto LABEL_131;
    case 8:
      *v3 = *v5;
      v7 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v8 = sub_21DBF8D7C();
      (*(*(v8 - 8) + 16))(v3 + v7, v5 + v7, v8);
LABEL_131:
      swift_storeEnumTagMultiPayload();
      return v3;
  }

LABEL_34:
  v34 = *(*(a3 - 8) + 64);

  return memcpy(v3, v5, v34);
}

_BYTE *initializeWithTake for TTRRemindersListViewModel.Item(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v20 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(a2, 1, v20))
        {
          v22 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v22 - 8) + 64));
        }

        else
        {
          v27 = sub_21DBF563C();
          (*(*(v27 - 8) + 32))(a1, a2, v27);
          a1[*(v20 + 20)] = a2[*(v20 + 20)];
          (*(v21 + 56))(a1, 0, 1, v20);
        }

        v28 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *&a1[*(v28 + 20)] = *&a2[*(v28 + 20)];
        goto LABEL_89;
      }

      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_32;
      }

      *a1 = *a2;
      v16 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v17 = sub_21DBF8D7C();
      (*(*(v17 - 8) + 32))(&a1[v16], &a2[v16], v17);
LABEL_89:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v10 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v11 = *(v10 - 8);
        if ((*(v11 + 48))(a2, 1, v10))
        {
          v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440, &unk_21DC16170);
          memcpy(a1, a2, *(*(v12 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v29 = *(v10 + 20);
          v30 = sub_21DBF6C1C();
          (*(*(v30 - 8) + 32))(&a1[v29], &a2[v29], v30);
          (*(v11 + 56))(a1, 0, 1, v10);
        }

        v31 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v32 = &a1[v31];
        v33 = &a2[v31];
        *v32 = *v33;
        *(v32 + 2) = *(v33 + 2);
        goto LABEL_89;
      }

      goto LABEL_32;
    }

    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(&a2[v13], 1, v14))
    {
      v25 = swift_getEnumCaseMultiPayload();
      if (v25 <= 3)
      {
        if (v25 == 2 || v25 == 3)
        {
          goto LABEL_59;
        }
      }

      else if (v25 == 4 || v25 == 5 || v25 == 6)
      {
        goto LABEL_59;
      }

      goto LABEL_87;
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *a1 = *a2;
      v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(&a2[v13], 1, v14))
      {
        goto LABEL_29;
      }

      v34 = swift_getEnumCaseMultiPayload();
      if (v34 <= 3)
      {
        if (v34 == 2 || v34 == 3)
        {
          goto LABEL_59;
        }
      }

      else if (v34 == 4 || v34 == 5 || v34 == 6)
      {
LABEL_59:
        v35 = sub_21DBF563C();
        (*(*(v35 - 8) + 32))(&a1[v13], &a2[v13], v35);
        swift_storeEnumTagMultiPayload();
LABEL_88:
        (*(v15 + 56))(&a1[v13], 0, 1, v14);
        goto LABEL_89;
      }

LABEL_87:
      memcpy(&a1[v13], &a2[v13], *(v15 + 64));
      goto LABEL_88;
    }

    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(&a2[v13], 1, v14))
    {
      v26 = swift_getEnumCaseMultiPayload();
      if (v26 <= 3)
      {
        if (v26 == 2 || v26 == 3)
        {
          goto LABEL_59;
        }
      }

      else if (v26 == 4 || v26 == 5 || v26 == 6)
      {
        goto LABEL_59;
      }

      goto LABEL_87;
    }

LABEL_29:
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
    memcpy(&a1[v13], &a2[v13], *(*(v19 - 8) + 64));
    goto LABEL_89;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v18 = swift_getEnumCaseMultiPayload();
    if (v18 <= 3)
    {
      if (v18 == 2 || v18 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v18 == 4 || v18 == 5 || v18 == 6)
    {
      goto LABEL_9;
    }

    goto LABEL_66;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 <= 3)
    {
      if (v8 == 2 || v8 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v8 == 4 || v8 == 5 || v8 == 6)
    {
LABEL_9:
      v9 = sub_21DBF563C();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      swift_storeEnumTagMultiPayload();
LABEL_67:
      v36 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v37 = v36[5];
      v38 = &a1[v37];
      v39 = &a2[v37];
      v40 = v39[3];
      v38[2] = v39[2];
      v38[3] = v40;
      v41 = v39[1];
      *v38 = *v39;
      v38[1] = v41;
      *(v38 + 106) = *(v39 + 106);
      v42 = v39[6];
      v38[5] = v39[5];
      v38[6] = v42;
      v38[4] = v39[4];
      a1[v36[6]] = a2[v36[6]];
      a1[v36[7]] = a2[v36[7]];
      a1[v36[8]] = a2[v36[8]];
      a1[v36[9]] = a2[v36[9]];
      a1[v36[10]] = a2[v36[10]];
      *&a1[v36[11]] = *&a2[v36[11]];
      goto LABEL_89;
    }

LABEL_66:
    memcpy(a1, a2, *(*(v7 - 8) + 64));
    goto LABEL_67;
  }

LABEL_32:
  v23 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v23);
}